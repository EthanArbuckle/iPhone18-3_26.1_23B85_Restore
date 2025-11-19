@interface HDQueryServer
+ (Class)configurationClass;
+ (Class)queryClass;
+ (id)builtInQueryServerClasses;
+ (id)requiredEntitlements;
+ (id)taskIdentifier;
- (BOOL)_shouldExecuteWhenProtectedDataIsUnavailable;
- (BOOL)clientHasActiveWorkout;
- (BOOL)prepareToActivateServerWithError:(id *)a3;
- (BOOL)validateConfiguration:(id *)a3;
- (HDClientAuthorizationOracle)authorizationOracle;
- (HDProfile)profile;
- (HDQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (HDQueryServerDelegate)delegate;
- (HKQuantityType)quantityType;
- (HKQueryClientInterface)clientProxy;
- (HKSampleType)sampleType;
- (NSSet)objectTypes;
- (NSString)description;
- (__CFString)_queryStateString;
- (id)_queue_collectionObserverState;
- (id)_queue_sampleTypesForObservation;
- (id)authorizationStatusRecordForType:(id)a3 error:(id *)a4;
- (id)createDatabaseTransactionContext;
- (id)diagnosticDescription;
- (id)exportedInterface;
- (id)filteredSamplesForClientWithSamples:(id)a3;
- (id)newDataEntityEnumerator;
- (id)predicateForQueryClient;
- (id)remoteInterface;
- (id)sampleAuthorizationFilter;
- (id)sanitizedSampleForQueryClient:(id)a3;
- (uint64_t)_backgroundRunningCollectionSupportedForClient;
- (void)_queue_activateServerWithClientState:(void *)a3 error:;
- (void)_queue_beginObservingDataTypes;
- (void)_queue_didFinishTransitionFromState:(uint64_t)a1;
- (void)_queue_endObservingDataTypes;
- (void)_queue_invalidateActiveQueryTransaction;
- (void)_queue_setQueryState:(uint64_t)a1;
- (void)_queue_start;
- (void)_queue_startDataCollection;
- (void)_queue_stop;
- (void)_queue_stopDataCollection;
- (void)_queue_takeActiveQueryTransaction;
- (void)_queue_transitionToFinished;
- (void)_queue_transitionToPaused;
- (void)_queue_transitionToSuspendedState:(id *)a1;
- (void)_queue_updateSampleTypeObservationAssertions;
- (void)_setShouldPause:(uint64_t)a1;
- (void)activateServerWithClientState:(id)a3 error:(id)a4;
- (void)clientStateDidChange:(id)a3;
- (void)clientStateWillChange:(id)a3;
- (void)connectionInvalidated;
- (void)deactivateServerWithCompletion:(id)a3;
- (void)dealloc;
- (void)remote_startQueryWithCompletion:(id)a3;
- (void)scheduleDatabaseAccessOnQueueWithBlock:(id)a3;
- (void)schedulePause;
- (void)setQueryDidFinishHandler:(id)a3;
@end

@implementation HDQueryServer

- (HKSampleType)sampleType
{
  objectType = self->_objectType;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_objectType;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __36__HDQueryServer__scheduleStartQuery__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v3 = [WeakRetained daemon];
  v4 = [v3 behavior];
  v5 = [v4 isAppleInternalInstall];

  if (v5)
  {
    v6 = objc_alloc_init(HDDatabaseTransactionContextStatistics);
    v7 = *(a1 + 32);
    v8 = *(v7 + 96);
    *(v7 + 96) = v6;
  }

  v9 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__HDQueryServer__scheduleStartQuery__block_invoke_2;
  v10[3] = &unk_278617620;
  objc_copyWeak(&v11, (a1 + 40));
  v10[4] = *(a1 + 32);
  [v9 scheduleDatabaseAccessOnQueueWithBlock:v10];
  objc_destroyWeak(&v11);
}

- (BOOL)_shouldExecuteWhenProtectedDataIsUnavailable
{
  v2 = [(HDQueryServer *)self client];
  v3 = [v2 accessibilityAssertions];
  v4 = [v3 count] != 0;

  return v4;
}

- (HKQueryClientInterface)clientProxy
{
  v2 = [(HDHealthStoreClient *)self->_client connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (NSString)description
{
  queryUUID = self->_queryUUID;
  v4 = [(HDHealthStoreClient *)self->_client process];
  v5 = [v4 name];
  v6 = [(HKQueryServerConfiguration *)self->_configuration debugIdentifier];
  [(HKQueryServerConfiguration *)self->_configuration qualityOfService];
  v7 = [(HDQueryServer *)self _queryStateString];
  v8 = HKCopyQueryDescription();

  return v8;
}

- (__CFString)_queryStateString
{
  if (result)
  {
    v1 = [(__CFString *)result queryState];
    if (v1 > 4)
    {
      return @"Unknown state";
    }

    else
    {
      return off_278625880[v1];
    }
  }

  return result;
}

- (void)_queue_start
{
  if ([(HDQueryServer *)self queryState]!= 2)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"HDQueryServer.m" lineNumber:818 description:{@"Invalid parameter not satisfying: %@", @"self.queryState == HDQueryServerStateRunning"}];
  }

  if ([(HDQueryServer *)self _shouldListenForUpdates])
  {

    [(HDQueryServer *)self _queue_beginObservingDataTypes];
  }
}

- (void)_queue_beginObservingDataTypes
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1 && (*(a1 + 77) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 128));
    v3 = [WeakRetained dataManager];

    v4 = objc_loadWeakRetained((a1 + 128));
    v5 = [v4 associationManager];

    if ([a1 _shouldObserveAllSampleTypes])
    {
      [v3 addObserverForAllTypes:a1];
      [v5 addObserverForAllTypes:a1];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = [a1 objectTypes];
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v13 + 1) + 8 * i);
            [v3 addObserver:a1 forDataType:v11];
            [v5 addObserver:a1 forDataType:v11];
          }

          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }
    }

    *(a1 + 77) = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)_queue_transitionToPaused
{
  if (!a1)
  {
    return;
  }

  v2 = [a1 queryState];
  if (v2 == 3)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    [v3 handleFailureInMethod:sel__queue_transitionToPaused object:a1 file:@"HDQueryServer.m" lineNumber:503 description:{@"Invalid parameter not satisfying: %@", @"queryServerState != HDQueryServerStatePaused"}];
LABEL_9:

    goto LABEL_4;
  }

  if (v2 == 4)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    [v3 handleFailureInMethod:sel__queue_transitionToPaused object:a1 file:@"HDQueryServer.m" lineNumber:504 description:{@"Invalid parameter not satisfying: %@", @"queryServerState != HDQueryServerStateFinished"}];
    goto LABEL_9;
  }

