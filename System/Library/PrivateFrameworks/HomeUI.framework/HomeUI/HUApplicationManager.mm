@interface HUApplicationManager
+ (id)sharedInstance;
- (BOOL)isStatusBarHidden;
- (HUApplicationManager)init;
- (void)setIdleTimerDisabled:(BOOL)disabled forRequester:(id)requester;
- (void)setStatusBarHidden:(BOOL)hidden forRequester:(id)requester withAnimationSettings:(id)settings;
@end

@implementation HUApplicationManager

+ (id)sharedInstance
{
  if (qword_281121FB0 != -1)
  {
    dispatch_once(&qword_281121FB0, &__block_literal_global_174);
  }

  v3 = _MergedGlobals_628;

  return v3;
}

void __38__HUApplicationManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HUApplicationManager);
  v1 = _MergedGlobals_628;
  _MergedGlobals_628 = v0;
}

- (HUApplicationManager)init
{
  v7.receiver = self;
  v7.super_class = HUApplicationManager;
  v2 = [(HUApplicationManager *)&v7 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(HUApplicationManager *)v2 setStatusBarHidingRequesters:weakObjectsHashTable];

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(HUApplicationManager *)v2 setIdleTimerDisabledRequesters:weakObjectsHashTable2];

    v5 = objc_alloc_init(HUDefaultStatusBarVisiblityHandler);
    [(HUApplicationManager *)v2 setStatusBarVisibilityHandler:v5];
  }

  return v2;
}

- (BOOL)isStatusBarHidden
{
  statusBarVisibilityHandler = [(HUApplicationManager *)self statusBarVisibilityHandler];
  isStatusBarHidden = [statusBarVisibilityHandler isStatusBarHidden];

  return isStatusBarHidden;
}

- (void)setStatusBarHidden:(BOOL)hidden forRequester:(id)requester withAnimationSettings:(id)settings
{
  hiddenCopy = hidden;
  settingsCopy = settings;
  requesterCopy = requester;
  statusBarHidingRequesters = [(HUApplicationManager *)self statusBarHidingRequesters];
  v10 = [statusBarHidingRequesters count];

  statusBarHidingRequesters2 = [(HUApplicationManager *)self statusBarHidingRequesters];
  v12 = statusBarHidingRequesters2;
  if (hiddenCopy)
  {
    [statusBarHidingRequesters2 addObject:requesterCopy];
  }

  else
  {
    [statusBarHidingRequesters2 removeObject:requesterCopy];
  }

  statusBarHidingRequesters3 = [(HUApplicationManager *)self statusBarHidingRequesters];
  v14 = [statusBarHidingRequesters3 count];

  if ((v10 == 0) == (v14 != 0))
  {
    if (v14)
    {
      [(HUApplicationManager *)self setWasStatusBarVisible:[(HUApplicationManager *)self isStatusBarHidden]^ 1];
      if ([(HUApplicationManager *)self isStatusBarHidden])
      {
        goto LABEL_10;
      }

      v15 = 1;
    }

    else
    {
      v15 = [(HUApplicationManager *)self wasStatusBarVisible]^ 1;
      if ([(HUApplicationManager *)self isStatusBarHidden]== v15)
      {
        goto LABEL_10;
      }
    }

    statusBarVisibilityHandler = [(HUApplicationManager *)self statusBarVisibilityHandler];
    [statusBarVisibilityHandler setStatusBarHidden:v15 withAnimationSettings:settingsCopy];
  }

LABEL_10:
}

- (void)setIdleTimerDisabled:(BOOL)disabled forRequester:(id)requester
{
  disabledCopy = disabled;
  requesterCopy = requester;
  idleTimerDisabledRequesters = [(HUApplicationManager *)self idleTimerDisabledRequesters];
  v8 = idleTimerDisabledRequesters;
  if (disabledCopy)
  {
    [idleTimerDisabledRequesters addObject:requesterCopy];
  }

  else
  {
    [idleTimerDisabledRequesters removeObject:requesterCopy];
  }

  idleTimerDisabledRequesters2 = [(HUApplicationManager *)self idleTimerDisabledRequesters];
  v9 = [idleTimerDisabledRequesters2 count] != 0;
  [*MEMORY[0x277D76620] setIdleTimerDisabled:v9];
}

@end