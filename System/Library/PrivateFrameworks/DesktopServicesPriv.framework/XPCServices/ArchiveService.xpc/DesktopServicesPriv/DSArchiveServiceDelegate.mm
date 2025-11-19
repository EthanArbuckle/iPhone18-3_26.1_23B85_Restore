@interface DSArchiveServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation DSArchiveServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"com.apple.private.ArchiveService.XPC"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = DSArchiveServiceXPCInterface();
    [v4 setExportedInterface:v7];

    v8 = DSArchiveServiceStreamingXPCInterface();
    [v4 setRemoteObjectInterface:v8];

    v9 = objc_opt_new();
    [v4 setExportedObject:v9];
    [v4 resume];
  }

  else
  {
    v10 = LogObj(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109120;
      LODWORD(v14) = [v4 processIdentifier];
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