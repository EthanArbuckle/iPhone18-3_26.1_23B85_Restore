@interface HDQueryServer
+ (Class)configurationClass;
+ (Class)queryClass;
+ (id)builtInQueryServerClasses;
+ (id)requiredEntitlements;
+ (id)taskIdentifier;
- (BOOL)_shouldExecuteWhenProtectedDataIsUnavailable;
- (BOOL)clientHasActiveWorkout;
- (BOOL)prepareToActivateServerWithError:(id *)error;
- (BOOL)validateConfiguration:(id *)configuration;
- (HDClientAuthorizationOracle)authorizationOracle;
- (HDProfile)profile;
- (HDQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (HDQueryServerDelegate)delegate;
- (HKQuantityType)quantityType;
- (HKQueryClientInterface)clientProxy;
- (HKSampleType)sampleType;
- (NSSet)objectTypes;
- (NSString)description;
- (__CFString)_queryStateString;
- (id)_queue_collectionObserverState;
- (id)_queue_sampleTypesForObservation;
- (id)authorizationStatusRecordForType:(id)type error:(id *)error;
- (id)createDatabaseTransactionContext;
- (id)diagnosticDescription;
- (id)exportedInterface;
- (id)filteredSamplesForClientWithSamples:(id)samples;
- (id)newDataEntityEnumerator;
- (id)predicateForQueryClient;
- (id)remoteInterface;
- (id)sampleAuthorizationFilter;
- (id)sanitizedSampleForQueryClient:(id)client;
- (uint64_t)_backgroundRunningCollectionSupportedForClient;
- (void)_queue_activateServerWithClientState:(void *)state error:;
- (void)_queue_beginObservingDataTypes;
- (void)_queue_didFinishTransitionFromState:(uint64_t)state;
- (void)_queue_endObservingDataTypes;
- (void)_queue_invalidateActiveQueryTransaction;
- (void)_queue_setQueryState:(uint64_t)state;
- (void)_queue_start;
- (void)_queue_startDataCollection;
- (void)_queue_stop;
- (void)_queue_stopDataCollection;
- (void)_queue_takeActiveQueryTransaction;
- (void)_queue_transitionToFinished;
- (void)_queue_transitionToPaused;
- (void)_queue_transitionToSuspendedState:(id *)state;
- (void)_queue_updateSampleTypeObservationAssertions;
- (void)_setShouldPause:(uint64_t)pause;
- (void)activateServerWithClientState:(id)state error:(id)error;
- (void)clientStateDidChange:(id)change;
- (void)clientStateWillChange:(id)change;
- (void)connectionInvalidated;
- (void)deactivateServerWithCompletion:(id)completion;
- (void)dealloc;
- (void)remote_startQueryWithCompletion:(id)completion;
- (void)scheduleDatabaseAccessOnQueueWithBlock:(id)block;
- (void)schedulePause;
- (void)setQueryDidFinishHandler:(id)handler;
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
  client = [(HDQueryServer *)self client];
  accessibilityAssertions = [client accessibilityAssertions];
  v4 = [accessibilityAssertions count] != 0;

  return v4;
}

