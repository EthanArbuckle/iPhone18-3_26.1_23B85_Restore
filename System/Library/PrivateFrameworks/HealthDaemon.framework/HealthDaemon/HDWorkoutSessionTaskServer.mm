@interface HDWorkoutSessionTaskServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
+ (uint64_t)_canRecoverWorkoutSessionForConfiguration:(void *)configuration client:(void *)client error:;
- (HDWorkoutDataAccumulator)workoutDataAccumulator;
- (uint64_t)_setupSessionServer;
- (void)_fetchOrSetupServerWithCompletion:(uint64_t)completion;
- (void)addMetadata:(id)metadata dataSource:(id)source;
- (void)addOtherSamples:(id)samples dataSource:(id)source;
- (void)addQuantities:(id)quantities dataSource:(id)source;
- (void)addWorkoutEvents:(id)events dataSource:(id)source;
- (void)connectionConfigured;
- (void)connectionInvalidated;
- (void)didBeginActivity:(id)activity dataSource:(id)source;
- (void)didDisconnectFromRemoteWithError:(id)error;
- (void)didEndActivity:(id)activity dataSource:(id)source;
- (void)didReceiveDataFromRemoteWorkoutSession:(id)session completion:(id)completion;
- (void)didSuggestActivity:(id)activity dataSource:(id)source;
- (void)didSyncCurrentActivity:(id)activity;
- (void)didSyncStateEvent:(int64_t)event date:(id)date;
- (void)didSyncTransitionToNewState:(int64_t)state date:(id)date;
- (void)didUpdateGeneratedTypesWithConfiguration:(id)configuration sampleTypes:(id)types dataSource:(id)source didUpdateActivity:(BOOL)activity date:(id)date;
- (void)remoteSessionDidRecover;
- (void)remote_beginNewActivityWithConfiguration:(id)configuration date:(id)date metadata:(id)metadata completion:(id)completion;
- (void)remote_enableAutomaticDetectionForActivityConfigurations:(id)configurations completion:(id)completion;
- (void)remote_endCurrentActivityOnDate:(id)date completion:(id)completion;
- (void)remote_recoverAllActiveSessionsWithStates:(id)states date:(id)date completion:(id)completion;
- (void)remote_recoverWithCompletion:(id)completion;
- (void)remote_runSetupPostClientMirroringStartHandlerWithCompletion:(id)completion;
- (void)remote_sendDataToRemoteWorkoutSession:(id)session completion:(id)completion;
- (void)remote_setTargetState:(int64_t)state date:(id)date completion:(id)completion;
- (void)remote_setupMirroredSessionWithHandler:(id)handler;
- (void)remote_setupTaskServerWithCompletion:(id)completion;
- (void)remote_startMirroringToCompanionDeviceWithCompletion:(id)completion;
- (void)remote_stopMirroringToCompanionDeviceWithCompletion:(id)completion;
- (void)remote_syncSessionEvent:(int64_t)event date:(id)date;
- (void)setAssociatedWorkoutBuilderEntity:(id)entity;
- (void)setWorkoutDataAccumulator:(id)accumulator;
- (void)setupSessionServer:(id)server;
- (void)updateWorkoutConfiguration:(id)configuration dataSource:(id)source;
- (void)workoutDataDestination:(id)destination didInsertEvent:(id)event;
- (void)workoutDataDestination:(id)destination didUpdateConfiguration:(id)configuration;
- (void)workoutDataDestination:(id)destination requestsFinalDataFrom:(id)from to:(id)to completion:(id)completion;
- (void)workoutSession:(id)session didChangeToState:(int64_t)state fromState:(int64_t)fromState date:(id)date;
- (void)workoutSession:(id)session didFailWithError:(id)error;
@end

