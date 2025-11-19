@interface CSDashBoardRemoteContentSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSDashBoardRemoteContentSettings

- (void)setDefaultValues
{
  [(CSDashBoardRemoteContentSettings *)self setOverrideContentPreferences:0];
  [(CSDashBoardRemoteContentSettings *)self setDateTimeStyleOverride:0];
  [(CSDashBoardRemoteContentSettings *)self setBackgroundStyleOverride:3];
  [(CSDashBoardRemoteContentSettings *)self setHomeGestureModeOverride:3];
  [(CSDashBoardRemoteContentSettings *)self setDismissesOnTapOverride:0];
  [(CSDashBoardRemoteContentSettings *)self setPrefersInlinePresentationOverride:0];
  [(CSDashBoardRemoteContentSettings *)self setForceLuminanceReduction:1];
  [(CSDashBoardRemoteContentSettings *)self setAnimatesDimming:1];
  [(CSDashBoardRemoteContentSettings *)self setDimDuration:0.5];
  [(CSDashBoardRemoteContentSettings *)self setAnimatesUndimming:1];
  [(CSDashBoardRemoteContentSettings *)self setUndimDuration:0.5];
  [(CSDashBoardRemoteContentSettings *)self setUndimsOnTap:0];
  [(CSDashBoardRemoteContentSettings *)self setAutoExtendsIdleTimer:0];
  [(CSDashBoardRemoteContentSettings *)self setBottomLuminanceValue:0.0];
  [(CSDashBoardRemoteContentSettings *)self setLowerLuminanceValue:0.15];
  [(CSDashBoardRemoteContentSettings *)self setUpperLuminanceValue:0.3];
  [(CSDashBoardRemoteContentSettings *)self setTopLuminanceValue:0.45];
  [(CSDashBoardRemoteContentSettings *)self setLighterBottomLuminanceValue:0.0];
  [(CSDashBoardRemoteContentSettings *)self setLighterLowerLuminanceValue:0.3];
  [(CSDashBoardRemoteContentSettings *)self setLighterUpperLuminanceValue:0.6];
  [(CSDashBoardRemoteContentSettings *)self setLighterTopLuminanceValue:0.9];
  [(CSDashBoardRemoteContentSettings *)self setUsesLegacyDismissalLogic:0];
  [(CSDashBoardRemoteContentSettings *)self setLegacyThreshold:0.8];
  [(CSDashBoardRemoteContentSettings *)self setDirectThreshold:0.96];

  [(CSDashBoardRemoteContentSettings *)self setDirectFlingDampeningFactor:2.5];
}

