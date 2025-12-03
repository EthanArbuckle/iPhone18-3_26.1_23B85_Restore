@interface BLNotificationConnection
- (BLNotificationConnection)initWithEnvironment:(id)environment queue:(id)queue;
- (BLNotificationConnectionDelegate)delegate;
- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
@end

@implementation BLNotificationConnection

- (BLNotificationConnection)initWithEnvironment:(id)environment queue:(id)queue
{
  environmentCopy = environment;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = BLNotificationConnection;
  v9 = [(BLNotificationConnection *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_environment, environment);
    v11 = [[APSConnection alloc] initWithEnvironmentName:environmentCopy namedDelegatePort:@"com.apple.aps.bookassetd" queue:v10->_queue];
    connection = v10->_connection;
    v10->_connection = v11;

    v16 = @"com.apple.bookassetd";
    v13 = [NSArray arrayWithObjects:&v16 count:1];
    [(APSConnection *)v10->_connection _setEnabledTopics:v13];

    [(APSConnection *)v10->_connection setDelegate:v10];
  }

  return v10;
}

- (void)dealloc
{
  [(APSConnection *)self->_connection shutdown];
  v3.receiver = self;
  v3.super_class = BLNotificationConnection;
  [(BLNotificationConnection *)&v3 dealloc];
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  connectionCopy = connection;
  queue = self->_queue;
  infoCopy = info;
  dispatch_assert_queue_V2(queue);
  v10 = [[BLNotificationMessage alloc] initWithUserInfo:infoCopy];

  v11 = BLServiceNotificationLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 138543618;
    v14 = connectionCopy;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Connection: %{public}@ received incoming message %{public}@", &v13, 0x16u);
  }

  if ([(BLNotificationMessage *)v10 actionType]== -1)
  {
    WeakRetained = BLServiceNotificationLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543618;
      v14 = connectionCopy;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "Connection: %{public}@ received invalid message %{public}@", &v13, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained connection:self didRecieveMessage:v10];
  }
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_queue);
  v8 = BLServiceNotificationLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    bu_md5 = [tokenCopy bu_md5];
    v10 = 138543618;
    v11 = connectionCopy;
    v12 = 2114;
    v13 = bu_md5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Connection: %{public}@ received public token %{public}@", &v10, 0x16u);
  }
}

- (BLNotificationConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end