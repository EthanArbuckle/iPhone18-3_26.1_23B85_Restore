@interface NotificationCenter
+ (BOOL)_healthAppHidden;
- (NotificationCenter)init;
- (void)handleNotificationAction:(id)action;
- (void)sendNotificationWithExposureLevel:(double)level duration:(double)duration eventType:(unsigned int)type volumeLoweringAction:(unsigned int)action;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation NotificationCenter

- (NotificationCenter)init
{
  v6.receiver = self;
  v6.super_class = NotificationCenter;
  v2 = [(NotificationCenter *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.coreaudio.adam.hae"];
    userNotificationCenter = v2->_userNotificationCenter;
    v2->_userNotificationCenter = v3;

    [(UNUserNotificationCenter *)v2->_userNotificationCenter setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_userNotificationCenter setWantsNotificationResponsesDelivered];
    v2->_hasHaptics = MGGetBoolAnswer();
  }

  return v2;
}

- (void)sendNotificationWithExposureLevel:(double)level duration:(double)duration eventType:(unsigned int)type volumeLoweringAction:(unsigned int)action
{
  if (type == 1818850917)
  {
    v8 = @"hae.loud.ios";
    v9 = @"MessageShortlookLoud";
    goto LABEL_5;
  }

  if (type == 2003133803)
  {
    v8 = @"hae.weekly.ios";
    v9 = @"MessageShortlookWeekly";
LABEL_5:
    v10 = HAENLocalizationUtilityGetBundle();
    v11 = [v10 localizedStringForKey:v9 value:&stru_2862C7158 table:0];
    body = self->_body;
    self->_body = v11;

    v13 = +[NotificationCenter _healthAppHidden];
    v14 = MEMORY[0x277CE1F80];
    v15 = HAENLocalizationUtilityGetBundle();
    v16 = [v15 localizedStringForKey:@"ButtonLearnMoreInHealth" value:&stru_2862C7158 table:0];
    v17 = [v14 actionWithIdentifier:@"HAEActionLearnMoreInHealth" title:v16 options:1];

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = v18;
    if (v13)
    {
      v20 = HAENotificationsLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v39 = 0;
        _os_log_impl(&dword_25081E000, v20, OS_LOG_TYPE_DEFAULT, "Health app is hidden...", v39, 2u);
      }
    }

    else
    {
      [v18 addObject:v17];
    }

    v21 = HAENLocalizationUtilityGetBundle();
    v22 = [v21 localizedStringForKey:@"NotificationTitleIOS" value:&stru_2862C7158 table:0];
    title = self->_title;
    self->_title = v22;

    if (action != 1986817143)
    {
      v24 = HAENLocalizationUtilityGetBundle();
      v25 = [v24 localizedStringForKey:@"NotificationTitleRecommendation" value:&stru_2862C7158 table:0];
      v26 = self->_title;
      self->_title = v25;

      v27 = HAENLocalizationUtilityGetBundle();
      v28 = [v27 localizedStringForKey:@"MessageRecommendation" value:&stru_2862C7158 table:0];
      v29 = self->_body;
      self->_body = v28;
    }

    v30 = [MEMORY[0x277CE1F98] categoryWithIdentifier:v8 actions:v19 intentIdentifiers:MEMORY[0x277CBEBF8] options:0];
    userNotificationCenter = self->_userNotificationCenter;
    v32 = [MEMORY[0x277CBEB98] setWithObject:v30];
    [(UNUserNotificationCenter *)userNotificationCenter setNotificationCategories:v32];

    v33 = objc_alloc_init(MEMORY[0x277CE1F60]);
    [v33 setTitle:self->_title];
    [v33 setSubtitle:self->_subtitle];
    [v33 setBody:self->_body];
    v34 = [MEMORY[0x277CE1F70] soundWithAlertType:16];
    [v34 setAlertTopic:*MEMORY[0x277D72060]];
    [v34 setToneIdentifier:*MEMORY[0x277D72068]];
    [v33 setSound:v34];
    [v33 setCategoryIdentifier:v8];
    [v33 setThreadIdentifier:@"com.apple.coreaudio.hae.notification"];
    [v33 setShouldBackgroundDefaultAction:1];
    v35 = MEMORY[0x277CE1FC0];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v38 = [v35 requestWithIdentifier:uUIDString content:v33 trigger:0 destinations:15];

    [(UNUserNotificationCenter *)self->_userNotificationCenter addNotificationRequest:v38 withCompletionHandler:&__block_literal_global_2];
    goto LABEL_15;
  }

  v17 = HAENotificationsLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [NotificationCenter sendNotificationWithExposureLevel:v17 duration:? eventType:? volumeLoweringAction:?];
  }

