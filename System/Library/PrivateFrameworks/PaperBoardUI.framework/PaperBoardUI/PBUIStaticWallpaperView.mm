@interface PBUIStaticWallpaperView
+ (BOOL)isRunningInPreferencesApp;
- (BOOL)hasContentOutsideVisibleBounds;
- (BOOL)imageRequiresLuminanceTreatment;
- (BOOL)isDisplayingWallpaperWithConfiguration:(id)configuration forVariant:(int64_t)variant;
- (BOOL)workaround_alwaysForceNoTreatment;
- (CGSize)_imageSize;
- (PBUIStaticWallpaperView)initWithFrame:(CGRect)frame configuration:(id)configuration variant:(int64_t)variant cacheGroup:(id)group delegate:(id)delegate options:(unint64_t)options;
- (PLKColorBoxes)colorBoxes;
- (double)_contrastInContentViewRect:(CGRect)rect contrastWithinBoxes:(double *)boxes contrastBetweenBoxes:(double *)betweenBoxes;
- (double)contrast;
- (double)contrastInRect:(CGRect)rect contrastWithinBoxes:(double *)boxes contrastBetweenBoxes:(double *)betweenBoxes;
- (id)_averageColorInContentViewRect:(CGRect)rect smudgeRadius:(double)radius;
- (id)_computeAverageColor;
- (id)_createColorBoxes;
- (id)cacheUniqueIdentifier;
- (void)_displayImage:(id)image;
- (void)_generateImageForImage:(id)image cacheKey:(id)key options:(unint64_t)options downsampleFactor:(double)factor needsDimmingTreatment:(BOOL)treatment needsInactiveAppearanceTreatment:(BOOL)appearanceTreatment averageColorProvider:(id)provider generationHandler:(id)self0;
- (void)_setupContentViewWithOptions:(unint64_t)options;
- (void)_setupWallpaperImageFromConfiguration:(id)configuration options:(unint64_t)options;
- (void)_updateColorBoxesWithKey:(id)key image:(id)image;
- (void)preheatImageData;
- (void)setColorBoxes:(id)boxes;
- (void)setContentsRect:(CGRect)rect;
@end

@implementation PBUIStaticWallpaperView

- (void)_setupWallpaperImageFromConfiguration:(id)configuration options:(unint64_t)options
{
  v63 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  wallpaperOptions = [configurationCopy wallpaperOptions];
  wallpaperImageHashData = [configurationCopy wallpaperImageHashData];
  v48 = [wallpaperImageHashData base64EncodedStringWithOptions:0];
  [(PBUIStaticWallpaperView *)self setDisplayedImageHashData:wallpaperImageHashData];
  [(PBUIStaticWallpaperView *)self setDisplayedImageHashString:v48];
  wallpaperImage = [configurationCopy wallpaperImage];
  v7 = wallpaperImage;
  if (wallpaperImage)
  {
    [wallpaperImage size];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    [wallpaperOptions cropRect];
    v9 = v12;
    v11 = v13;
  }

  _canDownscaleSampleImage = [objc_opt_class() _canDownscaleSampleImage];
  v15 = fmax(v9, v11);
  v16 = v15 >= 16.0;
  v17 = v15 < 16.0;
  if (v15 < 16.0)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 16.0;
  }

  if (_canDownscaleSampleImage)
  {
    v19 = v17;
  }

  else
  {
    v19 = 1;
  }

  v43 = v19;
  if (_canDownscaleSampleImage)
  {
    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  if (_canDownscaleSampleImage)
  {
    v21 = v18;
  }

  else
  {
    v21 = 1.0;
  }

  [(PBUIStaticWallpaperView *)self _setSampleImage:v7, 1.0, v18];
  [(PBUIStaticWallpaperView *)self _setDisplayedImage:v7];
  v22 = PBUILogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = PBUIStringForWallpaperVariant([(PBUIWallpaperView *)self variant]);
    *buf = 138543618;
    v60 = v7;
    v61 = 2114;
    v62 = v23;
    _os_log_impl(&dword_21E67D000, v22, OS_LOG_TYPE_DEFAULT, "[LegacyPoster displayedImage] configuration wallpaper image for display image %{public}@ for variant %{public}@", buf, 0x16u);
  }

  [(PBUIStaticWallpaperView *)self _setDisplayedImageURL:0];
  cacheGroup = [(PBUIWallpaperView *)self cacheGroup];
  if ([cacheGroup length])
  {
    _canCacheImages = [objc_opt_class() _canCacheImages];
    traitCollection = [(PBUIStaticWallpaperView *)self traitCollection];
    if (_canCacheImages)
    {
      PBUIWallpaperBackdropParametersMakeIdentity(buf);
      v25 = [(PBUIWallpaperView *)self _cacheKeyForParameters:buf includingTint:0 downsampleFactor:traitCollection traitCollection:v21];
      v26 = 1;
      goto LABEL_23;
    }
  }

  else
  {
    traitCollection = [(PBUIStaticWallpaperView *)self traitCollection];
  }

  v25 = 0;
  v26 = 0;
