@interface GEOWiFiQualityServiceServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (void)cancelWithMessage:(id)message;
- (void)submitWithMessage:(id)message;
- (void)tileWithMessage:(id)message;
@end

@implementation GEOWiFiQualityServiceServer

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  objectCopy = object;
  peerCopy = peer;
  v12 = sub_100001334(message);
  if (v12 == 430)
  {
    v16 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
    v14 = v16;
    if (v16)
    {
      [v16 setSignpostId:id];
      [(GEOWiFiQualityServiceServer *)self tileWithMessage:v14];
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v12 == 614)
  {
    v15 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
    v14 = v15;
    if (v15)
    {
      [v15 setSignpostId:id];
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

  v13 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_14;
  }

  [v13 setSignpostId:id];
  [(GEOWiFiQualityServiceServer *)self submitWithMessage:v14];
LABEL_10:
  v17 = 1;
LABEL_11:

LABEL_13:
  return v17;
}

- (void)cancelWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"wifireqid"];

  v5 = +[GEOWiFiQualityServiceManager sharedManager];
  [v5 cancelRequestId:v6];

  [messageCopy sendReply:0];
}

- (void)tileWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"wifitk"];

  userInfo2 = [messageCopy userInfo];
  v7 = [userInfo2 objectForKeyedSubscript:@"wifiet"];

  userInfo3 = [messageCopy userInfo];
  v9 = [userInfo3 objectForKeyedSubscript:@"wifireqid"];

  v10 = +[GEOWiFiQualityServiceManager sharedManager];
  preferredAuditToken = [messageCopy preferredAuditToken];
  v12 = +[GEOXPCConnection defaultXPCServerConnectionQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100038FFC;
  v14[3] = &unk_100082C78;
  v15 = messageCopy;
  v13 = messageCopy;
  [v10 submitWiFiQualityTileLoadForKey:v5 eTag:v7 requestId:v9 auditToken:preferredAuditToken completionQueue:v12 completion:v14];
}

- (void)submitWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"wifireq"];

  userInfo2 = [messageCopy userInfo];
  v7 = [userInfo2 objectForKeyedSubscript:@"wifireqid"];

  v8 = [[GEOWiFiQualityServiceRequest alloc] initWithData:v5];
  v9 = +[GEOWiFiQualityServiceManager sharedManager];
  preferredAuditToken = [messageCopy preferredAuditToken];
  v11 = +[GEOXPCConnection defaultXPCServerConnectionQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003929C;
  v13[3] = &unk_100082C50;
  v14 = messageCopy;
  v12 = messageCopy;
  [v9 submitWiFiQualityServiceRequest:v8 requestId:v7 auditToken:preferredAuditToken completionQueue:v11 completion:v13];
}

@end