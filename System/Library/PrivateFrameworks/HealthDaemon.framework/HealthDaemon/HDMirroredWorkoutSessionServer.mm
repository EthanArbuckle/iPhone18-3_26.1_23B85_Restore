@interface HDMirroredWorkoutSessionServer
- (BOOL)_queue_clientApplicationCanStartWorkoutSessionWithError:(id *)a3;
- (BOOL)beginNewActivityWithConfiguration:(id)a3 date:(id)a4 metadata:(id)a5 error:(id *)a6;
- (BOOL)endCurrentActivityOnDate:(id)a3 error:(id *)a4;
- (BOOL)setTargetState:(int64_t)a3 date:(id)a4 error:(id *)a5;
- (HDMirroredWorkoutSessionServer)initWithProfile:(id)a3 configuration:(id)a4 sessionUUID:(id)a5 globalState:(id)a6 clientBundleIdentifier:(id)a7;
- (void)_didInvalidateLiveActivityBackgroundAssertion:(id)a3 error:(id)a4;
- (void)_didUpdateLiveActivity:(id)a3;
- (void)_enqueueClientUpdate:(id)a3 launchClient:(BOOL)a4 waitForClientSetup:(BOOL)a5;
- (void)_executeClientDataUpdate:(id)a3 completion:(id)a4;
- (void)_executeClientUpdate:(id)a3;
- (void)_flushPendingClientUpdates;
- (void)_flushPendingData;
- (void)_flushPendingDataRequests;
- (void)_launchClientInTheBackgroundAndTakeBackgroundAssertionIfNeeded:(BOOL)a3;
- (void)_liveActivityBackgroundAssertionDidTimeout;
- (void)_schedulePeriodicRuntime;
- (void)_setLiveActivityBackgroundAssertionTimeout;
- (void)_setupLiveActivityObserver;
- (void)_setupProcessStateManagerObserver;
- (void)_takeBackgroundRunningAssertionIfNeeded;
- (void)_takeLiveActivityBackgroundAssertion;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5;
- (void)dealloc;
- (void)didDisconnectFromRemoteWithError:(id)a3;
- (void)didReceiveDataFromRemoteWorkoutSession:(id)a3 completion:(id)a4;
- (void)processDidEnterBackground:(id)a3;
- (void)processDidEnterForeground:(id)a3;
- (void)receivedBackgroundRuntimeRequestWithCompletion:(id)a3;
- (void)runSetupPostClientMirroringStartHandler;
- (void)setTaskServer:(id)a3;
- (void)syncCurrentActivity:(id)a3 completion:(id)a4;
- (void)syncSessionEvent:(int64_t)a3 date:(id)a4;
- (void)syncTransitionToState:(int64_t)a3 date:(id)a4 completion:(id)a5;
- (void)syncWorkoutEvents:(id)a3 completion:(id)a4;
@end

@implementation HDMirroredWorkoutSessionServer

