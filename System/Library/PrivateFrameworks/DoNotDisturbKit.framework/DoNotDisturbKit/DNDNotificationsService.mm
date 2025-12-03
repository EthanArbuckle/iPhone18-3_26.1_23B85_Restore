@interface DNDNotificationsService
- (DNDNotificationsService)initWithClientIdentifier:(id)identifier;
- (id)_modeConfigurationForIdentifier:(id)identifier;
- (id)_modeForIdentifier:(id)identifier;
- (void)_setModeConfiguration:(id)configuration;
- (void)activitySuggestionClient:(id)client didSuggestSettingUpActivity:(id)activity;
- (void)activitySuggestionClient:(id)client didSuggestTriggersForConfiguredActivity:(id)activity;
- (void)resume;
- (void)settingsService:(id)service didReceiveUpdatedBehaviorSettings:(id)settings;
- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation DNDNotificationsService

- (DNDNotificationsService)initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = DNDNotificationsService;
  v5 = [(DNDNotificationsService *)&v20 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.donotdisturb.kit.NotificationsService", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = [MEMORY[0x277D05980] serviceForClientIdentifier:identifierCopy];
    notificationsAssertionService = v5->_notificationsAssertionService;
    v5->_notificationsAssertionService = v9;

    v11 = [MEMORY[0x277D05AB0] serviceForClientIdentifier:identifierCopy];
    notificationsStateService = v5->_notificationsStateService;
    v5->_notificationsStateService = v11;

    v13 = [MEMORY[0x277D05A98] serviceForClientIdentifier:identifierCopy];
    notificationsSettingsService = v5->_notificationsSettingsService;
    v5->_notificationsSettingsService = v13;

    v15 = [MEMORY[0x277D059C8] serviceForClientIdentifier:identifierCopy];
    notificationsModeConfigurationService = v5->_notificationsModeConfigurationService;
    v5->_notificationsModeConfigurationService = v15;

    v17 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.donotdisturb"];
    notificationsCenter = v5->_notificationsCenter;
    v5->_notificationsCenter = v17;

    [(UNUserNotificationCenter *)v5->_notificationsCenter setDelegate:v5];
  }

  return v5;
}

- (void)resume
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__DNDNotificationsService_resume__block_invoke;
  block[3] = &unk_278F884B8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __33__DNDNotificationsService_resume__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 88) setWantsNotificationResponsesDelivered];
  v2 = [MEMORY[0x277CEB318] sharedInstance];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;

  [*(*(a1 + 32) + 96) registerObserver:*(a1 + 32) sendingInitialChangeNotification:1];
  [*(*(a1 + 32) + 24) addStateUpdateListener:*(a1 + 32) withCompletionHandler:0];
  v5 = [*(*(a1 + 32) + 24) queryCurrentStateWithError:0];
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = v5;

  return MEMORY[0x2821F96F8]();
}

- (void)activitySuggestionClient:(id)client didSuggestSettingUpActivity:(id)activity
{
  activityCopy = activity;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__DNDNotificationsService_activitySuggestionClient_didSuggestSettingUpActivity___block_invoke;
  v8[3] = &unk_278F88500;
  v8[4] = self;
  v9 = activityCopy;
  v7 = activityCopy;
  dispatch_async(queue, v8);
}

