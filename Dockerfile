FROM thothbot/jmeter-master
MAINTAINER Alex Usachev <thothbot@gmail.com>

# Ports to be exposed from the container for JMeter Slaves
EXPOSE 1099 50000

# Application to run on starting the container
ENTRYPOINT jmeter-server \
           -Dserver.rmi.localport=50000 \
           -Dserver_port=1099 \
           -Djava.rmi.server.hostname=$LOCALIP
