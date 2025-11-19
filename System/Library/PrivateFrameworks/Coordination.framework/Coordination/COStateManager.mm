@interface COStateManager
+ (id)homed_COStateManagerWithSuiteName:(id)a3 homeIdentifier:(id)a4;
- (BOOL)_onqueue_clustersValid:(id)a3;
- (COStateManager)initWithConnectionProvider:(id)a3 suite:(id)a4 clusters:(id)a5;
- (COStateManager)initWithSuiteName:(id)a3 clusters:(id)a4;
- (NSXPCConnection)lastConnection;
- (id)_clustersForClustersTmp:(id)a3;
- (id)_remoteInterfaceWithErrorHandler:(id)a3;
- (id)_sanitizeChanges:(id)a3;
- (id)addObserverForKeyPathUsingPredicate:(id)a3 queue:(id)a4 usingBlock:(id)a5;
- (void)_invalidate;
- (void)_lostConnectionToService;
- (void)_onqueue_registerObserver:(id)a3;
- (void)_onqueue_removeObjectsForKeyPaths:(id)a3 clusters:(id)a4 cacheLocally:(BOOL)a5 completionHandler:(id)a6;
- (void)_onqueue_setDictionary:(id)a3 clusters:(id)a4 cacheLocally:(BOOL)a5 completionHandler:(id)a6;
- (void)_withLock:(id)a3;
- (void)changesObserved:(id)a3 forPredicate:(id)a4;
- (void)dealloc;
- (void)delayForDoorbellChimeWithCompletionHandler:(id)a3;
- (void)fetchCompositionForCluster:(id)a3 dispatchQueue:(id)a4 block:(id)a5;
- (void)removeObjectForKeyPath:(id)a3 clusters:(id)a4 completionHandler:(id)a5;
- (void)removeObjectsForKeyPaths:(id)a3 clusters:(id)a4 completionHandler:(id)a5;
- (void)removeObserver:(id)a3;
- (void)setBool:(BOOL)a3 forKeyPath:(id)a4 clusters:(id)a5 completionHandler:(id)a6;
- (void)setDate:(id)a3 forKeyPath:(id)a4 clusters:(id)a5 completionHandler:(id)a6;
- (void)setDictionary:(id)a3 clusters:(id)a4 completionHandler:(id)a5;
- (void)setNumber:(id)a3 forKeyPath:(id)a4 clusters:(id)a5 completionHandler:(id)a6;
- (void)setString:(id)a3 forKeyPath:(id)a4 clusters:(id)a5 completionHandler:(id)a6;
@end

@implementation COStateManager

- (COStateManager)initWithConnectionProvider:(id)a3 suite:(id)a4 clusters:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = COStateManager;
  v12 = [(COStateManager *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_provider, a3);
    v14 = objc_alloc_init(MEMORY[0x277CBEA60]);
    observers = v13->_observers;
    v13->_observers = v14;

    objc_storeStrong(&v13->_suite, a4);
    objc_storeStrong(&v13->_clusters, a5);
    v13->_lock._os_unfair_lock_opaque = 0;
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.COStateManager.queue", v16);
    workQueue = v13->_workQueue;
    v13->_workQueue = v17;

    v19 = COLogForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [COStateManager initWithConnectionProvider:v13 suite:v9 clusters:v19];
    }
  }

  return v13;
}

- (COStateManager)initWithSuiteName:(id)a3 clusters:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      v14 = v8;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [COCluster _clusterForCluster:*(*(&v20 + 1) + 8 * v13), v20];
        v8 = [v14 setByAddingObject:v15];

        ++v13;
        v14 = v8;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v16 = objc_alloc_init(_COStateManagerConnectionProvider);
  v17 = [(COStateManager *)self initWithConnectionProvider:v16 suite:v6 clusters:v8];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)dealloc
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__COStateManager_dealloc__block_invoke;
  v4[3] = &unk_278E12430;
  v4[4] = self;
  [(COStateManager *)self _withLock:v4];
  v3.receiver = self;
  v3.super_class = COStateManager;
  [(COStateManager *)&v3 dealloc];
}

void __25__COStateManager_dealloc__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) lastConnection];
  v1 = [v3 co_originalInterruptionHandler];
  [v3 setInterruptionHandler:v1];

  v2 = [v3 co_originalInvalidationHandler];
  [v3 setInvalidationHandler:v2];

  [v3 invalidate];
}

- (void)setBool:(BOOL)a3 forKeyPath:(id)a4 clusters:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = [(COStateManager *)self _clustersForClustersTmp:a5];
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__COStateManager_setBool_forKeyPath_clusters_completionHandler___block_invoke;
  block[3] = &unk_278E12698;
  block[4] = self;
  v18 = v10;
  v21 = a3;
  v19 = v12;
  v20 = v11;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  dispatch_async(workQueue, block);
}

void __64__COStateManager_setBool_forKeyPath_clusters_completionHandler___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64)];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 _onqueue_setDictionary:v4 clusters:*(a1 + 48) cacheLocally:1 completionHandler:*(a1 + 56)];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setNumber:(id)a3 forKeyPath:(id)a4 clusters:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(COStateManager *)self _clustersForClustersTmp:a5];
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__COStateManager_setNumber_forKeyPath_clusters_completionHandler___block_invoke;
  block[3] = &unk_278E126C0;
  block[4] = self;
  v20 = v11;
  v21 = v10;
  v22 = v13;
  v23 = v12;
  v15 = v12;
  v16 = v13;
  v17 = v10;
  v18 = v11;
  dispatch_async(workQueue, block);
}

