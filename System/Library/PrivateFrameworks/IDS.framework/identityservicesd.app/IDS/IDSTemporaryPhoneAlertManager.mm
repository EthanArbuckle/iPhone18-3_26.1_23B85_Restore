@interface IDSTemporaryPhoneAlertManager
+ (id)_controller;
+ (id)serviceString;
+ (void)attemptPresentationOfExpirationAlertForUser:(id)user;
+ (void)attemptPresentationOfNearExpirationAlertForUser:(id)user;
+ (void)clearFollowups;
+ (void)presentSuccessAlertForUser:(id)user;
@end

@implementation IDSTemporaryPhoneAlertManager

+ (id)_controller
{
  v2 = [objc_alloc(IMWeakLinkClass()) initWithClientIdentifier:@"com.apple.identityservicesd"];

  return v2;
}

+ (void)presentSuccessAlertForUser:(id)user
{
  userCopy = user;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = userCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Presenting Home Number success alert for user %@", buf, 0xCu);
  }

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = IMLocalizedStringFromTableInBundle();
  v8 = IMLocalizedStringFromTableInBundle();
  serviceString = [self serviceString];
  v10 = [NSString stringWithFormat:v7, serviceString];
  phoneNumber = [userCopy phoneNumber];
  v12 = IMFormattedDisplayStringForID();
  v13 = [NSString stringWithFormat:v8, v12, serviceString];

  _notificationsCenter = [self _notificationsCenter];
  v15 = [NSURL URLWithString:@"prefs:root=MESSAGES&path=MADRID_ACCOUNTS_BUTTON"];
  [_notificationsCenter postNotificationWithTitle:v10 body:v13 iconIdentifier:@"com.apple.Preferences" shouldShowSubordinateIcon:0 actionURL:v15];
}

+ (void)attemptPresentationOfNearExpirationAlertForUser:(id)user
{
  userCopy = user;
  finishedRegistration = [userCopy finishedRegistration];
  v6 = +[IMRGLog registration];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (finishedRegistration)
  {
    if (v7)
    {
      *buf = 138412290;
      v18 = userCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Presenting Home Number near expiration alert for user %@", buf, 0xCu);
    }

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = IMLocalizedStringFromTableInBundle();
    v9 = IMLocalizedStringFromTableInBundle();
    serviceString = [self serviceString];
    v11 = [NSString stringWithFormat:v8, serviceString];
    phoneNumber = [userCopy phoneNumber];
    v13 = IMFormattedDisplayStringForID();
    v14 = [NSString stringWithFormat:v9, v13, serviceString];

    _notificationsCenter = [self _notificationsCenter];
    v16 = [NSURL URLWithString:@"prefs:root=MESSAGES&path=MADRID_ACCOUNTS_BUTTON"];
    [_notificationsCenter postNotificationWithTitle:v11 body:v14 iconIdentifier:@"com.apple.Preferences" shouldShowSubordinateIcon:0 actionURL:v16];
  }

  else if (v7)
  {
    *buf = 138412290;
    v18 = userCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not presenting Home Number near expiration alert for user %@", buf, 0xCu);
  }
}

+ (void)attemptPresentationOfExpirationAlertForUser:(id)user
{
  userCopy = user;
  finishedRegistration = [userCopy finishedRegistration];
  v6 = +[IMRGLog registration];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (finishedRegistration)
  {
    if (v7)
    {
      *buf = 138412290;
      v18 = userCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Presenting Home Number expiration alert for user %@", buf, 0xCu);
    }

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = IMLocalizedStringFromTableInBundle();
    v9 = IMLocalizedStringFromTableInBundle();
    serviceString = [self serviceString];
    v11 = [NSString stringWithFormat:v8, serviceString];
    phoneNumber = [userCopy phoneNumber];
    v13 = IMFormattedDisplayStringForID();
    v14 = [NSString stringWithFormat:v9, v13, serviceString];

    _notificationsCenter = [self _notificationsCenter];
    v16 = [NSURL URLWithString:@"prefs:root=MESSAGES&path=MADRID_ACCOUNTS_BUTTON"];
    [_notificationsCenter postNotificationWithTitle:v11 body:v14 iconIdentifier:@"com.apple.Preferences" shouldShowSubordinateIcon:0 actionURL:v16];
  }

  else if (v7)
  {
    *buf = 138412290;
    v18 = userCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not presenting Home Number expiration alert for user %@", buf, 0xCu);
  }
}

+ (void)clearFollowups
{
  v3 = +[IMUserDefaults sharedDefaults];
  v4 = [v3 appValueForKey:@"HomeNumberFollowUpMigration"];

  if (!v4)
  {
    _controller = [self _controller];
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Purging success and near expiration followups", v9, 2u);
    }

    v10[0] = @"com.apple.identityservicesd.HomeNumberSuccess";
    v10[1] = @"com.apple.identityservicesd.HomeNumberNearExpiration";
    v10[2] = @"com.apple.identityservicesd.HomeNumberExpiration";
    v7 = [NSArray arrayWithObjects:v10 count:3];
    [_controller clearPendingFollowUpItemsWithUniqueIdentifiers:v7 error:0];
    v8 = +[IMUserDefaults sharedDefaults];
    [v8 setAppValue:&__kCFBooleanTrue forKey:@"HomeNumberFollowUpMigration"];
  }
}

+ (id)serviceString
{
  v2 = +[IDSDServiceController sharedInstance];
  v3 = [v2 serviceWithPushTopic:@"com.apple.madrid"];

  v4 = +[IDSDAccountController sharedInstance];
  v5 = [v4 enabledAccountsOnService:v3];
  v6 = [v5 count];

  v7 = +[IDSDServiceController sharedInstance];
  v8 = [v7 serviceWithPushTopic:@"com.apple.ess"];

  v9 = +[IDSDAccountController sharedInstance];
  v10 = [v9 enabledAccountsOnService:v8];
  v11 = [v10 count];

  v12 = +[IDSDServiceController sharedInstance];
  v13 = [v12 serviceWithPushTopic:@"com.apple.private.ac"];

  v14 = +[IDSDAccountController sharedInstance];
  v15 = [v14 enabledAccountsOnService:v13];
  v16 = [v15 count];

  v17 = [NSBundle bundleForClass:objc_opt_class()];
  IMLocalizedStringFromTableInBundle();
  if ((v6 != 0) != ((v11 | v16) == 0))
    v18 = {;
    v19 = IMLocalizedStringFromTableInBundle();
    v20 = IMLocalizedStringFromTableInBundle();
    v21 = [NSString stringWithFormat:v18, v19, v20];
  }

  else
    v21 = {;
  }

  return v21;
}

@end