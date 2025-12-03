@interface HDAnchoredObjectQueryServer
- (BOOL)_shouldObserveOnPause;
- (BOOL)prepareToActivateServerWithError:(id *)error;
- (BOOL)validateConfiguration:(id *)configuration;
- (HDAnchoredObjectQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_queue_secureClientTokenWithError:(void *)error;
- (id)_supportedTypesForBackgroundRunningCollection;
- (id)description;
- (id)objectTypes;
- (uint64_t)_batchObjectsWithAnchor:(uint64_t)anchor error:(void *)error batchHandler:;
- (uint64_t)_queue_shouldAcceptUpdates;
- (void)_queue_deliverSamples:(void *)samples deletedObjects:(void *)objects anchor:(uint64_t)anchor clearPendingSamples:(uint64_t)pendingSamples deliverResults:(void *)results description:;
- (void)_queue_didChangeStateFromPreviousState:(int64_t)state state:(int64_t)a4;
- (void)_queue_didDeactivate;
- (void)_queue_handleBatchedQueryResult:(void *)result error:;
- (void)_queue_runNextUpdateBlock;
- (void)_queue_start;
- (void)didAddSamplesOfTypes:(id)types anchor:(id)anchor;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor;
@end

@implementation HDAnchoredObjectQueryServer

- (void)_queue_start
{
  v50 = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = HDAnchoredObjectQueryServer;
  [(HDQueryServer *)&v40 _queue_start];
  if (!self->_initialResultsSent)
  {
    _HKInitializeLogging();
    v9 = MEMORY[0x277CCC308];
    v10 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Running for initial results", buf, 0xCu);
    }

    queryQueue = [(HDQueryServer *)self queryQueue];
    dispatch_assert_queue_V2(queryQueue);

    clientProxy = [(HDQueryServer *)self clientProxy];
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    if (self->_objectsDeleted)
    {
      objc_storeStrong(&self->_anchor, self->_startAnchor);
      self->_deliveredResults = 0;
      self->_objectsDeleted = 0;
      *(v43 + 24) = 1;
    }

    _clientToken = [(HKQueryAnchor *)self->_startAnchor _clientToken];
    queryQueue2 = [(HDQueryServer *)self queryQueue];
    dispatch_assert_queue_V2(queryQueue2);

    if (_clientToken)
    {
      v15 = [HDAnchoredObjectQueryServer _queue_secureClientTokenWithError:?];
      if (v15)
      {
        v16 = [_clientToken isEqualToString:v15];

        if (v16)
        {
LABEL_27:
          v24 = self->_anchor;
          profile = [(HDQueryServer *)self profile];
          database = [profile database];
          *buf = 0;
          v27 = [(HDHealthEntity *)HDSampleEntity maxRowIDForPredicate:0 healthDatabase:database error:buf];
          v28 = *buf;

          if (v27)
          {
            v29 = 0;
          }

          else
          {
            v30 = v28;
            v29 = v30;
            if (v30)
            {
              v31 = v30;
            }
          }

          v32 = v29;
          if (v27)
          {
            _rowid = [(HKQueryAnchor *)v24 _rowid];
            if (_rowid > [v27 longLongValue])
            {
              v34 = [MEMORY[0x277CCD840] _anchorWithRowid:{objc_msgSend(v27, "longLongValue")}];

              v24 = v34;
            }

            v41 = v32;
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __60__HDAnchoredObjectQueryServer__queue_startForInitialResults__block_invoke;
            v47 = &unk_27861C5D0;
            selfCopy2 = self;
            v49 = &v42;
            v35 = [(HDAnchoredObjectQueryServer *)self _batchObjectsWithAnchor:v24 error:&v41 batchHandler:buf];
            v36 = v41;

            [(HDAnchoredObjectQueryServer *)self _queue_handleBatchedQueryResult:v35 error:v36];
            if (v35 == 2)
            {
              [(HDAnchoredObjectQueryServer *)self _queue_deliverSamples:MEMORY[0x277CBEBF8] deletedObjects:self->_startAnchor anchor:1 clearPendingSamples:1 deliverResults:@"initial results" description:?];
            }

            [(HDQueryServer *)self setDataCount:self->_deliveredResults];
            v32 = v36;
            goto LABEL_42;
          }

          _HKInitializeLogging();
          v37 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v32;
            _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "%{public}@: encountered error calculating max rowid: %{public}@", buf, 0x16u);
            if (v32)
            {
              goto LABEL_41;
            }
          }

          else if (v32)
          {
LABEL_41:
            queryUUID = [(HDQueryServer *)self queryUUID];
            [clientProxy client_deliverError:v32 forQuery:queryUUID];

LABEL_42:
            _Block_object_dispose(&v42, 8);

            goto LABEL_43;
          }

          v32 = [MEMORY[0x277CCA9B8] hk_error:122 format:@"Failed to find maximum row ID but no error was provided."];
          goto LABEL_41;
        }
      }

      else
      {
        hk_isDatabaseSchemaRolledBackError = [0 hk_isDatabaseSchemaRolledBackError];
        _HKInitializeLogging();
        v19 = *v9;
        v20 = *v9;
        if (hk_isDatabaseSchemaRolledBackError)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = 0;
            _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Unable to synthesize query anchor token for validation: %{public}@", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543618;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = 0;
          _os_log_fault_impl(&dword_228986000, v19, OS_LOG_TYPE_FAULT, "%{public}@: Unable to synthesize query anchor token for validation: %{public}@", buf, 0x16u);
        }
      }

      _HKInitializeLogging();
      v21 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        startAnchor = self->_startAnchor;
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = startAnchor;
        _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidating stale query anchor %{public}@", buf, 0x16u);
      }

      v23 = self->_startAnchor;
      self->_startAnchor = 0;

      anchor = self->_anchor;
      self->_anchor = 0;
    }

    else
    {
      anchor = 0;
    }

    goto LABEL_27;
  }

  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    *&buf[4] = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_INFO, "%{public}@: Running for update", buf, 0xCu);
  }

  if ([(NSMutableArray *)self->_addedSamplesPendingResume count]|| [(NSMutableArray *)self->_deletedSamplesPendingResume count])
  {
    [(HDAnchoredObjectQueryServer *)self _queue_deliverSamples:self->_deletedSamplesPendingResume deletedObjects:self->_anchor anchor:0 clearPendingSamples:1 deliverResults:@"pending updates after resume" description:?];
    addedSamplesPendingResume = self->_addedSamplesPendingResume;
    self->_addedSamplesPendingResume = 0;

    deletedSamplesPendingResume = self->_deletedSamplesPendingResume;
    self->_deletedSamplesPendingResume = 0;
  }

  v6 = self->_anchor;
  v42 = 0;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __52__HDAnchoredObjectQueryServer__queue_startForUpdate__block_invoke;
  v47 = &unk_27861C5F8;
  selfCopy2 = self;
  v7 = [(HDAnchoredObjectQueryServer *)self _batchObjectsWithAnchor:v6 error:&v42 batchHandler:buf];
  v8 = v42;
  [(HDAnchoredObjectQueryServer *)self _queue_handleBatchedQueryResult:v7 error:v8];

