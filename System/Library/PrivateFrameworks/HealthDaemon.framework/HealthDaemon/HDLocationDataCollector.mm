@interface HDLocationDataCollector
- (HDLocationDataCollector)initWithProfile:(id)a3 sampleSavingDelegate:(id)a4 configuration:(id)a5 workoutUUID:(id)a6;
- (HDLocationEventDelegate)delegate;
- (NSString)description;
- (id)createCMElevation;
- (id)databaseAssertion;
- (id)workoutLocationManager;
- (int64_t)state;
- (void)_queue_deleteCurrentRoute;
- (void)_queue_pauseLocationUpdatesAfterDelay:(uint64_t)a1;
- (void)_queue_resumeWorkout;
- (void)_queue_setupLocationUpdates;
- (void)_queue_stopGPSUpdates;
- (void)_queue_stopUpdates;
- (void)dealloc;
- (void)healthLocationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)healthLocationManager:(id)a3 didFailWithError:(id)a4;
- (void)healthLocationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)pauseUpdates;
- (void)pauseUpdatesAfterDelay:(unint64_t)a3;
- (void)resumeUpdates;
- (void)startUpdates;
- (void)stopUpdates;
- (void)stopUpdatesAndDiscardData;
@end

@implementation HDLocationDataCollector

- (HDLocationEventDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __52__HDLocationDataCollector__queue_createSeriesSample__block_invoke(uint64_t a1, char a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  v7 = *MEMORY[0x277CCC330];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 96);
      v10 = v6;
      v11 = [v9 UUID];
      v12 = *(*(a1 + 32) + 16);
      v16 = 138543874;
      v17 = v8;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ Saved route %@ with associated workout %@.", &v16, 0x20u);
    }

    v13 = [*(a1 + 32) delegate];
    [v13 workoutRouteUpdated:*(*(a1 + 32) + 96)];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 32);
    v16 = 138543618;
    v17 = v15;
    v18 = 2114;
    v19 = v5;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[routes] %{public}@ Error occurred while saving route: %{public}@", &v16, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HDLocationDataCollector)initWithProfile:(id)a3 sampleSavingDelegate:(id)a4 configuration:(id)a5 workoutUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = HDLocationDataCollector;
  v14 = [(HDLocationDataCollector *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, v10);
    v15->_state = 0;
    objc_storeWeak(&v15->_sampleSavingDelegate, v11);
    objc_storeStrong(&v15->_workoutUUID, a6);
    v16 = HKCreateSerialDispatchQueue();
    queue = v15->_queue;
    v15->_queue = v16;

    v15->_lastPausedTime = -1.0;
    v15->_activityType = [v12 activityType];
    v18 = [v12 shouldUseExtendedMode];
    v19 = MEMORY[0x277CE4268];
    if (!v18)
    {
      v19 = MEMORY[0x277CE4208];
    }

    v15->_desiredAccuracy = *v19;
    v20 = [v12 predictionSessionUUID];
    v15->_predictedActivity = v20 != 0;

    v15->_lock._os_unfair_lock_opaque = 0;
  }

  return v15;
}

- (void)dealloc
{
  [(HDAssertion *)self->_locationUpdatingAssertion invalidate];
  locationUpdatingAssertion = self->_locationUpdatingAssertion;
  self->_locationUpdatingAssertion = 0;

  os_unfair_lock_lock(&self->_lock);
  [(HDAssertion *)self->_lock_databaseAssertion invalidate];
  os_unfair_lock_unlock(&self->_lock);
  v4.receiver = self;
  v4.super_class = HDLocationDataCollector;
  [(HDLocationDataCollector *)&v4 dealloc];
}

- (int64_t)state
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__HDLocationDataCollector_state__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  state = self->_state;
  if (state >= 4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown(%zd)", self->_state];
  }

  else
  {
    v7 = off_27862C200[state];
  }

  v8 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, v7];

  return v8;
}

- (id)workoutLocationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained workoutManager];
  v4 = [v3 locationManager];

  return v4;
}

- (id)createCMElevation
{
  v2 = objc_alloc_init(MEMORY[0x277CC1C80]);

  return v2;
}

