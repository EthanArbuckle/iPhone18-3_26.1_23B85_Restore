@interface PBUIWallpaperView
+ (Class)wallpaperViewClassForConfiguration:(id)a3;
+ (Class)wallpaperViewClassForWallpaperType:(int64_t)a3;
- (BOOL)_dontUseShadow;
- (BOOL)_isParallaxEnabled;
- (BOOL)_isParallaxMotionEnabled;
- (BOOL)_isVisible;
- (BOOL)_needsFallbackImageForBackdropGeneratedImage:(id)a3;
- (CGRect)cropRect;
- (NSString)variantCacheIdentifier;
- (PBUILegibilitySettingsProviderDelegate)delegate;
- (PBUIWallpaperView)initWithFrame:(CGRect)a3 configuration:(id)a4 variant:(int64_t)a5 cacheGroup:(id)a6 delegate:(id)a7 options:(unint64_t)a8;
- (PBUIWallpaperViewDelegate)wallpaperDelegate;
- (PBUIWallpaperViewInternalObserver)internalObserver;
- (PLKLegibilityEnvironment)legibilityEnvironment;
- (_UILegibilitySettings)legibilitySettings;
- (double)_contrastInContentViewRect:(CGRect)a3 contrastWithinBoxes:(double *)a4 contrastBetweenBoxes:(double *)a5;
- (double)contrastInRect:(CGRect)a3 contrastWithinBoxes:(double *)a4 contrastBetweenBoxes:(double *)a5;
- (id)_backdrop_generateImageFromImage:(id)a3 forBackdropParameters:(id *)a4 includeTint:(BOOL)a5 traitCollection:(id)a6;
- (id)_blurredImage;
- (id)_blurredImageURL;
- (id)_cacheKeyForParameters:(id *)a3 includingTint:(BOOL)a4 downsampleFactor:(double)a5 traitCollection:(id)a6;
- (id)_fallbackImageWithOriginalSize:(CGSize)a3;
- (id)_generateImageFromImage:(id)a3 forBackdropParameters:(id *)a4 includeTint:(BOOL)a5 traitCollection:(id)a6;
- (id)_imageForBackdropParameters:(id *)a3 includeTint:(BOOL)a4 overrideTraitCollection:(id)a5;
- (id)_imageURLForBackdropParameters:(id *)a3 includeTint:(BOOL)a4 overrideTraitCollection:(id)a5;
- (id)_material_generateImageFromImage:(id)a3 forBackdropParameters:(id *)a4 traitCollection:(id)a5;
- (id)_primaryColorOverride;
- (id)averageColorInRect:(CGRect)a3 withSmudgeRadius:(double)a4;
- (id)imageForBackdropParameters:(id *)a3 includeTint:(BOOL)a4 overrideTraitCollection:(id)a5;
- (id)imageURLForBackdropParameters:(id *)a3 includeTint:(BOOL)a4 overrideTraitCollection:(id)a5;
- (id)snapshotImage;
- (void)_addParallax;
- (void)_applyParallaxSettings;
- (void)_beginDisallowRasterizationBlock;
- (void)_endDisallowRasterizationBlock;
- (void)_notifyBlursInvalidated;
- (void)_removeParallax;
- (void)_setLegibilitySettings:(id)a3 notify:(BOOL)a4;
- (void)_updateContentViewScale;
- (void)_updateGeneratingBlurs;
- (void)_updateLegibilitySettingsForAverageColor:(id)a3 force:(BOOL)a4 notify:(BOOL)a5;
- (void)_updateParallax;
- (void)_updateRasterizationState;
- (void)_updateScaleFactor;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)legibilitySettingsDidChange;
- (void)resetLegibilitySettingsForAverageColor:(id)a3;
- (void)setContentView:(id)a3;
- (void)setGeneratesBlurredImages:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setParallaxEnabled:(BOOL)a3;
- (void)setTransformOptions:(unint64_t)a3;
- (void)setVariant:(int64_t)a3 withAnimationFactory:(id)a4;
- (void)setZoomFactor:(double)a3 withAnimationFactory:(id)a4;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation PBUIWallpaperView

- (void)layoutSubviews
{
  [(PBUIWallpaperView *)self bounds];
  [(UIView *)self->_parallaxView setFrame:?];
  UIRectGetCenter();
  [(UIView *)self->_contentView setCenter:?];

  [(PBUIWallpaperView *)self _updateScaleFactor];
}

- (void)_updateScaleFactor
{
  [(UIView *)self->_contentView bounds];
  v5 = v4;
  v6 = fabs(v4);
  v7 = fabs(v3);
  if (self->_contentView)
  {
    v8 = v6 < 2.22044605e-16;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && v7 >= 2.22044605e-16)
  {
    v10 = v3;
    v11 = 0.0;
    if ([(PBUIWallpaperView *)self _isParallaxEnabled:2.22044605e-16])
    {
      v12 = 0.0;
      if ([objc_opt_class() _shouldScaleForParallax])
      {
        [(PBUIWallpaperParallaxSettings *)self->_parallaxSettings overhangX];
        v12 = (v13 + v13) * self->_parallaxFactor;
        [(PBUIWallpaperParallaxSettings *)self->_parallaxSettings overhangY];
        v11 = (v14 + v14) * self->_parallaxFactor;
      }
    }

    else
    {
      v12 = 0.0;
    }

    [(PBUIWallpaperView *)self bounds];
    v16 = v12 + v15;
    v18 = v11 + v17;
    v19 = 1.0;
    if (v16 > v5 || v18 > v10)
    {
      v19 = v16 / v5;
      if (v16 / v5 < v18 / v10)
      {
        v19 = v18 / v10;
      }
    }

    if (vabdd_f64(self->_contentScaleFactor, v19) >= 2.22044605e-16)
    {
      self->_contentScaleFactor = v19;

      [(PBUIWallpaperView *)self _updateContentViewScale];
    }
  }
}

- (BOOL)_isParallaxEnabled
{
  v3 = [objc_opt_class() allowsParallax];
  if (v3)
  {
    LOBYTE(v3) = self->_parallaxEnabled && self->_parallaxSettings != 0;
  }

  return v3;
}

