@interface HDHRCoordinatorDataCollector
- (BOOL)_queue_hasHeartRateClientsWithoutWorkouts;
- (BOOL)_queue_shouldStreamReducedRateHeartRateUpdates;
- (HDHRCoordinatorDataCollector)initWithProfile:(id)a3;
- (id)_newHRRequestor;
- (id)diagnosticDescription;
- (void)_queue_setStreamingMode:(unint64_t)a3;
- (void)_queue_setStreamingModeToActive;
- (void)_queue_updateCollectionState;
- (void)_workoutManagerDidUpdateCurrentWorkout:(id)a3;
- (void)dataAggregator:(id)a3 wantsCollectionWithConfiguration:(id)a4;
- (void)registerWithAggregators;
- (void)unitTest_unregisterWithAggregators;
@end

@implementation HDHRCoordinatorDataCollector

- (HDHRCoordinatorDataCollector)initWithProfile:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21.receiver = self;
  v21.super_class = HDHRCoordinatorDataCollector;
  v6 = [(HDHRCoordinatorDataCollector *)&v21 init];
  if (v6)
  {
    if (!v5)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:a2 object:v6 file:@"HDHRCoordinatorDataCollector.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];
    }

    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543362;
      v23 = v10;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Initializing", buf, 0xCu);
    }

    objc_storeWeak(&v6->_profile, v5);
    v11 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v11;

    v6->_lock._os_unfair_lock_opaque = 0;
    v13 = objc_alloc_init(MEMORY[0x277CCD2A0]);
    lock_collectorState = v6->_lock_collectorState;
    v6->_lock_collectorState = v13;

    v15 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v15 addObject:v6];

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v17 = [WeakRetained workoutManager];
    [v17 registerCurrentWorkoutObserver:v6];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_newHRRequestor
{
  v3 = objc_alloc(MEMORY[0x277D13070]);
  queue = self->_queue;

  return [v3 initWithDelegate:self onQueue:queue];
}

- (void)registerWithAggregators
{
  if (self->_aggregator)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HDHRCoordinatorDataCollector.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"_aggregator == nil"}];
  }

  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKDataCollectorState *)self->_lock_collectorState copy];
  os_unfair_lock_unlock(&self->_lock);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HDHRCoordinatorDataCollector_registerWithAggregators__block_invoke;
  block[3] = &unk_278613920;
  block[4] = self;
  v11 = v3;
  v5 = v3;
  dispatch_async(queue, block);
  v6 = [(HDHRCoordinatorDataCollector *)self _newHRRequestor];
  HRRequestor = self->_HRRequestor;
  self->_HRRequestor = v6;
}

uint64_t __55__HDHRCoordinatorDataCollector_registerWithAggregators__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained dataCollectionManager];
  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v5 = [v3 aggregatorForType:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 32);

  return [v9 registerDataCollector:? state:?];
}

- (void)unitTest_unregisterWithAggregators
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HDHRCoordinatorDataCollector_unitTest_unregisterWithAggregators__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __66__HDHRCoordinatorDataCollector_unitTest_unregisterWithAggregators__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) unregisterDataCollector:?];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;
}

- (void)dataAggregator:(id)a3 wantsCollectionWithConfiguration:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEBUG))
  {
    *location = 138543618;
    *&location[4] = v6;
    v16 = 2114;
    v17 = v7;
    _os_log_debug_impl(&dword_228986000, v8, OS_LOG_TYPE_DEBUG, "aggregator %{public}@ wants collection with configuration: %{public}@", location, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [v7 copy];
  lock_collectorConfiguration = self->_lock_collectorConfiguration;
  self->_lock_collectorConfiguration = v9;

  os_unfair_lock_unlock(&self->_lock);
  objc_initWeak(location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HDHRCoordinatorDataCollector_dataAggregator_wantsCollectionWithConfiguration___block_invoke;
  block[3] = &unk_278616F38;
  objc_copyWeak(&v14, location);
  dispatch_async(queue, block);
  objc_destroyWeak(&v14);
  objc_destroyWeak(location);

  v12 = *MEMORY[0x277D85DE8];
}

void __80__HDHRCoordinatorDataCollector_dataAggregator_wantsCollectionWithConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_updateCollectionState];
}