+ (id)settingsControllerModule
{
  v68[6] = *MEMORY[0x277D85DE8];
  v60 = [MEMORY[0x277D432A0] rowWithTitle:@"Override Preferences" valueKeyPath:@"overrideContentPreferences"];
  v2 = [MEMORY[0x277D431B8] rowWithTitle:@"Date/Time Style" valueKeyPath:@"dateTimeStyleOverride"];
  v59 = [v2 possibleValues:&unk_28307A1D8 titles:&unk_28307A1F0];

  v3 = [MEMORY[0x277D431B8] rowWithTitle:@"Background Style" valueKeyPath:@"backgroundStyleOverride"];
  v58 = [v3 possibleValues:&unk_28307A208 titles:&unk_28307A220];

  v4 = [MEMORY[0x277D431B8] rowWithTitle:@"Home Gesture Mode" valueKeyPath:@"homeGestureModeOverride"];
  v57 = [v4 possibleValues:&unk_28307A238 titles:&unk_28307A250];

  v56 = [MEMORY[0x277D432A0] rowWithTitle:@"Dismisses On Tap" valueKeyPath:@"dismissesOnTapOverride"];
  v55 = [MEMORY[0x277D432A0] rowWithTitle:@"Prefers Inline Presentation" valueKeyPath:@"prefersInlinePresentationOverride"];
  v5 = MEMORY[0x277D43218];
  v68[0] = v60;
  v68[1] = v59;
  v68[2] = v58;
  v68[3] = v57;
  v68[4] = v56;
  v68[5] = v55;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:6];
  v61 = [v5 sectionWithRows:v6];

  v54 = [MEMORY[0x277D432A0] rowWithTitle:@"Use Legacy Threshold" valueKeyPath:@"usesLegacyDismissalLogic"];
  v53 = [MEMORY[0x277D432A0] rowWithTitle:@"Legacy Threshold" valueKeyPath:@"legacyThreshold"];
  v52 = [MEMORY[0x277D431F0] rowWithTitle:@"Direct Threshold" valueKeyPath:@"directThreshold"];
  v51 = [MEMORY[0x277D431F0] rowWithTitle:@"Dampening Factor" valueKeyPath:@"directFlingDampeningFactor"];
  v7 = MEMORY[0x277D43218];
  v67[0] = v54;
  v67[1] = v53;
  v67[2] = v52;
  v67[3] = v51;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
  v47 = [v7 sectionWithRows:v8];

  v50 = [MEMORY[0x277D432A0] rowWithTitle:@"Force Luminance Reduction" valueKeyPath:@"forceLuminanceReduction"];
  v49 = [MEMORY[0x277D432A0] rowWithTitle:@"Animates Dimming" valueKeyPath:@"animatesDimming"];
  v9 = [MEMORY[0x277D431F0] rowWithTitle:@"Dimming Duration" valueKeyPath:@"dimDuration"];
  v48 = [v9 between:0.0 and:2.0];

  v46 = [MEMORY[0x277D432A0] rowWithTitle:@"Animates Undimming" valueKeyPath:@"animatesUndimming"];
  v10 = [MEMORY[0x277D431F0] rowWithTitle:@"Undimming Duration" valueKeyPath:@"undimDuration"];
  v45 = [v10 between:0.0 and:2.0];

  v44 = [MEMORY[0x277D432A0] rowWithTitle:@"Undims on Tap" valueKeyPath:@"undimsOnTap"];
  v11 = MEMORY[0x277D43218];
  v66[0] = v50;
  v66[1] = v49;
  v66[2] = v48;
  v66[3] = v46;
  v66[4] = v45;
  v66[5] = v44;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:6];
  v13 = [v11 sectionWithRows:v12];

  v43 = [MEMORY[0x277D432A0] rowWithTitle:@"Auto Extends Timer" valueKeyPath:@"autoExtendsIdleTimer"];
  v14 = MEMORY[0x277D43218];
  v65 = v43;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
  v42 = [v14 sectionWithRows:v15];

  v16 = [MEMORY[0x277D431F0] rowWithTitle:@"(D) Minimum Luminance Factor" valueKeyPath:@"bottomLuminanceValue"];
  v41 = [v16 between:0.0 and:1.0];

  v17 = [MEMORY[0x277D431F0] rowWithTitle:@"(D) Lower Luminance Factor" valueKeyPath:@"lowerLuminanceValue"];
  v40 = [v17 between:0.0 and:1.0];

  v18 = [MEMORY[0x277D431F0] rowWithTitle:@"(D) Upper Luminance Factor" valueKeyPath:@"upperLuminanceValue"];
  v39 = [v18 between:0.0 and:1.0];

  v19 = [MEMORY[0x277D431F0] rowWithTitle:@"(D) Maximum Luminance Factor" valueKeyPath:@"topLuminanceValue"];
  v38 = [v19 between:0.0 and:1.0];

  v20 = MEMORY[0x277D43218];
  v64[0] = v41;
  v64[1] = v40;
  v64[2] = v39;
  v64[3] = v38;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:4];
  v37 = [v20 sectionWithRows:v21];

  v22 = [MEMORY[0x277D431F0] rowWithTitle:@"(L) Minimum Luminance Factor" valueKeyPath:@"lighterBottomLuminanceValue"];
  v36 = [v22 between:0.0 and:1.0];

  v23 = [MEMORY[0x277D431F0] rowWithTitle:@"(L) Lower Luminance Factor" valueKeyPath:@"lighterLowerLuminanceValue"];
  v24 = [v23 between:0.0 and:1.0];

  v25 = [MEMORY[0x277D431F0] rowWithTitle:@"(L) Upper Luminance Factor" valueKeyPath:@"lighterUpperLuminanceValue"];
  v26 = [v25 between:0.0 and:1.0];

  v27 = [MEMORY[0x277D431F0] rowWithTitle:@"(L) Maximum Luminance Factor" valueKeyPath:@"lighterTopLuminanceValue"];
  v28 = [v27 between:0.0 and:1.0];

  v29 = MEMORY[0x277D43218];
  v63[0] = v36;
  v63[1] = v24;
  v63[2] = v26;
  v63[3] = v28;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:4];
  v31 = [v29 sectionWithRows:v30];

  v32 = MEMORY[0x277D43218];
  v62[0] = v61;
  v62[1] = v47;
  v62[2] = v13;
  v62[3] = v42;
  v62[4] = v37;
  v62[5] = v31;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:6];
  v34 = [v32 moduleWithTitle:@"Remote Content Settings" contents:v33];

  return v34;
}

@end