LABEL_43:
  v39 = *MEMORY[0x277D85DE8];
}

void __60__HDAnchoredObjectQueryServer__queue_startForInitialResults__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [*(a1 + 32) filteredSamplesForClientWithSamples:a2];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(a1 + 32) sanitizedSampleForQueryClient:{*(*(&v23 + 1) + 8 * v16), v23}];
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = [MEMORY[0x277CCD840] _anchorWithRowid:a4];
  v19 = *(a1 + 32);
  v20 = *(v19 + 304);
  *(v19 + 304) = v18;

  v21 = [v11 count];
  *(*(a1 + 32) + 248) += [v9 count] + v21;
  *(*(a1 + 32) + 225) = a5;
  [(HDAnchoredObjectQueryServer *)*(a1 + 32) _queue_deliverSamples:v11 deletedObjects:v9 anchor:*(*(a1 + 32) + 304) clearPendingSamples:*(*(*(a1 + 40) + 8) + 24) deliverResults:a5 description:@"initial results"];
  *(*(*(a1 + 40) + 8) + 24) = 0;

  v22 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_queue_shouldAcceptUpdates
{
  if (*(self + 225) != 1)
  {
    return 0;
  }

  if ([self queryState] == 2)
  {
    return 1;
  }

  result = [self clientHasActiveWorkout];
  if (result)
  {
    v3 = [*(self + 264) count];
    return ([*(self + 272) count] + v3) < 0xC8;
  }

  return result;
}

- (HDAnchoredObjectQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  clientCopy = client;
  v25.receiver = self;
  v25.super_class = HDAnchoredObjectQueryServer;
  v12 = [(HDQueryServer *)&v25 initWithUUID:d configuration:configurationCopy client:clientCopy delegate:delegate];
  if (v12)
  {
    anchor = [configurationCopy anchor];
    startAnchor = v12->_startAnchor;
    v12->_startAnchor = anchor;

    objc_storeStrong(&v12->_anchor, v12->_startAnchor);
    v12->_limit = [configurationCopy limit];
    v12->_deliversUpdates = [configurationCopy shouldDeactivateAfterInitialResults] ^ 1;
    v12->_includeDeletedObjects = [configurationCopy includeDeletedObjects];
    v12->_includeAutomaticTimeZones = [configurationCopy includeAutomaticTimeZones];
    [configurationCopy collectionInterval];
    [(HDQueryServer *)v12 setCollectionInterval:?];
    v12->_includeContributorInformation = [configurationCopy includeContributorInformation];
    queryDescriptors = [configurationCopy queryDescriptors];
    queryDescriptors = v12->_queryDescriptors;
    v12->_queryDescriptors = queryDescriptors;

    queryDescriptors2 = [configurationCopy queryDescriptors];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __74__HDAnchoredObjectQueryServer_initWithUUID_configuration_client_delegate___block_invoke;
    v23[3] = &unk_27861C4C8;
    v24 = clientCopy;
    v18 = [queryDescriptors2 hk_mapToDictionary:v23];
    sampleTypeToFilterMap = v12->_sampleTypeToFilterMap;
    v12->_sampleTypeToFilterMap = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingUpdateBlocks = v12->_pendingUpdateBlocks;
    v12->_pendingUpdateBlocks = v20;
  }

  return v12;
}

