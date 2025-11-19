@interface HRAtrialFibrillationNotificationManager
- (BOOL)_allowAtrialFibrillationDisableOrReEnableRemotelyAlertWithFeatureStatus:(id)a3;
- (BOOL)_queue_isCompanionSoftwareVersionTooOld;
- (BOOL)_queue_isWatchSoftwareVersionTooOld;
- (BOOL)isCompanionSoftwareVersionTooOld;
- (BOOL)isWatchSoftwareVersionTooOld;
- (HRAtrialFibrillationNotificationManager)initWithProfile:(id)a3 availabilityManager:(id)a4;
- (HRAtrialFibrillationNotificationManager)initWithProfile:(id)a3 featureStatusManager:(id)a4;
- (id)_getProductVersionWithError:(id *)a3;
- (id)_queue_fakeHeartbeatSeriesSampleFromDate:(id)a3;
- (int64_t)_atrialFibrillationDetectionRescindedStatusForFeatureStatus:(id)a3;
- (void)_addNotificationRequestForCompanionSoftwareVersionIsTooOld;
- (void)_addNotificationRequestForWatchSoftwareVersionIsTooOld;
- (void)_presentAtrialFibrillationDetectionAlertWithRescindedStatus:(int64_t)a3;
- (void)_presentAtrialFibrillationDetectionReEnabledAlert;
- (void)_presentNotificationWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 defaultButtonTitle:(id)a6 otherButtonTitle:(id)a7 alertLevel:(int64_t)a8 responseHandler:(id)a9;
- (void)_queue_addNotificationRequestForAtrialFibrillationEvent:(id)a3;
- (void)_queue_fakeHeartbeatSeriesSamplesForEvent:(id)a3;
- (void)_queue_isCompanionSoftwareVersionTooOld;
- (void)_queue_isWatchSoftwareVersionTooOld;
- (void)_queue_setAtrialFibrillationDetectionDisabledNotificationShownDate:(id)a3;
- (void)_subscribeToFakingNotifications;
- (void)_unsubscribeToFakingNotifications;
- (void)daemonReady:(id)a3;
- (void)dealloc;
- (void)notifyUserThatAntimonyIsUnavailableForWatchOSVersionIfNeeded;
- (void)notifyUserThatAntimonyIsUnavailableForiOSVersionIfNeeded;
- (void)presentAtrialFibrillationDetectionReEnabledAlertIfNeeded;
- (void)presentAtrialFibrillationDetectionRescindedAlertIfNeeded;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
@end

@implementation HRAtrialFibrillationNotificationManager

- (HRAtrialFibrillationNotificationManager)initWithProfile:(id)a3 availabilityManager:(id)a4
{
  v6 = MEMORY[0x277CCD460];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithFeatureAvailabilityProviding:v7 healthDataSource:v8];

  v10 = [(HRAtrialFibrillationNotificationManager *)self initWithProfile:v8 featureStatusManager:v9];
  return v10;
}

- (HRAtrialFibrillationNotificationManager)initWithProfile:(id)a3 featureStatusManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = HRAtrialFibrillationNotificationManager;
  v8 = [(HRAtrialFibrillationNotificationManager *)&v36 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    objc_storeStrong(&v9->_statusManager, a4);
    v10 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v10;

    v12 = objc_alloc(MEMORY[0x277CE2028]);
    v13 = [v12 initWithBundleIdentifier:*MEMORY[0x277D12F18]];
    userNotificationCenter = v9->_userNotificationCenter;
    v9->_userNotificationCenter = v13;

    v15 = [MEMORY[0x277CBEB18] array];
    fakingNotificationTokens = v9->_fakingNotificationTokens;
    v9->_fakingNotificationTokens = v15;

    v17 = MEMORY[0x277D10718];
    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    v19 = [v17 hdhr_heartRhythmProtectedLocalDomainForProfile:WeakRetained];
    localKeyValueDomain = v9->_localKeyValueDomain;
    v9->_localKeyValueDomain = v19;

    v21 = MEMORY[0x277D10718];
    v22 = objc_loadWeakRetained(&v9->_profile);
    v23 = [v21 hdhr_heartRhythmProtectedSyncedDomainForProfile:v22];
    syncedKeyValueDomain = v9->_syncedKeyValueDomain;
    v9->_syncedKeyValueDomain = v23;

    v25 = v9->_userNotificationCenter;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __80__HRAtrialFibrillationNotificationManager_initWithProfile_featureStatusManager___block_invoke;
    v34[3] = &unk_278660408;
    v26 = v9;
    v35 = v26;
    [(UNUserNotificationCenter *)v25 requestAuthorizationWithOptions:6 completionHandler:v34];
    v27 = [HRAtrialFibrillationAnalyticsCollector alloc];
    v28 = objc_loadWeakRetained(&v9->_profile);
    v29 = [(HRAtrialFibrillationAnalyticsCollector *)v27 initWithProfile:v28];
    analyticsCollector = v26->_analyticsCollector;
    v26->_analyticsCollector = v29;

    [(HRAtrialFibrillationNotificationManager *)v26 _subscribeToFakingNotifications];
    v31 = objc_loadWeakRetained(&v9->_profile);
    v32 = [v31 daemon];
    [v32 registerForDaemonReady:v26];
  }

  return v9;
}

