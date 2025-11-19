@interface PBUIWallpaperEffectViewBase
- (BOOL)_needsBlurViewForStyle:(int64_t)a3;
- (BOOL)currentTransitionStateIsOpaque;
- (BOOL)prepareToAnimateToTransitionState:(id *)a3;
- (NSString)description;
- (PBUIWallpaperEffectViewBase)initWithCoder:(id)a3;
- (PBUIWallpaperEffectViewBase)initWithFrame:(CGRect)a3;
- (PBUIWallpaperEffectViewBase)initWithWallpaperPresenter:(id)a3 variant:(int64_t)a4 transformOptions:(unint64_t)a5;
- (void)_accessibilityReduceTransparencyChanged:(id)a3;
- (void)_configureForCurrentBlurStyle;
- (void)_configureFromScratch;
- (void)_configureGrayscaleAndColorTintViewForStartStyle:(BOOL)a3;
- (void)_configureViews;
- (void)_configureViewsPositioning;
- (void)_setTransitionFraction:(double)a3;
- (void)_updateWallpaperAverageColor:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)offsetWallpaperBy:(CGPoint)a3;
- (void)setExternalDisplayConfiguration:(id)a3;
- (void)setForcesOpaque:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setMaskImage:(id)a3 masksBlur:(BOOL)a4 masksTint:(BOOL)a5;
- (void)setShouldMatchWallpaperPosition:(BOOL)a3;
- (void)setStyle:(int64_t)a3;
- (void)setTransformOptions:(unint64_t)a3;
- (void)setTransitionState:(id *)a3;
- (void)setWallpaperStyle:(int64_t)a3;
- (void)wallpaperLegibilityEnvironmentDidChange:(id)a3;
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

  v11 = [MEMORY[0x277CF0CA8] sharedInstance];
  if ([v11 deviceClass] == 2)
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
  v3 = [(PBUIWallpaperEffectViewBase *)self shouldMatchWallpaperPosition];
  [(PBUIFakeBluring *)self->_blurView setShouldMatchWallpaperPosition:v3];
  [(PBUIFakeBluring *)self->_transitionBlurView setShouldMatchWallpaperPosition:v3];
  if (!v3)
  {
    v4 = *MEMORY[0x277CBF348];
    v5 = *(MEMORY[0x277CBF348] + 8);

    [(PBUIWallpaperEffectViewBase *)self offsetWallpaperBy:v4, v5];
  }
}

