@interface CSClamshellStateMonitor
+ (id)sharedInstance;
- (CSClamshellStateMonitor)init;
- (void)_didReceiveClamshellStateChangeNotification:(BOOL)a3;
@end

@implementation CSClamshellStateMonitor

- (void)_didReceiveClamshellStateChangeNotification:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__CSClamshellStateMonitor__didReceiveClamshellStateChangeNotification___block_invoke;
  v3[3] = &unk_2784C5E78;
  v3[4] = self;
  v4 = a3;
  [(CSEventMonitor *)self enumerateObserversInQueue:v3];
}

- (CSClamshellStateMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSClamshellStateMonitor;
  return [(CSEventMonitor *)&v3 init];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6637 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6637, &__block_literal_global_6638);
  }

  v3 = sharedInstance__sharedInstance_6639;

  return v3;
}

void __41__CSClamshellStateMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSClamshellStateMonitor);
  v1 = sharedInstance__sharedInstance_6639;
  sharedInstance__sharedInstance_6639 = v0;
}

@end