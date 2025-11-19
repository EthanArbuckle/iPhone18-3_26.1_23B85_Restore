@interface HUApplicationManager
+ (id)sharedInstance;
- (BOOL)isStatusBarHidden;
- (HUApplicationManager)init;
- (void)setIdleTimerDisabled:(BOOL)a3 forRequester:(id)a4;
- (void)setStatusBarHidden:(BOOL)a3 forRequester:(id)a4 withAnimationSettings:(id)a5;
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
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(HUApplicationManager *)v2 setStatusBarHidingRequesters:v3];

    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(HUApplicationManager *)v2 setIdleTimerDisabledRequesters:v4];

    v5 = objc_alloc_init(HUDefaultStatusBarVisiblityHandler);
    [(HUApplicationManager *)v2 setStatusBarVisibilityHandler:v5];
  }

  return v2;
}

- (BOOL)isStatusBarHidden
{
  v2 = [(HUApplicationManager *)self statusBarVisibilityHandler];
  v3 = [v2 isStatusBarHidden];

  return v3;
}

- (void)setStatusBarHidden:(BOOL)a3 forRequester:(id)a4 withAnimationSettings:(id)a5
{
  v6 = a3;
  v17 = a5;
  v8 = a4;
  v9 = [(HUApplicationManager *)self statusBarHidingRequesters];
  v10 = [v9 count];

  v11 = [(HUApplicationManager *)self statusBarHidingRequesters];
  v12 = v11;
  if (v6)
  {
    [v11 addObject:v8];
  }

  else
  {
    [v11 removeObject:v8];
  }

  v13 = [(HUApplicationManager *)self statusBarHidingRequesters];
  v14 = [v13 count];

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

    v16 = [(HUApplicationManager *)self statusBarVisibilityHandler];
    [v16 setStatusBarHidden:v15 withAnimationSettings:v17];
  }

LABEL_10:
}

- (void)setIdleTimerDisabled:(BOOL)a3 forRequester:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(HUApplicationManager *)self idleTimerDisabledRequesters];
  v8 = v7;
  if (v4)
  {
    [v7 addObject:v6];
  }

  else
  {
    [v7 removeObject:v6];
  }

  v10 = [(HUApplicationManager *)self idleTimerDisabledRequesters];
  v9 = [v10 count] != 0;
  [*MEMORY[0x277D76620] setIdleTimerDisabled:v9];
}

@end