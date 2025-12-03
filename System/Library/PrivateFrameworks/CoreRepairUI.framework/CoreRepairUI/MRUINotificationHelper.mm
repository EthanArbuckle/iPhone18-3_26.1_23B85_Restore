@interface MRUINotificationHelper
+ (id)sharedSingleton;
- (MRUINotificationHelper)init;
- (id)_init;
- (void)clearRepairFollowUpWithUniqueID:(id)d;
- (void)createRepairFollowUpWithNotification:(BOOL)notification actionURL:(id)l repairTitle:(id)title infoText:(id)text itemID:(id)d timeInterval:(double)interval componentName:(id)name;
- (void)popUpNotificationNowWithMessage:(id)message title:(id)title openSensitiveURL:(id)l componentName:(id)name legacyPopup:(BOOL)popup;
- (void)removeRepairNotificationsWithUniqueID:(id)d;
@end

@implementation MRUINotificationHelper

- (MRUINotificationHelper)init
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(sel_sharedSingleton);
  v9 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Use +[%@ %@] instead of -%@.", v7, v8, v9}];

  return 0;
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = MRUINotificationHelper;
  v2 = [(MRUINotificationHelper *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->delay = 0;
    v4 = dispatch_queue_create("com.apple.mobilerepaird.notificationq", 0);
    v5 = notificationQueue;
    notificationQueue = v4;

    v6 = objc_opt_new();
    clientIDtoFollowupItemCache = v3->clientIDtoFollowupItemCache;
    v3->clientIDtoFollowupItemCache = v6;
  }

  return v3;
}

+ (id)sharedSingleton
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MRUINotificationHelper_sharedSingleton__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedSingleton_once_6 != -1)
  {
    dispatch_once(&sharedSingleton_once_6, block);
  }

  v2 = sharedSingleton_sharedInstance_6;

  return v2;
}