- (HKQueryClientInterface)clientProxy
{
  connection = [(HDHealthStoreClient *)self->_client connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (NSString)description
{
  queryUUID = self->_queryUUID;
  process = [(HDHealthStoreClient *)self->_client process];
  name = [process name];
  debugIdentifier = [(HKQueryServerConfiguration *)self->_configuration debugIdentifier];
  [(HKQueryServerConfiguration *)self->_configuration qualityOfService];
  _queryStateString = [(HDQueryServer *)self _queryStateString];
  v8 = HKCopyQueryDescription();

  return v8;
}

- (__CFString)_queryStateString
{
  if (result)
  {
    queryState = [(__CFString *)result queryState];
    if (queryState > 4)
    {
      return @"Unknown state";
    }

    else
    {
      return off_278625880[queryState];
    }
  }

  return result;
}

- (void)_queue_start
{
  if ([(HDQueryServer *)self queryState]!= 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQueryServer.m" lineNumber:818 description:{@"Invalid parameter not satisfying: %@", @"self.queryState == HDQueryServerStateRunning"}];
  }

  if ([(HDQueryServer *)self _shouldListenForUpdates])
  {

    [(HDQueryServer *)self _queue_beginObservingDataTypes];
  }
}

- (void)_queue_beginObservingDataTypes
{
  v18 = *MEMORY[0x277D85DE8];
  if (self && (*(self + 77) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((self + 128));
    dataManager = [WeakRetained dataManager];

    v4 = objc_loadWeakRetained((self + 128));
    associationManager = [v4 associationManager];

    if ([self _shouldObserveAllSampleTypes])
    {
      [dataManager addObserverForAllTypes:self];
      [associationManager addObserverForAllTypes:self];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      objectTypes = [self objectTypes];
      v7 = [objectTypes countByEnumeratingWithState:&v13 objects:v17 count:16];
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
              objc_enumerationMutation(objectTypes);
            }

            v11 = *(*(&v13 + 1) + 8 * i);
            [dataManager addObserver:self forDataType:v11];
            [associationManager addObserver:self forDataType:v11];
          }

          v8 = [objectTypes countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }
    }

    *(self + 77) = 1;
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
  if (!self)
  {
    return;
  }

  queryState = [self queryState];
  if (queryState == 3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__queue_transitionToPaused object:self file:@"HDQueryServer.m" lineNumber:503 description:{@"Invalid parameter not satisfying: %@", @"queryServerState != HDQueryServerStatePaused"}];
LABEL_9:

    goto LABEL_4;
  }

  if (queryState == 4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__queue_transitionToPaused object:self file:@"HDQueryServer.m" lineNumber:504 description:{@"Invalid parameter not satisfying: %@", @"queryServerState != HDQueryServerStateFinished"}];
    goto LABEL_9;
  }

LABEL_4:

  [(HDQueryServer *)self _queue_transitionToSuspendedState:?];
}

- (void)_queue_stop
{
  queryState = [(HDQueryServer *)self queryState];
  if ((queryState - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQueryServer.m" lineNumber:826 description:{@"Invalid parameter not satisfying: %@", @"(queryState == HDQueryServerStateFinished) || (queryState == HDQueryServerStatePaused)"}];
  }

  else if (queryState == 3 && [(HDQueryServer *)self _shouldObserveOnPause])
  {

    [(HDQueryServer *)self _queue_beginObservingDataTypes];
    return;
  }

  [(HDQueryServer *)self _queue_endObservingDataTypes];
}

- (void)_queue_endObservingDataTypes
{
  v18 = *MEMORY[0x277D85DE8];
  if (self && *(self + 77) == 1)
  {
    WeakRetained = objc_loadWeakRetained((self + 128));
    dataManager = [WeakRetained dataManager];

    v4 = objc_loadWeakRetained((self + 128));
    associationManager = [v4 associationManager];

    if ([self _shouldObserveAllSampleTypes])
    {
      [dataManager removeObserverForAllTypes:self];
      [associationManager removeObserverForAllTypes:self];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      objectTypes = [self objectTypes];
      v7 = [objectTypes countByEnumeratingWithState:&v13 objects:v17 count:16];
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
              objc_enumerationMutation(objectTypes);
            }

            v11 = *(*(&v13 + 1) + 8 * i);
            [dataManager removeObserver:self forDataType:v11];
            [associationManager removeObserver:self forDataType:v11];
          }

          v8 = [objectTypes countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }
    }

    *(self + 77) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)clientHasActiveWorkout
{
  client = [(HDQueryServer *)self client];
  process = [client process];
  bundleIdentifier = [process bundleIdentifier];

  profile = [(HDQueryServer *)self profile];
  workoutManager = [profile workoutManager];
  currentWorkoutClient = [workoutManager currentWorkoutClient];
  process2 = [currentWorkoutClient process];
  bundleIdentifier2 = [process2 bundleIdentifier];
  v11 = [bundleIdentifier2 isEqualToString:bundleIdentifier];

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
  dataCollectionManager = [WeakRetained dataCollectionManager];

  _queue_sampleTypesForObservation = [(HDQueryServer *)self _queue_sampleTypesForObservation];
  v5 = MEMORY[0x277CCACA8];
  client = [(HDQueryServer *)self client];
  process = [client process];
  bundleIdentifier = [process bundleIdentifier];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  queryUUID = [(HDQueryServer *)self queryUUID];
  uUIDString = [queryUUID UUIDString];
  v13 = [uUIDString substringToIndex:4];
  v14 = [v5 stringWithFormat:@"%@-%@-%@", bundleIdentifier, v10, v13];

  v15 = [MEMORY[0x277CBEB98] setWithArray:_queue_sampleTypesForObservation];
  _queue_collectionObserverState = [(HDQueryServer *)self _queue_collectionObserverState];
  v17 = [dataCollectionManager takeCollectionAssertionWithOwnerIdentifier:v14 sampleTypes:v15 observerState:_queue_collectionObserverState collectionInterval:self->_collectionInterval];

  [(HDAssertion *)self->_dataCollectionAssertion invalidate];
  dataCollectionAssertion = self->_dataCollectionAssertion;
  self->_dataCollectionAssertion = v17;

  self->_isCollectingData = 1;
  [(HDQueryServer *)&self->super.isa _queue_updateSampleTypeObservationAssertions];
}

