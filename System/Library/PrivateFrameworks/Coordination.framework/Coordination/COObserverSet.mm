@interface COObserverSet
- (COObserverSet)init;
- (NSOperationQueue)queue;
- (id)addObserverForName:(id)name observable:(id)observable queue:(id)queue usingBlock:(id)block;
- (id)registeredNames;
- (void)_withLock:(id)lock;
- (void)postNotification:(id)notification;
- (void)removeObserver:(id)observer;
@end

@implementation COObserverSet

- (COObserverSet)init
{
  v7.receiver = self;
  v7.super_class = COObserverSet;
  v2 = [(COObserverSet *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
    registrations = v3->_registrations;
    v3->_registrations = v4;
  }

  return v3;
}

- (NSOperationQueue)queue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__8;
  v9 = __Block_byref_object_dispose__8;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __22__COObserverSet_queue__block_invoke;
  v4[3] = &unk_278E122F0;
  v4[4] = self;
  v4[5] = &v5;
  [(COObserverSet *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __22__COObserverSet_queue__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 16));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)addObserverForName:(id)name observable:(id)observable queue:(id)queue usingBlock:(id)block
{
  nameCopy = name;
  observableCopy = observable;
  queueCopy = queue;
  blockCopy = block;
  v14 = [COObserver alloc];
  v15 = v14;
  if (queueCopy)
  {
    v16 = [(COObserver *)v14 initForName:nameCopy onObservable:observableCopy handler:blockCopy queue:queueCopy];
  }

  else
  {
    queue = [(COObserverSet *)self queue];
    v16 = [(COObserver *)v15 initForName:nameCopy onObservable:observableCopy handler:blockCopy queue:queue];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __64__COObserverSet_addObserverForName_observable_queue_usingBlock___block_invoke;
  v22[3] = &unk_278E12368;
  v22[4] = self;
  v18 = v16;
  v23 = v18;
  [(COObserverSet *)self _withLock:v22];
  v19 = v23;
  v20 = v18;

  return v18;
}

void __64__COObserverSet_addObserverForName_observable_queue_usingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registrations];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __32__COObserverSet_removeObserver___block_invoke;
    v5[3] = &unk_278E12368;
    v5[4] = self;
    v6 = observerCopy;
    [(COObserverSet *)self _withLock:v5];
  }
}

void __32__COObserverSet_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registrations];
  [v2 removeObject:*(a1 + 40)];
}

- (void)postNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__COObserverSet_postNotification___block_invoke;
  v8[3] = &unk_278E12738;
  v8[4] = self;
  v9 = name;
  v10 = notificationCopy;
  v6 = notificationCopy;
  v7 = name;
  [(COObserverSet *)self _withLock:v8];
}

void __34__COObserverSet_postNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) registrations];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 name];
        v9 = [v8 isEqualToString:*(a1 + 40)];

        if (v9)
        {
          [v7 notify:*(a1 + 48)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)registeredNames
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__COObserverSet_registeredNames__block_invoke;
  v8[3] = &unk_278E12368;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(COObserverSet *)self _withLock:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __32__COObserverSet_registeredNames__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) registrations];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) name];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end