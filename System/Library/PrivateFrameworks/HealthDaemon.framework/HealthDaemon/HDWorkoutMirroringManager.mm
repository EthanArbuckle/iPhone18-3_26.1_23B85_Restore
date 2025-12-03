@interface HDWorkoutMirroringManager
- (HDWorkoutMirroringManager)initWithWorkoutManager:(id)manager;
- (id)activeSessionBundleIdentifier;
- (void)_createServerWithData:(id)data completion:(id)completion;
- (void)dealloc;
- (void)launchClientWithBundleIdentifier:(id)identifier;
- (void)rapportMessenger:(id)messenger didReceiveRequest:(id)request data:(id)data responseHandler:(id)handler;
- (void)recoverMirroredWorkoutSessionWithCompletion:(id)completion;
- (void)setActiveSessionBundleIdentifier:(id)identifier;
@end

@implementation HDWorkoutMirroringManager

- (HDWorkoutMirroringManager)initWithWorkoutManager:(id)manager
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = HDWorkoutMirroringManager;
  v5 = [(HDWorkoutMirroringManager *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_workoutManager, managerCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assertionsByBundleIdentifier = v6->_assertionsByBundleIdentifier;
    v6->_assertionsByBundleIdentifier = v7;

    v9 = objc_alloc_init(HDMirroredWorkoutAnalyticsCollector);
    analyticsCollector = v6->_analyticsCollector;
    v6->_analyticsCollector = v9;

    WeakRetained = objc_loadWeakRetained(&v6->_workoutManager);
    profile = [WeakRetained profile];
    [profile registerProfileReadyObserver:v6 queue:0];

    v13 = objc_loadWeakRetained(&v6->_workoutManager);
    profile2 = [v13 profile];
    rapportMessenger = [profile2 rapportMessenger];
    [rapportMessenger addObserver:v6 forSchemaIdentifier:0];
  }

  return v6;
}