void __74__HDAnchoredObjectQueryServer_initWithUUID_configuration_client_delegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v10 = [v6 sampleType];
  v7 = *(a1 + 32);
  v8 = [v6 _filter];

  v9 = [v7 filterWithQueryFilter:v8 objectType:v10];
  v5[2](v5, v10, v9);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HDAnchoredObjectQueryServer;
  v4 = [(HDQueryServer *)&v10 description];
  client = [(HDQueryServer *)self client];
  process = [client process];
  bundleIdentifier = [process bundleIdentifier];
  v8 = [v3 stringWithFormat:@"<%@ %@>", v4, bundleIdentifier];

  return v8;
}

- (id)objectTypes
{
  if (self)
  {
    self = self->_queryDescriptors;
  }

  return [(HDAnchoredObjectQueryServer *)self hk_mapToSet:&__block_literal_global_65];
}

- (BOOL)validateConfiguration:(id *)configuration
{
  v9.receiver = self;
  v9.super_class = HDAnchoredObjectQueryServer;
  v5 = [(HDQueryServer *)&v9 validateConfiguration:?];
  if (v5)
  {
    if (self->_includeAutomaticTimeZones && (-[HDQueryServer client](self, "client"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasPrivateMetadataAccess], v6, (v7 & 1) == 0))
    {
      [MEMORY[0x277CCA9B8] hk_assignError:configuration code:4 description:@"Unauthorized use of includeAutomaticTimeZones"];
      LOBYTE(v5) = 0;
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)prepareToActivateServerWithError:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = HDAnchoredObjectQueryServer;
  if ([(HDQueryServer *)&v28 prepareToActivateServerWithError:?])
  {
    client = [(HDQueryServer *)self client];
    entitlements = [client entitlements];
    v7 = [entitlements hasEntitlement:*MEMORY[0x277CCB868]];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      profile = [(HDQueryServer *)self profile];
      sourceManager = [profile sourceManager];
      client2 = [(HDQueryServer *)self client];
      v27 = 0;
      v12 = [sourceManager createOrUpdateSourceForClient:client2 error:&v27];
      v13 = v27;

      if ([v13 hk_isAuthorizationDeniedError])
      {
        _HKInitializeLogging();
        v14 = *MEMORY[0x277CCC308];
        if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          selfCopy3 = self;
          _os_log_debug_impl(&dword_228986000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Client has no source bundle identifier", buf, 0xCu);
        }

        v8 = 1;
        v15 = v13;
      }

      else if (v12)
      {
        profile2 = [(HDQueryServer *)self profile];
        v26 = v13;
        v17 = [v12 sourceUUIDWithProfile:profile2 error:&v26];
        v15 = v26;

        v8 = v17 != 0;
        if (v17)
        {
          uUIDString = [v17 UUIDString];
          if (self)
          {
            objc_setProperty_atomic_copy(self, v18, uUIDString, 328);
          }
        }

        else
        {
          _HKInitializeLogging();
          v22 = *MEMORY[0x277CCC308];
          if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            selfCopy3 = self;
            v31 = 2114;
            v32 = v15;
            _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve source UUID: %{public}@", buf, 0x16u);
          }

          uUIDString = v15;
          if (uUIDString)
          {
            if (error)
            {
              v23 = uUIDString;
              *error = uUIDString;
            }

            else
            {
              _HKLogDroppedError();
            }
          }
        }
      }

      else
      {
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC308];
        if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy3 = self;
          v31 = 2114;
          v32 = v13;
          _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch/create local client source: %{public}@", buf, 0x16u);
        }

        v15 = v13;
        if (v15)
        {
          if (error)
          {
            v21 = v15;
            *error = v15;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_shouldObserveOnPause
{
  if (self->_initialResultsSent)
  {
    clientHasActiveWorkout = [(HDQueryServer *)self clientHasActiveWorkout];
    if (clientHasActiveWorkout)
    {
      v4 = [(NSMutableArray *)self->_addedSamplesPendingResume count];
      LOBYTE(clientHasActiveWorkout) = ([(NSMutableArray *)self->_deletedSamplesPendingResume count]+ v4) < 0xC8;
    }
  }

  else
  {
    LOBYTE(clientHasActiveWorkout) = 1;
  }

  return clientHasActiveWorkout;
}

- (void)_queue_didDeactivate
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: did deactivate", &v5, 0xCu);
  }

  [(NSMutableArray *)self->_pendingUpdateBlocks removeAllObjects];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_queue_didChangeStateFromPreviousState:(int64_t)state state:(int64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = HDAnchoredObjectQueryServer;
  [HDQueryServer _queue_didChangeStateFromPreviousState:sel__queue_didChangeStateFromPreviousState_state_ state:?];
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = HDStringFromQueryServerState(state);
    v10 = HDStringFromQueryServerState(a4);
    *buf = 138543874;
    selfCopy = self;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: changed state (%@) -> (%@)", buf, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_queue_runNextUpdateBlock
{
  if (self && (*(self + 296) & 1) == 0)
  {
    firstObject = [*(self + 288) firstObject];
    if (firstObject)
    {
      [*(self + 288) removeObjectAtIndex:0];
      *(self + 296) = 1;
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __56__HDAnchoredObjectQueryServer__queue_runNextUpdateBlock__block_invoke;
      v3[3] = &unk_278613968;
      v3[4] = self;
      (firstObject)[2](firstObject, v3);
    }
  }
}

uint64_t __56__HDAnchoredObjectQueryServer__queue_runNextUpdateBlock__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__HDAnchoredObjectQueryServer__queue_runNextUpdateBlock__block_invoke_2;
  v3[3] = &unk_278613968;
  v3[4] = v1;
  return [v1 onQueue:v3];
}

void __51__HDAnchoredObjectQueryServer__enqueueUpdateBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 288);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__HDAnchoredObjectQueryServer__enqueueUpdateBlock___block_invoke_2;
  v5[3] = &unk_27861C510;
  v6 = *(a1 + 40);
  v3 = [v5 copy];
  v4 = _Block_copy(v3);
  [v2 addObject:v4];

  [(HDAnchoredObjectQueryServer *)*(a1 + 32) _queue_runNextUpdateBlock];
}