@implementation HDWorkoutSessionTaskServer

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  configurationCopy = configuration;
  clientCopy = client;
  sessionUUID = [configurationCopy sessionUUID];

  if (!sessionUUID)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Missing session UUID"];
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  workoutConfiguration = [configurationCopy workoutConfiguration];
  v12 = [workoutConfiguration validateIgnoringDeviceSupport:0 error:error];

  if (!v12)
  {
    goto LABEL_7;
  }

  workoutConfiguration2 = [configurationCopy workoutConfiguration];
  fitnessPlusCatalogWorkoutId = [workoutConfiguration2 fitnessPlusCatalogWorkoutId];

  if (fitnessPlusCatalogWorkoutId)
  {
    if (![clientCopy hasRequiredEntitlement:*MEMORY[0x277CCC8B0] error:error])
    {
      goto LABEL_7;
    }
  }

  v15 = [(HDWorkoutSessionTaskServer *)self _canRecoverWorkoutSessionForConfiguration:configurationCopy client:clientCopy error:error];
LABEL_8:

  return v15;
}

+ (uint64_t)_canRecoverWorkoutSessionForConfiguration:(void *)configuration client:(void *)client error:
{
  v6 = a2;
  configurationCopy = configuration;
  objc_opt_self();
  if ([v6 sessionType] != 1)
  {
    profile = [configurationCopy profile];
    workoutManager = [profile workoutManager];
    sessionUUID = [v6 sessionUUID];
    v16 = 0;
    v12 = [workoutManager canRecoverWorkoutSessionServerWithIdentifier:sessionUUID error:&v16];
    v13 = v16;

    if ((v12 & 1) != 0 || !v13)
    {
      if (v12 & 1 | (([v6 requiresRecovery] & 1) == 0))
      {
        v8 = 1;
        goto LABEL_12;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:client code:3 format:@"Session requires recovery but no matching session record was found."];
    }

    else
    {
      if (client)
      {
        v14 = v13;
        v8 = 0;
        *client = v13;
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

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  if ([(HDWorkoutSessionTaskServer *)self _canRecoverWorkoutSessionForConfiguration:configurationCopy client:clientCopy error:error])
  {
    profile = [clientCopy profile];
    sourceManager = [profile sourceManager];

    v18 = [sourceManager createOrUpdateSourceForClient:clientCopy error:error];
    if (v18)
    {
      v19 = [sourceManager clientSourceForSourceEntity:v18 error:error];
      if (v19)
      {
        v20 = [HDWorkoutSessionTaskServer alloc];
        v21 = configurationCopy;
        v22 = v19;
        if (v20)
        {
          v29.receiver = v20;
          v29.super_class = HDWorkoutSessionTaskServer;
          v23 = objc_msgSendSuper2(&v29, sel_initWithUUID_configuration_client_delegate_, dCopy, v21, clientCopy, delegateCopy);
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
    selfCopy = self;
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
    workoutDataFlowLink = [*(result + 56) workoutDataFlowLink];
    [v2 addSource:workoutDataFlowLink];

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

- (void)setupSessionServer:(id)server
{
  objc_storeStrong(&self->_sessionServer, server);

  [(HDWorkoutSessionTaskServer *)self _setupSessionServer];
}

- (void)setAssociatedWorkoutBuilderEntity:(id)entity
{
  entityCopy = entity;
  os_unfair_lock_lock(&self->_lock);
  builderEntity = self->_builderEntity;
  self->_builderEntity = entityCopy;
  v7 = entityCopy;

  v6 = self->_sessionServer;
  os_unfair_lock_unlock(&self->_lock);
  [(HDWorkoutSessionServer *)v6 setAssociatedWorkoutBuilderEntity:v7];
}

- (void)setWorkoutDataAccumulator:(id)accumulator
{
  obj = accumulator;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_accumulator, obj);
  v4 = self->_sessionServer;
  os_unfair_lock_unlock(&self->_lock);
  [(HDWorkoutSessionServer *)v4 setWorkoutDataAccumulator:obj];
}

- (void)remote_setupTaskServerWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__HDWorkoutSessionTaskServer_remote_setupTaskServerWithCompletion___block_invoke;
  v6[3] = &unk_27861A2B0;
  v7 = completionCopy;
  v5 = completionCopy;
  [(HDWorkoutSessionTaskServer *)self _fetchOrSetupServerWithCompletion:v6];
}

- (void)_fetchOrSetupServerWithCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    os_unfair_lock_assert_not_owner((completion + 40));
    os_unfair_lock_lock((completion + 40));
    v4 = *(completion + 56);
    os_unfair_lock_unlock((completion + 40));
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
      aBlock[4] = completion;
      v5 = _Block_copy(aBlock);
      sessionType = [*(completion + 48) sessionType];
      profile = [completion profile];
      workoutManager = [profile workoutManager];
      if (sessionType == 1)
      {
        taskUUID = [completion taskUUID];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __64__HDWorkoutSessionTaskServer__fetchOrSetupServerWithCompletion___block_invoke_451;
        v12[3] = &unk_27861A3F0;
        v13 = v5;
        v14 = v3;
        [workoutManager mirroredSessionServerWithUUID:taskUUID completion:v12];

        v4 = 0;
      }

      else
      {
        workoutConfiguration = [*(completion + 48) workoutConfiguration];
        taskUUID2 = [completion taskUUID];
        v4 = [workoutManager sessionServerWithConfiguration:workoutConfiguration sessionUUID:taskUUID2 clientBundleIdentifier:0 taskServer:completion];

        (*(v5 + 2))(v5, v4);
        v3[2](v3, v4, 0);
      }
    }
  }
}

- (void)remote_setupMirroredSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__HDWorkoutSessionTaskServer_remote_setupMirroredSessionWithHandler___block_invoke;
  v6[3] = &unk_27861A328;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
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

- (void)remote_runSetupPostClientMirroringStartHandlerWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __91__HDWorkoutSessionTaskServer_remote_runSetupPostClientMirroringStartHandlerWithCompletion___block_invoke;
  v6[3] = &unk_27861A2B0;
  v7 = completionCopy;
  v5 = completionCopy;
  [(HDWorkoutSessionTaskServer *)self _fetchOrSetupServerWithCompletion:v6];
}

uint64_t __91__HDWorkoutSessionTaskServer_remote_runSetupPostClientMirroringStartHandlerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  [a2 runSetupPostClientMirroringStartHandler];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)remote_setTargetState:(int64_t)state date:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HDWorkoutSessionTaskServer_remote_setTargetState_date_completion___block_invoke;
  v12[3] = &unk_27861A2D8;
  v14 = completionCopy;
  stateCopy = state;
  v13 = dateCopy;
  v10 = completionCopy;
  v11 = dateCopy;
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

- (void)remote_syncSessionEvent:(int64_t)event date:(id)date
{
  dateCopy = date;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HDWorkoutSessionTaskServer_remote_syncSessionEvent_date___block_invoke;
  v8[3] = &unk_27861A300;
  selfCopy = self;
  eventCopy = event;
  v9 = dateCopy;
  v7 = dateCopy;
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

- (void)remote_recoverWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HDWorkoutSessionTaskServer_remote_recoverWithCompletion___block_invoke;
  v6[3] = &unk_27861A328;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
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

- (void)remote_recoverAllActiveSessionsWithStates:(id)states date:(id)date completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  dateCopy = date;
  completionCopy = completion;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Attempting to recover all active sessions", buf, 0xCu);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__HDWorkoutSessionTaskServer_remote_recoverAllActiveSessionsWithStates_date_completion___block_invoke;
  v16[3] = &unk_27861A350;
  v16[4] = self;
  v17 = statesCopy;
  v18 = dateCopy;
  v19 = completionCopy;
  v12 = dateCopy;
  v13 = statesCopy;
  v14 = completionCopy;
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

- (void)remote_beginNewActivityWithConfiguration:(id)configuration date:(id)date metadata:(id)metadata completion:(id)completion
{
  configurationCopy = configuration;
  dateCopy = date;
  metadataCopy = metadata;
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__HDWorkoutSessionTaskServer_remote_beginNewActivityWithConfiguration_date_metadata_completion___block_invoke;
  v18[3] = &unk_27861A350;
  v19 = configurationCopy;
  v20 = dateCopy;
  v21 = metadataCopy;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = metadataCopy;
  v16 = dateCopy;
  v17 = configurationCopy;
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

- (void)remote_endCurrentActivityOnDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__HDWorkoutSessionTaskServer_remote_endCurrentActivityOnDate_completion___block_invoke;
  v10[3] = &unk_27861A328;
  v11 = dateCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dateCopy;
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

- (void)remote_enableAutomaticDetectionForActivityConfigurations:(id)configurations completion:(id)completion
{
  configurationsCopy = configurations;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __98__HDWorkoutSessionTaskServer_remote_enableAutomaticDetectionForActivityConfigurations_completion___block_invoke;
  v10[3] = &unk_27861A328;
  v11 = configurationsCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = configurationsCopy;
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

- (void)remote_startMirroringToCompanionDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(HDWorkoutSessionTaskServer *)self sessionType])
  {
    v5 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot start mirroring from a mirrored session"];
    completionCopy[2](completionCopy, 0, v5);
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __83__HDWorkoutSessionTaskServer_remote_startMirroringToCompanionDeviceWithCompletion___block_invoke;
    v6[3] = &unk_27861A2B0;
    v7 = completionCopy;
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

- (void)remote_stopMirroringToCompanionDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(HDWorkoutSessionTaskServer *)self sessionType])
  {
    v5 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot stop mirroring from a mirrored session"];
    completionCopy[2](completionCopy, 0, v5);
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __82__HDWorkoutSessionTaskServer_remote_stopMirroringToCompanionDeviceWithCompletion___block_invoke;
    v6[3] = &unk_27861A2B0;
    v7 = completionCopy;
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

- (void)remote_sendDataToRemoteWorkoutSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HDWorkoutSessionTaskServer_remote_sendDataToRemoteWorkoutSession_completion___block_invoke;
  v10[3] = &unk_27861A328;
  v11 = sessionCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = sessionCopy;
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

- (void)workoutSession:(id)session didChangeToState:(int64_t)state fromState:(int64_t)fromState date:(id)date
{
  v19 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__HDWorkoutSessionTaskServer_workoutSession_didChangeToState_fromState_date___block_invoke;
  v16[3] = &unk_2786138D0;
  v16[4] = self;
  sessionCopy = session;
  v11 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v16];
  startDate = [sessionCopy startDate];
  stopDate = [sessionCopy stopDate];

  [v11 client_didUpdateStartDate:startDate endDate:stopDate];
  if (state <= 0x11 && ((1 << state) & 0x3C5C2) != 0)
  {
    [v11 client_didChangeToState:HKWorkoutSessionStateFromServerState() date:dateCopy];
    if (!dateCopy)
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        selfCopy = self;
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

- (void)workoutSession:(id)session didFailWithError:(id)error
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HDWorkoutSessionTaskServer_workoutSession_didFailWithError___block_invoke;
  v7[3] = &unk_2786138D0;
  v7[4] = self;
  errorCopy = error;
  v6 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v7];
  [v6 client_didFailWithError:errorCopy];
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

- (void)addQuantities:(id)quantities dataSource:(id)source
{
  quantitiesCopy = quantities;
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HDWorkoutSessionTaskServer_addQuantities_dataSource___block_invoke;
  v8[3] = &unk_278613880;
  v9 = quantitiesCopy;
  selfCopy = self;
  v7 = quantitiesCopy;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v8];
}

- (void)addOtherSamples:(id)samples dataSource:(id)source
{
  samplesCopy = samples;
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HDWorkoutSessionTaskServer_addOtherSamples_dataSource___block_invoke;
  v8[3] = &unk_278613880;
  v9 = samplesCopy;
  selfCopy = self;
  v7 = samplesCopy;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v8];
}

