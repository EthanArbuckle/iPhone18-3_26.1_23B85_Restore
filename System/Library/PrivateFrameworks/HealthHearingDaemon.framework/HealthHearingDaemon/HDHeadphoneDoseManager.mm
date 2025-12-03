@interface HDHeadphoneDoseManager
- (BOOL)_lock_rebuildWithAssertion:(id)assertion error:(id *)error;
- (BOOL)_lock_rebuildWithAssertion:(id)assertion resetSyncNotification:(BOOL)notification error:(id *)error;
- (BOOL)_lock_updateCurrentDoseUsingStatisticsResult:(id)result assertion:(id)assertion error:(id *)error;
- (BOOL)_overrideDoseLimit:(id)limit error:(id *)error;
- (BOOL)_rebuildWithError:(id *)error;
- (HDHeadphoneDoseManager)initWithProfile:(id)profile;
- (id)_fetchDoseLimitInfoWithError:(id *)error;
- (id)_infoDictWithError:(id *)error;
- (id)_infoWithError:(id *)error;
- (id)_initWithProfile:(id)profile keyValueStore:(id)store calculator:(id)calculator unitTesting_profileDidBecomeReadyHandler:(id)handler unitTesting_didObserveProtectedDataHandler:(id)dataHandler unitTesting_didUpdateHandler:(id)updateHandler;
- (id)_lock_pruneWithNowDate:(id)date limit:(unint64_t)limit error:(id *)error;
- (id)_pruneWithNowDate:(id)date limit:(unint64_t)limit error:(id *)error;
- (id)_takeAccessibilityAssertion;
- (id)transactionalQuantityInsertHandlerForProfile:(id)profile journaled:(BOOL)journaled count:(int64_t)count;
- (void)_handleSignificantTimeChangeNotification:(id)notification;
- (void)_headphoneExposureNotificationsEnabledDidChange:(id)change;
- (void)_lock_setCollectionAssertion:(id)assertion;
- (void)_lock_updateCollectionAssertionForDoseAccumulated:(double)accumulated;
- (void)_lock_updateIsEnabledForInitialSetup:(BOOL)setup assertion:(id)assertion;
- (void)_lock_updateWithNotifications:(id)notifications journaled:(BOOL)journaled assertion:(id)assertion;
- (void)_lock_updateWithRemoteNotificationDismissalDate:(id)date assertion:(id)assertion;
- (void)_registerForSignificantTimeChangeNotification;
- (void)_reportSyncedHeadphoneNotificationSamples:(id)samples journaled:(BOOL)journaled nowDate:(id)date;
- (void)_takeAccessibilityAssertion;
- (void)_unregisterForSignificantTimeChangeNotification;
- (void)_updateCurrentDoseFromResult:(id)result context:(id)context sampleCount:(unint64_t)count assertion:(id)assertion;
- (void)_updateWithRemoteNotificationDismissalDate:(id)date assertion:(id)assertion;
- (void)dealloc;
- (void)didReceiveResetDosageToFireDate:(id)date;
- (void)profile:(id)profile didDiscardSeriesOfType:(id)type;
- (void)profileDidBecomeReady:(id)ready;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)samplesJournaled:(id)journaled type:(id)type;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor;
- (void)unitTesting_didReceiveResetDosageToFireDate:(id)date;
@end

@implementation HDHeadphoneDoseManager

- (id)_takeAccessibilityAssertion
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v8 = [v3 stringWithFormat:@"%@-%@", v5, uUIDString];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v14 = 0;
  v11 = [database takeAccessibilityAssertionWithOwnerIdentifier:v8 timeout:&v14 error:300.0];
  v12 = v14;

  if (!v11)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
    {
      [HDHeadphoneDoseManager _takeAccessibilityAssertion];
    }
  }

  return v11;
}

- (HDHeadphoneDoseManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v5 = [[HDHeadphoneDoseMetadataStore alloc] initWithProfile:profileCopy];
  v6 = [[HDHeadphoneAudioExposureStatisticsCalculator alloc] initWithProfile:profileCopy keyValueStore:v5];
  v7 = [(HDHeadphoneDoseManager *)self _initWithProfile:profileCopy keyValueStore:v5 calculator:v6];

  return v7;
}

- (id)_initWithProfile:(id)profile keyValueStore:(id)store calculator:(id)calculator unitTesting_profileDidBecomeReadyHandler:(id)handler unitTesting_didObserveProtectedDataHandler:(id)dataHandler unitTesting_didUpdateHandler:(id)updateHandler
{
  profileCopy = profile;
  storeCopy = store;
  obj = calculator;
  calculatorCopy = calculator;
  handlerCopy = handler;
  dataHandlerCopy = dataHandler;
  updateHandlerCopy = updateHandler;
  v19 = profileCopy;
  profileIdentifier = [profileCopy profileIdentifier];
  v51 = storeCopy;
  _profileIdentifier = [storeCopy _profileIdentifier];
  LOBYTE(dataHandler) = [profileIdentifier isEqual:_profileIdentifier];

  if ((dataHandler & 1) == 0)
  {
    [HDHeadphoneDoseManager _initWithProfile:keyValueStore:calculator:unitTesting_profileDidBecomeReadyHandler:unitTesting_didObserveProtectedDataHandler:unitTesting_didUpdateHandler:];
  }

  v53.receiver = self;
  v53.super_class = HDHeadphoneDoseManager;
  v22 = [(HDHeadphoneDoseManager *)&v53 init];
  v23 = v22;
  v24 = dataHandlerCopy;
  if (v22)
  {
    objc_storeWeak(&v22->_profile, v19);
    v23->_dose = -1.0;
    v23->_lock._os_unfair_lock_opaque = 0;
    v25 = HKCreateSerialDispatchQueue();
    queue = v23->_queue;
    v23->_queue = v25;

    v23->_enabled = [MEMORY[0x277D11268] isHeadphoneExposureNotificationsEnabled];
    objc_storeStrong(&v23->_keyValueStore, store);
    v27 = [[HDHeadphoneExposureNotificationSyncManager alloc] initWithProfile:v19];
    notificationSyncManager = v23->_notificationSyncManager;
    v23->_notificationSyncManager = v27;

    v29 = [[HDHeadphoneExposureNotificationCenter alloc] initWithProfile:v19 syncManager:v23->_notificationSyncManager];
    notificationCenter = v23->_notificationCenter;
    v23->_notificationCenter = v29;

    objc_storeStrong(&v23->_statisticsCalculator, obj);
    collectionAssertion = v23->_collectionAssertion;
    v23->_collectionAssertion = 0;

    v32 = MEMORY[0x253081C40](handlerCopy);
    unitTesting_profileDidBecomeReadyHandler = v23->_unitTesting_profileDidBecomeReadyHandler;
    v23->_unitTesting_profileDidBecomeReadyHandler = v32;

    v34 = MEMORY[0x253081C40](dataHandlerCopy);
    unitTesting_didObserveProtectedDataHandler = v23->_unitTesting_didObserveProtectedDataHandler;
    v23->_unitTesting_didObserveProtectedDataHandler = v34;

    v36 = MEMORY[0x253081C40](updateHandlerCopy);
    unitTesting_didUpdateHandler = v23->_unitTesting_didUpdateHandler;
    v23->_unitTesting_didUpdateHandler = v36;

    lastLockDateForAnalytics = v23->_lastLockDateForAnalytics;
    v23->_lastLockDateForAnalytics = 0;

    [(HDHeadphoneDoseManager *)v23 _registerForSignificantTimeChangeNotification];
    WeakRetained = objc_loadWeakRetained(&v23->_profile);
    dataManager = [WeakRetained dataManager];
    v41 = HKHeadphoneAudioExposureEventType();
    [dataManager addObserver:v23 forDataType:v41];

    v42 = objc_loadWeakRetained(&v23->_profile);
    dataManager2 = [v42 dataManager];
    quantitySeriesManager = [dataManager2 quantitySeriesManager];
    v45 = HKHeadphoneAudioExposureType();
    [quantitySeriesManager addObserver:v23 forType:v45 queue:v23->_queue];

    v46 = objc_loadWeakRetained(&v23->_profile);
    [v46 registerProfileReadyObserver:v23 queue:v23->_queue];

    [(HDHeadphoneExposureNotificationSyncManager *)v23->_notificationSyncManager addObserver:v23 queue:v23->_queue];
    v47 = v23;
  }

  return v23;
}

