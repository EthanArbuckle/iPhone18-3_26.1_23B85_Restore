@interface HDObserverQueryServer
- (HDObserverQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)_sampleTypesToUpdateWithSamples:(uint64_t)a1;
- (void)_deliverDataWasUpdatedForTypes:(void *)a3 withAnchor:;
- (void)_queue_start;
- (void)_queue_stop;
- (void)associationsUpdatedForObject:(id)a3 subObject:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 objects:(id)a7 anchor:(id)a8;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)profile:(id)a3 didDiscardSeriesOfType:(id)a4;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4;
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
  v3 = [(HDObserverQueryServer *)self objectTypes];
  v4 = [v3 countByEnumeratingWithState:&v45 objects:v66 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v46;
    v36 = *MEMORY[0x277D10A40];
    obj = v3;
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
          v11 = [(HDQueryServer *)self profile];
          v12 = [HDSampleEntity entityEnumeratorWithType:v9 profile:v11];

          v13 = [v10 restrictedSourceEntities];
          [v12 setRestrictedSourceEntities:v13];

          v14 = [(HDQueryServer *)self sampleAuthorizationFilter];
          [v12 setAuthorizationFilter:v14];

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

  v21 = [(HDQueryServer *)self profile];
  v22 = [v21 dataManager];
  v37 = [v22 quantitySeriesManager];

  v23 = [(HDQueryServer *)self queryQueue];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v24 = [(HDObserverQueryServer *)self objectTypes];
  v25 = [v24 countByEnumeratingWithState:&v38 objects:v65 count:16];
  if (v25)
  {
    v26 = *v39;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v38 + 1) + 8 * j);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && self->_observeUnfrozenSeries)
        {
          [v37 addObserver:self forType:v28 queue:v23];
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v38 objects:v65 count:16];
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
  v3 = [(HDQueryServer *)self quantityType];
  if (v3)
  {
    v4 = [(HDQueryServer *)self profile];
    v5 = [v4 dataManager];
    v6 = [v5 quantitySeriesManager];
    v7 = [(HDQueryServer *)self quantityType];
    [v6 removeObserver:self forType:v7];
  }
}

- (HDObserverQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = HDObserverQueryServer;
  v12 = [(HDQueryServer *)&v21 initWithUUID:a3 configuration:v10 client:v11 delegate:a6];
  if (v12)
  {
    v12->_observeUnfrozenSeries = [v10 observeUnfrozenSeries];
    v13 = [v10 queryDescriptors];
    queryDescriptors = v12->_queryDescriptors;
    v12->_queryDescriptors = v13;

    v15 = [v10 queryDescriptors];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __68__HDObserverQueryServer_initWithUUID_configuration_client_delegate___block_invoke;
    v19[3] = &unk_27861C4C8;
    v20 = v11;
    v16 = [v15 hk_mapToDictionary:v19];
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

- (void)_deliverDataWasUpdatedForTypes:(void *)a3 withAnchor:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__HDObserverQueryServer__deliverDataWasUpdatedForTypes_withAnchor___block_invoke;
    v8[3] = &unk_278613830;
    v8[4] = a1;
    v9 = v6;
    v10 = v5;
    [a1 onQueue:v8];
  }
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC308];
  v9 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v19 = self;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: samplesAdded: %{public}@, anchor: %{public}@", buf, 0x20u);
  }

  v10 = [(HDQueryServer *)self client];
  v11 = [v10 authorizationOracle];
  v17 = 0;
  v12 = [v11 filteredObjectsForReadAuthorization:v6 anchor:v7 error:&v17];
  v13 = v17;

  if (v12)
  {
    v14 = [(HDObserverQueryServer *)self _sampleTypesToUpdateWithSamples:v12];
    if ([v14 count])
    {
      [(HDObserverQueryServer *)self _deliverDataWasUpdatedForTypes:v14 withAnchor:v7];
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = self;
      v20 = 2114;
      v21 = v13;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to filter samples for authorization: %{public}@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_sampleTypesToUpdateWithSamples:(uint64_t)a1
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = v3;
  if (a1)
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
          v12 = [v11 sampleType];
          v13 = [v5 containsObject:v12];

          if ((v13 & 1) == 0)
          {
            v14 = *(a1 + 248);
            v15 = [v11 sampleType];
            v16 = [v14 objectForKeyedSubscript:v15];

            if ([MEMORY[0x277CCDDB8] filter:v16 acceptsDataObject:v11])
            {
              v17 = [v11 sampleType];
              [v5 addObject:v17];
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

- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithArray:v8];

  [(HDObserverQueryServer *)self _deliverDataWasUpdatedForTypes:v9 withAnchor:v7];
}

- (void)associationsUpdatedForObject:(id)a3 subObject:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 objects:(id)a7 anchor:(id)a8
{
  v32 = *MEMORY[0x277D85DE8];
  v11 = a8;
  v12 = [a7 arrayByAddingObject:a3];
  _HKInitializeLogging();
  v13 = MEMORY[0x277CCC308];
  v14 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v27 = self;
    v28 = 2114;
    v29 = v12;
    v30 = 2114;
    v31 = v11;
    _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: associationsUpdated: %{public}@, anchor: %{public}@", buf, 0x20u);
  }

  v15 = [(HDQueryServer *)self client];
  v16 = [v15 authorizationOracle];
  v25 = 0;
  v17 = [v16 filteredObjectsForReadAuthorization:v12 anchor:v11 error:&v25];
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
      v23 = v11;
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
      v27 = self;
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

- (void)profile:(id)a3 didDiscardSeriesOfType:(id)a4
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a4;
  v7 = [[v5 alloc] initWithObjects:{v6, 0}];

  [(HDObserverQueryServer *)self _deliverDataWasUpdatedForTypes:v7 withAnchor:0];
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  if (a4)
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