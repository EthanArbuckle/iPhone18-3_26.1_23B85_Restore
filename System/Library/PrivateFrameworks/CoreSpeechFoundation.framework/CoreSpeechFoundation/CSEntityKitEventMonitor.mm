@interface CSEntityKitEventMonitor
+ (id)sharedMonitor;
- (CSEntityKitEventMonitor)init;
- (id)currentEntityStatistics;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)entityKitManagerDidReceiveUpdate:(id)update;
@end

@implementation CSEntityKitEventMonitor

- (void)entityKitManagerDidReceiveUpdate:(id)update
{
  updateCopy = update;
  os_unfair_lock_lock(&self->_eventRWLock);
  entityStatistics = self->_entityStatistics;
  self->_entityStatistics = updateCopy;
  v6 = updateCopy;

  os_unfair_lock_unlock(&self->_eventRWLock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CSEntityKitEventMonitor_entityKitManagerDidReceiveUpdate___block_invoke;
  v7[3] = &unk_1E865CB20;
  v7[4] = self;
  [(CSEventMonitor *)self enumerateObserversInQueue:v7];
}

void __60__CSEntityKitEventMonitor_entityKitManagerDidReceiveUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 entityEventKitMonitorDidUpdate:*(a1 + 32)];
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  if (!self->_entityKitManager)
  {
    v4 = +[CSEntityKitManager sharedInstance];
    entityKitManager = self->_entityKitManager;
    self->_entityKitManager = v4;

    v6 = self->_entityKitManager;

    [(CSEntityKitManager *)v6 addObserver:self];
  }
}

- (id)currentEntityStatistics
{
  os_unfair_lock_lock(&self->_eventRWLock);
  v3 = self->_entityStatistics;
  os_unfair_lock_unlock(&self->_eventRWLock);

  return v3;
}

- (CSEntityKitEventMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSEntityKitEventMonitor;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_eventRWLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken_5643 != -1)
  {
    dispatch_once(&sharedMonitor_onceToken_5643, &__block_literal_global_5644);
  }

  v3 = sharedMonitor_sharedMonitor_5645;

  return v3;
}

uint64_t __40__CSEntityKitEventMonitor_sharedMonitor__block_invoke()
{
  sharedMonitor_sharedMonitor_5645 = objc_alloc_init(CSEntityKitEventMonitor);

  return MEMORY[0x1EEE66BB8]();
}

@end