- (void)addWorkoutEvents:(id)events dataSource:(id)source
{
  v17 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
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
    selfCopy = self;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Notifying client of generated event", buf, 0xCu);
  }

  [v6 client_didGenerateEvents:eventsCopy];
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__HDWorkoutSessionTaskServer_addWorkoutEvents_dataSource___block_invoke_432;
  v11[3] = &unk_278613880;
  v12 = eventsCopy;
  selfCopy2 = self;
  v9 = eventsCopy;
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

- (void)addMetadata:(id)metadata dataSource:(id)source
{
  metadataCopy = metadata;
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HDWorkoutSessionTaskServer_addMetadata_dataSource___block_invoke;
  v8[3] = &unk_278613880;
  v9 = metadataCopy;
  selfCopy = self;
  v7 = metadataCopy;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v8];
}

- (void)updateWorkoutConfiguration:(id)configuration dataSource:(id)source
{
  configurationCopy = configuration;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HDWorkoutSessionTaskServer_updateWorkoutConfiguration_dataSource___block_invoke;
  v12[3] = &unk_2786138D0;
  v12[4] = self;
  v6 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v12];
  [v6 client_didUpdateWorkoutConfiguration:configurationCopy];
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__HDWorkoutSessionTaskServer_updateWorkoutConfiguration_dataSource___block_invoke_433;
  v9[3] = &unk_278613880;
  v10 = configurationCopy;
  selfCopy = self;
  v8 = configurationCopy;
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