- (void)dealloc
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [(NSMutableDictionary *)self->_assertionsByBundleIdentifier allValues];
  v4 = [allValues countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v19;
    v8 = MEMORY[0x277CCC330];
    *&v5 = 138543618;
    v15 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 isValid])
        {
          v17 = 0;
          v11 = [v10 invalidateSyncWithError:&v17];
          v12 = v17;
          if ((v11 & 1) == 0)
          {
            _HKInitializeLogging();
            v13 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
            {
              *buf = v15;
              selfCopy = self;
              v24 = 2114;
              v25 = v12;
              _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to invalidate existing background runtime assertion with error: %{public}@", buf, 0x16u);
            }
          }
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v16.receiver = self;
  v16.super_class = HDWorkoutMirroringManager;
  [(HDWorkoutMirroringManager *)&v16 dealloc];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)setActiveSessionBundleIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_workoutManager);
  profile = [WeakRetained profile];
  v7 = HDMirroredWorkoutSessionKeyValueDomainWithProfile(profile);

  v14 = 0;
  LOBYTE(WeakRetained) = [v7 setString:identifierCopy forKey:@"active-session-bundle-id" error:&v14];

  v8 = v14;
  if ((WeakRetained & 1) == 0)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v11 = v9;
      v12 = objc_opt_class();
      *buf = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v8;
      v13 = v12;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to persist the active mirrored session bundle identifier: %{public}@.", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)activeSessionBundleIdentifier
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_workoutManager);
  profile = [WeakRetained profile];
  v4 = HDMirroredWorkoutSessionKeyValueDomainWithProfile(profile);

  v10 = 0;
  v5 = [v4 stringForKey:@"active-session-bundle-id" error:&v10];
  v6 = v10;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[mirroring] Failed to read active session bundle identifier: %{public}@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)rapportMessenger:(id)messenger didReceiveRequest:(id)request data:(id)data responseHandler:(id)handler
{
  v90 = *MEMORY[0x277D85DE8];
  messengerCopy = messenger;
  requestCopy = request;
  dataCopy = data;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_workoutManager);
  currentWorkout = [WeakRetained currentWorkout];

  if (currentWorkout)
  {
    if (([currentWorkout isMirroring] & 1) == 0)
    {
      mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
      isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

      if ((isAppleWatch & 1) == 0)
      {
        if (![currentWorkout sessionType])
        {
          v40 = [MEMORY[0x277CCA9B8] hk_error:8 description:@"Another session is in progress"];
          handlerCopy[2](handlerCopy, 0, v40);

          goto LABEL_37;
        }

        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          v51 = v18;
          v52 = objc_opt_class();
          v53 = v52;
          name = [requestCopy name];
          *buf = 138543874;
          v85 = v52;
          v86 = 2114;
          v87 = name;
          v88 = 2114;
          v89 = currentWorkout;
          _os_log_error_impl(&dword_228986000, v51, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Received mirroring request with identifier: %{public}@. The current workout is %{public}@", buf, 0x20u);
        }
      }
    }
  }

  name2 = [requestCopy name];
  v20 = [name2 isEqualToString:@"startMirroring"];

  if (v20)
  {
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __85__HDWorkoutMirroringManager_rapportMessenger_didReceiveRequest_data_responseHandler___block_invoke;
    v82[3] = &unk_27861A2B0;
    v83 = handlerCopy;
    [(HDWorkoutMirroringManager *)self _createServerWithData:dataCopy completion:v82];
    v21 = v83;
LABEL_36:

    goto LABEL_37;
  }

  name3 = [requestCopy name];
  v23 = [name3 isEqualToString:@"recoverSession"];

  if (!v23)
  {
    v27 = [[HDCodableWorkoutSessionSyncTransaction alloc] initWithData:dataCopy];
    v28 = MEMORY[0x277CCAD78];
    v71 = v27;
    sessionUUID = [(HDCodableWorkoutSessionSyncTransaction *)v27 sessionUUID];
    v30 = [v28 hk_UUIDWithData:sessionUUID];

    if (v30)
    {
      v31 = objc_loadWeakRetained(&self->_workoutManager);
      sessionServers = [v31 sessionServers];
      v33 = [sessionServers objectForKeyedSubscript:v30];

      if (v33)
      {
        syncController = [v33 syncController];
        [syncController rapportMessenger:messengerCopy didReceiveRequest:requestCopy data:dataCopy responseHandler:handlerCopy];
      }

      else
      {
        _HKInitializeLogging();
        v41 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          loga = v41;
          v62 = objc_opt_class();
          v70 = v62;
          name4 = [requestCopy name];
          *buf = 138543874;
          v85 = v62;
          v86 = 2114;
          v87 = v30;
          v88 = 2114;
          v89 = name4;
          _os_log_error_impl(&dword_228986000, loga, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Session server %{public}@ doesn't exist to handle request %{public}@", buf, 0x20u);
        }

        mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
        isCompanionCapable = [mEMORY[0x277CCDD30]2 isCompanionCapable];

        if (isCompanionCapable)
        {
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __85__HDWorkoutMirroringManager_rapportMessenger_didReceiveRequest_data_responseHandler___block_invoke_314;
          v74[3] = &unk_27862E990;
          v80 = handlerCopy;
          v75 = v30;
          v76 = 0;
          v77 = messengerCopy;
          v78 = requestCopy;
          v79 = dataCopy;
          [(HDWorkoutMirroringManager *)self recoverMirroredWorkoutSessionWithCompletion:v74];

          syncController = v80;
        }

        else
        {
          logb = objc_loadWeakRetained(&self->_workoutManager);
          profile = [logb profile];
          v73 = 0;
          v45 = [HDWorkoutSessionServer sessionIdentifierForRecoveryInProfile:profile error:&v73];
          syncController = v73;

          v46 = v45;
          _HKInitializeLogging();
          v47 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            v64 = v47;
            v65 = objc_opt_class();
            *buf = 138543874;
            v85 = v65;
            v86 = 2114;
            v87 = v46;
            v88 = 2114;
            v89 = syncController;
            v66 = v65;
            _os_log_error_impl(&dword_228986000, v64, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Queried persisted session identifier: %{public}@, error: %{public}@", buf, 0x20u);
          }

          log = v46;
          if (([v30 isEqual:v46]& 1) != 0 || syncController)
          {
            v48 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to complete mirrored workout session request (#3)."];
          }

          else
          {
            v48 = [MEMORY[0x277CCA9B8] hk_error:118 format:{@"Workout session %@ doesn't exist.", v30}];
          }

          v49 = v48;
          v33 = 0;
          handlerCopy[2](handlerCopy, 0, v48);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v38 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        v58 = v38;
        v59 = objc_opt_class();
        v60 = v59;
        name5 = [requestCopy name];
        *buf = 138543618;
        v85 = v59;
        v86 = 2114;
        v87 = name5;
        _os_log_error_impl(&dword_228986000, v58, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Malformed incoming request %{public}@: session UUID is missing.", buf, 0x16u);
      }

      v39 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to complete mirrored workout session request (#1)."];
      handlerCopy[2](handlerCopy, 0, v39);
    }

    v21 = v71;
    goto LABEL_36;
  }

  v24 = objc_loadWeakRetained(&self->_workoutManager);
  currentWorkout2 = [v24 currentWorkout];

  if (currentWorkout2)
  {
    syncController2 = [currentWorkout2 syncController];
    [syncController2 rapportMessenger:messengerCopy didReceiveRequest:requestCopy data:dataCopy responseHandler:handlerCopy];
  }

  else
  {
    v35 = objc_loadWeakRetained(&self->_workoutManager);
    profile2 = [v35 profile];
    v81 = 0;
    v72 = [HDWorkoutSessionServer sessionIdentifierForRecoveryInProfile:profile2 error:&v81];
    syncController2 = v81;

    _HKInitializeLogging();
    v37 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v55 = v37;
      v56 = objc_opt_class();
      *buf = 138543874;
      v85 = v56;
      v86 = 2114;
      v87 = v72;
      v88 = 2114;
      v89 = syncController2;
      v57 = v56;
      _os_log_error_impl(&dword_228986000, v55, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Queried persisted session identifier: %{public}@, error: %{public}@", buf, 0x20u);
    }

    handlerCopy[2](handlerCopy, 0, syncController2);
  }

LABEL_37:
  v50 = *MEMORY[0x277D85DE8];
}

void __85__HDWorkoutMirroringManager_rapportMessenger_didReceiveRequest_data_responseHandler___block_invoke_314(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [v10 identifier];
    v7 = [v6 isEqual:*(a1 + 32)];

    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = [*(a1 + 40) syncController];
    [v8 rapportMessenger:*(a1 + 48) didReceiveRequest:*(a1 + 56) data:*(a1 + 64) responseHandler:*(a1 + 72)];
  }

  else
  {
    v9 = *(a1 + 72);
    v8 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to complete mirrored workout session request (#2)."];
    (*(v9 + 16))(v9, 0, v8);
  }

LABEL_6:
}

- (void)_createServerWithData:(id)data completion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v8 = [[HDCodableWorkoutSessionSyncTransaction alloc] initWithData:dataCopy];
  v9 = MEMORY[0x277CCAD78];
  sessionUUID = [(HDCodableWorkoutSessionSyncTransaction *)v8 sessionUUID];
  v11 = [v9 hk_UUIDWithData:sessionUUID];

  v12 = MEMORY[0x277CCDC38];
  configuration = [(HDCodableWorkoutSessionSyncTransaction *)v8 configuration];
  workoutConfiguration = [configuration workoutConfiguration];
  v15 = [v12 createWithCodable:workoutConfiguration];

  configuration2 = [(HDCodableWorkoutSessionSyncTransaction *)v8 configuration];
  sourceBundleIdentifier = [configuration2 sourceBundleIdentifier];

  if (v11 && v15 && sourceBundleIdentifier)
  {
    WeakRetained = objc_loadWeakRetained(&self->_workoutManager);
    sessionServers = [WeakRetained sessionServers];
    v20 = [sessionServers objectForKeyedSubscript:v11];

    if (v20)
    {
      os_unfair_lock_unlock(&self->_lock);
      completionCopy[2](completionCopy, v20, 0);
    }

    else
    {
      v45 = 0;
      v23 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:sourceBundleIdentifier allowPlaceholder:0 error:&v45];
      v24 = v45;
      v25 = v24;
      if (v23)
      {
        v44 = v24;
        applicationState = [v23 applicationState];
        isInstalled = [applicationState isInstalled];

        if (isInstalled)
        {
          [(HDWorkoutMirroringManager *)self setActiveSessionBundleIdentifier:sourceBundleIdentifier];
          v28 = [HDMirroredWorkoutSessionServer alloc];
          v42 = objc_loadWeakRetained(&self->_workoutManager);
          profile = [v42 profile];
          [(HDCodableWorkoutSessionSyncTransaction *)v8 globalState];
          v30 = v43 = v23;
          v31 = [(HDMirroredWorkoutSessionServer *)v28 initWithProfile:profile configuration:v15 sessionUUID:v11 globalState:v30 clientBundleIdentifier:sourceBundleIdentifier];

          v32 = objc_loadWeakRetained(&self->_workoutManager);
          [v32 _didCreateMirroredSessionServer:v31];

          v23 = v43;
          os_unfair_lock_unlock(&self->_lock);
          completionCopy[2](completionCopy, v31, 0);
        }

        else
        {
          os_unfair_lock_unlock(&self->_lock);
          _HKInitializeLogging();
          v34 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            v39 = v34;
            v40 = objc_opt_class();
            *buf = 138543618;
            v47 = v40;
            v48 = 2114;
            v49 = sourceBundleIdentifier;
            v41 = v40;
            _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Ignoring workout session mirroring request because the companion app %{public}@ is not installed.", buf, 0x16u);
          }

          v31 = [MEMORY[0x277CCA9B8] hk_error:552 description:@"Application is not installed on companion device."];
          (completionCopy)[2](completionCopy, 0, v31);
        }

        v25 = v44;
      }

      else
      {
        os_unfair_lock_unlock(&self->_lock);
        _HKInitializeLogging();
        v33 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v47 = v25;
          _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "[mirroring] Unable to fetch LSApplicationRecord to start mirrored workout session with error: %{public}@", buf, 0xCu);
        }

        v31 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Failed to start mirroring workout session."];
        (completionCopy)[2](completionCopy, 0, v31);
      }

      v20 = 0;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v35 = v21;
      v36 = objc_opt_class();
      v37 = v36;
      configuration3 = [(HDCodableWorkoutSessionSyncTransaction *)v8 configuration];
      *buf = 138544130;
      v47 = v36;
      v48 = 2114;
      v49 = v11;
      v50 = 2114;
      v51 = configuration3;
      v52 = 2114;
      v53 = dataCopy;
      _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Cannot start mirroring with invalid request. Session UUID: %{public}@, configuration: %{public}@, data: %{public}@", buf, 0x2Au);
    }

    v20 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Failed to start mirroring workout session."];
    (completionCopy)[2](completionCopy, 0, v20);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)recoverMirroredWorkoutSessionWithCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__HDWorkoutMirroringManager_recoverMirroredWorkoutSessionWithCompletion___block_invoke;
  aBlock[3] = &unk_27861A2B0;
  v24 = completionCopy;
  v5 = _Block_copy(aBlock);
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isCompanionCapable = [mEMORY[0x277CCDD30] isCompanionCapable];

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC330];
  v9 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT);
  if (isCompanionCapable)
  {
    if (v9)
    {
      v10 = v8;
      v11 = objc_opt_class();
      *buf = 138543362;
      v26 = v11;
      v12 = v11;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Running session recovering.", buf, 0xCu);
    }

    v13 = [[HDRapportRequestIdentifier alloc] initWithSchemaIdentifier:0 name:@"recoverSession"];
    WeakRetained = objc_loadWeakRetained(&self->_workoutManager);
    profile = [WeakRetained profile];
    rapportMessenger = [profile rapportMessenger];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __73__HDWorkoutMirroringManager_recoverMirroredWorkoutSessionWithCompletion___block_invoke_337;
    v21[3] = &unk_27862E9B8;
    v21[4] = self;
    v22 = v5;
    [rapportMessenger sendRequest:v13 data:0 completion:v21];
  }

  else
  {
    if (v9)
    {
      v17 = v8;
      v18 = objc_opt_class();
      *buf = 138543362;
      v26 = v18;
      v19 = v18;
      _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Recover requests should only be sent from phone to watch", buf, 0xCu);
    }

    v13 = [MEMORY[0x277CCA9B8] hk_error:552 format:@"Recover requests should only be sent from phone to watch"];
    (*(v5 + 2))(v5, 0, v13);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HDWorkoutMirroringManager_recoverMirroredWorkoutSessionWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __73__HDWorkoutMirroringManager_recoverMirroredWorkoutSessionWithCompletion___block_invoke_337(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = v7;
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v6;
      v13 = v17;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to recover mirrored workout session: %{public}@", buf, 0x16u);
    }
  }

  v8 = *(a1 + 32);
  if (v5)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__HDWorkoutMirroringManager_recoverMirroredWorkoutSessionWithCompletion___block_invoke_338;
    v14[3] = &unk_27861A2B0;
    v15 = *(a1 + 40);
    [v8 _createServerWithData:v5 completion:v14];
  }

  else
  {
    v9 = [*(a1 + 32) activeSessionBundleIdentifier];
    [v8 launchClientWithBundleIdentifier:v9];

    [*(a1 + 32) setActiveSessionBundleIdentifier:0];
    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)launchClientWithBundleIdentifier:(id)identifier
{
  v11[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = MEMORY[0x277D0AD78];
    v10 = *MEMORY[0x277D0ABF0];
    v11[0] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__HDWorkoutMirroringManager_launchClientWithBundleIdentifier___block_invoke;
    v8[3] = &unk_27862E9E0;
    v8[4] = self;
    v9 = identifierCopy;
    [v5 hd_openApplication:v9 optionsDictionary:v6 completion:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __62__HDWorkoutMirroringManager_launchClientWithBundleIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  v8 = *MEMORY[0x277CCC330];
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = v7;
      v17 = 138543618;
      v18 = v9;
      v19 = 1024;
      LODWORD(v20) = [v5 pid];
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[mirroring] Launched %{public}@ with pid: %d", &v17, 0x12u);
    }

    [*(a1 + 32) _takeBackgroundRuntimeAssertionForProcessWithBundleIdentifier:*(a1 + 40) pid:{objc_msgSend(v5, "pid")}];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v13 = v7;
    v14 = objc_opt_class();
    v15 = *(a1 + 40);
    v17 = 138543874;
    v18 = v14;
    v19 = 2114;
    v20 = v15;
    v21 = 2114;
    v22 = v6;
    v16 = v14;
    _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to launch %{public}@ with error: %{public}@", &v17, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __95__HDWorkoutMirroringManager__takeBackgroundRuntimeAssertionForProcessWithBundleIdentifier_pid___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[mirroring] Background runtime assertion %{public}@ was invalidated with error: %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end