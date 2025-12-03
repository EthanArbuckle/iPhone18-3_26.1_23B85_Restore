@interface GEOETAServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (id)serviceRequester;
- (void)cancelETARequestWithRequest:(id)request;
- (void)cancelSimpleETARequestWithRequest:(id)request;
- (void)startETARequestWithRequest:(id)request;
- (void)startSimpleETARequestWithRequest:(id)request;
@end

@implementation GEOETAServer

- (id)serviceRequester
{
  serviceRequester = self->_serviceRequester;
  if (serviceRequester)
  {
    v3 = serviceRequester;
  }

  else
  {
    v3 = +[GEOETAServiceRequester sharedRequester];
  }

  return v3;
}

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  v14 = 0;
  if (v13 > 2138)
  {
    if (v13 != 2195)
    {
      if (v13 == 2139)
      {
        if ((sub_100001548(self, peerCopy) & 1) == 0)
        {
          v18 = objc_opt_class();
          v19 = sub_100001388(@"ETA", messageCopy, objectCopy, v18, peerCopy);
          v17 = v19;
          if (v19)
          {
            [v19 setSignpostId:id];
            [(GEOETAServer *)self startSimpleETARequestWithRequest:v17];
            goto LABEL_19;
          }

LABEL_22:
          v14 = 0;
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      goto LABEL_21;
    }

    if ((sub_100001548(self, peerCopy) & 1) == 0)
    {
      v22 = objc_opt_class();
      v23 = sub_100001388(@"ETA", messageCopy, objectCopy, v22, peerCopy);
      v17 = v23;
      if (v23)
      {
        [v23 setSignpostId:id];
        [(GEOETAServer *)self cancelSimpleETARequestWithRequest:v17];
        goto LABEL_19;
      }

      goto LABEL_22;
    }

LABEL_16:
    v14 = 1;
    goto LABEL_21;
  }

  if (v13 == 1521)
  {
    if ((sub_100001548(self, peerCopy) & 1) == 0)
    {
      v20 = objc_opt_class();
      v21 = sub_100001388(@"ETA", messageCopy, objectCopy, v20, peerCopy);
      v17 = v21;
      if (v21)
      {
        [v21 setSignpostId:id];
        [(GEOETAServer *)self startETARequestWithRequest:v17];
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (v13 == 1577)
  {
    if ((sub_100001548(self, peerCopy) & 1) == 0)
    {
      v15 = objc_opt_class();
      v16 = sub_100001388(@"ETA", messageCopy, objectCopy, v15, peerCopy);
      v17 = v16;
      if (v16)
      {
        [v16 setSignpostId:id];
        [(GEOETAServer *)self cancelETARequestWithRequest:v17];
LABEL_19:
        v14 = 1;
LABEL_20:

        goto LABEL_21;
      }

      goto LABEL_22;
    }

    goto LABEL_16;
  }

LABEL_21:

  return v14;
}

- (void)cancelETARequestWithRequest:(id)request
{
  requestCopy = request;
  v5 = +[GEOETAServiceRequester sharedRequester];
  request = [requestCopy request];

  [v5 cancelRequest:request];
}

- (void)startETARequestWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOETAReplyUpdateable alloc] initWithRequest:requestCopy];
  serviceRequester = [(GEOETAServer *)self serviceRequester];
  request = [requestCopy request];
  connectionProperties = [requestCopy connectionProperties];
  traits = [requestCopy traits];
  preferredAuditToken = [requestCopy preferredAuditToken];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100053A20;
  v17[3] = &unk_100083F10;
  v18 = requestCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100053B30;
  v15[3] = &unk_100083F38;
  v16 = v5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100053B70;
  v13[3] = &unk_100083EC0;
  v14 = v16;
  v11 = v16;
  v12 = requestCopy;
  [serviceRequester startRequest:request connectionProperties:connectionProperties traits:traits auditToken:preferredAuditToken willSendRequest:v17 finished:v15 networkActivity:0 error:v13];
}

- (void)cancelSimpleETARequestWithRequest:(id)request
{
  requestCopy = request;
  v4 = [[GEOETAReplySimple alloc] initWithRequest:requestCopy];
  request = [requestCopy request];

  if (request)
  {
    serviceRequester = [(GEOETAServer *)self serviceRequester];
    request2 = [requestCopy request];
    [serviceRequester cancelSimpleETARequest:request2];
  }

  else
  {
    v8 = [NSError GEOErrorWithCode:-10];
    [v4 setError:v8];

    [v4 send];
  }
}

- (void)startSimpleETARequestWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOETAReplySimple alloc] initWithRequest:requestCopy];
  request = [requestCopy request];

  if (request)
  {
    serviceRequester = [(GEOETAServer *)self serviceRequester];
    request2 = [requestCopy request];
    traits = [requestCopy traits];
    preferredAuditToken = [requestCopy preferredAuditToken];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100053EF4;
    v14[3] = &unk_100083E98;
    v15 = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100053F34;
    v12[3] = &unk_100083EC0;
    v13 = v15;
    [serviceRequester startSimpleETARequest:request2 traits:traits auditToken:preferredAuditToken finished:v14 networkActivity:0 error:v12];
  }

  else
  {
    v11 = [NSError GEOErrorWithCode:-10];
    [v5 setError:v11];

    [v5 send];
  }
}

@end