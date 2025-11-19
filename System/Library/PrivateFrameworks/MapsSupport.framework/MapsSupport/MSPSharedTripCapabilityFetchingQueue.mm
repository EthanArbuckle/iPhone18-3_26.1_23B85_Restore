@interface MSPSharedTripCapabilityFetchingQueue
- (BOOL)containsHandle:(id)a3;
- (MSPSharedTripCapabilityFetchingQueue)initWithDelegate:(id)a3 queue:(id)a4 label:(id)a5;
- (MSPSharedTripCapabilityFetchingQueueDelegate)delegate;
- (NSOrderedSet)inflightHandles;
- (NSOrderedSet)pendingHandles;
- (NSOrderedSet)requestedHandles;
- (id)_pendingHandles;
- (id)description;
- (unint64_t)count;
- (void)_markHandleInflight:(id)a3;
- (void)_markHandlesInflight:(id)a3;
- (void)_updateRequestedHandlesWithAdditions:(id)a3 subtractions:(id)a4;
- (void)markHandleInflight:(id)a3;
- (void)markHandlesInflight:(id)a3;
- (void)updateRequestedHandlesWithAdditions:(id)a3 subtractions:(id)a4;
@end

@implementation MSPSharedTripCapabilityFetchingQueue

- (id)_pendingHandles
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(MSPCountedOrderedSet *)self->_requestedHandles contents];
  v4 = [v3 mutableCopy];

  [v4 minusOrderedSet:self->_inflightHandles];
  v5 = [v4 copy];

  return v5;
}

- (MSPSharedTripCapabilityFetchingQueue)initWithDelegate:(id)a3 queue:(id)a4 label:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = MSPSharedTripCapabilityFetchingQueue;
  v11 = [(MSPSharedTripCapabilityFetchingQueue *)&v24 init];
  if (v11)
  {
    v12 = objc_alloc_init(MSPCountedOrderedSet);
    requestedHandles = v11->_requestedHandles;
    v11->_requestedHandles = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB40]);
    inflightHandles = v11->_inflightHandles;
    v11->_inflightHandles = v14;

    objc_storeWeak(&v11->_delegate, v8);
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.Maps.SharedTrip.CapabilityFetching.Queue.%@", v10];
    v17 = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(v17, v18);
    workQueue = v11->_workQueue;
    v11->_workQueue = v19;

    objc_storeStrong(&v11->_callbackQueue, a4);
    v21 = [v10 copy];
    label = v11->_label;
    v11->_label = v21;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if (self)
  {
    v4 = self;
    v5 = [v3 stringWithFormat:@"%@<%p>", objc_opt_class(), v4];
  }

  else
  {
    v5 = @"<nil>";
  }

  v6 = [(MSPSharedTripCapabilityFetchingQueue *)self label];
  v7 = [(MSPSharedTripCapabilityFetchingQueue *)self delegate];
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v7];
  }

  else
  {
    v8 = @"<nil>";
  }

  v9 = [v3 stringWithFormat:@"%@ (%@) <delegate: %@, %lu pending: %@, %lu inflight: %@>", v5, v6, v8, -[MSPCountedOrderedSet count](self->_requestedHandles, "count"), self->_requestedHandles, -[NSMutableOrderedSet count](self->_inflightHandles, "count"), self->_inflightHandles];

  return v9;
}

- (void)updateRequestedHandlesWithAdditions:(id)a3 subtractions:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_workQueue);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__MSPSharedTripCapabilityFetchingQueue_updateRequestedHandlesWithAdditions_subtractions___block_invoke;
  block[3] = &unk_279866300;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(workQueue, block);
}

