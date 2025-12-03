@interface CSLockScreenChargingSettings
+ (id)settingsControllerModule;
- (int64_t)accessoryTypeForAnimationType:(int64_t)type;
- (void)setDefaultValues;
@end

@implementation CSLockScreenChargingSettings

- (void)setDefaultValues
{
  [(CSLockScreenChargingSettings *)self setAccessoryAnimationDelayInMilliseconds:600.0];
  [(CSLockScreenChargingSettings *)self setOmniAccessoryAnimationDelayInMilliseconds:0.0];
  [(CSLockScreenChargingSettings *)self setAccessoryAnimationBlockingDurationAfterBootInSeconds:10.0];
  [(CSLockScreenChargingSettings *)self setWirelessChargingDebounceDurationInSeconds:8.0];
  [(CSLockScreenChargingSettings *)self setWirelessChargingFirmwareUpdateDebounceDurationInSeconds:80.0];
  [(CSLockScreenChargingSettings *)self setShowWirelessAndAccessoryAnimations:0];
  [(CSLockScreenChargingSettings *)self setWarnForIdleDim:1];
  [(CSLockScreenChargingSettings *)self setShouldUseBrightnessFloor:0];
  [(CSLockScreenChargingSettings *)self setBrightnessFloor:140.0];
  [(CSLockScreenChargingSettings *)self setWirelessChargingAnimationType:1];
  [(CSLockScreenChargingSettings *)self setWiredChargingAnimationType:0];
  [(CSLockScreenChargingSettings *)self setShouldFakeA149Attach:0];
  [(CSLockScreenChargingSettings *)self setUseWhimsicalDesign:0];
  [(CSLockScreenChargingSettings *)self setShouldShowMaskForAuxiliaryBattery:1];
  [(CSLockScreenChargingSettings *)self setAuxiliaryBoltHeight:15.0];
  [(CSLockScreenChargingSettings *)self setAuxiliaryBoltMaskHeightDifference:9.0];

  [(CSLockScreenChargingSettings *)self setExtendedSubtitleStringTimeoutMultiplier:2.0];
}

+ (id)settingsControllerModule
{
  v46[12] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431F0] rowWithTitle:@"Accessory Animation Delay (ms)" valueKeyPath:@"accessoryAnimationDelayInMilliseconds"];
  v43 = [v2 between:0.0 and:3000.0];

  [v43 setStaticTitle:@"Accessory Animation Delay (ms)"];
  v3 = [MEMORY[0x277D431F0] rowWithTitle:@"Faked Animation Delay (ms)" valueKeyPath:@"omniAccessoryAnimationDelayInMilliseconds"];
  v42 = [v3 between:0.0 and:5000.0];

  v4 = [MEMORY[0x277D431F0] rowWithTitle:@"Accessory Animation Blocking Duration After Boot (s)" valueKeyPath:@"accessoryAnimationBlockingDurationAfterBootInSeconds"];
  v41 = [v4 between:0.0 and:20.0];

  v5 = [MEMORY[0x277D431F0] rowWithTitle:@"Debounce Duration (s)" valueKeyPath:@"wirelessChargingDebounceDurationInSeconds"];
  v40 = [v5 between:0.0 and:20.0];

  v6 = [MEMORY[0x277D431F0] rowWithTitle:@"Firmware Update Debounce Duration (s)" valueKeyPath:@"wirelessChargingFirmwareUpdateDebounceDurationInSeconds"];
  v39 = [v6 between:0.0 and:200.0];

  v38 = [MEMORY[0x277D432A0] rowWithTitle:@"Warn for idle dim" valueKeyPath:@"warnForIdleDim"];
  v36 = [MEMORY[0x277D432A0] rowWithTitle:@"Should Use Floor" valueKeyPath:@"shouldUseBrightnessFloor"];
  v7 = [MEMORY[0x277D431F0] rowWithTitle:@"Brightness Floor" valueKeyPath:@"brightnessFloor"];
  v35 = [v7 between:0.0 and:200.0];

  v8 = [MEMORY[0x277D431F0] rowWithTitle:@"Extended Subtitle Timeout Multiplier" valueKeyPath:@"extendedSubtitleStringTimeoutMultiplier"];
  v34 = [v8 between:1.0 and:5.0];

  v33 = [MEMORY[0x277D432A0] rowWithTitle:@"Show Wireless/Accessory Animations" valueKeyPath:@"showWirelessAndAccessoryAnimations"];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"showWirelessAndAccessoryAnimations == YES"];
  v10 = [MEMORY[0x277D431B8] rowWithTitle:@"Wireless Charging Animation" valueKeyPath:@"wirelessChargingAnimationType"];
  v11 = [v10 possibleValues:&unk_283079410 titles:&unk_283079428];
  v37 = v9;
  v32 = [v11 condition:v9];

  v12 = [MEMORY[0x277D431B8] rowWithTitle:@"Wired Charging Animation" valueKeyPath:@"wiredChargingAnimationType"];
  v13 = [v12 possibleValues:&unk_283079440 titles:&unk_283079458];
  v31 = [v13 condition:v9];

  v14 = MEMORY[0x277D43218];
  v46[0] = v43;
  v46[1] = v42;
  v46[2] = v41;
  v46[3] = v40;
  v46[4] = v39;
  v46[5] = v38;
  v46[6] = v36;
  v46[7] = v35;
  v46[8] = v33;
  v46[9] = v32;
  v46[10] = v31;
  v46[11] = v34;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:12];
  v30 = [v14 sectionWithRows:v15];

  v16 = [MEMORY[0x277D432A0] rowWithTitle:@"Fake A149 on B390" valueKeyPath:@"shouldFakeA149Attach"];
  v17 = [MEMORY[0x277D432A0] rowWithTitle:@"Use new HI design for A149" valueKeyPath:@"useWhimsicalDesign"];
  v18 = [MEMORY[0x277D432A0] rowWithTitle:@"Show Auxiliary Mask" valueKeyPath:@"shouldShowMaskForAuxiliaryBattery"];
  v19 = [MEMORY[0x277D431F0] rowWithTitle:@"Auxiliary Bolt Height" valueKeyPath:@"auxiliaryBoltHeight"];
  v20 = [v19 between:6.0 and:30.0];

  v21 = [MEMORY[0x277D431F0] rowWithTitle:@"Bolt Mask Height Difference" valueKeyPath:@"auxiliaryBoltMaskHeightDifference"];
  v22 = [v21 between:0.0 and:20.0];

  v23 = MEMORY[0x277D43218];
  v45[0] = v16;
  v45[1] = v17;
  v45[2] = v18;
  v45[3] = v20;
  v45[4] = v22;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:5];
  v25 = [v23 sectionWithRows:v24 title:@"A149 Settings"];

  v26 = MEMORY[0x277D43218];
  v44[0] = v30;
  v44[1] = v25;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  v28 = [v26 moduleWithTitle:@"Charging Animation Settings" contents:v27];

  return v28;
}

- (int64_t)accessoryTypeForAnimationType:(int64_t)type
{
  if ((type - 2) > 3)
  {
    return 0;
  }

  else
  {
    return qword_21EC94DC8[type - 2];
  }
}

@end