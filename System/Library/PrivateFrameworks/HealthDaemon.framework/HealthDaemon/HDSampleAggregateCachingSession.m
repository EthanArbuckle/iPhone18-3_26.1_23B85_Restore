@interface HDSampleAggregateCachingSession
- (BOOL)activateWithError:(id *)a3 cacheHandler:(id)a4;
- (HDSampleAggregateCachingSession)initWithProfile:(id)a3 cachingIdentifier:(id)a4 sourceEntity:(id)a5 queryDescriptor:(id)a6 cachedClass:(Class)a7 queryInterval:(id)a8 anchorDate:(id)a9 intervalComponents:(id)a10 timeIntervalToBucketIndex:(id)a11;
- (id).cxx_construct;
- (id)persistentAnchorDateWithError:(id *)a3;
- (int64_t)cachesExistWithError:(id *)a3;
- (uint64_t)_performWithAccessibilityAssertion:(uint64_t)a3 requiresWrite:(uint64_t)a4 error:(void *)a5 block:;
- (void)_changeStateForFatalError:(uint64_t)a1;
- (void)_writeToDatabaseOnCachePersistenceQueueWithBlock:(void *)a3 completion:;
- (void)deleteCachesForIntervals:(id)a3 completion:(id)a4;
- (void)finishWithCompletion:(id)a3;
- (void)insertCaches:(id)a3 anchor:(id)a4 completion:(id)a5;
@end

@implementation HDSampleAggregateCachingSession

- (HDSampleAggregateCachingSession)initWithProfile:(id)a3 cachingIdentifier:(id)a4 sourceEntity:(id)a5 queryDescriptor:(id)a6 cachedClass:(Class)a7 queryInterval:(id)a8 anchorDate:(id)a9 intervalComponents:(id)a10 timeIntervalToBucketIndex:(id)a11
{
  v17 = a3;
  v18 = a4;
  v43 = a5;
  v42 = a6;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v46.receiver = self;
  v46.super_class = HDSampleAggregateCachingSession;
  v23 = [(HDSampleAggregateCachingSession *)&v46 init];
  if (v23)
  {
    v24 = [[HDSampleAggregateCacheStore alloc] initWithProfile:v17 queryDescriptor:v42 cachingIdentifier:v18 sourceEntity:v43 anchorDate:v20 intervalComponents:v21 timeIntervalToBucketIndex:v22];
    cacheStore = v23->_cacheStore;
    v23->_cacheStore = v24;

    objc_storeWeak(&v23->_profile, v17);
    v23->_cachedClass = a7;
    v26 = [v18 copy];
    cachingIdentifier = v23->_cachingIdentifier;
    v23->_cachingIdentifier = v26;

    objc_storeStrong(&v23->_sourceEntity, a5);
    v28 = [v19 copy];
    queryInterval = v23->_queryInterval;
    v23->_queryInterval = v28;

    v30 = [v20 copy];
    anchorDate = v23->_anchorDate;
    v23->_anchorDate = v30;

    v32 = [v21 copy];
    intervalComponents = v23->_intervalComponents;
    v23->_intervalComponents = v32;

    fatalError = v23->_fatalError;
    v23->_fatalError = 0;
    v23->_state = 0;

    v44[2] = 0;
    v44[3] = 0;
    v45 = 1065353216;
    if (v23->_staleIndexes.__table_.__size_)
    {
      next = v23->_staleIndexes.__table_.__first_node_.__next_;
      if (next)
      {
        do
        {
          v36 = *next;
          operator delete(next);
          next = v36;
        }

        while (v36);
      }

      v23->_staleIndexes.__table_.__first_node_.__next_ = 0;
      size = v23->_staleIndexes.__table_.__bucket_list_.__deleter_.__size_;
      if (size)
      {
        for (i = 0; i != size; ++i)
        {
          v23->_staleIndexes.__table_.__bucket_list_.__ptr_[i] = 0;
        }
      }

      v23->_staleIndexes.__table_.__size_ = 0;
    }

    v44[0] = 0;
    ptr = v23->_staleIndexes.__table_.__bucket_list_.__ptr_;
    v23->_staleIndexes.__table_.__bucket_list_.__ptr_ = 0;
    if (ptr)
    {
      operator delete(ptr);
    }

    v23->_staleIndexes.__table_.__bucket_list_.__deleter_.__size_ = 0;
    v23->_staleIndexes.__table_.__first_node_.__next_ = 0;
    v44[1] = 0;
    v23->_staleIndexes.__table_.__size_ = 0;
    v23->_staleIndexes.__table_.__max_load_factor_ = 1.0;
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v44);
    v23->_maxAnchor = 0x7FFFFFFFFFFFFFFFLL;
    v23->_anchorSetOnInsert = 0;
    sampleAggregateCachingSessionQueue_insertError = v23->_sampleAggregateCachingSessionQueue_insertError;
    v23->_sampleAggregateCachingSessionQueue_insertError = 0;
  }

  return v23;
}