LABEL_4:

  [(HDQueryServer *)a1 _queue_transitionToSuspendedState:?];
}

- (void)_queue_stop
{
  v4 = [(HDQueryServer *)self queryState];
  if ((v4 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"HDQueryServer.m" lineNumber:826 description:{@"Invalid parameter not satisfying: %@", @"(queryState == HDQueryServerStateFinished) || (queryState == HDQueryServerStatePaused)"}];
  }

  else if (v4 == 3 && [(HDQueryServer *)self _shouldObserveOnPause])
  {

    [(HDQueryServer *)self _queue_beginObservingDataTypes];
    return;
  }

  [(HDQueryServer *)self _queue_endObservingDataTypes];
}

- (void)_queue_endObservingDataTypes
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1 && *(a1 + 77) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 128));
    v3 = [WeakRetained dataManager];

    v4 = objc_loadWeakRetained((a1 + 128));
    v5 = [v4 associationManager];

    if ([a1 _shouldObserveAllSampleTypes])
    {
      [v3 removeObserverForAllTypes:a1];
      [v5 removeObserverForAllTypes:a1];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = [a1 objectTypes];
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v13 + 1) + 8 * i);
            [v3 removeObserver:a1 forDataType:v11];
            [v5 removeObserver:a1 forDataType:v11];
          }

          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }
    }

    *(a1 + 77) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)clientHasActiveWorkout
{
  v3 = [(HDQueryServer *)self client];
  v4 = [v3 process];
  v5 = [v4 bundleIdentifier];

  v6 = [(HDQueryServer *)self profile];
  v7 = [v6 workoutManager];
  v8 = [v7 currentWorkoutClient];
  v9 = [v8 process];
  v10 = [v9 bundleIdentifier];
  v11 = [v10 isEqualToString:v5];

  return v11;
}

- (id)newDataEntityEnumerator
{
  objectType = self->_objectType;
  if (objectType)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    objectType = [HDSampleEntity entityEnumeratorWithType:objectType profile:WeakRetained];

    [objectType addEncodingOptionsFromDictionary:self->_baseDataEntityEncodingOptions];
  }

  return objectType;
}

- (id)sampleAuthorizationFilter
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__HDQueryServer_sampleAuthorizationFilter__block_invoke;
  aBlock[3] = &unk_278625860;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

- (void)_queue_startDataCollection
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v19 = [WeakRetained dataCollectionManager];

  v4 = [(HDQueryServer *)self _queue_sampleTypesForObservation];
  v5 = MEMORY[0x277CCACA8];
  v6 = [(HDQueryServer *)self client];
  v7 = [v6 process];
  v8 = [v7 bundleIdentifier];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [(HDQueryServer *)self queryUUID];
  v12 = [v11 UUIDString];
  v13 = [v12 substringToIndex:4];
  v14 = [v5 stringWithFormat:@"%@-%@-%@", v8, v10, v13];

  v15 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v16 = [(HDQueryServer *)self _queue_collectionObserverState];
  v17 = [v19 takeCollectionAssertionWithOwnerIdentifier:v14 sampleTypes:v15 observerState:v16 collectionInterval:self->_collectionInterval];

  [(HDAssertion *)self->_dataCollectionAssertion invalidate];
  dataCollectionAssertion = self->_dataCollectionAssertion;
  self->_dataCollectionAssertion = v17;

  self->_isCollectingData = 1;
  [(HDQueryServer *)&self->super.isa _queue_updateSampleTypeObservationAssertions];
}

- (void)_queue_transitionToFinished
{
  if (a1)
  {
    if ([a1 queryState] == 4)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      [v6 handleFailureInMethod:sel__queue_transitionToFinished object:a1 file:@"HDQueryServer.m" lineNumber:479 description:{@"Invalid parameter not satisfying: %@", @"self.queryState != HDQueryServerStateFinished"}];
    }

    [(HDQueryServer *)a1 _queue_transitionToSuspendedState:?];
    v7 = _Block_copy(*(a1 + 24));
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;

    if (v7)
    {
      v7[2](v7, a1);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 104));
    [WeakRetained queryServerDidFinish:a1];

    [a1 _queue_stopDataCollection];
    v4 = objc_loadWeakRetained((a1 + 128));
    v5 = [v4 database];
    [v5 removeProtectedDataObserver:a1];

    [(HDQueryServer *)a1 _queue_endObservingDataTypes];
    [(HDQueryServer *)a1 _queue_invalidateActiveQueryTransaction];
    [a1 _queue_didDeactivate];
  }
}

