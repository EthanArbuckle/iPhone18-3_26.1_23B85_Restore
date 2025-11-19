@interface HDHealthStoreServer
+ (void)_authenticateWithGuard:(id)a3 completion:(id)a4;
+ (void)authenticateWithCompletion:(id)a3;
- (HDDaemon)daemon;
- (HDHealthStoreServer)initWithClient:(id)a3 profile:(id)a4 configuration:(id)a5 connectionQueue:(id)a6;
- (id)_authorizationPromptHandler;
- (id)_clientRemoteObjectProxy;
- (id)_objectsToInsertWithObjects:(uint64_t)a3 error:;
- (id)_permissionBlockForRestrictedSourceEntities:(void *)a1;
- (id)_queue_objectsByProvenanceForInsertion:(void *)a3 sourceEntity:(void *)a4 sourceVersionOverride:(uint64_t)a5 error:;
- (id)clientDebuggingIdentifier;
- (id)clientSourceWithError:(id *)a3;
- (id)diagnosticDescription;
- (id)objectAuthorizationPromptHandler;
- (uint64_t)_queue_insertObjects:(void *)a3 sourceEntity:(void *)a4 sourceVersionOverride:(char)a5 shouldJournal:(char)a6 skipInsertionFilter:(void *)a7 databaseAssertion:(uint64_t)a8 error:(void *)a9 creationDate:;
- (void)_lock_cancelActiveClientTransaction;
- (void)_remote_associateSampleUUIDs:(id)a3 withSampleUUID:(id)a4 completion:(id)a5;
- (void)_remote_saveObjects:(id)a3 deleteObjects:(id)a4 associations:(id)a5 completion:(id)a6;
- (void)_requireEntitlement:(void *)a3 usingBlock:(void *)a4 errorHandler:;
- (void)_saveDataObjects:(void *)a3 sourceEntity:(void *)a4 sourceVersion:(char)a5 skipInsertionFilter:(void *)a6 databaseAssertion:(void *)a7 handler:(void *)a8 creationDate:;
- (void)_serverActivityChanged;
- (void)conceptIndexManagerDidBecomeQuiescent:(id)a3 samplesProcessedCount:(int64_t)a4;
- (void)invalidate;
- (void)performIfAuthorizedToDeleteObjectTypes:(id)a3 usingBlock:(id)a4 errorHandler:(id)a5;
- (void)performIfAuthorizedToSaveObjectTypes:(id)a3 usingBlock:(id)a4 errorHandler:(id)a5;
- (void)remote_addSamples:(id)a3 toWorkout:(id)a4 completion:(id)a5;
- (void)remote_authorizationStatusForType:(id)a3 completion:(id)a4;
- (void)remote_beginAuthorizationDelegateTransactionWithSessionIdentifier:(id)a3 handler:(id)a4;
- (void)remote_clientResumedWithCompletion:(id)a3;
- (void)remote_clientWillSuspendWithCompletion:(id)a3;
- (void)remote_closeTransactionWithDataTypes:(id)a3 anchor:(id)a4 ackTime:(id)a5 completion:(id)a6;
- (void)remote_createTaskServerEndpointForIdentifier:(id)a3 pluginURL:(id)a4 taskUUID:(id)a5 instanceUUID:(id)a6 configuration:(id)a7 completion:(id)a8;
- (void)remote_deleteAllSamplesWithTypes:(id)a3 sourceBundleIdentifier:(id)a4 options:(unint64_t)a5 completion:(id)a6;
- (void)remote_deleteClientSourceWithCompletion:(id)a3;
- (void)remote_deleteDataObjects:(id)a3 options:(unint64_t)a4 handler:(id)a5;
- (void)remote_deleteDataObjectsOfType:(id)a3 matchingFilter:(id)a4 options:(unint64_t)a5 handler:(id)a6;
- (void)remote_deleteObjectsWithUUIDs:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)remote_dropEntitlement:(id)a3 completion:(id)a4;
- (void)remote_fetchCharacteristicWithDataType:(id)a3 handler:(id)a4;
- (void)remote_fetchDaemonPreferenceForKey:(id)a3 completion:(id)a4;
- (void)remote_fetchModificationDateForCharacteristicWithDataType:(id)a3 handler:(id)a4;
- (void)remote_fetchPluginServiceEndpointWithIdentifier:(id)a3 completion:(id)a4;
- (void)remote_fetchServerURLForAssetType:(id)a3 completion:(id)a4;
- (void)remote_fetchUnitPreferencesForTypes:(id)a3 version:(int64_t)a4 withCompletion:(id)a5;
- (void)remote_getAllHealthDataAccessForSiriWithCompletion:(id)a3;
- (void)remote_getIsFeatureSetAvailable:(unint64_t)a3 completion:(id)a4;
- (void)remote_getRequestStatusForAuthorizationToShareTypes:(id)a3 readTypes:(id)a4 completion:(id)a5;
- (void)remote_handleAuthorizationForExtensionWithCompletion:(id)a3;
- (void)remote_isProtectedDataAvailable:(id)a3;
- (void)remote_recalibrateEstimatesForSampleType:(id)a3 atDate:(id)a4 completion:(id)a5;
- (void)remote_recoverActiveWorkoutSessionWithCompletion:(id)a3;
- (void)remote_relateReplaceRatingOfExertionSample:(id)a3 toWorkout:(id)a4 workoutActivity:(id)a5 samples:(id)a6 completion:(id)a7;
- (void)remote_relateSamples:(id)a3 withObject:(id)a4 subObject:(id)a5 type:(unint64_t)a6 behavior:(unint64_t)a7 completion:(id)a8;
- (void)remote_removePreferredUnitForType:(id)a3 completion:(id)a4;
- (void)remote_replaceWorkout:(id)a3 withWorkout:(id)a4 completion:(id)a5;
- (void)remote_requestConceptReadAuthorizationForType:(id)a3 filter:(id)a4 completion:(id)a5;
- (void)remote_requestPerObjectReadAuthorizationForType:(id)a3 filter:(id)a4 completion:(id)a5;
- (void)remote_restoreEntitlement:(id)a3 completion:(id)a4;
- (void)remote_saveDataObjects:(id)a3 skipInsertionFilter:(BOOL)a4 creationDateOverride:(id)a5 handler:(id)a6;
- (void)remote_saveDataObjects:(id)a3 skipInsertionFilter:(BOOL)a4 transactionIdentifier:(id)a5 final:(BOOL)a6 handler:(id)a7;
- (void)remote_setAllHealthDataAccessForSiri:(int64_t)a3 completion:(id)a4;
- (void)remote_setBackgroundDeliveryFrequency:(int64_t)a3 forDataType:(id)a4 handler:(id)a5;
- (void)remote_setCharacteristic:(id)a3 forDataType:(id)a4 handler:(id)a5;
- (void)remote_setDaemonPreferenceValue:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)remote_setMirroredWorkoutSessionObserverStateToEnabled:(BOOL)a3 completion:(id)a4;
- (void)remote_setPreferredUnit:(id)a3 forType:(id)a4 completion:(id)a5;
- (void)remote_setServerURL:(id)a3 forAssetType:(id)a4 completion:(id)a5;
- (void)remote_splitTotalCalories:(double)a3 timeInterval:(double)a4 withCompletion:(id)a5;
- (void)remote_startWatchAppWithMirroredStartData:(id)a3 completion:(id)a4;
- (void)remote_startWatchAppWithWorkoutConfiguration:(id)a3 completion:(id)a4;
- (void)remote_startWatchAppWithWorkoutPlanData:(id)a3 completion:(id)a4;
- (void)remote_takeWorkoutBackgroundStartAssertionForApplicationIdentifier:(id)a3 completion:(id)a4;
- (void)remote_unrelateSamples:(id)a3 withObject:(id)a4 subObject:(id)a5 type:(unint64_t)a6 behavior:(unint64_t)a7 completion:(id)a8;
- (void)saveSamples:(id)a3 databaseAssertion:(id)a4 withCompletion:(id)a5;
- (void)start;
- (void)taskServerDidFailToInitializeForUUID:(id)a3;
- (void)taskServerDidInvalidate:(id)a3;
- (void)unitPreferencesManagerDidUpdateUnitPreferences:(id)a3;
- (void)workoutManager:(id)a3 didUpdateCurrentWorkout:(id)a4;
@end

@implementation HDHealthStoreServer

- (void)start
{
  v3 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [v3 addObject:self];

  v4 = [(HDProfile *)self->_profile unitPreferencesManager];
  [v4 addUnitPreferenceObserver:self queue:self->_queue];

  v5 = [(HDProfile *)self->_profile conceptIndexManager];
  [v5 addObserver:self];
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (void)_serverActivityChanged
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HDHealthStoreServer__serverActivityChanged__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __45__HDHealthStoreServer__serverActivityChanged__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && ([*(v1 + 48) hasActiveQueries] & 1) == 0)
  {
    os_unfair_lock_lock((v1 + 32));
    [(HDHealthStoreServer *)v1 _lock_cancelActiveClientTransaction];

    os_unfair_lock_unlock((v1 + 32));
  }
}

- (void)invalidate
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [v3 removeObject:self];

  v4 = [(HDProfile *)self->_profile unitPreferencesManager];
  [v4 removeUnitPreferenceObserver:self];

  v5 = [(HDProfile *)self->_profile conceptIndexManager];
  [v5 removeObserver:self];

  os_unfair_lock_lock(&self->_lock);
  [(HDHealthStoreServer *)self _lock_cancelActiveClientTransaction];
  [(HDHealthStoreClient *)self->_client invalidateAssertions];
  v6 = [(HDHealthStoreClient *)self->_client connection];
  [v6 invalidate];

  [(HDQueryControlServer *)self->_queryControlServer invalidate];
  [(HDClientAuthorizationOracle *)self->_clientAuthorizationOracle invalidate];
  v7 = [(NSMutableDictionary *)self->_taskServerEndpointsByUUID allValues];
  [(NSMutableDictionary *)self->_taskServerEndpointsByUUID removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) invalidate];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)_authenticateWithGuard:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CEBE80];
  v7 = *MEMORY[0x277CCE3A8];
  v8 = a3;
  v9 = [v6 applicationWithBundleIdentifier:v7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HDHealthStoreServer_AppProtectionHelper___authenticateWithGuard_completion___block_invoke;
  v11[3] = &unk_2786130D8;
  v12 = v5;
  v10 = v5;
  [v8 authenticateForSubject:v9 completion:v11];
}

void __78__HDHealthStoreServer_AppProtectionHelper___authenticateWithGuard_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HDHealthStoreServer_AppProtectionHelper___authenticateWithGuard_completion___block_invoke_2;
  block[3] = &unk_278616460;
  v6 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

+ (void)authenticateWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CEBE98];
  v5 = a3;
  v6 = [v4 sharedGuard];
  [a1 _authenticateWithGuard:v6 completion:v5];
}

- (HDHealthStoreServer)initWithClient:(id)a3 profile:(id)a4 configuration:(id)a5 connectionQueue:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"HDHealthStoreServer.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v32 = [MEMORY[0x277CCA890] currentHandler];
  [v32 handleFailureInMethod:a2 object:self file:@"HDHealthStoreServer.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"client != nil"}];

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  v34 = [MEMORY[0x277CCA890] currentHandler];
  [v34 handleFailureInMethod:a2 object:self file:@"HDHealthStoreServer.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];

LABEL_4:
  v35.receiver = self;
  v35.super_class = HDHealthStoreServer;
  v16 = [(HDHealthStoreServer *)&v35 init];
  v17 = v16;
  if (v16)
  {
    v16->_lock._os_unfair_lock_opaque = 0;
    v18 = HKCreateSerialDispatchQueue();
    queue = v17->_queue;
    v17->_queue = v18;

    objc_storeStrong(&v17->_connectionQueue, a6);
    objc_storeStrong(&v17->_client, a3);
    v20 = [v14 copy];
    configuration = v17->_configuration;
    v17->_configuration = v20;

    objc_storeStrong(&v17->_profile, a4);
    v22 = [v13 daemon];
    objc_storeWeak(&v17->_daemon, v22);

    v23 = [HDClientAuthorizationOracle alloc];
    v24 = [v12 sourceBundleIdentifier];
    v25 = [(HDHealthStoreClient *)v17->_client process];
    v26 = [v25 entitlements];
    v27 = [(HDClientAuthorizationOracle *)v23 initWithSourceBundleIdentifier:v24 entitlements:v26 profile:v13];
    clientAuthorizationOracle = v17->_clientAuthorizationOracle;
    v17->_clientAuthorizationOracle = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taskServerEndpointsByUUID = v17->_taskServerEndpointsByUUID;
    v17->_taskServerEndpointsByUUID = v29;
  }

  return v17;
}

- (void)_lock_cancelActiveClientTransaction
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 32));
    v3 = [MEMORY[0x277CCA9B8] hk_error:7 description:@"Timer cancelled"];
    [*(a1 + 24) invalidateAndInvokeCompletionWithError:v3];
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;
  }
}

- (id)clientDebuggingIdentifier
{
  if (a1)
  {
    v1 = [a1 configuration];
    v2 = [v1 debugIdentifier];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_requireEntitlement:(void *)a3 usingBlock:(void *)a4 errorHandler:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1)
  {
    goto LABEL_9;
  }

  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:sel__requireEntitlement_usingBlock_errorHandler_ object:a1 file:@"HDHealthStoreServer.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"entitlement != nil"}];

    if (v8)
    {
      goto LABEL_4;
    }

LABEL_11:
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:sel__requireEntitlement_usingBlock_errorHandler_ object:a1 file:@"HDHealthStoreServer.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

    goto LABEL_4;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_4:
  v10 = *(a1 + 88);
  v15 = 0;
  v11 = [v10 hasRequiredEntitlement:v7 error:&v15];
  v12 = v15;
  if (v11)
  {
    v8[2](v8);
  }

  else if (v9)
  {
    v9[2](v9, v12);
  }

LABEL_9:
}

- (id)clientSourceWithError:(id *)a3
{
  v5 = [(HDProfile *)self->_profile sourceManager];
  v6 = [v5 createOrUpdateSourceForClient:self->_client error:a3];

  return v6;
}