- (id)persistentAnchorDateWithError:(id *)a3
{
  persistentAnchorDate = self->_persistentAnchorDate;
  if (!persistentAnchorDate)
  {
    accessibilityAssertion = self->_accessibilityAssertion;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__HDSampleAggregateCachingSession_persistentAnchorDateWithError___block_invoke;
    v8[3] = &unk_27861C9B0;
    v8[4] = self;
    if ([(HDSampleAggregateCachingSession *)self _performWithAccessibilityAssertion:0 requiresWrite:a3 error:v8 block:?])
    {
      persistentAnchorDate = self->_persistentAnchorDate;
    }

    else
    {
      persistentAnchorDate = 0;
    }
  }

  v6 = persistentAnchorDate;

  return v6;
}

uint64_t __65__HDSampleAggregateCachingSession_persistentAnchorDateWithError___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v15 = 0;
  v5 = [v4 persistentAnchorDateWithError:&v15];
  v6 = v15;
  v7 = *(a1 + 32);
  v8 = *(v7 + 72);
  *(v7 + 72) = v5;

  if (*(*(a1 + 32) + 72))
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 == 0;
  }

  v10 = v9;
  if (!v9)
  {
    v11 = v6;
    v12 = v11;
    if (a2)
    {
      v13 = v11;
      *a2 = v12;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v10;
}

- (uint64_t)_performWithAccessibilityAssertion:(uint64_t)a3 requiresWrite:(uint64_t)a4 error:(void *)a5 block:
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a5;
  v11 = v10;
  if (a1)
  {
    if (v9)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      v13 = [WeakRetained database];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", objc_opt_class(), *(a1 + 40)];
      v28 = 0;
      v15 = [v13 cloneAccessibilityAssertion:v9 ownerIdentifier:v14 error:&v28];
      v16 = v28;

      if (v15)
      {
        v17 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
        [v17 setRequiresWrite:a3];
        [v17 setCacheScope:1];
        [v17 addAccessibilityAssertion:v15];
        v18 = objc_loadWeakRetained((a1 + 16));
        v19 = [v18 database];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __96__HDSampleAggregateCachingSession__performWithAccessibilityAssertion_requiresWrite_error_block___block_invoke;
        v26[3] = &unk_27862F838;
        v27 = v11;
        v20 = [v19 performTransactionWithContext:v17 error:a4 block:v26 inaccessibilityHandler:0];

        [v15 invalidate];
      }

      else
      {
        _HKInitializeLogging();
        v21 = *MEMORY[0x277CCC308];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v24 = objc_opt_class();
          *buf = 138543618;
          v30 = v24;
          v31 = 2114;
          v32 = v16;
          v25 = v24;
          _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to copy accessibility assertion; continuing: %{public}@", buf, 0x16u);
        }

        v20 = v11[2](v11, a4);
      }
    }

    else
    {
      v20 = (*(v10 + 2))(v10, a4);
    }
  }

  else
  {
    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

- (int64_t)cachesExistWithError:(id *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  accessibilityAssertion = self->_accessibilityAssertion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HDSampleAggregateCachingSession_cachesExistWithError___block_invoke;
  v6[3] = &unk_27861CAE8;
  v6[4] = self;
  v6[5] = &v7;
  if ([(HDSampleAggregateCachingSession *)self _performWithAccessibilityAssertion:0 requiresWrite:a3 error:v6 block:?])
  {
    v4 = v8[3];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)activateWithError:(id *)a3 cacheHandler:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
  {
    cachingIdentifier = self->_cachingIdentifier;
    *buf = 138543618;
    v25 = self;
    v26 = 2112;
    v27 = cachingIdentifier;
    _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ Activating session for %@", buf, 0x16u);
  }

  else if (!self)
  {
LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  state = self->_state;
  if ((state - 1) < 3)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = objc_opt_class();
    v11 = self->_state - 1;
    if (v11 > 3)
    {
      v12 = @"NotStarted";
    }

    else
    {
      v12 = off_27862F858[v11];
    }

    v13 = [v9 hk_errorForInvalidArgument:@"@" class:v10 selector:sel__changeStateForActivateWithError_ format:{@"Invalid transition for HDSampleAggregateCachingSession from %@ -> Active", v12}];
    goto LABEL_11;
  }

  if (state)
  {
    if (state != 4)
    {
      v15 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v13 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"HDSampleAggregateCachingSession experienced a fatal error" underlyingError:self->_fatalError];
LABEL_11:
    v14 = v13;
    v15 = v14;
    if (v14)
    {
      if (a3)
      {
        v16 = v14;
        *a3 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_17;
  }

  self->_state = 1;
  accessibilityAssertion = self->_accessibilityAssertion;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __66__HDSampleAggregateCachingSession_activateWithError_cacheHandler___block_invoke;
  v22[3] = &unk_278629348;
  v22[4] = self;
  v23 = v6;
  v18 = [(HDSampleAggregateCachingSession *)self _performWithAccessibilityAssertion:0 requiresWrite:a3 error:v22 block:?];

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __66__HDSampleAggregateCachingSession_activateWithError_cacheHandler___block_invoke(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  WeakRetained = objc_loadWeakRetained((v4 + 16));
  v53 = 0;
  v8 = [HDCachedQueryMetadataEntity generationNumberForQueryIdentifier:v5 sourceEntity:v6 profile:WeakRetained error:&v53];
  v9 = v53;

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
    *(*(a1 + 32) + 56) = [v8 integerValue];
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__HDSampleAggregateCachingSession_activateWithError_cacheHandler___block_invoke_2;
    aBlock[3] = &unk_27862F7E8;
    v11 = *(a1 + 40);
    aBlock[4] = *(a1 + 32);
    v43 = &v45;
    v44 = &v49;
    v42 = v11;
    v12 = _Block_copy(aBlock);
    v39 = 0;
    v40 = 0;
    v13 = [*(*(a1 + 32) + 8) enumerateForInterval:*(*(a1 + 32) + 32) cachedClass:*(*(a1 + 32) + 24) anchorAfterDatabaseScan:&v40 error:&v39 cacheHandler:v12];
    v14 = v39;
    v15 = *(a1 + 32);
    v16 = *(v15 + 88);
    if (v16 >= v40)
    {
      v16 = v40;
    }

    *(v15 + 88) = v16;
    v17 = *(a1 + 32);
    if (v13)
    {
      [*(v17 + 32) duration];
      v19 = v18;
      [*(*(a1 + 32) + 80) hk_approximateDuration];
      v21 = v20;
      v22 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v23 = [v22 daemon];
      v24 = [v23 analyticsSubmissionCoordinator];

      v25 = vcvtad_u64_f64(v19 / v21);
      [v24 database_reportCachedQueryEvent:*(*(a1 + 32) + 40) cacheHits:v50[3] cacheMisses:v46[3] estimatedTotalBuckets:v25];
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
      {
        v35 = *(a1 + 32);
        v36 = *(v35 + 40);
        v37 = v50[3];
        v38 = v46[3];
        *buf = 138544386;
        v55 = v35;
        v56 = 2112;
        v57 = v36;
        v58 = 2048;
        v59 = v37;
        v60 = 2048;
        v61 = v38;
        v62 = 2048;
        v63 = v25;
        _os_log_debug_impl(&dword_228986000, v26, OS_LOG_TYPE_DEBUG, "%{public}@ reporting cache success rate for %@ (hits = %lu, misses = %lu, numBuckets = %lu)", buf, 0x34u);
      }
    }

    else
    {
      [(HDSampleAggregateCachingSession *)v17 _changeStateForFatalError:v14];
    }

    v30 = v14;
    v31 = v30;
    if (v30)
    {
      if (a2)
      {
        v32 = v30;
        *a2 = v31;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(&v49, 8);
  }

  else
  {
    v27 = v9;
    v28 = v27;
    if (a2)
    {
      v29 = v27;
      *a2 = v28;
    }

    else
    {
      _HKLogDroppedError();
    }

    v13 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __66__HDSampleAggregateCachingSession_activateWithError_cacheHandler___block_invoke_2(uint64_t a1, void *a2, int a3, unint64_t a4)
{
  v7 = a2;
  if (a3)
  {
    v8 = *(a1 + 32);
    v9 = v8[15];
    if (v9)
    {
      v10 = vcnt_s8(v9);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = a4;
        if (*&v9 <= a4)
        {
          v11 = a4 % *&v9;
        }
      }

      else
      {
        v11 = (*&v9 - 1) & a4;
      }

      v13 = *(*&v8[14] + 8 * v11);
      if (v13)
      {
        v14 = *v13;
        if (*v13)
        {
          v12 = 48;
          do
          {
            v15 = v14[1];
            if (v15 == a4)
            {
              if (v14[2] == a4)
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v10.u32[0] > 1uLL)
              {
                if (v15 >= *&v9)
                {
                  v15 %= *&v9;
                }
              }

              else
              {
                v15 &= *&v9 - 1;
              }

              if (v15 != v11)
              {
                break;
              }
            }

            v14 = *v14;
          }

          while (v14);
        }
      }
    }

    operator new();
  }

  v12 = 56;
LABEL_22:
  ++*(*(*(a1 + v12) + 8) + 24);
  v16 = (*(*(a1 + 40) + 16))();

  return v16;
}

- (void)_changeStateForFatalError:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    *(a1 + 104) = 4;
    v6 = v3;
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unknown internal fatal error encountered in HDSampleAggregateCachingSession"];
    }

    v5 = *(a1 + 96);
    *(a1 + 96) = v4;

    v3 = v6;
  }
}

- (void)deleteCachesForIntervals:(id)a3 completion:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v6 = a4;
  v32 = 0;
  v22 = v6;
  v7 = [(HDSampleAggregateCachingSession *)self persistentAnchorDateWithError:&v32];
  v8 = v32;
  v21 = v8;
  if (v8)
  {
    (*(v6 + 2))(v6, 0, v8);
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v23;
    v10 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = [(HDSampleAggregateCacheStore *)self->_cacheStore timeIntervalToBucketIndex];
          v15 = [v13 startDate];
          [v15 timeIntervalSinceReferenceDate];
          v16 = (v14)[2](v14, v7);

          std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::__erase_unique<long>(&self->_staleIndexes, v16);
          v17 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
          [v9 addObject:v17];
        }

        v10 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v10);
    }

    generationNumber = self->_generationNumber;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __71__HDSampleAggregateCachingSession_deleteCachesForIntervals_completion___block_invoke;
    v25[3] = &unk_278624840;
    v25[4] = self;
    v19 = v9;
    v26 = v19;
    v27 = generationNumber;
    [(HDSampleAggregateCachingSession *)self _writeToDatabaseOnCachePersistenceQueueWithBlock:v25 completion:v22];
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __71__HDSampleAggregateCachingSession_deleteCachesForIntervals_completion___block_invoke(void *a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [*(a1[4] + 8) deleteCachesForIndexes:a1[5] generationNumber:a1[6] + 1 error:a2];
  if ((v4 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = *a2;
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Encountered failure when deleting caches: %@", &v10, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_writeToDatabaseOnCachePersistenceQueueWithBlock:(void *)a3 completion:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__HDSampleAggregateCachingSession__writeToDatabaseOnCachePersistenceQueueWithBlock_completion___block_invoke;
    block[3] = &unk_27861C698;
    block[4] = a1;
    if (qword_280D67E48 != -1)
    {
      dispatch_once(&qword_280D67E48, block);
    }

    v7 = _MergedGlobals_224;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __95__HDSampleAggregateCachingSession__writeToDatabaseOnCachePersistenceQueueWithBlock_completion___block_invoke_2;
    v8[3] = &unk_27861C760;
    v8[4] = a1;
    v9 = v6;
    v10 = v5;
    dispatch_async(v7, v8);
  }
}

- (void)insertCaches:(id)a3 anchor:(id)a4 completion:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v47 = 0;
  if (!self)
  {
    v35 = 0;
    goto LABEL_34;
  }

  v11 = 0;
  state = self->_state;
  if (state > 2)
  {
    if (state == 3)
    {
      v29 = MEMORY[0x277CCA9B8];
      v30 = objc_opt_class();
      v31 = self->_state - 1;
      if (v31 > 3)
      {
        v32 = @"NotStarted";
      }

      else
      {
        v32 = off_27862F858[v31];
      }

      v28 = [v29 hk_errorForInvalidArgument:@"@" class:v30 selector:sel__changeStateForInsertingWithError_ format:{@"Invalid transition for HDSampleAggregateCachingSession from %@ -> Inserting", v32}];
    }

    else
    {
      if (state != 4)
      {
        goto LABEL_33;
      }

      v28 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"HDSampleAggregateCachingSession experienced a fatal error" underlyingError:self->_fatalError];
    }

LABEL_31:
    v33 = v28;
    v11 = v33;
    if (v33)
    {
      v34 = v33;
      v47 = v11;
    }

    goto LABEL_33;
  }

  if ((state - 1) >= 2)
  {
    if (!state)
    {
      if ([(HDSampleAggregateCachingSession *)self cachesExistWithError:&v47]== 2)
      {
        v11 = v47;
        goto LABEL_4;
      }

      v28 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__changeStateForInsertingWithError_ format:@"Must call activate on HDSampleAggregateCachingSession before inserting"];
      goto LABEL_31;
    }

