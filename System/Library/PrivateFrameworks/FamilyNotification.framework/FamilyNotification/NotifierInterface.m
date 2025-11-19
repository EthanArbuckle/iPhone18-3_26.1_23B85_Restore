@interface NotifierInterface
- (NotifierInterface)initWithXPCConnection:(id)a3;
- (void)deliverNotificaton:(id)a3;
- (void)pendingNotificationsWithIdentifier:(id)a3 replyBlock:(id)a4;
- (void)removeAllNotifications;
- (void)removeNotificationWithIdentifier:(id)a3;
@end

@implementation NotifierInterface

- (NotifierInterface)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NotifierInterface;
  v6 = [(NotifierInterface *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conn, a3);
  }

  return v7;
}

- (void)deliverNotificaton:(id)a3
{
  v4 = a3;
  v5 = +[NSString uniqueIdentifier];
  [v4 setUuid:v5];

  v6 = [(NotifierInterface *)self clientIdentifier];
  [v4 setClientIdentifier:v6];

  v7 = [(NotifierInterface *)self delegateMachServiceName];
  [v4 setDelegateMachServiceName:v7];

  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Delivering %@", &v10, 0xCu);
  }

  v9 = +[NotificationController sharedController];
  [v9 deliverNotification:v4];
}

- (void)removeNotificationWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing %@", &v6, 0xCu);
  }

  v5 = +[NotificationController sharedController];
  [v5 removeNotificationWithIdentifier:v3];
}

- (void)removeAllNotifications
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing all notifications", v6, 2u);
  }

  v4 = +[NotificationController sharedController];
  v5 = [(NotifierInterface *)self clientIdentifier];
  [v4 removeAllNotificationsFromClient:v5];
}

- (void)pendingNotificationsWithIdentifier:(id)a3 replyBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Returning pending notifications for identifier %@", buf, 0xCu);
  }

  v9 = dispatch_get_global_queue(2, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000147C;
  v11[3] = &unk_1000082C8;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  dispatch_async(v9, v11);
}

@end