- (void)_queue_transitionToFinished
{
  if (self)
  {
    if ([self queryState] == 4)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__queue_transitionToFinished object:self file:@"HDQueryServer.m" lineNumber:479 description:{@"Invalid parameter not satisfying: %@", @"self.queryState != HDQueryServerStateFinished"}];
    }

    [(HDQueryServer *)self _queue_transitionToSuspendedState:?];
    v7 = _Block_copy(*(self + 24));
    v2 = *(self + 24);
    *(self + 24) = 0;

    if (v7)
    {
      v7[2](v7, self);
    }

    WeakRetained = objc_loadWeakRetained((self + 104));
    [WeakRetained queryServerDidFinish:self];

    [self _queue_stopDataCollection];
    v4 = objc_loadWeakRetained((self + 128));
    database = [v4 database];
    [database removeProtectedDataObserver:self];

    [(HDQueryServer *)self _queue_endObservingDataTypes];
    [(HDQueryServer *)self _queue_invalidateActiveQueryTransaction];
    [self _queue_didDeactivate];
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

- (HDQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  v15 = delegateCopy;
  if (delegateCopy && ([delegateCopy conformsToProtocol:&unk_283D06608] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQueryServer.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"[delegate conformsToProtocol:@protocol(HDQueryServerDelegate)]"}];
  }

  v43.receiver = self;
  v43.super_class = HDQueryServer;
  v16 = [(HDQueryServer *)&v43 init];
  if (v16)
  {
    v17 = [dCopy copy];
    queryUUID = v16->_queryUUID;
    v16->_queryUUID = v17;

    objc_storeStrong(&v16->_client, client);
    profile = [clientCopy profile];
    objc_storeWeak(&v16->_profile, profile);

    objc_storeStrong(&v16->_configuration, configuration);
    objc_storeWeak(&v16->_delegate, v15);
    process = [clientCopy process];
    v21 = MEMORY[0x277CCACA8];
    processIdentifier = [process processIdentifier];
    name = [process name];
    uUIDString = [dCopy UUIDString];
    v25 = [v21 stringWithFormat:@"%d.%@.%@", processIdentifier, name, uUIDString];

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
    objectType = [configurationCopy objectType];
    objectType = v16->_objectType;
    v16->_objectType = objectType;

    filter = [configurationCopy filter];
    v34 = [clientCopy filterWithQueryFilter:filter objectType:v16->_objectType];
    filter = v16->_filter;
    v16->_filter = v34;

    baseDataEntityEncodingOptions = [clientCopy baseDataEntityEncodingOptions];
    baseDataEntityEncodingOptions = v16->_baseDataEntityEncodingOptions;
    v16->_baseDataEntityEncodingOptions = baseDataEntityEncodingOptions;

    v16->_collectionInterval = 5.0;
    authorizationOracle = [clientCopy authorizationOracle];
    objc_storeWeak(&v16->_authorizationOracle, authorizationOracle);

    v39 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:v16 activityName:@"Activate"];
    activationTransaction = v16->_activationTransaction;
    v16->_activationTransaction = v39;
  }

  return v16;
}

