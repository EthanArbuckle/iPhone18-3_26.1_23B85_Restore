@interface GEODirectionsServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (id)serviceRequester;
- (void)cancelWithRequest:(id)a3;
- (void)startWithRequest:(id)a3;
@end

@implementation GEODirectionsServer

- (void)cancelWithRequest:(id)a3
{
  v4 = a3;
  v7 = [[GEOXPCDirectionsReply alloc] initWithRequest:v4];
  v5 = [v4 directionsRequest];

  if (v5)
  {
    v6 = [(GEODirectionsServer *)self serviceRequester];
    [v6 cancelRequest:v5];
  }

  else
  {
    v6 = [NSError GEOErrorWithCode:-10 userInfo:0];
    [v7 setError:v6];
  }

  [v7 send];
}

- (void)startWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOXPCDirectionsReply alloc] initWithRequest:v4];
  v6 = [v4 directionsRequest];
  if (v6)
  {
    v7 = [(GEODirectionsServer *)self serviceRequester];
    v8 = [v4 traits];
    v9 = [v4 preferredAuditToken];
    v10 = [v4 useBackgroundURL];
    v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 priority]);
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
    [v7 startRequest:v6 traits:v8 auditToken:v9 skipFinalize:0 useBackgroundURL:v10 requestPriority:v11 callbackQueue:&_dispatch_main_q finished:v15 networkActivity:0 error:v13];
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

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_100001334(v10);
  if (v13 == 614)
  {
    if ((sub_100001548(self, v12) & 1) == 0)
    {
      v18 = objc_opt_class();
      v19 = sub_100001388(@"directions", v10, v11, v18, v12);
      v16 = v19;
      if (v19)
      {
        [v19 setSignpostId:a6];
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

    if ((sub_100001548(self, v12) & 1) == 0)
    {
      v14 = objc_opt_class();
      v15 = sub_100001388(@"directions", v10, v11, v14, v12);
      v16 = v15;
      if (v15)
      {
        [v15 setSignpostId:a6];
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