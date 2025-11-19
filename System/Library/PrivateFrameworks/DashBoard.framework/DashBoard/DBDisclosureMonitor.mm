@interface DBDisclosureMonitor
- (DBDisclosureMonitor)init;
- (void)_observersDisclosureMonitorDidChange;
- (void)addObserver:(id)a3;
- (void)markSafe;
- (void)removeObserver:(id)a3;
- (void)turnFeaturesOff;
@end

@implementation DBDisclosureMonitor

- (DBDisclosureMonitor)init
{
  v8.receiver = self;
  v8.super_class = DBDisclosureMonitor;
  v2 = [(DBDisclosureMonitor *)&v8 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = Serial;

    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v5;

    v2->_markedSafe = [MEMORY[0x277CF89D0] qaModeLockout];
  }

  return v2;
}

- (void)turnFeaturesOff
{
  [(DBDisclosureMonitor *)self setMarkedSafe:1];
  [MEMORY[0x277CF89D0] setConfirmedSafe:0];

  [(DBDisclosureMonitor *)self _observersDisclosureMonitorDidChange];
}

- (void)markSafe
{
  [(DBDisclosureMonitor *)self setMarkedSafe:1];
  [MEMORY[0x277CF89D0] setConfirmedSafe:1];

  [(DBDisclosureMonitor *)self _observersDisclosureMonitorDidChange];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBDisclosureMonitor *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBDisclosureMonitor *)self observers];
  [v5 removeObject:v4];
}

- (void)_observersDisclosureMonitorDidChange
{
  v3 = [(DBDisclosureMonitor *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__DBDisclosureMonitor__observersDisclosureMonitorDidChange__block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(v3, block);
}

void __59__DBDisclosureMonitor__observersDisclosureMonitorDidChange__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) disclosureMonitorDidChangeActive:*(a1 + 32)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end