- (void)didBeginActivity:(id)activity dataSource:(id)source
{
  activityCopy = activity;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HDWorkoutSessionTaskServer_didBeginActivity_dataSource___block_invoke;
  v13[3] = &unk_2786138D0;
  v13[4] = self;
  v6 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v13];
  startDate = [activityCopy startDate];
  [v6 client_didBeginActivity:activityCopy date:startDate];

  workoutDataFlowLink = self->_workoutDataFlowLink;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__HDWorkoutSessionTaskServer_didBeginActivity_dataSource___block_invoke_434;
  v10[3] = &unk_278613880;
  v11 = activityCopy;
  selfCopy = self;
  v9 = activityCopy;
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

- (void)didEndActivity:(id)activity dataSource:(id)source
{
  activityCopy = activity;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__HDWorkoutSessionTaskServer_didEndActivity_dataSource___block_invoke;
  v13[3] = &unk_2786138D0;
  v13[4] = self;
  v6 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v13];
  endDate = [activityCopy endDate];
  [v6 client_didEndActivity:activityCopy date:endDate];

  workoutDataFlowLink = self->_workoutDataFlowLink;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HDWorkoutSessionTaskServer_didEndActivity_dataSource___block_invoke_435;
  v10[3] = &unk_278613880;
  v11 = activityCopy;
  selfCopy = self;
  v9 = activityCopy;
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

