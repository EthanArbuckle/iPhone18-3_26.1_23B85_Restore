@interface PBUIWallpaperView
+ (Class)wallpaperViewClassForConfiguration:(id)configuration;
+ (Class)wallpaperViewClassForWallpaperType:(int64_t)type;
- (BOOL)_dontUseShadow;
- (BOOL)_isParallaxEnabled;
- (BOOL)_isParallaxMotionEnabled;
- (BOOL)_isVisible;
- (BOOL)_needsFallbackImageForBackdropGeneratedImage:(id)image;
- (CGRect)cropRect;
- (NSString)variantCacheIdentifier;
- (PBUILegibilitySettingsProviderDelegate)delegate;
- (PBUIWallpaperView)initWithFrame:(CGRect)frame configuration:(id)configuration variant:(int64_t)variant cacheGroup:(id)group delegate:(id)delegate options:(unint64_t)options;
- (PBUIWallpaperViewDelegate)wallpaperDelegate;
- (PBUIWallpaperViewInternalObserver)internalObserver;
- (PLKLegibilityEnvironment)legibilityEnvironment;
- (_UILegibilitySettings)legibilitySettings;
- (double)_contrastInContentViewRect:(CGRect)rect contrastWithinBoxes:(double *)boxes contrastBetweenBoxes:(double *)betweenBoxes;
- (double)contrastInRect:(CGRect)rect contrastWithinBoxes:(double *)boxes contrastBetweenBoxes:(double *)betweenBoxes;
- (id)_backdrop_generateImageFromImage:(id)image forBackdropParameters:(id *)parameters includeTint:(BOOL)tint traitCollection:(id)collection;
- (id)_blurredImage;
- (id)_blurredImageURL;
- (id)_cacheKeyForParameters:(id *)parameters includingTint:(BOOL)tint downsampleFactor:(double)factor traitCollection:(id)collection;
- (id)_fallbackImageWithOriginalSize:(CGSize)size;
- (id)_generateImageFromImage:(id)image forBackdropParameters:(id *)parameters includeTint:(BOOL)tint traitCollection:(id)collection;
- (id)_imageForBackdropParameters:(id *)parameters includeTint:(BOOL)tint overrideTraitCollection:(id)collection;
- (id)_imageURLForBackdropParameters:(id *)parameters includeTint:(BOOL)tint overrideTraitCollection:(id)collection;
- (id)_material_generateImageFromImage:(id)image forBackdropParameters:(id *)parameters traitCollection:(id)collection;
- (id)_primaryColorOverride;
- (id)averageColorInRect:(CGRect)rect withSmudgeRadius:(double)radius;
- (id)imageForBackdropParameters:(id *)parameters includeTint:(BOOL)tint overrideTraitCollection:(id)collection;
- (id)imageURLForBackdropParameters:(id *)parameters includeTint:(BOOL)tint overrideTraitCollection:(id)collection;
- (id)snapshotImage;
- (void)_addParallax;
- (void)_applyParallaxSettings;
- (void)_beginDisallowRasterizationBlock;
- (void)_endDisallowRasterizationBlock;
- (void)_notifyBlursInvalidated;
- (void)_removeParallax;
- (void)_setLegibilitySettings:(id)settings notify:(BOOL)notify;
- (void)_updateContentViewScale;
- (void)_updateGeneratingBlurs;
- (void)_updateLegibilitySettingsForAverageColor:(id)color force:(BOOL)force notify:(BOOL)notify;
- (void)_updateParallax;
- (void)_updateRasterizationState;
- (void)_updateScaleFactor;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)legibilitySettingsDidChange;
- (void)resetLegibilitySettingsForAverageColor:(id)color;
- (void)setContentView:(id)view;
- (void)setGeneratesBlurredImages:(BOOL)images;
- (void)setHidden:(BOOL)hidden;
- (void)setParallaxEnabled:(BOOL)enabled;
- (void)setTransformOptions:(unint64_t)options;
- (void)setVariant:(int64_t)variant withAnimationFactory:(id)factory;
- (void)setZoomFactor:(double)factor withAnimationFactory:(id)factory;
- (void)settings:(id)settings changedValueForKey:(id)key;
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
  allowsParallax = [objc_opt_class() allowsParallax];
  if (allowsParallax)
  {
    LOBYTE(allowsParallax) = self->_parallaxEnabled && self->_parallaxSettings != 0;
  }

  return allowsParallax;
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
  wallpaperName = [(PBUIWallpaperView *)self wallpaperName];
  if ([wallpaperName hasPrefix:@"1331"] & 1) != 0 || (objc_msgSend(wallpaperName, "hasPrefix:", @"1336"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [wallpaperName hasPrefix:@"1316"];
  }

  return v3;
}

