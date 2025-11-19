@interface NDDownloadConsumerProxy
- (NDDownloadConsumerProxy)init;
- (NDDownloadConsumerProxy)initWithConsumer:(id)a3 connection:(id)a4;
- (NSXPCConnection)connection;
- (void)_enqueueBarrierMessage:(id)a3;
- (void)_enqueueMessage:(id)a3;
- (void)_sendNextMessage;
- (void)downloadFinishedForRequest:(id)a3 error:(id)a4;
- (void)downloadProgressedForRequest:(id)a3 contentArchive:(id)a4;
- (void)downloadProgressedForRequest:(id)a3 progress:(double)a4;
@end

@implementation NDDownloadConsumerProxy

- (NDDownloadConsumerProxy)initWithConsumer:(id)a3 connection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = NDDownloadConsumerProxy;
  v9 = [(NDDownloadConsumerProxy *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_consumer, a3);
    objc_storeWeak(&v10->_connection, v8);
    v11 = [NSString stringWithFormat:@"%p", v8];
    connectionDescription = v10->_connectionDescription;
    v10->_connectionDescription = v11;

    v13 = +[NSMutableArray array];
    pendingMessages = v10->_pendingMessages;
    v10->_pendingMessages = v13;
  }

  return v10;
}

- (NDDownloadConsumerProxy)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[NDDownloadConsumerProxy init]";
    v8 = 2080;
    v9 = "NDDownloadConsumerProxy.m";
    v10 = 1024;
    v11 = 43;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[NDDownloadConsumerProxy init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (void)downloadProgressedForRequest:(id)a3 progress:(double)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006C88;
  v6[3] = &unk_100071E50;
  v7 = self;
  v8 = a3;
  v9 = a4;
  v5 = v8;
  [(NDDownloadConsumerProxy *)v7 _enqueueMessage:v6];
}

- (void)downloadProgressedForRequest:(id)a3 contentArchive:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006DA0;
  v7[3] = &unk_100071E78;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(NDDownloadConsumerProxy *)v8 _enqueueBarrierMessage:v7];
}

- (void)downloadFinishedForRequest:(id)a3 error:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006EB4;
  v7[3] = &unk_100071E78;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(NDDownloadConsumerProxy *)v8 _enqueueMessage:v7];
}

- (void)_enqueueMessage:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = [(NDDownloadConsumerProxy *)self pendingMessages];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006FE0;
  v8[3] = &unk_100071EA0;
  v9 = v4;
  v6 = v4;
  v7 = objc_retainBlock(v8);
  [v5 addObject:v7];

  [(NDDownloadConsumerProxy *)self _sendNextMessage];
}

- (void)_enqueueBarrierMessage:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  objc_initWeak(&location, self);
  v5 = [(NDDownloadConsumerProxy *)self pendingMessages];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007184;
  v8[3] = &unk_100071EC8;
  v6 = v4;
  v9 = v6;
  objc_copyWeak(&v10, &location);
  v7 = objc_retainBlock(v8);
  [v5 addObject:v7];

  [(NDDownloadConsumerProxy *)self _sendNextMessage];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

- (void)_sendNextMessage
{
  +[NSThread isMainThread];
  if (![(NDDownloadConsumerProxy *)self sendingMesssage])
  {
    v3 = [(NDDownloadConsumerProxy *)self pendingMessages];
    v4 = [v3 count];

    if (v4)
    {
      v5 = [(NDDownloadConsumerProxy *)self connection];

      if (v5)
      {
        [(NDDownloadConsumerProxy *)self setSendingMesssage:1];
        v6 = [(NDDownloadConsumerProxy *)self pendingMessages];
        v7 = [v6 fc_popFirstObject];

        v8 = FCOfflineDownloadsLog;
        if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          v10 = [(NDDownloadConsumerProxy *)self connectionDescription];
          *buf = 138543362;
          v14 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "consumer proxy will send message, connection=%{public}@", buf, 0xCu);
        }

        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1000074CC;
        v11[3] = &unk_100071D20;
        v11[4] = self;
        (v7)[2](v7, v11);
      }

      else
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100007480;
        v12[3] = &unk_100071D20;
        v12[4] = self;
        sub_100007480(v12);
      }
    }
  }
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end