LABEL_33:

    v35 = v47;
LABEL_34:
    v18 = v35;
    v10[2](v10, 0, v18);
    goto LABEL_35;
  }

LABEL_4:
  self->_state = 2;
  v13 = v11;
  if (v9)
  {
    maxAnchor = self->_maxAnchor;
    v15 = [v9 longLongValue];
    if (maxAnchor >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = maxAnchor;
    }

    self->_maxAnchor = v16;
    self->_anchorSetOnInsert = 1;
  }

  v46 = 0;
  v17 = [(HDSampleAggregateCachingSession *)self persistentAnchorDateWithError:&v46];
  v18 = v46;
  if (v17)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = v8;
    v20 = [v19 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v20)
    {
      v21 = *v43;
      do
      {
        v22 = 0;
        do
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(v19);
          }

          std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::__erase_unique<long>(&self->_staleIndexes, [*(*(&v42 + 1) + 8 * v22++) bucketIndexForIntervalComponents:self->_intervalComponents anchorDate:v17]);
        }

        while (v20 != v22);
        v20 = [v19 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v20);
    }

    v23 = self->_cacheStore;
    generationNumber = self->_generationNumber;
    v25 = [v19 copy];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __66__HDSampleAggregateCachingSession_insertCaches_anchor_completion___block_invoke;
    v37[3] = &unk_27862F810;
    v26 = v23;
    v38 = v26;
    v39 = v25;
    v40 = self;
    v41 = generationNumber;
    v27 = v25;
    [(HDSampleAggregateCachingSession *)self _writeToDatabaseOnCachePersistenceQueueWithBlock:v37 completion:v10];
  }

  else
  {
    v10[2](v10, 0, v18);
    [(HDSampleAggregateCachingSession *)self _changeStateForFatalError:v18];
  }

