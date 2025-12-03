@interface NDDownloadConsumerProxy
- (NDDownloadConsumerProxy)init;
- (NDDownloadConsumerProxy)initWithConsumer:(id)consumer connection:(id)connection;
- (NSXPCConnection)connection;
- (void)_enqueueBarrierMessage:(id)message;
- (void)_enqueueMessage:(id)message;
- (void)_sendNextMessage;
- (void)downloadFinishedForRequest:(id)request error:(id)error;
- (void)downloadProgressedForRequest:(id)request contentArchive:(id)archive;
- (void)downloadProgressedForRequest:(id)request progress:(double)progress;
@end

@implementation NDDownloadConsumerProxy

- (NDDownloadConsumerProxy)initWithConsumer:(id)consumer connection:(id)connection
{
  consumerCopy = consumer;
  connectionCopy = connection;
  v16.receiver = self;
  v16.super_class = NDDownloadConsumerProxy;
  v9 = [(NDDownloadConsumerProxy *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_consumer, consumer);
    objc_storeWeak(&v10->_connection, connectionCopy);
    connectionCopy = [NSString stringWithFormat:@"%p", connectionCopy];
    connectionDescription = v10->_connectionDescription;
    v10->_connectionDescription = connectionCopy;

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

- (void)downloadProgressedForRequest:(id)request progress:(double)progress
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006C88;
  v6[3] = &unk_100071E50;
  selfCopy = self;
  requestCopy = request;
  progressCopy = progress;
  v5 = requestCopy;
  [(NDDownloadConsumerProxy *)selfCopy _enqueueMessage:v6];
}

- (void)downloadProgressedForRequest:(id)request contentArchive:(id)archive
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006DA0;
  v7[3] = &unk_100071E78;
  selfCopy = self;
  requestCopy = request;
  archiveCopy = archive;
  v5 = archiveCopy;
  v6 = requestCopy;
  [(NDDownloadConsumerProxy *)selfCopy _enqueueBarrierMessage:v7];
}

- (void)downloadFinishedForRequest:(id)request error:(id)error
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006EB4;
  v7[3] = &unk_100071E78;
  selfCopy = self;
  requestCopy = request;
  errorCopy = error;
  v5 = errorCopy;
  v6 = requestCopy;
  [(NDDownloadConsumerProxy *)selfCopy _enqueueMessage:v7];
}

- (void)_enqueueMessage:(id)message
{
  messageCopy = message;
  +[NSThread isMainThread];
  pendingMessages = [(NDDownloadConsumerProxy *)self pendingMessages];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006FE0;
  v8[3] = &unk_100071EA0;
  v9 = messageCopy;
  v6 = messageCopy;
  v7 = objc_retainBlock(v8);
  [pendingMessages addObject:v7];

  [(NDDownloadConsumerProxy *)self _sendNextMessage];
}

- (void)_enqueueBarrierMessage:(id)message
{
  messageCopy = message;
  +[NSThread isMainThread];
  objc_initWeak(&location, self);
  pendingMessages = [(NDDownloadConsumerProxy *)self pendingMessages];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007184;
  v8[3] = &unk_100071EC8;
  v6 = messageCopy;
  v9 = v6;
  objc_copyWeak(&v10, &location);
  v7 = objc_retainBlock(v8);
  [pendingMessages addObject:v7];

  [(NDDownloadConsumerProxy *)self _sendNextMessage];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

- (void)_sendNextMessage
{
  +[NSThread isMainThread];
  if (![(NDDownloadConsumerProxy *)self sendingMesssage])
  {
    pendingMessages = [(NDDownloadConsumerProxy *)self pendingMessages];
    v4 = [pendingMessages count];

    if (v4)
    {
      connection = [(NDDownloadConsumerProxy *)self connection];

      if (connection)
      {
        [(NDDownloadConsumerProxy *)self setSendingMesssage:1];
        pendingMessages2 = [(NDDownloadConsumerProxy *)self pendingMessages];
        fc_popFirstObject = [pendingMessages2 fc_popFirstObject];

        v8 = FCOfflineDownloadsLog;
        if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          connectionDescription = [(NDDownloadConsumerProxy *)self connectionDescription];
          *buf = 138543362;
          v14 = connectionDescription;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "consumer proxy will send message, connection=%{public}@", buf, 0xCu);
        }

        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1000074CC;
        v11[3] = &unk_100071D20;
        v11[4] = self;
        (fc_popFirstObject)[2](fc_popFirstObject, v11);
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