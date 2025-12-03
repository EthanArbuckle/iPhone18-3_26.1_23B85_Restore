@interface HDObserverQueryServer
- (HDObserverQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_sampleTypesToUpdateWithSamples:(uint64_t)samples;
- (void)_deliverDataWasUpdatedForTypes:(void *)types withAnchor:;
- (void)_queue_start;
- (void)_queue_stop;
- (void)associationsUpdatedForObject:(id)object subObject:(id)subObject type:(unint64_t)type behavior:(unint64_t)behavior objects:(id)objects anchor:(id)anchor;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)profile:(id)profile didDiscardSeriesOfType:(id)type;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor;
@end

@implementation HDObserverQueryServer

- (void)_queue_start
{
  v67 = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = HDObserverQueryServer;
  [(HDQueryServer *)&v59 _queue_start];
  self->_deliverOnUnlock = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__113;
  v53 = __Block_byref_object_dispose__113;
  v54 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  objectTypes = [(HDObserverQueryServer *)self objectTypes];
  v4 = [objectTypes countByEnumeratingWithState:&v45 objects:v66 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v46;
    v36 = *MEMORY[0x277D10A40];
    obj = objectTypes;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v46 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v45 + 1) + 8 * i);
        v44 = v5;
        v9 = v8;
        v10 = [(HDQueryServer *)self authorizationStatusRecordForType:v9 error:&v44];
        if (v10)
        {
          profile = [(HDQueryServer *)self profile];
          v12 = [HDSampleEntity entityEnumeratorWithType:v9 profile:profile];

          restrictedSourceEntities = [v10 restrictedSourceEntities];
          [v12 setRestrictedSourceEntities:restrictedSourceEntities];

          sampleAuthorizationFilter = [(HDQueryServer *)self sampleAuthorizationFilter];
          [v12 setAuthorizationFilter:sampleAuthorizationFilter];

          v15 = [(NSDictionary *)self->_sampleTypeToFilterMap objectForKeyedSubscript:v9];
          [v12 setFilter:v15];

          [v12 setLimitCount:1];
          v16 = [MEMORY[0x277D10B68] orderingTermWithProperty:v36 entityClass:objc_opt_class() ascending:0];
          *buf = v16;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
          [v12 setOrderingTerms:v17];
        }

        else
        {
          v12 = 0;
        }

        v18 = v44;
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __37__HDObserverQueryServer__queue_start__block_invoke;
        v42[3] = &unk_27861B5A8;
        v42[4] = &v49;
        v42[5] = &v55;
        v43 = v18;
        [v12 enumerateWithError:&v43 handler:v42];
        v5 = v43;
      }

      v4 = [obj countByEnumeratingWithState:&v45 objects:v66 count:16];
    }

    while (v4);

    if (v5)
    {
      if ([v5 hk_isDatabaseAccessibilityError])
      {
        _HKInitializeLogging();
        v19 = *MEMORY[0x277CCC308];
        if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_228986000, v19, OS_LOG_TYPE_DEBUG, "Can't retrieve observer query anchor while db locked.", buf, 2u);
        }
      }

      else
      {
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC308];
        if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v5;
          _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "Unable to pull latest anchor for observer query: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  else
  {

    v5 = 0;
  }

  profile2 = [(HDQueryServer *)self profile];
  dataManager = [profile2 dataManager];
  quantitySeriesManager = [dataManager quantitySeriesManager];

  queryQueue = [(HDQueryServer *)self queryQueue];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  objectTypes2 = [(HDObserverQueryServer *)self objectTypes];
  v25 = [objectTypes2 countByEnumeratingWithState:&v38 objects:v65 count:16];
  if (v25)
  {
    v26 = *v39;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(objectTypes2);
        }

        v28 = *(*(&v38 + 1) + 8 * j);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && self->_observeUnfrozenSeries)
        {
          [quantitySeriesManager addObserver:self forType:v28 queue:queryQueue];
        }
      }

      v25 = [objectTypes2 countByEnumeratingWithState:&v38 objects:v65 count:16];
    }

    while (v25);
  }

  _HKInitializeLogging();
  v29 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
  {
    v30 = v50[5];
    v31 = v56[3];
    *buf = 138543874;
    *&buf[4] = self;
    v61 = 2114;
    v62 = v30;
    v63 = 2050;
    v64 = v31;
    _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Queue start for types: %{public}@, anchor: %{public}lli", buf, 0x20u);
  }

  v32 = v50[5];
  v33 = [MEMORY[0x277CCABB0] numberWithLongLong:v56[3]];
  [(HDObserverQueryServer *)self _deliverDataWasUpdatedForTypes:v32 withAnchor:v33];

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);
  v34 = *MEMORY[0x277D85DE8];
}

- (void)_queue_stop
{
  v8.receiver = self;
  v8.super_class = HDObserverQueryServer;
  [(HDQueryServer *)&v8 _queue_stop];
  self->_deliverOnUnlock = 0;
  quantityType = [(HDQueryServer *)self quantityType];
  if (quantityType)
  {
    profile = [(HDQueryServer *)self profile];
    dataManager = [profile dataManager];
    quantitySeriesManager = [dataManager quantitySeriesManager];
    quantityType2 = [(HDQueryServer *)self quantityType];
    [quantitySeriesManager removeObserver:self forType:quantityType2];
  }
}

