@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  HasEntitlement = BRLTSConnectionHasEntitlement();
  v6 = BRLTLog();
  v7 = v6;
  if (HasEntitlement)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 auditSessionIdentifier]);
      v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 processIdentifier]);
      v13 = 138412802;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Accepting connection from client. auditID:%@ pid:%@, connection:%@", &v13, 0x20u);
    }

    v10 = +[BRLTSTranslationService exportedInterface];
    [v4 setExportedInterface:v10];

    v11 = objc_alloc_init(BRLTSTranslationService);
    [v4 setExportedObject:v11];

    [v4 resume];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100000C54(v4, v7);
    }
  }

  return HasEntitlement;
}

@end