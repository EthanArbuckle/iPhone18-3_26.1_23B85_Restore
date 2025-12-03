@interface HDHRHealthLiteDataCollector
- (BOOL)_queue_hasHeartRateClientsWithoutWorkouts;
- (BOOL)_queue_shouldStreamReducedRateHeartRateUpdates;
- (HDHRHealthLiteDataCollector)initWithProfile:(id)profile;
- (id)diagnosticDescription;
- (void)_assertionManagerStateChanged:(id)changed;
- (void)_queue_createHealthLiteManager;
- (void)_queue_privacyPreferencesDidChange;
- (void)_queue_updateAllCollectionTypes;
- (void)_queue_updateBradycardiaCollectionType;
- (void)_queue_updateHeartRateCollectionType;
- (void)_queue_updateTachycardiaCollectionType;
- (void)_registerPowerLogEvent:(id)event;
- (void)_startObservingAssertionManagerChanges;
- (void)_startObservingCurrentWorkoutChanges;
- (void)_workoutManagerStateDidChange;
- (void)daemonReady:(id)ready;
- (void)dataAggregator:(id)aggregator wantsCollectionWithConfiguration:(id)configuration;
- (void)dealloc;
@end

@implementation HDHRHealthLiteDataCollector

- (HDHRHealthLiteDataCollector)initWithProfile:(id)profile
{
  v33 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v30.receiver = self;
  v30.super_class = HDHRHealthLiteDataCollector;
  v6 = [(HDHRHealthLiteDataCollector *)&v30 init];
  if (v6)
  {
    if (!profileCopy)
    {
      [(HDHRHealthLiteDataCollector *)a2 initWithProfile:v6];
    }

    _HKInitializeLogging();
    v7 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543362;
      v32 = v9;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Initializing", buf, 0xCu);
    }

    v10 = HDDispatchQueueName();
    v11 = dispatch_queue_create(v10, 0);
    queue = v6->_queue;
    v6->_queue = v11;

    objc_storeWeak(&v6->_profile, profileCopy);
    v13 = objc_alloc_init(MEMORY[0x277CCD2A0]);
    heartRateCollectionState = v6->_heartRateCollectionState;
    v6->_heartRateCollectionState = v13;

    v15 = objc_alloc_init(MEMORY[0x277CCD2A0]);
    tachycardiaCollectionState = v6->_tachycardiaCollectionState;
    v6->_tachycardiaCollectionState = v15;

    v17 = objc_alloc_init(MEMORY[0x277CCD2A0]);
    bradycardiaCollectionState = v6->_bradycardiaCollectionState;
    v6->_bradycardiaCollectionState = v17;

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v6];

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    healthDaemon = [WeakRetained healthDaemon];
    [healthDaemon registerForDaemonReady:v6];

    v6->_heartRateEnabledInPrivacy = HKIsHeartRateEnabled();
    v6->_privacyPreferencesNotificationToken = -1;
    objc_initWeak(buf, v6);
    uTF8String = [*MEMORY[0x277CCE4C0] UTF8String];
    v23 = v6->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __47__HDHRHealthLiteDataCollector_initWithProfile___block_invoke;
    handler[3] = &unk_278660570;
    objc_copyWeak(&v29, buf);
    notify_register_dispatch(uTF8String, &v6->_privacyPreferencesNotificationToken, v23, handler);
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    features = [mEMORY[0x277CCDD30] features];
    LOBYTE(uTF8String) = [features HRCoordinator];

    if ((uTF8String & 1) == 0)
    {
      [(HDHRHealthLiteDataCollector *)v6 _startObservingCurrentWorkoutChanges];
      [(HDHRHealthLiteDataCollector *)v6 _startObservingAssertionManagerChanges];
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v6;
}

void __47__HDHRHealthLiteDataCollector_initWithProfile___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_privacyPreferencesDidChange];
}

- (void)dealloc
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HDHRHealthLiteDataCollector_dealloc__block_invoke;
  block[3] = &unk_27865FD90;
  block[4] = self;
  dispatch_sync(queue, block);
  mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [mEMORY[0x277D10AF8] removeObject:self];

  privacyPreferencesNotificationToken = self->_privacyPreferencesNotificationToken;
  if (privacyPreferencesNotificationToken != -1)
  {
    notify_cancel(privacyPreferencesNotificationToken);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D10570] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D10A38] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D10A30] object:0];

  v7.receiver = self;
  v7.super_class = HDHRHealthLiteDataCollector;
  [(HDHRHealthLiteDataCollector *)&v7 dealloc];
}