- (HDMirroredWorkoutSessionServer)initWithProfile:(id)a3 configuration:(id)a4 sessionUUID:(id)a5 globalState:(id)a6 clientBundleIdentifier:(id)a7
{
  v12 = a6;
  v13 = a7;
  v33.receiver = self;
  v33.super_class = HDMirroredWorkoutSessionServer;
  v14 = [(HDWorkoutSessionServer *)&v33 initWithProfile:a3 configuration:a4 sessionUUID:a5];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->super._clientProcessBundleIdentifier, a7);
    v15->super._isMirroring = 1;
    v15->_sessionState = [v12 sessionState];
    if ([v12 hasStartDate])
    {
      [v12 startDate];
      startDate = HDDecodeDateForValue();
      objc_storeStrong(&v15->super._startDate, startDate);
    }

    else
    {
      startDate = v15->super._startDate;
      v15->super._startDate = 0;
    }

    if ([v12 hasEndDate])
    {
      [v12 endDate];
      stopDate = HDDecodeDateForValue();
      objc_storeStrong(&v15->super._stopDate, stopDate);
    }

    else
    {
      stopDate = v15->super._stopDate;
      v15->super._stopDate = 0;
    }

    v18 = MEMORY[0x277CCDBF0];
    v19 = [v12 currentActivity];
    v20 = [v18 createWithCodable:v19];
    currentActivity = v15->super._currentActivity;
    v15->super._currentActivity = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingClientUpdates = v15->_pendingClientUpdates;
    v15->_pendingClientUpdates = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingData = v15->_pendingData;
    v15->_pendingData = v24;

    [(HDMirroredWorkoutSessionServer *)v15 _setupLiveActivityObserver];
    [(HDMirroredWorkoutSessionServer *)v15 _takeLiveActivityBackgroundAssertion];
    v26 = [MEMORY[0x277CF0880] sharedBacklight];
    [v26 addObserver:v15];

    v27 = [MEMORY[0x277CF0880] sharedBacklight];
    v15->_isBacklightOn = [v27 backlightState] != 0;

    v15->_isBackgroundAssertionFeatureEnabled = _os_feature_enabled_impl();
    if ([(HDMirroredWorkoutSessionServer *)v15 isFirstPartyClient])
    {
      v15->_isBackgroundAssertionFeatureEnabled = 0;
      v28 = *MEMORY[0x277CCE530];
      v29 = *MEMORY[0x277CCE5C8];
      v30 = HKObjectForNanoPreferencesUserDefaultsKey();
      v31 = v30;
      if (v30 && [v30 integerValue])
      {
        v15->_isBackgroundAssertionFeatureEnabled = 1;
      }
    }

    [(HDMirroredWorkoutSessionServer *)v15 _launchClientInTheBackgroundAndTakeBackgroundAssertionIfNeeded:0];
    [(HDMirroredWorkoutSessionServer *)v15 _setupProcessStateManagerObserver];
  }

  return v15;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  [(BSInvalidatable *)self->_liveActivitySubscription invalidate];
  liveActivitySubscription = self->_liveActivitySubscription;
  self->_liveActivitySubscription = 0;

  if (self->_liveActivityAssertion)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = self;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Will invalidate Live Activity background assertion after server dealloc.", buf, 0xCu);
    }

    [(SNAAssertion *)self->_liveActivityAssertion invalidate];
    liveActivityAssertion = self->_liveActivityAssertion;
    self->_liveActivityAssertion = 0;
  }

  [(HDAssertion *)self->_backgroundRunningAssertion invalidate];
  backgroundRunningAssertion = self->_backgroundRunningAssertion;
  self->_backgroundRunningAssertion = 0;

  WeakRetained = objc_loadWeakRetained(&self->super._profile);
  v8 = [WeakRetained daemon];
  v9 = [v8 processStateManager];
  [v9 unregisterObserver:self forBundleIdentifier:self->super._clientProcessBundleIdentifier];

  v10 = [MEMORY[0x277CF0880] sharedBacklight];
  [v10 removeObserver:self];

  os_unfair_lock_lock(&self->_lock);
  periodicRuntimeSource = self->_periodicRuntimeSource;
  if (periodicRuntimeSource)
  {
    dispatch_source_cancel(periodicRuntimeSource);
    v12 = self->_periodicRuntimeSource;
    self->_periodicRuntimeSource = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v14.receiver = self;
  v14.super_class = HDMirroredWorkoutSessionServer;
  [(HDWorkoutSessionServer *)&v14 dealloc];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setupProcessStateManagerObserver
{
  WeakRetained = objc_loadWeakRetained(&self->super._profile);
  v3 = [WeakRetained daemon];
  v4 = [v3 processStateManager];
  [v4 registerObserver:self forBundleIdentifier:self->super._clientProcessBundleIdentifier];
}

- (void)_executeClientDataUpdate:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__HDMirroredWorkoutSessionServer__executeClientDataUpdate_completion___block_invoke;
    v13[3] = &unk_278616CC8;
    v13[4] = self;
    v14 = v7;
    v12.receiver = self;
    v12.super_class = HDMirroredWorkoutSessionServer;
    [(HDWorkoutSessionServer *)&v12 didReceiveDataFromRemoteWorkoutSession:v6 completion:v13];
    v8 = v14;
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v16 = self;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "[mirroring] %{public}@: No pending data to deliver", buf, 0xCu);
    }

    v10 = [(HDMirroredWorkoutSessionServer *)self unitTest_didExecuteClientDataUpdateHandler];
    v8 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10);
    }

    (*(v7 + 2))(v7, 1, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __70__HDMirroredWorkoutSessionServer__executeClientDataUpdate_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) unitTest_didExecuteClientDataUpdateHandler];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

- (void)didDisconnectFromRemoteWithError:(id)a3
{
  v4 = a3;
  queue = self->super._queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HDMirroredWorkoutSessionServer_didDisconnectFromRemoteWithError___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __67__HDMirroredWorkoutSessionServer_didDisconnectFromRemoteWithError___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 64) = 0;
  _HKInitializeLogging();
  v2 = MEMORY[0x277CCC330];
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v16 = v4;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Did disconnect from remote. Tearing down and notifying client", buf, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 32) + 320));
  v5 = *(a1 + 32);
  v6 = *(v5 + 416);
  *(v5 + 417) = 1;
  os_unfair_lock_unlock((*(a1 + 32) + 320));
  if (v6)
  {
    [*(a1 + 32) _launchClientInTheBackgroundAndTakeBackgroundAssertionIfNeeded:*(*(a1 + 32) + 336)];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__HDMirroredWorkoutSessionServer_didDisconnectFromRemoteWithError___block_invoke_323;
    v13[3] = &unk_278620E20;
    v7 = *(a1 + 32);
    v14 = *(a1 + 40);
    [v7 _enqueueClientUpdate:v13 launchClient:0 waitForClientSetup:1];
    WeakRetained = v14;
  }

  else
  {
    _HKInitializeLogging();
    v9 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 138543362;
      v16 = v12;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Disconnecting before mirroring start handler called. Flushing all client and pending data updates", buf, 0xCu);
    }

    [*(a1 + 32) _flushPendingClientUpdates];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v10 = [WeakRetained workoutManager];
    [v10 tearDownMirroredWorkoutSession:*(a1 + 32)];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __67__HDMirroredWorkoutSessionServer_didDisconnectFromRemoteWithError___block_invoke_323(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HDMirroredWorkoutSessionServer_didDisconnectFromRemoteWithError___block_invoke_2;
  v7[3] = &unk_278620F08;
  v8 = *(a1 + 32);
  v4 = a2;
  [v3 sendToDestinationProcessors:v7];
  WeakRetained = objc_loadWeakRetained(v4 + 1);
  v6 = [WeakRetained workoutManager];
  [v6 tearDownMirroredWorkoutSession:v4];
}