uint64_t __41__MRUINotificationHelper_sharedSingleton__block_invoke(uint64_t a1)
{
  sharedSingleton_sharedInstance_6 = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

- (void)createRepairFollowUpWithNotification:(BOOL)notification actionURL:(id)l repairTitle:(id)title infoText:(id)text itemID:(id)d timeInterval:(double)interval componentName:(id)name
{
  lCopy = l;
  titleCopy = title;
  textCopy = text;
  dCopy = d;
  nameCopy = name;
  v20 = notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__MRUINotificationHelper_createRepairFollowUpWithNotification_actionURL_repairTitle_infoText_itemID_timeInterval_componentName___block_invoke;
  block[3] = &unk_278EB1ED8;
  notificationCopy = notification;
  v27 = lCopy;
  v28 = titleCopy;
  v29 = textCopy;
  v30 = dCopy;
  v31 = nameCopy;
  selfCopy = self;
  v21 = nameCopy;
  v22 = dCopy;
  v23 = textCopy;
  v24 = titleCopy;
  v25 = lCopy;
  dispatch_sync(v20, block);
}

void __128__MRUINotificationHelper_createRepairFollowUpWithNotification_actionURL_repairTitle_infoText_itemID_timeInterval_componentName___block_invoke(uint64_t a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v31 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.mobilerepair"];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CFE4F8];
  v5 = [v3 localizedStringWithKey:@"LEARN_MORE" defaultString:@"LEARN_MORE"];
  v6 = [v4 actionWithLabel:v5 url:*(a1 + 32)];

  [v2 addObject:v6];
  v7 = objc_alloc_init(MEMORY[0x277CFE510]);
  v8 = v7;
  if (*(a1 + 80) == 1)
  {
    [v7 setFrequency:0.0];
    v9 = [v3 localizedStringWithKey:*(a1 + 40) defaultString:*(a1 + 40)];
    [v8 setTitle:v9];

    v10 = [v3 localizedStringWithKey:*(a1 + 48) defaultString:*(a1 + 48)];
    [v8 setInformativeText:v10];

    v11 = [v3 localizedStringWithKey:@"LEARN_MORE" defaultString:@"LEARN_MORE"];
    [v8 setUnlockActionLabel:v11];

    [v8 setFirstNotificationDelay:0.0];
    [v8 setActivateAction:v6];
    v12 = objc_alloc_init(MEMORY[0x277CFE4F8]);
    [v8 setClearAction:v12];

    v13 = MEMORY[0x277CBEB98];
    v35[0] = *MEMORY[0x277CFE498];
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    v15 = [v13 setWithArray:v14];
    [v8 setOptions:v15];
  }

  v16 = objc_alloc_init(MEMORY[0x277CFE508]);
  [v16 setUniqueIdentifier:*(a1 + 56)];
  [v16 setGroupIdentifier:*MEMORY[0x277CFE440]];
  v17 = MEMORY[0x277CCACA8];
  v18 = [v3 localizedStringWithKey:*(a1 + 40) defaultString:*(a1 + 40)];
  v19 = [v3 localizedStringWithKey:*(a1 + 64) defaultString:*(a1 + 64)];
  v20 = [v17 stringWithFormat:v18, v19];
  [v16 setTitle:v20];

  v21 = MEMORY[0x277CCACA8];
  v22 = [v3 localizedStringWithKey:*(a1 + 48) defaultString:*(a1 + 48)];
  v23 = [v3 localizedStringWithKey:*(a1 + 64) defaultString:*(a1 + 64)];
  v24 = [v21 stringWithFormat:v22, v23];
  [v16 setInformativeText:v24];

  [v16 setDisplayStyle:2];
  [v16 setActions:v2];
  if (*(a1 + 80))
  {
    v25 = v8;
  }

  else
  {
    v25 = 0;
  }

  [v16 setNotification:v25];
  [v16 setTargetBundleIdentifier:*MEMORY[0x277CFE3F8]];
  notify_post("com.apple.mobilerepairui.reload");
  v26 = handleForCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v16;
    _os_log_impl(&dword_247875000, v26, OS_LOG_TYPE_DEFAULT, "Posting item: %@", buf, 0xCu);
  }

  v32 = 0;
  v27 = [v31 postFollowUpItem:v16 error:&v32];
  v28 = v32;
  if ((v27 & 1) == 0)
  {
    v29 = handleForCategory(1uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      __128__MRUINotificationHelper_createRepairFollowUpWithNotification_actionURL_repairTitle_infoText_itemID_timeInterval_componentName___block_invoke_cold_1(v28, v29);
    }
  }

  [*(*(a1 + 72) + 16) setObject:v16 forKeyedSubscript:*(a1 + 56)];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)popUpNotificationNowWithMessage:(id)message title:(id)title openSensitiveURL:(id)l componentName:(id)name legacyPopup:(BOOL)popup
{
  popupCopy = popup;
  v39 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  titleCopy = title;
  lCopy = l;
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  groupStandardUserDefaults = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
  v18 = [groupStandardUserDefaults BOOLForKey:@"settingsView"];

  v19 = handleForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v36) = v18;
    _os_log_impl(&dword_247875000, v19, OS_LOG_TYPE_DEFAULT, " value is:%d", buf, 8u);
  }

  if (!v18 || popupCopy)
  {
    isSetupStillRunning = [(MRUINotificationHelper *)selfCopy isSetupStillRunning];
    while (isSetupStillRunning)
    {
      v21 = objc_autoreleasePoolPush();
      isSetupStillRunning = [(MRUINotificationHelper *)selfCopy isSetupStillRunning];
      objc_autoreleasePoolPop(v21);
      sleep(3u);
    }

    v22 = handleForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      delay = selfCopy->delay;
      *buf = 138412546;
      v36 = titleCopy;
      v37 = 1024;
      v38 = delay;
      _os_log_impl(&dword_247875000, v22, OS_LOG_TYPE_DEFAULT, "Displaying %@ notification after %d delay", buf, 0x12u);
    }

    v24 = dispatch_semaphore_create(0);
    v25 = dispatch_time(0, 1000000000 * selfCopy->delay);
    v26 = notificationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __107__MRUINotificationHelper_popUpNotificationNowWithMessage_title_openSensitiveURL_componentName_legacyPopup___block_invoke;
    block[3] = &unk_278EB1F00;
    v34 = popupCopy;
    v30 = v24;
    v31 = titleCopy;
    v32 = messageCopy;
    v33 = lCopy;
    v27 = v24;
    dispatch_after(v25, v26, block);
    dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
    selfCopy->delay += 5;
  }

  objc_sync_exit(selfCopy);

  v28 = *MEMORY[0x277D85DE8];
}