void __80__HRAtrialFibrillationNotificationManager_initWithProfile_featureStatusManager___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __80__HRAtrialFibrillationNotificationManager_initWithProfile_featureStatusManager___block_invoke_cold_1(a1, v6);
    }
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained dataManager];
  v5 = [MEMORY[0x277CCD0C0] atrialFibrillationEventType];
  [v4 removeObserver:self forDataType:v5];

  [(HRAtrialFibrillationNotificationManager *)self _unsubscribeToFakingNotifications];
  v6.receiver = self;
  v6.super_class = HRAtrialFibrillationNotificationManager;
  [(HRAtrialFibrillationNotificationManager *)&v6 dealloc];
}

- (void)daemonReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained dataManager];
  v5 = [MEMORY[0x277CCD0C0] atrialFibrillationEventType];
  [v4 addObserver:self forDataType:v5];
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCDD30] sharedBehavior];
  v7 = [v6 healthAppHiddenOrNotInstalled];

  if (v7)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = HRLogSensitiveClassName();
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring event, health app is hidden or deleted.", buf, 0xCu);
    }
  }

  else
  {
    queue = self->_queue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __63__HRAtrialFibrillationNotificationManager_samplesAdded_anchor___block_invoke;
    v13[3] = &unk_27865FE98;
    v14 = v5;
    v15 = self;
    dispatch_async(queue, v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __63__HRAtrialFibrillationNotificationManager_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v21;
    *&v3 = 138543618;
    v18 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [v7 sourceRevision];
        v9 = [v8 source];
        if ([v9 _isAppleWatch])
        {
          v10 = [v7 sourceRevision];
          v11 = [v10 source];
          v12 = [v11 _isLocalDevice];

          if (v12)
          {
            [*(a1 + 40) _queue_addNotificationRequestForAtrialFibrillationEvent:v7];
            continue;
          }
        }

        else
        {
        }

        _HKInitializeLogging();
        v13 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 40);
          v15 = v13;
          v16 = HRLogSensitiveClassName();
          *buf = v18;
          v25 = v16;
          v26 = 2112;
          v27 = v7;
          _os_log_impl(&dword_229486000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring event without first party / local device source: %@", buf, 0x16u);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v4);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_queue_addNotificationRequestForAtrialFibrillationEvent:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v6 = HRLocalizedStringWithKey(@"ATRIAL_FIBRILLATION_NOTIFICATION_TITLE");
  [v5 setTitle:v6];

  v7 = HRLocalizedStringWithKey(@"ATRIAL_FIBRILLATION_NOTIFICATION_BODY");
  [v5 setBody:v7];

  [v5 setCategoryIdentifier:@"IrregularHeartRhythm"];
  [v5 setThreadIdentifier:@"IrregularHeartRhythm"];
  v8 = [MEMORY[0x277CE1F70] soundWithAlertType:25];
  [v8 setAlertTopic:*MEMORY[0x277D71FC8]];
  [v5 setSound:v8];
  v9 = MEMORY[0x277CE1FC0];
  v10 = [v4 UUID];
  v11 = [v10 UUIDString];
  v12 = [v9 requestWithIdentifier:v11 content:v5 trigger:0];

  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = [WeakRetained notificationManager];

  if (v14)
  {
    v15 = [v14 areHealthNotificationsAuthorized];
  }

  else
  {
    v15 = 0;
  }

  userNotificationCenter = self->_userNotificationCenter;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __99__HRAtrialFibrillationNotificationManager__queue_addNotificationRequestForAtrialFibrillationEvent___block_invoke;
  v20[3] = &unk_278660F18;
  objc_copyWeak(&v24, &location);
  v17 = v12;
  v21 = v17;
  v18 = v5;
  v22 = v18;
  v19 = v4;
  v23 = v19;
  v25 = v15;
  [(UNUserNotificationCenter *)userNotificationCenter addNotificationRequest:v17 withCompletionHandler:v20];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __99__HRAtrialFibrillationNotificationManager__queue_addNotificationRequestForAtrialFibrillationEvent___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2D8];
  v5 = *MEMORY[0x277CCC2D8];
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __99__HRAtrialFibrillationNotificationManager__queue_addNotificationRequestForAtrialFibrillationEvent___block_invoke_cold_1(a1, v4, v3);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v4;
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v8 = HRLogSensitiveClassName();
      v9 = [*(a1 + 32) identifier];
      v10 = [*(a1 + 40) categoryIdentifier];
      v11 = HKSensitiveLogItem();
      v14 = 138543874;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested notification (%{public}@ - %{public}@)", &v14, 0x20u);
    }

    v12 = [[HDHRNotificationAnalytics alloc] initWithEventSample:*(a1 + 48) areHealthNotificationsAuthorized:*(a1 + 64)];
    [(HDHRNotificationAnalytics *)v12 submit];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_addNotificationRequestForCompanionSoftwareVersionIsTooOld
{
  v13 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = HRLocalizedStringWithKey(@"ATRIAL_FIBRILLATION_DISABLED_NOTIFICATION_TITLE");
  v4 = HRLocalizedStringWithKey(@"ATRIAL_FIBRILLATION_DISABLED_PHONE_NOTIFICATION_BODY");
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __101__HRAtrialFibrillationNotificationManager__addNotificationRequestForCompanionSoftwareVersionIsTooOld__block_invoke;
  v8[3] = &unk_278660F40;
  objc_copyWeak(&v9, &location);
  [(HRAtrialFibrillationNotificationManager *)self _presentNotificationWithTitle:v3 message:v4 cancelButtonTitle:0 defaultButtonTitle:0 otherButtonTitle:0 alertLevel:0 responseHandler:v8];

  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HRLogSensitiveClassName();
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229486000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested companion software version is too old notification", buf, 0xCu);
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  v7 = *MEMORY[0x277D85DE8];
}

