@interface MSPSharedTripCapabilityFetchingQueue
- (BOOL)containsHandle:(id)handle;
- (MSPSharedTripCapabilityFetchingQueue)initWithDelegate:(id)delegate queue:(id)queue label:(id)label;
- (MSPSharedTripCapabilityFetchingQueueDelegate)delegate;
- (NSOrderedSet)inflightHandles;
- (NSOrderedSet)pendingHandles;
- (NSOrderedSet)requestedHandles;
- (id)_pendingHandles;
- (id)description;
- (unint64_t)count;
- (void)_markHandleInflight:(id)inflight;
- (void)_markHandlesInflight:(id)inflight;
- (void)_updateRequestedHandlesWithAdditions:(id)additions subtractions:(id)subtractions;
- (void)markHandleInflight:(id)inflight;
- (void)markHandlesInflight:(id)inflight;
- (void)updateRequestedHandlesWithAdditions:(id)additions subtractions:(id)subtractions;
@end

@implementation MSPSharedTripCapabilityFetchingQueue

- (id)_pendingHandles
{
  dispatch_assert_queue_V2(self->_workQueue);
  contents = [(MSPCountedOrderedSet *)self->_requestedHandles contents];
  v4 = [contents mutableCopy];

  [v4 minusOrderedSet:self->_inflightHandles];
  v5 = [v4 copy];

  return v5;
}

- (MSPSharedTripCapabilityFetchingQueue)initWithDelegate:(id)delegate queue:(id)queue label:(id)label
{
  delegateCopy = delegate;
  queueCopy = queue;
  labelCopy = label;
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

    objc_storeWeak(&v11->_delegate, delegateCopy);
    labelCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.Maps.SharedTrip.CapabilityFetching.Queue.%@", labelCopy];
    uTF8String = [labelCopy UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(uTF8String, v18);
    workQueue = v11->_workQueue;
    v11->_workQueue = v19;

    objc_storeStrong(&v11->_callbackQueue, queue);
    v21 = [labelCopy copy];
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
    selfCopy = self;
    selfCopy = [v3 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
  }

  else
  {
    selfCopy = @"<nil>";
  }

  label = [(MSPSharedTripCapabilityFetchingQueue *)self label];
  delegate = [(MSPSharedTripCapabilityFetchingQueue *)self delegate];
  if (delegate)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), delegate];
  }

  else
  {
    v8 = @"<nil>";
  }

  v9 = [v3 stringWithFormat:@"%@ (%@) <delegate: %@, %lu pending: %@, %lu inflight: %@>", selfCopy, label, v8, -[MSPCountedOrderedSet count](self->_requestedHandles, "count"), self->_requestedHandles, -[NSMutableOrderedSet count](self->_inflightHandles, "count"), self->_inflightHandles];

  return v9;
}

- (void)updateRequestedHandlesWithAdditions:(id)additions subtractions:(id)subtractions
{
  additionsCopy = additions;
  subtractionsCopy = subtractions;
  dispatch_assert_queue_not_V2(self->_workQueue);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__MSPSharedTripCapabilityFetchingQueue_updateRequestedHandlesWithAdditions_subtractions___block_invoke;
  block[3] = &unk_279866300;
  block[4] = self;
  v12 = additionsCopy;
  v13 = subtractionsCopy;
  v9 = subtractionsCopy;
  v10 = additionsCopy;
  dispatch_sync(workQueue, block);
}

- (void)_updateRequestedHandlesWithAdditions:(id)additions subtractions:(id)subtractions
{
  v40 = *MEMORY[0x277D85DE8];
  additionsCopy = additions;
  subtractionsCopy = subtractions;
  dispatch_assert_queue_V2(self->_workQueue);
  v8 = MSPGetSharedTripCapabilityFetchingQueueLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x277CCACA8];
    selfCopy = self;
    selfCopy = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

    label = [(MSPSharedTripCapabilityFetchingQueue *)selfCopy label];
    *buf = 138413571;
    v29 = selfCopy;
    v30 = 2112;
    v31 = label;
    v32 = 2048;
    v33 = [additionsCopy count];
    v34 = 2113;
    v35 = additionsCopy;
    v36 = 2048;
    v37 = [subtractionsCopy count];
    v38 = 2113;
    v39 = subtractionsCopy;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEBUG, "%@ (%@) add: %lu %{private}@, removed: %lu %{private}@", buf, 0x3Eu);
  }

  [(MSPCountedOrderedSet *)self->_requestedHandles unionSet:additionsCopy];
  [(MSPCountedOrderedSet *)self->_requestedHandles minusSet:subtractionsCopy];
  if ([subtractionsCopy count])
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

  _pendingHandles = [(MSPSharedTripCapabilityFetchingQueue *)self _pendingHandles];
  v21 = [_pendingHandles count];

  if (v21)
  {
    [(MSPSharedTripCapabilityFetchingQueue *)self _processPendingHandles];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)containsHandle:(id)handle
{
  handleCopy = handle;
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
  v9 = handleCopy;
  v10 = &v11;
  block[4] = self;
  v6 = handleCopy;
  dispatch_sync(workQueue, block);
  LOBYTE(handleCopy) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return handleCopy;
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

- (void)markHandleInflight:(id)inflight
{
  inflightCopy = inflight;
  dispatch_assert_queue_not_V2(self->_workQueue);
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MSPSharedTripCapabilityFetchingQueue_markHandleInflight___block_invoke;
  block[3] = &unk_279865F48;
  objc_copyWeak(&v9, &location);
  v8 = inflightCopy;
  v6 = inflightCopy;
  dispatch_sync(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __59__MSPSharedTripCapabilityFetchingQueue_markHandleInflight___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _markHandleInflight:*(a1 + 32)];
}

- (void)_markHandleInflight:(id)inflight
{
  v14 = *MEMORY[0x277D85DE8];
  inflightCopy = inflight;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = MSPGetSharedTripCapabilityFetchingQueueLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = MEMORY[0x277CCACA8];
    selfCopy = self;
    selfCopy = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

    *buf = 138543619;
    v11 = selfCopy;
    v12 = 2113;
    v13 = inflightCopy;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] mark handle inflight: %{private}@", buf, 0x16u);
  }

  [(NSMutableOrderedSet *)self->_inflightHandles addObject:inflightCopy];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markHandlesInflight:(id)inflight
{
  inflightCopy = inflight;
  dispatch_assert_queue_not_V2(self->_workQueue);
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__MSPSharedTripCapabilityFetchingQueue_markHandlesInflight___block_invoke;
  block[3] = &unk_279865F48;
  objc_copyWeak(&v9, &location);
  v8 = inflightCopy;
  v6 = inflightCopy;
  dispatch_sync(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __60__MSPSharedTripCapabilityFetchingQueue_markHandlesInflight___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _markHandlesInflight:*(a1 + 32)];
}

- (void)_markHandlesInflight:(id)inflight
{
  v14 = *MEMORY[0x277D85DE8];
  inflightCopy = inflight;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = MSPGetSharedTripCapabilityFetchingQueueLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = MEMORY[0x277CCACA8];
    selfCopy = self;
    selfCopy = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

    *buf = 138543619;
    v11 = selfCopy;
    v12 = 2113;
    v13 = inflightCopy;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] mark handles inflight: %{private}@", buf, 0x16u);
  }

  [(NSMutableOrderedSet *)self->_inflightHandles unionOrderedSet:inflightCopy];
  v9 = *MEMORY[0x277D85DE8];
}

- (MSPSharedTripCapabilityFetchingQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end