@interface CUShutterButton
+ (CUShutterButton)shutterButtonWithLayoutStyle:(int64_t)a3;
+ (CUShutterButton)shutterButtonWithSpec:(CAMShutterButtonSpec *)a3;
+ (id)shutterButton;
+ (id)smallShutterButton;
+ (id)smallShutterButtonWithLayoutStyle:(int64_t)a3;
- ($EA90F2AF3C0DC35AB2D8304CE3BCA89E)_timelapseRingSpecForLayoutStyle:(SEL)a3;
- (BOOL)_shouldShowBackgroundViewForMode:(int64_t)a3;
- (BOOL)_shouldShowContrastBorderForMode:(int64_t)a3 layoutStyle:(int64_t)a4;
- (CAMShutterButtonDelegate)delegate;
- (CAMShutterButtonSpec)spec;
- (CGSize)_sizeForMode:(int64_t)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CUShutterButton)initWithCoder:(id)a3;
- (CUShutterButton)initWithFrame:(CGRect)a3;
- (CUShutterButton)initWithFrame:(CGRect)a3 layoutStyle:(int64_t)a4 spec:(CAMShutterButtonSpec *)a5;
- (UIEdgeInsets)tappableEdgeInsets;
- (double)_cornerRadiusForMode:(int64_t)a3;
- (id)_contentColor;
- (id)_innerCircleColorForMode:(int64_t)a3 spinning:(BOOL)a4;
- (id)_outerImageForMode:(int64_t)a3 layoutStyle:(int64_t)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_commonCAMShutterButtonInitializationWithLayoutStyle:(int64_t)a3 spec:(CAMShutterButtonSpec *)a4;
- (void)_performHighlightAnimation;
- (void)_performModeSwitchAnimationFromMode:(int64_t)a3 toMode:(int64_t)a4 animated:(BOOL)a5;
- (void)_updateOuterAndInnerLayers;
- (void)_updateSpinningAnimations;
- (void)layoutSubviews;
- (void)setContentColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setMode:(int64_t)a3 animated:(BOOL)a4;
- (void)setShowDisabled:(BOOL)a3;
- (void)setSpec:(CAMShutterButtonSpec *)a3;
- (void)setSpinning:(BOOL)a3;
- (void)setStopModeBackgroundColor:(id)a3;
- (void)setTappableEdgeInsets:(UIEdgeInsets)a3;
@end

@implementation CUShutterButton

