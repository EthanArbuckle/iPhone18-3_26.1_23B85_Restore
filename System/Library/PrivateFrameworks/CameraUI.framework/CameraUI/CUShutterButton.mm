@interface CUShutterButton
+ (CUShutterButton)shutterButtonWithLayoutStyle:(int64_t)style;
+ (CUShutterButton)shutterButtonWithSpec:(CAMShutterButtonSpec *)spec;
+ (id)shutterButton;
+ (id)smallShutterButton;
+ (id)smallShutterButtonWithLayoutStyle:(int64_t)style;
- ($EA90F2AF3C0DC35AB2D8304CE3BCA89E)_timelapseRingSpecForLayoutStyle:(SEL)style;
- (BOOL)_shouldShowBackgroundViewForMode:(int64_t)mode;
- (BOOL)_shouldShowContrastBorderForMode:(int64_t)mode layoutStyle:(int64_t)style;
- (CAMShutterButtonDelegate)delegate;
- (CAMShutterButtonSpec)spec;
- (CGSize)_sizeForMode:(int64_t)mode;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CUShutterButton)initWithCoder:(id)coder;
- (CUShutterButton)initWithFrame:(CGRect)frame;
- (CUShutterButton)initWithFrame:(CGRect)frame layoutStyle:(int64_t)style spec:(CAMShutterButtonSpec *)spec;
- (UIEdgeInsets)tappableEdgeInsets;
- (double)_cornerRadiusForMode:(int64_t)mode;
- (id)_contentColor;
- (id)_innerCircleColorForMode:(int64_t)mode spinning:(BOOL)spinning;
- (id)_outerImageForMode:(int64_t)mode layoutStyle:(int64_t)style;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_commonCAMShutterButtonInitializationWithLayoutStyle:(int64_t)style spec:(CAMShutterButtonSpec *)spec;
- (void)_performHighlightAnimation;
- (void)_performModeSwitchAnimationFromMode:(int64_t)mode toMode:(int64_t)toMode animated:(BOOL)animated;
- (void)_updateOuterAndInnerLayers;
- (void)_updateSpinningAnimations;
- (void)layoutSubviews;
- (void)setContentColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLayoutStyle:(int64_t)style;
- (void)setMode:(int64_t)mode animated:(BOOL)animated;
- (void)setShowDisabled:(BOOL)disabled;
- (void)setSpec:(CAMShutterButtonSpec *)spec;
- (void)setSpinning:(BOOL)spinning;
- (void)setStopModeBackgroundColor:(id)color;
- (void)setTappableEdgeInsets:(UIEdgeInsets)insets;
@end

@implementation CUShutterButton