void __101__HRAtrialFibrillationNotificationManager__addNotificationRequestForCompanionSoftwareVersionIsTooOld__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  if (v4)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __101__HRAtrialFibrillationNotificationManager__addNotificationRequestForCompanionSoftwareVersionIsTooOld__block_invoke_cold_1();
    }
  }
}

- (void)_addNotificationRequestForWatchSoftwareVersionIsTooOld
{
  v13 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = HRLocalizedStringWithKey(@"ATRIAL_FIBRILLATION_DISABLED_WATCH_NOTIFICATION_TITLE");
  v4 = HRLocalizedStringWithKey(@"ATRIAL_FIBRILLATION_DISABLED_WATCH_NOTIFICATION_BODY");
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__HRAtrialFibrillationNotificationManager__addNotificationRequestForWatchSoftwareVersionIsTooOld__block_invoke;
  v8[3] = &unk_278660F40;
  objc_copyWeak(&v9, &location);
  [(HRAtrialFibrillationNotificationManager *)self _presentNotificationWithTitle:v3 message:v4 cancelButtonTitle:0 defaultButtonTitle:0 otherButtonTitle:0 alertLevel:0 responseHandler:v8];

  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HRLogSensitiveClassName();
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229486000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested Watch software version is too old notification", buf, 0xCu);
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  v7 = *MEMORY[0x277D85DE8];
}

void __97__HRAtrialFibrillationNotificationManager__addNotificationRequestForWatchSoftwareVersionIsTooOld__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  if (v4)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __101__HRAtrialFibrillationNotificationManager__addNotificationRequestForCompanionSoftwareVersionIsTooOld__block_invoke_cold_1();
    }
  }
}

