@interface HDHRNotificationManager
- (HDHRNotificationManager)initWithProfile:(id)a3;
- (id)_userNotificationCenter;
- (void)_queue_showNotificationForHeartEvent:(id)a3;
- (void)_subscribeToFakingNotification:(id)a3 type:(id)a4 withData:(BOOL)a5;
- (void)_subscribeToFakingNotifications;
- (void)_unsubscribeToFakingNotifications;
- (void)daemonReady:(id)a3;
- (void)dealloc;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
@end

@implementation HDHRNotificationManager

- (HDHRNotificationManager)initWithProfile:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HDHRNotificationManager;
  v5 = [(HDHRNotificationManager *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKDispatchQueueName();
    v8 = dispatch_queue_create(v7, 0);
    queue = v6->_queue;
    v6->_queue = v8;

    [(HDHRNotificationManager *)v6 _subscribeToFakingNotifications];
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v11 = [WeakRetained daemon];
    [v11 registerForDaemonReady:v6];

    _HKInitializeLogging();
    v12 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138543362;
      v19 = v13;
      v14 = v13;
      _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] was created", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  [(HDHRNotificationManager *)self _unsubscribeToFakingNotifications];
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = objc_opt_class();
    v4 = v17;
    _os_log_impl(&dword_229486000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] stop observing heart rate events", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained dataManager];
  v7 = [MEMORY[0x277CCD0C0] tachycardiaType];
  [v6 removeObserver:self forDataType:v7];

  v8 = objc_loadWeakRetained(&self->_profile);
  v9 = [v8 dataManager];
  v10 = [MEMORY[0x277CCD0C0] bradycardiaType];
  [v9 removeObserver:self forDataType:v10];

  v11 = objc_loadWeakRetained(&self->_profile);
  v12 = [v11 dataManager];
  v13 = [MEMORY[0x277CCD0C0] lowCardioFitnessEventType];
  [v12 removeObserver:self forDataType:v13];

  v15.receiver = self;
  v15.super_class = HDHRNotificationManager;
  [(HDHRNotificationManager *)&v15 dealloc];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)daemonReady:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = objc_opt_class();
    v5 = v17;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] start observing heart rate events", &v16, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [WeakRetained dataManager];
  v8 = [MEMORY[0x277CCD0C0] tachycardiaType];
  [v7 addObserver:self forDataType:v8];

  v9 = objc_loadWeakRetained(&self->_profile);
  v10 = [v9 dataManager];
  v11 = [MEMORY[0x277CCD0C0] bradycardiaType];
  [v10 addObserver:self forDataType:v11];

  v12 = objc_loadWeakRetained(&self->_profile);
  v13 = [v12 dataManager];
  v14 = [MEMORY[0x277CCD0C0] lowCardioFitnessEventType];
  [v13 addObserver:self forDataType:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 sourceRevision];
        v12 = [v11 source];
        v13 = [v12 _isLocalDevice];

        _HKInitializeLogging();
        v14 = HKLogHeartRateCategory();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);

        if (v13)
        {
          if (v15)
          {
            v16 = HKLogHeartRateCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              [HDHRNotificationManager samplesAdded:anchor:];
            }
          }

          queue = self->_queue;
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __47__HDHRNotificationManager_samplesAdded_anchor___block_invoke;
          v22[3] = &unk_27865FE98;
          v22[4] = self;
          v22[5] = v10;
          dispatch_async(queue, v22);
        }

        else
        {
          if (v15)
          {
            v18 = HKLogHeartRateCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              [HDHRNotificationManager samplesAdded:anchor:];
            }
          }

          v19 = [MEMORY[0x277CCDD30] sharedBehavior];
          if ([v19 isAppleInternalInstall])
          {
            unitTest_notificationForNonLocalDeviceSourceSkipped = self->_unitTest_notificationForNonLocalDeviceSourceSkipped;

            if (unitTest_notificationForNonLocalDeviceSourceSkipped)
            {
              (*(self->_unitTest_notificationForNonLocalDeviceSourceSkipped + 2))();
            }
          }

          else
          {
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_userNotificationCenter
{
  if (_userNotificationCenter_onceToken != -1)
  {
    [HDHRNotificationManager _userNotificationCenter];
  }

  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  if (![v3 isAppleInternalInstall] || (unitTest_userNotificationCenter = self->_unitTest_userNotificationCenter) == 0)
  {
    unitTest_userNotificationCenter = _userNotificationCenter_userNotificationCenter;
  }

  v5 = unitTest_userNotificationCenter;

  return unitTest_userNotificationCenter;
}

uint64_t __50__HDHRNotificationManager__userNotificationCenter__block_invoke()
{
  _userNotificationCenter_userNotificationCenter = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.HeartRate"];

  return MEMORY[0x2821F96F8]();
}

- (void)_queue_showNotificationForHeartEvent:(id)a3
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v4 endDate];
  v7 = [v5 hk_dateByAddingDays:1 toDate:v6];

  v8 = [MEMORY[0x277CBEAA8] date];
  LODWORD(v6) = [v8 hk_isAfterDate:v7];

  _HKInitializeLogging();
  v9 = HKLogHeartRateCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v10)
    {
      *buf = 138543874;
      v76 = objc_opt_class();
      v77 = 2112;
      v78 = v4;
      v79 = 2114;
      v80 = v7;
      v14 = v76;
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] showing notification for event: %@, expiration date: %{public}@", buf, 0x20u);
    }

    v15 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v15 setDateStyle:0];
    [v15 setTimeStyle:1];
    v16 = [v4 startDate];
    v67 = v15;
    v17 = [v15 stringFromDate:v16];

    v18 = [v4 metadata];
    v19 = [v18 objectForKey:*MEMORY[0x277CCE048]];

    [v19 _beatsPerMinute];
    v21 = MEMORY[0x277CCABB8];
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:llround(v20)];
    v23 = [v21 localizedStringFromNumber:v22 numberStyle:1];

    v24 = [v4 categoryType];
    v25 = [MEMORY[0x277CCD0C0] tachycardiaType];
    v26 = [v24 isEqual:v25];

    v68 = v23;
    if (v26)
    {
      v63 = v19;
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v27 localizedStringForKey:@"HEART_RATE_TACHYCARDIA_TITLE" value:&stru_283CC4740 table:@"Localizable"];
      v29 = v28 = v7;

      v30 = MEMORY[0x277CCACA8];
      v66 = self;
      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v32 = [v31 localizedStringForKey:@"HEART_RATE_TACHYCARDIA_MESSAGE_FORMAT" value:&stru_283CC4740 table:@"Localizable"];
      v64 = v17;
      v62 = v23;
      v33 = v29;
      v7 = v28;
      v34 = [v30 stringWithFormat:v32, v62, v17];

      v35 = @"Tachycardia";
    }

    else
    {
      v36 = [v4 categoryType];
      v37 = [MEMORY[0x277CCD0C0] bradycardiaType];
      v38 = [v36 isEqual:v37];

      if (v38)
      {
        v63 = v19;
        v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v33 = [v39 localizedStringForKey:@"HEART_RATE_BRADYCARDIA_TITLE" value:&stru_283CC4740 table:@"Localizable"];

        v40 = MEMORY[0x277CCACA8];
        v66 = self;
        v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v42 = [v41 localizedStringForKey:@"HEART_RATE_BRADYCARDIA_MESSAGE_FORMAT" value:&stru_283CC4740 table:@"Localizable"];
        v64 = v17;
        v34 = [v40 stringWithFormat:v42, v68, v17];

        v35 = @"Bradycardia";
      }

      else
      {
        v43 = [v4 categoryType];
        v44 = [MEMORY[0x277CCD0C0] lowCardioFitnessEventType];
        v45 = [v43 isEqual:v44];

        if (!v45)
        {
          _HKInitializeLogging();
          v59 = HKLogHeartRateCategory();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            [(HDHRNotificationManager *)self _queue_showNotificationForHeartEvent:v4, v59];
          }

          v60 = [MEMORY[0x277CCDD30] sharedBehavior];
          if ([v60 isAppleInternalInstall])
          {
            unitTest_notificationForUnsupportedEventSkipped = self->_unitTest_notificationForUnsupportedEventSkipped;

            if (unitTest_notificationForUnsupportedEventSkipped)
            {
              (*(self->_unitTest_notificationForUnsupportedEventSkipped + 2))();
            }
          }

          else
          {
          }

          goto LABEL_21;
        }

        v63 = v19;
        v64 = v17;
        v66 = self;
        v33 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"HEART_RATE_LOW_CARDIO_FITNESS_TITLE" arguments:0];
        v34 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"HEART_RATE_LOW_CARDIO_FITNESS_MESSAGE" arguments:0];
        v35 = @"LowCardioFitness";
      }
    }

    v46 = objc_alloc_init(MEMORY[0x277CE1F60]);
    [v46 setTitle:v33];
    [v46 setBody:v34];
    [v46 setCategoryIdentifier:v35];
    [v46 setThreadIdentifier:v35];
    v47 = [MEMORY[0x277CE1F70] soundWithAlertType:25];
    [v47 setAlertTopic:*MEMORY[0x277D71FC8]];
    [v46 setSound:v47];
    v48 = [v4 endDate];
    [v46 setDate:v48];

    [v46 setExpirationDate:v7];
    v72 = 0;
    v49 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v72];
    v65 = v72;
    if (v49)
    {
      v50 = v34;
      v51 = v33;
      v73 = @"HeartRateEventData";
      v74 = v49;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      [v46 setUserInfo:v52];
    }

    else
    {
      _HKInitializeLogging();
      v52 = HKLogHeartRateCategory();
      v50 = v34;
      v51 = v33;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [HDHRNotificationManager _queue_showNotificationForHeartEvent:];
      }
    }

    v53 = MEMORY[0x277CE1FC0];
    v54 = [v4 UUID];
    v55 = [v54 UUIDString];
    v56 = [v53 requestWithIdentifier:v55 content:v46 trigger:0];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HDHRNotificationManager__queue_showNotificationForHeartEvent___block_invoke;
    block[3] = &unk_278660440;
    block[4] = v66;
    v70 = v56;
    v71 = v4;
    v57 = v56;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v19 = v63;
    v17 = v64;
    v23 = v68;
