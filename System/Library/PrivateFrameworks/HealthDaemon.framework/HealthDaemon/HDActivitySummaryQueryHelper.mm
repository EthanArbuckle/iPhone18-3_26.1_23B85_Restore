@interface HDActivitySummaryQueryHelper
- (HDActivitySummaryQueryHelper)initWithProfile:(id)profile filter:(id)filter batchedInitialResultsHandler:(id)handler batchedUpdateHandler:(id)updateHandler;
- (void)_queue_deliverActivitySummariesMatchingPredicate:(uint64_t)predicate;
- (void)_queue_deliverActivitySummariesToClient:(char)client isFinalBatch:(char)batch clearPendingBatches:;
- (void)_queue_deliverErrorToClient:(uint64_t)client;
- (void)_queue_deliverUpdates;
- (void)_queue_stop;
- (void)_queue_updatePreviousActivityCachesWithNewCaches:(uint64_t)caches;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)pause;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)start;
- (void)stop;
@end

@implementation HDActivitySummaryQueryHelper

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HDActivitySummaryQueryHelper_start__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __37__HDActivitySummaryQueryHelper_start__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 8));
    v3 = [WeakRetained dataManager];
    v4 = [MEMORY[0x277CCD720] activityCacheType];
    [v3 addObserver:v1 forDataType:v4];

    if (*(v1 + 40))
    {

      [(HDActivitySummaryQueryHelper *)v1 _queue_deliverUpdates];
    }

    else
    {
      v5 = *(v1 + 16);

      [(HDActivitySummaryQueryHelper *)v1 _queue_deliverActivitySummariesMatchingPredicate:v5];
    }
  }
}

- (void)_queue_deliverUpdates
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = *(self + 56);
    v3 = *(self + 16);
    v19 = 0;
    v4 = v3;
    v5 = MEMORY[0x277D10B70];
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:v2];
    v7 = HDDataEntityPredicateForRowID(v6, 5);
    v8 = [v5 compoundPredicateWithPredicate:v4 otherPredicate:v7];

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v24[0] = @"cache_index";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    WeakRetained = objc_loadWeakRetained((self + 8));
    database = [WeakRetained database];
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v21 = __85__HDActivitySummaryQueryHelper__fetchActivityCacheIndicesWithAnchor_predicate_error___block_invoke;
    v22 = &unk_278615128;
    v13 = v9;
    v23 = v13;
    LOBYTE(v7) = [(HDHealthEntity *)HDActivityCacheEntity enumerateProperties:v10 withPredicate:v8 healthDatabase:database error:&v19 enumerationHandler:&buf];

    if ((v7 & 1) == 0)
    {

      v13 = 0;
    }

    v14 = v19;
    if ([v14 hk_isDatabaseAccessibilityError])
    {
      *(self + 41) = 1;
    }

    else if (v14)
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v14;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "Error fetching activity cache indices: %{public}@", &buf, 0xCu);
      }

      [(HDActivitySummaryQueryHelper *)self _queue_deliverErrorToClient:v14];
    }

    else if ([v13 count])
    {
      v16 = HDActivityCacheEntityPredicateForCacheIndices(v13);
      v17 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v16 otherPredicate:*(self + 16)];
      [(HDActivitySummaryQueryHelper *)self _queue_deliverActivitySummariesMatchingPredicate:v17];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (HDActivitySummaryQueryHelper)initWithProfile:(id)profile filter:(id)filter batchedInitialResultsHandler:(id)handler batchedUpdateHandler:(id)updateHandler
{
  profileCopy = profile;
  filterCopy = filter;
  handlerCopy = handler;
  updateHandlerCopy = updateHandler;
  v33.receiver = self;
  v33.super_class = HDActivitySummaryQueryHelper;
  v14 = [(HDActivitySummaryQueryHelper *)&v33 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, profileCopy);
    objc_storeStrong(&v15->_filter, filter);
    v16 = [(_HKFilter *)v15->_filter predicateWithProfile:profileCopy];
    predicate = v15->_predicate;
    v15->_predicate = v16;

    v18 = [[HDActivitySummaryBuilder alloc] initWithProfile:profileCopy filter:filterCopy];
    activitySummaryBuilder = v15->_activitySummaryBuilder;
    v15->_activitySummaryBuilder = v18;

    [(HDActivitySummaryBuilder *)v15->_activitySummaryBuilder setShouldIncludePrivateProperties:1];
    [(HDActivitySummaryBuilder *)v15->_activitySummaryBuilder setShouldIncludeStatistics:0];
    [(HDActivitySummaryBuilder *)v15->_activitySummaryBuilder setOrderByDateAscending:1];
    [(HDActivitySummaryBuilder *)v15->_activitySummaryBuilder setLimit:0];
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    previousActivityCachesByCacheIndex = v15->_previousActivityCachesByCacheIndex;
    v15->_previousActivityCachesByCacheIndex = v20;

    v22 = HKCreateSerialDispatchQueue();
    queue = v15->_queue;
    v15->_queue = v22;

    v24 = HKCreateSerialDispatchQueue();
    clientQueue = v15->_clientQueue;
    v15->_clientQueue = v24;

    v26 = _Block_copy(handlerCopy);
    batchedInitialResultsHandler = v15->_batchedInitialResultsHandler;
    v15->_batchedInitialResultsHandler = v26;

    v28 = _Block_copy(updateHandlerCopy);
    batchedUpdateHandler = v15->_batchedUpdateHandler;
    v15->_batchedUpdateHandler = v28;

    v15->_shouldBatchSummaries = 1;
    WeakRetained = objc_loadWeakRetained(&v15->_profile);
    database = [WeakRetained database];
    [database addProtectedDataObserver:v15 queue:v15->_queue];
  }

  return v15;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database removeProtectedDataObserver:self];

  v5 = objc_loadWeakRetained(&self->_profile);
  dataManager = [v5 dataManager];
  activityCacheType = [MEMORY[0x277CCD720] activityCacheType];
  [dataManager removeObserver:self forDataType:activityCacheType];

  v8.receiver = self;
  v8.super_class = HDActivitySummaryQueryHelper;
  [(HDActivitySummaryQueryHelper *)&v8 dealloc];
}