- (void)_updateRasterizationState
{
  wantsRasterization = self->_wantsRasterization;
  v4 = !-[PBUIWallpaperView _isParallaxActive](self, "_isParallaxActive") && [objc_opt_class() _allowsRasterization] && !self->_disallowRasterizationBlockCount;
  self->_wantsRasterization = v4;
  if (wantsRasterization != v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_internalObserver);
    [WeakRetained wallpaperViewDidChangeWantsRasterization:self];
  }
}

- (void)_updateContentViewScale
{
  ShouldIgnoreZoom = PBUIWallpaperTransformOptionsShouldIgnoreZoom(self->_transformOptions);
  contentScaleFactor = self->_contentScaleFactor;
  if ((ShouldIgnoreZoom & 1) == 0)
  {
    contentScaleFactor = contentScaleFactor * self->_zoomFactor;
  }

  contentView = self->_contentView;
  CGAffineTransformMakeScale(&v6, contentScaleFactor, contentScaleFactor);
  [(UIView *)contentView setTransform:&v6];
}

- (BOOL)_dontUseShadow
{
  v2 = [(PBUIWallpaperView *)self wallpaperName];
  if ([v2 hasPrefix:@"1331"] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"1336"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 hasPrefix:@"1316"];
  }

  return v3;
}

- (void)legibilitySettingsDidChange
{
  v3 = [(PBUIWallpaperView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 providerLegibilitySettingsChanged:self];
  }
}

- (void)_updateParallax
{
  [(PBUIWallpaperView *)self _updateRasterizationState];

  [(PBUIWallpaperView *)self _applyParallaxSettings];
}

- (void)_applyParallaxSettings
{
  if ([(PBUIWallpaperView *)self _isParallaxActive])
  {

    [(PBUIWallpaperView *)self _addParallax];
  }

  else
  {

    [(PBUIWallpaperView *)self _removeParallax];
  }
}

- (void)_removeParallax
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D75D18];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__PBUIWallpaperView__removeParallax__block_invoke;
  v5[3] = &unk_278363040;
  objc_copyWeak(&v6, &location);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__PBUIWallpaperView__removeParallax__block_invoke_2;
  v3[3] = &unk_278362FA8;
  objc_copyWeak(&v4, &location);
  [v2 animateWithDuration:251658240 delay:v5 options:v3 animations:0.3 completion:0.0];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __36__PBUIWallpaperView__removeParallax__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[52] layer];
    v4 = *(MEMORY[0x277CD9DE8] + 80);
    v8[4] = *(MEMORY[0x277CD9DE8] + 64);
    v8[5] = v4;
    v5 = *(MEMORY[0x277CD9DE8] + 112);
    v8[6] = *(MEMORY[0x277CD9DE8] + 96);
    v8[7] = v5;
    v6 = *(MEMORY[0x277CD9DE8] + 16);
    v8[0] = *MEMORY[0x277CD9DE8];
    v8[1] = v6;
    v7 = *(MEMORY[0x277CD9DE8] + 48);
    v8[2] = *(MEMORY[0x277CD9DE8] + 32);
    v8[3] = v7;
    [v3 setTransform:v8];

    PBUIApplyParallaxSettingsToView(0, v2[52]);
    PBUIApplyParallaxSettingsToView(0, v2[67]);
  }
}

- (id)_primaryColorOverride
{
  v2 = [(PBUIWallpaperView *)self wallpaperName];
  if ([v2 hasSuffix:@".Purple_Dahlia"] || objc_msgSend(v2, "hasSuffix:", @".RedSpider") || objc_msgSend(v2, "hasSuffix:", @".Leaf"))
  {
    v3 = [MEMORY[0x277D75348] blackColor];
LABEL_5:
    v4 = v3;
    goto LABEL_6;
  }

  if ([v2 hasPrefix:@"1336"] || objc_msgSend(v2, "hasPrefix:", @"1337"))
  {
    v3 = [MEMORY[0x277D75348] whiteColor];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (PBUILegibilitySettingsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PBUIWallpaperView;
  [(PBUIWallpaperView *)&v3 didMoveToWindow];
  [(PBUIWallpaperView *)self _handleVisibilityChange];
  [(PBUIWallpaperView *)self _updateParallax];
}

- (void)_updateGeneratingBlurs
{
  if (self->_shouldGenerateBlurredImagesWhenVisible && [(PBUIWallpaperView *)self _isVisible])
  {
    if (!self->_generatingBlurredImages)
    {
      [(PBUIWallpaperView *)self _startGeneratingBlurredImages];
      self->_generatingBlurredImages = 1;
    }
  }

  else if (self->_generatingBlurredImages)
  {
    [(PBUIWallpaperView *)self _stopGeneratingBlurredImages];
    self->_generatingBlurredImages = 0;
  }
}

uint64_t __36__PBUIWallpaperView__removeParallax__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (([WeakRetained _isParallaxActive] & 1) == 0)
    {
      [v4[52] removeFromSuperview];
      v2 = v4[52];
      v4[52] = 0;

      [v4 insertSubview:v4[67] atIndex:0];
      [v4 _updateScaleFactor];
    }
  }

  return MEMORY[0x2821F96F8]();
}

+ (Class)wallpaperViewClassForConfiguration:(id)a3
{
  v4 = [a3 wallpaperType];

  return [a1 wallpaperViewClassForWallpaperType:v4];
}

+ (Class)wallpaperViewClassForWallpaperType:(int64_t)a3
{
  if (a3 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_self();
  }

  return v4;
}

