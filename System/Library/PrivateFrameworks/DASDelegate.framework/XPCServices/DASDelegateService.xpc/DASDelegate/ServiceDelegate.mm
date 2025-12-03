@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.dasd.DASDelegateService.allow"];
  v6 = v5;
  if (v5 && [v5 BOOLValue])
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DASDelegateServiceProtocol];
    [connectionCopy setExportedInterface:v7];

    v8 = objc_opt_new();
    [connectionCopy setExportedObject:v8];
    [connectionCopy resume];
    v9 = qword_1000086D0;
    if (os_log_type_enabled(qword_1000086D0, OS_LOG_TYPE_DEBUG))
    {
      sub_100001B60(v9, connectionCopy);
    }

    v10 = 1;
  }

  else
  {
    v11 = qword_1000086D0;
    if (os_log_type_enabled(qword_1000086D0, OS_LOG_TYPE_ERROR))
    {
      sub_100001BFC(v11, connectionCopy);
    }

    v10 = 0;
  }

  return v10;
}

@end