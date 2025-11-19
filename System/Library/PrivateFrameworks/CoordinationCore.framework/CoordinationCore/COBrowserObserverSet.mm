@interface COBrowserObserverSet
- (COBrowserObserverSet)init;
- (NSArray)observers;
- (void)_withLock:(id)a3;
- (void)addObserver:(id)a3;
- (void)informObserverAboutDevice:(id)a3 added:(BOOL)a4;
- (void)removeObserver:(id)a3;
@end

@implementation COBrowserObserverSet

- (COBrowserObserverSet)init
{
  v7.receiver = self;
  v7.super_class = COBrowserObserverSet;
  v2 = [(COBrowserObserverSet *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CBEA60] array];
    observers = v3->_observers;
    v3->_observers = v4;
  }

  return v3;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__COBrowserObserverSet_addObserver___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(COBrowserObserverSet *)self _withLock:v6];
}

void __36__COBrowserObserverSet_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) mutableCopy];
  [v2 addObject:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__COBrowserObserverSet_removeObserver___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(COBrowserObserverSet *)self _withLock:v6];
}

void __39__COBrowserObserverSet_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) mutableCopy];
  [v2 removeObject:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

- (NSArray)observers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__28;
  v9 = __Block_byref_object_dispose__28;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__COBrowserObserverSet_observers__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COBrowserObserverSet *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)informObserverAboutDevice:(id)a3 added:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__COBrowserObserverSet_informObserverAboutDevice_added___block_invoke;
  v8[3] = &unk_278E16998;
  v10 = a4;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(COBrowserObserverSet *)self _withLock:v8];
}

void __56__COBrowserObserverSet_informObserverAboutDevice_added___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 16);
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

        v7 = [*(*(&v9 + 1) + 8 * v6) block];
        v7[2](v7, *(a1 + 48), *(a1 + 40));

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

@end