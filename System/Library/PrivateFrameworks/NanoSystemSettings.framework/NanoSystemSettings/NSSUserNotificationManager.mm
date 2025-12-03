@interface NSSUserNotificationManager
+ (id)sharedInstance;
- (NSSUserNotificationManager)init;
- (void)postBatteryNotificationForWatch:(id)watch withValue:(id)value;
- (void)postLowPowerModeAutoDisabledNotification:(unint64_t)notification;
- (void)removeLastPostedBatteryNotification;
@end

@implementation NSSUserNotificationManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000141CC;
  block[3] = &unk_100034E60;
  block[4] = self;
  if (qword_10003DD18 != -1)
  {
    dispatch_once(&qword_10003DD18, block);
  }

  v2 = qword_10003DD10;

  return v2;
}

- (NSSUserNotificationManager)init
{
  v7.receiver = self;
  v7.super_class = NSSUserNotificationManager;
  v2 = [(NSSUserNotificationManager *)&v7 init];
  v3 = v2;
  if (v2 && !v2->_notificationCenter)
  {
    v4 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.Bridge"];
    notificationCenter = v3->_notificationCenter;
    v3->_notificationCenter = v4;

    [(UNUserNotificationCenter *)v3->_notificationCenter setWantsNotificationResponsesDelivered];
    [(UNUserNotificationCenter *)v3->_notificationCenter setDelegate:v3];
  }

  return v3;
}

- (void)postBatteryNotificationForWatch:(id)watch withValue:(id)value
{
  watchCopy = watch;
  valueCopy = value;
  v8 = objc_alloc_init(UNMutableNotificationContent);
  [v8 setCategoryIdentifier:@"BatteryCharge"];
  v9 = [NSString localizedUserNotificationStringForKey:@"BATTERY" arguments:0];
  [v8 setHeader:v9];

  [v8 setShouldHideDate:1];
  [v8 setShouldIgnoreDoNotDisturb:1];
  [v8 setShouldSuppressDefaultAction:1];
  [v8 setShouldSuppressScreenLightUp:1];
  v10 = [UNNotificationIcon iconForSystemImageNamed:@"applewatch"];
  [v8 setIcon:v10];

  notificationCenter = self->_notificationCenter;
  v28 = @"BatterNotifictionID";
  v12 = [NSArray arrayWithObjects:&v28 count:1];
  [(UNUserNotificationCenter *)notificationCenter removeDeliveredNotificationsWithIdentifiers:v12];

  v13 = NSSLogForType();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    unsignedLongValue = [valueCopy unsignedLongValue];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Posting Battery Notification for level: %lu ", buf, 0xCu);
  }

  if (valueCopy)
  {
    stringValue = [valueCopy stringValue];
    v15 = [NSString stringWithFormat:@"%@%%", stringValue];
  }

  else
  {
    v15 = [NSString stringWithFormat:@"%@%%", @"100"];
  }

  v16 = [NSNumber numberWithInt:100];
  v17 = [valueCopy isEqualToNumber:v16];

  if (v17)
  {
    v25 = watchCopy;
    v18 = [NSArray arrayWithObjects:&v25 count:1];
    v19 = @"BATTERY_LEVEL_BODY_FULL_%@";
  }

  else
  {
    v24[0] = watchCopy;
    v24[1] = v15;
    v18 = [NSArray arrayWithObjects:v24 count:2];
    v19 = @"BATTERY_LEVEL_BODY_%@_%@";
  }

  v20 = [NSString localizedUserNotificationStringForKey:v19 arguments:v18];
  [v8 setBody:v20];

  [v8 setCategoryIdentifier:@"NSSUserNotifications"];
  v21 = [UNNotificationCategory categoryWithIdentifier:@"DefaultNSSCategory" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:0];
  [v8 setCategoryIdentifier:@"DefaultNSSCategory"];
  v22 = [NSSet setWithObject:v21];
  [(UNUserNotificationCenter *)self->_notificationCenter setNotificationCategories:v22];

  v23 = [UNNotificationRequest requestWithIdentifier:@"BatterNotifictionID" content:v8 trigger:0];
  [(UNUserNotificationCenter *)self->_notificationCenter addNotificationRequest:v23 withCompletionHandler:&stru_100034FD8];
}

- (void)removeLastPostedBatteryNotification
{
  v3 = NSSLogForType();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "[NSSUserNotificationManager removeLastPostedBatteryNotification]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  notificationCenter = self->_notificationCenter;
  v6 = @"BatterNotifictionID";
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [(UNUserNotificationCenter *)notificationCenter removeDeliveredNotificationsWithIdentifiers:v5];
}

- (void)postLowPowerModeAutoDisabledNotification:(unint64_t)notification
{
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Posting auto disabled LPM notification.", v15, 2u);
  }

  v6 = objc_alloc_init(UNMutableNotificationContent);
  [v6 setCategoryIdentifier:@"LowPowerModeAutoDisabledNotificationID"];
  v7 = [NSString localizedUserNotificationStringForKey:@"LOW_POWER_AUTO_DISABLED_MODE_NOTIFICATION_HEADER" arguments:0];
  [v6 setTitle:v7];

  [v6 setShouldHideDate:1];
  [v6 setShouldIgnoreDoNotDisturb:1];
  [v6 setShouldSuppressDefaultAction:1];
  [v6 setShouldSuppressScreenLightUp:1];
  v8 = [UNNotificationIcon iconForSystemImageNamed:@"applewatch"];
  [v6 setIcon:v8];

  notificationCenter = self->_notificationCenter;
  v16 = @"LowPowerModeAutoDisabledNotificationID";
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  [(UNUserNotificationCenter *)notificationCenter removeDeliveredNotificationsWithIdentifiers:v10];

  if (notification <= 3)
  {
    v11 = [NSString localizedUserNotificationStringForKey:off_100035018[notification] arguments:0];
    [v6 setBody:v11];
  }

  [v6 setCategoryIdentifier:@"NSSUserNotifications"];
  v12 = [UNNotificationCategory categoryWithIdentifier:@"DefaultNSSCategory" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:0];
  [v6 setCategoryIdentifier:@"DefaultNSSCategory"];
  v13 = [NSSet setWithObject:v12];
  [(UNUserNotificationCenter *)self->_notificationCenter setNotificationCategories:v13];

  v14 = [UNNotificationRequest requestWithIdentifier:@"LowPowerModeAutoDisabledNotificationID" content:v6 trigger:0];
  [(UNUserNotificationCenter *)self->_notificationCenter addNotificationRequest:v14 withCompletionHandler:&stru_100034FF8];
}

@end