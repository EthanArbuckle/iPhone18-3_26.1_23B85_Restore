@interface GEOCountryConfigurationServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (BOOL)handleIncomingPairedDeviceMessage:(id)message completionHandler:(id)handler;
- (void)fetchGEOIPCCWithPairedDeviceMessage:(id)message completionHandler:(id)handler;
- (void)fetchGEOIPCCWithRequest:(id)request;
- (void)updateWithRequest:(id)request;
@end

@implementation GEOCountryConfigurationServer

- (BOOL)handleIncomingPairedDeviceMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  if ([messageCopy type] == 3)
  {
    fetchGeoIpCc = [messageCopy fetchGeoIpCc];
    v9 = fetchGeoIpCc != 0;
    if (fetchGeoIpCc)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100019F3C;
      v11[3] = &unk_100081C38;
      v12 = handlerCopy;
      [(GEOCountryConfigurationServer *)self fetchGEOIPCCWithPairedDeviceMessage:fetchGeoIpCc completionHandler:v11];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  if (v13 != 1028)
  {
    if (v13 != 643)
    {
      v17 = 0;
      goto LABEL_11;
    }

    v14 = objc_opt_class();
    v15 = sub_100001388(@"country", messageCopy, objectCopy, v14, peerCopy);
    v16 = v15;
    if (v15)
    {
      [v15 setSignpostId:id];
      [(GEOCountryConfigurationServer *)self updateWithRequest:v16];
LABEL_8:
      v17 = 1;
LABEL_9:

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v17 = 1;
  if (sub_100001B78(peerCopy, objectCopy, @"country", messageCopy, &off_100088A78, 1))
  {
    v18 = objc_opt_class();
    v19 = sub_100001388(@"country", messageCopy, objectCopy, v18, peerCopy);
    v16 = v19;
    if (v19)
    {
      [v19 setSignpostId:id];
      [(GEOCountryConfigurationServer *)self fetchGEOIPCCWithRequest:v16];
      goto LABEL_8;
    }

LABEL_12:
    v17 = 0;
    goto LABEL_9;
  }

LABEL_11:

  return v17;
}

- (void)fetchGEOIPCCWithPairedDeviceMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[GEOCountryConfiguration sharedConfiguration];
  qos_class_self();
  global_queue = geo_get_global_queue();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001C6B4;
  v8[3] = &unk_100081DE8;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [v5 fetchGEOIPCountryCode:global_queue callback:v8];
}

- (void)fetchGEOIPCCWithRequest:(id)request
{
  requestCopy = request;
  v4 = [[GEOCountryConfigFetchGeoIPReply alloc] initWithRequest:requestCopy];
  v5 = +[GEOCountryConfiguration sharedConfiguration];
  qos_class_self();
  global_queue = geo_get_global_queue();
  preferredAuditToken = [requestCopy preferredAuditToken];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001C888;
  v9[3] = &unk_100081DC0;
  v10 = v4;
  v8 = v4;
  [v5 fetchGEOIPCountryCode:global_queue auditToken:preferredAuditToken callback:v9];
}

- (void)updateWithRequest:(id)request
{
  requestCopy = request;
  v4 = [[GEOCountryConfigUpdateReply alloc] initWithRequest:requestCopy];

  v5 = +[GEOCountryConfiguration sharedConfiguration];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001C9FC;
  v8[3] = &unk_100083EC0;
  v9 = v4;
  v6 = v4;
  qos_class_self();
  global_queue = geo_get_global_queue();
  [v5 updateCountryConfiguration:v8 callbackQueue:global_queue];
}

@end