- (void)_configureFromScratch
{
  v3 = [(PBUIWallpaperEffectViewBase *)self _shouldEffectivelyMatchWallpaperPosition];
  if ([(PBUIWallpaperEffectViewBase *)self _needsBlurViewForStyle:self->_startStyle]&& ([(PBUIWallpaperEffectViewBase *)self wallpaperPresenter], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    if (!self->_blurView)
    {
      v6 = [(PBUIWallpaperEffectViewBase *)self wallpaperPresenter];
      v7 = [v6 newFakeBlurViewForVariant:self->_variant style:self->_startStyle transformOptions:self->_transformOptions];
      blurView = self->_blurView;
      self->_blurView = v7;

      [(PBUIFakeBluring *)self->_blurView setObserver:self];
      [(PBUIFakeBluring *)self->_blurView setShouldMatchWallpaperPosition:v3];
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
      v12 = [(PBUIWallpaperEffectViewBase *)self wallpaperPresenter];
      v13 = [v12 newFakeBlurViewForVariant:self->_variant style:self->_endStyle transformOptions:self->_transformOptions];
      transitionBlurView = self->_transitionBlurView;
      self->_transitionBlurView = v13;

      [(PBUIFakeBluring *)self->_transitionBlurView setObserver:self];
      [(PBUIFakeBluring *)self->_transitionBlurView setShouldMatchWallpaperPosition:v3];
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
    v18 = [(UIView *)self->_blurMaskingContainer layer];
    v19 = [(UIImageView *)self->_maskImageView layer];
    [v18 setMask:v19];

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
  v12 = [(UIView *)self->_tintMaskingContainer layer];
  v13 = [(UIImageView *)self->_maskImageView layer];
  [v12 setMask:v13];

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
    v14 = [(PBUIWallpaperEffectViewBase *)self layer];
    [v14 setMask:0];
    goto LABEL_19;
  }

LABEL_18:
  v14 = [(PBUIWallpaperEffectViewBase *)self layer];
  v20 = [(UIImageView *)self->_maskImageView layer];
  [v14 setMask:v20];

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

- (PBUIWallpaperEffectViewBase)initWithWallpaperPresenter:(id)a3 variant:(int64_t)a4 transformOptions:(unint64_t)a5
{
  v9 = a3;
  v19.receiver = self;
  v19.super_class = PBUIWallpaperEffectViewBase;
  v10 = [(PBUIWallpaperEffectViewBase *)&v19 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_wallpaperPresenter, a3);
    v11->_startStyle = -1;
    v11->_variant = a4;
    v11->_transformOptions = a5;
    [(PBUIWallpaperEffectViewBase *)v11 setClipsToBounds:1];
    v12 = [(PBUIWallpaperEffectViewBase *)v11 layer];
    [v12 setAllowsEdgeAntialiasing:0];

    v13 = [(PBUIWallpaperEffectViewBase *)v11 layer];
    [v13 setAllowsGroupOpacity:1];

    if (objc_opt_respondsToSelector())
    {
      v14 = [v9 legibilityEnvironment];
      [v14 averageColor];
    }

    else
    {
      v14 = [v9 legibilitySettingsForVariant:a4];
      [v14 contentColor];
    }
    v15 = ;
    wallpaperAverageColor = v11->_wallpaperAverageColor;
    v11->_wallpaperAverageColor = v15;

    [v9 addObserver:v11 forVariant:v11->_variant];
    [(PBUIWallpaperEffectViewBase *)v11 setShouldMatchWallpaperPosition:1];
    v11->_accessibilityReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v11 selector:sel__accessibilityReduceTransparencyChanged_ name:*MEMORY[0x277D764C8] object:0];
  }

  return v11;
}

- (PBUIWallpaperEffectViewBase)initWithFrame:(CGRect)a3
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-initWithFrame: unavailable" userInfo:{0, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  objc_exception_throw(v3);
}

- (PBUIWallpaperEffectViewBase)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"This class does not support unarchiving from a nib" userInfo:0];
  objc_exception_throw(v4);
}

- (void)dealloc
{
  [(PBUIWallpaperPresenting *)self->_wallpaperPresenter removeObserver:self forVariant:self->_variant];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];
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

  v15 = [v3 appendSuper];
  v16 = [v3 build];

  return v16;
}

- (void)setStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    [(PBUIWallpaperEffectViewBase *)a2 setStyle:?];
  }

  if (self->_startStyle != a3 || self->_endStyle != a3)
  {
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      startStyle = self->_startStyle;
      if (startStyle != a3 && (!a3 || !startStyle))
      {
        [(PBUIFakeBluring *)self->_blurView setObserver:0];
        [(PBUIFakeBluring *)self->_blurView removeFromSuperview];
        [(PBUIWallpaperEffectViewBase *)self setBlurView:0];
      }

      endStyle = self->_endStyle;
      if (endStyle != a3 && (!a3 || !endStyle))
      {
        [(PBUIFakeBluring *)self->_transitionBlurView setObserver:0];
        [(PBUIFakeBluring *)self->_transitionBlurView removeFromSuperview];
        [(PBUIWallpaperEffectViewBase *)self setTransitionBlurView:0];
      }
    }

    self->_startStyle = a3;
    self->_endStyle = a3;

    [(PBUIWallpaperEffectViewBase *)self _configureFromScratch];
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(PBUIWallpaperEffectViewBase *)self isHidden];
  v6.receiver = self;
  v6.super_class = PBUIWallpaperEffectViewBase;
  [(PBUIWallpaperEffectViewBase *)&v6 setHidden:v3];
  if (v5 != [(PBUIWallpaperEffectViewBase *)self isHidden])
  {
    [(PBUIWallpaperEffectViewBase *)self _configureViewsPositioning];
  }
}

