@interface CCUIEditingSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CCUIEditingSettings

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = CCUIEditingSettings;
  [(PTSettings *)&v4 setDefaultValues];
  [(CCUIEditingSettings *)self setPulsingBorderWidth:3.0];
  [(CCUIEditingSettings *)self setPulsingBorderFadeDuration:0.3];
  [(CCUIEditingSettings *)self setPulsingBorderPulseDuration:0.7];
  [(CCUIEditingSettings *)self setPulsingBorderMinAlpha:0.08];
  [(CCUIEditingSettings *)self setPulsingBorderMaxAlpha:0.3];
  resizingSettings = [(CCUIEditingSettings *)self resizingSettings];
  [resizingSettings setDefaultValues];
}

+ (id)settingsControllerModule
{
  v37[5] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431F0] rowWithTitle:@"Border Width" valueKeyPath:@"pulsingBorderWidth"];
  v3 = [v2 between:0.0 and:10.0];
  v33 = [v3 precision:2];

  v4 = [MEMORY[0x277D431F0] rowWithTitle:@"Fade Duration" valueKeyPath:@"pulsingBorderFadeDuration"];
  v5 = [v4 between:0.0 and:2.0];
  v32 = [v5 precision:2];

  v6 = [MEMORY[0x277D431F0] rowWithTitle:@"Pulse Duration" valueKeyPath:@"pulsingBorderPulseDuration"];
  v7 = [v6 between:0.0 and:2.0];
  v31 = [v7 precision:2];

  v8 = [MEMORY[0x277D431F0] rowWithTitle:@"Min Alpha" valueKeyPath:@"pulsingBorderMinAlpha"];
  v9 = [v8 between:0.0 and:1.0];
  v30 = [v9 precision:2];

  v10 = [MEMORY[0x277D431F0] rowWithTitle:@"Max Alpha" valueKeyPath:@"pulsingBorderMaxAlpha"];
  v11 = [v10 between:0.0 and:1.0];
  v12 = [v11 precision:2];

  v13 = MEMORY[0x277D43218];
  v37[0] = v33;
  v37[1] = v32;
  v37[2] = v31;
  v37[3] = v30;
  v37[4] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:5];
  v15 = [v13 sectionWithRows:v14 title:@"Pulsing Border"];

  v16 = [MEMORY[0x277D431E0] rowWithTitle:@"Resizing" childSettingsKeyPath:@"resizingSettings"];
  v17 = MEMORY[0x277D43218];
  v36 = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v19 = [v17 sectionWithRows:v18];

  v20 = MEMORY[0x277D431A8];
  action = [MEMORY[0x277D43238] action];
  v22 = [v20 rowWithTitle:@"Restore Defaults" action:action];

  v23 = MEMORY[0x277D43218];
  v35 = v22;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v25 = [v23 sectionWithRows:v24];

  v26 = MEMORY[0x277D43218];
  v34[0] = v15;
  v34[1] = v19;
  v34[2] = v25;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  v28 = [v26 moduleWithTitle:@"Editing" contents:v27];

  return v28;
}

@end