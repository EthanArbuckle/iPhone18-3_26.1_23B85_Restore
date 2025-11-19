@interface HDWorkoutSessionTaskServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
+ (uint64_t)_canRecoverWorkoutSessionForConfiguration:(void *)a3 client:(void *)a4 error:;
- (HDWorkoutDataAccumulator)workoutDataAccumulator;
- (uint64_t)_setupSessionServer;
- (void)_fetchOrSetupServerWithCompletion:(uint64_t)a1;
- (void)addMetadata:(id)a3 dataSource:(id)a4;
- (void)addOtherSamples:(id)a3 dataSource:(id)a4;
- (void)addQuantities:(id)a3 dataSource:(id)a4;
- (void)addWorkoutEvents:(id)a3 dataSource:(id)a4;
- (void)connectionConfigured;
- (void)connectionInvalidated;
- (void)didBeginActivity:(id)a3 dataSource:(id)a4;
- (void)didDisconnectFromRemoteWithError:(id)a3;
- (void)didEndActivity:(id)a3 dataSource:(id)a4;
- (void)didReceiveDataFromRemoteWorkoutSession:(id)a3 completion:(id)a4;
- (void)didSuggestActivity:(id)a3 dataSource:(id)a4;
- (void)didSyncCurrentActivity:(id)a3;
- (void)didSyncStateEvent:(int64_t)a3 date:(id)a4;
- (void)didSyncTransitionToNewState:(int64_t)a3 date:(id)a4;
- (void)didUpdateGeneratedTypesWithConfiguration:(id)a3 sampleTypes:(id)a4 dataSource:(id)a5 didUpdateActivity:(BOOL)a6 date:(id)a7;
- (void)remoteSessionDidRecover;
- (void)remote_beginNewActivityWithConfiguration:(id)a3 date:(id)a4 metadata:(id)a5 completion:(id)a6;
- (void)remote_enableAutomaticDetectionForActivityConfigurations:(id)a3 completion:(id)a4;
- (void)remote_endCurrentActivityOnDate:(id)a3 completion:(id)a4;
- (void)remote_recoverAllActiveSessionsWithStates:(id)a3 date:(id)a4 completion:(id)a5;
- (void)remote_recoverWithCompletion:(id)a3;
- (void)remote_runSetupPostClientMirroringStartHandlerWithCompletion:(id)a3;
- (void)remote_sendDataToRemoteWorkoutSession:(id)a3 completion:(id)a4;
- (void)remote_setTargetState:(int64_t)a3 date:(id)a4 completion:(id)a5;
- (void)remote_setupMirroredSessionWithHandler:(id)a3;
- (void)remote_setupTaskServerWithCompletion:(id)a3;
- (void)remote_startMirroringToCompanionDeviceWithCompletion:(id)a3;
- (void)remote_stopMirroringToCompanionDeviceWithCompletion:(id)a3;
- (void)remote_syncSessionEvent:(int64_t)a3 date:(id)a4;
- (void)setAssociatedWorkoutBuilderEntity:(id)a3;
- (void)setWorkoutDataAccumulator:(id)a3;
- (void)setupSessionServer:(id)a3;
- (void)updateWorkoutConfiguration:(id)a3 dataSource:(id)a4;
- (void)workoutDataDestination:(id)a3 didInsertEvent:(id)a4;
- (void)workoutDataDestination:(id)a3 didUpdateConfiguration:(id)a4;
- (void)workoutDataDestination:(id)a3 requestsFinalDataFrom:(id)a4 to:(id)a5 completion:(id)a6;
- (void)workoutSession:(id)a3 didChangeToState:(int64_t)a4 fromState:(int64_t)a5 date:(id)a6;
- (void)workoutSession:(id)a3 didFailWithError:(id)a4;
@end

@implementation HDWorkoutSessionTaskServer

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 sessionUUID];

  if (!v10)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:@"Missing session UUID"];
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v11 = [v8 workoutConfiguration];
  v12 = [v11 validateIgnoringDeviceSupport:0 error:a5];

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = [v8 workoutConfiguration];
  v14 = [v13 fitnessPlusCatalogWorkoutId];

  if (v14)
  {
    if (![v9 hasRequiredEntitlement:*MEMORY[0x277CCC8B0] error:a5])
    {
      goto LABEL_7;
    }
  }

  v15 = [(HDWorkoutSessionTaskServer *)a1 _canRecoverWorkoutSessionForConfiguration:v8 client:v9 error:a5];
LABEL_8:

  return v15;
}

