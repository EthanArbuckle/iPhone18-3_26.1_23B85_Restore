@interface HDHRHypertensionNotificationManager
- (HDHRHypertensionNotificationManager)initWithProfile:(id)profile;
- (void)_queue_addNotificationRequestForHypertensionEvent:(uint64_t)event;
- (void)daemonReady:(id)ready;
- (void)dealloc;
- (void)samplesAdded:(id)added anchor:(id)anchor;
@end

@implementation HDHRHypertensionNotificationManager

- (HDHRHypertensionNotificationManager)initWithProfile:(id)profile
{
  v19 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v16.receiver = self;
  v16.super_class = HDHRHypertensionNotificationManager;
  v5 = [(HDHRHypertensionNotificationManager *)&v16 init];
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v5;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Initializing", buf, 0xCu);
    }

    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialDispatchQueue();
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = objc_alloc(MEMORY[0x277CCCFE8]);
    v10 = [v9 initWithLoggingCategory:*MEMORY[0x277CCC2D0] healthDataSource:profileCopy];
    analyticsEventSubmissionManager = v5->_analyticsEventSubmissionManager;
    v5->_analyticsEventSubmissionManager = v10;

    WeakRetained = objc_loadWeakRetained(&v5->_profile);
    daemon = [WeakRetained daemon];
    [daemon registerForDaemonReady:v5];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isCompanionCapable = [mEMORY[0x277CCDD30] isCompanionCapable];

  if (isCompanionCapable)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    dataManager = [WeakRetained dataManager];
    hypertensionEventType = [MEMORY[0x277CCD0C0] hypertensionEventType];
    [dataManager removeObserver:self forDataType:hypertensionEventType];
  }

  v8.receiver = self;
  v8.super_class = HDHRHypertensionNotificationManager;
  [(HDHRHypertensionNotificationManager *)&v8 dealloc];
}

