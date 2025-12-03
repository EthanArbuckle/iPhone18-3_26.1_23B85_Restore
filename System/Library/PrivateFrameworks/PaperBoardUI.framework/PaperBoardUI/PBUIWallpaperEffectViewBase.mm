@interface PBUIWallpaperEffectViewBase
- (BOOL)_needsBlurViewForStyle:(int64_t)style;
- (BOOL)currentTransitionStateIsOpaque;
- (BOOL)prepareToAnimateToTransitionState:(id *)state;
- (NSString)description;
- (PBUIWallpaperEffectViewBase)initWithCoder:(id)coder;
- (PBUIWallpaperEffectViewBase)initWithFrame:(CGRect)frame;
- (PBUIWallpaperEffectViewBase)initWithWallpaperPresenter:(id)presenter variant:(int64_t)variant transformOptions:(unint64_t)options;
- (void)_accessibilityReduceTransparencyChanged:(id)changed;
- (void)_configureForCurrentBlurStyle;
- (void)_configureFromScratch;
- (void)_configureGrayscaleAndColorTintViewForStartStyle:(BOOL)style;
- (void)_configureViews;
- (void)_configureViewsPositioning;
- (void)_setTransitionFraction:(double)fraction;
- (void)_updateWallpaperAverageColor:(id)color;
- (void)dealloc;
- (void)layoutSubviews;
- (void)offsetWallpaperBy:(CGPoint)by;
- (void)setExternalDisplayConfiguration:(id)configuration;
- (void)setForcesOpaque:(BOOL)opaque;
- (void)setHidden:(BOOL)hidden;
- (void)setMaskImage:(id)image masksBlur:(BOOL)blur masksTint:(BOOL)tint;
- (void)setShouldMatchWallpaperPosition:(BOOL)position;
- (void)setStyle:(int64_t)style;
- (void)setTransformOptions:(unint64_t)options;
- (void)setTransitionState:(id *)state;
- (void)setWallpaperStyle:(int64_t)style;
- (void)wallpaperLegibilityEnvironmentDidChange:(id)change;
@end

@implementation PBUIWallpaperEffectViewBase

