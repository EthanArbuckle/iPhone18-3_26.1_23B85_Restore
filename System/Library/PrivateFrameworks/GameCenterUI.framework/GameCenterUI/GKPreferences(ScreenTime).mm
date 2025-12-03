@interface GKPreferences(ScreenTime)
- (uint64_t)activeScreenTimeRemotePinUIWithHandler:()ScreenTime;
- (uint64_t)shouldShowScreenTimePINController;
- (void)screenTimePINControllerDidFinish:()ScreenTime;
- (void)setScreenTimePinCallback:()ScreenTime;
@end

@implementation GKPreferences(ScreenTime)

- (void)setScreenTimePinCallback:()ScreenTime
{
  v4 = _Block_copy(aBlock);
  objc_setAssociatedObject(self, "_screenTimePinCallback", v4, 3);
}

- (uint64_t)shouldShowScreenTimePINController
{
  mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
  if ([mEMORY[0x277D0C1D8] isAccountModificationRestricted])
  {
    isScreenTimeRestrictionsPasscodeSet = [self isScreenTimeRestrictionsPasscodeSet];
  }

  else
  {
    mEMORY[0x277D0C1D8]2 = [MEMORY[0x277D0C1D8] shared];
    if ([mEMORY[0x277D0C1D8]2 isAddingFriendsRestricted])
    {
      isScreenTimeRestrictionsPasscodeSet = [self isScreenTimeRestrictionsPasscodeSet];
    }

    else
    {
      isScreenTimeRestrictionsPasscodeSet = 0;
    }
  }

  return isScreenTimeRestrictionsPasscodeSet;
}

- (uint64_t)activeScreenTimeRemotePinUIWithHandler:()ScreenTime
{
  [self setScreenTimePinCallback:?];
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter addObserver:self selector:sel_screenTimePINControllerDidFinish_ name:*MEMORY[0x277D4BDE8] object:0 suspensionBehavior:4];

  v3 = MEMORY[0x277D4BDA8];

  return [v3 activateRemotePINUI];
}

- (void)screenTimePINControllerDidFinish:()ScreenTime
{
  v10 = a3;
  screenTimePinCallback = [self screenTimePinCallback];

  if (screenTimePinCallback)
  {
    userInfo = [v10 userInfo];
    v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D4BDE0]];
    bOOLValue = [v6 BOOLValue];

    screenTimePinCallback2 = [self screenTimePinCallback];
    screenTimePinCallback2[2](screenTimePinCallback2, bOOLValue);

    [self setScreenTimePinCallback:0];
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];
}

@end