- (void)syncTransitionToState:(int64_t)a3 date:(id)a4 completion:(id)a5
{
  v8 = a4;
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HDMirroredWorkoutSessionServer_syncTransitionToState_date_completion___block_invoke;
  block[3] = &unk_278614E78;
  v13 = v8;
  v14 = a3;
  block[4] = self;
  v10 = v8;
  v11 = a5;
  dispatch_async(queue, block);
  v11[2](v11, 1, 0);
}

void __72__HDMirroredWorkoutSessionServer_syncTransitionToState_date_completion___block_invoke(void *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = *(v2 + 328);
  *(v2 + 328) = a1[6];
  v4 = HKWorkoutSessionStateFromServerState();
  v5 = HKWorkoutSessionStateFromServerState();
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  v7 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT);
  if (v4 == v5)
  {
    if (v7)
    {
      v8 = a1[4];
      v9 = a1[6];
      v10 = v6;
      v11 = _HKWorkoutSessionServerStateToString();
      v12 = _HKWorkoutSessionServerStateToString();
      *buf = 138543874;
      v29 = v8;
      v30 = 2112;
      v31 = v11;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Synced state: %@ is equivalent to current state: %@, not notifying the client", buf, 0x20u);
    }
  }

  else
  {
    if (v7)
    {
      v13 = a1[4];
      v14 = v6;
      v15 = objc_opt_class();
      v16 = a1[6];
      v17 = v15;
      v18 = _HKWorkoutSessionServerStateToString();
      *buf = 138543618;
      v29 = v15;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Notifying client of synced transition to new state: %@", buf, 0x16u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __72__HDMirroredWorkoutSessionServer_syncTransitionToState_date_completion___block_invoke_327;
    v24[3] = &unk_278620E48;
    v20 = a1[4];
    v19 = a1[5];
    v27 = a1[6];
    v21 = v19;
    v22 = a1[4];
    v25 = v21;
    v26 = v22;
    [v20 _enqueueClientUpdate:v24 launchClient:1 waitForClientSetup:1];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __72__HDMirroredWorkoutSessionServer_syncTransitionToState_date_completion___block_invoke_327(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __72__HDMirroredWorkoutSessionServer_syncTransitionToState_date_completion___block_invoke_2;
  v7 = &unk_278620F30;
  v9 = *(a1 + 48);
  v8 = *(a1 + 32);
  [v3 sendToDestinationProcessors:&v4];
  [*(a1 + 40) _flushPendingData];
}

void __72__HDMirroredWorkoutSessionServer_syncTransitionToState_date_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 didSyncTransitionToNewState:HKWorkoutSessionStateFromServerState() date:*(a1 + 32)];
}

- (void)syncSessionEvent:(int64_t)a3 date:(id)a4
{
  v6 = a4;
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HDMirroredWorkoutSessionServer_syncSessionEvent_date___block_invoke;
  block[3] = &unk_278614E78;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

void *__56__HDMirroredWorkoutSessionServer_syncSessionEvent_date___block_invoke(void *result)
{
  v3 = result[4];
  if (*(v3 + 64) == 1)
  {
    v7[5] = v1;
    v7[6] = v2;
    v4 = *(v3 + 72);
    v6 = result[5];
    v5 = result[6];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__HDMirroredWorkoutSessionServer_syncSessionEvent_date___block_invoke_2;
    v7[3] = &unk_2786130B0;
    v7[4] = v3;
    return [v4 sendStateEvent:v5 date:v6 completion:v7];
  }

  return result;
}

void __56__HDMirroredWorkoutSessionServer_syncSessionEvent_date___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to send state event to remote device: %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)syncCurrentActivity:(id)a3 completion:(id)a4
{
  v6 = a3;
  queue = self->super._queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__HDMirroredWorkoutSessionServer_syncCurrentActivity_completion___block_invoke;
  v10[3] = &unk_278613920;
  v11 = v6;
  v12 = self;
  v8 = v6;
  v9 = a4;
  dispatch_async(queue, v10);
  v9[2](v9, 1, 0);
}

void __65__HDMirroredWorkoutSessionServer_syncCurrentActivity_completion___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 endDate];

    v4 = *(a1 + 32);
    if (!v3)
    {
      objc_storeStrong((*(a1 + 40) + 56), v4);
      _HKInitializeLogging();
      v5 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        v7 = v5;
        v8 = objc_opt_class();
        v9 = *(a1 + 32);
        *buf = 138543618;
        v33 = v8;
        v34 = 2114;
        v35 = v9;
        v10 = v8;
        _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Remote session beginning new activity: %{public}@", buf, 0x16u);
      }

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __65__HDMirroredWorkoutSessionServer_syncCurrentActivity_completion___block_invoke_328;
      v30[3] = &unk_278620E70;
      v11 = v31;
      v12 = *(a1 + 40);
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v31[0] = v13;
      v31[1] = v14;
      [v12 _enqueueClientUpdate:v30 launchClient:1 waitForClientSetup:1];