- (void)daemonReady:(id)ready
{
  v13 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isCompanionCapable = [mEMORY[0x277CCDD30] isCompanionCapable];

  _HKInitializeLogging();
  WeakRetained = HKLogHeartRateCategory();
  v7 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if (isCompanionCapable)
  {
    if (v7)
    {
      v11 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_229486000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[%{public}@] Daemon ready", &v11, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    dataManager = [WeakRetained dataManager];
    hypertensionEventType = [MEMORY[0x277CCD0C0] hypertensionEventType];
    [dataManager addObserver:self forDataType:hypertensionEventType];
  }

  else if (v7)
  {
    v11 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_229486000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[%{public}@] Daemon ready (not companion)", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  v23 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  healthAppHiddenOrNotInstalled = [mEMORY[0x277CCDD30] healthAppHiddenOrNotInstalled];

  _HKInitializeLogging();
  v8 = HKLogHeartRateCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!healthAppHiddenOrNotInstalled)
  {
    if (v9)
    {
      v12 = HRLogSensitiveClassName();
      v13 = HKSensitiveLogItem();
      *buf = 138543618;
      selfCopy2 = v12;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] samplesAdded: %@", buf, 0x16u);
    }

    queue = self->_queue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__HDHRHypertensionNotificationManager_samplesAdded_anchor___block_invoke;
    v16[3] = &unk_27865FE98;
    v17 = addedCopy;
    selfCopy = self;
    dispatch_async(queue, v16);
    unitTesting_notificationNotPostedHandler2 = v17;
    goto LABEL_9;
  }

  if (v9)
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Health App is hidden or deleted, will not post notification", buf, 0xCu);
  }

  unitTesting_notificationNotPostedHandler = [(HDHRHypertensionNotificationManager *)self unitTesting_notificationNotPostedHandler];

  if (unitTesting_notificationNotPostedHandler)
  {
    unitTesting_notificationNotPostedHandler2 = [(HDHRHypertensionNotificationManager *)self unitTesting_notificationNotPostedHandler];
    unitTesting_notificationNotPostedHandler2[2]();
LABEL_9:
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __59__HDHRHypertensionNotificationManager_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v21;
    *&v4 = 138543618;
    v19 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 sourceRevision];
        v10 = [v9 source];
        v11 = [v10 _isLocalDevice];

        if (v11)
        {
          [(HDHRHypertensionNotificationManager *)*(a1 + 40) _queue_addNotificationRequestForHypertensionEvent:v8];
        }

        else
        {
          _HKInitializeLogging();
          v12 = HKLogHeartRateCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(a1 + 40);
            v14 = HRLogSensitiveClassName();
            v15 = HKSensitiveLogItem();
            *buf = v19;
            v25 = v14;
            v26 = 2112;
            v27 = v15;
            _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring event from other devices: %@", buf, 0x16u);
          }

          v16 = [*(a1 + 40) unitTesting_notificationNotPostedHandler];

          if (v16)
          {
            v17 = [*(a1 + 40) unitTesting_notificationNotPostedHandler];
            v17[2]();
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v5);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_queue_addNotificationRequestForHypertensionEvent:(uint64_t)event
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (event)
  {
    dispatch_assert_queue_V2(*(event + 16));
    _HKInitializeLogging();
    v4 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HRLogSensitiveClassName();
      *buf = 138543362;
      v17 = v5;
      _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduling a notification", buf, 0xCu);
    }

    v6 = HDHRHypertensionNotificationRequestForEvent(v3);
    unitTesting_postNotificationWithRequestHandler = [event unitTesting_postNotificationWithRequestHandler];
    v8 = unitTesting_postNotificationWithRequestHandler == 0;

    if (v8)
    {
      objc_initWeak(buf, event);
      WeakRetained = objc_loadWeakRetained((event + 8));
      notificationManager = [WeakRetained notificationManager];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __89__HDHRHypertensionNotificationManager__queue_addNotificationRequestForHypertensionEvent___block_invoke;
      v12[3] = &unk_2786603E0;
      objc_copyWeak(&v15, buf);
      v13 = v6;
      eventCopy = event;
      [notificationManager postNotificationWithRequest:v13 completion:v12];

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }

    else
    {
      [(HDHRHypertensionNotificationManager *)event _queue_addNotificationRequestForHypertensionEvent:v6];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __89__HDHRHypertensionNotificationManager__queue_addNotificationRequestForHypertensionEvent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __89__HDHRHypertensionNotificationManager__queue_addNotificationRequestForHypertensionEvent___block_invoke_cold_1(a1, v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v8 = HRLogSensitiveClassName();
    v9 = [*(a1 + 32) identifier];
    v10 = *MEMORY[0x277D13040];
    v11 = HKSensitiveLogItem();
    v16 = 138543874;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested notification (%{public}@ - %{public}@)", &v16, 0x20u);
  }

  v12 = [HDHRHypertensionNotificationDeliveryEvent alloc];
  v13 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v14 = [(HDHRHypertensionNotificationDeliveryEvent *)v12 initWithProfile:v13 type:0];

  [*(*(a1 + 40) + 24) submitEvent:v14 error:0];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_queue_addNotificationRequestForHypertensionEvent:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v3 = [a1 unitTesting_postNotificationWithRequestHandler];
  v3[2](v3, a2);
}

void __89__HDHRHypertensionNotificationManager__queue_addNotificationRequestForHypertensionEvent___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = HRLogSensitiveClassName();
  v8 = [*(a1 + 32) identifier];
  v9 = *MEMORY[0x277D13040];
  v10 = HKSensitiveLogItem();
  v12 = 138544130;
  v13 = v7;
  v14 = 2114;
  v15 = v8;
  v16 = 2114;
  v17 = v10;
  v18 = 2114;
  v19 = a2;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to request notification (%{public}@ - %{public}@): %{public}@)", &v12, 0x2Au);

  v11 = *MEMORY[0x277D85DE8];
}

@end