+ (uint64_t)_canRecoverWorkoutSessionForConfiguration:(void *)a3 client:(void *)a4 error:
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  if ([v6 sessionType] != 1)
  {
    v9 = [v7 profile];
    v10 = [v9 workoutManager];
    v11 = [v6 sessionUUID];
    v16 = 0;
    v12 = [v10 canRecoverWorkoutSessionServerWithIdentifier:v11 error:&v16];
    v13 = v16;

    if ((v12 & 1) != 0 || !v13)
    {
      if (v12 & 1 | (([v6 requiresRecovery] & 1) == 0))
      {
        v8 = 1;
        goto LABEL_12;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Session requires recovery but no matching session record was found."];
    }

    else
    {
      if (a4)
      {
        v14 = v13;
        v8 = 0;
        *a4 = v13;
LABEL_12:

        goto LABEL_13;
      }

      _HKLogDroppedError();
    }

    v8 = 0;
    goto LABEL_12;
  }

  v8 = 1;
LABEL_13:

  return v8;
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([(HDWorkoutSessionTaskServer *)a1 _canRecoverWorkoutSessionForConfiguration:v13 client:v14 error:a7])
  {
    v16 = [v14 profile];
    v17 = [v16 sourceManager];

    v18 = [v17 createOrUpdateSourceForClient:v14 error:a7];
    if (v18)
    {
      v19 = [v17 clientSourceForSourceEntity:v18 error:a7];
      if (v19)
      {
        v20 = [HDWorkoutSessionTaskServer alloc];
        v21 = v13;
        v22 = v19;
        if (v20)
        {
          v29.receiver = v20;
          v29.super_class = HDWorkoutSessionTaskServer;
          v23 = objc_msgSendSuper2(&v29, sel_initWithUUID_configuration_client_delegate_, v12, v21, v14, v15);
          v20 = v23;
          if (v23)
          {
            v23->_lock._os_unfair_lock_opaque = 0;
            v24 = [v21 copy];
            taskConfiguration = v20->_taskConfiguration;
            v20->_taskConfiguration = v24;

            v26 = [v22 copy];
            clientSource = v20->_clientSource;
            v20->_clientSource = v26;
          }
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)connectionConfigured
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC330];
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    sessionServer = self->_sessionServer;
    v9 = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = sessionServer;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection configured with session server: %{public}@", &v9, 0x16u);
  }

  _HKInitializeLogging();
  v6 = [objc_alloc(MEMORY[0x277CCD2B0]) initWithProcessor:self sourceProtocol:&unk_283CBA250 destinationProtocol:&unk_283CD7C50 loggingCategory:*v3];
  workoutDataFlowLink = self->_workoutDataFlowLink;
  self->_workoutDataFlowLink = v6;

  if (self->_sessionServer)
  {
    [(HDWorkoutSessionTaskServer *)self _setupSessionServer];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_setupSessionServer
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 64);
    v3 = [*(result + 56) workoutDataFlowLink];
    [v2 addSource:v3];

    [*(v1 + 56) setTaskServer:v1];
    [*(v1 + 56) addObserver:v1 queue:0];
    result = [*(v1 + 56) sessionType];
    if (!result)
    {
      result = [*(v1 + 56) workoutDataDestinationRequestGeneratedTypes:v1];
    }

    if (*(v1 + 72))
    {
      v4 = *(v1 + 56);

      return [v4 setAssociatedWorkoutBuilderEntity:?];
    }
  }

  return result;
}

- (void)setupSessionServer:(id)a3
{
  objc_storeStrong(&self->_sessionServer, a3);

  [(HDWorkoutSessionTaskServer *)self _setupSessionServer];
}

- (void)setAssociatedWorkoutBuilderEntity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  builderEntity = self->_builderEntity;
  self->_builderEntity = v4;
  v7 = v4;

  v6 = self->_sessionServer;
  os_unfair_lock_unlock(&self->_lock);
  [(HDWorkoutSessionServer *)v6 setAssociatedWorkoutBuilderEntity:v7];
}

- (void)setWorkoutDataAccumulator:(id)a3
{
  obj = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_accumulator, obj);
  v4 = self->_sessionServer;
  os_unfair_lock_unlock(&self->_lock);
  [(HDWorkoutSessionServer *)v4 setWorkoutDataAccumulator:obj];
}

- (void)remote_setupTaskServerWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__HDWorkoutSessionTaskServer_remote_setupTaskServerWithCompletion___block_invoke;
  v6[3] = &unk_27861A2B0;
  v7 = v4;
  v5 = v4;
  [(HDWorkoutSessionTaskServer *)self _fetchOrSetupServerWithCompletion:v6];
}