- (void)_queue_deleteCurrentRoute
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 56));
    _HKInitializeLogging();
    v2 = MEMORY[0x277CCC330];
    v3 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 96);
      v5 = v3;
      v6 = [v4 UUID];
      *buf = 138543618;
      v20 = a1;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ route %@ is empty, deleting.", buf, 0x16u);
    }

    v7 = objc_alloc_init(HDDataDeletionConfiguration);
    [(HDDataDeletionConfiguration *)v7 setGenerateDeletedObjects:0];
    [(HDDataDeletionConfiguration *)v7 setFailIfNotFound:0];
    [(HDDataDeletionConfiguration *)v7 setNotifyObservers:0];
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v9 = [WeakRetained dataManager];
    v10 = [*(a1 + 96) UUID];
    v25[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v18 = 0;
    [v9 deleteObjectsWithUUIDCollection:v11 configuration:v7 error:&v18];
    v12 = v18;

    if (v12)
    {
      _HKInitializeLogging();
      v13 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 96);
        v16 = v13;
        v17 = [v15 UUID];
        *buf = 138543874;
        v20 = a1;
        v21 = 2114;
        v22 = v17;
        v23 = 2114;
        v24 = v12;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "[routes] %{public}@ error deleting empty route %{public}@: %{public}@.", buf, 0x20u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_queue_stopUpdates
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 56));
    v2 = *(a1 + 80);
    if (v2 == 3 || v2 == 0)
    {
      _HKInitializeLogging();
      v4 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = a1;
        v5 = "[routes] %{public}@ Inactive collector, ignoring end request";
        v6 = v4;
        v7 = 12;
LABEL_11:
        _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, v5, &v14, v7);
      }
    }

    else
    {
      *(a1 + 80) = 3;
      v8 = [a1 workoutLocationManager];
      [v8 removeObserver:a1];

      [(HDLocationDataCollector *)a1 _queue_stopGPSUpdates];
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 136);
        v12 = *(a1 + 144);
        v14 = 138543874;
        v15 = a1;
        v16 = 2048;
        v17 = v11;
        v18 = 2048;
        v19 = v12;
        v5 = "[routes] %{public}@ Received %tu valid locations, skipped %tu";
        v6 = v9;
        v7 = 32;
        goto LABEL_11;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_queue_stopGPSUpdates
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 56));
    _HKInitializeLogging();
    v2 = MEMORY[0x277CCC330];
    v3 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = a1;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ Stop elevation updates.", &v8, 0xCu);
    }

    *(a1 + 112) = 0xBFF0000000000000;
    [*(a1 + 160) stopElevationUpdates];
    _HKInitializeLogging();
    v4 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = a1;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ Stop location manager GPS updates.", &v8, 0xCu);
    }

    [*(a1 + 128) invalidate];
    v5 = *(a1 + 128);
    *(a1 + 128) = 0;

    v6 = [a1 workoutLocationManager];
    [v6 removeObserver:a1];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopUpdates
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ Stop location updates.", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HDLocationDataCollector_stopUpdates__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

