@interface HUCAPackageIconManager
+ (id)sharedInstance;
- (HUCAPackageIconManager)init;
- (id)_loadPackageWithIconDescriptor:(id)a3;
- (id)_packageDataForIconDescriptor:(id)a3;
- (id)_prefetchIcons:(id)a3;
- (id)_queueForIconDescriptorIdentifier:(id)a3;
- (id)prefetchIconDescriptors:(id)a3;
- (id)tryReclaimPackage:(id)a3 forIconDescriptor:(id)a4;
- (void)_startPrefetchIfNecessary;
- (void)prioritizeIconDescriptors:(id)a3;
- (void)returnPackageToCache:(id)a3 forIconDescriptor:(id)a4;
@end

@implementation HUCAPackageIconManager

+ (id)sharedInstance
{
  if (_MergedGlobals_6 != -1)
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_3);
  }

  v3 = qword_281122548;

  return v3;
}

uint64_t __40__HUCAPackageIconManager_sharedInstance__block_invoke_2()
{
  qword_281122548 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (HUCAPackageIconManager)init
{
  v13.receiver = self;
  v13.super_class = HUCAPackageIconManager;
  v2 = [(HUCAPackageIconManager *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    [(HUCAPackageIconManager *)v2 setPackageDataCache:v3];

    v4 = objc_alloc_init(MEMORY[0x277CBEA78]);
    [(HUCAPackageIconManager *)v2 setPackageReuseQueue:v4];

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("HUCAPackageIconManagerScheduler", v5);

    v7 = [MEMORY[0x277D2C930] schedulerWithDispatchQueue:v6];
    [(HUCAPackageIconManager *)v2 setPrefetchScheduler:v7];

    v8 = objc_alloc_init(MEMORY[0x277D14860]);
    [(HUCAPackageIconManager *)v2 setPrefetchPriorityQueue:v8];

    v9 = dispatch_group_create();
    prefetchDispatchGroup = v2->_prefetchDispatchGroup;
    v2->_prefetchDispatchGroup = v9;

    v11 = HFLogForCategory();
    v2->_signpostID = os_signpost_id_make_with_pointer(v11, v2);
  }

  return v2;
}

- (id)tryReclaimPackage:(id)a3 forIconDescriptor:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"HUCAPackageIconManager.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"descriptor"}];
  }

  v9 = [(HUCAPackageIconManager *)self packageReuseQueue];
  v10 = [v8 identifier];
  v11 = [v9 objectForKey:v10];

  os_unfair_lock_lock(&self->_queueLock);
  if (v7)
  {
    v12 = [v11 allObjects];
    v13 = [v12 containsObject:v7];

    if (v13)
    {
      [v11 dequeueObject:v7];
      v14 = v7;
LABEL_8:
      v15 = v14;
      goto LABEL_10;
    }
  }

  if ([v11 count])
  {
    v14 = [v11 dequeue];
    goto LABEL_8;
  }

  v15 = 0;
LABEL_10:
  v16 = [v11 count];
  os_unfair_lock_unlock(&self->_queueLock);
  if (v15)
  {
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v23 = [v8 identifier];
      *buf = 138412546;
      v26 = v23;
      v27 = 2048;
      v28 = v16;
      _os_log_debug_impl(&dword_254573000, v17, OS_LOG_TYPE_DEBUG, "HUCAPackageIconManager: dequeued package with identifier %@, queue now contains %lu packages", buf, 0x16u);
    }
  }

  else
  {
    v18 = [v8 identifier];
    v15 = [(HUCAPackageIconManager *)self _loadPackageWithIconDescriptor:v18];
  }

  v19 = [v15 rootLayer];
  [v19 setGeometryFlipped:1];

  v20 = [v15 rootLayer];
  [v20 setShouldRasterize:1];

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)returnPackageToCache:(id)a3 forIconDescriptor:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HUCAPackageIconManager.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"descriptor"}];

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v9 = [v8 identifier];
  v10 = [(HUCAPackageIconManager *)self _queueForIconDescriptorIdentifier:v9];

  os_unfair_lock_lock(&self->_queueLock);
  [v10 enqueue:v7];
  os_unfair_lock_unlock(&self->_queueLock);
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v8 identifier];
    *buf = 138412546;
    v16 = v13;
    v17 = 2048;
    v18 = [v10 count];
    _os_log_debug_impl(&dword_254573000, v11, OS_LOG_TYPE_DEBUG, "HUCAPackageIconManager: reclaimed package with identifier %@, queue now contains %lu packages", buf, 0x16u);
  }

LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
}

- (id)prefetchIconDescriptors:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D14678] isSpringBoard])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 na_map:&__block_literal_global_19];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__HUCAPackageIconManager_prefetchIconDescriptors___block_invoke_2;
    v21[3] = &unk_27977D628;
    v21[4] = self;
    v21[5] = &v22;
    v8 = [v6 na_reduceWithInitialValue:v7 reducer:v21];

    if (v23[3])
    {
      v9 = HFLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v6;
        _os_log_debug_impl(&dword_254573000, v9, OS_LOG_TYPE_DEBUG, "HUCAPackageIconManager: prefetchIconDescriptors called with icon descriptors: %@", buf, 0xCu);
      }

      v10 = [v8 mutableCopy];
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __50__HUCAPackageIconManager_prefetchIconDescriptors___block_invoke_23;
      v18 = &unk_27977D650;
      v19 = v8;
      v11 = v10;
      v20 = v11;
      v12 = [v6 na_filter:&v15];
      v5 = [(HUCAPackageIconManager *)self _prefetchIcons:v12, v15, v16, v17, v18];
    }

    else
    {
      v5 = 0;
    }

    _Block_object_dispose(&v22, 8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

id __50__HUCAPackageIconManager_prefetchIconDescriptors___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = [v7 integerValue];

  v9 = [v6 objectForKeyedSubscript:v5];

  if (!v9)
  {
    v10 = [*(a1 + 32) packageReuseQueue];
    v11 = [v10 objectForKey:v5];

    if (v11)
    {
      os_unfair_lock_lock((*(a1 + 32) + 8));
      v8 = -[v11 count];
      os_unfair_lock_unlock((*(a1 + 32) + 8));
    }
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v8 + 1];
  [v6 setObject:v12 forKeyedSubscript:v5];

  *(*(*(a1 + 40) + 8) + 24) |= v8 >= 0;

  return v6;
}

BOOL __50__HUCAPackageIconManager_prefetchIconDescriptors___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [v4 intValue];
  if ((v5 & 0x80000000) == 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "intValue") - 1}];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v3];
  }

  return v5 >= 0;
}

- (void)prioritizeIconDescriptors:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  v6 = [(HUCAPackageIconManager *)self signpostID];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      v11 = 134217984;
      v12 = [v4 count];
      _os_signpost_emit_with_name_impl(&dword_254573000, v5, OS_SIGNPOST_EVENT, v7, "PackageIconManagerPrefetch", "Prioritized icon descriptors: %lu", &v11, 0xCu);
    }
  }

  v8 = [(HUCAPackageIconManager *)self prefetchPriorityQueue];
  v9 = [v4 na_map:&__block_literal_global_26];
  [v8 prioritizeObjects:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_prefetchIcons:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  v6 = [(HUCAPackageIconManager *)self signpostID];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 134217984;
      v21 = [v4 count];
      _os_signpost_emit_with_name_impl(&dword_254573000, v5, OS_SIGNPOST_EVENT, v7, "PackageIconManagerPrefetch", "Number of icon descriptors prefetch requested: %lu", buf, 0xCu);
    }
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_debug_impl(&dword_254573000, v8, OS_LOG_TYPE_DEBUG, "HUCAPackageIconManager: prefetchIconDescriptors prefetching icon descriptors: %@", buf, 0xCu);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __41__HUCAPackageIconManager__prefetchIcons___block_invoke;
  v19[3] = &unk_27977D678;
  v19[4] = self;
  v9 = [v4 na_map:v19];
  [(HUCAPackageIconManager *)self _startPrefetchIfNecessary];
  v10 = MEMORY[0x277D2C8C0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__HUCAPackageIconManager__prefetchIcons___block_invoke_2;
  v16[3] = &unk_27977D6A0;
  v16[4] = self;
  v17 = v9;
  v18 = v4;
  v11 = v4;
  v12 = v9;
  v13 = [v10 tokenWithCancelationBlock:v16];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id __41__HUCAPackageIconManager__prefetchIcons___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 prefetchPriorityQueue];
  v5 = [v4 enqueue:v3];

  return v5;
}

