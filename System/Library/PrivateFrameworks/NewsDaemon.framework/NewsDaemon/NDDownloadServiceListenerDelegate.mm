@interface NDDownloadServiceListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NDDownloadServiceListenerDelegate)init;
- (NDDownloadServiceListenerDelegate)initWithContentContext:(id)context ANFHelper:(id)helper;
@end

@implementation NDDownloadServiceListenerDelegate

- (NDDownloadServiceListenerDelegate)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[NDDownloadServiceListenerDelegate init]";
    v8 = 2080;
    v9 = "NDDownloadServiceListenerDelegate.m";
    v10 = 1024;
    v11 = 33;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[NDDownloadServiceListenerDelegate init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (NDDownloadServiceListenerDelegate)initWithContentContext:(id)context ANFHelper:(id)helper
{
  contextCopy = context;
  helperCopy = helper;
  v16.receiver = self;
  v16.super_class = NDDownloadServiceListenerDelegate;
  v9 = [(NDDownloadServiceListenerDelegate *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentContext, context);
    v11 = [NDContentDownloadService alloc];
    contentContext = [(NDDownloadServiceListenerDelegate *)v10 contentContext];
    v13 = [(NDContentDownloadService *)v11 initWithContentContext:contentContext ANFHelper:helperCopy];
    downloadService = v10->_downloadService;
    v10->_downloadService = v13;
  }

  return v10;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  connectionCopy = [NSString stringWithFormat:@"%p", connectionCopy];
  v7 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    serviceName = [connectionCopy serviceName];
    *buf = 138543618;
    v23 = connectionCopy;
    v24 = 2114;
    v25 = serviceName;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "will accept new XPC connection, connection=%{public}@, serviceName=%{public}@", buf, 0x16u);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000EA84;
  v20[3] = &unk_100071D20;
  v10 = connectionCopy;
  v21 = v10;
  [connectionCopy setInvalidationHandler:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000EB2C;
  v18[3] = &unk_100071D20;
  v19 = v10;
  v11 = v10;
  [connectionCopy setInterruptionHandler:v18];
  v12 = NDDownloadServiceXPCInterface();
  [connectionCopy setExportedInterface:v12];

  downloadService = [(NDDownloadServiceListenerDelegate *)self downloadService];
  [connectionCopy setExportedObject:downloadService];

  downloadService2 = [(NDDownloadServiceListenerDelegate *)self downloadService];
  xpcMessageQueue = [downloadService2 xpcMessageQueue];
  [connectionCopy _setQueue:xpcMessageQueue];

  downloadService3 = [(NDDownloadServiceListenerDelegate *)self downloadService];
  [downloadService3 setCurrentConnection:connectionCopy];

  [connectionCopy resume];
  return 1;
}

@end