@interface IPConfigurationHelperDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (IPConfigurationHelperDelegate)init;
@end

@implementation IPConfigurationHelperDelegate

- (IPConfigurationHelperDelegate)init
{
  v4.receiver = self;
  v4.super_class = IPConfigurationHelperDelegate;
  v2 = [(IPConfigurationHelperDelegate *)&v4 init];
  if (v2)
  {
    sub_100000DD8("Helper");
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"com.apple.private.IPConfigurationHelper.PvD"];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (([v5 BOOLValue] & 1) == 0)
  {
    v9 = sub_1000082A0();
    v10 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v13, 0, sizeof(v13));
      os_log_type_enabled(v9, v10);
      v11 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v11 != v13)
      {
        free(v11);
      }
    }

    goto LABEL_9;
  }

  v6 = objc_opt_new();
  [v4 setExportedObject:v6];

  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___IPHPvDInfoRequestProtocol];
  [v4 setExportedInterface:v7];

  [v4 resume];
  v8 = 1;
LABEL_10:

  return v8;
}

@end