- (void)layoutSubviews
{
  [(PBUIWallpaperEffectViewBase *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_blurMaskingContainer setFrame:?];
  [(UIView *)self->_tintMaskingContainer setFrame:v4, v6, v8, v10];
  [(UIImageView *)self->_maskImageView setFrame:v4, v6, v8, v10];
  if (!self->_shouldMatchWallpaperPosition)
  {
    goto LABEL_4;
  }

  mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
  if ([mEMORY[0x277CF0CA8] deviceClass] == 2)
  {

    goto LABEL_5;
  }

  [(PBUIFakeBluring *)self->_blurView bounds];
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  v13 = CGRectEqualToRect(v15, v16);

  if (!v13)
  {
LABEL_4:
    [(PBUIFakeBluring *)self->_blurView setFrame:v4, v6, v8, v10];
    [(PBUIFakeBluring *)self->_transitionBlurView setFrame:v4, v6, v8, v10];
  }

LABEL_5:
  [(UIView *)self->_grayscaleTintView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_colorTintView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_transitionGrayscaleTintView setFrame:v4, v6, v8, v10];
  transitionColorTintView = self->_transitionColorTintView;

  [(UIView *)transitionColorTintView setFrame:v4, v6, v8, v10];
}

- (void)_configureViewsPositioning
{
  shouldMatchWallpaperPosition = [(PBUIWallpaperEffectViewBase *)self shouldMatchWallpaperPosition];
  [(PBUIFakeBluring *)self->_blurView setShouldMatchWallpaperPosition:shouldMatchWallpaperPosition];
  [(PBUIFakeBluring *)self->_transitionBlurView setShouldMatchWallpaperPosition:shouldMatchWallpaperPosition];
  if (!shouldMatchWallpaperPosition)
  {
    v4 = *MEMORY[0x277CBF348];
    v5 = *(MEMORY[0x277CBF348] + 8);

    [(PBUIWallpaperEffectViewBase *)self offsetWallpaperBy:v4, v5];
  }
}

- (void)_configureFromScratch
{
  _shouldEffectivelyMatchWallpaperPosition = [(PBUIWallpaperEffectViewBase *)self _shouldEffectivelyMatchWallpaperPosition];
  if ([(PBUIWallpaperEffectViewBase *)self _needsBlurViewForStyle:self->_startStyle]&& ([(PBUIWallpaperEffectViewBase *)self wallpaperPresenter], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    if (!self->_blurView)
    {
      wallpaperPresenter = [(PBUIWallpaperEffectViewBase *)self wallpaperPresenter];
      v7 = [wallpaperPresenter newFakeBlurViewForVariant:self->_variant style:self->_startStyle transformOptions:self->_transformOptions];
      blurView = self->_blurView;
      self->_blurView = v7;

      [(PBUIFakeBluring *)self->_blurView setObserver:self];
      [(PBUIFakeBluring *)self->_blurView setShouldMatchWallpaperPosition:_shouldEffectivelyMatchWallpaperPosition];
    }

    startStyle = self->_startStyle;
    if (_WallpaperStyleHasTint(startStyle) && self->_shouldMaskTint != self->_shouldMaskBlur)
    {
      startStyle = _WallpaperStyleByRemovingTintFromStyle(self->_startStyle);
    }

    [(PBUIFakeBluring *)self->_blurView requestStyle:startStyle];
  }

  else
  {
    [(PBUIFakeBluring *)self->_blurView setObserver:0];
    [(PBUIFakeBluring *)self->_blurView removeFromSuperview];
    [(PBUIWallpaperEffectViewBase *)self setBlurView:0];
  }

  if (self->_startStyle != self->_endStyle && [(PBUIWallpaperEffectViewBase *)self _needsBlurViewForStyle:?]&& ([(PBUIWallpaperEffectViewBase *)self wallpaperPresenter], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, (v11 & 1) != 0))
  {
    if (!self->_transitionBlurView)
    {
      wallpaperPresenter2 = [(PBUIWallpaperEffectViewBase *)self wallpaperPresenter];
      v13 = [wallpaperPresenter2 newFakeBlurViewForVariant:self->_variant style:self->_endStyle transformOptions:self->_transformOptions];
      transitionBlurView = self->_transitionBlurView;
      self->_transitionBlurView = v13;

      [(PBUIFakeBluring *)self->_transitionBlurView setObserver:self];
      [(PBUIFakeBluring *)self->_transitionBlurView setShouldMatchWallpaperPosition:_shouldEffectivelyMatchWallpaperPosition];
    }

    endStyle = self->_endStyle;
    if (_WallpaperStyleHasTint(endStyle) && self->_shouldMaskTint != self->_shouldMaskBlur)
    {
      endStyle = _WallpaperStyleByRemovingTintFromStyle(self->_endStyle);
    }

    [(PBUIFakeBluring *)self->_transitionBlurView requestStyle:endStyle];
  }

  else
  {
    [(PBUIFakeBluring *)self->_transitionBlurView setObserver:0];
    [(PBUIFakeBluring *)self->_transitionBlurView removeFromSuperview];
    [(PBUIWallpaperEffectViewBase *)self setTransitionBlurView:0];
  }

  [(PBUIWallpaperEffectViewBase *)self _configureForCurrentBlurStyle];
}

- (void)_configureForCurrentBlurStyle
{
  shouldMaskBlur = self->_shouldMaskBlur;
  shouldMaskTint = self->_shouldMaskTint;
  if (shouldMaskBlur)
  {
    v5 = !shouldMaskTint;
  }

  else
  {
    if (!self->_shouldMaskTint)
    {
      [(UIImageView *)self->_maskImageView removeFromSuperview];
      [(PBUIWallpaperEffectViewBase *)self setMaskImageView:0];
      LOBYTE(v5) = 0;
      goto LABEL_14;
    }

    shouldMaskTint = 0;
    v5 = 0;
  }

  maskImageView = self->_maskImageView;
  if (!maskImageView)
  {
    v7 = objc_alloc_init(MEMORY[0x277D755E8]);
    v8 = self->_maskImageView;
    self->_maskImageView = v7;

    maskImageView = self->_maskImageView;
  }

  [(UIImageView *)maskImageView setImage:self->_maskImage];
  if (shouldMaskBlur)
  {
LABEL_14:
    [(UIView *)self->_tintMaskingContainer removeFromSuperview];
    [(PBUIWallpaperEffectViewBase *)self setTintMaskingContainer:0];
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    blurMaskingContainer = self->_blurMaskingContainer;
    if (!blurMaskingContainer)
    {
      v16 = objc_alloc_init(_SBMaskingContainerView);
      v17 = self->_blurMaskingContainer;
      self->_blurMaskingContainer = &v16->super;

      blurMaskingContainer = self->_blurMaskingContainer;
    }

    [(PBUIWallpaperEffectViewBase *)self insertSubview:blurMaskingContainer atIndex:0];
    layer = [(UIView *)self->_blurMaskingContainer layer];
    layer2 = [(UIImageView *)self->_maskImageView layer];
    [layer setMask:layer2];

    if (!shouldMaskTint)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  tintMaskingContainer = self->_tintMaskingContainer;
  if (!tintMaskingContainer)
  {
    v10 = objc_alloc_init(_SBMaskingContainerView);
    v11 = self->_tintMaskingContainer;
    self->_tintMaskingContainer = &v10->super;

    tintMaskingContainer = self->_tintMaskingContainer;
  }

  [(PBUIWallpaperEffectViewBase *)self insertSubview:tintMaskingContainer atIndex:0];
  layer3 = [(UIView *)self->_tintMaskingContainer layer];
  layer4 = [(UIImageView *)self->_maskImageView layer];
  [layer3 setMask:layer4];

  if (v5)
  {
    goto LABEL_15;
  }

LABEL_11:
  [(UIView *)self->_blurMaskingContainer removeFromSuperview];
  [(PBUIWallpaperEffectViewBase *)self setBlurMaskingContainer:0];
  if (!shouldMaskTint)
  {
LABEL_12:
    layer5 = [(PBUIWallpaperEffectViewBase *)self layer];
    [layer5 setMask:0];
    goto LABEL_19;
  }

LABEL_18:
  layer5 = [(PBUIWallpaperEffectViewBase *)self layer];
  layer6 = [(UIImageView *)self->_maskImageView layer];
  [layer5 setMask:layer6];

LABEL_19:
  [(PBUIWallpaperEffectViewBase *)self _configureViews];
  transitionFraction = self->_transitionFraction;

  [(PBUIWallpaperEffectViewBase *)self _setTransitionFraction:transitionFraction];
}

- (void)_configureViews
{
  blurMaskingContainer = self->_blurMaskingContainer;
  if (!blurMaskingContainer)
  {
    blurMaskingContainer = self;
  }

  v7 = blurMaskingContainer;
  transitionBlurView = self->_transitionBlurView;
  if (transitionBlurView)
  {
    [(PBUIWallpaperEffectViewBase *)v7 insertSubview:transitionBlurView atIndex:0];
  }

  blurView = self->_blurView;
  if (blurView)
  {
    [(PBUIWallpaperEffectViewBase *)v7 insertSubview:blurView atIndex:0];
  }

  if (_WallpaperStyleHasTint(self->_startStyle) && (_WallpaperStyleHasTint([(PBUIFakeBluring *)self->_blurView effectiveStyle]) & 1) == 0)
  {
    [(PBUIWallpaperEffectViewBase *)self _configureGrayscaleAndColorTintViewForStartStyle:1];
  }

  else
  {
    [(UIView *)self->_grayscaleTintView removeFromSuperview];
    [(PBUIWallpaperEffectViewBase *)self setGrayscaleTintView:0];
    [(UIView *)self->_colorTintView removeFromSuperview];
    [(PBUIWallpaperEffectViewBase *)self setColorTintView:0];
  }

  endStyle = self->_endStyle;
  if (self->_startStyle == endStyle || !_WallpaperStyleHasTint(endStyle) || _WallpaperStyleHasTint([(PBUIFakeBluring *)self->_transitionBlurView effectiveStyle]) && self->_endStyle != 2)
  {
    [(UIView *)self->_transitionGrayscaleTintView removeFromSuperview];
    [(PBUIWallpaperEffectViewBase *)self setTransitionGrayscaleTintView:0];
    [(UIView *)self->_transitionColorTintView removeFromSuperview];
    [(PBUIWallpaperEffectViewBase *)self setTransitionColorTintView:0];
  }

  else
  {
    [(PBUIWallpaperEffectViewBase *)self _configureGrayscaleAndColorTintViewForStartStyle:0];
  }
}

- (PBUIWallpaperEffectViewBase)initWithWallpaperPresenter:(id)presenter variant:(int64_t)variant transformOptions:(unint64_t)options
{
  presenterCopy = presenter;
  v19.receiver = self;
  v19.super_class = PBUIWallpaperEffectViewBase;
  v10 = [(PBUIWallpaperEffectViewBase *)&v19 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_wallpaperPresenter, presenter);
    v11->_startStyle = -1;
    v11->_variant = variant;
    v11->_transformOptions = options;
    [(PBUIWallpaperEffectViewBase *)v11 setClipsToBounds:1];
    layer = [(PBUIWallpaperEffectViewBase *)v11 layer];
    [layer setAllowsEdgeAntialiasing:0];

    layer2 = [(PBUIWallpaperEffectViewBase *)v11 layer];
    [layer2 setAllowsGroupOpacity:1];

    if (objc_opt_respondsToSelector())
    {
      legibilityEnvironment = [presenterCopy legibilityEnvironment];
      [legibilityEnvironment averageColor];
    }

    else
    {
      legibilityEnvironment = [presenterCopy legibilitySettingsForVariant:variant];
      [legibilityEnvironment contentColor];
    }
    v15 = ;
    wallpaperAverageColor = v11->_wallpaperAverageColor;
    v11->_wallpaperAverageColor = v15;

    [presenterCopy addObserver:v11 forVariant:v11->_variant];
    [(PBUIWallpaperEffectViewBase *)v11 setShouldMatchWallpaperPosition:1];
    v11->_accessibilityReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__accessibilityReduceTransparencyChanged_ name:*MEMORY[0x277D764C8] object:0];
  }

  return v11;
}

- (PBUIWallpaperEffectViewBase)initWithFrame:(CGRect)frame
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-initWithFrame: unavailable" userInfo:{0, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  objc_exception_throw(v3);
}

