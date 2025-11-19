@interface CALNUNUserNotificationCenter
+ (id)_statsPayloadKeyForSettingName:(id)a3 topicIdentifier:(id)a4;
+ (void)_addSettingName:(id)a3 value:(id)a4 toStatsPayload:(id)a5 forTopicIdentifier:(id)a6;
- (BOOL)addNotificationRequest:(id)a3 error:(id *)a4;
- (BOOL)replaceNotificationRequest:(id)a3 error:(id *)a4;
- (CALNUNUserNotificationCenter)initWithBundleIdentifier:(id)a3 userNotificationCenterFactory:(id)a4 storage:(id)a5 iconProvider:(id)a6;
- (CALNUserNotificationCenterDelegate)delegate;
- (id)_updatedRecord:(id)a3;
- (id)deliveredNotifications;
- (id)notificationCategories;
- (void)activate;
- (void)collectSettingsStats:(id)a3;
- (void)removeAllDeliveredNotifications;
- (void)removeAllPendingNotificationRequests;
- (void)removeDeliveredNotificationsWithIdentifiers:(id)a3;
- (void)setNotificationCategories:(id)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation CALNUNUserNotificationCenter

- (CALNUNUserNotificationCenter)initWithBundleIdentifier:(id)a3 userNotificationCenterFactory:(id)a4 storage:(id)a5 iconProvider:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28.receiver = self;
  v28.super_class = CALNUNUserNotificationCenter;
  v14 = [(CALNUNUserNotificationCenter *)&v28 init];
  if (v14)
  {
    v15 = [v11 userNotificationCenterWithBundleIdentifier:v10];
    [v15 setDelegate:v14];
    userNotificationCenter = v14->_userNotificationCenter;
    v14->_userNotificationCenter = v15;
    v17 = v15;

    objc_storeStrong(&v14->_storage, a5);
    v18 = [[CALNUNNotificationIconMapper alloc] initWithIconProvider:v13];
    v19 = [[CALNUNNotificationContentMapper alloc] initWithNotificationIconMapper:v18];
    notificationContentMapper = v14->_notificationContentMapper;
    v14->_notificationContentMapper = v19;

    v21 = [[CALNUNNotificationRequestMapper alloc] initWithNotificationContentMapper:v14->_notificationContentMapper notificationIconMapper:v18];
    notificationRequestMapper = v14->_notificationRequestMapper;
    v14->_notificationRequestMapper = v21;

    v23 = [[CALNUNNotificationMapper alloc] initWithNotificationRequestMapper:v14->_notificationRequestMapper];
    notificationMapper = v14->_notificationMapper;
    v14->_notificationMapper = v23;

    v25 = [[CALNUNNotificationResponseMapper alloc] initWithNotificationMapper:v14->_notificationMapper];
    notificationResponseMapper = v14->_notificationResponseMapper;
    v14->_notificationResponseMapper = v25;
  }

  return v14;
}

- (void)activate
{
  v3 = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  [v3 setWantsNotificationResponsesDelivered];

  [(CALNUNUserNotificationCenter *)self setActive:1];
}

