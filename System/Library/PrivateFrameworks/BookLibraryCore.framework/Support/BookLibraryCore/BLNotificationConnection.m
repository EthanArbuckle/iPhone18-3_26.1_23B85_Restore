@interface BLNotificationConnection
- (BLNotificationConnection)initWithEnvironment:(id)a3 queue:(id)a4;
- (BLNotificationConnectionDelegate)delegate;
- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)dealloc;
@end

@implementation BLNotificationConnection

- (BLNotificationConnection)initWithEnvironment:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = BLNotificationConnection;
  v9 = [(BLNotificationConnection *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a4);
    objc_storeStrong(&v10->_environment, a3);
    v11 = [[APSConnection alloc] initWithEnvironmentName:v7 namedDelegatePort:@"com.apple.aps.bookassetd" queue:v10->_queue];
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

- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5
{
  v7 = a3;
  queue = self->_queue;
  v9 = a5;
  dispatch_assert_queue_V2(queue);
  v10 = [[BLNotificationMessage alloc] initWithUserInfo:v9];

  v11 = BLServiceNotificationLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 138543618;
    v14 = v7;
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
      v14 = v7;
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

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = BLServiceNotificationLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 bu_md5];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Connection: %{public}@ received public token %{public}@", &v10, 0x16u);
  }
}

- (BLNotificationConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end