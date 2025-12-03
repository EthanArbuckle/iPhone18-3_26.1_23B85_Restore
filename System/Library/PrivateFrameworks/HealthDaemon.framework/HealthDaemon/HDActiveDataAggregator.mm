@interface HDActiveDataAggregator
- (BOOL)didPersistObjects:(id)objects lastDatum:(id)datum collector:(id)collector error:(id *)error;
- (Class)sensorDatumClass;
- (HDActiveDataAggregator)initWithDataCollectionManager:(id)manager;
- (double)aggregationInterval;
- (double)aggregationIntervalForCollector:(id)collector;
- (id)aggregateForState:(id)state collector:(id)collector device:(id)device requestedAggregationDate:(id)date mode:(int64_t)mode options:(unint64_t)options error:(id *)error;
- (id)configurationForCollector:(id)collector;
- (id)initialAggregationState;
- (void)_aggregateForAllDevicesForCollector:(void *)collector date:(uint64_t)date mode:(uint64_t)mode options:;
- (void)_aggregateForCollector:(void *)collector device:(void *)device requestedAggregationDate:(uint64_t)date mode:(uint64_t)mode options:;
- (void)_requestAggregationThroughDate:(uint64_t)date mode:(uint64_t)mode options:(void *)options completion:;
- (void)dataCollector:(id)collector didCollectSensorData:(id)data device:(id)device options:(unint64_t)options;
- (void)recomputeCollectorConfiguration;
- (void)registerDataCollector:(id)collector state:(id)state;
- (void)requestAggregationThroughDate:(id)date mode:(int64_t)mode options:(unint64_t)options completion:(id)completion;
- (void)unregisterDataCollector:(id)collector;
@end

@implementation HDActiveDataAggregator