- (PBUIWallpaperEffectViewBase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"This class does not support unarchiving from a nib" userInfo:0];
  objc_exception_throw(v4);
}

- (void)dealloc
{
  [(PBUIWallpaperPresenting *)self->_wallpaperPresenter removeObserver:self forVariant:self->_variant];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
  [(PBUIFakeBluring *)self->_blurView setObserver:0];
  [(PBUIFakeBluring *)self->_transitionBlurView setObserver:0];

  v4.receiver = self;
  v4.super_class = PBUIWallpaperEffectViewBase;
  [(PBUIWallpaperEffectViewBase *)&v4 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = PBUIStringForWallpaperVariant(self->_variant);
  v5 = [v3 appendObject:v4 withName:@"variant"];

  v6 = [v3 appendBool:self->_shouldMatchWallpaperPosition withName:@"shouldMatchWallpaperPosition"];
  startStyle = self->_startStyle;
  endStyle = self->_endStyle;
  v9 = PBUIWallpaperStyleDescription(startStyle);
  if (startStyle == endStyle)
  {
    v10 = [v3 appendObject:v9 withName:@"style"];
  }

  else
  {
    v11 = [v3 appendObject:v9 withName:@"startStyle"];

    v12 = PBUIWallpaperStyleDescription(self->_endStyle);
    v13 = [v3 appendObject:v12 withName:@"endStyle"];

    v14 = [v3 appendFloat:@"transitionFraction" withName:2 decimalPrecision:self->_transitionFraction];
  }

  appendSuper = [v3 appendSuper];
  build = [v3 build];

  return build;
}

- (void)setStyle:(int64_t)style
{
  if (style == 1)
  {
    [(PBUIWallpaperEffectViewBase *)a2 setStyle:?];
  }

  if (self->_startStyle != style || self->_endStyle != style)
  {
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      startStyle = self->_startStyle;
      if (startStyle != style && (!style || !startStyle))
      {
        [(PBUIFakeBluring *)self->_blurView setObserver:0];
        [(PBUIFakeBluring *)self->_blurView removeFromSuperview];
        [(PBUIWallpaperEffectViewBase *)self setBlurView:0];
      }

      endStyle = self->_endStyle;
      if (endStyle != style && (!style || !endStyle))
      {
        [(PBUIFakeBluring *)self->_transitionBlurView setObserver:0];
        [(PBUIFakeBluring *)self->_transitionBlurView removeFromSuperview];
        [(PBUIWallpaperEffectViewBase *)self setTransitionBlurView:0];
      }
    }

    self->_startStyle = style;
    self->_endStyle = style;

    [(PBUIWallpaperEffectViewBase *)self _configureFromScratch];
  }
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  isHidden = [(PBUIWallpaperEffectViewBase *)self isHidden];
  v6.receiver = self;
  v6.super_class = PBUIWallpaperEffectViewBase;
  [(PBUIWallpaperEffectViewBase *)&v6 setHidden:hiddenCopy];
  if (isHidden != [(PBUIWallpaperEffectViewBase *)self isHidden])
  {
    [(PBUIWallpaperEffectViewBase *)self _configureViewsPositioning];
  }
}

