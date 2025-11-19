@interface MSPContainer
+ (void)_preventAssertionsForDuplicateStorageIdentifiersInContainersCreatedPerfomingBlock:(id)a3;
+ (void)clearDiscardableDataFromAllContainers;
+ (void)mutableObjectContentDidUpdate:(id)a3;
- (BOOL)_checkAndAddCoalescedEditForContext:(id)a3 identifiers:(id)a4 enqueuedBlock:(id)a5 completionQueue:(id)a6 completion:(id)a7;
- (BOOL)containerHasLoadedContents;
- (MSPContainer)init;
- (MSPContainer)initWithPersister:(id)a3;
- (MSPQuerySource)entireContentsQuerySource;
- (id)_objectsWithDuplicateStorageIdentifiersFromArray:(id)a3;
- (id)_processedContentsForPersisterContents:(id)a3;
- (id)beginCoalescingEditsWithContext:(id)a3;
- (void)_clearObjectCacheIfNeeded;
- (void)_commitPendingCoalescedEditsIfAny;
- (void)_endCoalescingEditsForContext:(id)a3;
- (void)_forEachObserver:(id)a3;
- (void)_performInitialLoadNotifyingObservers:(BOOL)a3 kickOffSynchronously:(BOOL)a4 completion:(id)a5;
- (void)accessContentsUsingConcurrentBlock:(id)a3;
- (void)accessStateSnapshotUsingConcurrentBlock:(id)a3;
- (void)addObserver:(id)a3;
- (void)coalesceEditsForContext:(id)a3 inBlock:(id)a4;
- (void)dealloc;
- (void)editByMergingStateSnapshot:(id)a3 mergeOptions:(id)a4 context:(id)a5 completionQueue:(id)a6 completion:(id)a7;
- (void)editContentsUsingBarrierBlock:(id)a3 context:(id)a4 completionQueue:(id)a5 completion:(id)a6;
- (void)editObjectsWithIdentifiers:(id)a3 usingBarrierBlock:(id)a4 context:(id)a5 completionQueue:(id)a6 completion:(id)a7;
- (void)eraseFromStorageTypes:(unint64_t)a3 withCompletionQueue:(id)a4 completion:(id)a5;
- (void)persisterContentsDidChangeExternally:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation MSPContainer

- (MSPQuerySource)entireContentsQuerySource
{
  v3 = objc_getAssociatedObject(self, entireContentsQuerySource_key);
  if (!v3)
  {
    v3 = [[MSPQuerySource alloc] _initWithOwningContainer:self];
    objc_setAssociatedObject(self, entireContentsQuerySource_key, v3, 0x301);
  }

  return v3;
}

+ (void)mutableObjectContentDidUpdate:(id)a3
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 postNotificationName:@"MSPMutableObjectContentDidUpdateNotification" object:v4];
}

+ (void)_preventAssertionsForDuplicateStorageIdentifiersInContainersCreatedPerfomingBlock:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCACC8];
    v4 = a3;
    v5 = [v3 currentThread];
    v7 = [v5 threadDictionary];

    v6 = [v7 objectForKeyedSubscript:@"com.apple.Maps.MSPContainerPreventAssertionsForDuplicateStorageIdentifiers"];
    [v7 setObject:MEMORY[0x277CBEC38] forKey:@"com.apple.Maps.MSPContainerPreventAssertionsForDuplicateStorageIdentifiers"];
    v4[2](v4);

    if (v6)
    {
      [v7 setObject:v6 forKey:@"com.apple.Maps.MSPContainerPreventAssertionsForDuplicateStorageIdentifiers"];
    }

    else
    {
      [v7 removeObjectForKey:@"com.apple.Maps.MSPContainerPreventAssertionsForDuplicateStorageIdentifiers"];
    }
  }
}

+ (void)clearDiscardableDataFromAllContainers
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"MSPContainerClearDiscardableData" object:objc_opt_class()];
}

- (MSPContainer)init
{
  result = [MEMORY[0x277CBEAD8] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (MSPContainer)initWithPersister:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = MSPContainer;
  v6 = [(MSPContainer *)&v25 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACC8] currentThread];
    v8 = [v7 threadDictionary];
    v9 = [v8 objectForKey:@"com.apple.Maps.MSPContainerPreventAssertionsForDuplicateStorageIdentifiers"];
    v6->_preventsAssertionsForDuplicateStorageIdentifiers = [v9 isEqual:MEMORY[0x277CBEC38]];

    v10 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v10;

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.Maps.MSPContainerAccessQueue-%p", v6];
    v13 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
    accessQueue = v6->_accessQueue;
    v6->_accessQueue = v15;

    objc_storeStrong(&v6->_persister, a3);
    [v5 setDelegate:v6];
    objc_opt_class();
    _MSPLogForContainer(v6, @"Created with persister %p (%@)", v17, v18, v19, v20, v21, v22, v5);
    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    [v23 addObserver:v6 selector:sel__clearObjectCacheIfNeeded name:@"MSPContainerClearDiscardableData" object:objc_opt_class()];

    [(MSPContainer *)v6 _performInitialLoadNotifyingObservers:0 kickOffSynchronously:1 completion:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"MSPContainerClearDiscardableData" object:objc_opt_class()];

  v4.receiver = self;
  v4.super_class = MSPContainer;
  [(MSPContainer *)&v4 dealloc];
}

- (void)accessContentsUsingConcurrentBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__MSPContainer_accessContentsUsingConcurrentBlock___block_invoke;
  v7[3] = &unk_279868070;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__MSPContainer_accessContentsUsingConcurrentBlock___block_invoke(void **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 3))
    {
      v10 = a1[5];
      if (v10)
      {
        v10[2]();
      }
    }

    else
    {
      _MSPLogForContainer(a1[4], @"An access attempt occurred, but objects are not loaded (memory pressure?). Perform an initial load and postpone the access.", v3, v4, v5, v6, v7, v8, v15[0]);
      v13 = a1[4];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __51__MSPContainer_accessContentsUsingConcurrentBlock___block_invoke_50;
      v15[3] = &unk_279868010;
      v15[4] = v13;
      v16 = a1[5];
      [v13 _performInitialLoadNotifyingObservers:0 kickOffSynchronously:0 completion:v15];
    }
  }

  else
  {
    v11 = *MEMORY[0x277D0E798];
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[MSPContainer accessContentsUsingConcurrentBlock:]_block_invoke";
      v19 = 1024;
      v20 = 175;
      _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)containerHasLoadedContents
{
  v2 = self;
  objc_sync_enter(v2);
  hasLoadedContents = v2->_hasLoadedContents;
  objc_sync_exit(v2);

  return hasLoadedContents;
}