- (HDObserverQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  clientCopy = client;
  v21.receiver = self;
  v21.super_class = HDObserverQueryServer;
  v12 = [(HDQueryServer *)&v21 initWithUUID:d configuration:configurationCopy client:clientCopy delegate:delegate];
  if (v12)
  {
    v12->_observeUnfrozenSeries = [configurationCopy observeUnfrozenSeries];
    queryDescriptors = [configurationCopy queryDescriptors];
    queryDescriptors = v12->_queryDescriptors;
    v12->_queryDescriptors = queryDescriptors;

    queryDescriptors2 = [configurationCopy queryDescriptors];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __68__HDObserverQueryServer_initWithUUID_configuration_client_delegate___block_invoke;
    v19[3] = &unk_27861C4C8;
    v20 = clientCopy;
    v16 = [queryDescriptors2 hk_mapToDictionary:v19];
    sampleTypeToFilterMap = v12->_sampleTypeToFilterMap;
    v12->_sampleTypeToFilterMap = v16;
  }

  return v12;
}

void __68__HDObserverQueryServer_initWithUUID_configuration_client_delegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v10 = [v6 sampleType];
  v7 = *(a1 + 32);
  v8 = [v6 _filter];

  v9 = [v7 filterWithQueryFilter:v8 objectType:v10];
  v5[2](v5, v10, v9);
}

uint64_t __37__HDObserverQueryServer__queue_start__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = [a2 sampleType];
  [v5 addObject:v6];

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 24);
  if (v8 <= a3)
  {
    v8 = a3;
  }

  *(v7 + 24) = v8;
  return 0;
}

- (void)_deliverDataWasUpdatedForTypes:(void *)types withAnchor:
{
  v5 = a2;
  typesCopy = types;
  v7 = typesCopy;
  if (self)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__HDObserverQueryServer__deliverDataWasUpdatedForTypes_withAnchor___block_invoke;
    v8[3] = &unk_278613830;
    v8[4] = self;
    v9 = typesCopy;
    v10 = v5;
    [self onQueue:v8];
  }
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  v24 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  anchorCopy = anchor;
  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC308];
  v9 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v20 = 2114;
    v21 = addedCopy;
    v22 = 2114;
    v23 = anchorCopy;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: samplesAdded: %{public}@, anchor: %{public}@", buf, 0x20u);
  }

  client = [(HDQueryServer *)self client];
  authorizationOracle = [client authorizationOracle];
  v17 = 0;
  v12 = [authorizationOracle filteredObjectsForReadAuthorization:addedCopy anchor:anchorCopy error:&v17];
  v13 = v17;

  if (v12)
  {
    v14 = [(HDObserverQueryServer *)self _sampleTypesToUpdateWithSamples:v12];
    if ([v14 count])
    {
      [(HDObserverQueryServer *)self _deliverDataWasUpdatedForTypes:v14 withAnchor:anchorCopy];
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v20 = 2114;
      v21 = v13;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to filter samples for authorization: %{public}@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_sampleTypesToUpdateWithSamples:(uint64_t)samples
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = v3;
  if (samples)
  {
    v4 = v3;
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          sampleType = [v11 sampleType];
          v13 = [v5 containsObject:sampleType];

          if ((v13 & 1) == 0)
          {
            v14 = *(samples + 248);
            sampleType2 = [v11 sampleType];
            v16 = [v14 objectForKeyedSubscript:sampleType2];

            if ([MEMORY[0x277CCDDB8] filter:v16 acceptsDataObject:v11])
            {
              sampleType3 = [v11 sampleType];
              [v5 addObject:sampleType3];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor
{
  v6 = MEMORY[0x277CBEB98];
  anchorCopy = anchor;
  removedCopy = removed;
  v9 = [[v6 alloc] initWithArray:removedCopy];

  [(HDObserverQueryServer *)self _deliverDataWasUpdatedForTypes:v9 withAnchor:anchorCopy];
}

- (void)associationsUpdatedForObject:(id)object subObject:(id)subObject type:(unint64_t)type behavior:(unint64_t)behavior objects:(id)objects anchor:(id)anchor
{
  v32 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  v12 = [objects arrayByAddingObject:object];
  _HKInitializeLogging();
  v13 = MEMORY[0x277CCC308];
  v14 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v28 = 2114;
    v29 = v12;
    v30 = 2114;
    v31 = anchorCopy;
    _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: associationsUpdated: %{public}@, anchor: %{public}@", buf, 0x20u);
  }

  client = [(HDQueryServer *)self client];
  authorizationOracle = [client authorizationOracle];
  v25 = 0;
  v17 = [authorizationOracle filteredObjectsForReadAuthorization:v12 anchor:anchorCopy error:&v25];
  v18 = v25;

  if (v17)
  {
    v19 = [(HDObserverQueryServer *)self _sampleTypesToUpdateWithSamples:v17];
    if ([v19 count])
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __93__HDObserverQueryServer_associationsUpdatedForObject_subObject_type_behavior_objects_anchor___block_invoke;
      v22[3] = &unk_278613830;
      v22[4] = self;
      v23 = anchorCopy;
      v24 = v19;
      [(HDQueryServer *)self onQueue:v22];
    }
  }

  else
  {
    _HKInitializeLogging();
    v20 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v28 = 2114;
      v29 = v18;
      _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@: Failed to filter samples for authorization: %{public}@", buf, 0x16u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __93__HDObserverQueryServer_associationsUpdatedForObject_subObject_type_behavior_objects_anchor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = [v2 database];
  v4 = [v3 isProtectedDataAvailable];

  if (v4)
  {
    v13 = [objc_alloc(MEMORY[0x277CCD858]) initWithDataAnchor:0 associationAnchor:*(a1 + 40)];
    v5 = [*(a1 + 32) clientProxy];
    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) queryUUID];
    [v5 client_dataUpdatedInDatabaseForTypes:v6 withAnchor:v13 query:v7];

    v9 = v13;
    *(*(a1 + 32) + 208) = 0;
  }

  else
  {
    *(*(a1 + 32) + 208) = 1;
    objc_storeStrong((*(a1 + 32) + 224), *(a1 + 40));
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v8 = v10;
    v9 = *(v11 + 232);
    *(v11 + 232) = v8;
  }

  return MEMORY[0x2821F96F8](v8, v9);
}

void __86__HDObserverQueryServer_transactionalQuantityInsertHandlerForProfile_journaled_count___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = objc_autoreleasePoolPush();
  [*(a1 + 32) addObject:v16];
  if (a7)
  {
    v19 = *(a1 + 40);
    v20 = [*(a1 + 32) allObjects];
    v31 = 0;
    v21 = [v19 filteredObjectsForReadAuthorization:v20 anchor:v17 error:&v31];
    v22 = v31;

    if (v21)
    {
      v23 = [(HDObserverQueryServer *)*(a1 + 48) _sampleTypesToUpdateWithSamples:v21];
      if ([v23 count])
      {
        v30 = *(a1 + 48);
        v24 = v13;
        v25 = v22;
        v26 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v14, 0}];
        [(HDObserverQueryServer *)v30 _deliverDataWasUpdatedForTypes:v26 withAnchor:0];

        v22 = v25;
        v13 = v24;
      }
    }

    else
    {
      _HKInitializeLogging();
      v27 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 48);
        *buf = 138543618;
        v33 = v29;
        v34 = 2114;
        v35 = v22;
        _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "%{public}@: Failed to filter series for authorization: %{public}@", buf, 0x16u);
      }
    }
  }

  objc_autoreleasePoolPop(v18);

  v28 = *MEMORY[0x277D85DE8];
}