- (void)setForcesOpaque:(BOOL)opaque
{
  if (self->_forcesOpaque != opaque)
  {
    self->_forcesOpaque = opaque;
    [(PBUIWallpaperEffectViewBase *)self _configureFromScratch];
  }
}

- (void)setShouldMatchWallpaperPosition:(BOOL)position
{
  if (self->_shouldMatchWallpaperPosition != position)
  {
    self->_shouldMatchWallpaperPosition = position;
    [(PBUIWallpaperEffectViewBase *)self _configureViewsPositioning];
  }
}

- (void)setTransformOptions:(unint64_t)options
{
  if (self->_transformOptions != options)
  {
    self->_transformOptions = options;
    [(PBUIFakeBluring *)self->_blurView setTransformOptions:?];
    transitionBlurView = self->_transitionBlurView;

    [(PBUIFakeBluring *)transitionBlurView setTransformOptions:options];
  }
}

- (void)setExternalDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (![(PBUIExternalDisplayConfiguration *)self->_externalDisplayConfiguration isEqual:?])
  {
    objc_storeStrong(&self->_externalDisplayConfiguration, configuration);
    wallpaperPresenter = [(PBUIWallpaperEffectViewBase *)self wallpaperPresenter];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      wallpaperPresenter2 = [(PBUIWallpaperEffectViewBase *)self wallpaperPresenter];
      [wallpaperPresenter2 setExternalDisplayConfiguration:configurationCopy];
    }
  }
}