void __66__COStateManager_setNumber_forKeyPath_clusters_completionHandler___block_invoke(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[6];
  v6 = a1[5];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 _onqueue_setDictionary:v4 clusters:a1[7] cacheLocally:1 completionHandler:a1[8]];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setString:(id)a3 forKeyPath:(id)a4 clusters:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(COStateManager *)self _clustersForClustersTmp:a5];
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__COStateManager_setString_forKeyPath_clusters_completionHandler___block_invoke;
  block[3] = &unk_278E126C0;
  block[4] = self;
  v20 = v11;
  v21 = v10;
  v22 = v13;
  v23 = v12;
  v15 = v12;
  v16 = v13;
  v17 = v10;
  v18 = v11;
  dispatch_async(workQueue, block);
}

void __66__COStateManager_setString_forKeyPath_clusters_completionHandler___block_invoke(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[6];
  v6 = a1[5];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 _onqueue_setDictionary:v4 clusters:a1[7] cacheLocally:1 completionHandler:a1[8]];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setDate:(id)a3 forKeyPath:(id)a4 clusters:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(COStateManager *)self _clustersForClustersTmp:a5];
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__COStateManager_setDate_forKeyPath_clusters_completionHandler___block_invoke;
  block[3] = &unk_278E126C0;
  block[4] = self;
  v20 = v11;
  v21 = v10;
  v22 = v13;
  v23 = v12;
  v15 = v12;
  v16 = v13;
  v17 = v10;
  v18 = v11;
  dispatch_async(workQueue, block);
}

void __64__COStateManager_setDate_forKeyPath_clusters_completionHandler___block_invoke(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[6];
  v6 = a1[5];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 _onqueue_setDictionary:v4 clusters:a1[7] cacheLocally:1 completionHandler:a1[8]];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setDictionary:(id)a3 clusters:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(COStateManager *)self _clustersForClustersTmp:a4];
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__COStateManager_setDictionary_clusters_completionHandler___block_invoke;
  v15[3] = &unk_278E12390;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(workQueue, v15);
}

- (void)removeObjectForKeyPath:(id)a3 clusters:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(COStateManager *)self _clustersForClustersTmp:a4];
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__COStateManager_removeObjectForKeyPath_clusters_completionHandler___block_invoke;
  v15[3] = &unk_278E12390;
  v16 = v8;
  v17 = self;
  v18 = v10;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(workQueue, v15);
}

void __68__COStateManager_removeObjectForKeyPath_clusters_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
  [*(a1 + 40) removeObjectsForKeyPaths:v2 clusters:*(a1 + 48) completionHandler:*(a1 + 56)];
}

- (void)removeObjectsForKeyPaths:(id)a3 clusters:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(COStateManager *)self _clustersForClustersTmp:a4];
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__COStateManager_removeObjectsForKeyPaths_clusters_completionHandler___block_invoke;
  v15[3] = &unk_278E12390;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(workQueue, v15);
}

- (id)addObserverForKeyPathUsingPredicate:(id)a3 queue:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2;
  v34 = __Block_byref_object_dispose__2;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29 = dispatch_group_create();
  dispatch_group_enter(v25[5]);
  workQueue = self->_workQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__COStateManager_addObserverForKeyPathUsingPredicate_queue_usingBlock___block_invoke;
  v17[3] = &unk_278E126E8;
  v18 = v9;
  v19 = v8;
  v20 = self;
  v21 = v10;
  v22 = &v30;
  v23 = &v24;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(workQueue, v17);
  dispatch_group_wait(v25[5], 0xFFFFFFFFFFFFFFFFLL);
  v15 = v31[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v15;
}

void __71__COStateManager_addObserverForKeyPathUsingPredicate_queue_usingBlock___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [[COStateObserver alloc] initWithDispatchQueue:*(a1 + 32) predicate:*(a1 + 40) block:*(a1 + 56)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = COLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __71__COStateManager_addObserverForKeyPathUsingPredicate_queue_usingBlock___block_invoke_cold_1(a1, (a1 + 40));
  }

  [*(a1 + 48) _onqueue_registerObserver:*(*(*(a1 + 64) + 8) + 40)];
  v6 = [*(a1 + 48) observers];
  v7 = [v6 mutableCopy];

  [v7 addObject:*(*(*(a1 + 64) + 8) + 40)];
  [*(a1 + 48) setObservers:v7];
  v8 = COLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(*(*(a1 + 64) + 8) + 40);
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = 134218498;
    v14 = v11;
    v15 = 2048;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    _os_log_debug_impl(&dword_244328000, v8, OS_LOG_TYPE_DEBUG, "StateManager %p added observer %p with predicate %@", &v13, 0x20u);
  }

  dispatch_group_leave(*(*(*(a1 + 72) + 8) + 40));
  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__COStateManager_removeObserver___block_invoke;
  v7[3] = &unk_278E12368;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __33__COStateManager_removeObserver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) observers];
  v4 = [v3 indexOfObject:v2];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v6 = [v3 mutableCopy];
    objc_initWeak(&location, *(a1 + 40));
    v7 = *(a1 + 40);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __33__COStateManager_removeObserver___block_invoke_2;
    v13 = &unk_278E12710;
    objc_copyWeak(&v14, &location);
    v8 = [v7 _remoteInterfaceWithErrorHandler:&v10];
    v9 = [v2 predicate];
    [v8 removeObserverWithPredicate:v9];

    [v6 removeObjectAtIndex:v5];
    [*(a1 + 40) setObservers:v6];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __33__COStateManager_removeObserver___block_invoke_2(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v10 = *MEMORY[0x277CCA7E8];
    v11[0] = v3;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COStateManagerErrorDomain" code:-1001 userInfo:v6];
    v8 = COLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __33__COStateManager_removeObserver___block_invoke_2_cold_1();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)changesObserved:(id)a3 forPredicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__COStateManager_changesObserved_forPredicate___block_invoke;
  block[3] = &unk_278E12738;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workQueue, block);
}