LABEL_35:
  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HDSampleAggregateCachingSession_insertCaches_anchor_completion___block_invoke(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) saveCaches:*(a1 + 40) generationNumber:*(a1 + 56) + 1 error:a2];
  if ((v4 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 48);
      v9 = *a2;
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Encountered failure when inserting caches: %@", &v10, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)finishWithCompletion:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 0;
  state = self->_state;
  if (state > 2)
  {
    if (state == 3)
    {
      v8 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__changeStateForFinishWithError_ format:@"HDSampleAggregateCachingSession is already finished"];
    }

    else
    {
      if (state != 4)
      {
LABEL_14:

        v9 = v5;
        goto LABEL_15;
      }

      v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"HDSampleAggregateCachingSession experienced a fatal error" underlyingError:self->_fatalError];
    }

    v10 = v8;
    v5 = v10;
    if (v10)
    {
      v11 = v10;
    }

    goto LABEL_14;
  }

  if (state < 2)
  {
    goto LABEL_3;
  }

  if (state != 2)
  {
    goto LABEL_14;
  }

  if (!self->_anchorSetOnInsert)
  {
    v9 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__validateTransitionToFinishWithError_ format:@"Cannot finish HDSampleAggregateCachingSession because a non-nil anchor must be specified for at least one insertion of caches."];
