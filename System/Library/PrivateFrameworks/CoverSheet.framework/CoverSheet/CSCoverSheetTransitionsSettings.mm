@interface CSCoverSheetTransitionsSettings
+ (id)settingsControllerModule;
- (void)_setBaseCoverSheetSettingsWithMultiplier:(double)multiplier;
- (void)_setInPlaceCoverSheetSettingsWithMultiplier:(double)multiplier;
- (void)setDefaultValues;
- (void)setDefaultValuesForBaseConfiguration;
- (void)setDefaultValuesForBlurOnly;
- (void)setDefaultValuesForCrossFadeOnTouchUp;
- (void)setDefaultValuesForFadeAndScale;
- (void)setDefaultValuesForParallaxAndBlur;
- (void)setDefaultValuesForParallaxOnly;
@end

@implementation CSCoverSheetTransitionsSettings

- (void)setDefaultValues
{
  if (CSFeatureEnabled(12))
  {

    [(CSCoverSheetTransitionsSettings *)self setDefaultValuesForCrossFadeOnTouchUp];
  }

  else
  {

    [(CSCoverSheetTransitionsSettings *)self setDefaultValuesForParallaxAndBlur];
  }
}

- (void)setDefaultValuesForBaseConfiguration
{
  [(CSCoverSheetTransitionsSettings *)self _setBaseCoverSheetSettingsWithMultiplier:1.0];
  [(CSCoverSheetTransitionsSettings *)self _setInPlaceCoverSheetSettingsWithMultiplier:1.0];
  sameWallpaperInitialTransitionSettings = [(CSCoverSheetTransitionsSettings *)self sameWallpaperInitialTransitionSettings];
  [sameWallpaperInitialTransitionSettings setDefaultValues];
  [sameWallpaperInitialTransitionSettings setOrientPanelWallpaper:0];
  [sameWallpaperInitialTransitionSettings setBlursPanel:0];
  [sameWallpaperInitialTransitionSettings setFloatingLayerAsWallpaperOverlay:1];

  differentWallpaperInitialTransitionSettings = [(CSCoverSheetTransitionsSettings *)self differentWallpaperInitialTransitionSettings];
  [differentWallpaperInitialTransitionSettings setDefaultValues];
  [differentWallpaperInitialTransitionSettings setPanelWallpaper:1];

  sameWallpaperSubsequentTransitionSettings = [(CSCoverSheetTransitionsSettings *)self sameWallpaperSubsequentTransitionSettings];
  [sameWallpaperSubsequentTransitionSettings setDefaultValues];
  [sameWallpaperSubsequentTransitionSettings setOrientPanelWallpaper:0];
  [sameWallpaperSubsequentTransitionSettings setFloatingLayerAsWallpaperOverlay:1];

  differentWallpaperSubsequentTransitionSettings = [(CSCoverSheetTransitionsSettings *)self differentWallpaperSubsequentTransitionSettings];
  [differentWallpaperSubsequentTransitionSettings setDefaultValues];
  [differentWallpaperSubsequentTransitionSettings setPanelWallpaper:1];

  overAppTransitionSettings = [(CSCoverSheetTransitionsSettings *)self overAppTransitionSettings];
  [overAppTransitionSettings setDefaultValues];
  [overAppTransitionSettings setPanelWallpaper:1];
  [overAppTransitionSettings setFloatingLayerAsWallpaperOverlay:1];
  [overAppTransitionSettings setRevealWallpaper:1];
  [overAppTransitionSettings setIconsFlyIn:0];

  captureExtensionToAppTransitionSettings = [(CSCoverSheetTransitionsSettings *)self captureExtensionToAppTransitionSettings];
  [captureExtensionToAppTransitionSettings setDefaultValues];
  [captureExtensionToAppTransitionSettings setIconsFlyIn:0];
  [captureExtensionToAppTransitionSettings setTransitionStyle:1];
  [captureExtensionToAppTransitionSettings setFadesCoverSheetContent:1];
  [captureExtensionToAppTransitionSettings setDarkensContent:0];
  [captureExtensionToAppTransitionSettings setFadesContent:0];
  [captureExtensionToAppTransitionSettings setBlursPanel:0];

  overLandscapeTransitionSettings = [(CSCoverSheetTransitionsSettings *)self overLandscapeTransitionSettings];
  [overLandscapeTransitionSettings setDefaultValues];
  [overLandscapeTransitionSettings setBlursPanel:0];
  [overLandscapeTransitionSettings setPanelWallpaper:1];
  [overLandscapeTransitionSettings setTrackingWallpaper:1];
  [overLandscapeTransitionSettings setRevealWallpaper:1];
  [overLandscapeTransitionSettings setFadesContent:0];
  [overLandscapeTransitionSettings setIconsFlyIn:0];

  inactiveOverHomescreenTransitionSettings = [(CSCoverSheetTransitionsSettings *)self inactiveOverHomescreenTransitionSettings];
  [inactiveOverHomescreenTransitionSettings setDefaultValues];
  [inactiveOverHomescreenTransitionSettings setTransitionStyle:1];
  [inactiveOverHomescreenTransitionSettings setBlursPanel:0];
  [inactiveOverHomescreenTransitionSettings setBlursBehindCoverSheet:1];
  [inactiveOverHomescreenTransitionSettings setBehindCoverSheetBlurRadius:50.0];
  [inactiveOverHomescreenTransitionSettings setPanelWallpaper:1];
  [inactiveOverHomescreenTransitionSettings setOrientPanelWallpaper:1];
  [inactiveOverHomescreenTransitionSettings setFadePanelWallpaper:1];
  [inactiveOverHomescreenTransitionSettings setFadesContent:0];
  [inactiveOverHomescreenTransitionSettings setFadesCoverSheetContent:1];
  [inactiveOverHomescreenTransitionSettings setFadesCoverSheetContentStart:0.8];
  [inactiveOverHomescreenTransitionSettings setFadesCoverSheetContentEnd:1.0];
  [inactiveOverHomescreenTransitionSettings setAlwaysFadesCoverSheetContent:0];
  [inactiveOverHomescreenTransitionSettings setSupportsGlassEffects:0];

  inactiveOverAppTransitionSettings = [(CSCoverSheetTransitionsSettings *)self inactiveOverAppTransitionSettings];
  [inactiveOverAppTransitionSettings setDefaultValues];
  inactiveOverHomescreenTransitionSettings2 = [(CSCoverSheetTransitionsSettings *)self inactiveOverHomescreenTransitionSettings];
  [inactiveOverAppTransitionSettings applySettings:inactiveOverHomescreenTransitionSettings2];

  [inactiveOverAppTransitionSettings setIconsFlyIn:0];
  [inactiveOverAppTransitionSettings setUsesFixedWallpaperPresentationProgress:1];
  [inactiveOverAppTransitionSettings setFixedWallpaperPresentationProgress:0.0];
  [inactiveOverAppTransitionSettings setSupportsGlassEffects:0];

  flyInSettings = [(CSCoverSheetTransitionsSettings *)self flyInSettings];
  [flyInSettings setDefaultValues];
}