void __107__MRUINotificationHelper_popUpNotificationNowWithMessage_title_openSensitiveURL_componentName_legacyPopup___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
  v3 = [v2 BOOLForKey:@"settingsView"];

  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v50) = v3;
    _os_log_impl(&dword_247875000, v4, OS_LOG_TYPE_DEFAULT, " value is:%d", buf, 8u);
  }

  if (v3 && (*(a1 + 64) & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/CoreRepairUI.framework/"];
    v6 = [v5 pathForResource:@"ApplicationIcon" ofType:@"icns"];

    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v6;
      _os_log_impl(&dword_247875000, v7, OS_LOG_TYPE_DEFAULT, "iconpath is:%@", buf, 0xCu);
    }

    responseFlags = 0;
    error = 0;
    v8 = objc_opt_new();
    v9 = v8;
    if (*(a1 + 64) == 1)
    {
      v44 = MEMORY[0x277CBEAC0];
      v10 = [v8 localizedStringWithKey:*(a1 + 40) defaultString:*(a1 + 40)];
      v43 = *MEMORY[0x277CBF188];
      v42 = [v9 localizedStringWithKey:*(a1 + 48) defaultString:*(a1 + 48)];
      v41 = *MEMORY[0x277CBF198];
      v11 = [v9 localizedStringWithKey:@"LEARN_MORE" defaultString:@"LEARN_MORE"];
      v12 = *MEMORY[0x277CBF1E8];
      v45 = a1;
      v13 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v14 = v6;
      v15 = *MEMORY[0x277D67320];
      v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v17 = v9;
      v18 = *MEMORY[0x277D67340];
      v19 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v40 = v18;
      v9 = v17;
      v39 = v15;
      v6 = v14;
      v20 = [v44 dictionaryWithObjectsAndKeys:{v10, v43, v42, v41, v11, v12, v13, v39, v16, v40, v19, *MEMORY[0x277D672D0], &unk_28597F140, *MEMORY[0x277D67430], 0}];

      a1 = v45;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v21 = [v9 localizedStringWithKey:*(a1 + 40) defaultString:*(a1 + 40)];
      [v10 setObject:v21 forKeyedSubscript:*MEMORY[0x277CBF188]];

      v22 = [v9 localizedStringWithKey:*(a1 + 48) defaultString:*(a1 + 48)];
      [v10 setObject:v22 forKeyedSubscript:*MEMORY[0x277CBF198]];

      v23 = [v9 localizedStringWithKey:@"OK" defaultString:@"OK"];
      [v10 setObject:v23 forKeyedSubscript:*MEMORY[0x277CBF1E8]];

      v24 = [v9 localizedStringWithKey:@"SETTINGS" defaultString:@"SETTINGS"];
      [v10 setObject:v24 forKeyedSubscript:*MEMORY[0x277CBF1C0]];

      v25 = [MEMORY[0x277CCABB0] numberWithBool:0];
      [v10 setObject:v25 forKeyedSubscript:*MEMORY[0x277D67320]];

      v26 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [v10 setObject:v26 forKeyedSubscript:*MEMORY[0x277D67340]];

      v27 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [v10 setObject:v27 forKeyedSubscript:*MEMORY[0x277D672D0]];

      [v10 setObject:&unk_28597F140 forKeyedSubscript:*MEMORY[0x277D67430]];
      v20 = [v10 copy];
    }

    v28 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, &error, v20);
    if (v28)
    {
      v29 = v28;
      CFUserNotificationReceiveResponse(v28, 0.0, &responseFlags);
      if (responseFlags == 1)
      {
        v30 = handleForCategory(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *(a1 + 40);
          *buf = 138412290;
          v50 = v31;
          _os_log_impl(&dword_247875000, v30, OS_LOG_TYPE_DEFAULT, "%@ User pressed button", buf, 0xCu);
        }

        v32 = [MEMORY[0x277CC1E80] defaultWorkspace];
        v33 = *(a1 + 56);
        v46 = 0;
        v34 = [v32 openSensitiveURL:v33 withOptions:0 error:&v46];
        v35 = v46;

        if ((v34 & 1) == 0)
        {
          v36 = handleForCategory(1uLL);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            __107__MRUINotificationHelper_popUpNotificationNowWithMessage_title_openSensitiveURL_componentName_legacyPopup___block_invoke_cold_1((a1 + 56), v35, v36);
          }
        }
      }

      CFRelease(v29);
    }

    else
    {
      v37 = handleForCategory(1uLL);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        __107__MRUINotificationHelper_popUpNotificationNowWithMessage_title_openSensitiveURL_componentName_legacyPopup___block_invoke_cold_2(a1, &error, v37);
      }
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)removeRepairNotificationsWithUniqueID:(id)d
{
  dCopy = d;
  v4 = notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__MRUINotificationHelper_removeRepairNotificationsWithUniqueID___block_invoke;
  block[3] = &unk_278EB1F28;
  v7 = dCopy;
  v5 = dCopy;
  dispatch_sync(v4, block);
}