- (void)accessStateSnapshotUsingConcurrentBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__MSPContainer_accessStateSnapshotUsingConcurrentBlock___block_invoke;
  v7[3] = &unk_279868070;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__MSPContainer_accessStateSnapshotUsingConcurrentBlock___block_invoke(void **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 2))
    {
      v10 = a1[5];
      if (v10)
      {
        v10[2]();
      }
    }

    else
    {
      _MSPLogForContainer(a1[4], @"An access attempt occurred, but the state snapshot isn't loaded (memory pressure?). Perform an initial load and postpone the access.", v3, v4, v5, v6, v7, v8, v15[0]);
      v13 = a1[4];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __56__MSPContainer_accessStateSnapshotUsingConcurrentBlock___block_invoke_55;
      v15[3] = &unk_279868010;
      v15[4] = v13;
      v16 = a1[5];
      [v13 _performInitialLoadNotifyingObservers:0 kickOffSynchronously:0 completion:v15];
    }
  }

  else
  {
    v11 = *MEMORY[0x277D0E798];
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[MSPContainer accessStateSnapshotUsingConcurrentBlock:]_block_invoke";
      v19 = 1024;
      v20 = 199;
      _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_clearObjectCacheIfNeeded
{
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__MSPContainer__clearObjectCacheIfNeeded__block_invoke;
  v4[3] = &unk_279866390;
  objc_copyWeak(&v5, &location);
  dispatch_barrier_async(accessQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __41__MSPContainer__clearObjectCacheIfNeeded__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    WeakRetained[2] = 0;

    v4 = v2[3];
    v2[3] = 0;
  }

  else
  {
    v5 = *MEMORY[0x277D0E798];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[MSPContainer _clearObjectCacheIfNeeded]_block_invoke";
      v10 = 1024;
      v11 = 216;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v8, 0x12u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_performInitialLoadNotifyingObservers:(BOOL)a3 kickOffSynchronously:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__MSPContainer__performInitialLoadNotifyingObservers_kickOffSynchronously_completion___block_invoke;
  v12[3] = &unk_2798680E8;
  objc_copyWeak(&v14, &location);
  v12[4] = self;
  v15 = a3;
  v9 = v8;
  v13 = v9;
  v10 = MEMORY[0x259C7AD60](v12);
  v11 = v10;
  if (v5)
  {
    v10[2](v10);
  }

  else
  {
    dispatch_barrier_async(self->_accessQueue, v10);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __86__MSPContainer__performInitialLoadNotifyingObservers_kickOffSynchronously_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = WeakRetained[5];
    objc_opt_class();
    _MSPLogForContainer(v4, @"Starting initial load from persister %p (%@)", v6, v7, v8, v9, v10, v11, v5);
    dispatch_suspend(v3[1]);
    v12 = v3[5];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __86__MSPContainer__performInitialLoadNotifyingObservers_kickOffSynchronously_completion___block_invoke_59;
    v17[3] = &unk_2798680C0;
    objc_copyWeak(&v19, (a1 + 48));
    v20 = *(a1 + 56);
    v17[4] = *(a1 + 32);
    v13 = *(a1 + 40);
    v17[5] = v3;
    v18 = v13;
    [v12 fetchStateSnapshotWithCompletion:v17];

    objc_destroyWeak(&v19);
  }

  else
  {
    v14 = *MEMORY[0x277D0E798];
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[MSPContainer _performInitialLoadNotifyingObservers:kickOffSynchronously:completion:]_block_invoke";
      v23 = 1024;
      v24 = 226;
      _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __86__MSPContainer__performInitialLoadNotifyingObservers_kickOffSynchronously_completion___block_invoke_59(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v31 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v32 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 2, a2);
    v5 = [v31 contents];
    v6 = [v32 _processedContentsForPersisterContents:v5];
    v7 = v32;
    v8 = v32[3];
    v32[3] = v6;

    if (*(a1 + 64) == 1)
    {
      v9 = v32[4];
      objc_sync_enter(v9);
      v10 = [v32[4] allObjects];
      objc_sync_exit(v9);

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = v10;
      v11 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v11)
      {
        v12 = *v39;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v39 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v38 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              if ((objc_opt_respondsToSelector() & 1) == 0 || ([v14 observationQueueForContainer:*(a1 + 32)], v15 = objc_claimAutoreleasedReturnValue(), (v16 = v15) == 0))
              {
                v15 = 0;
                v16 = v32[1];
              }

              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __86__MSPContainer__performInitialLoadNotifyingObservers_kickOffSynchronously_completion___block_invoke_64;
              block[3] = &unk_2798678B0;
              objc_copyWeak(&v37, (a1 + 56));
              block[4] = *(a1 + 32);
              block[5] = v14;
              dispatch_async(v16, block);
              objc_destroyWeak(&v37);
            }
          }

          v11 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v11);
      }

      v7 = v32;
    }

    v17 = v7;
    objc_sync_enter(v17);
    *(v17 + 105) = 1;
    objc_sync_exit(v17);

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __86__MSPContainer__performInitialLoadNotifyingObservers_kickOffSynchronously_completion___block_invoke_70;
    v34[3] = &unk_279868098;
    objc_copyWeak(&v35, (a1 + 56));
    [v17 _forEachObserver:v34];
    v18 = *(a1 + 48);
    if (v18)
    {
      (*(v18 + 16))();
    }

    v19 = *(a1 + 32);
    v20 = *(*(a1 + 40) + 40);
    objc_opt_class();
    v30 = *(*(a1 + 40) + 16);
    _MSPLogForContainer(v19, @"Loaded from persister %p (%@) + resuming service on access queue -- snapshot: %@", v21, v22, v23, v24, v25, v26, v20);
    dispatch_resume(*(*(a1 + 40) + 8));
    objc_destroyWeak(&v35);
  }

  else
  {
    v27 = *MEMORY[0x277D0E798];
    v28 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "[MSPContainer _performInitialLoadNotifyingObservers:kickOffSynchronously:completion:]_block_invoke";
      v45 = 1024;
      v46 = 231;
      _os_log_impl(&dword_25813A000, v28, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __86__MSPContainer__performInitialLoadNotifyingObservers_kickOffSynchronously_completion___block_invoke_64(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    _MSPLogForContainer(*(a1 + 32), @"Notifying observer %@ of full refetch.", v2, v3, v4, v5, v6, v7, *(a1 + 40));
    v9 = *(a1 + 40);
    v10 = WeakRetained[3];
    v11 = +[_MSPContainerEditReplacedEntirely sharedInstance];
    v15 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    [v9 container:WeakRetained didEditWithNewContents:v10 orderedEdits:v12 cause:1 context:0];
  }

  else
  {
    v13 = *MEMORY[0x277D0E798];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[MSPContainer _performInitialLoadNotifyingObservers:kickOffSynchronously:completion:]_block_invoke";
      v18 = 1024;
      v19 = 248;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_ERROR, "strongSelf3 went away in %s line %d", buf, 0x12u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __86__MSPContainer__performInitialLoadNotifyingObservers_kickOffSynchronously_completion___block_invoke_70(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      [v3 containerDidLoadFromPersister:WeakRetained];
    }
  }

  else
  {
    v5 = *MEMORY[0x277D0E798];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[MSPContainer _performInitialLoadNotifyingObservers:kickOffSynchronously:completion:]_block_invoke";
      v10 = 1024;
      v11 = 261;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_ERROR, "strongSelf3 went away in %s line %d", &v8, 0x12u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_processedContentsForPersisterContents:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [v4 copy];

    v7 = [(MSPContainer *)self _objectsWithDuplicateStorageIdentifiersFromArray:v6];
    if ([v7 count] && !-[MSPContainerPersister duplicatesPolicy](self->_persister, "duplicatesPolicy"))
    {
      v24 = v6;
      v8 = [v6 mutableCopy];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v25 = v7;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v31;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v30 + 1) + 8 * i);
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v15 = [v9 objectForKeyedSubscript:v14];
            v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v27;
              v19 = 1;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v27 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  if ((v19 & 1) == 0)
                  {
                    [v8 removeObject:*(*(&v26 + 1) + 8 * j)];
                  }

                  v19 = 0;
                }

                v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
                v19 = 0;
              }

              while (v17);
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v11);
      }

      v6 = [v8 copy];
      v7 = v25;
    }

    v21 = v6;
  }

  else
  {
    v21 = MEMORY[0x277CBEBF8];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_objectsWithDuplicateStorageIdentifiersFromArray:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v42 + 1) + 8 * i) storageIdentifier];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = [MEMORY[0x277CBEB98] setWithArray:v11];
  v13 = [v11 count];
  if (v13 == [v12 count])
  {
    v14 = 0;
  }

  else
  {
    v32 = v12;
    v33 = v11;
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v15 = v5;
    v16 = [v15 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v39;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v38 + 1) + 8 * j);
          v21 = [v20 storageIdentifier];
          v22 = [v14 objectForKeyedSubscript:v21];
          if (!v22)
          {
            v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v14 setObject:v22 forKeyedSubscript:v21];
          }

          [v22 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v17);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = v33;
    v23 = v33;
    v24 = [v23 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v34 + 1) + 8 * k);
          v29 = [v14 objectForKeyedSubscript:{v28, v32}];
          if ([v29 count] <= 1)
          {
            [v14 removeObjectForKey:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v25);
    }

    v12 = v32;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)persisterContentsDidChangeExternally:(id)a3
{
  v4 = a3;
  objc_opt_class();
  _MSPLogForContainer(self, @"Contents changed externally from persister %p (%@) -- enqueuing a full refetch", v5, v6, v7, v8, v9, v10, v4);

  [(MSPContainer *)self _performInitialLoadNotifyingObservers:1 kickOffSynchronously:0 completion:0];
}