- (void)_setBaseCoverSheetSettingsWithMultiplier:(double)multiplier
{
  [(CSCoverSheetTransitionsSettings *)self setDamping:multiplier * 0.9815];

  [(CSCoverSheetTransitionsSettings *)self setResponse:multiplier * 0.36276];
}

- (void)_setInPlaceCoverSheetSettingsWithMultiplier:(double)multiplier
{
  [(CSCoverSheetTransitionsSettings *)self setInPlaceDamping:?];

  [(CSCoverSheetTransitionsSettings *)self setInPlaceResponse:multiplier * 0.8];
}

- (void)setDefaultValuesForParallaxOnly
{
  [(CSCoverSheetTransitionsSettings *)self setDefaultValuesForBaseConfiguration];
  v3 = MEMORY[0x277CBEC28];
  [(CSCoverSheetTransitionsSettings *)self setValue:MEMORY[0x277CBEC28] forKeyPath:@"differentWallpaperInitialTransitionSettings.blursPanel"];
  v4 = MEMORY[0x277CBEC38];
  [(CSCoverSheetTransitionsSettings *)self setValue:MEMORY[0x277CBEC38] forKeyPath:@"differentWallpaperInitialTransitionSettings.panelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"differentWallpaperInitialTransitionSettings.trackingWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C00 forKeyPath:@"differentWallpaperInitialTransitionSettings.trackingWallpaperParallaxFactor"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperInitialTransitionSettings.fadePanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperInitialTransitionSettings.fadesContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.blursPanel"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.panelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.trackingWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C00 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.trackingWallpaperParallaxFactor"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.fadePanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.fadesContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"overAppTransitionSettings.blursPanel"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"overAppTransitionSettings.panelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"overAppTransitionSettings.trackingWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C00 forKeyPath:@"overAppTransitionSettings.trackingWallpaperParallaxFactor"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"overAppTransitionSettings.fadePanelWallpaper"];

  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"overAppTransitionSettings.fadesContent"];
}

