@interface GEOCountryConfigurationServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (BOOL)handleIncomingPairedDeviceMessage:(id)a3 completionHandler:(id)a4;
- (void)fetchGEOIPCCWithPairedDeviceMessage:(id)a3 completionHandler:(id)a4;
- (void)fetchGEOIPCCWithRequest:(id)a3;
- (void)updateWithRequest:(id)a3;
@end

@implementation GEOCountryConfigurationServer

- (BOOL)handleIncomingPairedDeviceMessage:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 3)
  {
    v8 = [v6 fetchGeoIpCc];
    v9 = v8 != 0;
    if (v8)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100019F3C;
      v11[3] = &unk_100081C38;
      v12 = v7;
      [(GEOCountryConfigurationServer *)self fetchGEOIPCCWithPairedDeviceMessage:v8 completionHandler:v11];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_100001334(v10);
  if (v13 != 1028)
  {
    if (v13 != 643)
    {
      v17 = 0;
      goto LABEL_11;
    }

    v14 = objc_opt_class();
    v15 = sub_100001388(@"country", v10, v11, v14, v12);
    v16 = v15;
    if (v15)
    {
      [v15 setSignpostId:a6];
      [(GEOCountryConfigurationServer *)self updateWithRequest:v16];
LABEL_8:
      v17 = 1;
LABEL_9:

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v17 = 1;
  if (sub_100001B78(v12, v11, @"country", v10, &off_100088A78, 1))
  {
    v18 = objc_opt_class();
    v19 = sub_100001388(@"country", v10, v11, v18, v12);
    v16 = v19;
    if (v19)
    {
      [v19 setSignpostId:a6];
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

- (void)fetchGEOIPCCWithPairedDeviceMessage:(id)a3 completionHandler:(id)a4
{
  v4 = a4;
  v5 = +[GEOCountryConfiguration sharedConfiguration];
  qos_class_self();
  global_queue = geo_get_global_queue();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001C6B4;
  v8[3] = &unk_100081DE8;
  v9 = v4;
  v7 = v4;
  [v5 fetchGEOIPCountryCode:global_queue callback:v8];
}

- (void)fetchGEOIPCCWithRequest:(id)a3
{
  v3 = a3;
  v4 = [[GEOCountryConfigFetchGeoIPReply alloc] initWithRequest:v3];
  v5 = +[GEOCountryConfiguration sharedConfiguration];
  qos_class_self();
  global_queue = geo_get_global_queue();
  v7 = [v3 preferredAuditToken];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001C888;
  v9[3] = &unk_100081DC0;
  v10 = v4;
  v8 = v4;
  [v5 fetchGEOIPCountryCode:global_queue auditToken:v7 callback:v9];
}

- (void)updateWithRequest:(id)a3
{
  v3 = a3;
  v4 = [[GEOCountryConfigUpdateReply alloc] initWithRequest:v3];

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