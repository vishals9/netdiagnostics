FROM alpine:3.9

RUN apk --no-cache add curl

RUN mkdir /opt/netdiagnostics

COPY netdiagnostics.4.2.0.105.tar.gz /opt/netdiagnostics

WORKDIR /opt/netdiagnostics

RUN tar -xvzf netdiagnostics.4.2.0.105.tar.gz

COPY ndsettings_2.conf config/