- (void)_queue_stopDataCollection
{
  [(HDAssertion *)self->_dataCollectionAssertion invalidate];
  dataCollectionAssertion = self->_dataCollectionAssertion;
  self->_dataCollectionAssertion = 0;

  self->_isCollectingData = 0;

  [(HDQueryServer *)&self->super.isa _queue_updateSampleTypeObservationAssertions];
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  [(HDAssertion *)self->_dataCollectionAssertion invalidate];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_dataObservationAssertions;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = HDQueryServer;
  [(HDQueryServer *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (HDQueryServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)builtInQueryServerClasses
{
  v5[35] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v5[7] = objc_opt_class();
  v5[8] = objc_opt_class();
  v5[9] = objc_opt_class();
  v5[10] = objc_opt_class();
  v5[11] = objc_opt_class();
  v5[12] = objc_opt_class();
  v5[13] = objc_opt_class();
  v5[14] = objc_opt_class();
  v5[15] = objc_opt_class();
  v5[16] = objc_opt_class();
  v5[17] = objc_opt_class();
  v5[18] = objc_opt_class();
  v5[19] = objc_opt_class();
  v5[20] = objc_opt_class();
  v5[21] = objc_opt_class();
  v5[22] = objc_opt_class();
  v5[23] = objc_opt_class();
  v5[24] = objc_opt_class();
  v5[25] = objc_opt_class();
  v5[26] = objc_opt_class();
  v5[27] = objc_opt_class();
  v5[28] = objc_opt_class();
  v5[29] = objc_opt_class();
  v5[30] = objc_opt_class();
  v5[31] = objc_opt_class();
  v5[32] = objc_opt_class();
  v5[33] = objc_opt_class();
  v5[34] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:35];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HDQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v14 && ([v14 conformsToProtocol:&unk_283D06608] & 1) == 0)
  {
    v42 = [MEMORY[0x277CCA890] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"HDQueryServer.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"[delegate conformsToProtocol:@protocol(HDQueryServerDelegate)]"}];
  }

  v43.receiver = self;
  v43.super_class = HDQueryServer;
  v16 = [(HDQueryServer *)&v43 init];
  if (v16)
  {
    v17 = [v11 copy];
    queryUUID = v16->_queryUUID;
    v16->_queryUUID = v17;

    objc_storeStrong(&v16->_client, a5);
    v19 = [v13 profile];
    objc_storeWeak(&v16->_profile, v19);

    objc_storeStrong(&v16->_configuration, a4);
    objc_storeWeak(&v16->_delegate, v15);
    v20 = [v13 process];
    v21 = MEMORY[0x277CCACA8];
    v22 = [v20 processIdentifier];
    v23 = [v20 name];
    v24 = [v11 UUIDString];
    v25 = [v21 stringWithFormat:@"%d.%@.%@", v22, v23, v24];

    v26 = HKCreateSerialDispatchQueue();
    queryQueue = v16->_queryQueue;
    v16->_queryQueue = v26;

    if (_HDIsUnitTesting)
    {
      v28 = [v25 stringByAppendingString:@".UnitTesting"];
      v29 = HKCreateSerialDispatchQueue();
      unitTestQueryQueue = v16->_unitTestQueryQueue;
      v16->_unitTestQueryQueue = v29;
    }

    atomic_store(0, &v16->_queryState);
    v31 = [v12 objectType];
    objectType = v16->_objectType;
    v16->_objectType = v31;

    v33 = [v12 filter];
    v34 = [v13 filterWithQueryFilter:v33 objectType:v16->_objectType];
    filter = v16->_filter;
    v16->_filter = v34;

    v36 = [v13 baseDataEntityEncodingOptions];
    baseDataEntityEncodingOptions = v16->_baseDataEntityEncodingOptions;
    v16->_baseDataEntityEncodingOptions = v36;

    v16->_collectionInterval = 5.0;
    v38 = [v13 authorizationOracle];
    objc_storeWeak(&v16->_authorizationOracle, v38);

    v39 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:v16 activityName:@"Activate"];
    activationTransaction = v16->_activationTransaction;
    v16->_activationTransaction = v39;
  }

  return v16;
}

- (id)sanitizedSampleForQueryClient:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  client = self->_client;
  v5 = a3;
  v6 = [(HDHealthStoreClient *)client entitlements];
  v7 = [v5 sanitizedSample:v5 forEntitlements:v6];

  if ([(HDHealthStoreClient *)self->_client hasPrivateMetadataAccess])
  {
    v8 = v7;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = [v7 workoutEvents];
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v26;
        do
        {
          v14 = 0;
          v15 = v12;
          do
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v16 = *(*(&v25 + 1) + 8 * v14);
            v12 = [v16 metadata];

            if ([v12 count])
            {
              v17 = [v12 hk_copySanitizedForPublicClient];
              v18 = v17;
              if (v12 != v17 && (!v17 || ([v12 isEqual:v17] & 1) == 0))
              {
                [v16 _setWorkoutEventMetadata:v18];
              }
            }

            ++v14;
            v15 = v12;
          }

          while (v11 != v14);
          v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v11);
      }
    }

    v19 = [v7 metadata];
    v20 = [v19 hk_copySanitizedForPublicClient];
    v21 = v20;
    if (v19 != v20 && (!v20 || ([v19 isEqual:v20] & 1) == 0))
    {
      v22 = [v7 _copyByArchiving];

      [v22 _setMetadata:v21];
      v7 = v22;
    }

    v8 = v7;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)filteredSamplesForClientWithSamples:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HDHealthStoreClient *)self->_client hasEntitlement:*MEMORY[0x277CCC8B0]])
  {
    v5 = v4;
  }

  else
  {
    v5 = [v4 hk_filter:&__block_literal_global_161];
  }

  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_authorizationOracle);
  v8 = [WeakRetained clientHasAuthorizationForAllTypes];

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v10 = [v6 hk_mapToSet:&__block_literal_global_377_0];
    if ([v10 count])
    {
      v24 = v4;
      v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v11 = dispatch_group_create();
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v23 = v10;
      obj = v10;
      v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v12)
      {
        v13 = v12;
        v26 = *v35;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v35 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v34 + 1) + 8 * i);
            v33[0] = MEMORY[0x277D85DD0];
            v33[1] = 3221225472;
            v33[2] = __55__HDQueryServer_authorizedSamplesForClientWithSamples___block_invoke_2;
            v33[3] = &unk_278617BF0;
            v33[4] = v15;
            v16 = [v6 hk_filter:v33];
            dispatch_group_enter(v11);
            v17 = [[HDObjectAuthorizationRequestContext alloc] initWithSamples:v16 metadata:0];
            [(HDObjectAuthorizationRequestContext *)v17 setPersistSession:0];
            [(HDObjectAuthorizationRequestContext *)v17 setPromptWithNoSamples:0];
            v18 = [(HDQueryServer *)self delegate];
            [v15 code];
            v19 = HKPromptForLegacyPerObjectAuthorizationDuringQueries();
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __55__HDQueryServer_authorizedSamplesForClientWithSamples___block_invoke_3;
            v30[3] = &unk_27861B398;
            v30[4] = v15;
            v31 = v27;
            v32 = v11;
            [v18 queryServer:self requestsAuthorizationWithContext:v17 promptIfNeeded:v19 completion:v30];
          }

          v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v13);
      }

      dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __55__HDQueryServer_authorizedSamplesForClientWithSamples___block_invoke_381;
      v28[3] = &unk_2786257F0;
      v28[4] = self;
      v29 = v27;
      v20 = v27;
      v9 = [v6 hk_filter:v28];

      v10 = v23;
      v4 = v24;
    }

    else
    {
      v9 = v6;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v9;
}