- (void)setForcesOpaque:(BOOL)a3
{
  if (self->_forcesOpaque != a3)
  {
    self->_forcesOpaque = a3;
    [(PBUIWallpaperEffectViewBase *)self _configureFromScratch];
  }
}

- (void)setShouldMatchWallpaperPosition:(BOOL)a3
{
  if (self->_shouldMatchWallpaperPosition != a3)
  {
    self->_shouldMatchWallpaperPosition = a3;
    [(PBUIWallpaperEffectViewBase *)self _configureViewsPositioning];
  }
}

- (void)setTransformOptions:(unint64_t)a3
{
  if (self->_transformOptions != a3)
  {
    self->_transformOptions = a3;
    [(PBUIFakeBluring *)self->_blurView setTransformOptions:?];
    transitionBlurView = self->_transitionBlurView;

    [(PBUIFakeBluring *)transitionBlurView setTransformOptions:a3];
  }
}

- (void)setExternalDisplayConfiguration:(id)a3
{
  v8 = a3;
  if (![(PBUIExternalDisplayConfiguration *)self->_externalDisplayConfiguration isEqual:?])
  {
    objc_storeStrong(&self->_externalDisplayConfiguration, a3);
    v5 = [(PBUIWallpaperEffectViewBase *)self wallpaperPresenter];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(PBUIWallpaperEffectViewBase *)self wallpaperPresenter];
      [v7 setExternalDisplayConfiguration:v8];
    }
  }
}

- (BOOL)prepareToAnimateToTransitionState:(id *)a3
{
  var0 = a3->var0;
  var1 = a3->var1;
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

    v12 = 1.0 - a3->var2;
    v13 = a3->var1;
    goto LABEL_25;
  }

  if (startStyle == endStyle)
  {
    if (var0 == var1)
    {
      PBUIWallpaperStyleTransitionStateMake(self->_startStyle, a3->var0, &v16, 0.0);
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
      PBUIWallpaperStyleTransitionStateMake(a3->var0, a3->var1, &v16, v14);
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
      v13 = a3->var0;
LABEL_26:
      PBUIWallpaperStyleTransitionStateMake(v13, endStyle, &v16, v12);
      *&a3->var0 = v16;
      a3->var2 = v17;
      return 1;
    }

    if (endStyle == var0 && self->_transitionFraction > 0.0)
    {
      goto LABEL_24;
    }
  }

  return 0;
}

- (void)setTransitionState:(id *)a3
{
  if (a3->var0 != self->_startStyle || a3->var1 != self->_endStyle)
  {
    self->_startStyle = a3->var0;
    self->_endStyle = a3->var1;
    [(PBUIWallpaperEffectViewBase *)self _configureFromScratch];
  }

  var2 = a3->var2;

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

- (void)setMaskImage:(id)a3 masksBlur:(BOOL)a4 masksTint:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = v8;
  maskImage = self->_maskImage;
  if (maskImage != v8 || self->_shouldMaskBlur != v6 || self->_shouldMaskTint != v5)
  {
    v11 = 0;
    v12 = 0;
    v14 = v9;
    v13 = 0;
    if (v9 && (v6 || v5))
    {
      v12 = v9;
      maskImage = self->_maskImage;
      v11 = v6;
      v13 = v5;
    }

    self->_maskImage = v12;

    self->_shouldMaskBlur = v11;
    self->_shouldMaskTint = v13;
    v8 = [(PBUIWallpaperEffectViewBase *)self _configureFromScratch];
    v9 = v14;
  }

  MEMORY[0x2821F96F8](v8, v9);
}

- (void)offsetWallpaperBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PBUIFakeBluring *)self->_blurView offsetWallpaperBy:?];
  transitionBlurView = self->_transitionBlurView;

  [(PBUIFakeBluring *)transitionBlurView offsetWallpaperBy:x, y];
}

- (void)wallpaperLegibilityEnvironmentDidChange:(id)a3
{
  v4 = a3;
  v7 = getPLKLegibilityEnvironmentVariantLockScreen();
  v5 = [v4 legibilityEnvironmentContextForVariant:v7];

  v6 = [v5 averageColor];
  [(PBUIWallpaperEffectViewBase *)self _updateWallpaperAverageColor:v6];
}

