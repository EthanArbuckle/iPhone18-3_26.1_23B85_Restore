@interface CHPushConnectionDelegate
- (CHPushConnectionDelegate)init;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)dealloc;
@end

@implementation CHPushConnectionDelegate

- (CHPushConnectionDelegate)init
{
  v17.receiver = self;
  v17.super_class = CHPushConnectionDelegate;
  v2 = [(CHPushConnectionDelegate *)&v17 initWithDomain:"APSConnection"];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.CallHistory.queue.%@.%p", objc_opt_class(), v2];
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = [@"com.apple.icloud-container." stringByAppendingString:@"com.apple.callhistory.sync-helper"];
    v9 = [APSConnection alloc];
    v10 = [v9 initWithEnvironmentName:APSEnvironmentProduction namedDelegatePort:@"com.apple.CallHistorySyncHelper.aps" queue:v2->_queue];
    connection = v2->_connection;
    v2->_connection = v10;

    objc_initWeak(&location, v2);
    v12 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C6BC;
    block[3] = &unk_100051680;
    objc_copyWeak(&v15, &location);
    block[4] = v8;
    dispatch_async(v12, block);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(APSConnection *)self->_connection setDelegate:0];
  [(APSConnection *)self->_connection _setEnabledTopics:0];
  v3.receiver = self;
  v3.super_class = CHPushConnectionDelegate;
  [(CHPushConnectionDelegate *)&v3 dealloc];
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(CHPushConnectionDelegate *)self queue];
  dispatch_assert_queue_V2(v12);

  v13 = [(CHPushConnectionDelegate *)self logHandle];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received token %{public}@ for topic %{public}@ and identifier %{public}@", &v14, 0x20u);
  }
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v5 = a4;
  v6 = [(CHPushConnectionDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CHPushConnectionDelegate *)self logHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received public token %{public}@", &v8, 0xCu);
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v5 = a4;
  v6 = [(CHPushConnectionDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CHPushConnectionDelegate *)self logHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 topic];
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received incoming message for topic %{public}@", &v11, 0xCu);
  }

  v9 = [(CHPushConnectionDelegate *)self logHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100033E90(v5, v9);
  }

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"kCallHistoryFetchChangesNotification" object:0 userInfo:0];
}

@end