- (void)remote_createTaskServerEndpointForIdentifier:(id)a3 pluginURL:(id)a4 taskUUID:(id)a5 instanceUUID:(id)a6 configuration:(id)a7 completion:(id)a8
{
  v49 = *MEMORY[0x277D85DE8];
  v14 = a3;
  if (!a8)
  {
    goto LABEL_21;
  }

  v44 = 0;
  v15 = a8;
  v16 = v14;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = v20;
  if (!self)
  {
    goto LABEL_15;
  }

  if (!v16)
  {
    v29 = MEMORY[0x277CCA9B8];
    v30 = @"Nil task server identifier";
LABEL_14:
    [v29 hk_assignError:&v44 code:3 format:v30];
LABEL_15:
    v31 = 0;
    goto LABEL_16;
  }

  if (!v18)
  {
    v29 = MEMORY[0x277CCA9B8];
    v30 = @"Nil task UUID";
    goto LABEL_14;
  }

  if (!v19)
  {
    v29 = MEMORY[0x277CCA9B8];
    v30 = @"Nil instance UUID";
    goto LABEL_14;
  }

  v43 = v20;
  if (v17 && (-[HDHealthStoreServer daemon](self, "daemon"), v22 = objc_claimAutoreleasedReturnValue(), [v22 taskServerRegistry], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "loadTaskServersFromPluginAtURL:error:", v17, &v44), v23, v22, !v24))
  {
    v31 = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v25 = [(NSMutableDictionary *)self->_taskServerEndpointsByUUID objectForKeyedSubscript:v18];
    os_unfair_lock_unlock(&self->_lock);
    if (v25)
    {
LABEL_9:
      v26 = [v25 instanceUUID];
      v27 = [v26 isEqual:v19];

      if (v27)
      {
        v28 = v25;
      }

      else
      {
        v42 = MEMORY[0x277CCA9B8];
        v36 = [v18 UUIDString];
        v37 = [v25 instanceUUID];
        v38 = [v37 UUIDString];
        [v42 hk_assignError:&v44 code:3 format:{@"Task server endpoint for '%@' already exists (for instance '%@')", v36, v38}];

        v28 = 0;
      }

      v21 = v43;
      v31 = v28;

      goto LABEL_16;
    }

    v39 = [(HDHealthStoreServer *)self daemon];
    v40 = [v39 taskServerRegistry];
    v31 = [v40 createTaskServerEndpointForIdentifier:v16 taskUUID:v18 instanceUUID:v19 configuration:v43 client:self->_client connectionQueue:self->_connectionQueue error:&v44];

    if (v31)
    {
      os_unfair_lock_lock(&self->_lock);
      v41 = [(NSMutableDictionary *)self->_taskServerEndpointsByUUID objectForKeyedSubscript:v18];
      if (v41)
      {
        v25 = v41;
        os_unfair_lock_unlock(&self->_lock);

        goto LABEL_9;
      }

      [v31 setDelegate:self];
      [v31 setTaskServerDelegate:self];
      [(NSMutableDictionary *)self->_taskServerEndpointsByUUID setObject:v31 forKeyedSubscript:v18];
      os_unfair_lock_unlock(&self->_lock);
      [v31 resume];
    }
  }

  v21 = v43;
LABEL_16:

  v32 = v44;
  if (!v31)
  {
    _HKInitializeLogging();
    v33 = HKLogInfrastructure();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v46 = v16;
      v47 = 2114;
      v48 = v32;
      _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "Failed to create task server endpoint for identifier %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v34 = [v31 listenerEndpoint];
  v15[2](v15, v34, v32);

LABEL_21:
  v35 = *MEMORY[0x277D85DE8];
}

- (void)taskServerDidFailToInitializeForUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_taskServerEndpointsByUUID objectForKeyedSubscript:v4];
  [(NSMutableDictionary *)self->_taskServerEndpointsByUUID setObject:0 forKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);
  [v5 invalidate];
}

- (void)taskServerDidInvalidate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  taskServerEndpointsByUUID = self->_taskServerEndpointsByUUID;
  v6 = [v4 taskUUID];
  v9 = [(NSMutableDictionary *)taskServerEndpointsByUUID objectForKeyedSubscript:v6];

  v7 = self->_taskServerEndpointsByUUID;
  v8 = [v4 taskUUID];

  [(NSMutableDictionary *)v7 setObject:0 forKeyedSubscript:v8];
  os_unfair_lock_unlock(&self->_lock);
  [v9 invalidate];
}

- (void)performIfAuthorizedToSaveObjectTypes:(id)a3 usingBlock:(id)a4 errorHandler:(id)a5
{
  v8 = MEMORY[0x277CBEB98];
  v9 = a5;
  v10 = a4;
  v11 = [v8 setWithArray:a3];
  [(HDClientAuthorizationOracle *)self->_clientAuthorizationOracle performIfAuthorizedToSaveObjectsWithTypes:v11 onQueue:self->_queue usingBlock:v10 errorHandler:v9];
}

- (void)performIfAuthorizedToDeleteObjectTypes:(id)a3 usingBlock:(id)a4 errorHandler:(id)a5
{
  v8 = MEMORY[0x277CBEB98];
  v9 = a5;
  v10 = a4;
  v11 = [v8 setWithArray:a3];
  [(HDClientAuthorizationOracle *)self->_clientAuthorizationOracle performIfAuthorizedToDeleteObjectsWithTypes:v11 onQueue:self->_queue usingBlock:v10 errorHandler:v9];
}

- (void)saveSamples:(id)a3 databaseAssertion:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = 0;
  v11 = [(HDHealthStoreServer *)self clientSourceWithError:&v13];
  v12 = v13;
  if (v11)
  {
    if (self)
    {
      [(HDHealthStoreServer *)&self->super.isa _saveDataObjects:v8 sourceEntity:v11 sourceVersion:0 skipInsertionFilter:0 databaseAssertion:v9 handler:v10 creationDate:0];
    }
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0, v12);
  }
}

- (void)remote_fetchPluginServiceEndpointWithIdentifier:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    client = self->_client;
    v10 = *MEMORY[0x277CCC8B0];
    v23 = 0;
    v11 = [(HDHealthStoreClient *)client hasRequiredEntitlement:v10 error:&v23];
    v12 = v23;
    if (v11)
    {
      if (v7)
      {
        v13 = [(HDProfile *)self->_profile profileExtensionWithIdentifier:v7];
        if (v13)
        {
          v14 = [(HDHealthStoreClient *)self->_client XPCClient];
          v22 = v12;
          v15 = [v13 listenerEndpointForClient:v14 error:&v22];
          v16 = v22;

          v8[2](v8, v15, v16);
          v12 = v16;
        }

        else
        {
          WeakRetained = objc_loadWeakRetained(&self->_daemon);
          v15 = [WeakRetained daemonExtensionWithIdentifier:v7];

          if (v15)
          {
            v18 = [(HDHealthStoreClient *)self->_client XPCClient];
            v21 = v12;
            v19 = [v15 listenerEndpointForClient:v18 error:&v21];
            v20 = v21;

            v8[2](v8, v19, v20);
            v12 = v20;
          }

          else
          {
            v19 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Plugin %@ does not export a service", v7}];
            v8[2](v8, 0, v19);
          }
        }
      }

      else
      {
        v13 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"pluginIdentifier must not be nil"];
        v8[2](v8, 0, v13);
      }
    }

    else
    {
      v8[2](v8, 0, v12);
    }
  }
}

- (void)remote_recalibrateEstimatesForSampleType:(id)a3 atDate:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v11 = [(HDHealthStoreServer *)self clientSourceWithError:&v21];
  v12 = v21;
  if (v11)
  {
    v13 = *MEMORY[0x277CCC1C0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82__HDHealthStoreServer_remote_recalibrateEstimatesForSampleType_atDate_completion___block_invoke;
    v16[3] = &unk_27861F9C0;
    v16[4] = self;
    v17 = v8;
    v18 = v11;
    v19 = v9;
    v20 = v10;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __82__HDHealthStoreServer_remote_recalibrateEstimatesForSampleType_atDate_completion___block_invoke_3;
    v14[3] = &unk_2786200D0;
    v15 = v20;
    [(HDHealthStoreServer *)self _requireEntitlement:v13 usingBlock:v16 errorHandler:v14];
  }

  else
  {
    (*(v10 + 2))(v10, 0, v12);
  }
}

void __82__HDHealthStoreServer_remote_recalibrateEstimatesForSampleType_atDate_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 56);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HDHealthStoreServer_remote_recalibrateEstimatesForSampleType_atDate_completion___block_invoke_2;
  v6[3] = &unk_278618DA0;
  v6[4] = v1;
  v7 = *(a1 + 64);
  [v3 createRecalibrateEstimatesRequestRecordForSampleType:v2 sourceEntity:v4 effectiveDate:v5 handler:v6];
}

void __82__HDHealthStoreServer_remote_recalibrateEstimatesForSampleType_atDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [(HDHealthStoreServer *)*(a1 + 32) _clientRemoteObjectProxy];
    [v3 clientRemote_presentRecalibrateEstimatesRequestWithRecord:v4 completion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_clientRemoteObjectProxy
{
  if (a1)
  {
    v1 = [*(a1 + 88) connection];
    v2 = [v1 remoteObjectProxy];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)remote_authorizationStatusForType:(id)a3 completion:(id)a4
{
  if (a4)
  {
    [(HDClientAuthorizationOracle *)self->_clientAuthorizationOracle authorizationStatusForType:a3 completion:?];
  }
}

- (void)remote_getRequestStatusForAuthorizationToShareTypes:(id)a3 readTypes:(id)a4 completion:(id)a5
{
  if (a5)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = [(HDHealthStoreServer *)self profile];
    v12 = [v11 authorizationManager];

    v13 = [(HDHealthStoreServer *)self client];
    v14 = [v13 sourceBundleIdentifier];
    v17 = 0;
    v15 = [v12 authorizationRequestStatusForClientBundleIdentifier:v14 writeTypes:v10 readTypes:v9 error:&v17];

    v16 = v17;
    v8[2](v8, v15, v16);
  }
}

- (void)remote_requestPerObjectReadAuthorizationForType:(id)a3 filter:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 requiresPerObjectAuthorization])
  {
    v11 = [HDSampleEntity entityEnumeratorWithType:v8 profile:self->_profile];
    v12 = [v9 predicateWithProfile:self->_profile];
    [v11 setPredicate:v12];

    v13 = [MEMORY[0x277CBEB18] array];
    v29[0] = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __89__HDHealthStoreServer_remote_requestPerObjectReadAuthorizationForType_filter_completion___block_invoke;
    v27[3] = &unk_2786204C8;
    v14 = v13;
    v28 = v14;
    v15 = [v11 enumerateWithError:v29 handler:v27];
    v16 = v29[0];
    if (v15)
    {
      v21 = [objc_alloc(MEMORY[0x277CCD708]) initWithExpectedObjectType:v8];
      v17 = [[HDObjectAuthorizationRequestContext alloc] initWithSamples:v14 metadata:v21];
      [(HDObjectAuthorizationRequestContext *)v17 setPersistSession:0];
      [(HDObjectAuthorizationRequestContext *)v17 setPromptWithNoSamples:1];
      [(HDObjectAuthorizationRequestContext *)v17 setPromptWithAllSamples:1];
      v26 = 0;
      v18 = [(HDHealthStoreServer *)self clientSourceWithError:&v26];
      v19 = v26;
      if (v18)
      {
        clientAuthorizationOracle = self->_clientAuthorizationOracle;
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __89__HDHealthStoreServer_remote_requestPerObjectReadAuthorizationForType_filter_completion___block_invoke_2;
        v24[3] = &unk_27862DBF0;
        v24[4] = self;
        v25 = v8;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __89__HDHealthStoreServer_remote_requestPerObjectReadAuthorizationForType_filter_completion___block_invoke_364;
        v22[3] = &unk_278624388;
        v23 = v10;
        [(HDClientAuthorizationOracle *)clientAuthorizationOracle enqueueObjectAuthorizationRequestWithContext:v17 sourceEntity:v18 promptIfNeeded:1 authorizationNeededHandler:v24 completion:v22];
      }

      else
      {
        (*(v10 + 2))(v10, 0, v19);
      }
    }

    else
    {
      (*(v10 + 2))(v10, 0, v16);
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Object type %@ does not support per-object authorization.", v8}];
    (*(v10 + 2))(v10, 0, v11);
  }
}

void __89__HDHealthStoreServer_remote_requestPerObjectReadAuthorizationForType_filter_completion___block_invoke_2(uint64_t a1, void *a2, int a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    _HKInitializeLogging();
    v9 = HKLogAuthorization();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v8;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "Failed to determine object authorization status: %{public}@", &v14, 0xCu);
    }
  }

  else if (a3)
  {
    v10 = *(a1 + 32);
    v11 = v10[7];
    v12 = [v10 objectAuthorizationPromptHandler];
    [v11 handleObjectAuthorizationRequestsWithPromptHandler:v12 objectType:*(a1 + 40) completion:&__block_literal_global_230];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __89__HDHealthStoreServer_remote_requestPerObjectReadAuthorizationForType_filter_completion___block_invoke_362(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = HKLogAuthorization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to handle object authorization request: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)remote_requestConceptReadAuthorizationForType:(id)a3 filter:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 requiresPerObjectAuthorization])
  {
    v17 = 0;
    v9 = [(HDHealthStoreServer *)self clientSourceWithError:&v17];
    v10 = v17;
    if (v9)
    {
      clientAuthorizationOracle = self->_clientAuthorizationOracle;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __87__HDHealthStoreServer_remote_requestConceptReadAuthorizationForType_filter_completion___block_invoke;
      v15[3] = &unk_27862DBF0;
      v15[4] = self;
      v16 = v7;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __87__HDHealthStoreServer_remote_requestConceptReadAuthorizationForType_filter_completion___block_invoke_369;
      v13[3] = &unk_2786130D8;
      v14 = v8;
      [(HDClientAuthorizationOracle *)clientAuthorizationOracle enqueueAuthorizationRequestForObjectType:v16 sourceEntity:v9 promptIfNeeded:1 authorizationNeededHandler:v15 completionHandler:v13];
    }

    else
    {
      (*(v8 + 2))(v8, 0, v10);
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Object type %@ does not support per-object authorization.", v7}];
    (*(v8 + 2))(v8, 0, v12);
  }
}