- (void)_fetchOrSetupServerWithCompletion:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_assert_not_owner((a1 + 40));
    os_unfair_lock_lock((a1 + 40));
    v4 = *(a1 + 56);
    os_unfair_lock_unlock((a1 + 40));
    if (v4)
    {
      v3[2](v3, v4, 0);
    }

    else
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __64__HDWorkoutSessionTaskServer__fetchOrSetupServerWithCompletion___block_invoke;
      aBlock[3] = &unk_27861A3C8;
      aBlock[4] = a1;
      v5 = _Block_copy(aBlock);
      v6 = [*(a1 + 48) sessionType];
      v7 = [a1 profile];
      v8 = [v7 workoutManager];
      if (v6 == 1)
      {
        v9 = [a1 taskUUID];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __64__HDWorkoutSessionTaskServer__fetchOrSetupServerWithCompletion___block_invoke_451;
        v12[3] = &unk_27861A3F0;
        v13 = v5;
        v14 = v3;
        [v8 mirroredSessionServerWithUUID:v9 completion:v12];

        v4 = 0;
      }

      else
      {
        v10 = [*(a1 + 48) workoutConfiguration];
        v11 = [a1 taskUUID];
        v4 = [v8 sessionServerWithConfiguration:v10 sessionUUID:v11 clientBundleIdentifier:0 taskServer:a1];

        (*(v5 + 2))(v5, v4);
        v3[2](v3, v4, 0);
      }
    }
  }
}

- (void)remote_setupMirroredSessionWithHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__HDWorkoutSessionTaskServer_remote_setupMirroredSessionWithHandler___block_invoke;
  v6[3] = &unk_27861A328;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HDWorkoutSessionTaskServer *)self _fetchOrSetupServerWithCompletion:v6];
}

void __69__HDWorkoutSessionTaskServer_remote_setupMirroredSessionWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = MEMORY[0x277CCDE70];
    v7 = a3;
    v8 = [v6 alloc];
    [v5 state];
    v9 = HKWorkoutSessionStateFromServerState();
    v10 = [v5 startDate];
    v11 = [v5 stopDate];
    v12 = [v5 currentActivity];
    v13 = [v8 _initWithSessionState:v9 startDate:v10 endDate:v11 currentActivity:v12];

    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = v14;
      v20 = 138543618;
      v21 = v15;
      v22 = 2048;
      v23 = [v13 sessionState];
      _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Setting up mirrored session server with session state:%ld", &v20, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v17 = *(a1 + 40);
    v18 = *(v17 + 16);
    v13 = a3;
    v18(v17, 0, v13);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)remote_runSetupPostClientMirroringStartHandlerWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __91__HDWorkoutSessionTaskServer_remote_runSetupPostClientMirroringStartHandlerWithCompletion___block_invoke;
  v6[3] = &unk_27861A2B0;
  v7 = v4;
  v5 = v4;
  [(HDWorkoutSessionTaskServer *)self _fetchOrSetupServerWithCompletion:v6];
}

uint64_t __91__HDWorkoutSessionTaskServer_remote_runSetupPostClientMirroringStartHandlerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  [a2 runSetupPostClientMirroringStartHandler];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)remote_setTargetState:(int64_t)a3 date:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HDWorkoutSessionTaskServer_remote_setTargetState_date_completion___block_invoke;
  v12[3] = &unk_27861A2D8;
  v14 = v9;
  v15 = a3;
  v13 = v8;
  v10 = v9;
  v11 = v8;
  [(HDWorkoutSessionTaskServer *)self _fetchOrSetupServerWithCompletion:v12];
}

void __68__HDWorkoutSessionTaskServer_remote_setTargetState_date_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = a1[6];
    v8 = a1[4];
    v10 = v5;
    [a2 setTargetState:v7 date:v8 error:&v10];
    v9 = v10;

    (*(a1[5] + 16))();
    v6 = v9;
  }

  else
  {
    (*(a1[5] + 16))();
  }
}

- (void)remote_syncSessionEvent:(int64_t)a3 date:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HDWorkoutSessionTaskServer_remote_syncSessionEvent_date___block_invoke;
  v8[3] = &unk_27861A300;
  v10 = self;
  v11 = a3;
  v9 = v6;
  v7 = v6;
  [(HDWorkoutSessionTaskServer *)self _fetchOrSetupServerWithCompletion:v8];
}