- (void)_updateOuterAndInnerLayers
{
  v3 = [(CUShutterButton *)self mode];
  v4 = [CAMShutterUtilities shouldUseImageViewForMode:v3];
  v5 = [(CUShutterButton *)self _innerView];
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

    v9 = [(CUShutterButton *)self _outerImageForMode:v3 layoutStyle:self->_layoutStyle];
    [(UIImageView *)self->__outerImageView setImage:v9];
  }

  if ([CAMShutterUtilities shouldUseTimelapseOuterViewForMode:v3]&& !self->__timelapseOuterView)
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

  if ([(CUShutterButton *)self _shouldShowBackgroundViewForMode:v3])
  {
    v13 = [(CUShutterButton *)self _stopModeBackground];
    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [v13 setUserInteractionEnabled:0];
      [(CUShutterButton *)self set_stopModeBackground:v13];
      [(CUShutterButton *)self insertSubview:v13 belowSubview:v5];
    }

    v14 = [(CUShutterButton *)self stopModeBackgroundColor];
    [v13 setBackgroundColor:v14];
  }

  v15 = [(CUShutterButton *)self _shouldShowContrastBorderForMode:v3 layoutStyle:self->_layoutStyle];
  v16 = [(CUShutterButton *)self _outerView];
  [v16 setShowContrastBorder:v15];
  v17 = [(CUShutterButton *)self _contentColor];
  [v16 setColor:v17];

  v18 = [(CUShutterButton *)self isSpinning];
  v19 = [v5 layer];
  v20 = [(CUShutterButton *)self _innerCircleColorForMode:v3 spinning:v18];
  [v19 setBackgroundColor:{objc_msgSend(v20, "CGColor")}];

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
  v2 = [(CUShutterButton *)self contentColor];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v5 = v4;

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
  v11 = [(CUShutterButton *)self mode];
  v12 = [(CUShutterButton *)self _outerView];
  [v12 frameForAlignmentRect:{v4, v6, v8, v10}];
  [v12 setFrame:?];
  v13 = [(CUShutterButton *)self _glassBackground];
  [v13 setFrame:{v4, v6, v8, v10}];
  v14 = [v13 layer];
  [v14 setCornerRadius:v8 * 0.5];

  v15 = [(CUShutterButton *)self _innerView];
  v16 = *MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 8);
  [(CUShutterButton *)self _sizeForMode:v11];
  v19 = v18;
  v21 = v20;
  UIRectGetCenter();
  v23 = v22;
  v25 = v24;
  [v15 setBounds:{v16, v17, v19, v21}];
  [v15 setCenter:{v23, v25}];
  v26 = [(CUShutterButton *)self _innerViewContrastView];
  v27 = CAMPixelWidthForView(self);
  UIRectCenteredAboutPointScale();
  v39 = CGRectInset(v38, -v27, -v27);
  [v26 frameForAlignmentRect:{v39.origin.x, v39.origin.y, v39.size.width, v39.size.height}];
  [v26 setBounds:{0.0, 0.0}];
  [v26 setCenter:{v23, v25}];
  [(CUShutterButton *)self _cornerRadiusForMode:v11];
  v29 = v28;
  v30 = [v15 layer];
  [v30 setCornerRadius:v29];
  if ([(CUShutterButton *)self _shouldShowBackgroundViewForMode:v11])
  {
    v31 = [(CUShutterButton *)self _stopModeBackground];
    [(CUShutterButton *)self _sizeForMode:0];
    [v31 setBounds:{v16, v17, v32, v33}];
    [v31 setCenter:{v23, v25}];
    [(CUShutterButton *)self _cornerRadiusForMode:0];
    v35 = v34;
    v36 = [v31 layer];
    [v36 setCornerRadius:v35];
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
  v3 = [(CUShutterButton *)self isHighlighted];
  v4 = [(CUShutterButton *)self _innerView];
  v5 = [v4 layer];

  v6 = [(CUShutterButton *)self _innerViewContrastView];
  v7 = [v6 layer];

  v8 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
  [v8 setMass:0.8];
  [v8 setVelocity:0.0];
  if (v3)
  {
    v9 = 0.9;
  }

  else
  {
    v9 = 1.0;
  }

  if (v3)
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

  v18 = [v5 presentationLayer];
  v19 = [v18 valueForKeyPath:@"transform.scale.xy"];
  [v8 setFromValue:v19];

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [v8 setToValue:v20];

  [v5 addAnimation:v8 forKey:@"highlightScaleAnimation"];
  [v7 addAnimation:v8 forKey:@"highlightScaleAnimation"];
  memset(&v22, 0, sizeof(v22));
  CATransform3DMakeScale(&v22, v9, v9, 1.0);
  v21 = v22;
  [v5 setTransform:&v21];
  v21 = v22;
  [v7 setTransform:&v21];
}

+ (id)smallShutterButton
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 cam_initialLayoutStyle];

  return [a1 smallShutterButtonWithLayoutStyle:v4];
}

+ (id)shutterButton
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 cam_initialLayoutStyle];

  return [a1 shutterButtonWithLayoutStyle:v4];
}

+ (CUShutterButton)shutterButtonWithSpec:(CAMShutterButtonSpec *)a3
{
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 cam_initialLayoutStyle];

  v7 = [a1 alloc];
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = *&a3->stopSquareSideLength;
  v15[0] = *&a3->outerRingDiameter;
  v15[1] = v12;
  interRingSpacing = a3->interRingSpacing;
  v13 = [v7 initWithFrame:v6 layoutStyle:v15 spec:{v8, v9, v10, v11}];

  return v13;
}

+ (CUShutterButton)shutterButtonWithLayoutStyle:(int64_t)a3
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  CAMShutterButtonSpecForLayoutStyle(a3, &v14);
  v5 = [a1 alloc];
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v16;
  v10 = [v5 initWithFrame:a3 layoutStyle:v12 spec:{v6, v7, v8, v9}];

  return v10;
}

+ (id)smallShutterButtonWithLayoutStyle:(int64_t)a3
{
  if (a3 == 3)
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 scale];
    v7 = 1.0 / v6;

    v8 = v7 + 55.0;
    v9 = 5.0 - v7;
  }

  else
  {
    v9 = 5.0;
    v8 = 47.0;
  }

  v10 = [a1 alloc];
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  *v17 = v8;
  *&v17[1] = v9;
  v18 = xmmword_1A3A69B90;
  v19 = 0x4000000000000000;
  v15 = [v10 initWithFrame:a3 layoutStyle:v17 spec:{v11, v12, v13, v14}];

  return v15;
}