void __87__HDHealthStoreServer_remote_requestConceptReadAuthorizationForType_filter_completion___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    _HKInitializeLogging();
    v9 = HKLogAuthorization();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v8;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "Failed to determine object authorization status: %{public}@", &v14, 0xCu);
    }
  }

  else if (a3)
  {
    v10 = *(a1 + 32);
    v11 = v10[7];
    v12 = [v10 objectAuthorizationPromptHandler];
    [v11 handleHealthConceptAuthorizationRequestsWithPromptHandler:v12 objectType:*(a1 + 40) completion:&__block_literal_global_368];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __87__HDHealthStoreServer_remote_requestConceptReadAuthorizationForType_filter_completion___block_invoke_366(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = HKLogAuthorization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to handle object authorization request: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __97__HDHealthStoreServer_remote_requestAuthorizationToShareTypes_readTypes_shouldPrompt_completion___block_invoke(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (a3)
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __97__HDHealthStoreServer_remote_requestAuthorizationToShareTypes_readTypes_shouldPrompt_completion___block_invoke_2;
    v24 = &unk_2786173C8;
    v12 = *(a1 + 32);
    v25 = *(a1 + 40);
    v13 = v11;
    v26 = v13;
    if (v12)
    {
      v14 = *(v12 + 88);
      v15 = &v21;
      v16 = v9;
      v17 = [v14 sourceBundleIdentifier];
      v18 = [*(v12 + 72) authorizationManager];
      [v18 openAppForAuthorization:v17 sessionIdentifier:v16 completion:v15];

      v13 = v26;
    }
  }

  else
  {
    if (v10)
    {
      _HKInitializeLogging();
      v19 = HKLogAuthorization();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = v10;
        _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "Failed to determine whether authorization is necessary: %{public}@", buf, 0xCu);
      }
    }

    [*(*(a1 + 32) + 56) handleAuthorizationRequestsWithPromptHandler:0 requestCompletionHandler:0];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __97__HDHealthStoreServer_remote_requestAuthorizationToShareTypes_readTypes_shouldPrompt_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v11 = 138412546;
        v12 = v8;
        v13 = 2114;
        v14 = v5;
        _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Unable to launch host app %@ for authorization: %{public}@", &v11, 0x16u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "Did not launch host app %@ for authorization", &v11, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __97__HDHealthStoreServer_remote_requestAuthorizationToShareTypes_readTypes_shouldPrompt_completion___block_invoke_374(uint64_t a1, char a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 56) enqueueAuthorizationRequestToWriteTypes:*(a1 + 40) readTypes:*(a1 + 48) authorizationNeededHandler:*(a1 + 64) requestCompletionHandler:*(a1 + 56)];
    if (*(a1 + 72) == 1)
    {
      if ((*(a1 + 73) & 1) != 0 || (*(a1 + 74) & 1) == 0)
      {
        v6 = [(HDHealthStoreServer *)*(a1 + 32) _authorizationPromptHandler];
        [*(*(a1 + 32) + 56) handleAuthorizationRequestsWithPromptHandler:v6 requestCompletionHandler:0];
      }
    }

    else
    {
      v5 = *(*(a1 + 32) + 56);

      [v5 handleAuthorizationRequestsWithPromptHandler:0 requestCompletionHandler:0];
    }
  }

  else
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 56) + 16);

    v4();
  }
}

- (id)_authorizationPromptHandler
{
  if (a1)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__HDHealthStoreServer__authorizationPromptHandler__block_invoke;
    aBlock[3] = &unk_27862DC90;
    aBlock[4] = a1;
    a1 = _Block_copy(aBlock);
    v1 = aBlock[6];
  }

  return a1;
}

- (void)remote_handleAuthorizationForExtensionWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(HDHealthStoreClient *)self->_client process];
  v7 = [v6 isExtension];

  if (v7)
  {
    v8 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Cannot request authorization on behalf of an extension from within an extension."];
    v5[2](v5, 0, v8);
  }

  else
  {
    v12 = 0;
    v9 = [(HDHealthStoreServer *)self clientSourceWithError:&v12];
    v10 = v12;
    if (v9)
    {
      v11 = [(HDHealthStoreServer *)self _authorizationPromptHandler];
      [(HDClientAuthorizationOracle *)self->_clientAuthorizationOracle handleAuthorizationRequestsWithPromptHandler:v11 requestCompletionHandler:v5];
    }

    else
    {
      v5[2](v5, 0, v10);
    }
  }
}

- (void)remote_beginAuthorizationDelegateTransactionWithSessionIdentifier:(id)a3 handler:(id)a4
{
  v6 = a4;
  clientAuthorizationOracle = self->_clientAuthorizationOracle;
  client = self->_client;
  v9 = a3;
  v10 = [(HDHealthStoreClient *)client process];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HDHealthStoreServer_remote_beginAuthorizationDelegateTransactionWithSessionIdentifier_handler___block_invoke;
  v12[3] = &unk_27862DC68;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [(HDClientAuthorizationOracle *)clientAuthorizationOracle beginAuthorizationRequestDelegateTransactionWithSessionIdentifier:v9 clientProcess:v10 completion:v12];
}

void __97__HDHealthStoreServer_remote_beginAuthorizationDelegateTransactionWithSessionIdentifier_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [*(*(a1 + 32) + 72) sourceManager];
    v16 = 0;
    v9 = [v8 localSourceForBundleIdentifier:v5 error:&v16];
    v10 = v16;
    v11 = v10;
    if (v9)
    {
      v15 = v10;
      v12 = [v8 clientSourceForSourceEntity:v9 error:&v15];
      v13 = v15;
    }

    else
    {
      if (v7)
      {
        v12 = 0;
        goto LABEL_9;
      }

      v13 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"No source for bundle identifier %@", v5}];
      v12 = 0;
    }

    v11 = v13;
LABEL_9:

    goto LABEL_10;
  }

  if (v6)
  {
    v11 = v6;
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

LABEL_10:
  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v12, v11);
  }
}

void __50__HDHealthStoreServer__authorizationPromptHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__HDHealthStoreServer__authorizationPromptHandler__block_invoke_2;
  v9[3] = &unk_278613150;
  v9[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [HDHealthStoreServer authenticateWithCompletion:v9];
}

void __50__HDHealthStoreServer__authorizationPromptHandler__block_invoke_2(uint64_t *a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [(HDHealthStoreServer *)a1[4] _clientRemoteObjectProxy];
    [v7 clientRemote_presentAuthorizationWithRequestRecord:a1[5] completion:a1[6]];
  }

  else
  {
    if (v5)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
      {
        v10 = a1[4];
        v11 = 138543618;
        v12 = v10;
        v13 = 2114;
        v14 = v6;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Authentication failed: %{public}@.", &v11, 0x16u);
      }
    }

    (*(a1[6] + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)objectAuthorizationPromptHandler
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__HDHealthStoreServer_objectAuthorizationPromptHandler__block_invoke;
  aBlock[3] = &unk_27862DCB8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

void __55__HDHealthStoreServer_objectAuthorizationPromptHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__HDHealthStoreServer_objectAuthorizationPromptHandler__block_invoke_2;
  v10[3] = &unk_27861AA30;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v10[4] = v7;
  v8 = v5;
  v9 = v6;
  [HDHealthStoreServer authenticateWithCompletion:v10];
}

void __55__HDHealthStoreServer_objectAuthorizationPromptHandler__block_invoke_2(uint64_t *a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Authentication failed: %{public}@.", &v11, 0x16u);
    }

LABEL_9:

    (*(a1[6] + 16))();
    goto LABEL_10;
  }

  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = a1[4];
      v11 = 138543362;
      v12 = v10;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Authentication failed: User fail.", &v11, 0xCu);
    }

    goto LABEL_9;
  }

  v7 = [(HDHealthStoreServer *)a1[4] _clientRemoteObjectProxy];
  [v7 clientRemote_presentAuthorizationWithSession:a1[5] completion:a1[6]];

LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)remote_saveDataObjects:(id)a3 skipInsertionFilter:(BOOL)a4 creationDateOverride:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v16 = 0;
  v13 = [(HDHealthStoreServer *)self clientSourceWithError:&v16];
  v14 = v16;
  v15 = [(HDHealthStoreClient *)self->_client hasEntitlement:*MEMORY[0x277CCBBA0]];
  if (v11 && !v15)
  {

    v11 = 0;
  }

  if (v13)
  {
    [(HDHealthStoreServer *)&self->super.isa _saveDataObjects:v10 sourceEntity:v13 sourceVersion:0 skipInsertionFilter:a4 & [(HDHealthStoreClient *)self->_client hasEntitlement:*MEMORY[0x277CCCDA8]] databaseAssertion:0 handler:v12 creationDate:v11];
  }

  else if (v12)
  {
    (*(v12 + 2))(v12, 0, v14);
  }
}

- (void)_saveDataObjects:(void *)a3 sourceEntity:(void *)a4 sourceVersion:(char)a5 skipInsertionFilter:(void *)a6 databaseAssertion:(void *)a7 handler:(void *)a8 creationDate:
{
  v62 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (a1)
  {
    if (!v16)
    {
      [MEMORY[0x277CCA890] currentHandler];
      v39 = v38 = v20;
      [v39 handleFailureInMethod:sel__saveDataObjects_sourceEntity_sourceVersion_skipInsertionFilter_databaseAssertion_handler_creationDate_ object:a1 file:@"HDHealthStoreServer.m" lineNumber:1164 description:{@"Invalid parameter not satisfying: %@", @"sourceEntity != nil"}];

      v20 = v38;
    }

    v56 = 0;
    v21 = [(HDHealthStoreServer *)a1 _objectsToInsertWithObjects:v15 error:&v56];
    v22 = v56;
    v23 = v22;
    if (v21)
    {
      v40 = v22;
      v45 = v15;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __126__HDHealthStoreServer__saveDataObjects_sourceEntity_sourceVersion_skipInsertionFilter_databaseAssertion_handler_creationDate___block_invoke;
      v48[3] = &unk_27862DD58;
      v48[4] = a1;
      v24 = v21;
      v49 = v24;
      v44 = v16;
      v50 = v16;
      v43 = v17;
      v51 = v17;
      v55 = a5;
      v52 = v18;
      v41 = v20;
      v53 = v20;
      v42 = v19;
      v54 = v19;
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __126__HDHealthStoreServer__saveDataObjects_sourceEntity_sourceVersion_skipInsertionFilter_databaseAssertion_handler_creationDate___block_invoke_2;
      v46[3] = &unk_2786200D0;
      v47 = v54;
      [a1 _performIfAuthorizedToSaveObjects:v24 usingBlock:v48 errorHandler:v46];
      v25 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC970]];
      v26 = v24;
      v27 = v25;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v28 = v26;
      v29 = [v28 countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v58;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v58 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v57 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v34 = [v33 quantityType];
              v35 = [v34 isEqual:v27];

              if (v35)
              {

                v36 = [a1[9] unitPreferencesManager];
                [v36 setPreferredUnitToDefaultIfNotSetForType:v27];

                goto LABEL_17;
              }
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v57 objects:v61 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
      v16 = v44;
      v15 = v45;
      v17 = v43;
      v20 = v41;
      v19 = v42;
      v23 = v40;
    }

    else
    {
      (*(v19 + 2))(v19, 0, v22);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __105__HDHealthStoreServer__saveValidatedDataObjects_skipInsertionFilter_transactionIdentifier_final_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v17 = 0;
  v3 = [v2 clientSourceWithError:&v17];
  v4 = v17;
  v5 = *(a1 + 32);
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained(v5 + 8);
    v11 = [WeakRetained behavior];
    v12 = [v11 isAppleWatch];

    v13 = [*(*(a1 + 32) + 88) hasEntitlement:*MEMORY[0x277CCC8B0]];
    if (v4 != 0 || (v12 & 1) == 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = 0;
    }

    if (v4 == 0 && (v12 & 1) != 0 && (v13 & 1) == 0)
    {
      v9 = [MEMORY[0x277CCA9B8] hk_error:4 description:@"Authorization from parent application required"];
    }

    goto LABEL_12;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v16 = v4;
  v8 = [(HDHealthStoreServer *)v5 _queue_insertObjects:v6 sourceEntity:v3 sourceVersionOverride:0 shouldJournal:0 skipInsertionFilter:v7 databaseAssertion:0 error:&v16 creationDate:0];
  v9 = v16;

  if ((v8 & 1) == 0 && ([v9 hk_isDatabaseAccessibilityError] & 1) == 0)
  {
LABEL_12:
    v14 = *(*(a1 + 56) + 16);
    goto LABEL_15;
  }

  if ((*(a1 + 65) & 1) == 0)
  {
    v15 = *(a1 + 48);
  }

  v14 = *(*(a1 + 56) + 16);
LABEL_15:
  v14();
}

- (uint64_t)_queue_insertObjects:(void *)a3 sourceEntity:(void *)a4 sourceVersionOverride:(char)a5 shouldJournal:(char)a6 skipInsertionFilter:(void *)a7 databaseAssertion:(uint64_t)a8 error:(void *)a9 creationDate:
{
  v16 = a2;
  v35 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a9;
  v20 = v19;
  if (!a1)
  {
    goto LABEL_12;
  }

  if (v19)
  {
    MEMORY[0x22AAC6960](v19);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  v22 = Current;
  v23 = [a1[9] database];

  if (!v23)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a8 code:1500 description:@"Nil healthDatabase"];
LABEL_12:
    v30 = 0;
    goto LABEL_13;
  }

  v24 = a8;
  v25 = a6;
  v34 = a5;
  v26 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  v27 = [a1 client];
  v28 = [v27 accessibilityAssertions];

  if (v28)
  {
    [v26 addAccessibilityAssertions:v28];
  }

  v32 = v28;
  if (v18)
  {
    [v26 addAccessibilityAssertion:{v18, v28}];
  }

  v29 = [a1[9] database];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __150__HDHealthStoreServer__queue_insertObjects_sourceEntity_sourceVersionOverride_shouldJournal_skipInsertionFilter_databaseAssertion_error_creationDate___block_invoke;
  v43[3] = &unk_278624B00;
  v43[4] = a1;
  v44 = v16;
  v45 = v35;
  v46 = v17;
  v47 = v22;
  v48 = v25;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __150__HDHealthStoreServer__queue_insertObjects_sourceEntity_sourceVersionOverride_shouldJournal_skipInsertionFilter_databaseAssertion_error_creationDate___block_invoke_3;
  v36[3] = &unk_27862DDA8;
  v41 = v34;
  v36[4] = a1;
  v37 = v44;
  v38 = v45;
  v39 = v46;
  v40 = v22;
  v42 = v25;
  v30 = [v29 performTransactionWithContext:v26 error:v24 block:v43 inaccessibilityHandler:v36];

LABEL_13:
  return v30;
}