LABEL_21:

    goto LABEL_22;
  }

  if (v10)
  {
    *buf = 138543618;
    v76 = objc_opt_class();
    v77 = 2112;
    v78 = v4;
    v11 = v76;
    _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] not showing expired notification for event: %@", buf, 0x16u);
  }

  v12 = [MEMORY[0x277CCDD30] sharedBehavior];
  if ([v12 isAppleInternalInstall])
  {
    unitTest_notificationForExpiredEventSkipped = self->_unitTest_notificationForExpiredEventSkipped;

    if (unitTest_notificationForExpiredEventSkipped)
    {
      (*(self->_unitTest_notificationForExpiredEventSkipped + 2))();
    }
  }

  else
  {
  }

LABEL_22:

  v58 = *MEMORY[0x277D85DE8];
}

void __64__HDHRNotificationManager__queue_showNotificationForHeartEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _userNotificationCenter];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__HDHRNotificationManager__queue_showNotificationForHeartEvent___block_invoke_2;
  v4[3] = &unk_278660AE0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 addNotificationRequest:v3 withCompletionHandler:v4];
}

void __64__HDHRNotificationManager__queue_showNotificationForHeartEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    _HKInitializeLogging();
    v4 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__HDHRNotificationManager__queue_showNotificationForHeartEvent___block_invoke_2_cold_1();
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = [WeakRetained notificationManager];

  if (v6)
  {
    v7 = [v6 areHealthNotificationsAuthorized];
  }

  else
  {
    v7 = 0;
  }

  v8 = [[HDHRNotificationAnalytics alloc] initWithEventSample:*(a1 + 40) areHealthNotificationsAuthorized:v7];
  [(HDHRNotificationAnalytics *)v8 submit];
}