- (BOOL)_queue_isCompanionSoftwareVersionTooOld
{
  dispatch_assert_queue_V2(self->_queue);
  statusManager = self->_statusManager;
  v12 = 0;
  v4 = [(HKFeatureStatusManager *)statusManager featureStatusWithError:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = [v4 isOnboardingRecordPresent];
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCBF00]];
    v9 = [v8 BOOLValue];

    v10 = v6 & (v9 ^ 1);
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HRAtrialFibrillationNotificationManager _queue_isCompanionSoftwareVersionTooOld];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)isCompanionSoftwareVersionTooOld
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__HRAtrialFibrillationNotificationManager_isCompanionSoftwareVersionTooOld__block_invoke;
  v5[3] = &unk_2786606E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __75__HRAtrialFibrillationNotificationManager_isCompanionSoftwareVersionTooOld__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_isCompanionSoftwareVersionTooOld];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_queue_isWatchSoftwareVersionTooOld
{
  dispatch_assert_queue_V2(self->_queue);
  statusManager = self->_statusManager;
  v12 = 0;
  v4 = [(HKFeatureStatusManager *)statusManager featureStatusWithError:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = [v4 isOnboardingRecordPresent];
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCBF08]];
    v9 = [v8 BOOLValue];

    v10 = v6 & (v9 ^ 1);
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HRAtrialFibrillationNotificationManager _queue_isWatchSoftwareVersionTooOld];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)isWatchSoftwareVersionTooOld
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__HRAtrialFibrillationNotificationManager_isWatchSoftwareVersionTooOld__block_invoke;
  v5[3] = &unk_2786606E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __71__HRAtrialFibrillationNotificationManager_isWatchSoftwareVersionTooOld__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_isWatchSoftwareVersionTooOld];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)notifyUserThatAntimonyIsUnavailableForiOSVersionIfNeeded
{
  v5 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  v3 = [v5 objectForKey:@"OldCompanionVersionNotificationDate"];

  if (!v3)
  {
    [(HRAtrialFibrillationNotificationManager *)self _addNotificationRequestForCompanionSoftwareVersionIsTooOld];
    v4 = [MEMORY[0x277CBEAA8] date];
    [v5 setObject:v4 forKey:@"OldCompanionVersionNotificationDate"];
  }
}

- (void)notifyUserThatAntimonyIsUnavailableForWatchOSVersionIfNeeded
{
  v5 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  v3 = [v5 objectForKey:@"OldWatchVersionNotificationDate"];

  if (!v3)
  {
    [(HRAtrialFibrillationNotificationManager *)self _addNotificationRequestForWatchSoftwareVersionIsTooOld];
    v4 = [MEMORY[0x277CBEAA8] date];
    [v5 setObject:v4 forKey:@"OldWatchVersionNotificationDate"];
  }
}

- (void)_presentNotificationWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 defaultButtonTitle:(id)a6 otherButtonTitle:(id)a7 alertLevel:(int64_t)a8 responseHandler:(id)a9
{
  v15 = MEMORY[0x277D10BC0];
  v16 = a9;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = objc_alloc_init(v15);
  [v22 setTitle:v21];

  [v22 setMessage:v20];
  [v22 setCancelButton:v19];

  [v22 setDefaultButton:v18];
  [v22 setOtherButton:v17];

  [v22 setAlertLevel:a8];
  [v22 presentWithResponseHandler:v16];
}

