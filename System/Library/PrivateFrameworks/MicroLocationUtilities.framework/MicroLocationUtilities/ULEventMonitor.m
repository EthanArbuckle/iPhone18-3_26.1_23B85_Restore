@interface ULEventMonitor
- (ULEventMonitor)init;
- (unint64_t)getNumberOfObserversForEventName:(id)a3;
- (void)addObserver:(const void *)a3 eventName:(id)a4 handler:(id)a5;
- (void)dealloc;
- (void)postEvent:(id)a3;
- (void)removeObserver:(const void *)a3;
- (void)removeObserver:(const void *)a3 fromEventName:(id)a4;
@end

@implementation ULEventMonitor

- (ULEventMonitor)init
{
  v7.receiver = self;
  v7.super_class = ULEventMonitor;
  v2 = [(ULEventMonitor *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.milod.ULEventMonitor", v3);
    [(ULEventMonitor *)v2 setQueue:v4];

    v5 = [MEMORY[0x277CBEB38] dictionary];
    [(ULEventMonitor *)v2 setObserversMap:v5];
  }

  return v2;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(ULEventMonitor *)self observersMap];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(ULEventMonitor *)self stopMonitoring:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10.receiver = self;
  v10.super_class = ULEventMonitor;
  [(ULEventMonitor *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(const void *)a3 eventName:(id)a4 handler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_not_V2(v10);

  v11 = [(ULEventMonitor *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__ULEventMonitor_addObserver_eventName_handler___block_invoke;
  v14[3] = &unk_2798DA5A0;
  v16 = v9;
  v17 = a3;
  v14[4] = self;
  v15 = v8;
  v12 = v8;
  v13 = v9;
  dispatch_sync(v11, v14);
}

void __48__ULEventMonitor_addObserver_eventName_handler___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setObserver:*(a1 + 56)];
  [v2 setHandler:*(a1 + 48)];
  v3 = [*(a1 + 32) observersMap];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (v4)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__ULEventMonitor_addObserver_eventName_handler___block_invoke_2;
    v9[3] = &unk_2798DA578;
    v5 = *(a1 + 56);
    v9[4] = &v10;
    v9[5] = v5;
    [v4 enumerateObjectsUsingBlock:v9];
    if ((v11[3] & 1) == 0)
    {
      [v4 addObject:v2];
    }
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithObject:v2];
    v7 = [*(a1 + 32) observersMap];
    [v7 setObject:v6 forKeyedSubscript:*(a1 + 40)];

    [*(a1 + 32) startMonitoring:*(a1 + 40)];
  }

  if ((v11[3] & 1) == 0)
  {
    v8 = [*(a1 + 32) latestEventAfterAddingObserverForEventName:*(a1 + 40)];
    if (v8)
    {
      [*(a1 + 32) postEvent:v8];
    }
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __48__ULEventMonitor_addObserver_eventName_handler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 observer];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)removeObserver:(const void *)a3
{
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(ULEventMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__ULEventMonitor_removeObserver___block_invoke;
  v7[3] = &unk_2798DA618;
  v7[4] = self;
  v7[5] = a3;
  dispatch_sync(v6, v7);
}

void __33__ULEventMonitor_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observersMap];
  v3 = [v2 allKeys];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__ULEventMonitor_removeObserver___block_invoke_2;
  v4[3] = &unk_2798DA5F0;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __33__ULEventMonitor_removeObserver___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) observersMap];
  v5 = [v4 objectForKeyedSubscript:v3];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__ULEventMonitor_removeObserver___block_invoke_3;
  v10[3] = &unk_2798DA5C8;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11 = v5;
  v12 = v7;
  v13 = v3;
  v14 = v6;
  v8 = v3;
  v9 = v5;
  [v9 enumerateObjectsUsingBlock:v10];
}

uint64_t __33__ULEventMonitor_removeObserver___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([v8 observer] == *(a1 + 56))
  {
    [*(a1 + 32) removeObject:v8];
    if (![*(a1 + 32) count])
    {
      [*(a1 + 40) stopMonitoring:*(a1 + 48)];
      v6 = [*(a1 + 40) observersMap];
      [v6 removeObjectForKey:*(a1 + 48)];
    }

    *a4 = 1;
  }

  return MEMORY[0x2821F9730]();
}

- (void)removeObserver:(const void *)a3 fromEventName:(id)a4
{
  v6 = a4;
  v7 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_not_V2(v7);

  v8 = [(ULEventMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ULEventMonitor_removeObserver_fromEventName___block_invoke;
  block[3] = &unk_2798DA668;
  block[4] = self;
  v11 = v6;
  v12 = a3;
  v9 = v6;
  dispatch_sync(v8, block);
}

void __47__ULEventMonitor_removeObserver_fromEventName___block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v2 = [*(a1 + 32) observersMap];
  v16 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = v12[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__ULEventMonitor_removeObserver_fromEventName___block_invoke_26;
  v6[3] = &unk_2798DA640;
  v4 = *(a1 + 48);
  v6[5] = &v7;
  v6[6] = v4;
  v6[4] = &v11;
  [v3 enumerateObjectsUsingBlock:v6];
  if (*(v8 + 24) == 1 && ![v12[5] count])
  {
    [*(a1 + 32) stopMonitoring:*(a1 + 40)];
    v5 = [*(a1 + 32) observersMap];
    [v5 removeObjectForKey:*(a1 + 40)];
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

uint64_t __47__ULEventMonitor_removeObserver_fromEventName___block_invoke_26(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 observer];
  if (result == a1[6])
  {
    result = [*(*(a1[4] + 8) + 40) removeObjectAtIndex:a3];
    *(*(a1[5] + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)postEvent:(id)a3
{
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ULEventMonitor *)self observersMap];
  v7 = [v4 name];
  v8 = [v6 objectForKeyedSubscript:v7];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __28__ULEventMonitor_postEvent___block_invoke;
  v10[3] = &unk_2798DA690;
  v11 = v4;
  v9 = v4;
  [v8 enumerateObjectsUsingBlock:v10];
}

void __28__ULEventMonitor_postEvent___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 handler];

  if (v3)
  {
    v4 = [v5 handler];
    v4[2](v4, *(a1 + 32));
  }
}

- (unint64_t)getNumberOfObserversForEventName:(id)a3
{
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ULEventMonitor *)self observersMap];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [v7 count];
  return v8;
}

@end