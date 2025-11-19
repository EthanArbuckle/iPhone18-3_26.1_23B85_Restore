@interface NDAnalyticsServiceListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NDAnalyticsServiceListenerDelegate)init;
- (NDAnalyticsServiceListenerDelegate)initWithService:(id)a3;
@end

@implementation NDAnalyticsServiceListenerDelegate

- (NDAnalyticsServiceListenerDelegate)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[NDAnalyticsServiceListenerDelegate init]";
    v8 = 2080;
    v9 = "NDAnalyticsServiceListenerDelegate.m";
    v10 = 1024;
    v11 = 24;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[NDAnalyticsServiceListenerDelegate init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (NDAnalyticsServiceListenerDelegate)initWithService:(id)a3
{
  v5 = a3;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052BE4();
  }

  v9.receiver = self;
  v9.super_class = NDAnalyticsServiceListenerDelegate;
  v6 = [(NDAnalyticsServiceListenerDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_service, a3);
  }

  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NDAnalyticsService];
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  [v6 setClasses:v8 forSelector:"submitEnvelopes:withCompletion:" argumentIndex:0 ofReply:0];

  [v5 setExportedInterface:v6];
  v9 = [(NDAnalyticsServiceListenerDelegate *)self service];
  [v5 setExportedObject:v9];

  [v5 resume];
  return 1;
}

@end