uint64_t __38__HDHRHealthLiteDataCollector_dealloc__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) unregisterDataCollector:?];
  [*(*(a1 + 32) + 40) unregisterDataCollector:?];
  v2 = *(*(a1 + 32) + 48);

  return [v2 unregisterDataCollector:?];
}

- (void)daemonReady:(id)ready
{
  v16 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_229486000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received daemon ready", buf, 0xCu);
  }

  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__HDHRHealthLiteDataCollector_daemonReady___block_invoke;
  v11[3] = &unk_27865FE98;
  v12 = readyCopy;
  selfCopy = self;
  v9 = readyCopy;
  dispatch_async(queue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __43__HDHRHealthLiteDataCollector_daemonReady___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) behavior];
  v3 = [v2 features];
  if ([v3 heartRatePush])
  {
  }

  else
  {
    v4 = [*(a1 + 32) behavior];
    v5 = [v4 features];
    v6 = [v5 HRCoordinator];

    if ((v6 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
      v8 = [WeakRetained dataCollectionManager];
      v9 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
      v10 = [v8 aggregatorForType:v9];
      v11 = *(a1 + 40);
      v12 = *(v11 + 32);
      *(v11 + 32) = v10;

      [*(*(a1 + 40) + 32) registerDataCollector:*(a1 + 40) state:*(*(a1 + 40) + 80)];
    }
  }

  v13 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v14 = [v13 dataCollectionManager];
  v15 = [MEMORY[0x277CCD0C0] tachycardiaType];
  v16 = [v14 aggregatorForType:v15];
  v17 = *(a1 + 40);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  [*(*(a1 + 40) + 40) registerDataCollector:*(a1 + 40) state:*(*(a1 + 40) + 88)];
  v19 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v20 = [v19 dataCollectionManager];
  v21 = [MEMORY[0x277CCD0C0] bradycardiaType];
  v22 = [v20 aggregatorForType:v21];
  v23 = *(a1 + 40);
  v24 = *(v23 + 48);
  *(v23 + 48) = v22;

  [*(*(a1 + 40) + 48) registerDataCollector:*(a1 + 40) state:*(*(a1 + 40) + 96)];
  v25 = *(a1 + 40);

  return [v25 _queue_createHealthLiteManager];
}

- (void)dataAggregator:(id)aggregator wantsCollectionWithConfiguration:(id)configuration
{
  aggregatorCopy = aggregator;
  configurationCopy = configuration;
  _HKInitializeLogging();
  v8 = HKLogHeartRateCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(HDHRHealthLiteDataCollector *)aggregatorCopy dataAggregator:configurationCopy wantsCollectionWithConfiguration:v10];
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HDHRHealthLiteDataCollector_dataAggregator_wantsCollectionWithConfiguration___block_invoke;
  block[3] = &unk_278660440;
  v15 = aggregatorCopy;
  selfCopy = self;
  v17 = configurationCopy;
  v12 = configurationCopy;
  v13 = aggregatorCopy;
  dispatch_async(queue, block);
}

uint64_t __79__HDHRHealthLiteDataCollector_dataAggregator_wantsCollectionWithConfiguration___block_invoke(uint64_t result)
{
  v1 = result;
  v3 = *(result + 32);
  v2 = *(result + 40);
  if (v3 == *(v2 + 32))
  {
    objc_storeStrong((v2 + 56), *(result + 48));
    v4 = *(v1 + 40);

    return [v4 _queue_updateHeartRateCollectionType];
  }

  else if (v3 == *(v2 + 40))
  {
    objc_storeStrong((v2 + 64), *(result + 48));
    v5 = *(v1 + 40);

    return [v5 _queue_updateTachycardiaCollectionType];
  }

  else if (v3 == *(v2 + 48))
  {
    objc_storeStrong((v2 + 72), *(result + 48));
    v6 = *(v1 + 40);

    return [v6 _queue_updateBradycardiaCollectionType];
  }

  return result;
}

- (void)_queue_updateAllCollectionTypes
{
  [(HDHRHealthLiteDataCollector *)self _queue_updateHeartRateCollectionType];
  [(HDHRHealthLiteDataCollector *)self _queue_updateTachycardiaCollectionType];

  [(HDHRHealthLiteDataCollector *)self _queue_updateBradycardiaCollectionType];
}

