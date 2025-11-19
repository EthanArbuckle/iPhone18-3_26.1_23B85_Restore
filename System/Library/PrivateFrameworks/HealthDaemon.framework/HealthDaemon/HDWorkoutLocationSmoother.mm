@interface HDWorkoutLocationSmoother
+ (id)_saveNewRouteSeriesWithProfile:(id)a3 sourceEntity:(id)a4 forWorkout:(id)a5 locations:(id)a6 routes:(id)a7 associateWithWorkout:(BOOL)a8 error:(id *)a9;
- (HDWorkoutLocationSmoother)initWithProfile:(id)a3;
- (id)_queue_saveLocations:(void *)a3 forTask:(void *)a4 activity:(uint64_t)a5 saveError:;
- (id)_workoutWithUUIDString:(uint64_t *)a3 error:;
- (uint64_t)_shouldObserveWorkouts;
- (void)_associationsSyncedForWorkout:(id)a3;
- (void)_finishSmoothingSampleWithTask:(void *)a1;
- (void)_queue_cancelTimeout;
- (void)_queue_clearSmoothingTimeoutTimerForTask:(uint64_t)a1;
- (void)_queue_deleteRoutesForTask:(uint64_t)a1;
- (void)_queue_finishTaskAttempt:(id *)a1;
- (void)_queue_locationManagerDidSmoothRoutes:(void *)a3 forTask:(void *)a4 error:;
- (void)_queue_smoothAllUnsmoothedLocationSeries;
- (void)_queue_smoothNextActivityForCurrentTask;
- (void)_queue_smoothNextSample;
- (void)_queue_smoothingDidFailForTask:(void *)a3 error:(int)a4 shouldRetry:;
- (void)_queue_startSmoothingCurrentTask;
- (void)_submitWorkoutPerformanceTask:(void *)a3 event:(char)a4 failure:;
- (void)_submitWorkoutPerformanceTask:(void *)a3 event:(void *)a4 activity:(uint64_t)a5 locations:(char)a6 failure:;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)dealloc;
- (void)foregroundClientProcessesDidChange:(id)a3 previouslyForegroundBundleIdentifiers:(id)a4;
- (void)profileDidBecomeReady:(id)a3;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
- (void)smoothRouteWithWorkoutUUID:(id)a3 completion:(id)a4;
- (void)unitTest_smoothRouteForTask:(id)a3 completion:(id)a4;
@end

@implementation HDWorkoutLocationSmoother

- (HDWorkoutLocationSmoother)initWithProfile:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HDWorkoutLocationSmoother;
  v5 = [(HDWorkoutLocationSmoother *)&v13 init];
  if (v5)
  {
    v6 = HKCreateSerialDispatchQueue();
    queue = v5->_queue;
    v5->_queue = v6;

    objc_storeWeak(&v5->_profile, v4);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingSmoothingTasks = v5->_pendingSmoothingTasks;
    v5->_pendingSmoothingTasks = v8;

    currentSmoothingTask = v5->_currentSmoothingTask;
    v5->_currentSmoothingTask = 0;

    objc_storeWeak(&v5->_queueCurrentSmoother, 0);
    WeakRetained = objc_loadWeakRetained(&v5->_profile);
    [WeakRetained registerProfileReadyObserver:v5 queue:v5->_queue];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"HDAssociationEntityDidReceiveSyncObjectsNotification" object:0];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained database];
  [v5 removeProtectedDataObserver:self];

  v6 = objc_loadWeakRetained(&self->_profile);
  v7 = [v6 daemon];
  v8 = [v7 processStateManager];
  [v8 unregisterForegroundClientProcessObserver:self];

  if ([(HDWorkoutLocationSmoother *)self _shouldObserveWorkouts])
  {
    v9 = objc_loadWeakRetained(&self->_profile);
    v10 = [v9 dataManager];
    v11 = [MEMORY[0x277CCD720] workoutType];
    [v10 removeObserver:self forDataType:v11];
  }

  v12.receiver = self;
  v12.super_class = HDWorkoutLocationSmoother;
  [(HDWorkoutLocationSmoother *)&v12 dealloc];
}

- (uint64_t)_shouldObserveWorkouts
{
  if (result)
  {
    WeakRetained = objc_loadWeakRetained((result + 16));
    v2 = [WeakRetained daemon];
    v3 = [v2 behavior];
    v4 = [v3 routeSmoothingEnabled];

    return v4;
  }

  return result;
}

- (void)_associationsSyncedForWorkout:(id)a3
{
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[routes] Workout-sample associations occurred, start smoothing if unlocked.", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HDWorkoutLocationSmoother__associationsSyncedForWorkout___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __59__HDWorkoutLocationSmoother__associationsSyncedForWorkout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = [WeakRetained database];
  v4 = [v3 isProtectedDataAvailable];

  v5 = *(a1 + 32);
  if (v4)
  {

    [(HDWorkoutLocationSmoother *)v5 _queue_smoothAllUnsmoothedLocationSeries];
  }

  else
  {
    *(v5 + 48) = 1;
  }
}

- (void)_queue_smoothAllUnsmoothedLocationSeries
{
  v48[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
    v2 = [MEMORY[0x277CCD8D8] dataTypeWithCode:102];
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    v34 = v2;
    v4 = [HDSampleEntity entityEnumeratorWithType:v2 profile:WeakRetained];

    v5 = objc_loadWeakRetained((v1 + 16));
    v6 = [v5 metadataManager];
    v7 = [v6 predicateWithMetadataKey:*MEMORY[0x277CCE118] value:0 operatorType:5];

    v32 = v7;
    [v4 setPredicate:v7];
    v8 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"end_date" entityClass:objc_opt_class() ascending:1];
    v48[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
    [v4 setOrderingTerms:v9];

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v42 = 0;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __69__HDWorkoutLocationSmoother__queue_smoothAllUnsmoothedLocationSeries__block_invoke;
    v40[3] = &unk_27861D470;
    v40[4] = v1;
    v11 = v10;
    v41 = v11;
    v33 = v4;
    v30 = [v4 enumerateWithError:&v42 handler:v40];
    v31 = v42;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          v17 = [HDSmoothingTask alloc];
          v18 = [obj objectForKeyedSubscript:v16];
          v19 = objc_loadWeakRetained((v1 + 16));
          v20 = [v19 daemon];
          [v20 analyticsSubmissionCoordinator];
          v22 = v21 = v1;
          v23 = [(HDSmoothingTask *)v17 _initWithWorkout:v16 routes:v18 analyticsSubmissionCoordinator:v22];

          v1 = v21;
          [*(v21 + 24) addObject:v23];
        }

        v13 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
      }

      while (v13);
    }

    if ([*(v1 + 24) count])
    {
      [(HDWorkoutLocationSmoother *)v1 _queue_smoothNextSample];
    }

    if (v30)
    {
      v24 = 0;
      v26 = v33;
      v25 = v34;
    }

    else
    {
      v27 = v1;
      _HKInitializeLogging();
      v28 = *MEMORY[0x277CCC330];
      v26 = v33;
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v44 = v31;
        v45 = 2112;
        v46 = v33;
        _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "[routes] Error occurred in enumerator: %{public}@ %@", buf, 0x16u);
      }

      v24 = 1;
      v25 = v34;
      v1 = v27;
    }

    *(v1 + 48) = v24;
    *(v1 + 49) = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __69__HDWorkoutLocationSmoother__queue_smoothAllUnsmoothedLocationSeries__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 metadata];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCE118]];

  v6 = *(a1 + 32);
  v23 = 0;
  v7 = [(HDWorkoutLocationSmoother *)v6 _workoutWithUUIDString:v5 error:&v23];
  v8 = v23;
  if (v7)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v3 UUID];
      *buf = 138412546;
      v25 = v11;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[routes] Will smooth route: %@, workout: %@", buf, 0x16u);
    }

    v12 = [*(a1 + 40) objectForKeyedSubscript:v7];

    if (!v12)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [*(a1 + 40) setObject:v13 forKeyedSubscript:v7];
    }

    v14 = [*(a1 + 40) objectForKeyedSubscript:v7];
    [v14 addObject:v3];
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC330];
    v16 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (!v16)
      {
        goto LABEL_12;
      }

      v14 = v15;
      v17 = [v3 UUID];
      *buf = 138412802;
      v25 = v5;
      v26 = 2112;
      v27 = v17;
      v28 = 2112;
      v29 = v8;
      v18 = "[routes] Unable to fetch workout %@ for route %@. Error: %@";
      v19 = v14;
      v20 = 32;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_12;
      }

      v14 = v15;
      v17 = [v3 UUID];
      *buf = 138412546;
      v25 = v17;
      v26 = 2112;
      v27 = v5;
      v18 = "[routes] Route %@ is orphaned, workout %@ doesn't exist.";
      v19 = v14;
      v20 = 22;
    }

    _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
  }