- (HDActiveDataAggregator)initWithDataCollectionManager:(id)manager
{
  managerCopy = manager;
  v21.receiver = self;
  v21.super_class = HDActiveDataAggregator;
  v5 = [(HDDataAggregator *)&v21 initWithDataCollectionManager:managerCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    aggregationLock = v5->_aggregationLock;
    v5->_aggregationLock = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    currentAggregationStates = v5->_currentAggregationStates;
    v5->_currentAggregationStates = v8;

    objc_initWeak(&location, v5);
    v10 = objc_alloc(MEMORY[0x277CCDD98]);
    dataCollectionManager = [(HDDataAggregator *)v5 dataCollectionManager];
    sharedDelayedAggregationQueue = [dataCollectionManager sharedDelayedAggregationQueue];
    [(HDActiveDataAggregator *)v5 aggregationInterval];
    v14 = v13;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __56__HDActiveDataAggregator_initWithDataCollectionManager___block_invoke;
    v18[3] = &unk_278616F38;
    objc_copyWeak(&v19, &location);
    v15 = [v10 initWithMode:1 queue:sharedDelayedAggregationQueue delay:v18 block:v14];
    delayedAggregationOperation = v5->_delayedAggregationOperation;
    v5->_delayedAggregationOperation = v15;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __56__HDActiveDataAggregator_initWithDataCollectionManager___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    Current = CFAbsoluteTimeGetCurrent();
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = WeakRetained;
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Reconsidering aggregation for old data.", &buf, 0xCu);
    }

    v3 = [WeakRetained dataCollectionManager];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__HDActiveDataAggregator__reconsiderDelayedAggregation__block_invoke;
    v6[3] = &unk_27861DC78;
    v6[4] = WeakRetained;
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v8 = __55__HDActiveDataAggregator__reconsiderDelayedAggregation__block_invoke_3;
    v9 = &unk_27861DCA0;
    v10 = WeakRetained;
    v11 = Current;
    [v3 performSaveWithMaximumLatency:v6 block:&buf completion:60.0];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_aggregateForCollector:(void *)collector device:(void *)device requestedAggregationDate:(uint64_t)date mode:(uint64_t)mode options:
{
  v61 = *MEMORY[0x277D85DE8];
  v11 = a2;
  collectorCopy = collector;
  deviceCopy = device;
  if (self)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __94__HDActiveDataAggregator__aggregateForCollector_device_requestedAggregationDate_mode_options___block_invoke;
    aBlock[3] = &unk_27861CF48;
    aBlock[4] = self;
    v41 = v11;
    v14 = v11;
    v48 = v14;
    v15 = collectorCopy;
    v16 = collectorCopy;
    v49 = v16;
    v40 = deviceCopy;
    v17 = deviceCopy;
    v50 = v17;
    dateCopy = date;
    modeCopy = mode;
    v18 = _Block_copy(aBlock);
    v19 = MEMORY[0x277CCC298];
    v20 = *MEMORY[0x277CCC298];
    v21 = _HKLogSignpostIDGenerate();
    _HKInitializeLogging();
    v22 = *v19;
    if (os_signpost_enabled(v22))
    {
      v23 = v22;
      v24 = v23;
      if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 138544130;
        selfCopy = v14;
        v55 = 2114;
        v56 = v16;
        v57 = 2114;
        v58 = v17;
        v59 = 2048;
        dateCopy2 = date;
        _os_signpost_emit_with_name_impl(&dword_228986000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v21, "active-aggregation-for-collector", "collector=%{public}@, device=%{public}@, aggregationDate=%{public}@, mode=%ld", buf, 0x2Au);
      }
    }

    dataCollectionManager = [self dataCollectionManager];
    databaseAssertion = [dataCollectionManager databaseAssertion];
    v27 = [HDDatabaseTransactionContext contextForAccessibilityAssertion:databaseAssertion];

    dataCollectionManager2 = [self dataCollectionManager];
    profile = [dataCollectionManager2 profile];
    database = [profile database];
    v46 = 0;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __94__HDActiveDataAggregator__aggregateForCollector_device_requestedAggregationDate_mode_options___block_invoke_302;
    v44[3] = &unk_27861A528;
    v45 = v18;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __94__HDActiveDataAggregator__aggregateForCollector_device_requestedAggregationDate_mode_options___block_invoke_2_304;
    v42[3] = &unk_278618968;
    v31 = v45;
    v43 = v31;
    v32 = [(HDHealthEntity *)HDDataEntity performWriteTransactionWithHealthDatabase:database context:v27 error:&v46 block:v44 inaccessibilityHandler:v42];
    v33 = v46;

    _HKInitializeLogging();
    v34 = MEMORY[0x277CCC298];
    v35 = *MEMORY[0x277CCC298];
    collectorCopy = v15;
    if (os_signpost_enabled(*MEMORY[0x277CCC298]))
    {
      v36 = v35;
      v37 = v36;
      if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_228986000, v37, OS_SIGNPOST_INTERVAL_END, v21, "active-aggregation-for-collector", "", buf, 2u);
      }
    }

    if (!v32 && (HKIsUnitTesting() & 1) == 0)
    {
      _HKInitializeLogging();
      v38 = *v34;
      if (os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v55 = 2114;
        v56 = v33;
        _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "%{public}@: Failed to perform outer write transaction for aggregation and persistence: %{public}@", buf, 0x16u);
      }
    }

    deviceCopy = v40;
    v11 = v41;
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __94__HDActiveDataAggregator__aggregateForCollector_device_requestedAggregationDate_mode_options___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __94__HDActiveDataAggregator__aggregateForCollector_device_requestedAggregationDate_mode_options___block_invoke_2;
  v9[3] = &unk_27861CF48;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = *(a1 + 32);
  v5 = *(a1 + 56);
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  v12 = *(a1 + 64);
  [v2 hk_withLock:v9];
}

