@interface MTUserNotificationAppDelegate
- (MTUserNotificationAppDelegate)init;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation MTUserNotificationAppDelegate

- (MTUserNotificationAppDelegate)init
{
  v6.receiver = self;
  v6.super_class = MTUserNotificationAppDelegate;
  v2 = [(MTUserNotificationAppDelegate *)&v6 init];
  if (v2)
  {
    currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = currentNotificationCenter;

    [(UNUserNotificationCenter *)v2->_notificationCenter setDelegate:v2];
  }

  return v2;
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  notificationCopy = notification;
  v9 = MTLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ received willPresentNotification", &v16, 0xCu);
  }

  request = [notificationCopy request];

  content = [request content];
  categoryIdentifier = [content categoryIdentifier];

  if ([categoryIdentifier isEqualToString:@"AlarmSnoozeCountdown"])
  {
    if (handlerCopy)
    {
      v13 = MTLogForCategory(3);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        selfCopy3 = self;
        v18 = 2114;
        v19 = categoryIdentifier;
        _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ completing with UNNotificationPresentationOptionAlert for %{public}@", &v16, 0x16u);
      }

      v14 = 4;
LABEL_12:

      handlerCopy[2](handlerCopy, v14);
    }
  }

  else if (handlerCopy)
  {
    v13 = MTLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      selfCopy3 = self;
      v18 = 2114;
      v19 = categoryIdentifier;
      _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ completing with UNNotificationPresentationOptionAlert|UNNotificationPresentationOptionSound for %{public}@", &v16, 0x16u);
    }

    v14 = 6;
    goto LABEL_12;
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end