LABEL_12:
  v21 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_workoutWithUUIDString:(uint64_t *)a3 error:
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    a1 = [(HDDataEntity *)HDWorkoutEntity objectWithUUID:v6 encodingOptions:0 profile:WeakRetained error:a3];

    if (!a1)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        v11 = *a3;
        v12 = 138412546;
        v13 = v5;
        v14 = 2114;
        v15 = v11;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[routes] Failed to find workout with UUID=%@: %{public}@", &v12, 0x16u);
      }

      a1 = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return a1;
}

- (void)_queue_smoothNextSample
{
  v28 = *MEMORY[0x277D85DE8];
  if (a1 && (v2 = (a1 + 32), !*(a1 + 32)))
  {
    v4 = [*(a1 + 24) hk_dequeue];
    obj = v4;
    if (v4)
    {
      v5 = v4;
      v6 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:a1];
      [(HDSmoothingTask *)v5 setTransaction:v6];

      v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v8 = [v7 hk_BOOLForKey:@"HDLocationSmootherSmoothWithZeroLocations" defaultValue:0];

      v9 = [v5[2] metadata];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCE1A0]];

      if (v5[4] || v10 || (v8 & 1) != 0)
      {
        v5[7] = 1;
        objc_storeStrong(v2, obj);
        _HKInitializeLogging();
        v22 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v27 = v5;
          _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, "[routes] New smoothing task will run: %{public}@", buf, 0xCu);
        }

        v23 = [MEMORY[0x277CBEAA8] now];
        objc_storeStrong(v5 + 15, v23);

        [(HDWorkoutLocationSmoother *)a1 _queue_startSmoothingCurrentTask];
      }

      else
      {
        _HKInitializeLogging();
        v11 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
        {
          v12 = v5[2];
          v13 = v11;
          v14 = [v12 UUID];
          *buf = 138543362;
          v27 = v14;
          _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "[routes] Workout %{public}@ has 0 locations; deleting it.", buf, 0xCu);
        }

        [(HDWorkoutLocationSmoother *)a1 _queue_deleteRoutesForTask:v5];
        [(HDWorkoutLocationSmoother *)a1 _finishSmoothingSampleWithTask:v5];
      }
    }

    else
    {
      v15 = [a1 didCompleteAllPendingSmoothingTasksHandler];
      v5 = v15;
      if (v15)
      {
        (*(v15 + 16))(v15);
      }

      WeakRetained = objc_loadWeakRetained((a1 + 16));
      v17 = [WeakRetained nanoSyncManager];
      [v17 syncHealthDataWithOptions:0 reason:@"Workout route smoothed" completion:&__block_literal_global_73];

      v18 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
      v19 = objc_loadWeakRetained((a1 + 16));
      v20 = [v19 cloudSyncManager];
      v21 = [objc_alloc(MEMORY[0x277CCD140]) initWithChangesSyncRequest:v18];
      [v20 syncWithRequest:v21 reason:@"Workout route smoothed" completion:&__block_literal_global_395];
    }

    v24 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v3 = *MEMORY[0x277D85DE8];
  }
}

- (void)profileDidBecomeReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained database];
  v6 = [v5 isProtectedDataAvailable];

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    queue = self->_queue;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __51__HDWorkoutLocationSmoother_profileDidBecomeReady___block_invoke;
    v30[3] = &unk_278613968;
    v30[4] = self;
    v10 = [HDMaintenanceOperation maintenanceOperationWithName:v8 queue:queue synchronousBlock:v30];

    v11 = objc_loadWeakRetained(&self->_profile);
    v12 = [v11 daemon];
    v13 = [v12 maintenanceWorkCoordinator];
    [v13 enqueueMaintenanceOperation:v10];
  }

  else if (!self)
  {
    return;
  }

  dispatch_assert_queue_V2(self->_queue);
  v14 = objc_loadWeakRetained(&self->_profile);
  v15 = [v14 daemon];
  v16 = [v15 behavior];
  v17 = [v16 isCompanionCapable];

  if (v17)
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "[routes] Set up location observers", buf, 2u);
    }

    self->_isFirstLaunchAndNotYetSmoothed = 1;
    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:self selector:sel__associationsSyncedForWorkout_ name:@"HDAssociationEntityDidReceiveSyncObjectsNotification" object:0];

    v20 = objc_loadWeakRetained(&self->_profile);
    v21 = [v20 database];
    [v21 addProtectedDataObserver:self queue:self->_queue];

    v22 = objc_loadWeakRetained(&self->_profile);
    v23 = [v22 daemon];
    v24 = [v23 processStateManager];
    [v24 registerForegroundClientProcessObserver:self];
  }

  if ([(HDWorkoutLocationSmoother *)self _shouldObserveWorkouts])
  {
    v25 = objc_loadWeakRetained(&self->_profile);
    v26 = [v25 database];
    [v26 addProtectedDataObserver:self queue:self->_queue];

    v27 = objc_loadWeakRetained(&self->_profile);
    v28 = [v27 dataManager];
    v29 = [MEMORY[0x277CCD720] workoutType];
    [v28 addObserver:self forDataType:v29];
  }
}

- (void)foregroundClientProcessesDidChange:(id)a3 previouslyForegroundBundleIdentifiers:(id)a4
{
  if ([a3 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v6 = [WeakRetained database];
    v7 = [v6 isProtectedDataAvailable];

    if (v7)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__HDWorkoutLocationSmoother_foregroundClientProcessesDidChange_previouslyForegroundBundleIdentifiers___block_invoke;
      block[3] = &unk_278613968;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }
}

void __102__HDWorkoutLocationSmoother_foregroundClientProcessesDidChange_previouslyForegroundBundleIdentifiers___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 49) == 1)
  {
    v6 = v1;
    v7 = v2;
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[routes] Activity app launched, is first launch, and is unlocked.", v5, 2u);
    }

    [(HDWorkoutLocationSmoother *)*(a1 + 32) _queue_smoothAllUnsmoothedLocationSeries];
  }
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  v4 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    if (self->_isFirstLaunchAndNotYetSmoothed)
    {
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC330];
      if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:
        [(HDWorkoutLocationSmoother *)self _queue_smoothAllUnsmoothedLocationSeries];
        return;
      }

      v10 = 0;
      v7 = "[routes] Protected data available and isFirstLaunch; Attempting to smooth unsmoothed routes.";
      v8 = &v10;
    }

    else
    {
      if (!self->_needToCheckForLocationSeriesOnUnlock)
      {
        return;
      }

      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC330];
      if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v9 = 0;
      v7 = "[routes] Protected data available; location samples were possibly added while locked; check for workout route.";
      v8 = &v9;
    }

    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    goto LABEL_9;
  }
}