void __64__MRUINotificationHelper_removeRepairNotificationsWithUniqueID___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = handleForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v40 = v3;
    _os_log_impl(&dword_247875000, v2, OS_LOG_TYPE_DEFAULT, "removeRepairNotificationsWithUniqueID:%@", buf, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.Preferences"];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [v4 deliveredNotifications];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v32 + 1) + 8 * i) request];
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:*(a1 + 32)];

        if (v12)
        {
          v13 = handleForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(a1 + 32);
            *buf = 138412546;
            v40 = v14;
            v41 = 2112;
            v42 = v10;
            _os_log_impl(&dword_247875000, v13, OS_LOG_TYPE_DEFAULT, "matched notification id:%@::%@", buf, 0x16u);
          }

          v38 = *(a1 + 32);
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
          [v4 removeDeliveredNotificationsWithIdentifiers:v15];

          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v43 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [v4 pendingNotificationRequests];
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v28 + 1) + 8 * j);
        v22 = [v21 identifier];
        v23 = [v22 isEqualToString:*(a1 + 32)];

        if (v23)
        {
          v24 = handleForCategory(0);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a1 + 32);
            *buf = 138412546;
            v40 = v25;
            v41 = 2112;
            v42 = v21;
            _os_log_impl(&dword_247875000, v24, OS_LOG_TYPE_DEFAULT, "matched notification id:%@::%@", buf, 0x16u);
          }

          v36 = *(a1 + 32);
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
          [v4 removeDeliveredNotificationsWithIdentifiers:v26];

          goto LABEL_27;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)clearRepairFollowUpWithUniqueID:(id)d
{
  dCopy = d;
  v4 = notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MRUINotificationHelper_clearRepairFollowUpWithUniqueID___block_invoke;
  block[3] = &unk_278EB1F28;
  v7 = dCopy;
  v5 = dCopy;
  dispatch_sync(v4, block);
}

