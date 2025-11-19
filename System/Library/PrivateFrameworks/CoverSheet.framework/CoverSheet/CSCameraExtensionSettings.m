@interface CSCameraExtensionSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSCameraExtensionSettings

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = CSCameraExtensionSettings;
  [(PTSettings *)&v4 setDefaultValues];
  [(CSCameraExtensionSettings *)self setCaptureExtensionsEnabled:0];
  [(SBFFluidBehaviorSettings *)self->_coverSheetContentScaleSettings setDampingRatio:0.783];
  [(SBFFluidBehaviorSettings *)self->_coverSheetContentScaleSettings setResponse:0.702];
  coverSheetContentScaleSettings = self->_coverSheetContentScaleSettings;
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)coverSheetContentScaleSettings setFrameRateRange:1114151 highFrameRateReason:*&v5.minimum, *&v5.maximum, *&v5.preferred];
  [(SBFFluidBehaviorSettings *)self->_captureExtensionLaunchFadeInSettings setDefaultValues];
}

+ (id)settingsControllerModule
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D432A0] rowWithTitle:@"Launch Camera Extension from Quick Action Button" valueKeyPath:@"captureExtensionsEnabled"];
  v3 = MEMORY[0x277D431E0];
  v4 = NSStringFromSelector(sel_captureExtensionLaunchFadeInSettings);
  v5 = [v3 rowWithTitle:@"Camera Extension Launch Fade In" childSettingsKeyPath:v4];

  v6 = [MEMORY[0x277D431E0] rowWithTitle:@"Cover Sheet Content Scale" childSettingsKeyPath:@"coverSheetContentScaleSettings"];
  v7 = MEMORY[0x277D43218];
  v17 = v2;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v9 = [v7 sectionWithRows:v8];
  v18[0] = v9;
  v10 = MEMORY[0x277D43218];
  v16[0] = v5;
  v16[1] = v6;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v12 = [v10 sectionWithRows:v11 title:@"Animations"];
  v18[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v14 = [v7 moduleWithTitle:@"Camera Extension Settings" contents:v13];

  return v14;
}

@end