void __94__HDActiveDataAggregator__aggregateForCollector_device_requestedAggregationDate_mode_options___block_invoke_2(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  v2 = [_HDAggregationStateKey keyForCollector:*(a1 + 40) device:*(a1 + 48) aggregator:?];
  v3 = [*(*(a1 + 48) + 72) objectForKeyedSubscript:v2];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v80 = 0;
  v10 = [v6 aggregateForState:v3 collector:v4 device:v5 requestedAggregationDate:v7 mode:v8 options:v9 error:&v80];
  v11 = v80;
  v12 = v11;
  if (v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11 == 0;
  }

  v14 = MEMORY[0x277CCC298];
  if (!v13)
  {
    _HKInitializeLogging();
    v15 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_FAULT))
    {
      v71 = *(a1 + 48);
      *buf = 138543874;
      v82 = v71;
      v83 = 2112;
      v84 = v3;
      v85 = 2114;
      v86 = v12;
      _os_log_fault_impl(&dword_228986000, v15, OS_LOG_TYPE_FAULT, "%{public}@: (rdar://63497174) Failed to aggregate with state %@: %{public}@", buf, 0x20u);
    }
  }

  v16 = [v10 persistenceHandler];

  if (v16)
  {
    v17 = [*(a1 + 32) sourceForDataAggregator:*(a1 + 48)];
    if (v17)
    {
      v18 = v10;
      v19 = v12;
      v76 = v2;
      v77 = [MEMORY[0x277CBEAA8] now];
      v20 = *(a1 + 48);
      v21 = v14;
      v22 = *(a1 + 32);
      v23 = [v18 consumedSensorData];
      v24 = *(a1 + 40);
      v79 = 0;
      v75 = v18;
      v25 = [v18 persistenceHandler];
      LODWORD(v24) = [v20 persistForCollector:v22 usedDatums:v23 source:v17 device:v24 error:&v79 persistenceHandler:v25];
      v26 = v79;

      _HKInitializeLogging();
      v27 = *v21;
      v28 = *v21;
      if (v24)
      {
        v12 = v19;
        v10 = v75;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v73 = *(a1 + 48);
          v29 = v27;
          v74 = [v75 consumedSensorData];
          v30 = [v74 count];
          v31 = [v75 consumedSensorData];
          v32 = [v31 lastObject];
          [v77 timeIntervalSinceNow];
          *buf = 138544130;
          v82 = v73;
          v83 = 2048;
          v84 = v30;
          v85 = 2112;
          v86 = v32;
          v87 = 2048;
          v88 = -v33;
          _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Persisted, consuming %ld datums with last datum: %@ in %0.1f seconds", buf, 0x2Au);
        }

        v34 = [v75 aggregationState];

        v2 = v76;
        [*(*(a1 + 48) + 72) setObject:v34 forKeyedSubscript:v76];
        v3 = v34;
      }

      else
      {
        v2 = v76;
        v12 = v19;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          v72 = *(a1 + 48);
          *buf = 138543618;
          v82 = v72;
          v83 = 2114;
          v84 = v19;
          _os_log_fault_impl(&dword_228986000, v27, OS_LOG_TYPE_FAULT, "%{public}@: (rdar://63497174) Failed to persist aggregated objects: %{public}@", buf, 0x16u);
        }

        v10 = v75;
      }

      v14 = MEMORY[0x277CCC298];
    }

    else
    {
      _HKInitializeLogging();
      v35 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_FAULT))
      {
        v36 = *(a1 + 32);
        v37 = *(a1 + 48);
        *buf = 138543618;
        v82 = v36;
        v83 = 2114;
        v84 = v37;
        _os_log_fault_impl(&dword_228986000, v35, OS_LOG_TYPE_FAULT, "Collector %{public}@ failed to return source for aggregator %{public}@", buf, 0x16u);
      }
    }
  }

  v38 = [v3 unaggregatedSensorData];
  if ([v38 count])
  {
  }

  else
  {
    v39 = [v3 openSeries];

    if (!v39)
    {
      goto LABEL_34;
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  [*(a1 + 48) aggregationInterval];
  v42 = v41;
  v43 = [v3 unaggregatedSensorData];
  v44 = [v43 count];

  if (v44)
  {
    v45 = [v3 unaggregatedSensorData];
    v46 = [v45 firstObject];
    v47 = [v46 dateInterval];
    v48 = [v47 endDate];
    [v48 timeIntervalSinceReferenceDate];
    v50 = v49;
    [*(a1 + 48) aggregationInterval];
    v52 = v50 + v51 - Current;

    if (v52 < v42)
    {
      v42 = v52;
    }
  }

  v53 = [v3 openSeries];

  if (v53)
  {
    v54 = [v3 openSeries];
    v55 = [v54 startDate];
    [v55 timeIntervalSinceReferenceDate];
    v57 = v56;
    v58 = [*(a1 + 48) configuration];
    [v58 maximumSeriesDuration];
    v60 = v57 + v59 - Current;

    if (v60 < v42)
    {
      v42 = v60;
    }
  }

  _HKInitializeLogging();
  v61 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
  {
    v62 = *(a1 + 48);
    v63 = v61;
    v64 = [v3 unaggregatedSensorData];
    v65 = [v64 count];
    v66 = [v3 openSeries];
    v67 = "has";
    *buf = 138544130;
    v82 = v62;
    v83 = 2048;
    if (!v66)
    {
      v67 = "no";
    }

    v84 = v65;
    v85 = 2080;
    v86 = v67;
    v87 = 2048;
    v88 = v42;
    _os_log_impl(&dword_228986000, v63, OS_LOG_TYPE_INFO, "%{public}@: Incomplete aggregation (%ld remaining datums, %s open series); accumulating and will reconsider in %0.2lfs", buf, 0x2Au);
  }

  v68 = [*(a1 + 48) dataCollectionManager];
  v69 = [v68 sharedDelayedAggregationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__HDActiveDataAggregator__aggregateForCollector_device_requestedAggregationDate_mode_options___block_invoke_299;
  block[3] = &unk_2786138F8;
  block[4] = *(a1 + 48);
  *&block[5] = v42;
  dispatch_async(v69, block);

LABEL_34:
  v70 = *MEMORY[0x277D85DE8];
}

uint64_t __55__HDActiveDataAggregator__reconsiderDelayedAggregation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277CBEAA8];
  v3 = [v1 configuration];
  [v3 collectionLatency];
  v5 = [v2 dateWithTimeIntervalSinceNow:-v4];
  [(HDActiveDataAggregator *)v1 _requestAggregationThroughDate:v5 mode:0 options:0 completion:&__block_literal_global_77];

  return 1;
}