- (BOOL)prepareToAnimateToTransitionState:(id *)state
{
  var0 = state->var0;
  var1 = state->var1;
  startStyle = self->_startStyle;
  endStyle = self->_endStyle;
  if (startStyle != endStyle && var0 != var1)
  {
    if (startStyle == var0 && endStyle == var1)
    {
      return 1;
    }

    if (startStyle != var1 || endStyle != var0)
    {
      return 0;
    }

    v12 = 1.0 - state->var2;
    v13 = state->var1;
    goto LABEL_25;
  }

  if (startStyle == endStyle)
  {
    if (var0 == var1)
    {
      PBUIWallpaperStyleTransitionStateMake(self->_startStyle, state->var0, &v16, 0.0);
      [(PBUIWallpaperEffectViewBase *)self setTransitionState:&v16];
LABEL_24:
      v12 = 1.0;
      v13 = startStyle;
LABEL_25:
      endStyle = var0;
      goto LABEL_26;
    }

    if (startStyle == var0)
    {
      v14 = 0.0;
LABEL_31:
      PBUIWallpaperStyleTransitionStateMake(state->var0, state->var1, &v16, v14);
      [(PBUIWallpaperEffectViewBase *)self setTransitionState:&v16];
      return 1;
    }

    if (startStyle == var1)
    {
      v14 = 1.0;
      goto LABEL_31;
    }
  }

  else
  {
    if (startStyle == var0 && self->_transitionFraction < 1.0)
    {
      v12 = 0.0;
      v13 = state->var0;
LABEL_26:
      PBUIWallpaperStyleTransitionStateMake(v13, endStyle, &v16, v12);
      *&state->var0 = v16;
      state->var2 = v17;
      return 1;
    }

    if (endStyle == var0 && self->_transitionFraction > 0.0)
    {
      goto LABEL_24;
    }
  }

  return 0;
}

