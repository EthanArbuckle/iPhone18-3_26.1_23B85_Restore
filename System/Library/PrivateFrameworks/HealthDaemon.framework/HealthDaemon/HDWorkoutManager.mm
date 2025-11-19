@interface HDWorkoutManager
- (BOOL)allowBackgroundStartForApplicationIdentifier:(id)a3;
- (BOOL)canRecoverWorkoutSessionServerWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)currentActivityRequiresExtendedMode;
- (BOOL)finishAllWorkoutsForClient:(id)a3 error:(id *)a4;
- (BOOL)hasAnyActiveWorkouts;
- (BOOL)isInHeartRateRecovery;
- (HDProfile)profile;
- (HDWorkoutManager)initWithProfile:(id)a3;
- (HDWorkoutSessionServer)currentWorkout;
- (NSDictionary)sessionServers;
- (id)currentWorkoutClient;
- (id)currentWorkoutConfiguration;
- (id)currentWorkoutSessionServer;
- (id)diagnosticDescription;
- (id)sessionServerWithConfiguration:(id)a3 sessionUUID:(id)a4 clientBundleIdentifier:(id)a5 taskServer:(id)a6;
- (id)takeLiveActivityAssertionWithOwnerIdentifier:(id)a3 clientBundleIdentifier:(id)a4 explanation:(id)a5;
- (id)unitTest_currentWorkoutSession;
- (uint64_t)_postWorkoutUpdatedNotification;
- (void)_didCreateMirroredSessionServer:(id)a3;
- (void)_finishAllWorkoutsWithExclusionHandler:(uint64_t)a1;
- (void)_handleBiometricLockout;
- (void)_performFinishAllDetachedWorkoutBuilders;
- (void)_performRecoverySessionCleanup:(void *)a3 sessionIdentifier:;
- (void)_queue_beginTransitionToWorkoutSession:(uint64_t)a1;
- (void)_queue_sessionFinished:(uint64_t)a1;
- (void)_queue_setCurrentWorkout:(uint64_t)a1;
- (void)_receivedStartWorkoutAppRequest:(id)a3 completion:(id)a4;
- (void)_scheduleFinishForDetachedWorkoutBuilders;
- (void)_sendStartWorkoutAppResponse:(id)a3 error:(id)a4;
- (void)_setupNewSessionServer:(void *)a3 withTaskServer:;
- (void)_startWatchAppWithMirroredStartData:(id)a3 client:(id)a4 completion:(id)a5;
- (void)_startWatchAppWithRequest:(void *)a3 completion:;
- (void)_startWatchAppWithWorkoutConfiguration:(id)a3 client:(id)a4 completion:(id)a5;
- (void)_startWatchAppWithWorkoutPlanData:(id)a3 client:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)devicePowerMonitor:(id)a3 primaryPowerSourceIsCharging:(BOOL)a4;
- (void)endHeartRateRecovery;
- (void)generatePauseOrResumeRequestAllowingBackgroundRuntime:(BOOL)a3 metadata:(id)a4 completion:(id)a5;
- (void)getCurrentWorkoutSnapshotWithCompletion:(id)a3;
- (void)hk_fakeLapEventWithDate:(id)a3 strokeStyle:(int64_t)a4;
- (void)hk_fakeStopEventWithDate:(id)a3;
- (void)invalidateAndWait;
- (void)mirroredSessionServerWithUUID:(id)a3 completion:(id)a4;
- (void)performWhenPostLaunchSessionRecoveryHasCompleted:(id)a3;
- (void)profileDidBecomeReady:(id)a3;
- (void)recoverAllActiveWorkoutSessionServersWithStates:(id)a3;
- (void)recoverWorkoutSessionForClient:(id)a3 server:(id)a4 completion:(id)a5;
- (void)registerCurrentWorkoutObserver:(id)a3;
- (void)sessionServerFromSessionIdentifier:(id)a3 completion:(id)a4;
- (void)takeBackgroundStartAssertionForApplicationIdentifier:(id)a3;
- (void)tearDownMirroredWorkoutSession:(id)a3;
- (void)unitTest_smoothRouteForTask:(id)a3 completion:(id)a4;
- (void)workoutSession:(id)a3 didChangeToState:(int64_t)a4 fromState:(int64_t)a5 date:(id)a6;
- (void)workoutSession:(id)a3 didUpdateDataAccumulator:(id)a4;
@end

@implementation HDWorkoutManager

- (BOOL)hasAnyActiveWorkouts
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_queue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = v2->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__HDWorkoutManager_hasAnyActiveWorkouts__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (id)currentWorkoutClient
{
  dispatch_assert_queue_not_V2(self->_queue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__177;
  v11 = __Block_byref_object_dispose__177;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__HDWorkoutManager_currentWorkoutClient__block_invoke;
  v6[3] = &unk_278617198;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __40__HDWorkoutManager_currentWorkoutClient__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) isActive];
  if (result)
  {
    v3 = [*(*(a1 + 32) + 8) client];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)_startWatchAppWithWorkoutConfiguration:(id)a3 client:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [a4 process];
  v11 = [v10 applicationIdentifier];

  v12 = [(HDWorkoutManager *)self profile];
  v13 = [v12 daemon];
  v14 = [v13 processStateManager];
  v15 = [v14 applicationIsForeground:v11];

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC330];
  v17 = *MEMORY[0x277CCC330];
  if (v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543618;
      v24 = v11;
      v25 = 2114;
      v26 = v8;
      _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "Starting workout app %{public}@ on watch. configuration: %{public}@", &v23, 0x16u);
    }

    v18 = objc_alloc_init(HDCodableStartWorkoutAppRequest);
    [(HDCodableStartWorkoutAppRequest *)v18 setApplicationIdentifier:v11];
    v19 = [v8 codableRepresentationForSync];
    [(HDCodableStartWorkoutAppRequest *)v18 setWorkoutConfiguration:v19];

    v20 = [MEMORY[0x277CCAD78] UUID];
    v21 = [v20 UUIDString];
    [(HDCodableStartWorkoutAppRequest *)v18 setRequestIdentifier:v21];

    [(HDWorkoutManager *)self _startWatchAppWithRequest:v18 completion:v9];
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Cannot start watch app when phone app is in background", &v23, 2u);
    }

    v18 = [MEMORY[0x277CCA9B8] hk_error:550 description:@"Cannot start watch app when phone app is in background"];
    (*(v9 + 2))(v9, 0, v18);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_startWatchAppWithRequest:(void *)a3 completion:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__HDWorkoutManager_Platform___startWatchAppWithRequest_completion___block_invoke;
    block[3] = &unk_278616D18;
    block[4] = a1;
    v10 = v6;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)_startWatchAppWithWorkoutPlanData:(id)a3 client:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = *MEMORY[0x277CCC8B0];
  v10 = a5;
  if ([a4 hasEntitlement:v9])
  {
    v11 = objc_alloc_init(HDCodableStartWorkoutAppRequest);
    [(HDCodableStartWorkoutAppRequest *)v11 setWorkoutPlanData:v8];
    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 UUIDString];
    [(HDCodableStartWorkoutAppRequest *)v11 setRequestIdentifier:v13];

    [(HDWorkoutManager *)self _startWatchAppWithRequest:v11 completion:v10];
  }

  else
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "Client does not have required entitlement to launch workout app", v16, 2u);
    }

    v15 = [MEMORY[0x277CCA9B8] hk_error:550 description:@"Client does not have required entitlement to launch workout app"];
    (*(v10 + 2))(v10, 0, v15);
  }
}

