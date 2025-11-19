@interface CSLPRFConcurrentObserverStore
- (CSLPRFConcurrentObserverStore)initWithServiceName:(id)a3;
- (unint64_t)count;
- (void)_withLock:(id)a3;
- (void)addObserver:(id)a3;
- (void)enumerateObserversWithBlock:(id)a3;
- (void)performSelectorOnMainThreadWithRespondingObservers:(SEL)a3 object:(id)a4 waitUntilDone:(BOOL)a5;
- (void)removeObserver:(id)a3;
@end

@implementation CSLPRFConcurrentObserverStore

- (void)enumerateObserversWithBlock:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__867;
  v19 = __Block_byref_object_dispose__868;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__CSLPRFConcurrentObserverStore_enumerateObserversWithBlock___block_invoke;
  v14[3] = &unk_278745590;
  v14[4] = self;
  v14[5] = &v15;
  [(CSLPRFConcurrentObserverStore *)self _withLock:v14];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v16[5];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v21 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v10 + 1) + 8 * v8))
        {
          v4[2](v4);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v21 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(&v15, 8);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __61__CSLPRFConcurrentObserverStore_enumerateObserversWithBlock___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) compact];
  v2 = [*(*(a1 + 32) + 16) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)performSelectorOnMainThreadWithRespondingObservers:(SEL)a3 object:(id)a4 waitUntilDone:(BOOL)a5
{
  v8 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __105__CSLPRFConcurrentObserverStore_performSelectorOnMainThreadWithRespondingObservers_object_waitUntilDone___block_invoke;
  v10[3] = &unk_2787447E0;
  v11 = v8;
  v12 = a3;
  v13 = a5;
  v9 = v8;
  [(CSLPRFConcurrentObserverStore *)self enumerateObserversWithBlock:v10];
}

void __105__CSLPRFConcurrentObserverStore_performSelectorOnMainThreadWithRespondingObservers_object_waitUntilDone___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  if (objc_opt_respondsToSelector())
  {
    [v5 performSelectorOnMainThread:*(a1 + 40) withObject:*(a1 + 32) waitUntilDone:*(a1 + 48)];
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__CSLPRFConcurrentObserverStore_removeObserver___block_invoke;
  v6[3] = &unk_2787455E0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CSLPRFConcurrentObserverStore *)self _withLock:v6];
}

uint64_t __48__CSLPRFConcurrentObserverStore_removeObserver___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) count])
  {
    v2 = 0;
    while (1)
    {
      v3 = [*(*(a1 + 32) + 16) pointerAtIndex:v2];
      v4 = v3;
      if (*(a1 + 40) == v3)
      {
        break;
      }

      if (++v2 >= [*(*(a1 + 32) + 16) count])
      {
        goto LABEL_7;
      }
    }

    [*(*(a1 + 32) + 16) replacePointerAtIndex:v2 withPointer:0];
  }

LABEL_7:
  v5 = *(*(a1 + 32) + 16);

  return [v5 compact];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__CSLPRFConcurrentObserverStore_addObserver___block_invoke;
  v6[3] = &unk_2787455E0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CSLPRFConcurrentObserverStore *)self _withLock:v6];
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_observersLock);
}

- (unint64_t)count
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__CSLPRFConcurrentObserverStore_count__block_invoke;
  v4[3] = &unk_278745590;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLPRFConcurrentObserverStore *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __38__CSLPRFConcurrentObserverStore_count__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) compact];
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (CSLPRFConcurrentObserverStore)initWithServiceName:(id)a3
{
  v7.receiver = self;
  v7.super_class = CSLPRFConcurrentObserverStore;
  v3 = [(CSLPRFConcurrentObserverStore *)&v7 init];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    observers = v3->_observers;
    v3->_observers = v4;

    v3->_observersLock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

@end