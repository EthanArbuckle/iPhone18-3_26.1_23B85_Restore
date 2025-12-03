@interface CCUIBaseSliderView
- (BOOL)isGroupRenderingRequired;
- (BOOL)shouldIntegralizeContentLayout;
- (BOOL)shouldIntegralizeValueLayout;
- (CCUIBaseSliderView)initWithFrame:(CGRect)frame;
- (CGPoint)glyphCenter;
- (NSArray)punchOutRenderingViews;
- (NSArray)topLevelBlockingGestureRecognizers;
- (double)_effectiveStretchAmount;
- (double)_length;
- (double)presentationLayoutValue;
- (float)presentationValue;
- (unint64_t)buttonInputStepCount;
- (void)_applyGlyphState:(id)state performConfiguration:(BOOL)configuration;
- (void)_configureButtonInteraction;
- (void)_configureGroupRenderingMode;
- (void)_configurePanGestureRecognizer;
- (void)_handleFluidSliderInteractionUpdate:(id)update;
- (void)_layoutElasticContentContainers;
- (void)_setActiveGlyphView:(id)view;
- (void)_setGlyphImage:(id)image forceUpdate:(BOOL)update;
- (void)_setGlyphState:(id)state;
- (void)_updateBackgroundViewAppearance;
- (void)_updateContinuousSliderCornerRadius;
- (void)_updateGlyphImage;
- (void)_updateGlyphTinting;
- (void)_updateHasInoperativeAppearance;
- (void)_updateInteractionEnabled;
- (void)_updateStretchAmount;
- (void)addCustomInputDriver:(id)driver;
- (void)applyContinuousSliderCornerRadius:(double)radius;
- (void)didMoveToWindow;
- (void)layoutElasticContentViews;
- (void)layoutSubviews;
- (void)setButtonInputStepCount:(unint64_t)count;
- (void)setContentMetrics:(id)metrics;
- (void)setContinuousSliderCornerRadius:(double)radius;
- (void)setElasticContentStretchAmount:(double)amount;
- (void)setEnabled:(BOOL)enabled;
- (void)setGlyphPackageDescription:(id)description;
- (void)setGlyphScale:(double)scale;
- (void)setGlyphState:(id)state;
- (void)setGlyphTintColor:(id)color;
- (void)setGlyphVisible:(BOOL)visible;
- (void)setInoperative:(BOOL)inoperative;
- (void)setName:(id)name;
- (void)setShouldIncludeVolumeButtonsInput:(BOOL)input;
- (void)setShouldRelaxVisibilityRequirementForButtonInput:(BOOL)input;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setValue:(float)value animated:(BOOL)animated;
- (void)setValueVisible:(BOOL)visible;
@end

@implementation CCUIBaseSliderView

- (void)_updateInteractionEnabled
{
  if ([(CCUIBaseSliderView *)self isEnabled])
  {
    isUserInteractionEnabled = [(CCUIBaseSliderView *)self isUserInteractionEnabled];
  }

  else
  {
    isUserInteractionEnabled = 0;
  }

  interaction = self->_interaction;

  [(_UIFluidSliderInteraction *)interaction setUserInteractionEnabled:isUserInteractionEnabled];
}

- (void)_updateHasInoperativeAppearance
{
  if ([(CCUIBaseSliderView *)self isInoperative])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(CCUIBaseSliderView *)self isEnabled]^ 1;
  }

  v4 = v3 & [(CCUIBaseSliderView *)self isValueVisible];
  if (self->_hasInoperativeAppearance != v4)
  {
    self->_hasInoperativeAppearance = v4;

    [(CCUIBaseSliderView *)self applyInoperativeAppearance:?];
  }
}