- (void)dealloc
{
  [(HDHeadphoneDoseManager *)self _unregisterForSignificantTimeChangeNotification];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database removeProtectedDataObserver:self];

  v5 = objc_loadWeakRetained(&self->_profile);
  dataManager = [v5 dataManager];
  v7 = HKHeadphoneAudioExposureEventType();
  [dataManager removeObserver:self forDataType:v7];

  v8 = objc_loadWeakRetained(&self->_profile);
  dataManager2 = [v8 dataManager];
  quantitySeriesManager = [dataManager2 quantitySeriesManager];
  v11 = HKHeadphoneAudioExposureType();
  [quantitySeriesManager removeObserver:self forType:v11];

  [(HDHeadphoneExposureNotificationSyncManager *)self->_notificationSyncManager removeObserver:self];
  [(HDDataCollectionAssertion *)self->_collectionAssertion invalidate];
  v12.receiver = self;
  v12.super_class = HDHeadphoneDoseManager;
  [(HDHeadphoneDoseManager *)&v12 dealloc];
}

- (void)profileDidBecomeReady:(id)ready
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 138543362;
    v14 = objc_opt_class();
    v6 = v14;
    _os_log_impl(&dword_251764000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Profile ready; Dispatch setup to maintenance queue.", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__HDHeadphoneDoseManager_profileDidBecomeReady___block_invoke;
  v12[3] = &unk_2796C6390;
  v12[4] = self;
  [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v12];

  unitTesting_profileDidBecomeReadyHandler = self->_unitTesting_profileDidBecomeReadyHandler;
  if (unitTesting_profileDidBecomeReadyHandler)
  {
    unitTesting_profileDidBecomeReadyHandler[2](unitTesting_profileDidBecomeReadyHandler, self);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __48__HDHeadphoneDoseManager_profileDidBecomeReady___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 32));
  v6 = [*(a1 + 32) _takeAccessibilityAssertion];
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__headphoneExposureNotificationsEnabledDidChange_ name:*MEMORY[0x277D11248] object:0];

  [MEMORY[0x277D11268] startObservingForChanges];
  [*(a1 + 32) _lock_updateIsEnabledForInitialSetup:1 assertion:v6];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = [WeakRetained database];
  [v4 addProtectedDataObserver:*(a1 + 32) queue:*(*(a1 + 32) + 32)];

  os_unfair_lock_unlock((*(a1 + 32) + 24));
  [v6 invalidate];
  v5 = *(*(a1 + 32) + 120);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  v17 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 138543618;
    v14 = objc_opt_class();
    v15 = 2048;
    v16 = [addedCopy count];
    _os_log_impl(&dword_251764000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Processing %lu added HAEN samples.", buf, 0x16u);
  }

  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__HDHeadphoneDoseManager_samplesAdded_anchor___block_invoke;
  v11[3] = &unk_2796C63B8;
  v11[4] = self;
  v12 = addedCopy;
  v9 = addedCopy;
  dispatch_async(queue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __46__HDHeadphoneDoseManager_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _takeAccessibilityAssertion];
  os_unfair_lock_lock((*(a1 + 32) + 24));
  [*(a1 + 32) _lock_updateWithNotifications:*(a1 + 40) journaled:0 assertion:v2];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x277CBEAA8] now];
  [v3 _reportSyncedHeadphoneNotificationSamples:v4 journaled:0 nowDate:v5];

  os_unfair_lock_unlock((*(a1 + 32) + 24));
  [v2 invalidate];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = objc_opt_class();
    v10 = [*(a1 + 40) count];
    v12 = 138543618;
    v13 = v9;
    v14 = 2048;
    v15 = v10;
    _os_log_impl(&dword_251764000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Processed added %lu HAEN samples.", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)samplesJournaled:(id)journaled type:(id)type
{
  v17 = *MEMORY[0x277D85DE8];
  journaledCopy = journaled;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 138543618;
    v14 = objc_opt_class();
    v15 = 2048;
    v16 = [journaledCopy count];
    _os_log_impl(&dword_251764000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Processing %lu journaled HAEN samples.", buf, 0x16u);
  }

  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__HDHeadphoneDoseManager_samplesJournaled_type___block_invoke;
  v11[3] = &unk_2796C63B8;
  v11[4] = self;
  v12 = journaledCopy;
  v9 = journaledCopy;
  dispatch_async(queue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __48__HDHeadphoneDoseManager_samplesJournaled_type___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 24));
  [*(a1 + 32) _lock_updateWithNotifications:*(a1 + 40) journaled:1 assertion:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CBEAA8] now];
  [v2 _reportSyncedHeadphoneNotificationSamples:v3 journaled:1 nowDate:v4];

  os_unfair_lock_unlock((*(a1 + 32) + 24));
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = objc_opt_class();
    v9 = [*(a1 + 40) count];
    v11 = 138543618;
    v12 = v8;
    v13 = 2048;
    v14 = v9;
    _os_log_impl(&dword_251764000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Processed %lu journaled HAEN samples.", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_reportSyncedHeadphoneNotificationSamples:(id)samples journaled:(BOOL)journaled nowDate:(id)date
{
  v27 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  dateCopy = date;
  if (HKImproveHealthAndActivityAnalyticsAllowed())
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    [WeakRetained profileType];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = samplesCopy;
    v9 = samplesCopy;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v14 hk_isHearingSevenDayDoseNotification])
            {
              sourceRevision = [v14 sourceRevision];
              source = [sourceRevision source];
              _isLocalDevice = [source _isLocalDevice];

              if ((_isLocalDevice & 1) == 0)
              {
                v21 = dateCopy;
                AnalyticsSendEventLazy();
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    samplesCopy = v19;
  }

  v18 = *MEMORY[0x277D85DE8];
}

id __86__HDHeadphoneDoseManager__reportSyncedHeadphoneNotificationSamples_journaled_nowDate___block_invoke(uint64_t a1)
{
  v14[3] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = [*(a1 + 40) endDate];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v3 - v5;

  v13[0] = @"notificationSyncDelta";
  v7 = [HDAudioAnalyticsUtilities boundedIntegerForSyncDelayDuration:v6];
  v14[0] = v7;
  v13[1] = @"journaled";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v14[1] = v8;
  v13[2] = @"primaryProfile";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 49)];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor
{
  v15 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 138543362;
    v14 = objc_opt_class();
    _os_log_impl(&dword_251764000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] HAEN samples were removed, requesting rebuild.", buf, 0xCu);
  }

  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HDHeadphoneDoseManager_samplesOfTypesWereRemoved_anchor___block_invoke;
  v11[3] = &unk_2796C63B8;
  v11[4] = self;
  v12 = removedCopy;
  v9 = removedCopy;
  dispatch_async(queue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __59__HDHeadphoneDoseManager_samplesOfTypesWereRemoved_anchor___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _takeAccessibilityAssertion];
  os_unfair_lock_lock((*v2 + 24));
  v4 = *v2;
  if (*(*v2 + 40))
  {
    v21 = 0;
    v5 = [(os_unfair_lock_s *)v4 _lock_rebuildWithAssertion:v3 resetSyncNotification:1 error:&v21];
    v6 = v21;
    v7 = v6;
    if (v5)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *v2;
        v10 = v8;
        v11 = objc_opt_class();
        *buf = 138543362;
        v23 = v11;
        _os_log_impl(&dword_251764000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Succesfully rebuilt 7-Day HAEN dose after discarding HAENs.", buf, 0xCu);
      }
    }

    else
    {
      v17 = [v6 hearing_isExpectedError];
      _HKInitializeLogging();
      v18 = *MEMORY[0x277CCC2C8];
      v19 = *MEMORY[0x277CCC2C8];
      if (v17)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          __59__HDHeadphoneDoseManager_samplesOfTypesWereRemoved_anchor___block_invoke_cold_2(v2, v18);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        __59__HDHeadphoneDoseManager_samplesOfTypesWereRemoved_anchor___block_invoke_cold_1(v2, v18);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = v12;
      v15 = objc_opt_class();
      v16 = [*(a1 + 40) count];
      *buf = 138543618;
      v23 = v15;
      v24 = 2048;
      v25 = v16;
      _os_log_impl(&dword_251764000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring %lu removed sampleTypes since HAEN is disabled.", buf, 0x16u);
    }

    v7 = 0;
  }

  os_unfair_lock_unlock((*v2 + 24));
  [v3 invalidate];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)profile:(id)profile didDiscardSeriesOfType:(id)type
{
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC2C8];
  v6 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 138543362;
    v22 = objc_opt_class();
    _os_log_impl(&dword_251764000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] HAE samples were removed, requesting rebuild.", buf, 0xCu);
  }

  _takeAccessibilityAssertion = [(HDHeadphoneDoseManager *)self _takeAccessibilityAssertion];
  os_unfair_lock_lock(&self->_lock);
  if (self->_enabled)
  {
    v20 = 0;
    v9 = [(HDHeadphoneDoseManager *)self _lock_rebuildWithAssertion:_takeAccessibilityAssertion error:&v20];
    v10 = v20;
    v11 = v10;
    if (v9)
    {
      _HKInitializeLogging();
      v12 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = objc_opt_class();
        *buf = 138543362;
        v22 = v14;
        _os_log_impl(&dword_251764000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Succesfully rebuilt 7-Day HAEN dose after discarding HAE Series.", buf, 0xCu);
      }
    }

    else
    {
      hearing_isExpectedError = [v10 hearing_isExpectedError];
      _HKInitializeLogging();
      v18 = *v5;
      if (hearing_isExpectedError)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [HDHeadphoneDoseManager profile:didDiscardSeriesOfType:];
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [HDHeadphoneDoseManager profile:didDiscardSeriesOfType:];
      }
    }

    goto LABEL_14;
  }

  _HKInitializeLogging();
  v15 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v15;
    v16 = objc_opt_class();
    *buf = 138543362;
    v22 = v16;
    _os_log_impl(&dword_251764000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring removed HAE Series since HAEN is disabled.", buf, 0xCu);
LABEL_14:
  }

  os_unfair_lock_unlock(&self->_lock);
  [_takeAccessibilityAssertion invalidate];

  v19 = *MEMORY[0x277D85DE8];
}