- (void)setTransitionState:(id *)state
{
  if (state->var0 != self->_startStyle || state->var1 != self->_endStyle)
  {
    self->_startStyle = state->var0;
    self->_endStyle = state->var1;
    [(PBUIWallpaperEffectViewBase *)self _configureFromScratch];
  }

  var2 = state->var2;

  [(PBUIWallpaperEffectViewBase *)self _setTransitionFraction:var2];
}

- (BOOL)currentTransitionStateIsOpaque
{
  if (BSFloatEqualToFloat())
  {
    v3 = 424;
    goto LABEL_5;
  }

  if (BSFloatEqualToFloat())
  {
    v3 = 432;
LABEL_5:
    if ((_WallpaperStyleHasBlur(*(&self->super.super.super.isa + v3)) & 1) == 0)
    {
      return self->_forcesOpaque;
    }

    return 1;
  }

  if (self->_forcesOpaque)
  {
    return 1;
  }

  if (!_WallpaperStyleHasBlur(self->_startStyle))
  {
    return 0;
  }

  endStyle = self->_endStyle;

  return _WallpaperStyleHasBlur(endStyle);
}

- (void)setMaskImage:(id)image masksBlur:(BOOL)blur masksTint:(BOOL)tint
{
  tintCopy = tint;
  blurCopy = blur;
  imageCopy = image;
  v9 = imageCopy;
  maskImage = self->_maskImage;
  if (maskImage != imageCopy || self->_shouldMaskBlur != blurCopy || self->_shouldMaskTint != tintCopy)
  {
    v11 = 0;
    v12 = 0;
    v14 = v9;
    v13 = 0;
    if (v9 && (blurCopy || tintCopy))
    {
      v12 = v9;
      maskImage = self->_maskImage;
      v11 = blurCopy;
      v13 = tintCopy;
    }

    self->_maskImage = v12;

    self->_shouldMaskBlur = v11;
    self->_shouldMaskTint = v13;
    imageCopy = [(PBUIWallpaperEffectViewBase *)self _configureFromScratch];
    v9 = v14;
  }

  MEMORY[0x2821F96F8](imageCopy, v9);
}

- (void)offsetWallpaperBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  [(PBUIFakeBluring *)self->_blurView offsetWallpaperBy:?];
  transitionBlurView = self->_transitionBlurView;

  [(PBUIFakeBluring *)transitionBlurView offsetWallpaperBy:x, y];
}

- (void)wallpaperLegibilityEnvironmentDidChange:(id)change
{
  changeCopy = change;
  v7 = getPLKLegibilityEnvironmentVariantLockScreen();
  v5 = [changeCopy legibilityEnvironmentContextForVariant:v7];

  averageColor = [v5 averageColor];
  [(PBUIWallpaperEffectViewBase *)self _updateWallpaperAverageColor:averageColor];
}

- (void)_updateWallpaperAverageColor:(id)color
{
  colorCopy = color;
  v5 = _BackdropRenderingHintForWallpaperAverageColor(self->_wallpaperAverageColor);
  wallpaperAverageColor = self->_wallpaperAverageColor;
  self->_wallpaperAverageColor = colorCopy;
  v7 = colorCopy;

  v8 = _BackdropRenderingHintForWallpaperAverageColor(self->_wallpaperAverageColor);
  if (v8 != v5)
  {

    [(PBUIWallpaperEffectViewBase *)self _configureFromScratch];
  }
}