- (void)editByMergingStateSnapshot:(id)a3 mergeOptions:(id)a4 context:(id)a5 completionQueue:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __91__MSPContainer_editByMergingStateSnapshot_mergeOptions_context_completionQueue_completion___block_invoke;
  v23[3] = &unk_279868138;
  objc_copyWeak(&v30, &location);
  v24 = v12;
  v25 = v13;
  v26 = v15;
  v27 = self;
  v28 = v14;
  v29 = v16;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v13;
  v22 = v12;
  dispatch_barrier_async(accessQueue, v23);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __91__MSPContainer_editByMergingStateSnapshot_mergeOptions_context_completionQueue_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_suspend(*(WeakRetained + 1));
    v4 = v3[5];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __91__MSPContainer_editByMergingStateSnapshot_mergeOptions_context_completionQueue_completion___block_invoke_85;
    v14[3] = &unk_279868110;
    objc_copyWeak(&v17, (a1 + 80));
    v7 = *(a1 + 72);
    *&v8 = *(a1 + 48);
    *(&v8 + 1) = *(a1 + 56);
    v13 = v8;
    *&v9 = *(a1 + 64);
    *(&v9 + 1) = v7;
    v15 = v13;
    v16 = v9;
    [v4 commitByMergingWithStateSnapshot:v5 mergeOptions:v6 completion:v14];

    objc_destroyWeak(&v17);
  }

  else
  {
    v10 = *MEMORY[0x277D0E798];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[MSPContainer editByMergingStateSnapshot:mergeOptions:context:completionQueue:completion:]_block_invoke";
      v20 = 1024;
      v21 = 393;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __91__MSPContainer_editByMergingStateSnapshot_mergeOptions_context_completionQueue_completion___block_invoke_85(uint64_t a1, void *a2, void *a3, void *a4)
{
  v81 = *MEMORY[0x277D85DE8];
  v53 = a2;
  v55 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v10 = WeakRetained;
  v54 = v8;
  if (WeakRetained)
  {
    if (v8)
    {
      v11 = *(a1 + 56);
      if (!v11)
      {
LABEL_57:
        dispatch_resume(v10[1]);
        goto LABEL_58;
      }

      v12 = *(a1 + 32);
      if (!v12)
      {
        v12 = WeakRetained[1];
      }

      v56 = WeakRetained;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __91__MSPContainer_editByMergingStateSnapshot_mergeOptions_context_completionQueue_completion___block_invoke_86;
      block[3] = &unk_2798674D8;
      v71 = v11;
      v70 = v54;
      dispatch_async(v12, block);

      v13 = v71;
    }

    else
    {
      v59 = a1;
      v56 = WeakRetained;
      if (v55 && (v16 = objc_opt_new()) != 0)
      {
        v52 = v16;
        v17 = v10[3];
        if (v17)
        {
          v18 = v17;
          v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v20 = v18;
          v21 = [v20 countByEnumeratingWithState:&v72 objects:buf count:16];
          if (v21)
          {
            v22 = *v73;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v73 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v24 = [*(*(&v72 + 1) + 8 * i) storageIdentifier];
                if (v24)
                {
                  [v19 addObject:v24];
                }
              }

              v21 = [v20 countByEnumeratingWithState:&v72 objects:buf count:16];
            }

            while (v21);
          }

          v25 = [v19 copy];
          [v52 addObjectsFromArray:v25];

          v26 = 0;
          a1 = v59;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v52 = 0;
        v26 = 1;
      }

      v27 = *(a1 + 40);
      v28 = [v53 contents];
      v29 = [v27 _processedContentsForPersisterContents:v28];
      v57 = [v29 copy];

      objc_storeStrong(v56 + 2, a2);
      objc_storeStrong(v56 + 3, v57);
      if ((v26 & 1) == 0)
      {
        v30 = v56[3];
        if (v30)
        {
          v31 = v30;
          v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v33 = v31;
          v34 = [v33 countByEnumeratingWithState:&v72 objects:buf count:16];
          if (v34)
          {
            v35 = *v73;
            do
            {
              for (j = 0; j != v34; ++j)
              {
                if (*v73 != v35)
                {
                  objc_enumerationMutation(v33);
                }

                v37 = [*(*(&v72 + 1) + 8 * j) storageIdentifier];
                if (v37)
                {
                  [v32 addObject:v37];
                }
              }

              v34 = [v33 countByEnumeratingWithState:&v72 objects:buf count:16];
            }

            while (v34);
          }

          v38 = [v32 copy];
          [v52 addObjectsFromArray:v38];
        }
      }

      if (!v55 || (v39 = [v52 count], objc_msgSend(v52, "minusSet:", v55), objc_msgSend(v52, "count") != v39))
      {
        v40 = v56[4];
        objc_sync_enter(v40);
        v41 = [v56[4] allObjects];
        objc_sync_exit(v40);

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        obj = v41;
        v42 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
        if (v42)
        {
          v43 = *v66;
          do
          {
            for (k = 0; k != v42; ++k)
            {
              if (*v66 != v43)
              {
                objc_enumerationMutation(obj);
              }

              v45 = *(*(&v65 + 1) + 8 * k);
              if (objc_opt_respondsToSelector())
              {
                if ((objc_opt_respondsToSelector() & 1) == 0 || ([v45 observationQueueForContainer:*(v59 + 40)], v46 = objc_claimAutoreleasedReturnValue(), (v47 = v46) == 0))
                {
                  v46 = 0;
                  v47 = v56[1];
                }

                v62[0] = MEMORY[0x277D85DD0];
                v62[1] = 3221225472;
                v62[2] = __91__MSPContainer_editByMergingStateSnapshot_mergeOptions_context_completionQueue_completion___block_invoke_4;
                v62[3] = &unk_279865F98;
                v48 = *(v59 + 40);
                v62[4] = v45;
                v62[5] = v48;
                v63 = v57;
                v64 = *(v59 + 48);
                dispatch_async(v47, v62);
              }
            }

            v42 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
          }

          while (v42);
        }
      }

      v49 = *(v59 + 56);
      if (v49)
      {
        v50 = *(v59 + 32);
        if (v50)
        {
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __91__MSPContainer_editByMergingStateSnapshot_mergeOptions_context_completionQueue_completion___block_invoke_5;
          v60[3] = &unk_2798676D0;
          v61 = v49;
          dispatch_async(v50, v60);
        }

        else
        {
          v49[2](v49, 0);
        }
      }

      v13 = v52;
    }

    v10 = v56;
    goto LABEL_57;
  }

  v14 = *MEMORY[0x277D0E798];
  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v78 = "[MSPContainer editByMergingStateSnapshot:mergeOptions:context:completionQueue:completion:]_block_invoke";
    v79 = 1024;
    v80 = 398;
    _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
  }

