@interface FPDDomainIndexerSchedulerAssertion
+ (id)stopQueue;
- (FPDDomainIndexerSchedulerAssertion)initWithPID:(int)a3 forceForeground:(BOOL)a4;
- (FPDDomainIndexerSchedulerAssertion)initWithPID:(int)a3 forceForeground:(BOOL)a4 monitor:(id)a5;
- (void)dealloc;
- (void)processMonitor:(id)a3 didBecomeForeground:(BOOL)a4;
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

- (FPDDomainIndexerSchedulerAssertion)initWithPID:(int)a3 forceForeground:(BOOL)a4 monitor:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = FPDDomainIndexerSchedulerAssertion;
  v10 = [(FPDDomainIndexerSchedulerAssertion *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_pid = a3;
    v10->_forceForeground = a4;
    objc_storeStrong(&v10->_monitor, a5);
  }

  return v11;
}

- (FPDDomainIndexerSchedulerAssertion)initWithPID:(int)a3 forceForeground:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = FPDDomainIndexerSchedulerAssertion;
  result = [(FPDDomainIndexerSchedulerAssertion *)&v7 init];
  if (result)
  {
    result->_pid = a3;
    result->_forceForeground = a4;
  }

  return result;
}

- (void)stop
{
  v2 = self;
  objc_sync_enter(v2);
  unregisterForceRunning = v2->_unregisterForceRunning;
  if (unregisterForceRunning)
  {
    unregisterForceRunning[2]();
    v4 = v2->_unregisterForceRunning;
    v2->_unregisterForceRunning = 0;
  }

  [(FPDProcessMonitor *)v2->_monitor setDelegate:0];
  v5 = v2->_monitor;
  monitor = v2->_monitor;
  v2->_monitor = 0;

  objc_sync_exit(v2);
  v7 = [objc_opt_class() stopQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__FPDDomainIndexerSchedulerAssertion_stop__block_invoke;
  block[3] = &unk_1E83BE068;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

- (void)dealloc
{
  [(FPDDomainIndexerSchedulerAssertion *)self stop];
  v3.receiver = self;
  v3.super_class = FPDDomainIndexerSchedulerAssertion;
  [(FPDDomainIndexerSchedulerAssertion *)&v3 dealloc];
}

- (void)processMonitor:(id)a3 didBecomeForeground:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = self;
  objc_sync_enter(v6);
  unregisterForceRunning = v6->_unregisterForceRunning;
  if (v4)
  {
    if (unregisterForceRunning)
    {
      goto LABEL_7;
    }

    v8 = indexingScheduler();
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"request from pid: %d", v6->_pid];
    v10 = [v8 forceRunningWithReason:v9];
    v11 = v6->_unregisterForceRunning;
    v6->_unregisterForceRunning = v10;
  }

  else
  {
    if (!unregisterForceRunning)
    {
      goto LABEL_7;
    }

    unregisterForceRunning[2]();
    v8 = v6->_unregisterForceRunning;
    v6->_unregisterForceRunning = 0;
  }

LABEL_7:
  objc_sync_exit(v6);
}

@end