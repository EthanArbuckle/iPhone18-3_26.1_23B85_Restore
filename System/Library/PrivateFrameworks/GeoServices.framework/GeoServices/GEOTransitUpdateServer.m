@interface GEOTransitUpdateServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (GEOTransitUpdateServer)initWithDaemon:(id)a3;
- (void)cancelTransitRouteUpdateRequestWithRequest:(id)a3;
- (void)startTransitRouteUpdateRequestWithRequest:(id)a3;
@end

@implementation GEOTransitUpdateServer

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_100001334(v10);
  if (v13 == 3238)
  {
    v17 = objc_opt_class();
    v18 = sub_100001388(@"TransitUpdate", v10, v11, v17, v12);
    v16 = v18;
    if (v18)
    {
      [v18 setSignpostId:a6];
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
  v15 = sub_100001388(@"TransitUpdate", v10, v11, v14, v12);
  v16 = v15;
  if (!v15)
  {
    goto LABEL_11;
  }

  [v15 setSignpostId:a6];
  [(GEOTransitUpdateServer *)self startTransitRouteUpdateRequestWithRequest:v16];
LABEL_7:
  v19 = 1;
LABEL_8:

LABEL_10:
  return v19;
}

- (void)cancelTransitRouteUpdateRequestWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOTransitRouteUpdateReplySimple alloc] initWithRequest:v4];
  v6 = [v4 request];

  if (v6)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_1000268F4;
    v15 = sub_100026904;
    v16 = 0;
    isolater = self->_isolater;
    v10 = v4;
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

- (void)startTransitRouteUpdateRequestWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOTransitRouteUpdateReplySimple alloc] initWithRequest:v4];
  v6 = [v4 request];

  if (v6)
  {
    isolater = self->_isolater;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100026B70;
    v18 = &unk_100083940;
    v19 = self;
    v20 = v4;
    geo_isolate_sync_data();
    v8 = +[GEOTransitUpdateServerRequester sharedRequester];
    v9 = [v20 request];
    v10 = [v20 preferredAuditToken];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100026BD0;
    v12[3] = &unk_100082338;
    v12[4] = self;
    v13 = v20;
    v14 = v5;
    [v8 startSimpleTransitRouteUpdateRequest:v9 auditToken:v10 networkActivity:0 completion:v12];
  }

  else
  {
    v11 = [NSError GEOErrorWithCode:-10];
    [v5 setError:v11];

    [v5 send];
  }
}

- (GEOTransitUpdateServer)initWithDaemon:(id)a3
{
  v10.receiver = self;
  v10.super_class = GEOTransitUpdateServer;
  v3 = [(GEOTransitUpdateServer *)&v10 initWithDaemon:a3];
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