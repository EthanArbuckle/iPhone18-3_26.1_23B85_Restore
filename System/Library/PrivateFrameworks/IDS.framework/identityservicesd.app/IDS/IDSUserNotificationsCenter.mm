@interface IDSUserNotificationsCenter
+ (IDSUserNotificationsCenter)sharedInstance;
- (IDSUserNotificationsCenter)init;
- (void)postNotificationWithTitle:(id)a3 body:(id)a4 iconIdentifier:(id)a5 shouldShowSubordinateIcon:(BOOL)a6 actionURL:(id)a7;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation IDSUserNotificationsCenter

+ (IDSUserNotificationsCenter)sharedInstance
{
  if (qword_100CBD4A8 != -1)
  {
    sub_100921994();
  }

  v3 = qword_100CBD4B0;

  return v3;
}

- (IDSUserNotificationsCenter)init
{
  v3 = IMWeakLinkClass();
  if (v3)
  {
    v4 = v3;
    v12.receiver = self;
    v12.super_class = IDSUserNotificationsCenter;
    v5 = [(IDSUserNotificationsCenter *)&v12 init];
    if (v5)
    {
      v6 = [v4 alloc];
      v7 = [v6 initWithBundleIdentifier:kIDSDaemonFirewallNotificationBundleIdentifier];
      notificationCenter = v5->_notificationCenter;
      v5->_notificationCenter = v7;

      [(UNUserNotificationCenter *)v5->_notificationCenter setDelegate:v5];
      [(UNUserNotificationCenter *)v5->_notificationCenter setWantsNotificationResponsesDelivered];
    }

    self = v5;
    v9 = self;
  }

  else
  {
    v10 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1009219A8(v10);
    }

    v9 = 0;
  }

  return v9;
}

- (void)postNotificationWithTitle:(id)a3 body:(id)a4 iconIdentifier:(id)a5 shouldShowSubordinateIcon:(BOOL)a6 actionURL:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (qword_100CBD4D0 != -1)
  {
    sub_1009219EC();
  }

  if (qword_100CBD4B8 && qword_100CBD4C0 && qword_100CBD4C8 && ([(IDSUserNotificationsCenter *)self notificationCenter], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    if ([v14 hasPrefix:@"com.apple."])
    {
      v17 = [qword_100CBD4C8 iconForApplicationIdentifier:v14];
    }

    else
    {
      v30 = v8;
      v29 = [NSString stringWithFormat:v14, @"@2x.png"];
      v18 = [NSString stringWithFormat:@"%@/%@", @"/System/Library/UserNotifications/Bundles/com.apple.identityservicesd.firewall.bundle", v29];
      v19 = +[NSFileManager defaultManager];
      v20 = [v19 fileExistsAtPath:v18];

      v21 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = @"NO";
        if (v20)
        {
          v22 = @"YES";
        }

        *buf = 138412546;
        v32 = v18;
        v33 = 2112;
        v34 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Loading image from %@, Does exist %@", buf, 0x16u);
      }

      if (v20)
      {
        [qword_100CBD4C8 iconAtPath:v18];
      }

      else
      {
        [qword_100CBD4C8 iconForApplicationIdentifier:@"com.apple.Preferences"];
      }
      v17 = ;

      v8 = v30;
    }

    v23 = objc_alloc_init(qword_100CBD4C0);
    [v23 setTitle:v12];
    [v23 setBody:v13];
    [v23 setIcon:v17];
    [v23 setShouldShowSubordinateIcon:v8];
    if (v15)
    {
      [v23 setDefaultActionURL:v15];
    }

    [v23 setHasDefaultAction:v15 != 0];
    v24 = qword_100CBD4B8;
    v25 = +[NSUUID UUID];
    v26 = [v25 UUIDString];
    v27 = [v24 requestWithIdentifier:v26 content:v23 trigger:0];

    v28 = [(IDSUserNotificationsCenter *)self notificationCenter];
    [v28 addNotificationRequest:v27 withCompletionHandler:&stru_100BDD860];
  }

  else
  {
    v17 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_100921A00(v12, v17);
    }
  }
}

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will present ids notification %@", &v9, 0xCu);
  }

  v7[2](v7, 16);
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Did receive ids notification response %@", &v9, 0xCu);
  }

  v7[2](v7);
}

@end