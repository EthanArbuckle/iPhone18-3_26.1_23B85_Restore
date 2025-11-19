@interface HDMobilityNotificationManager
- (HDMobilityNotificationManager)initWithProfile:(id)a3 walkingSteadinessAvailabilityManager:(id)a4;
- (void)_queue_showNotificationForLocalSteadinessEvent:(id)a3 completion:(id)a4;
- (void)daemonReady:(id)a3;
- (void)dealloc;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
@end

@implementation HDMobilityNotificationManager

- (HDMobilityNotificationManager)initWithProfile:(id)a3 walkingSteadinessAvailabilityManager:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = HDMobilityNotificationManager;
  v8 = [(HDMobilityNotificationManager *)&v24 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    v10 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v10;

    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    v13 = [WeakRetained daemon];
    [v13 registerForDaemonReady:v9];

    v14 = objc_alloc_init(MEMORY[0x277D11AB0]);
    analyticsManager = v9->_analyticsManager;
    v9->_analyticsManager = v14;

    v16 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v7 healthDataSource:v6 countryCodeSource:0];
    walkingSteadinessFeatureStatusManager = v9->_walkingSteadinessFeatureStatusManager;
    v9->_walkingSteadinessFeatureStatusManager = v16;

    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = objc_opt_class();
      *buf = 138543362;
      v26 = v20;
      _os_log_impl(&dword_251962000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] was created", buf, 0xCu);
    }

    v21 = v9;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543362;
    v11 = objc_opt_class();
    _os_log_impl(&dword_251962000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] stop observing walking steadiness events", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained dataManager];
  v7 = HKMobilityWalkingSteadinessEventType();
  [v6 removeObserver:self forDataType:v7];

  v9.receiver = self;
  v9.super_class = HDMobilityNotificationManager;
  [(HDMobilityNotificationManager *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)daemonReady:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v10 = 138543362;
    v11 = objc_opt_class();
    _os_log_impl(&dword_251962000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] start observing walking steadiness events", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [WeakRetained dataManager];
  v8 = HKMobilityWalkingSteadinessEventType();
  [v7 addObserver:self forDataType:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v26;
    v10 = MEMORY[0x277CCC2F8];
    *&v7 = 138543362;
    v23 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 _source];
        v14 = [v13 _isLocalDevice];

        _HKInitializeLogging();
        v15 = *v10;
        v16 = os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            v17 = v15;
            v18 = objc_opt_class();
            *buf = v23;
            v30 = v18;
            _os_log_impl(&dword_251962000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Detected AppleWalkingSteadinessEvent added with local device source", buf, 0xCu);
          }

          queue = self->_queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __53__HDMobilityNotificationManager_samplesAdded_anchor___block_invoke;
          block[3] = &unk_2796D94B0;
          block[4] = self;
          block[5] = v12;
          dispatch_async(queue, block);
        }

        else if (v16)
        {
          v20 = v15;
          v21 = objc_opt_class();
          *buf = v23;
          v30 = v21;
          _os_log_impl(&dword_251962000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Detected AppleWalkingSteadinessEvent added with non-local device source", buf, 0xCu);
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v8);
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __53__HDMobilityNotificationManager_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__HDMobilityNotificationManager_samplesAdded_anchor___block_invoke_2;
  v4[3] = &unk_2796D9488;
  v4[4] = v2;
  return [v2 _queue_showNotificationForLocalSteadinessEvent:v1 completion:v4];
}