- (void)remote_saveDataObjects:(id)a3 skipInsertionFilter:(BOOL)a4 transactionIdentifier:(id)a5 final:(BOOL)a6 handler:(id)a7
{
  v73 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v12 = a5;
  v13 = a7;
  v14 = [(HDHealthStoreClient *)self->_client hasEntitlement:*MEMORY[0x277CCCDA8]];
  if (v13)
  {
    v15 = v14;
    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__192;
    v69 = __Block_byref_object_dispose__192;
    v70 = 0;
    v64 = 0;
    v39 = [(HDHealthStoreServer *)&self->super.isa _objectsToInsertWithObjects:v40 error:&v64];
    objc_storeStrong(&v70, v64);
    if (!v39)
    {
      (*(v13 + 2))(v13, 0, 0, v66[5]);
LABEL_24:

      _Block_object_dispose(&v65, 8);
      goto LABEL_25;
    }

    profile = self->_profile;
    if (v12)
    {
      v17 = [(HDProfile *)profile database];
      v18 = [v17 extendedDatabaseTransactionForIdentifier:v12];

      if (!v18)
      {
        v19 = 0;
LABEL_20:
        (*(v13 + 2))(v13, 0, v12 != 0, v19);
        goto LABEL_24;
      }
    }

    else
    {
      v20 = [(HDProfile *)profile database];
      v21 = +[HDDatabaseTransactionContext contextForWritingProtectedData];
      v22 = v66;
      v63 = v66[5];
      v18 = [v20 beginExtendedTransactionWithContext:v21 transactionTimeout:&v63 continuationTimeout:30.0 error:2.0];
      objc_storeStrong(v22 + 5, v63);

      if (!v18)
      {
        v19 = v66[5];
        goto LABEL_20;
      }
    }

    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__192;
    v57 = __Block_byref_object_dispose__192;
    v58 = 0;
    v23 = v66[5];
    v66[5] = 0;

    v24 = v66;
    obj = v66[5];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __102__HDHealthStoreServer_remote_saveDataObjects_skipInsertionFilter_transactionIdentifier_final_handler___block_invoke;
    v43[3] = &unk_27862DD30;
    v43[4] = self;
    v44 = v39;
    v49 = a4;
    v50 = v15;
    v25 = v18;
    v51 = a6;
    v45 = v25;
    v46 = &v53;
    v47 = &v59;
    v48 = &v65;
    v26 = [v25 performInTransactionWithErrorOut:&obj block:v43];
    objc_storeStrong(v24 + 5, obj);
    if ((v26 & 1) == 0)
    {
      v27 = v54[5];
      v54[5] = 0;
    }

    v28 = v54[5];
    if (!v28)
    {
      v29 = v66;
      if (v66[5])
      {
        v30 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Rollback due to performInTransactionWithErrorOut:block: failed"];
        v41 = 0;
        v31 = [v25 rollbackDueToError:v30 errorOut:&v41];
        v32 = v41;
        v33 = v41;
        if ((v31 & 1) == 0)
        {
          _HKInitializeLogging();
          v34 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v72 = v33;
            _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "Failed to roll back extended transaction: %{public}@", buf, 0xCu);
          }

          objc_storeStrong(v66 + 5, v32);
        }

        if (!v66[5])
        {
          v35 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Save transaction failed with an unknown error."];
          v36 = v66[5];
          v66[5] = v35;
        }
      }

      else
      {
        v42 = 0;
        [v25 commitWithErrorOut:&v42];
        v37 = v42;
        v30 = v29[5];
        v29[5] = v37;
      }

      v28 = v54[5];
    }

    (*(v13 + 2))(v13, v28, *(v60 + 24), v66[5]);

    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v59, 8);

    goto LABEL_24;
  }

LABEL_25:

  v38 = *MEMORY[0x277D85DE8];
}

- (id)_objectsToInsertWithObjects:(uint64_t)a3 error:
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (!a3)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:sel__objectsToInsertWithObjects_error_ object:a1 file:@"HDHealthStoreServer.m" lineNumber:1101 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  if (![v5 count])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 description:@"Array of HKObjects to save cannot be empty"];
LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  v23 = v5;
  [MEMORY[0x277CCD6F0] hd_allObjectsToInsertWithObjects:v5];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v29 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    obj = v6;
    v25 = *v27;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = a3;
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [a1[10] applicationSDKVersionToken];
        [v11 _setSourceRevision:0];
        v13 = [a1[11] entitlements];
        v14 = [a1 profile];
        v15 = [v14 daemon];
        v16 = [v15 behavior];
        v17 = [v16 isAppleWatch];
        v18 = v12;
        a3 = v10;
        LODWORD(v11) = [v11 _validateForSavingWithClientEntitlements:v13 applicationSDKVersionToken:v18 isAppleWatch:v17 error:v10];

        if (!v11)
        {
          v6 = obj;

          v19 = 0;
          goto LABEL_15;
        }
      }

      v6 = obj;
      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v19 = v6;
LABEL_15:

  v5 = v23;
LABEL_18:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __102__HDHealthStoreServer_remote_saveDataObjects_skipInsertionFilter_transactionIdentifier_final_handler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(a1 + 80) == 1)
  {
    v4 = *(a1 + 81);
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 48) transactionIdentifier];
  v6 = *(a1 + 82);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __102__HDHealthStoreServer_remote_saveDataObjects_skipInsertionFilter_transactionIdentifier_final_handler___block_invoke_2;
  v16[3] = &unk_27862DD08;
  v17 = *(a1 + 56);
  v18 = *(a1 + 72);
  v7 = v2;
  v8 = v5;
  v9 = v16;
  v10 = v9;
  if (v3)
  {
    v11 = v4 & 1;
    v12 = *(v3 + 56);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __105__HDHealthStoreServer__saveValidatedDataObjects_skipInsertionFilter_transactionIdentifier_final_handler___block_invoke;
    v21[3] = &unk_27862DCE0;
    v21[4] = v3;
    v13 = v9;
    v24 = v13;
    v14 = v7;
    v22 = v14;
    v25 = v11;
    v26 = v6;
    v23 = v8;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __105__HDHealthStoreServer__saveValidatedDataObjects_skipInsertionFilter_transactionIdentifier_final_handler___block_invoke_2;
    v19[3] = &unk_2786200D0;
    v20 = v13;
    [v12 performIfAuthorizedToSaveObjects:v14 onQueue:0 usingBlock:v21 errorHandler:v19];
  }

  return 1;
}

void __102__HDHealthStoreServer_remote_saveDataObjects_skipInsertionFilter_transactionIdentifier_final_handler___block_invoke_2(void *a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v13 = v7;

  *(*(a1[5] + 8) + 24) = a3;
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
}

void __126__HDHealthStoreServer__saveDataObjects_sourceEntity_sourceVersion_skipInsertionFilter_databaseAssertion_handler_creationDate___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 88);
  v7 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = 0;
  v8 = [(HDHealthStoreServer *)v2 _queue_insertObjects:v3 sourceEntity:v4 sourceVersionOverride:v5 shouldJournal:1 skipInsertionFilter:v6 databaseAssertion:v7 error:&v12 creationDate:v11];
  v9 = v12;
  v10 = *(a1 + 80);
  if (v10)
  {
    (*(v10 + 16))(v10, v8, v9);
  }
}

uint64_t __126__HDHealthStoreServer__saveDataObjects_sourceEntity_sourceVersion_skipInsertionFilter_databaseAssertion_handler_creationDate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __150__HDHealthStoreServer__queue_insertObjects_sourceEntity_sourceVersionOverride_shouldJournal_skipInsertionFilter_databaseAssertion_error_creationDate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [(HDHealthStoreServer *)*(a1 + 32) _queue_objectsByProvenanceForInsertion:*(a1 + 48) sourceEntity:*(a1 + 56) sourceVersionOverride:a3 error:?];
  if (v4)
  {
    v5 = [*(*(a1 + 32) + 72) dataManager];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = v6;
          v16 = v5;
          v17 = *(a1 + 64);
          v18 = *(a1 + 72);
          LODWORD(v11) = HKWithAutoreleasePool();

          if (!v11)
          {
            v13 = 0;
            goto LABEL_14;
          }
        }

        v8 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v13 = 1;
    }

    else
    {
      v13 = 1;
    }

LABEL_14:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_queue_objectsByProvenanceForInsertion:(void *)a3 sourceEntity:(void *)a4 sourceVersionOverride:(uint64_t)a5 error:
{
  v68 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 8);
    v12 = [WeakRetained behavior];

    v13 = [v12 currentDeviceProductType];
    v14 = v13;
    v15 = @"UnknownDevice";
    if (v13)
    {
      v15 = v13;
    }

    v58 = v15;

    v16 = [v12 currentOSBuild];
    v17 = v16;
    v18 = @"UnknownBuild";
    if (v16)
    {
      v18 = v16;
    }

    v57 = v18;

    v63 = 0uLL;
    v64 = 0;
    if (v12)
    {
      [v12 currentOSVersionStruct];
    }

    if (v10)
    {
      v56 = v10;
    }

    else
    {
      v19 = [a1 client];
      v56 = [v19 sourceVersion];
    }

    v43 = v12;
    v40 = v10;
    v41 = v9;
    v55 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v9, "persistentID")}];
    v54 = [MEMORY[0x277CBEB38] dictionary];
    v48 = [a1[9] deviceManager];
    v53 = [a1[9] contributorManager];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v42 = v8;
    obj = v8;
    v52 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v52)
    {
      v46 = 0;
      v47 = 0;
      v50 = a1;
      v51 = *v60;
      v49 = *MEMORY[0x277CCC530];
      v20 = v54;
      while (2)
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v60 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v59 + 1) + 8 * i);
          v23 = [v22 device];
          if (v23)
          {
            v24 = [v48 deviceEntityForDevice:v23 error:a5];
            if (!v24)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v25 = v47;
            if (!v47)
            {
              v25 = [v48 deviceEntityForNoDeviceWithError:a5];
            }

            v24 = v25;
            v47 = v24;
            if (!v24)
            {
LABEL_32:
              _HKInitializeLogging();
              v36 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                *&buf[4] = v23;
                _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_INFO, "Failed to retrieve device entity for device %{public}@", buf, 0xCu);
              }

              v37 = 0;
              goto LABEL_37;
            }
          }

          v26 = [v22 metadata];
          v27 = [v26 objectForKeyedSubscript:v49];
          if (v27)
          {
            v28 = v27;
          }

          else
          {
            v29 = v46;
            if (!v46)
            {
              v30 = [v43 localTimeZone];
              v29 = [v30 name];
            }

            v28 = v29;
            v46 = v28;
          }

          v31 = [v53 defaultContributorReference];
          v32 = [v50[9] currentSyncIdentityPersistentID];
          v33 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v24, "persistentID")}];
          *buf = v63;
          v66 = v64;
          v34 = [HDDataOriginProvenance dataProvenanceWithSyncProvenance:0 syncIdentity:v32 productType:v58 systemBuild:v57 operatingSystemVersion:buf sourceVersion:v56 timeZoneName:v28 sourceID:v55 deviceID:v33 contributorReference:v31];

          v20 = v54;
          v35 = [v54 objectForKeyedSubscript:v34];
          if (!v35)
          {
            v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v54 setObject:v35 forKeyedSubscript:v34];
          }

          [v35 addObject:v22];
        }

        v52 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
        if (v52)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v46 = 0;
      v47 = 0;
      v20 = v54;
    }

    v37 = v20;
LABEL_37:

    v9 = v41;
    v8 = v42;
    v10 = v40;
  }

  else
  {
    v37 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

uint64_t __150__HDHealthStoreServer__queue_insertObjects_sourceEntity_sourceVersionOverride_shouldJournal_skipInsertionFilter_databaseAssertion_error_creationDate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v5 = [*(a1 + 48) insertDataObjects:v4 withProvenance:*(a1 + 40) creationDate:*(a1 + 64) skipInsertionFilter:1 updateSourceOrder:0 resolveAssociations:a2 error:*(a1 + 56)];

  return v5;
}

uint64_t __150__HDHealthStoreServer__queue_insertObjects_sourceEntity_sourceVersionOverride_shouldJournal_skipInsertionFilter_databaseAssertion_error_creationDate___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (*(a1 + 72))
  {
    v7 = [(HDHealthStoreServer *)*(a1 + 32) _queue_objectsByProvenanceForInsertion:*(a1 + 48) sourceEntity:*(a1 + 56) sourceVersionOverride:a3 error:?];
    v8 = [*(*(a1 + 32) + 72) dataManager];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = v9;
          v21 = v8;
          v22 = *(a1 + 64);
          v23 = *(a1 + 73);
          LODWORD(v14) = HKWithAutoreleasePool();

          if (!v14)
          {
            v16 = 0;
            goto LABEL_16;
          }
        }

        v11 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v16 = 1;
    }

    else
    {
      v16 = 1;
    }

LABEL_16:
  }

  else
  {
    v17 = v5;
    if (v17)
    {
      if (a3)
      {
        v18 = v17;
        *a3 = v17;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __150__HDHealthStoreServer__queue_insertObjects_sourceEntity_sourceVersionOverride_shouldJournal_skipInsertionFilter_databaseAssertion_error_creationDate___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v5 = [*(a1 + 48) insertDataObjects:v4 withProvenance:*(a1 + 40) creationDate:*(a1 + 64) skipInsertionFilter:1 updateSourceOrder:0 resolveAssociations:a2 error:*(a1 + 56)];

  return v5;
}

- (id)_permissionBlockForRestrictedSourceEntities:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 hk_map:&__block_literal_global_427_0];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__HDHealthStoreServer__permissionBlockForRestrictedSourceEntities___block_invoke_2;
    aBlock[3] = &unk_27862DDF8;
    v10 = v4;
    v11 = v5;
    v12 = a1;
    v6 = v5;
    v7 = _Block_copy(aBlock);
    a1 = _Block_copy(v7);
  }

  return a1;
}

uint64_t __67__HDHealthStoreServer__permissionBlockForRestrictedSourceEntities___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 persistentID];

  return [v2 numberWithLongLong:v3];
}

uint64_t __67__HDHealthStoreServer__permissionBlockForRestrictedSourceEntities___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __67__HDHealthStoreServer__permissionBlockForRestrictedSourceEntities___block_invoke_3;
  v14 = &unk_27862DDD0;
  v18 = &v19;
  v15 = *(a1 + 32);
  v7 = v6;
  v16 = v7;
  v17 = *(a1 + 40);
  v8 = _Block_copy(&v11);
  [*(*(a1 + 48) + 56) performIfAuthorizedToDeleteObjectsWithTypes:v5 onQueue:0 usingBlock:v8 errorHandler:{&__block_literal_global_430_1, v11, v12, v13, v14}];
  v9 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v9;
}

uint64_t __67__HDHealthStoreServer__permissionBlockForRestrictedSourceEntities___block_invoke_3(uint64_t result, int a2)
{
  *(*(*(result + 56) + 8) + 24) = 1;
  if (a2)
  {
    v2 = result;
    if (*(result + 32))
    {
      result = [*(result + 40) isSubsetOfSet:*(result + 48)];
      *(*(*(v2 + 56) + 8) + 24) = result;
    }
  }

  return result;
}

- (void)remote_deleteDataObjects:(id)a3 options:(unint64_t)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__HDHealthStoreServer_remote_deleteDataObjects_options_handler___block_invoke;
  aBlock[3] = &unk_2786130D8;
  v23 = v10;
  v11 = _Block_copy(aBlock);
  if ([v9 count])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__HDHealthStoreServer_remote_deleteDataObjects_options_handler___block_invoke_2;
    v18[3] = &unk_27862DE20;
    v18[4] = self;
    v21 = a4;
    v19 = v9;
    v20 = v11;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__HDHealthStoreServer_remote_deleteDataObjects_options_handler___block_invoke_3;
    v16[3] = &unk_2786200D0;
    v17 = v20;
    [(HDHealthStoreServer *)self _performIfAuthorizedToDeleteObjects:v19 usingBlock:v18 errorHandler:v16];
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = objc_opt_class();
    v14 = "empty";
    if (!v9)
    {
      v14 = "nil";
    }

    v15 = [v12 hk_errorForInvalidArgument:@"@" class:v13 selector:a2 format:{@"dataObjects cannot be %s", v14}];
    (*(v11 + 2))(v11, 0, v15);
  }
}