void __38__HDLocationDataCollector_stopUpdates__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  [(HDLocationDataCollector *)*(a1 + 32) _queue_stopUpdates];
  v2 = *(a1 + 32);
  if (!v2)
  {
LABEL_15:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  dispatch_assert_queue_V2(*(v2 + 56));
  if (!*(v2 + 96))
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = NSStringFromSelector(sel__queue_freezeCurrentWorkoutRoute);
      *buf = 138543618;
      v24 = v2;
      v25 = 2114;
      v26 = v15;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ %{public}@ _route is nil.", buf, 0x16u);
    }

    goto LABEL_15;
  }

  if (*(v2 + 104) & 1) != 0 || (*(v2 + 40))
  {
    _HKInitializeLogging();
    v3 = MEMORY[0x277CCC330];
    v4 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v2 + 96);
      v6 = v4;
      v7 = [v5 UUID];
      *buf = 138543618;
      v24 = v2;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ Freezing series sample: %@", buf, 0x16u);
    }

    v8 = [*(v2 + 96) UUID];
    WeakRetained = objc_loadWeakRetained((v2 + 8));
    v22 = 0;
    v10 = [(HDSeriesSampleEntity *)HDLocationSeriesSampleEntity freezeSeriesWithIdentifier:v8 metadata:MEMORY[0x277CBEC10] profile:WeakRetained error:&v22];
    v11 = v22;

    if (!v10 || v11)
    {
      _HKInitializeLogging();
      v16 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v19 = *(v2 + 96);
        v20 = v16;
        v21 = [v19 UUID];
        *buf = 138543874;
        v24 = v2;
        v25 = 2114;
        v26 = v21;
        v27 = 2114;
        v28 = v11;
        _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "[routes] %{public}@ error freezing sample UUID %{public}@: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v12 = *(v2 + 96);
      *(v2 + 96) = 0;
    }

    goto LABEL_15;
  }

  v18 = *MEMORY[0x277D85DE8];

  [(HDLocationDataCollector *)v2 _queue_deleteCurrentRoute];
}

- (void)stopUpdatesAndDiscardData
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ Stop location updates and discard data.", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HDLocationDataCollector_stopUpdatesAndDiscardData__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__HDLocationDataCollector_stopUpdatesAndDiscardData__block_invoke(uint64_t a1)
{
  [(HDLocationDataCollector *)*(a1 + 32) _queue_stopUpdates];
  v2 = *(a1 + 32);

  [(HDLocationDataCollector *)v2 _queue_deleteCurrentRoute];
}

- (void)startUpdates
{
  v19 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    workoutUUID = self->_workoutUUID;
    activityType = self->_activityType;
    v6 = v3;
    v7 = [(HDLocationDataCollector *)self delegate];
    *buf = 138544130;
    v12 = self;
    v13 = 2112;
    v14 = workoutUUID;
    v15 = 1024;
    v16 = activityType;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ Start location updates for workout %@ of type %d with data source %@", buf, 0x26u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HDLocationDataCollector_startUpdates__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
  v9 = *MEMORY[0x277D85DE8];
}

void __39__HDLocationDataCollector_startUpdates__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 80) == 1)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ location updates already started, ignoring start request", &v8, 0xCu);
    }

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    *(v2 + 136) = 0;
    *(*(a1 + 32) + 144) = 0;
    v6 = *(a1 + 32);
    v7 = *MEMORY[0x277D85DE8];

    [(HDLocationDataCollector *)v6 _queue_setupLocationUpdates];
  }
}