- (void)layoutSubviews
{
  v50.receiver = self;
  v50.super_class = CCUIBaseSliderView;
  [(CCUIBaseSliderView *)&v50 layoutSubviews];
  [(CCUIBaseSliderView *)self bounds];
  if (self->_sizeForValidConfiguration.width == v3 && self->_sizeForValidConfiguration.height == v4)
  {
    v45 = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    self->_sizeForValidConfiguration.width = v3;
    self->_sizeForValidConfiguration.height = v4;
    [(CCUIBaseSliderView *)self _effectiveStretchAmount];
    v9 = v8;
    configuration = [(_UIFluidSliderInteraction *)self->_interaction configuration];
    [configuration trackSize];
    v12 = v6 != v11;
    if (v7 != v13)
    {
      v12 = 1;
    }

    v45 = v12;

    configuration2 = [(_UIFluidSliderInteraction *)self->_interaction configuration];
    v15 = [configuration2 copyWithTrackSize:{v6, v7}];

    [v15 setStretchAmount:v9];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __36__CCUIBaseSliderView_layoutSubviews__block_invoke;
    aBlock[3] = &unk_1E83EA450;
    aBlock[4] = self;
    v16 = v15;
    v49 = v16;
    v17 = _Block_copy(aBlock);
    if ([MEMORY[0x1E69DD250] _isInAnimationBlockWithAnimationsEnabled])
    {
      v17[2](v17);
    }

    else
    {
      [MEMORY[0x1E69DD250] performWithoutAnimation:v17];
    }
  }

  [(CCUIBaseSliderView *)self bounds];
  UIRectGetCenter();
  v19 = v18;
  v21 = v20;
  elasticBackgroundContentView = [(CCUIBaseSliderView *)self elasticBackgroundContentView];
  elasticContentView = [(CCUIBaseSliderView *)self elasticContentView];
  [elasticBackgroundContentView setCenter:{v19, v21}];
  [elasticContentView setCenter:{v19, v21}];
  v24 = self->_contentMetrics;
  if (self->_glyphVisible)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  glyphImageView = self->_glyphImageView;
  if (glyphImageView)
  {
    [(CCUIGlyphTinting *)glyphImageView setAlpha:v25];
    glyphScale = self->_glyphScale;
    if (v24)
    {
      v28 = objc_opt_self();
      if (objc_opt_isKindOfClass())
      {
        isSymbolImage = [(UIImage *)self->_glyphImage isSymbolImage];

        if (!isSymbolImage)
        {
          [(CCUIModuleContentMetrics *)v24 symbolScaleFactor];
          glyphScale = glyphScale * v30;
          goto LABEL_23;
        }
      }

      else
      {
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = self->_glyphImageView;
        symbolFont = [(CCUIModuleContentMetrics *)v24 symbolFont];
        v33 = [symbolFont _fontScaledByScaleFactor:0.87];
        [(CCUIGlyphTinting *)v31 setFont:v33];
      }
    }

LABEL_23:
    memset(&v47, 0, sizeof(v47));
    if (fabs(glyphScale + -1.0) >= 2.22044605e-16)
    {
      CGAffineTransformMakeScale(&v47, glyphScale, glyphScale);
    }

    else
    {
      v34 = *(MEMORY[0x1E695EFD0] + 16);
      *&v47.a = *MEMORY[0x1E695EFD0];
      *&v47.c = v34;
      *&v47.tx = *(MEMORY[0x1E695EFD0] + 32);
    }

    v35 = self->_glyphImageView;
    v46 = v47;
    [(CCUIGlyphTinting *)v35 setTransform:&v46];
    compensatingGlyphView = self->_compensatingGlyphView;
    v46 = v47;
    [(CCUIPunchOutCompensating *)compensatingGlyphView setTransform:&v46];
  }

  glyphPackageView = self->_glyphPackageView;
  if (glyphPackageView)
  {
    [(CCUICAPackageView *)glyphPackageView setAlpha:v25];
    v38 = self->_glyphScale;
    if (v24)
    {
      [(CCUIModuleContentMetrics *)v24 symbolScaleFactor];
      v38 = v38 * v39;
    }

    [(CCUICAPackageView *)self->_glyphPackageView setScale:v38];
    v40 = self->_compensatingGlyphView;
    v41 = objc_opt_class();
    v42 = v40;
    if (v41)
    {
      if (objc_opt_isKindOfClass())
      {
        v43 = v42;
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v43 = 0;
    }

    v44 = v43;

    [(CCUIPunchOutCompensating *)v44 setScale:v38];
  }

  [(CCUIPunchOutCompensating *)self->_compensatingGlyphView ccui_setCompensationAlpha:v25];
  if (!v45)
  {
    [(CCUIBaseSliderView *)self layoutElasticContentViews];
  }
}

- (float)presentationValue
{
  if (self->_lastInteractionUpdate)
  {
    [(_UIFluidSliderInteractionUpdate *)self->_lastInteractionUpdate value];
    return v3;
  }

  else
  {

    [(CCUIBaseSliderView *)self value];
  }

  return result;
}

- (void)_updateContinuousSliderCornerRadius
{
  elasticContentView = [(CCUIBaseSliderView *)self elasticContentView];
  [elasticContentView bounds];
  v5 = v4;
  v7 = v6;

  v8 = fmin(fmin(v5, v7) * 0.5, self->_continuousSliderCornerRadius);

  [(CCUIBaseSliderView *)self applyContinuousSliderCornerRadius:v8];
}

- (void)_layoutElasticContentContainers
{
  [(CCUIBaseSliderView *)self bounds];
  v6 = v5;
  v8 = v7;
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  v23 = *MEMORY[0x1E695EFD0];
  v24 = v9;
  v25 = *(MEMORY[0x1E695EFD0] + 32);
  lastInteractionUpdate = self->_lastInteractionUpdate;
  if (lastInteractionUpdate)
  {
    [(_UIFluidSliderInteractionUpdate *)lastInteractionUpdate trackBounds];
    v6 = v11;
    v8 = v12;
    v14 = v13;
    v16 = v15;
    v17 = self->_lastInteractionUpdate;
    if (v17)
    {
      [(_UIFluidSliderInteractionUpdate *)v17 trackTransform];
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
    }

    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    v14 = v3;
    v16 = v4;
  }

  v18 = [(CCUIBaseSliderView *)self elasticBackgroundContentView:v20];
  [v18 setBounds:{v6, v8, v14, v16}];
  v20 = v23;
  v21 = v24;
  v22 = v25;
  [v18 setTransform:&v20];
  elasticContentView = [(CCUIBaseSliderView *)self elasticContentView];
  [elasticContentView setBounds:{v6, v8, v14, v16}];
  v20 = v23;
  v21 = v24;
  v22 = v25;
  [elasticContentView setTransform:&v20];
}

- (BOOL)shouldIntegralizeContentLayout
{
  [(CCUIBaseSliderView *)self bounds];
  v4 = v3;
  v6 = v5;
  elasticContentView = [(CCUIBaseSliderView *)self elasticContentView];
  [elasticContentView bounds];
  v10 = v6 == v9 && v4 == v8;

  return v10;
}

- (void)layoutElasticContentViews
{
  elasticContentView = [(CCUIBaseSliderView *)self elasticContentView];
  [elasticContentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_elasticContentBoundaryView setFrame:v5, v7, v9, v11];
  [(UIView *)self->_glyphContainerView setFrame:v5, v7, v9, v11];
  [(UIView *)self->_backgroundView setFrame:v5, v7, v9, v11];
  [(CCUIBaseSliderView *)self glyphCenter];
  v13 = v12;
  v15 = v14;
  if (![(CCUIBaseSliderView *)self shouldIntegralizeContentLayout])
  {
    [(CCUIGlyphTinting *)self->_glyphImageView setCenter:v13, v15];
    [(CCUICAPackageView *)self->_glyphPackageView setCenter:v13, v15];
    compensatingGlyphView = self->_compensatingGlyphView;
    v23 = v13;
    v24 = v15;
    goto LABEL_9;
  }

  traitCollection = [(CCUIBaseSliderView *)self traitCollection];
  [traitCollection displayScale];

  glyphImageView = self->_glyphImageView;
  if (glyphImageView)
  {
    [(CCUIGlyphTinting *)glyphImageView bounds];
    UIRectCenteredAboutPointScale();
    v18 = self->_glyphImageView;
    UIRectGetCenter();
    [(CCUIGlyphTinting *)v18 setCenter:?];
  }

  glyphPackageView = self->_glyphPackageView;
  if (glyphPackageView)
  {
    [(CCUICAPackageView *)glyphPackageView bounds];
    UIRectCenteredAboutPointScale();
    v20 = self->_glyphPackageView;
    UIRectGetCenter();
    [(CCUICAPackageView *)v20 setCenter:?];
  }

  v21 = self->_compensatingGlyphView;
  if (v21)
  {
    [(CCUIPunchOutCompensating *)v21 bounds];
    UIRectCenteredAboutPointScale();
    v22 = self->_compensatingGlyphView;
    UIRectGetCenter();
    compensatingGlyphView = v22;
LABEL_9:
    [(CCUIPunchOutCompensating *)compensatingGlyphView setCenter:v23, v24];
  }

  [(CCUIBaseSliderView *)self _updateContinuousSliderCornerRadius];
}

- (BOOL)shouldIntegralizeValueLayout
{
  shouldIntegralizeContentLayout = [(CCUIBaseSliderView *)self shouldIntegralizeContentLayout];
  if (shouldIntegralizeContentLayout)
  {

    LOBYTE(shouldIntegralizeContentLayout) = [(CCUIBaseSliderView *)self _isInteractionStable];
  }

  return shouldIntegralizeContentLayout;
}

- (double)presentationLayoutValue
{
  v3 = self->_lastInteractionUpdate;
  v4 = v3;
  if (v3 && ([(_UIFluidSliderInteractionUpdate *)v3 trackBounds], v6 = v5, v8 = v7, [(_UIFluidSliderInteractionUpdate *)v4 barFrame], v6 > 0.0) && v8 > 0.0)
  {
    if (v6 <= v8)
    {
      v11 = v10 / v8;
    }

    else
    {
      v11 = v9 / v6;
    }
  }

  else
  {
    [(CCUIBaseSliderView *)self presentationValue];
    v11 = v12;
  }

  return v11;
}

- (void)_updateGlyphTinting
{
  _usesVibrantGlyphStyling = [(CCUIBaseSliderView *)self _usesVibrantGlyphStyling];
  compensatingGlyphView = self->_compensatingGlyphView;
  if (_usesVibrantGlyphStyling)
  {
    [(CCUIPunchOutCompensating *)compensatingGlyphView setHidden:0];
    [(CCUIPunchOutCompensating *)self->_compensatingGlyphView ccui_updatePunchOutCompensationIfNecessary];
  }

  else
  {
    [(CCUIPunchOutCompensating *)compensatingGlyphView setHidden:1];
  }

  [(CCUIBaseSliderView *)self presentationValue];
  activeGlyphView = self->_activeGlyphView;
  glyphTintColor = self->_glyphTintColor;
  v8 = v5 >= 0.17 && self->_valueVisible;

  [(CCUIGlyphTinting *)activeGlyphView ccui_applyGlyphTintColor:glyphTintColor isActive:v8];
}

- (NSArray)punchOutRenderingViews
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{self->_activeGlyphView, 0}];

  return v2;
}