LABEL_11:

      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
  }

  v15 = [v4 endDate];

  if (v15)
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 40);
      v18 = v16;
      v19 = objc_opt_class();
      v20 = *(*(a1 + 40) + 56);
      *buf = 138543618;
      v33 = v19;
      v34 = 2114;
      v35 = v20;
      v21 = v19;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Remote session ending current activity: %{public}@", buf, 0x16u);
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __65__HDMirroredWorkoutSessionServer_syncCurrentActivity_completion___block_invoke_329;
    v28[3] = &unk_278620E70;
    v11 = v29;
    v22 = *(a1 + 40);
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v29[0] = v23;
    v29[1] = v24;
    [v22 _enqueueClientUpdate:v28 launchClient:1 waitForClientSetup:1];
    v25 = *(a1 + 40);
    v26 = *(v25 + 56);
    *(v25 + 56) = 0;

    goto LABEL_11;
  }

LABEL_12:
  v27 = *MEMORY[0x277D85DE8];
}

void __65__HDMirroredWorkoutSessionServer_syncCurrentActivity_completion___block_invoke_328(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HDMirroredWorkoutSessionServer_syncCurrentActivity_completion___block_invoke_2;
  v6[3] = &unk_278613880;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v3 sendToDestinationProcessors:v6];
}

void __65__HDMirroredWorkoutSessionServer_syncCurrentActivity_completion___block_invoke_329(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HDMirroredWorkoutSessionServer_syncCurrentActivity_completion___block_invoke_2_330;
  v6[3] = &unk_278613880;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v3 sendToDestinationProcessors:v6];
}

- (void)syncWorkoutEvents:(id)a3 completion:(id)a4
{
  v6 = a3;
  queue = self->super._queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HDMirroredWorkoutSessionServer_syncWorkoutEvents_completion___block_invoke;
  v10[3] = &unk_278613920;
  v11 = v6;
  v12 = self;
  v8 = v6;
  v9 = a4;
  dispatch_async(queue, v10);
  v9[2](v9, 1, 0);
}

void __63__HDMirroredWorkoutSessionServer_syncWorkoutEvents_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hk_map:&__block_literal_global_102];
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__HDMirroredWorkoutSessionServer_syncWorkoutEvents_completion___block_invoke_3;
  v5[3] = &unk_278620E20;
  v6 = v2;
  v4 = v2;
  [v3 _enqueueClientUpdate:v5 launchClient:1 waitForClientSetup:1];
}

id __63__HDMirroredWorkoutSessionServer_syncWorkoutEvents_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCDE58];
  v3 = a2;
  v4 = [v2 internalEventTypeWithPublicEvent:v3];
  v5 = objc_alloc(MEMORY[0x277CCDE58]);
  v6 = [v3 sessionUUID];
  v7 = [v3 dateInterval];
  v8 = [v3 metadata];

  v9 = [v5 initWithEventType:v4 sessionId:v6 dateInterval:v7 metadata:v8];

  return v9;
}

void __63__HDMirroredWorkoutSessionServer_syncWorkoutEvents_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3[4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HDMirroredWorkoutSessionServer_syncWorkoutEvents_completion___block_invoke_4;
  v6[3] = &unk_278613880;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [v4 sendToDestinationProcessors:v6];
}

- (void)receivedBackgroundRuntimeRequestWithCompletion:(id)a3
{
  hasActiveLiveActivity = self->_hasActiveLiveActivity;
  v5 = a3;
  [(HDMirroredWorkoutSessionServer *)self _launchClientInTheBackgroundAndTakeBackgroundAssertionIfNeeded:hasActiveLiveActivity];
  v5[2](v5, 1, 0);
}

- (void)didReceiveDataFromRemoteWorkoutSession:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__HDMirroredWorkoutSessionServer_didReceiveDataFromRemoteWorkoutSession_completion___block_invoke;
  v11[3] = &unk_278620EB8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v8 = self->_isBackgroundAssertionFeatureEnabled && self->_isBacklightOn;
  v9 = v7;
  v10 = v6;
  [(HDMirroredWorkoutSessionServer *)self _enqueueClientUpdate:v11 launchClient:v8 waitForClientSetup:1];
  [(HDMirroredWorkoutSessionServer *)self _schedulePeriodicRuntime];
}

void __84__HDMirroredWorkoutSessionServer_didReceiveDataFromRemoteWorkoutSession_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained daemon];
  v4 = [v3 processStateManager];

  LOBYTE(v3) = [v4 isApplicationStateForegroundForBundleIdentifier:*(*(a1 + 32) + 24)];
  v5 = [v4 isApplicationStateBackgroundRunningForBundleIdentifier:*(*(a1 + 32) + 24)];
  os_unfair_lock_lock((*(a1 + 32) + 320));
  v6 = *(a1 + 32);
  if ((v3 & 1) != 0 || v5)
  {
    v13 = v6[51];
    v14 = [[HDMirroredWorkoutPendingData alloc] initWithData:*(a1 + 40) completion:*(a1 + 48)];
    [v13 addObject:v14];

    os_unfair_lock_unlock((*(a1 + 32) + 320));
    [*(a1 + 32) _flushPendingData];
  }

  else
  {
    if ([v6 isFirstPartyClient])
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v17 = 138543362;
        v18 = v8;
        _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Adding data to pending.", &v17, 0xCu);
      }

      v9 = *(*(a1 + 32) + 408);
      v10 = [HDMirroredWorkoutPendingData alloc];
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
    }

    else
    {
      v9 = *(*(a1 + 32) + 408);
      v10 = [HDMirroredWorkoutPendingData alloc];
      v11 = *(a1 + 40);
      v12 = 0;
    }

    v15 = [(HDMirroredWorkoutPendingData *)v10 initWithData:v11 completion:v12];
    [v9 addObject:v15];

    os_unfair_lock_unlock((*(a1 + 32) + 320));
    if (([*(a1 + 32) isFirstPartyClient] & 1) == 0)
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_executeClientUpdate:(id)a3
{
  v4 = a3;
  v5 = objc_initWeak(&location, self);
  v4[2](v4, self);

  objc_destroyWeak(&location);
}