- (BOOL)addNotificationRequest:(id)a3 error:(id *)a4
{
  v33[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(CALNUNUserNotificationCenter *)self isActive])
  {
    v7 = [CALNNotificationMapper notificationRecordFromNotificationRequest:v6];
    if (v7)
    {
      v8 = [(CALNUNUserNotificationCenter *)self storage];
      [v8 addNotificationRecord:v7];

      v9 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v7 sourceIdentifier];
        v11 = [v7 sourceClientIdentifier];
        v26 = 138543874;
        v27 = v10;
        v28 = 2114;
        v29 = v11;
        v30 = 2112;
        v31 = v7;
        _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_INFO, "Added notification record to storage. Notification record source identifier = %{public}@, source client identifier = %{public}@, record = %@", &v26, 0x20u);
      }
    }

    else
    {
      v9 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CALNUNUserNotificationCenter addNotificationRequest:error:];
      }
    }

    v18 = [(CALNUNUserNotificationCenter *)self notificationRequestMapper];
    v15 = [v18 unNotificationRequestFromCALNNotificationRequest:v6];

    v19 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v15 identifier];
      v26 = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_242909000, v19, OS_LOG_TYPE_DEFAULT, "Adding unNotificationRequest with identifier = %{public}@, request = %@", &v26, 0x16u);
    }

    v21 = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
    v17 = [v21 addNotificationRequest:v15 error:a4];

    if (v17)
    {
      v22 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v15 identifier];
        v26 = 138543362;
        v27 = v23;
        _os_log_impl(&dword_242909000, v22, OS_LOG_TYPE_DEFAULT, "Added unNotificationRequest with identifier = %{public}@", &v26, 0xCu);
      }
    }
  }

  else
  {
    v12 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CALNUNUserNotificationCenter addNotificationRequest:error:];
    }

    v13 = *MEMORY[0x277CCA470];
    v32[0] = *MEMORY[0x277CCA450];
    v32[1] = v13;
    v33[0] = @"Could not add notification request.";
    v33[1] = @"User notification center is inactive.";
    v32[2] = *MEMORY[0x277CCA498];
    v33[2] = @"Activate the user notification center before adding a notification request.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CALNUNUserNotificationCenterErrorDomain" code:0 userInfo:v7];
    v15 = v14;
    if (a4)
    {
      v16 = v14;
      LOBYTE(v17) = 0;
      *a4 = v15;
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)deliveredNotifications
{
  v3 = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  v4 = [v3 deliveredNotifications];

  v5 = [(CALNUNUserNotificationCenter *)self notificationMapper];
  v6 = [v5 calnNotificationsFromUNNotifications:v4];

  return v6;
}

- (id)notificationCategories
{
  v2 = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  v3 = [v2 notificationCategories];

  v4 = [CALNUNNotificationCategoryMapper calnNotificationCategoriesFromUNNotificationCategories:v3];

  return v4;
}

- (void)removeAllDeliveredNotifications
{
  v3 = [(CALNUNUserNotificationCenter *)self storage];
  [v3 removeNotificationRecordsPassingTest:&__block_literal_global_5];

  v4 = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  [v4 removeAllDeliveredNotifications];
}

- (void)removeDeliveredNotificationsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(CALNUNUserNotificationCenter *)self storage];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__CALNUNUserNotificationCenter_removeDeliveredNotificationsWithIdentifiers___block_invoke;
  v8[3] = &unk_278D6F3C0;
  v9 = v4;
  v6 = v4;
  [v5 removeNotificationRecordsPassingTest:v8];

  v7 = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  [v7 removeDeliveredNotificationsWithIdentifiers:v6];
}

