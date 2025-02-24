FROM ubuntu:24.04
RUN apt-get update && apt-get install -y curl
RUN curl -L -o /usr/bin/podcast-dl https://github.com/lightpohl/podcast-dl/releases/download/v10.3.2/podcast-dl-10.3.2-linux-x64
RUN chmod +x /usr/bin/podcast-dl
ENTRYPOINT ["/usr/bin/podcast-dl"]
CMD [ "--help" ]