- (void)_updateOuterAndInnerLayers
{
  mode = [(CUShutterButton *)self mode];
  v4 = [CAMShutterUtilities shouldUseImageViewForMode:mode];
  _innerView = [(CUShutterButton *)self _innerView];
  if (v4)
  {
    if (!self->__outerImageView)
    {
      v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
      [(CAMShutterButtonRingView *)self->__outerView frame];
      v7 = [v6 initWithFrame:?];
      outerImageView = self->__outerImageView;
      self->__outerImageView = v7;

      [(CUShutterButton *)self insertSubview:self->__outerImageView belowSubview:self->__outerView];
    }

    v9 = [(CUShutterButton *)self _outerImageForMode:mode layoutStyle:self->_layoutStyle];
    [(UIImageView *)self->__outerImageView setImage:v9];
  }

  if ([CAMShutterUtilities shouldUseTimelapseOuterViewForMode:mode]&& !self->__timelapseOuterView)
  {
    v26 = 0u;
    v27 = 0u;
    [(CUShutterButton *)self _timelapseRingSpecForLayoutStyle:self->_layoutStyle];
    v10 = [CAMTimelapseShutterRingView alloc];
    [(CAMShutterButtonRingView *)self->__outerView frame];
    v25[0] = v26;
    v25[1] = v27;
    v11 = [(CAMTimelapseShutterRingView *)v10 initWithFrame:v25 spec:?];
    timelapseOuterView = self->__timelapseOuterView;
    self->__timelapseOuterView = v11;

    [(CUShutterButton *)self insertSubview:self->__timelapseOuterView belowSubview:self->__outerView];
  }

  if ([(CUShutterButton *)self _shouldShowBackgroundViewForMode:mode])
  {
    _stopModeBackground = [(CUShutterButton *)self _stopModeBackground];
    if (!_stopModeBackground)
    {
      _stopModeBackground = objc_alloc_init(MEMORY[0x1E69DD250]);
      [_stopModeBackground setUserInteractionEnabled:0];
      [(CUShutterButton *)self set_stopModeBackground:_stopModeBackground];
      [(CUShutterButton *)self insertSubview:_stopModeBackground belowSubview:_innerView];
    }

    stopModeBackgroundColor = [(CUShutterButton *)self stopModeBackgroundColor];
    [_stopModeBackground setBackgroundColor:stopModeBackgroundColor];
  }

  v15 = [(CUShutterButton *)self _shouldShowContrastBorderForMode:mode layoutStyle:self->_layoutStyle];
  _outerView = [(CUShutterButton *)self _outerView];
  [_outerView setShowContrastBorder:v15];
  _contentColor = [(CUShutterButton *)self _contentColor];
  [_outerView setColor:_contentColor];

  isSpinning = [(CUShutterButton *)self isSpinning];
  layer = [_innerView layer];
  v20 = [(CUShutterButton *)self _innerCircleColorForMode:mode spinning:isSpinning];
  [layer setBackgroundColor:{objc_msgSend(v20, "CGColor")}];

  innerViewContrastView = self->__innerViewContrastView;
  if (v15)
  {
    if (!innerViewContrastView)
    {
      v22 = objc_alloc_init(CAMShutterButtonContrastBackground);
      v23 = self->__innerViewContrastView;
      self->__innerViewContrastView = &v22->super;

      [(UIView *)self->__innerViewContrastView setUserInteractionEnabled:0];
      [(CUShutterButton *)self insertSubview:self->__innerViewContrastView belowSubview:self->__innerView];
      innerViewContrastView = self->__innerViewContrastView;
    }

    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  [(UIView *)innerViewContrastView setAlpha:v24];
}

- (id)_contentColor
{
  contentColor = [(CUShutterButton *)self contentColor];
  v3 = contentColor;
  if (contentColor)
  {
    whiteColor = contentColor;
  }

  else
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  v5 = whiteColor;

  return v5;
}

- (UIEdgeInsets)tappableEdgeInsets
{
  top = self->_tappableEdgeInsets.top;
  left = self->_tappableEdgeInsets.left;
  bottom = self->_tappableEdgeInsets.bottom;
  right = self->_tappableEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = CUShutterButton;
  [(CUShutterButton *)&v37 layoutSubviews];
  [(CUShutterButton *)self bounds];
  [(CUShutterButton *)self alignmentRectForFrame:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->__outerImageView setFrame:?];
  [(CAMTimelapseShutterRingView *)self->__timelapseOuterView setFrame:v4, v6, v8, v10];
  mode = [(CUShutterButton *)self mode];
  _outerView = [(CUShutterButton *)self _outerView];
  [_outerView frameForAlignmentRect:{v4, v6, v8, v10}];
  [_outerView setFrame:?];
  _glassBackground = [(CUShutterButton *)self _glassBackground];
  [_glassBackground setFrame:{v4, v6, v8, v10}];
  layer = [_glassBackground layer];
  [layer setCornerRadius:v8 * 0.5];

  _innerView = [(CUShutterButton *)self _innerView];
  v16 = *MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 8);
  [(CUShutterButton *)self _sizeForMode:mode];
  v19 = v18;
  v21 = v20;
  UIRectGetCenter();
  v23 = v22;
  v25 = v24;
  [_innerView setBounds:{v16, v17, v19, v21}];
  [_innerView setCenter:{v23, v25}];
  _innerViewContrastView = [(CUShutterButton *)self _innerViewContrastView];
  v27 = CAMPixelWidthForView(self);
  UIRectCenteredAboutPointScale();
  v39 = CGRectInset(v38, -v27, -v27);
  [_innerViewContrastView frameForAlignmentRect:{v39.origin.x, v39.origin.y, v39.size.width, v39.size.height}];
  [_innerViewContrastView setBounds:{0.0, 0.0}];
  [_innerViewContrastView setCenter:{v23, v25}];
  [(CUShutterButton *)self _cornerRadiusForMode:mode];
  v29 = v28;
  layer2 = [_innerView layer];
  [layer2 setCornerRadius:v29];
  if ([(CUShutterButton *)self _shouldShowBackgroundViewForMode:mode])
  {
    _stopModeBackground = [(CUShutterButton *)self _stopModeBackground];
    [(CUShutterButton *)self _sizeForMode:0];
    [_stopModeBackground setBounds:{v16, v17, v32, v33}];
    [_stopModeBackground setCenter:{v23, v25}];
    [(CUShutterButton *)self _cornerRadiusForMode:0];
    v35 = v34;
    layer3 = [_stopModeBackground layer];
    [layer3 setCornerRadius:v35];
  }
}

- (CAMShutterButtonSpec)spec
{
  v3 = *&self[22].stopSquareCornerRadius;
  *&retstr->outerRingDiameter = *&self[22].outerRingStrokeWidth;
  *&retstr->stopSquareSideLength = v3;
  retstr->interRingSpacing = self[23].outerRingDiameter;
  return self;
}

