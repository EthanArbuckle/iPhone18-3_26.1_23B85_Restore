@interface PBUIStaticWallpaperView
+ (BOOL)isRunningInPreferencesApp;
- (BOOL)hasContentOutsideVisibleBounds;
- (BOOL)imageRequiresLuminanceTreatment;
- (BOOL)isDisplayingWallpaperWithConfiguration:(id)a3 forVariant:(int64_t)a4;
- (BOOL)workaround_alwaysForceNoTreatment;
- (CGSize)_imageSize;
- (PBUIStaticWallpaperView)initWithFrame:(CGRect)a3 configuration:(id)a4 variant:(int64_t)a5 cacheGroup:(id)a6 delegate:(id)a7 options:(unint64_t)a8;
- (PLKColorBoxes)colorBoxes;
- (double)_contrastInContentViewRect:(CGRect)a3 contrastWithinBoxes:(double *)a4 contrastBetweenBoxes:(double *)a5;
- (double)contrast;
- (double)contrastInRect:(CGRect)a3 contrastWithinBoxes:(double *)a4 contrastBetweenBoxes:(double *)a5;
- (id)_averageColorInContentViewRect:(CGRect)a3 smudgeRadius:(double)a4;
- (id)_computeAverageColor;
- (id)_createColorBoxes;
- (id)cacheUniqueIdentifier;
- (void)_displayImage:(id)a3;
- (void)_generateImageForImage:(id)a3 cacheKey:(id)a4 options:(unint64_t)a5 downsampleFactor:(double)a6 needsDimmingTreatment:(BOOL)a7 needsInactiveAppearanceTreatment:(BOOL)a8 averageColorProvider:(id)a9 generationHandler:(id)a10;
- (void)_setupContentViewWithOptions:(unint64_t)a3;
- (void)_setupWallpaperImageFromConfiguration:(id)a3 options:(unint64_t)a4;
- (void)_updateColorBoxesWithKey:(id)a3 image:(id)a4;
- (void)preheatImageData;
- (void)setColorBoxes:(id)a3;
- (void)setContentsRect:(CGRect)a3;
@end

@implementation PBUIStaticWallpaperView

- (void)_setupWallpaperImageFromConfiguration:(id)a3 options:(unint64_t)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v44 = [v5 wallpaperOptions];
  v49 = [v5 wallpaperImageHashData];
  v48 = [v49 base64EncodedStringWithOptions:0];
  [(PBUIStaticWallpaperView *)self setDisplayedImageHashData:v49];
  [(PBUIStaticWallpaperView *)self setDisplayedImageHashString:v48];
  v6 = [v5 wallpaperImage];
  v7 = v6;
  if (v6)
  {
    [v6 size];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    [v44 cropRect];
    v9 = v12;
    v11 = v13;
  }

  v14 = [objc_opt_class() _canDownscaleSampleImage];
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

  if (v14)
  {
    v19 = v17;
  }

  else
  {
    v19 = 1;
  }

  v43 = v19;
  if (v14)
  {
    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  if (v14)
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
  v47 = [(PBUIWallpaperView *)self cacheGroup];
  if ([v47 length])
  {
    v24 = [objc_opt_class() _canCacheImages];
    v46 = [(PBUIStaticWallpaperView *)self traitCollection];
    if (v24)
    {
      PBUIWallpaperBackdropParametersMakeIdentity(buf);
      v25 = [(PBUIWallpaperView *)self _cacheKeyForParameters:buf includingTint:0 downsampleFactor:v46 traitCollection:v21];
      v26 = 1;
      goto LABEL_23;
    }
  }

  else
  {
    v46 = [(PBUIStaticWallpaperView *)self traitCollection];
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
  v28 = [v5 needsWallpaperDimmingTreatment];
  v29 = [v5 needsInactiveAppearanceTreatment];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __73__PBUIStaticWallpaperView__setupWallpaperImageFromConfiguration_options___block_invoke_2;
  v52[3] = &unk_278361FE0;
  v54 = v21;
  v55 = v43;
  v52[4] = self;
  v30 = v25;
  v53 = v30;
  [(PBUIStaticWallpaperView *)self _generateImageForImage:v7 cacheKey:v30 options:a4 downsampleFactor:v28 needsDimmingTreatment:v29 needsInactiveAppearanceTreatment:v27 averageColorProvider:v21 generationHandler:v52];
  if (v20)
  {
    if (v26)
    {
      PBUIWallpaperBackdropParametersMakeIdentity(buf);
      v31 = [(PBUIWallpaperView *)self _cacheKeyForParameters:buf includingTint:0 downsampleFactor:v46 traitCollection:1.0];
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
    [(PBUIStaticWallpaperView *)self _generateImageForImage:v7 cacheKey:v32 options:a4 downsampleFactor:v28 needsDimmingTreatment:v29 needsInactiveAppearanceTreatment:v27 averageColorProvider:1.0 generationHandler:v50];
  }

  v33 = [(PBUIStaticWallpaperView *)self _computeAverageColor];
  [(PBUIWallpaperView *)self resetLegibilitySettingsForAverageColor:v33];

  v34 = objc_alloc(getPUIColorStatisticsClass());
  v35 = [(PBUIStaticWallpaperView *)self colorBoxes];
  v36 = [v34 initWithColorBoxes:v35];

  v37 = [v36 averageColor];
  if (!v37 || ([v36 averageColor], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D75348], "blackColor"), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v38, "_isSimilarToColor:withinPercentage:", v39, 0.00000011920929), v39, v38, v37, v40))
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