- (void)_enqueueClientUpdate:(id)a3 launchClient:(BOOL)a4 waitForClientSetup:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  *&v29[5] = *MEMORY[0x277D85DE8];
  v8 = a3;
  _HKInitializeLogging();
  v9 = MEMORY[0x277CCC330];
  v10 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138543874;
    v27 = self;
    v28 = 1024;
    *v29 = v6;
    v29[2] = 1024;
    *&v29[3] = v5;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: enqueue client update. launchClient: %d, waitForClientSetup: %d", &v26, 0x18u);
  }

  if (self->_hasActiveLiveActivity && v6)
  {
    [(HDMirroredWorkoutSessionServer *)self _launchClientInTheBackgroundAndTakeBackgroundAssertionIfNeeded:1];
  }

  if ([(HDWorkoutSessionServer *)self clientDidSetupSession]|| v5)
  {
    os_unfair_lock_lock(&self->_lock);
    pendingClientUpdates = self->_pendingClientUpdates;
    v14 = _Block_copy(v8);
    [(NSMutableArray *)pendingClientUpdates addObject:v14];

    lock_postMirroringClientStartHandlerCalled = self->_lock_postMirroringClientStartHandlerCalled;
    os_unfair_lock_unlock(&self->_lock);
    _HKInitializeLogging();
    v16 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_pendingClientUpdates;
      v18 = v16;
      v19 = [(NSMutableArray *)v17 count];
      v26 = 138543618;
      v27 = self;
      v28 = 2048;
      *v29 = v19;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: %ld current pending client updates", &v26, 0x16u);
    }

    v20 = [(HDWorkoutSessionServer *)self taskServer];

    if (v20 && lock_postMirroringClientStartHandlerCalled)
    {
      [(HDMirroredWorkoutSessionServer *)self _flushPendingClientUpdates];
    }

    else
    {
      _HKInitializeLogging();
      v21 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->_pendingClientUpdates;
        v23 = v21;
        v24 = [(NSMutableArray *)v22 count];
        v26 = 138543618;
        v27 = self;
        v28 = 2048;
        *v29 = v24;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Mirroring session not configured, not executing %ld client updates", &v26, 0x16u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138543362;
      v27 = self;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Not waiting for client setup, execute update immediately", &v26, 0xCu);
    }

    [(HDMirroredWorkoutSessionServer *)self _executeClientUpdate:v8];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_flushPendingClientUpdates
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC330];
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    pendingClientUpdates = self->_pendingClientUpdates;
    v6 = v4;
    *buf = 138543618;
    v23 = self;
    v24 = 2048;
    v25 = [(NSMutableArray *)pendingClientUpdates count];
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Attempting to execute %lu enqueued updated", buf, 0x16u);
  }

  v7 = [(NSMutableArray *)self->_pendingClientUpdates copy];
  [(NSMutableArray *)self->_pendingClientUpdates removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  if ([v7 count])
  {
    _HKInitializeLogging();
    v8 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v7 count];
      *buf = 138543618;
      v23 = self;
      v24 = 2048;
      v25 = v10;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Executing %lu pending updates", buf, 0x16u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(HDMirroredWorkoutSessionServer *)self _executeClientUpdate:*(*(&v17 + 1) + 8 * i), v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_schedulePeriodicRuntime
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_periodicRuntimeSource)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v3 = dispatch_get_global_queue(0, 0);
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
    periodicRuntimeSource = self->_periodicRuntimeSource;
    self->_periodicRuntimeSource = v4;

    v6 = self->_periodicRuntimeSource;
    v7 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, self);
    v8 = self->_periodicRuntimeSource;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__HDMirroredWorkoutSessionServer__schedulePeriodicRuntime__block_invoke;
    v9[3] = &unk_278616F38;
    objc_copyWeak(&v10, &location);
    dispatch_source_set_event_handler(v8, v9);
    dispatch_resume(self->_periodicRuntimeSource);
    os_unfair_lock_unlock(&self->_lock);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __58__HDMirroredWorkoutSessionServer__schedulePeriodicRuntime__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _flushPendingDataRequests];
}

- (void)_flushPendingDataRequests
{
  os_unfair_lock_lock(&self->_lock);
  periodicRuntimeSource = self->_periodicRuntimeSource;
  self->_periodicRuntimeSource = 0;

  os_unfair_lock_unlock(&self->_lock);
  hasActiveLiveActivity = self->_hasActiveLiveActivity;

  [(HDMirroredWorkoutSessionServer *)self _launchClientInTheBackgroundAndTakeBackgroundAssertionIfNeeded:hasActiveLiveActivity];
}

