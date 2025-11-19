@interface DNDState(SBDashBoardSupport)
- (uint64_t)sb_isBedtimeModeActive;
- (uint64_t)sb_isDimmingModeActive;
- (uint64_t)sb_isDrivingModeActive;
@end

@implementation DNDState(SBDashBoardSupport)

- (uint64_t)sb_isDimmingModeActive
{
  v2 = [a1 activeModeConfiguration];
  v3 = [a1 _isDNDSettingEnabled:{objc_msgSend(v2, "dimsLockScreen")}];

  return v3;
}

- (uint64_t)sb_isDrivingModeActive
{
  v1 = [a1 activeModeIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.donotdisturb.mode.driving"];

  return v2;
}

- (uint64_t)sb_isBedtimeModeActive
{
  v1 = [a1 activeModeIdentifier];
  if ([v1 isEqualToString:@"com.apple.donotdisturb.mode.bedtime"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D622D0]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x277D295E8]];
  }

  return v2;
}

@end