- (void)_startWatchAppWithMirroredStartData:(id)a3 client:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = *MEMORY[0x277CCC8B0];
  v10 = a5;
  if ([a4 hasEntitlement:v9])
  {
    v11 = objc_alloc_init(HDCodableStartWorkoutAppRequest);
    [(HDCodableStartWorkoutAppRequest *)v11 setMirroredStartData:v8];
    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 UUIDString];
    [(HDCodableStartWorkoutAppRequest *)v11 setRequestIdentifier:v13];

    [(HDWorkoutManager *)self _startWatchAppWithRequest:v11 completion:v10];
  }

  else
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "Client does not have required entitlement to launch workout app (mirrored start)", v16, 2u);
    }

    v15 = [MEMORY[0x277CCA9B8] hk_error:550 description:@"Client does not have required entitlement to launch workout app (mirrored start)"];
    (*(v10 + 2))(v10, 0, v15);
  }
}

void __67__HDWorkoutManager_Platform___startWatchAppWithRequest_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = [v2 nanoSyncManager];

  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__HDWorkoutManager_Platform___startWatchAppWithRequest_completion___block_invoke_2;
    v6[3] = &unk_278622070;
    v4 = *(a1 + 40);
    v7 = *(a1 + 48);
    [v3 sendStartWorkoutAppRequest:v4 completion:v6];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hk_error:550 description:@"Unable to launch watch app"];
    (*(*(a1 + 48) + 16))();
  }
}

void __67__HDWorkoutManager_Platform___startWatchAppWithRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), [a2 success], v5);
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Error launching watch app: %{public}@", &v8, 0xCu);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v5);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_receivedStartWorkoutAppRequest:(id)a3 completion:(id)a4
{
  v5 = a4;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Received unsupported start workout app message non-watch device.", v8, 2u);
  }

  v7 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Start workout app request not supported on non-watch devices"];
  [(HDWorkoutManager *)self _sendStartWorkoutAppResponse:v5 error:v7];
}

- (HDWorkoutManager)initWithProfile:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = HDWorkoutManager;
  v5 = [(HDWorkoutManager *)&v33 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sessionCreationHandlers = v6->_sessionCreationHandlers;
    v6->_sessionCreationHandlers = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sessionServers = v6->_sessionServers;
    v6->_sessionServers = v11;

    v13 = objc_alloc_init(HDLocationManager);
    locationManager = v6->_locationManager;
    v6->_locationManager = v13;

    v15 = [v4 daemon];
    v16 = [v15 behavior];
    if ([v16 routeSmoothingEnabled])
    {
      v17 = [[HDWorkoutLocationSmoother alloc] initWithProfile:v4];
    }

    else
    {
      v17 = 0;
    }

    locationSmoother = v6->_locationSmoother;
    v6->_locationSmoother = v17;

    v19 = [[HDWorkoutMirroringManager alloc] initWithWorkoutManager:v6];
    mirroringManager = v6->_mirroringManager;
    v6->_mirroringManager = v19;

    v21 = objc_alloc_init(HDWorkoutAssertionManager);
    assertionManager = v6->_assertionManager;
    v6->_assertionManager = v21;

    v23 = objc_alloc_init(HDBiomeInterface);
    biomeInterface = v6->_biomeInterface;
    v6->_biomeInterface = v23;

    v25 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v25 addObject:v6];

    v26 = objc_alloc(MEMORY[0x277CCD738]);
    v27 = [v26 initWithName:@"current-workout-observers" loggingCategory:*MEMORY[0x277CCC330]];
    currentWorkoutObservers = v6->_currentWorkoutObservers;
    v6->_currentWorkoutObservers = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    backgroundStartAssertions = v6->_backgroundStartAssertions;
    v6->_backgroundStartAssertions = v29;

    v6->_assertionsLock._os_unfair_lock_opaque = 0;
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    [WeakRetained registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)invalidateAndWait
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HDWorkoutManager_invalidateAndWait__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __37__HDWorkoutManager_invalidateAndWait__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = 0;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  notify_cancel(self->_springboardLockoutToken);
  [(HDAssertion *)self->_currentWorkoutAssertion invalidate];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained sessionAssertionManager];
  v5 = [v4 activeAssertionsForIdentifier:@"HDAssertionIdentifierBackgroundWorkoutStart"];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9++) invalidate];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11.receiver = self;
  v11.super_class = HDWorkoutManager;
  [(HDWorkoutManager *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (HDWorkoutSessionServer)currentWorkout
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__177;
  v10 = __Block_byref_object_dispose__177;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__HDWorkoutManager_currentWorkout__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSDictionary)sessionServers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__177;
  v10 = __Block_byref_object_dispose__177;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__HDWorkoutManager_sessionServers__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __34__HDWorkoutManager_sessionServers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (BOOL)canRecoverWorkoutSessionServerWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__177;
  v28 = __Block_byref_object_dispose__177;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__177;
  v22 = __Block_byref_object_dispose__177;
  v23 = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HDWorkoutManager_canRecoverWorkoutSessionServerWithIdentifier_error___block_invoke;
  v14[3] = &unk_27862B9F8;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v16 = &v24;
  v17 = &v18;
  dispatch_sync(queue, v14);
  v9 = v25[5];
  if (!v9)
  {
    v10 = v19[5];
    v11 = v10;
    if (v10)
    {
      if (a4)
      {
        v12 = v10;
        *a4 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v9 != 0;
}

void __71__HDWorkoutManager_canRecoverWorkoutSessionServerWithIdentifier_error___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 workoutConfiguration];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 136));
    v8 = a1[5];
    v14 = 0;
    v9 = [HDWorkoutSessionServer workoutConfigurationForRecoveryWithProfile:WeakRetained sessionUUID:v8 error:&v14];
    v10 = v14;
    v11 = v14;
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v9;

    if (!*(*(a1[6] + 8) + 40))
    {
      objc_storeStrong((*(a1[7] + 8) + 40), v10);
    }
  }
}

- (void)sessionServerFromSessionIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HDWorkoutManager_sessionServerFromSessionIdentifier_completion___block_invoke;
  block[3] = &unk_278616D18;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __66__HDWorkoutManager_sessionServerFromSessionIdentifier_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v6 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:?];
    if (v6)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:*(a1 + 32)];
      if (!v3)
      {
        v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [*(*(a1 + 40) + 40) setObject:v3 forKeyedSubscript:*(a1 + 32)];
      }

      v4 = [*(a1 + 48) copy];
      v5 = _Block_copy(v4);
      [v3 addObject:v5];
    }
  }

  else
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_228986000, v2, OS_LOG_TYPE_ERROR, "Unable to fetch session server because Session Identifier is unexpectedly nil", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (id)sessionServerWithConfiguration:(id)a3 sessionUUID:(id)a4 clientBundleIdentifier:(id)a5 taskServer:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__177;
  v30 = __Block_byref_object_dispose__177;
  v31 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HDWorkoutManager_sessionServerWithConfiguration_sessionUUID_clientBundleIdentifier_taskServer___block_invoke;
  block[3] = &unk_27861F190;
  v25 = &v26;
  block[4] = self;
  v15 = v11;
  v24 = v15;
  dispatch_sync(queue, block);
  v16 = v27[5];
  if (!v16)
  {
    v17 = [HDWorkoutSessionServer alloc];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v19 = [(HDWorkoutSessionServer *)v17 initWithProfile:WeakRetained configuration:v10 sessionUUID:v15];
    v20 = v27[5];
    v27[5] = v19;

    [(HDWorkoutManager *)self _setupNewSessionServer:v13 withTaskServer:?];
    v16 = v27[5];
  }

  v21 = v16;

  _Block_object_dispose(&v26, 8);

  return v21;
}