- (void)_flushPendingData
{
  v30 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_pendingData copy];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v19 + 1) + 8 * i) data];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_pendingData removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v14 = v11;
    v15 = [v5 count];
    clientProcessBundleIdentifier = self->super._clientProcessBundleIdentifier;
    *buf = 138543874;
    v24 = self;
    v25 = 2048;
    v26 = v15;
    v27 = 2114;
    v28 = clientProcessBundleIdentifier;
    _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Flushing %ld pending data to client: %{public}@.", buf, 0x20u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__HDMirroredWorkoutSessionServer__flushPendingData__block_invoke;
  v17[3] = &unk_278616020;
  v17[4] = self;
  v18 = v5;
  v12 = v5;
  [(HDMirroredWorkoutSessionServer *)self _executeClientDataUpdate:v4 completion:v17];

  v13 = *MEMORY[0x277D85DE8];
}

void __51__HDMirroredWorkoutSessionServer__flushPendingData__block_invoke(uint64_t a1, int a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __51__HDMirroredWorkoutSessionServer__flushPendingData__block_invoke_2;
  v22 = &unk_278613920;
  v6 = *(a1 + 40);
  v23 = *(a1 + 32);
  v24 = v6;
  v7 = _Block_copy(&v19);
  if (!a2)
  {
    _HKInitializeLogging();
    v8 = MEMORY[0x277CCC330];
    v9 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = *(v17 + 24);
      *buf = 138543874;
      v26 = v17;
      v27 = 2114;
      v28 = v18;
      v29 = 2114;
      v30 = v5;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to send pending data to client: %{public}@ with error %{public}@", buf, 0x20u);
    }

    os_unfair_lock_lock((*(a1 + 32) + 320));
    v10 = *(a1 + 32);
    if (*(v10 + 417) == 1)
    {
      v11 = *(v10 + 416);
      os_unfair_lock_unlock((v10 + 320));
      if ((v11 & 1) == 0)
      {
        _HKInitializeLogging();
        v12 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          v13 = *(a1 + 32);
          v14 = *(v13 + 24);
          *buf = 138543618;
          v26 = v13;
          v27 = 2114;
          v28 = v14;
          _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Force Flushing of failed pending data updates during teardown for client %{public}@", buf, 0x16u);
        }

        goto LABEL_2;
      }
    }

    else
    {
      os_unfair_lock_unlock((v10 + 320));
    }

    v15 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(*(a1 + 40), "count", v19, v20, v21, v22, v23)}];
    os_unfair_lock_lock((*(a1 + 32) + 320));
    [*(*(a1 + 32) + 408) insertObjects:*(a1 + 40) atIndexes:v15];
    os_unfair_lock_unlock((*(a1 + 32) + 320));

    goto LABEL_11;
  }

LABEL_2:
  v7[2](v7);
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
}

void __51__HDMirroredWorkoutSessionServer__flushPendingData__block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v2;
    v15 = [v12 count];
    v16 = *(*(a1 + 32) + 24);
    *buf = 138543874;
    v23 = v13;
    v24 = 2048;
    v25 = v15;
    v26 = 2114;
    v27 = v16;
    _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Completing %ld data updates from client: %{public}@", buf, 0x20u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 completion];

        if (v9)
        {
          v10 = [v8 completion];
          v10[2](v10, 1, 0);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setTaskServer:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HDMirroredWorkoutSessionServer;
  [(HDWorkoutSessionServer *)&v7 setTaskServer:v4];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Task server configured: %{public}@", buf, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_clientApplicationCanStartWorkoutSessionWithError:(id *)a3
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Mirrored workout sessions always allowed to start", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)runSetupPostClientMirroringStartHandler
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC330];
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Running runSetupPostClientMirroringStartHandler", &v8, 0xCu);
  }

  v5 = [(HDWorkoutSessionServer *)self taskServer];

  if (v5)
  {
    [(HDMirroredWorkoutSessionServer *)self _flushPendingClientUpdates];
    _HKInitializeLogging();
    v6 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = self;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Flush pending data if any", &v8, 0xCu);
    }

    [(HDMirroredWorkoutSessionServer *)self _flushPendingData];
  }

  os_unfair_lock_lock(&self->_lock);
  self->_lock_postMirroringClientStartHandlerCalled = 1;
  os_unfair_lock_unlock(&self->_lock);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)processDidEnterBackground:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
  {
    clientProcessBundleIdentifier = self->super._clientProcessBundleIdentifier;
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = clientProcessBundleIdentifier;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_INFO, "[mirroring] %{public}@: Send pending data to background client: %{public}@", &v7, 0x16u);
  }

  [(HDMirroredWorkoutSessionServer *)self _flushPendingData];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processDidEnterForeground:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
  {
    clientProcessBundleIdentifier = self->super._clientProcessBundleIdentifier;
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = clientProcessBundleIdentifier;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_INFO, "[mirroring] %{public}@: Send pending data to foreground client: %{public}@", &v7, 0x16u);
  }

  [(HDMirroredWorkoutSessionServer *)self _flushPendingData];
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)setTargetState:(int64_t)a3 date:(id)a4 error:(id *)a5
{
  v7 = a4;
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDMirroredWorkoutSessionServer_setTargetState_date_error___block_invoke;
  block[3] = &unk_278614E78;
  v12 = v7;
  v13 = a3;
  block[4] = self;
  v9 = v7;
  dispatch_async(queue, block);

  return 1;
}

