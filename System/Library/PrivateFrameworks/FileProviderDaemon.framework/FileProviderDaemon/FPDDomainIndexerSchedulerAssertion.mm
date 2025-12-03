@interface FPDDomainIndexerSchedulerAssertion
+ (id)stopQueue;
- (FPDDomainIndexerSchedulerAssertion)initWithPID:(int)d forceForeground:(BOOL)foreground;
- (FPDDomainIndexerSchedulerAssertion)initWithPID:(int)d forceForeground:(BOOL)foreground monitor:(id)monitor;
- (void)dealloc;
- (void)processMonitor:(id)monitor didBecomeForeground:(BOOL)foreground;
- (void)start;
- (void)stop;
@end

@implementation FPDDomainIndexerSchedulerAssertion

- (void)start
{
  if (self->_forceForeground)
  {

    [(FPDDomainIndexerSchedulerAssertion *)self processMonitor:0 didBecomeForeground:1];
  }

  else if (!self->_monitor)
  {
    v3 = [FPDProcessMonitor alloc];
    v4 = [(FPDProcessMonitor *)v3 initWithExcludedBundleIDs:MEMORY[0x1E695E0F0]];
    monitor = self->_monitor;
    self->_monitor = v4;

    [(FPDProcessMonitor *)self->_monitor setDelegate:self];
    v6 = self->_monitor;
    pid = self->_pid;

    [(FPDProcessMonitor *)v6 addPIDToObserve:pid];
  }
}

+ (id)stopQueue
{
  if (stopQueue_onceToken != -1)
  {
    +[FPDDomainIndexerSchedulerAssertion stopQueue];
  }

  v3 = stopQueue_stopQueue;

  return v3;
}

void __47__FPDDomainIndexerSchedulerAssertion_stopQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.FPDDomainIndexerSchedulerAssertion.stopQueue", v2);
  v1 = stopQueue_stopQueue;
  stopQueue_stopQueue = v0;
}

- (FPDDomainIndexerSchedulerAssertion)initWithPID:(int)d forceForeground:(BOOL)foreground monitor:(id)monitor
{
  monitorCopy = monitor;
  v13.receiver = self;
  v13.super_class = FPDDomainIndexerSchedulerAssertion;
  v10 = [(FPDDomainIndexerSchedulerAssertion *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_pid = d;
    v10->_forceForeground = foreground;
    objc_storeStrong(&v10->_monitor, monitor);
  }

  return v11;
}

- (FPDDomainIndexerSchedulerAssertion)initWithPID:(int)d forceForeground:(BOOL)foreground
{
  v7.receiver = self;
  v7.super_class = FPDDomainIndexerSchedulerAssertion;
  result = [(FPDDomainIndexerSchedulerAssertion *)&v7 init];
  if (result)
  {
    result->_pid = d;
    result->_forceForeground = foreground;
  }

  return result;
}

- (void)stop
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  unregisterForceRunning = selfCopy->_unregisterForceRunning;
  if (unregisterForceRunning)
  {
    unregisterForceRunning[2]();
    v4 = selfCopy->_unregisterForceRunning;
    selfCopy->_unregisterForceRunning = 0;
  }

  [(FPDProcessMonitor *)selfCopy->_monitor setDelegate:0];
  v5 = selfCopy->_monitor;
  monitor = selfCopy->_monitor;
  selfCopy->_monitor = 0;

  objc_sync_exit(selfCopy);
  stopQueue = [objc_opt_class() stopQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__FPDDomainIndexerSchedulerAssertion_stop__block_invoke;
  block[3] = &unk_1E83BE068;
  v10 = v5;
  v8 = v5;
  dispatch_async(stopQueue, block);
}

- (void)dealloc
{
  [(FPDDomainIndexerSchedulerAssertion *)self stop];
  v3.receiver = self;
  v3.super_class = FPDDomainIndexerSchedulerAssertion;
  [(FPDDomainIndexerSchedulerAssertion *)&v3 dealloc];
}

- (void)processMonitor:(id)monitor didBecomeForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  monitorCopy = monitor;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  unregisterForceRunning = selfCopy->_unregisterForceRunning;
  if (foregroundCopy)
  {
    if (unregisterForceRunning)
    {
      goto LABEL_7;
    }

    v8 = indexingScheduler();
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"request from pid: %d", selfCopy->_pid];
    v10 = [v8 forceRunningWithReason:v9];
    v11 = selfCopy->_unregisterForceRunning;
    selfCopy->_unregisterForceRunning = v10;
  }

  else
  {
    if (!unregisterForceRunning)
    {
      goto LABEL_7;
    }

    unregisterForceRunning[2]();
    v8 = selfCopy->_unregisterForceRunning;
    selfCopy->_unregisterForceRunning = 0;
  }

LABEL_7:
  objc_sync_exit(selfCopy);
}

@end