- (void)_queue_setupLocationUpdates
{
  v38[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 56));
    if ([a1 locationServicesEnabled])
    {
      v2 = [a1 workoutLocationManager];
      [v2 addObserver:a1];
      *(a1 + 88) = [a1 authorizationStatus];
      _HKInitializeLogging();
      v3 = MEMORY[0x277CCC330];
      v4 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 88);
        *buf = 138543874;
        *&buf[4] = a1;
        if ((v5 - 3) >= 2)
        {
          v6 = @"denied/not determined";
        }

        else
        {
          v6 = @"approved";
        }

        *&buf[12] = 1024;
        *&buf[14] = v5;
        *&buf[18] = 2112;
        *&buf[20] = v6;
        _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ Location authorization status is: %d (%@)", buf, 0x1Cu);
      }

      v7 = *(a1 + 88);
      if ((v7 - 3) >= 2)
      {
        if (!v7)
        {
          [v2 requestWhenInUseAuthorization];
        }
      }

      else
      {
        *(a1 + 80) = 1;
        v8 = *(a1 + 24);
        v9 = [a1 isElevationAvailable];
        if (v8 == 46)
        {
          v10 = 0;
        }

        else
        {
          v10 = v9;
        }

        if (v10 == 1)
        {
          if (!*(a1 + 160))
          {
            _HKInitializeLogging();
            v11 = *v3;
            if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = a1;
              _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[routes] [elevation] %{public}@ Creating CMElevation.", buf, 0xCu);
            }

            v12 = [a1 createCMElevation];
            v13 = *(a1 + 160);
            *(a1 + 160) = v12;
          }

          *(a1 + 120) = 0;
          objc_initWeak(buf, a1);
          v14 = *(a1 + 160);
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __54__HDLocationDataCollector__queue_setupLocationUpdates__block_invoke;
          v32[3] = &unk_27862C1B8;
          objc_copyWeak(&v33, buf);
          [v14 startElevationUpdatesWithHandler:v32];
          objc_destroyWeak(&v33);
          objc_destroyWeak(buf);
        }

        if (!*(a1 + 96))
        {
          dispatch_assert_queue_V2(*(a1 + 56));
          v15 = MEMORY[0x277CCDC70];
          v16 = [MEMORY[0x277CCD2E8] localDevice];
          v37[0] = *MEMORY[0x277CCE118];
          v17 = [*(a1 + 16) UUIDString];
          v38[0] = v17;
          v37[1] = *MEMORY[0x277CCC520];
          v18 = [MEMORY[0x277CCAD78] UUID];
          v19 = [v18 UUIDString];
          v38[1] = v19;
          v37[2] = *MEMORY[0x277CCC528];
          v38[2] = &unk_283CB3F78;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
          v21 = [v15 _workoutRouteWithDevice:v16 metadata:v20];
          v22 = *(a1 + 96);
          *(a1 + 96) = v21;

          WeakRetained = objc_loadWeakRetained((a1 + 48));
          v36 = *(a1 + 96);
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
          v25 = [(HDLocationDataCollector *)a1 databaseAssertion];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __52__HDLocationDataCollector__queue_createSeriesSample__block_invoke;
          *&buf[24] = &unk_2786130B0;
          v35 = a1;
          [WeakRetained saveSamples:v24 databaseAssertion:v25 withCompletion:buf];
        }

        _HKInitializeLogging();
        v26 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = a1;
          *&buf[12] = 2112;
          *&buf[14] = v2;
          _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ Fetched location manager: %@, create in-use assertion, and start updating location.", buf, 0x16u);
        }

        [*(a1 + 128) invalidate];
        v27 = [*(a1 + 16) UUIDString];
        v28 = [v2 takeLocationUpdatingAssertionForOwnerIdentifier:v27 desiredAccuracy:*(a1 + 32)];
        v29 = *(a1 + 128);
        *(a1 + 128) = v28;
      }
    }

    else
    {
      _HKInitializeLogging();
      v30 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = a1;
        _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ Location services is not enabled", buf, 0xCu);
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __54__HDLocationDataCollector__queue_setupLocationUpdates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v6;
  v8 = v5;
  if (WeakRetained)
  {
    v9 = WeakRetained[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HDLocationDataCollector__handleElevationData_error___block_invoke;
    block[3] = &unk_278613830;
    v12 = v8;
    v13 = v7;
    v14 = WeakRetained;
    dispatch_async(v9, block);
  }
}

- (id)databaseAssertion
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 64));
    v2 = (a1 + 72);
    v3 = *(a1 + 72);
    os_unfair_lock_unlock((a1 + 64));
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v6 = [WeakRetained database];
      v7 = [*(a1 + 16) UUIDString];
      v14 = 0;
      v4 = [v6 takeAccessibilityAssertionWithOwnerIdentifier:v7 contextType:3 error:&v14];
      v8 = v14;

      if (v4)
      {
        os_unfair_lock_lock((a1 + 64));
        if (*v2)
        {
          _HKInitializeLogging();
          v9 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v16 = a1;
            _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: We have an old assertion. Invalidating...", buf, 0xCu);
          }

          [*v2 invalidate];
        }

        objc_storeStrong((a1 + 72), v4);
        os_unfair_lock_unlock((a1 + 64));
        v10 = v4;
      }

      else
      {
        _HKInitializeLogging();
        v11 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v16 = a1;
          v17 = 2114;
          v18 = v8;
          _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to take database assertion with error %{public}@.", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)pauseUpdatesAfterDelay:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = self;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ HDLocationDataCollector: Pause updates.", buf, 0xCu);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HDLocationDataCollector_pauseUpdatesAfterDelay___block_invoke;
  v8[3] = &unk_2786138F8;
  v8[4] = self;
  v8[5] = a3;
  dispatch_async(queue, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __50__HDLocationDataCollector_pauseUpdatesAfterDelay___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 80) == 2)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v14 = 138543362;
      v15 = v4;
      v5 = "[routes] %{public}@ location updates already paused, ignoring end request";
      v6 = v3;
      v7 = 12;