- (void)_queue_locationManagerDidSmoothRoutes:(void *)a3 forTask:(void *)a4 error:
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  _HKInitializeLogging();
  v10 = MEMORY[0x277CCC330];
  v11 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v42 = 134217984;
    v43 = [v7 count];
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[routes] Successfully smoothed %lu routes", &v42, 0xCu);
  }

  if (v8 && (*(v8 + 9) & 1) != 0)
  {
    _HKInitializeLogging();
    v13 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v14 = v8[2];
      v15 = v13;
      v16 = [v14 UUID];
      v42 = 138543362;
      v43 = v16;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[routes] Did finish smoothing locations after timeout for workout %{public}@, locations will be ignored.", &v42, 0xCu);
    }
  }

  else if (v9)
  {
    v17 = [v9 domain];
    v18 = [v17 isEqualToString:@"CLSmootherErrorDomain"];

    if (v18 && ([v9 code] - 3) <= 1)
    {
      v19 = a1;
      v20 = v8;
      v21 = v9;
      v22 = 1;
    }

    else
    {
      v19 = a1;
      v20 = v8;
      v21 = v9;
      v22 = 0;
    }

    [(HDWorkoutLocationSmoother *)v19 _queue_smoothingDidFailForTask:v20 error:v21 shouldRetry:v22];
  }

  else
  {
    _HKInitializeLogging();
    v23 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        v24 = v8[2];
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
      v26 = v23;
      v27 = [v25 UUID];
      v42 = 138543362;
      v43 = v27;
      _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "[routes] Did finish smoothing locations for workout %{public}@", &v42, 0xCu);
    }

    if (![v7 count] && (!v8 || !v8[4]))
    {
      _HKInitializeLogging();
      v28 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        if (v8)
        {
          v29 = v8[2];
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;
        v31 = v28;
        v32 = [v30 UUID];
        v42 = 138543362;
        v43 = v32;
        _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "[routes] Smoothed route has 0 locations for workout %{public}@, deleting it", &v42, 0xCu);
      }
    }

    _HKInitializeLogging();
    v33 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        v34 = v8[2];
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;
      v36 = v33;
      v37 = [v35 UUID];
      v38 = [v37 UUIDString];
      v42 = 138543362;
      v43 = v38;
      _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_DEFAULT, "[routes] Deleting old routes for workout %{public}@", &v42, 0xCu);
    }

    [(HDWorkoutLocationSmoother *)a1 _queue_deleteRoutesForTask:v8];
    if (v8)
    {
      v39 = v8[5];
      if (v39)
      {
        v40 = v39;
        v40[2](v40, v7, v8[7], 0);
      }
    }

    [(HDWorkoutLocationSmoother *)a1 _finishSmoothingSampleWithTask:v8];
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_queue_smoothingDidFailForTask:(void *)a3 error:(int)a4 shouldRetry:
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    goto LABEL_37;
  }

  if (!a4 || v7 && *(v7 + 7) > 2uLL)
  {
    _HKInitializeLogging();
    v14 = MEMORY[0x277CCC330];
    v15 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_FAULT))
    {
      if (v7)
      {
        v26 = *(v7 + 2);
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      v28 = v15;
      v29 = [v27 UUID];
      WeakRetained = objc_loadWeakRetained(a1 + 2);
      v31 = [WeakRetained daemon];
      v32 = [v31 behavior];
      v33 = [v32 isAppleWatch];
      v34 = @"Phone";
      *buf = 138544130;
      v46 = 2048;
      v45 = v29;
      v47 = 3;
      if (v33)
      {
        v34 = @"Watch";
      }

      v48 = 2112;
      v49 = v34;
      v50 = 2112;
      v51 = v8;
      _os_log_fault_impl(&dword_228986000, v28, OS_LOG_TYPE_FAULT, "[routes] Couldn't smooth routes for workout %{public}@ after %ld attempts on device %@, marking as v2. Error: %@", buf, 0x2Au);

      if (!v7)
      {
        goto LABEL_29;
      }
    }

    else if (!v7)
    {
      goto LABEL_29;
    }

    if (*(v7 + 4))
    {
      v42 = 0;
      v16 = [(HDWorkoutLocationSmoother *)a1 _queue_saveLocations:v7 forTask:0 activity:&v42 saveError:?];
      v17 = v42;
      _HKInitializeLogging();
      v18 = *v14;
      v19 = *v14;
      if (v16)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(v7 + 2);
          v21 = v18;
          v22 = [v20 UUID];
          v23 = [v22 UUIDString];
          *buf = 138543362;
          v45 = v23;
          _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "[routes] Deleting old routes for workout %{public}@", buf, 0xCu);
        }

        [(HDWorkoutLocationSmoother *)a1 _queue_deleteRoutesForTask:v7];

        if (!*(v7 + 5))
        {
          goto LABEL_36;
        }

        v43 = v16;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
        v25 = *(v7 + 5);
      }

      else
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v45 = v17;
          _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[routes] An error occurred marking routes as V2: %{public}@", buf, 0xCu);
        }

        v25 = *(v7 + 5);
        if (!v25)
        {
          goto LABEL_36;
        }

        v16 = 0;
        v24 = 0;
      }

LABEL_35:
      v40 = v25;
      v40[2](v40, v24, *(v7 + 7), v8);

LABEL_36:
      [(HDWorkoutLocationSmoother *)a1 _finishSmoothingSampleWithTask:v7];

      goto LABEL_37;
    }

LABEL_29:
    _HKInitializeLogging();
    v35 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v36 = *(v7 + 2);
      }

      else
      {
        v36 = 0;
      }

      v37 = v36;
      v38 = v35;
      v39 = [v37 UUID];
      *buf = 138543362;
      v45 = v39;
      _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "[routes] v2 route has 0 locations for workout %{public}@, deleting it", buf, 0xCu);
    }

    [(HDWorkoutLocationSmoother *)a1 _queue_deleteRoutesForTask:v7];
    v16 = 0;
    if (!v7)
    {
      goto LABEL_36;
    }

    v24 = 0;
    v25 = *(v7 + 5);
    if (!v25)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v10 = *(v7 + 2);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = v9;
    v13 = [v11 UUID];
    *buf = 138543618;
    v45 = v13;
    v46 = 2112;
    v47 = v8;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[routes] Smoothing did fail for workout %{public}@ with error: %@", buf, 0x16u);
  }

  if (v7)
  {
    ++*(v7 + 7);
  }

  [(HDWorkoutLocationSmoother *)a1 _queue_startSmoothingCurrentTask];
LABEL_37:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_queue_deleteRoutesForTask:(uint64_t)a1
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__68;
  v15 = __Block_byref_object_dispose__68;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v3)
  {
    v4 = v3[3];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HDWorkoutLocationSmoother__queue_deleteRoutesForTask___block_invoke;
  v10[3] = &unk_27861D538;
  v10[4] = &v11;
  [v5 enumerateObjectsUsingBlock:v10];

  v6 = v12[5];
  v7 = &__block_literal_global_410;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __55__HDWorkoutLocationSmoother__deleteSamples_completion___block_invoke;
  v20 = &unk_278614160;
  v21 = a1;
  v8 = v6;
  v22 = v8;
  v9 = &__block_literal_global_410;
  v23 = &__block_literal_global_410;
  HKDispatchAsyncOnGlobalConcurrentQueue();

  _Block_object_dispose(&v11, 8);
}

- (void)_finishSmoothingSampleWithTask:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v3 = v3[15];
  }

  [v3 timeIntervalSinceNow];
  v6 = v5;
  if (v5 < -30.0)
  {
    v7 = v4;
    v8 = [MEMORY[0x277CCDD30] sharedBehavior];
    v9 = [v8 isAppleInternalInstall];

    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277D10BC0]);
      [v10 setTitle:@"Route Smoothing Issue Detected"];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Route Smoothing took over %f seconds to complete", 0x403E000000000000];
      [v10 setMessage:v11];

      [v10 setDefaultButton:@"Tap-to-Radar"];
      [v10 setCancelButton:@"Not Now"];
      objc_initWeak(&location, a1);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __59__HDWorkoutLocationSmoother__showTTRAlertForTask_duration___block_invoke;
      v16[3] = &unk_27861D5B0;
      objc_copyWeak(v18, &location);
      v17 = v7;
      *&v18[1] = -v6;
      [v10 presentWithResponseHandler:v16];

      objc_destroyWeak(v18);
      objc_destroyWeak(&location);
    }
  }

  v12 = a1[1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDWorkoutLocationSmoother__finishSmoothingSampleWithTask___block_invoke;
  block[3] = &unk_278613920;
  block[4] = a1;
  v13 = v4;
  v15 = v13;
  dispatch_async(v12, block);
}