uint64_t __97__HDWorkoutManager_sessionServerWithConfiguration_sessionUUID_clientBundleIdentifier_taskServer___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)_setupNewSessionServer:(void *)a3 withTaskServer:
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__177;
    v25 = __Block_byref_object_dispose__177;
    v26 = 0;
    v7 = *(a1 + 152);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__HDWorkoutManager__setupNewSessionServer_withTaskServer___block_invoke;
    block[3] = &unk_27862BA20;
    block[4] = a1;
    v19 = &v21;
    v20 = sel__setupNewSessionServer_withTaskServer_;
    v18 = v5;
    dispatch_sync(v7, block);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v22[5];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v27 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v13 + 1) + 8 * v11) + 16))(*(*(&v13 + 1) + 8 * v11));
          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v27 count:16];
      }

      while (v9);
    }

    _Block_object_dispose(&v21, 8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)mirroredSessionServerWithUUID:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__177;
  v23 = __Block_byref_object_dispose__177;
  v24 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HDWorkoutManager_mirroredSessionServerWithUUID_completion___block_invoke;
  block[3] = &unk_27861F190;
  v18 = &v19;
  block[4] = self;
  v10 = v7;
  v17 = v10;
  dispatch_sync(queue, block);
  v11 = v20[5];
  if (v11)
  {
    if ([v11 sessionType] != 1)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"HDWorkoutManager.m" lineNumber:279 description:{@"Expected session %@ type to be mirrored", v10}];
    }

    v8[2](v8, v20[5], 0);
  }

  else
  {
    mirroringManager = self->_mirroringManager;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__HDWorkoutManager_mirroredSessionServerWithUUID_completion___block_invoke_2;
    v14[3] = &unk_27861A2B0;
    v15 = v8;
    [(HDWorkoutMirroringManager *)mirroringManager recoverMirroredWorkoutSessionWithCompletion:v14];
  }

  _Block_object_dispose(&v19, 8);
}

uint64_t __61__HDWorkoutManager_mirroredSessionServerWithUUID_completion___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __58__HDWorkoutManager__setupNewSessionServer_withTaskServer___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) identifier];
  v16 = [v2 objectForKeyedSubscript:v3];

  if ([v16 sessionType] == 1)
  {
    [(HDWorkoutManager *)*(a1 + 32) _queue_sessionFinished:v16];
  }

  else if (v16)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"HDWorkoutManager.m" lineNumber:299 description:@"Conflicting session creation."];
  }

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 32);
  v6 = [v4 identifier];
  [v5 setObject:v4 forKeyedSubscript:v6];

  [*(a1 + 40) addObserver:*(a1 + 32) queue:*(*(a1 + 32) + 152)];
  v7 = *(*(a1 + 32) + 40);
  v8 = [*(a1 + 40) identifier];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(a1 + 40);
  v13 = *(*(a1 + 32) + 40);
  v14 = [v12 identifier];
  [v13 removeObjectForKey:v14];
}

- (void)_queue_sessionFinished:(uint64_t)a1
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 152));
    if (*(a1 + 8) == v3)
    {
      _HKInitializeLogging();
      v5 = MEMORY[0x277CCC330];
      v6 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v3;
        _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ (#w0) Finished while current.", buf, 0xCu);
      }

      [*(a1 + 8) removeObserver:a1];
      v7 = *(a1 + 8);
      *(a1 + 8) = 0;

      if (!*(a1 + 24))
      {
        _HKInitializeLogging();
        v8 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v20 = a1;
          _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidating all workout database assertions", buf, 0xCu);
        }

        WeakRetained = objc_loadWeakRetained((a1 + 136));
        v10 = [WeakRetained database];
        [v10 invalidateAllAssertionsWithContextType:3];
      }

      v11 = *(a1 + 96);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __43__HDWorkoutManager__queue_sessionFinished___block_invoke;
      v18[3] = &unk_27862BB18;
      v18[4] = a1;
      [v11 notifyObservers:v18];
      if (![v3 sessionType])
      {
        [*(a1 + 16) invalidate];
        v12 = *(a1 + 16);
        *(a1 + 16) = 0;
      }

      [(HDWorkoutManager *)a1 _postWorkoutUpdatedNotification];
      v13 = *(a1 + 24);
      if (!v13)
      {
        goto LABEL_17;
      }

      [(HDWorkoutManager *)a1 _queue_setCurrentWorkout:v13];
    }

    else
    {
      if (*(a1 + 24) != v3)
      {
LABEL_17:
        v15 = *(a1 + 32);
        v16 = [v3 identifier];
        [v15 removeObjectForKey:v16];

        goto LABEL_18;
      }

      _HKInitializeLogging();
      v4 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v20 = a1;
        v21 = 2114;
        v22 = v3;
        _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) %{public}@ Finished while pending.", buf, 0x16u);
      }
    }

    v14 = *(a1 + 24);
    *(a1 + 24) = 0;

    goto LABEL_17;
  }

LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_queue_beginTransitionToWorkoutSession:(uint64_t)a1
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (!a1)
  {
    goto LABEL_28;
  }

  v6 = *(a1 + 8);
  if (v6 == v4)
  {
    [v4 didBecomeCurrent];
    goto LABEL_28;
  }

  v7 = (a1 + 24);
  if (*(a1 + 24) != v4)
  {
    if (!v6)
    {
      [(HDWorkoutManager *)a1 _queue_setCurrentWorkout:v4];
LABEL_23:
      v16 = [v5 applicationIdentifier];

      if (v16)
      {
        v17 = [HDWatchAppStateMonitor alloc];
        v18 = [v5 applicationIdentifier];
        v19 = [(HDWatchAppStateMonitor *)v17 initWithBundleIdentifier:v18];
        v20 = *(a1 + 64);
        *(a1 + 64) = v19;
      }

      goto LABEL_28;
    }

    v8 = [v4 taskServer];
    if (v8 && ([v5 shouldStopPreviousSession] & 1) == 0)
    {
      v21 = [*(a1 + 8) isActive];

      if (v21)
      {
        v22 = [MEMORY[0x277CCA9B8] hk_error:551 description:@"Cannot start when another session is active"];
        [v5 didResignCurrentWithError:v22];

        goto LABEL_28;
      }
    }

    else
    {
    }

    v9 = [MEMORY[0x277CCA9B8] hk_error:8 description:@"Another session is starting"];
    if (_HDWorkoutSessionCanReplaceSession(*(a1 + 8), v5))
    {
      if (!*v7)
      {
LABEL_12:
        objc_storeStrong((a1 + 24), a2);
        [*(a1 + 8) didResignCurrentWithError:v9];
        v10 = *(a1 + 8);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v12 = MEMORY[0x277CCC330];
        if (isKindOfClass)
        {
          _HKInitializeLogging();
          v13 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
          {
            v24 = 138543362;
            v25 = a1;
            _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) Tearing down mirrored session.", &v24, 0xCu);
          }

          [*(a1 + 8) didDisconnectFromRemoteWithError:0];
        }

        _HKInitializeLogging();
        v14 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138543618;
          v25 = a1;
          v26 = 2114;
          v27 = v5;
          _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) %{public}@ In line as next workout.", &v24, 0x16u);
        }

        goto LABEL_23;
      }

      if (_HDWorkoutSessionCanReplaceSession(*v7, v5))
      {
        [*v7 didResignCurrentWithError:v9];
        goto LABEL_12;
      }
    }

    [v5 didResignCurrentWithError:v9];

    goto LABEL_28;
  }

  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138543362;
    v25 = v5;
    _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ (#w1) Ignorning became-current request while already in line as the next workout.", &v24, 0xCu);
  }