LABEL_10:
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, v5, &v14, v7);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if ((*(v2 + 88) - 3) >= 2)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 88);
      v14 = 138543618;
      v15 = v11;
      v16 = 1024;
      v17 = v12;
      v5 = "[routes] %{public}@ Last status was %d, location not approved";
      v6 = v10;
      v7 = 18;
      goto LABEL_10;
    }

LABEL_11:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  v8 = *(a1 + 40);
  v9 = *MEMORY[0x277D85DE8];

  [(HDLocationDataCollector *)v2 _queue_pauseLocationUpdatesAfterDelay:v8];
}

- (void)_queue_pauseLocationUpdatesAfterDelay:(uint64_t)a1
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 56));
    *(a1 + 112) = CFAbsoluteTimeGetCurrent();
    *(a1 + 80) = 2;
    v4 = dispatch_time(0, 1000000000 * a2);
    v5 = *(a1 + 56);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__HDLocationDataCollector__queue_pauseLocationUpdatesAfterDelay___block_invoke;
    v6[3] = &unk_2786138F8;
    v6[4] = a1;
    v6[5] = a2;
    dispatch_after(v4, v5, v6);
  }
}

- (void)pauseUpdates
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 objectForKey:@"HDPauseWorkoutGPSTimeout"];

  if (v4)
  {
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 180;
  }

  [(HDLocationDataCollector *)self pauseUpdatesAfterDelay:v5];
}

void __65__HDLocationDataCollector__queue_pauseLocationUpdatesAfterDelay___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 112) > 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = *(a1 + 32);
    if (Current - *(v4 + 112) > *(a1 + 40))
    {

      [(HDLocationDataCollector *)v4 _queue_stopGPSUpdates];
    }
  }
}

- (void)resumeUpdates
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ HDLocationDataCollector: Resume updates.", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HDLocationDataCollector_resumeUpdates__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

void __40__HDLocationDataCollector_resumeUpdates__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[10];
  if (v3)
  {
    if (v3 == 3 || v3 == 1)
    {
      _HKInitializeLogging();
      v5 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v17 = 138543362;
        v18 = v6;
        v7 = "[routes] %{public}@ location updates already started or ended, ignoring resume request";
        v8 = v5;
        v9 = 12;
LABEL_9:
        _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, v7, &v17, v9);
      }
    }

    else
    {
      v2[10] = 1;
      v11 = *(a1 + 32);
      if ((*(v11 + 88) - 3) < 2)
      {
        v12 = *MEMORY[0x277D85DE8];

        [(HDLocationDataCollector *)v11 _queue_resumeWorkout];
        return;
      }

      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = *(v15 + 88);
        v17 = 138543618;
        v18 = v15;
        v19 = 1024;
        v20 = v16;
        v7 = "[routes] %{public}@ Last status was %d, location not approved";
        v8 = v14;
        v9 = 18;
        goto LABEL_9;
      }
    }

    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = *MEMORY[0x277D85DE8];

  [v2 startUpdates];
}

- (void)_queue_resumeWorkout
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 56));
    if (*(a1 + 112) <= 0.0 || (*(a1 + 88) - 3) > 1)
    {
      _HKInitializeLogging();
      v3 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 112);
        v6 = 138543618;
        v7 = a1;
        v8 = 2048;
        v9 = v4;
        _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ GPS was stopped; restart GPS. Last paused time: %f", &v6, 0x16u);
      }

      *(a1 + 112) = 0xBFF0000000000000;
      [(HDLocationDataCollector *)a1 _queue_setupLocationUpdates];
    }

    else
    {
      _HKInitializeLogging();
      v2 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138543362;
        v7 = a1;
        _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ We resumed the workout before GPS was stopped. Don't restart GPS", &v6, 0xCu);
      }

      *(a1 + 112) = 0xBFF0000000000000;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __54__HDLocationDataCollector__handleElevationData_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) || (v4 = *(a1 + 40)) == 0)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC330];
    if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