- (id)transactionalQuantityInsertHandlerForProfile:(id)profile journaled:(BOOL)journaled count:(int64_t)count
{
  journaledCopy = journaled;
  v33 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  dispatch_assert_queue_V2(self->_queue);
  if (os_unfair_lock_trylock(&self->_lock))
  {
    enabled = self->_enabled;
    os_unfair_lock_unlock(&self->_lock);
    if (!enabled)
    {
LABEL_3:
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = objc_opt_class();
        v13 = @"added";
        *buf = 138543874;
        *&buf[4] = v12;
        if (journaledCopy)
        {
          v13 = @"journaled";
        }

        *&buf[12] = 2048;
        *&buf[14] = count;
        *&buf[22] = 2114;
        v30 = v13;
        v14 = v12;
        _os_log_impl(&dword_251764000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring %lu %{public}@ HAE sample(s) since HAEN Feature is disabled", buf, 0x20u);
      }

      v15 = 0;
      goto LABEL_17;
    }
  }

  else if (([MEMORY[0x277D11268] isHeadphoneExposureNotificationsEnabled] & 1) == 0)
  {
    goto LABEL_3;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = objc_opt_class();
    v19 = @"added";
    *buf = 138543874;
    *&buf[4] = v18;
    if (journaledCopy)
    {
      v19 = @"journaled";
    }

    *&buf[12] = 2048;
    *&buf[14] = count;
    *&buf[22] = 2114;
    v30 = v19;
    _os_log_impl(&dword_251764000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Inserted %ld %{public}@ samples", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:count];
  if (journaledCopy)
  {
    _takeAccessibilityAssertion = 0;
  }

  else
  {
    _takeAccessibilityAssertion = [(HDHeadphoneDoseManager *)self _takeAccessibilityAssertion];
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __87__HDHeadphoneDoseManager_transactionalQuantityInsertHandlerForProfile_journaled_count___block_invoke;
  v24[3] = &unk_2796C6408;
  v26 = buf;
  countCopy = count;
  v28 = journaledCopy;
  v24[4] = self;
  v25 = _takeAccessibilityAssertion;
  v21 = _takeAccessibilityAssertion;
  v15 = MEMORY[0x253081C40](v24);

  _Block_object_dispose(buf, 8);
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];

  return v15;
}

void __87__HDHeadphoneDoseManager_transactionalQuantityInsertHandlerForProfile_journaled_count___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  v107 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 32));
  v18 = [v15 endDate];
  [v18 timeIntervalSinceNow];
  v20 = v19;

  if (v20 >= -(608400.0 + 3600.0))
  {
    v21 = MEMORY[0x277CCD800];
    v22 = [v15 startDate];
    [v15 endDate];
    v23 = v94 = v17;
    v24 = [v16 metadata];
    v25 = [v21 quantitySampleWithType:v14 quantity:v13 startDate:v22 endDate:v23 metadata:v24];

    v17 = v94;
    v26 = [v16 sourceRevision];
    [v25 _setSourceRevision:v26];

    [*(*(*(a1 + 48) + 8) + 40) addObject:v25];
  }

  if (a7)
  {
    if (![*(*(*(a1 + 48) + 8) + 40) count])
    {
LABEL_36:
      [*(a1 + 40) invalidate];
      goto LABEL_37;
    }

    _HKInitializeLogging();
    v27 = MEMORY[0x277CCC2C8];
    v28 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 32);
      v30 = v28;
      v31 = objc_opt_class();
      v32 = *(a1 + 56);
      v33 = @"added";
      if (*(a1 + 64))
      {
        v33 = @"journaled";
      }

      *buf = 138543874;
      v100 = v31;
      v101 = 2048;
      v102 = v32;
      v103 = 2114;
      v104 = v33;
      v34 = v31;
      _os_log_impl(&dword_251764000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Applying %ld %{public}@ samples", buf, 0x20u);
    }

    _HKInitializeLogging();
    v35 = *v27;
    if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(a1 + 32);
      v37 = v35;
      v38 = objc_opt_class();
      v39 = v38;
      v40 = v15;
      v41 = v16;
      v42 = v14;
      v43 = v13;
      v44 = v17;
      if (*(a1 + 64))
      {
        v45 = @"journaled";
      }

      else
      {
        v45 = @"added";
      }

      v46 = *(*(*(a1 + 48) + 8) + 40);
      v95 = v38;
      v47 = v46;
      v27 = MEMORY[0x277CCC2C8];
      v48 = [v47 count];
      *buf = 138543874;
      v100 = v39;
      v101 = 2114;
      v102 = v45;
      v17 = v44;
      v13 = v43;
      v14 = v42;
      v16 = v41;
      v15 = v40;
      v103 = 2048;
      v104 = v48;
      _os_log_impl(&dword_251764000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] Total Accumulated %{public}@ samples: %ld", buf, 0x20u);
    }

    v49 = *(*(*(a1 + 48) + 8) + 40);
    if (*(a1 + 64) == 1)
    {
      [HDHeadphoneExposureSampleBatch batchWithJournaledSamples:v49];
    }

    else
    {
      [HDHeadphoneExposureSampleBatch batchWithAddedSamples:v49 anchor:v17];
    }
    v50 = ;
    v96 = v17;
    _HKInitializeLogging();
    v51 = v27;
    v52 = *v27;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = *(a1 + 32);
      v54 = v52;
      v55 = objc_opt_class();
      v56 = v55;
      v57 = [v50 canTriggerUserNotification];
      v58 = @"NO";
      if (v57)
      {
        v58 = @"YES";
      }

      *buf = 138543618;
      v100 = v55;
      v101 = 2112;
      v102 = v58;
      _os_log_impl(&dword_251764000, v54, OS_LOG_TYPE_DEFAULT, "[%{public}@] Is Batch Eligible For Notifications: %@", buf, 0x16u);
    }

    v59 = @"added";
    if (*(a1 + 64))
    {
      v59 = @"journaled";
    }

    v60 = v59;
    os_unfair_lock_lock((*(a1 + 32) + 24));
    v61 = *(a1 + 40);
    v62 = *(*(a1 + 32) + 72);
    v98 = 0;
    v63 = [v62 updateWithExposure:v50 assertion:v61 error:&v98];
    v92 = v63;
    v93 = v98;
    if (v63)
    {
      v91 = v50;
      v64 = v60;
      v65 = *(a1 + 32);
      v66 = *(a1 + 40);
      v97 = 0;
      v67 = [v65 _lock_updateCurrentDoseUsingStatisticsResult:v63 assertion:v66 error:&v97];
      v68 = v97;
      _HKInitializeLogging();
      v69 = *v51;
      v70 = *v51;
      if (v67)
      {
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v71 = *(a1 + 32);
          v72 = v69;
          v73 = objc_opt_class();
          v74 = *(a1 + 56);
          *buf = 138543874;
          v100 = v73;
          v101 = 2048;
          v102 = v74;
          v103 = 2114;
          v104 = v64;
          _os_log_impl(&dword_251764000, v72, OS_LOG_TYPE_DEFAULT, "[%{public}@] Applied %ld %{public}@ samples to dose", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        v84 = *(a1 + 32);
        v85 = v69;
        v86 = objc_opt_class();
        v87 = *(a1 + 56);
        *buf = 138544130;
        v100 = v86;
        v101 = 2048;
        v102 = v87;
        v103 = 2114;
        v104 = v64;
        v105 = 2112;
        v82 = v93;
        v106 = v93;
        _os_log_error_impl(&dword_251764000, v85, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to apply %ld %{public}@ samples to dose: %@", buf, 0x2Au);

        v60 = v64;
        v50 = v91;
        goto LABEL_35;
      }

      v60 = v64;
      v50 = v91;
LABEL_34:
      v82 = v93;
LABEL_35:
      os_unfair_lock_unlock((*(a1 + 32) + 24));

      v17 = v96;
      goto LABEL_36;
    }

    v75 = *(a1 + 40);
    _HKInitializeLogging();
    v76 = *v51;
    v77 = *v51;
    if (v75)
    {
      if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
      {
        v78 = *(a1 + 32);
        v79 = v76;
        v80 = objc_opt_class();
        v81 = *(a1 + 56);
        *buf = 138544130;
        v100 = v80;
        v101 = 2048;
        v102 = v81;
        v103 = 2114;
        v104 = v60;
        v105 = 2112;
        v82 = v93;
        v106 = v93;
        _os_log_fault_impl(&dword_251764000, v79, OS_LOG_TYPE_FAULT, "[%{public}@] Failed to apply %ld %{public}@ samples to statistics: %@", buf, 0x2Au);
LABEL_40:

        v68 = 0;
        goto LABEL_35;
      }
    }

    else if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      v88 = *(a1 + 32);
      v79 = v76;
      v89 = objc_opt_class();
      v90 = *(a1 + 56);
      *buf = 138544130;
      v100 = v89;
      v101 = 2048;
      v102 = v90;
      v103 = 2114;
      v104 = v60;
      v105 = 2112;
      v82 = v93;
      v106 = v93;
      _os_log_error_impl(&dword_251764000, v79, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to apply %ld %{public}@ samples to statistics: %@", buf, 0x2Au);
      goto LABEL_40;
    }

    v68 = 0;
    goto LABEL_34;
  }

LABEL_37:

  v83 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveResetDosageToFireDate:(id)date
{
  v18 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = [MEMORY[0x277CBEAA8] now];
    *buf = 138543875;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 2113;
    v17 = dateCopy;
    _os_log_impl(&dword_251764000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received reset dosage notification at %{public}@ for fire date %{private}@.", buf, 0x20u);
  }

  _takeAccessibilityAssertion = [(HDHeadphoneDoseManager *)self _takeAccessibilityAssertion];
  [(HDHeadphoneDoseManager *)self _updateWithRemoteNotificationDismissalDate:dateCopy assertion:_takeAccessibilityAssertion];
  [_takeAccessibilityAssertion invalidate];
  if (self->_unitTesting_didFinishResetDosageToFireDate)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__HDHeadphoneDoseManager_didReceiveResetDosageToFireDate___block_invoke;
    block[3] = &unk_2796C6390;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __58__HDHeadphoneDoseManager_didReceiveResetDosageToFireDate___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) unitTesting_didFinishResetDosageToFireDate];
  v1[2]();
}