LABEL_28:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setCurrentWorkout:(uint64_t)a1
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  dispatch_assert_queue_V2(*(a1 + 152));
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = a1;
    v20 = 2114;
    v21 = v4;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) %{public}@ Became current.", buf, 0x16u);
  }

  objc_storeStrong((a1 + 8), a2);
  v6 = *(a1 + 96);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__HDWorkoutManager__queue_setCurrentWorkout___block_invoke;
  v17[3] = &unk_27862BB18;
  v17[4] = a1;
  [v6 notifyObservers:v17];
  [*(a1 + 8) didBecomeCurrent];
  v7 = [v4 applicationIdentifier];

  if (v7)
  {
    v8 = [v4 applicationIdentifier];
    os_unfair_lock_lock((a1 + 112));
    v9 = [*(a1 + 104) objectForKeyedSubscript:v8];
    [*(a1 + 104) setObject:0 forKeyedSubscript:v8];

    os_unfair_lock_unlock((a1 + 112));
    [v9 invalidate];
  }

  if (![v4 sessionType])
  {
    v10 = [v4 clientProcessBundleIdentifier];
    v11 = *(a1 + 16);
    if (v10)
    {
      v12 = [objc_alloc(MEMORY[0x277D10AB8]) initWithAssertionIdentifier:@"HDCurrentWorkoutSessionAssertion" ownerIdentifier:v10];
      v13 = *(a1 + 16);
      *(a1 + 16) = v12;
    }

    [v11 invalidate];
    if (*(a1 + 16))
    {
      v14 = [a1 profile];
      v15 = [v14 sessionAssertionManager];
      [v15 takeAssertion:*(a1 + 16)];
    }
  }

  [(HDWorkoutManager *)a1 _postWorkoutUpdatedNotification];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_sendStartWorkoutAppResponse:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HDCodableStartWorkoutAppResponse);
  v9 = v7;
  if (v5)
  {
    [(HDCodableStartWorkoutAppResponse *)v7 setSuccess:0];
    v8 = [v5 hk_codableError];
    [(HDCodableStartWorkoutAppResponse *)v9 setLaunchError:v8];
  }

  else
  {
    [(HDCodableStartWorkoutAppResponse *)v7 setSuccess:1];
  }

  v6[2](v6, v9, v5);
}

uint64_t __61__HDWorkoutManager__queue_sessionServerForRecoveryForClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 applicationIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)finishAllWorkoutsForClient:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [HDWorkoutSessionServer finishAllWorkoutSessionsForClient:v6 profile:WeakRetained error:a4];

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_profile);
    v10 = [HDWorkoutBuilderServer finishAllWorkoutBuildersForClient:v6 profile:v9 error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)recoverWorkoutSessionForClient:(id)a3 server:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HDWorkoutManager_recoverWorkoutSessionForClient_server_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_sync(queue, block);
}

void __69__HDWorkoutManager_recoverWorkoutSessionForClient_server_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *(v2 + 152);
  v4 = *(a1 + 40);
  dispatch_assert_queue_V2(v3);
  v5 = [v4 process];

  v6 = [v5 applicationIdentifier];

  v7 = [*(v2 + 8) applicationIdentifier];
  LODWORD(v5) = [v7 isEqualToString:v6];

  if (v5)
  {
    v8 = *(v2 + 8);
  }

  else
  {
    v9 = [*(v2 + 32) allValues];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__HDWorkoutManager__queue_sessionServerForRecoveryForClient___block_invoke;
    v13[3] = &unk_27862BA48;
    v14 = v6;
    v8 = [v9 hk_firstObjectPassingTest:v13];
  }

  if (v8)
  {
    v12 = 0;
    v10 = [v8 taskServerConfigurationForRecoveryWithError:&v12];
    v11 = v12;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
LABEL_7:
    (*(*(a1 + 48) + 16))();
    v8 = 0;
  }
}

