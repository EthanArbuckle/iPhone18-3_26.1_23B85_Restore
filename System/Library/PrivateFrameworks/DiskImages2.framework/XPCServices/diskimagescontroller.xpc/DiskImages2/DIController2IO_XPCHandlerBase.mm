@interface DIController2IO_XPCHandlerBase
- (DIController2IO_XPCHandlerBase)initWithParams:(id)a3;
- (id)serviceName;
- (void)setConnectionMode;
@end

@implementation DIController2IO_XPCHandlerBase

- (DIController2IO_XPCHandlerBase)initWithParams:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DIController2IO_XPCHandlerBase;
  v6 = [(DIBaseXPCHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_params, a3);
    [(DIBaseXPCHandler *)v7 setIsPrivileged:1];
  }

  return v7;
}

- (id)serviceName
{
  v3 = [(DIController2IO_XPCHandlerBase *)self params];
  v4 = [v3 requiresRootDaemon];

  if (v4)
  {
    return @"com.apple.diskimagesiod.spb";
  }

  v6 = [(DIController2IO_XPCHandlerBase *)self params];
  v7 = [v6 RAMdisk];

  if (v7)
  {
    return @"com.apple.diskimagesiod.ram";
  }

  else
  {
    return @"com.apple.diskimagesiod";
  }
}

- (void)setConnectionMode
{
  v3 = *__error();
  if (sub_1000E044C())
  {
    v4 = sub_1000E03D8();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    *&buf[4] = 51;
    LOWORD(v12[0]) = 2080;
    *(v12 + 2) = "[DIController2IO_XPCHandlerBase setConnectionMode]";
    v5 = _os_log_send_and_compose_impl();

    if (v5)
    {
      fprintf(__stderrp, "%s\n", v5);
      free(v5);
    }
  }

  else
  {
    v6 = sub_1000E03D8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 51;
      LOWORD(v12[0]) = 2080;
      *(v12 + 2) = "[DIController2IO_XPCHandlerBase setConnectionMode]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%.*s: Setting oneshot XPC instance", buf, 0x12u);
    }
  }

  *__error() = v3;
  v7 = [(DIBaseXPCHandler *)self connection];
  v8 = [v7 _xpcConnection];

  *buf = 0;
  v12[0] = 0;
  v9 = [(DIController2IO_XPCHandlerBase *)self params];
  v10 = [v9 instanceID];
  [v10 getUUIDBytes:buf];

  xpc_connection_set_oneshot_instance();
}

@end