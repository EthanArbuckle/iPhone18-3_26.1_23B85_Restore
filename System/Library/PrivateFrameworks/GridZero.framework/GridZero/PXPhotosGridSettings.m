@interface PXPhotosGridSettings
+ (PXPhotosGridSettings)sharedInstance;
- (PXPhotosGridSettings)init;
- (void)setDefaultValues;
@end

@implementation PXPhotosGridSettings

+ (PXPhotosGridSettings)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_771);
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __38__PXPhotosGridSettings_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance = objc_alloc_init(PXPhotosGridSettings);

  return MEMORY[0x2821F96F8]();
}

- (PXPhotosGridSettings)init
{
  v5.receiver = self;
  v5.super_class = PXPhotosGridSettings;
  v2 = [(PXPhotosGridSettings *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXPhotosGridSettings *)v2 setDefaultValues];
  }

  return v3;
}

- (void)setDefaultValues
{
  [(PXPhotosGridSettings *)self setMaximumBlurRadius:12.0];
  [(PXPhotosGridSettings *)self setMaximumBlurDimmingFraction:0.5];
  [(PXPhotosGridSettings *)self setBlurFadeDistance:200.0];
  [(PXPhotosGridSettings *)self setMaximumCommonFocus:1.0];
  [(PXPhotosGridSettings *)self setScrollSnapMaximumDecelerationFactor:*MEMORY[0x277D3CFD0]];
  [(PXPhotosGridSettings *)self setScrollSnapMaximumAccelerationFactor:*MEMORY[0x277D3CFC8]];
  [(PXPhotosGridSettings *)self setEnableShowMoreButtonsInEditorialLens:0];
  [(PXPhotosGridSettings *)self setEmulatesEmptyLibrary:0];
  [(PXPhotosGridSettings *)self setForceFooterVisible:0];
  [(PXPhotosGridSettings *)self setSimulatedLoadDelay:0.0];
  [(PXPhotosGridSettings *)self setDefaultAnimationDuration:0.4];
  [(PXPhotosGridSettings *)self setMatchMoveAnimationDuration:0.4];
  [(PXPhotosGridSettings *)self setEnableInCMM:0];
  [(PXPhotosGridSettings *)self setEnablePreviewKeyAssetFetching:1];
  [(PXPhotosGridSettings *)self setEnableSuperzoom:1];
  [(PXPhotosGridSettings *)self setEnableInvisibleNavBars:1];
  [(PXPhotosGridSettings *)self setEnableSortAction:1];
  [(PXPhotosGridSettings *)self setEnableAspectFitToggle:1];
  [(PXPhotosGridSettings *)self setEnableAspectFitButton:1];
  [(PXPhotosGridSettings *)self setEnableZoomInOutButton:0];
  [(PXPhotosGridSettings *)self setEnableContentFiltering:1];
  [(PXPhotosGridSettings *)self setEnableMultiSelectMenu:1];
  [(PXPhotosGridSettings *)self setEnableNewActionMenu:1];
  [(PXPhotosGridSettings *)self setEnableFilterDropDownButton:0];
  v3 = [MEMORY[0x277D75418] currentDevice];
  -[PXPhotosGridSettings setEnableFilterViewControllerAnchoringToSender:](self, "setEnableFilterViewControllerAnchoringToSender:", [v3 userInterfaceIdiom] == 1);

  [(PXPhotosGridSettings *)self setEnableDetailsMenuAction:0];
  [(PXPhotosGridSettings *)self setExposeMoviePresentationAction:0];
  [(PXPhotosGridSettings *)self setEnableTitleLegibilityDimmingFilter:0];
  [(PXPhotosGridSettings *)self setBackdropStyleForPlacesAndImports:1];
  [(PXPhotosGridSettings *)self setColorNavbarArea:0];
  [(PXPhotosGridSettings *)self setHeaderTitleTopSpacing:2.0];
  [(PXPhotosGridSettings *)self setHeaderTitleBottomSpacing:12.0];
  [(PXPhotosGridSettings *)self setUseGradientSectionHeaders:1];
  [(PXPhotosGridSettings *)self setSectionHeaderGradientOverhang:60.0];
  [(PXPhotosGridSettings *)self setSectionHeaderGradientAlpha:0.45];
  [(PXPhotosGridSettings *)self setShowLivePhotoFilter:0];
  [(PXPhotosGridSettings *)self setShowPortraitFilter:0];
  [(PXPhotosGridSettings *)self setShowInUserAlbumFilter:0];
  [(PXPhotosGridSettings *)self setHeaderGradientHeight:150.0];
  [(PXPhotosGridSettings *)self setHeaderGradientAlpha:0.5];
  [(PXPhotosGridSettings *)self setBehindContentBackgroundGradientAlpha:0.25];
  [(PXPhotosGridSettings *)self setForceDarkDetailsView:0];
  [(PXPhotosGridSettings *)self setShowCollectionKindInPreviewHeaderToggleAction:0];
  [(PXPhotosGridSettings *)self setShouldCurateEditorialLens:1];
  [(PXPhotosGridSettings *)self setGridBadgesOnlyShowGlyph:0];
  [(PXPhotosGridSettings *)self setGridBadgesPortraitEnabled:0];
  [(PXPhotosGridSettings *)self setGridBadgesForAllMediaTypes:0];
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v4 objectForKey:@"PXPhotosGridEnableStacksReviewUI"];

  if (v6)
  {
    v5 = [v6 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  [(PXPhotosGridSettings *)self setEnableStacksReviewUI:v5];
  [(PXPhotosGridSettings *)self setPlayingRecordsUpdateRateLimit:0.02];
  [(PXPhotosGridSettings *)self setPlaybackVisibleRectEdgeInset:30.0];
  [(PXPhotosGridSettings *)self setMaxNumberOfPlayingItems:1];
  [(PXPhotosGridSettings *)self setForcePlayback:0];
  [(PXPhotosGridSettings *)self setMinAutoplaySuggestionScore:0.5];
  [(PXPhotosGridSettings *)self setPlayBestTimeRange:1];
  [(PXPhotosGridSettings *)self setFloatingHeaderFadeThresholdBetweenHeaderTopAndBodyBottom:50.0];
  [(PXPhotosGridSettings *)self setFloatingHeaderFadeOverDistance:100.0];
  [(PXPhotosGridSettings *)self setFloatingHeaderButtonsFadeThresholdBetweenHeaderTopAndNextBodyTop:12.0];
  [(PXPhotosGridSettings *)self setFloatingHeaderButtonsFadeOverDistance:30.0];
  [(PXPhotosGridSettings *)self setAllPhotosAspectFitFocusAnimationStyle:0];
  [(PXPhotosGridSettings *)self setAllPhotosAspectFitFocusPadding:20.0];
  [(PXPhotosGridSettings *)self setAllPhotosAspectFillFocusAnimationStyle:0];
  [(PXPhotosGridSettings *)self setAllPhotosAspectFillFocusPadding:20.0];
  [(PXPhotosGridSettings *)self setPressedAnimationStyle:2];
  [(PXPhotosGridSettings *)self setPressedAnimationPadding:24.0];
  [(PXPhotosGridSettings *)self setForceBadgesOnAllAssets:0];
  [(PXPhotosGridSettings *)self setSidebarPadding:10.0];
}

@end