{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PBUILogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PBUIStringForWallpaperVariant([*(a1 + 32) variant]);
    v9 = 138543618;
    v10 = v3;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_21E67D000, v4, OS_LOG_TYPE_DEFAULT, "[LegacyPoster displayedImage] generated display image %{public}@ for variant %{public}@", &v9, 0x16u);
  }

  if (v3)
  {
    [*(a1 + 32) _setDisplayedImage:v3];
    v6 = *(a1 + 32);
    v7 = +[PBUIWallpaperCache wallpaperCache];
    v8 = [v7 imageURLForKey:*(a1 + 40)];
    [v6 _setDisplayedImageURL:v8];

    [*(a1 + 32) _displayImage:v3];
    [*(a1 + 32) _updateColorBoxesWithKey:*(a1 + 40) image:v3];
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

  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (void)_generateImageForImage:(id)a3 cacheKey:(id)a4 options:(unint64_t)a5 downsampleFactor:(double)a6 needsDimmingTreatment:(BOOL)a7 needsInactiveAppearanceTreatment:(BOOL)a8 averageColorProvider:(id)a9 generationHandler:(id)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a9;
  v20 = a10;
  objc_initWeak(location, self);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __178__PBUIStaticWallpaperView__generateImageForImage_cacheKey_options_downsampleFactor_needsDimmingTreatment_needsInactiveAppearanceTreatment_averageColorProvider_generationHandler___block_invoke;
  v38[3] = &unk_278362030;
  objc_copyWeak(v41, location);
  v41[1] = a5;
  v38[4] = self;
  v21 = v17;
  v39 = v21;
  v42 = a8;
  v41[2] = *&a6;
  v43 = a7;
  v22 = v19;
  v40 = v22;
  v23 = MEMORY[0x223D62EE0](v38);
  v24 = v23;
  if (v18)
  {
    v25 = a5 & 2;
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
    v29 = v20;
    v33 = v29;
    v30 = [v28 imageForKey:v18 generatingIfNecessaryWithBlock:v27 completion:v32];

    (*(v29 + 2))(v29, v30, v25 != 0);
    v31 = v36;
  }

  else
  {
    v31 = v23[2](v23);
    (*(v20 + 2))(v20, v31, 1);
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
  v2 = [(PBUIStaticWallpaperView *)self displayedImageHashString];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  return v3;
}

- (PBUIStaticWallpaperView)initWithFrame:(CGRect)a3 configuration:(id)a4 variant:(int64_t)a5 cacheGroup:(id)a6 delegate:(id)a7 options:(unint64_t)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v21.receiver = self;
  v21.super_class = PBUIStaticWallpaperView;
  v18 = [(PBUIWallpaperView *)&v21 initWithFrame:v17 configuration:a5 variant:a6 cacheGroup:a7 delegate:a8 options:x, y, width, height];
  v19 = v18;
  if (v18)
  {
    *&v18->_overallContrast = PBUIWallpaperViewUnknownContrast;
    v18->_needsInactiveAppearanceTreatment = [v17 needsInactiveAppearanceTreatment];
    [(PBUIStaticWallpaperView *)v19 _setupWallpaperImageFromConfiguration:v17 options:a8];
    [(PBUIStaticWallpaperView *)v19 _setupContentViewWithOptions:a8];
  }

  return v19;
}

- (void)preheatImageData
{
  v3 = [(PBUIStaticWallpaperView *)self traitCollection];
  v4 = [(PBUIWallpaperView *)self _cacheKeyForParameters:v6 includingTint:0 downsampleFactor:v3 traitCollection:1.0];

  v5 = +[PBUIWallpaperCache wallpaperCache];
  [v5 warmupForKey:v4];
}

- (BOOL)isDisplayingWallpaperWithConfiguration:(id)a3 forVariant:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 wallpaperImageHashData];
  v7 = [(PBUIStaticWallpaperView *)self displayedImageHashData];
  v8 = [(PBUIWallpaperView *)self wallpaperMode];
  v9 = [v5 wallpaperOptions];
  v10 = [v9 wallpaperMode];

  if (v8 == v10 && (v11 = -[PBUIWallpaperView needsWallpaperDimmingTreatment](self, "needsWallpaperDimmingTreatment"), v11 == [v5 needsWallpaperDimmingTreatment]) && (v12 = -[PBUIStaticWallpaperView needsInactiveAppearanceTreatment](self, "needsInactiveAppearanceTreatment"), v12 == objc_msgSend(v5, "needsInactiveAppearanceTreatment")) && v6 | v7)
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
  v3 = [(PBUIStaticWallpaperView *)self _displayedImage];
  [v3 size];
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