- (void)_performHighlightAnimation
{
  isHighlighted = [(CUShutterButton *)self isHighlighted];
  _innerView = [(CUShutterButton *)self _innerView];
  layer = [_innerView layer];

  _innerViewContrastView = [(CUShutterButton *)self _innerViewContrastView];
  layer2 = [_innerViewContrastView layer];

  v8 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
  [v8 setMass:0.8];
  [v8 setVelocity:0.0];
  if (isHighlighted)
  {
    v9 = 0.9;
  }

  else
  {
    v9 = 1.0;
  }

  if (isHighlighted)
  {
    v10 = 12.0;
  }

  else
  {
    v10 = 100.0;
  }

  UIAnimationDragCoefficient();
  v12 = v11;
  [v8 setDamping:v10 / v11];
  [v8 setStiffness:300.0 / (v12 * v12)];
  [v8 durationForEpsilon:0.01];
  [v8 setDuration:?];
  LODWORD(v13) = 1045220557;
  LODWORD(v14) = 0.5;
  LODWORD(v15) = 1.0;
  LODWORD(v16) = 1045220557;
  v17 = [MEMORY[0x1E69793D0] functionWithControlPoints:v13 :v16 :v14 :v15];
  [v8 setTimingFunction:v17];

  presentationLayer = [layer presentationLayer];
  v19 = [presentationLayer valueForKeyPath:@"transform.scale.xy"];
  [v8 setFromValue:v19];

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [v8 setToValue:v20];

  [layer addAnimation:v8 forKey:@"highlightScaleAnimation"];
  [layer2 addAnimation:v8 forKey:@"highlightScaleAnimation"];
  memset(&v22, 0, sizeof(v22));
  CATransform3DMakeScale(&v22, v9, v9, 1.0);
  v21 = v22;
  [layer setTransform:&v21];
  v21 = v22;
  [layer2 setTransform:&v21];
}

+ (id)smallShutterButton
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  return [self smallShutterButtonWithLayoutStyle:cam_initialLayoutStyle];
}

+ (id)shutterButton
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  return [self shutterButtonWithLayoutStyle:cam_initialLayoutStyle];
}

+ (CUShutterButton)shutterButtonWithSpec:(CAMShutterButtonSpec *)spec
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  v7 = [self alloc];
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = *&spec->stopSquareSideLength;
  v15[0] = *&spec->outerRingDiameter;
  v15[1] = v12;
  interRingSpacing = spec->interRingSpacing;
  v13 = [v7 initWithFrame:cam_initialLayoutStyle layoutStyle:v15 spec:{v8, v9, v10, v11}];

  return v13;
}

+ (CUShutterButton)shutterButtonWithLayoutStyle:(int64_t)style
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  CAMShutterButtonSpecForLayoutStyle(style, &v14);
  v5 = [self alloc];
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v16;
  v10 = [v5 initWithFrame:style layoutStyle:v12 spec:{v6, v7, v8, v9}];

  return v10;
}

+ (id)smallShutterButtonWithLayoutStyle:(int64_t)style
{
  if (style == 3)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v7 = 1.0 / v6;

    v8 = v7 + 55.0;
    v9 = 5.0 - v7;
  }

  else
  {
    v9 = 5.0;
    v8 = 47.0;
  }

  v10 = [self alloc];
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  *v17 = v8;
  *&v17[1] = v9;
  v18 = xmmword_1A3A69B90;
  v19 = 0x4000000000000000;
  v15 = [v10 initWithFrame:style layoutStyle:v17 spec:{v11, v12, v13, v14}];

  return v15;
}

- (void)_commonCAMShutterButtonInitializationWithLayoutStyle:(int64_t)style spec:(CAMShutterButtonSpec *)spec
{
  self->_mode = 0;
  v5 = *&spec->outerRingDiameter;
  v6 = *&spec->stopSquareSideLength;
  self->_spec.interRingSpacing = spec->interRingSpacing;
  *&self->_spec.outerRingDiameter = v5;
  *&self->_spec.stopSquareSideLength = v6;
  self->_layoutStyle = style;
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  contentColor = self->_contentColor;
  self->_contentColor = whiteColor;

  v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
  glassBackground = self->__glassBackground;
  self->__glassBackground = v9;

  [(UIView *)self->__glassBackground installGlassBackgroundForArea:5];
  v11 = objc_alloc(MEMORY[0x1E69DD250]);
  v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  innerView = self->__innerView;
  self->__innerView = v12;

  [(CAMShutterButtonRingView *)self->__outerView setUserInteractionEnabled:0];
  [(UIView *)self->__innerView setUserInteractionEnabled:0];
  [(UIView *)self->__glassBackground setUserInteractionEnabled:0];
  [(CUShutterButton *)self addSubview:self->__glassBackground];
  [(CUShutterButton *)self addSubview:self->__outerView];
  [(CUShutterButton *)self addSubview:self->__innerView];
  [(CUShutterButton *)self setAdjustsImageWhenHighlighted:0];
  [(CUShutterButton *)self setAdjustsImageWhenDisabled:0];
  [(CUShutterButton *)self setShowsTouchWhenHighlighted:0];

  [(CUShutterButton *)self _updateOuterAndInnerLayers];
}

