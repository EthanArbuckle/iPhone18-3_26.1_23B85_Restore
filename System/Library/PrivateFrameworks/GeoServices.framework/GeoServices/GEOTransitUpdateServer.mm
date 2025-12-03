@interface GEOTransitUpdateServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (GEOTransitUpdateServer)initWithDaemon:(id)daemon;
- (void)cancelTransitRouteUpdateRequestWithRequest:(id)request;
- (void)startTransitRouteUpdateRequestWithRequest:(id)request;
@end

@implementation GEOTransitUpdateServer

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  if (v13 == 3238)
  {
    v17 = objc_opt_class();
    v18 = sub_100001388(@"TransitUpdate", messageCopy, objectCopy, v17, peerCopy);
    v16 = v18;
    if (v18)
    {
      [v18 setSignpostId:id];
      [(GEOTransitUpdateServer *)self cancelTransitRouteUpdateRequestWithRequest:v16];
      goto LABEL_7;
    }

LABEL_11:
    v19 = 0;
    goto LABEL_8;
  }

  if (v13 != 3182)
  {
    v19 = 0;
    goto LABEL_10;
  }

  v14 = objc_opt_class();
  v15 = sub_100001388(@"TransitUpdate", messageCopy, objectCopy, v14, peerCopy);
  v16 = v15;
  if (!v15)
  {
    goto LABEL_11;
  }

  [v15 setSignpostId:id];
  [(GEOTransitUpdateServer *)self startTransitRouteUpdateRequestWithRequest:v16];
LABEL_7:
  v19 = 1;
LABEL_8:

LABEL_10:
  return v19;
}

- (void)cancelTransitRouteUpdateRequestWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOTransitRouteUpdateReplySimple alloc] initWithRequest:requestCopy];
  request = [requestCopy request];

  if (request)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_1000268F4;
    v15 = sub_100026904;
    v16 = 0;
    isolater = self->_isolater;
    v10 = requestCopy;
    geo_isolate_sync_data();
    if (v12[5])
    {
      v8 = +[GEOTransitUpdateServerRequester sharedRequester];
      [v8 cancelSimpleTransitRouteUpdateRequest:v12[5]];
    }

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v9 = [NSError GEOErrorWithCode:-10];
    [v5 setError:v9];

    [v5 send];
  }
}

- (void)startTransitRouteUpdateRequestWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOTransitRouteUpdateReplySimple alloc] initWithRequest:requestCopy];
  request = [requestCopy request];

  if (request)
  {
    isolater = self->_isolater;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100026B70;
    v18 = &unk_100083940;
    selfCopy = self;
    v20 = requestCopy;
    geo_isolate_sync_data();
    v8 = +[GEOTransitUpdateServerRequester sharedRequester];
    request2 = [v20 request];
    preferredAuditToken = [v20 preferredAuditToken];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100026BD0;
    v12[3] = &unk_100082338;
    v12[4] = self;
    v13 = v20;
    v14 = v5;
    [v8 startSimpleTransitRouteUpdateRequest:request2 auditToken:preferredAuditToken networkActivity:0 completion:v12];
  }

  else
  {
    v11 = [NSError GEOErrorWithCode:-10];
    [v5 setError:v11];

    [v5 send];
  }
}

- (GEOTransitUpdateServer)initWithDaemon:(id)daemon
{
  v10.receiver = self;
  v10.super_class = GEOTransitUpdateServer;
  v3 = [(GEOTransitUpdateServer *)&v10 initWithDaemon:daemon];
  if (v3)
  {
    v4 = geo_isolater_create();
    isolater = v3->_isolater;
    v3->_isolater = v4;

    v6 = objc_alloc_init(NSMutableSet);
    originalRequests = v3->_originalRequests;
    v3->_originalRequests = v6;

    v8 = v3;
  }

  return v3;
}

@end