LABEL_23:
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy_;
  v57[4] = __Block_byref_object_dispose_;
  v58 = 0;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __73__PBUIStaticWallpaperView__setupWallpaperImageFromConfiguration_options___block_invoke;
  v56[3] = &unk_278361FB8;
  v56[4] = self;
  v56[5] = v57;
  v27 = MEMORY[0x223D62EE0](v56);
  needsWallpaperDimmingTreatment = [configurationCopy needsWallpaperDimmingTreatment];
  needsInactiveAppearanceTreatment = [configurationCopy needsInactiveAppearanceTreatment];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __73__PBUIStaticWallpaperView__setupWallpaperImageFromConfiguration_options___block_invoke_2;
  v52[3] = &unk_278361FE0;
  v54 = v21;
  v55 = v43;
  v52[4] = self;
  v30 = v25;
  v53 = v30;
  [(PBUIStaticWallpaperView *)self _generateImageForImage:v7 cacheKey:v30 options:options downsampleFactor:needsWallpaperDimmingTreatment needsDimmingTreatment:needsInactiveAppearanceTreatment needsInactiveAppearanceTreatment:v27 averageColorProvider:v21 generationHandler:v52];
  if (v20)
  {
    if (v26)
    {
      PBUIWallpaperBackdropParametersMakeIdentity(buf);
      v31 = [(PBUIWallpaperView *)self _cacheKeyForParameters:buf includingTint:0 downsampleFactor:traitCollection traitCollection:1.0];
    }

    else
    {
      v31 = 0;
    }

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __73__PBUIStaticWallpaperView__setupWallpaperImageFromConfiguration_options___block_invoke_2;
    v50[3] = &unk_278362008;
    v50[4] = self;
    v32 = v31;
    v51 = v32;
    [(PBUIStaticWallpaperView *)self _generateImageForImage:v7 cacheKey:v32 options:options downsampleFactor:needsWallpaperDimmingTreatment needsDimmingTreatment:needsInactiveAppearanceTreatment needsInactiveAppearanceTreatment:v27 averageColorProvider:1.0 generationHandler:v50];
  }

  _computeAverageColor = [(PBUIStaticWallpaperView *)self _computeAverageColor];
  [(PBUIWallpaperView *)self resetLegibilitySettingsForAverageColor:_computeAverageColor];

  v34 = objc_alloc(getPUIColorStatisticsClass());
  colorBoxes = [(PBUIStaticWallpaperView *)self colorBoxes];
  v36 = [v34 initWithColorBoxes:colorBoxes];

  averageColor = [v36 averageColor];
  if (!averageColor || ([v36 averageColor], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D75348], "blackColor"), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v38, "_isSimilarToColor:withinPercentage:", v39, 0.00000011920929), v39, v38, averageColor, v40))
  {
    v41 = PBUILogCommon();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = PBUIStringForWallpaperVariant([(PBUIWallpaperView *)self variant]);
      *buf = 138543362;
      v60 = v42;
      _os_log_impl(&dword_21E67D000, v41, OS_LOG_TYPE_DEFAULT, "[LegacyPoster displayedImage] displayed image similar to black color for variant %{public}@!!", buf, 0xCu);
    }
  }

  _Block_object_dispose(v57, 8);
}

id __73__PBUIStaticWallpaperView__setupWallpaperImageFromConfiguration_options___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = [*(a1 + 32) _computeAverageColor];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  return v2;
}

