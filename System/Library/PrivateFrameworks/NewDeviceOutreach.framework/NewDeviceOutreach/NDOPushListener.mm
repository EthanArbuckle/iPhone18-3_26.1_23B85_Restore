@interface NDOPushListener
+ (void)configureForEnvironment:(id)environment topic:(id)topic namedDelegatePort:(id)port pushHandler:(id)handler;
- (NDONotificationHandler)notificationHandler;
- (NDOPushListener)initWithConnection:(id)connection notificationHandler:(id)handler;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)connectionDidReconnect:(id)reconnect;
@end

@implementation NDOPushListener

+ (void)configureForEnvironment:(id)environment topic:(id)topic namedDelegatePort:(id)port pushHandler:(id)handler
{
  environmentCopy = environment;
  topicCopy = topic;
  portCopy = port;
  handlerCopy = handler;
  if ([NDOTypeChecking isNotEmptyString:environmentCopy]&& [NDOTypeChecking isNotEmptyString:topicCopy]&& ([NDOTypeChecking isNotEmptyString:portCopy]& 1) != 0)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000B10C;
    v14[3] = &unk_10009A8D8;
    v15 = environmentCopy;
    v16 = portCopy;
    v17 = topicCopy;
    v18 = handlerCopy;
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
      v22 = environmentCopy;
      v23 = 2112;
      v24 = topicCopy;
      v25 = 2112;
      v26 = portCopy;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s one of required parameters is invalid or empty. Cannot instanitiate NDOPushListener. (environment:%@, pushTopic:%@, namedPort%@)", buf, 0x2Au);
    }
  }
}

- (NDOPushListener)initWithConnection:(id)connection notificationHandler:(id)handler
{
  connectionCopy = connection;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (connectionCopy && handlerCopy)
  {
    v13.receiver = self;
    v13.super_class = NDOPushListener;
    v9 = [(NDOPushListener *)&v13 init];
    if (v9)
    {
      [connectionCopy setDelegate:v9];
      [(NDOPushListener *)v9 setApsConnection:connectionCopy];
      [(NDOPushListener *)v9 setNotificationHandler:v8];
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v11 = _NDOLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100072E88(connectionCopy, v8, v11);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[NDOPushListener connection:didReceivePublicToken:]";
    v8 = 2112;
    v9 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s token:%@", &v6, 0x16u);
  }
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  topicCopy = topic;
  identifierCopy = identifier;
  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446722;
    v11 = "[NDOPushListener connection:didReceiveToken:forTopic:identifier:]";
    v12 = 2112;
    v13 = topicCopy;
    v14 = 2112;
    v15 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s topic:%@ identifier:%@", &v10, 0x20u);
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[NDOPushListener connection:didReceiveIncomingMessage:]";
    v8 = 2112;
    v9 = messageCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s message:%@", &v6, 0x16u);
  }
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  topicCopy = topic;
  infoCopy = info;
  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446722;
    v12 = "[NDOPushListener connection:didReceiveMessageForTopic:userInfo:]";
    v13 = 2112;
    v14 = topicCopy;
    v15 = 2112;
    v16 = infoCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s topic:%@, userInfo:%@", &v11, 0x20u);
  }

  notificationHandler = [(NDOPushListener *)self notificationHandler];
  [notificationHandler handleNotification:infoCopy forTopic:topicCopy];
}

- (void)connectionDidReconnect:(id)reconnect
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