- (PBUIWallpaperView)initWithFrame:(CGRect)a3 configuration:(id)a4 variant:(int64_t)a5 cacheGroup:(id)a6 delegate:(id)a7 options:(unint64_t)a8
{
  v8 = a8;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v39.receiver = self;
  v39.super_class = PBUIWallpaperView;
  v20 = [(PBUIWallpaperView *)&v39 initWithFrame:x, y, width, height];
  v21 = v20;
  if (v20)
  {
    v20->_zoomFactor = 1.0;
    v20->_contentScaleFactor = 1.0;
    v20->_variant = a5;
    v20->_sharesContentsAcrossVariants = v8 & 1;
    v22 = [v18 copy];
    cacheGroup = v21->_cacheGroup;
    v21->_cacheGroup = v22;

    objc_storeWeak(&v21->_wallpaperDelegate, v19);
    v24 = [v17 wallpaperOptions];
    v25 = [v24 name];
    wallpaperName = v21->_wallpaperName;
    v21->_wallpaperName = v25;

    if (v24)
    {
      [v24 parallaxFactor];
      v21->_parallaxFactor = v27;
      v28 = [v24 parallaxEnabled];
    }

    else
    {
      v21->_parallaxFactor = 1.0;
      v28 = 1;
    }

    v21->_parallaxEnabled = v28;
    v21->_wallpaperMode = [v24 wallpaperMode];
    v21->_hasVideo = [v24 hasVideo];
    v21->_needsWallpaperDimmingTreatment = [v17 needsWallpaperDimmingTreatment];
    v29 = +[PBUIWallpaperDomain rootSettings];
    wallpaperSettings = v21->_wallpaperSettings;
    v21->_wallpaperSettings = v29;

    [(PTSettings *)v21->_wallpaperSettings addKeyObserver:v21];
    v21->_wallpaperAnimationEnabled = 1;
    v31 = [(PBUIWallpaperPrototypeSettings *)v21->_wallpaperSettings parallaxSettingsForVariant:[(PBUIWallpaperView *)v21 variant]];
    parallaxSettings = v21->_parallaxSettings;
    v21->_parallaxSettings = v31;

    [(PTSettings *)v21->_parallaxSettings addKeyObserver:v21];
    v33 = objc_alloc_init(MEMORY[0x277D760B0]);
    legibilitySettingsProvider = v21->_legibilitySettingsProvider;
    v21->_legibilitySettingsProvider = v33;

    v35 = [MEMORY[0x277CCAB98] defaultCenter];
    [v35 addObserver:v21 selector:sel__updateParallax name:*MEMORY[0x277D77508] object:0];

    v36 = [(PBUIWallpaperView *)v21 layer];
    [v36 setOpaque:1];

    v37 = [(PBUIWallpaperView *)v21 layer];
    [v37 setSortsSublayers:0];

    [(PBUIWallpaperView *)v21 _updateRasterizationState];
  }

  return v21;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D77508] object:0];

  [(PTSettings *)self->_wallpaperSettings removeKeyObserver:self];
  [(PTSettings *)self->_parallaxSettings removeKeyObserver:self];
  [(NSTimer *)self->_colorSampleTimer invalidate];
  v4.receiver = self;
  v4.super_class = PBUIWallpaperView;
  [(PBUIWallpaperView *)&v4 dealloc];
}

- (CGRect)cropRect
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (PLKLegibilityEnvironment)legibilityEnvironment
{
  PLKLegibilityEnvironmentClass = getPLKLegibilityEnvironmentClass();
  v4 = [(PBUIWallpaperView *)self legibilitySettings];
  v5 = [PLKLegibilityEnvironmentClass legibilityEnvironmentForUILegibilitySettings:v4];

  return v5;
}

- (_UILegibilitySettings)legibilitySettings
{
  legibilitySettings = self->_legibilitySettings;
  if (!legibilitySettings)
  {
    v4 = [(PBUIWallpaperView *)self _computeAverageColor];
    [(PBUIWallpaperView *)self _updateLegibilitySettingsForAverageColor:v4 force:0 notify:0];

    legibilitySettings = self->_legibilitySettings;
  }

  return legibilitySettings;
}

- (void)setContentView:(id)a3
{
  v13 = a3;
  v5 = [(UIView *)v13 superview];
  contentView = self->_contentView;
  if (contentView != v13 || v5 != self && v5 != self->_parallaxView)
  {
    PBUIApplyParallaxSettingsToView(0, contentView);
    v7 = [(UIView *)self->_contentView superview];
    v8 = v7;
    if (v7 == self || v7 == self->_parallaxView)
    {
      [(UIView *)self->_contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, a3);
    parallaxView = self->_parallaxView;
    v11 = self->_contentView;
    if (parallaxView)
    {
      [(UIView *)parallaxView addSubview:v11];
      [(PBUIWallpaperView *)self setNeedsLayout];
    }

    else
    {
      [(PBUIWallpaperView *)self addSubview:v11];
    }

    [(PBUIWallpaperView *)self _updateScaleFactor];
    if (self->_contentView)
    {
      v12 = [(PBUIWallpaperView *)self _computeAverageColor];
    }

    else
    {
      v12 = 0;
    }

    [(_UILegibilitySettingsProvider *)self->_legibilitySettingsProvider clearContentColorAccumulator];
    [(PBUIWallpaperView *)self _updateLegibilitySettingsForAverageColor:v12 force:1 notify:1];
  }
}

- (void)setZoomFactor:(double)a3 withAnimationFactory:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_zoomFactor != a3)
  {
    self->_zoomFactor = a3;
    if (v6)
    {
      objc_initWeak(&location, self);
      v8 = MEMORY[0x277CF0D38];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __56__PBUIWallpaperView_setZoomFactor_withAnimationFactory___block_invoke;
      v11[3] = &unk_278363040;
      objc_copyWeak(&v12, &location);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__PBUIWallpaperView_setZoomFactor_withAnimationFactory___block_invoke_2;
      v10[3] = &unk_2783620F8;
      v10[4] = self;
      [v8 animateWithFactory:v7 actions:v11 completion:v10];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PBUIWallpaperView *)self _updateContentViewScale];
      WeakRetained = objc_loadWeakRetained(&self->_internalObserver);
      [WeakRetained wallpaperView:self didChangeZoomFactor:self->_zoomFactor];
    }
  }
}