void __52__HDWorkoutLocationSmoother__queue_smoothNextSample__block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  v6 = *MEMORY[0x277CCC330];
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[routes] Successfully synced smoothed route", &v8, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "[routes] Failed to sync smoothed workout route with error: %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __52__HDWorkoutLocationSmoother__queue_smoothNextSample__block_invoke_393(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = v5;
      v8 = [v4 localizedDescription];
      v9 = 138543362;
      v10 = v8;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Failed to cloud sync after route smoothing: %{public}@", &v9, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_startSmoothingCurrentTask
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 56);
    }

    else
    {
      v4 = 0;
    }

    v10 = 134218242;
    v11 = v4;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[routes]: Starting smoothing task attempt %lu for Task: %{public}@ ", &v10, 0x16u);
  }

  [(HDWorkoutLocationSmoother *)a1 _submitWorkoutPerformanceTask:@"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskBegin" event:0 failure:?];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v5[12];
  }

  else
  {
    v6 = 0;
  }

  v7 = v5;
  v8 = [v6 copy];
  if (v5)
  {
    objc_storeStrong(v7 + 16, v8);
  }

  [(HDSmoothingTask *)v7 setSmoothingError:?];
  [(HDWorkoutLocationSmoother *)a1 _queue_smoothNextActivityForCurrentTask];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_submitWorkoutPerformanceTask:(void *)a3 event:(char)a4 failure:
{
  v7 = a2;
  v8 = a3;
  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  if (v7)
  {
    v10 = v7[2];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 metadata];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCE0E8]];
  v13 = [v9 initWithUUIDString:v12];

  if (v13)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v14 = [WeakRetained daemon];
    v15 = [v14 analyticsSubmissionCoordinator];
    if (v7)
    {
      v16 = v7[2];
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v32 = [v17 workoutActivityType];
    v18 = a4;
    if (v7)
    {
      v19 = v7[2];
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    [v20 duration];
    v22 = v21;
    if (v7)
    {
      v23 = v7[2];
    }

    else
    {
      v23 = 0;
    }

    v24 = [v23 workoutActivities];
    v25 = [v24 count];
    if (v7)
    {
      v26 = *(v7 + 8);
      v27 = v7[4];
      v28 = v7[7];
    }

    else
    {
      v27 = 0;
      v26 = 0;
      v28 = 0;
    }

    LOBYTE(v31) = v18;
    LOBYTE(v30) = v26 & 1;
    [HDWorkoutUtilities submitRouteSmoothingWorkoutPerformanceAnalyticsWithCoordinator:v15 event:v8 sessionIdentifier:v13 activityType:v32 duration:v22 activityCount:v25 extendedMode:v30 totalLocations:v27 routeSmoothingRetryCount:v28 activityID:0 failure:v31];
  }

  else
  {
    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "Unable to log analytics for workout, no sessionUUID not found", buf, 2u);
    }
  }
}

- (void)_queue_smoothNextActivityForCurrentTask
{
  v94[8] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 32);
    v3 = v2;
    if (v2)
    {
      v4 = v2[12];
      if (v4)
      {
      }

      else
      {
        v5 = v3[10];
        if (v5 < [v3[11] count])
        {
          v6 = v3[10];
          v7 = v3[11];
          v8 = [v7 objectAtIndexedSubscript:v6];

          inited = objc_initWeak(&location, v3);
          objc_initWeak(&from, a1);
          v10 = inited;
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v69 = __68__HDWorkoutLocationSmoother__queue_smoothNextActivityForCurrentTask__block_invoke;
          v70 = &unk_27861D498;
          objc_copyWeak(&v73, &from);
          objc_copyWeak(&v74, &location);
          v71 = v8;
          v72 = a1;
          v11 = v71;
          v67 = v3;
          v65 = v68;
          _HKInitializeLogging();
          v12 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[routes] Smoothing route for activity %@", buf, 0xCu);
          }

          v13 = [v11 workoutConfiguration];
          v62 = [v13 activityType];

          if (v6)
          {
            v14 = [v11 startDate];
          }

          else
          {
            v14 = 0;
          }

          v16 = v3[11];
          if ([v16 count] - 1 <= v6)
          {
            v17 = 0;
          }

          else
          {
            v17 = [v11 endDate];
          }

          v18 = v67[3];
          v77 = 0;
          v19 = v18;
          v20 = v14;
          v66 = v17;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v21 = 0;
          v22 = [v19 countByEnumeratingWithState:&v83 objects:buf count:16];
          if (v22)
          {
            v23 = *v84;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v84 != v23)
                {
                  objc_enumerationMutation(v19);
                }

                v21 += [*(*(&v83 + 1) + 8 * i) count];
              }

              v22 = [v19 countByEnumeratingWithState:&v83 objects:buf count:16];
            }

            while (v22);
          }

          if (v20)
          {
            if (v66)
            {
              [v66 timeIntervalSinceDate:v20];
              if (v25 > 0.0 && v25 < v21)
              {
                v21 = vcvtad_u64_f64(v25);
              }
            }
          }

          v26 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v27 = [v26 hk_BOOLForKey:@"HDLocationSmootherSmoothWithOverMaxRouteLength" defaultValue:0];

          if ((v21 < 0x8CA1) | v27 & 1)
          {
            v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v21];
            WeakRetained = objc_loadWeakRetained((a1 + 16));
            v30 = [WeakRetained database];
            v78[0] = MEMORY[0x277D85DD0];
            v78[1] = 3221225472;
            v78[2] = __73__HDWorkoutLocationSmoother__locationsForRoutes_startDate_endDate_error___block_invoke;
            v78[3] = &unk_27861B120;
            v79 = v19;
            v80 = v20;
            v81 = v66;
            v82 = v28;
            v31 = v28;
            v32 = [(HDHealthEntity *)HDLocationSeriesSampleEntity performReadTransactionWithHealthDatabase:v30 error:&v77 block:v78];

            if (v32)
            {
              v33 = v31;
            }

            else
            {
              v33 = 0;
            }

            v34 = v33;
          }

          else
          {
            [MEMORY[0x277CCA9B8] hk_assignError:&v77 code:130 format:{@"Cannot smooth route with estimated length %ld", v21}];
            v34 = 0;
          }

          v64 = v77;
          if (v34)
          {
            v35 = objc_alloc(MEMORY[0x277CCA970]);
            v36 = [v11 startDate];
            v37 = [v11 endDate];
            v38 = [v35 initWithStartDate:v36 endDate:v37];

            v39 = v67[9];
            *&v83 = MEMORY[0x277D85DD0];
            *(&v83 + 1) = 3221225472;
            *&v84 = __84__HDWorkoutLocationSmoother__queue_smoothActivity_activityIndex_forTask_completion___block_invoke;
            *(&v84 + 1) = &unk_27861D4C0;
            v61 = v38;
            *&v85 = v61;
            v63 = [v39 hk_map:&v83];
            if ([v34 count] || objc_msgSend(v63, "count"))
            {
              v40 = [v67 _newLocationSmootherWithWorkoutActivityType:v62 shouldReconstructEntireRoute:*(v67 + 8) timeIntervalsThatNeedPopulating:v63];
              objc_storeWeak((a1 + 56), v40);
              -[HDWorkoutLocationSmoother _submitWorkoutPerformanceTask:event:activity:locations:failure:](a1, v67, @"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskSmoothBegin", v11, [v34 count], 0);
              v41 = v67;
              [(HDWorkoutLocationSmoother *)a1 _queue_cancelTimeout];
              v41[9] = 0;

              v42 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 8));
              v43 = *(a1 + 40);
              *(a1 + 40) = v42;

              objc_initWeak(v78, a1);
              v44 = *(a1 + 40);
              v45 = dispatch_time(0, (*(v41 + 8) * 1000000000.0));
              dispatch_source_set_timer(v44, v45, 0xFFFFFFFFFFFFFFFFLL, 0);
              v46 = *(a1 + 40);
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __73__HDWorkoutLocationSmoother__queue_scheduleSmoothingTimeoutTimerForTask___block_invoke;
              v88 = &unk_2786177F8;
              v47 = v41;
              v89 = v47;
              objc_copyWeak(&v90, v78);
              dispatch_source_set_event_handler(v46, buf);
              dispatch_resume(*(a1 + 40));
              objc_destroyWeak(&v90);

              objc_destroyWeak(v78);
              _HKInitializeLogging();
              v48 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
              {
                v49 = v48;
                v50 = [v34 count];
                *buf = 138543874;
                *&buf[4] = v40;
                *&buf[12] = 2114;
                *&buf[14] = v11;
                *&buf[22] = 2048;
                v88 = v50;
                _os_log_impl(&dword_228986000, v49, OS_LOG_TYPE_DEFAULT, "[routes]: Calling smoother (%{public}@) for activity %{public}@ with %lu location points", buf, 0x20u);
              }

              objc_initWeak(v78, a1);
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __84__HDWorkoutLocationSmoother__queue_smoothActivity_activityIndex_forTask_completion___block_invoke_400;
              v88 = &unk_27861D510;
              objc_copyWeak(v94, v78);
              v51 = v40;
              v89 = v51;
              v90 = v11;
              v91 = v47;
              v52 = v34;
              v92 = v52;
              v93 = v65;
              [v51 smoothLocations:v52 batchType:0 handler:buf];

              objc_destroyWeak(v94);
              objc_destroyWeak(v78);
            }

            else
            {
              _HKInitializeLogging();
              v57 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
              {
                v58 = v67[2];
                v59 = v57;
                v60 = [v58 UUID];
                *buf = 138412290;
                *&buf[4] = v60;
                _os_log_impl(&dword_228986000, v59, OS_LOG_TYPE_DEFAULT, "[routes] No locations or activity intervals to smooth for route with UUID=%@:", buf, 0xCu);
              }

              v69(v65, 0, v64);
            }
          }

          else
          {
            _HKInitializeLogging();
            v53 = *MEMORY[0x277CCC330];
            if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
            {
              v54 = v67[2];
              v55 = v53;
              v56 = [v54 UUID];
              *buf = 138412546;
              *&buf[4] = v56;
              *&buf[12] = 2114;
              *&buf[14] = v64;
              _os_log_impl(&dword_228986000, v55, OS_LOG_TYPE_DEFAULT, "[routes] Failed to fetch locations for route with UUID=%@: %{public}@", buf, 0x16u);
            }

            v69(v65, 0, v64);
          }

          objc_destroyWeak(&v74);
          objc_destroyWeak(&v73);
          objc_destroyWeak(&from);
          objc_destroyWeak(&location);

          goto LABEL_11;
        }
      }

      [(HDWorkoutLocationSmoother *)a1 _queue_finishTaskAttempt:v3];
    }