void __73__PBUIStaticWallpaperView__setupWallpaperImageFromConfiguration_options___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PBUILogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = PBUIStringForWallpaperVariant([*(a1 + 32) variant]);
    v11 = 138544130;
    v12 = v3;
    v13 = 2048;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_21E67D000, v4, OS_LOG_TYPE_DEFAULT, "[LegacyPoster displayedImage] generated sample image %{public}@ at scale factor %f (same as display: %{BOOL}u) for variant %{public}@", &v11, 0x26u);
  }

  if (v3)
  {
    [*(a1 + 32) _setSampleImage:v3];
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 32) _setDisplayedImage:v3];
      v8 = *(a1 + 32);
      v9 = +[PBUIWallpaperCache wallpaperCache];
      v10 = [v9 imageURLForKey:*(a1 + 40)];
      [v8 _setDisplayedImageURL:v10];

      [*(a1 + 32) _displayImage:v3];
      [*(a1 + 32) _updateColorBoxesWithKey:*(a1 + 40) image:v3];
    }
  }
}

+ (BOOL)isRunningInPreferencesApp
{
  if (isRunningInPreferencesApp_onceToken != -1)
  {
    +[PBUIStaticWallpaperView isRunningInPreferencesApp];
  }

  return isRunningInPreferencesApp___result;
}

void __52__PBUIStaticWallpaperView_isRunningInPreferencesApp__block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isRunningInPreferencesApp___result = [v0 isEqualToString:@"com.apple.Preferences"];
}

- (BOOL)workaround_alwaysForceNoTreatment
{
  if (!+[PBUIStaticWallpaperView isRunningInPreferencesApp])
  {
    return 0;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

- (void)_generateImageForImage:(id)image cacheKey:(id)key options:(unint64_t)options downsampleFactor:(double)factor needsDimmingTreatment:(BOOL)treatment needsInactiveAppearanceTreatment:(BOOL)appearanceTreatment averageColorProvider:(id)provider generationHandler:(id)self0
{
  imageCopy = image;
  keyCopy = key;
  providerCopy = provider;
  handlerCopy = handler;
  objc_initWeak(location, self);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __178__PBUIStaticWallpaperView__generateImageForImage_cacheKey_options_downsampleFactor_needsDimmingTreatment_needsInactiveAppearanceTreatment_averageColorProvider_generationHandler___block_invoke;
  v38[3] = &unk_278362030;
  objc_copyWeak(v41, location);
  v41[1] = options;
  v38[4] = self;
  v21 = imageCopy;
  v39 = v21;
  appearanceTreatmentCopy = appearanceTreatment;
  v41[2] = *&factor;
  treatmentCopy = treatment;
  v22 = providerCopy;
  v40 = v22;
  v23 = MEMORY[0x223D62EE0](v38);
  v24 = v23;
  if (keyCopy)
  {
    v25 = options & 2;
    v26 = v25 >> 1;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __178__PBUIStaticWallpaperView__generateImageForImage_cacheKey_options_downsampleFactor_needsDimmingTreatment_needsInactiveAppearanceTreatment_averageColorProvider_generationHandler___block_invoke_2;
    v35[3] = &unk_278362058;
    v37 = v26;
    v36 = v23;
    v27 = MEMORY[0x223D62EE0](v35);
    v28 = +[PBUIWallpaperCache wallpaperCache];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __178__PBUIStaticWallpaperView__generateImageForImage_cacheKey_options_downsampleFactor_needsDimmingTreatment_needsInactiveAppearanceTreatment_averageColorProvider_generationHandler___block_invoke_3;
    v32[3] = &unk_2783620A8;
    v34 = v26;
    v29 = handlerCopy;
    v33 = v29;
    v30 = [v28 imageForKey:keyCopy generatingIfNecessaryWithBlock:v27 completion:v32];

    (*(v29 + 2))(v29, v30, v25 != 0);
    v31 = v36;
  }

  else
  {
    v31 = v23[2](v23);
    (*(handlerCopy + 2))(handlerCopy, v31, 1);
  }

  objc_destroyWeak(v41);
  objc_destroyWeak(location);
}

id __178__PBUIStaticWallpaperView__generateImageForImage_cacheKey_options_downsampleFactor_needsDimmingTreatment_needsInactiveAppearanceTreatment_averageColorProvider_generationHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained wallpaperDelegate];
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) workaround_alwaysForceNoTreatment];
  v6 = 0;
  if ((v5 & 1) == 0 && (v4 & 4) == 0)
  {
    v6 = [WeakRetained imageRequiresLuminanceTreatment];
  }

  v7 = *(a1 + 40);
  if (!v7)
  {
    v8 = [v3 wallpaperView:WeakRetained wallpaperConfigurationIncludingValueTypes:1];
    v7 = [v8 wallpaperImage];
  }

  [*(a1 + 32) setUntreatedWallpaperImage:v7];
  if (*(a1 + 80) != 1)
  {
    if ((v5 & 1) != 0 || (v6 & 1) == 0 && *(a1 + 72) <= 1.0 && ((v4 & 4) != 0 || *(a1 + 81) != 1))
    {
      goto LABEL_16;
    }

    v10 = (*(*(a1 + 48) + 16))();
    v9 = objc_alloc_init(getPUIWallpaperLegibilityTreatmentClass());
    [v9 setAverageColor:v10];
    [v9 setNeedsDimmingTreatment:*(a1 + 81)];
    [v9 setNeedsLuminanceTreatment:v6];

    if (!v9)
    {
      goto LABEL_16;
    }

LABEL_13:
    v11 = [objc_alloc(getPUICodableImageClass()) initWithUIImage:v7 error:0];
    v12 = [objc_alloc(getPUITreatImageRequestClass()) initWithImage:v11 downscaleFactor:v9 treatment:*(a1 + 72)];
    v13 = [getPUICARemoteRendererClass() remoteRendererIfPossible];
    v14 = [v13 renderRequest:v12 error:0];

    v15 = objc_alloc(MEMORY[0x277D755B8]);
    [v11 scale];
    v16 = [v15 _initWithIOSurface:v14 scale:0 orientation:?];
    v17 = [v16 pbui_CGImageBackedImageUsingDataProvider];

    goto LABEL_17;
  }

  getPUIWallpaperInactiveTreatmentClass();
  v9 = objc_opt_new();
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_16:
  v17 = v7;