- (void)legibilitySettingsDidChange
{
  delegate = [(PBUIWallpaperView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate providerLegibilitySettingsChanged:self];
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
  wallpaperName = [(PBUIWallpaperView *)self wallpaperName];
  if ([wallpaperName hasSuffix:@".Purple_Dahlia"] || objc_msgSend(wallpaperName, "hasSuffix:", @".RedSpider") || objc_msgSend(wallpaperName, "hasSuffix:", @".Leaf"))
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
LABEL_5:
    v4 = blackColor;
    goto LABEL_6;
  }

  if ([wallpaperName hasPrefix:@"1336"] || objc_msgSend(wallpaperName, "hasPrefix:", @"1337"))
  {
    blackColor = [MEMORY[0x277D75348] whiteColor];
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

+ (Class)wallpaperViewClassForConfiguration:(id)configuration
{
  wallpaperType = [configuration wallpaperType];

  return [self wallpaperViewClassForWallpaperType:wallpaperType];
}

+ (Class)wallpaperViewClassForWallpaperType:(int64_t)type
{
  if (type > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_self();
  }

  return v4;
}

- (PBUIWallpaperView)initWithFrame:(CGRect)frame configuration:(id)configuration variant:(int64_t)variant cacheGroup:(id)group delegate:(id)delegate options:(unint64_t)options
{
  optionsCopy = options;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  groupCopy = group;
  delegateCopy = delegate;
  v39.receiver = self;
  v39.super_class = PBUIWallpaperView;
  height = [(PBUIWallpaperView *)&v39 initWithFrame:x, y, width, height];
  v21 = height;
  if (height)
  {
    height->_zoomFactor = 1.0;
    height->_contentScaleFactor = 1.0;
    height->_variant = variant;
    height->_sharesContentsAcrossVariants = optionsCopy & 1;
    v22 = [groupCopy copy];
    cacheGroup = v21->_cacheGroup;
    v21->_cacheGroup = v22;

    objc_storeWeak(&v21->_wallpaperDelegate, delegateCopy);
    wallpaperOptions = [configurationCopy wallpaperOptions];
    name = [wallpaperOptions name];
    wallpaperName = v21->_wallpaperName;
    v21->_wallpaperName = name;

    if (wallpaperOptions)
    {
      [wallpaperOptions parallaxFactor];
      v21->_parallaxFactor = v27;
      parallaxEnabled = [wallpaperOptions parallaxEnabled];
    }

    else
    {
      v21->_parallaxFactor = 1.0;
      parallaxEnabled = 1;
    }

    v21->_parallaxEnabled = parallaxEnabled;
    v21->_wallpaperMode = [wallpaperOptions wallpaperMode];
    v21->_hasVideo = [wallpaperOptions hasVideo];
    v21->_needsWallpaperDimmingTreatment = [configurationCopy needsWallpaperDimmingTreatment];
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v21 selector:sel__updateParallax name:*MEMORY[0x277D77508] object:0];

    layer = [(PBUIWallpaperView *)v21 layer];
    [layer setOpaque:1];

    layer2 = [(PBUIWallpaperView *)v21 layer];
    [layer2 setSortsSublayers:0];

    [(PBUIWallpaperView *)v21 _updateRasterizationState];
  }

  return v21;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D77508] object:0];

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
  legibilitySettings = [(PBUIWallpaperView *)self legibilitySettings];
  v5 = [PLKLegibilityEnvironmentClass legibilityEnvironmentForUILegibilitySettings:legibilitySettings];

  return v5;
}