void __80__DNDNotificationsService_activitySuggestionClient_didSuggestSettingUpActivity___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 72) isActive];
  v3 = DNDLogNotifications;
  if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v29 = 138543618;
    v30 = v4;
    v31 = 1024;
    v32 = v2;
    _os_log_impl(&dword_249121000, v3, OS_LOG_TYPE_DEFAULT, "Did receive setup suggestion for activity; suggestion=%{public}@, focus=%{BOOL}d", &v29, 0x12u);
  }

  if ((v2 & 1) == 0 && (v5 = *(a1 + 40)) != 0 && ([v5 location] & 2) != 0)
  {
    v7 = MEMORY[0x24C1F2940]([*(a1 + 40) activityType]);
    v8 = [v7 integerValue];

    v9 = DNDModeSemanticTypeToString();
    v10 = [v9 uppercaseString];

    v11 = objc_alloc_init(MEMORY[0x277CE1F60]);
    [v11 setCategoryIdentifier:@"suggestion.setup"];
    [v11 setInterruptionLevel:0];
    v12 = MEMORY[0x277CCACA8];
    v13 = [@"NOTIFICATION_SUGGESTION_SETUP_TITLE_" stringByAppendingString:v10];
    v14 = [v12 localizedUserNotificationStringForKey:v13 arguments:0];
    [v11 setTitle:v14];

    v15 = MEMORY[0x277CCACA8];
    v16 = [@"NOTIFICATION_SUGGESTION_SETUP_BODY_" stringByAppendingString:v10];
    v17 = [v15 localizedUserNotificationStringForKey:v16 arguments:0];
    [v11 setBody:v17];

    [v11 setShouldSuppressDefaultAction:1];
    [v11 setShouldDisplayActionsInline:1];
    v18 = MEMORY[0x277CE1FB0];
    v19 = DNDSystemImageNameForModeSemanticType();
    v20 = [v18 iconForSystemImageNamed:v19];
    [v11 setIcon:v20];

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
    [v21 setObject:v22 forKey:@"semanticType"];

    v23 = [*(a1 + 40) suggestionUUID];
    [v21 bs_setSafeObject:v23 forKey:@"suggestionUUID"];

    [v11 setUserInfo:v21];
    v24 = *(*(a1 + 32) + 96);
    v25 = [*(a1 + 40) suggestionUUID];
    [v24 didShowActivitySetUpSuggestionWithSuggestionUUID:v25 location:1];

    v26 = *(*(a1 + 32) + 88);
    v27 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"setup" content:v11 trigger:0];
    [v26 addNotificationRequest:v27 withCompletionHandler:&__block_literal_global_0];
  }

  else
  {
    v6 = DNDLogNotifications;
    if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 67109120;
      LODWORD(v30) = v2;
      _os_log_impl(&dword_249121000, v6, OS_LOG_TYPE_DEFAULT, "Did not post suggestion notifiction; focus=%{BOOL}d", &v29, 8u);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __80__DNDNotificationsService_activitySuggestionClient_didSuggestSettingUpActivity___block_invoke_392(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DNDLogNotifications;
  if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_249121000, v3, OS_LOG_TYPE_DEFAULT, "Notification posted: error=%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)activitySuggestionClient:(id)client didSuggestTriggersForConfiguredActivity:(id)activity
{
  activityCopy = activity;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__DNDNotificationsService_activitySuggestionClient_didSuggestTriggersForConfiguredActivity___block_invoke;
  v8[3] = &unk_278F88500;
  v8[4] = self;
  v9 = activityCopy;
  v7 = activityCopy;
  dispatch_async(queue, v8);
}

void __92__DNDNotificationsService_activitySuggestionClient_didSuggestTriggersForConfiguredActivity___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 72) isActive];
  v3 = DNDLogNotifications;
  if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 138543618;
    v37 = v4;
    v38 = 1024;
    v39 = v2;
    _os_log_impl(&dword_249121000, v3, OS_LOG_TYPE_DEFAULT, "Did receive triggers suggestion for activity; suggestion=%{public}@, focus=%{BOOL}d", buf, 0x12u);
  }

  if ((v2 & 1) == 0)
  {
    v6 = (a1 + 40);
    v5 = *(a1 + 40);
    if (v5)
    {
      if (([v5 location] & 2) != 0)
      {
        v8 = *(a1 + 32);
        v9 = [*(a1 + 40) uuidString];
        v10 = [v8 _modeForIdentifier:v9];

        if (!v10)
        {
          v20 = DNDLogNotifications;
          if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_ERROR))
          {
            __92__DNDNotificationsService_activitySuggestionClient_didSuggestTriggersForConfiguredActivity___block_invoke_cold_1(v6, v20);
          }

          goto LABEL_17;
        }

        v11 = [v10 semanticType];
        v12 = DNDModeSemanticTypeToString();
        v13 = [v12 uppercaseString];

        v14 = objc_alloc_init(MEMORY[0x277CE1F60]);
        [v14 setCategoryIdentifier:@"suggestion.trigger"];
        [v14 setInterruptionLevel:1];
        if (v11)
        {
          if (v11 == -1)
          {
            v15 = MEMORY[0x277CCACA8];
            v16 = [@"NOTIFICATION_SUGGESTION_START_TITLE_" stringByAppendingString:v13];
            v17 = [v10 name];
            v35 = v17;
            v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
            v19 = [v15 localizedUserNotificationStringForKey:v16 arguments:v18];
            [v14 setTitle:v19];

LABEL_16:
            v22 = [*(a1 + 40) localizedTriggerSuggestionText];
            [v14 setBody:v22];

            [v14 setShouldSuppressDefaultAction:1];
            [v14 setShouldDisplayActionsInline:1];
            v23 = MEMORY[0x277CE1FB0];
            v24 = [v10 symbolImageName];
            v25 = [v23 iconForSystemImageNamed:v24];
            [v14 setIcon:v25];

            v33 = @"suggestionUUID";
            v26 = [*(a1 + 40) suggestionUUID];
            v34 = v26;
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
            [v14 setUserInfo:v27];

            v28 = *(*(a1 + 32) + 96);
            v29 = [*(a1 + 40) suggestionUUID];
            [v28 didShowTriggerSuggestionWithSuggestionUUID:v29 location:1];

            v30 = *(*(a1 + 32) + 88);
            v31 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"start" content:v14 trigger:0];
            [v30 addNotificationRequest:v31 withCompletionHandler:&__block_literal_global_404];

LABEL_17:
            goto LABEL_18;
          }
        }

        else
        {

          v13 = @"DEFAULT";
        }

        v21 = MEMORY[0x277CCACA8];
        v16 = [@"NOTIFICATION_SUGGESTION_START_TITLE_" stringByAppendingString:v13];
        v17 = [v21 localizedUserNotificationStringForKey:v16 arguments:0];
        [v14 setTitle:v17];
        goto LABEL_16;
      }
    }
  }

  v7 = DNDLogNotifications;
  if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v37) = v2;
    _os_log_impl(&dword_249121000, v7, OS_LOG_TYPE_DEFAULT, "Did not post suggestion notifiction; focus=%{BOOL}d", buf, 8u);
  }