LABEL_17:
  v18 = [v17 pbui_CGImageBackedImage];

  return v18;
}

uint64_t __178__PBUIStaticWallpaperView__generateImageForImage_cacheKey_options_downsampleFactor_needsDimmingTreatment_needsInactiveAppearanceTreatment_averageColorProvider_generationHandler___block_invoke_2(uint64_t a1, uint64_t *a2)
{
  v4 = MGGetBoolAnswer();
  v5 = 4;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = *a2 | v5;
  *a2 = v6;
  if ((*(a1 + 40) & 1) == 0)
  {
    *a2 = v6 | 1;
  }

  if (MGGetBoolAnswer())
  {
    *a2 |= 2uLL;
  }

  v7 = *(*(a1 + 32) + 16);

  return v7();
}

void __178__PBUIStaticWallpaperView__generateImageForImage_cacheKey_options_downsampleFactor_needsDimmingTreatment_needsInactiveAppearanceTreatment_averageColorProvider_generationHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __178__PBUIStaticWallpaperView__generateImageForImage_cacheKey_options_downsampleFactor_needsDimmingTreatment_needsInactiveAppearanceTreatment_averageColorProvider_generationHandler___block_invoke_4;
    v5[3] = &unk_278362080;
    v7 = *(a1 + 32);
    v6 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

- (id)cacheUniqueIdentifier
{
  displayedImageHashString = [(PBUIStaticWallpaperView *)self displayedImageHashString];
  v3 = [displayedImageHashString stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  return v3;
}

- (PBUIStaticWallpaperView)initWithFrame:(CGRect)frame configuration:(id)configuration variant:(int64_t)variant cacheGroup:(id)group delegate:(id)delegate options:(unint64_t)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = PBUIStaticWallpaperView;
  height = [(PBUIWallpaperView *)&v21 initWithFrame:configurationCopy configuration:variant variant:group cacheGroup:delegate delegate:options options:x, y, width, height];
  v19 = height;
  if (height)
  {
    *&height->_overallContrast = PBUIWallpaperViewUnknownContrast;
    height->_needsInactiveAppearanceTreatment = [configurationCopy needsInactiveAppearanceTreatment];
    [(PBUIStaticWallpaperView *)v19 _setupWallpaperImageFromConfiguration:configurationCopy options:options];
    [(PBUIStaticWallpaperView *)v19 _setupContentViewWithOptions:options];
  }

  return v19;
}