- (void)_requestAggregationThroughDate:(uint64_t)date mode:(uint64_t)mode options:(void *)options completion:
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a2;
  optionsCopy = options;
  if (self)
  {
    allCollectors = [self allCollectors];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [allCollectors countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(allCollectors);
          }

          collector = [*(*(&v18 + 1) + 8 * v15) collector];
          [(HDActiveDataAggregator *)self _aggregateForAllDevicesForCollector:collector date:v9 mode:date options:mode];

          ++v15;
        }

        while (v13 != v15);
        v13 = [allCollectors countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    optionsCopy[2](optionsCopy, 1, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __55__HDActiveDataAggregator__reconsiderDelayedAggregation__block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC298];
  v7 = os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v10 = CFAbsoluteTimeGetCurrent() - *(a1 + 40);
      v17 = 138543618;
      v18 = v8;
      v19 = 2048;
      v20 = v10;
      v11 = "%{public}@: Finished reconsidering with latency %0.2lfs.";
      v12 = v9;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
    }
  }

  else if (v7)
  {
    v14 = *(a1 + 32);
    v9 = v6;
    v15 = CFAbsoluteTimeGetCurrent() - *(a1 + 40);
    v17 = 138543874;
    v18 = v14;
    v19 = 2048;
    v20 = v15;
    v21 = 2114;
    v22 = v5;
    v11 = "%{public}@: Failed aggregation reconsideration after %0.2lfs: %{public}@";
    v12 = v9;
    v13 = 32;
    goto LABEL_6;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)registerDataCollector:(id)collector state:(id)state
{
  v27 = *MEMORY[0x277D85DE8];
  collectorCopy = collector;
  stateCopy = state;
  v20 = collectorCopy;
  v7 = [collectorCopy identifierForDataAggregator:self];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allCollectors = [(HDDataAggregator *)self allCollectors];
  v9 = [allCollectors countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(allCollectors);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        collector = [v13 collector];
        v15 = [collector identifierForDataAggregator:self];

        if ([v15 isEqualToString:v7])
        {
          collector2 = [v13 collector];
          distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
          [(HDActiveDataAggregator *)&self->super.super.isa _aggregateForAllDevicesForCollector:collector2 date:distantFuture mode:0 options:3];
        }
      }

      v10 = [allCollectors countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v21.receiver = self;
  v21.super_class = HDActiveDataAggregator;
  [(HDDataAggregator *)&v21 registerDataCollector:v20 state:stateCopy];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_aggregateForAllDevicesForCollector:(void *)collector date:(uint64_t)date mode:(uint64_t)mode options:
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a2;
  collectorCopy = collector;
  if (self)
  {
    [self[8] lock];
    allKeys = [self[9] allKeys];
    v12 = [allKeys hk_map:&__block_literal_global_326];

    [self[8] unlock];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v23 + 1) + 8 * v16);
          null = [MEMORY[0x277CBEB68] null];
          if (v17 == null)
          {
            v19 = 0;
          }

          else
          {
            v19 = v17;
          }

          v20 = v19;

          [(HDActiveDataAggregator *)self _aggregateForCollector:v9 device:v20 requestedAggregationDate:collectorCopy mode:date options:mode];
          ++v16;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)unregisterDataCollector:(id)collector
{
  v4 = MEMORY[0x277CBEAA8];
  collectorCopy = collector;
  distantFuture = [v4 distantFuture];
  [(HDActiveDataAggregator *)&self->super.super.isa _aggregateForAllDevicesForCollector:collectorCopy date:distantFuture mode:0 options:3];

  v7.receiver = self;
  v7.super_class = HDActiveDataAggregator;
  [(HDDataAggregator *)&v7 unregisterDataCollector:collectorCopy];
}