LABEL_58:
  v51 = *MEMORY[0x277D85DE8];
}

void __91__MSPContainer_editByMergingStateSnapshot_mergeOptions_context_completionQueue_completion___block_invoke_4(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = +[_MSPContainerEditReplacedEntirely sharedInstance];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v2 container:v3 didEditWithNewContents:v4 orderedEdits:v6 cause:0 context:a1[7]];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)eraseFromStorageTypes:(unint64_t)a3 withCompletionQueue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __69__MSPContainer_eraseFromStorageTypes_withCompletionQueue_completion___block_invoke;
  v33[3] = &unk_279868160;
  if (a3 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a3;
  }

  v33[4] = self;
  v33[5] = v10;
  [(MSPContainer *)self _forEachObserver:v33];
  objc_initWeak(&location, self);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__MSPContainer_eraseFromStorageTypes_withCompletionQueue_completion___block_invoke_2;
  v28[3] = &unk_279868188;
  objc_copyWeak(v31, &location);
  v31[1] = v10;
  v11 = v9;
  v30 = v11;
  v12 = v8;
  v29 = v12;
  v13 = MEMORY[0x259C7AD60](v28);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __69__MSPContainer_eraseFromStorageTypes_withCompletionQueue_completion___block_invoke_3;
  v25[3] = &unk_279868200;
  objc_copyWeak(v27, &location);
  v27[1] = v10;
  v14 = v13;
  v25[4] = self;
  v26 = v14;
  v15 = MEMORY[0x259C7AD60](v25);
  v22 = v15;
  if ((v10 & 2) != 0)
  {
    _MSPLogForContainer(self, @"Erasing container contents", v16, v17, v18, v19, v20, v21, v23[0]);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__MSPContainer_eraseFromStorageTypes_withCompletionQueue_completion___block_invoke_3_116;
    v23[3] = &unk_279867770;
    v24 = v14;
    [(MSPContainer *)self editContentsUsingBarrierBlock:&__block_literal_global_115 completionQueue:0 completion:v23];
  }

  else
  {
    (*(v15 + 16))(v15);
  }

  objc_destroyWeak(v27);
  objc_destroyWeak(v31);
  objc_destroyWeak(&location);
}