- (void)setWallpaperStyle:(int64_t)style
{
  if (style == 1)
  {
    style = 2;
  }

  [(PBUIWallpaperEffectViewBase *)self setStyle:style];
}

- (void)_setTransitionFraction:(double)fraction
{
  self->_transitionFraction = fraction;
  if (self->_startStyle == self->_endStyle)
  {
    fractionCopy = 0.0;
  }

  else
  {
    fractionCopy = fraction;
  }

  blurView = self->_blurView;
  if (blurView && self->_transitionBlurView)
  {
    [(PBUIFakeBluring *)blurView setAlpha:1.0];
    [(PBUIFakeBluring *)self->_transitionBlurView setAlpha:fractionCopy];
    v6 = 1.0 - fractionCopy;
  }

  else
  {
    v6 = 1.0 - fractionCopy;
    [(PBUIFakeBluring *)blurView setAlpha:1.0 - fractionCopy];
    [(PBUIFakeBluring *)self->_transitionBlurView setAlpha:fractionCopy];
  }

  [(UIView *)self->_grayscaleTintView setAlpha:v6];
  [(UIView *)self->_colorTintView setAlpha:v6];
  [(UIView *)self->_transitionGrayscaleTintView setAlpha:fractionCopy];
  transitionColorTintView = self->_transitionColorTintView;

  [(UIView *)transitionColorTintView setAlpha:fractionCopy];
}

- (BOOL)_needsBlurViewForStyle:(int64_t)style
{
  if (self->_forcesOpaque)
  {
    return 1;
  }

  else
  {
    return _WallpaperStyleHasBlur(style);
  }
}

- (void)_configureGrayscaleAndColorTintViewForStartStyle:(BOOL)style
{
  styleCopy = style;
  tintMaskingContainer = self->_tintMaskingContainer;
  if (!tintMaskingContainer)
  {
    tintMaskingContainer = self;
  }

  v6 = tintMaskingContainer;
  v7 = &OBJC_IVAR___PBUIWallpaperEffectViewBase__endStyle;
  if (styleCopy)
  {
    v7 = &OBJC_IVAR___PBUIWallpaperEffectViewBase__startStyle;
  }

  v8 = *(&self->super.super.super.isa + *v7);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  _WallpaperBackdropParametersForStyleAndAverageColor(v8, self->_wallpaperAverageColor, &v43);
  v42[0] = v43;
  v42[1] = v44;
  v42[2] = v45;
  v42[3] = v46;
  v9 = PBUIBackdropOutputSettingsForWallpaperBackdropParameters(v42);
  v10 = v9;
  if (v8 == 2)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [v9 grayscaleTintAlpha];
    if (v12 <= 0.00000011920929)
    {
LABEL_12:
      if (styleCopy)
      {
        grayscaleTintView = [(PBUIWallpaperEffectViewBase *)self grayscaleTintView];
        [grayscaleTintView removeFromSuperview];

        [(PBUIWallpaperEffectViewBase *)self setGrayscaleTintView:0];
      }

      else
      {
        transitionGrayscaleTintView = [(PBUIWallpaperEffectViewBase *)self transitionGrayscaleTintView];
        [transitionGrayscaleTintView removeFromSuperview];

        [(PBUIWallpaperEffectViewBase *)self setTransitionGrayscaleTintView:0];
      }

      v17 = 0;
      goto LABEL_22;
    }

    v13 = MEMORY[0x277D75348];
    [v10 grayscaleTintLevel];
    blackColor = [v13 colorWithWhite:? alpha:?];
  }

  v14 = blackColor;
  if (!blackColor)
  {
    goto LABEL_12;
  }

  if (styleCopy)
  {
    [(PBUIWallpaperEffectViewBase *)self grayscaleTintView];
  }

  else
  {
    [(PBUIWallpaperEffectViewBase *)self transitionGrayscaleTintView];
  }
  v18 = ;
  if (!v18)
  {
    v19 = [_SBTintView alloc];
    [(PBUIWallpaperEffectViewBase *)self bounds];
    v18 = [(_SBTintView *)v19 initWithFrame:?];
    if (styleCopy)
    {
      [(PBUIWallpaperEffectViewBase *)self setGrayscaleTintView:v18];
    }

    else
    {
      [(PBUIWallpaperEffectViewBase *)self setTransitionGrayscaleTintView:v18];
    }
  }

  v20 = MEMORY[0x277D75D18];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __80__PBUIWallpaperEffectViewBase__configureGrayscaleAndColorTintViewForStartStyle___block_invoke;
  v39[3] = &unk_2783622E0;
  v40 = v18;
  v17 = v14;
  v41 = v17;
  v21 = v18;
  [v20 performWithoutAnimation:v39];
  [(PBUIWallpaperEffectViewBase *)v6 addSubview:v21];

