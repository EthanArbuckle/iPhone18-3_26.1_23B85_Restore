@interface HDDataCollectionManager
- (BOOL)sensorDataArrayReceived:(id)received deviceEntity:(id)entity error:(id *)error;
- (HDAssertion)databaseAssertion;
- (HDDataCollectionManager)init;
- (HDDataCollectionManager)initWithProfile:(id)profile;
- (HDProfile)profile;
- (id)_dataAggregatorConfigurationForCollectorState:(void *)state;
- (id)_dataCollectorBlacklist;
- (id)_queue_aggregatorForType:(uint64_t)type;
- (id)_queue_observerMapForType:(uint64_t)type;
- (id)aggregatorForType:(id)type;
- (id)collectibleTypes;
- (id)diagnosticDescription;
- (id)takeCollectionAssertionWithOwnerIdentifier:(id)identifier collectionIntervalsByType:(id)type observerState:(id)state;
- (id)takeCollectionAssertionWithOwnerIdentifier:(id)identifier sampleTypes:(id)types observerState:(id)state collectionInterval:(double)interval;
- (id)unitTest_dataAggregatorConfigurationForType:(id)type;
- (uint64_t)_typeIsCollectible:(uint64_t)result;
- (void)_collectorLock_setupFakeCollector;
- (void)_queue_addDataCollector:(uint64_t)collector;
- (void)_queue_adjustDataCollectionForType:(void *)type block:;
- (void)_queue_collectionStateForType:(void *)type;
- (void)_setAggregatorConfigurationChangeHandler:(id)handler;
- (void)_setObserverRemovedHandler:(id)handler;
- (void)addDataCollectionObserver:(id)observer type:(id)type collectionInterval:(double)interval state:(id)state;
- (void)addDataCollector:(id)collector;
- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)generateFakeDataForActivityType:(int64_t)type startDate:(id)date seconds:(double)seconds completion:(id)completion;
- (void)performPeriodicActivity:(id)activity completion:(id)completion;
- (void)performSaveWithMaximumLatency:(double)latency block:(id)block completion:(id)completion;
- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria;
- (void)periodicUpdate;
- (void)profileDidBecomeReady:(id)ready;
- (void)removeDataCollectionObserver:(id)observer;
- (void)removeDataCollectionObserver:(id)observer type:(id)type;
- (void)requestAggregationThroughDate:(id)date types:(id)types mode:(int64_t)mode options:(unint64_t)options completion:(id)completion;
- (void)startDataCollectionForType:(id)type observer:(id)observer collectionInterval:(double)interval;
- (void)startFakingDataWithActivityType:(int64_t)type speed:(id)speed;
- (void)startFakingWithHKWorkoutActivityType:(unint64_t)type;
- (void)stopDataCollectionForType:(id)type observer:(id)observer;
- (void)stopFakingData;
- (void)unitTest_addCollectibleType:(id)type;
- (void)unitTest_setAggregator:(id)aggregator forType:(id)type;
- (void)unitTest_setPendingSaveCoalescingInterval:(double)interval;
@end

@implementation HDDataCollectionManager

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)periodicUpdate
{
  v3 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"Periodic"];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HDDataCollectionManager_periodicUpdate__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
  [v3 invalidate];
}

void __41__HDDataCollectionManager_periodicUpdate__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  os_unfair_lock_lock((*(a1 + 32) + 64));
  v5 = [*(*(a1 + 32) + 80) allValues];
  os_unfair_lock_unlock((*(a1 + 32) + 64));
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) updateHistoricalData];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (HDDataCollectionManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDataCollectionManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v46.receiver = self;
  v46.super_class = HDDataCollectionManager;
  v5 = [(HDDataCollectionManager *)&v46 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    *&v6->_collectorLock._os_unfair_lock_opaque = 0;
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = HKCreateSerialDispatchQueue();
    dataCollectionQueue = v6->_dataCollectionQueue;
    v6->_dataCollectionQueue = v9;

    v11 = HKCreateSerialDispatchQueue();
    sharedDelayedAggregationQueue = v6->_sharedDelayedAggregationQueue;
    v6->_sharedDelayedAggregationQueue = v11;

    v13 = HKCreateSerialDispatchQueue();
    assertionQueue = v6->_assertionQueue;
    v6->_assertionQueue = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    collectorLock_dataCollectorsByType = v6->_collectorLock_dataCollectorsByType;
    v6->_collectorLock_dataCollectorsByType = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataAggregatorsByType = v6->_dataAggregatorsByType;
    v6->_dataAggregatorsByType = v17;

    _HKInitializeLogging();
    v19 = [HDDatabaseCoalescedWritePool alloc];
    v20 = MEMORY[0x277CCC298];
    v21 = [(HDDatabaseCoalescedWritePool *)v19 initWithProfile:profileCopy name:@"data-collection-coalescing" loggingCategory:*MEMORY[0x277CCC298]];
    pendingSavePool = v6->_pendingSavePool;
    v6->_pendingSavePool = v21;

    v23 = [objc_alloc(MEMORY[0x277D10AD0]) initWithAvailableQuota:5 maximumQuota:5 refillInterval:1.0 minimumInterval:0.1 lastTrigger:CFAbsoluteTimeGetCurrent()];
    [(HDDatabaseCoalescedWritePool *)v6->_pendingSavePool setQuota:v23];

    v6->unitTest_hasSetPendingSaveCoalescingInterval = 0;
    v6->_privacyPreferencesNotificationToken = -1;
    daemon = [profileCopy daemon];
    behavior = [daemon behavior];
    shouldRegisterPeriodicActivities = [behavior shouldRegisterPeriodicActivities];

    if (shouldRegisterPeriodicActivities)
    {
      daemon2 = [profileCopy daemon];
      behavior2 = [daemon2 behavior];
      isAppleWatch = [behavior2 isAppleWatch];

      if (isAppleWatch)
      {
        v30 = [[HDPeriodicActivity alloc] initWithProfile:profileCopy name:@"com.apple.healthd.periodic-data-collection" interval:v6 delegate:*v20 loggingCategory:900.0];
        periodicUpdateActivity = v6->_periodicUpdateActivity;
        v6->_periodicUpdateActivity = v30;
      }

      else
      {
        v32 = dispatch_get_global_queue(21, 0);
        v40 = MEMORY[0x277D85DD0];
        v41 = 3221225472;
        v42 = __43__HDDataCollectionManager_initWithProfile___block_invoke;
        v43 = &unk_278613920;
        v44 = v6;
        v45 = profileCopy;
        dispatch_async(v32, &v40);

        periodicUpdateActivity = v44;
      }
    }

    sessionAssertionManager = [profileCopy sessionAssertionManager];
    [sessionAssertionManager addObserver:v6 forAssertionIdentifier:@"HDDataCollectionAssertionIdentifier" queue:v6->_assertionQueue];

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v6];

    [profileCopy registerProfileReadyObserver:v6 queue:0];
    v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lastFlushDateByType = v6->_lastFlushDateByType;
    v6->_lastFlushDateByType = v35;

    v37 = [[HDSeriesQuantityEventObserver alloc] initWithProfile:profileCopy];
    seriesQuantityEventObserver = v6->_seriesQuantityEventObserver;
    v6->_seriesQuantityEventObserver = v37;
  }

  return v6;
}

uint64_t __43__HDDataCollectionManager_initWithProfile___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277CC1D18] isStepCountingAvailable];
  if (result)
  {
    v3 = [HDPeriodicActivity alloc];
    v4 = [(HDPeriodicActivity *)v3 initWithProfile:*(a1 + 40) name:@"com.apple.healthd.periodic-data-collection" interval:*(a1 + 32) delegate:*MEMORY[0x277CCC298] loggingCategory:3600.0];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;

    return MEMORY[0x2821F96F8](v4, v6);
  }

  return result;
}

- (void)dealloc
{
  privacyPreferencesNotificationToken = self->_privacyPreferencesNotificationToken;
  if (privacyPreferencesNotificationToken != -1)
  {
    notify_cancel(privacyPreferencesNotificationToken);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  sessionAssertionManager = [WeakRetained sessionAssertionManager];
  [sessionAssertionManager removeObserver:self];

  mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [mEMORY[0x277D10AF8] removeObject:self];

  [(HDAssertion *)self->_databaseAssertion invalidate];
  v7 = objc_loadWeakRetained(&self->_profile);
  database = [v7 database];
  [database removeProtectedDataObserver:self];

  v9.receiver = self;
  v9.super_class = HDDataCollectionManager;
  [(HDDataCollectionManager *)&v9 dealloc];
}

- (id)aggregatorForType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    dispatch_assert_queue_not_V2(self->_queue);
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__186;
    v17 = __Block_byref_object_dispose__186;
    v18 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__HDDataCollectionManager_aggregatorForType___block_invoke;
    block[3] = &unk_27861F190;
    v12 = &v13;
    block[4] = self;
    v11 = typeCopy;
    dispatch_sync(queue, block);
    v7 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataCollectionManager.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"objectType != nil"}];

    v7 = 0;
  }

  return v7;
}

uint64_t __45__HDDataCollectionManager_aggregatorForType___block_invoke(uint64_t a1)
{
  v2 = [(HDDataCollectionManager *)*(a1 + 32) _queue_aggregatorForType:?];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)_queue_aggregatorForType:(uint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (type)
  {
    if (!v3)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__queue_aggregatorForType_ object:type file:@"HDDataCollectionManager.m" lineNumber:273 description:{@"Invalid parameter not satisfying: %@", @"objectType != nil"}];
    }

    dispatch_assert_queue_V2(*(type + 152));
    if ([(HDDataCollectionManager *)type _typeIsCollectible:v4])
    {
      v5 = [*(type + 16) objectForKeyedSubscript:v4];
      if (v5)
      {
        goto LABEL_11;
      }

      v6 = HDCreateDataAggregatorForType(type, v4);
      if (v6)
      {
        v5 = v6;
        [*(type + 16) setObject:v6 forKeyedSubscript:v4];
        [v5 resume];
        [(HDDataCollectionManager *)type _queue_adjustDataCollectionForType:v4 block:&__block_literal_global_224];
        goto LABEL_11;
      }

      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138477827;
        v12 = v4;
        _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "Aggregator couldn't be found for type %{private}@", buf, 0xCu);
      }
    }
  }

  v5 = 0;
LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (uint64_t)_typeIsCollectible:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    collectibleTypes = [(HDDataCollectionManager *)v2 collectibleTypes];
    v5 = [collectibleTypes containsObject:v3];

    return v5;
  }

  return result;
}

- (void)_queue_adjustDataCollectionForType:(void *)type block:
{
  v97 = *MEMORY[0x277D85DE8];
  v5 = a2;
  typeCopy = type;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 152));
    os_unfair_lock_lock((self + 64));
    v7 = [*(self + 80) objectForKeyedSubscript:v5];
    os_unfair_lock_unlock((self + 64));
    v8 = [*(self + 16) objectForKeyedSubscript:v5];
    v9 = _Block_copy(*(self + 104));
    v10 = v9;
    if (v7 || v8 || v9)
    {
      v90 = 0u;
      v91 = 0u;
      [(HDDataCollectionManager *)&v90 _queue_collectionStateForType:self, v5];
      typeCopy[2](typeCopy);
      v88 = 0u;
      v89 = 0u;
      [(HDDataCollectionManager *)&v88 _queue_collectionStateForType:self, v5];
      WeakRetained = objc_loadWeakRetained((self + 136));
      daemon = [WeakRetained daemon];
      behavior = [daemon behavior];
      v85 = v7;
      v86 = typeCopy;
      v87 = v8;
      v84 = v10;
      if ([behavior supportsCoreOSDatabaseAssertion])
      {
        v17 = BYTE12(v89);

        v18 = v17;
        if (v17)
        {
          os_unfair_lock_lock((self + 68));
          if (!*(self + 40))
          {
            v19 = v17;
            v20 = objc_loadWeakRetained((self + 136));
            database = [v20 database];
            *&v92 = 0;
            v22 = [database takeAccessibilityAssertionWithOwnerIdentifier:@"DataCollectionManager" contextType:3 error:&v92];
            v23 = v92;
            v24 = *(self + 40);
            *(self + 40) = v22;

            if (!*(self + 40))
            {
              _HKInitializeLogging();
              v25 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                *&buf[4] = self;
                *&buf[12] = 2114;
                *&buf[14] = v23;
                _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to take database assertion with error %{public}@.", buf, 0x16u);
              }

              v26 = objc_loadWeakRetained((self + 136));
              database2 = [v26 database];
              [database2 addProtectedDataObserver:self queue:*(self + 152)];
            }

            v18 = v19;
          }

          os_unfair_lock_unlock((self + 68));
        }
      }

      else
      {

        v18 = BYTE12(v89);
      }

      v28 = v90;
      v29 = v91;
      v30 = BYTE9(v91);
      v31 = BYTE10(v91);
      v32 = BYTE11(v91);
      v33 = BYTE12(v91);
      v34 = v88;
      v35 = v89;
      v36 = BYTE9(v89);
      v37 = BYTE10(v89);
      v38 = BYTE11(v89);
      v82 = BYTE8(v89);
      v83 = BYTE8(v91);
      if (*&v90 == *&v88 && *(&v90 + 1) == *(&v88 + 1) && *&v91 == *&v89 && BYTE8(v91) == BYTE8(v89) && BYTE9(v91) == BYTE9(v89) && BYTE10(v91) == BYTE10(v89) && BYTE11(v91) == BYTE11(v89) && BYTE12(v91) == v18)
      {
        v39 = v18;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _HKInitializeLogging();
          v40 = *MEMORY[0x277CCC298];
          if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
          {
            v41 = @"inactive";
            if (v83)
            {
              v41 = @"ACTIVE";
            }

            v75 = v41;
            v77 = MEMORY[0x277CCACA8];
            if (v30)
            {
              v42 = @"FOREGROUND";
            }

            else
            {
              v42 = @"background";
            }

            if (v31)
            {
              v43 = @"WORKOUT";
            }

            else
            {
              v43 = &stru_283BF39C8;
            }

            if (v32)
            {
              v44 = @"BACKGROUND RUNNING";
            }

            else
            {
              v44 = &stru_283BF39C8;
            }

            if (v39)
            {
              v45 = @"WORKOUT ASSERTION";
            }

            else
            {
              v45 = &stru_283BF39C8;
            }

            v80 = v40;
            v78 = [v77 stringWithFormat:@"(%0.2lfs, latency %0.2lfs, series %0.2lfs, %@, %@, %@, %@, %@)", v28, v29, v75, v42, v43, v44, v45];
            v46 = v5;
            v47 = [@"{\n" mutableCopy];
            v48 = [*(self + 144) objectForKeyedSubscript:v46];
            v92 = 0u;
            v93 = 0u;
            v94 = 0u;
            v95 = 0u;
            v49 = v48;
            objectEnumerator = [v48 objectEnumerator];
            v51 = [objectEnumerator countByEnumeratingWithState:&v92 objects:buf count:16];
            if (v51)
            {
              v52 = v51;
              v53 = *v93;
              do
              {
                for (i = 0; i != v52; ++i)
                {
                  if (*v93 != v53)
                  {
                    objc_enumerationMutation(objectEnumerator);
                  }

                  [v47 appendFormat:@"\t%@\n", *(*(&v92 + 1) + 8 * i)];
                }

                v52 = [objectEnumerator countByEnumeratingWithState:&v92 objects:buf count:16];
              }

              while (v52);
            }

            [v47 appendString:@"}"];
            *buf = 138543874;
            *&buf[4] = v5;
            *&buf[12] = 2114;
            *&buf[14] = v78;
            *&buf[22] = 2114;
            *&buf[24] = v47;
            _os_log_impl(&dword_228986000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@: Collection state not changing %{public}@. Observers: %{public}@", buf, 0x20u);
          }
        }
      }

      else
      {
        v81 = v18;
        _HKInitializeLogging();
        v55 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
        {
          if (v83)
          {
            v56 = @"ACTIVE";
          }

          else
          {
            v56 = @"inactive";
          }

          v76 = v56;
          v79 = MEMORY[0x277CCACA8];
          v57 = @"background";
          if (v30)
          {
            v57 = @"FOREGROUND";
          }

          v74 = v57;
          if (v31)
          {
            v58 = @"WORKOUT";
          }

          else
          {
            v58 = &stru_283BF39C8;
          }

          if (v32)
          {
            v59 = @"BACKGROUND RUNNING";
          }

          else
          {
            v59 = &stru_283BF39C8;
          }

          if (v33)
          {
            v60 = @"WORKOUT ASSERTION";
          }

          else
          {
            v60 = &stru_283BF39C8;
          }

          v61 = v55;
          v62 = [v79 stringWithFormat:@"(%0.2lfs, latency %0.2lfs, series %0.2lfs, %@, %@, %@, %@, %@)", v28, v29, v76, v74, v58, v59, v60];
          v63 = @"ACTIVE";
          if ((v82 & 1) == 0)
          {
            v63 = @"inactive";
          }

          v64 = @"FOREGROUND";
          if ((v36 & 1) == 0)
          {
            v64 = @"background";
          }

          v65 = @"WORKOUT";
          if ((v37 & 1) == 0)
          {
            v65 = &stru_283BF39C8;
          }

          v66 = @"BACKGROUND RUNNING";
          if ((v38 & 1) == 0)
          {
            v66 = &stru_283BF39C8;
          }

          v67 = @"WORKOUT ASSERTION";
          if ((v81 & 1) == 0)
          {
            v67 = &stru_283BF39C8;
          }

          v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%0.2lfs, latency %0.2lfs, series %0.2lfs, %@, %@, %@, %@, %@)", v34, v35, v63, v64, v65, v66, v67];
          *buf = 138543874;
          *&buf[4] = v5;
          *&buf[12] = 2114;
          *&buf[14] = v62;
          *&buf[22] = 2114;
          *&buf[24] = v68;
          _os_log_impl(&dword_228986000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@: Collection state %{public}@ -> %{public}@", buf, 0x20u);
        }
      }

      v7 = v85;
      typeCopy = v86;
      v8 = v87;
      v10 = v84;
      if (v85)
      {
        v69 = v85;
        v70 = v5;
        if (*&v28 != *&v34)
        {
          [v69 updateCollectionInterval:v70 forType:*&v34];
        }

        if (v83)
        {
          if ((v82 & 1) == 0)
          {
            [v69 collectionStoppedForType:v70];
          }
        }

        else if (v82)
        {
          [v69 collectionStartedForType:v70 collectionInterval:*&v34];
        }
      }

      if (v87)
      {
        *buf = v88;
        *&buf[16] = v89;
        v71 = [(HDDataCollectionManager *)self _dataAggregatorConfigurationForCollectorState:buf];
        [v87 setConfiguration:v71];
      }

      if (v84)
      {
        *buf = v88;
        *&buf[16] = v89;
        v72 = [(HDDataCollectionManager *)self _dataAggregatorConfigurationForCollectorState:buf];
        v84[2](v84, v5, v72);
      }
    }

    else
    {
      typeCopy[2](typeCopy);
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        *buf = 138543618;
        *&buf[4] = objc_opt_class();
        *&buf[12] = 2114;
        *&buf[14] = v5;
        v13 = *&buf[4];
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: No data collector and aggregrator for type : %{public}@", buf, 0x16u);
      }
    }
  }

  v73 = *MEMORY[0x277D85DE8];
}

