@interface ClockManager
+ (void)saveAndNotifyForUserPreferences:(BOOL)a3 localNotifications:(BOOL)a4;
@end

@implementation ClockManager

+ (void)saveAndNotifyForUserPreferences:(BOOL)a3 localNotifications:(BOOL)a4
{
  if (a3)
  {
    if (a4)
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
    if (!a4)
    {
      return;
    }

    v4 = @"com.apple.mobiletimer.local-notifications-changed";
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v4, 0, 0, 0);
}

@end