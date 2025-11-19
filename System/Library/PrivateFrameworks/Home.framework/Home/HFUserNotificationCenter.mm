@interface HFUserNotificationCenter
+ (id)sharedInstance;
- (HFUserNotificationCenter)init;
- (HFUserNotificationPresentationHandling)presentationHandler;
- (id)notificationSettings;
- (void)_applicationWillEnterForeground;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4;
@end

@implementation HFUserNotificationCenter

+ (id)sharedInstance
{
  if (_MergedGlobals_261 != -1)
  {
    dispatch_once(&_MergedGlobals_261, &__block_literal_global_4_6);
  }

  v3 = qword_280E03058;

  return v3;
}

void __42__HFUserNotificationCenter_sharedInstance__block_invoke_2()
{
  v0 = objc_alloc_init(HFUserNotificationCenter);
  v1 = qword_280E03058;
  qword_280E03058 = v0;
}

- (HFUserNotificationCenter)init
{
  v13.receiver = self;
  v13.super_class = HFUserNotificationCenter;
  v2 = [(HFUserNotificationCenter *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(HFUserNotificationCenter *)v2 setObservers:v3];

    v4 = +[HFExecutionEnvironment sharedInstance];
    v5 = [v4 hostProcess];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x277CE2028]);
      v7 = HFHomeAppBundleID();
      v8 = [v6 initWithBundleIdentifier:v7];
      [(HFUserNotificationCenter *)v2 setUserNotificationCenter:v8];
    }

    else
    {
      v7 = [MEMORY[0x277CE2028] currentNotificationCenter];
      [(HFUserNotificationCenter *)v2 setUserNotificationCenter:v7];
    }

    v9 = [(HFUserNotificationCenter *)v2 userNotificationCenter];
    [v9 setDelegate:v2];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v2 selector:sel__applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v2 selector:sel__applicationWillEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v2;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFUserNotificationCenter *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFUserNotificationCenter *)self observers];
  [v5 removeObject:v4];
}

- (void)_applicationWillEnterForeground
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(HFUserNotificationCenter *)self observers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 settingsInvalidatedForNotificationCenter:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)notificationSettings
{
  v3 = [(HFUserNotificationCenter *)self notificationSettingsFuture];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D2C900]);
    [(HFUserNotificationCenter *)self setNotificationSettingsFuture:v4];

    v5 = [(HFUserNotificationCenter *)self userNotificationCenter];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__HFUserNotificationCenter_notificationSettings__block_invoke;
    v8[3] = &unk_277DFB650;
    v8[4] = self;
    [v5 getNotificationSettingsWithCompletionHandler:v8];
  }

  v6 = [(HFUserNotificationCenter *)self notificationSettingsFuture];

  return v6;
}

void __48__HFUserNotificationCenter_notificationSettings__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) notificationSettingsFuture];
    [v4 finishWithResult:v3];
  }

  else
  {
    v5 = HFLogForCategory(0x34uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Failed to fetch user notification settings. Perhaps this process is missing the necessary entitlement (in which case it probably shouldn't be using this API).", v7, 2u);
    }

    v4 = [*(a1 + 32) notificationSettingsFuture];
    v6 = [MEMORY[0x277CCA9B8] na_genericError];
    [v4 finishWithError:v6];
  }
}

- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HFUserNotificationCenter_userNotificationCenter_openSettingsForNotification___block_invoke;
  v8[3] = &unk_277DF3370;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [v6 performBlock:v8];
}

void __79__HFUserNotificationCenter_userNotificationCenter_openSettingsForNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) request];
  v3 = [v2 content];
  v4 = [v3 defaultActionURL];

  v5 = HFLogForCategory(0x34uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Received request to open settings for notification: %@ (object URL: %@)", &v9, 0x16u);
  }

  v7 = [*(a1 + 40) presentationHandler];
  [v7 notificationCenter:*(a1 + 40) presentCustomSettingsForNotificationWithObjectURL:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __104__HFUserNotificationCenter_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
  v13[3] = &unk_277DFB6A0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a2;
  v11 = v9;
  v12 = v8;
  [v10 performBlock:v13];
}

void __104__HFUserNotificationCenter_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke(uint64_t a1)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) notification];
  v3 = [v2 request];
  v4 = [v3 content];
  v5 = [v4 userInfo];

  v6 = HFLogForCategory(0x34uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) notification];
    *buf = 138412546;
    v36 = v7;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "didReceiveNotificationResponse for notification: %@, userInfo:%@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) notification];
  v9 = [v8 request];
  v10 = [v9 content];
  v11 = [v10 categoryIdentifier];

  if ([v11 isEqualToString:@"HomeAppBulletinAudioNotificationCategory"])
  {
    v12 = +[HFURLComponents dropInURLComponents];
    v13 = objc_alloc(MEMORY[0x277CCAD18]);
    v14 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCF328]];
    v15 = [v13 initWithName:@"homeId" value:v14];

    v16 = objc_alloc(MEMORY[0x277CCAD18]);
    v17 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCF318]];
    v18 = [v16 initWithName:@"accessoryId" value:v17];

    v41[0] = v15;
    v41[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    [v12 setQueryItems:v19];

    v20 = [v12 URL];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD13D8]];
  v22 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCF2F8]];
  v23 = v22;
  if (v21 | v20)
  {
    if (v22)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"&%@=%@", @"cameraClip", v22];
      v25 = [v21 stringByAppendingString:v24];

      v21 = v25;
    }

    if (!v20)
    {
      v20 = [MEMORY[0x277CBEBC0] URLWithString:v21];
    }

    v26 = HFLogForCategory(0x34uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 40);
      v28 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v36 = v27;
      v37 = 2112;
      v38 = v28;
      v39 = 2112;
      v40 = v20;
      _os_log_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_DEFAULT, "%@: %@ Notification URL %@", buf, 0x20u);
    }

    v29 = [*(a1 + 40) presentationHandler];
    v30 = [v29 notificationCenter:*(a1 + 40) presentNotificationWithObjectURL:v20];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __104__HFUserNotificationCenter_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_30;
    v33[3] = &unk_277DFB678;
    v34 = *(a1 + 48);
    v31 = [v30 addCompletionBlock:v33];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __104__HFUserNotificationCenter_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_30(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory(0x34uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "[HFUserNotificationCenter-userNotificationCenter:didReceiveNotificationResponse:] Presentation failed with error: %{public}@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (HFUserNotificationPresentationHandling)presentationHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationHandler);

  return WeakRetained;
}

@end