- (void)performSaveWithMaximumLatency:(double)latency block:(id)block completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = fmin(latency, 60.0);
  if (v7 >= 0.1)
  {
    unitTest_pendingSaveCoalescingInterval = v7;
  }

  else
  {
    unitTest_pendingSaveCoalescingInterval = 0.1;
  }

  if (self->unitTest_hasSetPendingSaveCoalescingInterval)
  {
    unitTest_pendingSaveCoalescingInterval = self->unitTest_pendingSaveCoalescingInterval;
  }

  completionCopy = completion;
  blockCopy = block;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
  {
    v13 = 138543618;
    selfCopy = self;
    v15 = 2048;
    v16 = unitTest_pendingSaveCoalescingInterval;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_INFO, "%{public}@: perform delayed write with maximum latency %0.2f", &v13, 0x16u);
  }

  [(HDDatabaseCoalescedWritePool *)self->_pendingSavePool setDatabaseAssertion:self->_databaseAssertion];
  [(HDDatabaseCoalescedWritePool *)self->_pendingSavePool performWriteWithMaximumLatency:blockCopy block:completionCopy completion:unitTest_pendingSaveCoalescingInterval];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addDataCollectionObserver:(id)observer type:(id)type collectionInterval:(double)interval state:(id)state
{
  observerCopy = observer;
  typeCopy = type;
  stateCopy = state;
  if (observerCopy)
  {
    if (typeCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataCollectionManager.m" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];

    if (stateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDDataCollectionManager.m" lineNumber:320 description:{@"Invalid parameter not satisfying: %@", @"observer != nil"}];

  if (!typeCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (stateCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDDataCollectionManager.m" lineNumber:322 description:{@"Invalid parameter not satisfying: %@", @"state != nil"}];

LABEL_4:
  if ([(HDDataCollectionManager *)self _typeIsCollectible:typeCopy])
  {
    v14 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"AddObserver"];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__HDDataCollectionManager_addDataCollectionObserver_type_collectionInterval_state___block_invoke;
    block[3] = &unk_27861D010;
    v21 = observerCopy;
    intervalCopy = interval;
    v22 = stateCopy;
    selfCopy = self;
    v24 = typeCopy;
    v25 = v14;
    v16 = v14;
    dispatch_async(queue, block);
  }
}

void __83__HDDataCollectionManager_addDataCollectionObserver_type_collectionInterval_state___block_invoke(uint64_t a1)
{
  v2 = [_HDDataCollectionObserverWrapper alloc];
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5 = *(a1 + 32);
  v6 = v3;
  if (v2)
  {
    v17.receiver = v2;
    v17.super_class = _HDDataCollectionObserverWrapper;
    v7 = objc_msgSendSuper2(&v17, sel_init);
    v2 = v7;
    if (v7)
    {
      objc_storeWeak(&v7->_observer, v5);
      v2->_collectionInterval = v4;
      objc_storeStrong(&v2->_state, v3);
    }
  }

  v8 = [(HDDataCollectionManager *)*(a1 + 48) _queue_observerMapForType:?];
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__HDDataCollectionManager_addDataCollectionObserver_type_collectionInterval_state___block_invoke_2;
  v13[3] = &unk_278613830;
  v14 = v8;
  v15 = v2;
  v16 = *(a1 + 32);
  v11 = v2;
  v12 = v8;
  [(HDDataCollectionManager *)v9 _queue_adjustDataCollectionForType:v10 block:v13];
  [*(a1 + 64) invalidate];
}

- (id)_queue_observerMapForType:(uint64_t)type
{
  v3 = a2;
  if (!type)
  {
    goto LABEL_11;
  }

  dispatch_assert_queue_V2(*(type + 152));
  if (!v3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__queue_observerMapForType_ object:type file:@"HDDataCollectionManager.m" lineNumber:598 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];

LABEL_11:
    weakToStrongObjectsMapTable = 0;
    goto LABEL_7;
  }

  v4 = *(type + 144);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = *(type + 144);
    *(type + 144) = v5;

    v4 = *(type + 144);
  }

  weakToStrongObjectsMapTable = [v4 objectForKeyedSubscript:v3];
  if (!weakToStrongObjectsMapTable)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    [*(type + 144) setObject:weakToStrongObjectsMapTable forKeyedSubscript:v3];
  }

LABEL_7:

  return weakToStrongObjectsMapTable;
}

- (void)removeDataCollectionObserver:(id)observer type:(id)type
{
  observerCopy = observer;
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataCollectionManager.m" lineNumber:341 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];

    if (observerCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDDataCollectionManager.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"observer != nil"}];

    goto LABEL_3;
  }

  if (!observerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"RemoveObserver"];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HDDataCollectionManager_removeDataCollectionObserver_type___block_invoke;
  block[3] = &unk_278616D68;
  block[4] = self;
  v17 = typeCopy;
  v18 = observerCopy;
  v19 = v9;
  v11 = v9;
  v12 = observerCopy;
  v13 = typeCopy;
  dispatch_async(queue, block);
}

void __61__HDDataCollectionManager_removeDataCollectionObserver_type___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [(HDDataCollectionManager *)*(a1 + 32) _queue_observerMapForType:?];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __61__HDDataCollectionManager_removeDataCollectionObserver_type___block_invoke_2;
  v27[3] = &unk_278613920;
  v5 = v2;
  v28 = v5;
  v29 = *(a1 + 48);
  [(HDDataCollectionManager *)v3 _queue_adjustDataCollectionForType:v4 block:v27];
  [*(a1 + 56) invalidate];
  v6 = *(a1 + 32);
  if (v6)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = *(v6 + 144);
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      v25 = *v35;
      v26 = v5;
      do
      {
        v11 = 0;
        do
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(v6 + 144) objectForKeyedSubscript:{*(*(&v34 + 1) + 8 * v11), v25}];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v13 = [v12 objectEnumerator];
          v14 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v31;
            while (2)
            {
              v17 = 0;
              do
              {
                if (*v31 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v30 + 1) + 8 * v17);
                if (v18 && ([*(v18 + 16) shouldTakeWorkoutDatabaseAssertion] & 1) != 0)
                {

                  v5 = v26;
                  goto LABEL_20;
                }

                ++v17;
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          ++v11;
          v10 = v25;
        }

        while (v11 != v9);
        v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
        v5 = v26;
      }

      while (v9);
    }

    os_unfair_lock_lock((v6 + 68));
    [*(v6 + 40) invalidate];
    v19 = *(v6 + 40);
    *(v6 + 40) = 0;

    WeakRetained = objc_loadWeakRetained((v6 + 136));
    v21 = [WeakRetained database];
    [v21 removeProtectedDataObserver:v6];

    os_unfair_lock_unlock((v6 + 68));
  }

LABEL_20:
  v22 = _Block_copy(*(*(a1 + 32) + 112));
  v23 = v22;
  if (v22)
  {
    (*(v22 + 2))(v22, *(a1 + 40));
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)removeDataCollectionObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataCollectionManager.m" lineNumber:380 description:{@"Invalid parameter not satisfying: %@", @"observer != nil"}];
  }

  v6 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"RemoveObserver"];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HDDataCollectionManager_removeDataCollectionObserver___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v12 = observerCopy;
  v13 = v6;
  v8 = v6;
  v9 = observerCopy;
  dispatch_async(queue, block);
}

uint64_t __56__HDDataCollectionManager_removeDataCollectionObserver___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 144) objectForKeyedSubscript:v7];
        v9 = [v8 objectForKey:*(a1 + 40)];

        if (v9)
        {
          v10 = *(a1 + 32);
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __56__HDDataCollectionManager_removeDataCollectionObserver___block_invoke_2;
          v13[3] = &unk_278613920;
          v14 = v8;
          v15 = *(a1 + 40);
          [(HDDataCollectionManager *)v10 _queue_adjustDataCollectionForType:v7 block:v13];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 48) invalidate];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __66__HDDataCollectionManager__dataCollectionObserver_didChangeState___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 144) objectForKeyedSubscript:v7];
        v9 = [v8 objectForKey:*(a1 + 40)];
        v10 = v9;
        if (v9)
        {
          v11 = *(a1 + 32);
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __66__HDDataCollectionManager__dataCollectionObserver_didChangeState___block_invoke_2;
          v14[3] = &unk_278613920;
          v15 = v9;
          v16 = *(a1 + 48);
          [(HDDataCollectionManager *)v11 _queue_adjustDataCollectionForType:v7 block:v14];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 56) invalidate];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void __66__HDDataCollectionManager__dataCollectionObserver_didChangeState___block_invoke_2(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, a2, *(a1 + 40), 16);
  }
}