LABEL_11:
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_queue_finishTaskAttempt:(id *)a1
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    [(HDWorkoutLocationSmoother *)a1 _queue_cancelTimeout];
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        v5 = *(v3 + 7);
        v6 = *(v3 + 13);
      }

      else
      {
        v5 = 0;
        v6 = 0;
      }

      v7 = v6;
      v8 = [v7 count];
      if (v3)
      {
        v9 = *(v3 + 12);
      }

      else
      {
        v9 = 0;
      }

      v14 = 134218754;
      v15 = v5;
      v16 = 2114;
      v17 = v3;
      v18 = 2048;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[routes]: Finished smoothing task attempt %lu for Task: %{public}@. Routes smoothed: %lu. Error: %{public}@", &v14, 0x2Au);
    }

    if (v3)
    {
      v10 = *(v3 + 12);
      if (v10)
      {
        v11 = v10;
        [(HDWorkoutLocationSmoother *)a1 _submitWorkoutPerformanceTask:v3 event:@"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskEnd" failure:1];
        [(HDWorkoutLocationSmoother *)a1 _queue_locationManagerDidSmoothRoutes:v3 forTask:v11 error:?];

        goto LABEL_13;
      }

      [(HDWorkoutLocationSmoother *)a1 _submitWorkoutPerformanceTask:v3 event:@"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskEnd" failure:0];
      v12 = *(v3 + 13);
    }

    else
    {
      [(HDWorkoutLocationSmoother *)a1 _submitWorkoutPerformanceTask:@"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskEnd" event:0 failure:?];
      v12 = 0;
    }

    [(HDWorkoutLocationSmoother *)a1 _queue_locationManagerDidSmoothRoutes:v12 forTask:v3 error:0];
  }

LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
}

void __68__HDWorkoutLocationSmoother__queue_smoothNextActivityForCurrentTask__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = v8;
    if (v8[4])
    {
      v10 = [v8 unitTest_smootherCompletionHandlerDidReturn];
      v11 = v10;
      if (v10)
      {
        (*(v10 + 16))(v10);
      }

      if (v6 || ![v5 count])
      {
        v12 = objc_loadWeakRetained((a1 + 56));
        [(HDSmoothingTask *)v12 setSmoothingError:v6];
      }

      else
      {
        v13 = objc_loadWeakRetained((a1 + 56));
        v14 = *(a1 + 32);
        v28 = 0;
        v12 = [(HDWorkoutLocationSmoother *)v9 _queue_saveLocations:v5 forTask:v13 activity:v14 saveError:&v28];
        v15 = v28;

        v16 = objc_loadWeakRetained((a1 + 56));
        v17 = v16;
        if (v12)
        {
          if (v16)
          {
            v18 = *(v16 + 13);
          }

          else
          {
            v18 = 0;
          }

          [v18 addObject:v12];
        }

        else
        {
          if (v16)
          {
            v19 = *(v16 + 12);
          }

          else
          {
            v19 = 0;
          }

          if (v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = v15;
          }

          v27 = v20;
          v21 = v19;
          v22 = objc_loadWeakRetained((a1 + 56));
          [(HDSmoothingTask *)v22 setSmoothingError:v27];

          *(*(a1 + 40) + 48) = 1;
          v17 = v15;
        }
      }

      v23 = objc_loadWeakRetained((a1 + 56));
      if (v23)
      {
        v24 = v23[12];
      }

      else
      {
        v24 = 0;
      }

      v25 = objc_loadWeakRetained((a1 + 56));
      v26 = v25;
      if (v24)
      {
        [(HDWorkoutLocationSmoother *)v9 _queue_finishTaskAttempt:v25];
      }

      else
      {
        if (v25)
        {
          ++v25[10];
        }

        [(HDWorkoutLocationSmoother *)v9 _queue_smoothNextActivityForCurrentTask];
      }
    }
  }
}

- (id)_queue_saveLocations:(void *)a3 forTask:(void *)a4 activity:(uint64_t)a5 saveError:
{
  v24 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__68;
    v34 = __Block_byref_object_dispose__68;
    v35 = 0;
    v11 = objc_alloc_init(HDMutableDatabaseTransactionContext);
    [(HDMutableDatabaseTransactionContext *)v11 setCacheScope:1];
    if (v10)
    {
      -[HDWorkoutLocationSmoother _submitWorkoutPerformanceTask:event:activity:locations:failure:](a1, v9, @"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskSaveBegin", v10, [v24 count], 0);
    }

    else
    {
      [(HDWorkoutLocationSmoother *)a1 _submitWorkoutPerformanceTask:v9 event:@"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskSaveBegin" failure:0];
    }

    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[routes]: Taking write transaction to save route", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v14 = [WeakRetained database];
    v15 = +[HDDatabaseTransactionContext contextForWritingProtectedData];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __77__HDWorkoutLocationSmoother__queue_saveLocations_forTask_activity_saveError___block_invoke;
    v25[3] = &unk_27861D560;
    v28 = &v30;
    v25[4] = a1;
    v16 = v9;
    v26 = v16;
    v17 = v24;
    v27 = v17;
    v18 = [v14 performTransactionWithContext:v15 error:a5 block:v25 inaccessibilityHandler:0];

    if (v10)
    {
      v19 = [a1 unitTest_didSaveSmoothedRouteForActivityAndTask];
      v20 = v19;
      if (v19)
      {
        (*(v19 + 16))(v19, v10, v16);
      }

      -[HDWorkoutLocationSmoother _submitWorkoutPerformanceTask:event:activity:locations:failure:](a1, v16, @"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskSaveEnd", v10, [v17 count], v18 ^ 1);
    }

    else
    {
      [(HDWorkoutLocationSmoother *)a1 _submitWorkoutPerformanceTask:v16 event:@"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskSaveEnd" failure:v18 ^ 1];
    }

    if (v18)
    {
      v21 = v31[5];
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)_submitWorkoutPerformanceTask:(void *)a3 event:(void *)a4 activity:(uint64_t)a5 locations:(char)a6 failure:
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  if (a1 && v11)
  {
    v14 = objc_alloc(MEMORY[0x277CCAD78]);
    v15 = [v11[2] metadata];
    v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277CCE0E8]];
    v17 = [v14 initWithUUIDString:v16];

    if (v17)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      v35 = [WeakRetained daemon];
      v33 = [v35 analyticsSubmissionCoordinator];
      v34 = [v13 workoutConfiguration];
      v32 = [v34 activityType];
      [v13 duration];
      v31 = v18;
      [v11[2] workoutActivities];
      v20 = v19 = a6;
      v30 = [v20 count];
      v21 = *(v11 + 8);
      v22 = v17;
      v23 = v12;
      v24 = v11[7];
      v25 = [v13 UUID];
      LOBYTE(v29) = v19;
      v28 = v24;
      v12 = v23;
      v17 = v22;
      LOBYTE(v27) = v21;
      [HDWorkoutUtilities submitRouteSmoothingWorkoutPerformanceAnalyticsWithCoordinator:v33 event:v12 sessionIdentifier:v22 activityType:v32 duration:v31 activityCount:v30 extendedMode:v27 totalLocations:a5 routeSmoothingRetryCount:v28 activityID:v25 failure:v29];
    }

    else
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "Unable to log analytics for workout, no sessionUUID not found", buf, 2u);
      }
    }
  }
}