- (void)setContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v9 = [(PBUIWallpaperView *)self contentView];
    v8 = [v9 layer];
    [v8 setContentsRect:{x, y, width, height}];
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
  v2 = [(PBUIWallpaperView *)self legibilitySettings];
  v3 = [v2 style];

  return v3 != 2;
}

- (double)contrast
{
  v2 = [(PBUIStaticWallpaperView *)self colorBoxes];
  [v2 contrast];
  v4 = v3;

  return v4;
}

- (double)contrastInRect:(CGRect)a3 contrastWithinBoxes:(double *)a4 contrastBetweenBoxes:(double *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = [(PBUIWallpaperView *)self contentView];

  if (v12)
  {
    v14.receiver = self;
    v14.super_class = PBUIStaticWallpaperView;
    [(PBUIWallpaperView *)&v14 contrastInRect:a4 contrastWithinBoxes:a5 contrastBetweenBoxes:x, y, width, height];
  }

  else
  {

    [(PBUIStaticWallpaperView *)self _contrastInContentViewRect:a4 contrastWithinBoxes:a5 contrastBetweenBoxes:x, y, width, height];
  }

  return result;
}

- (double)_contrastInContentViewRect:(CGRect)a3 contrastWithinBoxes:(double *)a4 contrastBetweenBoxes:(double *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [(PBUIStaticWallpaperView *)self colorBoxes];
  v12 = soft_PLKCalculateContrastFromColorBoxes(v11, a4, a5, x, y, width, height);

  return v12;
}

- (id)_averageColorInContentViewRect:(CGRect)a3 smudgeRadius:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(PBUIStaticWallpaperView *)self colorBoxes];
  v10 = soft_PLKAverageColorFromColorBoxes(v9, x, y, width, height, a4);

  return v10;
}

- (void)_setupContentViewWithOptions:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [PBUIStaticWallpaperImageView alloc];
  v5 = [(PBUIStaticWallpaperView *)self _displayedImage];
  v6 = [(PBUIStaticWallpaperImageView *)v4 initWithImage:v5];

  [(PBUIStaticWallpaperImageView *)v6 setOpaque:1];
  v7 = [(PBUIStaticWallpaperImageView *)v6 layer];
  [v7 setContentsOpaque:1];

  v8 = PBUILogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(PBUIStaticWallpaperView *)self _displayedImage];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_INFO, "set up content view %{public}@ with image %{public}@", &v10, 0x16u);
  }

  [(PBUIStaticWallpaperView *)self _setUpStaticImageContentView:v6];
  [(PBUIWallpaperView *)self setContentView:v6];
}

- (void)_displayImage:(id)a3
{
  v9 = a3;
  v4 = [(PBUIWallpaperView *)self contentView];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v4 setImage:v9];
    [v9 size];
    [v4 setBounds:{0.0, 0.0, v7, v8}];
  }
}

- (CGSize)_imageSize
{
  v2 = [(PBUIStaticWallpaperView *)self wallpaperImage];
  [v2 size];
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
    v4 = [(PBUIStaticWallpaperView *)self _wallpaperImageForAnalysis];
    v3 = [getPLKColorBoxesClass() colorBoxesForImage:v4];
  }

  return v3;
}

- (void)_updateColorBoxesWithKey:(id)a3 image:(id)a4
{
  v9 = a3;
  if (v9)
  {
    v6 = [a4 pbui_CGImageBackedImage];
    v7 = +[PBUIWallpaperCache wallpaperCache];
    v8 = [v7 colorBoxesForKey:v9 generatingIfNeceesaryFromImage:v6];

    [(PBUIStaticWallpaperView *)self setColorBoxes:v8];
  }

  else
  {
    v6 = [(PBUIStaticWallpaperView *)self _createColorBoxes];
    [(PBUIStaticWallpaperView *)self setColorBoxes:v6];
  }
}

- (void)setColorBoxes:(id)a3
{
  v5 = a3;
  if (self->_colorBoxes != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_colorBoxes, a3);
    [(PLKColorBoxes *)v7 contrast];
    v5 = v7;
    self->_overallContrast = v6;
  }
}

- (PLKColorBoxes)colorBoxes
{
  colorBoxes = self->_colorBoxes;
  if (!colorBoxes)
  {
    v4 = [(PBUIStaticWallpaperView *)self _createColorBoxes];
    [(PBUIStaticWallpaperView *)self setColorBoxes:v4];

    colorBoxes = self->_colorBoxes;
  }

  return colorBoxes;
}

@end