void __56__PBUIWallpaperView_setZoomFactor_withAnimationFactory___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _beginDisallowRasterizationBlock];
    [v3 _updateContentViewScale];
    v2 = objc_loadWeakRetained(v3 + 74);
    [v2 wallpaperView:v3 didChangeZoomFactor:*(v3 + 53)];

    WeakRetained = v3;
  }
}

- (void)setVariant:(int64_t)a3 withAnimationFactory:(id)a4
{
  v6 = a4;
  if (self->_variant != a3)
  {
    self->_variant = a3;
    v7 = [(PBUIWallpaperPrototypeSettings *)self->_wallpaperSettings parallaxSettingsForVariant:[(PBUIWallpaperView *)self variant]];
    parallaxSettings = self->_parallaxSettings;
    if (parallaxSettings != v7)
    {
      [(PTSettings *)parallaxSettings removeKeyObserver:self];
      objc_storeStrong(&self->_parallaxSettings, v7);
      [(PTSettings *)self->_parallaxSettings addKeyObserver:self];
      [(PBUIWallpaperView *)self _beginDisallowRasterizationBlock];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __53__PBUIWallpaperView_setVariant_withAnimationFactory___block_invoke;
      v10[3] = &unk_278361E18;
      v10[4] = self;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __53__PBUIWallpaperView_setVariant_withAnimationFactory___block_invoke_2;
      v9[3] = &unk_2783620F8;
      v9[4] = self;
      [MEMORY[0x277CF0D38] animateWithFactory:v6 actions:v10 completion:v9];
    }
  }
}

- (void)setTransformOptions:(unint64_t)a3
{
  if (self->_transformOptions != a3)
  {
    self->_transformOptions = a3;
    [(PBUIWallpaperView *)self _updateContentViewScale];
  }
}

- (void)_setLegibilitySettings:(id)a3 notify:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PBUIWallpaperView *)self _primaryColorOverride];
  v8 = [(PBUIWallpaperView *)self _dontUseShadow];
  v9 = v6;
  v18 = v9;
  if (v7 || (v10 = v9, v8))
  {
    v11 = [MEMORY[0x277D75348] blackColor];

    if (v7 == v11)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = objc_alloc(MEMORY[0x277D760A8]);
    if (v7)
    {
      v14 = v7;
    }

    else
    {
      v12 = [v18 style];
      v14 = [v18 primaryColor];
    }

    v15 = [v18 secondaryColor];
    if (v8)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [v18 shadowColor];
    }
    v16 = ;
    v10 = [v13 initWithStyle:v12 primaryColor:v14 secondaryColor:v15 shadowColor:v16];

    if (!v7)
    {

      if (v8)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (!v8)
    {
LABEL_14:
      v17 = [v18 contentColor];
      [(_UILegibilitySettings *)v10 setContentColor:v17];
    }
  }

LABEL_15:
  if (v10 != self->_legibilitySettings)
  {
    objc_storeStrong(&self->_legibilitySettings, v10);
    if (v4)
    {
      [(PBUIWallpaperView *)self legibilitySettingsDidChange];
    }
  }
}

- (void)resetLegibilitySettingsForAverageColor:(id)a3
{
  legibilitySettingsProvider = self->_legibilitySettingsProvider;
  v5 = a3;
  [(_UILegibilitySettingsProvider *)legibilitySettingsProvider clearContentColorAccumulator];
  [(PBUIWallpaperView *)self _updateLegibilitySettingsForAverageColor:v5 force:1 notify:1];
}

- (void)_updateLegibilitySettingsForAverageColor:(id)a3 force:(BOOL)a4 notify:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  v10 = v9;
  if (self->_legibilitySettings)
  {
    v11 = !v6;
  }

  else
  {
    v11 = 0;
  }

  if (!v11 || v9 && ([(UIColor *)self->_lastAverageColor isEqual:v9]& 1) == 0)
  {
    objc_storeStrong(&self->_lastAverageColor, a3);
    v13 = 0.0;
    [(PBUIWallpaperView *)self bounds];
    [(PBUIWallpaperView *)self contrastInRect:0 contrastWithinBoxes:&v13 contrastBetweenBoxes:?];
    [(_UILegibilitySettingsProvider *)self->_legibilitySettingsProvider accumulateChangesToContentColor:v10 contrast:v13];
    v12 = [(_UILegibilitySettingsProvider *)self->_legibilitySettingsProvider settings];
    [(PBUIWallpaperView *)self _setLegibilitySettings:v12 notify:v5];
  }
}

