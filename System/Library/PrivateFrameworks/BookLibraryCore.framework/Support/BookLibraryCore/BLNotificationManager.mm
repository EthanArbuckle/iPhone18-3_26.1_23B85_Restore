@interface BLNotificationManager
+ (BLNotificationManager)sharedInstance;
- (BLNotificationManager)init;
- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation BLNotificationManager

- (BLNotificationManager)init
{
  v10.receiver = self;
  v10.super_class = BLNotificationManager;
  v2 = [(BLNotificationManager *)&v10 init];
  if (v2)
  {
    v3 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.iBooks"];
    center = v2->_center;
    v2->_center = v3;

    v5 = [UNNotificationCategory categoryWithIdentifier:@"books-notification-extension" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
    v6 = v2->_center;
    v11 = v5;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    v8 = [NSSet setWithArray:v7];
    [(UNUserNotificationCenter *)v6 setNotificationCategories:v8];

    [(UNUserNotificationCenter *)v2->_center setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_center setPrivateDelegate:v2];
    [(UNUserNotificationCenter *)v2->_center setWantsNotificationResponsesDelivered];
  }

  return v2;
}

+ (BLNotificationManager)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068248;
  block[3] = &unk_10011D1C8;
  block[4] = self;
  if (qword_10013EBA8 != -1)
  {
    dispatch_once(&qword_10013EBA8, block);
  }

  v2 = qword_10013EBA0;

  return v2;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  if ([AMSUserNotification shouldHandleNotificationResponse:responseCopy])
  {
    v8 = +[BUBag defaultBag];
    v9 = [AMSUserNotification handleNotificationResponse:responseCopy bag:v8];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100068398;
    v11[3] = &unk_10011D1F0;
    v12 = handlerCopy;
    [v9 addFinishBlock:v11];
  }

  else
  {
    v10 = objc_retainBlock(handlerCopy);
    v9 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }
}

- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings
{
  centerCopy = center;
  settingsCopy = settings;
  v6 = +[BUBag defaultBag];
  v7 = [AMSUserNotification notificationCenter:centerCopy didChangeSettings:settingsCopy bag:v6];
}

@end