LABEL_15:
    v7 = v9;
    goto LABEL_16;
  }

LABEL_3:
  self->_state = 3;
  if (self->_staleIndexes.__table_.__size_)
  {
    v7 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__validateTransitionToFinishWithError_ format:{@"Cannot finish HDSampleAggregateCachingSession due to %ld buckets that still need updating", self->_staleIndexes.__table_.__size_}];
LABEL_16:
    v12 = v7;
    if (v7)
    {
      v13 = v7;
    }

    v14 = v12;
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
    {
      v16 = v15;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        cachingIdentifier = self->_cachingIdentifier;
        v28 = [v14 localizedDescription];
        *buf = 138543874;
        v59 = self;
        v60 = 2112;
        v61 = cachingIdentifier;
        v62 = 2114;
        v63 = v28;
        _os_log_debug_impl(&dword_228986000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ Finishing caching session %@ with error %{public}@", buf, 0x20u);
      }
    }

    v17 = 0;
LABEL_23:
    v4[2](v4, v17, v14);
    goto LABEL_24;
  }

  if (!state)
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
    {
      v45 = self->_cachingIdentifier;
      *buf = 138543618;
      v59 = self;
      v60 = 2112;
      v61 = v45;
      _os_log_debug_impl(&dword_228986000, v24, OS_LOG_TYPE_DEBUG, "%{public}@ Finishing caching session %@ successfully", buf, 0x16u);
    }

    v14 = 0;
    v17 = 1;
    goto LABEL_23;
  }

  v57 = 0;
  v19 = [(HDSampleAggregateCachingSession *)self persistentAnchorDateWithError:&v57];
  v14 = v57;
  v52 = v19;
  if (v19)
  {
    v20 = [(NSDateInterval *)self->_queryInterval startDate];
    if (v20)
    {
      v21 = MEMORY[0x277CCABB0];
      v22 = [(HDSampleAggregateCacheStore *)self->_cacheStore timeIntervalToBucketIndex];
      v23 = [(NSDateInterval *)self->_queryInterval startDate];
      [v23 timeIntervalSinceReferenceDate];
      v51 = [v21 numberWithInteger:{(v22)[2](v22, v52)}];
    }

    else
    {
      v51 = 0;
    }

    v29 = [(NSDateInterval *)self->_queryInterval endDate];
    if (v29)
    {
      v30 = MEMORY[0x277CCABB0];
      v31 = [(HDSampleAggregateCacheStore *)self->_cacheStore timeIntervalToBucketIndex];
      v32 = [(NSDateInterval *)self->_queryInterval endDate];
      [v32 timeIntervalSinceReferenceDate];
      v49 = [v30 numberWithInteger:{(v31)[2](v31, v52) - 1}];
    }

    else
    {
      v49 = 0;
    }

    v48 = [HDCachedQueryMetadata alloc];
    v33 = self->_cachingIdentifier;
    v34 = [(HDSQLiteEntity *)self->_sourceEntity persistentID];
    maxAnchor = self->_maxAnchor;
    generationNumber = self->_generationNumber;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v37 = [WeakRetained daemon];
    v38 = [v37 behavior];
    v39 = [v38 currentOSBuild];
    anchorDate = self->_anchorDate;
    v41 = [(HDCachedQueryMetadata *)v48 initWithCachingIdentifier:v33 sourceEntityPersistentID:v34 maxAnchor:maxAnchor queryStartIndex:v51 queryEndIndex:v49 generationNumber:generationNumber + 1 buildVersion:v39 anchorDate:anchorDate intervalComponents:self->_intervalComponents];

    v42 = objc_loadWeakRetained(&self->_profile);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __56__HDSampleAggregateCachingSession_finishWithCompletion___block_invoke;
    v53[3] = &unk_278624538;
    v54 = v41;
    v55 = v42;
    v56 = self;
    v43 = v42;
    v44 = v41;
    [(HDSampleAggregateCachingSession *)self _writeToDatabaseOnCachePersistenceQueueWithBlock:v53 completion:v4];
  }

  else
  {
    _HKInitializeLogging();
    v25 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
    {
      v26 = v25;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v46 = self->_cachingIdentifier;
        v47 = [v14 localizedDescription];
        *buf = 138543874;
        v59 = self;
        v60 = 2112;
        v61 = v46;
        v62 = 2114;
        v63 = v47;
        _os_log_debug_impl(&dword_228986000, v26, OS_LOG_TYPE_DEBUG, "%{public}@ Finishing caching session %@ with error %{public}@", buf, 0x20u);
      }
    }

    v4[2](v4, 0, v14);
    [(HDSampleAggregateCachingSession *)self _changeStateForFatalError:v14];
  }

