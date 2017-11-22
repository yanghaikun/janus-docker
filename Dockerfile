FROM ubuntu:17.10
RUN rm /etc/apt/sources.list
COPY sources.list /etc/apt/
RUN cat /etc/apt/sources.list
RUN apt-get update
RUN apt-get install janus --assume-yes
COPY vagrant/janus/config/*.cfg /etc/janus/

EXPOSE 7088
EXPOSE 7089
EXPOSE 8188
EXPOSE 8189

CMD /usr/bin/janus