- (_UILegibilitySettings)legibilitySettings
{
  legibilitySettings = self->_legibilitySettings;
  if (!legibilitySettings)
  {
    _computeAverageColor = [(PBUIWallpaperView *)self _computeAverageColor];
    [(PBUIWallpaperView *)self _updateLegibilitySettingsForAverageColor:_computeAverageColor force:0 notify:0];

    legibilitySettings = self->_legibilitySettings;
  }

  return legibilitySettings;
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  superview = [(UIView *)viewCopy superview];
  contentView = self->_contentView;
  if (contentView != viewCopy || superview != self && superview != self->_parallaxView)
  {
    PBUIApplyParallaxSettingsToView(0, contentView);
    superview2 = [(UIView *)self->_contentView superview];
    v8 = superview2;
    if (superview2 == self || superview2 == self->_parallaxView)
    {
      [(UIView *)self->_contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, view);
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
      _computeAverageColor = [(PBUIWallpaperView *)self _computeAverageColor];
    }

    else
    {
      _computeAverageColor = 0;
    }

    [(_UILegibilitySettingsProvider *)self->_legibilitySettingsProvider clearContentColorAccumulator];
    [(PBUIWallpaperView *)self _updateLegibilitySettingsForAverageColor:_computeAverageColor force:1 notify:1];
  }
}