uint64_t __45__HDWorkoutManager__activeSessionIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)_performFinishAllDetachedWorkoutBuilders
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 152));
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v16 = __Block_byref_object_copy__177;
    v17 = __Block_byref_object_dispose__177;
    v18 = 0;
    v2 = *(a1 + 152);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__HDWorkoutManager__activeSessionIdentifiers__block_invoke;
    block[3] = &unk_278613990;
    block[4] = a1;
    block[5] = buf;
    dispatch_sync(v2, block);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v3];
    WeakRetained = objc_loadWeakRetained((a1 + 136));
    v13 = 0;
    v6 = [HDWorkoutBuilderServer finishAllDetachedWorkoutBuildersExcludingSessions:v4 profile:WeakRetained error:&v13];
    v7 = v13;

    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC330];
    v9 = *MEMORY[0x277CCC330];
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v8;
        v11 = [v3 componentsJoinedByString:{@", "}];
        *buf = 138543618;
        *&buf[4] = a1;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished all detached workout builders, excluding active sessions (%@)", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = a1;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to finish detached workout builders: %{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)currentWorkoutConfiguration
{
  dispatch_assert_queue_not_V2(self->_queue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__177;
  v11 = __Block_byref_object_dispose__177;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HDWorkoutManager_currentWorkoutConfiguration__block_invoke;
  v6[3] = &unk_278613990;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __47__HDWorkoutManager_currentWorkoutConfiguration__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) currentActivityConfiguration];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)generatePauseOrResumeRequestAllowingBackgroundRuntime:(BOOL)a3 metadata:(id)a4 completion:(id)a5
{
  v6 = a3;
  v38 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  _HKInitializeLogging();
  v11 = MEMORY[0x277CCC330];
  v12 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    if (v6)
    {
      v13 = @"YES";
    }

    *buf = 138543618;
    v31 = self;
    v32 = 2112;
    v33 = v13;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Received pause/resume request, allow background runtime: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [WeakRetained database];
  v16 = [v15 isProtectedDataAvailable];

  v17 = [(HDWorkoutSessionServer *)self->_currentWorkout canBePaused];
  v18 = [(HDWatchAppStateMonitor *)self->_appStateMonitor appIsActive];
  if (((v16 & 1) != 0 || v17) && (v18 || (v16 & 1) == 0 || v6))
  {
    queue = self->_queue;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __94__HDWorkoutManager_generatePauseOrResumeRequestAllowingBackgroundRuntime_metadata_completion___block_invoke;
    v26[3] = &unk_278617418;
    v26[4] = self;
    v27 = v9;
    v28 = v10;
    v29 = a2;
    dispatch_async(queue, v26);
  }

  else
  {
    _HKInitializeLogging();
    v19 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = HKStringFromBool();
      v22 = HKStringFromBool();
      v23 = HKStringFromBool();
      *buf = 138544130;
      v31 = self;
      v32 = 2114;
      v33 = v21;
      v34 = 2114;
      v35 = v22;
      v36 = 2114;
      v37 = v23;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring pause/resume request. { unlocked=%{public}@, can be paused=%{public}@, active=%{public}@.", buf, 0x2Au);
    }

    (*(v10 + 2))(v10, 1, 0);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __94__HDWorkoutManager_generatePauseOrResumeRequestAllowingBackgroundRuntime_metadata_completion___block_invoke(void *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [*(a1[4] + 8) identifier];
  _HKInitializeLogging();
  v4 = MEMORY[0x277CCC330];
  v5 = *MEMORY[0x277CCC330];
  v6 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v7 = a1[4];
      *buf = 138543618;
      v39 = v7;
      v40 = 2114;
      v41 = v3;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Generating pause/resume request for session %{public}@.", buf, 0x16u);
    }

    v8 = objc_alloc(MEMORY[0x277CCDE58]);
    v9 = objc_alloc_init(MEMORY[0x277CCA970]);
    v10 = [v8 initWithEventType:10 sessionId:v3 dateInterval:v9 metadata:a1[5]];

    [*(a1[4] + 8) generateEvent:v10];
    v11 = [*(a1[4] + 8) clientProcessBundleIdentifier];
    v37 = 0;
    v12 = [HDWorkoutBackgroundUtilities hasBackgroundPermissionForBundleIdentifier:v11 errorOut:&v37];
    v13 = v37;

    _HKInitializeLogging();
    v14 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v16 = a1[4];
      v17 = @"NO";
      *buf = 138543874;
      if (v12)
      {
        v17 = @"YES";
      }

      v39 = v16;
      v40 = 2114;
      v41 = v17;
      v42 = 2114;
      v43 = v13;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Client process has background permission: %{public}@, error: %{public}@", buf, 0x20u);
    }

    if (v13)
    {
      v18 = 1;
    }

    else
    {
      v18 = v12;
    }

    if (v18)
    {
      goto LABEL_25;
    }

    v19 = [*(a1[4] + 8) client];
    v20 = [v19 process];

    if (v20)
    {
      v21 = [v20 applicationIdentifier];
      v22 = a1[4];
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = [v22[1] applicationIdentifier];
        v22 = a1[4];
        if (!v23)
        {
          v1 = [v22[1] identifier];
          v29 = [v1 UUIDString];
          v28 = 1;
          goto LABEL_22;
        }
      }

      v28 = 0;
      v29 = v23;
LABEL_22:
      v30 = [v22 takeRBSAssertionWithOwnerIdentifier:v29 assertionIdentifier:@"WorkoutSessionUpdate" pid:objc_msgSend(v20 explanation:{"processIdentifier"), @"Generate Pause or Resume Event"}];
      if (v28)
      {
      }

      v31 = dispatch_time(0, 10000000000);
      v32 = *(a1[4] + 152);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __94__HDWorkoutManager_generatePauseOrResumeRequestAllowingBackgroundRuntime_metadata_completion___block_invoke_371;
      v35[3] = &unk_278613968;
      v36 = v30;
      v33 = v30;
      dispatch_after(v31, v32, v35);

LABEL_25:
      (*(a1[6] + 16))(a1[6], 1, 0, v15);

      goto LABEL_26;
    }

    _HKInitializeLogging();
    v27 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "Background assertion not taken for client. No process found", buf, 2u);
    }
  }

  else
  {
    if (v6)
    {
      v24 = a1[4];
      *buf = 138543362;
      v39 = v24;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Rejecting pause/resume request; no current workout.", buf, 0xCu);
    }

    v25 = a1[6];
    v26 = a1[4];
    v10 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[7] format:@"No current workout to pause or resume"];
    (*(v25 + 16))(v25, 0, v10);
  }

LABEL_26:

  v34 = *MEMORY[0x277D85DE8];
}

- (id)takeLiveActivityAssertionWithOwnerIdentifier:(id)a3 clientBundleIdentifier:(id)a4 explanation:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HDWorkoutManager *)self assertionManager];
  v12 = [v11 takeLiveActivityAssertionWithOwnerIdentifier:v10 clientBundleIdentifier:v9 explanation:v8];

  return v12;
}

- (BOOL)allowBackgroundStartForApplicationIdentifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([&unk_283CB01B0 containsObject:v4] & 1) != 0 || objc_msgSend(MEMORY[0x277CCDCD8], "isFirstPartyForIdentifier:", v4))
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Workout session allowed to start for %{public}@ because it is listed", &v11, 0x16u);
    }

    v6 = 1;
  }

  else
  {
    os_unfair_lock_lock(&self->_assertionsLock);
    v7 = [(NSMutableDictionary *)self->_backgroundStartAssertions objectForKeyedSubscript:v4];
    os_unfair_lock_unlock(&self->_assertionsLock);
    if (v7 && [v7 state] != 3)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        v12 = self;
        v13 = 2114;
        v14 = v4;
        _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Workout session allowed to start for %{public}@ because an assertion is held", &v11, 0x16u);
      }

      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)takeBackgroundStartAssertionForApplicationIdentifier:(id)a3
{
  v4 = MEMORY[0x277D10AB8];
  v5 = a3;
  v9 = [[v4 alloc] initWithAssertionIdentifier:@"HDAssertionIdentifierBackgroundWorkoutStart" ownerIdentifier:v5];
  [v9 setBudget:30.0];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [WeakRetained sessionAssertionManager];
  [v7 takeAssertion:v9];

  os_unfair_lock_lock(&self->_assertionsLock);
  v8 = [(NSMutableDictionary *)self->_backgroundStartAssertions objectForKeyedSubscript:v5];
  [(NSMutableDictionary *)self->_backgroundStartAssertions setObject:v9 forKeyedSubscript:v5];

  os_unfair_lock_unlock(&self->_assertionsLock);
  [v8 invalidate];
}

- (void)_scheduleFinishForDetachedWorkoutBuilders
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained daemon];
  v5 = [v4 behavior];
  v6 = [v5 supportsWorkouts];

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = dispatch_time(0, 30000000000);
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__HDWorkoutManager__scheduleFinishForDetachedWorkoutBuilders__block_invoke;
    v9[3] = &unk_278616F38;
    objc_copyWeak(&v10, &location);
    dispatch_after(v7, queue, v9);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __61__HDWorkoutManager__scheduleFinishForDetachedWorkoutBuilders__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 17);
    v3 = [v2 database];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __61__HDWorkoutManager__scheduleFinishAllDetachedWorkoutBuilders__block_invoke;
    v5[3] = &unk_278613968;
    v5[4] = v4;
    [v3 performAsynchronously:v5];

    WeakRetained = v4;
  }
}