void __84__HDWorkoutLocationSmoother__queue_smoothActivity_activityIndex_forTask_completion___block_invoke_400(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained((a1 + 72));
    v9 = objc_loadWeakRetained(v8 + 7);
    v10 = *(a1 + 32);

    if (v9 == v10)
    {
      objc_storeWeak(v8 + 7, 0);
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        *buf = 138543874;
        v26 = v14;
        v27 = 2114;
        v28 = v15;
        v29 = 2114;
        v30 = v6;
        _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "[routes]: Smoother (%{public}@) did finish for activity %{public}@ with error: %{public}@", buf, 0x20u);
      }

      -[HDWorkoutLocationSmoother _submitWorkoutPerformanceTask:event:activity:locations:failure:](v8, *(a1 + 48), @"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskSmoothEnd", *(a1 + 40), [*(a1 + 56) count], v6 != 0);
      v16 = *(v8 + 1);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __84__HDWorkoutLocationSmoother__queue_smoothActivity_activityIndex_forTask_completion___block_invoke_401;
      v18[3] = &unk_27861D4E8;
      objc_copyWeak(&v24, (a1 + 72));
      v19 = *(a1 + 48);
      v20 = *(a1 + 40);
      v23 = *(a1 + 64);
      v21 = v5;
      v22 = v6;
      dispatch_async(v16, v18);

      objc_destroyWeak(&v24);
    }

    else
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *buf = 138543362;
        v26 = v12;
        _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[routes]: Previously timed out smoother (%{public}@) eventually returned, igorning result", buf, 0xCu);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __84__HDWorkoutLocationSmoother__queue_smoothActivity_activityIndex_forTask_completion___block_invoke_401(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 72));
    [(HDWorkoutLocationSmoother *)v3 _queue_clearSmoothingTimeoutTimerForTask:?];

    v4 = objc_loadWeakRetained((a1 + 72));
    v7 = [v4 unitTest_didSmoothActivityForTask];

    if (v7)
    {
      (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 32));
    }

    v5 = *(a1 + 56);
    v6 = *(a1 + 48);
    (*(*(a1 + 64) + 16))();
  }
}

- (void)_queue_clearSmoothingTimeoutTimerForTask:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = v3;
    [(HDWorkoutLocationSmoother *)a1 _queue_cancelTimeout];
    v3 = v4;
    if (v4)
    {
      *(v4 + 9) = 0;
    }
  }
}

- (void)_queue_cancelTimeout
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 40);
    *(a1 + 40) = 0;
  }
}

void __56__HDWorkoutLocationSmoother__queue_deleteRoutesForTask___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 UUID];
  [v2 addObject:v3];
}

void __56__HDWorkoutLocationSmoother__queue_deleteRoutesForTask___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "[routes] An error occurred deleting old route series %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL __77__HDWorkoutLocationSmoother__queue_saveLocations_forTask_activity_saveError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[routes]: Write transaction taken to save route series", buf, 2u);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v33 = v7;
  if (!v6)
  {
    v24 = 0;
    goto LABEL_18;
  }

  WeakRetained = objc_loadWeakRetained((v6 + 16));
  v10 = [WeakRetained sourceManager];
  if (v8)
  {
    v11 = *(v8 + 2);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [v12 _source];
  v14 = [v13 bundleIdentifier];
  v34 = 0;
  v15 = [v10 localSourceForBundleIdentifier:v14 copyIfNecessary:1 error:&v34];
  v32 = v34;

  if (v15)
  {
    v16 = objc_loadWeakRetained((v6 + 16));
    if (v8)
    {
      v17 = *(v8 + 2);
      v18 = *(v8 + 3);
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v19 = v18;
    v20 = v33;
    v21 = v17;
    v22 = v15;
    v23 = v16;
    objc_opt_self();
    v24 = [HDWorkoutLocationSmoother _saveNewRouteSeriesWithProfile:v23 sourceEntity:v22 forWorkout:v21 locations:v20 routes:v19 associateWithWorkout:1 error:a3];

    v25 = v32;
    goto LABEL_17;
  }

  _HKInitializeLogging();
  v26 = *MEMORY[0x277CCC330];
  v25 = v32;
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v36 = v32;
    _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "[routes] Could not fetch local device source. %{public}@", buf, 0xCu);
  }

  v23 = v32;
  if (!v23)
  {
    goto LABEL_16;
  }

  if (!a3)
  {
    _HKLogDroppedError();
LABEL_16:
    v24 = 0;
    goto LABEL_17;
  }

  v27 = v23;
  v24 = 0;
  *a3 = v23;
LABEL_17:

LABEL_18:
  v28 = *(*(a1 + 56) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v24;

  result = *(*(*(a1 + 56) + 8) + 40) != 0;
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)_saveNewRouteSeriesWithProfile:(id)a3 sourceEntity:(id)a4 forWorkout:(id)a5 locations:(id)a6 routes:(id)a7 associateWithWorkout:(BOOL)a8 error:(id *)a9
{
  v60 = a8;
  v74 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = MEMORY[0x277CBEB38];
  v61 = a7;
  v16 = a6;
  v17 = a4;
  v18 = [v15 alloc];
  v64[0] = *MEMORY[0x277CCC520];
  v19 = [MEMORY[0x277CCAD78] UUID];
  v20 = [v19 UUIDString];
  v65[0] = v20;
  v64[1] = *MEMORY[0x277CCE108];
  v62 = v14;
  v21 = [v14 UUID];
  v22 = [v21 UUIDString];
  v65[1] = v22;
  v64[2] = *MEMORY[0x277CCC528];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE5D0]];
  v65[2] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:3];
  v25 = [v18 initWithDictionary:v24];

  v26 = v13;
  v27 = v25;
  v28 = v17;
  v29 = v16;
  v30 = v61;
  objc_opt_self();
  v31 = [MEMORY[0x277CCDC70] _workoutRouteWithDevice:0 metadata:0];
  v32 = [v26 database];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __105__HDWorkoutLocationSmoother__createWorkoutRouteWithProfile_metadata_sourceEntity_locations_routes_error___block_invoke;
  v67 = &unk_2786199D0;
  v68 = v26;
  v69 = v31;
  v70 = v28;
  v71 = v29;
  v72 = v30;
  v73 = v27;
  v33 = v27;
  v34 = v30;
  v35 = v29;
  v36 = v28;
  v37 = v31;
  v38 = v26;
  [(HDHealthEntity *)HDDataEntity performWriteTransactionWithHealthDatabase:v32 error:a9 block:buf];

  [v37 _setMetadata:v33];
  v39 = [v37 UUID];
  v40 = [(HDDataEntity *)HDLocationSeriesSampleEntity objectWithUUID:v39 encodingOptions:MEMORY[0x277CBEC10] profile:v38 error:a9];

  if (!v40)
  {
    v50 = 0;
    v43 = v62;
    goto LABEL_17;
  }

  v41 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v42 = [v40 UUID];
  [v41 hk_appendBytesWithUUID:v42];

  if (!v60)
  {
    v46 = 0;
    v43 = v62;
    goto LABEL_11;
  }

  v43 = v62;
  v44 = [v62 UUID];
  v63 = 0;
  v45 = [HDAssociationEntity insertEntriesWithAssociationUUID:v44 objectUUIDsData:v41 type:0 behavior:0 destinationSubObjectReference:0 profile:v38 error:&v63];
  v46 = v63;

  if (v45)
  {
LABEL_11:
    _HKInitializeLogging();
    v51 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v52 = v51;
      v53 = [v40 UUID];
      v54 = [v43 UUID];
      *buf = 138543618;
      *&buf[4] = v53;
      *&buf[12] = 2114;
      *&buf[14] = v54;
      _os_log_impl(&dword_228986000, v52, OS_LOG_TYPE_DEFAULT, "[routes] Successfully saved and associated smoothed route -> %{public}@ for workout %{public}@", buf, 0x16u);
    }

    v50 = v40;
    goto LABEL_16;
  }

  _HKInitializeLogging();
  v47 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v57 = v47;
    v58 = [v40 UUID];
    v59 = [v62 UUID];
    *buf = 138543874;
    *&buf[4] = v58;
    *&buf[12] = 2114;
    *&buf[14] = v59;
    *&buf[22] = 2114;
    v67 = v46;
    _os_log_error_impl(&dword_228986000, v57, OS_LOG_TYPE_ERROR, "[routes] Failed to associate route %{public}@ with workout %{public}@ %{public}@", buf, 0x20u);
  }

  v48 = v46;
  v46 = v48;
  if (v48)
  {
    if (a9)
    {
      v49 = v48;
      *a9 = v46;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v50 = 0;
LABEL_16:

LABEL_17:
  v55 = *MEMORY[0x277D85DE8];

  return v50;
}

void __60__HDWorkoutLocationSmoother__finishSmoothingSampleWithTask___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  [(HDWorkoutLocationSmoother *)*(a1 + 32) _queue_smoothNextSample];
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 48);
  }

  else
  {
    v5 = 0;
  }

  [v5 invalidate];
  v6 = *(a1 + 40);

  [(HDSmoothingTask *)v6 setTransaction:?];
}