- (id)averageColorInRect:(CGRect)a3 withSmudgeRadius:(double)a4
{
  contentView = self->_contentView;
  if (contentView)
  {
    [contentView convertRect:self fromView:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
    contentView = [PBUIWallpaperView _averageColorInContentViewRect:"_averageColorInContentViewRect:smudgeRadius:" smudgeRadius:?];
  }

  return contentView;
}

- (double)contrastInRect:(CGRect)a3 contrastWithinBoxes:(double *)a4 contrastBetweenBoxes:(double *)a5
{
  contentView = self->_contentView;
  if (contentView)
  {
    [(UIView *)contentView convertRect:self fromView:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

    [(PBUIWallpaperView *)self _contrastInContentViewRect:a4 contrastWithinBoxes:a5 contrastBetweenBoxes:?];
  }

  else
  {
    result = *&PBUIWallpaperViewUnknownContrast;
    if (a4)
    {
      *a4 = PBUIWallpaperViewUnknownContrast;
    }

    if (a5)
    {
      *a5 = result;
    }
  }

  return result;
}

- (void)setParallaxEnabled:(BOOL)a3
{
  if (self->_parallaxEnabled != a3)
  {
    [(PBUIWallpaperView *)self willChangeValueForKey:@"parallaxEnabled"];
    self->_parallaxEnabled = a3;
    [(PBUIWallpaperView *)self didChangeValueForKey:@"parallaxEnabled"];
    v3 = 0.0;
    if (!self->_parallaxEnabled || (v3 = 1.0, fabs(self->_parallaxFactor) < 2.22044605e-16))
    {
      self->_parallaxFactor = v3;
    }
  }

  [(PBUIWallpaperView *)self _updateParallax];
}

- (void)setGeneratesBlurredImages:(BOOL)a3
{
  if (self->_shouldGenerateBlurredImagesWhenVisible != a3)
  {
    self->_shouldGenerateBlurredImagesWhenVisible = a3;
    [(PBUIWallpaperView *)self _updateGeneratingBlurs];
  }
}

- (id)snapshotImage
{
  [(PBUIWallpaperView *)self bounds];

  return [(PBUIWallpaperView *)self _imageFromRect:?];
}

- (id)imageForBackdropParameters:(id *)a3 includeTint:(BOOL)a4 overrideTraitCollection:(id)a5
{
  v5 = *&a3->var2;
  v9[0] = *&a3->var0;
  v9[1] = v5;
  v6 = *&a3->var6;
  v9[2] = *&a3->var4;
  v9[3] = v6;
  v7 = [(PBUIWallpaperView *)self _imageForBackdropParameters:v9 includeTint:a4 overrideTraitCollection:a5];

  return v7;
}

- (id)imageURLForBackdropParameters:(id *)a3 includeTint:(BOOL)a4 overrideTraitCollection:(id)a5
{
  v5 = *&a3->var2;
  v9[0] = *&a3->var0;
  v9[1] = v5;
  v6 = *&a3->var6;
  v9[2] = *&a3->var4;
  v9[3] = v6;
  v7 = [(PBUIWallpaperView *)self _imageURLForBackdropParameters:v9 includeTint:a4 overrideTraitCollection:a5];

  return v7;
}

- (void)setHidden:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PBUIWallpaperView;
  [(PBUIWallpaperView *)&v4 setHidden:a3];
  [(PBUIWallpaperView *)self _handleVisibilityChange];
}

- (double)_contrastInContentViewRect:(CGRect)a3 contrastWithinBoxes:(double *)a4 contrastBetweenBoxes:(double *)a5
{
  result = *&PBUIWallpaperViewUnknownContrast;
  if (a4)
  {
    *a4 = PBUIWallpaperViewUnknownContrast;
  }

  if (a5)
  {
    *a5 = result;
  }

  return result;
}

- (id)_blurredImage
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  PBUIWallpaperBackdropParametersMake(2020, 0, 0, &v6);
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  v3 = [(PBUIWallpaperView *)self _imageForBackdropParameters:v5 includeTint:0 overrideTraitCollection:0];

  return v3;
}

- (id)_blurredImageURL
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  PBUIWallpaperBackdropParametersMake(2020, 0, 0, &v6);
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  v3 = [(PBUIWallpaperView *)self _imageURLForBackdropParameters:v5 includeTint:0 overrideTraitCollection:0];

  return v3;
}

- (id)_imageURLForBackdropParameters:(id *)a3 includeTint:(BOOL)a4 overrideTraitCollection:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(PBUIWallpaperView *)self traitCollection];
  }

  v11 = v10;
  v12 = *&a3->var2;
  v18[0] = *&a3->var0;
  v18[1] = v12;
  v13 = *&a3->var6;
  v18[2] = *&a3->var4;
  v18[3] = v13;
  v14 = [(PBUIWallpaperView *)self _cacheKeyForParameters:v18 includingTint:v5 downsampleFactor:v10 traitCollection:1.0];
  v15 = +[PBUIWallpaperCache wallpaperCache];
  v16 = [v15 imageURLForKey:v14];

  return v16;
}

- (id)_imageForBackdropParameters:(id *)a3 includeTint:(BOOL)a4 overrideTraitCollection:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(PBUIWallpaperView *)self traitCollection];
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __85__PBUIWallpaperView__imageForBackdropParameters_includeTint_overrideTraitCollection___block_invoke;
  v35[3] = &unk_278363068;
  v35[4] = self;
  v11 = *&a3->var2;
  v37 = *&a3->var0;
  v38 = v11;
  v12 = *&a3->var6;
  v39 = *&a3->var4;
  v40 = v12;
  v41 = v5;
  v13 = v10;
  v36 = v13;
  v14 = MEMORY[0x223D62EE0](v35);
  v15 = *&a3->var2;
  v34[0] = *&a3->var0;
  v34[1] = v15;
  v16 = *&a3->var6;
  v34[2] = *&a3->var4;
  v34[3] = v16;
  v17 = [(PBUIWallpaperView *)self _cacheKeyForParameters:v34 includingTint:v5 downsampleFactor:v13 traitCollection:1.0];
  if (v17)
  {
    v18 = +[PBUIWallpaperCache wallpaperCache];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __85__PBUIWallpaperView__imageForBackdropParameters_includeTint_overrideTraitCollection___block_invoke_2;
    v32[3] = &unk_278363090;
    v33 = v14;
    v19 = [v18 imageForKey:v17 generatingIfNecessaryWithBlock:v32];

    if (!v19)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v19 = v14[2](v14);
    if (!v19)
    {
      goto LABEL_16;
    }
  }

  v20 = [(PBUIWallpaperView *)self snapshotImage];
  [v20 size];
  v22 = v21;

  [v19 size];
  v24 = v23;
  v25 = fabs(v22);
  if (vabdd_f64(v22, v23) >= 2.22044605e-16 && v25 >= 2.22044605e-16)
  {
    [v19 scale];
    v28 = v24 / v22 * v27;
    v29 = [v19 ioSurface];
    if (v29)
    {
      [MEMORY[0x277D755B8] pui_imageWithIOSurface:v29 scale:objc_msgSend(v19 orientation:{"imageOrientation"), v28}];
    }

    else
    {
      [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(v19 scale:"CGImage") orientation:{objc_msgSend(v19, "imageOrientation"), v28}];
    }
    v30 = ;

    v19 = v30;
  }

LABEL_16:

  return v19;
}

id __85__PBUIWallpaperView__imageForBackdropParameters_includeTint_overrideTraitCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) snapshotImage];
  v3 = *(a1 + 112);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v10[0] = *(a1 + 48);
  v10[1] = v6;
  v7 = *(a1 + 96);
  v10[2] = *(a1 + 80);
  v10[3] = v7;
  v8 = [v4 _generateImageFromImage:v2 forBackdropParameters:v10 includeTint:v3 traitCollection:v5];

  return v8;
}

