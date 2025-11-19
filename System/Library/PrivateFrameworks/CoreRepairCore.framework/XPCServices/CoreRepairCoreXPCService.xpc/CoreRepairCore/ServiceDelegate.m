@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[ServiceDelegate listener:shouldAcceptNewConnection:]";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: %@", &v12, 0x16u);
  }

  v7 = [v6 valueForEntitlement:@"com.apple.private.CoreRepairCore.repairInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 BOOLValue])
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreRepairCoreXPCServiceProtocol];
    [v6 setExportedInterface:v8];

    v9 = objc_opt_new();
    [v6 setExportedObject:v9];
    [v6 resume];

    v10 = 1;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000F44(v6);
    }

    v10 = 0;
  }

  return v10;
}

@end