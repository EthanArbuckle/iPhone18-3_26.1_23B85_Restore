@interface ClockManager
+ (void)saveAndNotifyForUserPreferences:(BOOL)preferences localNotifications:(BOOL)notifications;
@end

@implementation ClockManager

+ (void)saveAndNotifyForUserPreferences:(BOOL)preferences localNotifications:(BOOL)notifications
{
  if (preferences)
  {
    if (notifications)
    {
      v4 = @"com.apple.mobiletimer.user-preferences-and-local-notifications-changed";
    }

    else
    {
      v4 = @"com.apple.mobiletimer.user-preferences-changed";
    }

    CFPreferencesAppSynchronize(@"com.apple.mobiletimer");
  }

  else
  {
    if (!notifications)
    {
      return;
    }

    v4 = @"com.apple.mobiletimer.local-notifications-changed";
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v4, 0, 0, 0);
}

@end