- (void)_updateWallpaperAverageColor:(id)a3
{
  v4 = a3;
  v5 = _BackdropRenderingHintForWallpaperAverageColor(self->_wallpaperAverageColor);
  wallpaperAverageColor = self->_wallpaperAverageColor;
  self->_wallpaperAverageColor = v4;
  v7 = v4;

  v8 = _BackdropRenderingHintForWallpaperAverageColor(self->_wallpaperAverageColor);
  if (v8 != v5)
  {

    [(PBUIWallpaperEffectViewBase *)self _configureFromScratch];
  }
}

- (void)setWallpaperStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    a3 = 2;
  }

  [(PBUIWallpaperEffectViewBase *)self setStyle:a3];
}

- (void)_setTransitionFraction:(double)a3
{
  self->_transitionFraction = a3;
  if (self->_startStyle == self->_endStyle)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a3;
  }

  blurView = self->_blurView;
  if (blurView && self->_transitionBlurView)
  {
    [(PBUIFakeBluring *)blurView setAlpha:1.0];
    [(PBUIFakeBluring *)self->_transitionBlurView setAlpha:v4];
    v6 = 1.0 - v4;
  }

  else
  {
    v6 = 1.0 - v4;
    [(PBUIFakeBluring *)blurView setAlpha:1.0 - v4];
    [(PBUIFakeBluring *)self->_transitionBlurView setAlpha:v4];
  }

  [(UIView *)self->_grayscaleTintView setAlpha:v6];
  [(UIView *)self->_colorTintView setAlpha:v6];
  [(UIView *)self->_transitionGrayscaleTintView setAlpha:v4];
  transitionColorTintView = self->_transitionColorTintView;

  [(UIView *)transitionColorTintView setAlpha:v4];
}

- (BOOL)_needsBlurViewForStyle:(int64_t)a3
{
  if (self->_forcesOpaque)
  {
    return 1;
  }

  else
  {
    return _WallpaperStyleHasBlur(a3);
  }
}

- (void)_configureGrayscaleAndColorTintViewForStartStyle:(BOOL)a3
{
  v3 = a3;
  tintMaskingContainer = self->_tintMaskingContainer;
  if (!tintMaskingContainer)
  {
    tintMaskingContainer = self;
  }

  v6 = tintMaskingContainer;
  v7 = &OBJC_IVAR___PBUIWallpaperEffectViewBase__endStyle;
  if (v3)
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
    v11 = [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [v9 grayscaleTintAlpha];
    if (v12 <= 0.00000011920929)
    {
LABEL_12:
      if (v3)
      {
        v15 = [(PBUIWallpaperEffectViewBase *)self grayscaleTintView];
        [v15 removeFromSuperview];

        [(PBUIWallpaperEffectViewBase *)self setGrayscaleTintView:0];
      }

      else
      {
        v16 = [(PBUIWallpaperEffectViewBase *)self transitionGrayscaleTintView];
        [v16 removeFromSuperview];

        [(PBUIWallpaperEffectViewBase *)self setTransitionGrayscaleTintView:0];
      }

      v17 = 0;
      goto LABEL_22;
    }

    v13 = MEMORY[0x277D75348];
    [v10 grayscaleTintLevel];
    v11 = [v13 colorWithWhite:? alpha:?];
  }

  v14 = v11;
  if (!v11)
  {
    goto LABEL_12;
  }

  if (v3)
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
    if (v3)
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
    if (v3)
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
      if (v3)
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

  else if (v3)
  {
    v26 = [(PBUIWallpaperEffectViewBase *)self colorTintView];
    [v26 removeFromSuperview];

    [(PBUIWallpaperEffectViewBase *)self setColorTintView:0];
  }

  else
  {
    v27 = [(PBUIWallpaperEffectViewBase *)self transitionColorTintView];
    [v27 removeFromSuperview];

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

- (void)_accessibilityReduceTransparencyChanged:(id)a3
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