uint64_t __105__HDWorkoutLocationSmoother__createWorkoutRouteWithProfile_metadata_sourceEntity_locations_routes_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v66[1] = *MEMORY[0x277D85DE8];
  v52 = a2;
  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC330];
  v6 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[routes]: Creating new workout route series", buf, 2u);
  }

  v7 = [*(a1 + 32) dataManager];
  v66[0] = *(a1 + 40);
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:1];
  v9 = *(a1 + 48);
  v60 = 0;
  v10 = [v7 insertDataObjects:v8 sourceEntity:v9 deviceEntity:0 sourceVersion:0 creationDate:&v60 error:CFAbsoluteTimeGetCurrent()];
  v11 = v60;

  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    v20 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v63 = v11;
      _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "[routes] Error occurred while saving new series sample: %{public}@", buf, 0xCu);
    }

    v18 = v11;
    if (v18)
    {
      if (!a3)
      {
        goto LABEL_10;
      }

LABEL_15:
      v21 = v18;
      v19 = 0;
      *a3 = v18;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v12 = *(a1 + 56);
  if (!v12)
  {
    v51 = a3;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v18 = *(a1 + 64);
    v23 = [v18 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v56;
      while (2)
      {
        v26 = 0;
        v27 = v11;
        do
        {
          if (*v56 != v25)
          {
            objc_enumerationMutation(v18);
          }

          v28 = [*(*(&v55 + 1) + 8 * v26) UUID];
          v29 = [*(a1 + 40) UUID];
          v54 = v27;
          v30 = [HDLocationSeriesSampleEntity copyLocationDataFromSeriesIdentifier:v28 toSeriesIdentifier:v29 transaction:v52 error:&v54];
          v11 = v54;

          if (!v30)
          {
            _HKInitializeLogging();
            v36 = *MEMORY[0x277CCC330];
            if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
            {
              v45 = *(a1 + 40);
              v46 = v36;
              v47 = [v45 UUID];
              *buf = 138543618;
              v63 = v47;
              v64 = 2114;
              v65 = v11;
              _os_log_error_impl(&dword_228986000, v46, OS_LOG_TYPE_ERROR, "[routes] Couldn't copy location data for series sample %{public}@: %{public}@", buf, 0x16u);
            }

            v22 = v11;
            if (v22)
            {
              if (v51)
              {
                v37 = v22;
                *v51 = v22;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            goto LABEL_43;
          }

          ++v26;
          v27 = v11;
        }

        while (v24 != v26);
        v24 = [v18 countByEnumeratingWithState:&v55 objects:v61 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v16 = v11;
    a3 = v51;
    v5 = MEMORY[0x277CCC330];
    goto LABEL_27;
  }

  v13 = [*(a1 + 40) UUID];
  v14 = *(a1 + 32);
  v59 = v11;
  v15 = [HDLocationSeriesSampleEntity insertLocationData:v12 seriesIdentifier:v13 assertion:0 profile:v14 error:&v59];
  v16 = v59;

  if (v15)
  {
LABEL_27:
    v31 = [*(a1 + 40) sampleType];
    v32 = [objc_msgSend(v31 "dataObjectClass")];

    v33 = [*(a1 + 40) UUID];
    v34 = *(a1 + 72);
    v35 = *(a1 + 32);
    v53 = v16;
    v18 = [v32 freezeSeriesWithIdentifier:v33 metadata:v34 profile:v35 error:&v53];
    v22 = v53;

    if (v18)
    {
      v19 = 1;
      goto LABEL_44;
    }

    _HKInitializeLogging();
    v38 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v48 = *(a1 + 40);
      v49 = v38;
      v50 = [v48 UUID];
      *buf = 138543618;
      v63 = v50;
      v64 = 2114;
      v65 = v22;
      _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "[routes] Couldn't freeze series %{public}@: %{public}@", buf, 0x16u);
    }

    v22 = v22;
    if (v22)
    {
      if (a3)
      {
        v39 = v22;
        *a3 = v22;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v18 = 0;
LABEL_43:
    v19 = 0;
    goto LABEL_44;
  }

  _HKInitializeLogging();
  v17 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    v42 = *(a1 + 40);
    v43 = v17;
    v44 = [v42 UUID];
    *buf = 138543618;
    v63 = v44;
    v64 = 2114;
    v65 = v16;
    _os_log_error_impl(&dword_228986000, v43, OS_LOG_TYPE_ERROR, "[routes] Couldn't insert location data for series sample %{public}@: %{public}@", buf, 0x16u);
  }

  v18 = v16;
  if (!v18)
  {
LABEL_17:
    v22 = 0;
    goto LABEL_43;
  }

  if (a3)
  {
    goto LABEL_15;
  }

LABEL_10:
  _HKLogDroppedError();
  v19 = 0;
LABEL_16:
  v22 = v18;
LABEL_44:

  v40 = *MEMORY[0x277D85DE8];
  return v19;
}

void __55__HDWorkoutLocationSmoother__deleteSamples_completion___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HDDataDeletionConfiguration);
  [(HDDataDeletionConfiguration *)v2 setNotifyObservers:0];
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  v4 = [WeakRetained dataManager];
  v5 = a1[5];
  v11 = 0;
  v6 = [v4 deleteObjectsWithUUIDCollection:v5 configuration:v2 error:&v11];
  v7 = v11;

  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v10 = a1[5];
      *buf = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v7;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[routes] Error deleting route samples <%{public}@>, error=%{public}@", buf, 0x16u);
    }
  }

  (*(a1[6] + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HDWorkoutLocationSmoother__locationsForRoutes_startDate_endDate_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v34 = a2;
  v35 = [v34 databaseForEntityClass:objc_opt_class()];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v30 = a3;
    v33 = *v41;
    v7 = off_27860E000;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v40 + 1) + 8 * i);
        v10 = [v9 UUID];
        v11 = HDDataEntityPredicateForDataUUID();

        v12 = v7[451];
        v39 = 0;
        v13 = [(__objc2_class *)v12 anyInDatabase:v35 predicate:v11 error:&v39];
        v14 = v39;
        v15 = v14;
        if (!v13)
        {
          if (v14)
          {
            if (v30)
            {
              v25 = v14;
              *v30 = v15;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          else
          {
            v26 = MEMORY[0x277CCA9B8];
            v27 = [v9 UUID];
            [v26 hk_assignError:v30 code:100 format:{@"Did not find the expected route sample with UUID=%@", v27}];
          }

          v24 = 0;
          goto LABEL_26;
        }

        v16 = *(a1 + 40);
        v17 = *(a1 + 48);
        v38 = 0;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __73__HDWorkoutLocationSmoother__locationsForRoutes_startDate_endDate_error___block_invoke_2;
        v36[3] = &unk_27861D588;
        v37 = *(a1 + 56);
        v18 = [v13 enumerateLocationDataInTransaction:v34 startDate:v16 endDate:v17 error:&v38 handler:v36];
        v19 = v38;
        v20 = v19;
        if ((v18 & 1) == 0)
        {
          v21 = v19;
          v22 = v21;
          v31 = v21 == 0;
          if (v21)
          {
            if (v30)
            {
              v23 = v21;
              *v30 = v22;
            }

            else
            {
              _HKLogDroppedError();
            }

            v7 = off_27860E000;
          }
        }

        if (!v18)
        {
          v24 = v31;
          goto LABEL_26;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      v24 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v24 = 1;
  }

LABEL_26:

  v28 = *MEMORY[0x277D85DE8];
  return v24 & 1;
}

void __73__HDWorkoutLocationSmoother__queue_scheduleSmoothingTimeoutTimerForTask___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v3 = v3[2];
    }

    v4 = v3;
    v5 = [v4 UUID];
    v6 = v5;
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = *(v7 + 64);
    }

    v12 = 138543618;
    v13 = v5;
    v14 = 2048;
    v15 = v7;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[routes] Smoothing did timeout for workout %{public}@ after %f sec", &v12, 0x16u);
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:103 description:@"Smoothing task timed out"];
  v9 = *(a1 + 32);
  if (v9)
  {
    *(v9 + 9) = 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_storeWeak(WeakRetained + 7, 0);
  [(HDWorkoutLocationSmoother *)WeakRetained _queue_smoothingDidFailForTask:v8 error:1 shouldRetry:?];

  v11 = *MEMORY[0x277D85DE8];
}

