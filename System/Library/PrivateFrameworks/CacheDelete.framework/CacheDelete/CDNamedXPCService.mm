@interface CDNamedXPCService
- (CDNamedXPCService)initWithInfo:(id)info;
- (void)obtainXPCConnection:(id)connection;
@end

@implementation CDNamedXPCService

- (CDNamedXPCService)initWithInfo:(id)info
{
  v11.receiver = self;
  v11.super_class = CDNamedXPCService;
  v3 = [(CDXPCService *)&v11 initWithInfo:info];
  v4 = v3;
  if (v3)
  {
    v5 = [(CDService *)v3 ID];

    if (v5)
    {
      v6 = [(CDService *)v4 ID];
      [(CDNamedXPCService *)v4 setXpcServiceName:v6];
    }

    if (qword_10006E300 != -1)
    {
      dispatch_once(&qword_10006E300, &__block_literal_global_9);
    }

    v7 = _MergedGlobals_15;
    xpcServiceName = [(CDNamedXPCService *)v4 xpcServiceName];
    v9 = [v7 objectForKeyedSubscript:xpcServiceName];

    LODWORD(v7) = [v9 isEqual:&__kCFBooleanTrue];
    if (v7)
    {
      [(CDNamedXPCService *)v4 setOptions:[(CDNamedXPCService *)v4 options]| 0x1000];
    }
  }

  return v4;
}

- (void)obtainXPCConnection:(id)connection
{
  connectionCopy = connection;
  xpcConnection = [(CDXPCService *)self xpcConnection];

  if (xpcConnection)
  {
    xpcServiceName = [(CDNamedXPCService *)self xpcServiceName];
    [NSException raise:@"com.apple.cache_delete.CDNamedXPCService.duplicate_connection" format:@"Asked to build a connection to %@ but we already have a perfectly good one!", xpcServiceName];
  }

  else
  {
    v7 = [NSXPCConnection alloc];
    xpcServiceName2 = [(CDNamedXPCService *)self xpcServiceName];
    v9 = [v7 initWithMachServiceName:xpcServiceName2 options:{-[CDNamedXPCService options](self, "options")}];

    if (v9)
    {
      [(CDXPCService *)self setXpcConnection:v9];
      xpcConnection2 = [(CDXPCService *)self xpcConnection];
      connectionCopy[2](connectionCopy, xpcConnection2, 0);
    }

    else
    {
      v11 = *__error();
      v12 = CDGetLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        xpcServiceName3 = [(CDNamedXPCService *)self xpcServiceName];
        *buf = 138412546;
        v20 = xpcServiceName3;
        v21 = 2080;
        v22 = strerror(v11);
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to create an XPC Connection to service %@: %s", buf, 0x16u);
      }

      xpcConnection2 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:v11 userInfo:0];
      v13 = [NSError alloc];
      v17 = NSUnderlyingErrorKey;
      v18 = xpcConnection2;
      v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v15 = [v13 initWithDomain:@"CacheDeleteErrorDomain" code:6 userInfo:v14];

      (connectionCopy)[2](connectionCopy, 0, v15);
    }
  }
}

@end