void __69__MSPContainer_eraseFromStorageTypes_withCompletionQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 containerWillEraseContents:*(a1 + 32)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 containerWillEraseContents:*(a1 + 32) fromStorageTypes:*(a1 + 40)];
  }
}

void __69__MSPContainer_eraseFromStorageTypes_withCompletionQueue_completion___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__MSPContainer_eraseFromStorageTypes_withCompletionQueue_completion___block_invoke_97;
    v17[3] = &unk_279868160;
    v8 = *(a1 + 56);
    v17[4] = WeakRetained;
    v17[5] = v8;
    [(dispatch_object_t *)WeakRetained _forEachObserver:v17];
    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(a1 + 32);
      if (!v10)
      {
        v10 = v7[1];
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __69__MSPContainer_eraseFromStorageTypes_withCompletionQueue_completion___block_invoke_2_100;
      v14[3] = &unk_2798674D8;
      v16 = v9;
      v15 = v5;
      dispatch_async(v10, v14);
    }

    if (a3)
    {
      dispatch_resume(v7[1]);
    }
  }

  else
  {
    v11 = *MEMORY[0x277D0E798];
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[MSPContainer eraseFromStorageTypes:withCompletionQueue:completion:]_block_invoke_2";
      v20 = 1024;
      v21 = 497;
      _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __69__MSPContainer_eraseFromStorageTypes_withCompletionQueue_completion___block_invoke_97(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 containerDidEraseContents:*(a1 + 32) fromStorageTypes:*(a1 + 40)];
  }
}

void __69__MSPContainer_eraseFromStorageTypes_withCompletionQueue_completion___block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 56))
    {
      _MSPLogForContainer(*(a1 + 32), @"Will erase persister contents", v2, v3, v4, v5, v6, v7, v13);
      v11 = WeakRetained[1];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__MSPContainer_eraseFromStorageTypes_withCompletionQueue_completion___block_invoke_105;
      block[3] = &unk_2798681D8;
      block[4] = WeakRetained;
      objc_copyWeak(&v16, (a1 + 48));
      v15 = *(a1 + 40);
      dispatch_barrier_async(v11, block);

      objc_destroyWeak(&v16);
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v9 = *MEMORY[0x277D0E798];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[MSPContainer eraseFromStorageTypes:withCompletionQueue:completion:]_block_invoke_3";
      v19 = 1024;
      v20 = 517;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __69__MSPContainer_eraseFromStorageTypes_withCompletionQueue_completion___block_invoke_105(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 8));
  v2 = *(*(a1 + 32) + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__MSPContainer_eraseFromStorageTypes_withCompletionQueue_completion___block_invoke_2_106;
  v3[3] = &unk_2798681B0;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  [v2 eraseWithCompletion:v3];

  objc_destroyWeak(&v5);
}

