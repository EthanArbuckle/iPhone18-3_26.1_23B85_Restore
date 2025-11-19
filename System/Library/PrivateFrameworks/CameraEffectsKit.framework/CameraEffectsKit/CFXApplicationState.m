@interface CFXApplicationState
+ (CFXApplicationState)sharedInstance;
+ (void)beginMonitoringApplicationState;
- (CFXApplicationState)init;
- (void)dealloc;
- (void)registerForEvents;
- (void)unregisterForEvents;
@end

@implementation CFXApplicationState

+ (void)beginMonitoringApplicationState
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CFXApplicationState_beginMonitoringApplicationState__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

+ (CFXApplicationState)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CFXApplicationState_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_s_sharedInstance;

  return v2;
}

uint64_t __37__CFXApplicationState_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_s_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(CFXApplicationState *)self unregisterForEvents];
  v3.receiver = self;
  v3.super_class = CFXApplicationState;
  [(CFXApplicationState *)&v3 dealloc];
}

- (CFXApplicationState)init
{
  v5.receiver = self;
  v5.super_class = CFXApplicationState;
  v2 = [(CFXApplicationState *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CFXApplicationState *)v2 setApplicationState:0];
    [(CFXApplicationState *)v3 registerForEvents];
  }

  return v3;
}

- (void)registerForEvents
{
  if (![(CFXApplicationState *)self isRegisteredForEvents])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x277CCA0D8] object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277CCA0C0] object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277CCA0C8] object:0];

    [(CFXApplicationState *)self setIsRegisteredForEvents:1];
  }
}

- (void)unregisterForEvents
{
  if ([(CFXApplicationState *)self isRegisteredForEvents])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self];

    [(CFXApplicationState *)self setIsRegisteredForEvents:0];
  }
}

@end