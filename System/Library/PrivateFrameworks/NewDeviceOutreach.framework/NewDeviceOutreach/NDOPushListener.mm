@interface NDOPushListener
+ (void)configureForEnvironment:(id)a3 topic:(id)a4 namedDelegatePort:(id)a5 pushHandler:(id)a6;
- (NDONotificationHandler)notificationHandler;
- (NDOPushListener)initWithConnection:(id)a3 notificationHandler:(id)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)connectionDidReconnect:(id)a3;
@end

@implementation NDOPushListener

+ (void)configureForEnvironment:(id)a3 topic:(id)a4 namedDelegatePort:(id)a5 pushHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([NDOTypeChecking isNotEmptyString:v9]&& [NDOTypeChecking isNotEmptyString:v10]&& ([NDOTypeChecking isNotEmptyString:v11]& 1) != 0)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000B10C;
    v14[3] = &unk_10009A8D8;
    v15 = v9;
    v16 = v11;
    v17 = v10;
    v18 = v12;
    if (qword_1000A8308 != -1)
    {
      dispatch_once(&qword_1000A8308, v14);
    }

    v13 = v15;
  }

  else
  {
    v13 = _NDOLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v20 = "+[NDOPushListener configureForEnvironment:topic:namedDelegatePort:pushHandler:]";
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s one of required parameters is invalid or empty. Cannot instanitiate NDOPushListener. (environment:%@, pushTopic:%@, namedPort%@)", buf, 0x2Au);
    }
  }
}

- (NDOPushListener)initWithConnection:(id)a3 notificationHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v13.receiver = self;
    v13.super_class = NDOPushListener;
    v9 = [(NDOPushListener *)&v13 init];
    if (v9)
    {
      [v6 setDelegate:v9];
      [(NDOPushListener *)v9 setApsConnection:v6];
      [(NDOPushListener *)v9 setNotificationHandler:v8];
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v11 = _NDOLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100072E88(v6, v8, v11);
    }

    v10 = 0;
  }

  return v10;
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = a4;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[NDOPushListener connection:didReceivePublicToken:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s token:%@", &v6, 0x16u);
  }
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v7 = a5;
  v8 = a6;
  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446722;
    v11 = "[NDOPushListener connection:didReceiveToken:forTopic:identifier:]";
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s topic:%@ identifier:%@", &v10, 0x20u);
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v4 = a4;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[NDOPushListener connection:didReceiveIncomingMessage:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s message:%@", &v6, 0x16u);
  }
}

- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446722;
    v12 = "[NDOPushListener connection:didReceiveMessageForTopic:userInfo:]";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s topic:%@, userInfo:%@", &v11, 0x20u);
  }

  v10 = [(NDOPushListener *)self notificationHandler];
  [v10 handleNotification:v8 forTopic:v7];
}

- (void)connectionDidReconnect:(id)a3
{
  v3 = _NDOLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[NDOPushListener connectionDidReconnect:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v4, 0xCu);
  }
}

- (NDONotificationHandler)notificationHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationHandler);

  return WeakRetained;
}

@end