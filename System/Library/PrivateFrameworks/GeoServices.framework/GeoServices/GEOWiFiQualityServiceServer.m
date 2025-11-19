@interface GEOWiFiQualityServiceServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (void)cancelWithMessage:(id)a3;
- (void)submitWithMessage:(id)a3;
- (void)tileWithMessage:(id)a3;
@end

@implementation GEOWiFiQualityServiceServer

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a4;
  v11 = a5;
  v12 = sub_100001334(a3);
  if (v12 == 430)
  {
    v16 = [[GEOMessage alloc] initWithXPCMessage:v10 peer:v11];
    v14 = v16;
    if (v16)
    {
      [v16 setSignpostId:a6];
      [(GEOWiFiQualityServiceServer *)self tileWithMessage:v14];
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v12 == 614)
  {
    v15 = [[GEOMessage alloc] initWithXPCMessage:v10 peer:v11];
    v14 = v15;
    if (v15)
    {
      [v15 setSignpostId:a6];
      [(GEOWiFiQualityServiceServer *)self cancelWithMessage:v14];
      goto LABEL_10;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_11;
  }

  if (v12 != 660)
  {
    v17 = 0;
    goto LABEL_13;
  }

  v13 = [[GEOMessage alloc] initWithXPCMessage:v10 peer:v11];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_14;
  }

  [v13 setSignpostId:a6];
  [(GEOWiFiQualityServiceServer *)self submitWithMessage:v14];
LABEL_10:
  v17 = 1;
LABEL_11:

LABEL_13:
  return v17;
}

- (void)cancelWithMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v6 = [v4 objectForKeyedSubscript:@"wifireqid"];

  v5 = +[GEOWiFiQualityServiceManager sharedManager];
  [v5 cancelRequestId:v6];

  [v3 sendReply:0];
}

- (void)tileWithMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"wifitk"];

  v6 = [v3 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"wifiet"];

  v8 = [v3 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"wifireqid"];

  v10 = +[GEOWiFiQualityServiceManager sharedManager];
  v11 = [v3 preferredAuditToken];
  v12 = +[GEOXPCConnection defaultXPCServerConnectionQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100038FFC;
  v14[3] = &unk_100082C78;
  v15 = v3;
  v13 = v3;
  [v10 submitWiFiQualityTileLoadForKey:v5 eTag:v7 requestId:v9 auditToken:v11 completionQueue:v12 completion:v14];
}

- (void)submitWithMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"wifireq"];

  v6 = [v3 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"wifireqid"];

  v8 = [[GEOWiFiQualityServiceRequest alloc] initWithData:v5];
  v9 = +[GEOWiFiQualityServiceManager sharedManager];
  v10 = [v3 preferredAuditToken];
  v11 = +[GEOXPCConnection defaultXPCServerConnectionQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003929C;
  v13[3] = &unk_100082C50;
  v14 = v3;
  v12 = v3;
  [v9 submitWiFiQualityServiceRequest:v8 requestId:v7 auditToken:v10 completionQueue:v11 completion:v13];
}

@end