- (BOOL)_rebuildWithError:(id *)error
{
  _takeAccessibilityAssertion = [(HDHeadphoneDoseManager *)self _takeAccessibilityAssertion];
  os_unfair_lock_lock(&self->_lock);
  LOBYTE(error) = [(HDHeadphoneDoseManager *)self _lock_rebuildWithAssertion:_takeAccessibilityAssertion error:error];
  os_unfair_lock_unlock(&self->_lock);
  [_takeAccessibilityAssertion invalidate];

  return error;
}

- (id)_infoWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  v4 = [MEMORY[0x277CBEAA8] now];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [HDHeadphoneAudioExposureStatisticsBucket _currentDoseStringForEndDate:v4 earliestStartDate:0 profile:WeakRetained];

  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [MEMORY[0x277D11268] isHeadphoneExposureNotificationsEnabled];
  v8 = HKStringFromBool();
  [v7 appendFormat:@"HAEN Enabled:\t\t %@\n", v8];

  [v7 appendFormat:@"Current Dose:\t\t %@\n", v6];
  dose = self->_dose;
  if (dose >= 0.0)
  {
    v14 = dose * 100.0;
    v10 = @"Accumulated Dose:\t %.2f%%\n";
  }

  else
  {
    v10 = @"Accumulated Dose:\t Not Yet Determined\n";
  }

  [v7 appendFormat:v10, *&v14];
  _info = [(HDHeadphoneDoseMetadataStore *)self->_keyValueStore _info];
  [v7 appendString:_info];

  os_unfair_lock_unlock(&self->_lock);
  v12 = [v7 copy];

  return v12;
}

- (id)_infoDictWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [MEMORY[0x277CBEAA8] now];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [HDHeadphoneAudioExposureStatisticsBucket _currentDoseStringForEndDate:v5 earliestStartDate:0 profile:WeakRetained];

  [MEMORY[0x277D11268] isHeadphoneExposureNotificationsEnabled];
  v8 = HKStringFromBool();
  [v4 setObject:v8 forKeyedSubscript:@"haen_enabled"];

  [v4 setObject:v7 forKeyedSubscript:@"current_dose"];
  if (self->_dose < 0.0)
  {
    [v4 setObject:@"n/a" forKeyedSubscript:@"accumulated_dose"];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%.2f", self->_dose * 100.0];
    [v4 setObject:v9 forKeyedSubscript:@"accumulated_dose"];
  }

  _infoDict = [(HDHeadphoneDoseMetadataStore *)self->_keyValueStore _infoDict];
  [v4 addEntriesFromDictionary:_infoDict];

  os_unfair_lock_unlock(&self->_lock);
  v11 = [v4 copy];

  return v11;
}

- (id)_pruneWithNowDate:(id)date limit:(unint64_t)limit error:(id *)error
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(HDHeadphoneDoseManager *)self _lock_pruneWithNowDate:dateCopy limit:limit error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)_lock_pruneWithNowDate:(id)date limit:(unint64_t)limit error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  _takeAccessibilityAssertion = [(HDHeadphoneDoseManager *)self _takeAccessibilityAssertion];
  v10 = [(HDHeadphoneAudioExposureStatisticsCalculator *)self->_statisticsCalculator pruneWithNowDate:dateCopy limit:limit error:error];

  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = objc_opt_class();
    prunedCount = [v10 prunedCount];
    v21 = 138543618;
    v22 = v13;
    v23 = 2114;
    v24 = prunedCount;
    _os_log_impl(&dword_251764000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Pruned %{public}@ HAE Buckets.", &v21, 0x16u);
  }

  if (!v10)
  {
    [_takeAccessibilityAssertion invalidate];
    goto LABEL_8;
  }

  prunedCount2 = [v10 prunedCount];
  unsignedLongValue = [prunedCount2 unsignedLongValue];

  if (unsignedLongValue)
  {
    v17 = [(HDHeadphoneDoseManager *)self _lock_updateCurrentDoseUsingStatisticsResult:v10 assertion:_takeAccessibilityAssertion error:error];
    [_takeAccessibilityAssertion invalidate];
    if (v17)
    {
      goto LABEL_10;
    }

LABEL_8:
    prunedCount3 = 0;
    goto LABEL_11;
  }

  [_takeAccessibilityAssertion invalidate];
LABEL_10:
  prunedCount3 = [v10 prunedCount];
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return prunedCount3;
}

- (void)unitTesting_didReceiveResetDosageToFireDate:(id)date
{
  dateCopy = date;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HDHeadphoneDoseManager_unitTesting_didReceiveResetDosageToFireDate___block_invoke;
  v7[3] = &unk_2796C63B8;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_async(queue, v7);
}

- (id)_fetchDoseLimitInfoWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HDHeadphoneDoseMetadataStore *)self->_keyValueStore _fetchDoseLimitInfoWithError:error];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)_overrideDoseLimit:(id)limit error:(id *)error
{
  limitCopy = limit;
  os_unfair_lock_lock(&self->_lock);
  LOBYTE(error) = [(HDHeadphoneDoseMetadataStore *)self->_keyValueStore _overrideDoseLimit:limitCopy error:error];

  os_unfair_lock_unlock(&self->_lock);
  return error;
}

- (void)_headphoneExposureNotificationsEnabledDidChange:(id)change
{
  _takeAccessibilityAssertion = [(HDHeadphoneDoseManager *)self _takeAccessibilityAssertion];
  os_unfair_lock_lock(&self->_lock);
  [(HDHeadphoneDoseManager *)self _lock_updateIsEnabledForInitialSetup:0 assertion:_takeAccessibilityAssertion];
  os_unfair_lock_unlock(&self->_lock);
  [_takeAccessibilityAssertion invalidate];
}

- (void)_lock_updateIsEnabledForInitialSetup:(BOOL)setup assertion:(id)assertion
{
  setupCopy = setup;
  v53 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  enabled = self->_enabled;
  self->_enabled = [MEMORY[0x277D11268] isHeadphoneExposureNotificationsEnabled];
  isSetup = [(HDHeadphoneAudioExposureStatisticsCalculator *)self->_statisticsCalculator isSetup];
  v10 = self->_enabled;
  if (v10 == 1)
  {
    if ((enabled & isSetup & 1) == 0)
    {
      if (isSetup)
      {
        if (enabled)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"HDHeadphoneDoseManager.m" lineNumber:572 description:@"Unreachable code has been executed"];

          goto LABEL_25;
        }

        if (setupCopy)
        {
          [HDHeadphoneDoseManager _lock_updateIsEnabledForInitialSetup:assertion:];
        }

        _HKInitializeLogging();
        v21 = *MEMORY[0x277CCC2C8];
        if (!os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
        {
LABEL_25:
          statisticsCalculator = self->_statisticsCalculator;
          v44 = 0;
          v23 = [(HDHeadphoneAudioExposureStatisticsCalculator *)statisticsCalculator rebuildWithAssertion:assertionCopy error:&v44];
          v24 = v44;
          v25 = v24;
          if (v23)
          {
            v43 = 0;
            v26 = [(HDHeadphoneDoseManager *)self _lock_updateCurrentDoseUsingStatisticsResult:v23 assertion:assertionCopy error:&v43];
            v27 = v43;
            _HKInitializeLogging();
            v28 = *MEMORY[0x277CCC2C8];
            v29 = *MEMORY[0x277CCC2C8];
            if (!v26)
            {
              if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_35;
              }

              v30 = v28;
              v39 = objc_opt_class();
              v40 = self->_enabled;
              *buf = 138544386;
              v46 = v39;
              v47 = 1024;
              *v48 = v40;
              *&v48[4] = 1024;
              *&v48[6] = enabled;
              v49 = 1024;
              v50 = setupCopy;
              v51 = 2112;
              v52 = v27;
              _os_log_fault_impl(&dword_251764000, v30, OS_LOG_TYPE_FAULT, "[%{public}@] Failure to handle HAEN isEnabled change (enabled: %d, wasEnabled: %d, initialSetup: %d, changed: YES): %@", buf, 0x28u);
              goto LABEL_29;
            }

            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = v28;
              v31 = objc_opt_class();
              v32 = self->_enabled;
              *buf = 138544130;
              v46 = v31;
              v47 = 1024;
              *v48 = v32;
              *&v48[4] = 1024;
              *&v48[6] = enabled;
              v49 = 1024;
              v50 = setupCopy;
              _os_log_impl(&dword_251764000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handled HAEN isEnabled change (enabled: %d, wasEnabled: %d, initialSetup: %d, changed: YES)", buf, 0x1Eu);
LABEL_29:
            }
          }

          else
          {
            if (setupCopy && [v24 hearing_isExpectedError])
            {
              _HKInitializeLogging();
              v33 = *MEMORY[0x277CCC2C8];
              if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
              {
                v34 = v33;
                v35 = objc_opt_class();
                v36 = self->_enabled;
                *buf = 138544386;
                v46 = v35;
                v47 = 1024;
                *v48 = v36;
                *&v48[4] = 1024;
                *&v48[6] = enabled;
                v49 = 1024;
                v50 = 1;
                v51 = 2112;
                v52 = v25;
                _os_log_error_impl(&dword_251764000, v34, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to handle HAEN isEnabled change (enabled: %d, wasEnabled: %d, initialSetup: %d): %@", buf, 0x28u);
              }

              goto LABEL_37;
            }

            _HKInitializeLogging();
            v37 = *MEMORY[0x277CCC2C8];
            if (!os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
            {
LABEL_37:

              goto LABEL_38;
            }

            v27 = v37;
            v41 = objc_opt_class();
            v42 = self->_enabled;
            *buf = 138544386;
            v46 = v41;
            v47 = 1024;
            *v48 = v42;
            *&v48[4] = 1024;
            *&v48[6] = enabled;
            v49 = 1024;
            v50 = setupCopy;
            v51 = 2112;
            v52 = v25;
            _os_log_fault_impl(&dword_251764000, v27, OS_LOG_TYPE_FAULT, "[%{public}@] Unable to handle HAEN isEnabled change (enabled: %d, wasEnabled: %d, initialSetup: %d): %@", buf, 0x28u);
          }

LABEL_35:

          goto LABEL_37;
        }

        v18 = v21;
        *buf = 138543362;
        v46 = objc_opt_class();
        _os_log_impl(&dword_251764000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has re-ENABLED Headphone Exposure Notifications while healthd is running.", buf, 0xCu);
      }

      else
      {
        v17 = @"while healthd is running.";
        if (setupCopy)
        {
          v17 = @"before launching healthd or first unlock";
        }

        v18 = v17;
        _HKInitializeLogging();
        v19 = *MEMORY[0x277CCC2C8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          *buf = 138543618;
          v46 = objc_opt_class();
          v47 = 2114;
          *v48 = v18;
          _os_log_impl(&dword_251764000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has ENABLED Headphone Exposure Notifications %{public}@", buf, 0x16u);
        }
      }

      goto LABEL_25;
    }
  }

  else if (enabled)
  {
    v12 = @"while healthd is running.";
    if (setupCopy)
    {
      v12 = @"before launching healthd or first unlock";
    }

    currentHandler2 = v12;
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      *buf = 138543618;
      v46 = objc_opt_class();
      v47 = 2114;
      *v48 = currentHandler2;
      _os_log_impl(&dword_251764000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] User has DISABLED Headphone Exposure Notifications %{public}@.", buf, 0x16u);
    }

    goto LABEL_15;
  }

  if (enabled != v10)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDHeadphoneDoseManager.m" lineNumber:602 description:@"Unreachable code has been executed"];
    goto LABEL_15;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    currentHandler2 = v16;
    *buf = 138543362;
    v46 = objc_opt_class();
    _os_log_impl(&dword_251764000, currentHandler2, OS_LOG_TYPE_DEFAULT, "[%{public}@] No changes to Headphone Exposure Notifications setting occurred.", buf, 0xCu);
LABEL_15:
  }

LABEL_38:

  v38 = *MEMORY[0x277D85DE8];
}

- (BOOL)_lock_rebuildWithAssertion:(id)assertion error:(id *)error
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  LOBYTE(error) = [(HDHeadphoneDoseManager *)self _lock_rebuildWithAssertion:assertionCopy resetSyncNotification:0 error:error];

  return error;
}