uint64_t __76__CALNUNUserNotificationCenter_removeDeliveredNotificationsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CALNNotificationIdentifier alloc];
  v5 = [v3 sourceIdentifier];
  v6 = [v3 sourceClientIdentifier];

  v7 = [(CALNNotificationIdentifier *)v4 initWithSourceIdentifier:v5 sourceClientIdentifier:v6];
  if (v7)
  {
    v8 = [(CALNNotificationIdentifier *)v7 stringRepresentation];
    v9 = [*(a1 + 32) containsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)removeAllPendingNotificationRequests
{
  v2 = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  [v2 removeAllPendingNotificationRequests];
}

- (BOOL)replaceNotificationRequest:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [CALNNotificationMapper notificationRecordFromNotificationRequest:v6];
  if (v7)
  {
    v8 = [(CALNUNUserNotificationCenter *)self _updatedRecord:v7];
    v9 = [(CALNUNUserNotificationCenter *)self storage];
    [v9 addNotificationRecord:v8];

    v10 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v8 sourceIdentifier];
      v12 = [v8 sourceClientIdentifier];
      v23 = 138543874;
      v24 = v11;
      v25 = 2114;
      v26 = v12;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_INFO, "Added updated notification record to storage. Notification record source identifier = %{public}@, source client identifier = %{public}@, record = %@", &v23, 0x20u);
    }
  }

  else
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CALNUNUserNotificationCenter replaceNotificationRequest:v6 error:?];
    }
  }

  v13 = [(CALNUNUserNotificationCenter *)self notificationContentMapper];
  v14 = [v6 content];
  v15 = [v13 unNotificationContentFromCALNNotificationContent:v14];

  v16 = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  v17 = [v6 identifier];
  v18 = [v16 replaceContentForRequestWithIdentifier:v17 replacementContent:v15 error:a4];

  if (v18)
  {
    v19 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v6 identifier];
      v23 = 138543618;
      v24 = v20;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_242909000, v19, OS_LOG_TYPE_DEFAULT, "Replaced request with identifier = %{public}@, unNotificationContent = %@", &v23, 0x16u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)setNotificationCategories:(id)a3
{
  v5 = [CALNUNNotificationCategoryMapper unNotificationCategoriesFromCALNNotificationCategories:a3];
  v4 = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  [v4 setNotificationCategories:v5];
}

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [(CALNUNUserNotificationCenter *)self delegate];
  v10 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 request];
    v12 = [v11 identifier];
    *buf = 138543618;
    v23 = v12;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Will present notification with identifier = %{public}@, notification = %@", buf, 0x16u);
  }

  if (!v9)
  {
    v13 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CALNUNUserNotificationCenter userNotificationCenter:willPresentNotification:withCompletionHandler:];
    }

    v8[2](v8, 0);
  }

  v14 = [(CALNUNUserNotificationCenter *)self notificationMapper];
  v15 = [v14 calnNotificationFromUNNotification:v7];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __101__CALNUNUserNotificationCenter_userNotificationCenter_willPresentNotification_withCompletionHandler___block_invoke;
  v19[3] = &unk_278D6F3E8;
  v20 = v15;
  v21 = v8;
  v16 = v8;
  v17 = v15;
  [v9 userNotificationCenter:self willPresentNotification:v17 withCompletionHandler:v19];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __101__CALNUNUserNotificationCenter_userNotificationCenter_willPresentNotification_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [CALNUNNotificationPresentationOptionsMapper unNotificationPresentationOptionsFromCALNNotificationPresentationOptions:a2];
  v4 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
    v6 = [*(a1 + 32) request];
    v7 = [v6 identifier];
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Invoking callback with options = %{public}@, notification identifier = %{public}@", &v10, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 notification];
    v11 = [v10 request];
    v12 = [v11 identifier];
    v18 = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Did receive notification response. identifier = %{public}@, response = %@", &v18, 0x16u);
  }

  v13 = [(CALNUNUserNotificationCenter *)self delegate];
  if (!v13)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CALNUNUserNotificationCenter userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:];
    }

    v8[2](v8);
  }

  v15 = [(CALNUNUserNotificationCenter *)self notificationResponseMapper];
  v16 = [v15 calnNotificationResponseFromUNNotificationResponse:v7];

  [v13 userNotificationCenter:self didReceiveNotificationResponse:v16 withCompletionHandler:v8];
  v17 = *MEMORY[0x277D85DE8];
}

- (id)_updatedRecord:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 content];
  v5 = [v4 date];

  v6 = [v3 date];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    if (v5)
    {
      v8 = v6;
      if (([v5 isEqualToDate:v6] & 1) == 0)
      {
        v8 = v5;
      }
    }
  }

  else
  {
    if (v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = [MEMORY[0x277CBEAA8] date];
    }

    v8 = v9;
  }

  v10 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(CALNUNUserNotificationCenter *)v3 _updatedRecord:v8, v10];
  }

  v11 = [v3 mutableCopy];
  [v11 setDate:v8];
  v12 = [v11 copy];
  v13 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v3 sourceIdentifier];
    v15 = [v3 sourceClientIdentifier];
    v16 = [v12 date];
    v19 = 138544130;
    v20 = v14;
    v21 = 2114;
    v22 = v15;
    v23 = 2114;
    v24 = v16;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "Updated record. Source identifier = %{public}@, source client identifier = %{public}@, date = %{public}@, record = %@", &v19, 0x2Au);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)collectSettingsStats:(id)a3
{
  v4 = a3;
  v5 = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  v6 = [v5 notificationSettings];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "authorizationStatus")}];
  [v4 setObject:v7 forKeyedSubscript:@"CalendarNotificationsAuthorization"];

  v8 = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  v9 = [v8 notificationSettingsForTopics];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__CALNUNUserNotificationCenter_collectSettingsStats___block_invoke;
  v11[3] = &unk_278D6F410;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
}