void __51__HDAnchoredObjectQueryServer__enqueueUpdateBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2);
  v4[2]();
}

void __65__HDAnchoredObjectQueryServer__enqueueDatabaseAccessUpdateBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 288);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __65__HDAnchoredObjectQueryServer__enqueueDatabaseAccessUpdateBlock___block_invoke_2;
  v8 = &unk_27861C560;
  objc_copyWeak(&v10, (a1 + 48));
  v9 = *(a1 + 40);
  v3 = [&v5 copy];
  v4 = _Block_copy(v3);
  [v2 addObject:{v4, v5, v6, v7, v8}];

  [(HDAnchoredObjectQueryServer *)*(a1 + 32) _queue_runNextUpdateBlock];
  objc_destroyWeak(&v10);
}

void __65__HDAnchoredObjectQueryServer__enqueueDatabaseAccessUpdateBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HDAnchoredObjectQueryServer__enqueueDatabaseAccessUpdateBlock___block_invoke_3;
  v6[3] = &unk_27861C538;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [WeakRetained scheduleDatabaseAccessOnQueueWithBlock:v6];
}

uint64_t __65__HDAnchoredObjectQueryServer__enqueueDatabaseAccessUpdateBlock___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_queue_deliverSamples:(void *)samples deletedObjects:(void *)objects anchor:(uint64_t)anchor clearPendingSamples:(uint64_t)pendingSamples deliverResults:(void *)results description:
{
  v38 = *MEMORY[0x277D85DE8];
  v13 = a2;
  samplesCopy = samples;
  objectsCopy = objects;
  resultsCopy = results;
  if (self)
  {
    queryQueue = [self queryQueue];
    dispatch_assert_queue_V2(queryQueue);

    v17 = [HDAnchoredObjectQueryServer _queue_secureClientTokenWithError:self];
    if (v17)
    {
      [objectsCopy _setClientToken:v17];
    }

    if (!objectsCopy)
    {
      objectsCopy = [MEMORY[0x277CCD840] latestAnchor];
    }

    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      *buf = 138544898;
      selfCopy = self;
      v26 = 2114;
      v27 = resultsCopy;
      v28 = 2048;
      v29 = [v13 count];
      v30 = 2048;
      v31 = [samplesCopy count];
      v32 = 2048;
      _rowid = [objectsCopy _rowid];
      v34 = 1024;
      anchorCopy = anchor;
      v36 = 1024;
      pendingSamplesCopy = pendingSamples;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Delivering %{public}@: %lu samples, %lu deleted objects (anchor:%llu clear-pending:%{BOOL}d deliver:%{BOOL}d)", buf, 0x40u);
    }

    clientProxy = [self clientProxy];
    queryUUID = [self queryUUID];
    [clientProxy client_deliverSampleObjects:v13 deletedObjects:samplesCopy anchor:objectsCopy clearPendingSamples:anchor deliverResults:pendingSamples query:queryUUID];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_supportedTypesForBackgroundRunningCollection
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __62__HDAnchoredObjectQueryServer__queue_didAddSamplesWithAnchor___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sampleType];
  v3 = [v2 requiresPerObjectAuthorization];

  return v3 ^ 1u;
}