void __47__COStateManager_changesObserved_forPredicate___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = COLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __47__COStateManager_changesObserved_forPredicate___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) _sanitizeChanges:*(a1 + 40)];
  v4 = [*(a1 + 32) observers];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    *&v6 = 134218240;
    v16 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 predicate];
        v12 = [v11 isEqual:*(a1 + 48)];

        if (v12)
        {
          v13 = COLogForCategory(4);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(a1 + 32);
            *buf = v16;
            v22 = v14;
            v23 = 2048;
            v24 = v10;
            _os_log_impl(&dword_244328000, v13, OS_LOG_TYPE_DEFAULT, "StateManager %p notifying observer %p of changes", buf, 0x16u);
          }

          [v10 notify:v3];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_setDictionary:(id)a3 clusters:(id)a4 cacheLocally:(BOOL)a5 completionHandler:(id)a6
{
  v76 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v41 = a6;
  dispatch_assert_queue_V2(self->_workQueue);
  v40 = v11;
  if ([(COStateManager *)self _onqueue_clustersValid:v11])
  {
    v38 = a5;
    val = self;
    if (_onqueue_setDictionary_clusters_cacheLocally_completionHandler__onceToken != -1)
    {
      [COStateManager _onqueue_setDictionary:clusters:cacheLocally:completionHandler:];
    }

    v45 = [MEMORY[0x277CBEB38] dictionary];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = [v10 allKeys];
    v12 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
    if (v12)
    {
      v43 = *v66;
      while (1)
      {
        v13 = 0;
LABEL_7:
        if (*v66 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v65 + 1) + 8 * v13);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v15 = v14;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v16 = _onqueue_setDictionary_clusters_cacheLocally_completionHandler__supportedClasses;
        v17 = [v16 countByEnumeratingWithState:&v61 objects:v74 count:16];
        if (!v17)
        {
LABEL_26:

          break;
        }

        v18 = *v62;
LABEL_12:
        v19 = 0;
        while (1)
        {
          if (*v62 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v61 + 1) + 8 * v19);
          v21 = [v10 objectForKeyedSubscript:v15];
          LOBYTE(v20) = objc_opt_isKindOfClass();

          if (v20)
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [v16 countByEnumeratingWithState:&v61 objects:v74 count:16];
            if (v17)
            {
              goto LABEL_12;
            }

            goto LABEL_26;
          }
        }

        v22 = [v10 objectForKeyedSubscript:v15];
        v23 = [v15 absoluteString];
        [v45 setObject:v22 forKey:v23];

        if (++v13 != v12)
        {
          goto LABEL_7;
        }

        v12 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
        if (!v12)
        {
          goto LABEL_21;
        }
      }

      v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COStateManagerErrorDomain" code:-1003 userInfo:0];
      v32 = COLogForCategory(4);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *location = 134218498;
        *&location[4] = val;
        v70 = 2112;
        v71 = v10;
        v72 = 2112;
        v73 = v31;
        _os_log_error_impl(&dword_244328000, v32, OS_LOG_TYPE_ERROR, "%p failed to set state %@ since it contains unsupported types - %@", location, 0x20u);
      }

      v41[2](v41, v31);
    }

    else
    {
LABEL_21:

      objc_initWeak(location, val);
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __81__COStateManager__onqueue_setDictionary_clusters_cacheLocally_completionHandler___block_invoke_86;
      v56[3] = &unk_278E12760;
      objc_copyWeak(&v60, location);
      v24 = v40;
      v57 = v24;
      v45 = v45;
      v58 = v45;
      v25 = v10;
      v59 = v25;
      v26 = MEMORY[0x245D5F6A0](v56);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __81__COStateManager__onqueue_setDictionary_clusters_cacheLocally_completionHandler___block_invoke_2;
      v50[3] = &unk_278E127B0;
      objc_copyWeak(&v54, location);
      v51 = v25;
      v27 = v41;
      v52 = v27;
      v55 = v38;
      v28 = v26;
      v53 = v28;
      v44 = [(COStateManager *)val _remoteInterfaceWithErrorHandler:v50];
      if (v24)
      {
        v29 = v24;
      }

      else
      {
        v29 = [(COStateManager *)val clusters];
      }

      v33 = v29;
      v34 = [(COStateManager *)val suite];
      v35 = [(COStateManager *)val clusters];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __81__COStateManager__onqueue_setDictionary_clusters_cacheLocally_completionHandler___block_invoke_88;
      v46[3] = &unk_278E127D8;
      objc_copyWeak(&v49, location);
      v36 = v28;
      v47 = v36;
      v48 = v27;
      [v44 setDictionary:v45 suite:v34 interestClusters:v35 targetCluster:v33 withCallback:v46];

      objc_destroyWeak(&v49);
      objc_destroyWeak(&v54);

      objc_destroyWeak(&v60);
      objc_destroyWeak(location);
    }
  }

  else
  {
    v30 = COLogForCategory(4);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [COStateManager _onqueue_setDictionary:clusters:cacheLocally:completionHandler:];
    }

    v45 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COStateManagerErrorDomain" code:-1000 userInfo:0];
    v41[2](v41, v45);
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __81__COStateManager__onqueue_setDictionary_clusters_cacheLocally_completionHandler___block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  _onqueue_setDictionary_clusters_cacheLocally_completionHandler__supportedClasses = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