- (void)setDefaultValuesForBlurOnly
{
  [(CSCoverSheetTransitionsSettings *)self setDefaultValuesForBaseConfiguration];
  v3 = MEMORY[0x277CBEC38];
  [(CSCoverSheetTransitionsSettings *)self setValue:MEMORY[0x277CBEC38] forKeyPath:@"differentWallpaperInitialTransitionSettings.blursPanel"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperInitialTransitionSettings.panelWallpaper"];
  v4 = MEMORY[0x277CBEC28];
  [(CSCoverSheetTransitionsSettings *)self setValue:MEMORY[0x277CBEC28] forKeyPath:@"differentWallpaperInitialTransitionSettings.trackingWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperInitialTransitionSettings.fadePanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C10 forKeyPath:@"differentWallpaperInitialTransitionSettings.fadePanelWallpaperStart"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C20 forKeyPath:@"differentWallpaperInitialTransitionSettings.fadePanelWallpaperEnd"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperInitialTransitionSettings.fadesContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C10 forKeyPath:@"differentWallpaperInitialTransitionSettings.contentFadeStart"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C30 forKeyPath:@"differentWallpaperInitialTransitionSettings.contentFadeEnd"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.blursPanel"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.panelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.trackingWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.fadePanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C10 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.fadePanelWallpaperStart"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C20 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.fadePanelWallpaperEnd"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.fadesContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C10 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.contentFadeStart"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C30 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.contentFadeEnd"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"overAppTransitionSettings.blursPanel"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"overAppTransitionSettings.panelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"overAppTransitionSettings.trackingWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"overAppTransitionSettings.fadePanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C10 forKeyPath:@"overAppTransitionSettings.fadePanelWallpaperStart"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C20 forKeyPath:@"overAppTransitionSettings.fadePanelWallpaperEnd"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"overAppTransitionSettings.fadesContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C40 forKeyPath:@"overAppTransitionSettings.contentFadeStart"];

  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C40 forKeyPath:@"overAppTransitionSettings.contentFadeEnd"];
}