- (void)_commonCAMShutterButtonInitializationWithLayoutStyle:(int64_t)a3 spec:(CAMShutterButtonSpec *)a4
{
  self->_mode = 0;
  v5 = *&a4->outerRingDiameter;
  v6 = *&a4->stopSquareSideLength;
  self->_spec.interRingSpacing = a4->interRingSpacing;
  *&self->_spec.outerRingDiameter = v5;
  *&self->_spec.stopSquareSideLength = v6;
  self->_layoutStyle = a3;
  v7 = [MEMORY[0x1E69DC888] whiteColor];
  contentColor = self->_contentColor;
  self->_contentColor = v7;

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

- (CUShutterButton)initWithFrame:(CGRect)a3 layoutStyle:(int64_t)a4 spec:(CAMShutterButtonSpec *)a5
{
  v13.receiver = self;
  v13.super_class = CUShutterButton;
  v7 = [(CUShutterButton *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8 = v7;
  if (v7)
  {
    v9 = *&a5->stopSquareSideLength;
    v11[0] = *&a5->outerRingDiameter;
    v11[1] = v9;
    interRingSpacing = a5->interRingSpacing;
    [(CUShutterButton *)v7 _commonCAMShutterButtonInitializationWithLayoutStyle:a4 spec:v11];
  }

  return v8;
}

- (CUShutterButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [MEMORY[0x1E69DC938] currentDevice];
  v9 = [v8 cam_initialLayoutStyle];

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  CAMShutterButtonSpecForLayoutStyle(v9, &v13);
  v11[0] = v13;
  v11[1] = v14;
  v12 = v15;
  return [(CUShutterButton *)self initWithFrame:v9 layoutStyle:v11 spec:x, y, width, height];
}

- (CUShutterButton)initWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = CUShutterButton;
  v3 = [(CUShutterButton *)&v13 initWithCoder:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    v5 = [v4 cam_initialLayoutStyle];

    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    CAMShutterButtonSpecForLayoutStyle(v5, &v10);
    v8[0] = v10;
    v8[1] = v11;
    v9 = v12;
    [(CUShutterButton *)v3 _commonCAMShutterButtonInitializationWithLayoutStyle:v5 spec:v8];
    v6 = v3;
  }

  return v3;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (([(CUShutterButton *)self isEnabled]& 1) == 0)
  {
    if ([(CUShutterButton *)self pointInside:v7 withEvent:x, y])
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
  v11 = [(CUShutterButton *)&v13 hitTest:v7 withEvent:x, y];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  outerRingDiameter = self->_spec.outerRingDiameter;
  v4 = outerRingDiameter;
  result.height = v4;
  result.width = outerRingDiameter;
  return result;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(CUShutterButton *)self isHighlighted];
  v6.receiver = self;
  v6.super_class = CUShutterButton;
  [(CUShutterButton *)&v6 setHighlighted:v3];
  if (v5 != v3)
  {
    [(CUShutterButton *)self _performHighlightAnimation];
  }
}

- (void)setMode:(int64_t)a3 animated:(BOOL)a4
{
  mode = self->_mode;
  if (mode != a3)
  {
    v5 = a4;
    self->_mode = a3;
    [(CUShutterButton *)self _updateOuterAndInnerLayers];
    v7 = self->_mode;

    [(CUShutterButton *)self _performModeSwitchAnimationFromMode:mode toMode:v7 animated:v5];
  }
}

- (void)setSpinning:(BOOL)a3
{
  if (self->_spinning != a3)
  {
    self->_spinning = a3;
    [(CUShutterButton *)self _updateSpinningAnimations];
  }
}

- (void)setTappableEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_tappableEdgeInsets.top), vceqq_f64(v4, *&self->_tappableEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_tappableEdgeInsets = a3;
    [(CUShutterButton *)self setNeedsLayout];
  }
}

- (void)setContentColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_contentColor] & 1) == 0)
  {
    objc_storeStrong(&self->_contentColor, a3);
    [(CUShutterButton *)self _updateOuterAndInnerLayers];
  }
}

- (void)setStopModeBackgroundColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_stopModeBackgroundColor] & 1) == 0)
  {
    objc_storeStrong(&self->_stopModeBackgroundColor, a3);
    [(CUShutterButton *)self _updateOuterAndInnerLayers];
  }
}