void __59__HDWorkoutSessionTaskServer_remote_syncSessionEvent_date___block_invoke(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = a1[6];
    v4 = a1[4];
    v5 = *MEMORY[0x277D85DE8];

    [a2 syncSessionEvent:v3 date:v4];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v8 = a1[5];
      v9 = 138543362;
      v10 = v8;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to sync session event because there is no session server", &v9, 0xCu);
    }

    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)remote_recoverWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HDWorkoutSessionTaskServer_remote_recoverWithCompletion___block_invoke;
  v6[3] = &unk_27861A328;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HDWorkoutSessionTaskServer *)self _fetchOrSetupServerWithCompletion:v6];
}

void __59__HDWorkoutSessionTaskServer_remote_recoverWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __59__HDWorkoutSessionTaskServer_remote_recoverWithCompletion___block_invoke_2;
    v15[3] = &unk_2786138D0;
    v15[4] = v4;
    v5 = [v4 remoteObjectProxyWithErrorHandler:v15];
    [v3 state];
    v6 = HKWorkoutSessionStateFromServerState();
    v7 = [v3 startDate];
    if (!v7)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v17 = v3;
        _os_log_fault_impl(&dword_228986000, v8, OS_LOG_TYPE_FAULT, "Session server %{public}@ start date is nil", buf, 0xCu);
      }
    }

    [v5 client_didChangeToState:v6 date:v7];
    v9 = [v3 startDate];
    v10 = [v3 stopDate];
    [v5 client_didUpdateStartDate:v9 endDate:v10];

    v11 = [v3 generatedTypes];
    [v5 client_didUpdateGeneratedTypes:v11];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__HDWorkoutSessionTaskServer_remote_recoverWithCompletion___block_invoke_418;
    v13[3] = &unk_2786130D8;
    v14 = *(a1 + 40);
    [v5 client_synchronizeWithCompletion:v13];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __59__HDWorkoutSessionTaskServer_remote_recoverWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of start date: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)remote_recoverAllActiveSessionsWithStates:(id)a3 date:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = self;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Attempting to recover all active sessions", buf, 0xCu);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__HDWorkoutSessionTaskServer_remote_recoverAllActiveSessionsWithStates_date_completion___block_invoke;
  v16[3] = &unk_27861A350;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  [(HDWorkoutSessionTaskServer *)self _fetchOrSetupServerWithCompletion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __88__HDWorkoutSessionTaskServer_remote_recoverAllActiveSessionsWithStates_date_completion___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    (*(*(a1 + 56) + 16))();
    goto LABEL_8;
  }

  v4 = [*(a1 + 32) profile];
  v5 = [v4 workoutManager];
  [v5 recoverAllActiveWorkoutSessionServersWithStates:*(a1 + 40)];

  [v3 state];
  v6 = HKWorkoutSessionStateFromServerState();
  v7 = [v3 startDate];
  v8 = *(a1 + 40);
  v9 = [v3 identifier];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = *(a1 + 40);
  v12 = [v3 identifier];
  v13 = [v11 objectForKeyedSubscript:v12];
  v14 = [v13 integerValue];

  if (v6 != v14)
  {
    v20 = *(a1 + 48);
    v28 = 0;
    v21 = [v3 setTargetState:v14 date:v20 error:&v28];
    v16 = v28;
    if ((v21 & 1) == 0)
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 32);
        *buf = 138543874;
        v30 = v24;
        v31 = 2114;
        v32 = v3;
        v33 = 2114;
        v34 = v16;
        _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Failed to set target state for %{public}@ upon recovery with error %{public}@", buf, 0x20u);
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_6;
    }

    v22 = *(a1 + 48);

    v7 = v22;
  }

  else
  {
LABEL_4:
    v14 = v6;
  }

  v15 = *(a1 + 32);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __88__HDWorkoutSessionTaskServer_remote_recoverAllActiveSessionsWithStates_date_completion___block_invoke_420;
  v27[3] = &unk_2786138D0;
  v27[4] = v15;
  v16 = [v15 remoteObjectProxyWithErrorHandler:v27];
  [v16 client_didChangeToState:v14 date:v7];
  v17 = [v3 startDate];
  v18 = [v3 stopDate];
  [v16 client_didUpdateStartDate:v17 endDate:v18];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __88__HDWorkoutSessionTaskServer_remote_recoverAllActiveSessionsWithStates_date_completion___block_invoke_421;
  v25[3] = &unk_2786130D8;
  v26 = *(a1 + 56);
  [v16 client_synchronizeWithCompletion:v25];

LABEL_6:
LABEL_8:

  v19 = *MEMORY[0x277D85DE8];
}