- (void)didAddSamplesOfTypes:(id)types anchor:(id)anchor
{
  typesCopy = types;
  anchorCopy = anchor;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HDAnchoredObjectQueryServer_didAddSamplesOfTypes_anchor___block_invoke;
  v11[3] = &unk_278617620;
  objc_copyWeak(&v13, &location);
  v8 = anchorCopy;
  v12 = v8;
  v9 = v11;
  v10 = v9;
  if (self)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__HDAnchoredObjectQueryServer__enqueueUpdateBlock___block_invoke;
    v15[3] = &unk_278614E28;
    v15[4] = self;
    v16 = v9;
    [(HDQueryServer *)self onQueue:v15];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __59__HDAnchoredObjectQueryServer_didAddSamplesOfTypes_anchor___block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (WeakRetained)
  {
    v3 = WeakRetained[32];
    v4 = [v3 hk_filter:&__block_literal_global_324_2];
    if ([v4 count])
    {
      v5 = WeakRetained[32];
      WeakRetained[32] = 0;

      v6 = v4;
      v7 = v2;
      if (([(HDAnchoredObjectQueryServer *)WeakRetained _queue_shouldAcceptUpdates]& 1) != 0)
      {
        v8 = [v7 longLongValue];
        if (v8 <= [WeakRetained[38] _rowid])
        {
          _HKInitializeLogging();
          v38 = *MEMORY[0x277CCC308];
          if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
          {
            v39 = v38;
            v40 = [v7 longLongValue];
            v41 = [WeakRetained[38] _rowid];
            *v71 = 138543874;
            v72 = WeakRetained;
            v73 = 2048;
            v74 = v40;
            v75 = 2048;
            v76 = v41;
            _os_log_impl(&dword_228986000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: skip samples added update because anchor %lld <= current anchor %lld", v71, 0x20u);
          }
        }

        else
        {
          v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v10 = [WeakRetained client];
          v11 = [v10 authorizationOracle];
          v64 = 0;
          v12 = [v11 filteredObjectsForReadAuthorization:v6 anchor:v7 error:&v64];
          v13 = v64;

          if (v12)
          {
            v54 = v13;
            v55 = v7;
            v56 = v6;
            v51 = v4;
            v52 = v3;
            v53 = v2;
            v14 = [WeakRetained filteredSamplesForClientWithSamples:v12];

            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v15 = v14;
            v16 = [v15 countByEnumeratingWithState:&v60 objects:v71 count:16];
            obj = v15;
            if (v16)
            {
              v17 = v16;
              v18 = *v61;
              v19 = MEMORY[0x277CCC308];
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v61 != v18)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v21 = *(*(&v60 + 1) + 8 * i);
                  v22 = WeakRetained[35];
                  v23 = [v21 sampleType];
                  v24 = [v22 objectForKeyedSubscript:v23];

                  if ([MEMORY[0x277CCDDB8] filter:v24 acceptsDataObject:v21])
                  {
                    v25 = [WeakRetained sanitizedSampleForQueryClient:v21];
                    [v9 addObject:v25];
                  }

                  else
                  {
                    _HKInitializeLogging();
                    v26 = *v19;
                    if (os_log_type_enabled(*v19, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138543618;
                      v66 = WeakRetained;
                      v67 = 2112;
                      v68 = v21;
                      _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_INFO, "%{public}@: samples added filter does not accept sample %@", buf, 0x16u);
                    }
                  }
                }

                v15 = obj;
                v17 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
              }

              while (v17);
            }

            v6 = v56;
            v27 = [v56 count];
            if (v27 != [v9 count])
            {
              _HKInitializeLogging();
              v28 = *MEMORY[0x277CCC308];
              if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
              {
                v29 = v28;
                v30 = [v56 count];
                v31 = [v9 count];
                *buf = 138543874;
                v66 = WeakRetained;
                v67 = 2048;
                v68 = v30;
                v69 = 2048;
                v70 = v31;
                _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: samples added count %lu != updatedObjects count %lu", buf, 0x20u);
              }
            }

            v3 = v52;
            v2 = v53;
            v4 = v51;
            v13 = v54;
            if ([v9 count])
            {
              v32 = [MEMORY[0x277CCD840] _anchorWithRowid:{objc_msgSend(v7, "longLongValue")}];
              if ([WeakRetained queryState] == 2)
              {
                v57 = v32;
                v33 = [v9 count];
                if (v33 < 0xC9)
                {
                  v34 = 0;
                }

                else
                {
                  v34 = 0;
                  v35 = MEMORY[0x277CBEBF8];
                  do
                  {
                    v36 = [v9 subarrayWithRange:{v34, 200}];
                    [(HDAnchoredObjectQueryServer *)WeakRetained _queue_deliverSamples:v36 deletedObjects:v35 anchor:WeakRetained[38] clearPendingSamples:0 deliverResults:0 description:@"updates after samples added"];
                    v34 += 200;
                    v33 -= 200;
                  }

                  while (v33 > 0xC8);
                }

                v48 = [v9 subarrayWithRange:{v34, v33}];
                v32 = v57;
                [(HDAnchoredObjectQueryServer *)WeakRetained _queue_deliverSamples:v48 deletedObjects:MEMORY[0x277CBEBF8] anchor:v57 clearPendingSamples:0 deliverResults:1 description:@"updates after samples added"];

                v7 = v55;
                v6 = v56;
                v13 = v54;
              }

              else
              {
                v44 = WeakRetained[33];
                if (!v44)
                {
                  v45 = objc_opt_new();
                  v46 = WeakRetained[33];
                  WeakRetained[33] = v45;

                  v44 = WeakRetained[33];
                }

                [v44 addObjectsFromArray:v9];
                if (([(HDAnchoredObjectQueryServer *)WeakRetained _queue_shouldAcceptUpdates]& 1) == 0)
                {
                  _HKInitializeLogging();
                  v47 = *MEMORY[0x277CCC308];
                  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543362;
                    v66 = WeakRetained;
                    _os_log_impl(&dword_228986000, v47, OS_LOG_TYPE_INFO, "%{public}@: Pausing after accumulating samples", buf, 0xCu);
                  }

                  [WeakRetained schedulePause];
                }
              }

              v49 = WeakRetained[38];
              WeakRetained[38] = v32;
            }

            v43 = obj;
          }

          else
          {
            _HKInitializeLogging();
            v42 = *MEMORY[0x277CCC308];
            if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
            {
              *v71 = 138543618;
              v72 = WeakRetained;
              v73 = 2114;
              v74 = v13;
              _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "%{public}@: Failed to filter samples for authorization: %{public}@", v71, 0x16u);
            }

            v43 = 0;
          }
        }
      }

      else
      {
        _HKInitializeLogging();
        v37 = *MEMORY[0x277CCC308];
        if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
        {
          *v71 = 138543362;
          v72 = WeakRetained;
          _os_log_impl(&dword_228986000, v37, OS_LOG_TYPE_INFO, "%{public}@: Samples added while not accepting updates", v71, 0xCu);
        }
      }
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  addedCopy = added;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HDAnchoredObjectQueryServer_samplesAdded_anchor___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = addedCopy;
  v6 = addedCopy;
  [(HDQueryServer *)self onQueue:v7];
}