uint64_t __85__PBUIWallpaperView__imageForBackdropParameters_includeTint_overrideTraitCollection___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = MGGetBoolAnswer();
  v5 = 4;
  if (!v4)
  {
    v5 = 0;
  }

  *a2 |= v5;
  if (MGGetBoolAnswer())
  {
    *a2 |= 2uLL;
  }

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

- (id)_generateImageFromImage:(id)a3 forBackdropParameters:(id *)a4 includeTint:(BOOL)a5 traitCollection:(id)a6
{
  v7 = a5;
  v11 = a3;
  v12 = a6;
  var7 = a4->var7;
  if ((var7 - 1) < 2)
  {
    v15 = *&a4->var2;
    v21 = *&a4->var0;
    v22 = v15;
    v16 = *&a4->var6;
    v23 = *&a4->var4;
    v24 = v16;
    v17 = [(PBUIWallpaperView *)self _material_generateImageFromImage:v11 forBackdropParameters:&v21 traitCollection:v12];
LABEL_7:
    v14 = v17;
    goto LABEL_8;
  }

  if (!var7)
  {
    v18 = *&a4->var2;
    v21 = *&a4->var0;
    v22 = v18;
    v19 = *&a4->var6;
    v23 = *&a4->var4;
    v24 = v19;
    v17 = [(PBUIWallpaperView *)self _backdrop_generateImageFromImage:v11 forBackdropParameters:&v21 includeTint:v7 traitCollection:v12];
    goto LABEL_7;
  }

  if (var7 != 3)
  {
    v14 = 0;
LABEL_8:

    return v14;
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (result)
  {
    [PBUIWallpaperView _generateImageFromImage:a2 forBackdropParameters:? includeTint:? traitCollection:?];
  }

  __break(0);
  return result;
}

- (id)_backdrop_generateImageFromImage:(id)a3 forBackdropParameters:(id *)a4 includeTint:(BOOL)a5 traitCollection:(id)a6
{
  v6 = a5;
  v44 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = PBUILogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v28 = *&a4->var2;
    *buf = *&a4->var0;
    *&buf[16] = v28;
    v29 = *&a4->var6;
    v42 = *&a4->var4;
    v43 = v29;
    v30 = PBUIStringForWallpaperBackdropParameters(buf);
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v30;
    *&buf[22] = 1024;
    *&buf[24] = v6;
    _os_log_debug_impl(&dword_21E67D000, v10, OS_LOG_TYPE_DEBUG, "Generating new image via backdrop view for view: %{public}@, backdrop parameters: %{public}@, tint: %{BOOL}u", buf, 0x1Cu);
  }

  v11 = [v9 pui_CGImageBackedImage];

  v12 = [v11 CGImage];
  v13 = *&a4->var2;
  *buf = *&a4->var0;
  *&buf[16] = v13;
  v14 = *&a4->var6;
  v42 = *&a4->var4;
  v43 = v14;
  v15 = PBUIBackdropInputSettingsForWallpaperBackdropParameters(buf);
  v16 = v15;
  if (v12)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v17 = *&a4->var2;
    v36 = *&a4->var0;
    v37 = v17;
    v18 = *&a4->var6;
    v38 = *&a4->var4;
    v34[2] = __104__PBUIWallpaperView__backdrop_generateImageFromImage_forBackdropParameters_includeTint_traitCollection___block_invoke;
    v34[3] = &unk_2783630B8;
    v40 = v6;
    v39 = v18;
    v35 = v15;
    v19 = [v11 pui_imageByManipulatingInDeviceColorSpaceWithBlock:v34];

    if (![(PBUIWallpaperView *)self _needsFallbackImageForBackdropGeneratedImage:v19])
    {
      goto LABEL_13;
    }

    if (v19)
    {
      [v19 size];
      v21 = v20;
      v23 = v22;

      goto LABEL_9;
    }
  }

  else
  {
    v19 = 0;
    if (![(PBUIWallpaperView *)self _needsFallbackImageForBackdropGeneratedImage:0])
    {
      goto LABEL_13;
    }
  }

  v21 = *MEMORY[0x277CBF3A8];
  v23 = *(MEMORY[0x277CBF3A8] + 8);
LABEL_9:
  v19 = [(PBUIWallpaperView *)self _fallbackImageWithOriginalSize:v21, v23];
  if ([v19 CGImage])
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __104__PBUIWallpaperView__backdrop_generateImageFromImage_forBackdropParameters_includeTint_traitCollection___block_invoke_2;
    v31[3] = &unk_2783630E0;
    v32 = v16;
    v33 = v6;
    v24 = [v19 pui_imageByManipulatingInDeviceColorSpaceWithBlock:v31];
    v25 = v24;
    if (v24)
    {
      v26 = v24;

      v19 = v26;
    }
  }

LABEL_13:

  return v19;
}

id __104__PBUIWallpaperView__backdrop_generateImageFromImage_forBackdropParameters_includeTint_traitCollection___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 104) == 1)
  {
    v3 = *(a1 + 56);
    v12 = *(a1 + 40);
    v13 = v3;
    v4 = *(a1 + 88);
    v14 = *(a1 + 72);
    v15 = v4;
    v5 = a2;
    v6 = PBUIBackdropInputSettingsForWallpaperBackdropParameters(&v12);
    v7 = [v5 _applyBackdropViewSettings:v6 includeTints:0 includeBlur:1 allowImageResizing:{1, v12, v13, v14, v15}];

    v8 = [v7 _applyBackdropViewSettings:*(a1 + 32) includeTints:1 includeBlur:0];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = a2;
    v8 = [v10 _applyBackdropViewSettings:v9 includeTints:0 includeBlur:1 allowImageResizing:1];
  }

  return v8;
}