- (void)_updateGlyphImage
{
  v3 = self->_glyphImage;
  if (!v3)
  {
    return;
  }

  v21 = v3;
  v4 = self->_contentMetrics;
  glyphImageView = self->_glyphImageView;
  v6 = objc_opt_class();
  v7 = glyphImageView;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    if (v4 && [(UIImage *)v21 isSymbolImage])
    {
      symbolConfiguration = [(CCUIModuleContentMetrics *)v4 symbolConfiguration];
      v11 = [(UIImage *)v21 imageByApplyingSymbolConfiguration:symbolConfiguration];

      v12 = v11;
    }

    else
    {
      v12 = v21;
    }

    v21 = v12;
    [(CCUIGlyphTinting *)v9 setImage:?];
    [(CCUIGlyphTinting *)v9 sizeToFit];
    compensatingGlyphView = self->_compensatingGlyphView;
    v14 = objc_opt_class();
    v15 = compensatingGlyphView;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v19 = v16;

    [(CCUIGlyphTinting *)v19 setImage:v21];
    goto LABEL_21;
  }

  v17 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v19 = self->_glyphImageView;
    ccui_systemImageName = [(UIImage *)v21 ccui_systemImageName];
    [(CCUIGlyphTinting *)v19 setSystemImageName:ccui_systemImageName];

