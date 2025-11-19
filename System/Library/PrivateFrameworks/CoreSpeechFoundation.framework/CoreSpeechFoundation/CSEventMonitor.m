@interface CSEventMonitor
- (CSEventMonitor)init;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)enumerateObservers:(id)a3;
- (void)enumerateObserversInQueue:(id)a3;
- (void)notifyObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation CSEventMonitor

- (CSEventMonitor)init
{
  v8.receiver = self;
  v8.super_class = CSEventMonitor;
  v2 = [(CSEventMonitor *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_create("Serial CSEventMonitor queue", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (void)notifyObserver:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 CSEventMonitorDidReceiveEvent:self];
  }
}

- (void)enumerateObservers:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (v4)
        {
          v4[2](v4, *(*(&v11 + 1) + 8 * v9));
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)enumerateObserversInQueue:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CSEventMonitor_enumerateObserversInQueue___block_invoke;
  v7[3] = &unk_1E865CB90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__CSEventMonitor_removeObserver___block_invoke;
  v7[3] = &unk_1E865C970;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __33__CSEventMonitor_removeObserver___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    [*(*(result + 40) + 8) removeObject:?];
    result = [*(*(v1 + 40) + 8) count];
    if (!result)
    {
      v2 = *(v1 + 40);

      return [v2 _stopMonitoring];
    }
  }

  return result;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__CSEventMonitor_addObserver___block_invoke;
  v7[3] = &unk_1E865C970;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __30__CSEventMonitor_addObserver___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    [*(*(result + 40) + 8) addObject:?];
    result = [*(*(v1 + 40) + 8) count];
    if (result == 1)
    {
      v2 = *(v1 + 40);
      v3 = v2[2];

      return [v2 _startMonitoringWithQueue:v3];
    }
  }

  return result;
}

- (void)dealloc
{
  [(CSEventMonitor *)self _stopMonitoring];
  v3.receiver = self;
  v3.super_class = CSEventMonitor;
  [(CSEventMonitor *)&v3 dealloc];
}

@end