- (void)dataCollector:(id)collector didCollectSensorData:(id)data device:(id)device options:(unint64_t)options
{
  collectorCopy = collector;
  dataCopy = data;
  deviceCopy = device;
  v49.receiver = self;
  v49.super_class = HDActiveDataAggregator;
  [(HDDataAggregator *)&v49 dataCollector:collectorCopy didCollectSensorData:dataCopy device:deviceCopy options:options];
  if ((options & 1) == 0)
  {
    sensorDatumClass = [(HDActiveDataAggregator *)self sensorDatumClass];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__HDActiveDataAggregator_dataCollector_didCollectSensorData_device_options___block_invoke;
    aBlock[3] = &unk_27861DCC8;
    aBlock[4] = self;
    aBlock[5] = sensorDatumClass;
    v14 = _Block_copy(aBlock);
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 1;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__70;
    v42 = __Block_byref_object_dispose__70;
    v43 = 0;
    aggregationLock = self->_aggregationLock;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __76__HDActiveDataAggregator_dataCollector_didCollectSensorData_device_options___block_invoke_315;
    v30[3] = &unk_27861DD10;
    v16 = collectorCopy;
    v31 = v16;
    v17 = deviceCopy;
    v32 = v17;
    selfCopy = self;
    v34 = dataCopy;
    v18 = v14;
    v35 = v18;
    v36 = &v38;
    v37 = &v44;
    [(NSLock *)aggregationLock hk_withLock:v30];
    if (v45[3])
    {
      Current = CFAbsoluteTimeGetCurrent();
      dataCollectionManager = [(HDDataAggregator *)self dataCollectionManager];
      configuration = [(HDDataAggregator *)self configuration];
      [configuration collectionLatency];
      v23 = v22;
      [v39[5] timeIntervalSinceNow];
      v25 = v23 + v24;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __76__HDActiveDataAggregator_dataCollector_didCollectSensorData_device_options___block_invoke_3;
      v27[3] = &unk_27861DD38;
      v27[4] = self;
      v28 = v16;
      v29 = v17;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __76__HDActiveDataAggregator_dataCollector_didCollectSensorData_device_options___block_invoke_4;
      v26[3] = &unk_27861DCA0;
      v26[4] = self;
      *&v26[5] = Current;
      [dataCollectionManager performSaveWithMaximumLatency:v27 block:v26 completion:v25];
    }

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v44, 8);
  }
}