- (void)setDefaultValuesForParallaxAndBlur
{
  [(CSCoverSheetTransitionsSettings *)self setDefaultValuesForBaseConfiguration];
  v4 = MEMORY[0x277CBEC38];
  [(CSCoverSheetTransitionsSettings *)self setValue:MEMORY[0x277CBEC38] forKeyPath:@"differentWallpaperInitialTransitionSettings.blursPanel"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"differentWallpaperInitialTransitionSettings.panelWallpaper"];
  v5 = MEMORY[0x277CCABB0];
  v6 = __sb__runningInSpringBoard();
  v7 = v6;
  if (v6)
  {
    v8 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v8 = [currentDevice userInterfaceIdiom] == 1;
  }

  v9 = [v5 numberWithInt:v8];
  [(CSCoverSheetTransitionsSettings *)self setValue:v9 forKeyPath:@"differentWallpaperInitialTransitionSettings.trackingWallpaper"];

  if ((v7 & 1) == 0)
  {
  }

  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C00 forKeyPath:@"differentWallpaperInitialTransitionSettings.trackingWallpaperParallaxFactor"];
  v10 = MEMORY[0x277CBEC38];
  [(CSCoverSheetTransitionsSettings *)self setValue:MEMORY[0x277CBEC38] forKeyPath:@"differentWallpaperInitialTransitionSettings.fadePanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C10 forKeyPath:@"differentWallpaperInitialTransitionSettings.fadePanelWallpaperStart"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C20 forKeyPath:@"differentWallpaperInitialTransitionSettings.fadePanelWallpaperEnd"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v10 forKeyPath:@"differentWallpaperInitialTransitionSettings.fadesContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C10 forKeyPath:@"differentWallpaperInitialTransitionSettings.contentFadeStart"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C30 forKeyPath:@"differentWallpaperInitialTransitionSettings.contentFadeEnd"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v10 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.blursPanel"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v10 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.panelWallpaper"];
  v11 = MEMORY[0x277CCABB0];
  v12 = __sb__runningInSpringBoard();
  v13 = v12;
  if (v12)
  {
    v14 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v14 = [currentDevice userInterfaceIdiom] == 1;
  }

  v15 = [v11 numberWithInt:v14];
  [(CSCoverSheetTransitionsSettings *)self setValue:v15 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.trackingWallpaper"];

  if ((v13 & 1) == 0)
  {
  }

  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C00 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.trackingWallpaperParallaxFactor"];
  v16 = MEMORY[0x277CBEC38];
  [(CSCoverSheetTransitionsSettings *)self setValue:MEMORY[0x277CBEC38] forKeyPath:@"differentWallpaperSubsequentTransitionSettings.fadePanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C10 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.fadePanelWallpaperStart"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C20 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.fadePanelWallpaperEnd"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v16 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.fadesContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C10 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.contentFadeStart"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C30 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.contentFadeEnd"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v16 forKeyPath:@"overAppTransitionSettings.blursPanel"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v16 forKeyPath:@"overAppTransitionSettings.panelWallpaper"];
  v17 = MEMORY[0x277CCABB0];
  v18 = __sb__runningInSpringBoard();
  v19 = v18;
  if (v18)
  {
    v20 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v20 = [currentDevice userInterfaceIdiom] == 1;
  }

  v21 = [v17 numberWithInt:v20];
  [(CSCoverSheetTransitionsSettings *)self setValue:v21 forKeyPath:@"overAppTransitionSettings.trackingWallpaper"];

  if ((v19 & 1) == 0)
  {
  }

  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C00 forKeyPath:@"overAppTransitionSettings.trackingWallpaperParallaxFactor"];
  [(CSCoverSheetTransitionsSettings *)self setValue:MEMORY[0x277CBEC38] forKeyPath:@"overAppTransitionSettings.fadePanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C10 forKeyPath:@"overAppTransitionSettings.fadePanelWallpaperStart"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C20 forKeyPath:@"overAppTransitionSettings.fadePanelWallpaperEnd"];
  v22 = MEMORY[0x277CBEC28];

  [(CSCoverSheetTransitionsSettings *)self setValue:v22 forKeyPath:@"overAppTransitionSettings.fadesContent"];
}

- (void)setDefaultValuesForFadeAndScale
{
  [(CSCoverSheetTransitionsSettings *)self setDefaultValuesForBaseConfiguration];
  v3 = MEMORY[0x277CBEC28];
  [(CSCoverSheetTransitionsSettings *)self setValue:MEMORY[0x277CBEC28] forKeyPath:@"sameWallpaperSubsequentTransitionSettings.blursPanel"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.panelWallpaper"];
  v4 = MEMORY[0x277CBEC38];
  [(CSCoverSheetTransitionsSettings *)self setValue:MEMORY[0x277CBEC38] forKeyPath:@"sameWallpaperSubsequentTransitionSettings.scaleWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.fadesContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.darkensContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.trackingWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.orientPanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.fadePanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.fadesCoverSheetContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.blursPanel"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.panelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.scaleWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.fadesContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.darkensContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.trackingWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.fadePanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.fadesCoverSheetContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"overAppTransitionSettings.blursPanel"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"overAppTransitionSettings.panelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"overAppTransitionSettings.trackingWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C00 forKeyPath:@"overAppTransitionSettings.trackingWallpaperParallaxFactor"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"overAppTransitionSettings.fadePanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C10 forKeyPath:@"overAppTransitionSettings.fadePanelWallpaperStart"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C20 forKeyPath:@"overAppTransitionSettings.fadePanelWallpaperEnd"];

  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"overAppTransitionSettings.fadesContent"];
}

- (void)setDefaultValuesForCrossFadeOnTouchUp
{
  [(CSCoverSheetTransitionsSettings *)self setDefaultValuesForBaseConfiguration];
  v3 = MEMORY[0x277CBEC28];
  [(CSCoverSheetTransitionsSettings *)self setValue:MEMORY[0x277CBEC28] forKeyPath:@"sameWallpaperInitialTransitionSettings.blursPanel"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperInitialTransitionSettings.panelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperInitialTransitionSettings.scaleWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperInitialTransitionSettings.fadesContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperInitialTransitionSettings.darkensContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperInitialTransitionSettings.trackingWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperInitialTransitionSettings.orientPanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperInitialTransitionSettings.fadePanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperInitialTransitionSettings.fadesCoverSheetContent"];
  v4 = MEMORY[0x277CBEC38];
  [(CSCoverSheetTransitionsSettings *)self setValue:MEMORY[0x277CBEC38] forKeyPath:@"sameWallpaperInitialTransitionSettings.crossBlursForTransition"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C20 forKeyPath:@"sameWallpaperInitialTransitionSettings.crossBlurEnd"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.blursPanel"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.panelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.scaleWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.fadesContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.darkensContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.trackingWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.orientPanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.fadePanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.fadesCoverSheetContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.floatingLayerAsWallpaperOverlay"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.crossBlursForTransition"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C20 forKeyPath:@"sameWallpaperSubsequentTransitionSettings.crossBlurEnd"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperInitialTransitionSettings.blursPanel"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperInitialTransitionSettings.panelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperInitialTransitionSettings.scaleWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperInitialTransitionSettings.fadesContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperInitialTransitionSettings.darkensContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperInitialTransitionSettings.trackingWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperInitialTransitionSettings.fadePanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperInitialTransitionSettings.fadesCoverSheetContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperInitialTransitionSettings.floatingLayerAsWallpaperOverlay"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"differentWallpaperInitialTransitionSettings.crossBlursForTransition"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C20 forKeyPath:@"differentWallpaperInitialTransitionSettings.crossBlurEnd"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.blursPanel"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.panelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.scaleWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.fadesContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.darkensContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.trackingWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.fadePanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.fadesCoverSheetContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.crossBlursForTransition"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C20 forKeyPath:@"differentWallpaperSubsequentTransitionSettings.crossBlurEnd"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"overAppTransitionSettings.blursPanel"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"overAppTransitionSettings.panelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"overAppTransitionSettings.trackingWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C40 forKeyPath:@"overAppTransitionSettings.trackingWallpaperParallaxFactor"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"overAppTransitionSettings.fadePanelWallpaper"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v3 forKeyPath:@"overAppTransitionSettings.fadesContent"];
  [(CSCoverSheetTransitionsSettings *)self setValue:v4 forKeyPath:@"overAppTransitionSettings.crossBlursForTransition"];

  [(CSCoverSheetTransitionsSettings *)self setValue:&unk_283078C20 forKeyPath:@"overAppTransitionSettings.crossBlurEnd"];
}

+ (id)settingsControllerModule
{
  v68[2] = *MEMORY[0x277D85DE8];
  v58 = [MEMORY[0x277D431F0] rowWithTitle:@"Damping" valueKeyPath:@"damping"];
  v57 = [MEMORY[0x277D431F0] rowWithTitle:@"Response" valueKeyPath:@"response"];
  v2 = MEMORY[0x277D43218];
  v68[0] = v58;
  v68[1] = v57;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  v54 = [v2 sectionWithRows:v3 title:@"Moving"];

  v56 = [MEMORY[0x277D431F0] rowWithTitle:@"Damping" valueKeyPath:@"inPlaceDamping"];
  v55 = [MEMORY[0x277D431F0] rowWithTitle:@"Response" valueKeyPath:@"inPlaceResponse"];
  v4 = MEMORY[0x277D43218];
  v67[0] = v56;
  v67[1] = v55;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
  v51 = [v4 sectionWithRows:v5 title:@"In Place"];

  v6 = MEMORY[0x277D431A8];
  v7 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_1];
  v53 = [v6 rowWithTitle:@"Shipping" action:v7];

  v8 = MEMORY[0x277D431A8];
  v9 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_242];
  v52 = [v8 rowWithTitle:@"90% Duration" action:v9];

  v10 = MEMORY[0x277D431A8];
  v11 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_247];
  v50 = [v10 rowWithTitle:@"80% Duration" action:v11];

  v12 = MEMORY[0x277D431A8];
  v13 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_252];
  v49 = [v12 rowWithTitle:@"70% Duration" action:v13];

  v14 = MEMORY[0x277D43218];
  v66[0] = v53;
  v66[1] = v52;
  v66[2] = v50;
  v66[3] = v49;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:4];
  v47 = [v14 sectionWithRows:v15 title:@"Presets"];

  v48 = [MEMORY[0x277D431E0] rowWithTitle:@"Fly In" childSettingsKeyPath:@"flyInSettings"];
  v16 = MEMORY[0x277D43218];
  v65 = v48;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
  v45 = [v16 sectionWithRows:v17];

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __59__CSCoverSheetTransitionsSettings_settingsControllerModule__block_invoke_5;
  v59[3] = &unk_27838BA28;
  v60 = &unk_283079818;
  v61 = v18;
  v46 = v18;
  [&unk_283079800 enumerateObjectsUsingBlock:v59];
  v44 = [MEMORY[0x277D43218] sectionWithRows:v46];
  v19 = MEMORY[0x277D431A8];
  v20 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_326];
  v43 = [v19 rowWithTitle:@"Parallax Only" action:v20];

  v21 = MEMORY[0x277D431A8];
  v22 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_331];
  v42 = [v21 rowWithTitle:@"Blur Only" action:v22];

  v23 = MEMORY[0x277D431A8];
  v24 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_336];
  v41 = [v23 rowWithTitle:@"Parallax And Blur" action:v24];

  v25 = MEMORY[0x277D431A8];
  v26 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_341];
  v27 = [v25 rowWithTitle:@"Fade and Scale" action:v26];

  v28 = MEMORY[0x277D43218];
  v64[0] = v43;
  v64[1] = v42;
  v64[2] = v41;
  v64[3] = v27;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:4];
  v30 = [v28 sectionWithRows:v29 title:@"Presets"];

  v31 = MEMORY[0x277D43218];
  v32 = MEMORY[0x277D431A8];
  v33 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v34 = [v32 rowWithTitle:@"Restore Defaults" action:v33];
  v63 = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
  v36 = [v31 sectionWithRows:v35];

  v37 = MEMORY[0x277D43218];
  v62[0] = v54;
  v62[1] = v51;
  v62[2] = v47;
  v62[3] = v45;
  v62[4] = v44;
  v62[5] = v30;
  v62[6] = v36;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:7];
  v39 = [v37 moduleWithTitle:@"CoverSheet Transitions" contents:v38];

  return v39;
}