void __53__CALNUNUserNotificationCenter_collectSettingsStats___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_class();
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "authorizationStatus")}];
  [v8 _addSettingName:@"authorizationStatus" value:v9 toStatsPayload:*(a1 + 40) forTopicIdentifier:v7];

  v10 = *(a1 + 32);
  v11 = objc_opt_class();
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "soundSetting")}];
  [v11 _addSettingName:@"soundSetting" value:v12 toStatsPayload:*(a1 + 40) forTopicIdentifier:v7];

  v13 = *(a1 + 32);
  v14 = objc_opt_class();
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "badgeSetting")}];
  [v14 _addSettingName:@"badgeSetting" value:v15 toStatsPayload:*(a1 + 40) forTopicIdentifier:v7];

  v16 = *(a1 + 32);
  v17 = objc_opt_class();
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "alertSetting")}];
  [v17 _addSettingName:@"alertSetting" value:v18 toStatsPayload:*(a1 + 40) forTopicIdentifier:v7];

  v19 = *(a1 + 32);
  v20 = objc_opt_class();
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "notificationCenterSetting")}];
  [v20 _addSettingName:@"notificationCenterSetting" value:v21 toStatsPayload:*(a1 + 40) forTopicIdentifier:v7];

  v22 = *(a1 + 32);
  v23 = objc_opt_class();
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "lockScreenSetting")}];
  [v23 _addSettingName:@"lockScreenSetting" value:v24 toStatsPayload:*(a1 + 40) forTopicIdentifier:v7];

  v25 = *(a1 + 32);
  v26 = objc_opt_class();
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "carPlaySetting")}];
  [v26 _addSettingName:@"carPlaySetting" value:v27 toStatsPayload:*(a1 + 40) forTopicIdentifier:v7];

  v28 = *(a1 + 32);
  v29 = objc_opt_class();
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "alertStyle")}];
  [v29 _addSettingName:@"alertStyle" value:v30 toStatsPayload:*(a1 + 40) forTopicIdentifier:v7];

  v31 = *(a1 + 32);
  v32 = objc_opt_class();
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "showPreviewsSetting")}];
  [v32 _addSettingName:@"showPreviewsSetting" value:v33 toStatsPayload:*(a1 + 40) forTopicIdentifier:v7];

  v34 = *(a1 + 32);
  v35 = objc_opt_class();
  v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "timeSensitiveSetting")}];
  [v35 _addSettingName:@"timeSensitiveSetting" value:v36 toStatsPayload:*(a1 + 40) forTopicIdentifier:v7];

  v37 = *(a1 + 32);
  v38 = objc_opt_class();
  v39 = MEMORY[0x277CCABB0];
  v40 = [v6 scheduledDeliverySetting];

  v41 = [v39 numberWithInteger:v40];
  [v38 _addSettingName:@"scheduledDeliverySetting" value:v41 toStatsPayload:*(a1 + 40) forTopicIdentifier:v7];
}

+ (void)_addSettingName:(id)a3 value:(id)a4 toStatsPayload:(id)a5 forTopicIdentifier:(id)a6
{
  v10 = a5;
  v11 = a4;
  v12 = [a1 _statsPayloadKeyForSettingName:a3 topicIdentifier:a6];
  [v10 setObject:v11 forKeyedSubscript:v12];
}

+ (id)_statsPayloadKeyForSettingName:(id)a3 topicIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  if ([v5 hasPrefix:@"com.apple.mobilecal.bulletin-subsection."])
  {
    v7 = [v5 substringFromIndex:{objc_msgSend(@"com.apple.mobilecal.bulletin-subsection.", "length")}];

    v5 = v7;
  }

  v8 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_"];
  v9 = [v8 invertedSet];

  v10 = [v5 stringByReplacingCharactersInSet:v9 withString:@"_"];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"notifications_%@_%@", v10, v6];

  return v11;
}

- (CALNUserNotificationCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addNotificationRequest:error:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 identifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addNotificationRequest:error:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 identifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)replaceNotificationRequest:(void *)a1 error:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 identifier];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:willPresentNotification:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v2 = [v0 request];
  v9 = [v2 identifier];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 notification];
  v2 = [v1 request];
  v3 = [v2 identifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updatedRecord:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [a1 sourceIdentifier];
  v7 = [a1 sourceClientIdentifier];
  v9 = 138544130;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = a2;
  v15 = 2112;
  v16 = a1;
  _os_log_debug_impl(&dword_242909000, a3, OS_LOG_TYPE_DEBUG, "Updating record with date. Record source identifier = %{public}@, source client identifier = %{public}@, date = %{public}@, record = %@", &v9, 0x2Au);

  v8 = *MEMORY[0x277D85DE8];
}

@end