- (void)recoverAllActiveWorkoutSessionServersWithStates:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HDWorkoutManager_recoverAllActiveWorkoutSessionServersWithStates___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __68__HDWorkoutManager_recoverAllActiveWorkoutSessionServersWithStates___block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v72 = v3;
    v73 = 2114;
    v74 = v4;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Attempting to recover all active sessions with states %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  v69 = 0;
  v6 = [HDWorkoutSessionServer sessionIdentifiersForRecoveryInProfile:WeakRetained error:&v69];
  v54 = v69;

  if (v6)
  {
    if ([v6 count])
    {
      v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v53 = v6;
      obj = v6;
      v7 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
      if (v7)
      {
        v8 = v7;
        v56 = 0;
        v9 = *v66;
        v10 = v54;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v66 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v65 + 1) + 8 * i);
            v13 = objc_loadWeakRetained((*(a1 + 32) + 136));
            v14 = [v13 daemon];
            v15 = [v14 devicePowerMonitor];
            v16 = [v15 primarySourceIsCharging];

            if (v16)
            {
              _HKInitializeLogging();
              v17 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
              {
                v18 = *(a1 + 32);
                *buf = 138543618;
                v72 = v18;
                v73 = 2114;
                v74 = obj;
                _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping automatic current workout recovery (%{public}@): primary power source is currently charging.", buf, 0x16u);
              }

              [(HDWorkoutManager *)*(a1 + 32) _performRecoverySessionCleanup:v12 sessionIdentifier:?];
            }

            else
            {
              v19 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v12];

              if (v19)
              {
                _HKInitializeLogging();
                v20 = *MEMORY[0x277CCC330];
                if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
                {
                  v21 = *(a1 + 32);
                  v22 = *(v21 + 32);
                  *buf = 138543618;
                  v72 = v21;
                  v73 = 2114;
                  v74 = v22;
                  _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping automatic current workout recovery: session servers (%{public}@) already exist.", buf, 0x16u);
                }

                v56 = 1;
              }

              else
              {
                v23 = objc_loadWeakRetained((*(a1 + 32) + 136));
                v64 = v10;
                v24 = [HDWorkoutSessionServer recoveredSessionServerWithProfile:v23 sessionUUID:v12 error:&v64];
                v25 = v64;

                if (v24)
                {
                  [v55 addObject:v24];
                }

                else
                {
                  _HKInitializeLogging();
                  v26 = *MEMORY[0x277CCC330];
                  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
                  {
                    v27 = *(a1 + 32);
                    *buf = 138543874;
                    v72 = v27;
                    v73 = 2114;
                    v74 = v12;
                    v75 = 2114;
                    v76 = v25;
                    _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "%{public}@: Failed to recover workout session %{public}@ after restart with error %{public}@", buf, 0x20u);
                  }

                  [(HDWorkoutManager *)*(a1 + 32) _performRecoverySessionCleanup:v12 sessionIdentifier:?];
                }

                v10 = v25;
              }
            }
          }

          v8 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
        }

        while (v8);
      }

      else
      {
        v56 = 0;
        v10 = v54;
      }

      v54 = v10;

      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __68__HDWorkoutManager_recoverAllActiveWorkoutSessionServersWithStates___block_invoke_390;
      v62[3] = &unk_27862BA78;
      v63 = *(a1 + 40);
      v31 = [v55 sortedArrayUsingComparator:v62];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v32 = [v31 countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v59;
        v35 = &dword_228986000;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v59 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v37 = *(*(&v58 + 1) + 8 * j);
            v38 = [v37 state] - 4;
            _HKInitializeLogging();
            v39 = *MEMORY[0x277CCC330];
            v40 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT);
            if (v38 > 0xB)
            {
              if (v40)
              {
                v44 = v35;
                v45 = *(a1 + 32);
                v46 = v39;
                [v37 state];
                v47 = _HKWorkoutSessionServerStateToString();
                *buf = 138543874;
                v72 = v45;
                v35 = v44;
                v73 = 2114;
                v74 = v37;
                v75 = 2114;
                v76 = v47;
                _os_log_impl(v44, v46, OS_LOG_TYPE_DEFAULT, "%{public}@: Not automatically recovering workout session %{public}@ after restart; state %{public}@ does not indicate a current workout", buf, 0x20u);
              }

              v48 = *(a1 + 32);
              v49 = [v37 workoutConfiguration];
              v50 = [v37 identifier];
              [(HDWorkoutManager *)v48 _performRecoverySessionCleanup:v49 sessionIdentifier:v50];
            }

            else
            {
              if (v40)
              {
                v41 = *(a1 + 32);
                *buf = 138543618;
                v72 = v41;
                v73 = 2114;
                v74 = v37;
                _os_log_impl(v35, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: Automatically recovering workout session %{public}@ after restart.", buf, 0x16u);
              }

              v42 = *(*(a1 + 32) + 32);
              v43 = [v37 identifier];
              [v42 setObject:v37 forKeyedSubscript:v43];

              [v37 addObserver:*(a1 + 32) queue:*(*(a1 + 32) + 152)];
              [(HDWorkoutManager *)*(a1 + 32) _queue_beginTransitionToWorkoutSession:v37];
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v58 objects:v70 count:16];
        }

        while (v33);
      }

      if (v56)
      {
        [(HDWorkoutManager *)*(a1 + 32) _postWorkoutUpdatedNotification];
      }

      v6 = v53;
    }

    else
    {
      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 32);
        *buf = 138543362;
        v72 = v30;
        _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: No workout sessions for recovery", buf, 0xCu);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v28 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v52 = *(a1 + 32);
      *buf = 138543618;
      v72 = v52;
      v73 = 2114;
      v74 = v54;
      _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "%{public}@: Failed to find workout session for recovery: %{public}@", buf, 0x16u);
    }

    [(HDWorkoutManager *)*(a1 + 32) _postWorkoutUpdatedNotification];
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_postWorkoutUpdatedNotification
{
  v10 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC330];
    v3 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT);
    v4 = *MEMORY[0x277CCE3C8];
    if (v3)
    {
      v6 = 138543618;
      v7 = v1;
      v8 = 2080;
      v9 = v4;
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Posting %s notification", &v6, 0x16u);
    }

    notify_post(v4);
    result = HKDispatchAsyncOnGlobalConcurrentQueue();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_performRecoverySessionCleanup:(void *)a3 sessionIdentifier:
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = v5;
    if (!v7)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 136));
      v12 = 0;
      v9 = [HDWorkoutSessionServer workoutConfigurationForRecoveryWithProfile:WeakRetained sessionUUID:v6 error:&v12];
      v7 = v12;

      if (!v9)
      {
        _HKInitializeLogging();
        v11 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v14 = a1;
          v15 = 2114;
          v16 = v6;
          v17 = 2114;
          v18 = v7;
          _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to recover workout configuration for session %{public}@ after restart with error %{public}@", buf, 0x20u);
        }

        goto LABEL_6;
      }

      v7 = v9;
    }

    [*(a1 + 48) stopSessionWithIdentifier:v6 recoveredWorkoutConfiguration:v7];
LABEL_6:
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __68__HDWorkoutManager_recoverAllActiveWorkoutSessionServersWithStates___block_invoke_390(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 state];
  v8 = [v5 state];
  v9 = *(a1 + 32);
  v10 = [v6 identifier];

  v11 = [v9 objectForKey:v10];

  v12 = *(a1 + 32);
  v13 = [v5 identifier];

  v14 = [v12 objectForKey:v13];

  if (v11)
  {
    v7 = [v11 integerValue];
  }

  if (v14)
  {
    v8 = [v14 integerValue];
  }

  if (v7 > v8)
  {
    v15 = -1;
  }

  else
  {
    v15 = v8 > v7;
  }

  return v15;
}

