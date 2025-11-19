@interface HDWorkoutMirroringManager
- (HDWorkoutMirroringManager)initWithWorkoutManager:(id)a3;
- (id)activeSessionBundleIdentifier;
- (void)_createServerWithData:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)launchClientWithBundleIdentifier:(id)a3;
- (void)rapportMessenger:(id)a3 didReceiveRequest:(id)a4 data:(id)a5 responseHandler:(id)a6;
- (void)recoverMirroredWorkoutSessionWithCompletion:(id)a3;
- (void)setActiveSessionBundleIdentifier:(id)a3;
@end

@implementation HDWorkoutMirroringManager

- (HDWorkoutMirroringManager)initWithWorkoutManager:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HDWorkoutMirroringManager;
  v5 = [(HDWorkoutMirroringManager *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_workoutManager, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assertionsByBundleIdentifier = v6->_assertionsByBundleIdentifier;
    v6->_assertionsByBundleIdentifier = v7;

    v9 = objc_alloc_init(HDMirroredWorkoutAnalyticsCollector);
    analyticsCollector = v6->_analyticsCollector;
    v6->_analyticsCollector = v9;

    WeakRetained = objc_loadWeakRetained(&v6->_workoutManager);
    v12 = [WeakRetained profile];
    [v12 registerProfileReadyObserver:v6 queue:0];

    v13 = objc_loadWeakRetained(&v6->_workoutManager);
    v14 = [v13 profile];
    v15 = [v14 rapportMessenger];
    [v15 addObserver:v6 forSchemaIdentifier:0];
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
  v3 = [(NSMutableDictionary *)self->_assertionsByBundleIdentifier allValues];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(v3);
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
              v23 = self;
              v24 = 2114;
              v25 = v12;
              _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to invalidate existing background runtime assertion with error: %{public}@", buf, 0x16u);
            }
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v16.receiver = self;
  v16.super_class = HDWorkoutMirroringManager;
  [(HDWorkoutMirroringManager *)&v16 dealloc];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)setActiveSessionBundleIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_workoutManager);
  v6 = [WeakRetained profile];
  v7 = HDMirroredWorkoutSessionKeyValueDomainWithProfile(v6);

  v14 = 0;
  LOBYTE(WeakRetained) = [v7 setString:v4 forKey:@"active-session-bundle-id" error:&v14];

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
  v3 = [WeakRetained profile];
  v4 = HDMirroredWorkoutSessionKeyValueDomainWithProfile(v3);

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

