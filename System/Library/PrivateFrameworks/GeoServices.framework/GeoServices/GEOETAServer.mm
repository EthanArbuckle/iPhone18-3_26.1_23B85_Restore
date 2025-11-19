@interface GEOETAServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (id)serviceRequester;
- (void)cancelETARequestWithRequest:(id)a3;
- (void)cancelSimpleETARequestWithRequest:(id)a3;
- (void)startETARequestWithRequest:(id)a3;
- (void)startSimpleETARequestWithRequest:(id)a3;
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

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_100001334(v10);
  v14 = 0;
  if (v13 > 2138)
  {
    if (v13 != 2195)
    {
      if (v13 == 2139)
      {
        if ((sub_100001548(self, v12) & 1) == 0)
        {
          v18 = objc_opt_class();
          v19 = sub_100001388(@"ETA", v10, v11, v18, v12);
          v17 = v19;
          if (v19)
          {
            [v19 setSignpostId:a6];
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

    if ((sub_100001548(self, v12) & 1) == 0)
    {
      v22 = objc_opt_class();
      v23 = sub_100001388(@"ETA", v10, v11, v22, v12);
      v17 = v23;
      if (v23)
      {
        [v23 setSignpostId:a6];
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
    if ((sub_100001548(self, v12) & 1) == 0)
    {
      v20 = objc_opt_class();
      v21 = sub_100001388(@"ETA", v10, v11, v20, v12);
      v17 = v21;
      if (v21)
      {
        [v21 setSignpostId:a6];
        [(GEOETAServer *)self startETARequestWithRequest:v17];
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (v13 == 1577)
  {
    if ((sub_100001548(self, v12) & 1) == 0)
    {
      v15 = objc_opt_class();
      v16 = sub_100001388(@"ETA", v10, v11, v15, v12);
      v17 = v16;
      if (v16)
      {
        [v16 setSignpostId:a6];
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

- (void)cancelETARequestWithRequest:(id)a3
{
  v3 = a3;
  v5 = +[GEOETAServiceRequester sharedRequester];
  v4 = [v3 request];

  [v5 cancelRequest:v4];
}

- (void)startETARequestWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOETAReplyUpdateable alloc] initWithRequest:v4];
  v6 = [(GEOETAServer *)self serviceRequester];
  v7 = [v4 request];
  v8 = [v4 connectionProperties];
  v9 = [v4 traits];
  v10 = [v4 preferredAuditToken];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100053A20;
  v17[3] = &unk_100083F10;
  v18 = v4;
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
  v12 = v4;
  [v6 startRequest:v7 connectionProperties:v8 traits:v9 auditToken:v10 willSendRequest:v17 finished:v15 networkActivity:0 error:v13];
}

- (void)cancelSimpleETARequestWithRequest:(id)a3
{
  v9 = a3;
  v4 = [[GEOETAReplySimple alloc] initWithRequest:v9];
  v5 = [v9 request];

  if (v5)
  {
    v6 = [(GEOETAServer *)self serviceRequester];
    v7 = [v9 request];
    [v6 cancelSimpleETARequest:v7];
  }

  else
  {
    v8 = [NSError GEOErrorWithCode:-10];
    [v4 setError:v8];

    [v4 send];
  }
}

- (void)startSimpleETARequestWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOETAReplySimple alloc] initWithRequest:v4];
  v6 = [v4 request];

  if (v6)
  {
    v7 = [(GEOETAServer *)self serviceRequester];
    v8 = [v4 request];
    v9 = [v4 traits];
    v10 = [v4 preferredAuditToken];
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
    [v7 startSimpleETARequest:v8 traits:v9 auditToken:v10 finished:v14 networkActivity:0 error:v12];
  }

  else
  {
    v11 = [NSError GEOErrorWithCode:-10];
    [v5 setError:v11];

    [v5 send];
  }
}

@end