void __73__HDHRNotificationManager__queue_fakeNotificationWithEventType_withData___block_invoke(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = [WeakRetained dataManager];

  v33[0] = *(a1 + 40);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v6 = objc_loadWeakRetained((*v2 + 8));
  v7 = [v6 dataProvenanceManager];
  v8 = [v7 defaultLocalDataProvenance];
  Current = CFAbsoluteTimeGetCurrent();
  v10 = *(*(a1 + 56) + 8);
  obj = *(v10 + 40);
  v11 = [v4 insertDataObjects:v5 withProvenance:v8 creationDate:&obj error:Current];
  objc_storeStrong((v10 + 40), obj);

  _HKInitializeLogging();
  v12 = HKLogHeartRateCategory();
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __73__HDHRNotificationManager__queue_fakeNotificationWithEventType_withData___block_invoke_cold_1();
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = objc_opt_class();
    v16 = *(a1 + 40);
    *buf = 138543618;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    v17 = v15;
    _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] faking - saved heart rate sample: %@", buf, 0x16u);
  }

  v18 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v19 = [v18 associationManager];
  v20 = [*(a1 + 40) UUID];
  v28 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v22 = [*(a1 + 48) UUID];
  v23 = *(*(a1 + 56) + 8);
  v26 = *(v23 + 40);
  v24 = [v19 associateObjectUUIDs:v21 objectUUID:v22 error:&v26];
  objc_storeStrong((v23 + 40), v26);

  if ((v24 & 1) == 0)
  {
    _HKInitializeLogging();
    v13 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __73__HDHRNotificationManager__queue_fakeNotificationWithEventType_withData___block_invoke_cold_2();
    }