id __55__HDQueryServer_authorizedSamplesForClientWithSamples___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 sampleType];
  if ([v3 requiresPerObjectAuthorization])
  {
    v4 = [v2 sampleType];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __55__HDQueryServer_authorizedSamplesForClientWithSamples___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 sampleType];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __55__HDQueryServer_authorizedSamplesForClientWithSamples___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(a1 + 40);
          v12 = [*(*(&v16 + 1) + 8 * i) UUID];
          [v11 addObject:v12];
        }

        v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogAuthorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 138543618;
      v22 = v14;
      v23 = 2114;
      v24 = v6;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "Failed to obtain authorized samples for %{public}@: %{public}@", buf, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 48));

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __55__HDQueryServer_authorizedSamplesForClientWithSamples___block_invoke_381(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sampleType];
  v5 = [v4 requiresPerObjectAuthorization];

  if (v5 && ([*(a1 + 32) authorizationOracle], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "sampleType"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "hasAuthorizationBypassToReadType:", v7), v7, v6, (v8 & 1) == 0))
  {
    v10 = *(a1 + 40);
    v11 = [v3 UUID];
    v9 = [v10 containsObject:v11];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)predicateForQueryClient
{
  v3 = [(HDQueryServer *)self filter];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [v3 predicateWithProfile:WeakRetained];

  return v5;
}

- (id)createDatabaseTransactionContext
{
  v3 = objc_alloc_init(HDMutableDatabaseTransactionContext);
  [(HDMutableDatabaseTransactionContext *)v3 setCacheScope:1];
  [(HDMutableDatabaseTransactionContext *)v3 setStatistics:self->_transactionStatistics];

  return v3;
}

- (BOOL)prepareToActivateServerWithError:(id *)a3
{
  v5 = [(HDQueryServer *)self queryState];
  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v8 = [WeakRetained database];
    v13[4] = self;
    v14 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__HDQueryServer_prepareToActivateServerWithError___block_invoke;
    v13[3] = &unk_278616D40;
    v6 = [v8 performHighPriorityTransactionsWithError:&v14 block:v13];
    v9 = v14;

    if (v6)
    {
LABEL_12:

      return v6;
    }

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] hk_error:124 description:@"Unknown query validation error"];
      if (!v10)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    if (a3)
    {
      v11 = v10;
      *a3 = v10;
    }

    else
    {
      _HKLogDroppedError();
    }

    if (v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a3 code:126 format:{@"Invalid query state %ld", v5}];
  return 0;
}

- (void)activateServerWithClientState:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isSuspended])
  {
    [(HDQueryServer *)self _setShouldPause:?];
  }

  queryQueue = self->_queryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HDQueryServer_activateServerWithClientState_error___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queryQueue, block);
}

- (void)_setShouldPause:(uint64_t)a1
{
  if (a1)
  {
    atomic_store(a2, (a1 + 80));
    v4 = _Block_copy(*(a1 + 184));
    v5 = v4;
    if (v4)
    {
      v6 = *(a1 + 88);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33__HDQueryServer__setShouldPause___block_invoke;
      block[3] = &unk_278616460;
      block[4] = a1;
      v8 = v4;
      v9 = a2;
      dispatch_async(v6, block);
    }
  }
}

- (void)_queue_activateServerWithClientState:(void *)a3 error:
{
  v21[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 queryState];
    if (v7 != 4)
    {
      v8 = v7;
      if (!v7)
      {
        [(HDQueryServer *)a1 _queue_setQueryState:?];
      }

      [a1 setClientState:v5];
      v9 = [v5 isSuspended];
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        *&buf[4] = a1;
        *&buf[12] = 1024;
        *&buf[14] = v6 == 0;
        *&buf[18] = 1024;
        *&buf[20] = v9;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "%{public}@: activated successfully: %{BOOL}d, paused: %{BOOL}d", buf, 0x18u);
      }

      if (v6)
      {
        [(HDQueryServer *)a1 _queue_transitionToFinished];
      }

      else if (v9)
      {
        [(HDQueryServer *)a1 _queue_transitionToPaused];
      }

      else
      {
        [(HDQueryServer *)a1 _queue_takeActiveQueryTransaction];
        if ((*(a1 + 78) & 1) == 0 && [a1 _shouldListenForUpdates] && (objc_msgSend(*(a1 + 16), "shouldSuppressDataCollection") & 1) == 0)
        {
          [a1 _queue_startDataCollection];
        }

        dispatch_assert_queue_V2(*(a1 + 136));
        v11 = [a1 objectTypes];
        v12 = [v11 hk_anyObjectPassingTest:&__block_literal_global_435_0];

        if (v12)
        {
          v13 = [MEMORY[0x277CCAB98] defaultCenter];
          [v13 postNotificationName:@"HDQueryServerDidReceiveHealthRecordsQueryNotification" object:a1];
        }

        objc_initWeak(&location, a1);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __36__HDQueryServer__scheduleStartQuery__block_invoke;
        v19 = &unk_2786177F8;
        v20 = a1;
        objc_copyWeak(v21, &location);
        v14 = _Block_copy(buf);
        v14[2]();

        objc_destroyWeak(v21);
        objc_destroyWeak(&location);
      }

      [*(a1 + 48) invalidate];
      v15 = *(a1 + 48);
      *(a1 + 48) = 0;

      [(HDQueryServer *)a1 _queue_didFinishTransitionFromState:v8];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setQueryState:(uint64_t)a1
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v4 = atomic_exchange((a1 + 72), a2);
    v5 = v4;
    if (v4 != a2)
    {
      [a1 _queue_didChangeStateFromPreviousState:v4 state:a2];
    }

    v6 = _Block_copy(*(a1 + 192));
    v7 = v6;
    if (v6)
    {
      v8 = *(a1 + 88);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __38__HDQueryServer__queue_setQueryState___block_invoke;
      v9[3] = &unk_278625818;
      v9[4] = a1;
      v10 = v6;
      v11 = v5;
      v12 = a2;
      dispatch_async(v8, v9);
    }
  }
}