- (void)requestAggregationThroughDate:(id)date types:(id)types mode:(int64_t)mode options:(unint64_t)options completion:(id)completion
{
  v117 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  typesCopy = types;
  completionCopy = completion;
  v45 = typesCopy;
  if ([typesCopy count])
  {
    v52 = dateCopy;
    v44 = typesCopy;
    v42 = completionCopy;
    v12 = completionCopy;
    if (self)
    {
      v13 = MEMORY[0x277CCC298];
      v14 = *MEMORY[0x277CCC298];
      v15 = _HKLogSignpostIDGenerate();
      _HKInitializeLogging();
      v16 = *v13;
      if (os_signpost_enabled(v16))
      {
        v17 = v16;
        v18 = v17;
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
        {
          *buf = 138543874;
          v106 = v52;
          v107 = 2048;
          v108 = [v44 count];
          v109 = 2048;
          modeCopy = mode;
          _os_signpost_emit_with_name_impl(&dword_228986000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v15, "aggregation-request", "date=%{public}@, types=%ld, mode=%ld", buf, 0x20u);
        }
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __88__HDDataCollectionManager__requestAggregationThroughDate_types_mode_options_completion___block_invoke;
      aBlock[3] = &unk_27862CDB8;
      v69 = v12;
      v70 = v15;
      v43 = _Block_copy(aBlock);
      dispatch_assert_queue_not_V2(self->_queue);
      v66[0] = 0;
      v66[1] = v66;
      v66[2] = 0x2020000000;
      v67 = 1;
      v64[0] = 0;
      v64[1] = v64;
      v64[2] = 0x3032000000;
      v64[3] = __Block_byref_object_copy__186;
      v64[4] = __Block_byref_object_dispose__186;
      v65 = 0;
      v19 = dispatch_group_create();
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      obj = v44;
      v20 = [obj countByEnumeratingWithState:&v60 objects:buf count:16];
      if (v20)
      {
        v48 = *v61;
        do
        {
          v50 = v20;
          for (i = 0; i != v50; ++i)
          {
            if (*v61 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v60 + 1) + 8 * i);
            dispatch_group_enter(v19);
            v53[0] = MEMORY[0x277D85DD0];
            v53[1] = 3221225472;
            v54 = __88__HDDataCollectionManager__requestAggregationThroughDate_types_mode_options_completion___block_invoke_370;
            v55 = &unk_27862CE08;
            selfCopy = self;
            v58 = v66;
            v59 = v64;
            v57 = v19;
            v23 = v52;
            v24 = v22;
            v25 = v53;
            dispatch_assert_queue_not_V2(self->_queue);
            Current = CFAbsoluteTimeGetCurrent();
            v99 = 0;
            v100 = &v99;
            v101 = 0x3032000000;
            v102 = __Block_byref_object_copy__186;
            v103 = __Block_byref_object_dispose__186;
            v104 = 0;
            v93 = 0;
            v94 = &v93;
            v95 = 0x3032000000;
            v96 = __Block_byref_object_copy__186;
            v97 = __Block_byref_object_dispose__186;
            v98 = 0;
            v89 = 0;
            v90 = &v89;
            v91 = 0x2020000000;
            v92 = 0;
            queue = self->_queue;
            block = MEMORY[0x277D85DD0];
            v79 = 3221225472;
            v80 = __87__HDDataCollectionManager__requestAggregationThroughDate_type_mode_options_completion___block_invoke;
            v81 = &unk_27862CE58;
            selfCopy3 = self;
            v84 = &v99;
            v28 = v24;
            v83 = v28;
            v85 = &v93;
            v88 = Current;
            optionsCopy = options;
            v86 = &v89;
            dispatch_sync(queue, &block);
            if (v90[3])
            {
              v29 = *MEMORY[0x277CCC298];
              v30 = _HKLogSignpostIDGenerate();
              _HKInitializeLogging();
              v31 = *MEMORY[0x277CCC298];
              if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
              {
                v32 = v31;
                if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                {
                  v33 = HDDataAggregationRequestModeToString(mode);
                  *v111 = 138543874;
                  v112 = v33;
                  v113 = 2114;
                  v114 = v28;
                  v115 = 2114;
                  modeCopy2 = v52;
                  _os_log_impl(&dword_228986000, v32, OS_LOG_TYPE_INFO, "Requesting %{public}@ aggregation of type %{public}@ through %{public}@", v111, 0x20u);
                }
              }

              _HKInitializeLogging();
              v34 = *MEMORY[0x277CCC298];
              if (os_signpost_enabled(*MEMORY[0x277CCC298]))
              {
                v35 = v34;
                v36 = v35;
                if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
                {
                  *v111 = 138543874;
                  v112 = v52;
                  v113 = 2114;
                  v114 = v28;
                  v115 = 2048;
                  modeCopy2 = mode;
                  _os_signpost_emit_with_name_impl(&dword_228986000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v30, "aggregation-request-single", "date=%{public}@, type=%{public}@, mode=%ld", v111, 0x20u);
                }
              }

              v71[0] = MEMORY[0x277D85DD0];
              v71[1] = 3221225472;
              v71[2] = __87__HDDataCollectionManager__requestAggregationThroughDate_type_mode_options_completion___block_invoke_371;
              v71[3] = &unk_27862CE80;
              v75 = v30;
              v76 = Current;
              modeCopy3 = mode;
              v72 = v28;
              v37 = v23;
              v73 = v37;
              v74 = v25;
              v25 = _Block_copy(v71);
              v38 = v100[5];
              if (v38)
              {
                [v38 updateHistoricalDataForcedUpdate:1 completion:v25];
              }

              else
              {
                v39 = v94[5];
                if (v39)
                {
                  [v39 requestAggregationThroughDate:v37 mode:mode options:options completion:v25];
                }

                else
                {
                  (v25[2])(v25, 1, 0);
                }
              }
            }

            else
            {
              v54(v25, 1, 0);
            }

            _Block_object_dispose(&v89, 8);
            _Block_object_dispose(&v93, 8);

            _Block_object_dispose(&v99, 8);
          }

          v20 = [obj countByEnumeratingWithState:&v60 objects:buf count:16];
        }

        while (v20);
      }

      v40 = self->_queue;
      block = MEMORY[0x277D85DD0];
      v79 = 3221225472;
      v80 = __88__HDDataCollectionManager__requestAggregationThroughDate_types_mode_options_completion___block_invoke_3;
      v81 = &unk_27862CE30;
      v84 = v66;
      selfCopy3 = self;
      v12 = v43;
      v83 = v12;
      v85 = v64;
      dispatch_group_notify(v19, v40, &block);

      _Block_object_dispose(v64, 8);
      _Block_object_dispose(v66, 8);
    }

    completionCopy = v42;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __88__HDDataCollectionManager__requestAggregationThroughDate_types_mode_options_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC298];
  if (os_signpost_enabled(*MEMORY[0x277CCC298]))
  {
    v7 = v6;
    v8 = v7;
    v9 = *(a1 + 40);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = "no";
      if (a2)
      {
        v10 = "YES";
      }

      v12 = 136446210;
      v13 = v10;
      _os_signpost_emit_with_name_impl(&dword_228986000, v8, OS_SIGNPOST_INTERVAL_END, v9, "aggregation-request", "success=%{public}s", &v12, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void __88__HDDataCollectionManager__requestAggregationThroughDate_types_mode_options_completion___block_invoke_370(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 152);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__HDDataCollectionManager__requestAggregationThroughDate_types_mode_options_completion___block_invoke_2;
  block[3] = &unk_27862CDE0;
  v14 = a2;
  v13 = *(a1 + 56);
  v11 = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v8 = v5;
  dispatch_async(v6, block);
}

void __88__HDDataCollectionManager__requestAggregationThroughDate_types_mode_options_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  if (*(v2 + 24) == 1)
  {
    v3 = *(a1 + 64);
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 24) = v3 & 1;
  v4 = *(*(a1 + 56) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (!v7)
  {
    v6 = *(a1 + 32);
  }

  objc_storeStrong(v5, v6);
  v8 = *(a1 + 40);

  dispatch_group_leave(v8);
}

uint64_t __88__HDDataCollectionManager__requestAggregationThroughDate_types_mode_options_completion___block_invoke_3(void *a1)
{
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    [*(a1[4] + 32) setDatabaseAssertion:*(a1[4] + 40)];
    v2 = a1[5];
    v3 = *(a1[4] + 32);

    return [v3 flushPendingWriteQueueWithCompletion:v2];
  }

  else
  {
    v5 = a1[5];
    v6 = *(*(a1[7] + 8) + 40);
    v7 = *(a1[5] + 16);

    return v7();
  }
}

void __87__HDDataCollectionManager__requestAggregationThroughDate_type_mode_options_completion___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 64));
  v2 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  os_unfair_lock_unlock((*(a1 + 32) + 64));
  v5 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:*(a1 + 40)];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  if ((v8 & 1) != 0 || v9 - v12 > 5.0)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(a1 + 80)];
    [*(*(a1 + 32) + 96) setObject:v13 forKeyedSubscript:*(a1 + 40)];
  }
}

void __87__HDDataCollectionManager__requestAggregationThroughDate_type_mode_options_completion___block_invoke_371(uint64_t a1, int a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = MEMORY[0x277CCC298];
  v7 = *MEMORY[0x277CCC298];
  if (os_signpost_enabled(*MEMORY[0x277CCC298]))
  {
    v8 = v7;
    v9 = v8;
    v10 = *(a1 + 56);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v11 = "no";
      if (a2)
      {
        v11 = "YES";
      }

      v24 = 136446210;
      v25 = v11;
      _os_signpost_emit_with_name_impl(&dword_228986000, v9, OS_SIGNPOST_INTERVAL_END, v10, "aggregation-request-single", "success=%{public}s", &v24, 0xCu);
    }
  }

  v12 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
  _HKInitializeLogging();
  v13 = *v6;
  v14 = *v6;
  if (!a2)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v21 = *(a1 + 72);
    v16 = v13;
    v17 = HDDataAggregationRequestModeToString(v21);
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = 138544386;
    v25 = v17;
    v26 = 2114;
    v27 = v22;
    v28 = 2114;
    v29 = v23;
    v30 = 2048;
    v31 = v12;
    v32 = 2114;
    v33 = v5;
    _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Failed to complete %{public}@ aggregation of type %{public}@ through %{public}@ in %0.2lfs: %{public}@", &v24, 0x34u);
    goto LABEL_11;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 72);
    v16 = v13;
    v17 = HDDataAggregationRequestModeToString(v15);
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v24 = 138544130;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    v28 = 2114;
    v29 = v19;
    v30 = 2048;
    v31 = v12;
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_INFO, "Finished %{public}@ aggregation of type %{public}@ through %{public}@ in %0.2lfs", &v24, 0x2Au);
LABEL_11:
  }

LABEL_13:
  (*(*(a1 + 48) + 16))();

  v20 = *MEMORY[0x277D85DE8];
}

