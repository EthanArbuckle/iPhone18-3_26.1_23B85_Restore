@interface BMResourceContainerAvailabilityMonitor
+ (id)sharedMonitor;
- (BMResourceContainerAvailabilityMonitor)initWithQueue:(id)queue;
- (void)addObserver:(id)observer forContainerType:(unsigned __int8)type;
- (void)removeObserver:(id)observer forContainerType:(unsigned __int8)type;
@end

@implementation BMResourceContainerAvailabilityMonitor

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    +[BMResourceContainerAvailabilityMonitor sharedMonitor];
  }

  v3 = sharedMonitor_sharedMonitor;

  return v3;
}

void __55__BMResourceContainerAvailabilityMonitor_sharedMonitor__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.BMResourceContainerAvailabilityMonitor.queue", v0);

  v1 = [[BMResourceContainerAvailabilityMonitor alloc] initWithQueue:v3];
  v2 = sharedMonitor_sharedMonitor;
  sharedMonitor_sharedMonitor = v1;
}

- (BMResourceContainerAvailabilityMonitor)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = BMResourceContainerAvailabilityMonitor;
  v6 = [(BMResourceContainerAvailabilityMonitor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_queue, queue);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;
  }

  return v7;
}

- (void)addObserver:(id)observer forContainerType:(unsigned __int8)type
{
  typeCopy = type;
  observerCopy = observer;
  if (typeCopy == 3)
  {
    os_unfair_lock_lock(&self->_lock);
    observers = [(BMResourceContainerAvailabilityMonitor *)self observers];
    allObjects = [observers allObjects];
    v9 = [allObjects count];

    if (!v9)
    {
      v10 = __biome_log_for_category(6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1AC15D000, v10, OS_LOG_TYPE_DEFAULT, "First observer is connecting, starting UserVault monitoring session", v13, 2u);
      }

      [(BMResourceContainerAvailabilityMonitor *)self _startUserVaultMonitoringSession];
    }

    observers2 = [(BMResourceContainerAvailabilityMonitor *)self observers];
    [observers2 addObject:observerCopy];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v12 = __biome_log_for_category(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BMResourceContainerAvailabilityMonitor addObserver:v12 forContainerType:?];
    }
  }
}

- (void)removeObserver:(id)observer forContainerType:(unsigned __int8)type
{
  typeCopy = type;
  observerCopy = observer;
  if (typeCopy == 3)
  {
    os_unfair_lock_lock(&self->_lock);
    observers = [(BMResourceContainerAvailabilityMonitor *)self observers];
    [observers removeObject:observerCopy];

    observers2 = [(BMResourceContainerAvailabilityMonitor *)self observers];
    allObjects = [observers2 allObjects];
    v10 = [allObjects count];

    if (!v10)
    {
      v11 = __biome_log_for_category(6);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1AC15D000, v11, OS_LOG_TYPE_DEFAULT, "Last observer is unsubscribing, cancelling UserVault monitoring session", v13, 2u);
      }

      [(BMResourceContainerAvailabilityMonitor *)self _stopUserVaultMonitoringSession];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v12 = __biome_log_for_category(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BMResourceContainerAvailabilityMonitor addObserver:v12 forContainerType:?];
    }
  }
}

@end