void __53__HDMobilityNotificationManager_samplesAdded_anchor___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2F8];
  v7 = *MEMORY[0x277CCC2F8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v11 = 138543362;
      v12 = objc_opt_class();
      _os_log_impl(&dword_251962000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notified user for AppleWalkingSteadinessEvent successfully.", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    __53__HDMobilityNotificationManager_samplesAdded_anchor___block_invoke_2_cold_1(a1, v6, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_showNotificationForLocalSteadinessEvent:(id)a3 completion:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (!v8)
  {
    [HDMobilityNotificationManager _queue_showNotificationForLocalSteadinessEvent:a2 completion:self];
  }

  v9 = [v7 _source];
  v10 = [v9 _isLocalDevice];

  if ((v10 & 1) == 0)
  {
    [HDMobilityNotificationManager _queue_showNotificationForLocalSteadinessEvent:a2 completion:self];
  }

  v11 = [v7 categoryType];
  v12 = [v11 code];

  if (v12 != 250)
  {
    [HDMobilityNotificationManager _queue_showNotificationForLocalSteadinessEvent:a2 completion:self];
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_251962000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] showing notification for event: %@", buf, 0x16u);
  }

  v15 = [v7 value];
  v16 = HKMobilityNotificationCategoryForWalkingSteadinessEventValue();
  if (v16)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v33 = [WeakRetained notificationManager];

    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy_;
    v28[4] = __Block_byref_object_dispose_;
    v29 = self->_analyticsManager;
    v18 = *(*&buf[8] + 40);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __91__HDMobilityNotificationManager__queue_showNotificationForLocalSteadinessEvent_completion___block_invoke;
    v21[3] = &unk_2796D9500;
    v21[4] = self;
    v22 = v16;
    v25 = buf;
    v24 = v8;
    v27 = v15;
    v23 = v7;
    v26 = v28;
    [v18 removeDeliveredNotificationsWithCategoryIdentifier:v22 completionHandler:v21];

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Unknown notification category for walking steadiness event value: %ld", v15}];
    (*(v8 + 2))(v8, 0, v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __91__HDMobilityNotificationManager__queue_showNotificationForLocalSteadinessEvent_completion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  v28 = 0;
  v3 = [v2 featureStatusWithError:&v28];
  v4 = v28;
  v5 = MEMORY[0x277CCC2F8];
  if (!v3)
  {
    _HKInitializeLogging();
    v6 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = objc_opt_class();
      *buf = 138543618;
      v30 = v9;
      v31 = 2114;
      v32 = v4;
      _os_log_impl(&dword_251962000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unable to get featureStatus. error: %{public}@", buf, 0x16u);
    }
  }

  v10 = [v3 objectForKeyedSubscript:*MEMORY[0x277D11A48]];
  v11 = [v10 areAllRequirementsSatisfied];

  _HKInitializeLogging();
  v12 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = v12;
    v15 = objc_opt_class();
    *buf = 138543618;
    v30 = v15;
    v31 = 1024;
    LODWORD(v32) = v11;
    _os_log_impl(&dword_251962000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Firing notification with shouldHidePregnancyContent: %d", buf, 0x12u);
  }

  v16 = [MEMORY[0x277CE1FC0] hkmobility_requestForCategory:*(a1 + 40) shouldHidePregnancyContent:v11];
  [*(*(*(a1 + 64) + 8) + 40) postNotificationWithRequest:v16 completion:*(a1 + 56)];
  v17 = [HDMobilityWalkingSteadinessAnalyticsNotificationEventDataSource alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v19 = *(a1 + 80);
  v20 = *(a1 + 40);
  v21 = [*(a1 + 48) endDate];
  v22 = [(HDMobilityWalkingSteadinessAnalyticsNotificationEventDataSource *)v17 initWithProfile:WeakRetained category:v20 value:v19 date:v21 isShowingPregnancyContent:v11 ^ 1];

  v23 = *(*(*(a1 + 72) + 8) + 40);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __91__HDMobilityNotificationManager__queue_showNotificationForLocalSteadinessEvent_completion___block_invoke_322;
  v26[3] = &unk_2796D94D8;
  v24 = *(a1 + 40);
  v26[4] = *(a1 + 32);
  v27 = v24;
  [v23 submitNotificationEventWithDataSource:v22 resultHandler:v26];

  v25 = *MEMORY[0x277D85DE8];
}

void __91__HDMobilityNotificationManager__queue_showNotificationForLocalSteadinessEvent_completion___block_invoke_322(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 status] == 1)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = objc_opt_class();
      v8 = *(a1 + 40);
      v9 = [v3 error];
      v11 = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_251962000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unable to submit notification analytics for category: %@, error: %{public}@", &v11, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __53__HDMobilityNotificationManager_samplesAdded_anchor___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2112;
  v10 = a3;
  _os_log_fault_impl(&dword_251962000, v5, OS_LOG_TYPE_FAULT, "[%{public}@] Failed to notify user for AppleWalkingSteadinessEvent with error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_showNotificationForLocalSteadinessEvent:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMobilityNotificationManager.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

- (void)_queue_showNotificationForLocalSteadinessEvent:(uint64_t)a1 completion:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMobilityNotificationManager.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"event._source._isLocalDevice"}];
}

- (void)_queue_showNotificationForLocalSteadinessEvent:(uint64_t)a1 completion:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMobilityNotificationManager.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"event.categoryType.code == _HKDataTypeAppleWalkingSteadinessEvent"}];
}

@end