void __88__HDWorkoutSessionTaskServer_remote_recoverAllActiveSessionsWithStates_date_completion___block_invoke_420(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of start date: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)remote_beginNewActivityWithConfiguration:(id)a3 date:(id)a4 metadata:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__HDWorkoutSessionTaskServer_remote_beginNewActivityWithConfiguration_date_metadata_completion___block_invoke;
  v18[3] = &unk_27861A350;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  [(HDWorkoutSessionTaskServer *)self _fetchOrSetupServerWithCompletion:v18];
}

void __96__HDWorkoutSessionTaskServer_remote_beginNewActivityWithConfiguration_date_metadata_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v11 = v5;
    [a2 beginNewActivityWithConfiguration:v7 date:v8 metadata:v9 error:&v11];
    v10 = v11;

    v6 = v10;
  }

  (*(a1[7] + 16))();
}

- (void)remote_endCurrentActivityOnDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__HDWorkoutSessionTaskServer_remote_endCurrentActivityOnDate_completion___block_invoke;
  v10[3] = &unk_27861A328;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(HDWorkoutSessionTaskServer *)self _fetchOrSetupServerWithCompletion:v10];
}

void __73__HDWorkoutSessionTaskServer_remote_endCurrentActivityOnDate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v9 = v5;
    [a2 endCurrentActivityOnDate:v7 error:&v9];
    v8 = v9;

    v6 = v8;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)remote_enableAutomaticDetectionForActivityConfigurations:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __98__HDWorkoutSessionTaskServer_remote_enableAutomaticDetectionForActivityConfigurations_completion___block_invoke;
  v10[3] = &unk_27861A328;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(HDWorkoutSessionTaskServer *)self _fetchOrSetupServerWithCompletion:v10];
}

void __98__HDWorkoutSessionTaskServer_remote_enableAutomaticDetectionForActivityConfigurations_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v9 = v5;
    [a2 enableAutomaticDetectionForActivityConfigurations:v7 error:&v9];
    v8 = v9;

    v6 = v8;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)remote_startMirroringToCompanionDeviceWithCompletion:(id)a3
{
  v4 = a3;
  if ([(HDWorkoutSessionTaskServer *)self sessionType])
  {
    v5 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot start mirroring from a mirrored session"];
    v4[2](v4, 0, v5);
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __83__HDWorkoutSessionTaskServer_remote_startMirroringToCompanionDeviceWithCompletion___block_invoke;
    v6[3] = &unk_27861A2B0;
    v7 = v4;
    [(HDWorkoutSessionTaskServer *)self _fetchOrSetupServerWithCompletion:v6];
  }
}

void __83__HDWorkoutSessionTaskServer_remote_startMirroringToCompanionDeviceWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    [a2 startMirroringToCompanionDeviceWithCompletion:*(a1 + 32)];
    v5 = v7;
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Session server is nil."];

    (*(*(a1 + 32) + 16))();
    v5 = v6;
  }
}

- (void)remote_stopMirroringToCompanionDeviceWithCompletion:(id)a3
{
  v4 = a3;
  if ([(HDWorkoutSessionTaskServer *)self sessionType])
  {
    v5 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot stop mirroring from a mirrored session"];
    v4[2](v4, 0, v5);
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __82__HDWorkoutSessionTaskServer_remote_stopMirroringToCompanionDeviceWithCompletion___block_invoke;
    v6[3] = &unk_27861A2B0;
    v7 = v4;
    [(HDWorkoutSessionTaskServer *)self _fetchOrSetupServerWithCompletion:v6];
  }
}

void __82__HDWorkoutSessionTaskServer_remote_stopMirroringToCompanionDeviceWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    [a2 stopMirroringToCompanionDeviceWithCompletion:*(a1 + 32)];
    v5 = v7;
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Session server is nil."];

    (*(*(a1 + 32) + 16))();
    v5 = v6;
  }
}

- (void)remote_sendDataToRemoteWorkoutSession:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HDWorkoutSessionTaskServer_remote_sendDataToRemoteWorkoutSession_completion___block_invoke;
  v10[3] = &unk_27861A328;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(HDWorkoutSessionTaskServer *)self _fetchOrSetupServerWithCompletion:v10];
}

void __79__HDWorkoutSessionTaskServer_remote_sendDataToRemoteWorkoutSession_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    [a2 sendDataToRemoteWorkoutSession:*(a1 + 32) completion:*(a1 + 40)];
    v5 = v7;
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Session server is nil."];

    (*(*(a1 + 40) + 16))();
    v5 = v6;
  }
}

