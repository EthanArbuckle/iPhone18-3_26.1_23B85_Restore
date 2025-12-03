@interface DNDState(SBDashBoardSupport)
- (uint64_t)sb_isBedtimeModeActive;
- (uint64_t)sb_isDimmingModeActive;
- (uint64_t)sb_isDrivingModeActive;
@end

@implementation DNDState(SBDashBoardSupport)

- (uint64_t)sb_isDimmingModeActive
{
  activeModeConfiguration = [self activeModeConfiguration];
  v3 = [self _isDNDSettingEnabled:{objc_msgSend(activeModeConfiguration, "dimsLockScreen")}];

  return v3;
}

- (uint64_t)sb_isDrivingModeActive
{
  activeModeIdentifier = [self activeModeIdentifier];
  v2 = [activeModeIdentifier isEqualToString:@"com.apple.donotdisturb.mode.driving"];

  return v2;
}

- (uint64_t)sb_isBedtimeModeActive
{
  activeModeIdentifier = [self activeModeIdentifier];
  if ([activeModeIdentifier isEqualToString:@"com.apple.donotdisturb.mode.bedtime"] & 1) != 0 || (objc_msgSend(activeModeIdentifier, "isEqualToString:", *MEMORY[0x277D622D0]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [activeModeIdentifier isEqualToString:*MEMORY[0x277D295E8]];
  }

  return v2;
}

@end