- (void)preheatImageData
{
  traitCollection = [(PBUIStaticWallpaperView *)self traitCollection];
  v4 = [(PBUIWallpaperView *)self _cacheKeyForParameters:v6 includingTint:0 downsampleFactor:traitCollection traitCollection:1.0];

  v5 = +[PBUIWallpaperCache wallpaperCache];
  [v5 warmupForKey:v4];
}

- (BOOL)isDisplayingWallpaperWithConfiguration:(id)configuration forVariant:(int64_t)variant
{
  configurationCopy = configuration;
  wallpaperImageHashData = [configurationCopy wallpaperImageHashData];
  displayedImageHashData = [(PBUIStaticWallpaperView *)self displayedImageHashData];
  wallpaperMode = [(PBUIWallpaperView *)self wallpaperMode];
  wallpaperOptions = [configurationCopy wallpaperOptions];
  wallpaperMode2 = [wallpaperOptions wallpaperMode];

  if (wallpaperMode == wallpaperMode2 && (v11 = -[PBUIWallpaperView needsWallpaperDimmingTreatment](self, "needsWallpaperDimmingTreatment"), v11 == [configurationCopy needsWallpaperDimmingTreatment]) && (v12 = -[PBUIStaticWallpaperView needsInactiveAppearanceTreatment](self, "needsInactiveAppearanceTreatment"), v12 == objc_msgSend(configurationCopy, "needsInactiveAppearanceTreatment")) && wallpaperImageHashData | displayedImageHashData)
  {
    v13 = BSEqualObjects();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_computeAverageColor
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  [(PBUIStaticWallpaperView *)self _imageSize];

  return [(PBUIStaticWallpaperView *)self _averageColorInContentViewRect:v3 smudgeRadius:v4, v5, v6, 0.0];
}

- (BOOL)hasContentOutsideVisibleBounds
{
  _displayedImage = [(PBUIStaticWallpaperView *)self _displayedImage];
  [_displayedImage size];
  v5 = v4;
  v7 = v6;

  [(PBUIStaticWallpaperView *)self bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  if (round(v5) <= round(CGRectGetWidth(v13)))
  {
    return 0;
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  return round(v7) > round(CGRectGetHeight(v14));
}

- (void)setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([MEMORY[0x277D75D18] _isInAnimationBlock])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__PBUIStaticWallpaperView_setContentsRect___block_invoke;
    v11[3] = &unk_2783620D0;
    v11[4] = self;
    *&v11[5] = x;
    *&v11[6] = y;
    *&v11[7] = width;
    *&v11[8] = height;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__PBUIStaticWallpaperView_setContentsRect___block_invoke_2;
    v10[3] = &unk_2783620F8;
    v10[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v11 animations:v10 completion:0.0];
  }

  else
  {
    contentView = [(PBUIWallpaperView *)self contentView];
    layer = [contentView layer];
    [layer setContentsRect:{x, y, width, height}];
  }
}

void __43__PBUIStaticWallpaperView_setContentsRect___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _beginDisallowRasterizationBlock];
  v3 = [*(a1 + 32) contentView];
  v2 = [v3 layer];
  [v2 setContentsRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (BOOL)imageRequiresLuminanceTreatment
{
  legibilitySettings = [(PBUIWallpaperView *)self legibilitySettings];
  style = [legibilitySettings style];

  return style != 2;
}

- (double)contrast
{
  colorBoxes = [(PBUIStaticWallpaperView *)self colorBoxes];
  [colorBoxes contrast];
  v4 = v3;

  return v4;
}

- (double)contrastInRect:(CGRect)rect contrastWithinBoxes:(double *)boxes contrastBetweenBoxes:(double *)betweenBoxes
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  contentView = [(PBUIWallpaperView *)self contentView];

  if (contentView)
  {
    v14.receiver = self;
    v14.super_class = PBUIStaticWallpaperView;
    [(PBUIWallpaperView *)&v14 contrastInRect:boxes contrastWithinBoxes:betweenBoxes contrastBetweenBoxes:x, y, width, height];
  }

  else
  {

    [(PBUIStaticWallpaperView *)self _contrastInContentViewRect:boxes contrastWithinBoxes:betweenBoxes contrastBetweenBoxes:x, y, width, height];
  }

  return result;
}