- (void)workoutSession:(id)a3 didChangeToState:(int64_t)a4 fromState:(int64_t)a5 date:(id)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__HDWorkoutSessionTaskServer_workoutSession_didChangeToState_fromState_date___block_invoke;
  v16[3] = &unk_2786138D0;
  v16[4] = self;
  v10 = a3;
  v11 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v16];
  v12 = [v10 startDate];
  v13 = [v10 stopDate];

  [v11 client_didUpdateStartDate:v12 endDate:v13];
  if (a4 <= 0x11 && ((1 << a4) & 0x3C5C2) != 0)
  {
    [v11 client_didChangeToState:HKWorkoutSessionStateFromServerState() date:v9];
    if (!v9)
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v18 = self;
        _os_log_fault_impl(&dword_228986000, v14, OS_LOG_TYPE_FAULT, "Session task server %{public}@ state change date is nil", buf, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __77__HDWorkoutSessionTaskServer_workoutSession_didChangeToState_fromState_date___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of state change: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)workoutSession:(id)a3 didFailWithError:(id)a4
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HDWorkoutSessionTaskServer_workoutSession_didFailWithError___block_invoke;
  v7[3] = &unk_2786138D0;
  v7[4] = self;
  v5 = a4;
  v6 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v7];
  [v6 client_didFailWithError:v5];
}

void __62__HDWorkoutSessionTaskServer_workoutSession_didFailWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of failure: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (HDWorkoutDataAccumulator)workoutDataAccumulator
{
  if (self)
  {
    os_unfair_lock_lock(&self->_lock);
    WeakRetained = objc_loadWeakRetained(&self->_accumulator);
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (void)addQuantities:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HDWorkoutSessionTaskServer_addQuantities_dataSource___block_invoke;
  v8[3] = &unk_278613880;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v8];
}

- (void)addOtherSamples:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HDWorkoutSessionTaskServer_addOtherSamples_dataSource___block_invoke;
  v8[3] = &unk_278613880;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v8];
}

- (void)addWorkoutEvents:(id)a3 dataSource:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__HDWorkoutSessionTaskServer_addWorkoutEvents_dataSource___block_invoke;
  v14[3] = &unk_2786138D0;
  v14[4] = self;
  v6 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v14];
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = self;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Notifying client of generated event", buf, 0xCu);
  }

  [v6 client_didGenerateEvents:v5];
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__HDWorkoutSessionTaskServer_addWorkoutEvents_dataSource___block_invoke_432;
  v11[3] = &unk_278613880;
  v12 = v5;
  v13 = self;
  v9 = v5;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __58__HDWorkoutSessionTaskServer_addWorkoutEvents_dataSource___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of generated events: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)addMetadata:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HDWorkoutSessionTaskServer_addMetadata_dataSource___block_invoke;
  v8[3] = &unk_278613880;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v8];
}

- (void)updateWorkoutConfiguration:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HDWorkoutSessionTaskServer_updateWorkoutConfiguration_dataSource___block_invoke;
  v12[3] = &unk_2786138D0;
  v12[4] = self;
  v6 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v12];
  [v6 client_didUpdateWorkoutConfiguration:v5];
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__HDWorkoutSessionTaskServer_updateWorkoutConfiguration_dataSource___block_invoke_433;
  v9[3] = &unk_278613880;
  v10 = v5;
  v11 = self;
  v8 = v5;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v9];
}

void __68__HDWorkoutSessionTaskServer_updateWorkoutConfiguration_dataSource___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of workout configuration update: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didBeginActivity:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HDWorkoutSessionTaskServer_didBeginActivity_dataSource___block_invoke;
  v13[3] = &unk_2786138D0;
  v13[4] = self;
  v6 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v13];
  v7 = [v5 startDate];
  [v6 client_didBeginActivity:v5 date:v7];

  workoutDataFlowLink = self->_workoutDataFlowLink;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__HDWorkoutSessionTaskServer_didBeginActivity_dataSource___block_invoke_434;
  v10[3] = &unk_278613880;
  v11 = v5;
  v12 = self;
  v9 = v5;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v10];
}

void __58__HDWorkoutSessionTaskServer_didBeginActivity_dataSource___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of workout configuration update: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didEndActivity:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__HDWorkoutSessionTaskServer_didEndActivity_dataSource___block_invoke;
  v13[3] = &unk_2786138D0;
  v13[4] = self;
  v6 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v13];
  v7 = [v5 endDate];
  [v6 client_didEndActivity:v5 date:v7];

  workoutDataFlowLink = self->_workoutDataFlowLink;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HDWorkoutSessionTaskServer_didEndActivity_dataSource___block_invoke_435;
  v10[3] = &unk_278613880;
  v11 = v5;
  v12 = self;
  v9 = v5;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v10];
}

