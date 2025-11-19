@interface CCUIControlResizingSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CCUIControlResizingSettings

- (void)setDefaultValues
{
  v8.receiver = self;
  v8.super_class = CCUIControlResizingSettings;
  [(PTSettings *)&v8 setDefaultValues];
  v3 = [(CCUIControlResizingSettings *)self resizeHandleSettings];
  [v3 setDefaultValues];

  v4 = [(CCUIControlResizingSettings *)self smallControlsResizeHandleSettings];
  [v4 setDefaultValues];

  v5 = [(CCUIControlResizingSettings *)self smallControlsResizeHandleSettings];
  [v5 setResizeHandleUsesTruncatedSectorHitArea:1];

  v6 = [(CCUIControlResizingSettings *)self animationSettings];
  [v6 setDefaultValues];

  v7 = [(CCUIControlResizingSettings *)self labelTransitionAnimationSettings];
  [v7 setDefaultValues];

  [(CCUIControlResizingSettings *)self setLabelTransitionCrossblurRadius:6.0];
  [(CCUIControlResizingSettings *)self setBlurPocketWidth:45.0];
  [(CCUIControlResizingSettings *)self setBlurPocketFadeDuration:0.3];
  [(CCUIControlResizingSettings *)self setOversizeRubberbandingRange:24.0];
  [(CCUIControlResizingSettings *)self setUndersizeRubberbandingRange:16.0];
  [(CCUIControlResizingSettings *)self setHapticIntensity:0.95];
}

+ (id)settingsControllerModule
{
  v62[1] = *MEMORY[0x277D85DE8];
  v52 = [MEMORY[0x277D431E0] rowWithTitle:@"Resize Handles" childSettingsKeyPath:@"resizeHandleSettings"];
  v2 = MEMORY[0x277D43218];
  v62[0] = v52;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
  v53 = [v2 sectionWithRows:v3];

  v51 = [MEMORY[0x277D431E0] rowWithTitle:@"1x1 Resize Handles" childSettingsKeyPath:@"smallControlsResizeHandleSettings"];
  v4 = MEMORY[0x277D43218];
  v61 = v51;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
  v49 = [v4 sectionWithRows:v5];

  v50 = [MEMORY[0x277D431E0] rowWithTitle:@"Resize Animation" childSettingsKeyPath:@"animationSettings"];
  v6 = MEMORY[0x277D43218];
  v60 = v50;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
  v46 = [v6 sectionWithRows:v7];

  v48 = [MEMORY[0x277D431E0] rowWithTitle:@"Label Transition Animation" childSettingsKeyPath:@"labelTransitionAnimationSettings"];
  v8 = [MEMORY[0x277D431F0] rowWithTitle:@"Label Crossblur Radius" valueKeyPath:@"labelTransitionCrossblurRadius"];
  v9 = [v8 between:0.0 and:50.0];
  v47 = [v9 precision:2];

  v10 = MEMORY[0x277D43218];
  v59[0] = v48;
  v59[1] = v47;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  v45 = [v10 sectionWithRows:v11];

  v12 = [MEMORY[0x277D431F0] rowWithTitle:@"Blur Pocket Width" valueKeyPath:@"blurPocketWidth"];
  v13 = [v12 between:0.0 and:100.0];
  v44 = [v13 precision:0];

  v14 = [MEMORY[0x277D431F0] rowWithTitle:@"Blur Pocket Fade Duration" valueKeyPath:@"blurPocketFadeDuration"];
  v15 = [v14 between:0.0 and:2.0];
  v43 = [v15 precision:2];

  v16 = MEMORY[0x277D43218];
  v58[0] = v44;
  v58[1] = v43;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  v42 = [v16 sectionWithRows:v17];

  v18 = [MEMORY[0x277D431F0] rowWithTitle:@"Oversize Rubberband Range" valueKeyPath:@"oversizeRubberbandingRange"];
  v19 = [v18 between:0.0 and:100.0];
  v20 = [v19 precision:0];
  v57[0] = v20;
  v21 = [MEMORY[0x277D431F0] rowWithTitle:@"Undersize Rubberband Range" valueKeyPath:@"undersizeRubberbandingRange"];
  v22 = [v21 between:0.0 and:100.0];
  v23 = [v22 precision:0];
  v57[1] = v23;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];

  v39 = [MEMORY[0x277D43218] sectionWithRows:v41];
  v24 = [MEMORY[0x277D431F0] rowWithTitle:@"Haptic Intensity" valueKeyPath:@"hapticIntensity"];
  v25 = [v24 between:0.0 and:1.0];
  v40 = [v25 precision:3];

  v26 = MEMORY[0x277D43218];
  v56 = v40;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  v28 = [v26 sectionWithRows:v27];

  v29 = MEMORY[0x277D431A8];
  v30 = [MEMORY[0x277D43238] action];
  v31 = [v29 rowWithTitle:@"Restore Defaults" action:v30];

  v32 = MEMORY[0x277D43218];
  v55 = v31;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
  v34 = [v32 sectionWithRows:v33];

  v35 = MEMORY[0x277D43218];
  v54[0] = v53;
  v54[1] = v49;
  v54[2] = v46;
  v54[3] = v45;
  v54[4] = v42;
  v54[5] = v39;
  v54[6] = v28;
  v54[7] = v34;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:8];
  v37 = [v35 moduleWithTitle:@"Resizing" contents:v36];

  return v37;
}

@end