- (id)takeCollectionAssertionWithOwnerIdentifier:(id)identifier sampleTypes:(id)types observerState:(id)state collectionInterval:(double)interval
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  typesCopy = types;
  stateCopy = state;
  v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(typesCopy, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = typesCopy;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [MEMORY[0x277CCABB0] numberWithDouble:interval];
        [v12 setObject:v19 forKeyedSubscript:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v20 = [(HDDataCollectionManager *)self takeCollectionAssertionWithOwnerIdentifier:identifierCopy collectionIntervalsByType:v12 observerState:stateCopy];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)takeCollectionAssertionWithOwnerIdentifier:(id)identifier collectionIntervalsByType:(id)type observerState:(id)state
{
  v57 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  typeCopy = type;
  stateCopy = state;
  v11 = MEMORY[0x277CBEB98];
  allKeys = [typeCopy allKeys];
  v13 = [v11 setWithArray:allKeys];

  collectibleTypes = [(HDDataCollectionManager *)self collectibleTypes];
  v15 = [v13 intersectsSet:collectibleTypes];

  if (v15)
  {
    v16 = [HDDataCollectionAssertion alloc];
    v17 = v13;
    v18 = stateCopy;
    selfCopy = self;
    v46 = identifierCopy;
    if (v16)
    {
      *v51 = v16;
      *&v51[8] = HDDataCollectionAssertion;
      v20 = objc_msgSendSuper2(v51, sel_initWithAssertionIdentifier_ownerIdentifier_, @"HDDataCollectionAssertionIdentifier", identifierCopy);
      if (v20)
      {
        v21 = [v17 copy];
        v22 = *(v20 + 13);
        *(v20 + 13) = v21;

        v23 = [v18 copy];
        v24 = *(v20 + 12);
        *(v20 + 12) = v23;

        objc_storeWeak(v20 + 15, selfCopy);
        *(v20 + 22) = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v45 = v17;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_profile);
    sessionAssertionManager = [WeakRetained sessionAssertionManager];
    v27 = [sessionAssertionManager takeAssertion:v20];

    if (v27)
    {
      v43 = stateCopy;
      v44 = typeCopy;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v28 = typeCopy;
      v29 = [v28 countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v48;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v48 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v47 + 1) + 8 * i);
            v34 = [v28 objectForKeyedSubscript:{v33, v43, v44}];
            [v34 doubleValue];
            [(HDDataCollectionManager *)selfCopy addDataCollectionObserver:v20 type:v33 collectionInterval:v18 state:?];
          }

          v30 = [v28 countByEnumeratingWithState:&v47 objects:v56 count:16];
        }

        while (v30);
      }

      _HKInitializeLogging();
      v35 = *MEMORY[0x277CCC298];
      identifierCopy = v46;
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
      {
        v36 = v35;
        allObjects = [v45 allObjects];
        v38 = [allObjects componentsJoinedByString:{@", "}];
        *v51 = 138544130;
        *&v51[4] = selfCopy;
        *&v51[12] = 2114;
        *&v51[14] = v46;
        v52 = 2114;
        v53 = v18;
        v54 = 2114;
        v55 = v38;
        _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: Taking collection assertion for %{public}@ with state %{public}@ for (%{public}@)", v51, 0x2Au);
      }

      v39 = v20;
      stateCopy = v43;
      typeCopy = v44;
    }

    else
    {
      _HKInitializeLogging();
      v40 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
      {
        *v51 = 138543618;
        *&v51[4] = identifierCopy;
        *&v51[12] = 2114;
        *&v51[14] = v45;
        _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, "Failed to take collection assertion for %{public}@ for %{public}@", v51, 0x16u);
      }

      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];

  return v39;
}

- (id)collectibleTypes
{
  v19[3] = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_lock((self + 64));
    v2 = *(self + 120);
    if (!v2)
    {
      WeakRetained = objc_loadWeakRetained((self + 136));
      daemon = [WeakRetained daemon];
      behavior = [daemon behavior];
      [behavior isRunningStoreDemoMode];
      v6 = HKAllCollectibleTypesWithStoreDemoModeEnabled();
      v7 = *(self + 120);
      *(self + 120) = v6;

      v8 = objc_alloc(MEMORY[0x277CBEB98]);
      v9 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB38]];
      v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:{*MEMORY[0x277CCCC78], v9}];
      v19[1] = v10;
      v11 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
      v19[2] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
      v13 = [v8 initWithArray:v12];

      v14 = [*(self + 120) setByAddingObjectsFromSet:v13];
      v15 = *(self + 120);
      *(self + 120) = v14;

      v2 = *(self + 120);
    }

    v16 = v2;
    os_unfair_lock_unlock((self + 64));
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated
{
  v25 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(self->_assertionQueue);
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ownerIdentifier = [invalidatedCopy ownerIdentifier];
    if (invalidatedCopy)
    {
      v8 = invalidatedCopy[13];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    allObjects = [v9 allObjects];
    v11 = [allObjects componentsJoinedByString:{@", "}];
    *buf = 138543874;
    selfCopy = self;
    v21 = 2114;
    v22 = ownerIdentifier;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidating collection assertion for %{public}@ for (%{public}@)", buf, 0x20u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  if (invalidatedCopy)
  {
    v13 = invalidatedCopy[13];
  }

  else
  {
    v13 = 0;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__HDDataCollectionManager_assertionManager_assertionInvalidated___block_invoke;
  v16[3] = &unk_278616020;
  v17 = invalidatedCopy;
  selfCopy2 = self;
  v14 = invalidatedCopy;
  [(HDDataCollectionManager *)self requestAggregationThroughDate:date types:v13 mode:0 options:0 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __65__HDDataCollectionManager_assertionManager_assertionInvalidated___block_invoke(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC298];
  v7 = *MEMORY[0x277CCC298];
  if (a2)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = *(v8 + 104);
    }

    *buf = 138543362;
    v24 = v8;
    v9 = v6;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "Completed aggregation of types %{public}@ after assertion invalidation.", buf, 0xCu);
    goto LABEL_6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 32);
    if (v17)
    {
      v17 = *(v17 + 104);
    }

    *buf = 138543618;
    v24 = v17;
    v25 = 2114;
    v26 = v5;
    v9 = v6;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "Failed to aggregate to current time for types %{public}@ after assertion invalidation: %{public}@", buf, 0x16u);
LABEL_6:
  }

LABEL_8:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = v10[13];
  }

  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v11);
        }

        [*(a1 + 40) removeDataCollectionObserver:*(a1 + 32) type:{*(*(&v18 + 1) + 8 * v15++), v18}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_queue_collectionStateForType:(void *)type
{
  v59 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if (a2)
  {
    dispatch_assert_queue_V2(*(a2 + 152));
    v6 = *(a2 + 152);
    v7 = typeCopy;
    dispatch_assert_queue_V2(v6);
    [v7 code];
    HKDefaultAggregationIntervalForType();
    v9 = v8;
    [v7 code];
    HKDefaultCollectionLatencyForType();
    v11 = v10;
    [v7 code];

    HKDefaultMaximumSeriesDurationForType();
    v13 = v12;
    *(self + 24) = 0;
    *self = v9;
    *(self + 8) = v11;
    *(self + 16) = v12;
    v50 = (self + 24);
    *(self + 24) = 0;
    *(self + 28) = 0;
    [v7 code];
    HKDefaultMaximumSeriesDurationForType();
    v15 = v14;
    v16 = [(HDDataCollectionManager *)a2 _queue_observerMapForType:v7];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [v16 objectEnumerator];
    v51 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v51)
    {
      v45 = v16;
      selfCopy = self;
      v47 = typeCopy;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v49 = *v55;
      v21 = *MEMORY[0x277CCBBD8];
      if (v15 <= 0.0)
      {
        v15 = *MEMORY[0x277CCBBD8];
      }

      do
      {
        v22 = 0;
        do
        {
          if (*v55 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v54 + 1) + 8 * v22);
          if (v23)
          {
            v24 = *(v23 + 24);
            v25 = *(v23 + 16);
          }

          else
          {
            v25 = 0;
            v24 = 0.0;
          }

          v26 = v25;
          isInForeground = [v26 isInForeground];
          if (v23)
          {
            v27 = *(v23 + 16);
          }

          else
          {
            v27 = 0;
          }

          v28 = v27;
          hasRunningWorkout = [v28 hasRunningWorkout];
          if (v23)
          {
            v29 = *(v23 + 16);
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;
          hasBackgroundObserver = [v30 hasBackgroundObserver];
          if (v23)
          {
            v32 = *(v23 + 16);
          }

          else
          {
            v32 = 0;
          }

          shouldTakeWorkoutDatabaseAssertion = [v32 shouldTakeWorkoutDatabaseAssertion];

          if (v9 > 0.0)
          {
            v34 = v9;
          }

          else
          {
            v34 = v21;
          }

          if (v24 > 0.0)
          {
            v35 = v24;
          }

          else
          {
            v35 = v21;
          }

          if (v34 >= v35)
          {
            v9 = v35;
          }

          else
          {
            v9 = v34;
          }

          if (v11 > 0.0)
          {
            v36 = v11;
          }

          else
          {
            v36 = v21;
          }

          if (v36 >= v35)
          {
            v11 = v35;
          }

          else
          {
            v11 = v36;
          }

          if (v13 > 0.0)
          {
            v37 = v13;
          }

          else
          {
            v37 = v21;
          }

          if (v37 >= v15)
          {
            v13 = v15;
          }

          else
          {
            v13 = v37;
          }

          v20 |= isInForeground;
          v38 = 257;
          if ((v20 & 1) == 0)
          {
            v38 = 1;
          }

          v19 |= hasRunningWorkout;
          v39 = 0x10000;
          if ((v19 & 1) == 0)
          {
            v39 = 0;
          }

          v40 = v39 | v38;
          v18 |= hasBackgroundObserver;
          v41 = 0x1000000;
          if ((v18 & 1) == 0)
          {
            v41 = 0;
          }

          v17 |= shouldTakeWorkoutDatabaseAssertion;
          v42 = 0x100000000;
          if ((v17 & 1) == 0)
          {
            v42 = 0;
          }

          *v50 = v42 | v41 | v40;
          ++v22;
        }

        while (v51 != v22);
        v43 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
        v51 = v43;
      }

      while (v43);
      typeCopy = v47;
      *selfCopy = v9;
      selfCopy[1] = v11;
      selfCopy[2] = v13;
      v16 = v45;
    }
  }

  else
  {
    *self = 0u;
    *(self + 16) = 0u;
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (id)_dataAggregatorConfigurationForCollectorState:(void *)state
{
  if (state)
  {
    state = [HDDataAggregatorConfiguration configurationWithLatency:*(a2 + 26) interval:*(a2 + 25) seriesDuration:*(a2 + 27) activeWorkout:*(a2 + 8) foregroundObserver:*a2 backgroundObserver:*(a2 + 16)];
    v2 = vars8;
  }

  return state;
}

- (void)_setAggregatorConfigurationChangeHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HDDataCollectionManager__setAggregatorConfigurationChangeHandler___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
}

void __68__HDDataCollectionManager__setAggregatorConfigurationChangeHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;

  if (*(a1 + 40))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = *(*(a1 + 32) + 144);
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * v9);
          v15 = 0u;
          v16 = 0u;
          [(HDDataCollectionManager *)&v15 _queue_collectionStateForType:v10];
          v11 = *(a1 + 32);
          v14[0] = v15;
          v14[1] = v16;
          v12 = [(HDDataCollectionManager *)v11 _dataAggregatorConfigurationForCollectorState:v14];
          (*(*(a1 + 40) + 16))();

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setObserverRemovedHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HDDataCollectionManager__setObserverRemovedHandler___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
}