LABEL_21:
    [(CCUIGlyphTinting *)v19 sizeToFit];
  }

  [(CCUIBaseSliderView *)self setNeedsLayout];
}

- (void)_configureGroupRenderingMode
{
  _usesVibrantGlyphStyling = [(CCUIBaseSliderView *)self _usesVibrantGlyphStyling];

  [self ccui_configureForGroupRenderingMode:_usesVibrantGlyphStyling];
}

- (CCUIBaseSliderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  BSDispatchQueueAssertMain();
  v33.receiver = self;
  v33.super_class = CCUIBaseSliderView;
  height = [(CCUIBaseSliderView *)&v33 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    height->_glyphVisible = 1;
    height->_glyphScale = 1.0;
    objc_storeStrong(&height->_glyphState, @"*");
    v9->_valueVisible = 1;
    v9->_elasticContentStretchAmount = -1.0;
    [(CCUIBaseSliderView *)v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [[_CCUIBaseSliderContentView alloc] initWithFrame:v10, v12, v14, v16];
    [(_CCUIBaseSliderContentView *)v18 setUserInteractionEnabled:0];
    [(_CCUIBaseSliderContentView *)v18 setContainingSliderView:v9];
    objc_storeStrong(&v9->_elasticBackgroundContentView, v18);
    [(CCUIBaseSliderView *)v9 addSubview:v18];
    v19 = [[_CCUIBaseSliderContentView alloc] initWithFrame:v11, v13, v15, v17];
    [(_CCUIBaseSliderContentView *)v19 setUserInteractionEnabled:0];
    [(_CCUIBaseSliderContentView *)v19 setContainingSliderView:v9];
    objc_storeStrong(&v9->_elasticContentView, v19);
    [(CCUIBaseSliderView *)v9 addSubview:v19];
    v20 = [[_CCUIBaseSliderContentView alloc] initWithFrame:v11, v13, v15, v17];
    [(_CCUIBaseSliderContentView *)v20 setUserInteractionEnabled:0];
    [(_CCUIBaseSliderContentView *)v20 setContainingSliderView:v9];
    objc_storeStrong(&v9->_elasticContentBoundaryView, v20);
    [(_CCUIBaseSliderContentView *)v19 addSubview:v20];
    v21 = [[_CCUIBaseSliderContentView alloc] initWithFrame:v11, v13, v15, v17];
    [(_CCUIBaseSliderContentView *)v21 _setOverrideVibrancyTrait:0];
    [(_CCUIBaseSliderContentView *)v21 setUserInteractionEnabled:0];
    [(_CCUIBaseSliderContentView *)v21 setContainingSliderView:v9];
    objc_storeStrong(&v9->_glyphContainerView, v21);
    [(_CCUIBaseSliderContentView *)v20 addSubview:v21];
    v22 = [MEMORY[0x1E69DD4E0] configurationWithTrackSize:{v15, v17}];
    [v22 setPreferredInputMethods:1];
    objc_initWeak(&location, v9);
    v23 = objc_alloc(MEMORY[0x1E69DD4D8]);
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __36__CCUIBaseSliderView_initWithFrame___block_invoke;
    v30 = &unk_1E83EAA90;
    objc_copyWeak(&v31, &location);
    v24 = [v23 initWithConfiguration:v22 handler:&v27];
    interaction = v9->_interaction;
    v9->_interaction = v24;

    [(CCUIBaseSliderView *)v9 addInteraction:v9->_interaction, v27, v28, v29, v30];
    [(CCUIBaseSliderView *)v9 _configurePanGestureRecognizer];
    [(CCUIBaseSliderView *)v9 _configureButtonInteraction];
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __36__CCUIBaseSliderView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleFluidSliderInteractionUpdate:v3];
}

- (void)setValue:(float)value animated:(BOOL)animated
{
  v4 = fmax(fmin(value, 1.0), 0.0);
  if (self->_value != v4)
  {
    animatedCopy = animated;
    self->_value = v4;
    [(_UIFluidSliderInteraction *)self->_interaction value];
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      if (animatedCopy)
      {
        window = [(CCUIBaseSliderView *)self window];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __40__CCUIBaseSliderView_setValue_animated___block_invoke;
        v10[3] = &unk_1E83EAAB8;
        v10[4] = self;
        v11 = v4;
        [CCUIContentModuleContext performWithoutAnimationWhileHiddenInWindow:window actions:v10];
      }

      else
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __40__CCUIBaseSliderView_setValue_animated___block_invoke_2;
        v8[3] = &unk_1E83EAAB8;
        v8[4] = self;
        v9 = v4;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
      }
    }
  }
}

- (void)setContinuousSliderCornerRadius:(double)radius
{
  if (self->_continuousSliderCornerRadius != radius)
  {
    self->_continuousSliderCornerRadius = radius;
    [(CCUIBaseSliderView *)self _updateContinuousSliderCornerRadius];
  }
}

- (void)setContentMetrics:(id)metrics
{
  metricsCopy = metrics;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_contentMetrics, metrics);
    [(CCUIBaseSliderView *)self _updateStretchAmount];
    [(CCUIBaseSliderView *)self _updateGlyphImage];
    [(CCUIBaseSliderView *)self setNeedsLayout];
  }
}

- (void)setGlyphVisible:(BOOL)visible
{
  if (self->_glyphVisible != visible)
  {
    self->_glyphVisible = visible;
    [(CCUIBaseSliderView *)self setNeedsLayout];
  }
}

