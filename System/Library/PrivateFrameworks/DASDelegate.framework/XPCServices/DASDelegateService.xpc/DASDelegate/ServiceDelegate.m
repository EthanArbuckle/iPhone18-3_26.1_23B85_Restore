@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"com.apple.dasd.DASDelegateService.allow"];
  v6 = v5;
  if (v5 && [v5 BOOLValue])
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DASDelegateServiceProtocol];
    [v4 setExportedInterface:v7];

    v8 = objc_opt_new();
    [v4 setExportedObject:v8];
    [v4 resume];
    v9 = qword_1000086D0;
    if (os_log_type_enabled(qword_1000086D0, OS_LOG_TYPE_DEBUG))
    {
      sub_100001B60(v9, v4);
    }

    v10 = 1;
  }

  else
  {
    v11 = qword_1000086D0;
    if (os_log_type_enabled(qword_1000086D0, OS_LOG_TYPE_ERROR))
    {
      sub_100001BFC(v11, v4);
    }

    v10 = 0;
  }

  return v10;
}

@end