- (void)_finishAllWorkoutsWithExclusionHandler:(uint64_t)a1
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 152));
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__177;
    v25 = __Block_byref_object_dispose__177;
    v26 = 0;
    WeakRetained = objc_loadWeakRetained((a1 + 136));
    v5 = [WeakRetained database];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __59__HDWorkoutManager__finishAllWorkoutsWithExclusionHandler___block_invoke;
    v16 = &unk_27862BAC8;
    v17 = a1;
    v19 = &v21;
    v20 = 0;
    v18 = v3;
    v6 = [(HDHealthEntity *)HDWorkoutSessionEntity performWriteTransactionWithHealthDatabase:v5 error:&v20 block:&v13];
    v7 = v20;

    if (v6)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v22[5] allObjects];
        v10 = [v9 componentsJoinedByString:{@", "}];
        *buf = 138543618;
        v28 = a1;
        v29 = 2112;
        v30 = v10;
        _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished all unrecovered workouts, excluding active sessions (%@)", buf, 0x16u);
      }
    }

    else
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v28 = a1;
        v29 = 2114;
        v30 = v7;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to finish unrecovered workouts: %{public}@", buf, 0x16u);
      }
    }

    _Block_object_dispose(&v21, 8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __59__HDWorkoutManager__finishAllWorkoutsWithExclusionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__177;
  v22 = __Block_byref_object_dispose__177;
  v23 = 0;
  v6 = *(*(a1 + 32) + 152);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HDWorkoutManager__finishAllWorkoutsWithExclusionHandler___block_invoke_2;
  block[3] = &unk_27862BAA0;
  v13 = *(a1 + 40);
  v7 = v13;
  v15 = v13;
  block[4] = *(a1 + 32);
  v16 = &v24;
  v17 = &v18;
  dispatch_sync(v6, block);
  if (v25[3])
  {
    v8 = 1;
  }

  else
  {
    v9 = v19[5];
    v10 = v9;
    if (v9)
    {
      if (a3)
      {
        v11 = v9;
        *a3 = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v8 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v8 & 1;
}

void __59__HDWorkoutManager__finishAllWorkoutsWithExclusionHandler___block_invoke_2(void *a1)
{
  v2 = (*(a1[5] + 16))();
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1[6] + 8) + 40);
  WeakRetained = objc_loadWeakRetained((a1[4] + 136));
  v11 = 0;
  v7 = [HDWorkoutSessionServer finishAllWorkoutsExcludingSessions:v5 profile:WeakRetained error:&v11];
  v8 = v11;
  *(*(a1[7] + 8) + 24) = v7;

  v9 = *(a1[8] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __55__HDWorkoutManager__notifyForPostLaunchSessionRecovery__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 72) = 1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 80);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        dispatch_async(*(*(a1 + 32) + 88), *(*(&v10 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 80);
  *(v7 + 80) = 0;

  v9 = *MEMORY[0x277D85DE8];
}

void __60__HDWorkoutManager__recoverCurrentWorkoutSessionAfterLaunch__block_invoke(uint64_t a1)
{
  [*(a1 + 32) recoverAllActiveWorkoutSessionServersWithStates:0];
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__HDWorkoutManager__recoverCurrentWorkoutSessionAfterLaunch__block_invoke_2;
  v5[3] = &unk_27862BAF0;
  v5[4] = v2;
  [(HDWorkoutManager *)v2 _finishAllWorkoutsWithExclusionHandler:v5];
  [*(a1 + 32) _scheduleFinishForDetachedWorkoutBuilders];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 152);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__HDWorkoutManager__notifyForPostLaunchSessionRecovery__block_invoke;
    block[3] = &unk_278613968;
    block[4] = v3;
    dispatch_sync(v4, block);
  }
}

id __60__HDWorkoutManager__recoverCurrentWorkoutSessionAfterLaunch__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [*(*(a1 + 32) + 32) allKeys];
  v3 = [v1 setWithArray:v2];

  return v3;
}

- (void)performWhenPostLaunchSessionRecoveryHasCompleted:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HDWorkoutManager_performWhenPostLaunchSessionRecoveryHasCompleted___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __69__HDWorkoutManager_performWhenPostLaunchSessionRecoveryHasCompleted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 88))
  {
    v3 = HKCreateSerialDispatchQueue();
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = v3;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 72) == 1)
  {
    v6 = *(v2 + 88);
    v7 = *(a1 + 40);

    dispatch_async(v6, v7);
  }

  else
  {
    v8 = *(v2 + 80);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(a1 + 32);
      v11 = *(v10 + 80);
      *(v10 + 80) = v9;

      v8 = *(*(a1 + 32) + 80);
    }

    v13 = [*(a1 + 40) copy];
    v12 = _Block_copy(v13);
    [v8 addObject:v12];
  }
}

- (void)getCurrentWorkoutSnapshotWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HDWorkoutManager.m" lineNumber:896 description:{@"Invalid parameter not satisfying: %@", @"completion != NULL"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDWorkoutManager_getCurrentWorkoutSnapshotWithCompletion___block_invoke;
  block[3] = &unk_278614008;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __60__HDWorkoutManager_getCurrentWorkoutSnapshotWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 8) currentWorkoutSnapshot];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)registerCurrentWorkoutObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HDWorkoutManager_registerCurrentWorkoutObserver___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __51__HDWorkoutManager_registerCurrentWorkoutObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 96) registerObserver:*(a1 + 40)];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 96);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HDWorkoutManager_registerCurrentWorkoutObserver___block_invoke_2;
  v6[3] = &unk_27862BB18;
  v6[4] = v3;
  return [v4 notifyObserver:v2 handler:v6];
}

- (id)currentWorkoutSessionServer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__177;
  v10 = __Block_byref_object_dispose__177;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__HDWorkoutManager_currentWorkoutSessionServer__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)diagnosticDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__HDWorkoutManager_diagnosticDescription__block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(queue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

void __41__HDWorkoutManager_diagnosticDescription__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v7 = [v2 clientProcessBundleIdentifier];
    v3 = *(a1 + 40);
    v4 = [*(*(a1 + 32) + 8) client];
    v5 = [v4 process];
    [v3 appendFormat:@"\nWorkout process: %@ (%d)\n", v7, objc_msgSend(v5, "processIdentifier")];

    [*(a1 + 40) appendFormat:@"Workout Session: %@\n", *(*(a1 + 32) + 8)];
  }

  else
  {
    v6 = *(a1 + 40);

    [v6 appendString:@"\nNo currently active workouts."];
  }
}

- (void)profileDidBecomeReady:(id)a3
{
  v4 = [(HDWorkoutManager *)self profile];
  v5 = [v4 daemon];
  v6 = [v5 devicePowerMonitor];
  [v6 addDevicePowerObserver:self queue:0];

  v7 = [(HDWorkoutManager *)self profile];
  v8 = [v7 database];
  [v8 addProtectedDataObserver:self];

  if (self)
  {
    v9 = [(HDWorkoutManager *)self profile];
    v10 = [v9 daemon];
    v11 = [v10 behavior];
    v12 = [v11 supportsWorkouts];

    if (v12)
    {
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v14 = [WeakRetained database];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60__HDWorkoutManager__recoverCurrentWorkoutSessionAfterLaunch__block_invoke;
      v15[3] = &unk_278613968;
      v15[4] = self;
      [v14 performWhenDataProtectedByFirstUnlockIsAvailable:v15];
    }
  }
}