LABEL_3:
      v3 = *MEMORY[0x277D85DE8];
      return;
    }

    v14 = *(a1 + 48);
    v15 = *(v14 + 160);
    v16 = *(a1 + 32);
    *buf = 138543874;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v11 = "[routes] [elevation] %{public}@ Error updating: %@, %{public}@";
    v12 = v2;
LABEL_16:
    _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, v11, buf, 0x20u);
    goto LABEL_3;
  }

  v5 = [v4 elevationAscended];
  v6 = v5;
  v7 = *(a1 + 48);
  if (*(v7 + 112) > 0.0)
  {
    *(v7 + 120) = v5;
    goto LABEL_3;
  }

  v8 = *(v7 + 120);
  if (v5 < v8)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC330];
    if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v10 = *(a1 + 48);
    *buf = 138543874;
    v19 = v10;
    v20 = 2048;
    v21 = v6;
    v22 = 2048;
    v23 = v8;
    v11 = "[routes] [elevation] %{public}@ Error  currentElevationGain: %lu is less than previousGain:%lu";
    v12 = v9;
    goto LABEL_16;
  }

  if (!v5 || v5 == v8)
  {
    goto LABEL_3;
  }

  *(v7 + 120) = v5;
  v17 = [*(a1 + 48) delegate];
  [v17 elevationUpdated:v6 - v8];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)healthLocationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__HDLocationDataCollector_healthLocationManager_didChangeAuthorizationStatus___block_invoke;
  v5[3] = &unk_27862C1E0;
  v6 = a4;
  v5[4] = self;
  dispatch_async(queue, v5);
}