void __81__COStateManager__onqueue_setDictionary_clusters_cacheLocally_completionHandler___block_invoke_86(uint64_t a1, void *a2, uint64_t a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v36 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained state];
    v33 = v7;
    if (v8)
    {
      v9 = [v7 state];
      v10 = [v9 mutableCopy];
    }

    else
    {
      v10 = [MEMORY[0x277CBEB38] dictionary];
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = *(v36 + 32);
    v11 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v42;
      v32 = a3;
      v31 = v5;
      v34 = *v42;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v42 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v41 + 1) + 8 * i);
          if (([v5 containsObject:{v15, v31}] & 1) == 0)
          {
            v16 = [v10 objectForKeyedSubscript:v15];
            if (v16)
            {
              [v10 objectForKeyedSubscript:v15];
              v17 = v10;
              v18 = v12;
              v19 = v7;
              v21 = v20 = a3;
              v22 = [v21 mutableCopy];

              a3 = v20;
              v7 = v19;
              v12 = v18;
              v10 = v17;
            }

            else
            {
              v22 = [MEMORY[0x277CBEB38] dictionary];
            }

            [v22 addEntriesFromDictionary:*(v36 + 40)];
            [v10 setObject:v22 forKey:v15];
            [v7 setState:v10];
            if (a3)
            {
              v46[0] = @"COStateManagerChangesCluster";
              v46[1] = @"COStateManagerChangesUpdatedKeyPaths";
              v23 = *(v36 + 48);
              v47[0] = v15;
              v47[1] = v23;
              v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v25 = [v7 observers];
              v26 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v38;
                do
                {
                  for (j = 0; j != v27; ++j)
                  {
                    if (*v38 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    [*(*(&v37 + 1) + 8 * j) notify:v24];
                  }

                  v27 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
                }

                while (v27);
              }

              v5 = v31;
              a3 = v32;
              v7 = v33;
            }

            v13 = v34;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v12);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __81__COStateManager__onqueue_setDictionary_clusters_cacheLocally_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __81__COStateManager__onqueue_setDictionary_clusters_cacheLocally_completionHandler___block_invoke_3;
    v7[3] = &unk_278E12788;
    v8 = v3;
    v9 = v5;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(a1 + 64);
    v12 = *(a1 + 48);
    dispatch_async(v6, v7);
  }
}

void __81__COStateManager__onqueue_setDictionary_clusters_cacheLocally_completionHandler___block_invoke_3(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    v7 = *MEMORY[0x277CCA7E8];
    v8[0] = v1;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COStateManagerErrorDomain" code:-1001 userInfo:v3];
    v5 = COLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __81__COStateManager__onqueue_setDictionary_clusters_cacheLocally_completionHandler___block_invoke_3_cold_1(a1);
    }

    (*(*(a1 + 56) + 16))();
    if (*(a1 + 72) == 1)
    {
      (*(*(a1 + 64) + 16))();
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __81__COStateManager__onqueue_setDictionary_clusters_cacheLocally_completionHandler___block_invoke_88(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[2];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__COStateManager__onqueue_setDictionary_clusters_cacheLocally_completionHandler___block_invoke_2_89;
    v9[3] = &unk_278E121C0;
    v10 = v3;
    v11 = *(a1 + 32);
    dispatch_async(v8, v9);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v5, v6);
}

