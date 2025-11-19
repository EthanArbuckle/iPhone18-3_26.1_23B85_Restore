@interface CSDashBoardQuickActionsButtonSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSDashBoardQuickActionsButtonSettings

- (void)setDefaultValues
{
  [(CSDashBoardQuickActionsButtonSettings *)self setShowsButtons:1];
  [(CSDashBoardQuickActionsButtonSettings *)self setColorsBackground:0];
  [(CSDashBoardQuickActionsButtonSettings *)self setTopOutset:18.0];
  [(CSDashBoardQuickActionsButtonSettings *)self setLeadingOutset:18.0];
  [(CSDashBoardQuickActionsButtonSettings *)self setTrailingOutset:18.0];
  [(CSDashBoardQuickActionsButtonSettings *)self setBottomOutset:18.0];
  [(CSDashBoardQuickActionsButtonSettings *)self setUsesStrictTouchAllowance:1];
  [(CSDashBoardQuickActionsButtonSettings *)self setStrictTouchExtraRadius:8.0];
  [(CSDashBoardQuickActionsButtonSettings *)self setMaximumTouchDuration:2.0];

  [(CSDashBoardQuickActionsButtonSettings *)self setAllowsOnPad:0];
}

+ (id)settingsControllerModule
{
  v34[3] = *MEMORY[0x277D85DE8];
  v30 = [MEMORY[0x277D432A0] rowWithTitle:@"Shows Buttons" valueKeyPath:@"showsButtons"];
  v29 = [MEMORY[0x277D432A0] rowWithTitle:@"Colors Background" valueKeyPath:@"colorsBackground"];
  v28 = [MEMORY[0x277D432A0] rowWithTitle:@"Supports iPad" valueKeyPath:@"allowsOnPad"];
  v2 = MEMORY[0x277D43218];
  v34[0] = v30;
  v34[1] = v29;
  v34[2] = v28;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  v27 = [v2 sectionWithRows:v3];

  v26 = [MEMORY[0x277D432A0] rowWithTitle:@"Use Touch Gating" valueKeyPath:@"usesStrictTouchAllowance"];
  v4 = [MEMORY[0x277D431F0] rowWithTitle:@"Extra Touch Radius" valueKeyPath:@"strictTouchExtraRadius"];
  v25 = [v4 between:0.0 and:20.0];

  v5 = [MEMORY[0x277D431F0] rowWithTitle:@"Maximum Duration" valueKeyPath:@"maximumTouchDuration"];
  v24 = [v5 between:0.0 and:12.0];

  v6 = MEMORY[0x277D43218];
  v33[0] = v26;
  v33[1] = v25;
  v33[2] = v24;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v8 = [v6 sectionWithRows:v7 title:@"Pocket Touch Protections"];

  v9 = [MEMORY[0x277D431F0] rowWithTitle:@"Top" valueKeyPath:@"topOutset"];
  v10 = [v9 between:0.0 and:64.0];

  v11 = [MEMORY[0x277D431F0] rowWithTitle:@"Leading" valueKeyPath:@"leadingOutset"];
  v12 = [v11 between:0.0 and:64.0];

  v13 = [MEMORY[0x277D431F0] rowWithTitle:@"Trailing" valueKeyPath:@"trailingOutset"];
  v14 = [v13 between:0.0 and:64.0];

  v15 = [MEMORY[0x277D431F0] rowWithTitle:@"Bottom" valueKeyPath:@"bottomOutset"];
  v16 = [v15 between:0.0 and:64.0];

  v17 = MEMORY[0x277D43218];
  v32[0] = v10;
  v32[1] = v12;
  v32[2] = v14;
  v32[3] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  v19 = [v17 sectionWithRows:v18 title:@"Button Outsets"];

  v20 = MEMORY[0x277D43218];
  v31[0] = v27;
  v31[1] = v8;
  v31[2] = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  v22 = [v20 moduleWithTitle:@"Dismiss Gesture Settings" contents:v21];

  return v22;
}

@end