LABEL_15:
}

void __96__NotificationCenter_sendNotificationWithExposureLevel_duration_eventType_volumeLoweringAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = HAENotificationsLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __96__NotificationCenter_sendNotificationWithExposureLevel_duration_eventType_volumeLoweringAction___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25081E000, v4, OS_LOG_TYPE_DEFAULT, "HAE live exposure notification sent", v5, 2u);
  }
}

- (void)handleNotificationAction:(id)action
{
  v21[2] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v4 = *MEMORY[0x277D0AC58];
  v20[0] = *MEMORY[0x277D0AC70];
  v20[1] = v4;
  v21[0] = MEMORY[0x277CBEC38];
  v21[1] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  if ([(__CFString *)actionCopy isEqualToString:*MEMORY[0x277CE20E8]])
  {
    v6 = HAENotificationsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = actionCopy;
      _os_log_impl(&dword_25081E000, v6, OS_LOG_TYPE_DEFAULT, "HAE Notification Action: %@", buf, 0xCu);
    }

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v8 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Sounds&path=HEADPHONE_LEVEL_LIMIT_SETTING"];
    v17 = 0;
    [defaultWorkspace openSensitiveURL:v8 withOptions:v5 error:&v17];
    v9 = v17;

    if (v9)
    {
      v10 = HAENotificationsLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [NotificationCenter handleNotificationAction:];
      }

LABEL_13:
    }
  }

  else
  {
    v11 = [(__CFString *)actionCopy isEqualToString:@"HAEActionLearnMoreInHealth"];
    v9 = HAENotificationsLog();
    v12 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v12)
      {
        *buf = 138412290;
        v19 = @"HAEActionLearnMoreInHealth";
        _os_log_impl(&dword_25081E000, v9, OS_LOG_TYPE_DEFAULT, "HAE Notification Action: %@", buf, 0xCu);
      }

      defaultWorkspace2 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v14 = [MEMORY[0x277CBEBC0] URLWithString:@"x-apple-Health://HearingAppPlugin.healthplugin/SafeHeadphoneListening"];
      v16 = 0;
      [defaultWorkspace2 openSensitiveURL:v14 withOptions:v5 error:&v16];
      v9 = v16;

      if (v9)
      {
        v10 = HAENotificationsLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [NotificationCenter handleNotificationAction:];
        }

        goto LABEL_13;
      }
    }

    else if (v12)
    {
      *buf = 138412290;
      v19 = actionCopy;
      _os_log_impl(&dword_25081E000, v9, OS_LOG_TYPE_DEFAULT, "Unknown HAE Notification Action: %@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];

  if ([categoryIdentifier hasPrefix:@"hae."])
  {
    actionIdentifier = [responseCopy actionIdentifier];
    [(NotificationCenter *)self handleNotificationAction:actionIdentifier];

    if (!handlerCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = HAENotificationsLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [NotificationCenter userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:];
  }

  if (handlerCopy)
  {
LABEL_7:
    handlerCopy[2](handlerCopy);
  }

LABEL_8:
}

+ (BOOL)_healthAppHidden
{
  mEMORY[0x277CCDD28] = [MEMORY[0x277CCDD28] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD28] isAppleWatch];

  if (isAppleWatch)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    restrictedAppBundleIDs = [mEMORY[0x277D262A0] restrictedAppBundleIDs];
    v6 = *MEMORY[0x277CCE3A0];
    v7 = [restrictedAppBundleIDs containsObject:*MEMORY[0x277CCE3A0]];
    parentalControlsBlacklistedAppBundleIDs = [mEMORY[0x277D262A0] parentalControlsBlacklistedAppBundleIDs];
    LOBYTE(v6) = [parentalControlsBlacklistedAppBundleIDs containsObject:v6];
    isRestricted = ([mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25F10]] == 2) | v7 | v6;
  }

  else
  {
    v10 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:*MEMORY[0x277CCE3A0] placeholder:0];
    mEMORY[0x277D262A0] = v10;
    if (!v10)
    {
      isRestricted = 0;
      goto LABEL_6;
    }

    restrictedAppBundleIDs = [v10 appState];
    isRestricted = [restrictedAppBundleIDs isRestricted];
  }

LABEL_6:
  return isRestricted & 1;
}

void __96__NotificationCenter_sendNotificationWithExposureLevel_duration_eventType_volumeLoweringAction___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25081E000, v0, v1, "HAE live exposure notification error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleNotificationAction:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25081E000, v0, v1, "Failed to open health app because %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleNotificationAction:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25081E000, v0, v1, "Failed to open settings because %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25081E000, v0, v1, "Unknown HAE Notification Category Identifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end