void __81__COStateManager__onqueue_setDictionary_clusters_cacheLocally_completionHandler___block_invoke_2_89(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 userInfo];
    v4 = [v3 objectForKeyedSubscript:@"COStateManagerErrorFailedClustersKey"];
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_onqueue_removeObjectsForKeyPaths:(id)a3 clusters:(id)a4 cacheLocally:(BOOL)a5 completionHandler:(id)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v10 = a4;
  v11 = a6;
  dispatch_assert_queue_V2(self->_workQueue);
  if ([(COStateManager *)self _onqueue_clustersValid:v10])
  {
    v30 = a5;
    v12 = [MEMORY[0x277CBEB58] set];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v13 = v31;
    v14 = [v13 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v14)
    {
      v15 = *v48;
      do
      {
        v16 = 0;
        do
        {
          if (*v48 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v47 + 1) + 8 * v16);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v17 absoluteString];
            [v12 addObject:v18];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v14);
    }

    objc_initWeak(&location, self);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __92__COStateManager__onqueue_removeObjectsForKeyPaths_clusters_cacheLocally_completionHandler___block_invoke;
    v41[3] = &unk_278E12760;
    objc_copyWeak(&v45, &location);
    v19 = v10;
    v42 = v19;
    v20 = v12;
    v43 = v20;
    v44 = v13;
    v21 = MEMORY[0x245D5F6A0](v41);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __92__COStateManager__onqueue_removeObjectsForKeyPaths_clusters_cacheLocally_completionHandler___block_invoke_2;
    v36[3] = &unk_278E12828;
    objc_copyWeak(&v39, &location);
    v22 = v11;
    v37 = v22;
    v40 = v30;
    v23 = v21;
    v38 = v23;
    v24 = [(COStateManager *)self _remoteInterfaceWithErrorHandler:v36];
    if (v19)
    {
      v25 = v19;
    }

    else
    {
      v25 = [(COStateManager *)self clusters];
    }

    v27 = v25;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __92__COStateManager__onqueue_removeObjectsForKeyPaths_clusters_cacheLocally_completionHandler___block_invoke_91;
    v32[3] = &unk_278E127D8;
    objc_copyWeak(&v35, &location);
    v28 = v23;
    v33 = v28;
    v34 = v22;
    [v24 removeKeyPaths:v20 targetClusters:v27 withCallback:v32];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v39);

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  else
  {
    v26 = COLogForCategory(4);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [COStateManager _onqueue_removeObjectsForKeyPaths:clusters:cacheLocally:completionHandler:];
    }

    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COStateManagerErrorDomain" code:-1000 userInfo:0];
    (*(v11 + 2))(v11, v20);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __92__COStateManager__onqueue_removeObjectsForKeyPaths_clusters_cacheLocally_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v37 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained state];
    v34 = v7;
    if (v8)
    {
      v9 = [v7 state];
      v10 = [v9 mutableCopy];
    }

    else
    {
      v10 = [MEMORY[0x277CBEB38] dictionary];
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = *(v37 + 32);
    v11 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v43;
      v33 = a3;
      v32 = v5;
      v35 = *v43;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v42 + 1) + 8 * i);
          if (([v5 containsObject:{v15, v32}] & 1) == 0)
          {
            v16 = [v10 objectForKeyedSubscript:v15];
            if (v16)
            {
              [v10 objectForKeyedSubscript:v15];
              v17 = v5;
              v18 = v12;
              v19 = v7;
              v21 = v20 = a3;
              v22 = [v21 mutableCopy];

              a3 = v20;
              v7 = v19;
              v12 = v18;
              v5 = v17;
            }

            else
            {
              v22 = [MEMORY[0x277CBEB38] dictionary];
            }

            v23 = [*(v37 + 40) allObjects];
            [v22 removeObjectsForKeys:v23];

            [v10 setObject:v22 forKey:v15];
            [v7 setState:v10];
            if (a3)
            {
              v47[0] = @"COStateManagerChangesCluster";
              v47[1] = @"COStateManagerChangesRemovedKeyPaths";
              v24 = *(v37 + 48);
              v48[0] = v15;
              v48[1] = v24;
              v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v26 = [v7 observers];
              v27 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v39;
                do
                {
                  for (j = 0; j != v28; ++j)
                  {
                    if (*v39 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    [*(*(&v38 + 1) + 8 * j) notify:v25];
                  }

                  v28 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
                }

                while (v28);
              }

              v5 = v32;
              a3 = v33;
              v7 = v34;
            }

            v13 = v35;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
      }

      while (v12);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __92__COStateManager__onqueue_removeObjectsForKeyPaths_clusters_cacheLocally_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = WeakRetained[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__COStateManager__onqueue_removeObjectsForKeyPaths_clusters_cacheLocally_completionHandler___block_invoke_3;
    block[3] = &unk_278E12800;
    v8 = v3;
    v9 = v5;
    v10 = *(a1 + 32);
    v12 = *(a1 + 56);
    v11 = *(a1 + 40);
    dispatch_async(v6, block);
  }
}