uint64_t __54__HDDataCollectionManager__setObserverRemovedHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)_queue_addDataCollector:(uint64_t)collector
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (collector)
  {
    dispatch_assert_queue_V2(*(collector + 152));
    _HKInitializeLogging();
    v4 = MEMORY[0x277CCC298];
    v5 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
    {
      LODWORD(v12) = 138412290;
      *(&v12 + 4) = v3;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_INFO, "Adding data collector: %@", &v12, 0xCu);
    }

    observedType = [objc_opt_class() observedType];
    os_unfair_lock_lock((collector + 64));
    v7 = [*(collector + 80) objectForKeyedSubscript:observedType];

    if (v7)
    {
      _HKInitializeLogging();
      v8 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v12) = 138543362;
        *(&v12 + 4) = observedType;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "Data collector already exists for type %{public}@", &v12, 0xCu);
      }
    }

    else
    {
      v9 = *(collector + 80);
      observedType2 = [objc_opt_class() observedType];
      [v9 setObject:v3 forKey:observedType2];
    }

    os_unfair_lock_unlock((collector + 64));
    v12 = 0u;
    v13 = 0u;
    [(HDDataCollectionManager *)&v12 _queue_collectionStateForType:collector, observedType];
    if (BYTE8(v13) == 1)
    {
      [v3 collectionStartedForType:observedType collectionInterval:*&v12];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_dataCollectorBlacklist
{
  if (qword_280D67E28 != -1)
  {
    dispatch_once(&qword_280D67E28, &__block_literal_global_412);
  }

  v1 = _MergedGlobals_6_0;

  return v1;
}

void __68__HDDataCollectionManager__queue_setupUnprotectedDataDependantState__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(WeakRetained + 19));
    v1 = [WeakRetained hasAccessToFitnessData];
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      v3 = @"NOT ";
      if (v1)
      {
        v3 = &stru_283BF39C8;
      }

      *buf = 138412290;
      v18 = v3;
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "Access to fitness data %@granted.", buf, 0xCu);
    }

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"HDDataCollectionAccessToFitnessDataDidChangeNotification" object:0];

    os_unfair_lock_lock(WeakRetained + 16);
    v5 = [*(WeakRetained + 10) allValues];
    os_unfair_lock_unlock(WeakRetained + 16);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:buf count:16];
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

          [*(*(&v13 + 1) + 8 * i) setDisabled:v1 ^ 1u];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:buf count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __50__HDDataCollectionManager__dataCollectorBlacklist__block_invoke()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"HDDataCollectionDisableExerciseTime"];

  if (v1)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      v3 = MEMORY[0x277CBEBD0];
      v4 = v2;
      v5 = [v3 standardUserDefaults];
      v6 = [v5 valueForKey:@"HDDataCollectionDisableExerciseTime"];
      v14 = 138543618;
      v15 = @"HDDataCollectionDisableExerciseTime";
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "Exercise time data collection disabled because defaults key '%{public}@' is %{public}@", &v14, 0x16u);
    }

    v7 = [MEMORY[0x277CBEBF8] arrayByAddingObject:@"_NLAppleExerciseTimeDataCollector"];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [v8 stringArrayForKey:*MEMORY[0x277CCBC08]];

  if (v9)
  {
    v10 = [v9 hk_filter:&__block_literal_global_420];
    v11 = [v7 arrayByAddingObjectsFromArray:v10];

    v7 = v11;
  }

  v12 = _MergedGlobals_6_0;
  _MergedGlobals_6_0 = v7;

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __50__HDDataCollectionManager__dataCollectorBlacklist__block_invoke_417(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __48__HDDataCollectionManager__pluginDataCollectors__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [*(a1 + 32) containsObject:v3];
  if (v4)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v3;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "Dropping blacklisted data collector: %{public}@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 ^ 1u;
}

- (HDAssertion)databaseAssertion
{
  os_unfair_lock_lock(&self->_dbAssertionLock);
  v3 = self->_databaseAssertion;
  os_unfair_lock_unlock(&self->_dbAssertionLock);

  return v3;
}

- (BOOL)sensorDataArrayReceived:(id)received deviceEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  if (entityCopy)
  {
    receivedCopy = received;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    dataProvenanceManager = [WeakRetained dataProvenanceManager];
    defaultLocalDataProvenance = [dataProvenanceManager defaultLocalDataProvenanceWithDeviceEntity:entityCopy];
  }

  else
  {
    receivedCopy2 = received;
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "sensorDataArrayReceived without device.", v24, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    dataProvenanceManager = [WeakRetained dataProvenanceManager];
    defaultLocalDataProvenance = [dataProvenanceManager defaultLocalDataProvenance];
  }

  v15 = defaultLocalDataProvenance;

  receivedCopy3 = received;
  v17 = v15;
  if (self)
  {
    os_unfair_lock_assert_not_owner(&self->_collectorLock);
    os_unfair_lock_lock(&self->_collectorLock);
    configuration = [(HDFakeDataCollector *)self->_fakeCollector configuration];

    os_unfair_lock_unlock(&self->_collectorLock);
    v19 = receivedCopy3;
    if (configuration && ([receivedCopy3 hk_filter:&__block_literal_global_476], v19 = objc_claimAutoreleasedReturnValue(), receivedCopy3, !objc_msgSend(v19, "count")))
    {
      v22 = 1;
    }

    else
    {
      v20 = objc_loadWeakRetained(&self->_profile);
      dataManager = [v20 dataManager];
      v22 = [dataManager insertDataObjects:v19 withProvenance:v17 creationDate:error error:CFAbsoluteTimeGetCurrent()];
    }
  }

  else
  {
    v22 = 0;
    v19 = receivedCopy3;
  }

  return v22;
}

BOOL __69__HDDataCollectionManager__dataReceived_provenance_isDemoData_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [v2 objectForKeyedSubscript:@"HKFakedData"];
  v4 = v3 != 0;

  return v4;
}

- (void)_collectorLock_setupFakeCollector
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 64));
    v2 = (self + 88);
    if (!*(self + 88))
    {
      v3 = [HDFakeDataCollector alloc];
      profile = [self profile];
      v5 = [(HDFakeDataCollector *)v3 initWithProfile:profile];

      objc_storeStrong(v2, v5);
      v6 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__HDDataCollectionManager__collectorLock_setupFakeCollector__block_invoke;
      block[3] = &unk_278613968;
      v9 = v5;
      v7 = v5;
      dispatch_async(v6, block);
    }
  }
}

- (void)startFakingDataWithActivityType:(int64_t)type speed:(id)speed
{
  speedCopy = speed;
  os_unfair_lock_lock(&self->_collectorLock);
  [(HDDataCollectionManager *)self _collectorLock_setupFakeCollector];
  v7 = objc_alloc_init(HDFakeDataCollectorConfiguration);
  [(HDFakeDataCollectorConfiguration *)v7 setActivityType:type];
  [(HDFakeDataCollectorConfiguration *)v7 setSpeed:speedCopy];

  [(HDFakeDataCollector *)self->_fakeCollector setConfiguration:v7];
  os_unfair_lock_unlock(&self->_collectorLock);
}

- (void)startFakingWithHKWorkoutActivityType:(unint64_t)type
{
  os_unfair_lock_lock(&self->_collectorLock);
  [(HDDataCollectionManager *)self _collectorLock_setupFakeCollector];
  v5 = [HDFakeDataCollectorConfiguration configurationForWorkoutActivityType:type];
  [(HDFakeDataCollector *)self->_fakeCollector setConfiguration:v5];

  os_unfair_lock_unlock(&self->_collectorLock);
}

- (void)stopFakingData
{
  os_unfair_lock_lock(&self->_collectorLock);
  [(HDFakeDataCollector *)self->_fakeCollector setConfiguration:0];
  fakeCollector = self->_fakeCollector;
  self->_fakeCollector = 0;

  [(HDFakeDataCollector *)self->_fakeCollector unregisterFromAggregators];

  os_unfair_lock_unlock(&self->_collectorLock);
}