- (void)pause
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HDActivitySummaryQueryHelper_pause__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __37__HDActivitySummaryQueryHelper_pause__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = [WeakRetained dataManager];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCD720] activityCacheType];
  [v2 removeObserver:v3 forDataType:v4];
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HDActivitySummaryQueryHelper_stop__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_queue_stop
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    dataManager = [WeakRetained dataManager];
    activityCacheType = [MEMORY[0x277CCD720] activityCacheType];
    [dataManager removeObserver:self forDataType:activityCacheType];

    v5 = *(self + 48);
    *(self + 48) = 0;

    v6 = *(self + 80);
    *(self + 80) = 0;

    v7 = *(self + 88);
    *(self + 88) = 0;
  }
}

- (void)_queue_deliverErrorToClient:(uint64_t)client
{
  v3 = a2;
  if (client)
  {
    v4 = _Block_copy(*(client + 88));
    if ((*(client + 40) & 1) == 0)
    {
      v5 = _Block_copy(*(client + 80));

      v4 = v5;
    }

    *(client + 40) = 1;
    [(HDActivitySummaryQueryHelper *)client _queue_stop];
    if (v4)
    {
      v6 = *(client + 72);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __60__HDActivitySummaryQueryHelper__queue_deliverErrorToClient___block_invoke;
      v7[3] = &unk_278614008;
      v9 = v4;
      v8 = v3;
      dispatch_async(v6, v7);
    }
  }
}