- (void)setZoomFactor:(double)factor withAnimationFactory:(id)factory
{
  factoryCopy = factory;
  v7 = factoryCopy;
  if (self->_zoomFactor != factor)
  {
    self->_zoomFactor = factor;
    if (factoryCopy)
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

- (void)setVariant:(int64_t)variant withAnimationFactory:(id)factory
{
  factoryCopy = factory;
  if (self->_variant != variant)
  {
    self->_variant = variant;
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
      [MEMORY[0x277CF0D38] animateWithFactory:factoryCopy actions:v10 completion:v9];
    }
  }
}

- (void)setTransformOptions:(unint64_t)options
{
  if (self->_transformOptions != options)
  {
    self->_transformOptions = options;
    [(PBUIWallpaperView *)self _updateContentViewScale];
  }
}

- (void)_setLegibilitySettings:(id)settings notify:(BOOL)notify
{
  notifyCopy = notify;
  settingsCopy = settings;
  _primaryColorOverride = [(PBUIWallpaperView *)self _primaryColorOverride];
  _dontUseShadow = [(PBUIWallpaperView *)self _dontUseShadow];
  v9 = settingsCopy;
  v18 = v9;
  if (_primaryColorOverride || (v10 = v9, _dontUseShadow))
  {
    blackColor = [MEMORY[0x277D75348] blackColor];

    if (_primaryColorOverride == blackColor)
    {
      style = 2;
    }

    else
    {
      style = 1;
    }

    v13 = objc_alloc(MEMORY[0x277D760A8]);
    if (_primaryColorOverride)
    {
      primaryColor = _primaryColorOverride;
    }

    else
    {
      style = [v18 style];
      primaryColor = [v18 primaryColor];
    }

    secondaryColor = [v18 secondaryColor];
    if (_dontUseShadow)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [v18 shadowColor];
    }
    v16 = ;
    v10 = [v13 initWithStyle:style primaryColor:primaryColor secondaryColor:secondaryColor shadowColor:v16];

    if (!_primaryColorOverride)
    {

      if (_dontUseShadow)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (!_dontUseShadow)
    {
LABEL_14:
      contentColor = [v18 contentColor];
      [(_UILegibilitySettings *)v10 setContentColor:contentColor];
    }
  }

LABEL_15:
  if (v10 != self->_legibilitySettings)
  {
    objc_storeStrong(&self->_legibilitySettings, v10);
    if (notifyCopy)
    {
      [(PBUIWallpaperView *)self legibilitySettingsDidChange];
    }
  }
}

- (void)resetLegibilitySettingsForAverageColor:(id)color
{
  legibilitySettingsProvider = self->_legibilitySettingsProvider;
  colorCopy = color;
  [(_UILegibilitySettingsProvider *)legibilitySettingsProvider clearContentColorAccumulator];
  [(PBUIWallpaperView *)self _updateLegibilitySettingsForAverageColor:colorCopy force:1 notify:1];
}

- (void)_updateLegibilitySettingsForAverageColor:(id)color force:(BOOL)force notify:(BOOL)notify
{
  notifyCopy = notify;
  forceCopy = force;
  colorCopy = color;
  v10 = colorCopy;
  if (self->_legibilitySettings)
  {
    v11 = !forceCopy;
  }

  else
  {
    v11 = 0;
  }

  if (!v11 || colorCopy && ([(UIColor *)self->_lastAverageColor isEqual:colorCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_lastAverageColor, color);
    v13 = 0.0;
    [(PBUIWallpaperView *)self bounds];
    [(PBUIWallpaperView *)self contrastInRect:0 contrastWithinBoxes:&v13 contrastBetweenBoxes:?];
    [(_UILegibilitySettingsProvider *)self->_legibilitySettingsProvider accumulateChangesToContentColor:v10 contrast:v13];
    settings = [(_UILegibilitySettingsProvider *)self->_legibilitySettingsProvider settings];
    [(PBUIWallpaperView *)self _setLegibilitySettings:settings notify:notifyCopy];
  }
}

- (id)averageColorInRect:(CGRect)rect withSmudgeRadius:(double)radius
{
  contentView = self->_contentView;
  if (contentView)
  {
    [contentView convertRect:self fromView:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
    contentView = [PBUIWallpaperView _averageColorInContentViewRect:"_averageColorInContentViewRect:smudgeRadius:" smudgeRadius:?];
  }

  return contentView;
}

- (double)contrastInRect:(CGRect)rect contrastWithinBoxes:(double *)boxes contrastBetweenBoxes:(double *)betweenBoxes
{
  contentView = self->_contentView;
  if (contentView)
  {
    [(UIView *)contentView convertRect:self fromView:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];

    [(PBUIWallpaperView *)self _contrastInContentViewRect:boxes contrastWithinBoxes:betweenBoxes contrastBetweenBoxes:?];
  }

  else
  {
    result = *&PBUIWallpaperViewUnknownContrast;
    if (boxes)
    {
      *boxes = PBUIWallpaperViewUnknownContrast;
    }

    if (betweenBoxes)
    {
      *betweenBoxes = result;
    }
  }

  return result;
}

- (void)setParallaxEnabled:(BOOL)enabled
{
  if (self->_parallaxEnabled != enabled)
  {
    [(PBUIWallpaperView *)self willChangeValueForKey:@"parallaxEnabled"];
    self->_parallaxEnabled = enabled;
    [(PBUIWallpaperView *)self didChangeValueForKey:@"parallaxEnabled"];
    v3 = 0.0;
    if (!self->_parallaxEnabled || (v3 = 1.0, fabs(self->_parallaxFactor) < 2.22044605e-16))
    {
      self->_parallaxFactor = v3;
    }
  }

  [(PBUIWallpaperView *)self _updateParallax];
}

- (void)setGeneratesBlurredImages:(BOOL)images
{
  if (self->_shouldGenerateBlurredImagesWhenVisible != images)
  {
    self->_shouldGenerateBlurredImagesWhenVisible = images;
    [(PBUIWallpaperView *)self _updateGeneratingBlurs];
  }
}

- (id)snapshotImage
{
  [(PBUIWallpaperView *)self bounds];

  return [(PBUIWallpaperView *)self _imageFromRect:?];
}

- (id)imageForBackdropParameters:(id *)parameters includeTint:(BOOL)tint overrideTraitCollection:(id)collection
{
  v5 = *&parameters->var2;
  v9[0] = *&parameters->var0;
  v9[1] = v5;
  v6 = *&parameters->var6;
  v9[2] = *&parameters->var4;
  v9[3] = v6;
  v7 = [(PBUIWallpaperView *)self _imageForBackdropParameters:v9 includeTint:tint overrideTraitCollection:collection];

  return v7;
}

- (id)imageURLForBackdropParameters:(id *)parameters includeTint:(BOOL)tint overrideTraitCollection:(id)collection
{
  v5 = *&parameters->var2;
  v9[0] = *&parameters->var0;
  v9[1] = v5;
  v6 = *&parameters->var6;
  v9[2] = *&parameters->var4;
  v9[3] = v6;
  v7 = [(PBUIWallpaperView *)self _imageURLForBackdropParameters:v9 includeTint:tint overrideTraitCollection:collection];

  return v7;
}

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = PBUIWallpaperView;
  [(PBUIWallpaperView *)&v4 setHidden:hidden];
  [(PBUIWallpaperView *)self _handleVisibilityChange];
}

- (double)_contrastInContentViewRect:(CGRect)rect contrastWithinBoxes:(double *)boxes contrastBetweenBoxes:(double *)betweenBoxes
{
  result = *&PBUIWallpaperViewUnknownContrast;
  if (boxes)
  {
    *boxes = PBUIWallpaperViewUnknownContrast;
  }

  if (betweenBoxes)
  {
    *betweenBoxes = result;
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

- (id)_imageURLForBackdropParameters:(id *)parameters includeTint:(BOOL)tint overrideTraitCollection:(id)collection
{
  tintCopy = tint;
  collectionCopy = collection;
  v9 = collectionCopy;
  if (collectionCopy)
  {
    traitCollection = collectionCopy;
  }

  else
  {
    traitCollection = [(PBUIWallpaperView *)self traitCollection];
  }

  v11 = traitCollection;
  v12 = *&parameters->var2;
  v18[0] = *&parameters->var0;
  v18[1] = v12;
  v13 = *&parameters->var6;
  v18[2] = *&parameters->var4;
  v18[3] = v13;
  v14 = [(PBUIWallpaperView *)self _cacheKeyForParameters:v18 includingTint:tintCopy downsampleFactor:traitCollection traitCollection:1.0];
  v15 = +[PBUIWallpaperCache wallpaperCache];
  v16 = [v15 imageURLForKey:v14];

  return v16;
}

- (id)_imageForBackdropParameters:(id *)parameters includeTint:(BOOL)tint overrideTraitCollection:(id)collection
{
  tintCopy = tint;
  collectionCopy = collection;
  v9 = collectionCopy;
  if (collectionCopy)
  {
    traitCollection = collectionCopy;
  }

  else
  {
    traitCollection = [(PBUIWallpaperView *)self traitCollection];
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __85__PBUIWallpaperView__imageForBackdropParameters_includeTint_overrideTraitCollection___block_invoke;
  v35[3] = &unk_278363068;
  v35[4] = self;
  v11 = *&parameters->var2;
  v37 = *&parameters->var0;
  v38 = v11;
  v12 = *&parameters->var6;
  v39 = *&parameters->var4;
  v40 = v12;
  v41 = tintCopy;
  v13 = traitCollection;
  v36 = v13;
  v14 = MEMORY[0x223D62EE0](v35);
  v15 = *&parameters->var2;
  v34[0] = *&parameters->var0;
  v34[1] = v15;
  v16 = *&parameters->var6;
  v34[2] = *&parameters->var4;
  v34[3] = v16;
  v17 = [(PBUIWallpaperView *)self _cacheKeyForParameters:v34 includingTint:tintCopy downsampleFactor:v13 traitCollection:1.0];
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

  snapshotImage = [(PBUIWallpaperView *)self snapshotImage];
  [snapshotImage size];
  v22 = v21;

  [v19 size];
  v24 = v23;
  v25 = fabs(v22);
  if (vabdd_f64(v22, v23) >= 2.22044605e-16 && v25 >= 2.22044605e-16)
  {
    [v19 scale];
    v28 = v24 / v22 * v27;
    ioSurface = [v19 ioSurface];
    if (ioSurface)
    {
      [MEMORY[0x277D755B8] pui_imageWithIOSurface:ioSurface scale:objc_msgSend(v19 orientation:{"imageOrientation"), v28}];
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

- (id)_generateImageFromImage:(id)image forBackdropParameters:(id *)parameters includeTint:(BOOL)tint traitCollection:(id)collection
{
  tintCopy = tint;
  imageCopy = image;
  collectionCopy = collection;
  var7 = parameters->var7;
  if ((var7 - 1) < 2)
  {
    v15 = *&parameters->var2;
    v21 = *&parameters->var0;
    v22 = v15;
    v16 = *&parameters->var6;
    v23 = *&parameters->var4;
    v24 = v16;
    v17 = [(PBUIWallpaperView *)self _material_generateImageFromImage:imageCopy forBackdropParameters:&v21 traitCollection:collectionCopy];
LABEL_7:
    v14 = v17;
    goto LABEL_8;
  }

  if (!var7)
  {
    v18 = *&parameters->var2;
    v21 = *&parameters->var0;
    v22 = v18;
    v19 = *&parameters->var6;
    v23 = *&parameters->var4;
    v24 = v19;
    v17 = [(PBUIWallpaperView *)self _backdrop_generateImageFromImage:imageCopy forBackdropParameters:&v21 includeTint:tintCopy traitCollection:collectionCopy];
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

- (id)_backdrop_generateImageFromImage:(id)image forBackdropParameters:(id *)parameters includeTint:(BOOL)tint traitCollection:(id)collection
{
  tintCopy = tint;
  v44 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  v10 = PBUILogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v28 = *&parameters->var2;
    *buf = *&parameters->var0;
    *&buf[16] = v28;
    v29 = *&parameters->var6;
    v42 = *&parameters->var4;
    v43 = v29;
    v30 = PBUIStringForWallpaperBackdropParameters(buf);
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v30;
    *&buf[22] = 1024;
    *&buf[24] = tintCopy;
    _os_log_debug_impl(&dword_21E67D000, v10, OS_LOG_TYPE_DEBUG, "Generating new image via backdrop view for view: %{public}@, backdrop parameters: %{public}@, tint: %{BOOL}u", buf, 0x1Cu);
  }

  pui_CGImageBackedImage = [imageCopy pui_CGImageBackedImage];

  cGImage = [pui_CGImageBackedImage CGImage];
  v13 = *&parameters->var2;
  *buf = *&parameters->var0;
  *&buf[16] = v13;
  v14 = *&parameters->var6;
  v42 = *&parameters->var4;
  v43 = v14;
  v15 = PBUIBackdropInputSettingsForWallpaperBackdropParameters(buf);
  v16 = v15;
  if (cGImage)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v17 = *&parameters->var2;
    v36 = *&parameters->var0;
    v37 = v17;
    v18 = *&parameters->var6;
    v38 = *&parameters->var4;
    v34[2] = __104__PBUIWallpaperView__backdrop_generateImageFromImage_forBackdropParameters_includeTint_traitCollection___block_invoke;
    v34[3] = &unk_2783630B8;
    v40 = tintCopy;
    v39 = v18;
    v35 = v15;
    v19 = [pui_CGImageBackedImage pui_imageByManipulatingInDeviceColorSpaceWithBlock:v34];

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
    v33 = tintCopy;
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

- (id)_material_generateImageFromImage:(id)image forBackdropParameters:(id *)parameters traitCollection:(id)collection
{
  v32 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  collectionCopy = collection;
  v11 = PBUILogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v26 = *&parameters->var2;
    *v29 = *&parameters->var0;
    *&v29[16] = v26;
    v27 = *&parameters->var6;
    v30 = *&parameters->var4;
    v31 = v27;
    v28 = PBUIStringForWallpaperBackdropParameters(v29);
    *v29 = 138543618;
    *&v29[4] = self;
    *&v29[12] = 2114;
    *&v29[14] = v28;
    _os_log_debug_impl(&dword_21E67D000, v11, OS_LOG_TYPE_DEBUG, "Generating new image via material view for view: %{public}@, backdrop parameters: %{public}@", v29, 0x16u);
  }

  var7 = parameters->var7;
  if ((var7 - 1) < 2)
  {
    userInterfaceStyle = [collectionCopy userInterfaceStyle];
    v13 = 8.0;
LABEL_9:
    v14 = soft_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle_0(userInterfaceStyle);
    goto LABEL_10;
  }

  v13 = 1.0;
  if (!var7)
  {
    userInterfaceStyle = 1;
    goto LABEL_9;
  }

  if (var7 != 3)
  {
    v14 = 0;
LABEL_10:
    v16 = [objc_alloc(getPUIMaterialTreatmentClass()) initWithRecipeName:v14 fromBundle:0];
    v17 = [objc_alloc(getPUICodableImageClass()) initWithUIImage:imageCopy error:0];
    v18 = [objc_alloc(getPUITreatImageRequestClass()) initWithImage:v17 downscaleFactor:v16 treatment:v13];
    remoteRendererIfPossible = [getPUICARemoteRendererClass() remoteRendererIfPossible];
    v20 = [remoteRendererIfPossible renderRequest:v18 error:0];

    v21 = MEMORY[0x277D755B8];
    [imageCopy scale];
    v23 = [v21 pui_imageWithIOSurface:v20 scale:objc_msgSend(imageCopy orientation:{"imageOrientation"), v22}];
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

- (id)_cacheKeyForParameters:(id *)parameters includingTint:(BOOL)tint downsampleFactor:(double)factor traitCollection:(id)collection
{
  tintCopy = tint;
  v44 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  cacheGroup = [(PBUIWallpaperView *)self cacheGroup];
  cacheUniqueIdentifier = [(PBUIWallpaperView *)self cacheUniqueIdentifier];
  if (![cacheGroup length])
  {
    v18 = 0;
    goto LABEL_38;
  }

  v14 = 0;
  var7 = parameters->var7;
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

    userInterfaceStyle = [collectionCopy userInterfaceStyle];
    v20 = @"light";
    if (userInterfaceStyle == 2)
    {
      v20 = @"dark";
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"icon_component_%@", v20, v37, v38, v39, v40, v41, v42];
    goto LABEL_24;
  }

  if (!var7)
  {
    if (!tintCopy)
    {
      parameters->var1 = 0;
      parameters->var2 = 0;
    }

    var3 = parameters->var3;
    if (var3 == 1.79769313e308)
    {
      parameters->var3 = 0.0;
      var3 = 0.0;
    }

    var4 = parameters->var4;
    if (var4 == 1.79769313e308)
    {
      parameters->var4 = 0.0;
      var4 = 0.0;
    }

    var5 = parameters->var5;
    if (var5 == 1.79769313e308)
    {
      parameters->var5 = 0.0;
      var5 = 0.0;
    }

    var6 = parameters->var6;
    if (var6 == 1.79769313e308)
    {
      parameters->var6 = 0.0;
      var6 = 0.0;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"%d:%d:%d:%1.1f:%d:%1.1f:%1.1f", parameters->var0, parameters->var1, parameters->var2, *&var4, var3, *&var5, *&var6];
    goto LABEL_24;
  }

  if (var7 == 1)
  {
    userInterfaceStyle2 = [collectionCopy userInterfaceStyle];
    v17 = @"light";
    if (userInterfaceStyle2 == 2)
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
  pf_hexadecimalEncodedString = [v27 pf_hexadecimalEncodedString];

  if ([pf_hexadecimalEncodedString length] >= 9)
  {
    v29 = [pf_hexadecimalEncodedString substringToIndex:8];

    pf_hexadecimalEncodedString = v29;
  }

  v30 = MEMORY[0x277CCACA8];
  variantCacheIdentifier = [(PBUIWallpaperView *)self variantCacheIdentifier];
  v32 = variantCacheIdentifier;
  v33 = @"untinted";
  if (tintCopy)
  {
    v33 = @"tinted";
  }

  v34 = @"#";
  if (cacheUniqueIdentifier)
  {
    v34 = cacheUniqueIdentifier;
  }

  if (self->_needsWallpaperDimmingTreatment)
  {
    v35 = @"dimmed";
  }

  else
  {
    v35 = @"undimmed";
  }

  v18 = [v30 stringWithFormat:@"%@-%@-(%@)-%@-%.0f-%@-%@-%@-%@", variantCacheIdentifier, cacheGroup, v14, v33, *&factor, v34, v26, v35, pf_hexadecimalEncodedString];

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

- (BOOL)_needsFallbackImageForBackdropGeneratedImage:(id)image
{
  if (!image)
  {
    return 1;
  }

  [image size];
  return fmin(v3, v4) < 40.0;
}

- (id)_fallbackImageWithOriginalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  legibilitySettings = [(PBUIWallpaperView *)self legibilitySettings];
  contentColor = [legibilitySettings contentColor];

  if (!contentColor)
  {
    contentColor = [MEMORY[0x277D75348] blackColor];
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

  defaultFormat = [MEMORY[0x277D75568] defaultFormat];
  [defaultFormat setOpaque:1];
  v10 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:defaultFormat format:{v8, 40.0}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__PBUIWallpaperView__fallbackImageWithOriginalSize___block_invoke;
  v14[3] = &unk_278363108;
  v15 = contentColor;
  v16 = v8;
  v17 = 0x4044000000000000;
  v11 = contentColor;
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

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  keyCopy = key;
  if (self->_parallaxSettings == settingsCopy)
  {
    [(PBUIWallpaperView *)self _applyParallaxSettings];
  }

  else if (self->_wallpaperSettings == settingsCopy && (([keyCopy isEqualToString:@"replaceBlurs"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"blurReplacementMode")))
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

  window = [(PBUIWallpaperView *)self window];
  v3 = window != 0;

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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"PBUIWallpaperView.m" lineNumber:896 description:@"unpaired disallowRastrizationBlock decrement"];

  *a4 = *a3;
}

- (BOOL)_isParallaxMotionEnabled
{
  mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
  v3 = [mEMORY[0x277CF0CA8] deviceClass] == 2;

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

  superview = [(UIView *)self->_contentView superview];
  v6 = self->_parallaxView;

  if (superview != v6)
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
    layer = [(UIView *)self->_parallaxView layer];
    v22 = v11;
    [layer setTransform:location];

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