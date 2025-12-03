@interface MTObserverStore
- (BOOL)containsObserver:(id)observer;
- (MTObserverStore)init;
- (MTObserverStore)initWithCallbackScheduler:(id)scheduler;
- (id)currentObservers;
- (unint64_t)count;
- (void)_withLock:(id)lock;
- (void)addObserver:(id)observer wasFirst:(BOOL *)first;
- (void)enumerateObserversWithBlock:(id)block;
- (void)removeObserver:(id)observer wasLast:(BOOL *)last;
@end

@implementation MTObserverStore

- (MTObserverStore)init
{
  mtMainThreadScheduler = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
  v4 = [(MTObserverStore *)self initWithCallbackScheduler:mtMainThreadScheduler];

  return v4;
}

- (MTObserverStore)initWithCallbackScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v11.receiver = self;
  v11.super_class = MTObserverStore;
  v6 = [(MTObserverStore *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callbackScheduler, scheduler);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;

    v7->_observersLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_observersLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)addObserver:(id)observer wasFirst:(BOOL *)first
{
  observerCopy = observer;
  if (!observerCopy)
  {
    [MTObserverStore addObserver:a2 wasFirst:self];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__MTObserverStore_addObserver_wasFirst___block_invoke;
  v9[3] = &unk_1E7B0CD10;
  v9[4] = self;
  v10 = observerCopy;
  firstCopy = first;
  v8 = observerCopy;
  [(MTObserverStore *)self _withLock:v9];
}

uint64_t __40__MTObserverStore_addObserver_wasFirst___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  if (*(a1 + 48))
  {
    result = [*(*(a1 + 32) + 24) count];
    if (result == 1)
    {
      **(a1 + 48) = 1;
    }
  }

  return result;
}

- (void)removeObserver:(id)observer wasLast:(BOOL *)last
{
  observerCopy = observer;
  if (!observerCopy)
  {
    [MTObserverStore removeObserver:a2 wasLast:self];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__MTObserverStore_removeObserver_wasLast___block_invoke;
  v9[3] = &unk_1E7B0CD10;
  v9[4] = self;
  v10 = observerCopy;
  lastCopy = last;
  v8 = observerCopy;
  [(MTObserverStore *)self _withLock:v9];
}

uint64_t __42__MTObserverStore_removeObserver_wasLast___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  if (*(a1 + 48))
  {
    result = [*(*(a1 + 32) + 24) count];
    if (!result)
    {
      **(a1 + 48) = 1;
    }
  }

  return result;
}

- (void)enumerateObserversWithBlock:(id)block
{
  blockCopy = block;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__11;
  v11[4] = __Block_byref_object_dispose__11;
  v12 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__MTObserverStore_enumerateObserversWithBlock___block_invoke;
  v10[3] = &unk_1E7B0CAC0;
  v10[4] = self;
  v10[5] = v11;
  [(MTObserverStore *)self _withLock:v10];
  callbackScheduler = self->_callbackScheduler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__MTObserverStore_enumerateObserversWithBlock___block_invoke_2;
  v7[3] = &unk_1E7B0F230;
  v9 = v11;
  v6 = blockCopy;
  v8 = v6;
  [(NAScheduler *)callbackScheduler performBlock:v7];

  _Block_object_dispose(v11, 8);
}

uint64_t __47__MTObserverStore_enumerateObserversWithBlock___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __47__MTObserverStore_enumerateObserversWithBlock___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (*(*(&v8 + 1) + 8 * v6))
        {
          (*(*(a1 + 32) + 16))(*(a1 + 32));
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)containsObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    [(MTObserverStore *)a2 containsObserver:?];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__MTObserverStore_containsObserver___block_invoke;
  v9[3] = &unk_1E7B0CB10;
  v11 = &v12;
  v9[4] = self;
  v6 = observerCopy;
  v10 = v6;
  [(MTObserverStore *)self _withLock:v9];
  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __36__MTObserverStore_containsObserver___block_invoke(void *a1)
{
  result = [*(a1[4] + 24) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (unint64_t)count
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __24__MTObserverStore_count__block_invoke;
  v4[3] = &unk_1E7B0CAC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MTObserverStore *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __24__MTObserverStore_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)currentObservers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__11;
  v9 = __Block_byref_object_dispose__11;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__MTObserverStore_currentObservers__block_invoke;
  v4[3] = &unk_1E7B0CAC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MTObserverStore *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __35__MTObserverStore_currentObservers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)addObserver:(uint64_t)a1 wasFirst:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTObserverStore.m" lineNumber:49 description:@"observer cannot be nil"];
}

- (void)removeObserver:(uint64_t)a1 wasLast:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTObserverStore.m" lineNumber:63 description:@"observer cannot be nil"];
}

- (void)containsObserver:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTObserverStore.m" lineNumber:88 description:@"observer cannot be nil"];
}

@end