void __69__MSPContainer_eraseFromStorageTypes_withCompletionQueue_completion___block_invoke_2_106(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v3)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __69__MSPContainer_eraseFromStorageTypes_withCompletionQueue_completion___block_invoke_107;
      v8[3] = &unk_2798676D0;
      v9 = *(a1 + 32);
      [WeakRetained _performInitialLoadNotifyingObservers:1 kickOffSynchronously:1 completion:v8];
    }
  }

  else
  {
    v5 = *MEMORY[0x277D0E798];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[MSPContainer eraseFromStorageTypes:withCompletionQueue:completion:]_block_invoke_2";
      v12 = 1024;
      v13 = 529;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)editContentsUsingBarrierBlock:(id)a3 context:(id)a4 completionQueue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [a4 copy];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __81__MSPContainer_editContentsUsingBarrierBlock_context_completionQueue_completion___block_invoke;
  v28[3] = &unk_279868248;
  v14 = v10;
  v29 = v14;
  if ([(MSPContainer *)self _checkAndAddCoalescedEditForContext:v13 identifiers:0 enqueuedBlock:v28 completionQueue:v11 completion:v12])
  {
    _MSPLogForContainer(self, @"Coalescing is on for this context -- the edit for context %@, will be enqueued for later.", v15, v16, v17, v18, v19, v20, v13);
  }

  else
  {
    objc_initWeak(&location, self);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __81__MSPContainer_editContentsUsingBarrierBlock_context_completionQueue_completion___block_invoke_2;
    v21[3] = &unk_279868338;
    objc_copyWeak(&v26, &location);
    v24 = v14;
    v21[4] = self;
    v22 = v13;
    v25 = v12;
    v23 = v11;
    [(MSPContainer *)self accessContentsUsingConcurrentBlock:v21];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

void __81__MSPContainer_editContentsUsingBarrierBlock_context_completionQueue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__MSPContainer_editContentsUsingBarrierBlock_context_completionQueue_completion___block_invoke_121;
    block[3] = &unk_279868310;
    objc_copyWeak(&v19, (a1 + 72));
    v15 = v3;
    v7 = *(a1 + 56);
    v13 = *(a1 + 32);
    v8 = *(&v13 + 1);
    v18 = *(a1 + 64);
    *&v9 = *(a1 + 48);
    *(&v9 + 1) = v7;
    v16 = v13;
    v17 = v9;
    dispatch_barrier_async(v6, block);

    objc_destroyWeak(&v19);
  }

  else
  {
    v10 = *MEMORY[0x277D0E798];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[MSPContainer editContentsUsingBarrierBlock:context:completionQueue:completion:]_block_invoke_2";
      v22 = 1024;
      v23 = 579;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __81__MSPContainer_editContentsUsingBarrierBlock_context_completionQueue_completion___block_invoke_121(uint64_t a1)
{
  v92 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v56 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_suspend(WeakRetained[1]);
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v78 objects:v91 count:16];
    if (v6)
    {
      v7 = *v79;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v79 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v78 + 1) + 8 * i);
          v10 = [v9 mutableCopy];
          [v3 addObject:v10];
          [v4 setObject:v9 forKey:v10];
        }

        v6 = [v5 countByEnumeratingWithState:&v78 objects:v91 count:16];
      }

      while (v6);
    }

    v57 = [[_MSPContainerEditsRecorder alloc] initWithMutableArray:v3];
    v11 = *(a1 + 64);
    v12 = [(_MSPContainerEditsRecorder *)v57 recordableMutableArray];
    (*(v11 + 16))(v11, v12);

    v13 = [(_MSPContainerEditsRecorder *)v57 recordableMutableArray];
    [(dispatch_object_t *)v56 _processNewEditedContents:v13];

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v15 = v3;
    v16 = [v15 countByEnumeratingWithState:&v74 objects:v90 count:16];
    if (v16)
    {
      v17 = *v75;
LABEL_11:
      v18 = 0;
      while (1)
      {
        if (*v75 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v74 + 1) + 8 * v18);
        v73 = 0;
        v20 = [v19 transferToImmutableIfValidWithError:&v73];
        v21 = v73;
        v22 = v21;
        if (!v20)
        {
          break;
        }

        [v14 addObject:v20];
        [v4 setObject:v20 forKey:v19];

        if (v16 == ++v18)
        {
          v16 = [v15 countByEnumeratingWithState:&v74 objects:v90 count:16];
          if (v16)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      v22 = 0;
    }

    v23 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v87 = __Block_byref_object_copy__6;
    v88 = __Block_byref_object_dispose__6;
    v89 = 0;
    if (!v22)
    {
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __81__MSPContainer_editContentsUsingBarrierBlock_context_completionQueue_completion___block_invoke_124;
      v72[3] = &unk_279868270;
      v72[4] = buf;
      [(_MSPContainerEditsRecorder *)v57 useImmutableObjectsForEditsFromMap:v4 intermediateMutableObjectTransferBlock:v72];
      v23 = *(*&buf[8] + 40);
    }

    if ([v23 count])
    {
      v24 = MEMORY[0x277CCA9B8];
      v84 = @"MSPUnderlyingErrors";
      v25 = [*(*&buf[8] + 40) copy];
      v85 = v25;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
      v27 = [v24 errorWithDomain:@"com.apple.MapsSupport.MSPContainer" code:2 userInfo:v26];

      v22 = v27;
    }

    if (v22)
    {
      v28 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v28 = [v14 copy];
    }

    v30 = *(a1 + 40);
    v31 = [(_MSPContainerEditsRecorder *)v57 orderedEdits];
    v55 = *(*&buf[8] + 40);
    _MSPLogForContainer(v30, @"Has terminated the run, which caused the following edits: %@ -- final contents %@, transfer error if any %@", v32, v33, v34, v35, v36, v37, v31);

    if (!v22)
    {
      v38 = [(dispatch_object_t *)v56 _objectsWithDuplicateStorageIdentifiersFromArray:v28];
      if ([v38 count])
      {
        v39 = MEMORY[0x277CCA9B8];
        v82 = @"MSPDuplicateStorageIdentifiersObjects";
        v83 = v38;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v22 = [v39 errorWithDomain:@"com.apple.MapsSupport.MSPContainer" code:3 userInfo:v40];

        v28 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v22 = 0;
      }
    }

    v41 = [(_MSPContainerEditsRecorder *)v57 orderedEdits];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __81__MSPContainer_editContentsUsingBarrierBlock_context_completionQueue_completion___block_invoke_2_131;
    v64[3] = &unk_2798682C0;
    objc_copyWeak(&v71, (a1 + 80));
    v42 = *(a1 + 48);
    v64[4] = *(a1 + 40);
    v65 = v42;
    v43 = v28;
    v66 = v43;
    v44 = v41;
    v67 = v44;
    v70 = *(a1 + 72);
    v68 = *(a1 + 56);
    v69 = v56;
    v51 = MEMORY[0x259C7AD60](v64);
    if (v22)
    {
      _MSPLogForContainer(*(a1 + 40), @"Not committing due to immutable transfer error.", v45, v46, v47, v48, v49, v50, v54);
      (v51)[2](v51, 0, v22);
    }

    else
    {
      v52 = *(a1 + 48);
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __81__MSPContainer_editContentsUsingBarrierBlock_context_completionQueue_completion___block_invoke_3;
      v58[3] = &unk_2798682E8;
      objc_copyWeak(&v63, (a1 + 80));
      v58[4] = *(a1 + 40);
      v62 = v51;
      v59 = v43;
      v60 = v44;
      v61 = *(a1 + 32);
      [(dispatch_object_t *)v56 _commitEditWithFinalContents:v14 context:v52 completion:v58];

      objc_destroyWeak(&v63);
    }

    objc_destroyWeak(&v71);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v29 = *MEMORY[0x277D0E798];
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[MSPContainer editContentsUsingBarrierBlock:context:completionQueue:completion:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 582;
      _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
    }
  }

  v53 = *MEMORY[0x277D85DE8];
}

id __81__MSPContainer_editContentsUsingBarrierBlock_context_completionQueue_completion___block_invoke_124(uint64_t a1, void *a2)
{
  v10 = 0;
  v3 = [a2 transferToImmutableIfValidWithError:&v10];
  v4 = v10;
  if (!v3)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v5 addObject:v4];
  }

  return v3;
}