void __59__HDWorkoutLocationSmoother__showTTRAlertForTask_duration___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = v8;
  v12 = v9;
  v13 = v7;
  if (WeakRetained)
  {
    if (a3 == 1)
    {
      _HKInitializeLogging();
      v34 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v42 = WeakRetained;
        _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: Smoothing TTR alert: 'Not Now' button pressed", buf, 0xCu);
      }
    }

    else if (!a3)
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v42 = WeakRetained;
        _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Route smoothing TTR alert: 'Tap-to-Radar' button pressed", buf, 0xCu);
      }

      v38 = MEMORY[0x277CCACA8];
      if (v12)
      {
        v15 = *(v12 + 2);
      }

      else
      {
        v15 = 0;
      }

      v39 = v11;
      v36 = v15;
      v37 = [v36 device];
      if (v12)
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = [*(v12 + 2) UUID];
        v18 = *(v12 + 4);
        v19 = *(v12 + 14);
        v20 = *(v12 + 15);
        v21 = *(v12 + 7);
        v22 = *(v12 + 12);
        v23 = *(v12 + 16);
        v24 = v20;
        v25 = v19;
        v26 = [v16 stringWithFormat:@"<Workout UUID=%@ \ntotalLocations=%tu \nTask Creation Date=%@ \nTask Start Date=%@ \nAttempts=%lu \nPrevious Attempts Error=%@ \nError=%@>", v17, v18, v25, v24, v21, v23, v22];

        v27 = *(v12 + 2);
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

      v28 = [v27 _detailedDescriptionString];
      v29 = [v38 stringWithFormat:@"TimeOut: %f seconds \nTaskDuration: %f seconds \n\nDevice: %@ \n\nTask:\n%@ \n\nWorkout: %@", 0x403E000000000000, v10, v37, v26, v28];

      v30 = MEMORY[0x277CBEBC0];
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Route Smoothing took %f seconds to complete", v10];
      v32 = [v30 hk_tapToHealthRadarURLForComponent:1855988 title:v31 description:v29 classification:4 reproducibility:6 keywords:0 autoDiagnostics:3 attachments:0];

      v33 = [MEMORY[0x277CC1E80] defaultWorkspace];
      [v33 openURL:v32 configuration:0 completionHandler:&__block_literal_global_461_0];

      v11 = v39;
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __85__HDWorkoutLocationSmoother__handleAlertResponse_selectedButton_task_duration_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Could not open Tap-to-Radar URL %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HDWorkoutLocationSmoother_samplesAdded_anchor___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __49__HDWorkoutLocationSmoother_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "Workout Sample saved. Attempting to smooth all unsmoothed location series samples.", v9, 2u);
  }

  v3 = [*(a1 + 32) unitTest_wilTriggerSmoothing];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v6 = [WeakRetained database];
  v7 = [v6 isProtectedDataAvailable];

  v8 = *(a1 + 32);
  if (v7)
  {
    [(HDWorkoutLocationSmoother *)v8 _queue_smoothAllUnsmoothedLocationSeries];
  }

  else
  {
    *(v8 + 48) = 1;
  }
}

- (void)smoothRouteWithWorkoutUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HDDataEntityPredicateForDataUUID();
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = [WeakRetained database];
  v29 = 0;
  v11 = [(HDHealthEntity *)HDWorkoutEntity anyWithPredicate:v8 healthDatabase:v10 error:&v29];
  v12 = v29;

  if (v11)
  {
    v13 = [MEMORY[0x277CCD8D8] dataTypeWithCode:102];
    v14 = objc_loadWeakRetained(&self->_profile);
    v15 = HDAssociationEntityPredicateForChildObjectsAssociatedWithParentObject([v11 persistentID]);
    v28 = v12;
    v16 = [(HDSampleEntity *)HDSeriesSampleEntity samplesWithType:v13 profile:v14 encodingOptions:0 predicate:v15 limit:0 anchor:0 error:&v28];
    v17 = v28;

    if (v16)
    {
      v18 = [v6 UUIDString];
      v27 = v17;
      v19 = [(HDWorkoutLocationSmoother *)&self->super.isa _workoutWithUUIDString:v18 error:&v27];
      v20 = v27;

      if (v19)
      {
        queue = self->_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __67__HDWorkoutLocationSmoother_smoothRouteWithWorkoutUUID_completion___block_invoke;
        block[3] = &unk_278613680;
        v23 = v16;
        v19 = v19;
        v24 = v19;
        v25 = self;
        v26 = v7;
        dispatch_sync(queue, block);
      }

      else
      {
        (*(v7 + 2))(v7, 0, v20);
      }
    }

    else
    {
      v20 = v17;
      v19 = v20;
      if (!v20)
      {
        v19 = [MEMORY[0x277CCA9B8] hk_error:118 description:@"Object not found"];
      }

      (*(v7 + 2))(v7, 0, v19);
    }
  }

  else
  {
    v20 = v12;
    v13 = v20;
    if (!v20)
    {
      v13 = [MEMORY[0x277CCA9B8] hk_error:118 description:@"Object not found"];
    }

    (*(v7 + 2))(v7, 0, v13);
  }
}

void __67__HDWorkoutLocationSmoother_smoothRouteWithWorkoutUUID_completion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v23;
    do
    {
      v5 = 0;
      do
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * v5);
        v7 = [HDSmoothingTask alloc];
        v8 = *(a1 + 40);
        v26 = v6;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
        WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 16));
        v11 = [WeakRetained daemon];
        v12 = [v11 analyticsSubmissionCoordinator];
        v13 = [(HDSmoothingTask *)v7 _initWithWorkout:v8 routes:v9 analyticsSubmissionCoordinator:v12];

        [*(*(a1 + 48) + 24) addObject:v13];
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v3);
  }

  if ([*(*(a1 + 48) + 24) count])
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __67__HDWorkoutLocationSmoother_smoothRouteWithWorkoutUUID_completion___block_invoke_2;
    v20[3] = &unk_278613658;
    v21 = *(a1 + 56);
    [*(a1 + 48) setDidCompleteAllPendingSmoothingTasksHandler:v20];
    v14 = objc_loadWeakRetained((*(a1 + 48) + 16));
    v15 = [v14 database];
    v16 = [v15 isProtectedDataAvailable];

    v17 = *(a1 + 48);
    if (v16)
    {
      [(HDWorkoutLocationSmoother *)v17 _queue_smoothNextSample];
    }

    else
    {
      *(v17 + 48) = 1;
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)unitTest_smoothRouteForTask:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HDWorkoutLocationSmoother_unitTest_smoothRouteForTask_completion___block_invoke;
  block[3] = &unk_278616D18;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __68__HDWorkoutLocationSmoother_unitTest_smoothRouteForTask_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v4 = v4[3];
    }

    v5 = v4;
    v6 = v2;
    v7 = [v5 firstObject];
    v8 = [v7 UUID];
    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[routes] Will smooth sample %@", &v13, 0xCu);
  }

  v9 = *(a1 + 32);
  if (v9 && (*(v9 + 64) = 0x3FC999999999999ALL, (v10 = *(a1 + 32)) != 0))
  {
    objc_setProperty_nonatomic_copy(v10, v3, *(a1 + 48), 40);
    v11 = *(a1 + 32);
  }

  else
  {
    v11 = 0;
  }

  [*(*(a1 + 40) + 24) addObject:v11];
  [(HDWorkoutLocationSmoother *)*(a1 + 40) _queue_smoothNextSample];
  v12 = *MEMORY[0x277D85DE8];
}

@end