void __92__COStateManager__onqueue_removeObjectsForKeyPaths_clusters_cacheLocally_completionHandler___block_invoke_3(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v7 = *MEMORY[0x277CCA7E8];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COStateManagerErrorDomain" code:-1001 userInfo:v3];
  v5 = COLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __92__COStateManager__onqueue_removeObjectsForKeyPaths_clusters_cacheLocally_completionHandler___block_invoke_3_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
  if (*(a1 + 64) == 1)
  {
    (*(*(a1 + 56) + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __92__COStateManager__onqueue_removeObjectsForKeyPaths_clusters_cacheLocally_completionHandler___block_invoke_91(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[2];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __92__COStateManager__onqueue_removeObjectsForKeyPaths_clusters_cacheLocally_completionHandler___block_invoke_2_92;
    v9[3] = &unk_278E121C0;
    v10 = v3;
    v11 = *(a1 + 32);
    dispatch_async(v8, v9);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v5, v6);
}

void __92__COStateManager__onqueue_removeObjectsForKeyPaths_clusters_cacheLocally_completionHandler___block_invoke_2_92(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 userInfo];
    v4 = [v3 objectForKeyedSubscript:@"COStateManagerErrorFailedClustersKey"];
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_onqueue_registerObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __44__COStateManager__onqueue_registerObserver___block_invoke;
  v12 = &unk_278E12710;
  objc_copyWeak(&v13, &location);
  v5 = [(COStateManager *)self _remoteInterfaceWithErrorHandler:&v9];
  v6 = [v4 predicate];
  v7 = [(COStateManager *)self suite];
  v8 = [(COStateManager *)self clusters];
  [v5 addObserverWithPredicate:v6 suite:v7 interestClusters:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __44__COStateManager__onqueue_registerObserver___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v10 = *MEMORY[0x277CCA7E8];
    v11[0] = v3;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COStateManagerErrorDomain" code:-1001 userInfo:v6];
    v8 = COLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __44__COStateManager__onqueue_registerObserver___block_invoke_cold_1();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_lostConnectionToService
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__COStateManager__lostConnectionToService__block_invoke;
  block[3] = &unk_278E12878;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(workQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__COStateManager__lostConnectionToService__block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (WeakRetained[24] & 1) == 0)
  {
    WeakRetained[24] = 1;
    v28 = WeakRetained;
    v2 = [WeakRetained observers];
    v22 = [v28 state];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v2;
    v3 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v3)
    {
      v4 = *v45;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v45 != v4)
          {
            objc_enumerationMutation(obj);
          }

          [v28 _onqueue_registerObserver:*(*(&v44 + 1) + 8 * i)];
        }

        v3 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v3);
    }

    if ([v22 count])
    {
      v40 = 0;
      v41 = &v40;
      v42 = 0x2020000000;
      v43 = 0;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v26 = v22;
      v6 = [v26 countByEnumeratingWithState:&v36 objects:v49 count:16];
      if (v6)
      {
        v23 = *v37;
        do
        {
          v24 = v6;
          for (j = 0; j != v24; ++j)
          {
            if (*v37 != v23)
            {
              objc_enumerationMutation(v26);
            }

            v8 = *(*(&v36 + 1) + 8 * j);
            v9 = [v26 objectForKeyedSubscript:v8];
            v10 = [MEMORY[0x277CBEB38] dictionary];
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v11 = v9;
            v12 = [v11 countByEnumeratingWithState:&v32 objects:v48 count:16];
            if (v12)
            {
              v13 = *v33;
              do
              {
                for (k = 0; k != v12; ++k)
                {
                  if (*v33 != v13)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v15 = *(*(&v32 + 1) + 8 * k);
                  v16 = [COKeyPath createWithString:v15];
                  v17 = [v11 objectForKeyedSubscript:v15];
                  [v10 setObject:v17 forKey:v16];
                }

                v12 = [v11 countByEnumeratingWithState:&v32 objects:v48 count:16];
              }

              while (v12);
            }

            ++v41[3];
            v18 = *(a1 + 32);
            v19 = [MEMORY[0x277CBEB98] setWithObject:v8];
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __42__COStateManager__lostConnectionToService__block_invoke_2;
            v29[3] = &unk_278E12850;
            v29[4] = v28;
            v20 = v10;
            v30 = v20;
            v31 = &v40;
            [v18 _onqueue_setDictionary:v20 clusters:v19 cacheLocally:0 completionHandler:v29];
          }

          v6 = [v26 countByEnumeratingWithState:&v36 objects:v49 count:16];
        }

        while (v6);
      }

      _Block_object_dispose(&v40, 8);
    }

    else
    {
      v28[24] = 0;
    }

    WeakRetained = v28;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __42__COStateManager__lostConnectionToService__block_invoke_2(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COLogForCategory(4);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__COStateManager__lostConnectionToService__block_invoke_2_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v9 = 134218242;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p Successfully re-presented state %@", &v9, 0x16u);
  }

  if (!--*(*(a1[6] + 8) + 24))
  {
    *(a1[4] + 24) = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_onqueue_clustersValid:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  v6 = [v5 mutableCopy];

  v7 = [(COStateManager *)self clusters];
  [v6 minusSet:v7];

  LOBYTE(v7) = [v6 count] == 0;
  return v7;
}

- (id)_clustersForClustersTmp:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB98]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        v10 = v4;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [COCluster _clusterForCluster:*(*(&v14 + 1) + 8 * v9), v14];
          v4 = [v10 setByAddingObject:v11];

          ++v9;
          v10 = v4;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_sanitizeChanges:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v25 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [v3 objectForKeyedSubscript:@"COStateManagerChangesUpdatedKeyPaths"];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [v4 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [COKeyPath createWithString:v11];
        v13 = [v4 objectForKeyedSubscript:v11];
        [v5 setObject:v13 forKey:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  v14 = [v3 objectForKeyedSubscript:@"COStateManagerChangesRemovedKeyPaths"];
  v15 = [MEMORY[0x277CBEB58] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [COKeyPath createWithString:*(*(&v26 + 1) + 8 * j)];
        [v15 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  v22 = [v3 objectForKeyedSubscript:@"COStateManagerChangesCluster"];
  [v25 setObject:v22 forKey:@"COStateManagerChangesCluster"];

  [v25 setObject:v5 forKey:@"COStateManagerChangesUpdatedKeyPaths"];
  [v25 setObject:v15 forKey:@"COStateManagerChangesRemovedKeyPaths"];

  v23 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_remoteInterfaceWithErrorHandler:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__COStateManager__remoteInterfaceWithErrorHandler___block_invoke;
  v7[3] = &unk_278E122F0;
  v7[4] = self;
  v7[5] = &v8;
  [(COStateManager *)self _withLock:v7];
  v5 = [v9[5] remoteObjectProxyWithErrorHandler:v4];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __51__COStateManager__remoteInterfaceWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  v3 = [v2 stateManagerServiceConnection];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [*(a1 + 32) lastConnection];

  if (v6 != v7)
  {
    v8 = &unk_2857B6610;
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v8];
    if (+[COFeatureStatus isCOClusterEnabled])
    {
      v10 = [v9 classesForSelector:sel_changesObserved_forPredicate_ argumentIndex:0 ofReply:0];
      v11 = [v10 setByAddingObject:objc_opt_class()];

      [v9 setClasses:v11 forSelector:sel_changesObserved_forPredicate_ argumentIndex:0 ofReply:0];
    }

    v12 = [[COStateManagerClientInterfaceMediator alloc] initWithStateManager:*(a1 + 32)];
    [*(*(*(a1 + 40) + 8) + 40) setExportedInterface:v9];
    v37 = v12;
    [*(*(*(a1 + 40) + 8) + 40) setExportedObject:v12];
    v13 = &unk_2857BCA30;

    v14 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v13];

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v15 setWithObjects:{v16, v17, v18, v19, v20, objc_opt_class(), 0}];
    [v14 setClasses:v21 forSelector:sel_requestCompositionForCluster_withCallback_ argumentIndex:0 ofReply:1];
    v22 = +[COCluster _allowedClusterClasses];
    [v14 setClasses:v22 forSelector:sel_requestCompositionForCluster_withCallback_ argumentIndex:0 ofReply:0];

    v23 = +[COCluster _allowedClusterClasses];
    v24 = [v23 setByAddingObject:objc_opt_class()];

    [v14 setClasses:v24 forSelector:sel_addObserverWithPredicate_suite_interestClusters_ argumentIndex:2 ofReply:0];
    [v14 setClasses:v24 forSelector:sel_setDictionary_suite_interestClusters_targetCluster_withCallback_ argumentIndex:2 ofReply:0];
    [v14 setClasses:v24 forSelector:sel_setDictionary_suite_interestClusters_targetCluster_withCallback_ argumentIndex:3 ofReply:0];
    [v14 setClasses:v24 forSelector:sel_removeKeyPaths_targetClusters_withCallback_ argumentIndex:1 ofReply:0];
    v25 = [v14 classesForSelector:sel_setDictionary_suite_interestClusters_targetCluster_withCallback_ argumentIndex:0 ofReply:1];

    v26 = +[COCluster _allowedClusterClasses];
    v27 = [v25 setByAddingObjectsFromSet:v26];

    [v14 setClasses:v27 forSelector:sel_setDictionary_suite_interestClusters_targetCluster_withCallback_ argumentIndex:0 ofReply:1];
    v28 = [v14 classesForSelector:sel_removeKeyPaths_targetClusters_withCallback_ argumentIndex:0 ofReply:1];

    v29 = +[COCluster _allowedClusterClasses];
    v30 = [v28 setByAddingObjectsFromSet:v29];

    [v14 setClasses:v30 forSelector:sel_removeKeyPaths_targetClusters_withCallback_ argumentIndex:0 ofReply:1];
    [*(*(*(a1 + 40) + 8) + 40) setRemoteObjectInterface:v14];
    objc_initWeak(location, *(a1 + 32));
    v31 = [*(*(*(a1 + 40) + 8) + 40) interruptionHandler];
    v32 = [*(*(*(a1 + 40) + 8) + 40) invalidationHandler];
    [*(*(*(a1 + 40) + 8) + 40) co_setOriginalInterruptionHandler:v31];
    [*(*(*(a1 + 40) + 8) + 40) co_setOriginalInvalidationHandler:v32];
    v33 = *(*(*(a1 + 40) + 8) + 40);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __51__COStateManager__remoteInterfaceWithErrorHandler___block_invoke_2;
    v41[3] = &unk_278E128A0;
    v34 = v31;
    v42 = v34;
    objc_copyWeak(&v43, location);
    [v33 setInterruptionHandler:v41];
    v35 = *(*(*(a1 + 40) + 8) + 40);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __51__COStateManager__remoteInterfaceWithErrorHandler___block_invoke_167;
    v38[3] = &unk_278E128A0;
    v36 = v32;
    v39 = v36;
    objc_copyWeak(&v40, location);
    [v35 setInvalidationHandler:v38];
    [*(a1 + 32) setLastConnection:*(*(*(a1 + 40) + 8) + 40)];
    [*(*(*(a1 + 40) + 8) + 40) resume];
    objc_destroyWeak(&v40);

    objc_destroyWeak(&v43);
    objc_destroyWeak(location);
  }
}

