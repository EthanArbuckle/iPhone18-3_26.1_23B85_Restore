@interface DNDSKeybag
+ (id)sharedInstance;
- (BOOL)_hasUnlockedSinceBootForObserver:(id)observer;
- (BOOL)hasUnlockedSinceBoot;
- (DNDSKeybag)init;
- (void)_beginObservingKeybag;
- (void)_queue_handleFirstUnlock;
- (void)_queue_handleKeybagStatusChanged;
- (void)addObserver:(id)observer;
- (void)addPriorityObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation DNDSKeybag

void __35__DNDSKeybag__beginObservingKeybag__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_6;
    }

    v4 = WeakRetained;
    [WeakRetained _queue_handleKeybagStatusChanged];
  }

  else
  {
    v4 = WeakRetained;
    [WeakRetained _queue_handleFirstUnlock];
  }

  WeakRetained = v4;
LABEL_6:
}

- (void)_queue_handleKeybagStatusChanged
{
  allObjects = [(NSHashTable *)self->_queue_priorityObservers allObjects];
  v4 = allObjects;
  v5 = MEMORY[0x277CBEBF8];
  if (allObjects)
  {
    v6 = allObjects;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  allObjects2 = [(NSHashTable *)self->_queue_observers allObjects];
  v9 = allObjects2;
  if (allObjects2)
  {
    v10 = allObjects2;
  }

  else
  {
    v10 = v5;
  }

  v11 = [v7 arrayByAddingObjectsFromArray:v10];

  v12 = DNDSLogKeybag;
  if (os_log_type_enabled(DNDSLogKeybag, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "State changed", buf, 2u);
  }

  calloutQueue = self->_calloutQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__DNDSKeybag__queue_handleKeybagStatusChanged__block_invoke;
  v15[3] = &unk_278F89F48;
  v16 = v11;
  selfCopy = self;
  v14 = v11;
  dispatch_async(calloutQueue, v15);
}

void __46__DNDSKeybag__queue_handleKeybagStatusChanged__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 keybagDidChangeState:{*(a1 + 40), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[DNDSKeybag sharedInstance];
  }

  v3 = sharedInstance_shared_0;

  return v3;
}

uint64_t __28__DNDSKeybag_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(DNDSKeybag);
  v1 = sharedInstance_shared_0;
  sharedInstance_shared_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (DNDSKeybag)init
{
  v8.receiver = self;
  v8.super_class = DNDSKeybag;
  v2 = [(DNDSKeybag *)&v8 init];
  if (v2)
  {
    v3 = BSDispatchQueueCreateWithQualityOfService();
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v3;

    v5 = BSDispatchQueueCreateWithQualityOfService();
    queue = v2->_queue;
    v2->_queue = v5;

    v2->_queue_hasUnlockedSinceBoot = MKBDeviceUnlockedSinceBoot() != 0;
    [(DNDSKeybag *)v2 _beginObservingKeybag];
  }

  return v2;
}

- (void)dealloc
{
  mbkEvent = self->_mbkEvent;
  MKBEventsUnregister();
  v4.receiver = self;
  v4.super_class = DNDSKeybag;
  [(DNDSKeybag *)&v4 dealloc];
}

- (BOOL)hasUnlockedSinceBoot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__DNDSKeybag_hasUnlockedSinceBoot__block_invoke;
  v5[3] = &unk_278F89EA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_hasUnlockedSinceBootForObserver:(id)observer
{
  observerCopy = observer;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DNDSKeybag__hasUnlockedSinceBootForObserver___block_invoke;
  block[3] = &unk_278F8ACC8;
  block[4] = self;
  v9 = observerCopy;
  v10 = &v11;
  v6 = observerCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void __47__DNDSKeybag__hasUnlockedSinceBootForObserver___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) allObjects];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__DNDSKeybag__hasUnlockedSinceBootForObserver___block_invoke_2;
  v5[3] = &unk_278F8BFE0;
  v6 = *(a1 + 40);
  v3 = [v2 bs_containsObjectPassingTest:v5];

  v4 = 48;
  if (v3)
  {
    v4 = 32;
  }

  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + v4);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  BSDispatchQueueAssertNot();
  v6 = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __26__DNDSKeybag_addObserver___block_invoke;
  v8[3] = &unk_278F89F48;
  v8[4] = self;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_sync(v6, v8);
}

uint64_t __26__DNDSKeybag_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(a1 + 32) + 40);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)addPriorityObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  BSDispatchQueueAssertNot();
  v6 = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__DNDSKeybag_addPriorityObserver___block_invoke;
  v8[3] = &unk_278F89F48;
  v8[4] = self;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_sync(v6, v8);
}

uint64_t __34__DNDSKeybag_addPriorityObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  BSDispatchQueueAssertNot();
  v6 = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__DNDSKeybag_removeObserver___block_invoke;
  v8[3] = &unk_278F89F48;
  v8[4] = self;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_sync(v6, v8);
}

void __29__DNDSKeybag_removeObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 40) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }
}

- (void)_beginObservingKeybag
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  objc_copyWeak(&v4, &location);
  self->_mbkEvent = MKBEventsRegister();
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_queue_handleFirstUnlock
{
  v3 = DNDSLogKeybag;
  if (os_log_type_enabled(DNDSLogKeybag, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "First unlock occurred", buf, 2u);
  }

  allObjects = [(NSHashTable *)self->_queue_priorityObservers allObjects];
  allObjects2 = [(NSHashTable *)self->_queue_observers allObjects];
  objc_initWeak(buf, self);
  calloutQueue = self->_calloutQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__DNDSKeybag__queue_handleFirstUnlock__block_invoke;
  v9[3] = &unk_278F8C030;
  objc_copyWeak(&v13, buf);
  v10 = allObjects;
  selfCopy = self;
  v12 = allObjects2;
  v7 = allObjects2;
  v8 = allObjects;
  dispatch_async(calloutQueue, v9);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __38__DNDSKeybag__queue_handleFirstUnlock__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 2);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__DNDSKeybag__queue_handleFirstUnlock__block_invoke_2;
    block[3] = &unk_278F89ED0;
    block[4] = v3;
    dispatch_sync(v4, block);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        v9 = 0;
        do
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v24 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 keybagDidUnlockForTheFirstTime:*(a1 + 40)];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v7);
    }

    v11 = v3[2];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __38__DNDSKeybag__queue_handleFirstUnlock__block_invoke_3;
    v23[3] = &unk_278F89ED0;
    v23[4] = v3;
    dispatch_sync(v11, v23);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = *(a1 + 48);
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * v16);
          if (objc_opt_respondsToSelector())
          {
            [v17 keybagDidUnlockForTheFirstTime:{*(a1 + 40), v19}];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v29 count:16];
      }

      while (v14);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end