- (void)setGlyphScale:(double)scale
{
  if (self->_glyphScale != scale)
  {
    self->_glyphScale = scale;
    [(CCUIBaseSliderView *)self setNeedsLayout];
  }
}

- (void)setGlyphTintColor:(id)color
{
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_glyphTintColor, color);
    [CCUIBaseSliderView _setGlyphImage:"_setGlyphImage:forceUpdate:" forceUpdate:?];
    [(CCUIBaseSliderView *)self _updateGlyphTinting];
    [(CCUIBaseSliderView *)self _configureGroupRenderingMode];
  }
}

- (void)setInoperative:(BOOL)inoperative
{
  if (self->_inoperative != inoperative)
  {
    self->_inoperative = inoperative;
    [(_UIFluidSliderInteraction *)self->_interaction setLocked:?];

    [(CCUIBaseSliderView *)self _updateHasInoperativeAppearance];
  }
}

- (void)setValueVisible:(BOOL)visible
{
  if (self->_valueVisible != visible)
  {
    self->_valueVisible = visible;
    [(CCUIBaseSliderView *)self _updateGlyphTinting];

    [(CCUIBaseSliderView *)self _updateHasInoperativeAppearance];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  isEnabled = [(CCUIBaseSliderView *)self isEnabled];
  v6.receiver = self;
  v6.super_class = CCUIBaseSliderView;
  [(CCUIBaseSliderView *)&v6 setEnabled:enabledCopy];
  if (isEnabled != enabledCopy)
  {
    [(CCUIBaseSliderView *)self _updateInteractionEnabled];
    [(CCUIBaseSliderView *)self _updateHasInoperativeAppearance];
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = CCUIBaseSliderView;
  [(CCUIBaseSliderView *)&v4 setUserInteractionEnabled:enabled];
  [(CCUIBaseSliderView *)self _updateInteractionEnabled];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CCUIBaseSliderView;
  [(CCUIBaseSliderView *)&v3 didMoveToWindow];
  if ([(CCUIBaseSliderView *)self _isInAWindow])
  {
    [(CCUIBaseSliderView *)self _updateStretchAmount];
  }
}

- (BOOL)isGroupRenderingRequired
{
  if (![(CCUIBaseSliderView *)self _usesVibrantGlyphStyling])
  {
    return 0;
  }

  punchOutRenderingViews = [(CCUIBaseSliderView *)self punchOutRenderingViews];
  v4 = [punchOutRenderingViews count] != 0;

  return v4;
}

- (NSArray)topLevelBlockingGestureRecognizers
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CCUIBaseSliderView *)self isInteractiveWhenUnexpanded])
  {
    _panGestureRecognizer = [(CCUIBaseSliderView *)self _panGestureRecognizer];
    v8[0] = _panGestureRecognizer;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    _additionalTopLevelBlockingGestureRecognizers = [(CCUIBaseSliderView *)self _additionalTopLevelBlockingGestureRecognizers];
    v6 = [v4 arrayByAddingObjectsFromArray:_additionalTopLevelBlockingGestureRecognizers];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)setShouldIncludeVolumeButtonsInput:(BOOL)input
{
  if (self->_shouldIncludeVolumeButtonsInput != input)
  {
    inputCopy = input;
    self->_shouldIncludeVolumeButtonsInput = input;
    configuration = [(_UIFluidSliderInteraction *)self->_interaction configuration];
    v9 = [configuration copy];

    v7 = [v9 preferredInputMethods] & 0xFFFFFFFFFFFFFFFDLL;
    v8 = 2;
    if (!inputCopy)
    {
      v8 = 0;
    }

    [v9 setPreferredInputMethods:v7 | v8];
    [(_UIFluidSliderInteraction *)self->_interaction setConfiguration:v9];
    [(CCUIBaseSliderView *)self _configurePanGestureRecognizer];
    [(CCUIBaseSliderView *)self _configureButtonInteraction];
  }
}

- (void)setElasticContentStretchAmount:(double)amount
{
  if (self->_elasticContentStretchAmount != amount)
  {
    self->_elasticContentStretchAmount = amount;
    __asm { FMOV            V0.2D, #-1.0 }

    self->_sizeForValidConfiguration = _Q0;
    [(CCUIBaseSliderView *)self setNeedsLayout];
  }
}

- (void)applyContinuousSliderCornerRadius:(double)radius
{
  [(UIView *)self->_backgroundView _setContinuousCornerRadius:?];
  elasticContentView = self->_elasticContentView;

  [(UIView *)elasticContentView _setContinuousCornerRadius:radius];
}

- (void)setName:(id)name
{
  nameCopy = name;
  if ((BSEqualStrings() & 1) == 0)
  {
    v4 = [nameCopy copy];
    name = self->_name;
    self->_name = v4;

    [(CCUIBaseSliderView *)self _configureButtonInteraction];
  }
}

- (void)setShouldRelaxVisibilityRequirementForButtonInput:(BOOL)input
{
  if (self->_shouldRelaxVisibilityRequirementForButtonInput != input)
  {
    self->_shouldRelaxVisibilityRequirementForButtonInput = input;
    [(CCUIBaseSliderView *)self _configureButtonInteraction];
  }
}

- (unint64_t)buttonInputStepCount
{
  configuration = [(_UIFluidSliderInteraction *)self->_interaction configuration];
  stepCount = [configuration stepCount];

  return stepCount;
}

- (void)setButtonInputStepCount:(unint64_t)count
{
  if ([(CCUIBaseSliderView *)self buttonInputStepCount]!= count)
  {
    configuration = [(_UIFluidSliderInteraction *)self->_interaction configuration];
    v6 = [configuration copy];

    [v6 setStepCount:count];
    [(_UIFluidSliderInteraction *)self->_interaction setConfiguration:v6];
  }
}

- (void)addCustomInputDriver:(id)driver
{
  driverCopy = driver;
  configuration = [(_UIFluidSliderInteraction *)self->_interaction configuration];
  v5 = [configuration copy];

  _customDrivers = [v5 _customDrivers];
  v7 = [_customDrivers arrayByAddingObject:driverCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E695DEC8] arrayWithObject:driverCopy];
  }

  v10 = v9;

  [v5 _setCustomDrivers:v10];
  [(_UIFluidSliderInteraction *)self->_interaction setConfiguration:v5];
}

