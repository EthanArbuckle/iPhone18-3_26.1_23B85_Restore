@interface FMNetworkMonitor
+ (id)sharedInstance;
- (BOOL)isMonitoring;
- (BOOL)isNetworkUp;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerNetworkMonitorLaunchEvent:(BOOL)a3;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation FMNetworkMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[FMNetworkMonitor sharedInstance];
  }

  v3 = sharedInstance___instance_1;

  return v3;
}

uint64_t __34__FMNetworkMonitor_sharedInstance__block_invoke()
{
  sharedInstance___instance_1 = objc_alloc_init(FMNetworkMonitor);

  return MEMORY[0x2821F96F8]();
}

- (void)startMonitoring
{
  v3 = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  [(FMNetworkMonitor *)self setEvaluator:v3];

  v4 = [(FMNetworkMonitor *)self evaluator];
  [v4 addObserver:self forKeyPath:@"path" options:5 context:0];
}

- (void)stopMonitoring
{
  v3 = [(FMNetworkMonitor *)self evaluator];
  [v3 removeObserver:self forKeyPath:@"path" context:0];

  [(FMNetworkMonitor *)self setEvaluator:0];
}

- (BOOL)isMonitoring
{
  v2 = [(FMNetworkMonitor *)self evaluator];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isNetworkUp
{
  v3 = [(FMNetworkMonitor *)self isMonitoring];
  if (v3)
  {
    v4 = [(FMNetworkMonitor *)self evaluator];
    v5 = [v4 path];
    v6 = [v5 status];

    LOBYTE(v3) = (v6 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  }

  return v3;
}

- (void)registerNetworkMonitorLaunchEvent:(BOOL)a3
{
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24A2EE000, v3, OS_LOG_TYPE_DEFAULT, "FMNetworkMonitor registerNetworkMonitorLaunchEvent: not implemented for this platform.", v4, 2u);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if ([a3 isEqualToString:@"path"])
  {
    v8 = [v7 path];
    v9 = [v8 status];

    v10 = LogCategory_Unspecified();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"DOWN";
      if (v9 == 1)
      {
        v11 = @"UP";
      }

      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&dword_24A2EE000, v10, OS_LOG_TYPE_INFO, "Network state changed: %@", buf, 0xCu);
    }

    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __67__FMNetworkMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke;
    activity_block[3] = &__block_descriptor_33_e5_v8__0l;
    v14 = v9 == 1;
    _os_activity_initiate(&dword_24A2EE000, "Network state changed", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __67__FMNetworkMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = @"IsNetworkAvailable";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"com.apple.icloud.FMNetworkMonitor.networkChanged" object:0 userInfo:v4];

  v5 = *MEMORY[0x277D85DE8];
}

@end