void __51__COStateManager__remoteInterfaceWithErrorHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = COLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__COStateManager__remoteInterfaceWithErrorHandler___block_invoke_2_cold_1();
    }
  }
}

void __51__COStateManager__remoteInterfaceWithErrorHandler___block_invoke_167(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = COLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__COStateManager__remoteInterfaceWithErrorHandler___block_invoke_167_cold_1();
    }
  }
}

- (void)_invalidate
{
  v2 = [(COStateManagerConnectionProvider *)self->_provider stateManagerServiceConnection];
  [v2 invalidate];
}

- (NSXPCConnection)lastConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_lastConnection);

  return WeakRetained;
}

- (void)fetchCompositionForCluster:(id)a3 dispatchQueue:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__COStateManager_ClusterExamination__fetchCompositionForCluster_dispatchQueue_block___block_invoke;
  v17[3] = &unk_278E12710;
  objc_copyWeak(&v18, &location);
  v11 = [(COStateManager *)self _remoteInterfaceWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__COStateManager_ClusterExamination__fetchCompositionForCluster_dispatchQueue_block___block_invoke_242;
  v14[3] = &unk_278E128F0;
  v12 = v9;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  [v11 requestCompositionForCluster:v8 withCallback:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __85__COStateManager_ClusterExamination__fetchCompositionForCluster_dispatchQueue_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = COLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __85__COStateManager_ClusterExamination__fetchCompositionForCluster_dispatchQueue_block___block_invoke_cold_1();
    }
  }
}