- (void)_updateRequestedHandlesWithAdditions:(id)a3 subtractions:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_workQueue);
  v8 = MSPGetSharedTripCapabilityFetchingQueueLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = self;
    v11 = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), v10];

    v12 = [(MSPSharedTripCapabilityFetchingQueue *)v10 label];
    *buf = 138413571;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    v32 = 2048;
    v33 = [v6 count];
    v34 = 2113;
    v35 = v6;
    v36 = 2048;
    v37 = [v7 count];
    v38 = 2113;
    v39 = v7;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEBUG, "%@ (%@) add: %lu %{private}@, removed: %lu %{private}@", buf, 0x3Eu);
  }

  [(MSPCountedOrderedSet *)self->_requestedHandles unionSet:v6];
  [(MSPCountedOrderedSet *)self->_requestedHandles minusSet:v7];
  if ([v7 count])
  {
    v13 = [(NSMutableOrderedSet *)self->_inflightHandles copy];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          if (![(MSPCountedOrderedSet *)self->_requestedHandles containsObject:v19])
          {
            [(NSMutableOrderedSet *)self->_inflightHandles removeObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }
  }

  v20 = [(MSPSharedTripCapabilityFetchingQueue *)self _pendingHandles];
  v21 = [v20 count];

  if (v21)
  {
    [(MSPSharedTripCapabilityFetchingQueue *)self _processPendingHandles];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)containsHandle:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_workQueue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__MSPSharedTripCapabilityFetchingQueue_containsHandle___block_invoke;
  block[3] = &unk_279866180;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(workQueue, block);
  LOBYTE(v4) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __55__MSPSharedTripCapabilityFetchingQueue_containsHandle___block_invoke(void *a1)
{
  result = [*(a1[4] + 32) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (unint64_t)count
{
  dispatch_assert_queue_not_V2(self->_workQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  workQueue = self->_workQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__MSPSharedTripCapabilityFetchingQueue_count__block_invoke;
  v6[3] = &unk_279867838;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __45__MSPSharedTripCapabilityFetchingQueue_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSOrderedSet)requestedHandles
{
  dispatch_assert_queue_not_V2(self->_workQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  workQueue = self->_workQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__MSPSharedTripCapabilityFetchingQueue_requestedHandles__block_invoke;
  v6[3] = &unk_279867838;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __56__MSPSharedTripCapabilityFetchingQueue_requestedHandles__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) contents];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSOrderedSet)inflightHandles
{
  dispatch_assert_queue_not_V2(self->_workQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  workQueue = self->_workQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__MSPSharedTripCapabilityFetchingQueue_inflightHandles__block_invoke;
  v6[3] = &unk_279867838;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __55__MSPSharedTripCapabilityFetchingQueue_inflightHandles__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSOrderedSet)pendingHandles
{
  dispatch_assert_queue_not_V2(self->_workQueue);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__7;
  v13 = __Block_byref_object_dispose__7;
  v14 = 0;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MSPSharedTripCapabilityFetchingQueue_pendingHandles__block_invoke;
  block[3] = &unk_279867928;
  block[4] = &v9;
  objc_copyWeak(&v7, &location);
  dispatch_sync(workQueue, block);
  v4 = v10[5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v9, 8);

  return v4;
}

void __54__MSPSharedTripCapabilityFetchingQueue_pendingHandles__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _pendingHandles];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)markHandleInflight:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_workQueue);
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MSPSharedTripCapabilityFetchingQueue_markHandleInflight___block_invoke;
  block[3] = &unk_279865F48;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_sync(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __59__MSPSharedTripCapabilityFetchingQueue_markHandleInflight___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _markHandleInflight:*(a1 + 32)];
}

- (void)_markHandleInflight:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = MSPGetSharedTripCapabilityFetchingQueueLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = self;
    v8 = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), v7];

    *buf = 138543619;
    v11 = v8;
    v12 = 2113;
    v13 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] mark handle inflight: %{private}@", buf, 0x16u);
  }

  [(NSMutableOrderedSet *)self->_inflightHandles addObject:v4];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markHandlesInflight:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_workQueue);
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__MSPSharedTripCapabilityFetchingQueue_markHandlesInflight___block_invoke;
  block[3] = &unk_279865F48;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_sync(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __60__MSPSharedTripCapabilityFetchingQueue_markHandlesInflight___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _markHandlesInflight:*(a1 + 32)];
}

- (void)_markHandlesInflight:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = MSPGetSharedTripCapabilityFetchingQueueLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = self;
    v8 = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), v7];

    *buf = 138543619;
    v11 = v8;
    v12 = 2113;
    v13 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] mark handles inflight: %{private}@", buf, 0x16u);
  }

  [(NSMutableOrderedSet *)self->_inflightHandles unionOrderedSet:v4];
  v9 = *MEMORY[0x277D85DE8];
}

- (MSPSharedTripCapabilityFetchingQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end