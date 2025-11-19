@interface NDDownloadServiceListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NDDownloadServiceListenerDelegate)init;
- (NDDownloadServiceListenerDelegate)initWithContentContext:(id)a3 ANFHelper:(id)a4;
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

- (NDDownloadServiceListenerDelegate)initWithContentContext:(id)a3 ANFHelper:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = NDDownloadServiceListenerDelegate;
  v9 = [(NDDownloadServiceListenerDelegate *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentContext, a3);
    v11 = [NDContentDownloadService alloc];
    v12 = [(NDDownloadServiceListenerDelegate *)v10 contentContext];
    v13 = [(NDContentDownloadService *)v11 initWithContentContext:v12 ANFHelper:v8];
    downloadService = v10->_downloadService;
    v10->_downloadService = v13;
  }

  return v10;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSString stringWithFormat:@"%p", v5];
  v7 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v5 serviceName];
    *buf = 138543618;
    v23 = v6;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "will accept new XPC connection, connection=%{public}@, serviceName=%{public}@", buf, 0x16u);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000EA84;
  v20[3] = &unk_100071D20;
  v10 = v6;
  v21 = v10;
  [v5 setInvalidationHandler:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000EB2C;
  v18[3] = &unk_100071D20;
  v19 = v10;
  v11 = v10;
  [v5 setInterruptionHandler:v18];
  v12 = NDDownloadServiceXPCInterface();
  [v5 setExportedInterface:v12];

  v13 = [(NDDownloadServiceListenerDelegate *)self downloadService];
  [v5 setExportedObject:v13];

  v14 = [(NDDownloadServiceListenerDelegate *)self downloadService];
  v15 = [v14 xpcMessageQueue];
  [v5 _setQueue:v15];

  v16 = [(NDDownloadServiceListenerDelegate *)self downloadService];
  [v16 setCurrentConnection:v5];

  [v5 resume];
  return 1;
}

@end