void __58__MRUINotificationHelper_clearRepairFollowUpWithUniqueID___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.mobilerepair"];
  v26 = 0;
  v3 = [v2 pendingFollowUpItems:&v26];
  v4 = v26;
  v5 = handleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v3;
    _os_log_impl(&dword_247875000, v5, OS_LOG_TYPE_DEFAULT, "listing Followups:%@", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 uniqueIdentifier];
        v13 = [v12 isEqualToString:*(a1 + 32)];

        if (v13)
        {
          v14 = handleForCategory(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 32);
            *buf = 138412546;
            v29 = v15;
            v30 = 2112;
            v31 = v11;
            _os_log_impl(&dword_247875000, v14, OS_LOG_TYPE_DEFAULT, "matched id:%@::%@", buf, 0x16u);
          }

          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:{*(a1 + 32), 0}];
          v21 = v4;
          v17 = [v2 clearPendingFollowUpItemsWithUniqueIdentifiers:v16 error:&v21];
          v18 = v21;

          if ((v17 & 1) == 0)
          {
            v19 = handleForCategory(1uLL);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              __58__MRUINotificationHelper_clearRepairFollowUpWithUniqueID___block_invoke_cold_1(v27, v18);
            }
          }

          v4 = v18;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v8);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __52__MRUINotificationHelper_updateFollowupsToNewLocale__block_invoke()
{
  v87 = *MEMORY[0x277D85DE8];
  v81 = 0;
  v66 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.mobilerepair"];
  v0 = [v66 pendingFollowUpItems:&v81];
  v74 = v81;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v0;
  v1 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (v1)
  {
    v2 = v1;
    v72 = *MEMORY[0x277CFE440];
    v73 = *v78;
    v63 = *MEMORY[0x277CFE3F8];
    do
    {
      v3 = 0;
      v64 = v2;
      do
      {
        if (*v78 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v77 + 1) + 8 * v3);
        v5 = objc_alloc_init(MEMORY[0x277CFE508]);
        v6 = [v4 uniqueIdentifier];
        [v5 setUniqueIdentifier:v6];

        [v5 setGroupIdentifier:v72];
        v7 = [v4 uniqueIdentifier];
        v8 = [@"com.apple.mobilerepair.DisplayRepair" isEqualToString:v7];

        v9 = off_278EB1850;
        if (v8)
        {
          goto LABEL_14;
        }

        v10 = [v4 uniqueIdentifier];
        v11 = [@"com.apple.mobilerepair.BatteryRepair" isEqualToString:v10];

        v9 = off_278EB1838;
        if (v11)
        {
          goto LABEL_14;
        }

        v12 = [v4 uniqueIdentifier];
        v13 = [@"com.apple.mobilerepair.CameraRepair" isEqualToString:v12];

        v9 = off_278EB1848;
        if (v13)
        {
          goto LABEL_14;
        }

        v14 = [v4 uniqueIdentifier];
        v15 = [@"com.apple.mobilerepair.BluetoothRepair" isEqualToString:v14];

        v9 = off_278EB1840;
        if (v15)
        {
          goto LABEL_14;
        }

        v16 = [v4 uniqueIdentifier];
        v17 = [@"com.apple.mobilerepair.WifiRepair" isEqualToString:v16];

        v9 = off_278EB1878;
        if (v17)
        {
          goto LABEL_14;
        }

        v18 = [v4 uniqueIdentifier];
        v19 = [@"com.apple.mobilerepair.BasebandRepair" isEqualToString:v18];

        if (v19 & 1) != 0 || ([v4 uniqueIdentifier], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(@"com.apple.mobilerepair.BasebandRepair", "isEqualToString:", v20), v20, (v21))
        {
          v9 = off_278EB1830;
LABEL_14:
          v22 = [(__objc2_class *)*v9 sharedSingleton];
          v23 = [v22 popUpNotificationTitle];

          v24 = [(__objc2_class *)*v9 sharedSingleton];
          v25 = [v24 followUpInfoMessage];

          goto LABEL_15;
        }

        v51 = [v4 uniqueIdentifier];
        v52 = [@"com.apple.mobilerepair.NFCRepair" isEqualToString:v51];

        v9 = off_278EB1860;
        if (v52)
        {
          goto LABEL_14;
        }

        v53 = [v4 uniqueIdentifier];
        v54 = [@"com.apple.mobilerepair.UWBRepair" isEqualToString:v53];

        v9 = off_278EB1870;
        if (v54)
        {
          goto LABEL_14;
        }

        v55 = [v4 uniqueIdentifier];
        v56 = [@"com.apple.mobilerepair.AudioRepair" isEqualToString:v55];

        v9 = off_278EB1828;
        if (v56)
        {
          goto LABEL_14;
        }

        v57 = [v4 uniqueIdentifier];
        v58 = [@"com.apple.mobilerepair.FaceIDRepair" isEqualToString:v57];

        v9 = off_278EB1858;
        if (v58)
        {
          goto LABEL_14;
        }

        v59 = [v4 uniqueIdentifier];
        v60 = [@"com.apple.mobilerepair.TouchIDRepair" isEqualToString:v59];

        v9 = off_278EB1868;
        if (v60)
        {
          goto LABEL_14;
        }

        v25 = 0;
        v23 = 0;
LABEL_15:
        v26 = handleForCategory(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v85 = v23;
          _os_log_impl(&dword_247875000, v26, OS_LOG_TYPE_DEFAULT, "Title key :%@", buf, 0xCu);
        }

        v27 = handleForCategory(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v85 = v25;
          _os_log_impl(&dword_247875000, v27, OS_LOG_TYPE_DEFAULT, "infotext key:%@", buf, 0xCu);
        }

        if (v23 && v25)
        {
          v70 = v3;
          v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v29 = objc_opt_new();
          v30 = v4;
          v67 = v4;
          v31 = MEMORY[0x277CFE4F8];
          v32 = [v29 localizedStringWithKey:@"LEARN_MORE" defaultString:@"LEARN_MORE"];
          [v30 actions];
          v34 = v33 = v25;
          v35 = [v34 firstObject];
          v36 = [v35 url];
          v37 = [v31 actionWithLabel:v32 url:v36];

          v68 = v37;
          [v28 addObject:v37];
          v38 = [v29 localizedStringWithKey:v23 defaultString:v23];
          [v5 setTitle:v38];

          v69 = v29;
          v39 = [v29 localizedStringWithKey:v33 defaultString:v33];
          [v5 setInformativeText:v39];

          [v5 setDisplayStyle:2];
          v71 = v28;
          [v5 setActions:v28];
          [v5 setTargetBundleIdentifier:v63];
          v40 = MEMORY[0x277CBEA60];
          v41 = [v67 uniqueIdentifier];
          v42 = [v40 arrayWithObjects:{v41, 0}];
          v76 = v74;
          LOBYTE(v32) = [v66 clearPendingFollowUpItemsWithUniqueIdentifiers:v42 error:&v76];
          v43 = v76;

          if (v32)
          {
            v44 = handleForCategory(0);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_247875000, v44, OS_LOG_TYPE_DEFAULT, "Successfully deleted the followup", buf, 2u);
            }

            v45 = handleForCategory(0);
            v25 = v33;
            v3 = v70;
            v47 = v68;
            v46 = v69;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v85 = v5;
              _os_log_impl(&dword_247875000, v45, OS_LOG_TYPE_DEFAULT, "Re Posting item: %@", buf, 0xCu);
            }

            v75 = v43;
            v48 = [v66 postFollowUpItem:v5 error:&v75];
            v74 = v75;

            if (v48)
            {
              v49 = v71;
LABEL_35:

              v2 = v64;
              goto LABEL_36;
            }

            v50 = handleForCategory(1uLL);
            v43 = v74;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              __52__MRUINotificationHelper_updateFollowupsToNewLocale__block_invoke_cold_2(v82, v74);
            }

            v49 = v71;
          }

          else
          {
            v50 = handleForCategory(1uLL);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              __58__MRUINotificationHelper_clearRepairFollowUpWithUniqueID___block_invoke_cold_1(v83, v43);
            }

            v25 = v33;
            v49 = v28;
            v46 = v29;
            v3 = v70;
            v47 = v68;
          }

          v74 = v43;
          goto LABEL_35;
        }