- (id)_material_generateImageFromImage:(id)a3 forBackdropParameters:(id *)a4 traitCollection:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = PBUILogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v26 = *&a4->var2;
    *v29 = *&a4->var0;
    *&v29[16] = v26;
    v27 = *&a4->var6;
    v30 = *&a4->var4;
    v31 = v27;
    v28 = PBUIStringForWallpaperBackdropParameters(v29);
    *v29 = 138543618;
    *&v29[4] = self;
    *&v29[12] = 2114;
    *&v29[14] = v28;
    _os_log_debug_impl(&dword_21E67D000, v11, OS_LOG_TYPE_DEBUG, "Generating new image via material view for view: %{public}@, backdrop parameters: %{public}@", v29, 0x16u);
  }

  var7 = a4->var7;
  if ((var7 - 1) < 2)
  {
    v15 = [v10 userInterfaceStyle];
    v13 = 8.0;
LABEL_9:
    v14 = soft_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle_0(v15);
    goto LABEL_10;
  }

  v13 = 1.0;
  if (!var7)
  {
    v15 = 1;
    goto LABEL_9;
  }

  if (var7 != 3)
  {
    v14 = 0;
LABEL_10:
    v16 = [objc_alloc(getPUIMaterialTreatmentClass()) initWithRecipeName:v14 fromBundle:0];
    v17 = [objc_alloc(getPUICodableImageClass()) initWithUIImage:v9 error:0];
    v18 = [objc_alloc(getPUITreatImageRequestClass()) initWithImage:v17 downscaleFactor:v16 treatment:v13];
    v19 = [getPUICARemoteRendererClass() remoteRendererIfPossible];
    v20 = [v19 renderRequest:v18 error:0];

    v21 = MEMORY[0x277D755B8];
    [v9 scale];
    v23 = [v21 pui_imageWithIOSurface:v20 scale:objc_msgSend(v9 orientation:{"imageOrientation"), v22}];
    v24 = [v23 pui_CGImageBackedImageWithMaximumBitsPerComponent:8 skipCIF10FitsInSRGBCheck:1];

    return v24;
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (result)
  {
    [PBUIWallpaperView _material_generateImageFromImage:a2 forBackdropParameters:? traitCollection:?];
  }

  __break(0);
  return result;
}

- (id)_cacheKeyForParameters:(id *)a3 includingTint:(BOOL)a4 downsampleFactor:(double)a5 traitCollection:(id)a6
{
  v7 = a4;
  v44 = *MEMORY[0x277D85DE8];
  v11 = a6;
  v12 = [(PBUIWallpaperView *)self cacheGroup];
  v13 = [(PBUIWallpaperView *)self cacheUniqueIdentifier];
  if (![v12 length])
  {
    v18 = 0;
    goto LABEL_38;
  }

  v14 = 0;
  var7 = a3->var7;
  if (var7 > 1)
  {
    if (var7 != 2)
    {
      if (var7 == 3)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [PBUIWallpaperView _cacheKeyForParameters:a2 includingTint:? downsampleFactor:? traitCollection:?];
        }

        __break(0);
        JUMPOUT(0x21E6BAB9CLL);
      }

      goto LABEL_25;
    }

    v19 = [v11 userInterfaceStyle];
    v20 = @"light";
    if (v19 == 2)
    {
      v20 = @"dark";
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"icon_component_%@", v20, v37, v38, v39, v40, v41, v42];
    goto LABEL_24;
  }

  if (!var7)
  {
    if (!v7)
    {
      a3->var1 = 0;
      a3->var2 = 0;
    }

    var3 = a3->var3;
    if (var3 == 1.79769313e308)
    {
      a3->var3 = 0.0;
      var3 = 0.0;
    }

    var4 = a3->var4;
    if (var4 == 1.79769313e308)
    {
      a3->var4 = 0.0;
      var4 = 0.0;
    }

    var5 = a3->var5;
    if (var5 == 1.79769313e308)
    {
      a3->var5 = 0.0;
      var5 = 0.0;
    }

    var6 = a3->var6;
    if (var6 == 1.79769313e308)
    {
      a3->var6 = 0.0;
      var6 = 0.0;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"%d:%d:%d:%1.1f:%d:%1.1f:%1.1f", a3->var0, a3->var1, a3->var2, *&var4, var3, *&var5, *&var6];
    goto LABEL_24;
  }

  if (var7 == 1)
  {
    v16 = [v11 userInterfaceStyle];
    v17 = @"light";
    if (v16 == 2)
    {
      v17 = @"dark";
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"material_dock_%@", v17, v37, v38, v39, v40, v41, v42];
    v14 = LABEL_24:;
  }

LABEL_25:
  if (self->_wallpaperMode <= 1uLL)
  {
    wallpaperMode = 1;
  }

  else
  {
    wallpaperMode = self->_wallpaperMode;
  }

  v26 = PBUIStringForWallpaperMode(wallpaperMode);
  CC_SHA1("Oct 22 2025 21:33:39", 0x14u, md);
  v27 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:md length:20 freeWhenDone:0];
  v28 = [v27 pf_hexadecimalEncodedString];

  if ([v28 length] >= 9)
  {
    v29 = [v28 substringToIndex:8];

    v28 = v29;
  }

  v30 = MEMORY[0x277CCACA8];
  v31 = [(PBUIWallpaperView *)self variantCacheIdentifier];
  v32 = v31;
  v33 = @"untinted";
  if (v7)
  {
    v33 = @"tinted";
  }

  v34 = @"#";
  if (v13)
  {
    v34 = v13;
  }

  if (self->_needsWallpaperDimmingTreatment)
  {
    v35 = @"dimmed";
  }

  else
  {
    v35 = @"undimmed";
  }

  v18 = [v30 stringWithFormat:@"%@-%@-(%@)-%@-%.0f-%@-%@-%@-%@", v31, v12, v14, v33, *&a5, v34, v26, v35, v28];

LABEL_38:

  return v18;
}

- (NSString)variantCacheIdentifier
{
  if ([(PBUIWallpaperView *)self sharesContentsAcrossVariants])
  {
    v3 = @"shared";
  }

  else
  {
    v3 = PBUIStringForWallpaperVariant([(PBUIWallpaperView *)self variant]);
  }

  return v3;
}

