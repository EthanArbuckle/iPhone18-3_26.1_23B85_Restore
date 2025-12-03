@interface PXZoomablePhotosSettings
+ (NSArray)columnChoices;
+ (NSArray)validColumns;
+ (PXZoomablePhotosSettings)sharedInstance;
- (NSArray)columns;
- (PXZoomablePhotosSettings)init;
- (void)setDefaultValues;
@end

@implementation PXZoomablePhotosSettings

+ (PXZoomablePhotosSettings)sharedInstance
{
  if (sharedInstance_onceToken_5075 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_5075, &__block_literal_global_5076);
  }

  v3 = sharedInstance__sharedInstance_5077;

  return v3;
}

uint64_t __42__PXZoomablePhotosSettings_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_5077 = objc_alloc_init(PXZoomablePhotosSettings);

  return MEMORY[0x2821F96F8]();
}

- (PXZoomablePhotosSettings)init
{
  v5.receiver = self;
  v5.super_class = PXZoomablePhotosSettings;
  v2 = [(PXZoomablePhotosSettings *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXZoomablePhotosSettings *)v2 setDefaultValues];
  }

  return v3;
}

- (void)setDefaultValues
{
  [(PXZoomablePhotosSettings *)self setEnablePinch:1];
  [(PXZoomablePhotosSettings *)self setEnableBadges:1];
  [(PXZoomablePhotosSettings *)self setEnableInlineVideo:1];
  [(PXZoomablePhotosSettings *)self setEnableInlineSpatialPhoto:1];
  [(PXZoomablePhotosSettings *)self setEnableOneColumn:1];
  [(PXZoomablePhotosSettings *)self setEnableHeaderBlur:0];
  [(PXZoomablePhotosSettings *)self setEnableDecadesDensity:0];
  [(PXZoomablePhotosSettings *)self setEnableCrossfadeFallback:1];
  [(PXZoomablePhotosSettings *)self setEnableDenseLevelsInSelectMode:1];
  [(PXZoomablePhotosSettings *)self setDecadesDensityScale:0.5];
  [(PXZoomablePhotosSettings *)self setIndividualLevelMinimumScreensOfContent:0.0];
  [(PXZoomablePhotosSettings *)self setDenseLevelMinimumScreensOfContent:0.4];
  [(PXZoomablePhotosSettings *)self setHeaderSpaceMinimumScreensOfContent:1.5];
  [(PXZoomablePhotosSettings *)self setShiftingRequiredScreensTopDistance:2.0];
  [(PXZoomablePhotosSettings *)self setTitleUseDateRange:1];
  [(PXZoomablePhotosSettings *)self setZoomingHeaderTintOpacity:0.9];
  [(PXZoomablePhotosSettings *)self setTapsZoomsToLastIndividualDensity:1];
  [(PXZoomablePhotosSettings *)self setForceSaliency:0];
  [(PXZoomablePhotosSettings *)self setEnableDebugLayers:0];
  [(PXZoomablePhotosSettings *)self setEnableDebugSprites:0];
  [(PXZoomablePhotosSettings *)self setColumnsChoiceIndex:0];
  [(PXZoomablePhotosSettings *)self setCardsCornerRadius:8.0];
  [(PXZoomablePhotosSettings *)self setCornerRadius:1.5];
  [(PXZoomablePhotosSettings *)self setAspectFitCornerRadius:6.0];
  [(PXZoomablePhotosSettings *)self setInteritemSpacing:1.5];
  [(PXZoomablePhotosSettings *)self setAspectFitInteritemSpacing:6.0];
  [(PXZoomablePhotosSettings *)self setCardsInteritemSpacing:8.0];
  [(PXZoomablePhotosSettings *)self setPanoramaCompactInteritemSpacing:2.0];
  [(PXZoomablePhotosSettings *)self setPanoramaRegularInteritemSpacing:10.0];
  [(PXZoomablePhotosSettings *)self setCardsAspectRatio:0.666666667];
  [(PXZoomablePhotosSettings *)self setRubberBandEffect:1];
  [(PXZoomablePhotosSettings *)self setZoomDecelerationRate:992.0];
  [(PXZoomablePhotosSettings *)self setZoomSpringStiffness:150.0];
  [(PXZoomablePhotosSettings *)self setZoomSpringDamping:1.0];
  [(PXZoomablePhotosSettings *)self setRecenterSpringStiffness:100.0];
  [(PXZoomablePhotosSettings *)self setRecenterSpringDamping:1.0];
  [(PXZoomablePhotosSettings *)self setZoomOutRubberBanding:5.0];
  [(PXZoomablePhotosSettings *)self setZoomInRubberBanding:0.5];
  [(PXZoomablePhotosSettings *)self setPinchSmoothingDuration:0.0333333333];
  [(PXZoomablePhotosSettings *)self setSliderSmoothingDuration:0.2];
  [(PXZoomablePhotosSettings *)self setMacPinchGestureDampening:0.5];
  [(PXZoomablePhotosSettings *)self setSimulateEmptyLibrary:0];
  [(PXZoomablePhotosSettings *)self setSimulateMinimumPhotoCount:0];
  [(PXZoomablePhotosSettings *)self setMaxPhotoCount:0];
  [(PXZoomablePhotosSettings *)self setOnlyPhotosFromToday:0];
  [(PXZoomablePhotosSettings *)self setEnableAutoCrossfade:1];
  [(PXZoomablePhotosSettings *)self setAlphaMaxAcceptableScale:2.5];
  [(PXZoomablePhotosSettings *)self setAlphaMinAcceptableCoverage:0.5];
  [(PXZoomablePhotosSettings *)self setMinAcceptableCoverage:0.3];
  [(PXZoomablePhotosSettings *)self setAlphaDistanceForDirectionChange:0.025];
  [(PXZoomablePhotosSettings *)self setAlphaModeTransitionDuration:0.3];
  [(PXZoomablePhotosSettings *)self setAlphaCrossfadeMinDuration:0.2];
  [(PXZoomablePhotosSettings *)self setAlphaCrossfadeMaxDuration:1.5];
  [(PXZoomablePhotosSettings *)self setHideBadgesDuringZoom:0];
  [(PXZoomablePhotosSettings *)self setPreheatDenserZoomLevels:1];
  [(PXZoomablePhotosSettings *)self setPreheatThumbnailsWhenIdle:0];
  [(PXZoomablePhotosSettings *)self setMaxColumnsForSaliency:7];
  [(PXZoomablePhotosSettings *)self setMaxColumnsForSingleDate:3];
  [(PXZoomablePhotosSettings *)self setEnableBlurEffect:1];
  [(PXZoomablePhotosSettings *)self setMaxBlurRadius:5.0];
  [(PXZoomablePhotosSettings *)self setBlurDimmingStrength:1.0];
  [(PXZoomablePhotosSettings *)self setEnableBlurDebugLayers:0];
  [(PXZoomablePhotosSettings *)self setUnfoldInitialPercentage:0.4];
  [(PXZoomablePhotosSettings *)self setUnfoldVerticalShiftCompensation:0.3];
  [(PXZoomablePhotosSettings *)self setUnfoldEaseOutAmount:1.0];

  [(PXZoomablePhotosSettings *)self setUnfoldDebugLogging:0];
}