- (int64_t)_atrialFibrillationDetectionRescindedStatusForFeatureStatus:(id)a3
{
  v3 = a3;
  if ([v3 isOnboardingRecordPresent])
  {
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCBFD0]];
    v6 = [v5 BOOLValue];

    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCBF30]];
    v8 = [v7 BOOLValue];

    if (v6)
    {
      v9 = v8 ^ 1u;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_allowAtrialFibrillationDisableOrReEnableRemotelyAlertWithFeatureStatus:(id)a3
{
  v30[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(HRAtrialFibrillationNotificationManager *)self _isPairedSyncCompleted])
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = *MEMORY[0x277CCBF30];
    v30[0] = *MEMORY[0x277CCBFD0];
    v30[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v9 = [v6 setWithArray:v8];

    v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v11 = [v10 unsatisfiedRequirementIdentifiers];

    v12 = [MEMORY[0x277CBEB98] setWithArray:v11];
    v13 = [v12 isSubsetOfSet:v9];

    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = HRLogSensitiveClassName();
      v17 = [MEMORY[0x277CCABB0] numberWithBool:v13];
      v24 = 138543874;
      v25 = v16;
      v26 = 2114;
      v27 = v17;
      v28 = 2114;
      v29 = v11;
      _os_log_impl(&dword_229486000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Can present rescinded or re-enabled alert: %{public}@; unsatisfied requirements: %{public}@", &v24, 0x20u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC2D8];
    LOBYTE(v13) = 0;
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = HRLogSensitiveClassName();
      v13 = NSStringFromSelector(a2);
      v21 = HKSensitiveLogItem();
      v24 = 138543618;
      v25 = v20;
      v26 = 2114;
      v27 = v21;
      _os_log_impl(&dword_229486000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> NO, paired sync not completed", &v24, 0x16u);

      LOBYTE(v13) = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)presentAtrialFibrillationDetectionRescindedAlertIfNeeded
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to retrieve IRN's feature status; unable to check if rescinded: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __99__HRAtrialFibrillationNotificationManager_presentAtrialFibrillationDetectionRescindedAlertIfNeeded__block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _atrialFibrillationDetectionRescindedStatusForFeatureStatus:*(a1 + 40)];
  v4 = *(*v2 + 56);
  v5 = *MEMORY[0x277CCE280];
  v33 = 0;
  v6 = [v4 dateForKey:v5 error:&v33];
  v7 = v33;
  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC2D8];
  v9 = *MEMORY[0x277CCC2D8];
  v10 = *MEMORY[0x277CCC2D8];
  if (v7)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v28 = *(a1 + 32);
    v17 = v9;
    v20 = HRLogSensitiveClassName();
    v29 = NSStringFromSelector(*(a1 + 48));
    v23 = HKSensitiveLogItem();
    *buf = 138543874;
    v35 = v20;
    v36 = 2114;
    v37 = v23;
    v38 = 2114;
    v39 = v7;
    _os_log_error_impl(&dword_229486000, v17, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] Failed to load notification shown date with error: %{public}@", buf, 0x20u);

    goto LABEL_13;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    log = v9;
    v30 = HRLogSensitiveClassName();
    v31 = NSStringFromSelector(*(a1 + 48));
    v13 = HKSensitiveLogItem();
    v14 = NSStringFromHKFeatureAvailabilityRescindedStatus();
    v15 = HKSensitiveLogItem();
    v16 = HKSensitiveLogItem();
    *buf = 138544386;
    v35 = v30;
    v36 = 2114;
    v37 = v13;
    v38 = 2112;
    v39 = v15;
    v40 = 2112;
    v41 = v16;
    v42 = 2112;
    v43 = 0;
    _os_log_impl(&dword_229486000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> IRN rescinded status: %@, IRN disabled notification shown date %@ with error: %@", buf, 0x34u);

    v8 = MEMORY[0x277CCC2D8];
  }

  if (v3)
  {
    if (v6)
    {
      goto LABEL_3;
    }

    [*(a1 + 32) _presentAtrialFibrillationDetectionAlertWithRescindedStatus:v3];
    v17 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 32) _queue_setAtrialFibrillationDetectionDisabledNotificationShownDate:v17];
    v18 = [*(a1 + 40) onboardingRecord];
    v19 = [v18 onboardingCompletion];
    v20 = [v19 countryCode];

    [*(*(a1 + 32) + 64) collectAnalyticsForRemoteDisableMessageShownForOnboardingCountryCode:v20];
    _HKInitializeLogging();
    v21 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:

      goto LABEL_3;
    }

    v22 = *(a1 + 32);
    v23 = v21;
    v24 = HRLogSensitiveClassName();
    v25 = NSStringFromSelector(*(a1 + 48));
    v26 = HKSensitiveLogItem();
    *buf = 138543618;
    v35 = v24;
    v36 = 2114;
    v37 = v26;
    _os_log_impl(&dword_229486000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Scheduling the IRN disabled notification", buf, 0x16u);

LABEL_13:
    goto LABEL_14;
  }

  _HKInitializeLogging();
  v27 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_FAULT))
  {
    __99__HRAtrialFibrillationNotificationManager_presentAtrialFibrillationDetectionRescindedAlertIfNeeded__block_invoke_cold_1(v2, v27);
  }