- (void)_queue_takeActiveQueryTransaction
{
  WeakRetained = objc_loadWeakRetained((a1 + 128));
  v2 = [WeakRetained daemon];
  v3 = [v2 behavior];
  if ([v3 supportsActiveQueryDaemonTransactions])
  {
    v4 = [a1 hasActiveDaemonTransaction];

    if (v4)
    {
      return;
    }

    WeakRetained = [MEMORY[0x277CCACA8] stringWithFormat:@"Running-%@", *(a1 + 112)];
    v5 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:a1 activityName:?];
    v2 = *(a1 + 56);
    *(a1 + 56) = v5;
  }

  else
  {
  }
}

- (void)_queue_didFinishTransitionFromState:(uint64_t)a1
{
  dispatch_assert_queue_V2(*(a1 + 136));
  v4 = [a1 queryState];
  v5 = _Block_copy(*(a1 + 200));
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 88);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__HDQueryServer__queue_didFinishTransitionFromState___block_invoke;
    v8[3] = &unk_278625818;
    v8[4] = a1;
    v9 = v5;
    v10 = a2;
    v11 = v4;
    dispatch_async(v7, v8);
  }
}

- (void)setQueryDidFinishHandler:(id)a3
{
  v4 = a3;
  queryQueue = self->_queryQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HDQueryServer_setQueryDidFinishHandler___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queryQueue, v7);
}

uint64_t __42__HDQueryServer_setQueryDidFinishHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __36__HDQueryServer__scheduleStartQuery__block_invoke_2(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained queryState] == 1 && (objc_msgSend(v3, "_shouldStopProcessingQuery") & 1) == 0)
  {
    if (([v3 _shouldExecuteWhenProtectedDataIsUnavailable] & 1) != 0 || (v4 = objc_loadWeakRetained((v3 + 128)), objc_msgSend(v4, "database"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isProtectedDataAvailable"), v5, v4, v6))
    {
      v7 = [v3 queryState];
      if (v7 != 1)
      {
        v48 = [MEMORY[0x277CCA890] currentHandler];
        [v48 handleFailureInMethod:sel__queue_transitionToRunning object:v3 file:@"HDQueryServer.m" lineNumber:430 description:{@"Invalid parameter not satisfying: %@", @"previousState == HDQueryServerStateActivated"}];
      }

      [(HDQueryServer *)v3 _queue_setQueryState:?];
      if (([v3 _shouldExecuteWhenProtectedDataIsUnavailable] & 1) != 0 || objc_msgSend(v3, "_shouldObserveDatabaseProtectedDataAvailability"))
      {
        v8 = objc_loadWeakRetained((v3 + 128));
        v9 = [v8 database];
        [v9 addProtectedDataObserver:v3 queue:*(v3 + 136)];
      }

      [(HDQueryServer *)v3 _queue_takeActiveQueryTransaction];
      if ((*(v3 + 78) & 1) == 0 && [v3 _shouldListenForUpdates] && (objc_msgSend(*(v3 + 16), "shouldSuppressDataCollection") & 1) == 0)
      {
        [v3 _queue_startDataCollection];
      }

      Current = CFAbsoluteTimeGetCurrent();
      v11 = [v3 client];
      v12 = [v11 accessibilityAssertions];

      if ([v12 count])
      {
        v13 = objc_alloc_init(HDMutableDatabaseTransactionContext);
        [(HDMutableDatabaseTransactionContext *)v13 setCacheScope:1];
        [(HDMutableDatabaseTransactionContext *)v13 addAccessibilityAssertions:v12];
        v14 = [v3 profile];
        v15 = [v14 database];
        v49[4] = v3;
        v50 = 0;
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __43__HDQueryServer__queue_transitionToRunning__block_invoke;
        v49[3] = &unk_278616D40;
        [v15 performWithTransactionContext:v13 error:&v50 block:v49];
        v16 = v50;
      }

      else
      {
        [v3 _queue_start];
      }

      v17 = CFAbsoluteTimeGetCurrent() - Current;
      [*(v3 + 96) totalDuration];
      v19 = v18;
      v20 = [v3 clientState];
      v21 = [v20 isBackgroundRunning];

      if (v21)
      {
        if (v19 <= 0.0)
        {
          v19 = v17;
        }

        dispatch_assert_queue_V2(*(v3 + 136));
        if (v19 != 0.0)
        {
          v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          [v22 setObject:v24 forKeyedSubscript:@"queryType"];

          v25 = [v3 queryUUID];
          v26 = [v25 UUIDString];
          [v22 setObject:v26 forKeyedSubscript:@"queryId"];

          v27 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
          [v22 setObject:v27 forKeyedSubscript:@"totalDuration"];

          [v22 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isBackgroundQuery"];
          v28 = [v3 sampleType];
          v29 = v28;
          if (v28)
          {
            v30 = [v28 description];
            [v22 setObject:v30 forKeyedSubscript:@"dataType"];
          }

          v31 = kHDEventNameQuery;
          v32 = [v3 client];
          HDPowerLogForClient(v31, v32, v22);
        }
      }

      v33 = objc_loadWeakRetained((v3 + 128));
      v34 = [v33 daemon];
      v35 = [v34 behavior];
      v36 = [v35 isAppleInternalInstall];

      _HKInitializeLogging();
      v37 = *MEMORY[0x277CCC308];
      v38 = os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO);
      if (v36)
      {
        if (v38)
        {
          v39 = *(v3 + 96);
          v40 = v37;
          [v39 totalDuration];
          *buf = 138543874;
          v52 = v3;
          v53 = 2048;
          v54 = v17;
          v55 = 2048;
          v56 = v41;
          _os_log_impl(&dword_228986000, v40, OS_LOG_TYPE_INFO, "%{public}@: Ran in %.3fs (%.3fs in database transactions)", buf, 0x20u);
        }
      }

      else if (v38)
      {
        *buf = 138543618;
        v52 = v3;
        v53 = 2048;
        v54 = v17;
        _os_log_impl(&dword_228986000, v37, OS_LOG_TYPE_INFO, "%{public}@: Ran in %.3fs", buf, 0x16u);
      }

      [(HDQueryServer *)v3 _queue_didFinishTransitionFromState:v7];
    }

    else
    {
      v42 = [MEMORY[0x277CCA9B8] hk_protectedDataInaccessibilityError];
      v43 = [v3 clientProxy];
      if (v43)
      {
        v44 = [v3 queryUUID];
        [v43 client_deliverError:v42 forQuery:v44];
      }
    }
  }

  v45 = *(a1 + 32);
  v46 = *(v45 + 96);
  *(v45 + 96) = 0;
  v47 = *MEMORY[0x277D85DE8];
}

- (void)deactivateServerWithCompletion:(id)a3
{
  v4 = a3;
  atomic_store(1u, &self->_shouldFinish);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__HDQueryServer_deactivateServerWithCompletion___block_invoke;
  v6[3] = &unk_278614E28;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HDQueryServer *)self onQueue:v6];
}

