@interface DSArchiveServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation DSArchiveServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.private.ArchiveService.XPC"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = DSArchiveServiceXPCInterface();
    [connectionCopy setExportedInterface:v7];

    v8 = DSArchiveServiceStreamingXPCInterface();
    [connectionCopy setRemoteObjectInterface:v8];

    v9 = objc_opt_new();
    [connectionCopy setExportedObject:v9];
    [connectionCopy resume];
  }

  else
  {
    v10 = LogObj(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109120;
      LODWORD(v14) = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Connection without entitlement from PID: %d", &v13, 8u);
    }

    v11 = LogObj(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No valid entitlement: %{public}@", &v13, 0xCu);
    }
  }

  return isKindOfClass & 1;
}

@end