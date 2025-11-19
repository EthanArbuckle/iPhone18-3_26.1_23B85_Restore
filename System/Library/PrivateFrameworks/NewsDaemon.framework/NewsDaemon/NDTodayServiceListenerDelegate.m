@interface NDTodayServiceListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NDTodayServiceListenerDelegate)init;
- (NDTodayServiceListenerDelegate)initWithContentContext:(id)a3 fetchQueue:(id)a4;
@end

@implementation NDTodayServiceListenerDelegate

- (NDTodayServiceListenerDelegate)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[NDTodayServiceListenerDelegate init]";
    v8 = 2080;
    v9 = "NDTodayServiceListenerDelegate.m";
    v10 = 1024;
    v11 = 32;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[NDTodayServiceListenerDelegate init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (NDTodayServiceListenerDelegate)initWithContentContext:(id)a3 fetchQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000539CC();
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100053AAC();
  }

LABEL_6:
  v12.receiver = self;
  v12.super_class = NDTodayServiceListenerDelegate;
  v9 = [(NDTodayServiceListenerDelegate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentContext, a3);
    objc_storeStrong(&v10->_fetchQueue, a4);
  }

  return v10;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NDNewsServiceClient];
  [v5 setRemoteObjectInterface:v6];

  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NDNewsService];
  v8 = [NSSet setWithObject:objc_opt_class()];
  [v7 setClasses:v8 forSelector:"fetchLatestResultsWithParameters:completion:" argumentIndex:0 ofReply:0];

  v9 = [NSSet setWithObject:objc_opt_class()];
  [v7 setClasses:v9 forSelector:"fetchPlaceholderResultsWithOperationInfo:syncCompletion:" argumentIndex:0 ofReply:0];

  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
  [v7 setClasses:v11 forSelector:"markAnalyticsElements:asSeenAtDate:withCompletion:" argumentIndex:0 ofReply:0];

  v12 = [NSSet setWithObject:objc_opt_class()];
  [v7 setClasses:v12 forSelector:"markAnalyticsElement:asReadAtDate:withCompletion:" argumentIndex:0 ofReply:0];

  [v5 setExportedInterface:v7];
  v13 = [v5 remoteObjectProxy];
  v14 = [NDTodayClientConnection alloc];
  v15 = [(NDTodayServiceListenerDelegate *)self contentContext];
  v16 = [(NDTodayServiceListenerDelegate *)self fetchQueue];
  v17 = [(NDTodayClientConnection *)v14 initWithClient:v13 contentContext:v15 fetchQueue:v16];
  [v5 setExportedObject:v17];

  [v5 resume];
  return 1;
}

@end