void __60__HDMirroredWorkoutSessionServer_setTargetState_date_error___block_invoke(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  v3 = HKWorkoutSessionServerStateFromSessionState();
  v4 = *(a1[4] + 328);
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  v6 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT);
  if (v3 == v4)
  {
    if (v6)
    {
      v7 = a1[4];
      v8 = v5;
      v9 = _HKWorkoutSessionServerStateToString();
      v10 = _HKWorkoutSessionServerStateToString();
      *buf = 138543874;
      v18 = v7;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Target state: %{public}@ is same as current state: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (v6)
    {
      v11 = a1[4];
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Sending mirrored session state update", buf, 0xCu);
    }

    v13 = a1[4];
    v12 = a1[5];
    v14 = *(v13 + 72);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__HDMirroredWorkoutSessionServer_setTargetState_date_error___block_invoke_337;
    v16[3] = &unk_2786130B0;
    v16[4] = v13;
    [v14 sendStateUpdate:v3 date:v12 completion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __60__HDMirroredWorkoutSessionServer_setTargetState_date_error___block_invoke_337(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to send session updates to remote device: %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)beginNewActivityWithConfiguration:(id)a3 date:(id)a4 metadata:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [objc_alloc(MEMORY[0x277CCDBF0]) initWithWorkoutConfiguration:v9 startDate:v10 endDate:0 metadata:v11];
  syncController = self->super._syncController;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__HDMirroredWorkoutSessionServer_beginNewActivityWithConfiguration_date_metadata_error___block_invoke;
  v15[3] = &unk_2786130B0;
  v15[4] = self;
  [(HDWorkoutSessionRapportSyncController *)syncController sendCurrentActivityUpdate:v12 completion:v15];

  return 1;
}

void __88__HDMirroredWorkoutSessionServer_beginNewActivityWithConfiguration_date_metadata_error___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to send new activity request to remote device: %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)endCurrentActivityOnDate:(id)a3 error:(id *)a4
{
  v5 = a3;
  queue = self->super._queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HDMirroredWorkoutSessionServer_endCurrentActivityOnDate_error___block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_async(queue, v9);

  return 1;
}

void __65__HDMirroredWorkoutSessionServer_endCurrentActivityOnDate_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 56);
  [v3 _setEndDate:v2];
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HDMirroredWorkoutSessionServer_endCurrentActivityOnDate_error___block_invoke_2;
  v6[3] = &unk_2786130B0;
  v6[4] = v4;
  [v5 sendCurrentActivityUpdate:v3 completion:v6];
}

void __65__HDMirroredWorkoutSessionServer_endCurrentActivityOnDate_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to send end current activity request to remote device: %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setupLiveActivityObserver
{
  v3 = objc_alloc_init(MEMORY[0x277CB98A0]);
  liveActivityCenter = self->_liveActivityCenter;
  self->_liveActivityCenter = v3;

  objc_initWeak(&location, self);
  v5 = self->_liveActivityCenter;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HDMirroredWorkoutSessionServer__setupLiveActivityObserver__block_invoke;
  v8[3] = &unk_278620D80;
  objc_copyWeak(&v9, &location);
  v6 = [(ACActivityCenter *)v5 observeContentUpdatesWithHandler:v8];
  liveActivitySubscription = self->_liveActivitySubscription;
  self->_liveActivitySubscription = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __60__HDMirroredWorkoutSessionServer__setupLiveActivityObserver__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didUpdateLiveActivity:v3];
}

- (void)_didUpdateLiveActivity:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 descriptor];
  v6 = [v5 platterTargetBundleIdentifier];

  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC330];
  v8 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 identifier];
    v10 = [v4 state];
    v11 = v10;
    if (v10 >= 5)
    {
      _HKInitializeLogging();
      v13 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        v17 = MEMORY[0x277CCABB0];
        v18 = v13;
        v19 = [v17 numberWithInteger:v11];
        v20 = 138412290;
        v21 = v19;
        _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[mirroring]: Encountered unknown ACActivityState: %@", &v20, 0xCu);
      }

      v12 = @"<unknown>";
    }

    else
    {
      v12 = off_278620F50[v10];
    }

    v20 = 138544130;
    v21 = self;
    v22 = 2114;
    v23 = v9;
    v24 = 2114;
    v25 = v12;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Received Live Activity update %{public}@, state: %{public}@, bundle identifier: %{public}@", &v20, 0x2Au);
  }

  if ([v6 isEqualToString:self->super._clientProcessBundleIdentifier])
  {
    self->_hasActiveLiveActivity = [v4 state] == 0;
    _HKInitializeLogging();
    v14 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_hasActiveLiveActivity)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v20 = 138543362;
      v21 = v15;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "[mirroring] Did update Live Activity State. Active: %{public}@", &v20, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_takeLiveActivityBackgroundAssertion
{
  v3 = [objc_alloc(MEMORY[0x277D4D500]) initWithBundleIdentifier:self->super._clientProcessBundleIdentifier];
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x277D4D4F8]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __70__HDMirroredWorkoutSessionServer__takeLiveActivityBackgroundAssertion__block_invoke;
  v10 = &unk_278620EE0;
  objc_copyWeak(&v11, &location);
  v5 = [v4 initWithExplanation:@"Apple Watch workout mirrored to companion iPhone" target:v3 invalidationHandler:&v7];
  liveActivityAssertion = self->_liveActivityAssertion;
  self->_liveActivityAssertion = v5;

  [(HDMirroredWorkoutSessionServer *)self _setLiveActivityBackgroundAssertionTimeout:v7];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __70__HDMirroredWorkoutSessionServer__takeLiveActivityBackgroundAssertion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didInvalidateLiveActivityBackgroundAssertion:v6 error:v5];
}

