@interface MTUserNotificationAppDelegate
- (MTUserNotificationAppDelegate)init;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation MTUserNotificationAppDelegate

- (MTUserNotificationAppDelegate)init
{
  v6.receiver = self;
  v6.super_class = MTUserNotificationAppDelegate;
  v2 = [(MTUserNotificationAppDelegate *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6983308] currentNotificationCenter];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v3;

    [(UNUserNotificationCenter *)v2->_notificationCenter setDelegate:v2];
  }

  return v2;
}

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = MTLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = self;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ received willPresentNotification", &v16, 0xCu);
  }

  v10 = [v8 request];

  v11 = [v10 content];
  v12 = [v11 categoryIdentifier];

  if ([v12 isEqualToString:@"AlarmSnoozeCountdown"])
  {
    if (v7)
    {
      v13 = MTLogForCategory(3);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        v17 = self;
        v18 = 2114;
        v19 = v12;
        _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ completing with UNNotificationPresentationOptionAlert for %{public}@", &v16, 0x16u);
      }

      v14 = 4;
LABEL_12:

      v7[2](v7, v14);
    }
  }

  else if (v7)
  {
    v13 = MTLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      v17 = self;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ completing with UNNotificationPresentationOptionAlert|UNNotificationPresentationOptionSound for %{public}@", &v16, 0x16u);
    }

    v14 = 6;
    goto LABEL_12;
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end