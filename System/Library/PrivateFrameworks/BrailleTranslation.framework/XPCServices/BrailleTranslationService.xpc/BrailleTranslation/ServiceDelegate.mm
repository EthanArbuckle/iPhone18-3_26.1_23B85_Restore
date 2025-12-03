@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  HasEntitlement = BRLTSConnectionHasEntitlement();
  v6 = BRLTLog();
  v7 = v6;
  if (HasEntitlement)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [connectionCopy auditSessionIdentifier]);
      v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [connectionCopy processIdentifier]);
      v13 = 138412802;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Accepting connection from client. auditID:%@ pid:%@, connection:%@", &v13, 0x20u);
    }

    v10 = +[BRLTSTranslationService exportedInterface];
    [connectionCopy setExportedInterface:v10];

    v11 = objc_alloc_init(BRLTSTranslationService);
    [connectionCopy setExportedObject:v11];

    [connectionCopy resume];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100000C54(connectionCopy, v7);
    }
  }

  return HasEntitlement;
}

@end