uint64_t __76__HDActiveDataAggregator_dataCollector_didCollectSensorData_device_options___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  if (objc_opt_isKindOfClass())
  {
    v5 = [*(a1 + 32) doesDatumPredateDatabaseObliteration:v3];
    if (v5)
    {
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a1 + 32);
        v17 = 138543362;
        v18 = v16;
        _os_log_debug_impl(&dword_228986000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: Rejecting sensor datum from pre-obliteration", &v17, 0xCu);
      }
    }

    v7 = v5 ^ 1u;
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v11 = v8;
      v12 = objc_opt_class();
      v13 = *(a1 + 32);
      v14 = v12;
      v17 = 138543618;
      v18 = v12;
      v19 = 2114;
      v20 = [v13 sensorDatumClass];
      v15 = v20;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Rejecting sensor datum of unexpected class %{public}@ (expected %{public}@)", &v17, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

void __76__HDActiveDataAggregator_dataCollector_didCollectSensorData_device_options___block_invoke_315(uint64_t a1)
{
  v12 = [_HDAggregationStateKey keyForCollector:*(a1 + 40) device:*(a1 + 48) aggregator:?];
  v2 = [*(*(a1 + 48) + 72) objectForKeyedSubscript:?];
  if (!v2)
  {
    v2 = [*(a1 + 48) initialAggregationState];
    [*(*(a1 + 48) + 72) setObject:v2 forKeyedSubscript:v12];
  }

  v3 = [v2 unaggregatedSensorData];
  v4 = [v3 firstObject];
  v5 = [v4 dateInterval];
  v6 = [v5 endDate];

  [v3 hk_addObjectsFromArray:*(a1 + 56) passingTest:*(a1 + 64)];
  [v3 sortUsingComparator:&__block_literal_global_318_0];
  v7 = [v3 firstObject];
  v8 = [v7 dateInterval];
  v9 = [v8 endDate];
  v10 = *(*(a1 + 72) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if ([v6 isEqualToDate:*(*(*(a1 + 72) + 8) + 40)])
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }
}

uint64_t __76__HDActiveDataAggregator_dataCollector_didCollectSensorData_device_options___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 dateInterval];
  v7 = [v6 endDate];
  v8 = [v5 dateInterval];
  v9 = [v8 endDate];
  v10 = [v7 compare:v9];

  if (!v10)
  {
    v11 = [v4 dateInterval];
    v12 = [v11 startDate];
    v13 = [v5 dateInterval];
    v14 = [v13 startDate];
    v10 = [v12 compare:v14];
  }

  return v10;
}

void __76__HDActiveDataAggregator_dataCollector_didCollectSensorData_device_options___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC298];
  v7 = *MEMORY[0x277CCC298];
  if (!a2)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v12 = *(a1 + 32);
    v9 = v6;
    v13 = CFAbsoluteTimeGetCurrent() - *(a1 + 40);
    v14 = 138543874;
    v15 = v12;
    v16 = 2048;
    v17 = v13;
    v18 = 2114;
    v19 = v5;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Save failed after %0.2lfs: %{public}@", &v14, 0x20u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v6;
    v10 = CFAbsoluteTimeGetCurrent() - *(a1 + 40);
    v14 = 138543618;
    v15 = v8;
    v16 = 2048;
    v17 = v10;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished save with latency %0.2lfs.", &v14, 0x16u);
LABEL_4:
  }

LABEL_6:

  v11 = *MEMORY[0x277D85DE8];
}

- (id)configurationForCollector:(id)collector
{
  [(HDActiveDataAggregator *)self aggregationInterval];
  v5 = v4;
  configuration = [(HDDataAggregator *)self configuration];
  if ([configuration hasActiveWorkout])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = [HDDataCollectorConfiguration configurationWithType:v7 interval:v5 latency:v5];

  return v8;
}