LABEL_24:
  v18 = *MEMORY[0x277D85DE8];
}

BOOL __56__HDSampleAggregateCachingSession_finishWithCompletion___block_invoke(void *a1, uint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [HDCachedQueryMetadataEntity updateCachedQueryMetadata:a1[4] profile:a1[5] error:a2];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC308];
  v6 = *MEMORY[0x277CCC308];
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = a1[6];
      v8 = *(v7 + 40);
      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_debug_impl(&dword_228986000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ Finishing query %@ successfully", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = a1[6];
    v12 = *a2;
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Encountered failure when finishing session: %@", &v13, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

void __95__HDSampleAggregateCachingSession__writeToDatabaseOnCachePersistenceQueueWithBlock_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"sample-aggregate-caching-session-queue"];
  v2 = HKCreateSerialDispatchQueue();
  v3 = _MergedGlobals_224;
  _MergedGlobals_224 = v2;
}

void __95__HDSampleAggregateCachingSession__writeToDatabaseOnCachePersistenceQueueWithBlock_completion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 160))
  {
    v3 = *(*(a1 + 40) + 16);
    v4 = *MEMORY[0x277D85DE8];

    v3();
  }

  else
  {
    v5 = *(v2 + 176);
    v13 = 0;
    v6 = [(HDSampleAggregateCachingSession *)v2 _performWithAccessibilityAssertion:v5 requiresWrite:1 error:&v13 block:*(a1 + 48)];
    v7 = v13;
    v8 = v13;
    if ((v6 & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        *buf = 138543618;
        v15 = v12;
        v16 = 2112;
        v17 = v8;
        _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Encountered failure when updating caches: %@", buf, 0x16u);
      }

      objc_storeStrong((*(a1 + 32) + 160), v7);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v6, v8);
    }

    v11 = *MEMORY[0x277D85DE8];
  }
}

- (id).cxx_construct
{
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 36) = 1065353216;
  return self;
}

@end