- (void)_queue_updateHeartRateCollectionType
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  hRCoordinator = [features HRCoordinator];

  if ((hRCoordinator & 1) == 0)
  {
    collectionType = [(HDDataCollectorConfiguration *)self->_heartRateCollectionConfiguration collectionType];
    v7 = self->_heartRateEnabledInPrivacy ? collectionType : 0;
    if ([(HKDataCollectorState *)self->_heartRateCollectionState collectionType]!= v7)
    {
      _HKInitializeLogging();
      v8 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = v9;
        v11 = HKDataCollectionTypeToString();
        v12 = HKDataCollectionTypeToString();
        v16 = 138543874;
        v17 = v9;
        v18 = 2114;
        v19 = v11;
        v20 = 2114;
        v21 = v12;
        _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Heart rate collection transitioning from %{public}@ to %{public}@", &v16, 0x20u);
      }

      v13 = [(HKDataCollectorState *)self->_heartRateCollectionState cloneWithNewType:v7];
      heartRateCollectionState = self->_heartRateCollectionState;
      self->_heartRateCollectionState = v13;

      [(HDHeartRateDataAggregator *)self->_heartRateAggregator dataCollector:self didChangeState:self->_heartRateCollectionState];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateTachycardiaCollectionType
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  collectionType = [(HDDataCollectorConfiguration *)self->_tachycardiaCollectionConfiguration collectionType];
  if ([(HKDataCollectorState *)self->_tachycardiaCollectionState collectionType]!= collectionType)
  {
    _HKInitializeLogging();
    v4 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [(HKDataCollectorState *)self->_tachycardiaCollectionState collectionType];
      v5 = HKDataCollectionTypeToString();
      v6 = HKDataCollectionTypeToString();
      v10 = 138543618;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "tachycardia collection transitioning from %{public}@ to %{public}@", &v10, 0x16u);
    }

    v7 = [(HKDataCollectorState *)self->_tachycardiaCollectionState cloneWithNewType:collectionType];
    tachycardiaCollectionState = self->_tachycardiaCollectionState;
    self->_tachycardiaCollectionState = v7;

    [(HDTachycardiaDataAggregator *)self->_tachycardiaAggregator dataCollector:self didChangeState:self->_tachycardiaCollectionState];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateBradycardiaCollectionType
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  collectionType = [(HDDataCollectorConfiguration *)self->_bradycardiaCollectionConfiguration collectionType];
  if ([(HKDataCollectorState *)self->_bradycardiaCollectionState collectionType]!= collectionType)
  {
    _HKInitializeLogging();
    v4 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [(HKDataCollectorState *)self->_bradycardiaCollectionState collectionType];
      v5 = HKDataCollectionTypeToString();
      v6 = HKDataCollectionTypeToString();
      v10 = 138543618;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "bradycardia collection transitioning from %{public}@ to %{public}@", &v10, 0x16u);
    }

    v7 = [(HKDataCollectorState *)self->_bradycardiaCollectionState cloneWithNewType:collectionType];
    bradycardiaCollectionState = self->_bradycardiaCollectionState;
    self->_bradycardiaCollectionState = v7;

    [(HDBradycardiaDataAggregator *)self->_bradycardiaAggregator dataCollector:self didChangeState:self->_bradycardiaCollectionState];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_createHealthLiteManager
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_heartRateEnabledInPrivacy)
  {
    _HKInitializeLogging();
    v3 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_229486000, v3, OS_LOG_TYPE_DEFAULT, "heart rate collection is disabled due to privacy", v4, 2u);
    }
  }
}

- (void)_startObservingCurrentWorkoutChanges
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__workoutManagerStateDidChange name:*MEMORY[0x277D10570] object:0];
}

- (void)_workoutManagerStateDidChange
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDHRHealthLiteDataCollector__workoutManagerStateDidChange__block_invoke;
  block[3] = &unk_27865FD90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_startObservingAssertionManagerChanges
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__assertionManagerStateChanged_ name:*MEMORY[0x277D10A38] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__assertionManagerStateChanged_ name:*MEMORY[0x277D10A30] object:0];
}