uint64_t __48__HDQueryServer_deactivateServerWithCompletion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) queryState] != 4)
  {
    [(HDQueryServer *)*(a1 + 32) _queue_transitionToFinished];
    v2 = *(a1 + 32);
    if (v2)
    {
      [*(v2 + 48) invalidate];
      v3 = *(v2 + 48);
      *(v2 + 48) = 0;
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)schedulePause
{
  [(HDQueryServer *)self _setShouldPause:?];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __30__HDQueryServer_schedulePause__block_invoke;
  v3[3] = &unk_278613968;
  v3[4] = self;
  [(HDQueryServer *)self onQueue:v3];
}

void __30__HDQueryServer_schedulePause__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) queryState] - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *(a1 + 32);

    [(HDQueryServer *)v2 _queue_transitionToPaused];
  }
}

- (void)clientStateWillChange:(id)a3
{
  queryQueue = self->_queryQueue;
  v5 = a3;
  dispatch_assert_queue_not_V2(queryQueue);
  v6 = [v5 isSuspended];

  [(HDQueryServer *)self _setShouldPause:v6];
}

- (void)clientStateDidChange:(id)a3
{
  v4 = a3;
  queryQueue = self->_queryQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HDQueryServer_clientStateDidChange___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queryQueue, v7);
}

void __38__HDQueryServer_clientStateDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  v5 = [*(a1 + 32) queryState];
  if ([*(a1 + 40) isSuspended])
  {
    if ((v5 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      [(HDQueryServer *)*(a1 + 32) _queue_transitionToPaused];
    }
  }

  else if ([*(a1 + 32) queryState] == 3)
  {
    v6 = *(a1 + 32);
    if (!*(v6 + 48))
    {
      v7 = [HKDaemonTransaction transactionWithOwner:"transactionWithOwner:activityName:" activityName:?];
      v8 = *(a1 + 32);
      v9 = *(v8 + 48);
      *(v8 + 48) = v7;

      v6 = *(a1 + 32);
    }

    [(HDQueryServer *)v6 _queue_setQueryState:?];
    [(HDQueryServer *)*(a1 + 32) _queue_activateServerWithClientState:0 error:?];
  }

  v10 = [(HDQueryServer *)*(a1 + 32) _queue_collectionObserverState];
  [*(*(a1 + 32) + 40) setObserverState:v10];

  v11 = *(a1 + 32);

  [(HDQueryServer *)v11 _queue_updateSampleTypeObservationAssertions];
}

- (id)_queue_collectionObserverState
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 clientState];
    v1 = +[HDDataCollectionObserverState dataCollectionObserverStateInForeground:hasRunningWorkout:hasBackgroundObserver:shouldTakeWorkoutDatabaseAssertion:](HDDataCollectionObserverState, "dataCollectionObserverStateInForeground:hasRunningWorkout:hasBackgroundObserver:shouldTakeWorkoutDatabaseAssertion:", [v2 isForeground], 0, -[HDQueryServer _backgroundRunningCollectionSupportedForClient](v1), 0);
  }

  return v1;
}