uint64_t __64__HDHealthStoreServer_remote_deleteDataObjects_options_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __64__HDHealthStoreServer_remote_deleteDataObjects_options_handler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [*(*(a1 + 32) + 88) sourceBundleIdentifier];
    v5 = [*(*(a1 + 32) + 72) sourceManager];
    v14 = 0;
    v6 = [v5 allSourcesForBundleIdentifier:v4 error:&v14];
    v7 = v14;
    v8 = v7;
    if (!v6)
    {
      goto LABEL_11;
    }

    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 56))
  {
    v5 = [(HDHealthStoreServer *)*(a1 + 32) _permissionBlockForRestrictedSourceEntities:v4];
  }

  else
  {
    v5 = 0;
  }

  v9 = objc_alloc_init(HDDataDeletionConfiguration);
  [(HDDataDeletionConfiguration *)v9 setSecureDelete:1];
  [(HDDataDeletionConfiguration *)v9 setFailIfNotFound:1];
  [(HDDataDeletionConfiguration *)v9 setRecursiveDeleteAuthorizationBlock:v5];
  if (a2)
  {
    v10 = [*(*(a1 + 32) + 88) sourceBundleIdentifier];
    [(HDDataDeletionConfiguration *)v9 setRestrictedSourceBundleIdentifier:v10];
  }

  [(HDDataDeletionConfiguration *)v9 setUserRequested:(*(a1 + 56) >> 1) & 1];
  v11 = [*(*(a1 + 32) + 72) dataManager];
  v12 = *(a1 + 40);
  v13 = 0;
  [v11 deleteObjectsWithUUIDCollection:v12 configuration:v9 error:&v13];
  v8 = v13;

LABEL_11:
  (*(*(a1 + 48) + 16))();
}

- (void)remote_deleteDataObjectsOfType:(id)a3 matchingFilter:(id)a4 options:(unint64_t)a5 handler:(id)a6
{
  v28[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v11)
  {
    clientAuthorizationOracle = self->_clientAuthorizationOracle;
    v15 = MEMORY[0x277CBEB98];
    v28[0] = v11;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v17 = [v15 setWithArray:v16];
    queue = self->_queue;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __85__HDHealthStoreServer_remote_deleteDataObjectsOfType_matchingFilter_options_handler___block_invoke;
    v23[3] = &unk_27862DE48;
    v23[4] = self;
    v26 = v13;
    v24 = v12;
    v25 = v11;
    v27 = a5;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __85__HDHealthStoreServer_remote_deleteDataObjectsOfType_matchingFilter_options_handler___block_invoke_3;
    v21[3] = &unk_2786200D0;
    v22 = v26;
    [(HDClientAuthorizationOracle *)clientAuthorizationOracle performIfAuthorizedToDeleteObjectsWithTypes:v17 onQueue:queue usingBlock:v23 errorHandler:v21];
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"objectType cannot be nil"];
    if (v13)
    {
      (*(v13 + 2))(v13, 0, 0, v19);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __85__HDHealthStoreServer_remote_deleteDataObjectsOfType_matchingFilter_options_handler___block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    v3 = 0;
    goto LABEL_8;
  }

  v3 = [*(*(a1 + 32) + 88) sourceBundleIdentifier];
  if (!v3)
  {
LABEL_8:
    v5 = 0;
    v23 = 0;
    goto LABEL_9;
  }

  v4 = [*(*(a1 + 32) + 72) sourceManager];
  v28 = 0;
  v5 = [v4 allSourcesForBundleIdentifier:v3 error:&v28];
  v6 = v28;

  v23 = v6;
  if (!v5)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, 0, v6);
    }

    v5 = 0;
  }

LABEL_9:
  v8 = [v5 hk_map:&__block_literal_global_443_0];
  v25 = v3;
  if (v8)
  {
    v9 = HDDataEntityPredicateForSourceIdentifierSet(7, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = [*(a1 + 40) predicateWithProfile:*(*(a1 + 32) + 72)];
  v22 = v9;
  v11 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v9 otherPredicate:v10];
  v12 = HDSampleEntityPredicateForDataType(*(a1 + 48));
  v13 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v11 otherPredicate:v12];

  v24 = v5;
  if (*(a1 + 64))
  {
    v14 = [(HDHealthStoreServer *)*(a1 + 32) _permissionBlockForRestrictedSourceEntities:v5];
  }

  else
  {
    v14 = 0;
  }

  v27 = 0;
  v15 = [*(*(a1 + 32) + 72) dataManager];
  v16 = [objc_msgSend(*(a1 + 48) "dataObjectClass")];
  v17 = *MEMORY[0x277D10C08];
  v26 = v23;
  LOBYTE(v21) = 1;
  v18 = [v15 deleteDataObjectsOfClass:v16 predicate:v13 limit:v17 deletedSampleCount:&v27 notifyObservers:1 generateDeletedObjects:1 userRequested:v21 recursiveDeleteAuthorizationBlock:v14 error:&v26];
  v19 = v26;

  v20 = *(a1 + 56);
  if (v20)
  {
    (*(v20 + 16))(v20, v18, v27, v19);
  }
}

uint64_t __85__HDHealthStoreServer_remote_deleteDataObjectsOfType_matchingFilter_options_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 persistentID];

  return [v2 numberWithLongLong:v3];
}

uint64_t __85__HDHealthStoreServer_remote_deleteDataObjectsOfType_matchingFilter_options_handler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

- (void)remote_isProtectedDataAvailable:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__HDHealthStoreServer_remote_isProtectedDataAvailable___block_invoke;
  v9[3] = &unk_278614008;
  v9[4] = self;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HDHealthStoreServer_remote_isProtectedDataAvailable___block_invoke_2;
  v7[3] = &unk_2786200D0;
  v5 = v10;
  v8 = v5;
  v6 = v5;
  if (self)
  {
    [(HDHealthStoreServer *)self _requireEntitlement:v9 usingBlock:v7 errorHandler:?];
    v6 = v8;
  }
}

void __55__HDHealthStoreServer_remote_isProtectedDataAvailable___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7 = [*(a1 + 32) profile];
  v3 = [v7 database];
  v4 = [v3 isProtectedDataAvailable];
  v5 = [*(a1 + 32) profile];
  v6 = [v5 database];
  (*(v2 + 16))(v2, v4, [v6 isInSession], 0);
}

- (void)_remote_associateSampleUUIDs:(id)a3 withSampleUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __92__HDHealthStoreServer__remote_associateSampleUUIDs_withSampleUUID_type_behavior_completion___block_invoke;
    v13[3] = &unk_27862DE70;
    v14 = v8;
    v18 = 0;
    v19 = 0;
    v15 = v9;
    v16 = self;
    v17 = v10;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __92__HDHealthStoreServer__remote_associateSampleUUIDs_withSampleUUID_type_behavior_completion___block_invoke_2;
    v11[3] = &unk_2786200D0;
    v12 = v17;
    [(HDHealthStoreServer *)self _requireEntitlement:v13 usingBlock:v11 errorHandler:?];
  }
}

void __92__HDHealthStoreServer__remote_associateSampleUUIDs_withSampleUUID_type_behavior_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v12 = 0;
  v6 = [*(a1 + 48) profile];
  v11 = 0;
  v7 = [HDAssociationEntity associateSampleUUIDs:v2 withSampleUUID:v3 type:v4 behavior:v5 destinationSubObjectReference:0 lastInsertedEntityID:&v12 profile:v6 error:&v11];
  v8 = v12;
  v9 = v11;

  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, v7, v9);
  }
}

uint64_t __92__HDHealthStoreServer__remote_associateSampleUUIDs_withSampleUUID_type_behavior_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)_remote_saveObjects:(id)a3 deleteObjects:(id)a4 associations:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__HDHealthStoreServer__remote_saveObjects_deleteObjects_associations_completion___block_invoke;
  v21[3] = &unk_278621AA0;
  v21[4] = self;
  v14 = v10;
  v22 = v14;
  v25 = v13;
  v15 = v11;
  v23 = v15;
  v16 = v12;
  v24 = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__HDHealthStoreServer__remote_saveObjects_deleteObjects_associations_completion___block_invoke_2;
  v19[3] = &unk_2786200D0;
  v17 = v25;
  v20 = v17;
  v18 = v17;
  if (self)
  {
    [(HDHealthStoreServer *)self _requireEntitlement:v21 usingBlock:v19 errorHandler:?];
    v18 = v20;
  }
}

void __81__HDHealthStoreServer__remote_saveObjects_deleteObjects_associations_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v17 = 0;
    v4 = [v2 clientSourceWithError:&v17];
    v5 = v17;
    v6 = v5;
    if (v4)
    {
      v16 = 0;
      v2 = [(HDHealthStoreServer *)v2 _queue_objectsByProvenanceForInsertion:v3 sourceEntity:v4 sourceVersionOverride:0 error:&v16];
      v7 = v16;
      if (v2)
      {
        v8 = 0;
      }

      else
      {
        v9 = v7;
        v8 = v9;
        if (v9)
        {
          v10 = v9;
        }

        v2 = 0;
        v7 = v8;
      }
    }

    else
    {
      v7 = v5;
      v8 = v7;
      if (v7)
      {
        v7 = v7;
      }

      v2 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  if (v2)
  {
    v12 = [[HDInsertDeleteAndAssociateObjectsOperation alloc] initWithObjectsToInsertByDataProvenance:v2 objectsToDelete:*(a1 + 48) associations:*(a1 + 56)];
    v13 = [*(a1 + 32) profile];
    v15 = v11;
    [(HDJournalableOperation *)v12 performOrJournalWithProfile:v13 error:&v15];
    v14 = v15;

    (*(*(a1 + 64) + 16))();
    v11 = v14;
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

- (void)remote_setBackgroundDeliveryFrequency:(int64_t)a3 forDataType:(id)a4 handler:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = [(HKHealthStoreConfiguration *)self->_configuration applicationSDKVersionToken];
  v12 = dyld_version_token_at_least();
  v13 = [(HDHealthStoreClient *)self->_client entitlements];
  v14 = [v13 hasBackgroundDeliveryAPIAccess];

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = v12 == 0;
  }

  if (!v15)
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
    {
      v33 = *MEMORY[0x277CCC1A8];
      *buf = 138543362;
      v41 = v33;
      _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "Missing %{public}@ entitlement.", buf, 0xCu);
    }

    v23 = [(HDProfile *)self->_profile dataManager];
    client = self->_client;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __81__HDHealthStoreServer_remote_setBackgroundDeliveryFrequency_forDataType_handler___block_invoke;
    v38[3] = &unk_278613658;
    v39 = v10;
    [v23 setBackgroundObserverFrequency:client forDataType:0 frequency:a3 appSDKVersionToken:v11 completion:v38];

    v20 = v39;
    goto LABEL_19;
  }

  if (HDBackgroundObservationSupportedForDataTypeCode([v9 code]) & 1) != 0 || ((v12 ^ 1))
  {
    v25 = [(HDHealthStoreClient *)self->_client process];
    v26 = [v25 applicationIdentifier];

    if (!v26)
    {
      v29 = [(HDHealthStoreClient *)self->_client process];
      v20 = [v29 name];

      _HKInitializeLogging();
      v30 = *MEMORY[0x277CCC288];
      if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v41 = v20;
        _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "Unable to get bundle ID for %{public}@", buf, 0xCu);
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      else if (!v10)
      {
        goto LABEL_19;
      }

      v31 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Unable to get bundle ID for %@.", v20}];
      (*(v10 + 2))(v10, 0, v31);

      goto LABEL_19;
    }

    v27 = [(HDProfile *)self->_profile dataManager];
    v28 = self->_client;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __81__HDHealthStoreServer_remote_setBackgroundDeliveryFrequency_forDataType_handler___block_invoke_453;
    v36[3] = &unk_278613658;
    v37 = v10;
    [v27 setBackgroundObserverFrequency:v28 forDataType:v9 frequency:a3 appSDKVersionToken:v11 completion:v36];

    v20 = v37;
LABEL_19:

    goto LABEL_20;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC288];
  if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
  {
    v34 = v16;
    v35 = [v9 description];
    *buf = 138543362;
    v41 = v35;
    _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "%{public}@ data type is not supported for Background Delivery", buf, 0xCu);

    if (!v10)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  if (v10)
  {
LABEL_10:
    v17 = MEMORY[0x277CCA9B8];
    v18 = objc_opt_class();
    v19 = [v9 description];
    v20 = [v17 hk_errorForInvalidArgument:@"@" class:v18 selector:a2 format:{@"Background Delivery is not available for %@", v19}];

    (*(v10 + 2))(v10, 0, v20);
    goto LABEL_19;
  }

LABEL_20:

  v32 = *MEMORY[0x277D85DE8];
}

void __81__HDHealthStoreServer_remote_setBackgroundDeliveryFrequency_forDataType_handler___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277CCA9B8] hk_error:4 format:{@"Missing %@ entitlement.", *MEMORY[0x277CCC1A8]}];
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __81__HDHealthStoreServer_remote_setBackgroundDeliveryFrequency_forDataType_handler___block_invoke_453(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)remote_closeTransactionWithDataTypes:(id)a3 anchor:(id)a4 ackTime:(id)a5 completion:(id)a6
{
  v19 = a3;
  v11 = a4;
  v12 = a5;
  client = self->_client;
  v14 = a6;
  v15 = [(HDHealthStoreClient *)client process];
  v16 = [v15 applicationIdentifier];

  if (v16)
  {
    v17 = [(HDProfile *)self->_profile appSubscriptionManager];
    [v17 ackForBundleID:v16 dataTypes:v19 anchor:v11 ackTime:v12];

    v14[2](v14, 1, 0);
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"No valid application identifier found."];
    v14[2](v14, 0, v18);

    v14 = v18;
  }
}

- (void)remote_deleteAllSamplesWithTypes:(id)a3 sourceBundleIdentifier:(id)a4 options:(unint64_t)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__192;
  v29 = __Block_byref_object_dispose__192;
  v30 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __98__HDHealthStoreServer_remote_deleteAllSamplesWithTypes_sourceBundleIdentifier_options_completion___block_invoke;
  v17[3] = &unk_27862DE98;
  v14 = v11;
  v18 = v14;
  v23 = a5;
  v15 = v12;
  v19 = v15;
  v20 = self;
  v21 = &v25;
  v22 = &v31;
  v24 = a2;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__HDHealthStoreServer_remote_deleteAllSamplesWithTypes_sourceBundleIdentifier_options_completion___block_invoke_2;
  v16[3] = &unk_27862DEC0;
  v16[4] = &v25;
  if (self)
  {
    [(HDHealthStoreServer *)self _requireEntitlement:v17 usingBlock:v16 errorHandler:?];
  }

  if (v13)
  {
    v13[2](v13, *(v32 + 24), v26[5]);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

void __98__HDHealthStoreServer_remote_deleteAllSamplesWithTypes_sourceBundleIdentifier_options_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    if (*(a1 + 72))
    {
      if (*(a1 + 40))
      {
        v7 = [*(*(a1 + 48) + 72) sourceManager];
        v8 = *(a1 + 40);
        v20 = 0;
        v9 = [v7 allSourcesForBundleIdentifier:v8 error:&v20];
        v10 = v20;
        v11 = v20;

        v12 = v9 != 0;
        if (!v9)
        {
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v10);
        }
      }

      else
      {
        v9 = 0;
        v12 = 1;
      }

      v2 = [(HDHealthStoreServer *)*(a1 + 48) _permissionBlockForRestrictedSourceEntities:v9];

      if (!v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v2 = 0;
    }

    v13 = [*(*(a1 + 48) + 72) dataManager];
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = (*(a1 + 72) >> 1) & 1;
    v17 = *(*(a1 + 56) + 8);
    obj = *(v17 + 40);
    v18 = [v13 deleteSamplesWithTypes:v14 sourceBundleIdentifier:v15 userRequested:v16 recursiveDeleteAuthorizationBlock:v2 error:&obj];
    objc_storeStrong((v17 + 40), obj);
    *(*(*(a1 + 64) + 8) + 24) = v18;

LABEL_14:
    return;
  }

  v3 = *(a1 + 48);
  v4 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 80) format:@"sampleTypes may not be empty"];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  MEMORY[0x2821F96F8](v4, v6);
}