- (void)_assertionManagerStateChanged:(id)changed
{
  v16 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (_assertionManagerStateChanged__onceToken != -1)
  {
    [HDHRHealthLiteDataCollector _assertionManagerStateChanged:];
  }

  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D10A28]];

  if ([_assertionManagerStateChanged__relevantAssertionIdentifiers containsObject:v6])
  {
    _HKInitializeLogging();
    v7 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v6;
      v8 = v13;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating heart rate collection type because assertion changed: %{public}@", buf, 0x16u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__HDHRHealthLiteDataCollector__assertionManagerStateChanged___block_invoke_350;
    block[3] = &unk_27865FD90;
    block[4] = self;
    dispatch_async(queue, block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __61__HDHRHealthLiteDataCollector__assertionManagerStateChanged___block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v1 = HDQueryServerSampleTypeObservationAssertionName();
  v2 = [v0 setWithObjects:{v1, *MEMORY[0x277D103F8], 0}];
  v3 = _assertionManagerStateChanged__relevantAssertionIdentifiers;
  _assertionManagerStateChanged__relevantAssertionIdentifiers = v2;
}

- (BOOL)_queue_shouldStreamReducedRateHeartRateUpdates
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  workoutManager = [WeakRetained workoutManager];
  currentActivityRequiresExtendedMode = [workoutManager currentActivityRequiresExtendedMode];

  if (currentActivityRequiresExtendedMode && (v6 = objc_loadWeakRetained(&self->_profile), [v6 workoutManager], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isInHeartRateRecovery"), v7, v6, (v8 & 1) == 0))
  {
    return ![(HDHRHealthLiteDataCollector *)self _queue_hasHeartRateClientsWithoutWorkouts];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_queue_hasHeartRateClientsWithoutWorkouts
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v4 = HDQueryServerSampleTypeObservationAssertionName();

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  sessionAssertionManager = [WeakRetained sessionAssertionManager];
  v7 = [sessionAssertionManager ownerIdentifiersForAssertionIdentifier:v4];

  v8 = objc_loadWeakRetained(&self->_profile);
  sessionAssertionManager2 = [v8 sessionAssertionManager];
  v10 = [sessionAssertionManager2 ownerIdentifiersForAssertionIdentifier:*MEMORY[0x277D103F8]];

  v11 = [v7 mutableCopy];
  [v11 minusSet:v10];
  v12 = [v11 count];
  _HKInitializeLogging();
  v13 = HKLogHeartRateCategory();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

  if (v14)
  {
    v15 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = HKStringFromBool();
      v19 = 138412802;
      v20 = v18;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v10;
      _os_log_debug_impl(&dword_229486000, v15, OS_LOG_TYPE_DEBUG, "Workout power saving mode is active, full-fidelity streaming allowed: %@, heart rate clients: %@, workout clients: %@", &v19, 0x20u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12 != 0;
}

- (void)_queue_privacyPreferencesDidChange
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKIsHeartRateEnabled();
  if (self->_heartRateEnabledInPrivacy != v3)
  {
    v4 = v3;
    self->_heartRateEnabledInPrivacy = v3;
    _HKInitializeLogging();
    v5 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "disabled";
      if (v4)
      {
        v6 = "enabled";
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_impl(&dword_229486000, v5, OS_LOG_TYPE_DEFAULT, "heart rate privacy setting changed to %s", &v8, 0xCu);
    }

    [(HDHRHealthLiteDataCollector *)self _queue_updateAllCollectionTypes];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)diagnosticDescription
{
  v3 = MEMORY[0x277CCACA8];
  if (self->_heartRateEnabledInPrivacy)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [(HKDataCollectorState *)self->_heartRateCollectionState collectionType];
  v5 = HKDataCollectionTypeToString();
  [(HKDataCollectorState *)self->_tachycardiaCollectionState collectionType];
  v6 = HKDataCollectionTypeToString();
  [(HKDataCollectorState *)self->_bradycardiaCollectionState collectionType];
  v7 = HKDataCollectionTypeToString();
  v8 = [v3 stringWithFormat:@"\nHeart enabled in privacy: %@\nHeart Rate Collection: %@\nTachycardia Collection: %@\nBradycardia Collection: %@", v4, v5, v6, v7];

  return v8;
}

- (void)_registerPowerLogEvent:(id)event
{
  eventCopy = event;
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(HDHRHealthLiteDataCollector *)eventCopy _registerPowerLogEvent:v6];
    }
  }
}

- (void)initWithProfile:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHRHealthLiteDataCollector.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];
}

- (void)dataAggregator:(os_log_t)log wantsCollectionWithConfiguration:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_229486000, log, OS_LOG_TYPE_DEBUG, "aggregator %{public}@ wants collection with configuration: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_registerPowerLogEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = @"healthlite_event";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_229486000, a2, OS_LOG_TYPE_DEBUG, "PowerLog %@: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end