LABEL_18:
  v32 = *MEMORY[0x277D85DE8];
}

void __92__DNDNotificationsService_activitySuggestionClient_didSuggestTriggersForConfiguredActivity___block_invoke_402(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DNDLogNotifications;
  if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_249121000, v3, OS_LOG_TYPE_DEFAULT, "Notification posted: error=%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update
{
  v14 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v6 = DNDLogNotifications;
  if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = updateCopy;
    _os_log_impl(&dword_249121000, v6, OS_LOG_TYPE_DEFAULT, "Did receive state update; stateUpdate=%{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__DNDNotificationsService_stateService_didReceiveDoNotDisturbStateUpdate___block_invoke;
  v10[3] = &unk_278F88500;
  v10[4] = self;
  v11 = updateCopy;
  v8 = updateCopy;
  dispatch_async(queue, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __74__DNDNotificationsService_stateService_didReceiveDoNotDisturbStateUpdate___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 40) state];
  v2 = [v5 copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
}

- (void)settingsService:(id)service didReceiveUpdatedBehaviorSettings:(id)settings
{
  v14 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v6 = DNDLogNotifications;
  if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = settingsCopy;
    _os_log_impl(&dword_249121000, v6, OS_LOG_TYPE_DEFAULT, "Did receive updated behavior settings; settings=%{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__DNDNotificationsService_settingsService_didReceiveUpdatedBehaviorSettings___block_invoke;
  v10[3] = &unk_278F88500;
  v10[4] = self;
  v11 = settingsCopy;
  v8 = settingsCopy;
  dispatch_async(queue, v10);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __77__DNDNotificationsService_settingsService_didReceiveUpdatedBehaviorSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v66 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  actionIdentifier = [responseCopy actionIdentifier];
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];

  v14 = DNDLogNotifications;
  if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v63 = categoryIdentifier;
    v64 = 2114;
    v65 = actionIdentifier;
    _os_log_impl(&dword_249121000, v14, OS_LOG_TYPE_DEFAULT, "Did receive notification response; categoryIdentifier = %{public}@; actionIdentifier: %{public}@", buf, 0x16u);
  }

  if (![categoryIdentifier isEqualToString:@"suggestion.setup"] || !objc_msgSend(actionIdentifier, "isEqualToString:", @"suggestion.setup.accept"))
  {
    if ([categoryIdentifier isEqualToString:@"suggestion.setup"] && ((objc_msgSend(actionIdentifier, "isEqualToString:", @"suggestion.setup.decline") & 1) != 0 || objc_msgSend(actionIdentifier, "isEqualToString:", *MEMORY[0x277CE20F0])))
    {
      notification2 = [responseCopy notification];
      request2 = [notification2 request];
      content2 = [request2 content];
      userInfo = [content2 userInfo];

      v28 = [userInfo objectForKey:@"suggestionUUID"];
      v29 = DNDLogNotifications;
      if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v63 = v28;
        _os_log_impl(&dword_249121000, v29, OS_LOG_TYPE_DEFAULT, "Decline setup suggestion; suggestionUUID=%{public}@", buf, 0xCu);
      }

      v30 = dispatch_get_global_queue(25, 0);
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __103__DNDNotificationsService_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_407;
      v54[3] = &unk_278F88550;
      v54[4] = self;
      v55 = v28;
      v56 = handlerCopy;
      v22 = v28;
      dispatch_async(v30, v54);

      v24 = v55;
      goto LABEL_25;
    }

    if ([categoryIdentifier isEqualToString:@"suggestion.trigger"] && objc_msgSend(actionIdentifier, "isEqualToString:", @"suggestion.trigger.accept"))
    {
      notification3 = [responseCopy notification];
      request3 = [notification3 request];
      content3 = [request3 content];
      userInfo = [content3 userInfo];

      v34 = [userInfo objectForKey:@"suggestionUUID"];
      v35 = DNDLogNotifications;
      if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v63 = v34;
        _os_log_impl(&dword_249121000, v35, OS_LOG_TYPE_DEFAULT, "Accept start suggestion always; suggestionUUID=%{public}@", buf, 0xCu);
      }

      v36 = dispatch_get_global_queue(25, 0);
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __103__DNDNotificationsService_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_408;
      v51[3] = &unk_278F88550;
      v51[4] = self;
      v52 = v34;
      v53 = handlerCopy;
      v22 = v34;
      dispatch_async(v36, v51);

      v24 = v52;
      goto LABEL_25;
    }

    if ([categoryIdentifier isEqualToString:@"suggestion.trigger"] && ((objc_msgSend(actionIdentifier, "isEqualToString:", @"suggestion.trigger.decline") & 1) != 0 || objc_msgSend(actionIdentifier, "isEqualToString:", *MEMORY[0x277CE20F0])))
    {
      notification4 = [responseCopy notification];
      request4 = [notification4 request];
      content4 = [request4 content];
      userInfo = [content4 userInfo];

      v40 = [userInfo objectForKey:@"suggestionUUID"];
      v41 = DNDLogNotifications;
      if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v63 = v40;
        _os_log_impl(&dword_249121000, v41, OS_LOG_TYPE_DEFAULT, "Decline suggestion; suggestionUUID=%{public}@", buf, 0xCu);
      }

      v42 = dispatch_get_global_queue(25, 0);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __103__DNDNotificationsService_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_414;
      v48[3] = &unk_278F88550;
      v48[4] = self;
      v49 = v40;
      v50 = handlerCopy;
      v22 = v40;
      dispatch_async(v42, v48);

      v24 = v49;
      goto LABEL_25;
    }

    if (![actionIdentifier isEqualToString:@"stop"])
    {
      goto LABEL_27;
    }

    notificationsAssertionService = self->_notificationsAssertionService;
    v47 = 0;
    v45 = [(DNDModeAssertionService *)notificationsAssertionService invalidateAllActiveModeAssertionsWithError:&v47];
    userInfo = v47;
    v46 = DNDLogNotifications;
    if (v45)
    {
      if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_249121000, v46, OS_LOG_TYPE_DEFAULT, "Invalidated all assertions", buf, 2u);
        if (!handlerCopy)
        {
          goto LABEL_26;
        }

        goto LABEL_35;
      }
    }

    else if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_ERROR))
    {
      [DNDNotificationsService userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:];
      if (!handlerCopy)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }

    if (!handlerCopy)
    {
      goto LABEL_26;
    }

