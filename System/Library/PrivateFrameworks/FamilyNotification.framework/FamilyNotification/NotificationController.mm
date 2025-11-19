@interface NotificationController
+ (id)sharedController;
- (id)xpcConnectionForClientWithMachServiceName:(id)a3;
- (void)_allPendingNotificationsSortedByDate:(id)a3;
- (void)allPendingNotificationsWithCompletion:(id)a3;
- (void)pendingNotificationsForClient:(id)a3 withCompletion:(id)a4;
- (void)provider:(id)a3 didActivateNotification:(id)a4;
- (void)provider:(id)a3 didDismissNotification:(id)a4;
- (void)removeAllNotificationsFromClient:(id)a3;
- (void)removeNotificationWithIdentifier:(id)a3;
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

- (void)removeNotificationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing notification with identifier: %@", &v6, 0xCu);
  }

  [(FAUserNotificationProvider *)self->_notificationProvider tearDownNotificationWithIdentifier:v4];
}

- (void)removeAllNotificationsFromClient:(id)a3
{
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing all notifications for client: %@", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000018D8;
  v6[3] = &unk_100008338;
  v6[4] = self;
  [(NotificationController *)self pendingNotificationsForClient:v4 withCompletion:v6];
}

- (void)pendingNotificationsForClient:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetch pending notifications for client: %@", buf, 0xCu);
  }

  notificationProvider = self->_notificationProvider;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100001AE8;
  v12[3] = &unk_100008360;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [(FAUserNotificationProvider *)notificationProvider deliveredNotifications:v12];
}

- (void)allPendingNotificationsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching all notifications", v6, 2u);
  }

  [(NotificationController *)self _allPendingNotificationsSortedByDate:v4];
}

- (void)_allPendingNotificationsSortedByDate:(id)a3
{
  v4 = a3;
  notificationProvider = self->_notificationProvider;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001D2C;
  v7[3] = &unk_1000082A0;
  v8 = v4;
  v6 = v4;
  [(FAUserNotificationProvider *)notificationProvider deliveredNotifications:v7];
}

- (void)provider:(id)a3 didActivateNotification:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v13 = _FALogSystem();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v14 = [0 uuid];
    v19 = 138412290;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NotificationController: Did not find pending notification to activate with UUID %@", &v19, 0xCu);
LABEL_10:

    goto LABEL_11;
  }

  v9 = [v7 activateActionURL];

  if (v9)
  {
    v10 = +[LSApplicationWorkspace defaultWorkspace];
    v11 = [v8 activateActionURL];
    v21 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
    v22 = &__kCFBooleanTrue;
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v10 openSensitiveURL:v11 withOptions:v12];

    v13 = [v8 identifier];
    [(NotificationController *)self removeNotificationWithIdentifier:v13];
    goto LABEL_11;
  }

  v15 = [v8 delegateMachServiceName];

  v13 = _FALogSystem();
  v16 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v16)
    {
      v17 = [v8 delegateMachServiceName];
      v19 = 138412290;
      v20 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to wake up delegate at %@", &v19, 0xCu);
    }

    v18 = [v8 delegateMachServiceName];
    v13 = [(NotificationController *)self xpcConnectionForClientWithMachServiceName:v18];

    v14 = [v13 remoteObjectProxyWithErrorHandler:&stru_1000083A0];
    [v14 didActivateNotification:v8];
    goto LABEL_10;
  }

  if (v16)
  {
    v19 = 138412290;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NotificationController: No action was configured for activated notification %@", &v19, 0xCu);
  }

LABEL_11:
}

- (void)provider:(id)a3 didDismissNotification:(id)a4
{
  v5 = a4;
  v6 = [v5 dismissActionlURL];

  if (v6)
  {
    v7 = +[LSApplicationWorkspace defaultWorkspace];
    v8 = [v5 dismissActionlURL];
    [v7 openURL:v8];
LABEL_7:

    goto LABEL_8;
  }

  v9 = [v5 delegateMachServiceName];

  if (v9)
  {
    v10 = [v5 delegateMachServiceName];
    v7 = [(NotificationController *)self xpcConnectionForClientWithMachServiceName:v10];

    v8 = [v7 remoteObjectProxyWithErrorHandler:&stru_1000083C0];
    [v8 didDismissNotification:v5];
    goto LABEL_7;
  }

  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 uuid];
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NotificationController: Did not find pending notification to dismiss with UUID %@", &v11, 0xCu);
    goto LABEL_7;
  }

LABEL_8:
}

- (id)xpcConnectionForClientWithMachServiceName:(id)a3
{
  v3 = a3;
  v4 = [[NSXPCConnection alloc] initWithMachServiceName:v3 options:4096];

  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FAFamilyNotifierRemoteObjectProtocol];
  [v4 setRemoteObjectInterface:v5];
  [v4 resume];

  return v4;
}

@end