- (void)generateFakeDataForActivityType:(int64_t)type startDate:(id)date seconds:(double)seconds completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  completionCopy = completion;
  v12 = [HDFakeDataCollector alloc];
  profile = [(HDDataCollectionManager *)self profile];
  v14 = [(HDFakeDataCollector *)v12 initWithProfile:profile];

  [(HDFakeDataCollector *)v14 registerWithAggregators];
  v15 = [HDDataCollectionObserverState dataCollectionObserverStateInForeground:1 hasRunningWorkout:1 hasBackgroundObserver:0 shouldTakeWorkoutDatabaseAssertion:1];
  v16 = +[HDFakeDataCollector collectedTypes];
  v17 = [(HDDataCollectionManager *)self takeCollectionAssertionWithOwnerIdentifier:@"Faking" sampleTypes:v16 observerState:v15 collectionInterval:1.0];

  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    typeCopy = type;
    v37 = 2048;
    secondsCopy = seconds;
    _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_INFO, "generating fake data for activity type %ld with duration: %lf", buf, 0x16u);
  }

  v19 = objc_alloc_init(HDFakeDataCollectorConfiguration);
  [(HDFakeDataCollectorConfiguration *)v19 setActivityType:type];
  v20 = MEMORY[0x277CCD7E8];
  v21 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
  v22 = [v20 quantityWithUnit:v21 doubleValue:5.0];
  [(HDFakeDataCollectorConfiguration *)v19 setSpeed:v22];

  if (dateCopy)
  {
    date = dateCopy;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v24 = date;
  v25 = [date dateByAddingTimeInterval:seconds];
  [(HDFakeDataCollector *)v14 generateForConfiguration:v19 from:v24 to:v25];
  v26 = +[HDFakeDataCollector collectedTypes];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __88__HDDataCollectionManager_generateFakeDataForActivityType_startDate_seconds_completion___block_invoke;
  v31[3] = &unk_27861AA30;
  v33 = v14;
  v34 = completionCopy;
  v32 = v17;
  v27 = v14;
  v28 = completionCopy;
  v29 = v17;
  [(HDDataCollectionManager *)self requestAggregationThroughDate:v25 types:v26 mode:0 options:2 completion:v31];

  v30 = *MEMORY[0x277D85DE8];
}

void __88__HDDataCollectionManager_generateFakeDataForActivityType_startDate_seconds_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  [*(a1 + 32) invalidate];
  v5 = *(a1 + 48);
  if (a2)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "datumCount")}];
    (*(v5 + 16))(v5, v6, 0);
  }

  else
  {
    (*(v5 + 16))(*(a1 + 48), 0, v7);
  }
}

- (void)startDataCollectionForType:(id)type observer:(id)observer collectionInterval:(double)interval
{
  if (type)
  {
    observerCopy = observer;
    typeCopy = type;
    v10 = [HDDataCollectionObserverState dataCollectionObserverStateInForeground:1 hasRunningWorkout:0 hasBackgroundObserver:0 shouldTakeWorkoutDatabaseAssertion:0];
    [(HDDataCollectionManager *)self addDataCollectionObserver:observerCopy type:typeCopy collectionInterval:v10 state:interval];
  }
}

- (void)stopDataCollectionForType:(id)type observer:(id)observer
{
  if (type)
  {
    [(HDDataCollectionManager *)self removeDataCollectionObserver:observer type:type];
  }
}

- (void)addDataCollector:(id)collector
{
  collectorCopy = collector;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HDDataCollectionManager_addDataCollector___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = collectorCopy;
  v6 = collectorCopy;
  dispatch_async(queue, v7);
}

- (void)unitTest_setAggregator:(id)aggregator forType:(id)type
{
  aggregatorCopy = aggregator;
  typeCopy = type;
  [(HDDataCollectionManager *)self unitTest_addCollectibleType:typeCopy];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HDDataCollectionManager_unitTest_setAggregator_forType___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v12 = typeCopy;
  v13 = aggregatorCopy;
  v9 = aggregatorCopy;
  v10 = typeCopy;
  dispatch_sync(queue, block);
}

- (id)unitTest_dataAggregatorConfigurationForType:(id)type
{
  typeCopy = type;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__186;
  v16 = __Block_byref_object_dispose__186;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HDDataCollectionManager_unitTest_dataAggregatorConfigurationForType___block_invoke;
  block[3] = &unk_27862CED0;
  block[4] = self;
  v10 = typeCopy;
  v11 = &v12;
  v6 = typeCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __71__HDDataCollectionManager_unitTest_dataAggregatorConfigurationForType___block_invoke(uint64_t a1)
{
  memset(v6, 0, sizeof(v6));
  [(HDDataCollectionManager *)v6 _queue_collectionStateForType:*(a1 + 40)];
  v2 = [(HDDataCollectionManager *)*(a1 + 32) _dataAggregatorConfigurationForCollectorState:v6];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)unitTest_setPendingSaveCoalescingInterval:(double)interval
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__HDDataCollectionManager_unitTest_setPendingSaveCoalescingInterval___block_invoke;
  v4[3] = &unk_2786138F8;
  v4[4] = self;
  *&v4[5] = interval;
  dispatch_sync(queue, v4);
}

uint64_t __69__HDDataCollectionManager_unitTest_setPendingSaveCoalescingInterval___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 48) = *(a1 + 40);
  *(*(a1 + 32) + 56) = 1;
  return [*(*(a1 + 32) + 32) setQuota:0];
}

- (void)unitTest_addCollectibleType:(id)type
{
  typeCopy = type;
  [(HDDataCollectionManager *)self collectibleTypes];

  os_unfair_lock_lock(&self->_collectorLock);
  v5 = [(NSSet *)self->_collectibleTypes setByAddingObject:typeCopy];

  collectibleTypes = self->_collectibleTypes;
  self->_collectibleTypes = v5;

  os_unfair_lock_unlock(&self->_collectorLock);
}

- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria
{
  xdict = criteria;
  profile = [(HDDataCollectionManager *)self profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];
  isAppleWatch = [behavior isAppleWatch];

  if (isAppleWatch)
  {
    xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D863B0], 1);
    v9 = MEMORY[0x277D86350];
    v10 = 120.0;
  }

  else
  {
    v9 = MEMORY[0x277D86348];
    v10 = 1200.0;
  }

  xpc_dictionary_set_string(xdict, *MEMORY[0x277D86340], *v9);
  xpc_dictionary_set_double(xdict, *MEMORY[0x277D86270], v10);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86338], 1);
}

- (void)performPeriodicActivity:(id)activity completion:(id)completion
{
  completionCopy = completion;
  [(HDDataCollectionManager *)self periodicUpdate];
  (*(completionCopy + 2))(completionCopy, 0, 0, 0.0);
}

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__HDDataCollectionManager_profileDidBecomeReady___block_invoke;
  v12[3] = &unk_278613968;
  v12[4] = self;
  [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v12];

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  hRCoordinator = [features HRCoordinator];

  if ((hRCoordinator & 1) == 0)
  {
    v10 = self->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__HDDataCollectionManager_profileDidBecomeReady___block_invoke_2;
    v11[3] = &unk_278613968;
    v11[4] = self;
    dispatch_async(v10, v11);
  }
}

void __49__HDDataCollectionManager_profileDidBecomeReady___block_invoke(uint64_t a1)
{
  v103 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (!v1)
  {
    goto LABEL_76;
  }

  dispatch_assert_queue_V2(*(v1 + 152));
  os_unfair_lock_lock((v1 + 64));
  if (!*(v1 + 72) || ([MEMORY[0x277CCA890] currentHandler], v83 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v83, "handleFailureInMethod:object:file:lineNumber:description:", sel__queue_createBuiltinCollectors, v1, @"HDDataCollectionManager.m", 916, @"%s must only be called once.", "-[HDDataCollectionManager _queue_createBuiltinCollectors]"), v83, !*(v1 + 72)))
  {
    WeakRetained = objc_loadWeakRetained((v1 + 136));
    v3 = [WeakRetained daemon];
    v4 = [v3 behavior];
    v5 = [v4 collectsData];

    if ((v5 & 1) == 0)
    {
      os_unfair_lock_unlock((v1 + 64));
      _HKInitializeLogging();
      v36 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_DEFAULT, "Data collection disabled; not starting built-in collectors.", buf, 2u);
      }

      goto LABEL_39;
    }

    v6 = [HDDataCollectionManager _dataCollectorBlacklist];
    if ([v6 count])
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [v6 componentsJoinedByString:{@", "}];
        *buf = 138543362;
        v98 = v9;
        _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "Filtering built-in data collector creation through blacklist: %{public}@", buf, 0xCu);
      }
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = *(v1 + 72);
    *(v1 + 72) = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v6 containsObject:v13];

    if ((v14 & 1) == 0)
    {
      v15 = [HDPedometerDataCollector alloc];
      v16 = objc_loadWeakRetained((v1 + 136));
      v17 = [(HDPedometerDataCollector *)v15 initWithProfile:v16];

      if (v17)
      {
        [*(v1 + 72) addObject:v17];
      }
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v6 containsObject:v19];

    if ((v20 & 1) == 0)
    {
      v21 = [HDOdometerDataCollector alloc];
      v22 = objc_loadWeakRetained((v1 + 136));
      v23 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
      v24 = [(HDOdometerDataCollector *)v21 initWithProfile:v22 collectedDistanceType:v23];

      if (v24)
      {
        [*(v1 + 72) addObject:v24];
      }

      v25 = [HDOdometerDataCollector alloc];
      v26 = objc_loadWeakRetained((v1 + 136));
      v27 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB48]];
      v28 = [(HDOdometerDataCollector *)v25 initWithProfile:v26 collectedDistanceType:v27];

      if (v28)
      {
        [*(v1 + 72) addObject:v28];
      }
    }

    v29 = [MEMORY[0x277CCDD30] sharedBehavior];
    v30 = [(HDHRCoordinatorDataCollector *)v29 features];
    if ([v30 HRCoordinator])
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = [v6 containsObject:v32];

      if (v33)
      {
LABEL_25:
        v37 = [*(v1 + 72) copy];
        os_unfair_lock_unlock((v1 + 64));
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v40 = [v6 containsObject:v39];

        if ((v40 & 1) == 0)
        {
          v41 = [HDSkiingWorkoutDistanceCollector alloc];
          v42 = objc_loadWeakRetained((v1 + 136));
          v43 = [(HDSkiingWorkoutDistanceCollector *)v41 initWithProfile:v42];

          if (v43)
          {
            [(HDDataCollectionManager *)v1 _queue_addDataCollector:v43];
          }
        }

        v44 = v37;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v45 = [v44 countByEnumeratingWithState:&v93 objects:buf count:16];
        if (v45)
        {
          v46 = *v94;
          do
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v94 != v46)
              {
                objc_enumerationMutation(v44);
              }

              v48 = *(*(&v93 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v48 registerWithAggregators];
              }
            }

            v45 = [v44 countByEnumeratingWithState:&v93 objects:buf count:16];
          }

          while (v45);
        }

        goto LABEL_39;
      }

      v34 = [HDHRCoordinatorDataCollector alloc];
      v35 = objc_loadWeakRetained((v1 + 136));
      v29 = [(HDHRCoordinatorDataCollector *)v34 initWithProfile:v35];

      if (v29)
      {
        [*(v1 + 72) addObject:v29];
      }
    }

    else
    {
    }

    goto LABEL_25;
  }

  os_unfair_lock_unlock((v1 + 64));
