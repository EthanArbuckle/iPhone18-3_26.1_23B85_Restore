@interface HFSynchronizedTimer
+ (id)sharedInstance;
- (HFSynchronizedTimer)init;
- (void)_timerDidFire;
- (void)_updateTimerState;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation HFSynchronizedTimer

+ (id)sharedInstance
{
  if (_MergedGlobals_334 != -1)
  {
    dispatch_once(&_MergedGlobals_334, &__block_literal_global_3_37);
  }

  v3 = qword_280E03E90;

  return v3;
}

void __37__HFSynchronizedTimer_sharedInstance__block_invoke_2()
{
  v0 = objc_alloc_init(HFSynchronizedTimer);
  v1 = qword_280E03E90;
  qword_280E03E90 = v0;
}

- (HFSynchronizedTimer)init
{
  v6.receiver = self;
  v6.super_class = HFSynchronizedTimer;
  v2 = [(HFSynchronizedTimer *)&v6 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    observers = v2->_observers;
    v2->_observers = weakToStrongObjectsMapTable;
  }

  return v2;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFSynchronizedTimer *)self observers];
  v6 = [observers objectForKey:observerCopy];

  if (!v6)
  {
    objc_initWeak(&location, self);
    v7 = objc_alloc(MEMORY[0x277D2C8D0]);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __35__HFSynchronizedTimer_addObserver___block_invoke;
    v13 = &unk_277DFF118;
    objc_copyWeak(&v14, &location);
    v8 = [v7 initWithTargetObject:observerCopy finalizer:&v10];
    v9 = [(HFSynchronizedTimer *)self observers:v10];
    [v9 setObject:v8 forKey:observerCopy];

    [(HFSynchronizedTimer *)self _updateTimerState];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __35__HFSynchronizedTimer_addObserver___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeObserver:a2];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFSynchronizedTimer *)self observers];
  [observers removeObjectForKey:observerCopy];

  [(HFSynchronizedTimer *)self _updateTimerState];
}

- (void)_updateTimerState
{
  observers = [(HFSynchronizedTimer *)self observers];
  v4 = [observers count];

  activeTimer = [(HFSynchronizedTimer *)self activeTimer];
  v6 = activeTimer;
  if (v4)
  {

    if (!v6)
    {
      objc_initWeak(&location, self);
      v7 = MEMORY[0x277CBEBB8];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __40__HFSynchronizedTimer__updateTimerState__block_invoke;
      v12 = &unk_277DF9BF0;
      objc_copyWeak(&v13, &location);
      v8 = [v7 scheduledTimerWithTimeInterval:1 repeats:&v9 block:1.0];
      [(HFSynchronizedTimer *)self setActiveTimer:v8, v9, v10, v11, v12];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [activeTimer invalidate];

    [(HFSynchronizedTimer *)self setActiveTimer:0];
  }
}

void __40__HFSynchronizedTimer__updateTimerState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timerDidFire];
}

- (void)_timerDidFire
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = [(HFSynchronizedTimer *)self observers];
  v4 = [observers copy];

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

        [*(*(&v10 + 1) + 8 * v8++) countdownTimerDidFire:self];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end