- (double)_contrastInContentViewRect:(CGRect)rect contrastWithinBoxes:(double *)boxes contrastBetweenBoxes:(double *)betweenBoxes
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  colorBoxes = [(PBUIStaticWallpaperView *)self colorBoxes];
  v12 = soft_PLKCalculateContrastFromColorBoxes(colorBoxes, boxes, betweenBoxes, x, y, width, height);

  return v12;
}

- (id)_averageColorInContentViewRect:(CGRect)rect smudgeRadius:(double)radius
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  colorBoxes = [(PBUIStaticWallpaperView *)self colorBoxes];
  v10 = soft_PLKAverageColorFromColorBoxes(colorBoxes, x, y, width, height, radius);

  return v10;
}

- (void)_setupContentViewWithOptions:(unint64_t)options
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [PBUIStaticWallpaperImageView alloc];
  _displayedImage = [(PBUIStaticWallpaperView *)self _displayedImage];
  v6 = [(PBUIStaticWallpaperImageView *)v4 initWithImage:_displayedImage];

  [(PBUIStaticWallpaperImageView *)v6 setOpaque:1];
  layer = [(PBUIStaticWallpaperImageView *)v6 layer];
  [layer setContentsOpaque:1];

  v8 = PBUILogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    _displayedImage2 = [(PBUIStaticWallpaperView *)self _displayedImage];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = _displayedImage2;
    _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_INFO, "set up content view %{public}@ with image %{public}@", &v10, 0x16u);
  }

  [(PBUIStaticWallpaperView *)self _setUpStaticImageContentView:v6];
  [(PBUIWallpaperView *)self setContentView:v6];
}

- (void)_displayImage:(id)image
{
  imageCopy = image;
  contentView = [(PBUIWallpaperView *)self contentView];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [contentView setImage:imageCopy];
    [imageCopy size];
    [contentView setBounds:{0.0, 0.0, v7, v8}];
  }
}

- (CGSize)_imageSize
{
  wallpaperImage = [(PBUIStaticWallpaperView *)self wallpaperImage];
  [wallpaperImage size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)_createColorBoxes
{
  v3 = 0;
  if ((soft_PUIFeatureEnabled(0) & 1) == 0)
  {
    _wallpaperImageForAnalysis = [(PBUIStaticWallpaperView *)self _wallpaperImageForAnalysis];
    v3 = [getPLKColorBoxesClass() colorBoxesForImage:_wallpaperImageForAnalysis];
  }

  return v3;
}

- (void)_updateColorBoxesWithKey:(id)key image:(id)image
{
  keyCopy = key;
  if (keyCopy)
  {
    pbui_CGImageBackedImage = [image pbui_CGImageBackedImage];
    v7 = +[PBUIWallpaperCache wallpaperCache];
    v8 = [v7 colorBoxesForKey:keyCopy generatingIfNeceesaryFromImage:pbui_CGImageBackedImage];

    [(PBUIStaticWallpaperView *)self setColorBoxes:v8];
  }

  else
  {
    pbui_CGImageBackedImage = [(PBUIStaticWallpaperView *)self _createColorBoxes];
    [(PBUIStaticWallpaperView *)self setColorBoxes:pbui_CGImageBackedImage];
  }
}

- (void)setColorBoxes:(id)boxes
{
  boxesCopy = boxes;
  if (self->_colorBoxes != boxesCopy)
  {
    v7 = boxesCopy;
    objc_storeStrong(&self->_colorBoxes, boxes);
    [(PLKColorBoxes *)v7 contrast];
    boxesCopy = v7;
    self->_overallContrast = v6;
  }
}

- (PLKColorBoxes)colorBoxes
{
  colorBoxes = self->_colorBoxes;
  if (!colorBoxes)
  {
    _createColorBoxes = [(PBUIStaticWallpaperView *)self _createColorBoxes];
    [(PBUIStaticWallpaperView *)self setColorBoxes:_createColorBoxes];

    colorBoxes = self->_colorBoxes;
  }

  return colorBoxes;
}

@end