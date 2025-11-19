@interface NotificationCenter
+ (BOOL)_healthAppHidden;
- (NotificationCenter)init;
- (void)handleNotificationAction:(id)a3;
- (void)sendNotificationWithExposureLevel:(double)a3 duration:(double)a4 eventType:(unsigned int)a5 volumeLoweringAction:(unsigned int)a6;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
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

- (void)sendNotificationWithExposureLevel:(double)a3 duration:(double)a4 eventType:(unsigned int)a5 volumeLoweringAction:(unsigned int)a6
{
  if (a5 == 1818850917)
  {
    v8 = @"hae.loud.ios";
    v9 = @"MessageShortlookLoud";
    goto LABEL_5;
  }

  if (a5 == 2003133803)
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

    if (a6 != 1986817143)
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
    v36 = [MEMORY[0x277CCAD78] UUID];
    v37 = [v36 UUIDString];
    v38 = [v35 requestWithIdentifier:v37 content:v33 trigger:0 destinations:15];

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

- (void)handleNotificationAction:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D0AC58];
  v20[0] = *MEMORY[0x277D0AC70];
  v20[1] = v4;
  v21[0] = MEMORY[0x277CBEC38];
  v21[1] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  if ([(__CFString *)v3 isEqualToString:*MEMORY[0x277CE20E8]])
  {
    v6 = HAENotificationsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v3;
      _os_log_impl(&dword_25081E000, v6, OS_LOG_TYPE_DEFAULT, "HAE Notification Action: %@", buf, 0xCu);
    }

    v7 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v8 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Sounds&path=HEADPHONE_LEVEL_LIMIT_SETTING"];
    v17 = 0;
    [v7 openSensitiveURL:v8 withOptions:v5 error:&v17];
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
    v11 = [(__CFString *)v3 isEqualToString:@"HAEActionLearnMoreInHealth"];
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

      v13 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v14 = [MEMORY[0x277CBEBC0] URLWithString:@"x-apple-Health://HearingAppPlugin.healthplugin/SafeHeadphoneListening"];
      v16 = 0;
      [v13 openSensitiveURL:v14 withOptions:v5 error:&v16];
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
      v19 = v3;
      _os_log_impl(&dword_25081E000, v9, OS_LOG_TYPE_DEFAULT, "Unknown HAE Notification Action: %@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 notification];
  v10 = [v9 request];
  v11 = [v10 content];
  v12 = [v11 categoryIdentifier];

  if ([v12 hasPrefix:@"hae."])
  {
    v13 = [v7 actionIdentifier];
    [(NotificationCenter *)self handleNotificationAction:v13];

    if (!v8)
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

  if (v8)
  {
LABEL_7:
    v8[2](v8);
  }

LABEL_8:
}

+ (BOOL)_healthAppHidden
{
  v2 = [MEMORY[0x277CCDD28] sharedBehavior];
  v3 = [v2 isAppleWatch];

  if (v3)
  {
    v4 = [MEMORY[0x277D262A0] sharedConnection];
    v5 = [v4 restrictedAppBundleIDs];
    v6 = *MEMORY[0x277CCE3A0];
    v7 = [v5 containsObject:*MEMORY[0x277CCE3A0]];
    v8 = [v4 parentalControlsBlacklistedAppBundleIDs];
    LOBYTE(v6) = [v8 containsObject:v6];
    v9 = ([v4 effectiveBoolValueForSetting:*MEMORY[0x277D25F10]] == 2) | v7 | v6;
  }

  else
  {
    v10 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:*MEMORY[0x277CCE3A0] placeholder:0];
    v4 = v10;
    if (!v10)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v5 = [v10 appState];
    v9 = [v5 isRestricted];
  }

LABEL_6:
  return v9 & 1;
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