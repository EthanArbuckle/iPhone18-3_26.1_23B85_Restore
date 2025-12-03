@interface NotifierInterface
- (NotifierInterface)initWithXPCConnection:(id)connection;
- (void)deliverNotificaton:(id)notificaton;
- (void)pendingNotificationsWithIdentifier:(id)identifier replyBlock:(id)block;
- (void)removeAllNotifications;
- (void)removeNotificationWithIdentifier:(id)identifier;
@end

@implementation NotifierInterface

- (NotifierInterface)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = NotifierInterface;
  v6 = [(NotifierInterface *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conn, connection);
  }

  return v7;
}

- (void)deliverNotificaton:(id)notificaton
{
  notificatonCopy = notificaton;
  v5 = +[NSString uniqueIdentifier];
  [notificatonCopy setUuid:v5];

  clientIdentifier = [(NotifierInterface *)self clientIdentifier];
  [notificatonCopy setClientIdentifier:clientIdentifier];

  delegateMachServiceName = [(NotifierInterface *)self delegateMachServiceName];
  [notificatonCopy setDelegateMachServiceName:delegateMachServiceName];

  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = notificatonCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Delivering %@", &v10, 0xCu);
  }

  v9 = +[NotificationController sharedController];
  [v9 deliverNotification:notificatonCopy];
}

- (void)removeNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing %@", &v6, 0xCu);
  }

  v5 = +[NotificationController sharedController];
  [v5 removeNotificationWithIdentifier:identifierCopy];
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
  clientIdentifier = [(NotifierInterface *)self clientIdentifier];
  [v4 removeAllNotificationsFromClient:clientIdentifier];
}

- (void)pendingNotificationsWithIdentifier:(id)identifier replyBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Returning pending notifications for identifier %@", buf, 0xCu);
  }

  v9 = dispatch_get_global_queue(2, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000147C;
  v11[3] = &unk_1000082C8;
  v11[4] = self;
  v12 = blockCopy;
  v10 = blockCopy;
  dispatch_async(v9, v11);
}

@end