uint64_t __59__CSCoverSheetTransitionsSettings_settingsControllerModule__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setBaseCoverSheetSettingsWithMultiplier:1.0];
  [v3 _setInPlaceCoverSheetSettingsWithMultiplier:1.0];

  return 1;
}

uint64_t __59__CSCoverSheetTransitionsSettings_settingsControllerModule__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setBaseCoverSheetSettingsWithMultiplier:0.9];
  [v3 _setInPlaceCoverSheetSettingsWithMultiplier:0.9];

  return 1;
}

uint64_t __59__CSCoverSheetTransitionsSettings_settingsControllerModule__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setBaseCoverSheetSettingsWithMultiplier:0.8];
  [v3 _setInPlaceCoverSheetSettingsWithMultiplier:0.8];

  return 1;
}

uint64_t __59__CSCoverSheetTransitionsSettings_settingsControllerModule__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setBaseCoverSheetSettingsWithMultiplier:0.7];
  [v3 _setInPlaceCoverSheetSettingsWithMultiplier:0.7];

  return 1;
}

void __59__CSCoverSheetTransitionsSettings_settingsControllerModule__block_invoke_5(uint64_t a1, void *a2, unint64_t a3)
{
  v7 = a2;
  if ([*(a1 + 32) count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndex:a3];
  }

  v6 = [MEMORY[0x277D431E0] rowWithTitle:v5 childSettingsKeyPath:v7];
  [*(a1 + 40) addObject:v6];
}

uint64_t __59__CSCoverSheetTransitionsSettings_settingsControllerModule__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 setDefaultValuesForParallaxOnly];

  return 1;
}

uint64_t __59__CSCoverSheetTransitionsSettings_settingsControllerModule__block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 setDefaultValuesForBlurOnly];

  return 1;
}

uint64_t __59__CSCoverSheetTransitionsSettings_settingsControllerModule__block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 setDefaultValuesForParallaxAndBlur];

  return 1;
}

uint64_t __59__CSCoverSheetTransitionsSettings_settingsControllerModule__block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 setDefaultValuesForFadeAndScale];

  return 1;
}

@end