void __41__HUCAPackageIconManager__prefetchIcons___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) prefetchPriorityQueue];
  [v2 removeObjectsWithEntries:*(a1 + 40)];

  v3 = HFLogForCategory();
  v4 = [*(a1 + 32) signpostID];
  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      v6 = [*(a1 + 48) count];
      v8 = 134217984;
      v9 = v6;
      _os_signpost_emit_with_name_impl(&dword_254573000, v3, OS_SIGNPOST_EVENT, v5, "PackageIconManagerPrefetch", "Cancel Sent for %lu icon descriptors", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_startPrefetchIfNecessary
{
  if (!dispatch_group_wait(self->_prefetchDispatchGroup, 0))
  {
    objc_initWeak(&location, self);
    v3 = [(HUCAPackageIconManager *)self prefetchScheduler];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __51__HUCAPackageIconManager__startPrefetchIfNecessary__block_invoke;
    v4[3] = &unk_27977D6C8;
    objc_copyWeak(&v5, &location);
    [v3 performBlock:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __51__HUCAPackageIconManager__startPrefetchIfNecessary__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_group_enter(*(WeakRetained + 2));
  v2 = [WeakRetained prefetchPriorityQueue];
  v3 = [v2 dequeue];

  if (v3)
  {
    do
    {
      v4 = HFLogForCategory();
      v5 = os_signpost_id_make_with_pointer(v4, v3);

      v6 = HFLogForCategory();
      v7 = v6;
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
      {
        *buf = 138412290;
        v16 = v3;
        _os_signpost_emit_with_name_impl(&dword_254573000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PackageIconManagerPrefetch", "Loading: %@", buf, 0xCu);
      }

      v8 = [WeakRetained _loadPackageWithIconDescriptor:v3];
      if (v8)
      {
        v9 = [WeakRetained _queueForIconDescriptorIdentifier:v3];
        os_unfair_lock_lock(WeakRetained + 2);
        [v9 enqueue:v8];
        os_unfair_lock_unlock(WeakRetained + 2);
      }

      v10 = HFLogForCategory();
      v11 = v10;
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        *buf = 138412290;
        v16 = v3;
        _os_signpost_emit_with_name_impl(&dword_254573000, v11, OS_SIGNPOST_INTERVAL_END, v5, "PackageIconManagerPrefetch", "Loading: %@", buf, 0xCu);
      }

      v12 = [WeakRetained prefetchPriorityQueue];
      v13 = [v12 dequeue];

      v3 = v13;
    }

    while (v13);
  }

  dispatch_group_leave(*(WeakRetained + 2));

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_loadPackageWithIconDescriptor:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUCAPackageIconManager *)self _packageDataForIconDescriptor:v4];
  if (v5)
  {
    [MEMORY[0x277CD9FF0] begin];
    v6 = MEMORY[0x277CD9F28];
    v7 = [v5 data];
    v8 = [v5 typeIdentifier];
    v15 = 0;
    v9 = [v6 packageWithData:v7 type:v8 options:0 error:&v15];
    v10 = v15;

    [MEMORY[0x277CD9FF0] commit];
    if (!v9)
    {
      NSLog(&cfstr_FailedToIdenti.isa, v4);
    }

    if (v10)
    {
      v11 = HFLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = [v10 localizedDescription];
        *buf = 138412546;
        v17 = v4;
        v18 = 2112;
        v19 = v14;
        _os_log_error_impl(&dword_254573000, v11, OS_LOG_TYPE_ERROR, "HUCAPackageIconManager: Failed to identify CAPackage for icon identifier: %@ due to error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_packageDataForIconDescriptor:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUCAPackageIconManager *)self packageDataCache];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x277D74210]);
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v7 initWithName:v4 bundle:v8];

    if (v6)
    {
      v9 = [(HUCAPackageIconManager *)self packageDataCache];
      [v9 setObject:v6 forKey:v4];
    }

    else
    {
      v9 = HFLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_error_impl(&dword_254573000, v9, OS_LOG_TYPE_ERROR, "HUCAPackageIconManager: Failed to load NSDataAsset for icon identifier: %@", &v13, 0xCu);
      }
    }
  }

  v10 = v6;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_queueForIconDescriptorIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HUCAPackageIconManager *)self packageReuseQueue];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = objc_opt_new();
    v7 = [(HUCAPackageIconManager *)self packageReuseQueue];
    [v7 setObject:v6 forKey:v4];
  }

  return v6;
}

@end