void __81__MSPContainer_editContentsUsingBarrierBlock_context_completionQueue_completion___block_invoke_2_131(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    _MSPLogForContainer(*(a1 + 32), @"Ending edit operation with context %@ with error %@", v8, v9, v10, v11, v12, v13, *(a1 + 40));
    if (!v7)
    {
      objc_storeStrong(WeakRetained + 2, a2);
      v15 = [v6 contents];
      v16 = [WeakRetained _processedContentsForPersisterContents:v15];
      v17 = WeakRetained[3];
      WeakRetained[3] = v16;

      _MSPLogForContainer(*(a1 + 32), @"Committed edit with new snapshot: %@", v18, v19, v20, v21, v22, v23, WeakRetained[2]);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __81__MSPContainer_editContentsUsingBarrierBlock_context_completionQueue_completion___block_invoke_138;
      v36[3] = &unk_279868298;
      v36[4] = WeakRetained;
      v37 = *(a1 + 48);
      v38 = *(a1 + 56);
      v39 = *(a1 + 40);
      [WeakRetained _forEachObserver:v36];
    }

    v24 = *(a1 + 80);
    if (v24)
    {
      v25 = *(a1 + 64);
      if (!v25)
      {
        v25 = *(*(a1 + 72) + 8);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__MSPContainer_editContentsUsingBarrierBlock_context_completionQueue_completion___block_invoke_2_139;
      block[3] = &unk_2798674D8;
      v35 = v24;
      v34 = v7;
      dispatch_async(v25, block);
    }

    if ([*(a1 + 72) _simulatesClearingDiscardableDataAfterOperations])
    {
      v26 = *(a1 + 72);
      v27 = *(v26 + 16);
      *(v26 + 16) = 0;

      v28 = *(a1 + 72);
      v29 = *(v28 + 24);
      *(v28 + 24) = 0;
    }

    dispatch_resume(*(*(a1 + 72) + 8));
  }

  else
  {
    v30 = *MEMORY[0x277D0E798];
    v31 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "[MSPContainer editContentsUsingBarrierBlock:context:completionQueue:completion:]_block_invoke_2";
      v42 = 1024;
      v43 = 659;
      _os_log_impl(&dword_25813A000, v31, OS_LOG_TYPE_ERROR, "strongSelf3 went away in %s line %d", buf, 0x12u);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __81__MSPContainer_editContentsUsingBarrierBlock_context_completionQueue_completion___block_invoke_138(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 container:a1[4] didEditWithNewContents:a1[5] orderedEdits:a1[6] cause:0 context:a1[7]];
  }
}

void __81__MSPContainer_editContentsUsingBarrierBlock_context_completionQueue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      _MSPLogForContainer(*(a1 + 32), @"Not committing due to _commitEdit... hook error.", v5, v6, v7, v8, v9, v10, *v15);
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      [WeakRetained[5] commitEditWithNewContents:*(a1 + 40) edits:*(a1 + 48) appliedToOldContents:*(a1 + 56) completion:*(a1 + 64)];
    }
  }

  else
  {
    v12 = *MEMORY[0x277D0E798];
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 136315394;
      *&v15[4] = "[MSPContainer editContentsUsingBarrierBlock:context:completionQueue:completion:]_block_invoke_3";
      v16 = 1024;
      v17 = 693;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_ERROR, "strongSelf3 went away in %s line %d", v15, 0x12u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)editObjectsWithIdentifiers:(id)a3 usingBarrierBlock:(id)a4 context:(id)a5 completionQueue:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = MEMORY[0x277CBEB98];
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = [v13 setWithArray:a3];
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __96__MSPContainer_editObjectsWithIdentifiers_usingBarrierBlock_context_completionQueue_completion___block_invoke;
  v22[3] = &unk_279868360;
  v23 = v17;
  v24 = v18;
  v25 = v12;
  v19 = v12;
  v20 = v18;
  v21 = v17;
  [(MSPContainer *)self editContentsUsingBarrierBlock:v22 context:v16 completionQueue:v15 completion:v14];
}

void __96__MSPContainer_editObjectsWithIdentifiers_usingBarrierBlock_context_completionQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 storageIdentifier];
        if ([*(a1 + 32) containsObject:v9])
        {
          [*(a1 + 40) setObject:v8 forKeyedSubscript:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers removeObject:v5];
  objc_sync_exit(v4);
}

- (void)_forEachObserver:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = self->_observers;
  objc_sync_enter(v5);
  v6 = [(NSHashTable *)self->_observers allObjects];
  objc_sync_exit(v5);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        if ((objc_opt_respondsToSelector() & 1) == 0 || ([v10 observationQueueForContainer:{self, context}], v11 = objc_claimAutoreleasedReturnValue(), (accessQueue = v11) == 0))
        {
          v11 = 0;
          accessQueue = self->_accessQueue;
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __33__MSPContainer__forEachObserver___block_invoke;
        block[3] = &unk_2798674D8;
        v13 = v4;
        block[4] = v10;
        v18 = v13;
        dispatch_async(accessQueue, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(context);
  v14 = *MEMORY[0x277D85DE8];
}

void __33__MSPContainer__forEachObserver___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (id)beginCoalescingEditsWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  editCoalescingContexts = v5->_editCoalescingContexts;
  if (!editCoalescingContexts)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCA940]);
    v8 = v5->_editCoalescingContexts;
    v5->_editCoalescingContexts = v7;

    editCoalescingContexts = v5->_editCoalescingContexts;
  }

  [(NSCountedSet *)editCoalescingContexts addObject:v4];
  objc_sync_exit(v5);

  v9 = [[MSPContainerCoalescingToken alloc] initWithContainerOwner:v5 context:v4];

  return v9;
}

- (void)_endCoalescingEditsForContext:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSCountedSet *)v4->_editCoalescingContexts removeObject:v5];
  if (([(NSCountedSet *)v4->_editCoalescingContexts containsObject:v5]& 1) == 0 && [v4->_contextCoalescingFor isEqual:v5])
  {
    [(MSPContainer *)v4 _commitPendingCoalescedEditsIfAny];
  }

  objc_sync_exit(v4);
}

- (void)coalesceEditsForContext:(id)a3 inBlock:(id)a4
{
  v6 = a4;
  v7 = [(MSPContainer *)self beginCoalescingEditsWithContext:a3];
  v6[2](v6);

  [v7 endCoalescingEdits];
}