void __56__HDWorkoutSessionTaskServer_didEndActivity_dataSource___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of workout configuration update: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didSuggestActivity:(id)a3 dataSource:(id)a4
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HDWorkoutSessionTaskServer_didSuggestActivity_dataSource___block_invoke;
  v9[3] = &unk_2786138D0;
  v9[4] = self;
  v5 = a3;
  v6 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v9];
  v7 = [v5 workoutConfiguration];
  v8 = [v5 startDate];

  [v6 client_didSuggestWorkoutConfiguration:v7 date:v8];
}

void __60__HDWorkoutSessionTaskServer_didSuggestActivity_dataSource___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of suggested workout configuration : %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveDataFromRemoteWorkoutSession:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __80__HDWorkoutSessionTaskServer_didReceiveDataFromRemoteWorkoutSession_completion___block_invoke;
  v15 = &unk_27861A378;
  v16 = self;
  v8 = v7;
  v17 = v8;
  v9 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:&v12];
  v10 = v9;
  if (v9)
  {
    [v9 client_didReceiveDataFromRemoteWorkoutSession:v6 completion:{v8, v12, v13, v14, v15, v16}];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hk_error:3 description:{@"No client to notify of received data from remote session", v12, v13, v14, v15, v16}];
    (*(v8 + 2))(v8, 0, v11);
  }
}

void __80__HDWorkoutSessionTaskServer_didReceiveDataFromRemoteWorkoutSession_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to notify client of received data from remote session: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didSyncStateEvent:(int64_t)a3 date:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__HDWorkoutSessionTaskServer_didSyncStateEvent_date___block_invoke;
  v10[3] = &unk_2786138D0;
  v10[4] = self;
  v6 = a4;
  v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v10];
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = self;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Notifying client of synced state event: %ld ", buf, 0x16u);
  }

  [v7 client_didSyncSessionEvent:a3 date:v6];

  v9 = *MEMORY[0x277D85DE8];
}

void __53__HDWorkoutSessionTaskServer_didSyncStateEvent_date___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to notify client of synced state event: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didSyncTransitionToNewState:(int64_t)a3 date:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__HDWorkoutSessionTaskServer_didSyncTransitionToNewState_date___block_invoke;
  v16[3] = &unk_2786138D0;
  v16[4] = self;
  v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v16];
  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC330];
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = HKWorkoutSessionStateToString();
    *buf = 138543618;
    v18 = self;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Notifying client of state: %{public}@ update from remote session", buf, 0x16u);
  }

  if (!v6)
  {
    _HKInitializeLogging();
    v12 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_FAULT))
    {
      v14 = v12;
      v15 = HKWorkoutSessionStateToString();
      *buf = 138543618;
      v18 = self;
      v19 = 2114;
      v20 = v15;
      _os_log_fault_impl(&dword_228986000, v14, OS_LOG_TYPE_FAULT, "Task server %{public}@ received a nil state change from mirrored session for state: %{public}@", buf, 0x16u);
    }
  }

  [v7 client_didChangeToState:a3 date:v6];

  v13 = *MEMORY[0x277D85DE8];
}

void __63__HDWorkoutSessionTaskServer_didSyncTransitionToNewState_date___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to notify client of state update from remote session : %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didSyncCurrentActivity:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __53__HDWorkoutSessionTaskServer_didSyncCurrentActivity___block_invoke;
  v10 = &unk_278619460;
  v11 = self;
  v12 = v4;
  v5 = v4;
  v6 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:&v7];
  [v6 client_didSyncCurrentActivity:{v5, v7, v8, v9, v10, v11}];
}

void __53__HDWorkoutSessionTaskServer_didSyncCurrentActivity___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to notify client of synced activity: %{public}@, error: %{public}@", &v8, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)remoteSessionDidRecover
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__HDWorkoutSessionTaskServer_remoteSessionDidRecover__block_invoke;
  v3[3] = &unk_2786138D0;
  v3[4] = self;
  v2 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v3];
  [v2 client_remoteSessionDidRecover];
}

void __53__HDWorkoutSessionTaskServer_remoteSessionDidRecover__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to notify client of remote session recovery: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didDisconnectFromRemoteWithError:(id)a3
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HDWorkoutSessionTaskServer_didDisconnectFromRemoteWithError___block_invoke;
  v7[3] = &unk_2786138D0;
  v7[4] = self;
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HDWorkoutSessionTaskServer_didDisconnectFromRemoteWithError___block_invoke_439;
  v6[3] = &unk_2786130B0;
  v6[4] = self;
  [v5 client_didDisconnectFromRemoteWithError:v4 completion:v6];
}

