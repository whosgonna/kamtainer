FROM alpine

## Very vanilla.  The specified repo is to make sure that we're 
## using Kamailio 5.5 which has newer features that make it 
## easier to use environmental variables within the kamailio.cfg
## file
RUN apk add --no-cache \
            --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main \
            kamailio kamailio-utils kamailio-mysql kamailio-debugger \
            kamailio-extras kamailio-json sipp

COPY kamailio/part0010/kamailio.cfg /etc/kamailio/kamailio.cfg

ENTRYPOINT /bin/sh