uint64_t __51__HDAnchoredObjectQueryServer_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 256);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 256);
    *(v4 + 256) = v3;

    v2 = *(*(a1 + 32) + 256);
  }

  v6 = *(a1 + 40);

  return [v2 addObjectsFromArray:v6];
}

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor
{
  removedCopy = removed;
  anchorCopy = anchor;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HDAnchoredObjectQueryServer_samplesOfTypesWereRemoved_anchor___block_invoke;
  v10[3] = &unk_278617620;
  objc_copyWeak(&v12, &location);
  v8 = anchorCopy;
  v11 = v8;
  v9 = v10;
  if (self)
  {
    objc_initWeak(&from, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__HDAnchoredObjectQueryServer__enqueueDatabaseAccessUpdateBlock___block_invoke;
    v14[3] = &unk_27861C588;
    v14[4] = self;
    objc_copyWeak(&v16, &from);
    v15 = v9;
    [(HDQueryServer *)self onQueue:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&from);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __64__HDAnchoredObjectQueryServer_samplesOfTypesWereRemoved_anchor___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (WeakRetained && ([WeakRetained _shouldStopProcessingQuery] & 1) == 0)
  {
    if (([(HDAnchoredObjectQueryServer *)WeakRetained _queue_shouldAcceptUpdates]& 1) != 0)
    {
      v3 = [v2 longLongValue];
      if (v3 > [WeakRetained[38] _rowid])
      {
        v4 = [WeakRetained sampleType];
        v32 = 0;
        v5 = [WeakRetained authorizationStatusRecordForType:v4 error:&v32];
        v6 = v32;

        if (v5)
        {
          if ([v5 canRead])
          {
            v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v28 = 0;
            v29 = &v28;
            v30 = 0x2020000000;
            v31 = -1;
            v9 = WeakRetained[38];
            v27 = v6;
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __67__HDAnchoredObjectQueryServer__queue_samplesWereRemovedWithAnchor___block_invoke;
            v38 = &unk_27861C620;
            v39 = WeakRetained;
            v10 = v7;
            v40 = v10;
            v11 = v8;
            v41 = v11;
            v42 = &v28;
            v12 = [(HDAnchoredObjectQueryServer *)WeakRetained _batchObjectsWithAnchor:v9 error:&v27 batchHandler:buf];
            v13 = v27;

            if (v12)
            {
              _HKInitializeLogging();
              v14 = *MEMORY[0x277CCC308];
              if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
              {
                *v33 = 138543618;
                v34 = WeakRetained;
                v35 = 2114;
                v36 = v13;
                _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Encountered error while enumerating after object deletion: %{public}@", v33, 0x16u);
              }
            }

            if (([v10 count] || objc_msgSend(v11, "count")) && objc_msgSend(WeakRetained, "queryState") != 2)
            {
              if ([v11 count])
              {
                v15 = WeakRetained[34];
                if (!v15)
                {
                  v16 = objc_opt_new();
                  v17 = WeakRetained[34];
                  WeakRetained[34] = v16;

                  v15 = WeakRetained[34];
                }

                [v15 addObjectsFromArray:v11];
              }

              if ([v10 count])
              {
                v18 = WeakRetained[33];
                if (!v18)
                {
                  v19 = objc_opt_new();
                  v20 = WeakRetained[33];
                  WeakRetained[33] = v19;

                  v18 = WeakRetained[33];
                }

                [v18 addObjectsFromArray:v10];
              }

              if (([(HDAnchoredObjectQueryServer *)WeakRetained _queue_shouldAcceptUpdates]& 1) == 0)
              {
                [WeakRetained schedulePause];
              }

              v21 = [MEMORY[0x277CCD840] _anchorWithRowid:v29[3]];
              v22 = WeakRetained[38];
              WeakRetained[38] = v21;
            }

            _Block_object_dispose(&v28, 8);
            v6 = v13;
          }
        }

        else
        {
          _HKInitializeLogging();
          v24 = *MEMORY[0x277CCC308];
          if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = WeakRetained;
            *&buf[12] = 2114;
            *&buf[14] = v6;
            _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve authorization status; ignoring removed samples: %{public}@", buf, 0x16u);
          }
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        *&buf[4] = WeakRetained;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_INFO, "%{public}@: Samples removed while not accepting updates", buf, 0xCu);
      }

      *(WeakRetained + 226) = 1;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_batchObjectsWithAnchor:(uint64_t)anchor error:(void *)error batchHandler:
{
  v45[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  errorCopy = error;
  if ([*(self + 320) count] == 1)
  {
    v41 = v7;
    v40 = errorCopy;
    queryQueue = [self queryQueue];
    dispatch_assert_queue_V2(queryQueue);

    newDataEntityEnumerator = [self newDataEntityEnumerator];
    filter = [self filter];
    [newDataEntityEnumerator setFilter:filter];

    sampleAuthorizationFilter = [self sampleAuthorizationFilter];
    [newDataEntityEnumerator setAuthorizationFilter:sampleAuthorizationFilter];

    v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCC5B8] ascending:1];
    v45[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
    [newDataEntityEnumerator setSortDescriptors:v14];

    client = [self client];
    authorizationOracle = [client authorizationOracle];
    objectType = [self objectType];
    v44 = 0;
    v18 = [authorizationOracle additionalAuthorizationPredicateForObjectType:objectType error:&v44];
    v19 = v44;

    if (v18)
    {
      [newDataEntityEnumerator setPredicate:v18];
      if (*(self + 297) == 1)
      {
        [newDataEntityEnumerator setEncodingOption:MEMORY[0x277CBEC38] forKey:@"IncludeAutomaticTimeZone"];
      }

      if (*(self + 298) == 1)
      {
        client2 = [self client];
        v21 = [client2 hasEntitlement:*MEMORY[0x277CCBB98]];

        if (v21)
        {
          [newDataEntityEnumerator setEncodingOption:MEMORY[0x277CBEC38] forKey:@"IncludeContributorInformation"];
        }
      }

      objectType2 = [self objectType];
      if ([objectType2 code] == 273)
      {
        client3 = [self client];
        v24 = [client3 hasEntitlement:*MEMORY[0x277CCC8B0]];

        if ((v24 & 1) == 0)
        {
          [newDataEntityEnumerator setEncodingOption:MEMORY[0x277CBEC38] forKey:@"HDMedicationDoseEventEntityEncodingOptionExcludePrivateMedicationInfo"];
        }
      }

      else
      {
      }

      v32 = newDataEntityEnumerator;
    }

    else
    {
      v29 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__queue_configuredEntityEnumerator format:@"Unable to determine authorization status."];
      clientProxy = [self clientProxy];
      queryUUID = [self queryUUID];
      [clientProxy client_deliverError:v29 forQuery:queryUUID];

      v32 = 0;
    }

    if (v32)
    {
      v33 = *(self + 312);
      if (v33 && (*(self + 225) & 1) == 0)
      {
        [v32 setLimitCount:v33 - *(self + 248)];
      }

      v34 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v41, "_rowid")}];
      [v32 setAnchor:v34];

      v35 = *(self + 227);
      selfCopy = self;
      v37 = v40;
      v28 = [selfCopy batchObjectsWithEnumerator:v32 includeDeletedObjects:v35 error:anchor batchHandler:v40];
    }

    else
    {
      v28 = 1;
      v37 = v40;
    }
  }

  else
  {
    v25 = [objc_alloc(MEMORY[0x277CCD8C0]) initWithQueryDescriptors:*(self + 320) sortDescriptors:0 followingAnchor:v7 upToAndIncludingAnchor:0 distinctByKeyPaths:0 state:0];
    v26 = *(self + 227);
    v27 = *(self + 312);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __74__HDAnchoredObjectQueryServer__batchObjectsWithAnchor_error_batchHandler___block_invoke;
    v42[3] = &unk_27861C648;
    v43 = errorCopy;
    v28 = [self batchObjectsWithMultitypeQueryCursor:v25 includeDeletedObjects:v26 limit:v27 error:anchor batchHandler:v42];
  }

  v38 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)_queue_handleBatchedQueryResult:(void *)result error:
{
  v16 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        _HKInitializeLogging();
        v6 = *MEMORY[0x277CCC308];
        if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
        {
          v12 = 138543362;
          selfCopy4 = self;
          v7 = "%{public}@: Client no longer authorized";
LABEL_16:
          _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, v7, &v12, 0xCu);
          goto LABEL_17;
        }
      }

      goto LABEL_17;
    }

    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      v12 = 138543618;
      selfCopy4 = self;
      v14 = 2114;
      v15 = resultCopy;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Encountered error enumerating update results: %{public}@", &v12, 0x16u);
      if (resultCopy)
      {
        goto LABEL_13;
      }
    }

    else if (resultCopy)
    {
LABEL_13:
      clientProxy = [self clientProxy];
      queryUUID = [self queryUUID];
      [clientProxy client_deliverError:resultCopy forQuery:queryUUID];

      goto LABEL_17;
    }

    resultCopy = [MEMORY[0x277CCA9B8] hk_error:122 format:@"Sample enumeration failed without reporting an error."];
    goto LABEL_13;
  }

  if (a2 == 4)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
    {
      v12 = 138543362;
      selfCopy4 = self;
      v7 = "%{public}@: Canceled during enumeration";
      goto LABEL_16;
    }
  }

  else if (a2 == 3)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
    {
      v12 = 138543362;
      selfCopy4 = self;
      v7 = "%{public}@: Suspended during enumeration";
      goto LABEL_16;
    }
  }