LABEL_39:
  objc_initWeak(&location, v1);
  v49 = *(v1 + 152);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __68__HDDataCollectionManager__queue_setupUnprotectedDataDependantState__block_invoke;
  handler[3] = &unk_278613BF0;
  objc_copyWeak(&v89, &location);
  notify_register_dispatch(*MEMORY[0x277CCE578], (v1 + 60), v49, handler);
  v50 = HKIsFitnessTrackingEnabled();
  if ((v50 & 1) == 0)
  {
    _HKInitializeLogging();
    v51 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v51, OS_LOG_TYPE_DEFAULT, "Access to fitness data NOT granted.", buf, 2u);
    }
  }

  v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v53 = objc_loadWeakRetained((v1 + 136));
  v54 = [v53 daemon];
  v55 = [v54 pluginManager];
  v56 = [v55 pluginsConformingToProtocol:&unk_283D71738];
  v57 = [v56 allValues];

  v58 = [v57 countByEnumeratingWithState:&v93 objects:buf count:16];
  if (v58)
  {
    v59 = *v94;
    do
    {
      for (j = 0; j != v58; ++j)
      {
        if (*v94 != v59)
        {
          objc_enumerationMutation(v57);
        }

        v61 = *(*(&v93 + 1) + 8 * j);
        v62 = [v1 profile];
        v63 = [v61 dataCollectorsForProfile:v62];

        if (v63)
        {
          [v52 addObjectsFromArray:v63];
        }
      }

      v58 = [v57 countByEnumeratingWithState:&v93 objects:buf count:16];
    }

    while (v58);
  }

  v64 = [HDDataCollectionManager _dataCollectorBlacklist];
  if ([v64 count])
  {
    _HKInitializeLogging();
    v65 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      v66 = v65;
      v67 = [v64 componentsJoinedByString:{@", "}];
      *v99 = 138543362;
      *&v99[4] = v67;
      _os_log_impl(&dword_228986000, v66, OS_LOG_TYPE_DEFAULT, "Filtering plugin data collectors via blacklist: %{public}@", v99, 0xCu);
    }

    *v99 = MEMORY[0x277D85DD0];
    *&v99[8] = 3221225472;
    *&v100 = __48__HDDataCollectionManager__pluginDataCollectors__block_invoke;
    *(&v100 + 1) = &unk_27862CEA8;
    *&v101 = v64;
    v68 = [v52 hk_filter:v99];
  }

  else
  {
    v68 = v52;
  }

  _HKInitializeLogging();
  v69 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    v70 = [v68 componentsJoinedByString:{@", "}];
    *buf = 138543362;
    v98 = v70;
    _os_log_impl(&dword_228986000, v69, OS_LOG_TYPE_DEFAULT, "Received data collectors: [%{public}@]", buf, 0xCu);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v71 = v68;
  v72 = [v71 countByEnumeratingWithState:&v84 objects:&v93 count:16];
  if (v72)
  {
    v73 = *v85;
    do
    {
      for (k = 0; k != v72; ++k)
      {
        if (*v85 != v73)
        {
          objc_enumerationMutation(v71);
        }

        v75 = *(*(&v84 + 1) + 8 * k);
        [v75 setDisabled:v50 ^ 1u];
        [(HDDataCollectionManager *)v1 _queue_addDataCollector:v75];
      }

      v72 = [v71 countByEnumeratingWithState:&v84 objects:&v93 count:16];
    }

    while (v72);
  }

  dispatch_assert_queue_V2(*(v1 + 152));
  v101 = 0u;
  v102 = 0u;
  *v99 = 0u;
  v100 = 0u;
  v76 = *(v1 + 144);
  v77 = [v76 countByEnumeratingWithState:v99 objects:buf count:16];
  if (v77)
  {
    v78 = *v100;
    do
    {
      for (m = 0; m != v77; ++m)
      {
        if (*v100 != v78)
        {
          objc_enumerationMutation(v76);
        }

        v80 = *(*&v99[8] + 8 * m);
        os_unfair_lock_assert_not_owner((v1 + 64));
        os_unfair_lock_lock((v1 + 64));
        v81 = [*(v1 + 80) objectForKeyedSubscript:v80];

        os_unfair_lock_unlock((v1 + 64));
        if (v81)
        {
          v91 = 0u;
          v92 = 0u;
          [(HDDataCollectionManager *)&v91 _queue_collectionStateForType:v1, v80];
          if (BYTE8(v92) == 1)
          {
            [v81 collectionStartedForType:v80 collectionInterval:*&v91];
          }
        }
      }

      v77 = [v76 countByEnumeratingWithState:v99 objects:buf count:16];
    }

    while (v77);
  }

  objc_destroyWeak(&v89);
  objc_destroyWeak(&location);
LABEL_76:
  v82 = *MEMORY[0x277D85DE8];
}

void __49__HDDataCollectionManager_profileDidBecomeReady___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  [(HDDataCollectionManager *)*(a1 + 32) _queue_aggregatorForType:v2];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  v32 = *MEMORY[0x277D85DE8];
  if (available)
  {
    os_unfair_lock_lock(&self->_dbAssertionLock);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = self->_observersByType;
    v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (self->_databaseAssertion)
        {
          break;
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v21 = 0u;
        v22 = 0u;
        [(HDDataCollectionManager *)&v21 _queue_collectionStateForType:v10];
        if (BYTE12(v22) == 1)
        {
          WeakRetained = objc_loadWeakRetained(&self->_profile);
          database = [WeakRetained database];
          v20 = 0;
          v13 = [database takeAccessibilityAssertionWithOwnerIdentifier:@"DataCollectionManager" contextType:3 error:&v20];
          v14 = v20;
          databaseAssertion = self->_databaseAssertion;
          self->_databaseAssertion = v13;

          if (self->_databaseAssertion)
          {
            v16 = objc_loadWeakRetained(&self->_profile);
            database2 = [v16 database];
            [database2 removeProtectedDataObserver:self];
          }

          else
          {
            _HKInitializeLogging();
            v18 = *MEMORY[0x277CCC330];
            if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              selfCopy = self;
              v29 = 2114;
              v30 = v14;
              _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to take database assertion with error %{public}@.", buf, 0x16u);
            }
          }
        }

        if (v7 == ++v9)
        {
          v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    os_unfair_lock_unlock(&self->_dbAssertionLock);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __48__HDDataCollectionManager__observersDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 count];
  if (v7)
  {
    [*(a1 + 32) appendFormat:@"\t%@ (%ld)\n", v5, v7];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v6 objectEnumerator];
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

          [*(a1 + 32) appendFormat:@"\t\t%@: %@\n", v5, *(*(&v14 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)diagnosticDescription
{
  v37 = *MEMORY[0x277D85DE8];
  if (self->_lastLaunchUpdate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_lastLaunchUpdate];
    v5 = v4;

    if (v5 >= 120.0)
    {
      if (v5 >= 5400.0)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%.1f hrs ago", v5 / 3600.0];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%.0f mins ago", v5 / 60.0];
      }
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%.0f secs ago", *&v5];
    }
    v30 = ;
  }

  else
  {
    v30 = @"NEVER";
  }

  v29 = MEMORY[0x277CCACA8];
  v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"Active Observers (%ld type(s)):\n", -[NSMutableDictionary count](self->_observersByType, "count")];
  observersByType = self->_observersByType;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __48__HDDataCollectionManager__observersDescription__block_invoke;
  v35[3] = &unk_27862CEF8;
  v8 = v6;
  v36 = v8;
  [(NSMutableDictionary *)observersByType enumerateKeysAndObjectsUsingBlock:v35];

  configuration = [(HDFakeDataCollector *)self->_fakeCollector configuration];
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v9 appendString:@"Data Collectors:\n"];
  os_unfair_lock_lock(&self->_collectorLock);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  allValues = [(NSMutableDictionary *)self->_collectorLock_dataCollectorsByType allValues];
  v11 = [allValues countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        dataCollectorDiagnosticDescription = [*(*(&v31 + 1) + 8 * i) dataCollectorDiagnosticDescription];
        [v9 appendFormat:@"\t%@\n", dataCollectorDiagnosticDescription];
      }

      v12 = [allValues countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v12);
  }

  os_unfair_lock_unlock(&self->_collectorLock);
  v16 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v16 appendString:@"Data Aggregators:\n"];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_dataAggregatorsByType allValues];
  v18 = [allValues2 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(allValues2);
        }

        v22 = *(*(&v31 + 1) + 8 * j);
        [v16 appendFormat:@"\t%@\n", v22];
        diagnosticDescription = [v22 diagnosticDescription];
        [v16 appendFormat:@"%@\n", diagnosticDescription];
      }

      v19 = [allValues2 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v19);
  }

  if (configuration)
  {
    v24 = "\nData faking enabled";
  }

  else
  {
    v24 = "";
  }

  v25 = [v29 stringWithFormat:@"\n%@%s\nLast launch update: %@\n%@\n%@", v8, v24, v30, v9, v16];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

@end