void __63__HDWorkoutSessionTaskServer_didDisconnectFromRemoteWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to notify client of remote session disconnection: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __63__HDWorkoutSessionTaskServer_didDisconnectFromRemoteWithError___block_invoke_439(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v10 = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Notified client of remote session disconnection with success: %{public}@, error: %{public}@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateGeneratedTypesWithConfiguration:(id)a3 sampleTypes:(id)a4 dataSource:(id)a5 didUpdateActivity:(BOOL)a6 date:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __117__HDWorkoutSessionTaskServer_didUpdateGeneratedTypesWithConfiguration_sampleTypes_dataSource_didUpdateActivity_date___block_invoke;
  v20[3] = &unk_27861A3A0;
  v21 = v11;
  v22 = v12;
  v25 = a6;
  v23 = self;
  v24 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v20];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __117__HDWorkoutSessionTaskServer_didUpdateGeneratedTypesWithConfiguration_sampleTypes_dataSource_didUpdateActivity_date___block_invoke_2;
  v19[3] = &unk_2786138D0;
  v19[4] = self;
  v18 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v19];
  [v18 client_didUpdateGeneratedTypes:v16];
}

void __117__HDWorkoutSessionTaskServer_didUpdateGeneratedTypesWithConfiguration_sampleTypes_dataSource_didUpdateActivity_date___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdateGeneratedTypesWithConfiguration:*(a1 + 32) sampleTypes:*(a1 + 40) dataSource:*(a1 + 48) didUpdateActivity:*(a1 + 64) date:*(a1 + 56)];
  }
}

void __117__HDWorkoutSessionTaskServer_didUpdateGeneratedTypesWithConfiguration_sampleTypes_dataSource_didUpdateActivity_date___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of remote session disconnection: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)workoutDataDestination:(id)a3 requestsFinalDataFrom:(id)a4 to:(id)a5 completion:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  os_unfair_lock_lock(&self->_lock);
  v13 = self->_sessionServer;
  os_unfair_lock_unlock(&self->_lock);
  if (v13)
  {
    [(HDWorkoutSessionServer *)v13 workoutDataDestination:v14 requestsFinalDataFrom:v10 to:v11 completion:v12];
  }

  else
  {
    v12[2](v12, 1, 0);
  }
}

- (void)workoutDataDestination:(id)a3 didUpdateConfiguration:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  [(HKWorkoutSessionTaskConfiguration *)self->_taskConfiguration setWorkoutConfiguration:a4];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
  {
    taskConfiguration = self->_taskConfiguration;
    v7 = v5;
    v8 = [(HKWorkoutSessionTaskConfiguration *)taskConfiguration workoutConfiguration];
    v10 = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "%{public}@:Updated workout configuration : %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)workoutDataDestination:(id)a3 didInsertEvent:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  v7 = self->_sessionServer;
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    [(HDWorkoutSessionServer *)v7 workoutDataDestination:v8 didInsertEvent:v6];
  }
}

- (void)connectionInvalidated
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    sessionServer = self->_sessionServer;
    *buf = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = sessionServer;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection invalidated with current session server: %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = self->_sessionServer;
  self->_sessionServer = 0;
  v6 = v5;

  os_unfair_lock_unlock(&self->_lock);
  [(HDWorkoutSessionServer *)v6 invalidateTaskServer:self];
  v8.receiver = self;
  v8.super_class = HDWorkoutSessionTaskServer;
  [(HDStandardTaskServer *)&v8 connectionInvalidated];

  v7 = *MEMORY[0x277D85DE8];
}

void __64__HDWorkoutSessionTaskServer__fetchOrSetupServerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v5 = *(a1 + 32);
  if (!v4 || *(v5 + 56))
  {
    os_unfair_lock_unlock((v5 + 40));
  }

  else
  {
    objc_storeStrong((v5 + 56), a2);
    os_unfair_lock_unlock((*(a1 + 32) + 40));
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 56);
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: New session server set %{public}@", &v10, 0x16u);
    }

    [(HDWorkoutSessionTaskServer *)*(a1 + 32) _setupSessionServer];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __64__HDWorkoutSessionTaskServer__fetchOrSetupServerWithCompletion___block_invoke_451(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5, v8);
  (*(*(a1 + 40) + 16))();
}

@end