- (void)didSuggestActivity:(id)activity dataSource:(id)source
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HDWorkoutSessionTaskServer_didSuggestActivity_dataSource___block_invoke;
  v9[3] = &unk_2786138D0;
  v9[4] = self;
  activityCopy = activity;
  v6 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v9];
  workoutConfiguration = [activityCopy workoutConfiguration];
  startDate = [activityCopy startDate];

  [v6 client_didSuggestWorkoutConfiguration:workoutConfiguration date:startDate];
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

- (void)didReceiveDataFromRemoteWorkoutSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __80__HDWorkoutSessionTaskServer_didReceiveDataFromRemoteWorkoutSession_completion___block_invoke;
  v15 = &unk_27861A378;
  selfCopy = self;
  v8 = completionCopy;
  v17 = v8;
  v9 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:&v12];
  v10 = v9;
  if (v9)
  {
    [v9 client_didReceiveDataFromRemoteWorkoutSession:sessionCopy completion:{v8, v12, v13, v14, v15, selfCopy}];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hk_error:3 description:{@"No client to notify of received data from remote session", v12, v13, v14, v15, selfCopy}];
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

- (void)didSyncStateEvent:(int64_t)event date:(id)date
{
  v15 = *MEMORY[0x277D85DE8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__HDWorkoutSessionTaskServer_didSyncStateEvent_date___block_invoke;
  v10[3] = &unk_2786138D0;
  v10[4] = self;
  dateCopy = date;
  v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v10];
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v13 = 2048;
    eventCopy = event;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Notifying client of synced state event: %ld ", buf, 0x16u);
  }

  [v7 client_didSyncSessionEvent:event date:dateCopy];

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