- (void)_queue_deliverActivitySummariesToClient:(char)client isFinalBatch:(char)batch clearPendingBatches:
{
  v7 = a2;
  if (self)
  {
    v8 = _Block_copy(*(self + 88));
    if ((*(self + 40) & 1) == 0)
    {
      v9 = _Block_copy(*(self + 80));

      v8 = v9;
    }

    *(self + 40) = 1;
    if (!*(self + 88))
    {
      [(HDActivitySummaryQueryHelper *)self _queue_stop];
    }

    if (v8)
    {
      v10 = *(self + 72);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __105__HDActivitySummaryQueryHelper__queue_deliverActivitySummariesToClient_isFinalBatch_clearPendingBatches___block_invoke;
      block[3] = &unk_27862C228;
      v13 = v8;
      v12 = v7;
      clientCopy = client;
      batchCopy = batch;
      dispatch_async(v10, block);
    }
  }
}

- (void)_queue_deliverActivitySummariesMatchingPredicate:(uint64_t)predicate
{
  v3 = a2;
  v4 = *(predicate + 32);
  if (*(predicate + 42) == 1)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __81__HDActivitySummaryQueryHelper__queue_deliverActivitySummariesMatchingPredicate___block_invoke;
    v6[3] = &unk_27862C250;
    v6[4] = predicate;
    [v4 batchedActivitySummariesWithPredicate:v3 maxBatchSize:200 handler:v6];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __81__HDActivitySummaryQueryHelper__queue_deliverActivitySummariesMatchingPredicate___block_invoke_2;
    v5[3] = &unk_27862C278;
    v5[4] = predicate;
    [v4 activitySummariesWithPredicate:v3 handler:v5];
  }
}

void __81__HDActivitySummaryQueryHelper__queue_deliverActivitySummariesMatchingPredicate___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, char a6, void *a7)
{
  v19 = a2;
  v13 = a3;
  v14 = a7;
  v15 = v14;
  if (v19)
  {
    [(HDActivitySummaryQueryHelper *)*(a1 + 32) _queue_deliverActivitySummariesToClient:v19 isFinalBatch:a5 clearPendingBatches:a6];
  }

  else if ([v14 hk_isDatabaseAccessibilityError])
  {
    *(*(a1 + 32) + 41) = 1;
  }

  else if (v15)
  {
    [(HDActivitySummaryQueryHelper *)*(a1 + 32) _queue_deliverErrorToClient:v15];
  }

  if (a5)
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 56);
    if (v17 <= a4)
    {
      v17 = a4;
    }

    *(v16 + 56) = v17;
    if (v13)
    {
      [(HDActivitySummaryQueryHelper *)*(a1 + 32) _queue_updatePreviousActivityCachesWithNewCaches:v13];
    }

    v18 = *(a1 + 32);
    *(v18 + 96) = [*(v18 + 32) enumeratedSummaryCount];
  }
}

- (void)_queue_updatePreviousActivityCachesWithNewCaches:(uint64_t)caches
{
  v19 = *MEMORY[0x277D85DE8];
  if (caches)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __81__HDActivitySummaryQueryHelper__queue_updatePreviousActivityCachesWithNewCaches___block_invoke;
    v17[3] = &unk_27862C2A0;
    v17[4] = caches;
    [a2 enumerateKeysAndObjectsUsingBlock:v17];
    allKeys = [*(caches + 48) allKeys];
    v4 = [allKeys mutableCopy];

    [v4 sortUsingSelector:sel_compare_];
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([v4 count] >= 6)
    {
      do
      {
        firstObject = [v4 firstObject];
        [v5 addObject:firstObject];

        [v4 removeObjectAtIndex:0];
      }

      while ([v4 count] > 5);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(caches + 48) removeObjectForKey:{*(*(&v13 + 1) + 8 * v11++), v13}];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __81__HDActivitySummaryQueryHelper__queue_deliverActivitySummariesMatchingPredicate___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v15 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v15)
  {
    [(HDActivitySummaryQueryHelper *)*(a1 + 32) _queue_deliverActivitySummariesToClient:v15 isFinalBatch:1 clearPendingBatches:1];
  }

  else if ([v10 hk_isDatabaseAccessibilityError])
  {
    *(*(a1 + 32) + 41) = 1;
  }

  else if (v11)
  {
    [(HDActivitySummaryQueryHelper *)*(a1 + 32) _queue_deliverErrorToClient:v11];
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 56);
  if (v13 <= a4)
  {
    v13 = a4;
  }

  *(v12 + 56) = v13;
  if (v9)
  {
    [(HDActivitySummaryQueryHelper *)*(a1 + 32) _queue_updatePreviousActivityCachesWithNewCaches:v9];
  }

  v14 = *(a1 + 32);
  *(v14 + 96) = [*(v14 + 32) enumeratedSummaryCount];
}