- (id)sanitizedSampleForQueryClient:(id)client
{
  v30 = *MEMORY[0x277D85DE8];
  client = self->_client;
  clientCopy = client;
  entitlements = [(HDHealthStoreClient *)client entitlements];
  v7 = [clientCopy sanitizedSample:clientCopy forEntitlements:entitlements];

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
      workoutEvents = [v7 workoutEvents];
      v10 = [workoutEvents countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        metadata = 0;
        v13 = *v26;
        do
        {
          v14 = 0;
          v15 = metadata;
          do
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(workoutEvents);
            }

            v16 = *(*(&v25 + 1) + 8 * v14);
            metadata = [v16 metadata];

            if ([metadata count])
            {
              hk_copySanitizedForPublicClient = [metadata hk_copySanitizedForPublicClient];
              v18 = hk_copySanitizedForPublicClient;
              if (metadata != hk_copySanitizedForPublicClient && (!hk_copySanitizedForPublicClient || ([metadata isEqual:hk_copySanitizedForPublicClient] & 1) == 0))
              {
                [v16 _setWorkoutEventMetadata:v18];
              }
            }

            ++v14;
            v15 = metadata;
          }

          while (v11 != v14);
          v11 = [workoutEvents countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v11);
      }
    }

    metadata2 = [v7 metadata];
    hk_copySanitizedForPublicClient2 = [metadata2 hk_copySanitizedForPublicClient];
    v21 = hk_copySanitizedForPublicClient2;
    if (metadata2 != hk_copySanitizedForPublicClient2 && (!hk_copySanitizedForPublicClient2 || ([metadata2 isEqual:hk_copySanitizedForPublicClient2] & 1) == 0))
    {
      _copyByArchiving = [v7 _copyByArchiving];

      [_copyByArchiving _setMetadata:v21];
      v7 = _copyByArchiving;
    }

    v8 = v7;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)filteredSamplesForClientWithSamples:(id)samples
{
  v39 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  if ([(HDHealthStoreClient *)self->_client hasEntitlement:*MEMORY[0x277CCC8B0]])
  {
    v5 = samplesCopy;
  }

  else
  {
    v5 = [samplesCopy hk_filter:&__block_literal_global_161];
  }

  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_authorizationOracle);
  clientHasAuthorizationForAllTypes = [WeakRetained clientHasAuthorizationForAllTypes];

  if (clientHasAuthorizationForAllTypes)
  {
    v9 = v6;
  }

  else
  {
    v10 = [v6 hk_mapToSet:&__block_literal_global_377_0];
    if ([v10 count])
    {
      v24 = samplesCopy;
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
            delegate = [(HDQueryServer *)self delegate];
            [v15 code];
            v19 = HKPromptForLegacyPerObjectAuthorizationDuringQueries();
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __55__HDQueryServer_authorizedSamplesForClientWithSamples___block_invoke_3;
            v30[3] = &unk_27861B398;
            v30[4] = v15;
            v31 = v27;
            v32 = v11;
            [delegate queryServer:self requestsAuthorizationWithContext:v17 promptIfNeeded:v19 completion:v30];
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
      samplesCopy = v24;
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
  filter = [(HDQueryServer *)self filter];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [filter predicateWithProfile:WeakRetained];

  return v5;
}

- (id)createDatabaseTransactionContext
{
  v3 = objc_alloc_init(HDMutableDatabaseTransactionContext);
  [(HDMutableDatabaseTransactionContext *)v3 setCacheScope:1];
  [(HDMutableDatabaseTransactionContext *)v3 setStatistics:self->_transactionStatistics];

  return v3;
}

- (BOOL)prepareToActivateServerWithError:(id *)error
{
  queryState = [(HDQueryServer *)self queryState];
  if (!queryState)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    v13[4] = self;
    v14 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__HDQueryServer_prepareToActivateServerWithError___block_invoke;
    v13[3] = &unk_278616D40;
    v6 = [database performHighPriorityTransactionsWithError:&v14 block:v13];
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

    if (error)
    {
      v11 = v10;
      *error = v10;
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

  [MEMORY[0x277CCA9B8] hk_assignError:error code:126 format:{@"Invalid query state %ld", queryState}];
  return 0;
}

- (void)activateServerWithClientState:(id)state error:(id)error
{
  stateCopy = state;
  errorCopy = error;
  if ([stateCopy isSuspended])
  {
    [(HDQueryServer *)self _setShouldPause:?];
  }

  queryQueue = self->_queryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HDQueryServer_activateServerWithClientState_error___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v12 = stateCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = stateCopy;
  dispatch_sync(queryQueue, block);
}

- (void)_setShouldPause:(uint64_t)pause
{
  if (pause)
  {
    atomic_store(a2, (pause + 80));
    v4 = _Block_copy(*(pause + 184));
    v5 = v4;
    if (v4)
    {
      v6 = *(pause + 88);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33__HDQueryServer__setShouldPause___block_invoke;
      block[3] = &unk_278616460;
      block[4] = pause;
      v8 = v4;
      v9 = a2;
      dispatch_async(v6, block);
    }
  }
}

- (void)_queue_activateServerWithClientState:(void *)state error:
{
  v21[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  stateCopy = state;
  if (self)
  {
    queryState = [self queryState];
    if (queryState != 4)
    {
      v8 = queryState;
      if (!queryState)
      {
        [(HDQueryServer *)self _queue_setQueryState:?];
      }

      [self setClientState:v5];
      isSuspended = [v5 isSuspended];
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        *&buf[4] = self;
        *&buf[12] = 1024;
        *&buf[14] = stateCopy == 0;
        *&buf[18] = 1024;
        *&buf[20] = isSuspended;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "%{public}@: activated successfully: %{BOOL}d, paused: %{BOOL}d", buf, 0x18u);
      }

      if (stateCopy)
      {
        [(HDQueryServer *)self _queue_transitionToFinished];
      }

      else if (isSuspended)
      {
        [(HDQueryServer *)self _queue_transitionToPaused];
      }

      else
      {
        [(HDQueryServer *)self _queue_takeActiveQueryTransaction];
        if ((*(self + 78) & 1) == 0 && [self _shouldListenForUpdates] && (objc_msgSend(*(self + 16), "shouldSuppressDataCollection") & 1) == 0)
        {
          [self _queue_startDataCollection];
        }

        dispatch_assert_queue_V2(*(self + 136));
        objectTypes = [self objectTypes];
        v12 = [objectTypes hk_anyObjectPassingTest:&__block_literal_global_435_0];

        if (v12)
        {
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:@"HDQueryServerDidReceiveHealthRecordsQueryNotification" object:self];
        }

        objc_initWeak(&location, self);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __36__HDQueryServer__scheduleStartQuery__block_invoke;
        v19 = &unk_2786177F8;
        selfCopy = self;
        objc_copyWeak(v21, &location);
        v14 = _Block_copy(buf);
        v14[2]();

        objc_destroyWeak(v21);
        objc_destroyWeak(&location);
      }

      [*(self + 48) invalidate];
      v15 = *(self + 48);
      *(self + 48) = 0;

      [(HDQueryServer *)self _queue_didFinishTransitionFromState:v8];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setQueryState:(uint64_t)state
{
  if (state)
  {
    dispatch_assert_queue_V2(*(state + 136));
    v4 = atomic_exchange((state + 72), a2);
    v5 = v4;
    if (v4 != a2)
    {
      [state _queue_didChangeStateFromPreviousState:v4 state:a2];
    }

    v6 = _Block_copy(*(state + 192));
    v7 = v6;
    if (v6)
    {
      v8 = *(state + 88);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __38__HDQueryServer__queue_setQueryState___block_invoke;
      v9[3] = &unk_278625818;
      v9[4] = state;
      v10 = v6;
      v11 = v5;
      v12 = a2;
      dispatch_async(v8, v9);
    }
  }
}

- (void)_queue_takeActiveQueryTransaction
{
  WeakRetained = objc_loadWeakRetained((self + 128));
  daemon = [WeakRetained daemon];
  behavior = [daemon behavior];
  if ([behavior supportsActiveQueryDaemonTransactions])
  {
    hasActiveDaemonTransaction = [self hasActiveDaemonTransaction];

    if (hasActiveDaemonTransaction)
    {
      return;
    }

    WeakRetained = [MEMORY[0x277CCACA8] stringWithFormat:@"Running-%@", *(self + 112)];
    v5 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:?];
    daemon = *(self + 56);
    *(self + 56) = v5;
  }

  else
  {
  }
}

- (void)_queue_didFinishTransitionFromState:(uint64_t)state
{
  dispatch_assert_queue_V2(*(state + 136));
  queryState = [state queryState];
  v5 = _Block_copy(*(state + 200));
  v6 = v5;
  if (v5)
  {
    v7 = *(state + 88);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__HDQueryServer__queue_didFinishTransitionFromState___block_invoke;
    v8[3] = &unk_278625818;
    v8[4] = state;
    v9 = v5;
    v10 = a2;
    v11 = queryState;
    dispatch_async(v7, v8);
  }
}

- (void)setQueryDidFinishHandler:(id)handler
{
  handlerCopy = handler;
  queryQueue = self->_queryQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HDQueryServer_setQueryDidFinishHandler___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
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

- (void)deactivateServerWithCompletion:(id)completion
{
  completionCopy = completion;
  atomic_store(1u, &self->_shouldFinish);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__HDQueryServer_deactivateServerWithCompletion___block_invoke;
  v6[3] = &unk_278614E28;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
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

- (void)clientStateWillChange:(id)change
{
  queryQueue = self->_queryQueue;
  changeCopy = change;
  dispatch_assert_queue_not_V2(queryQueue);
  isSuspended = [changeCopy isSuspended];

  [(HDQueryServer *)self _setShouldPause:isSuspended];
}

- (void)clientStateDidChange:(id)change
{
  changeCopy = change;
  queryQueue = self->_queryQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HDQueryServer_clientStateDidChange___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
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
  selfCopy = self;
  if (self)
  {
    clientState = [self clientState];
    selfCopy = +[HDDataCollectionObserverState dataCollectionObserverStateInForeground:hasRunningWorkout:hasBackgroundObserver:shouldTakeWorkoutDatabaseAssertion:](HDDataCollectionObserverState, "dataCollectionObserverStateInForeground:hasRunningWorkout:hasBackgroundObserver:shouldTakeWorkoutDatabaseAssertion:", [clientState isForeground], 0, -[HDQueryServer _backgroundRunningCollectionSupportedForClient](selfCopy), 0);
  }

  return selfCopy;
}

- (void)_queue_updateSampleTypeObservationAssertions
{
  v49 = *MEMORY[0x277D85DE8];
  if (self)
  {
    selfCopy = self;
    profile = [self profile];
    sessionAssertionManager = [profile sessionAssertionManager];

    v37 = sessionAssertionManager;
    if (sessionAssertionManager)
    {
      _queue_sampleTypesForObservation = [(HDQueryServer *)selfCopy _queue_sampleTypesForObservation];
      if (*(selfCopy + 78) == 1)
      {
        clientState = [selfCopy clientState];
        if ([clientState isForeground] & 1) != 0 || (-[HDQueryServer _backgroundRunningCollectionSupportedForClient](selfCopy))
        {
          v6 = [_queue_sampleTypesForObservation count];

          if (v6)
          {
            v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
            client = [selfCopy client];
            process = [client process];
            bundleIdentifier = [process bundleIdentifier];

            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v35 = _queue_sampleTypesForObservation;
            obj = _queue_sampleTypesForObservation;
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
                v16 = [objc_alloc(*(v12 + 2744)) initWithAssertionIdentifier:v15 ownerIdentifier:bundleIdentifier];
                clientState2 = [selfCopy clientState];
                if ([clientState2 isForeground])
                {
                }

                else
                {
                  [selfCopy _supportedTypesForBackgroundRunningCollection];
                  v18 = v11;
                  v19 = bundleIdentifier;
                  v20 = selfCopy;
                  v22 = v21 = v7;
                  v23 = [v22 containsObject:v14];

                  v7 = v21;
                  selfCopy = v20;
                  bundleIdentifier = v19;
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

                _queue_sampleTypesForObservation = v35;
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
      v25 = selfCopy[4];
      v26 = v24;
      v27 = [v24 copy];
      v28 = selfCopy[4];
      selfCopy[4] = v27;

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

- (void)_queue_transitionToSuspendedState:(id *)state
{
  queryState = [state queryState];
  [(HDQueryServer *)state _queue_setQueryState:a2];
  if (([state _shouldExecuteWhenProtectedDataIsUnavailable] & 1) != 0 || objc_msgSend(state, "_shouldObserveDatabaseProtectedDataAvailability"))
  {
    WeakRetained = objc_loadWeakRetained(state + 16);
    database = [WeakRetained database];
    [database removeProtectedDataObserver:state];
  }

  if (queryState == 2)
  {
    [state _queue_stop];
    if ([state _shouldListenForUpdates] && (objc_msgSend(state, "queryState") == 4 || (objc_msgSend(state, "_shouldObserveOnPause") & 1) == 0))
    {
      [state _queue_stopDataCollection];
    }

    [(HDQueryServer *)state _queue_invalidateActiveQueryTransaction];
  }

  [(HDQueryServer *)state _queue_didFinishTransitionFromState:queryState];
}

- (void)_queue_invalidateActiveQueryTransaction
{
  WeakRetained = objc_loadWeakRetained(self + 16);
  daemon = [WeakRetained daemon];
  behavior = [daemon behavior];
  if ([behavior supportsActiveQueryDaemonTransactions])
  {
    hasActiveDaemonTransaction = [self hasActiveDaemonTransaction];

    if ((hasActiveDaemonTransaction & 1) == 0)
    {
      return;
    }

    [self[7] invalidate];
    v5 = self[7];
    self[7] = 0;
  }

  else
  {

    v5 = WeakRetained;
  }
}

- (id)_queue_sampleTypesForObservation
{
  selfCopy = self;
  v7[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    if ([self _shouldObserveAllSampleTypes])
    {
      sampleType2 = HKAllCollectibleTypesWithStoreDemoModeEnabled();
      v3 = [sampleType2 hk_map:&__block_literal_global_421_0];
      selfCopy = [v3 allObjects];

LABEL_6:
      goto LABEL_7;
    }

    sampleType = [selfCopy sampleType];

    if (sampleType)
    {
      sampleType2 = [selfCopy sampleType];
      v7[0] = sampleType2;
      selfCopy = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
      goto LABEL_6;
    }

    selfCopy = MEMORY[0x277CBEBF8];
  }

LABEL_7:
  v5 = *MEMORY[0x277D85DE8];

  return selfCopy;
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
  if ([self _supportsBackgroundDataCollection])
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    if ([mEMORY[0x277CCDD30] isRealityDevice])
    {
      v3 = 0;
LABEL_10:

      return v3;
    }

    mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleWatch = [mEMORY[0x277CCDD30]2 isAppleWatch];

    if ((isAppleWatch & 1) == 0)
    {
      client = [self client];
      entitlements = [client entitlements];
      mEMORY[0x277CCDD30] = [entitlements valueForEntitlement:*MEMORY[0x277CCB820]];

      clientState = [self clientState];
      isBackgroundRunning = [clientState isBackgroundRunning];

      if (mEMORY[0x277CCDD30])
      {
        v10 = [mEMORY[0x277CCDD30] hasPrefix:@"com.apple"] ^ 1;
      }

      else
      {
        v10 = 0;
      }

      v3 = isBackgroundRunning & v10;
      goto LABEL_10;
    }
  }

  return 0;
}

- (void)remote_startQueryWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(HDQueryServer *)self delegate];
  v5 = delegate;
  if (delegate)
  {
    [delegate queryServer:self shouldStartWithCompletion:completionCopy];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"nil query server delegate"];
    completionCopy[2](completionCopy, 0, v6);
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

- (void)scheduleDatabaseAccessOnQueueWithBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  queryManager = [daemon queryManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HDQueryServer_scheduleDatabaseAccessOnQueueWithBlock___block_invoke;
  v9[3] = &unk_27861B320;
  objc_copyWeak(&v11, &location);
  v8 = blockCopy;
  v10 = v8;
  [queryManager scheduleDatabaseAccessForQueryServer:self block:v9];

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

- (id)authorizationStatusRecordForType:(id)type error:(id *)error
{
  typeCopy = type;
  WeakRetained = objc_loadWeakRetained(&self->_authorizationOracle);
  v8 = [WeakRetained authorizationStatusRecordForType:typeCopy error:error];

  return v8;
}

+ (Class)queryClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return objc_opt_class();
}

- (BOOL)validateConfiguration:(id *)configuration
{
  v43 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  requiredEntitlements = [objc_opt_class() requiredEntitlements];
  v6 = [requiredEntitlements countByEnumeratingWithState:&v33 objects:v42 count:16];
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
          objc_enumerationMutation(requiredEntitlements);
        }

        if (![(HDHealthStoreClient *)self->_client hasRequiredEntitlement:*(*(&v33 + 1) + 8 * i) error:configuration])
        {
          v12 = 0;
          goto LABEL_36;
        }
      }

      v7 = [requiredEntitlements countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_authorizationOracle);
  clientHasAuthorizationForAllTypes = [WeakRetained clientHasAuthorizationForAllTypes];

  requiredEntitlements = [(HDQueryServer *)self objectTypes];
  v12 = 1;
  if ([requiredEntitlements count] && (clientHasAuthorizationForAllTypes & 1) == 0)
  {
    v13 = objc_loadWeakRetained(&self->_authorizationOracle);
    v32 = 0;
    v14 = [v13 authorizationStatusRecordsForTypes:requiredEntitlements error:&v32];
    v15 = v32;

    if (v14)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = requiredEntitlements;
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
              [MEMORY[0x277CCA9B8] hk_assignError:configuration code:5 description:v25];

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
      selfCopy = self;
      v40 = 2114;
      v41 = v15;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Error determining authorization status: %{public}@", buf, 0x16u);
    }

    v14 = v15;
    if (v14)
    {
      if (configuration)
      {
        v24 = v14;
        v12 = 0;
        *configuration = v14;
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
  queryClass = [self queryClass];

  return [queryClass taskIdentifier];
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
  queryClass = [self queryClass];

  return [queryClass configurationClass];
}

- (id)exportedInterface
{
  queryClass = [objc_opt_class() queryClass];

  return [queryClass serverInterface];
}

- (id)remoteInterface
{
  queryClass = [objc_opt_class() queryClass];

  return [queryClass clientInterface];
}

- (void)connectionInvalidated
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_228986000, v3, OS_LOG_TYPE_DEBUG, "%{public}@: connection invalidated, deactivating", &v5, 0xCu);
  }

  [(HDQueryServer *)self deactivateServerWithCompletion:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)diagnosticDescription
{
  if (self && ([(HDQueryServer *)self filter], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    filter = [(HDQueryServer *)self filter];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v6 = [filter predicateWithProfile:WeakRetained];
    v7 = [v6 description];

    v8 = [v7 componentsSeparatedByString:@"\n"];
    v9 = [v8 componentsJoinedByString:@"\n\t"];
    v10 = [@"\t" stringByAppendingString:v9];
  }

  else
  {
    v10 = 0;
  }

  debugIdentifier = [(HKQueryServerConfiguration *)self->_configuration debugIdentifier];
  v12 = MEMORY[0x277CBEAA8];
  [(HDQueryServer *)self activationTime];
  v30 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
  sampleType2 = 0x277CCA000;
  v28 = MEMORY[0x277CCACA8];
  queryUUID = [(HDQueryServer *)self queryUUID];
  uUIDString = [queryUUID UUIDString];
  v27 = objc_opt_class();
  if (debugIdentifier)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", debugIdentifier];
  }

  else
  {
    v16 = &stru_283BF39C8;
  }

  v29 = v10;
  sampleType = [(HDQueryServer *)self sampleType];
  if (sampleType)
  {
    v18 = MEMORY[0x277CCACA8];
    sampleType2 = [(HDQueryServer *)self sampleType];
    v19 = [v18 stringWithFormat:@" (%@)", sampleType2];
  }

  else
  {
    v19 = &stru_283BF39C8;
  }

  _queryStateString = [(HDQueryServer *)self _queryStateString];
  if ([(HDQueryServer *)self _shouldStopProcessingQuery])
  {
    v21 = @" (finishing)";
  }

  else
  {
    v21 = &stru_283BF39C8;
  }

  v22 = HKDiagnosticStringFromDate();
  v23 = [v28 stringWithFormat:@"%@ %@%@%@ - %@%@, activated %@", uUIDString, v27, v16, v19, _queryStateString, v21, v22];

  if (sampleType)
  {
  }

  if (debugIdentifier)
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