- (NSArray)columns
{
  v3 = +[PXZoomablePhotosSettings columnChoices];
  columnsChoiceIndex = [(PXZoomablePhotosSettings *)self columnsChoiceIndex];
  v5 = [v3 count];
  if (columnsChoiceIndex >= v5 - 1)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = columnsChoiceIndex;
  }

  v7 = [v3 objectAtIndexedSubscript:v6];

  return v7;
}

+ (NSArray)columnChoices
{
  if (columnChoices_onceToken != -1)
  {
    dispatch_once(&columnChoices_onceToken, &__block_literal_global_7);
  }

  v3 = columnChoices_columnChoices;

  return v3;
}

void __41__PXZoomablePhotosSettings_columnChoices__block_invoke()
{
  v0 = columnChoices_columnChoices;
  columnChoices_columnChoices = &unk_282C48210;
}

+ (NSArray)validColumns
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__PXZoomablePhotosSettings_validColumns__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (validColumns_onceToken != -1)
  {
    dispatch_once(&validColumns_onceToken, block);
  }

  v2 = validColumns_validColumns;

  return v2;
}

void __40__PXZoomablePhotosSettings_validColumns__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = [*(a1 + 32) columnChoices];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__PXZoomablePhotosSettings_validColumns__block_invoke_2;
  v8[3] = &unk_2782982D0;
  v9 = v2;
  v4 = v2;
  [v3 enumerateObjectsUsingBlock:v8];

  v5 = [v4 allObjects];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];
  v7 = validColumns_validColumns;
  validColumns_validColumns = v6;
}

void __40__PXZoomablePhotosSettings_validColumns__block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__PXZoomablePhotosSettings_validColumns__block_invoke_3;
  v3[3] = &unk_2782982A8;
  v4 = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v3];
}

@end