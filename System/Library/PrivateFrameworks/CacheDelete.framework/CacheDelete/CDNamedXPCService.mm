@interface CDNamedXPCService
- (CDNamedXPCService)initWithInfo:(id)a3;
- (void)obtainXPCConnection:(id)a3;
@end

@implementation CDNamedXPCService

- (CDNamedXPCService)initWithInfo:(id)a3
{
  v11.receiver = self;
  v11.super_class = CDNamedXPCService;
  v3 = [(CDXPCService *)&v11 initWithInfo:a3];
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
    v8 = [(CDNamedXPCService *)v4 xpcServiceName];
    v9 = [v7 objectForKeyedSubscript:v8];

    LODWORD(v7) = [v9 isEqual:&__kCFBooleanTrue];
    if (v7)
    {
      [(CDNamedXPCService *)v4 setOptions:[(CDNamedXPCService *)v4 options]| 0x1000];
    }
  }

  return v4;
}

- (void)obtainXPCConnection:(id)a3
{
  v4 = a3;
  v5 = [(CDXPCService *)self xpcConnection];

  if (v5)
  {
    v6 = [(CDNamedXPCService *)self xpcServiceName];
    [NSException raise:@"com.apple.cache_delete.CDNamedXPCService.duplicate_connection" format:@"Asked to build a connection to %@ but we already have a perfectly good one!", v6];
  }

  else
  {
    v7 = [NSXPCConnection alloc];
    v8 = [(CDNamedXPCService *)self xpcServiceName];
    v9 = [v7 initWithMachServiceName:v8 options:{-[CDNamedXPCService options](self, "options")}];

    if (v9)
    {
      [(CDXPCService *)self setXpcConnection:v9];
      v10 = [(CDXPCService *)self xpcConnection];
      v4[2](v4, v10, 0);
    }

    else
    {
      v11 = *__error();
      v12 = CDGetLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = [(CDNamedXPCService *)self xpcServiceName];
        *buf = 138412546;
        v20 = v16;
        v21 = 2080;
        v22 = strerror(v11);
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to create an XPC Connection to service %@: %s", buf, 0x16u);
      }

      v10 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:v11 userInfo:0];
      v13 = [NSError alloc];
      v17 = NSUnderlyingErrorKey;
      v18 = v10;
      v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v15 = [v13 initWithDomain:@"CacheDeleteErrorDomain" code:6 userInfo:v14];

      (v4)[2](v4, 0, v15);
    }
  }
}

@end