LABEL_22:
  [v10 colorTintAlpha];
  v23 = v22;
  if (v22 > 0.00000011920929 && ([v10 colorTint], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "colorWithAlphaComponent:", v23), v25 = objc_claimAutoreleasedReturnValue(), v24, v25))
  {
    if (styleCopy)
    {
      [(PBUIWallpaperEffectViewBase *)self colorTintView];
    }

    else
    {
      [(PBUIWallpaperEffectViewBase *)self transitionColorTintView];
    }
    v28 = ;
    if (!v28)
    {
      v29 = [_SBTintView alloc];
      [(PBUIWallpaperEffectViewBase *)self bounds];
      v28 = [(_SBTintView *)v29 initWithFrame:?];
      if (styleCopy)
      {
        [(PBUIWallpaperEffectViewBase *)self setColorTintView:v28];
      }

      else
      {
        [(PBUIWallpaperEffectViewBase *)self setTransitionColorTintView:v28];
      }
    }

    v30 = MEMORY[0x277D75D18];
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __80__PBUIWallpaperEffectViewBase__configureGrayscaleAndColorTintViewForStartStyle___block_invoke_2;
    v36 = &unk_2783622E0;
    v37 = v28;
    v38 = v25;
    v31 = v25;
    v32 = v28;
    [v30 performWithoutAnimation:&v33];
    [(PBUIWallpaperEffectViewBase *)v6 addSubview:v32, v33, v34, v35, v36];
  }

  else if (styleCopy)
  {
    colorTintView = [(PBUIWallpaperEffectViewBase *)self colorTintView];
    [colorTintView removeFromSuperview];

    [(PBUIWallpaperEffectViewBase *)self setColorTintView:0];
  }

  else
  {
    transitionColorTintView = [(PBUIWallpaperEffectViewBase *)self transitionColorTintView];
    [transitionColorTintView removeFromSuperview];

    [(PBUIWallpaperEffectViewBase *)self setTransitionColorTintView:0];
  }
}

uint64_t __80__PBUIWallpaperEffectViewBase__configureGrayscaleAndColorTintViewForStartStyle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setBackgroundColor:v3];
}

uint64_t __80__PBUIWallpaperEffectViewBase__configureGrayscaleAndColorTintViewForStartStyle___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setBackgroundColor:v3];
}

- (void)_accessibilityReduceTransparencyChanged:(id)changed
{
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if (self->_accessibilityReduceTransparencyEnabled != IsReduceTransparencyEnabled)
  {
    self->_accessibilityReduceTransparencyEnabled = IsReduceTransparencyEnabled;
    [(PBUIFakeBluring *)self->_blurView setObserver:0];
    [(PBUIFakeBluring *)self->_blurView removeFromSuperview];
    [(PBUIWallpaperEffectViewBase *)self setBlurView:0];

    [(PBUIWallpaperEffectViewBase *)self _configureFromScratch];
  }
}

- (void)setStyle:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PBUIWallpaperEffectViewBase.m" lineNumber:150 description:@"PBUIWallpaperEffectView does not support style Hidden"];
}

@end