- (void)setSpec:(CAMShutterButtonSpec *)a3
{
  interRingSpacing = a3->interRingSpacing;
  v5 = *&a3->stopSquareSideLength;
  *&self->_spec.outerRingDiameter = *&a3->outerRingDiameter;
  *&self->_spec.stopSquareSideLength = v5;
  self->_spec.interRingSpacing = interRingSpacing;
  outerView = self->__outerView;
  v7 = *&a3->stopSquareSideLength;
  v8[0] = *&a3->outerRingDiameter;
  v8[1] = v7;
  v9 = a3->interRingSpacing;
  [(CAMShutterButtonRingView *)outerView setSpec:v8];
  [(CUShutterButton *)self _updateOuterAndInnerLayers];
}

- (id)_innerCircleColorForMode:(int64_t)a3 spinning:(BOOL)a4
{
  if (a4)
  {
    v6 = 0.2;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 bundleIdentifier];

  v9 = [v8 isEqualToString:@"com.apple.camera.lockscreen"];
  v10 = +[CAMCaptureCapabilities capabilities];
  v11 = [v10 featureDevelopmentShowLockIndicator];

  if (a3 > 9)
  {
    v12 = 0;
  }

  else if (((1 << a3) & 0x1CE) != 0)
  {
    v12 = [MEMORY[0x1E69DC888] colorWithRed:0.961 green:0.2 blue:0.2 alpha:v6];
  }

  else
  {
    if ((v11 & v9) == 1)
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

- (CGSize)_sizeForMode:(int64_t)a3
{
  v4 = [CAMShutterUtilities isStopMode:a3];
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

- (double)_cornerRadiusForMode:(int64_t)a3
{
  v4 = [CAMShutterUtilities isStopMode:a3];
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

- (id)_outerImageForMode:(int64_t)a3 layoutStyle:(int64_t)a4
{
  if (a3 == 2 || a3 == 7)
  {
    v5 = @"CAMShutterButtonSlomo";
  }

  else
  {
    v5 = 0;
  }

  if (a4 == 3)
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

- ($EA90F2AF3C0DC35AB2D8304CE3BCA89E)_timelapseRingSpecForLayoutStyle:(SEL)a3
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

- (BOOL)_shouldShowContrastBorderForMode:(int64_t)a3 layoutStyle:(int64_t)a4
{
  if (a4 == 1)
  {
    return (a3 < 0xA) & (0x231u >> a3);
  }

  else
  {
    return 0;
  }
}

- (BOOL)_shouldShowBackgroundViewForMode:(int64_t)a3
{
  v4 = [(CUShutterButton *)self stopModeBackgroundColor];
  if (v4)
  {
    v5 = [CAMShutterUtilities isStopMode:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_performModeSwitchAnimationFromMode:(int64_t)a3 toMode:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v9 = [(CUShutterButton *)self _innerView];
  v158 = [v9 layer];

  v10 = [(CUShutterButton *)self _outerView];
  v11 = [v10 layer];

  v12 = [(CUShutterButton *)self _outerImageView];
  v13 = [v12 layer];

  v14 = [(CUShutterButton *)self _stopModeBackground];
  v15 = [v14 layer];

  v16 = [(CUShutterButton *)self _timelapseOuterView];
  v157 = [v16 layer];

  v17 = [(CUShutterButton *)self isSpinning];
  v18 = [(CUShutterButton *)self _innerCircleColorForMode:a4 spinning:v17];
  v19 = [v18 CGColor];

  v150 = v17;
  v20 = v5 && ~v17;
  v156 = [CAMShutterUtilities shouldUseImageViewForMode:a4];
  v155 = [CAMShutterUtilities shouldUseTimelapseOuterViewForMode:a4];
  v148 = [(CUShutterButton *)self _shouldShowBackgroundViewForMode:a4];
  if ([(CUShutterButton *)self showDisabled])
  {
    v21 = 0.4;
  }

  else
  {
    v21 = 1.0;
  }

  v135 = v20;
  v154 = v19;
  if (v20 == 1)
  {
    v22 = [v158 presentationLayer];
    v151 = v11;
    v140 = a4;
    v143 = a3;
    v134 = v15;
    if (v22)
    {
      v23 = [v158 presentationLayer];
      v24 = [v23 valueForKeyPath:@"backgroundColor"];
    }

    else
    {
      v24 = [v158 valueForKeyPath:@"backgroundColor"];
    }

    v146 = v24;

    v25 = [MEMORY[0x1E6979318] animationWithKeyPath:@"backgroundColor"];
    [v25 setFromValue:v24];
    [v25 setToValue:v19];
    UIAnimationDragCoefficient();
    [v25 setDuration:v26 * 0.25];
    v27 = *MEMORY[0x1E6979EB8];
    v28 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v25 setTimingFunction:v28];

    v29 = *MEMORY[0x1E69797E0];
    [v25 setFillMode:*MEMORY[0x1E69797E0]];
    [v158 addAnimation:v25 forKey:@"backgroundColorAnimation"];
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
    [v158 addAnimation:v30 forKey:@"opacity"];
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
    [v13 addAnimation:v40 forKey:@"opacity"];
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
    [v157 addAnimation:v45 forKey:@"opacity"];

    v19 = v154;
    v11 = v151;

    a4 = v140;
    a3 = v143;
    v15 = v134;
  }

  v50 = [CAMShutterUtilities isStopMode:a4];
  v51 = [CAMShutterUtilities isStopMode:a3];
  if (v50)
  {
    [(CUShutterButton *)self _sizeForMode:a4];
    v147 = [MEMORY[0x1E696B098] valueWithCGSize:?];
    v52 = MEMORY[0x1E696AD98];
    [(CUShutterButton *)self _cornerRadiusForMode:a4];
    v53 = [v52 numberWithDouble:?];
    v54 = 0.0;
    if (v148)
    {
      v54 = 1.0;
    }

    v55 = [MEMORY[0x1E696AD98] numberWithDouble:v54];
    v56 = v55;
    v57 = v11;
    if (v135)
    {
      v136 = v55;
      UIAnimationDragCoefficient();
      v59 = v58;
      v60 = [v158 presentationLayer];
      v141 = a4;
      v144 = a3;
      v138 = v13;
      if (v60)
      {
        v61 = [v158 presentationLayer];
        v62 = [v61 valueForKeyPath:@"bounds.size"];
      }

      else
      {
        v62 = [v158 valueForKeyPath:@"bounds.size"];
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
      v85 = [v158 presentationLayer];
      v86 = v15;
      if (v85)
      {
        v87 = [v158 presentationLayer];
        v88 = [v87 valueForKeyPath:@"cornerRadius"];
      }

      else
      {
        v88 = [v158 valueForKeyPath:@"cornerRadius"];
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
      [v158 addAnimation:v77 forKey:@"sizeAnimation"];
      [v158 addAnimation:v89 forKey:@"cornerRadiusAnimation"];
      if (v148)
      {
        v95 = [v15 presentationLayer];
        v96 = v95;
        if (v95)
        {
          v97 = v95;
        }

        else
        {
          v97 = v15;
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

        v86 = v15;
        [v15 addAnimation:v100 forKey:@"opacityAnimation"];

        v57 = v152;
      }

      a4 = v141;
      a3 = v144;
      v56 = v136;
      v13 = v138;
      v15 = v86;
      goto LABEL_42;
    }
  }

  else
  {
    v57 = v11;
    if (!v51)
    {
      goto LABEL_43;
    }

    [(CUShutterButton *)self _sizeForMode:a4];
    v64 = v63;
    v147 = [MEMORY[0x1E696B098] valueWithCGSize:?];
    v53 = [MEMORY[0x1E696AD98] numberWithDouble:ceil(v64 * 0.5)];
    v65 = [(CUShutterButton *)self _shouldShowBackgroundViewForMode:a3];
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
      v73 = [v158 presentationLayer];
      v142 = a4;
      v145 = a3;
      v139 = v13;
      v74 = v15;
      if (v73)
      {
        v75 = [v158 presentationLayer];
        v76 = [v75 valueForKeyPath:@"bounds.size"];
      }

      else
      {
        v76 = [v158 valueForKeyPath:@"bounds.size"];
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
      v107 = [v158 presentationLayer];
      v153 = v57;
      if (v107)
      {
        v108 = [v158 presentationLayer];
        v109 = [v108 valueForKeyPath:@"cornerRadius"];
      }

      else
      {
        v109 = [v158 valueForKeyPath:@"cornerRadius"];
      }

      v110 = [MEMORY[0x1E6979318] animationWithKeyPath:@"cornerRadius"];
      [v110 setFromValue:v109];
      [v110 setToValue:v53];
      [v110 setDuration:v103 * 0.22];
      [v110 setTimingFunction:v149];
      [v110 setFillMode:v106];
      [v158 addAnimation:v102 forKey:@"sizeAnimation"];
      [v158 addAnimation:v110 forKey:@"cornerRadiusAnimation"];
      if (v131)
      {
        v111 = v74;
        v112 = [v74 presentationLayer];
        v113 = v112;
        if (v112)
        {
          v114 = v112;
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
      a4 = v142;
      a3 = v145;
      v56 = v137;
      v13 = v139;
      v15 = v74;
      goto LABEL_42;
    }
  }

  [v158 removeAllAnimations];
  [v15 removeAllAnimations];
LABEL_42:
  [v158 setValue:v147 forKeyPath:@"bounds.size"];
  [v158 setValue:v53 forKeyPath:@"cornerRadius"];
  [v15 setValue:v56 forKey:@"opacity"];

  v19 = v154;
LABEL_43:
  if (v150)
  {
    [v158 bounds];
    UIRectGetCenter();
    v121 = v120;
    v123 = v122;
    v124 = [(CUShutterButton *)self _spinnerView];
    [v124 setCenter:{v121, v123}];
  }

  [v158 setValue:v19 forKeyPath:@"backgroundColor"];
  *&v125 = v21;
  [v158 setOpacity:v125];
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

  [v13 setOpacity:v127];
  if (v155)
  {
    *&v128 = v21;
  }

  else
  {
    *&v128 = 0.0;
  }

  [v157 setOpacity:v128];
  v129 = a3 == 3 && a4 == 8;
  v130 = v129;
  if (v129 || a3 == 8)
  {
    [(CAMTimelapseShutterRingView *)self->__timelapseOuterView setAnimating:v130];
  }
}

- (void)_updateSpinningAnimations
{
  v3 = [(CUShutterButton *)self isSpinning];
  v4 = [(CUShutterButton *)self _isSpinningSupportedForLayoutStyle:[(CUShutterButton *)self layoutStyle]]& v3;
  v5 = [(CUShutterButton *)self _innerView];
  v6 = [(CUShutterButton *)self _spinnerView];
  if (!v6)
  {
    v6 = [CAMShutterUtilities spinnerViewForLayoutStyle:[(CUShutterButton *)self layoutStyle]];
    [(CUShutterButton *)self set_spinnerView:v6];
  }

  v7 = [v6 layer];
  v8 = [(CUShutterButton *)self _innerCircleColorForMode:[(CUShutterButton *)self mode] spinning:v4];
  if (v4)
  {
    [v5 addSubview:v6];
    [v5 bounds];
    UIRectGetCenter();
    [v6 setCenter:?];
    [(CUShutterButton *)self spec];
    [v6 setBounds:{0.0, 0.0, v21 + (v22 + v23) * -2.0, v21 + (v22 + v23) * -2.0}];
    [v5 setBackgroundColor:v8];
    [v6 setAlpha:1.0];
    v9 = [v5 layer];
    [v9 removeAnimationForKey:@"sizeAnimation"];

    v10 = [v5 layer];
    [v10 removeAnimationForKey:@"backgroundColorAnimation"];

    v11 = +[CAMShutterUtilities spinnerAnimation];
    [v7 addAnimation:v11 forKey:@"spinnerRotation"];
  }

  else
  {
    v12 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __44__CUShutterButton__updateSpinningAnimations__block_invoke;
    v17[3] = &unk_1E76F7938;
    v18 = v5;
    v19 = v8;
    v20 = v6;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__CUShutterButton__updateSpinningAnimations__block_invoke_2;
    v13[3] = &unk_1E76FB068;
    v13[4] = self;
    v14 = v20;
    v15 = v7;
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

- (void)setShowDisabled:(BOOL)a3
{
  if (self->_showDisabled != a3)
  {
    self->_showDisabled = a3;
    v5 = [(CUShutterButton *)self mode];
    v6 = [(CUShutterButton *)self mode];

    [(CUShutterButton *)self _performModeSwitchAnimationFromMode:v5 toMode:v6 animated:0];
  }
}

- (void)setLayoutStyle:(int64_t)a3
{
  layoutStyle = self->_layoutStyle;
  if (layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    CAMShutterButtonSpecForLayoutStyle(a3, &v9);
    v7[0] = v9;
    v7[1] = v10;
    v8 = v11;
    [(CUShutterButton *)self setSpec:v7];
    v6 = [(CUShutterButton *)self _isSpinningSupportedForLayoutStyle:layoutStyle];
    if (v6 != [(CUShutterButton *)self _isSpinningSupportedForLayoutStyle:a3])
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