- (void)profile:(id)profile didDiscardSeriesOfType:(id)type
{
  v5 = MEMORY[0x277CBEB98];
  typeCopy = type;
  v7 = [[v5 alloc] initWithObjects:{typeCopy, 0}];

  [(HDObserverQueryServer *)self _deliverDataWasUpdatedForTypes:v7 withAnchor:0];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  if (available)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __66__HDObserverQueryServer_database_protectedDataDidBecomeAvailable___block_invoke;
    v4[3] = &unk_278613968;
    v4[4] = self;
    [(HDQueryServer *)self onQueue:v4];
  }
}

void __66__HDObserverQueryServer_database_protectedDataDidBecomeAvailable___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 208) == 1)
  {
    if (*(v2 + 216) || *(v2 + 224))
    {
      v7 = [objc_alloc(MEMORY[0x277CCD858]) initWithDataAnchor:*(*(a1 + 32) + 216) associationAnchor:*(*(a1 + 32) + 224)];
      v2 = *(a1 + 32);
    }

    else
    {
      v7 = 0;
    }

    v3 = [v2 clientProxy];
    v4 = *(a1 + 32);
    v5 = v4[29];
    v6 = [v4 queryUUID];
    [v3 client_dataUpdatedInDatabaseForTypes:v5 withAnchor:v7 query:v6];
  }
}

uint64_t __67__HDObserverQueryServer__deliverDataWasUpdatedForTypes_withAnchor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = [v2 database];
  v4 = [v3 isProtectedDataAvailable];

  if (v4)
  {
    if (*(a1 + 40))
    {
      v13 = [objc_alloc(MEMORY[0x277CCD858]) initWithDataAnchor:*(a1 + 40) associationAnchor:0];
    }

    else
    {
      v13 = 0;
    }

    v9 = [*(a1 + 32) clientProxy];
    v10 = *(a1 + 48);
    v11 = [*(a1 + 32) queryUUID];
    [v9 client_dataUpdatedInDatabaseForTypes:v10 withAnchor:v13 query:v11];

    *(*(a1 + 32) + 208) = 0;
  }

  else
  {
    *(*(a1 + 32) + 208) = 1;
    objc_storeStrong((*(a1 + 32) + 216), *(a1 + 40));
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = *(v6 + 232);
    *(v6 + 232) = v7;
  }

  return MEMORY[0x2821F96F8]();
}

@end