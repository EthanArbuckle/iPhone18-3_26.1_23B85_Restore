@interface CHTrendsNotificationManager
- (CHTrendsNotificationManager)initWithProfile:(id)a3;
- (HDProfile)profile;
- (int64_t)notificationDelayNumberOfMinutes;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)notificationDidSendSuccessfully;
- (void)profileDidBecomeReady:(id)a3;
- (void)protectedDataBecameAvailable;
- (void)sendNotificationIfAllowed;
- (void)sendNotificationWithCompletion:(id)a3;
@end

@implementation CHTrendsNotificationManager

- (void)protectedDataBecameAvailable
{
  v13 = *MEMORY[0x277D85DE8];
  if (CHIsFitnessInstalled())
  {
    keyValueDomain = self->_keyValueDomain;
    v10 = 0;
    v4 = [(HDKeyValueDomain *)keyValueDomain numberForKey:@"TrendsNotificationManagerDidSendNotification" error:&v10];
    v5 = v10;
    if (v5)
    {
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC270];
      if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v12 = v5;
        _os_log_impl(&dword_243CCD000, v6, OS_LOG_TYPE_DEFAULT, "Failed to retrieve key-value BOOLean for trends notification key: %{public}@", buf, 0xCu);
      }
    }

    if (v4 && ([v4 BOOLValue] & 1) != 0)
    {
      v7 = [(CHTrendsNotificationManager *)self profile];
      v8 = [v7 database];
      [v8 removeProtectedDataObserver:self];
    }

    else
    {
      [(CHTrendsNotificationManager *)self sendNotificationIfAllowed];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sendNotificationIfAllowed
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_243CCD000, a2, OS_LOG_TYPE_ERROR, "Error fetching user birth date: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (CHTrendsNotificationManager)initWithProfile:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CHTrendsNotificationManager;
  v5 = [(CHTrendsNotificationManager *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = objc_alloc(MEMORY[0x277D10718]);
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v9 = [v7 initWithCategory:1 domainName:@"TrendsNotificationManager" profile:WeakRetained];
    keyValueDomain = v6->_keyValueDomain;
    v6->_keyValueDomain = v9;

    v11 = objc_loadWeakRetained(&v6->_profile);
    v12 = [v11 database];
    [v12 addProtectedDataObserver:v6];

    v13 = objc_loadWeakRetained(&v6->_profile);
    [v13 registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  if (a4)
  {
    [(CHTrendsNotificationManager *)self protectedDataBecameAvailable];
  }
}

- (void)profileDidBecomeReady:(id)a3
{
  v4 = [(CHTrendsNotificationManager *)self profile];
  v5 = [v4 database];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__CHTrendsNotificationManager_profileDidBecomeReady___block_invoke;
  v6[3] = &unk_278DF00F0;
  v6[4] = self;
  [v5 performWhenDataProtectedByFirstUnlockIsAvailable:v6];
}

void __53__CHTrendsNotificationManager_profileDidBecomeReady___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained database];
  v4 = [v3 isProtectedDataAvailable];

  if (v4)
  {
    v5 = *(a1 + 32);

    [v5 protectedDataBecameAvailable];
  }
}

void __56__CHTrendsNotificationManager_sendNotificationIfAllowed__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  *(*(a1[4] + 8) + 24) = [v3 activityMoveMode];
  if ([v3 _activitySummaryIndex] >= a1[7])
  {
    ++*(*(a1[5] + 8) + 24);
  }

  v4 = [v3 _activitySummaryIndex];

  if (v4 >= a1[8])
  {
    ++*(*(a1[6] + 8) + 24);
  }
}

void __56__CHTrendsNotificationManager_sendNotificationIfAllowed__block_invoke_314(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_243CCD000, v4, OS_LOG_TYPE_DEFAULT, "Failed to send notification: %{public}@", &v7, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained notificationDidSendSuccessfully];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)notificationDidSendSuccessfully
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(CHTrendsNotificationManager *)self keyValueDomain];
  v11 = 0;
  v4 = [v3 setNumber:MEMORY[0x277CBEC38] forKey:@"TrendsNotificationManagerDidSendNotification" error:&v11];
  v5 = v11;

  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC270];
  v7 = os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_243CCD000, v6, OS_LOG_TYPE_DEFAULT, "Successfully sent trends notification.", buf, 2u);
    }

    v8 = [(CHTrendsNotificationManager *)self profile];
    v9 = [v8 database];
    [v9 removeProtectedDataObserver:self];
  }

  else if (v7)
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&dword_243CCD000, v6, OS_LOG_TYPE_DEFAULT, "Failed to set key-value BOOLean for trends notification key: %{public}@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (int64_t)notificationDelayNumberOfMinutes
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 integerForKey:@"OverrideTrendsNumberOfMinutesToWaitForNotification"];

  if (v3 <= 0)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

- (void)sendNotificationWithCompletion:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CE1F60];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"TRENDS_NOTIFICATION_TITLE" value:&stru_2856EDB90 table:@"Localizable"];
  [v6 setTitle:v8];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"TRENDS_NOTIFICATION_SUBTITLE" value:&stru_2856EDB90 table:@"Localizable"];
  [v6 setSubtitle:v10];

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"TRENDS_NOTIFICATION_BODY" value:&stru_2856EDB90 table:@"Localizable"];
  [v6 setBody:v12];

  v13 = [MEMORY[0x277CBEA80] currentCalendar];
  v14 = [(CHTrendsNotificationManager *)self notificationDelayNumberOfMinutes];
  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = [v13 dateByAddingUnit:64 value:v14 toDate:v15 options:0];

  v17 = [MEMORY[0x277CBEA80] currentCalendar];
  v18 = [v17 components:96 fromDate:v16];

  v19 = [MEMORY[0x277CE1F38] triggerWithDateMatchingComponents:v18 repeats:0];
  _HKInitializeLogging();
  v20 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138543362;
    v25 = v19;
    _os_log_impl(&dword_243CCD000, v20, OS_LOG_TYPE_DEFAULT, "Posting notification with trigger %{public}@", &v24, 0xCu);
  }

  v21 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"ACTIVITY_TRENDS_READY" content:v6 trigger:v19];
  v22 = [(CHTrendsNotificationManager *)self userNotificationCenter];
  [v22 addNotificationRequest:v21 withCompletionHandler:v5];

  v23 = *MEMORY[0x277D85DE8];
}

@end