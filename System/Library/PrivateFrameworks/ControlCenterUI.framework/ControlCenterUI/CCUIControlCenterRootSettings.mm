@interface CCUIControlCenterRootSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CCUIControlCenterRootSettings

- (void)setDefaultValues
{
  v6.receiver = self;
  v6.super_class = CCUIControlCenterRootSettings;
  [(PTSettings *)&v6 setDefaultValues];
  invokeSettings = [(CCUIControlCenterRootSettings *)self invokeSettings];
  [invokeSettings setDefaultValues];

  fluidPagingSettings = [(CCUIControlCenterRootSettings *)self fluidPagingSettings];
  [fluidPagingSettings setDefaultValues];

  editingSettings = [(CCUIControlCenterRootSettings *)self editingSettings];
  [editingSettings setDefaultValues];
}

+ (id)settingsControllerModule
{
  v18[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431E0] rowWithTitle:@"Invoke" childSettingsKeyPath:@"invokeSettings"];
  v18[0] = v2;
  v3 = [MEMORY[0x277D431E0] rowWithTitle:@"Fluid Paging" childSettingsKeyPath:@"fluidPagingSettings"];
  v18[1] = v3;
  v4 = [MEMORY[0x277D431E0] rowWithTitle:@"Editing" childSettingsKeyPath:@"editingSettings"];
  v18[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];

  v6 = [MEMORY[0x277D43218] sectionWithRows:v5];
  v7 = MEMORY[0x277D431A8];
  action = [MEMORY[0x277D43238] action];
  v9 = [v7 rowWithTitle:@"Restore Defaults" action:action];
  v17 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];

  v11 = [MEMORY[0x277D43218] sectionWithRows:v10];
  v12 = MEMORY[0x277D43218];
  v16[0] = v6;
  v16[1] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v14 = [v12 moduleWithTitle:0 contents:v13];

  return v14;
}

@end