- (void)rapportMessenger:(id)a3 didReceiveRequest:(id)a4 data:(id)a5 responseHandler:(id)a6
{
  v90 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_workoutManager);
  v15 = [WeakRetained currentWorkout];

  if (v15)
  {
    if (([v15 isMirroring] & 1) == 0)
    {
      v16 = [MEMORY[0x277CCDD30] sharedBehavior];
      v17 = [v16 isAppleWatch];

      if ((v17 & 1) == 0)
      {
        if (![v15 sessionType])
        {
          v40 = [MEMORY[0x277CCA9B8] hk_error:8 description:@"Another session is in progress"];
          v13[2](v13, 0, v40);

          goto LABEL_37;
        }

        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          v51 = v18;
          v52 = objc_opt_class();
          v53 = v52;
          v54 = [v11 name];
          *buf = 138543874;
          v85 = v52;
          v86 = 2114;
          v87 = v54;
          v88 = 2114;
          v89 = v15;
          _os_log_error_impl(&dword_228986000, v51, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Received mirroring request with identifier: %{public}@. The current workout is %{public}@", buf, 0x20u);
        }
      }
    }
  }

  v19 = [v11 name];
  v20 = [v19 isEqualToString:@"startMirroring"];

  if (v20)
  {
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __85__HDWorkoutMirroringManager_rapportMessenger_didReceiveRequest_data_responseHandler___block_invoke;
    v82[3] = &unk_27861A2B0;
    v83 = v13;
    [(HDWorkoutMirroringManager *)self _createServerWithData:v12 completion:v82];
    v21 = v83;
LABEL_36:

    goto LABEL_37;
  }

  v22 = [v11 name];
  v23 = [v22 isEqualToString:@"recoverSession"];

  if (!v23)
  {
    v27 = [[HDCodableWorkoutSessionSyncTransaction alloc] initWithData:v12];
    v28 = MEMORY[0x277CCAD78];
    v71 = v27;
    v29 = [(HDCodableWorkoutSessionSyncTransaction *)v27 sessionUUID];
    v30 = [v28 hk_UUIDWithData:v29];

    if (v30)
    {
      v31 = objc_loadWeakRetained(&self->_workoutManager);
      v32 = [v31 sessionServers];
      v33 = [v32 objectForKeyedSubscript:v30];

      if (v33)
      {
        v34 = [v33 syncController];
        [v34 rapportMessenger:v10 didReceiveRequest:v11 data:v12 responseHandler:v13];
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
          v63 = [v11 name];
          *buf = 138543874;
          v85 = v62;
          v86 = 2114;
          v87 = v30;
          v88 = 2114;
          v89 = v63;
          _os_log_error_impl(&dword_228986000, loga, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Session server %{public}@ doesn't exist to handle request %{public}@", buf, 0x20u);
        }

        v42 = [MEMORY[0x277CCDD30] sharedBehavior];
        v43 = [v42 isCompanionCapable];

        if (v43)
        {
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __85__HDWorkoutMirroringManager_rapportMessenger_didReceiveRequest_data_responseHandler___block_invoke_314;
          v74[3] = &unk_27862E990;
          v80 = v13;
          v75 = v30;
          v76 = 0;
          v77 = v10;
          v78 = v11;
          v79 = v12;
          [(HDWorkoutMirroringManager *)self recoverMirroredWorkoutSessionWithCompletion:v74];

          v34 = v80;
        }

        else
        {
          logb = objc_loadWeakRetained(&self->_workoutManager);
          v44 = [logb profile];
          v73 = 0;
          v45 = [HDWorkoutSessionServer sessionIdentifierForRecoveryInProfile:v44 error:&v73];
          v34 = v73;

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
            v89 = v34;
            v66 = v65;
            _os_log_error_impl(&dword_228986000, v64, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Queried persisted session identifier: %{public}@, error: %{public}@", buf, 0x20u);
          }

          log = v46;
          if (([v30 isEqual:v46]& 1) != 0 || v34)
          {
            v48 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to complete mirrored workout session request (#3)."];
          }

          else
          {
            v48 = [MEMORY[0x277CCA9B8] hk_error:118 format:{@"Workout session %@ doesn't exist.", v30}];
          }

          v49 = v48;
          v33 = 0;
          v13[2](v13, 0, v48);
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
        v61 = [v11 name];
        *buf = 138543618;
        v85 = v59;
        v86 = 2114;
        v87 = v61;
        _os_log_error_impl(&dword_228986000, v58, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Malformed incoming request %{public}@: session UUID is missing.", buf, 0x16u);
      }

      v39 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to complete mirrored workout session request (#1)."];
      v13[2](v13, 0, v39);
    }

    v21 = v71;
    goto LABEL_36;
  }

  v24 = objc_loadWeakRetained(&self->_workoutManager);
  v25 = [v24 currentWorkout];

  if (v25)
  {
    v26 = [v25 syncController];
    [v26 rapportMessenger:v10 didReceiveRequest:v11 data:v12 responseHandler:v13];
  }

  else
  {
    v35 = objc_loadWeakRetained(&self->_workoutManager);
    v36 = [v35 profile];
    v81 = 0;
    v72 = [HDWorkoutSessionServer sessionIdentifierForRecoveryInProfile:v36 error:&v81];
    v26 = v81;

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
      v89 = v26;
      v57 = v56;
      _os_log_error_impl(&dword_228986000, v55, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Queried persisted session identifier: %{public}@, error: %{public}@", buf, 0x20u);
    }

    v13[2](v13, 0, v26);
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

- (void)_createServerWithData:(id)a3 completion:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [[HDCodableWorkoutSessionSyncTransaction alloc] initWithData:v6];
  v9 = MEMORY[0x277CCAD78];
  v10 = [(HDCodableWorkoutSessionSyncTransaction *)v8 sessionUUID];
  v11 = [v9 hk_UUIDWithData:v10];

  v12 = MEMORY[0x277CCDC38];
  v13 = [(HDCodableWorkoutSessionSyncTransaction *)v8 configuration];
  v14 = [v13 workoutConfiguration];
  v15 = [v12 createWithCodable:v14];

  v16 = [(HDCodableWorkoutSessionSyncTransaction *)v8 configuration];
  v17 = [v16 sourceBundleIdentifier];

  if (v11 && v15 && v17)
  {
    WeakRetained = objc_loadWeakRetained(&self->_workoutManager);
    v19 = [WeakRetained sessionServers];
    v20 = [v19 objectForKeyedSubscript:v11];

    if (v20)
    {
      os_unfair_lock_unlock(&self->_lock);
      v7[2](v7, v20, 0);
    }

    else
    {
      v45 = 0;
      v23 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v17 allowPlaceholder:0 error:&v45];
      v24 = v45;
      v25 = v24;
      if (v23)
      {
        v44 = v24;
        v26 = [v23 applicationState];
        v27 = [v26 isInstalled];

        if (v27)
        {
          [(HDWorkoutMirroringManager *)self setActiveSessionBundleIdentifier:v17];
          v28 = [HDMirroredWorkoutSessionServer alloc];
          v42 = objc_loadWeakRetained(&self->_workoutManager);
          v29 = [v42 profile];
          [(HDCodableWorkoutSessionSyncTransaction *)v8 globalState];
          v30 = v43 = v23;
          v31 = [(HDMirroredWorkoutSessionServer *)v28 initWithProfile:v29 configuration:v15 sessionUUID:v11 globalState:v30 clientBundleIdentifier:v17];

          v32 = objc_loadWeakRetained(&self->_workoutManager);
          [v32 _didCreateMirroredSessionServer:v31];

          v23 = v43;
          os_unfair_lock_unlock(&self->_lock);
          v7[2](v7, v31, 0);
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
            v49 = v17;
            v41 = v40;
            _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Ignoring workout session mirroring request because the companion app %{public}@ is not installed.", buf, 0x16u);
          }

          v31 = [MEMORY[0x277CCA9B8] hk_error:552 description:@"Application is not installed on companion device."];
          (v7)[2](v7, 0, v31);
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
        (v7)[2](v7, 0, v31);
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
      v38 = [(HDCodableWorkoutSessionSyncTransaction *)v8 configuration];
      *buf = 138544130;
      v47 = v36;
      v48 = 2114;
      v49 = v11;
      v50 = 2114;
      v51 = v38;
      v52 = 2114;
      v53 = v6;
      _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Cannot start mirroring with invalid request. Session UUID: %{public}@, configuration: %{public}@, data: %{public}@", buf, 0x2Au);
    }

    v20 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Failed to start mirroring workout session."];
    (v7)[2](v7, 0, v20);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)recoverMirroredWorkoutSessionWithCompletion:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__HDWorkoutMirroringManager_recoverMirroredWorkoutSessionWithCompletion___block_invoke;
  aBlock[3] = &unk_27861A2B0;
  v24 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [MEMORY[0x277CCDD30] sharedBehavior];
  v7 = [v6 isCompanionCapable];

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC330];
  v9 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT);
  if (v7)
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
    v15 = [WeakRetained profile];
    v16 = [v15 rapportMessenger];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __73__HDWorkoutMirroringManager_recoverMirroredWorkoutSessionWithCompletion___block_invoke_337;
    v21[3] = &unk_27862E9B8;
    v21[4] = self;
    v22 = v5;
    [v16 sendRequest:v13 data:0 completion:v21];
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

- (void)launchClientWithBundleIdentifier:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
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
    v9 = v4;
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