- (BOOL)_lock_rebuildWithAssertion:(id)assertion resetSyncNotification:(BOOL)notification error:(id *)error
{
  notificationCopy = notification;
  v34 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  if (notificationCopy)
  {
    keyValueStore = self->_keyValueStore;
    v29 = 0;
    v10 = [(HDHeadphoneDoseMetadataStore *)keyValueStore _clearPreviousSevenDayRemoteNotificationFireDateWithError:&v29];
    v11 = v29;
    if (!v10)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = objc_opt_class();
        *buf = 138543618;
        v31 = v14;
        v32 = 2112;
        v33 = v11;
        _os_log_impl(&dword_251764000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clear Previous Seven Date Remote Notification Fire Date returned with error:%@", buf, 0x16u);
      }

      v15 = v11;
      if (!v15)
      {
        goto LABEL_18;
      }

      if (!error)
      {
LABEL_7:
        _HKLogDroppedError();
LABEL_18:
        v21 = 0;
        goto LABEL_19;
      }

LABEL_17:
      v25 = v15;
      v21 = 0;
      *error = v15;
LABEL_19:
      v18 = v15;
      goto LABEL_22;
    }
  }

  else
  {
    v11 = 0;
  }

  v16 = self->_keyValueStore;
  v28 = v11;
  v17 = [(HDHeadphoneDoseMetadataStore *)v16 rebuildCachedFireDateFromLocalHAENStoreWithError:&v28];
  v18 = v28;

  if (!v17)
  {
    _HKInitializeLogging();
    v22 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = objc_opt_class();
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v18;
      _os_log_impl(&dword_251764000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Rebuild Cache Fire Date from Local HAEN Store returned with error:%@", buf, 0x16u);
    }

    v15 = v18;
    if (!v15)
    {
      goto LABEL_18;
    }

    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  v19 = [(HDHeadphoneAudioExposureStatisticsCalculator *)self->_statisticsCalculator rebuildWithAssertion:assertionCopy error:error];
  v15 = v19;
  if (!v19)
  {
LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  cache = [v19 cache];

  if (!cache)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Cache not ready. Pending samples should be replayed soon."];
    goto LABEL_21;
  }

  v21 = [(HDHeadphoneDoseManager *)self _lock_updateCurrentDoseUsingStatisticsResult:v15 assertion:assertionCopy error:error];
LABEL_22:

  v26 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)_lock_updateWithNotifications:(id)notifications journaled:(BOOL)journaled assertion:(id)assertion
{
  journaledCopy = journaled;
  v28 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  v10 = @"added";
  if (journaledCopy)
  {
    v10 = @"journaled";
  }

  v11 = v10;
  if (self->_enabled)
  {
    statisticsCalculator = self->_statisticsCalculator;
    v21 = 0;
    v13 = [(HDHeadphoneAudioExposureStatisticsCalculator *)statisticsCalculator updateWithNotifications:notificationsCopy assertion:assertionCopy error:&v21];
    v14 = v21;
    if (v13)
    {
      -[HDHeadphoneDoseManager _updateCurrentDoseFromResult:context:sampleCount:assertion:](self, "_updateCurrentDoseFromResult:context:sampleCount:assertion:", v13, v11, [notificationsCopy count], assertionCopy);
    }

    else
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
      {
        v19 = v17;
        v20 = objc_opt_class();
        *buf = 138543874;
        v23 = v20;
        v24 = 2114;
        v25 = v11;
        v26 = 2112;
        v27 = v14;
        _os_log_fault_impl(&dword_251764000, v19, OS_LOG_TYPE_FAULT, "[%{public}@] Unable to process %{public}@ 7-Day HAEN: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      *buf = 138543874;
      v23 = objc_opt_class();
      v24 = 2048;
      v25 = [notificationsCopy count];
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&dword_251764000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring %lu %{public}@ HAEN samples since HAEN is disabled.", buf, 0x20u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateCurrentDoseFromResult:(id)result context:(id)context sampleCount:(unint64_t)count assertion:(id)assertion
{
  v34 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  contextCopy = context;
  assertionCopy = assertion;
  statistics = [resultCopy statistics];

  if (statistics)
  {
    statistics2 = [resultCopy statistics];
    eligbleForUserNotification = [statistics2 eligbleForUserNotification];

    if (eligbleForUserNotification)
    {
      [HDHeadphoneDoseManager _updateCurrentDoseFromResult:context:sampleCount:assertion:];
    }

    statistics3 = [resultCopy statistics];
    v27 = 0;
    v17 = [(HDHeadphoneDoseManager *)self _lock_updateCurrentDoseUsingStatisticsResult:statistics3 assertion:assertionCopy error:&v27];
    v18 = v27;

    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC2C8];
    v20 = *MEMORY[0x277CCC2C8];
    if (v17)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v19;
        v22 = objc_opt_class();
        *buf = 138543874;
        v29 = v22;
        v30 = 2048;
        countCopy2 = count;
        v32 = 2114;
        v33 = contextCopy;
        _os_log_impl(&dword_251764000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully updated dose for %lu %{public}@ HAEN samples.", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v25 = v19;
      v26 = objc_opt_class();
      *buf = 138543874;
      v29 = v26;
      v30 = 2114;
      countCopy2 = contextCopy;
      v32 = 2112;
      v33 = v18;
      _os_log_fault_impl(&dword_251764000, v25, OS_LOG_TYPE_FAULT, "[%{public}@] Unable to update 7-Day HAE Dose due to 7-Day HAEN %{public}@ sample arrival: %@", buf, 0x20u);
    }

    goto LABEL_11;
  }

  _HKInitializeLogging();
  v23 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v18 = v23;
    *buf = 138543874;
    v29 = objc_opt_class();
    v30 = 2048;
    countCopy2 = count;
    v32 = 2114;
    v33 = contextCopy;
    _os_log_impl(&dword_251764000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully processed %lu %{public}@ HAEN samples which did NOT impact current dose", buf, 0x20u);
LABEL_11:
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_lock_updateCurrentDoseUsingStatisticsResult:(id)result assertion:(id)assertion error:(id *)error
{
  v91 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  assertionCopy = assertion;
  if (!resultCopy)
  {
    [HDHeadphoneDoseManager _lock_updateCurrentDoseUsingStatisticsResult:assertion:error:];
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v10 = [MEMORY[0x277CBEAA8] now];
  unitTesting_updateCurrentDoseNowDateProvider = self->_unitTesting_updateCurrentDoseNowDateProvider;
  if (unitTesting_updateCurrentDoseNowDateProvider)
  {
    v12 = unitTesting_updateCurrentDoseNowDateProvider[2](unitTesting_updateCurrentDoseNowDateProvider, v10);

    v10 = v12;
  }

  eligbleForUserNotification = [resultCopy eligbleForUserNotification];
  cache = [resultCopy cache];
  v15 = cache;
  if (cache)
  {
    v16 = [cache snapshotStatisticsForNowDate:v10 error:error];
    v17 = v16;
    if (!v16)
    {
      v28 = 0;
LABEL_73:

      goto LABEL_74;
    }

    statistics = [v16 statistics];
    v19 = [statistics hk_hearingSevenDayDosePercentageWithError:error];

    if (!v19)
    {
      v28 = 0;
LABEL_72:

      goto LABEL_73;
    }

    v20 = MEMORY[0x253081C40](self->_unitTesting_didUpdateHandler);
    dose = self->_dose;
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __87__HDHeadphoneDoseManager__lock_updateCurrentDoseUsingStatisticsResult_assertion_error___block_invoke;
    v85[3] = &unk_2796C6430;
    v80 = v20;
    v85[4] = v20;
    *&v85[5] = dose;
    v22 = MEMORY[0x253081C40](v85);
    [v19 doubleValue];
    v24 = v23;
    v25 = dose - v23;
    if (v25 < 0.0)
    {
      v25 = -v25;
    }

    if (eligbleForUserNotification)
    {
      lastUpdateSuppressedUserNotification = self->_lastUpdateSuppressedUserNotification;
    }

    else
    {
      lastUpdateSuppressedUserNotification = 0;
    }

    if (v25 <= 2.22044605e-16 && !lastUpdateSuppressedUserNotification)
    {
      (*(v22 + 16))(v22, v24);
      v29 = v22;
      v28 = 1;
LABEL_71:

      goto LABEL_72;
    }

    v78 = v19;
    v79 = v22;
    _HKInitializeLogging();
    v30 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
    {
      v31 = self->_dose * 100.0;
      *buf = 134283777;
      v88 = v31;
      v89 = 2049;
      v90 = v24 * 100.0;
      _os_log_impl(&dword_251764000, v30, OS_LOG_TYPE_DEFAULT, "Updating dose from %{private}.2f%% to %{private}.2f%%", buf, 0x16u);
    }

    self->_dose = v24;
    v79[2](v24);
    [(HDHeadphoneDoseManager *)self _lock_updateCollectionAssertionForDoseAccumulated:v24];
    v32 = [(HDHeadphoneDoseMetadataStore *)self->_keyValueStore shouldNotifyUserForAccumulatedDose:v24];
    if (!(eligbleForUserNotification & 1 | !v32))
    {
      v32 = 0;
      self->_lastUpdateSuppressedUserNotification = 1;
    }

    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
      *&v35 = COERCE_DOUBLE(objc_opt_class());
      *&v36 = COERCE_DOUBLE(@"NO");
      if (v32)
      {
        *&v36 = COERCE_DOUBLE(@"YES");
      }

      *buf = 138543618;
      v88 = *&v35;
      v89 = 2112;
      v90 = *&v36;
      _os_log_impl(&dword_251764000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@] Update Current Dose should notify user:%@", buf, 0x16u);
    }

    if (!v32)
    {
      v28 = 1;
LABEL_70:
      v29 = v79;
      goto LABEL_71;
    }

    self->_lastUpdateSuppressedUserNotification = 0;
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __87__HDHeadphoneDoseManager__lock_updateCurrentDoseUsingStatisticsResult_assertion_error___block_invoke_404;
    v84[3] = &unk_2796C6458;
    v84[4] = self;
    v75 = MEMORY[0x253081C40](v84);
    v37 = [HDHeadphoneExposureNotificationAnalyticsInfo alloc];
    lastLockDateForAnalytics = self->_lastLockDateForAnalytics;
    previousNotificationDate = [v17 previousNotificationDate];
    v40 = [(HDHeadphoneExposureNotificationAnalyticsInfo *)v37 initWithLastLockDate:lastLockDateForAnalytics lastNotificationDate:previousNotificationDate];

    _HKInitializeLogging();
    v41 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
      *&v43 = COERCE_DOUBLE(objc_opt_class());
      *buf = 138543362;
      v88 = *&v43;
      _os_log_impl(&dword_251764000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@] Posting 7-Day HAE Notification", buf, 0xCu);
    }

    notificationCenter = self->_notificationCenter;
    v83 = 0;
    v45 = [(HDHeadphoneExposureNotificationCenter *)notificationCenter postSevenDayDoseNotification:v17 nowDate:v10 analyticsInfo:v40 error:&v83];
    v46 = v83;
    v76 = v46;
    v77 = v45;
    if (v45)
    {
      _HKInitializeLogging();
      v47 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251764000, v47, OS_LOG_TYPE_DEFAULT, "Posted 7-Day HAE Notification.", buf, 2u);
      }

      v74 = v40;
      if ([v15 isDirty])
      {
        _HKInitializeLogging();
        v48 = *MEMORY[0x277CCC2C8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_251764000, v48, OS_LOG_TYPE_DEFAULT, "Marking doseLimit as needing rebuild on next unlock.", buf, 2u);
        }

        [(HDHeadphoneAudioExposureStatisticsCalculator *)self->_statisticsCalculator setNeedsRebuild];
      }

      statisticsCalculator = self->_statisticsCalculator;
      v86 = v77;
      v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
      v82 = 0;
      v51 = [(HDHeadphoneAudioExposureStatisticsCalculator *)statisticsCalculator updateWithNotifications:v50 assertion:assertionCopy error:&v82];
      v52 = v82;

      v72 = v51;
      v73 = v52;
      if (v51)
      {
        statistics2 = [v51 statistics];

        if (!statistics2)
        {
          [HDHeadphoneDoseManager _lock_updateCurrentDoseUsingStatisticsResult:assertion:error:];
        }

        statistics3 = [v51 statistics];
        eligbleForUserNotification2 = [statistics3 eligbleForUserNotification];

        if (eligbleForUserNotification2)
        {
          [HDHeadphoneDoseManager _lock_updateCurrentDoseUsingStatisticsResult:assertion:error:];
        }

        statistics4 = [v51 statistics];
        v81 = 0;
        v28 = [(HDHeadphoneDoseManager *)self _lock_updateCurrentDoseUsingStatisticsResult:statistics4 assertion:assertionCopy error:&v81];
        v57 = v81;

        v58 = 0;
        v19 = v78;
        if (!v28)
        {
          v59 = v57;
          v58 = v59;
          if (v59)
          {
            if (error)
            {
              v60 = v59;
              *error = v58;
            }

            else
            {
              _HKLogDroppedError();
            }
          }
        }

        v69 = v58;
        v63 = v75;
        (*(v75 + 16))(v75, v69);
      }

      else
      {
        v63 = v75;
        (*(v75 + 16))(v75, v52);
        v64 = v52;
        v57 = v64;
        if (v64)
        {
          v19 = v78;
          if (error)
          {
            v65 = v64;
            v28 = 0;
            *error = v57;
          }

          else
          {
            _HKLogDroppedError();
            v28 = 0;
          }
        }

        else
        {
          v28 = 0;
          v19 = v78;
        }
      }

      v67 = v73;
      v40 = v74;
      goto LABEL_69;
    }

    v61 = v46;
    v19 = v78;
    if (([v46 hk_isFeatureDisabledError] & 1) != 0 || objc_msgSend(v61, "hearing_audioDSP_isHAENDisabled"))
    {
      _HKInitializeLogging();
      v62 = *MEMORY[0x277CCC2C8];
      v63 = v75;
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
      {
        [HDHeadphoneDoseManager _lock_updateCurrentDoseUsingStatisticsResult:v76 assertion:v62 error:?];
      }
    }

    else
    {
      _HKInitializeLogging();
      v66 = *MEMORY[0x277CCC2C8];
      v63 = v75;
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
      {
        [HDHeadphoneDoseManager _lock_updateCurrentDoseUsingStatisticsResult:v76 assertion:v66 error:?];
      }
    }

    (v63)[2](v63, v76);
    v67 = v76;
    if (v67)
    {
      if (error)
      {
        v67 = v67;
        v28 = 0;
        *error = v67;
LABEL_69:

        goto LABEL_70;
      }

      v68 = v67;
      _HKLogDroppedError();
      v67 = v68;
    }

    v28 = 0;
    goto LABEL_69;
  }

  _HKInitializeLogging();
  v27 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251764000, v27, OS_LOG_TYPE_DEFAULT, "Dose did not need updating", buf, 2u);
  }

  v28 = 1;