- (void)remote_deleteClientSourceWithCompletion:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x277CCCDE8];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__HDHealthStoreServer_remote_deleteClientSourceWithCompletion___block_invoke;
    v10[3] = &unk_278620058;
    v10[4] = self;
    v11 = v5;
    v12 = a2;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__HDHealthStoreServer_remote_deleteClientSourceWithCompletion___block_invoke_466;
    v8[3] = &unk_2786200D0;
    v9 = v11;
    [(HDHealthStoreServer *)self _requireEntitlement:v7 usingBlock:v10 errorHandler:v8];
  }
}

void __63__HDHealthStoreServer_remote_deleteClientSourceWithCompletion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) client];
  v3 = [v2 sourceBundleIdentifier];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 72) sourceManager];
    v18 = 0;
    v5 = [v4 deleteSourceWithBundleIdentifier:v3 error:&v18];
    v6 = v18;

    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2A0];
    v8 = *MEMORY[0x277CCC2A0];
    if (v5)
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:
        (*(*(a1 + 40) + 16))();

        goto LABEL_9;
      }

      v9 = *(*(a1 + 32) + 88);
      v10 = v7;
      v11 = [v9 process];
      v12 = [v11 name];
      *buf = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v3;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Client %{public}@ deleted source %{public}@", buf, 0x16u);
    }

    else
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      v17 = *(*(a1 + 32) + 88);
      v10 = v7;
      v11 = [v17 process];
      v12 = [v11 name];
      *buf = 138543874;
      v20 = v12;
      v21 = 2114;
      v22 = v3;
      v23 = 2114;
      v24 = v6;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Client %{public}@ failed to deleted source %{public}@: %{public}@", buf, 0x20u);
    }

    goto LABEL_8;
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = [MEMORY[0x277CCA9B8] hk_errorForNilArgument:@"bundleIdentifier" class:objc_opt_class() selector:*(a1 + 48)];
  (*(v14 + 16))(v14, 0, v15);

LABEL_9:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)remote_deleteObjectsWithUUIDs:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__192;
  v24 = __Block_byref_object_dispose__192;
  v25 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__HDHealthStoreServer_remote_deleteObjectsWithUUIDs_options_completion___block_invoke;
  v13[3] = &unk_27862DEE8;
  v11 = v9;
  v14 = v11;
  v15 = self;
  v16 = &v26;
  v17 = &v20;
  v18 = a4;
  v19 = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__HDHealthStoreServer_remote_deleteObjectsWithUUIDs_options_completion___block_invoke_2;
  v12[3] = &unk_27862DEC0;
  v12[4] = &v20;
  if (self)
  {
    [(HDHealthStoreServer *)self _requireEntitlement:v13 usingBlock:v12 errorHandler:?];
  }

  if (v10)
  {
    v10[2](v10, *(v27 + 24), v21[5]);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
}

void __72__HDHealthStoreServer_remote_deleteObjectsWithUUIDs_options_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    if (*(a1 + 64))
    {
      v2 = [(HDHealthStoreServer *)*(a1 + 40) _permissionBlockForRestrictedSourceEntities:?];
    }

    else
    {
      v2 = 0;
    }

    v7 = [*(*(a1 + 40) + 72) dataManager];
    v8 = *(a1 + 32);
    v9 = (*(a1 + 64) >> 1) & 1;
    v10 = *(*(a1 + 56) + 8);
    obj = *(v10 + 40);
    v11 = [v7 deleteSamplesWithUUIDs:v8 userRequested:v9 recursiveDeleteAuthorizationBlock:v2 error:&obj];
    objc_storeStrong((v10 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v11;
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 72) format:@"uuids array may not be empty"];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    MEMORY[0x2821F96F8](v4, v6);
  }
}

- (void)remote_fetchCharacteristicWithDataType:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
      v9 = [MEMORY[0x277CBEB98] setWithObject:v7];
      clientAuthorizationOracle = self->_clientAuthorizationOracle;
      queue = self->_queue;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __70__HDHealthStoreServer_remote_fetchCharacteristicWithDataType_handler___block_invoke;
      v14[3] = &unk_27862DF10;
      v14[4] = self;
      v15 = v7;
      v16 = v8;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __70__HDHealthStoreServer_remote_fetchCharacteristicWithDataType_handler___block_invoke_3;
      v12[3] = &unk_2786200D0;
      v13 = v16;
      [(HDClientAuthorizationOracle *)clientAuthorizationOracle performIfAuthorizedToReadTypes:v9 onQueue:queue usingBlock:v14 errorHandler:v12];
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"dataType may not be nil"];
      (*(v8 + 2))(v8, 0, v9);
    }
  }
}

void __70__HDHealthStoreServer_remote_fetchCharacteristicWithDataType_handler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__192;
  v17 = __Block_byref_object_dispose__192;
  v18 = 0;
  v4 = [*(a1[4] + 72) database];
  v11 = &v13;
  v12 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HDHealthStoreServer_remote_fetchCharacteristicWithDataType_handler___block_invoke_2;
  v9[3] = &unk_27861A440;
  v5 = a1[5];
  v9[4] = a1[4];
  v10 = v5;
  [v4 performHighPriorityTransactionsWithError:&v12 block:v9];
  v6 = v12;

  (*(a1[6] + 16))(a1[6], v14[5], v6, v7, v8);
  _Block_object_dispose(&v13, 8);
}

uint64_t __70__HDHealthStoreServer_remote_fetchCharacteristicWithDataType_handler___block_invoke_2(void *a1, uint64_t a2)
{
  v4 = [*(a1[4] + 72) userCharacteristicsManager];
  v5 = [v4 userCharacteristicForType:a1[5] error:a2];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return 1;
}

void __70__HDHealthStoreServer_remote_fetchCharacteristicWithDataType_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 hk_isAuthorizationDeniedError];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v5);
}

- (void)remote_setCharacteristic:(id)a3 forDataType:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__HDHealthStoreServer_remote_setCharacteristic_forDataType_handler___block_invoke;
  v18[3] = &unk_2786173F0;
  v12 = v10;
  v19 = v12;
  v20 = self;
  v13 = v9;
  v21 = v13;
  v22 = v11;
  v23 = a2;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__HDHealthStoreServer_remote_setCharacteristic_forDataType_handler___block_invoke_474;
  v16[3] = &unk_2786200D0;
  v14 = v22;
  v17 = v14;
  v15 = v14;
  if (self)
  {
    [(HDHealthStoreServer *)self _requireEntitlement:v18 usingBlock:v16 errorHandler:?];
    v15 = v17;
  }
}

void __68__HDHealthStoreServer_remote_setCharacteristic_forDataType_handler___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = [*(a1[5] + 72) userCharacteristicsManager];
    v3 = a1[6];
    v4 = a1[4];
    v12 = 0;
    [v2 setUserCharacteristic:v3 forType:v4 error:&v12];
    v5 = v12;

    v6 = *(a1[7] + 16);
  }

  else
  {
    v7 = a1[5];
    v5 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[8] format:@"dataType may not be nil"];
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      v10 = a1[4];
      v11 = v8;
      *buf = 134218242;
      v14 = [v10 code];
      v15 = 2114;
      v16 = v5;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Error setting characteristic for data type %ld: %{public}@", buf, 0x16u);
    }

    v6 = *(a1[7] + 16);
  }

  v6();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchModificationDateForCharacteristicWithDataType:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__HDHealthStoreServer_remote_fetchModificationDateForCharacteristicWithDataType_handler___block_invoke;
  v14[3] = &unk_278617418;
  v9 = v7;
  v15 = v9;
  v16 = self;
  v17 = v8;
  v18 = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__HDHealthStoreServer_remote_fetchModificationDateForCharacteristicWithDataType_handler___block_invoke_475;
  v12[3] = &unk_2786200D0;
  v10 = v17;
  v13 = v10;
  v11 = v10;
  if (self)
  {
    [(HDHealthStoreServer *)self _requireEntitlement:v14 usingBlock:v12 errorHandler:?];
    v11 = v13;
  }
}

void __89__HDHealthStoreServer_remote_fetchModificationDateForCharacteristicWithDataType_handler___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = [*(a1[5] + 72) userCharacteristicsManager];
    v3 = a1[4];
    v9 = 0;
    v4 = [v2 modificationDateForCharacteristicWithType:v3 error:&v9];
    v5 = v9;

    (*(a1[6] + 16))();
  }

  else
  {
    v6 = a1[5];
    v4 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[7] format:@"dataType may not be nil"];
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v4;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Error retrieving modification date for data type: %{public}@", buf, 0xCu);
    }

    (*(a1[6] + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchServerURLForAssetType:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__HDHealthStoreServer_remote_fetchServerURLForAssetType_completion___block_invoke;
  v13[3] = &unk_278614E28;
  v8 = v6;
  v14 = v8;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HDHealthStoreServer_remote_fetchServerURLForAssetType_completion___block_invoke_2;
  v11[3] = &unk_2786200D0;
  v9 = v15;
  v12 = v9;
  v10 = v9;
  if (self)
  {
    [(HDHealthStoreServer *)self _requireEntitlement:v13 usingBlock:v11 errorHandler:?];
    v10 = v12;
  }
}

void __68__HDHealthStoreServer_remote_fetchServerURLForAssetType_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = ASServerURLForAssetType();
  v4 = 0;
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

uint64_t __68__HDHealthStoreServer_remote_fetchServerURLForAssetType_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)remote_setServerURL:(id)a3 forAssetType:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__HDHealthStoreServer_remote_setServerURL_forAssetType_completion___block_invoke;
  v17[3] = &unk_278614160;
  v11 = v8;
  v18 = v11;
  v12 = v9;
  v19 = v12;
  v20 = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__HDHealthStoreServer_remote_setServerURL_forAssetType_completion___block_invoke_2;
  v15[3] = &unk_2786200D0;
  v13 = v20;
  v16 = v13;
  v14 = v13;
  if (self)
  {
    [(HDHealthStoreServer *)self _requireEntitlement:v17 usingBlock:v15 errorHandler:?];
    v14 = v16;
  }
}

uint64_t __67__HDHealthStoreServer_remote_setServerURL_forAssetType_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  ASSetAssetServerURLForAssetType();
  result = a1[6];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __67__HDHealthStoreServer_remote_setServerURL_forAssetType_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (id)diagnosticDescription
{
  v3 = [(HDHealthStoreServer *)self clientDebuggingIdentifier];
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(HDHealthStoreServer *)self clientDebuggingIdentifier];
    v6 = [v4 stringWithFormat:@" [%@]", v5];
  }

  else
  {
    v6 = &stru_283BF39C8;
  }

  v7 = [(HDHealthStoreClient *)self->_client process];
  v8 = MEMORY[0x277CCACA8];
  v9 = [v7 name];
  v10 = [v8 stringWithFormat:@"%@ (%d)%@", v9, objc_msgSend(v7, "processIdentifier"), v6];

  return v10;
}

- (void)remote_clientWillSuspendWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogProcessState();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = HKLogProcessState();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(HDHealthStoreClient *)self->_client process];
      v10 = [v9 bundleIdentifier];
      v11 = 138543362;
      v12 = v10;
      _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "HDHealthStoreServer suspending connection with %{public}@", &v11, 0xCu);
    }
  }

  if (v4)
  {
    if (self)
    {
      os_unfair_lock_lock(&self->_lock);
      [(HDHealthStoreServer *)self _lock_cancelActiveClientTransaction];
      os_unfair_lock_unlock(&self->_lock);
    }

    v4[2](v4, 1, 0);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)remote_clientResumedWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogProcessState();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = HKLogProcessState();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(HDHealthStoreClient *)self->_client process];
      v11 = [v10 bundleIdentifier];
      *buf = 138543362;
      v15 = v11;
      _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "HDHealthStoreServer resuming connection with %{public}@", buf, 0xCu);
    }
  }

  if (v4)
  {
    queue = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__HDHealthStoreServer_remote_clientResumedWithCompletion___block_invoke;
    v12[3] = &unk_278614E28;
    v12[4] = self;
    v13 = v4;
    dispatch_sync(queue, v12);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __58__HDHealthStoreServer_remote_clientResumedWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && [*(v2 + 48) hasActiveQueries])
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (v3)
    {
      os_unfair_lock_lock((v3 + 32));
      [(HDHealthStoreServer *)v3 _lock_cancelActiveClientTransaction];
      v5 = [*(v3 + 88) process];
      v6 = [v5 name];

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __66__HDHealthStoreServer__holdActiveClientTransactionWithCompletion___block_invoke;
      aBlock[3] = &unk_2786200A8;
      v22 = v6;
      v23 = v4;
      v7 = v6;
      v8 = _Block_copy(aBlock);
      v9 = objc_alloc(MEMORY[0x277CCDDB0]);
      v10 = *(v3 + 16);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __66__HDHealthStoreServer__holdActiveClientTransactionWithCompletion___block_invoke_489;
      v19[3] = &unk_2786130D8;
      v11 = v8;
      v20 = v11;
      v12 = [v9 initWithQueue:v10 completion:v19];
      v13 = *(v3 + 24);
      *(v3 + 24) = v12;

      v14 = *(v3 + 24);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __66__HDHealthStoreServer__holdActiveClientTransactionWithCompletion___block_invoke_2;
      v17[3] = &unk_278613658;
      v18 = v11;
      v15 = v11;
      [v14 startWithTimeoutInterval:v17 handler:29.0];
      os_unfair_lock_unlock((v3 + 32));
    }
  }

  else
  {
    v16 = *(*(a1 + 40) + 16);

    v16();
  }
}

