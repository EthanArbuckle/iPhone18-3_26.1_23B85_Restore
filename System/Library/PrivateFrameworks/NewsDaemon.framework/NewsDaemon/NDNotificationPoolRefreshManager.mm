@interface NDNotificationPoolRefreshManager
- (NDNotificationPoolRefreshManager)init;
- (NDNotificationPoolRefreshManager)initWithNotificationPool:(id)a3 configManager:(id)a4;
- (void)_cancelSystemTask;
- (void)_handleSystemTask:(id)a3;
- (void)_prepareToHandleSystemTask;
- (void)_setupSystemTask;
- (void)activate;
@end

@implementation NDNotificationPoolRefreshManager

- (NDNotificationPoolRefreshManager)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[NDNotificationPoolRefreshManager init]";
    v8 = 2080;
    v9 = "NDNotificationPoolRefreshManager.m";
    v10 = 1024;
    v11 = 31;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[NDNotificationPoolRefreshManager init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (NDNotificationPoolRefreshManager)initWithNotificationPool:(id)a3 configManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NDNotificationPoolRefreshManager;
  v9 = [(NDNotificationPoolRefreshManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notificationPool, a3);
    objc_storeStrong(&v10->_configManager, a4);
  }

  return v10;
}

- (void)activate
{
  v3 = [(NDNotificationPoolRefreshManager *)self configManager];
  v4 = [v3 possiblyUnfetchedAppConfiguration];
  v5 = [v4 useNotificationsV2];

  if (v5)
  {
    [(NDNotificationPoolRefreshManager *)self _prepareToHandleSystemTask];

    [(NDNotificationPoolRefreshManager *)self _setupSystemTask];
  }

  else
  {
    [(NDNotificationPoolRefreshManager *)self _cancelSystemTask];
  }
}

- (void)_prepareToHandleSystemTask
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  [v3 deregisterTaskWithIdentifier:@"com.apple.newsd.notifications.refresh"];

  objc_initWeak(&location, self);
  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F398;
  v7[3] = &unk_100072320;
  objc_copyWeak(&v8, &location);
  LODWORD(v3) = [v4 registerForTaskWithIdentifier:@"com.apple.newsd.notifications.refresh" usingQueue:0 launchHandler:v7];

  v5 = FCNotificationsLog;
  if (v3)
  {
    if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "successfully registered handler for notification pool refresh task", v6, 2u);
    }
  }

  else if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    sub_100053428(v5);
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_setupSystemTask
{
  v2 = [(NDNotificationPoolRefreshManager *)self configManager];
  v3 = [v2 possiblyUnfetchedAppConfiguration];
  v4 = [v3 notificationPoolAutoRefreshInterval];

  if (v4 <= 300)
  {
    v5 = 300;
  }

  else
  {
    v5 = v4;
  }

  objc_opt_class();
  v6 = +[BGSystemTaskScheduler sharedScheduler];
  v7 = [v6 taskRequestForIdentifier:@"com.apple.newsd.notifications.refresh"];
  v8 = FCDynamicCast();

  if (!v8)
  {
    v10 = FCNotificationsLog;
    if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "will submit notification pool refresh task", buf, 2u);
    }

    v11 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.newsd.notifications.refresh"];
    [v11 setInterval:v5];
    [v11 setMinDurationBetweenInstances:v5 * 0.8];
    [v11 setPriority:1];
    [v11 setPreventsDeviceSleep:1];
    [v11 setShouldWakeDevice:0];
    [v11 setNetworkDownloadSize:2000000];
    [v11 setExpectedDuration:10.0];
    [v11 setRelatedApplications:&off_100074960];
    v12 = +[BGSystemTaskScheduler sharedScheduler];
    v22 = 0;
    v13 = [v12 submitTaskRequest:v11 error:&v22];
    v14 = v22;

    v15 = FCNotificationsLog;
    if (v13)
    {
      if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "successfully submitted notification pool refresh task", buf, 2u);
      }
    }

    else if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      sub_1000534E4(v14, v15);
    }

    goto LABEL_22;
  }

  [v8 interval];
  if (v5 != v9)
  {
    v16 = FCNotificationsLog;
    if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      [v8 interval];
      *buf = 134218240;
      v25 = v18;
      v26 = 2048;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "will update notification pool refresh task interval, old=%lld, new=%lld", buf, 0x16u);
    }

    [v8 setInterval:v5];
    [v8 setMinDurationBetweenInstances:v5 * 0.8];
    v19 = +[BGSystemTaskScheduler sharedScheduler];
    v23 = 0;
    v20 = [v19 updateTaskRequest:v8 error:&v23];
    v11 = v23;

    v21 = FCNotificationsLog;
    if (v20)
    {
      if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "successfully updated notification pool refresh task", buf, 2u);
      }
    }

    else if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      sub_10005346C(v11, v21);
    }

LABEL_22:

    goto LABEL_23;
  }

  sub_10000F7A8();
LABEL_23:
}

- (void)_handleSystemTask:(id)a3
{
  v4 = a3;
  v5 = FCNotificationsLog;
  if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "will handle notification pool refresh task", buf, 2u);
  }

  v6 = [(NDNotificationPoolRefreshManager *)self notificationPool];
  v7 = +[NSDate date];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000F924;
  v9[3] = &unk_100072348;
  v10 = v4;
  v8 = v4;
  [v6 refreshIfOlderThan:v7 completionHandler:v9];
}

- (void)_cancelSystemTask
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  v3 = [v2 taskRequestForIdentifier:@"com.apple.newsd.notifications.refresh"];

  if (v3)
  {
    v4 = FCNotificationsLog;
    if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "will cancel notification pool refresh task", v6, 2u);
    }

    v5 = +[BGSystemTaskScheduler sharedScheduler];
    [v5 cancelTaskRequestWithIdentifier:@"com.apple.newsd.notifications.refresh" error:0];
  }
}

@end