LABEL_3:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_presentAtrialFibrillationDetectionAlertWithRescindedStatus:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = &stru_283CC4740;
  switch(a3)
  {
    case 0:
      goto LABEL_10;
    case 1:
      v6 = @"ATRIAL_FIBRILLATION_DISABLED_REMOTELY_WATCH_NOTIFICATION_BODY";
      goto LABEL_6;
    case 2:
      v6 = @"ATRIAL_FIBRILLATION_EXPIRED_SEED_WATCH_NOTIFICATION_BODY";
LABEL_6:
      v3 = HRLocalizedStringWithKey(v6);
      break;
  }

  objc_initWeak(&location, self);
  v7 = HRLocalizedStringWithKey(@"ATRIAL_FIBRILLATION_DISABLED_REMOTELY_WATCH_NOTIFICATION_TITLE");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__HRAtrialFibrillationNotificationManager__presentAtrialFibrillationDetectionAlertWithRescindedStatus___block_invoke;
  v13[3] = &unk_278660F40;
  objc_copyWeak(&v14, &location);
  [(HRAtrialFibrillationNotificationManager *)self _presentNotificationWithTitle:v7 message:v3 cancelButtonTitle:0 defaultButtonTitle:0 otherButtonTitle:0 alertLevel:3 responseHandler:v13];

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HRLogSensitiveClassName();
    v10 = NSStringFromSelector(a2);
    v11 = HKSensitiveLogItem();
    *buf = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Scheduling IRN disabled notification and resetting IRN disabled notification shown date", buf, 0x16u);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
}

void __103__HRAtrialFibrillationNotificationManager__presentAtrialFibrillationDetectionAlertWithRescindedStatus___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  if (v4)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __101__HRAtrialFibrillationNotificationManager__addNotificationRequestForCompanionSoftwareVersionIsTooOld__block_invoke_cold_1();
    }
  }
}

- (void)presentAtrialFibrillationDetectionReEnabledAlertIfNeeded
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to retrieve IRN's feature status; unable to check if no longer rescinded: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __99__HRAtrialFibrillationNotificationManager_presentAtrialFibrillationDetectionReEnabledAlertIfNeeded__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _atrialFibrillationDetectionRescindedStatusForFeatureStatus:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 56);
  v4 = *MEMORY[0x277CCE280];
  v26 = 0;
  v5 = [v3 dateForKey:v4 error:&v26];
  v6 = v26;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2D8];
  v8 = *MEMORY[0x277CCC2D8];
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = v7;
      v11 = HRLogSensitiveClassName();
      v12 = NSStringFromSelector(*(a1 + 48));
      v13 = HKSensitiveLogItem();
      *buf = 138543874;
      v28 = v11;
      v29 = 2114;
      v30 = v13;
      v31 = 2114;
      v32 = v6;
      _os_log_error_impl(&dword_229486000, v10, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] Failed to load notification shown date with error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      log = v7;
      v24 = HRLogSensitiveClassName();
      v15 = NSStringFromSelector(*(a1 + 48));
      v16 = HKSensitiveLogItem();
      v17 = [MEMORY[0x277CCABB0] numberWithBool:v2 != 0];
      v18 = HKSensitiveLogItem();
      v19 = HKSensitiveLogItem();
      *buf = 138544130;
      v28 = v24;
      v29 = 2114;
      v30 = v16;
      v31 = 2112;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      _os_log_impl(&dword_229486000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> IRN disabled: %@, IRN disabled notification shown date: %@ ", buf, 0x2Au);
    }

    if (!v2 && v5)
    {
      [*(a1 + 32) _presentAtrialFibrillationDetectionReEnabledAlert];
      v20 = [*(a1 + 40) onboardingRecord];
      v21 = [v20 onboardingCompletion];
      v22 = [v21 countryCode];

      [*(*(a1 + 32) + 64) collectAnalyticsForRemoteReEnableMessageShownForOnboardingCountryCode:v22];
    }

    [*(a1 + 32) _queue_setAtrialFibrillationDetectionDisabledNotificationShownDate:0];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_presentAtrialFibrillationDetectionReEnabledAlert
{
  v18 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v4 = HRLocalizedStringWithKey(@"ATRIAL_FIBRILLATION_REENABLED_REMOTELY_WATCH_NOTIFICATION_TITLE");
  v5 = HRLocalizedStringWithKey(@"ATRIAL_FIBRILLATION_REENABLED_REMOTELY_WATCH_NOTIFICATION_BODY");
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__HRAtrialFibrillationNotificationManager__presentAtrialFibrillationDetectionReEnabledAlert__block_invoke;
  v11[3] = &unk_278660F40;
  objc_copyWeak(&v12, &location);
  [(HRAtrialFibrillationNotificationManager *)self _presentNotificationWithTitle:v4 message:v5 cancelButtonTitle:0 defaultButtonTitle:0 otherButtonTitle:0 alertLevel:3 responseHandler:v11];

  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HRLogSensitiveClassName();
    v8 = NSStringFromSelector(a2);
    v9 = HKSensitiveLogItem();
    *buf = 138543618;
    v15 = v7;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Scheduling IRN re-enabled notification and resetting IRN disabled notification shown date", buf, 0x16u);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  v10 = *MEMORY[0x277D85DE8];
}