LABEL_17:

  v11 = *MEMORY[0x277D85DE8];
}

void __52__HDAnchoredObjectQueryServer__queue_startForUpdate__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11 = a3;
  v7 = [*(a1 + 32) filteredSamplesForClientWithSamples:a2];
  v8 = [MEMORY[0x277CCD840] _anchorWithRowid:a4];
  v9 = *(a1 + 32);
  v10 = *(v9 + 304);
  *(v9 + 304) = v8;

  if ([v7 count] || objc_msgSend(v11, "count"))
  {
    [(HDAnchoredObjectQueryServer *)*(a1 + 32) _queue_deliverSamples:v7 deletedObjects:v11 anchor:*(*(a1 + 32) + 304) clearPendingSamples:0 deliverResults:1 description:@"updates after resume"];
  }
}

- (id)_queue_secureClientTokenWithError:(void *)error
{
  queryQueue = [error queryQueue];
  dispatch_assert_queue_V2(queryQueue);

  v4 = error[30];
  if (!v4)
  {
    v5 = objc_getProperty(error, v3, 328, 1);
    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = v5;
    hk_SHA512Hash = [v5 hk_SHA512Hash];
    v8 = error[30];
    error[30] = hk_SHA512Hash;

    v4 = error[30];
  }

  v5 = v4;
LABEL_5:

  return v5;
}

void __67__HDAnchoredObjectQueryServer__queue_samplesWereRemovedWithAnchor___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v14 = a3;
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 queryState];
  v10 = [*(a1 + 32) filteredSamplesForClientWithSamples:v8];

  if (v9 == 2)
  {
    v11 = [MEMORY[0x277CCD840] _anchorWithRowid:a4];
    v12 = *(a1 + 32);
    v13 = *(v12 + 304);
    *(v12 + 304) = v11;

    if ([v10 count] || objc_msgSend(v14, "count"))
    {
      [(HDAnchoredObjectQueryServer *)*(a1 + 32) _queue_deliverSamples:v10 deletedObjects:v14 anchor:*(*(a1 + 32) + 304) clearPendingSamples:0 deliverResults:1 description:@"updates after resume"];
    }
  }

  else
  {
    [*(a1 + 40) addObjectsFromArray:v10];
    [*(a1 + 48) addObjectsFromArray:v14];
    *(*(*(a1 + 56) + 8) + 24) = a4;
  }
}

@end