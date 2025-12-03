@interface HLPReachabilityManager
+ (id)defaultManager;
- (HLPReachabilityManager)init;
- (HLPReachabilityManagerDelegate)delegate;
- (void)dealloc;
- (void)reachabilityChanged:(id)changed;
- (void)startNotifier;
- (void)stopNotifier;
@end

@implementation HLPReachabilityManager

+ (id)defaultManager
{
  if (defaultManager_predicate != -1)
  {
    +[HLPReachabilityManager defaultManager];
  }

  v3 = defaultManager_gSharedManager;

  return v3;
}

uint64_t __40__HLPReachabilityManager_defaultManager__block_invoke()
{
  v0 = objc_alloc_init(HLPReachabilityManager);
  v1 = defaultManager_gSharedManager;
  defaultManager_gSharedManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)dealloc
{
  [(HLPReachabilityManager *)self stopNotifier];
  v3.receiver = self;
  v3.super_class = HLPReachabilityManager;
  [(HLPReachabilityManager *)&v3 dealloc];
}

- (HLPReachabilityManager)init
{
  v6.receiver = self;
  v6.super_class = HLPReachabilityManager;
  v2 = [(HLPReachabilityManager *)&v6 init];
  if (v2)
  {
    v3 = +[HLPReachability reachabilityForInternetConnection];
    internetReachability = v2->_internetReachability;
    v2->_internetReachability = v3;

    v2->_internetActive = [(HLPReachability *)v2->_internetReachability currentReachabilityStatus]!= 0;
  }

  return v2;
}

- (void)startNotifier
{
  if (!self->_notifying)
  {
    v12 = v3;
    v13 = v2;
    self->_notifying = 1;
    if (!self->_hostReachability)
    {
      if (self->_hostName)
      {
        hostName = self->_hostName;
      }

      else
      {
        hostName = @"www.apple.com";
      }

      v8 = [HLPReachability reachabilityWithHostName:hostName, v3, v13, v4];
      hostReachability = self->_hostReachability;
      self->_hostReachability = v8;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_reachabilityChanged_ name:kHLPReachabilityChangedNotification[0] object:0];

    [(HLPReachability *)self->_internetReachability startNotifier];
    v11 = self->_hostReachability;

    [(HLPReachability *)v11 startNotifier];
  }
}

- (void)stopNotifier
{
  if (self->_notifying)
  {
    self->_notifying = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];

    [(HLPReachability *)self->_internetReachability stopNotifier];
    [(HLPReachability *)self->_hostReachability stopNotifier];

    [(HLPReachabilityManager *)self setReachabilityInitialized:0];
  }
}

- (void)reachabilityChanged:(id)changed
{
  [(HLPReachabilityManager *)self setReachabilityInitialized:1];
  currentReachabilityStatus = [(HLPReachability *)self->_internetReachability currentReachabilityStatus];
  if (currentReachabilityStatus <= 2)
  {
    self->_internetActive = 0x10100u >> (8 * currentReachabilityStatus);
  }

  currentReachabilityStatus2 = [(HLPReachability *)self->_hostReachability currentReachabilityStatus];
  if (currentReachabilityStatus2 <= 2)
  {
    self->_hostActive = 0x10100u >> (8 * currentReachabilityStatus2);
  }

  if (self->_internetActive)
  {
    hostActive = self->_hostActive;
    if ([(HLPReachabilityManager *)self connected]== hostActive)
    {
      return;
    }
  }

  else
  {
    if (![(HLPReachabilityManager *)self connected])
    {
      return;
    }

    hostActive = 0;
  }

  [(HLPReachabilityManager *)self setConnected:hostActive];
  delegate = [(HLPReachabilityManager *)self delegate];
  [delegate reachabilityManagerConnectionStatusChanged:self connected:{-[HLPReachabilityManager connected](self, "connected")}];
}

- (HLPReachabilityManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end