uint64_t __66__HDHealthStoreServer__holdActiveClientTransactionWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogProcessState();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = HKLogProcessState();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = "canceled";
      v10 = *(a1 + 32);
      if (a2)
      {
        v9 = "timed out";
      }

      v11 = 138412546;
      v12 = v10;
      v13 = 2080;
      v14 = v9;
      _os_log_debug_impl(&dword_228986000, v6, OS_LOG_TYPE_DEBUG, "Client resume transaction timer for %@ %s", &v11, 0x16u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 1, 0);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)remote_setPreferredUnit:(id)a3 forType:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = 0;
  if (self)
  {
    v11 = [(HDHealthStoreClient *)self->_client hasRequiredEntitlement:*MEMORY[0x277CCC8B0] error:&v16];
    v12 = v16;
    v13 = v12;
    if (v11)
    {

      v14 = [(HDProfile *)self->_profile unitPreferencesManager];
      v15 = 0;
      self = [v14 setPreferredUnit:v8 forType:v9 error:&v15];
      v13 = v15;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v10[2](v10, self, v13);
}

- (void)remote_removePreferredUnitForType:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  if (self)
  {
    v8 = [(HDHealthStoreClient *)self->_client hasRequiredEntitlement:*MEMORY[0x277CCC8B0] error:&v15];
    v9 = v15;
    v10 = v9;
    if (v8)
    {
      v11 = [(HDProfile *)self->_profile unitPreferencesManager];
      v14 = v10;
      self = [v11 removePreferredUnitForType:v6 error:&v14];
      v12 = v14;

      if (self)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      v10 = v12;
    }

    else
    {
      self = 0;
      v13 = v9;
    }
  }

  else
  {
    v10 = 0;
    v13 = 0;
  }

  (v7)[2](v7, self, v13);
}

- (void)remote_fetchUnitPreferencesForTypes:(id)a3 version:(int64_t)a4 withCompletion:(id)a5
{
  profile = self->_profile;
  v9 = a5;
  v10 = a3;
  v11 = [(HDProfile *)profile unitPreferencesManager];
  clientAuthorizationOracle = self->_clientAuthorizationOracle;
  v15 = 0;
  v13 = [v11 unitPreferencesDictionaryForTypes:v10 version:a4 authorizationOracle:clientAuthorizationOracle error:&v15];

  v14 = v15;
  v9[2](v9, v13, v14);
}

- (void)unitPreferencesManagerDidUpdateUnitPreferences:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"HDHealthStoreServerUserPreferencesDidChangeNotification" object:self];

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HDHealthStoreServer_unitPreferencesManagerDidUpdateUnitPreferences___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __70__HDHealthStoreServer_unitPreferencesManagerDidUpdateUnitPreferences___block_invoke(uint64_t a1)
{
  v1 = [(HDHealthStoreServer *)*(a1 + 32) _clientRemoteObjectProxy];
  [v1 clientRemote_unitPreferencesDidUpdate];
}

- (void)remote_setAllHealthDataAccessForSiri:(int64_t)a3 completion:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  client = self->_client;
  v8 = *MEMORY[0x277CCB888];
  v9 = *MEMORY[0x277CCBD68];
  v25 = 0;
  v10 = [(HDHealthStoreClient *)client hasRequiredArrayEntitlement:v8 containing:v9 error:&v25];
  v11 = v25;
  if (v10)
  {
    v12 = [HDKeyValueDomain alloc];
    v13 = *MEMORY[0x277CCE548];
    v14 = [(HDHealthStoreServer *)self profile];
    v15 = [(HDKeyValueDomain *)v12 initWithCategory:5 domainName:v13 profile:v14];

    v16 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v17 = *MEMORY[0x277CCE550];
    v24 = v11;
    v18 = [(HDKeyValueDomain *)v15 setNumber:v16 forKey:v17 error:&v24];
    v19 = v24;

    if (v18)
    {
      v20 = [(HDProfile *)self->_profile nanoSyncManager];
      [v20 syncHealthDataWithOptions:0 reason:@"Siri authorization changed" completion:0];

      _HKInitializeLogging();
      v21 = HKLogAuthorization();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = self;
        _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfuly saved the authorization status for Siri", buf, 0xCu);
      }

      v6[2](v6, 1, 0);
    }

    else
    {
      _HKInitializeLogging();
      v22 = HKLogAuthorization();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v27 = self;
        v28 = 2114;
        v29 = v17;
        v30 = 2114;
        v31 = v19;
        _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Unable to persist %{public}@: %{public}@", buf, 0x20u);
      }

      (v6)[2](v6, 0, v19);
    }
  }

  else
  {
    (v6)[2](v6, 0, v11);
    v19 = v11;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)remote_getAllHealthDataAccessForSiriWithCompletion:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDHealthStoreClient *)self->_client sourceBundleIdentifier];
  v6 = [v5 isEqualToString:*MEMORY[0x277CCE558]];

  if (!v6)
  {
    v8 = 0;
LABEL_5:
    client = self->_client;
    v10 = *MEMORY[0x277CCB888];
    v11 = *MEMORY[0x277CCBD58];
    v30 = 0;
    v12 = [(HDHealthStoreClient *)client hasRequiredArrayEntitlement:v10 containing:v11 error:&v30];
    v13 = v30;
    if (!v12)
    {
      v4[2](v4, 0, v13);
      v20 = v13;
LABEL_18:

      goto LABEL_19;
    }

    v14 = [HDKeyValueDomain alloc];
    v15 = *MEMORY[0x277CCE548];
    v16 = [(HDHealthStoreServer *)self profile];
    v17 = [(HDKeyValueDomain *)v14 initWithCategory:5 domainName:v15 profile:v16];

    v18 = *MEMORY[0x277CCE550];
    v29 = v13;
    v19 = [(HDKeyValueDomain *)v17 numberForKey:v18 error:&v29];
    v20 = v29;

    if (v19)
    {
      _HKInitializeLogging();
      v21 = HKLogAuthorization();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v33 = self;
        _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfuly returned the authorization status for Siri", buf, 0xCu);
      }

      v22 = [v19 integerValue];
      v23 = v4[2];
      v24 = v4;
    }

    else
    {
      _HKInitializeLogging();
      v26 = HKLogAuthorization();
      v27 = v26;
      if (v20)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v33 = self;
          v34 = 2114;
          v35 = v20;
          _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "%{public}@: Getting the value for key value domain failed with error: %{public}@", buf, 0x16u);
        }

        v23 = v4[2];
        v24 = v4;
        v22 = 0;
        v25 = v20;
        goto LABEL_17;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v33 = self;
        _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: Found no existing authorization status for Siri, and returning not determined status.", buf, 0xCu);
      }

      v23 = v4[2];
      v24 = v4;
      v22 = 3;
    }

    v25 = 0;
LABEL_17:
    v23(v24, v22, v25);

    goto LABEL_18;
  }

  v31 = 0;
  v7 = [(HDHealthStoreServer *)self clientSourceWithError:&v31];
  v8 = v31;
  if (v7)
  {

    goto LABEL_5;
  }

  v4[2](v4, 0, v8);
LABEL_19:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)conceptIndexManagerDidBecomeQuiescent:(id)a3 samplesProcessedCount:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  client = self->_client;
  v14 = 0;
  v7 = [(HDHealthStoreClient *)client verifyHealthRecordsPermissionGrantedWithError:&v14];
  v8 = v14;
  if (v7)
  {
    v9 = [(HDHealthStoreServer *)self _clientRemoteObjectProxy];
    [v9 clientRemote_conceptIndexManagerDidBecomeQuiescentWithSamplesProcessedCount:a4];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogAuthorization();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);

    if (!v11)
    {
      goto LABEL_7;
    }

    v9 = HKLogAuthorization();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HKSensitiveLogItem();
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "Dropping concept index manager quiescence notification with permission error %{public}@", buf, 0xCu);
    }
  }

LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)remote_splitTotalCalories:(double)a3 timeInterval:(double)a4 withCompletion:(id)a5
{
  v30[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__HDHealthStoreServer_remote_splitTotalCalories_timeInterval_withCompletion___block_invoke;
  aBlock[3] = &unk_27862DF38;
  aBlock[4] = self;
  v28 = a3;
  v29 = a4;
  v9 = v8;
  v27 = v9;
  v10 = _Block_copy(aBlock);
  v11 = MEMORY[0x277CCD800];
  v12 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC990]];
  v13 = MEMORY[0x277CCD7E8];
  v14 = [MEMORY[0x277CCDAB0] unitFromString:@"kg"];
  v15 = [v13 quantityWithUnit:v14 doubleValue:0.0];
  v16 = [MEMORY[0x277CBEAA8] now];
  v17 = [MEMORY[0x277CBEAA8] now];
  v18 = [v11 quantitySampleWithType:v12 quantity:v15 startDate:v16 endDate:v17];

  v30[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __77__HDHealthStoreServer_remote_splitTotalCalories_timeInterval_withCompletion___block_invoke_2;
  v24[3] = &unk_27862DF60;
  v25 = v10;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__HDHealthStoreServer_remote_splitTotalCalories_timeInterval_withCompletion___block_invoke_3;
  v22[3] = &unk_2786200D0;
  v20 = v25;
  v23 = v20;
  if (self)
  {
    [(HDClientAuthorizationOracle *)self->_clientAuthorizationOracle performIfAuthorizedToReadObjects:v19 onQueue:self->_queue usingBlock:v24 errorHandler:v22];
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __77__HDHealthStoreServer_remote_splitTotalCalories_timeInterval_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 72) userCharacteristicsManager];
  [v4 restingCaloriesFromTotalCalories:a2 timeInterval:*(a1 + 48) authorizedToRead:*(a1 + 56)];
  v6 = v5;

  result = *(a1 + 40);
  if (result)
  {
    v9 = *(result + 16);
    v7.n128_u64[0] = v6;

    return v9(v7);
  }

  return result;
}

- (void)remote_fetchDaemonPreferenceForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__HDHealthStoreServer_remote_fetchDaemonPreferenceForKey_completion___block_invoke;
  v13[3] = &unk_278614008;
  v15 = v7;
  v8 = v6;
  v14 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HDHealthStoreServer_remote_fetchDaemonPreferenceForKey_completion___block_invoke_2;
  v11[3] = &unk_2786200D0;
  v9 = v15;
  v12 = v9;
  v10 = v9;
  if (self)
  {
    [(HDHealthStoreServer *)self _requireEntitlement:v13 usingBlock:v11 errorHandler:?];
    v10 = v12;
  }
}

void __69__HDHealthStoreServer_remote_fetchDaemonPreferenceForKey_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x277CCDD68] valueForKey:*(a1 + 32)];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)remote_setDaemonPreferenceValue:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__HDHealthStoreServer_remote_setDaemonPreferenceValue_forKey_completion___block_invoke;
  v17[3] = &unk_278616488;
  v20 = v10;
  v11 = v8;
  v18 = v11;
  v12 = v9;
  v19 = v12;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HDHealthStoreServer_remote_setDaemonPreferenceValue_forKey_completion___block_invoke_2;
  v15[3] = &unk_2786200D0;
  v13 = v20;
  v16 = v13;
  v14 = v13;
  if (self)
  {
    [(HDHealthStoreServer *)self _requireEntitlement:v17 usingBlock:v15 errorHandler:?];
    v14 = v16;
  }
}

uint64_t __73__HDHealthStoreServer_remote_setDaemonPreferenceValue_forKey_completion___block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = [MEMORY[0x277CCDD68] setValue:a1[4] forKey:a1[5]];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

- (void)remote_dropEntitlement:(id)a3 completion:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(HDHealthStoreServer *)self client];
  v8 = [v7 process];
  [v8 dropEntitlement:v6];

  v9[2](v9, 1, 0);
}

- (void)remote_restoreEntitlement:(id)a3 completion:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(HDHealthStoreServer *)self client];
  v8 = [v7 process];
  [v8 restoreEntitlement:v6];

  v9[2](v9, 1, 0);
}

- (void)remote_getIsFeatureSetAvailable:(unint64_t)a3 completion:(id)a4
{
  v19 = 0;
  v6 = a4;
  if (!self)
  {
    goto LABEL_13;
  }

  if (a3 != 1)
  {
    v12 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__getIsFeatureSetAvailable_error_ format:{@"Unsupported feature.", v19}];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      v19 = v13;
    }

    goto LABEL_13;
  }

  if (![(HDHealthStoreClient *)self->_client verifyHealthRecordsPermissionGrantedWithError:&v19])
  {
LABEL_13:
    v11 = 0;
    goto LABEL_18;
  }

  v7 = [(HDProfile *)self->_profile profileExtensionsConformingToProtocol:&unk_283D71148, v19];
  v8 = [v7 firstObject];

  if (v8)
  {
    v20 = 0;
    v9 = [v8 deviceConfigurationSupportsHealthRecords:&v20 error:&v19];
    v10 = 1;
    if ((v20 & 1) == 0)
    {
      v10 = 2;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Health Records plugin unavailable."];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      v19 = v16;
    }

    v11 = 0;
  }

LABEL_18:
  v18 = v19;
  v6[2](v6, v11, v18);
}

- (void)remote_addSamples:(id)a3 toWorkout:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 UUID];
  v12 = HDDataEntityPredicateForDataUUID();
  v13 = [(HDHealthStoreServer *)self profile];
  v14 = [v13 database];
  v31 = 0;
  v15 = [(HDHealthEntity *)HDWorkoutEntity anyWithPredicate:v12 healthDatabase:v14 error:&v31];
  v16 = v31;

  if (v15 | v16)
  {
    v30 = 0;
    v22 = [MEMORY[0x277CCDBE8] _validateObjects:v8 forClass:objc_opt_class() error:&v30];
    v19 = v30;

    v21 = v8;
    if (v22)
    {
      v23 = [(HDHealthStoreClient *)self->_client hasEntitlement:*MEMORY[0x277CCCDA8]];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __62__HDHealthStoreServer_remote_addSamples_toWorkout_completion___block_invoke;
      v25[3] = &unk_278619540;
      v29 = v10;
      v26 = v8;
      v27 = v9;
      v28 = self;
      [(HDHealthStoreServer *)self remote_saveDataObjects:v26 skipInsertionFilter:v23 creationDateOverride:0 handler:v25];
    }

    else
    {
      (*(v10 + 2))(v10, 0, v19);
    }
  }

  else
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = objc_opt_class();
    v19 = [v9 UUID];
    v20 = [v17 hk_errorForInvalidArgument:@"@" class:v18 selector:a2 format:{@"Workout with UUID (%@) has not yet been saved", v19}];
    (*(v10 + 2))(v10, 0, v20);

    v21 = v8;
  }
}

void __62__HDHealthStoreServer_remote_addSamples_toWorkout_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) hk_map:&__block_literal_global_549];
    v4 = [*(a1 + 40) UUID];
    v13 = 0;
    v5 = [*(a1 + 48) profile];
    v12 = 0;
    v6 = [HDAssociationEntity associateSampleUUIDs:v3 withSampleUUID:v4 type:0 behavior:0 destinationSubObjectReference:0 lastInsertedEntityID:&v13 profile:v5 error:&v12];
    v7 = v13;
    v8 = v12;

    if (v6)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 postNotificationName:@"HDHealthStoreServerDidAssociateWorkoutSamples" object:0];
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v10 = *(a1 + 56);
    v11 = *(*(a1 + 56) + 16);

    v11();
  }
}

