@interface _OSINotificationManager
+ (id)sharedInstance;
- (_OSINotificationManager)init;
- (void)postIBLMFirstTimeNotification;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation _OSINotificationManager

- (_OSINotificationManager)init
{
  v8.receiver = self;
  v8.super_class = _OSINotificationManager;
  v2 = [(_OSINotificationManager *)&v8 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "notifications");
    log = v2->_log;
    v2->_log = v3;

    v5 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.osintelligence.notifications"];
    unCenter = v2->_unCenter;
    v2->_unCenter = v5;

    [(UNUserNotificationCenter *)v2->_unCenter setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_unCenter setWantsNotificationResponsesDelivered];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[_OSINotificationManager sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

- (void)postIBLMFirstTimeNotification
{
  v21 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_DEFAULT, "Posting First time notification", &v17, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.osintelligence.notifications.bundle"];
  v6 = [MEMORY[0x277CCA8D8] bundleWithURL:v5];
  v7 = [v6 localizedStringForKey:@"ADAPTIVE_POWER_FIRST_TIME_TITLE" value:&stru_286EB4F30 table:@"Localizable-IBLM"];
  [v4 setTitle:v7];

  v8 = [v6 localizedStringForKey:@"ADAPTIVE_POWER_FIRST_TIME_BODY" value:&stru_286EB4F30 table:@"Localizable-IBLM"];
  [v4 setBody:v8];

  v9 = self->_log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    title = [v4 title];
    body = [v4 body];
    v17 = 138412546;
    v18 = title;
    v19 = 2112;
    v20 = body;
    _os_log_impl(&dword_25D171000, v10, OS_LOG_TYPE_DEFAULT, "Content title : %@, Body %@", &v17, 0x16u);
  }

  [v4 setShouldIgnoreDowntime:1];
  [v4 setShouldIgnoreDoNotDisturb:1];
  [v4 setShouldHideDate:1];
  [v4 setShouldSuppressScreenLightUp:1];
  v13 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Battery/POWER_MODE_SPECIFIER_IDENTIFIER"];
  [v4 setDefaultActionURL:v13];

  [v4 setShouldPreventNotificationDismissalAfterDefaultAction:0];
  [v4 setCategoryIdentifier:@"firstTimeIBLMCategory"];
  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:3600.0];
  [v4 setExpirationDate:v14];

  v15 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"IBLM-Engaged" content:v4 trigger:0];
  [v15 setDestinations:3];
  [(UNUserNotificationCenter *)self->_unCenter addNotificationRequest:v15 withCompletionHandler:0];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  responseCopy = response;
  handlerCopy = handler;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = log;
    v13 = [responseCopy debugDescription];
    actionIdentifier = [responseCopy actionIdentifier];
    v22 = 138412546;
    v23 = v13;
    v24 = 2112;
    v25 = actionIdentifier;
    _os_log_impl(&dword_25D171000, v12, OS_LOG_TYPE_INFO, "notification request coming in for %@: %@", &v22, 0x16u);
  }

  actionIdentifier2 = [responseCopy actionIdentifier];
  v16 = *MEMORY[0x277CE20F0];

  if (actionIdentifier2 == v16)
  {
    v19 = 1;
  }

  else
  {
    actionIdentifier3 = [responseCopy actionIdentifier];
    v18 = actionIdentifier3 == *MEMORY[0x277CE20E8];

    v19 = 2 * v18;
  }

  v20 = +[_OSIBLMAnalyticsHandler sharedInstance];
  [v20 recordIBLMFirstUserNotificationResponse:v19];

  handlerCopy[2](handlerCopy);
  v21 = *MEMORY[0x277D85DE8];
}

@end