- (void)_setActiveGlyphView:(id)view
{
  viewCopy = view;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_activeGlyphView, view);
    [(CCUIPunchOutCompensating *)self->_compensatingGlyphView removeFromSuperview];
    ccui_punchOutCompensatingCopy = [(CCUIGlyphTinting *)self->_activeGlyphView ccui_punchOutCompensatingCopy];
    compensatingGlyphView = self->_compensatingGlyphView;
    self->_compensatingGlyphView = ccui_punchOutCompensatingCopy;

    [(CCUIPunchOutCompensating *)self->_compensatingGlyphView setAutoresizingMask:0];
    [(CCUIPunchOutCompensating *)self->_compensatingGlyphView setTintAdjustmentMode:1];
    v7 = 0.0;
    if (self->_glyphVisible)
    {
      v7 = 1.0;
    }

    [(CCUIPunchOutCompensating *)self->_compensatingGlyphView ccui_setCompensationAlpha:v7];
    glyphContainerView = [(CCUIBaseSliderView *)self glyphContainerView];
    [glyphContainerView addSubview:self->_compensatingGlyphView];

    [(CCUIBaseSliderView *)self _updateGlyphTinting];
  }
}

- (void)_setGlyphImage:(id)image forceUpdate:(BOOL)update
{
  updateCopy = update;
  imageCopy = image;
  if (self->_glyphImage != imageCopy || updateCopy)
  {
    v33 = imageCopy;
    objc_storeStrong(&self->_glyphImage, image);
    if (!self->_glyphImage)
    {
      [(CCUIGlyphTinting *)self->_glyphImageView removeFromSuperview];
      glyphImageView = self->_glyphImageView;
      self->_glyphImageView = 0;
LABEL_27:

      imageCopy = v33;
      goto LABEL_28;
    }

    if ([(CCUIBaseSliderView *)self _usesVibrantGlyphStyling]|| ([(UIImage *)v33 ccui_systemImageName], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v16 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      glyphImageView = 0;
      v18 = 0;
      v15 = 0;
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      glyphImageView = v9;
      p_glyphImageView = &self->_glyphImageView;
      v12 = objc_opt_self();
      v13 = objc_opt_isKindOfClass();

      if (v13)
      {
        v14 = *p_glyphImageView != 0;
        v15 = 1;
        goto LABEL_18;
      }

      v18 = 1;
    }

    [(CCUIGlyphTinting *)self->_glyphImageView removeFromSuperview];
    v19 = self->_glyphImageView;
    self->_glyphImageView = 0;

    v15 = v18;
LABEL_15:
    p_glyphImageView = &self->_glyphImageView;
    v20 = self->_glyphImageView;
    v14 = v20 != 0;
    if ((v15 & 1) == 0 && !v20)
    {
      v21 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v22 = [v21 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v23 = *p_glyphImageView;
      *p_glyphImageView = v22;

      [*p_glyphImageView setContentMode:4];
      [*p_glyphImageView setTintAdjustmentMode:1];
      [*p_glyphImageView setUserInteractionEnabled:0];
      glyphContainerView = [(CCUIBaseSliderView *)self glyphContainerView];
      [glyphContainerView addSubview:*p_glyphImageView];
      goto LABEL_23;
    }

LABEL_18:
    if (v14 || !v15)
    {
      goto LABEL_24;
    }

    v25 = [[CCUIControlImageView alloc] initWithSystemImageName:glyphImageView];
    v26 = *p_glyphImageView;
    *p_glyphImageView = v25;

    [*p_glyphImageView setUserInteractionEnabled:0];
    glyphContainerView = *p_glyphImageView;
    contentMetrics = [(CCUIBaseSliderView *)self contentMetrics];
    v28 = contentMetrics;
    if (contentMetrics)
    {
      symbolFont = [contentMetrics symbolFont];
      v30 = [symbolFont _fontScaledByScaleFactor:0.87];
      [glyphContainerView setFont:v30];
    }

    glyphContainerView2 = [(CCUIBaseSliderView *)self glyphContainerView];
    [glyphContainerView2 addSubview:*p_glyphImageView];

LABEL_23:
LABEL_24:
    v32 = 0.0;
    if (self->_glyphVisible)
    {
      v32 = 1.0;
    }

    [*p_glyphImageView setAlpha:v32];
    [(CCUIBaseSliderView *)self _setActiveGlyphView:*p_glyphImageView];
    [(CCUIBaseSliderView *)self _updateGlyphImage];
    [(CCUIBaseSliderView *)self _configureGroupRenderingMode];
    [(CCUIBaseSliderView *)self setGlyphPackageDescription:0];
    goto LABEL_27;
  }

LABEL_28:
}

- (void)setGlyphPackageDescription:(id)description
{
  descriptionCopy = description;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_glyphPackageDescription, description);
    glyphPackageDescription = self->_glyphPackageDescription;
    glyphPackageView = self->_glyphPackageView;
    if (glyphPackageDescription)
    {
      if (!glyphPackageView)
      {
        v7 = objc_alloc_init(CCUICAPackageView);
        v8 = self->_glyphPackageView;
        self->_glyphPackageView = v7;

        [(CCUICAPackageView *)self->_glyphPackageView setAutoresizingMask:0];
        glyphContainerView = [(CCUIBaseSliderView *)self glyphContainerView];
        [glyphContainerView addSubview:self->_glyphPackageView];

        glyphPackageView = self->_glyphPackageView;
        glyphPackageDescription = self->_glyphPackageDescription;
      }

      [(CCUICAPackageView *)glyphPackageView setPackageDescription:glyphPackageDescription];
      [(CCUIBaseSliderView *)self _setActiveGlyphView:self->_glyphPackageView];
      compensatingGlyphView = self->_compensatingGlyphView;
      v11 = objc_opt_self();
      v12 = compensatingGlyphView;
      if (v11)
      {
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v15 = v13;

      [(CCUIPunchOutCompensating *)v15 setPackageDescription:self->_glyphPackageDescription];
      glyphState = [(CCUIBaseSliderView *)self glyphState];
      [(CCUIBaseSliderView *)self _applyGlyphState:glyphState performConfiguration:1];

      v17 = 0.0;
      if (self->_glyphVisible)
      {
        v17 = 1.0;
      }

      [(CCUICAPackageView *)self->_glyphPackageView setAlpha:v17];
      [(CCUIBaseSliderView *)self setGlyphImage:0];
    }

    else
    {
      [(CCUICAPackageView *)glyphPackageView removeFromSuperview];
      v14 = self->_glyphPackageView;
      self->_glyphPackageView = 0;
    }
  }
}

- (void)_applyGlyphState:(id)state performConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  stateCopy = state;
  glyphPackageView = self->_glyphPackageView;
  if (glyphPackageView)
  {
    v8 = @"*" == stateCopy;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [(CCUICAPackageView *)glyphPackageView setStateName:stateCopy];
    compensatingGlyphView = self->_compensatingGlyphView;
    v10 = objc_opt_self();
    v11 = compensatingGlyphView;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    [(CCUIPunchOutCompensating *)v13 setStateName:stateCopy];
    if (configurationCopy)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __60__CCUIBaseSliderView__applyGlyphState_performConfiguration___block_invoke;
      v14[3] = &unk_1E83EA478;
      v14[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v14];
      [(CCUIBaseSliderView *)self _configureGroupRenderingMode];
      [(CCUIBaseSliderView *)self _updateGlyphTinting];
    }
  }
}