- (CUShutterButton)initWithFrame:(CGRect)frame layoutStyle:(int64_t)style spec:(CAMShutterButtonSpec *)spec
{
  v13.receiver = self;
  v13.super_class = CUShutterButton;
  v7 = [(CUShutterButton *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v8 = v7;
  if (v7)
  {
    v9 = *&spec->stopSquareSideLength;
    v11[0] = *&spec->outerRingDiameter;
    v11[1] = v9;
    interRingSpacing = spec->interRingSpacing;
    [(CUShutterButton *)v7 _commonCAMShutterButtonInitializationWithLayoutStyle:style spec:v11];
  }

  return v8;
}

- (CUShutterButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  CAMShutterButtonSpecForLayoutStyle(cam_initialLayoutStyle, &v13);
  v11[0] = v13;
  v11[1] = v14;
  v12 = v15;
  return [(CUShutterButton *)self initWithFrame:cam_initialLayoutStyle layoutStyle:v11 spec:x, y, width, height];
}

- (CUShutterButton)initWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = CUShutterButton;
  v3 = [(CUShutterButton *)&v13 initWithCoder:coder];
  if (v3)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    CAMShutterButtonSpecForLayoutStyle(cam_initialLayoutStyle, &v10);
    v8[0] = v10;
    v8[1] = v11;
    v9 = v12;
    [(CUShutterButton *)v3 _commonCAMShutterButtonInitializationWithLayoutStyle:cam_initialLayoutStyle spec:v8];
    v6 = v3;
  }

  return v3;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (([(CUShutterButton *)self isEnabled]& 1) == 0)
  {
    if ([(CUShutterButton *)self pointInside:eventCopy withEvent:x, y])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = objc_loadWeakRetained(&self->_delegate);
        [v10 shutterButtonTouchAttemptedWhileDisabled:self];
      }
    }
  }

  v13.receiver = self;
  v13.super_class = CUShutterButton;
  v11 = [(CUShutterButton *)&v13 hitTest:eventCopy withEvent:x, y];

  return v11;
}

- (CGSize)intrinsicContentSize
{
  outerRingDiameter = self->_spec.outerRingDiameter;
  v3 = outerRingDiameter;
  result.height = v3;
  result.width = outerRingDiameter;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  outerRingDiameter = self->_spec.outerRingDiameter;
  v4 = outerRingDiameter;
  result.height = v4;
  result.width = outerRingDiameter;
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(CUShutterButton *)self isHighlighted];
  v6.receiver = self;
  v6.super_class = CUShutterButton;
  [(CUShutterButton *)&v6 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    [(CUShutterButton *)self _performHighlightAnimation];
  }
}

- (void)setMode:(int64_t)mode animated:(BOOL)animated
{
  mode = self->_mode;
  if (mode != mode)
  {
    animatedCopy = animated;
    self->_mode = mode;
    [(CUShutterButton *)self _updateOuterAndInnerLayers];
    v7 = self->_mode;

    [(CUShutterButton *)self _performModeSwitchAnimationFromMode:mode toMode:v7 animated:animatedCopy];
  }
}

- (void)setSpinning:(BOOL)spinning
{
  if (self->_spinning != spinning)
  {
    self->_spinning = spinning;
    [(CUShutterButton *)self _updateSpinningAnimations];
  }
}

- (void)setTappableEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_tappableEdgeInsets.top), vceqq_f64(v4, *&self->_tappableEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_tappableEdgeInsets = insets;
    [(CUShutterButton *)self setNeedsLayout];
  }
}

- (void)setContentColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_contentColor] & 1) == 0)
  {
    objc_storeStrong(&self->_contentColor, color);
    [(CUShutterButton *)self _updateOuterAndInnerLayers];
  }
}

- (void)setStopModeBackgroundColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_stopModeBackgroundColor] & 1) == 0)
  {
    objc_storeStrong(&self->_stopModeBackgroundColor, color);
    [(CUShutterButton *)self _updateOuterAndInnerLayers];
  }
}

- (void)setSpec:(CAMShutterButtonSpec *)spec
{
  interRingSpacing = spec->interRingSpacing;
  v5 = *&spec->stopSquareSideLength;
  *&self->_spec.outerRingDiameter = *&spec->outerRingDiameter;
  *&self->_spec.stopSquareSideLength = v5;
  self->_spec.interRingSpacing = interRingSpacing;
  outerView = self->__outerView;
  v7 = *&spec->stopSquareSideLength;
  v8[0] = *&spec->outerRingDiameter;
  v8[1] = v7;
  v9 = spec->interRingSpacing;
  [(CAMShutterButtonRingView *)outerView setSpec:v8];
  [(CUShutterButton *)self _updateOuterAndInnerLayers];
}

