@interface CSLockScreenPasscodeSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSLockScreenPasscodeSettings

- (void)setDefaultValues
{
  [(CSLockScreenPasscodeSettings *)self setLightenSourceOverColorWhite:1.0];
  [(CSLockScreenPasscodeSettings *)self setLightenSourceOverColorAlpha:0.25];
  [(CSLockScreenPasscodeSettings *)self setPlusDColorWhite:0.0];

  [(CSLockScreenPasscodeSettings *)self setPlusDColorAlpha:0.2];
}

+ (id)settingsControllerModule
{
  v18[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431F0] rowWithTitle:@"LightenSourceOver White" valueKeyPath:@"lightenSourceOverColorWhite"];
  v3 = [v2 between:0.0 and:1.0];

  v4 = [MEMORY[0x277D431F0] rowWithTitle:@"LightenSourceOver Alpha" valueKeyPath:@"lightenSourceOverColorAlpha"];
  v5 = [v4 between:0.0 and:1.0];

  v6 = [MEMORY[0x277D431F0] rowWithTitle:@"plusD White" valueKeyPath:@"plusDColorWhite"];
  v7 = [v6 between:0.0 and:1.0];

  v8 = [MEMORY[0x277D431F0] rowWithTitle:@"plusD Alpha" valueKeyPath:@"plusDColorAlpha"];
  v9 = [v8 between:0.0 and:1.0];

  v10 = MEMORY[0x277D43218];
  v18[0] = v3;
  v18[1] = v5;
  v18[2] = v7;
  v18[3] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  v12 = [v10 sectionWithRows:v11];

  v13 = MEMORY[0x277D43218];
  v17 = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v15 = [v13 moduleWithTitle:@"Passcode Settings" contents:v14];

  return v15;
}

@end