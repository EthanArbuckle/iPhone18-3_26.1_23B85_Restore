@interface DelayedSpinner
+ (void)_setShowStatusBarSpinner:(BOOL)a3 withDelay:(double)a4;
+ (void)_setShowStatusBarSpinnerTimer:(id)a3;
+ (void)_showStatusBarSpinner:(id)a3;
@end

@implementation DelayedSpinner

+ (void)_setShowStatusBarSpinnerTimer:(id)a3
{
  v4 = a3;
  if (showStatusBarSpinnerTimer != v4)
  {
    v5 = v4;
    [showStatusBarSpinnerTimer invalidate];
    objc_storeStrong(&showStatusBarSpinnerTimer, a3);
    v4 = v5;
  }
}

+ (void)_showStatusBarSpinner:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 BOOLValue];

  [a1 _setShowStatusBarSpinnerTimer:0];
  v6 = *MEMORY[0x277D76620];

  [v6 setStatusBarShowsProgress:v5];
}

+ (void)_setShowStatusBarSpinner:(BOOL)a3 withDelay:(double)a4
{
  v6 = MEMORY[0x277CBEBB8];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v7 = [v6 scheduledTimerWithTimeInterval:a1 target:sel__showStatusBarSpinner_ selector:v8 userInfo:0 repeats:a4];
  [a1 _setShowStatusBarSpinnerTimer:v7];
}

@end