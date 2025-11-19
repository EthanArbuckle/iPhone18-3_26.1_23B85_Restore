@interface ServiceDelegate
- (BOOL)hasEntitlement:(id)a3 connection:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (ServiceDelegate)init
{
  v6.receiver = self;
  v6.super_class = ServiceDelegate;
  v2 = [(ServiceDelegate *)&v6 init];
  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v8 = "[ServiceDelegate init]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }

    v3 = objc_opt_new();
    sharedXPCService = v2->_sharedXPCService;
    v2->_sharedXPCService = v3;
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CategoriesServiceProtocol];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self->_sharedXPCService];
  [v5 resume];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "CategoriesService connection accepted.", v8, 2u);
  }

  return 1;
}

- (BOOL)hasEntitlement:(id)a3 connection:(id)a4
{
  v4 = [a4 valueForEntitlement:a3];
  v5 = 0;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 BOOLValue])
    {
      v5 = 1;
    }
  }

  return v5;
}

@end