LABEL_35:
    handlerCopy[2](handlerCopy);
    goto LABEL_26;
  }

  notification5 = [responseCopy notification];
  request5 = [notification5 request];
  content5 = [request5 content];
  userInfo2 = [content5 userInfo];

  v19 = [userInfo2 objectForKey:@"suggestionUUID"];
  v20 = DNDLogNotifications;
  if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v63 = v19;
    _os_log_impl(&dword_249121000, v20, OS_LOG_TYPE_DEFAULT, "Accept setup suggestion; suggestionUUID=%{public}@", buf, 0xCu);
  }

  v21 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__DNDNotificationsService_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
  block[3] = &unk_278F88528;
  v58 = userInfo2;
  selfCopy = self;
  v60 = v19;
  v61 = handlerCopy;
  v22 = v19;
  userInfo = userInfo2;
  dispatch_async(v21, block);

  v24 = v58;
LABEL_25:

LABEL_26:
LABEL_27:

  v43 = *MEMORY[0x277D85DE8];
}

void __103__DNDNotificationsService_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke(uint64_t a1)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKey:@"semanticType"];
  v3 = [MEMORY[0x277CBEBC0] dnd_setupURLWithSemanticType:{objc_msgSend(v2, "integerValue")}];
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v5 = *MEMORY[0x277D0AC70];
  v15[0] = *MEMORY[0x277D0AC58];
  v15[1] = v5;
  v16[0] = MEMORY[0x277CBEC38];
  v16[1] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = 0;
  v7 = [v4 openSensitiveURL:v3 withOptions:v6 error:&v12];
  v8 = v12;

  v9 = DNDLogNotifications;
  if (v7)
  {
    if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v3;
      _os_log_impl(&dword_249121000, v9, OS_LOG_TYPE_DEFAULT, "Launched URL %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_ERROR))
  {
    __103__DNDNotificationsService_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_cold_1();
  }

  [*(*(a1 + 40) + 96) userDidAcceptActivitySetUpSuggestionWithSuggestionUUID:*(a1 + 48) location:1];
  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __103__DNDNotificationsService_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_407(void *a1)
{
  [*(a1[4] + 96) userDidRejectActivitySetUpSuggestionWithSuggestionUUID:a1[5] location:1];
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __103__DNDNotificationsService_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_408(void *a1)
{
  v1 = a1;
  v49 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 96) suggestionWithUUID:a1[5]];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 triggers];
  v8 = [*(v1[4] + 96) triggersToDNDModeConfigurationTriggers:v7];
  if (v8)
  {
    v9 = v1[4];
    v10 = [v6 uuidString];
    v11 = [v9 _modeConfigurationForIdentifier:v10];

    if (v11)
    {
      v30 = v7;
      v31 = v6;
      v32 = v1;
      v33 = v4;
      v28 = [v11 mutableCopy];
      v29 = v11;
      v12 = [v11 triggers];
      v36 = [v12 mutableCopy];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = v8;
      v37 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v37)
      {
        v35 = *v44;
        do
        {
          v13 = 0;
          do
          {
            if (*v44 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v38 = v13;
            v14 = *(*(&v43 + 1) + 8 * v13);
            v15 = [MEMORY[0x277CBEB18] array];
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v16 = v36;
            v17 = [v16 countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v40;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v40 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v39 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v22 = objc_opt_class();
                    v23 = NSStringFromClass(v22);
                    v24 = [&unk_285C23F68 containsObject:v23];

                    if (v24)
                    {
                      [v15 addObject:v21];
                    }
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v39 objects:v47 count:16];
              }

              while (v18);
            }

            [v16 removeObjectsInArray:v15];
            [v16 addObject:v14];

            v13 = v38 + 1;
          }

          while (v38 + 1 != v37);
          v37 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v37);
      }

      v25 = [v36 copy];
      [v28 setTriggers:v25];

      v1 = v32;
      [v32[4] _setModeConfiguration:v28];

      v4 = v33;
      v7 = v30;
      v6 = v31;
      v11 = v29;
    }

    [*(v1[4] + 96) userDidAcceptTriggerSuggestionWithSuggestionUUID:v1[5] acceptedTriggers:v8 location:1];
  }

  v26 = v1[6];
  if (v26)
  {
    (*(v26 + 16))();
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __103__DNDNotificationsService_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_414(void *a1)
{
  [*(a1[4] + 96) userDidRejectTriggerSuggestionWithSuggestionUUID:a1[5] location:1];
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)_modeForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  notificationsModeConfigurationService = self->_notificationsModeConfigurationService;
  v12 = 0;
  v6 = [(DNDModeConfigurationService *)notificationsModeConfigurationService availableModesReturningError:&v12];
  v7 = v12;
  if (v7)
  {
    if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_ERROR))
    {
      [DNDNotificationsService _modeForIdentifier:];
    }

    v8 = 0;
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__DNDNotificationsService__modeForIdentifier___block_invoke;
    v10[3] = &unk_278F88578;
    v11 = identifierCopy;
    v8 = [v6 bs_firstObjectPassingTest:v10];
  }

  return v8;
}