- (void)devicePowerMonitor:(id)a3 primaryPowerSourceIsCharging:(BOOL)a4
{
  v4 = a4;
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_not_V2(self->_queue);
  if (v4)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = self;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Device is now charging; finishing all detached sessions and builders.", buf, 0xCu);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __68__HDWorkoutManager_devicePowerMonitor_primaryPowerSourceIsCharging___block_invoke;
    v8[3] = &unk_27862BAF0;
    v8[4] = self;
    [(HDWorkoutManager *)self _finishAllWorkoutsWithExclusionHandler:v8];
    [(HDWorkoutManager *)self _finishAllDetachedWorkoutBuilders];
  }

  v7 = *MEMORY[0x277D85DE8];
}

id __68__HDWorkoutManager_devicePowerMonitor_primaryPowerSourceIsCharging___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 32) allValues];
  v2 = [v1 hk_mapToSet:&__block_literal_global_417_1];

  return v2;
}

id __68__HDWorkoutManager_devicePowerMonitor_primaryPowerSourceIsCharging___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 taskServer];
  if (v3)
  {
    v4 = [v2 identifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleBiometricLockout
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HDWorkoutManager__handleBiometricLockout__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __43__HDWorkoutManager__handleBiometricLockout__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9B8] hk_error:6 description:@"Health data became innaccessible"];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(*(a1 + 32) + 32) allValues];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) didResignCurrentWithError:v2];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)hk_fakeLapEventWithDate:(id)a3 strokeStyle:(int64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HDWorkoutManager_hk_fakeLapEventWithDate_strokeStyle___block_invoke;
  block[3] = &unk_278614E78;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

void __56__HDWorkoutManager_hk_fakeLapEventWithDate_strokeStyle___block_invoke(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 8) identifier];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCDE58]);
    v4 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:a1[5] duration:0.0];
    v9 = *MEMORY[0x277CCC518];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v3 initWithEventType:5 sessionId:v2 dateInterval:v4 metadata:v6];

    if (v7)
    {
      [*(a1[4] + 8) generateEvent:v7];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)hk_fakeStopEventWithDate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HDWorkoutManager_hk_fakeStopEventWithDate___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __45__HDWorkoutManager_hk_fakeStopEventWithDate___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) identifier];
  if (v2)
  {
    v6 = v2;
    v3 = objc_alloc(MEMORY[0x277CCDE58]);
    v4 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:*(a1 + 40) duration:0.0];
    v5 = [v3 initWithEventType:1 sessionId:v6 dateInterval:v4 metadata:0];

    if (v5)
    {
      [*(*(a1 + 32) + 8) generateEvent:v5];
    }

    v2 = v6;
  }
}

- (void)unitTest_smoothRouteForTask:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HDWorkoutManager_unitTest_smoothRouteForTask_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __59__HDWorkoutManager_unitTest_smoothRouteForTask_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 160);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__HDWorkoutManager_unitTest_smoothRouteForTask_completion___block_invoke_2;
  v3[3] = &unk_27862BB60;
  v4 = *(a1 + 48);
  [v2 unitTest_smoothRouteForTask:v1 completion:v3];
}

- (id)unitTest_currentWorkoutSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__177;
  v10 = __Block_byref_object_dispose__177;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__HDWorkoutManager_unitTest_currentWorkoutSession__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)workoutSession:(id)a3 didChangeToState:(int64_t)a4 fromState:(int64_t)a5 date:(id)a6
{
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  dispatch_assert_queue_V2(self->_queue);
  currentWorkout = self->_currentWorkout;
  if (currentWorkout != v8)
  {
    if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      [(HDWorkoutManager *)self _queue_beginTransitionToWorkoutSession:v8];
      goto LABEL_10;
    }

    if (a4 != 17)
    {
      goto LABEL_10;
    }

LABEL_9:
    [(HDWorkoutManager *)self _queue_sessionFinished:v8];
    goto LABEL_10;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDWorkoutSessionServer state](currentWorkout, "state")}];
  v20 = @"state";
  v21[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v12 = kHDEventNameWorkoutSession;
  v13 = [(HDWorkoutSessionServer *)self->_currentWorkout client];
  HDPowerLogForClient(v12, v13, v11);

  [(HDWorkoutManager *)self _postWorkoutUpdatedNotification];
  if (a4 == 17)
  {
    goto LABEL_9;
  }

  if (self->_nextWorkout)
  {
    v14 = [MEMORY[0x277CCA9B8] hk_error:8 description:@"Another session is starting"];
    [(HDWorkoutSessionServer *)v8 didResignCurrentWithError:v14];
  }

  currentWorkoutObservers = self->_currentWorkoutObservers;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__HDWorkoutManager_workoutSession_didChangeToState_fromState_date___block_invoke;
  v17[3] = &unk_27862BB88;
  v17[4] = self;
  v18 = v8;
  v19 = a4;
  [(HKObserverSet *)currentWorkoutObservers notifyObservers:v17];

LABEL_10:
  v16 = *MEMORY[0x277D85DE8];
}

void __67__HDWorkoutManager_workoutSession_didChangeToState_fromState_date___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 workoutManager:a1[4] currentWorkout:a1[5] didChangeToState:a1[6]];
  }
}

- (void)workoutSession:(id)a3 didUpdateDataAccumulator:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_currentWorkout == v6)
  {
    currentWorkoutObservers = self->_currentWorkoutObservers;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__HDWorkoutManager_workoutSession_didUpdateDataAccumulator___block_invoke;
    v9[3] = &unk_27862BBB0;
    v9[4] = self;
    v10 = v6;
    v11 = v7;
    [(HKObserverSet *)currentWorkoutObservers notifyObservers:v9];
  }
}

void __60__HDWorkoutManager_workoutSession_didUpdateDataAccumulator___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 workoutManager:a1[4] currentWorkout:a1[5] didUpdateDataAccumulator:a1[6]];
  }
}

- (void)_didCreateMirroredSessionServer:(id)a3
{
  v4 = a3;
  [(HDWorkoutManager *)self _setupNewSessionServer:v4 withTaskServer:0];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HDWorkoutManager__didCreateMirroredSessionServer___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __51__HDWorkoutManager__postWorkoutUpdatedNotification__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"HDWorkoutManagerStateDidChange" object:0];
}

- (BOOL)isInHeartRateRecovery
{
  dispatch_assert_queue_not_V2(self->_queue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HDWorkoutManager_isInHeartRateRecovery__block_invoke;
  block[3] = &unk_278621FD8;
  block[4] = self;
  block[5] = &v11;
  block[6] = &v7;
  dispatch_sync(queue, block);
  v4 = 0;
  if (*(v12 + 24) == 1)
  {
    v4 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

uint64_t __41__HDWorkoutManager_isInHeartRateRecovery__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) state] == 16 || objc_msgSend(*(a1[4] + 8), "state") == 15;
  *(*(a1[5] + 8) + 24) = v2;
  result = [*(a1[4] + 8) sessionType];
  *(*(a1[6] + 8) + 24) = result == 0;
  return result;
}

- (void)endHeartRateRecovery
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HDWorkoutManager_endHeartRateRecovery__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)currentActivityRequiresExtendedMode
{
  v2 = [(HDWorkoutManager *)self currentWorkoutConfiguration];
  v3 = [v2 shouldUseExtendedMode];

  return v3;
}

- (void)tearDownMirroredWorkoutSession:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Tearing down mirrored Session server %{public}@.", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HDWorkoutManager_tearDownMirroredWorkoutSession___block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end