LABEL_74:

  v70 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t __87__HDHeadphoneDoseManager__lock_updateCurrentDoseUsingStatisticsResult_assertion_error___block_invoke(uint64_t a1, __n128 a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(a2, *(a1 + 40));
  }

  return result;
}

void __87__HDHeadphoneDoseManager__lock_updateCurrentDoseUsingStatisticsResult_assertion_error___block_invoke_404(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x253081C40](*(*(a1 + 32) + 128));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }
}

- (void)_lock_setCollectionAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  collectionAssertion = self->_collectionAssertion;
  if (collectionAssertion)
  {
    [(HDDataCollectionAssertion *)collectionAssertion invalidate];
  }

  v6 = self->_collectionAssertion;
  self->_collectionAssertion = assertionCopy;
}

- (void)_lock_updateCollectionAssertionForDoseAccumulated:(double)accumulated
{
  v28 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(HDHeadphoneDoseMetadataStore *)self->_keyValueStore collectionIntervalForDoseAccumulated:accumulated];
  v6 = v5;
  if (!v5)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251764000, v11, OS_LOG_TYPE_DEFAULT, "Using default HAE collection interval.", buf, 2u);
    }

    goto LABEL_7;
  }

  [v5 doubleValue];
  v8 = v7;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC2C8];
  v10 = *MEMORY[0x277CCC2C8];
  if (v8 < 5.0)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(HDHeadphoneDoseManager *)v9 _lock_updateCollectionAssertionForDoseAccumulated:v8];
    }

LABEL_7:
    [(HDHeadphoneDoseManager *)self _lock_setCollectionAssertion:0];
    goto LABEL_11;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = v8;
    _os_log_impl(&dword_251764000, v9, OS_LOG_TYPE_DEFAULT, "Requesting custom HAE collection interval: %f", buf, 0xCu);
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v17 = [v12 stringWithFormat:@"%@-%@", v14, uUIDString];

  v18 = MEMORY[0x277CBEB98];
  v19 = HKHeadphoneAudioExposureType();
  v20 = [v18 setWithObject:v19];

  v21 = [MEMORY[0x277D10680] dataCollectionObserverStateInForeground:1 hasRunningWorkout:0 hasBackgroundObserver:0 shouldTakeWorkoutDatabaseAssertion:0];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataCollectionManager = [WeakRetained dataCollectionManager];
  v24 = [dataCollectionManager takeCollectionAssertionWithOwnerIdentifier:v17 sampleTypes:v20 observerState:v21 collectionInterval:v8];

  [(HDHeadphoneDoseManager *)self _lock_setCollectionAssertion:v24];
