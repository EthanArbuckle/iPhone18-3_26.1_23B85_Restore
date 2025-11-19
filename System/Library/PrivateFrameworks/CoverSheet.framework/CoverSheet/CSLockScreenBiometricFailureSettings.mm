@interface CSLockScreenBiometricFailureSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSLockScreenBiometricFailureSettings

- (void)setDefaultValues
{
  [(CSLockScreenBiometricFailureSettings *)self setJiggleLock:1];
  [(CSLockScreenBiometricFailureSettings *)self setVibrate:1];
  [(CSLockScreenBiometricFailureSettings *)self setShowPasscode:1];

  [(CSLockScreenBiometricFailureSettings *)self setWaitUntilButtonUp:1];
}

+ (id)settingsControllerModule
{
  v13[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D432A0] rowWithTitle:@"Jiggle Lock" valueKeyPath:@"jiggleLock"];
  v13[0] = v2;
  v3 = [MEMORY[0x277D432A0] rowWithTitle:@"Vibrate" valueKeyPath:@"vibrate"];
  v13[1] = v3;
  v4 = [MEMORY[0x277D432A0] rowWithTitle:@"Show Passcode" valueKeyPath:@"showPasscode"];
  v13[2] = v4;
  v5 = [MEMORY[0x277D432A0] rowWithTitle:@"Wait Until Button Up" valueKeyPath:@"waitUntilButtonUp"];
  v13[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];

  v7 = [MEMORY[0x277D43218] sectionWithRows:v6];
  v8 = MEMORY[0x277D43218];
  v12 = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v10 = [v8 moduleWithTitle:@"Failure Settings" contents:v9];

  return v10;
}

@end