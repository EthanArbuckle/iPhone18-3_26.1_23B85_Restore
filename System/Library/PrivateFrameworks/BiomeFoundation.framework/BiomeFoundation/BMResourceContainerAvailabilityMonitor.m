@interface BMResourceContainerAvailabilityMonitor
+ (id)sharedMonitor;
- (BMResourceContainerAvailabilityMonitor)initWithQueue:(id)a3;
- (void)addObserver:(id)a3 forContainerType:(unsigned __int8)a4;
- (void)removeObserver:(id)a3 forContainerType:(unsigned __int8)a4;
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

- (BMResourceContainerAvailabilityMonitor)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BMResourceContainerAvailabilityMonitor;
  v6 = [(BMResourceContainerAvailabilityMonitor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_queue, a3);
    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v8;
  }

  return v7;
}

- (void)addObserver:(id)a3 forContainerType:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 == 3)
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [(BMResourceContainerAvailabilityMonitor *)self observers];
    v8 = [v7 allObjects];
    v9 = [v8 count];

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

    v11 = [(BMResourceContainerAvailabilityMonitor *)self observers];
    [v11 addObject:v6];

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

- (void)removeObserver:(id)a3 forContainerType:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 == 3)
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [(BMResourceContainerAvailabilityMonitor *)self observers];
    [v7 removeObject:v6];

    v8 = [(BMResourceContainerAvailabilityMonitor *)self observers];
    v9 = [v8 allObjects];
    v10 = [v9 count];

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