uint64_t __85__HDActivitySummaryQueryHelper__fetchActivityCacheIndicesWithAnchor_predicate_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x22AAC6C80](a4, 0);
  [v4 addObject:v5];

  return 1;
}

void __81__HDActivitySummaryQueryHelper__queue_updatePreviousActivityCachesWithNewCaches___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 mutableCopy];
  [*(*(a1 + 32) + 48) setObject:v6 forKeyedSubscript:v5];
}

uint64_t __91__HDActivitySummaryQueryHelper__queue_updateActivitySummariesWithNewActivityCaches_anchor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) orderByDateAscending];
  v8 = v7 == 0;
  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v9, "_activitySummaryIndex")}];
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10, "_activitySummaryIndex")}];
  v13 = [v11 compare:v12];

  return v13;
}

uint64_t __71__HDActivitySummaryQueryHelper__queue_addActivityCacheToCachedSamples___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sourceRevision];
  v4 = [v3 source];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  addedCopy = added;
  anchorCopy = anchor;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HDActivitySummaryQueryHelper_samplesAdded_anchor___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v12 = anchorCopy;
  v13 = addedCopy;
  v9 = addedCopy;
  v10 = anchorCopy;
  dispatch_async(queue, block);
}

void __52__HDActivitySummaryQueryHelper_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  v86 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 41) == 1)
  {
    _HKInitializeLogging();
    v1 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v2 = "Received samples while _needsUpdateAfterUnlock=YES";
      v3 = v1;
      v4 = 2;
LABEL_18:
      _os_log_debug_impl(&dword_228986000, v3, OS_LOG_TYPE_DEBUG, v2, buf, v4);
    }
  }

  else
  {
    v6 = [*(a1 + 40) longLongValue];
    v7 = *(a1 + 32);
    if (v6 <= *(v7 + 56))
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a1 + 40);
        v19 = *(*(a1 + 32) + 56);
        *buf = 138412546;
        v83 = v18;
        v84 = 2048;
        v85 = v19;
        v2 = "Anchor %@ <= %ld, skipping";
        v3 = v17;
        v4 = 22;
        goto LABEL_18;
      }
    }

    else
    {
      v8 = *(a1 + 48);
      v9 = v8;
      if (*(v7 + 24))
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v78 objects:buf count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v79;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v79 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v78 + 1) + 8 * i);
              if ([MEMORY[0x277CCDDB8] filter:*(v7 + 24) acceptsDataObject:v16])
              {
                [v10 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v78 objects:buf count:16];
          }

          while (v13);
        }
      }

      else
      {
        v10 = v8;
      }

      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v20 = [v10 countByEnumeratingWithState:&v64 objects:v77 count:16];
      v21 = 0x277CCA000uLL;
      if (!v20)
      {
        goto LABEL_29;
      }

      v22 = v20;
      v23 = 0;
      v24 = *v65;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v65 != v24)
          {
            objc_enumerationMutation(v10);
          }

          v26 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v64 + 1) + 8 * j), "cacheIndex")}];
          v27 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:v26];
          v28 = v27 == 0;

          v23 |= v28;
        }

        v22 = [v10 countByEnumeratingWithState:&v64 objects:v77 count:16];
      }

      while (v22);
      if (v23)
      {
        [(HDActivitySummaryQueryHelper *)*(a1 + 32) _queue_deliverUpdates];
      }

      else
      {
LABEL_29:
        v30 = *(a1 + 32);
        v29 = *(a1 + 40);
        v31 = v10;
        v32 = v29;
        v33 = v32;
        if (v30)
        {
          v58 = v32;
          v60 = v10;
          v63 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v59 = v31;
          obj = v31;
          v34 = [obj countByEnumeratingWithState:&v73 objects:buf count:16];
          if (v34)
          {
            v35 = v34;
            v62 = *v74;
            do
            {
              for (k = 0; k != v35; ++k)
              {
                if (*v74 != v62)
                {
                  objc_enumerationMutation(obj);
                }

                v37 = *(*(&v73 + 1) + 8 * k);
                v38 = v21;
                v39 = [*(v21 + 2992) numberWithLongLong:{objc_msgSend(v37, "cacheIndex")}];
                v40 = [*(v30 + 48) objectForKeyedSubscript:v39];
                v41 = [v37 sourceRevision];
                v42 = [v41 source];

                *&v78 = MEMORY[0x277D85DD0];
                *(&v78 + 1) = 3221225472;
                *&v79 = __71__HDActivitySummaryQueryHelper__queue_addActivityCacheToCachedSamples___block_invoke;
                *(&v79 + 1) = &unk_27862C2F0;
                *&v80 = v42;
                v43 = v42;
                v44 = [v40 indexOfObjectWithOptions:0 passingTest:&v78];
                if (v44 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  [v40 addObject:v37];
                }

                else
                {
                  [v40 replaceObjectAtIndex:v44 withObject:v37];
                }

                v45 = [*(v30 + 48) objectForKeyedSubscript:v39];
                [v63 setObject:v45 forKeyedSubscript:v39];

                v21 = v38;
              }

              v35 = [obj countByEnumeratingWithState:&v73 objects:buf count:16];
            }

            while (v35);
          }

          v46 = [MEMORY[0x277CBEB18] array];
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v47 = [v63 allValues];
          v48 = [v47 countByEnumeratingWithState:&v69 objects:&v78 count:16];
          v10 = v60;
          if (v48)
          {
            v49 = v48;
            v50 = *v70;
            do
            {
              for (m = 0; m != v49; ++m)
              {
                if (*v70 != v50)
                {
                  objc_enumerationMutation(v47);
                }

                v52 = [MEMORY[0x277CCCFB0] _mostSignificantCacheAmongCaches:{*(*(&v69 + 1) + 8 * m), v58}];
                v53 = [objc_alloc(MEMORY[0x277CCCFB0]) _initWithActivityCache:v52 shouldIncludePrivateProperties:{objc_msgSend(v30, "shouldIncludePrivateProperties")}];
                [v46 addObject:v53];
              }

              v49 = [v47 countByEnumeratingWithState:&v69 objects:&v78 count:16];
            }

            while (v49);
          }

          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __91__HDActivitySummaryQueryHelper__queue_updateActivitySummariesWithNewActivityCaches_anchor___block_invoke;
          v68[3] = &unk_27862C2C8;
          v68[4] = v30;
          [v46 sortUsingComparator:v68];
          if ([v46 count])
          {
            [(HDActivitySummaryQueryHelper *)v30 _queue_deliverActivitySummariesToClient:v46 isFinalBatch:1 clearPendingBatches:0];
          }

          v54 = *(v30 + 56);
          v33 = v58;
          v55 = [v58 integerValue];
          if (v54 <= v55)
          {
            v56 = v55;
          }

          else
          {
            v56 = v54;
          }

          *(v30 + 56) = v56;

          v31 = v59;
        }
      }
    }
  }

  v57 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  dispatch_assert_queue_V2(self->_queue);
  if (availableCopy && self->_needsUpdateAfterUnlock)
  {
    self->_needsUpdateAfterUnlock = 0;

    [(HDActivitySummaryQueryHelper *)self _queue_deliverUpdates];
  }
}

@end