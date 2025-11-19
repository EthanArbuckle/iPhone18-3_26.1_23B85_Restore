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
  objc_setAssociatedObject(a1, "_screenTimePinCallback", v4, 3);
}

- (uint64_t)shouldShowScreenTimePINController
{
  v2 = [MEMORY[0x277D0C1D8] shared];
  if ([v2 isAccountModificationRestricted])
  {
    v3 = [a1 isScreenTimeRestrictionsPasscodeSet];
  }

  else
  {
    v4 = [MEMORY[0x277D0C1D8] shared];
    if ([v4 isAddingFriendsRestricted])
    {
      v3 = [a1 isScreenTimeRestrictionsPasscodeSet];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (uint64_t)activeScreenTimeRemotePinUIWithHandler:()ScreenTime
{
  [a1 setScreenTimePinCallback:?];
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v2 addObserver:a1 selector:sel_screenTimePINControllerDidFinish_ name:*MEMORY[0x277D4BDE8] object:0 suspensionBehavior:4];

  v3 = MEMORY[0x277D4BDA8];

  return [v3 activateRemotePINUI];
}

- (void)screenTimePINControllerDidFinish:()ScreenTime
{
  v10 = a3;
  v4 = [a1 screenTimePinCallback];

  if (v4)
  {
    v5 = [v10 userInfo];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D4BDE0]];
    v7 = [v6 BOOLValue];

    v8 = [a1 screenTimePinCallback];
    v8[2](v8, v7);

    [a1 setScreenTimePinCallback:0];
  }

  v9 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v9 removeObserver:a1];
}

@end