uint64_t __46__DNDNotificationsService__modeForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 UUIDString];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (id)_modeConfigurationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  notificationsModeConfigurationService = self->_notificationsModeConfigurationService;
  v13 = 0;
  v6 = [(DNDModeConfigurationService *)notificationsModeConfigurationService modeConfigurationsReturningError:&v13];
  v7 = v13;
  if (v7)
  {
    if (os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_ERROR))
    {
      [DNDNotificationsService _modeConfigurationForIdentifier:];
    }

    v8 = 0;
  }

  else
  {
    allValues = [v6 allValues];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__DNDNotificationsService__modeConfigurationForIdentifier___block_invoke;
    v11[3] = &unk_278F885A0;
    v12 = identifierCopy;
    v8 = [allValues bs_firstObjectPassingTest:v11];
  }

  return v8;
}

uint64_t __59__DNDNotificationsService__modeConfigurationForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mode];
  v4 = [v3 identifier];
  v5 = [v4 UUIDString];
  v6 = [v5 isEqual:*(a1 + 32)];

  return v6;
}

- (void)_setModeConfiguration:(id)configuration
{
  notificationsModeConfigurationService = self->_notificationsModeConfigurationService;
  v5 = 0;
  [(DNDModeConfigurationService *)notificationsModeConfigurationService setModeConfiguration:configuration error:&v5];
  v4 = v5;
  if (v4 && os_log_type_enabled(DNDLogNotifications, OS_LOG_TYPE_ERROR))
  {
    [DNDNotificationsService _setModeConfiguration:];
  }
}

void __92__DNDNotificationsService_activitySuggestionClient_didSuggestTriggersForConfiguredActivity___block_invoke_cold_1(void **a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 uuidString];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_249121000, v3, OS_LOG_TYPE_ERROR, "Unable to fetch find mode for suggestion; identifier=: %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_249121000, v0, v1, "Unable to invalidate all assertions; error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __103__DNDNotificationsService_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_249121000, v1, OS_LOG_TYPE_ERROR, "Failed to launch URL %{public}@: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_modeForIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_249121000, v0, v1, "Unable to fetch available modes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_modeConfigurationForIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_249121000, v0, v1, "Unable to fetch mode configurations: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setModeConfiguration:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_249121000, v0, v1, "Unable to set mode configuration: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end