@interface CSLookSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSLookSettings

- (void)setDefaultValues
{
  [(CSLookSettings *)self setUseSettingsDateTime:0];
  [(CSLookSettings *)self setCustomizesDateTime:1];
  [(CSLookSettings *)self setSubtitleAboveTime:1];
  [(CSLookSettings *)self setTimeFontSize:80.0];
  [(CSLookSettings *)self setTimeFontWeight:*MEMORY[0x277D74400]];
  v3 = *MEMORY[0x277D74368];

  [(CSLookSettings *)self setTimeFontDesign:v3];
}

+ (id)settingsControllerModule
{
  v43[1] = *MEMORY[0x277D85DE8];
  v32 = [MEMORY[0x277CCAC30] predicateWithFormat:@"useSettingsDateTime = YES"];
  v37 = [MEMORY[0x277D432A0] rowWithTitle:@"Use Custom Values" valueKeyPath:@"useSettingsDateTime"];
  v2 = MEMORY[0x277D43218];
  v43[0] = v37;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
  v34 = [v2 sectionWithRows:v3];

  v36 = [MEMORY[0x277D432A0] rowWithTitle:@"Customizes Date/Time" valueKeyPath:@"customizesDateTime"];
  v35 = [MEMORY[0x277D432A0] rowWithTitle:@"Subtitle Above Time" valueKeyPath:@"subtitleAboveTime"];
  v4 = MEMORY[0x277D43218];
  v42[0] = v36;
  v42[1] = v35;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  v33 = [v4 sectionWithRows:v5 title:@"Layout" condition:v32];

  v6 = [MEMORY[0x277D431B8] rowWithTitle:@"Size" valueKeyPath:@"timeFontSize"];
  v31 = [v6 possibleValues:&unk_283079F20 titles:&unk_283079F38];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74438]];
  v41[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74428]];
  v41[1] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74408]];
  v41[2] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74418]];
  v41[3] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74410]];
  v41[4] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74420]];
  v41[5] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v41[6] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74400]];
  v41[7] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743E8]];
  v41[8] = v15;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:9];

  v16 = [MEMORY[0x277D431B8] rowWithTitle:@"Weight" valueKeyPath:@"timeFontWeight"];
  v17 = [v16 possibleValues:v30 titles:&unk_283079F50];

  v18 = *MEMORY[0x277D74368];
  v40[0] = *MEMORY[0x277D74358];
  v40[1] = v18;
  v19 = *MEMORY[0x277D74360];
  v40[2] = *MEMORY[0x277D74370];
  v40[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
  v21 = [MEMORY[0x277D431B8] rowWithTitle:@"Design" valueKeyPath:@"timeFontDesign"];
  v22 = [v21 possibleValues:v20 titles:&unk_283079F68];

  v23 = MEMORY[0x277D43218];
  v39[0] = v31;
  v39[1] = v17;
  v39[2] = v22;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
  v25 = [v23 sectionWithRows:v24 title:@"Time Font" condition:v32];

  v26 = MEMORY[0x277D43218];
  v38[0] = v34;
  v38[1] = v33;
  v38[2] = v25;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
  v28 = [v26 moduleWithTitle:@"Look Around" contents:v27];

  return v28;
}

@end