- (BOOL)_checkAndAddCoalescedEditForContext:(id)a3 identifiers:(id)a4 enqueuedBlock:(id)a5 completionQueue:(id)a6 completion:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = self;
  objc_sync_enter(v18);
  if (v18->_isCommittingEnqueuedEdits)
  {
    goto LABEL_13;
  }

  contextCoalescingFor = v18->_contextCoalescingFor;
  if (contextCoalescingFor)
  {
    if (v13 && ([contextCoalescingFor isEqual:v13]& 1) != 0)
    {
      goto LABEL_7;
    }

    [(MSPContainer *)v18 _commitPendingCoalescedEditsIfAny];
  }

  if (!v13)
  {
LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

LABEL_7:
  if (![(NSCountedSet *)v18->_editCoalescingContexts containsObject:v13])
  {
    goto LABEL_13;
  }

  objc_storeStrong(&v18->_contextCoalescingFor, a3);
  if (v14)
  {
    if (!v18->_coalescedEditsNeedEntireContents)
    {
      coalescedPartialContentIdentifiersToFetch = v18->_coalescedPartialContentIdentifiersToFetch;
      if (!coalescedPartialContentIdentifiersToFetch)
      {
        v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v22 = v18->_coalescedPartialContentIdentifiersToFetch;
        v18->_coalescedPartialContentIdentifiersToFetch = v21;

        coalescedPartialContentIdentifiersToFetch = v18->_coalescedPartialContentIdentifiersToFetch;
      }

      [(NSMutableSet *)coalescedPartialContentIdentifiersToFetch addObjectsFromArray:v14];
    }
  }

  else
  {
    v18->_coalescedEditsNeedEntireContents = 1;
    v25 = v18->_coalescedPartialContentIdentifiersToFetch;
    v18->_coalescedPartialContentIdentifiersToFetch = 0;
  }

  enqueuedCoalescingEditBarrierBlocks = v18->_enqueuedCoalescingEditBarrierBlocks;
  if (!enqueuedCoalescingEditBarrierBlocks)
  {
    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28 = v18->_enqueuedCoalescingEditBarrierBlocks;
    v18->_enqueuedCoalescingEditBarrierBlocks = v27;

    enqueuedCoalescingEditBarrierBlocks = v18->_enqueuedCoalescingEditBarrierBlocks;
  }

  v29 = [v15 copy];
  v30 = MEMORY[0x259C7AD60]();
  [(NSMutableArray *)enqueuedCoalescingEditBarrierBlocks addObject:v30];

  if (v18->_enqueuedCoalescingCompletionBlocks)
  {
    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    enqueuedCoalescingCompletionBlocks = v18->_enqueuedCoalescingCompletionBlocks;
    v18->_enqueuedCoalescingCompletionBlocks = v31;

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  v33 = v18->_enqueuedCoalescingCompletionBlocks;
  if (v16)
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __105__MSPContainer__checkAndAddCoalescedEditForContext_identifiers_enqueuedBlock_completionQueue_completion___block_invoke;
    v40[3] = &unk_279868388;
    v41 = v16;
    v42 = v17;
    v34 = [v40 copy];
    v35 = MEMORY[0x259C7AD60]();
    [(NSMutableArray *)v33 addObject:v35];
  }

  else
  {
    v36 = [v17 copy];
    v37 = MEMORY[0x259C7AD60]();
    [(NSMutableArray *)v33 addObject:v37];
  }

LABEL_25:
  v23 = 1;
  if (!v18->_hasScheduledDelayedCommitForCoalescedEdits)
  {
    v18->_hasScheduledDelayedCommitForCoalescedEdits = 1;
    v38 = dispatch_time(0, 200000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__MSPContainer__checkAndAddCoalescedEditForContext_identifiers_enqueuedBlock_completionQueue_completion___block_invoke_3;
    block[3] = &unk_279866158;
    block[4] = v18;
    dispatch_after(v38, MEMORY[0x277D85CD0], block);
  }

LABEL_14:
  objc_sync_exit(v18);

  return v23;
}

void __105__MSPContainer__checkAndAddCoalescedEditForContext_identifiers_enqueuedBlock_completionQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __105__MSPContainer__checkAndAddCoalescedEditForContext_identifiers_enqueuedBlock_completionQueue_completion___block_invoke_2;
  v7[3] = &unk_2798674D8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)_commitPendingCoalescedEditsIfAny
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_contextCoalescingFor;
  if (v3)
  {
    v2->_isCommittingEnqueuedEdits = 1;
    v4 = v2->_enqueuedCoalescingEditBarrierBlocks;
    v5 = v2->_enqueuedCoalescingCompletionBlocks;
    v6 = [(NSMutableSet *)v2->_coalescedPartialContentIdentifiersToFetch allObjects];
    contextCoalescingFor = v2->_contextCoalescingFor;
    v2->_contextCoalescingFor = 0;

    enqueuedCoalescingEditBarrierBlocks = v2->_enqueuedCoalescingEditBarrierBlocks;
    v2->_enqueuedCoalescingEditBarrierBlocks = 0;

    enqueuedCoalescingCompletionBlocks = v2->_enqueuedCoalescingCompletionBlocks;
    v2->_enqueuedCoalescingCompletionBlocks = 0;

    coalescedPartialContentIdentifiersToFetch = v2->_coalescedPartialContentIdentifiersToFetch;
    v2->_coalescedPartialContentIdentifiersToFetch = 0;

    if (v6)
    {
      v11 = v16;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __49__MSPContainer__commitPendingCoalescedEditsIfAny__block_invoke;
      v16[3] = &unk_2798683B0;
      v16[4] = v4;
      v12 = v15;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __49__MSPContainer__commitPendingCoalescedEditsIfAny__block_invoke_2;
      v15[3] = &unk_2798683D8;
      v15[4] = v5;
      [(MSPContainer *)v2 editObjectsWithIdentifiers:v6 usingBarrierBlock:v16 context:v3 completionQueue:0 completion:v15];
    }

    else
    {
      v11 = v14;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __49__MSPContainer__commitPendingCoalescedEditsIfAny__block_invoke_3;
      v14[3] = &unk_279868400;
      v14[4] = v4;
      v12 = v13;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __49__MSPContainer__commitPendingCoalescedEditsIfAny__block_invoke_4;
      v13[3] = &unk_2798683D8;
      v13[4] = v5;
      [(MSPContainer *)v2 editContentsUsingBarrierBlock:v14 context:v3 completionQueue:0 completion:v13];
    }

    v2->_hasScheduledDelayedCommitForCoalescedEdits = 0;
    v2->_isCommittingEnqueuedEdits = 0;
  }

  objc_sync_exit(v2);
}

void __49__MSPContainer__commitPendingCoalescedEditsIfAny__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __49__MSPContainer__commitPendingCoalescedEditsIfAny__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __49__MSPContainer__commitPendingCoalescedEditsIfAny__block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __49__MSPContainer__commitPendingCoalescedEditsIfAny__block_invoke_4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end