- (void)didSyncTransitionToNewState:(int64_t)state date:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
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
    selfCopy2 = self;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Notifying client of state: %{public}@ update from remote session", buf, 0x16u);
  }

  if (!dateCopy)
  {
    _HKInitializeLogging();
    v12 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_FAULT))
    {
      v14 = v12;
      v15 = HKWorkoutSessionStateToString();
      *buf = 138543618;
      selfCopy2 = self;
      v19 = 2114;
      v20 = v15;
      _os_log_fault_impl(&dword_228986000, v14, OS_LOG_TYPE_FAULT, "Task server %{public}@ received a nil state change from mirrored session for state: %{public}@", buf, 0x16u);
    }
  }

  [v7 client_didChangeToState:state date:dateCopy];

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

- (void)didSyncCurrentActivity:(id)activity
{
  activityCopy = activity;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __53__HDWorkoutSessionTaskServer_didSyncCurrentActivity___block_invoke;
  v10 = &unk_278619460;
  selfCopy = self;
  v12 = activityCopy;
  v5 = activityCopy;
  v6 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:&v7];
  [v6 client_didSyncCurrentActivity:{v5, v7, v8, v9, v10, selfCopy}];
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

- (void)didDisconnectFromRemoteWithError:(id)error
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HDWorkoutSessionTaskServer_didDisconnectFromRemoteWithError___block_invoke;
  v7[3] = &unk_2786138D0;
  v7[4] = self;
  errorCopy = error;
  v5 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HDWorkoutSessionTaskServer_didDisconnectFromRemoteWithError___block_invoke_439;
  v6[3] = &unk_2786130B0;
  v6[4] = self;
  [v5 client_didDisconnectFromRemoteWithError:errorCopy completion:v6];
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

- (void)didUpdateGeneratedTypesWithConfiguration:(id)configuration sampleTypes:(id)types dataSource:(id)source didUpdateActivity:(BOOL)activity date:(id)date
{
  configurationCopy = configuration;
  typesCopy = types;
  dateCopy = date;
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __117__HDWorkoutSessionTaskServer_didUpdateGeneratedTypesWithConfiguration_sampleTypes_dataSource_didUpdateActivity_date___block_invoke;
  v20[3] = &unk_27861A3A0;
  v21 = configurationCopy;
  v22 = typesCopy;
  activityCopy = activity;
  selfCopy = self;
  v24 = dateCopy;
  v15 = dateCopy;
  v16 = typesCopy;
  v17 = configurationCopy;
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

- (void)workoutDataDestination:(id)destination requestsFinalDataFrom:(id)from to:(id)to completion:(id)completion
{
  destinationCopy = destination;
  fromCopy = from;
  toCopy = to;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v13 = self->_sessionServer;
  os_unfair_lock_unlock(&self->_lock);
  if (v13)
  {
    [(HDWorkoutSessionServer *)v13 workoutDataDestination:destinationCopy requestsFinalDataFrom:fromCopy to:toCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)workoutDataDestination:(id)destination didUpdateConfiguration:(id)configuration
{
  v14 = *MEMORY[0x277D85DE8];
  [(HKWorkoutSessionTaskConfiguration *)self->_taskConfiguration setWorkoutConfiguration:configuration];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
  {
    taskConfiguration = self->_taskConfiguration;
    v7 = v5;
    workoutConfiguration = [(HKWorkoutSessionTaskConfiguration *)taskConfiguration workoutConfiguration];
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = workoutConfiguration;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "%{public}@:Updated workout configuration : %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)workoutDataDestination:(id)destination didInsertEvent:(id)event
{
  destinationCopy = destination;
  eventCopy = event;
  os_unfair_lock_lock(&self->_lock);
  v7 = self->_sessionServer;
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    [(HDWorkoutSessionServer *)v7 workoutDataDestination:destinationCopy didInsertEvent:eventCopy];
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
    selfCopy = self;
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