void __92__HRAtrialFibrillationNotificationManager__presentAtrialFibrillationDetectionReEnabledAlert__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  if (v4)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __101__HRAtrialFibrillationNotificationManager__addNotificationRequestForCompanionSoftwareVersionIsTooOld__block_invoke_cold_1();
    }
  }
}

- (void)_queue_setAtrialFibrillationDetectionDisabledNotificationShownDate:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  localKeyValueDomain = self->_localKeyValueDomain;
  v7 = *MEMORY[0x277CCE280];
  v8 = 0;
  [(HDKeyValueDomain *)localKeyValueDomain setDate:v5 forKey:v7 error:&v8];
}

- (id)_getProductVersionWithError:(id *)a3
{
  v4 = [(HKFeatureStatusManager *)self->_statusManager featureAvailabilityProviding];
  v5 = [v4 pairedFeatureAttributesWithError:a3];
  v6 = [v5 watchAttributes];
  v7 = [v6 updateVersion];

  return v7;
}

- (void)_queue_fakeHeartbeatSeriesSamplesForEvent:(id)a3
{
  v53[1] = *MEMORY[0x277D85DE8];
  v40 = a3;
  v3 = 0;
  v4 = 0;
  v5 = -21600;
  *&v6 = 138543618;
  v39 = v6;
  do
  {
    v7 = v4;
    v8 = [v40 startDate];
    v9 = [v8 dateByAddingTimeInterval:v5];

    v43 = v9;
    v10 = [(HRAtrialFibrillationNotificationManager *)self _queue_fakeHeartbeatSeriesSampleFromDate:v9];
    v44 = [v10 endDate];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v12 = [WeakRetained dataManager];
    v53[0] = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
    v14 = objc_loadWeakRetained(&self->_profile);
    v15 = [v14 dataProvenanceManager];
    v16 = [v15 defaultLocalDataProvenance];
    Current = CFAbsoluteTimeGetCurrent();
    v47 = v3;
    v18 = [v12 insertDataObjects:v13 withProvenance:v16 creationDate:&v47 error:Current];
    v42 = v47;

    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC2D8];
    v20 = *MEMORY[0x277CCC2D8];
    if (!v18)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v32 = v19;
        v33 = HRLogSensitiveClassName();
        *buf = v39;
        v50 = v33;
        v51 = 2114;
        v3 = v42;
        v52 = v42;
        _os_log_error_impl(&dword_229486000, v32, OS_LOG_TYPE_ERROR, "%{public}@ faking - failed to save heartbeat series with error: %{public}@", buf, 0x16u);
      }

      else
      {
        v3 = v42;
      }

LABEL_10:
      v4 = v44;
      goto LABEL_11;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v19;
      v22 = HRLogSensitiveClassName();
      *buf = v39;
      v50 = v22;
      v51 = 2112;
      v52 = v10;
      _os_log_impl(&dword_229486000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ faking - saved heartbeat series: %@", buf, 0x16u);
    }

    v23 = objc_loadWeakRetained(&self->_profile);
    v24 = [v23 associationManager];
    v25 = [v10 UUID];
    v48 = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    v27 = [v40 UUID];
    v46 = v42;
    v28 = [v24 associateObjectUUIDs:v26 objectUUID:v27 error:&v46];
    v3 = v46;

    if (v28)
    {
      goto LABEL_10;
    }

    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC2D8];
    v4 = v44;
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      v30 = v29;
      v31 = HRLogSensitiveClassName();
      *buf = v39;
      v50 = v31;
      v51 = 2114;
      v52 = v3;
      _os_log_error_impl(&dword_229486000, v30, OS_LOG_TYPE_ERROR, "%{public}@ faking - failed to associate heartbeat series with error: %{public}@", buf, 0x16u);
    }

