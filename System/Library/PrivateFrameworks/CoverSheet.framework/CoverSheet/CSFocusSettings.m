@interface CSFocusSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSFocusSettings

- (void)setDefaultValues
{
  [(CSFocusSettings *)self setGatesOnControlCenterAccess:0];

  [(CSFocusSettings *)self setRequiresAuthWithoutControlCenterAccess:1];
}

+ (id)settingsControllerModule
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D432A0] rowWithTitle:@"Blocks Interaction" valueKeyPath:@"gatesOnControlCenterAccess"];
  v3 = [MEMORY[0x277D432A0] rowWithTitle:@"Requests Authentication" valueKeyPath:@"requiresAuthWithoutControlCenterAccess"];
  v4 = MEMORY[0x277D43218];
  v12[0] = v2;
  v12[1] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v6 = [v4 sectionWithRows:v5 title:@"Control Center While Locked"];

  v7 = MEMORY[0x277D43218];
  v11 = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v9 = [v7 moduleWithTitle:@"Focus Settings" contents:v8];

  return v9;
}

@end