void __78__HDLocationDataCollector_healthLocationManager_didChangeAuthorizationStatus___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40) - 3;
  if (v1 < 2 != (*(*(a1 + 32) + 88) - 3) < 2)
  {
    _HKInitializeLogging();
    v3 = MEMORY[0x277CCC330];
    v4 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 88);
      v7 = *(a1 + 40);
      v19 = 138543874;
      v20 = v5;
      v21 = 1024;
      v22 = v6;
      v23 = 1024;
      v24 = v7;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ Did change location authorization (%d -> %d)", &v19, 0x18u);
    }

    *(*(a1 + 32) + 88) = *(a1 + 40);
    if (v1 > 1)
    {
      _HKInitializeLogging();
      v12 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v19 = 138543362;
        v20 = v13;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ Location authorization change: pause location updates.", &v19, 0xCu);
      }

      v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v15 = [v14 objectForKey:@"HDPauseWorkoutGPSTimeout"];

      if (v15)
      {
        v16 = [v15 unsignedIntegerValue];
      }

      else
      {
        v16 = 180;
      }

      [(HDLocationDataCollector *)*(a1 + 32) _queue_pauseLocationUpdatesAfterDelay:v16];
    }

    else
    {
      v8 = *(*(a1 + 32) + 112);
      _HKInitializeLogging();
      v9 = *v3;
      v10 = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
      if (v8 <= 0.0)
      {
        if (v10)
        {
          v17 = *(a1 + 32);
          v19 = 138543362;
          v20 = v17;
          _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ Location authorization change: start location updates.", &v19, 0xCu);
        }

        [(HDLocationDataCollector *)*(a1 + 32) _queue_setupLocationUpdates];
      }

      else
      {
        if (v10)
        {
          v11 = *(a1 + 32);
          v19 = 138543362;
          v20 = v11;
          _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@ Location authorization change: resume location updates.", &v19, 0xCu);
        }

        [(HDLocationDataCollector *)*(a1 + 32) _queue_resumeWorkout];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)healthLocationManager:(id)a3 didUpdateLocations:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__HDLocationDataCollector_healthLocationManager_didUpdateLocations___block_invoke;
  v8[3] = &unk_278613920;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __68__HDLocationDataCollector_healthLocationManager_didUpdateLocations___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 112) <= 0.0)
  {
    v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v3 = *(a1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v48 objects:v64 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v49;
      v8 = MEMORY[0x277CCC330];
      *&v5 = 138543874;
      v44 = v5;
      v45 = v3;
      do
      {
        v9 = 0;
        do
        {
          if (*v49 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v48 + 1) + 8 * v9);
          _HKInitializeLogging();
          v11 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
          {
            v46 = *(a1 + 32);
            v15 = v11;
            [v10 coordinate];
            v17 = v16;
            [v10 coordinate];
            v19 = v18;
            [v10 altitude];
            v21 = v20;
            [v10 speed];
            v23 = v22;
            v24 = v2;
            v25 = [v10 type];
            v26 = [v10 timestamp];
            *buf = 138544898;
            v53 = v46;
            v54 = 2048;
            *v55 = v17;
            *&v55[8] = 2048;
            *&v55[10] = v19;
            v56 = 2048;
            v57 = v21;
            v58 = 2048;
            v59 = v23;
            v60 = 1024;
            v61 = v25;
            v2 = v24;
            v3 = v45;
            v62 = 2112;
            v63 = v26;
            _os_log_debug_impl(&dword_228986000, v15, OS_LOG_TYPE_DEBUG, "[routes] %{public}@ Did update with location. coord (%f %f) altitude: %f speed: %f, type: %d date: %@", buf, 0x44u);
          }

          if (([v10 type] == 1 || objc_msgSend(v10, "type") == 9 || objc_msgSend(v10, "type") == 3 || objc_msgSend(v10, "type") == 11) && (objc_msgSend(v10, "horizontalAccuracy"), v12 < 50.0))
          {
            [v2 addObject:v10];
            v13 = 136;
          }

          else
          {
            _HKInitializeLogging();
            v14 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
            {
              v27 = *(a1 + 32);
              v28 = v14;
              v29 = [v10 type];
              [v10 horizontalAccuracy];
              *buf = v44;
              v53 = v27;
              v3 = v45;
              v54 = 1024;
              *v55 = v29;
              *&v55[4] = 2048;
              *&v55[6] = v30;
              _os_log_debug_impl(&dword_228986000, v28, OS_LOG_TYPE_DEBUG, "[routes] %{public}@ Skipped adding location of type: %d, horizontal accuracy: %g", buf, 0x1Cu);
            }

            v13 = 144;
          }

          ++*(*(a1 + 32) + v13);
          ++v9;
        }

        while (v6 != v9);
        v6 = [v3 countByEnumeratingWithState:&v48 objects:v64 count:16];
      }

      while (v6);
    }

    if ([v2 count])
    {
      v31 = *(*(a1 + 32) + 96);
      if (v31)
      {
        v32 = [v31 UUID];
        v33 = [(HDLocationDataCollector *)*(a1 + 32) databaseAssertion];
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
        v47 = 0;
        v35 = [HDLocationSeriesSampleEntity insertLocationData:v2 seriesIdentifier:v32 assertion:v33 profile:WeakRetained error:&v47];
        v36 = v47;

        if (v35)
        {
          v37 = [v2 lastObject];
          [v37 altitude];
          v39 = v38;

          v40 = [*(a1 + 32) delegate];
          [v40 altitudeUpdated:v39];

          [*(a1 + 32) _queue_savedLocationData];
        }

        else
        {
          _HKInitializeLogging();
          v41 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            v43 = *(a1 + 32);
            *buf = 138543618;
            v53 = v43;
            v54 = 2114;
            *v55 = v36;
            _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "[routes] %{public}@ Did not successfully save location. Error: %{public}@", buf, 0x16u);
          }
        }
      }
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)healthLocationManager:(id)a3 didFailWithError:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v10 = v8;
    v11 = 138543874;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    v15 = 1024;
    v16 = [v7 code];
    _os_log_debug_impl(&dword_228986000, v10, OS_LOG_TYPE_DEBUG, "[routes] %{public}@ %@ failed to get location with error: %d", &v11, 0x1Cu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end