- (BOOL)didPersistObjects:(id)objects lastDatum:(id)datum collector:(id)collector error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  datumCopy = datum;
  collectorCopy = collector;
  if (!datumCopy)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_fault_impl(&dword_228986000, v13, OS_LOG_TYPE_FAULT, "%{public}@: Persisted objects with a nil last datum.", buf, 0xCu);
    }
  }

  v17.receiver = self;
  v17.super_class = HDActiveDataAggregator;
  v14 = [(HDDataAggregator *)&v17 didPersistObjects:objectsCopy lastDatum:datumCopy collector:collectorCopy error:error];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (double)aggregationIntervalForCollector:(id)collector
{
  collectorCopy = collector;
  [(HDActiveDataAggregator *)self aggregationInterval];
  v6 = v5;
  if (objc_opt_respondsToSelector())
  {
    [collectorCopy preferredAggregationIntervalForAggregator:self];
    if (v6 >= v7 && v7 >= 0.0)
    {
      v6 = v7;
    }
  }

  return v6;
}

- (Class)sensorDatumClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)aggregateForState:(id)state collector:(id)collector device:(id)device requestedAggregationDate:(id)date mode:(int64_t)mode options:(unint64_t)options error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (double)aggregationInterval
{
  configuration = [(HDDataAggregator *)self configuration];
  objectType = [(HDDataAggregator *)self objectType];
  [objectType code];
  HKDefaultAggregationIntervalForType();
  v6 = v5;

  [configuration aggregationInterval];
  if (v7 > 0.0)
  {
    v8 = v7;
    if ((([configuration hasForegroundObserver] & 1) != 0 || objc_msgSend(configuration, "hasActiveWorkout")) && v8 < v6)
    {
      v6 = v8;
    }
  }

  return v6;
}

id __80__HDActiveDataAggregator__aggregateForAllDevicesForCollector_date_mode_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 && (v4 = *(v2 + 2)) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v6 = v5;

  return v6;
}

- (void)requestAggregationThroughDate:(id)date mode:(int64_t)mode options:(unint64_t)options completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__HDActiveDataAggregator_requestAggregationThroughDate_mode_options_completion___block_invoke;
  v15[3] = &unk_27861DD80;
  v15[4] = self;
  v16 = dateCopy;
  v17 = completionCopy;
  modeCopy = mode;
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = HDActiveDataAggregator;
  v12 = dateCopy;
  v13 = completionCopy;
  [(HDDataAggregator *)&v14 requestAggregationThroughDate:v12 mode:mode options:options completion:v15];
}

void __80__HDActiveDataAggregator_requestAggregationThroughDate_mode_options_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    [(HDActiveDataAggregator *)*(a1 + 32) _requestAggregationThroughDate:*(a1 + 56) mode:*(a1 + 64) options:*(a1 + 48) completion:?];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)recomputeCollectorConfiguration
{
  v7.receiver = self;
  v7.super_class = HDActiveDataAggregator;
  [(HDDataAggregator *)&v7 recomputeCollectorConfiguration];
  dataCollectionManager = [(HDDataAggregator *)self dataCollectionManager];
  v4 = dataCollectionManager;
  if (dataCollectionManager)
  {
    sharedDelayedAggregationQueue = [dataCollectionManager sharedDelayedAggregationQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__HDActiveDataAggregator_recomputeCollectorConfiguration__block_invoke;
    block[3] = &unk_278613968;
    block[4] = self;
    dispatch_async(sharedDelayedAggregationQueue, block);
  }
}

uint64_t __57__HDActiveDataAggregator_recomputeCollectorConfiguration__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[10];
  [v1 aggregationInterval];

  return [v2 executeWithDelay:?];
}

- (id)initialAggregationState
{
  v2 = [HDDataAggregationState alloc];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(HDDataAggregationState *)v2 initWithRemainingSensorData:v3];

  return v4;
}

@end