LABEL_36:

        ++v3;
      }

      while (v2 != v3);
      v61 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
      v2 = v61;
    }

    while (v61);
  }

  v62 = *MEMORY[0x277D85DE8];
}

void __128__MRUINotificationHelper_createRepairFollowUpWithNotification_actionURL_repairTitle_infoText_itemID_timeInterval_componentName___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_247875000, a2, OS_LOG_TYPE_ERROR, "failed to post followup error:%@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __107__MRUINotificationHelper_popUpNotificationNowWithMessage_title_openSensitiveURL_componentName_legacyPopup___block_invoke_cold_1(uint64_t *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = [a2 localizedDescription];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_247875000, a3, OS_LOG_TYPE_ERROR, "failed to open sensitive url:%@ :: error:%@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __107__MRUINotificationHelper_popUpNotificationNowWithMessage_title_openSensitiveURL_componentName_legacyPopup___block_invoke_cold_2(uint64_t a1, int *a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *a2;
  v6 = 138412546;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_error_impl(&dword_247875000, log, OS_LOG_TYPE_ERROR, "Unable to display %@ notification ERROR:%d", &v6, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__MRUINotificationHelper_clearRepairFollowUpWithUniqueID___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_1(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_1_0(&dword_247875000, v5, v6, "failed to clear Followup error:%@");
}

void __52__MRUINotificationHelper_updateFollowupsToNewLocale__block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_1(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_1_0(&dword_247875000, v5, v6, "failed to post followup error:%@");
}

@end