void __85__COStateManager_ClusterExamination__fetchCompositionForCluster_dispatchQueue_block___block_invoke_242(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__COStateManager_ClusterExamination__fetchCompositionForCluster_dispatchQueue_block___block_invoke_2;
  block[3] = &unk_278E128C8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)delayForDoorbellChimeWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__COStateManager_Doorbell__delayForDoorbellChimeWithCompletionHandler___block_invoke;
  v10[3] = &unk_278E12458;
  objc_copyWeak(&v12, &location);
  v5 = v4;
  v11 = v5;
  v6 = [(COStateManager *)self _remoteInterfaceWithErrorHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__COStateManager_Doorbell__delayForDoorbellChimeWithCompletionHandler___block_invoke_246;
  v8[3] = &unk_278E12918;
  v7 = v5;
  v9 = v7;
  [v6 doorbellDelayWithCallback:v8];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __71__COStateManager_Doorbell__delayForDoorbellChimeWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v10 = *MEMORY[0x277CCA7E8];
    v11[0] = v3;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COStateManagerErrorDomain" code:-1001 userInfo:v6];
    v8 = COLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __71__COStateManager_Doorbell__delayForDoorbellChimeWithCompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))(0.2);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)homed_COStateManagerWithSuiteName:(id)a3 homeIdentifier:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [COCluster _homeClusterForHomeKitHomeIdentifier:v5];
  v8 = [MEMORY[0x277CBEB98] setWithObject:v7];
  v9 = [[COStateManager alloc] initWithSuiteName:v6 clusters:v8];

  v10 = COLogForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218499;
    v14 = v9;
    v15 = 2113;
    v16 = v5;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_244328000, v10, OS_LOG_TYPE_DEFAULT, "%p Created homed COStateManager instance for %{private}@, cluster %@", &v13, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)initWithConnectionProvider:(uint64_t)a1 suite:(uint64_t)a2 clusters:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 134218242;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  _os_log_debug_impl(&dword_244328000, a3, OS_LOG_TYPE_DEBUG, "%p state manager created with %@ provider", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __71__COStateManager_addObserverForKeyPathUsingPredicate_queue_usingBlock___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *a2;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_244328000, v4, v5, "StateManager %p adding observer with predicate %@");
  v6 = *MEMORY[0x277D85DE8];
}

void __33__COStateManager_removeObserver___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __47__COStateManager_changesObserved_forPredicate___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_1_0();
  v7 = v3;
  _os_log_debug_impl(&dword_244328000, v4, OS_LOG_TYPE_DEBUG, "StateManager %p observed changes %@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_setDictionary:clusters:cacheLocally:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_244328000, v0, v1, "Cannot set value for clusters %@ outside scope of COStateManager", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__COStateManager__onqueue_setDictionary_clusters_cacheLocally_completionHandler___block_invoke_3_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_removeObjectsForKeyPaths:clusters:cacheLocally:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_244328000, v0, v1, "Cannot remove value for clusters %@ outside scope of COStateManager", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __92__COStateManager__onqueue_removeObjectsForKeyPaths_clusters_cacheLocally_completionHandler___block_invoke_3_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __44__COStateManager__onqueue_registerObserver___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__COStateManager__lostConnectionToService__block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_1_0();
  v7 = v3;
  _os_log_error_impl(&dword_244328000, v4, OS_LOG_TYPE_ERROR, "%p Failed to re-present state %@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__COStateManager__remoteInterfaceWithErrorHandler___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_244328000, v0, v1, "%p connection to State service interrupted", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__COStateManager__remoteInterfaceWithErrorHandler___block_invoke_167_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_244328000, v0, v1, "%p connection to State service invalidated", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __85__COStateManager_ClusterExamination__fetchCompositionForCluster_dispatchQueue_block___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__COStateManager_Doorbell__delayForDoorbellChimeWithCompletionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

@end