LABEL_9:
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_subscribeToFakingNotifications
{
  v3 = [MEMORY[0x277CCD0C0] tachycardiaType];
  [(HDHRNotificationManager *)self _subscribeToFakingNotification:@"com.apple.HeartRate.Tachycardia" type:v3 withData:0];

  v4 = [MEMORY[0x277CCD0C0] tachycardiaType];
  [(HDHRNotificationManager *)self _subscribeToFakingNotification:@"com.apple.HeartRate.TachycardiaWithData" type:v4 withData:1];

  v5 = [MEMORY[0x277CCD0C0] bradycardiaType];
  [(HDHRNotificationManager *)self _subscribeToFakingNotification:@"com.apple.HeartRate.Bradycardia" type:v5 withData:0];

  v6 = [MEMORY[0x277CCD0C0] bradycardiaType];
  [(HDHRNotificationManager *)self _subscribeToFakingNotification:@"com.apple.HeartRate.BradycardiaWithData" type:v6 withData:1];
}

- (void)_subscribeToFakingNotification:(id)a3 type:(id)a4 withData:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  out_token = 0;
  v10 = [v8 UTF8String];
  queue = self->_queue;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __72__HDHRNotificationManager__subscribeToFakingNotification_type_withData___block_invoke;
  v18 = &unk_278660B30;
  objc_copyWeak(&v20, &location);
  v12 = v9;
  v19 = v12;
  v21 = a5;
  notify_register_dispatch(v10, &out_token, queue, &v15);
  fakingNotifyTokens = self->_fakingNotifyTokens;
  v14 = [MEMORY[0x277CCABB0] numberWithInt:{out_token, v15, v16, v17, v18}];
  [(NSMutableArray *)fakingNotifyTokens addObject:v14];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __72__HDHRNotificationManager__subscribeToFakingNotification_type_withData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queue_fakeNotificationWithEventType:*(a1 + 32) withData:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)_unsubscribeToFakingNotifications
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_fakingNotifyTokens;
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

- (void)samplesAdded:anchor:.cold.1()
{
  v2 = OUTLINED_FUNCTION_4_2();
  *v1 = 138543362;
  *v0 = v2;
  v3 = v2;
  OUTLINED_FUNCTION_5_2(&dword_229486000, v4, v5, "[%{public}@] Detected sample inserted with non-local device source");
}

- (void)samplesAdded:anchor:.cold.2()
{
  v2 = OUTLINED_FUNCTION_4_2();
  *v1 = 138543362;
  *v0 = v2;
  v3 = v2;
  OUTLINED_FUNCTION_5_2(&dword_229486000, v4, v5, "[%{public}@] Detected sample inserted with local device source");
}

- (void)_queue_showNotificationForHeartEvent:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = v5;
  v7 = [a2 categoryType];
  v8 = [v7 identifier];
  v9 = HKSensitiveLogItem();
  v11 = 138543618;
  v12 = v5;
  v13 = 2112;
  v14 = v9;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] trying to show notification for unsupported event: %@", &v11, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_showNotificationForHeartEvent:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_10(v0);
  OUTLINED_FUNCTION_1_7(&dword_229486000, v2, v3, "[%{public}@] error archiving event: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __64__HDHRNotificationManager__queue_showNotificationForHeartEvent___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_1_10(v2);
  OUTLINED_FUNCTION_1_7(&dword_229486000, v4, v5, "[%{public}@] error requesting notification: %{public}@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_fakeNotificationWithEventType:(uint64_t)a3 withData:(NSObject *)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v6 = *(*a2 + 40);
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = v6;
  v7 = a1;
  _os_log_error_impl(&dword_229486000, a4, OS_LOG_TYPE_ERROR, "[%{public}@] faking - failed to save event with error: %{public}@", a3, 0x16u);
}

void __73__HDHRNotificationManager__queue_fakeNotificationWithEventType_withData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v14 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = objc_opt_class();
  v4 = *(*(*v0 + 8) + 40);
  v5 = OUTLINED_FUNCTION_3_4(v3);
  OUTLINED_FUNCTION_1_7(&dword_229486000, v6, v7, "[%{public}@] faking - failed to save heart rate with error: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __73__HDHRNotificationManager__queue_fakeNotificationWithEventType_withData___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v14 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = objc_opt_class();
  v4 = *(*(*v0 + 8) + 40);
  v5 = OUTLINED_FUNCTION_3_4(v3);
  OUTLINED_FUNCTION_1_7(&dword_229486000, v6, v7, "[%{public}@] faking - failed to associate heart rate with error: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_queue_fakeCardioFitnessNotificationWithData:repeat:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_10(v0);
  OUTLINED_FUNCTION_1_7(&dword_229486000, v2, v3, "[%{public}@] faking - failed to save event with error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end