@interface NotificationController
+ (id)sharedController;
- (id)xpcConnectionForClientWithMachServiceName:(id)name;
- (void)_allPendingNotificationsSortedByDate:(id)date;
- (void)allPendingNotificationsWithCompletion:(id)completion;
- (void)pendingNotificationsForClient:(id)client withCompletion:(id)completion;
- (void)provider:(id)provider didActivateNotification:(id)notification;
- (void)provider:(id)provider didDismissNotification:(id)notification;
- (void)removeAllNotificationsFromClient:(id)client;
- (void)removeNotificationWithIdentifier:(id)identifier;
- (void)start;
@end

@implementation NotificationController

+ (id)sharedController
{
  if (qword_10000D8B0 != -1)
  {
    sub_1000035F0();
  }

  v3 = qword_10000D8A8;

  return v3;
}

- (void)start
{
  v3 = objc_alloc_init(FAUserNotificationProvider);
  notificationProvider = self->_notificationProvider;
  self->_notificationProvider = v3;

  v5 = self->_notificationProvider;

  [(FAUserNotificationProvider *)v5 setDelegate:self];
}

- (void)removeNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing notification with identifier: %@", &v6, 0xCu);
  }

  [(FAUserNotificationProvider *)self->_notificationProvider tearDownNotificationWithIdentifier:identifierCopy];
}

- (void)removeAllNotificationsFromClient:(id)client
{
  clientCopy = client;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = clientCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing all notifications for client: %@", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000018D8;
  v6[3] = &unk_100008338;
  v6[4] = self;
  [(NotificationController *)self pendingNotificationsForClient:clientCopy withCompletion:v6];
}

- (void)pendingNotificationsForClient:(id)client withCompletion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = clientCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetch pending notifications for client: %@", buf, 0xCu);
  }

  notificationProvider = self->_notificationProvider;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100001AE8;
  v12[3] = &unk_100008360;
  v13 = clientCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = clientCopy;
  [(FAUserNotificationProvider *)notificationProvider deliveredNotifications:v12];
}

- (void)allPendingNotificationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching all notifications", v6, 2u);
  }

  [(NotificationController *)self _allPendingNotificationsSortedByDate:completionCopy];
}

- (void)_allPendingNotificationsSortedByDate:(id)date
{
  dateCopy = date;
  notificationProvider = self->_notificationProvider;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001D2C;
  v7[3] = &unk_1000082A0;
  v8 = dateCopy;
  v6 = dateCopy;
  [(FAUserNotificationProvider *)notificationProvider deliveredNotifications:v7];
}

- (void)provider:(id)provider didActivateNotification:(id)notification
{
  providerCopy = provider;
  notificationCopy = notification;
  v8 = notificationCopy;
  if (!notificationCopy)
  {
    identifier = _FALogSystem();
    if (!os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    uuid = [0 uuid];
    v19 = 138412290;
    v20 = uuid;
    _os_log_impl(&_mh_execute_header, identifier, OS_LOG_TYPE_DEFAULT, "NotificationController: Did not find pending notification to activate with UUID %@", &v19, 0xCu);
LABEL_10:

    goto LABEL_11;
  }

  activateActionURL = [notificationCopy activateActionURL];

  if (activateActionURL)
  {
    v10 = +[LSApplicationWorkspace defaultWorkspace];
    activateActionURL2 = [v8 activateActionURL];
    v21 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
    v22 = &__kCFBooleanTrue;
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v10 openSensitiveURL:activateActionURL2 withOptions:v12];

    identifier = [v8 identifier];
    [(NotificationController *)self removeNotificationWithIdentifier:identifier];
    goto LABEL_11;
  }

  delegateMachServiceName = [v8 delegateMachServiceName];

  identifier = _FALogSystem();
  v16 = os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT);
  if (delegateMachServiceName)
  {
    if (v16)
    {
      delegateMachServiceName2 = [v8 delegateMachServiceName];
      v19 = 138412290;
      v20 = delegateMachServiceName2;
      _os_log_impl(&_mh_execute_header, identifier, OS_LOG_TYPE_DEFAULT, "Attempting to wake up delegate at %@", &v19, 0xCu);
    }

    delegateMachServiceName3 = [v8 delegateMachServiceName];
    identifier = [(NotificationController *)self xpcConnectionForClientWithMachServiceName:delegateMachServiceName3];

    uuid = [identifier remoteObjectProxyWithErrorHandler:&stru_1000083A0];
    [uuid didActivateNotification:v8];
    goto LABEL_10;
  }

  if (v16)
  {
    v19 = 138412290;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, identifier, OS_LOG_TYPE_DEFAULT, "NotificationController: No action was configured for activated notification %@", &v19, 0xCu);
  }

LABEL_11:
}

- (void)provider:(id)provider didDismissNotification:(id)notification
{
  notificationCopy = notification;
  dismissActionlURL = [notificationCopy dismissActionlURL];

  if (dismissActionlURL)
  {
    v7 = +[LSApplicationWorkspace defaultWorkspace];
    dismissActionlURL2 = [notificationCopy dismissActionlURL];
    [v7 openURL:dismissActionlURL2];
LABEL_7:

    goto LABEL_8;
  }

  delegateMachServiceName = [notificationCopy delegateMachServiceName];

  if (delegateMachServiceName)
  {
    delegateMachServiceName2 = [notificationCopy delegateMachServiceName];
    v7 = [(NotificationController *)self xpcConnectionForClientWithMachServiceName:delegateMachServiceName2];

    dismissActionlURL2 = [v7 remoteObjectProxyWithErrorHandler:&stru_1000083C0];
    [dismissActionlURL2 didDismissNotification:notificationCopy];
    goto LABEL_7;
  }

  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    dismissActionlURL2 = [notificationCopy uuid];
    v11 = 138412290;
    v12 = dismissActionlURL2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NotificationController: Did not find pending notification to dismiss with UUID %@", &v11, 0xCu);
    goto LABEL_7;
  }

LABEL_8:
}

- (id)xpcConnectionForClientWithMachServiceName:(id)name
{
  nameCopy = name;
  v4 = [[NSXPCConnection alloc] initWithMachServiceName:nameCopy options:4096];

  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FAFamilyNotifierRemoteObjectProtocol];
  [v4 setRemoteObjectInterface:v5];
  [v4 resume];

  return v4;
}

@end