- (void)_setGlyphState:(id)state
{
  stateCopy = state;
  glyphState = self->_glyphState;
  if (glyphState != stateCopy)
  {
    v7 = glyphState == @"*";
    v8 = stateCopy;
    objc_storeStrong(&self->_glyphState, state);
    [(CCUIBaseSliderView *)self _applyGlyphState:self->_glyphState performConfiguration:v7];
    stateCopy = v8;
  }
}

- (void)setGlyphState:(id)state
{
  stateCopy = @"*";
  if (state)
  {
    stateCopy = state;
  }

  v5 = stateCopy;
  [(CCUIBaseSliderView *)self _setGlyphState:v5];
}

- (CGPoint)glyphCenter
{
  glyphContainerView = [(CCUIBaseSliderView *)self glyphContainerView];
  [glyphContainerView bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4 * 0.5;
  v8 = v6 - v4 * 0.5;
  result.y = v8;
  result.x = v7;
  return result;
}

- (double)_length
{
  [(CCUIBaseSliderView *)self bounds];
  if (v2 <= v3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

- (void)_configurePanGestureRecognizer
{
  _panGestureRecognizer = [(CCUIBaseSliderView *)self _panGestureRecognizer];
  [_panGestureRecognizer setCancelsTouchesInView:0];
  [_panGestureRecognizer setDelaysTouchesEnded:0];
}

- (void)_configureButtonInteraction
{
  _volumeButtonInteraction = [(_UIFluidSliderInteraction *)self->_interaction _volumeButtonInteraction];
  if (_volumeButtonInteraction)
  {
    v5 = _volumeButtonInteraction;
    [_volumeButtonInteraction _setWantsRelaxedVisibilityRequirement:{-[CCUIBaseSliderView shouldRelaxVisibilityRequirementForButtonInput](self, "shouldRelaxVisibilityRequirementForButtonInput")}];
    name = [(CCUIBaseSliderView *)self name];
    [v5 _setName:name];

    _volumeButtonInteraction = v5;
  }
}

- (void)_updateBackgroundViewAppearance
{
  hasInoperativeAppearance = [(CCUIBaseSliderView *)self hasInoperativeAppearance];
  v6 = self->_backgroundView;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(UIView *)v6 setHasInoperativeAppearance:hasInoperativeAppearance];
  }
}

- (void)_updateStretchAmount
{
  [(CCUIBaseSliderView *)self _effectiveStretchAmount];
  v4 = v3;
  configuration = [(_UIFluidSliderInteraction *)self->_interaction configuration];
  v6 = [configuration copy];

  [v6 setStretchAmount:v4];
  [(_UIFluidSliderInteraction *)self->_interaction setConfiguration:v6];
}

- (double)_effectiveStretchAmount
{
  [(CCUIBaseSliderView *)self elasticContentStretchAmount];
  v4 = v3;
  traitCollection = [(CCUIBaseSliderView *)self traitCollection];
  [traitCollection displayScale];
  if (v4 >= 0.0)
  {
    if (v4 > 0.0 && v4 < 1.0)
    {
      [(CCUIBaseSliderView *)self _length];
      UIFloorToScale();
      v4 = v9;
    }
  }

  else
  {
    [(CCUIBaseSliderView *)self _length];
    window = [(CCUIBaseSliderView *)self window];
    [window bounds];

    contentMetrics = self->_contentMetrics;
    if (contentMetrics)
    {
      [(CCUIModuleContentMetrics *)contentMetrics gridGeometryInfo];
    }

    else
    {
      CCUIPortraitMainListGridGeometryInfo();
    }

    UIRoundToScale();
    v11 = v10;
    UIRoundToScale();
    if (v12 <= v11)
    {
      v4 = v12;
    }

    else
    {
      v4 = v11;
    }
  }

  return v4;
}

- (void)_handleFluidSliderInteractionUpdate:(id)update
{
  updateCopy = update;
  v6 = self->_lastInteractionUpdate;
  v7 = v6;
  if (v6)
  {
    v8 = [(_UIFluidSliderInteractionUpdate *)v6 interactionState]== 1;
  }

  else
  {
    v8 = 0;
  }

  interactionState = [updateCopy interactionState];
  isEditingValue = [(CCUIBaseSliderView *)self isEditingValue];
  [(CCUIBaseSliderView *)self presentationValue];
  v11 = v10;
  [(CCUIBaseSliderView *)self value];
  v13 = v12;
  shouldSendEditingControlEvents = self->_shouldSendEditingControlEvents;
  isLocked = [(_UIFluidSliderInteraction *)self->_interaction isLocked];
  if (!v8 && interactionState == 1 && (isLocked & 1) == 0)
  {
    shouldSendEditingControlEvents = 1;
    self->_editingValue = 1;
    self->_shouldSendEditingControlEvents = 1;
    if (!isEditingValue)
    {
      [(CCUIBaseSliderView *)self sendActionsForControlEvents:0x10000];
    }
  }

  if ([updateCopy interactionState] == 1)
  {
    v16 = [updateCopy isTracking] ^ 1;
  }

  else
  {
    v16 = 0;
  }

  isReceivingIndirectInputUpdates = self->_isReceivingIndirectInputUpdates;
  self->_isReceivingIndirectInputUpdates = v16 & 1;
  v18 = !shouldSendEditingControlEvents || (v16 & 1) == isReceivingIndirectInputUpdates;
  if (shouldSendEditingControlEvents && (v16 & 1) != isReceivingIndirectInputUpdates && v16)
  {
    [(CCUIBaseSliderView *)self sendActionsForControlEvents:CCUIBaseSliderViewControlEventIndirectInputDidBegin];
  }

  objc_storeStrong(&self->_lastInteractionUpdate, update);
  [(_UIFluidSliderInteraction *)self->_interaction value];
  *&v19 = fmax(fmin(v19, 1.0), 0.0);
  self->_value = *&v19;
  [(CCUIBaseSliderView *)self _layoutElasticContentContainers];
  [(CCUIBaseSliderView *)self layoutElasticContentViews];
  [(CCUIBaseSliderView *)self value];
  if (v13 != v20)
  {
    [(CCUIBaseSliderView *)self sendActionsForControlEvents:4096];
  }

  [(CCUIBaseSliderView *)self presentationValue];
  if (v11 != v21)
  {
    [(CCUIBaseSliderView *)self sendActionsForControlEvents:CCUIBaseSliderViewControlEventPresentationValueChanged];
  }

  if (((v18 | v16) & 1) == 0)
  {
    [(CCUIBaseSliderView *)self sendActionsForControlEvents:CCUIBaseSliderViewControlEventIndirectInputDidEnd];
  }

  v22 = self->_glyphTintColor;
  if (v22)
  {
    [(CCUIBaseSliderView *)self presentationValue];
    v24 = v23 >= 0.17 && self->_valueVisible;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__CCUIBaseSliderView__handleFluidSliderInteractionUpdate___block_invoke;
    aBlock[3] = &unk_1E83EAAE0;
    aBlock[4] = self;
    v30 = v22;
    v31 = v24;
    v25 = _Block_copy(aBlock);
    if ([updateCopy interactionState] && v24 != (v11 >= 0.17 && self->_valueVisible))
    {
      [MEMORY[0x1E69DD250] animateWithSpringDuration:0 bounce:v25 initialSpringVelocity:0 delay:0.3 options:0.0 animations:0.0 completion:0.0];
    }

    else
    {
      v26.n128_f64[0] = v11;
      v25[2](v25, v26);
    }
  }

  if ([(CCUIBaseSliderView *)self _isInteractionStable])
  {
    self->_editingValue = 0;
    self->_shouldSendEditingControlEvents = 0;
    if (isEditingValue && shouldSendEditingControlEvents)
    {
      [(CCUIBaseSliderView *)self sendActionsForControlEvents:0x40000];
    }
  }

  if (-[_UIFluidSliderInteractionUpdate isTracking](v7, "isTracking") && ([updateCopy isTracking] & 1) == 0)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] _deactivateReachability];
  }
}

@end