- (id)_innerCircleColorForMode:(int64_t)mode spinning:(BOOL)spinning
{
  if (spinning)
  {
    v6 = 0.2;
  }

  else
  {
    v6 = 1.0;
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v9 = [bundleIdentifier isEqualToString:@"com.apple.camera.lockscreen"];
  v10 = +[CAMCaptureCapabilities capabilities];
  featureDevelopmentShowLockIndicator = [v10 featureDevelopmentShowLockIndicator];

  if (mode > 9)
  {
    v12 = 0;
  }

  else if (((1 << mode) & 0x1CE) != 0)
  {
    v12 = [MEMORY[0x1E69DC888] colorWithRed:0.961 green:0.2 blue:0.2 alpha:v6];
  }

  else
  {
    if ((featureDevelopmentShowLockIndicator & v9) == 1)
    {
      [MEMORY[0x1E69DC888] blueColor];
    }

    else
    {
      [(CUShutterButton *)self _contentColor];
    }
    v13 = ;
    v12 = [v13 colorWithAlphaComponent:v6];
  }

  return v12;
}

- (CGSize)_sizeForMode:(int64_t)mode
{
  v4 = [CAMShutterUtilities isStopMode:mode];
  [(CUShutterButton *)self spec];
  if (v4)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = (0.0 + 0.0) * -2.0 + 0.0;
  }

  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

- (double)_cornerRadiusForMode:(int64_t)mode
{
  v4 = [CAMShutterUtilities isStopMode:mode];
  [(CUShutterButton *)self spec];
  if (v4)
  {
    return 0.0;
  }

  else
  {
    return ceil(((0.0 + 0.0) * -2.0 + 0.0) * 0.5);
  }
}

- (id)_outerImageForMode:(int64_t)mode layoutStyle:(int64_t)style
{
  if (mode == 2 || mode == 7)
  {
    v5 = @"CAMShutterButtonSlomo";
  }

  else
  {
    v5 = 0;
  }

  if (style == 3)
  {
    v5 = [(__CFString *)v5 stringByAppendingString:@"Phone"];
  }

  if (v5)
  {
    v6 = MEMORY[0x1E69DCAB8];
    v7 = CAMCameraUIFrameworkBundle();
    v8 = [v6 imageNamed:v5 inBundle:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- ($EA90F2AF3C0DC35AB2D8304CE3BCA89E)_timelapseRingSpecForLayoutStyle:(SEL)style
{
  *&retstr->var0 = xmmword_1A3A69BA0;
  retstr->var2 = CAMPixelWidthForView(self) + 3.0;
  retstr->var3 = CAMPixelWidthForView(self) + 5.0;
  if (a4 == 3)
  {
    retstr->var2 = 4.0 - CAMPixelWidthForView(self);
    retstr->var3 = 6.0;
  }

  return result;
}

- (BOOL)_shouldShowContrastBorderForMode:(int64_t)mode layoutStyle:(int64_t)style
{
  if (style == 1)
  {
    return (mode < 0xA) & (0x231u >> mode);
  }

  else
  {
    return 0;
  }
}

- (BOOL)_shouldShowBackgroundViewForMode:(int64_t)mode
{
  stopModeBackgroundColor = [(CUShutterButton *)self stopModeBackgroundColor];
  if (stopModeBackgroundColor)
  {
    v5 = [CAMShutterUtilities isStopMode:mode];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_performModeSwitchAnimationFromMode:(int64_t)mode toMode:(int64_t)toMode animated:(BOOL)animated
{
  animatedCopy = animated;
  _innerView = [(CUShutterButton *)self _innerView];
  layer = [_innerView layer];

  _outerView = [(CUShutterButton *)self _outerView];
  layer2 = [_outerView layer];

  _outerImageView = [(CUShutterButton *)self _outerImageView];
  layer3 = [_outerImageView layer];

  _stopModeBackground = [(CUShutterButton *)self _stopModeBackground];
  layer4 = [_stopModeBackground layer];

  _timelapseOuterView = [(CUShutterButton *)self _timelapseOuterView];
  layer5 = [_timelapseOuterView layer];

  isSpinning = [(CUShutterButton *)self isSpinning];
  v18 = [(CUShutterButton *)self _innerCircleColorForMode:toMode spinning:isSpinning];
  cGColor = [v18 CGColor];

  v150 = isSpinning;
  v20 = animatedCopy && ~isSpinning;
  v156 = [CAMShutterUtilities shouldUseImageViewForMode:toMode];
  v155 = [CAMShutterUtilities shouldUseTimelapseOuterViewForMode:toMode];
  v148 = [(CUShutterButton *)self _shouldShowBackgroundViewForMode:toMode];
  if ([(CUShutterButton *)self showDisabled])
  {
    v21 = 0.4;
  }

  else
  {
    v21 = 1.0;
  }

  v135 = v20;
  v154 = cGColor;
  if (v20 == 1)
  {
    presentationLayer = [layer presentationLayer];
    v151 = layer2;
    toModeCopy = toMode;
    modeCopy = mode;
    v134 = layer4;
    if (presentationLayer)
    {
      presentationLayer2 = [layer presentationLayer];
      v24 = [presentationLayer2 valueForKeyPath:@"backgroundColor"];
    }

    else
    {
      v24 = [layer valueForKeyPath:@"backgroundColor"];
    }

    v146 = v24;

    v25 = [MEMORY[0x1E6979318] animationWithKeyPath:@"backgroundColor"];
    [v25 setFromValue:v24];
    [v25 setToValue:cGColor];
    UIAnimationDragCoefficient();
    [v25 setDuration:v26 * 0.25];
    v27 = *MEMORY[0x1E6979EB8];
    v28 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v25 setTimingFunction:v28];

    v29 = *MEMORY[0x1E69797E0];
    [v25 setFillMode:*MEMORY[0x1E69797E0]];
    [layer addAnimation:v25 forKey:@"backgroundColorAnimation"];
    v30 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v31 = MEMORY[0x1E696AD98];
    [(UIView *)self->__innerView alpha];
    v32 = [v31 numberWithDouble:?];
    [v30 setFromValue:v32];

    UIAnimationDragCoefficient();
    [v30 setDuration:v33 * 0.25];
    v34 = [MEMORY[0x1E69793D0] functionWithName:v27];
    [v30 setTimingFunction:v34];

    [v30 setFillMode:v29];
    [layer addAnimation:v30 forKey:@"opacity"];
    v35 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v36 = MEMORY[0x1E696AD98];
    [(CAMShutterButtonRingView *)self->__outerView alpha];
    v37 = [v36 numberWithDouble:?];
    [v35 setFromValue:v37];

    UIAnimationDragCoefficient();
    [v35 setDuration:v38 * 0.25];
    v39 = [MEMORY[0x1E69793D0] functionWithName:v27];
    [v35 setTimingFunction:v39];

    [v35 setFillMode:v29];
    [v151 addAnimation:v35 forKey:@"opacity"];
    v40 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v41 = MEMORY[0x1E696AD98];
    [(UIImageView *)self->__outerImageView alpha];
    v42 = [v41 numberWithDouble:?];
    [v40 setFromValue:v42];

    UIAnimationDragCoefficient();
    [v40 setDuration:v43 * 0.25];
    v44 = [MEMORY[0x1E69793D0] functionWithName:v27];
    [v40 setTimingFunction:v44];

    [v40 setFillMode:v29];
    [layer3 addAnimation:v40 forKey:@"opacity"];
    v45 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v46 = MEMORY[0x1E696AD98];
    [(CAMTimelapseShutterRingView *)self->__timelapseOuterView alpha];
    v47 = [v46 numberWithDouble:?];
    [v45 setFromValue:v47];

    UIAnimationDragCoefficient();
    [v45 setDuration:v48 * 0.25];
    v49 = [MEMORY[0x1E69793D0] functionWithName:v27];
    [v45 setTimingFunction:v49];

    [v45 setFillMode:v29];
    [layer5 addAnimation:v45 forKey:@"opacity"];

    cGColor = v154;
    layer2 = v151;

    toMode = toModeCopy;
    mode = modeCopy;
    layer4 = v134;
  }

  v50 = [CAMShutterUtilities isStopMode:toMode];
  v51 = [CAMShutterUtilities isStopMode:mode];
  if (v50)
  {
    [(CUShutterButton *)self _sizeForMode:toMode];
    v147 = [MEMORY[0x1E696B098] valueWithCGSize:?];
    v52 = MEMORY[0x1E696AD98];
    [(CUShutterButton *)self _cornerRadiusForMode:toMode];
    v53 = [v52 numberWithDouble:?];
    v54 = 0.0;
    if (v148)
    {
      v54 = 1.0;
    }

    v55 = [MEMORY[0x1E696AD98] numberWithDouble:v54];
    v56 = v55;
    v57 = layer2;
    if (v135)
    {
      v136 = v55;
      UIAnimationDragCoefficient();
      v59 = v58;
      presentationLayer3 = [layer presentationLayer];
      toModeCopy2 = toMode;
      modeCopy2 = mode;
      v138 = layer3;
      if (presentationLayer3)
      {
        presentationLayer4 = [layer presentationLayer];
        v62 = [presentationLayer4 valueForKeyPath:@"bounds.size"];
      }

      else
      {
        v62 = [layer valueForKeyPath:@"bounds.size"];
      }

      v77 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"bounds.size"];
      v132 = v62;
      [v77 setFromValue:v62];
      [v77 setToValue:v147];
      [v77 setMass:0.8];
      v78 = v59;
      [v77 setDamping:22.0 / v59];
      [v77 setStiffness:300.0 / (v59 * v59)];
      [v77 durationForEpsilon:0.01];
      [v77 setDuration:?];
      LODWORD(v79) = 1060320051;
      LODWORD(v80) = 0.25;
      LODWORD(v81) = 1.0;
      LODWORD(v82) = 1053609165;
      v83 = [MEMORY[0x1E69793D0] functionWithControlPoints:v80 :v82 :v79 :v81];
      [v77 setTimingFunction:v83];

      v84 = *MEMORY[0x1E69797E0];
      [v77 setFillMode:*MEMORY[0x1E69797E0]];
      presentationLayer5 = [layer presentationLayer];
      v86 = layer4;
      if (presentationLayer5)
      {
        presentationLayer6 = [layer presentationLayer];
        v88 = [presentationLayer6 valueForKeyPath:@"cornerRadius"];
      }

      else
      {
        v88 = [layer valueForKeyPath:@"cornerRadius"];
      }

      v89 = [MEMORY[0x1E6979318] animationWithKeyPath:@"cornerRadius"];
      [v89 setFromValue:v88];
      [v89 setToValue:v53];
      [v89 setDuration:v78 * 0.12];
      LODWORD(v90) = 1041865114;
      LODWORD(v91) = 1043207291;
      LODWORD(v92) = 1061997773;
      LODWORD(v93) = 1.0;
      v94 = [MEMORY[0x1E69793D0] functionWithControlPoints:v90 :v91 :v92 :v93];
      [v89 setTimingFunction:v94];

      [v89 setFillMode:v84];
      [layer addAnimation:v77 forKey:@"sizeAnimation"];
      [layer addAnimation:v89 forKey:@"cornerRadiusAnimation"];
      if (v148)
      {
        presentationLayer7 = [layer4 presentationLayer];
        v96 = presentationLayer7;
        if (presentationLayer7)
        {
          v97 = presentationLayer7;
        }

        else
        {
          v97 = layer4;
        }

        v98 = v97;

        [v98 valueForKeyPath:@"opacity"];
        v99 = v152 = v57;
        v100 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
        [v100 setFromValue:v99];
        [v100 setToValue:v136];
        [v100 setDuration:v78 * 0.25];
        v101 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
        [v100 setTimingFunction:v101];

        v86 = layer4;
        [layer4 addAnimation:v100 forKey:@"opacityAnimation"];

        v57 = v152;
      }

      toMode = toModeCopy2;
      mode = modeCopy2;
      v56 = v136;
      layer3 = v138;
      layer4 = v86;
      goto LABEL_42;
    }
  }

  else
  {
    v57 = layer2;
    if (!v51)
    {
      goto LABEL_43;
    }

    [(CUShutterButton *)self _sizeForMode:toMode];
    v64 = v63;
    v147 = [MEMORY[0x1E696B098] valueWithCGSize:?];
    v53 = [MEMORY[0x1E696AD98] numberWithDouble:ceil(v64 * 0.5)];
    v65 = [(CUShutterButton *)self _shouldShowBackgroundViewForMode:mode];
    v66 = 0.0;
    if (v148)
    {
      v66 = 1.0;
    }

    v67 = [MEMORY[0x1E696AD98] numberWithDouble:v66];
    v56 = v67;
    if (v135)
    {
      v131 = v65;
      v137 = v67;
      LODWORD(v68) = 1045220557;
      LODWORD(v69) = 1051931443;
      LODWORD(v70) = 1.0;
      v149 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :v68 :v69 :v70];
      UIAnimationDragCoefficient();
      v72 = v71;
      presentationLayer8 = [layer presentationLayer];
      toModeCopy3 = toMode;
      modeCopy3 = mode;
      v139 = layer3;
      v74 = layer4;
      if (presentationLayer8)
      {
        presentationLayer9 = [layer presentationLayer];
        v76 = [presentationLayer9 valueForKeyPath:@"bounds.size"];
      }

      else
      {
        v76 = [layer valueForKeyPath:@"bounds.size"];
      }

      v102 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds.size"];
      v133 = v76;
      [v102 setFromValue:v76];
      [v102 setToValue:v147];
      v103 = v72;
      v104 = v72 * 0.25;
      [v102 setDuration:v104];
      v105 = v149;
      [v102 setTimingFunction:v149];
      v106 = *MEMORY[0x1E69797E0];
      [v102 setFillMode:*MEMORY[0x1E69797E0]];
      presentationLayer10 = [layer presentationLayer];
      v153 = v57;
      if (presentationLayer10)
      {
        presentationLayer11 = [layer presentationLayer];
        v109 = [presentationLayer11 valueForKeyPath:@"cornerRadius"];
      }

      else
      {
        v109 = [layer valueForKeyPath:@"cornerRadius"];
      }

      v110 = [MEMORY[0x1E6979318] animationWithKeyPath:@"cornerRadius"];
      [v110 setFromValue:v109];
      [v110 setToValue:v53];
      [v110 setDuration:v103 * 0.22];
      [v110 setTimingFunction:v149];
      [v110 setFillMode:v106];
      [layer addAnimation:v102 forKey:@"sizeAnimation"];
      [layer addAnimation:v110 forKey:@"cornerRadiusAnimation"];
      if (v131)
      {
        v111 = v74;
        presentationLayer12 = [v74 presentationLayer];
        v113 = presentationLayer12;
        if (presentationLayer12)
        {
          v114 = presentationLayer12;
        }

        else
        {
          v114 = v74;
        }

        v115 = v114;

        v116 = [v115 valueForKeyPath:@"opacity"];
        v117 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
        [v117 setFromValue:v116];
        [v117 setToValue:v137];
        [v117 setDuration:v104];
        v118 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
        [v117 setTimingFunction:v118];

        v74 = v111;
        v119 = v111;
        v105 = v149;
        [v119 addAnimation:v117 forKey:@"opacityAnimation"];
      }

      v57 = v153;
      toMode = toModeCopy3;
      mode = modeCopy3;
      v56 = v137;
      layer3 = v139;
      layer4 = v74;
      goto LABEL_42;
    }
  }

  [layer removeAllAnimations];
  [layer4 removeAllAnimations];
LABEL_42:
  [layer setValue:v147 forKeyPath:@"bounds.size"];
  [layer setValue:v53 forKeyPath:@"cornerRadius"];
  [layer4 setValue:v56 forKey:@"opacity"];

  cGColor = v154;
LABEL_43:
  if (v150)
  {
    [layer bounds];
    UIRectGetCenter();
    v121 = v120;
    v123 = v122;
    _spinnerView = [(CUShutterButton *)self _spinnerView];
    [_spinnerView setCenter:{v121, v123}];
  }

  [layer setValue:cGColor forKeyPath:@"backgroundColor"];
  *&v125 = v21;
  [layer setOpacity:v125];
  if (v156 || v155)
  {
    *&v126 = 0.0;
  }

  else
  {
    *&v126 = v21;
  }

  [v57 setOpacity:v126];
  if (v156)
  {
    *&v127 = v21;
  }

  else
  {
    *&v127 = 0.0;
  }

  [layer3 setOpacity:v127];
  if (v155)
  {
    *&v128 = v21;
  }

  else
  {
    *&v128 = 0.0;
  }

  [layer5 setOpacity:v128];
  v129 = mode == 3 && toMode == 8;
  v130 = v129;
  if (v129 || mode == 8)
  {
    [(CAMTimelapseShutterRingView *)self->__timelapseOuterView setAnimating:v130];
  }
}

- (void)_updateSpinningAnimations
{
  isSpinning = [(CUShutterButton *)self isSpinning];
  v4 = [(CUShutterButton *)self _isSpinningSupportedForLayoutStyle:[(CUShutterButton *)self layoutStyle]]& isSpinning;
  _innerView = [(CUShutterButton *)self _innerView];
  _spinnerView = [(CUShutterButton *)self _spinnerView];
  if (!_spinnerView)
  {
    _spinnerView = [CAMShutterUtilities spinnerViewForLayoutStyle:[(CUShutterButton *)self layoutStyle]];
    [(CUShutterButton *)self set_spinnerView:_spinnerView];
  }

  layer = [_spinnerView layer];
  v8 = [(CUShutterButton *)self _innerCircleColorForMode:[(CUShutterButton *)self mode] spinning:v4];
  if (v4)
  {
    [_innerView addSubview:_spinnerView];
    [_innerView bounds];
    UIRectGetCenter();
    [_spinnerView setCenter:?];
    [(CUShutterButton *)self spec];
    [_spinnerView setBounds:{0.0, 0.0, v21 + (v22 + v23) * -2.0, v21 + (v22 + v23) * -2.0}];
    [_innerView setBackgroundColor:v8];
    [_spinnerView setAlpha:1.0];
    layer2 = [_innerView layer];
    [layer2 removeAnimationForKey:@"sizeAnimation"];

    layer3 = [_innerView layer];
    [layer3 removeAnimationForKey:@"backgroundColorAnimation"];

    v11 = +[CAMShutterUtilities spinnerAnimation];
    [layer addAnimation:v11 forKey:@"spinnerRotation"];
  }

  else
  {
    v12 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __44__CUShutterButton__updateSpinningAnimations__block_invoke;
    v17[3] = &unk_1E76F7938;
    v18 = _innerView;
    v19 = v8;
    v20 = _spinnerView;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__CUShutterButton__updateSpinningAnimations__block_invoke_2;
    v13[3] = &unk_1E76FB068;
    v13[4] = self;
    v14 = v20;
    v15 = layer;
    v16 = @"spinnerRotation";
    [v12 animateWithDuration:327680 delay:v17 options:v13 animations:0.3 completion:0.0];

    v11 = v18;
  }
}

uint64_t __44__CUShutterButton__updateSpinningAnimations__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBackgroundColor:*(a1 + 40)];
  v2 = *(a1 + 48);

  return [v2 setAlpha:0.0];
}

uint64_t __44__CUShutterButton__updateSpinningAnimations__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isSpinning];
  if ((result & 1) == 0)
  {
    [*(a1 + 40) removeFromSuperview];
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);

    return [v3 removeAnimationForKey:v4];
  }

  return result;
}

- (void)setShowDisabled:(BOOL)disabled
{
  if (self->_showDisabled != disabled)
  {
    self->_showDisabled = disabled;
    mode = [(CUShutterButton *)self mode];
    mode2 = [(CUShutterButton *)self mode];

    [(CUShutterButton *)self _performModeSwitchAnimationFromMode:mode toMode:mode2 animated:0];
  }
}

- (void)setLayoutStyle:(int64_t)style
{
  layoutStyle = self->_layoutStyle;
  if (layoutStyle != style)
  {
    self->_layoutStyle = style;
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    CAMShutterButtonSpecForLayoutStyle(style, &v9);
    v7[0] = v9;
    v7[1] = v10;
    v8 = v11;
    [(CUShutterButton *)self setSpec:v7];
    v6 = [(CUShutterButton *)self _isSpinningSupportedForLayoutStyle:layoutStyle];
    if (v6 != [(CUShutterButton *)self _isSpinningSupportedForLayoutStyle:style])
    {
      [(CUShutterButton *)self _updateSpinningAnimations];
    }
  }
}

- (CAMShutterButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end