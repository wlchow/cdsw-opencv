# Dockerfile
FROM docker.repository.cloudera.com/cdsw/engine:3

# update packages and install maven
RUN apt-get update && \
    apt-get install -y -q build-essential && \
    apt-get install -y -q cmake libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev && \
    apt-get install -y -q python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev && \
    apt-get install -y -q libopencv-dev && \
    apt-get install -y -q python-opencv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*