- (void)_queue_updateCollectionState
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  os_unfair_lock_lock(&self->_lock);
  lock_collectorConfiguration = self->_lock_collectorConfiguration;
  if (lock_collectorConfiguration && self->_aggregator)
  {
    v4 = [(HDDataCollectorConfiguration *)lock_collectorConfiguration collectionType];
    v5 = [(HKDataCollectorState *)self->_lock_collectorState collectionType];
    v6 = [(HKDataCollectorState *)self->_lock_collectorState cloneWithNewType:v4];
    objc_storeStrong(&self->_lock_collectorState, v6);
    os_unfair_lock_unlock(&self->_lock);
    if (v5 == v4)
    {
      if (v4 == 2)
      {
        [(HDHRCoordinatorDataCollector *)self _queue_setStreamingModeToActive];
      }

      else if ([(HRCHeartRateRequestor *)self->_HRRequestor requestedStreamingMode])
      {
        _HKInitializeLogging();
        v12 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
        {
          v14 = 138543362;
          v15 = self;
          _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Collection is passive, but heart rate is being streamed", &v14, 0xCu);
        }

        [(HDHRCoordinatorDataCollector *)self _queue_setStreamingMode:0];
      }
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = HKDataCollectionTypeToString();
        v11 = HKDataCollectionTypeToString();
        v14 = 138543874;
        v15 = self;
        v16 = 2114;
        v17 = v10;
        v18 = 2114;
        v19 = v11;
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Heart rate collection transitioning from %{public}@ to %{public}@", &v14, 0x20u);
      }

      if (v4 >= 2)
      {
        if (v4 == 2)
        {
          [(HDHRCoordinatorDataCollector *)self _queue_setStreamingModeToActive];
        }
      }

      else
      {
        [(HDHRCoordinatorDataCollector *)self _queue_setStreamingMode:0];
      }

      [(HDDataAggregator *)self->_aggregator dataCollector:self didChangeState:v6];
    }

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_queue_setStreamingMode:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(HRCHeartRateRequestor *)self->_HRRequestor requestedStreamingMode]== a3)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v15 = self;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_INFO, "%{public}@: Requested streaming mode is the same, skipping updating coordinator", buf, 0xCu);
    }
  }

  else
  {
    HRRequestor = self->_HRRequestor;
    v13 = 0;
    v7 = [(HRCHeartRateRequestor *)HRRequestor requestStreamingMode:a3 withError:&v13];
    v8 = v13;
    if ((v7 & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
      {
        v11 = v9;
        v12 = _HRCStreamingModeToString(a3);
        *buf = 138543874;
        v15 = self;
        v16 = 2114;
        v17 = v12;
        v18 = 2114;
        v19 = v8;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to set HR Streaming mode to %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setStreamingModeToActive
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(HDHRCoordinatorDataCollector *)self _queue_shouldStreamReducedRateHeartRateUpdates];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = HKStringFromBool();
    v9 = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_INFO, "%{public}@: Setting reduced heart rate updates: %{public}@", &v9, 0x16u);
  }

  if (v3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [(HDHRCoordinatorDataCollector *)self _queue_setStreamingMode:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_workoutManagerDidUpdateCurrentWorkout:(id)a3
{
  v4 = a3;
  if ([v4 sessionType] != 1)
  {
    v5 = [v4 workoutConfiguration];
    [v4 state];
    v6 = HKWorkoutSessionStateFromServerState();
    v7 = 0;
    if (v5 && v6 != 3 && v6 != 6)
    {
      v7 = [v5 activityType];
    }

    -[HRCHeartRateRequestor setUserWorkoutActivitySession:isIndoor:](self->_HRRequestor, "setUserWorkoutActivitySession:isIndoor:", v7, [v5 locationType]);
  }

  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HDHRCoordinatorDataCollector__workoutManagerDidUpdateCurrentWorkout___block_invoke;
  v9[3] = &unk_278616F38;
  objc_copyWeak(&v10, &location);
  dispatch_async(queue, v9);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __71__HDHRCoordinatorDataCollector__workoutManagerDidUpdateCurrentWorkout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_updateCollectionState];
}

- (BOOL)_queue_shouldStreamReducedRateHeartRateUpdates
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleWatch];

  if (!v4)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained workoutManager];
  v7 = [v6 currentActivityRequiresExtendedMode];

  if (!v7)
  {
    return 0;
  }

  v8 = objc_loadWeakRetained(&self->_profile);
  v9 = [v8 workoutManager];
  v10 = [v9 isInHeartRateRecovery];

  if ((v10 & 1) == 0)
  {
    return ![(HDHRCoordinatorDataCollector *)self _queue_hasHeartRateClientsWithoutWorkouts];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_queue_hasHeartRateClientsWithoutWorkouts
{
  v24 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v4 = HDQueryServerSampleTypeObservationAssertionName(v3);

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained sessionAssertionManager];
  v7 = [v6 ownerIdentifiersForAssertionIdentifier:v4];

  v8 = objc_loadWeakRetained(&self->_profile);
  v9 = [v8 sessionAssertionManager];
  v10 = [v9 ownerIdentifiersForAssertionIdentifier:@"HDCurrentWorkoutSessionAssertion"];

  v11 = [v7 hk_minus:v10];
  v12 = [v11 count];
  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEBUG))
  {
    v16 = v13;
    v17 = HKStringFromBool();
    v18 = 138543875;
    v19 = v17;
    v20 = 2113;
    v21 = v7;
    v22 = 2113;
    v23 = v10;
    _os_log_debug_impl(&dword_228986000, v16, OS_LOG_TYPE_DEBUG, "Workout power saving mode is active, full-fidelity streaming allowed: %{public}@, heart rate clients: %{private}@, workout clients: %{private}@", &v18, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12 != 0;
}

- (id)diagnosticDescription
{
  os_unfair_lock_lock(&self->_lock);
  [(HKDataCollectorState *)self->_lock_collectorState collectionType];
  os_unfair_lock_unlock(&self->_lock);
  v3 = MEMORY[0x277CCACA8];
  v4 = HKDataCollectionTypeToString();
  v5 = [v3 stringWithFormat:@"Heart Rate Collection: %@", v4];

  return v5;
}

@end