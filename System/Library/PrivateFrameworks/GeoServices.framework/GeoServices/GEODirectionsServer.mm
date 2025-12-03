@interface GEODirectionsServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (id)serviceRequester;
- (void)cancelWithRequest:(id)request;
- (void)startWithRequest:(id)request;
@end

@implementation GEODirectionsServer

- (void)cancelWithRequest:(id)request
{
  requestCopy = request;
  v7 = [[GEOXPCDirectionsReply alloc] initWithRequest:requestCopy];
  directionsRequest = [requestCopy directionsRequest];

  if (directionsRequest)
  {
    serviceRequester = [(GEODirectionsServer *)self serviceRequester];
    [serviceRequester cancelRequest:directionsRequest];
  }

  else
  {
    serviceRequester = [NSError GEOErrorWithCode:-10 userInfo:0];
    [v7 setError:serviceRequester];
  }

  [v7 send];
}

- (void)startWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOXPCDirectionsReply alloc] initWithRequest:requestCopy];
  directionsRequest = [requestCopy directionsRequest];
  if (directionsRequest)
  {
    serviceRequester = [(GEODirectionsServer *)self serviceRequester];
    traits = [requestCopy traits];
    preferredAuditToken = [requestCopy preferredAuditToken];
    useBackgroundURL = [requestCopy useBackgroundURL];
    v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [requestCopy priority]);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000A048;
    v15[3] = &unk_1000817E0;
    v16 = v5;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000A088;
    v13[3] = &unk_100081808;
    v14 = v16;
    [serviceRequester startRequest:directionsRequest traits:traits auditToken:preferredAuditToken skipFinalize:0 useBackgroundURL:useBackgroundURL requestPriority:v11 callbackQueue:&_dispatch_main_q finished:v15 networkActivity:0 error:v13];
  }

  else
  {
    v12 = [NSError GEOErrorWithCode:-10 userInfo:0];
    [v5 setError:v12];

    [v5 send];
  }
}

- (id)serviceRequester
{
  serviceRequester = self->_serviceRequester;
  if (serviceRequester)
  {
    v3 = serviceRequester;
  }

  else
  {
    v3 = +[GEODirectionsRequester sharedRequester];
  }

  return v3;
}

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  if (v13 == 614)
  {
    if ((sub_100001548(self, peerCopy) & 1) == 0)
    {
      v18 = objc_opt_class();
      v19 = sub_100001388(@"directions", messageCopy, objectCopy, v18, peerCopy);
      v16 = v19;
      if (v19)
      {
        [v19 setSignpostId:id];
        [(GEODirectionsServer *)self cancelWithRequest:v16];
        goto LABEL_11;
      }

LABEL_14:
      v17 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v13 != 558)
    {
      v17 = 0;
      goto LABEL_13;
    }

    if ((sub_100001548(self, peerCopy) & 1) == 0)
    {
      v14 = objc_opt_class();
      v15 = sub_100001388(@"directions", messageCopy, objectCopy, v14, peerCopy);
      v16 = v15;
      if (v15)
      {
        [v15 setSignpostId:id];
        [(GEODirectionsServer *)self startWithRequest:v16];
LABEL_11:
        v17 = 1;
LABEL_12:

        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  v17 = 1;
LABEL_13:

  return v17;
}

@end