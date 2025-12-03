@interface CSVibrancySettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSVibrancySettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = CSVibrancySettings;
  [(PTSettings *)&v3 setDefaultValues];
  self->_boostEnabled = 1;
  self->_minimumLuminanceDifference = 0.2;
  self->_naturalEffectTypeStrength = 0.5;
}

+ (id)settingsControllerModule
{
  v20[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D432A0] rowWithTitle:@"Boost Enabled" valueKeyPath:@"boostEnabled"];
  v3 = [MEMORY[0x277D43260] rowWithTitle:@"Min. Lum. Difference" valueKeyPath:@"minimumLuminanceDifference"];
  v4 = [MEMORY[0x277D43260] rowWithTitle:@"Natural Type Strength" valueKeyPath:@"naturalEffectTypeStrength"];
  v5 = MEMORY[0x277D43218];
  v20[0] = v2;
  v20[1] = v3;
  v20[2] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v7 = [v5 sectionWithRows:v6 title:@"AOD Reduced Backlight"];

  v8 = MEMORY[0x277D431A8];
  action = [MEMORY[0x277D43238] action];
  v10 = [v8 rowWithTitle:@"Restore Defaults" action:action];

  v11 = MEMORY[0x277D43218];
  v19 = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v13 = [v11 sectionWithRows:v12 title:@"Restore Defaults"];

  v14 = MEMORY[0x277D43218];
  v18[0] = v7;
  v18[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v16 = [v14 moduleWithTitle:@"Vibrancy" contents:v15];

  return v16;
}

@end