- (void)remote_replaceWorkout:(id)a3 withWorkout:(id)a4 completion:(id)a5
{
  v61[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v54 = 0;
  if (!self)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v11 = [(HDHealthStoreClient *)self->_client hasRequiredEntitlement:*MEMORY[0x277CCC8B0] error:&v54];
  v12 = v54;
  if (!v11)
  {
LABEL_18:
    v10[2](v10, 0, v12);
    goto LABEL_19;
  }

  v49 = v9;
  v50 = v8;
  v13 = [v8 UUID];
  v14 = HDDataEntityPredicateForDataUUID();
  v15 = [(HDHealthStoreServer *)self profile];
  v16 = [v15 database];
  v53 = 0;
  v17 = [(HDHealthEntity *)HDWorkoutEntity anyWithPredicate:v14 healthDatabase:v16 error:&v53];
  v18 = v53;

  if (v17 || !v18)
  {
    v47 = v17;
    v48 = v12;
    v19 = [v9 UUID];
    v20 = HDDataEntityPredicateForDataUUID();
    v21 = [(HDHealthStoreServer *)self profile];
    v22 = [v21 database];
    v52 = v18;
    v23 = [(HDHealthEntity *)HDWorkoutEntity anyWithPredicate:v20 healthDatabase:v22 error:&v52];
    v24 = v52;

    if (v24)
    {
      v10[2](v10, 0, v24);
      v18 = v24;
      v8 = v50;
      v9 = v49;
      v17 = v47;
    }

    else
    {
      v25 = v50;
      v26 = v49;
      v27 = v10;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __93__HDHealthStoreServer__completionHandlerForReplaceWithOriginalWorkout_newWorkout_completion___block_invoke;
      aBlock[3] = &unk_278619590;
      v28 = v25;
      v56 = v28;
      v29 = v26;
      v57 = v29;
      v58 = self;
      v30 = v27;
      v59 = v30;
      v31 = _Block_copy(aBlock);
      v32 = v23;
      v33 = _Block_copy(v31);

      v46 = v32;
      if (v32)
      {
        v33[2](v33, 1, 0);
        v18 = 0;
        v9 = v49;
        v8 = v50;
        v17 = v47;
        v12 = v48;
      }

      else
      {
        v34 = [v28 sourceRevision];
        v35 = [v34 source];
        v36 = [v35 bundleIdentifier];

        v37 = [(HDHealthStoreServer *)self profile];
        v38 = [v37 sourceManager];
        v51 = 0;
        v45 = v36;
        v39 = [v38 localSourceForBundleIdentifier:v36 copyIfNecessary:1 error:&v51];
        v18 = v51;

        v12 = v48;
        if (v39)
        {
          v60 = v29;
          v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
          v41 = [v28 sourceRevision];
          v42 = [v41 version];
          [(HDHealthStoreServer *)self _saveDataObjects:v40 sourceEntity:v39 sourceVersion:v42 handler:v33];
        }

        else
        {
          v61[0] = v29;
          v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
          [(HDHealthStoreServer *)self remote_saveDataObjects:v40 skipInsertionFilter:0 creationDateOverride:0 handler:v33];
        }

        v43 = v39;
        v9 = v49;
        v8 = v50;
        v17 = v47;
      }

      v23 = v46;
    }
  }

  else
  {
    v10[2](v10, 0, v18);
    v8 = v50;
  }

LABEL_19:
  v44 = *MEMORY[0x277D85DE8];
}

void __93__HDHealthStoreServer__completionHandlerForReplaceWithOriginalWorkout_newWorkout_completion___block_invoke(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) profile];
    v18 = 0;
    LOBYTE(v3) = [HDWorkoutEntity copySampleAssociationsFromWorkout:v3 toWorkout:v4 profile:v5 error:&v18];
    v6 = v18;

    if (v3)
    {
      v7 = *(a1 + 48);
      v19 = *(a1 + 32);
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      [v7 remote_deleteDataObjects:v8 options:0 handler:*(a1 + 56)];
    }

    else
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        v15 = v12;
        v16 = [v14 UUID];
        v17 = [*(a1 + 40) UUID];
        *buf = 138543874;
        v21 = v16;
        v22 = 2114;
        v23 = v17;
        v24 = 2114;
        v25 = v6;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "Unable to copy sample associations from workout with UUID %{public}@ to workout with UUID %{public}@: %{public}@", buf, 0x20u);
      }

      (*(*(a1 + 56) + 16))();
    }

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *(a1 + 56);
    v10 = *(*(a1 + 56) + 16);
    v11 = *MEMORY[0x277D85DE8];

    v10();
  }
}

- (void)remote_startWatchAppWithWorkoutConfiguration:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(HDHealthStoreServer *)self profile];
  v8 = [v7 workoutManager];

  if (v8)
  {
    v9 = [(HDHealthStoreServer *)self client];
    [v8 startWatchAppWithWorkoutConfiguration:v10 client:v9 completion:v6];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    v6[2](v6, 0, v9);
  }
}

- (void)remote_startWatchAppWithWorkoutPlanData:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(HDHealthStoreServer *)self profile];
  v8 = [v7 workoutManager];

  if (v8)
  {
    v9 = [(HDHealthStoreServer *)self client];
    [v8 startWatchAppWithWorkoutPlanData:v10 client:v9 completion:v6];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    v6[2](v6, 0, v9);
  }
}

- (void)remote_startWatchAppWithMirroredStartData:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(HDHealthStoreServer *)self profile];
  v8 = [v7 workoutManager];

  if (v8)
  {
    v9 = [(HDHealthStoreServer *)self client];
    [v8 startWatchAppWithMirroredStartData:v10 client:v9 completion:v6];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    v6[2](v6, 0, v9);
  }
}

- (void)remote_recoverActiveWorkoutSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDHealthStoreServer *)self profile];
  v6 = [v5 workoutManager];

  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HDHealthStoreServer_remote_recoverActiveWorkoutSessionWithCompletion___block_invoke;
    block[3] = &unk_278614160;
    v10 = v6;
    v11 = self;
    v12 = v4;
    dispatch_sync(queue, block);
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    (*(v4 + 2))(v4, 0, 0, 0, v8);
  }
}

void __72__HDHealthStoreServer_remote_recoverActiveWorkoutSessionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) client];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__HDHealthStoreServer_remote_recoverActiveWorkoutSessionWithCompletion___block_invoke_2;
  v6[3] = &unk_27862DFA8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [v2 recoverWorkoutSessionForClient:v3 server:v4 completion:v6];
}

void __72__HDHealthStoreServer_remote_recoverActiveWorkoutSessionWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) client];
    v8 = [v5 sessionUUID];
    v14 = 0;
    v9 = [*(a1 + 32) profile];
    v13 = v6;
    v10 = [HDWorkoutBuilderServer recoveredWorkoutBuilderConfigurationForClient:v7 sessionIdentifier:v8 builderIdentifierOut:&v14 profile:v9 error:&v13];
    v11 = v14;
    v12 = v13;

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v12 = v6;
  }
}

- (void)remote_setMirroredWorkoutSessionObserverStateToEnabled:(BOOL)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HDHealthStoreServer *)self profile];
  v8 = [v7 workoutManager];

  if (v8)
  {
    queue = self->_queue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __89__HDHealthStoreServer_remote_setMirroredWorkoutSessionObserverStateToEnabled_completion___block_invoke;
    v13[3] = &unk_278614138;
    v17 = a3;
    v14 = v8;
    v15 = self;
    v16 = v6;
    dispatch_async(queue, v13);

    v10 = v14;
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = self;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to update remote workout session observer state.", buf, 0xCu);
    }

    v10 = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    (*(v6 + 2))(v6, 0, v10);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __89__HDHealthStoreServer_remote_setMirroredWorkoutSessionObserverStateToEnabled_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    [v3 registerCurrentWorkoutObserver:v4];
  }

  else
  {
    [v3 unregisterCurrentWorkoutObserver:v4];
  }

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

- (void)remote_relateReplaceRatingOfExertionSample:(id)a3 toWorkout:(id)a4 workoutActivity:(id)a5 samples:(id)a6 completion:(id)a7
{
  v32[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v31 = 0;
  if (!self)
  {
    v19 = 0;
    goto LABEL_11;
  }

  v18 = [(HDHealthStoreClient *)self->_client hasRequiredEntitlement:*MEMORY[0x277CCC8B0] error:&v31];
  v19 = v31;
  if (!v18)
  {
LABEL_11:
    v17[2](v17, 0, v19);
    goto LABEL_12;
  }

  v20 = [v13 quantityType];
  v21 = [v20 code];

  if (v21 != 304)
  {
    v26 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Sample is expected to be of type HKQuantityTypeIdentifierWorkoutEffortScore"];
LABEL_9:
    v27 = v26;
    v17[2](v17, 0, v26);

    goto LABEL_12;
  }

  if (v15)
  {
    v22 = [v14 workoutActivities];
    v23 = [v22 containsObject:v15];

    if ((v23 & 1) == 0)
    {
      v26 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Activity must be inside workout activities."];
      goto LABEL_9;
    }
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __111__HDHealthStoreServer_remote_relateReplaceRatingOfExertionSample_toWorkout_workoutActivity_samples_completion___block_invoke;
  v29[3] = &unk_27862DFD0;
  v29[4] = self;
  v24 = v17;
  v30 = v24;
  [v16 enumerateObjectsUsingBlock:v29];
  v32[0] = v13;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  [(HDHealthStoreServer *)self remote_relateSamples:v25 withObject:v14 subObject:v15 type:1 behavior:0 completion:v24];

LABEL_12:
  v28 = *MEMORY[0x277D85DE8];
}

void __111__HDHealthStoreServer_remote_relateReplaceRatingOfExertionSample_toWorkout_workoutActivity_samples_completion___block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 quantityType];
  v5 = [v4 code];

  if (v5 == 304)
  {
    v6 = [v3 sourceRevision];
    v7 = [v6 source];

    if (([v7 _isAppleWatch] & 1) != 0 || (objc_msgSend(v7, "bundleIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqual:", *MEMORY[0x277CCE340]), v8, v9))
    {
      v10 = *(a1 + 32);
      v15[0] = v3;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __111__HDHealthStoreServer_remote_relateReplaceRatingOfExertionSample_toWorkout_workoutActivity_samples_completion___block_invoke_2;
      v13[3] = &unk_2786130D8;
      v14 = *(a1 + 40);
      [v10 remote_deleteDataObjects:v11 options:0 handler:v13];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __111__HDHealthStoreServer_remote_relateReplaceRatingOfExertionSample_toWorkout_workoutActivity_samples_completion___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)remote_relateSamples:(id)a3 withObject:(id)a4 subObject:(id)a5 type:(unint64_t)a6 behavior:(unint64_t)a7 completion:(id)a8
{
  v27 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a8;
  v15 = [v12 UUID];
  v16 = HDDataEntityPredicateForDataUUID();
  v17 = [(HDHealthStoreServer *)self profile];
  v18 = [v17 database];
  v35 = 0;
  v19 = [(HDHealthEntity *)HDDataEntity anyWithPredicate:v16 healthDatabase:v18 error:&v35];
  v20 = v35;

  if (v19 | v20)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __90__HDHealthStoreServer_remote_relateSamples_withObject_subObject_type_behavior_completion___block_invoke;
    v28[3] = &unk_27862DFF8;
    v32 = v14;
    v28[4] = self;
    v29 = v27;
    v30 = v12;
    v33 = a6;
    v34 = a7;
    v31 = v13;
    [(HDHealthStoreServer *)self remote_saveDataObjects:v29 skipInsertionFilter:0 creationDateOverride:0 handler:v28];

    v23 = v32;
  }

  else
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = objc_opt_class();
    v20 = [v12 UUID];
    v23 = [v21 hk_errorForInvalidArgument:@"@" class:v22 selector:a2 format:{@"Workout with UUID (%@) has not yet been saved", v20}];
    (*(v14 + 2))(v14, 0, v23);
  }
}

void __90__HDHealthStoreServer_remote_relateSamples_withObject_subObject_type_behavior_completion___block_invoke(void *a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1[4] + 72) associationManager];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[9];
    v7 = a1[10];
    v8 = a1[7];
    v12 = 0;
    [v3 associateObjects:v4 withObject:v5 type:v6 behavior:v7 destinationSubObject:v8 error:&v12];
    v9 = v12;

    (*(a1[8] + 16))();
  }

  else
  {
    v10 = a1[8];
    v11 = *(a1[8] + 16);

    v11();
  }
}

- (void)remote_unrelateSamples:(id)a3 withObject:(id)a4 subObject:(id)a5 type:(unint64_t)a6 behavior:(unint64_t)a7 completion:(id)a8
{
  profile = self->_profile;
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(HDProfile *)profile associationManager];
  v21 = 0;
  v19 = [v18 disassociateObjects:v17 withObject:v16 type:a6 behavior:a7 destinationSubObject:v15 error:&v21];

  v20 = v21;
  v14[2](v14, v19, v20);
}

- (void)remote_takeWorkoutBackgroundStartAssertionForApplicationIdentifier:(id)a3 completion:(id)a4
{
  profile = self->_profile;
  v8 = a4;
  v6 = a3;
  v7 = [(HDProfile *)profile workoutManager];
  [v7 takeBackgroundStartAssertionForApplicationIdentifier:v6];

  v8[2](v8, 1, 0);
}

- (void)workoutManager:(id)a3 didUpdateCurrentWorkout:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([(HDHealthStoreServer *)v5 sessionType]== 1)
  {
    v6 = [(HDHealthStoreClient *)self->_client sourceBundleIdentifier];
    v7 = [(HDHealthStoreServer *)v5 clientProcessBundleIdentifier];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      os_unfair_lock_lock(&self->_lock);
      taskServerEndpointsByUUID = self->_taskServerEndpointsByUUID;
      v10 = [(HDHealthStoreServer *)v5 identifier];
      v11 = [(NSMutableDictionary *)taskServerEndpointsByUUID objectForKeyedSubscript:v10];

      v12 = MEMORY[0x277CCC330];
      if (v11)
      {
        _HKInitializeLogging();
        v13 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v5;
          _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "[mirroring] Will invalidate previous task server for workout %@", buf, 0xCu);
        }

        v14 = self->_taskServerEndpointsByUUID;
        v15 = [(HDHealthStoreServer *)v5 identifier];
        [(NSMutableDictionary *)v14 setObject:0 forKeyedSubscript:v15];
      }

      os_unfair_lock_unlock(&self->_lock);
      [v11 invalidate];
      v22 = 0;
      v16 = [(HDHealthStoreServer *)v5 taskServerConfigurationForRecoveryWithError:&v22];
      v17 = v22;
      if (v16)
      {
        v18 = [(HDHealthStoreServer *)self _clientRemoteObjectProxy];
        [v18 clientRemote_didCreateRemoteSessionWithConfiguration:v16];

        _HKInitializeLogging();
        v19 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v24 = v5;
          _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "[mirroring] Client session setup %{public}@", buf, 0xCu);
        }

        [(HDHealthStoreServer *)v5 setClientDidSetupSession:1];
      }

      else
      {
        _HKInitializeLogging();
        v20 = *v12;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v24 = self;
          v25 = 2112;
          v26 = v17;
          _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Error occurred while retrieving task configuration for remote session: %@", buf, 0x16u);
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end