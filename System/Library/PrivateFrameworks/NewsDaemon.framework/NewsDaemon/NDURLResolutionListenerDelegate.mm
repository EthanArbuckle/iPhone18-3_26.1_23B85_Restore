@interface NDURLResolutionListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NDURLResolutionListenerDelegate)init;
- (NDURLResolutionListenerDelegate)initWithURLResolutionService:(id)service;
@end

@implementation NDURLResolutionListenerDelegate

- (NDURLResolutionListenerDelegate)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[NDURLResolutionListenerDelegate init]";
    v8 = 2080;
    v9 = "NDURLResolutionListenerDelegate.m";
    v10 = 1024;
    v11 = 26;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[NDURLResolutionListenerDelegate init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (NDURLResolutionListenerDelegate)initWithURLResolutionService:(id)service
{
  serviceCopy = service;
  if (!serviceCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005333C();
  }

  v9.receiver = self;
  v9.super_class = NDURLResolutionListenerDelegate;
  v6 = [(NDURLResolutionListenerDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URLResolutionService, service);
  }

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.news-url-resolution"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v6 BOOLValue])
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NDURLResolutionService];
    v8 = [NSSet setWithObject:objc_opt_class()];
    [v7 setClasses:v8 forSelector:"resolveNewsURL:withCompletion:" argumentIndex:0 ofReply:0];

    v9 = [NSSet setWithObject:objc_opt_class()];
    [v7 setClasses:v9 forSelector:"resolveWebURL:withCompletion:" argumentIndex:0 ofReply:0];

    [connectionCopy setExportedInterface:v7];
    uRLResolutionService = [(NDURLResolutionListenerDelegate *)self URLResolutionService];
    [connectionCopy setExportedObject:uRLResolutionService];

    [connectionCopy resume];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end