- (void)_queue_updateSampleTypeObservationAssertions
{
  v49 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
    v2 = [a1 profile];
    v3 = [v2 sessionAssertionManager];

    v37 = v3;
    if (v3)
    {
      v4 = [(HDQueryServer *)v1 _queue_sampleTypesForObservation];
      if (*(v1 + 78) == 1)
      {
        v5 = [v1 clientState];
        if ([v5 isForeground] & 1) != 0 || (-[HDQueryServer _backgroundRunningCollectionSupportedForClient](v1))
        {
          v6 = [v4 count];

          if (v6)
          {
            v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v8 = [v1 client];
            v9 = [v8 process];
            v10 = [v9 bundleIdentifier];

            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v35 = v4;
            obj = v4;
            v38 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (!v38)
            {
              goto LABEL_18;
            }

            v11 = *v40;
            v12 = 0x277D10000uLL;
            while (1)
            {
              for (i = 0; i != v38; ++i)
              {
                if (*v40 != v11)
                {
                  objc_enumerationMutation(obj);
                }

                v14 = *(*(&v39 + 1) + 8 * i);
                v15 = HDQueryServerSampleTypeObservationAssertionName(v14);
                v16 = [objc_alloc(*(v12 + 2744)) initWithAssertionIdentifier:v15 ownerIdentifier:v10];
                v17 = [v1 clientState];
                if ([v17 isForeground])
                {
                }

                else
                {
                  [v1 _supportedTypesForBackgroundRunningCollection];
                  v18 = v11;
                  v19 = v10;
                  v20 = v1;
                  v22 = v21 = v7;
                  v23 = [v22 containsObject:v14];

                  v7 = v21;
                  v1 = v20;
                  v10 = v19;
                  v11 = v18;
                  v12 = 0x277D10000;

                  if (!v23)
                  {
                    goto LABEL_16;
                  }
                }

                [v37 takeAssertion:{v16, v35}];
                [v7 addObject:v16];
LABEL_16:
              }

              v38 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
              if (!v38)
              {
LABEL_18:

                v4 = v35;
                v24 = v7;
                goto LABEL_21;
              }
            }
          }
        }

        else
        {
        }
      }

      v24 = 0;
LABEL_21:
      v25 = v1[4];
      v26 = v24;
      v27 = [v24 copy];
      v28 = v1[4];
      v1[4] = v27;

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v29 = v25;
      v30 = [v29 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v44;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v44 != v32)
            {
              objc_enumerationMutation(v29);
            }

            [*(*(&v43 + 1) + 8 * j) invalidate];
          }

          v31 = [v29 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v31);
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_queue_transitionToSuspendedState:(id *)a1
{
  v4 = [a1 queryState];
  [(HDQueryServer *)a1 _queue_setQueryState:a2];
  if (([a1 _shouldExecuteWhenProtectedDataIsUnavailable] & 1) != 0 || objc_msgSend(a1, "_shouldObserveDatabaseProtectedDataAvailability"))
  {
    WeakRetained = objc_loadWeakRetained(a1 + 16);
    v6 = [WeakRetained database];
    [v6 removeProtectedDataObserver:a1];
  }

  if (v4 == 2)
  {
    [a1 _queue_stop];
    if ([a1 _shouldListenForUpdates] && (objc_msgSend(a1, "queryState") == 4 || (objc_msgSend(a1, "_shouldObserveOnPause") & 1) == 0))
    {
      [a1 _queue_stopDataCollection];
    }

    [(HDQueryServer *)a1 _queue_invalidateActiveQueryTransaction];
  }

  [(HDQueryServer *)a1 _queue_didFinishTransitionFromState:v4];
}

- (void)_queue_invalidateActiveQueryTransaction
{
  WeakRetained = objc_loadWeakRetained(a1 + 16);
  v2 = [WeakRetained daemon];
  v3 = [v2 behavior];
  if ([v3 supportsActiveQueryDaemonTransactions])
  {
    v4 = [a1 hasActiveDaemonTransaction];

    if ((v4 & 1) == 0)
    {
      return;
    }

    [a1[7] invalidate];
    v5 = a1[7];
    a1[7] = 0;
  }

  else
  {

    v5 = WeakRetained;
  }
}

- (id)_queue_sampleTypesForObservation
{
  v1 = a1;
  v7[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if ([a1 _shouldObserveAllSampleTypes])
    {
      v2 = HKAllCollectibleTypesWithStoreDemoModeEnabled();
      v3 = [v2 hk_map:&__block_literal_global_421_0];
      v1 = [v3 allObjects];

LABEL_6:
      goto LABEL_7;
    }

    v4 = [v1 sampleType];

    if (v4)
    {
      v2 = [v1 sampleType];
      v7[0] = v2;
      v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
      goto LABEL_6;
    }

    v1 = MEMORY[0x277CBEBF8];
  }

LABEL_7:
  v5 = *MEMORY[0x277D85DE8];

  return v1;
}

void *__49__HDQueryServer__queue_sampleTypesForObservation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (uint64_t)_backgroundRunningCollectionSupportedForClient
{
  if ([a1 _supportsBackgroundDataCollection])
  {
    v2 = [MEMORY[0x277CCDD30] sharedBehavior];
    if ([v2 isRealityDevice])
    {
      v3 = 0;
LABEL_10:

      return v3;
    }

    v4 = [MEMORY[0x277CCDD30] sharedBehavior];
    v5 = [v4 isAppleWatch];

    if ((v5 & 1) == 0)
    {
      v6 = [a1 client];
      v7 = [v6 entitlements];
      v2 = [v7 valueForEntitlement:*MEMORY[0x277CCB820]];

      v8 = [a1 clientState];
      v9 = [v8 isBackgroundRunning];

      if (v2)
      {
        v10 = [v2 hasPrefix:@"com.apple"] ^ 1;
      }

      else
      {
        v10 = 0;
      }

      v3 = v9 & v10;
      goto LABEL_10;
    }
  }

  return 0;
}

- (void)remote_startQueryWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(HDQueryServer *)self delegate];
  v5 = v4;
  if (v4)
  {
    [v4 queryServer:self shouldStartWithCompletion:v7];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"nil query server delegate"];
    v7[2](v7, 0, v6);
  }
}

