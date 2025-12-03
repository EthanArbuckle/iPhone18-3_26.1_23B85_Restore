@interface DDRWorkerServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_run;
- (void)resetDataWithRequest:(id)request completion:(id)completion;
- (void)resetWithMode:(int64_t)mode didUpdateWithProgress:(double)progress;
- (void)resetWithModeDidBegin:(int64_t)begin;
- (void)setObserving:(BOOL)observing;
- (void)start;
@end

@implementation DDRWorkerServer

- (void)start
{
  v3 = BSDispatchQueueCreateWithQualityOfService();
  [(DDRWorkerServer *)self setWorkerQueue:v3];

  v4 = [DDRWorker alloc];
  workerQueue = [(DDRWorkerServer *)self workerQueue];
  v6 = [(DDRWorker *)v4 initWithQueue:workerQueue];
  [(DDRWorkerServer *)self setWorker:v6];

  worker = [(DDRWorkerServer *)self worker];
  [worker setDelegate:self];

  v8 = +[NSXPCListener serviceListener];
  [v8 setDelegate:self];
  [v8 resume];
  [(DDRWorkerServer *)self _run];
}

- (void)_run
{
  v2 = +[NSRunLoop mainRunLoop];
  [v2 run];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = DDRLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "got incomming connection in xpc worker server", buf, 2u);
  }

  v7 = [BSAuditToken tokenFromNSXPCConnection:connectionCopy];
  v8 = DDRLogForCategory(0);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    v24 = 0;
    v10 = "token is not nil";
    v11 = &v24;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    *v23 = 0;
    v10 = "token is nil";
    v11 = v23;
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
LABEL_9:

  v12 = [v7 hasEntitlement:@"com.apple.dataresetworker.access"];
  v13 = DDRLogForCategory(0);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "connection have entitlements", v21, 2u);
    }

    v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DDRWorkerServerProtocol];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [NSSet setWithObjects:v15, v16, objc_opt_class(), 0];
    [v13 setClasses:v17 forSelector:"resetDataWithRequest:completion:" argumentIndex:0 ofReply:0];

    [connectionCopy setExportedInterface:v13];
    [connectionCopy setExportedObject:self];
    v18 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DDRWorkerClientProtocol];
    [connectionCopy setRemoteObjectInterface:v18];

    [connectionCopy setInvalidationHandler:&stru_1000146A8];
    [connectionCopy setInterruptionHandler:&stru_1000146C8];
    workerQueue = [(DDRWorkerServer *)self workerQueue];
    [connectionCopy _setQueue:workerQueue];

    [connectionCopy resume];
    [(DDRWorkerServer *)self setDevicedataresetdConnection:connectionCopy];
  }

  else if (v14)
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "connection does not have entitlements", v22, 2u);
  }

  return v12;
}

- (void)resetDataWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v8 = DDRLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "calling reset data with mode in xpc worker", v10, 2u);
  }

  worker = [(DDRWorkerServer *)self worker];
  [worker resetDataWithRequest:requestCopy completion:completionCopy];
}

- (void)setObserving:(BOOL)observing
{
  v5 = DDRLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Oberver is connected to xpc service worker", v6, 2u);
  }

  self->_hasObserver = observing;
}

- (void)resetWithMode:(int64_t)mode didUpdateWithProgress:(double)progress
{
  v7 = DDRLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    progressCopy = progress;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "worker server update with progress: %lf", &v10, 0xCu);
  }

  devicedataresetdConnection = [(DDRWorkerServer *)self devicedataresetdConnection];
  remoteObjectProxy = [devicedataresetdConnection remoteObjectProxy];
  [remoteObjectProxy resetWithMode:mode didUpdateWithProgress:progress];
}

- (void)resetWithModeDidBegin:(int64_t)begin
{
  v5 = DDRLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "worker server reset did begin", v8, 2u);
  }

  devicedataresetdConnection = [(DDRWorkerServer *)self devicedataresetdConnection];
  remoteObjectProxy = [devicedataresetdConnection remoteObjectProxy];
  [remoteObjectProxy resetWithModeDidBegin:begin];
}

@end