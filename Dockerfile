FROM python:3.5.4-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./

COPY src/* ./

RUN pip install -r requirements.txt

EXPOSE 80

ENV FLASK_APP=hello.py

CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]