- (NSSet)objectTypes
{
  if (self->_objectType)
  {
    [MEMORY[0x277CBEB98] setWithObject:?];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v2 = ;

  return v2;
}

- (HKQuantityType)quantityType
{
  objectType = self->_objectType;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_objectType;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)scheduleDatabaseAccessOnQueueWithBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained daemon];
  v7 = [v6 queryManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HDQueryServer_scheduleDatabaseAccessOnQueueWithBlock___block_invoke;
  v9[3] = &unk_27861B320;
  objc_copyWeak(&v11, &location);
  v8 = v4;
  v10 = v8;
  [v7 scheduleDatabaseAccessForQueryServer:self block:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __56__HDQueryServer_scheduleDatabaseAccessOnQueueWithBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (WeakRetained && ([WeakRetained _shouldStopProcessingQuery] & 1) == 0)
  {
    v3 = WeakRetained[17];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HDQueryServer__scheduleDatabaseAccessWithBlock___block_invoke;
    block[3] = &unk_278613658;
    v6 = v2;
    dispatch_sync(v3, block);
  }
}

id __42__HDQueryServer_sampleAuthorizationFilter__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 176));
  v12 = 0;
  v6 = [WeakRetained filteredObjectsForReadAuthorization:v4 anchor:0 error:&v12];

  v7 = v12;
  if (!v6)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Sample authorization failed: %{public}@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)authorizationStatusRecordForType:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_authorizationOracle);
  v8 = [WeakRetained authorizationStatusRecordForType:v6 error:a4];

  return v8;
}

+ (Class)queryClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return objc_opt_class();
}

- (BOOL)validateConfiguration:(id *)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [objc_opt_class() requiredEntitlements];
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (![(HDHealthStoreClient *)self->_client hasRequiredEntitlement:*(*(&v33 + 1) + 8 * i) error:a3])
        {
          v12 = 0;
          goto LABEL_36;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_authorizationOracle);
  v11 = [WeakRetained clientHasAuthorizationForAllTypes];

  v5 = [(HDQueryServer *)self objectTypes];
  v12 = 1;
  if ([v5 count] && (v11 & 1) == 0)
  {
    v13 = objc_loadWeakRetained(&self->_authorizationOracle);
    v32 = 0;
    v14 = [v13 authorizationStatusRecordsForTypes:v5 error:&v32];
    v15 = v32;

    if (v14)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = v5;
      v17 = [v16 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v29;
        while (2)
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [v14 objectForKeyedSubscript:{*(*(&v28 + 1) + 8 * j), v28}];
            v22 = v21;
            if (!v21 || ![v21 isAuthorizationDetermined])
            {
              v25 = @"Authorization not determined";
LABEL_31:
              [MEMORY[0x277CCA9B8] hk_assignError:a3 code:5 description:v25];

              v12 = 0;
              goto LABEL_32;
            }

            if ([v22 authorizationMode] == 1 && (objc_msgSend(objc_opt_class(), "supportsAnchorBasedAuthorization") & 1) == 0)
            {
              v25 = @"Authorization not supported";
              goto LABEL_31;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v28 objects:v37 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }

        v12 = 1;
      }

LABEL_32:

      goto LABEL_35;
    }

    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v39 = self;
      v40 = 2114;
      v41 = v15;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Error determining authorization status: %{public}@", buf, 0x16u);
    }

    v14 = v15;
    if (v14)
    {
      if (a3)
      {
        v24 = v14;
        v12 = 0;
        *a3 = v14;
LABEL_35:

        goto LABEL_36;
      }

      _HKLogDroppedError();
    }

    v12 = 0;
    goto LABEL_35;
  }

LABEL_36:

  v26 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)taskIdentifier
{
  v2 = [a1 queryClass];

  return [v2 taskIdentifier];
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (Class)configurationClass
{
  v2 = [a1 queryClass];

  return [v2 configurationClass];
}

- (id)exportedInterface
{
  v2 = [objc_opt_class() queryClass];

  return [v2 serverInterface];
}

- (id)remoteInterface
{
  v2 = [objc_opt_class() queryClass];

  return [v2 clientInterface];
}

- (void)connectionInvalidated
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_debug_impl(&dword_228986000, v3, OS_LOG_TYPE_DEBUG, "%{public}@: connection invalidated, deactivating", &v5, 0xCu);
  }

  [(HDQueryServer *)self deactivateServerWithCompletion:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)diagnosticDescription
{
  if (self && ([(HDQueryServer *)self filter], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(HDQueryServer *)self filter];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v6 = [v4 predicateWithProfile:WeakRetained];
    v7 = [v6 description];

    v8 = [v7 componentsSeparatedByString:@"\n"];
    v9 = [v8 componentsJoinedByString:@"\n\t"];
    v10 = [@"\t" stringByAppendingString:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(HKQueryServerConfiguration *)self->_configuration debugIdentifier];
  v12 = MEMORY[0x277CBEAA8];
  [(HDQueryServer *)self activationTime];
  v30 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
  v13 = 0x277CCA000;
  v28 = MEMORY[0x277CCACA8];
  v14 = [(HDQueryServer *)self queryUUID];
  v15 = [v14 UUIDString];
  v27 = objc_opt_class();
  if (v11)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", v11];
  }

  else
  {
    v16 = &stru_283BF39C8;
  }

  v29 = v10;
  v17 = [(HDQueryServer *)self sampleType];
  if (v17)
  {
    v18 = MEMORY[0x277CCACA8];
    v13 = [(HDQueryServer *)self sampleType];
    v19 = [v18 stringWithFormat:@" (%@)", v13];
  }

  else
  {
    v19 = &stru_283BF39C8;
  }

  v20 = [(HDQueryServer *)self _queryStateString];
  if ([(HDQueryServer *)self _shouldStopProcessingQuery])
  {
    v21 = @" (finishing)";
  }

  else
  {
    v21 = &stru_283BF39C8;
  }

  v22 = HKDiagnosticStringFromDate();
  v23 = [v28 stringWithFormat:@"%@ %@%@%@ - %@%@, activated %@", v15, v27, v16, v19, v20, v21, v22];

  if (v17)
  {
  }

  if (v11)
  {
  }

  if (v29)
  {
    v24 = [v23 stringByAppendingFormat:@"\n%@", v29];
  }

  else
  {
    v24 = v23;
  }

  v25 = v24;

  return v25;
}

- (HDClientAuthorizationOracle)authorizationOracle
{
  WeakRetained = objc_loadWeakRetained(&self->_authorizationOracle);

  return WeakRetained;
}

@end