- (BOOL)_needsFallbackImageForBackdropGeneratedImage:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  [a3 size];
  return fmin(v3, v4) < 40.0;
}

- (id)_fallbackImageWithOriginalSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(PBUIWallpaperView *)self legibilitySettings];
  v6 = [v5 contentColor];

  if (!v6)
  {
    v6 = [MEMORY[0x277D75348] blackColor];
  }

  v7 = height / width;
  if (width == 0.0)
  {
    v7 = 1.0;
  }

  if (v7 <= 0.0)
  {
    v8 = 40.0;
  }

  else
  {
    v8 = v7 * 40.0;
  }

  v9 = [MEMORY[0x277D75568] defaultFormat];
  [v9 setOpaque:1];
  v10 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v9 format:{v8, 40.0}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__PBUIWallpaperView__fallbackImageWithOriginalSize___block_invoke;
  v14[3] = &unk_278363108;
  v15 = v6;
  v16 = v8;
  v17 = 0x4044000000000000;
  v11 = v6;
  v12 = [v10 imageWithActions:v14];

  return v12;
}

void __52__PBUIWallpaperView__fallbackImageWithOriginalSize___block_invoke(uint64_t a1)
{
  [*(a1 + 32) set];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = 0;
  v5 = 0;

  UIRectFill(*&v4);
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (self->_parallaxSettings == v7)
  {
    [(PBUIWallpaperView *)self _applyParallaxSettings];
  }

  else if (self->_wallpaperSettings == v7 && (([v6 isEqualToString:@"replaceBlurs"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"blurReplacementMode")))
  {
    [(PBUIWallpaperView *)self _notifyBlursInvalidated];
  }
}

- (BOOL)_isVisible
{
  if (([(PBUIWallpaperView *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  v4 = [(PBUIWallpaperView *)self window];
  v3 = v4 != 0;

  return v3;
}

- (void)_notifyBlursInvalidated
{
  WeakRetained = objc_loadWeakRetained(&self->_internalObserver);
  [WeakRetained wallpaperViewDidInvalidateBlurs:self];
}

- (void)_beginDisallowRasterizationBlock
{
  disallowRasterizationBlockCount = self->_disallowRasterizationBlockCount;
  self->_disallowRasterizationBlockCount = disallowRasterizationBlockCount + 1;
  if (!disallowRasterizationBlockCount)
  {
    [(PBUIWallpaperView *)self _updateRasterizationState];
  }
}

- (void)_endDisallowRasterizationBlock
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"PBUIWallpaperView.m" lineNumber:896 description:@"unpaired disallowRastrizationBlock decrement"];

  *a4 = *a3;
}

- (BOOL)_isParallaxMotionEnabled
{
  v2 = [MEMORY[0x277CF0CA8] sharedInstance];
  v3 = [v2 deviceClass] == 2;

  return v3;
}

- (void)_addParallax
{
  if (!self->_parallaxView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    parallaxView = self->_parallaxView;
    self->_parallaxView = v3;

    [(PBUIWallpaperView *)self insertSubview:self->_parallaxView atIndex:0];
  }

  v5 = [(UIView *)self->_contentView superview];
  v6 = self->_parallaxView;

  if (v5 != v6)
  {
    [(UIView *)self->_parallaxView insertSubview:self->_contentView atIndex:0];
  }

  if ([(PBUIWallpaperView *)self _isParallaxMotionEnabled])
  {
    v7 = *(MEMORY[0x277CD9DE8] + 48);
    v18 = *(MEMORY[0x277CD9DE8] + 32);
    v19 = v7;
    v20 = *(MEMORY[0x277CD9DE8] + 64);
    v21 = *(MEMORY[0x277CD9DE8] + 80);
    v8 = *(MEMORY[0x277CD9DE8] + 16);
    *location = *MEMORY[0x277CD9DE8];
    v17 = v8;
    v9 = *(MEMORY[0x277CD9DE8] + 112);
    v23 = *(MEMORY[0x277CD9DE8] + 96);
    v24 = v9;
    [(PBUIWallpaperParallaxSettings *)self->_parallaxSettings perspectiveTransform];
    v11 = v10 * -0.01;
    v12 = [(UIView *)self->_parallaxView layer];
    v22 = v11;
    [v12 setTransform:location];

    objc_initWeak(location, self);
    v13 = MEMORY[0x277D75D18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __33__PBUIWallpaperView__addParallax__block_invoke;
    v14[3] = &unk_278363040;
    objc_copyWeak(&v15, location);
    [v13 animateWithDuration:251658240 delay:v14 options:0 animations:0.3 completion:0.0];
    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  [(PBUIWallpaperView *)self _updateScaleFactor];
}

uint64_t __33__PBUIWallpaperView__addParallax__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    PBUIApplyParallaxSettingsToViewWithFactor(*(WeakRetained + 62), *(WeakRetained + 52), *(WeakRetained + 71));
  }

  return MEMORY[0x2821F9730]();
}

- (PBUIWallpaperViewDelegate)wallpaperDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperDelegate);

  return WeakRetained;
}

- (PBUIWallpaperViewInternalObserver)internalObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_internalObserver);

  return WeakRetained;
}

- (void)_generateImageFromImage:(const char *)a1 forBackdropParameters:includeTint:traitCollection:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1(&dword_21E67D000, MEMORY[0x277D86220], v4, "failure in %@ of <%@:%p> (%@:%i)", v5, v6, v7, v8, v9);
}

- (void)_material_generateImageFromImage:(const char *)a1 forBackdropParameters:traitCollection:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1(&dword_21E67D000, MEMORY[0x277D86220], v4, "failure in %@ of <%@:%p> (%@:%i)", v5, v6, v7, v8, v9);
}

- (void)_cacheKeyForParameters:(const char *)a1 includingTint:downsampleFactor:traitCollection:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1(&dword_21E67D000, MEMORY[0x277D86220], v4, "failure in %@ of <%@:%p> (%@:%i)", v5, v6, v7, v8, v9);
}

@end