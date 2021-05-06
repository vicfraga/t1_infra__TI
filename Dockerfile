# our base image
FROM ubuntu:16.04

# Install ngnix
RUN apt-get update && apt-get install -y nginx

# copy files required for the app to run
COPY index.html /usr/share/nginx/html

# tell the port number the container should expose
EXPOSE 80

# run the application
CMD cd /usr/share/nginx/html; nginx -g 'daemon off;'