LABEL_11:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithRemoteNotificationDismissalDate:(id)date assertion:(id)assertion
{
  assertionCopy = assertion;
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  [(HDHeadphoneDoseManager *)self _lock_updateWithRemoteNotificationDismissalDate:dateCopy assertion:assertionCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_updateWithRemoteNotificationDismissalDate:(id)date assertion:(id)assertion
{
  v17 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_enabled)
  {
    statisticsCalculator = self->_statisticsCalculator;
    v14 = 0;
    v9 = [(HDHeadphoneAudioExposureStatisticsCalculator *)statisticsCalculator updateWithRemoteNotificationDismissalFireDate:dateCopy assertion:assertionCopy error:&v14];
    v10 = v14;
    if (v9)
    {
      [(HDHeadphoneDoseManager *)self _updateCurrentDoseFromResult:v9 context:@"Notification Synced" sampleCount:1 assertion:assertionCopy];
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
      {
        [HDHeadphoneDoseManager _lock_updateWithRemoteNotificationDismissalDate:assertion:];
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      *buf = 138543362;
      v16 = objc_opt_class();
      _os_log_impl(&dword_251764000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring incoming reset dosage notification since HAEN is disabled.", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_registerForSignificantTimeChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _significantTimeChange, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleSignificantTimeChangeNotification_ name:*MEMORY[0x277CBE580] object:0];
}

- (void)_unregisterForSignificantTimeChangeNotification
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE580] object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
}

- (void)_handleSignificantTimeChangeNotification:(id)notification
{
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251764000, v4, OS_LOG_TYPE_DEFAULT, "Queueing dose recomputation due to significant time change.", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HDHeadphoneDoseManager__handleSignificantTimeChangeNotification___block_invoke;
  block[3] = &unk_2796C6390;
  block[4] = self;
  dispatch_async(queue, block);
}

void __67__HDHeadphoneDoseManager__handleSignificantTimeChangeNotification___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = MEMORY[0x277CCC2C8];
  v3 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251764000, v3, OS_LOG_TYPE_DEFAULT, "Starting dose recomputation due to significant time change.", buf, 2u);
  }

  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 _takeAccessibilityAssertion];
  os_unfair_lock_lock((*v4 + 24));
  v7 = *v4;
  if (*(*v4 + 40))
  {
    v23 = 0;
    v8 = [(os_unfair_lock_s *)v7 _lock_rebuildWithAssertion:v6 error:&v23];
    v9 = v23;
    v10 = v9;
    if (v8)
    {
      _HKInitializeLogging();
      v11 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *v4;
        v13 = v11;
        v14 = objc_opt_class();
        *buf = 138543362;
        v25 = v14;
        _os_log_impl(&dword_251764000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Succesfully rebuilt HAEN dose after significant time change.", buf, 0xCu);
      }
    }

    else
    {
      v19 = [v9 hearing_isExpectedError];
      _HKInitializeLogging();
      v20 = *v2;
      v21 = *v2;
      if (v19)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __67__HDHeadphoneDoseManager__handleSignificantTimeChangeNotification___block_invoke_cold_2(v4, v20);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        __67__HDHeadphoneDoseManager__handleSignificantTimeChangeNotification___block_invoke_cold_1(v4, v20);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *v4;
      v17 = v15;
      v18 = objc_opt_class();
      *buf = 138543362;
      v25 = v18;
      _os_log_impl(&dword_251764000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring significant time change since HAEN is disabled.", buf, 0xCu);
    }

    v10 = 0;
  }

  os_unfair_lock_unlock((*v4 + 24));
  [v6 invalidate];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_initWithProfile:keyValueStore:calculator:unitTesting_profileDidBecomeReadyHandler:unitTesting_didObserveProtectedDataHandler:unitTesting_didUpdateHandler:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"[profile.profileIdentifier isEqual:keyValueStore._profileIdentifier]" object:? file:? lineNumber:? description:?];
}

- (void)database:protectedDataDidBecomeAvailable:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_251764000, v3, v4, "[%{public}@] Unable to fetch shouldRebuild flag for Previous 7-Day HAEN FireDate: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)database:protectedDataDidBecomeAvailable:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_251764000, v3, v4, "[%{public}@] Unable to fetch shouldRebuild flag for Previous 7-Day HAEN FireDate: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)database:protectedDataDidBecomeAvailable:.cold.3()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_251764000, v3, v4, "[%{public}@] Unable to fetch shouldRebuild flag for 7-Day HAEN Dose Statistics: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)database:protectedDataDidBecomeAvailable:.cold.4()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_251764000, v3, v4, "[%{public}@] Unable to fetch shouldRebuild flag for 7-Day HAEN Dose Statistics: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)database:protectedDataDidBecomeAvailable:.cold.5()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_251764000, v3, v4, "[%{public}@] Failed to rebuild 7-Day HAEN dose after device unlock: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)database:protectedDataDidBecomeAvailable:.cold.6()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_251764000, v3, v4, "[%{public}@] Failed to rebuild 7-Day HAEN dose after device unlock: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __59__HDHeadphoneDoseManager_samplesOfTypesWereRemoved_anchor___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_251764000, v4, v5, "[%{public}@] Failed to rebuild 7-Day HAEN dose after discarding HAENs: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __59__HDHeadphoneDoseManager_samplesOfTypesWereRemoved_anchor___block_invoke_cold_2(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_251764000, v4, v5, "[%{public}@] Failed to rebuild 7-Day HAEN dose after discarding HAENs: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)profile:didDiscardSeriesOfType:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_251764000, v3, v4, "[%{public}@] Failed to rebuild 7-Day HAEN dose after discarding HAE Series: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)profile:didDiscardSeriesOfType:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_251764000, v3, v4, "[%{public}@] Failed to rebuild 7-Day HAEN dose after discarding HAE Series: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_takeAccessibilityAssertion
{
  OUTLINED_FUNCTION_3();
  v10 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_251764000, v3, v4, "%{public}@: unable to take accessibility assertion: %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_lock_updateIsEnabledForInitialSetup:assertion:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"initialSetup == NO" object:? file:? lineNumber:? description:?];
}

- (void)_updateCurrentDoseFromResult:context:sampleCount:assertion:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"result.statistics.eligbleForUserNotification == NO" object:? file:? lineNumber:? description:?];
}

- (void)_lock_updateCurrentDoseUsingStatisticsResult:assertion:error:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"statistics" object:? file:? lineNumber:? description:?];
}

- (void)_lock_updateCurrentDoseUsingStatisticsResult:assertion:error:.cold.2()
{
  OUTLINED_FUNCTION_6();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v1 handleFailureInMethod:@"result.statistics" object:? file:? lineNumber:? description:?];
}

- (void)_lock_updateCurrentDoseUsingStatisticsResult:assertion:error:.cold.3()
{
  OUTLINED_FUNCTION_6();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v1 handleFailureInMethod:@"result.statistics.eligbleForUserNotification == NO" object:? file:? lineNumber:? description:?];
}

- (void)_lock_updateCurrentDoseUsingStatisticsResult:(uint64_t)a1 assertion:(NSObject *)a2 error:.cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_251764000, a2, OS_LOG_TYPE_FAULT, "Unable to post 7-Day HAE Notification: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_lock_updateCurrentDoseUsingStatisticsResult:(uint64_t)a1 assertion:(NSObject *)a2 error:.cold.5(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_251764000, a2, OS_LOG_TYPE_ERROR, "Unable to post 7-Day HAE Notification since feature was disabled: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_lock_updateCollectionAssertionForDoseAccumulated:(os_log_t)log .cold.1(os_log_t log, double a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_error_impl(&dword_251764000, log, OS_LOG_TYPE_ERROR, "Computed HAE collection interval (%f) is too frequent so using default instead.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_lock_updateWithRemoteNotificationDismissalDate:assertion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_251764000, v3, v4, "[%{public}@] Unable to rebuild bucket collection earliest date: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __67__HDHeadphoneDoseManager__handleSignificantTimeChangeNotification___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_251764000, v4, v5, "[%{public}@] Failed to rebuild HAEN dose after significant time change: %@.", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __67__HDHeadphoneDoseManager__handleSignificantTimeChangeNotification___block_invoke_cold_2(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_251764000, v4, v5, "[%{public}@] Failed to rebuild HAEN dose after significant time change: %@.", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end