LABEL_11:

    v5 += 3600;
  }

  while (v5 != -3600);
  syncedKeyValueDomain = self->_syncedKeyValueDomain;
  v35 = *MEMORY[0x277CCE4A0];
  v45 = v3;
  v36 = [(HDKeyValueDomain *)syncedKeyValueDomain setDate:v4 forKey:v35 error:&v45];
  v37 = v45;

  if ((v36 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HRAtrialFibrillationNotificationManager _queue_fakeHeartbeatSeriesSamplesForEvent:];
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (id)_queue_fakeHeartbeatSeriesSampleFromDate:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB28] dataWithCapacity:960];
  v5 = 0;
  v6 = 0.0;
  do
  {
    v6 = v6 + arc4random_uniform(0xC8u) / 1000.0 + -0.1 + 1.0;
    v10[1] = 0;
    *v10 = v6;
    [v4 replaceBytesInRange:v5 withBytes:{16, v10}];
    v5 += 16;
  }

  while (v5 != 960);
  v7 = [v3 dateByAddingTimeInterval:v6];
  v8 = [MEMORY[0x277CCD540] heartbeatSequenceSampleWithData:v4 startDate:v3 endDate:v7 metadata:0];

  return v8;
}

- (void)_subscribeToFakingNotifications
{
  objc_initWeak(&location, self);
  out_token = 0;
  v3 = [@"com.apple.HeartRhythm.AtrialFibrillation" UTF8String];
  queue = self->_queue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __74__HRAtrialFibrillationNotificationManager__subscribeToFakingNotifications__block_invoke;
  handler[3] = &unk_278660570;
  objc_copyWeak(&v15, &location);
  notify_register_dispatch(v3, &out_token, queue, handler);
  fakingNotificationTokens = self->_fakingNotificationTokens;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
  [(NSMutableArray *)fakingNotificationTokens addObject:v6];

  v13 = 0;
  v7 = [@"com.apple.HeartRhythm.AtrialFibrillationWithData" UTF8String];
  v8 = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__HRAtrialFibrillationNotificationManager__subscribeToFakingNotifications__block_invoke_2;
  v11[3] = &unk_278660570;
  objc_copyWeak(&v12, &location);
  notify_register_dispatch(v7, &v13, v8, v11);
  v9 = self->_fakingNotificationTokens;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v13];
  [(NSMutableArray *)v9 addObject:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __74__HRAtrialFibrillationNotificationManager__subscribeToFakingNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _queue_fakeNotificationWithData:0];
    WeakRetained = v2;
  }
}

void __74__HRAtrialFibrillationNotificationManager__subscribeToFakingNotifications__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _queue_fakeNotificationWithData:1];
    WeakRetained = v2;
  }
}

- (void)_unsubscribeToFakingNotifications
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_fakingNotificationTokens;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) intValue];
        if (notify_is_valid_token(v7))
        {
          notify_cancel(v7);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __80__HRAtrialFibrillationNotificationManager_initWithProfile_featureStatusManager___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  OUTLINED_FUNCTION_2_4();
  v5 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_3(&dword_229486000, v6, v7, "[%{public}@] UNUserNotificationCenter authorization request not granted for 'com.apple.HeartRate', error: %@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

void __99__HRAtrialFibrillationNotificationManager__queue_addNotificationRequestForAtrialFibrillationEvent___block_invoke_cold_1(id *a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v7 = HRLogSensitiveClassName();
  v8 = [a1[4] identifier];
  v9 = [a1[5] categoryIdentifier];
  v11 = 138544130;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  v15 = 2114;
  v16 = v9;
  v17 = 2114;
  v18 = a3;
  _os_log_error_impl(&dword_229486000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to request notification (%{public}@ - %{public}@): %{public}@)", &v11, 0x2Au);

  v10 = *MEMORY[0x277D85DE8];
}

void __101__HRAtrialFibrillationNotificationManager__addNotificationRequestForCompanionSoftwareVersionIsTooOld__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_3();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_5_3();
  v4 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v5, v6, "[%{public}@] Notification handler responded with error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_queue_isCompanionSoftwareVersionTooOld
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to retrieve IRN's feature status; reporting 'onboarded country is supported on companion': %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_isWatchSoftwareVersionTooOld
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to retrieve IRN's feature status; reporting 'onboarded country is supported on this watch': %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __99__HRAtrialFibrillationNotificationManager_presentAtrialFibrillationDetectionRescindedAlertIfNeeded__block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = HRLogSensitiveClassName();
  v6 = 138543362;
  v7 = v4;
  _os_log_fault_impl(&dword_229486000, v3, OS_LOG_TYPE_FAULT, "[%{public}@] IRN does not meet usage requirements but is expected to", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_fakeNotificationWithData:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "%{public}@ faking - failed to save event with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_fakeNotificationWithData:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] faking - failed to get version: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_fakeHeartbeatSeriesSamplesForEvent:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] faking - failed to set last analyzed sample date in protected key value store: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end