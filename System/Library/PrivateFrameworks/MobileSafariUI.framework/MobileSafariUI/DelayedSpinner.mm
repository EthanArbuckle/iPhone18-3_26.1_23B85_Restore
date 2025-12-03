@interface DelayedSpinner
+ (void)_setShowStatusBarSpinner:(BOOL)spinner withDelay:(double)delay;
+ (void)_setShowStatusBarSpinnerTimer:(id)timer;
+ (void)_showStatusBarSpinner:(id)spinner;
@end

@implementation DelayedSpinner

+ (void)_setShowStatusBarSpinnerTimer:(id)timer
{
  timerCopy = timer;
  if (showStatusBarSpinnerTimer != timerCopy)
  {
    v5 = timerCopy;
    [showStatusBarSpinnerTimer invalidate];
    objc_storeStrong(&showStatusBarSpinnerTimer, timer);
    timerCopy = v5;
  }
}

+ (void)_showStatusBarSpinner:(id)spinner
{
  userInfo = [spinner userInfo];
  bOOLValue = [userInfo BOOLValue];

  [self _setShowStatusBarSpinnerTimer:0];
  v6 = *MEMORY[0x277D76620];

  [v6 setStatusBarShowsProgress:bOOLValue];
}

+ (void)_setShowStatusBarSpinner:(BOOL)spinner withDelay:(double)delay
{
  v6 = MEMORY[0x277CBEBB8];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:spinner];
  v7 = [v6 scheduledTimerWithTimeInterval:self target:sel__showStatusBarSpinner_ selector:v8 userInfo:0 repeats:delay];
  [self _setShowStatusBarSpinnerTimer:v7];
}

@end