- (void)_didInvalidateLiveActivityBackgroundAssertion:(id)a3 error:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277CCACA8];
  v8 = a3;
  v9 = [v8 hd_description];
  v10 = [v7 stringWithFormat:@"[mirroring] %@: Invalidated Live Activity assertion %@.", self, v9];

  v11 = [v8 invalidationReason];
  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC330];
  v13 = *MEMORY[0x277CCC330];
  if (v11 == 3)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v16 = v10;
    v17 = 2114;
    v18 = v6;
    _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@ with error: %{public}@.", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setLiveActivityBackgroundAssertionTimeout
{
  v3 = dispatch_get_global_queue(21, 0);
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
  liveActivityAssertionTimeoutSource = self->_liveActivityAssertionTimeoutSource;
  self->_liveActivityAssertionTimeoutSource = v4;

  v6 = self->_liveActivityAssertionTimeoutSource;
  v7 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(&location, self);
  v8 = self->_liveActivityAssertionTimeoutSource;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HDMirroredWorkoutSessionServer__setLiveActivityBackgroundAssertionTimeout__block_invoke;
  v9[3] = &unk_278616F38;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v8, v9);
  dispatch_resume(self->_liveActivityAssertionTimeoutSource);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __76__HDMirroredWorkoutSessionServer__setLiveActivityBackgroundAssertionTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _liveActivityBackgroundAssertionDidTimeout];
}

- (void)_liveActivityBackgroundAssertionDidTimeout
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Will invalidate Live Activity background assertion after timeout.", &v6, 0xCu);
  }

  [(SNAAssertion *)self->_liveActivityAssertion invalidate];
  liveActivityAssertion = self->_liveActivityAssertion;
  self->_liveActivityAssertion = 0;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_takeBackgroundRunningAssertionIfNeeded
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(HDAssertion *)self->_backgroundRunningAssertion state]== 2)
  {
LABEL_2:
    v3 = *MEMORY[0x277D85DE8];
    return;
  }

  v14 = [MEMORY[0x277CCDD30] sharedBehavior];
  if (([v14 isAppleWatch] & 1) == 0 && self->_isBackgroundAssertionFeatureEnabled)
  {
    isBacklightOn = self->_isBacklightOn;

    if (isBacklightOn)
    {
      v5 = [(HDWorkoutSessionServer *)self client];
      v6 = [v5 process];

      if (v6)
      {
        WeakRetained = objc_loadWeakRetained(&self->super._profile);
        v8 = [WeakRetained workoutManager];
        v9 = [v8 takeRBSAssertionWithOwnerIdentifier:self->super._clientProcessBundleIdentifier assertionIdentifier:@"WorkoutSessionUpdate" pid:objc_msgSend(v6 explanation:{"processIdentifier"), @"Running mirrored workout session on iOS"}];
        backgroundRunningAssertion = self->_backgroundRunningAssertion;
        self->_backgroundRunningAssertion = v9;
      }

      else
      {
        _HKInitializeLogging();
        v12 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          clientProcessBundleIdentifier = self->super._clientProcessBundleIdentifier;
          *buf = 138412290;
          v16 = clientProcessBundleIdentifier;
          _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Background assertion not taken for client. No process found for identifier %@", buf, 0xCu);
        }
      }
    }

    goto LABEL_2;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5
{
  if (a4)
  {
    self->_isBacklightOn = 1;
    [(HDMirroredWorkoutSessionServer *)self _takeBackgroundRunningAssertionIfNeeded:a3];

    [(HDMirroredWorkoutSessionServer *)self _flushPendingData];
  }

  else
  {
    self->_isBacklightOn = 0;
    backgroundRunningAssertion = self->_backgroundRunningAssertion;

    [(HDAssertion *)backgroundRunningAssertion invalidate];
  }
}

- (void)_launchClientInTheBackgroundAndTakeBackgroundAssertionIfNeeded:(BOOL)a3
{
  if (a3 && self->_isBackgroundAssertionFeatureEnabled && self->_isBacklightOn)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._profile);
    v5 = [WeakRetained daemon];
    v6 = [v5 processStateManager];
    v7 = [v6 processIdentifierForApplicationIdentifier:self->super._clientProcessBundleIdentifier];

    if (v7 == -1)
    {
      [(HDAssertion *)self->_backgroundRunningAssertion invalidate];
      v8 = objc_loadWeakRetained(&self->super._profile);
      v9 = [v8 workoutManager];
      v10 = [v9 mirroringManager];
      [v10 launchClientWithBundleIdentifier:self->super._clientProcessBundleIdentifier];
    }

    [(HDMirroredWorkoutSessionServer *)self _takeBackgroundRunningAssertionIfNeeded];
  }

  else
  {
    v13 = objc_loadWeakRetained(&self->super._profile);
    v11 = [v13 workoutManager];
    v12 = [v11 mirroringManager];
    [v12 launchClientWithBundleIdentifier:self->super._clientProcessBundleIdentifier];
  }
}

@end