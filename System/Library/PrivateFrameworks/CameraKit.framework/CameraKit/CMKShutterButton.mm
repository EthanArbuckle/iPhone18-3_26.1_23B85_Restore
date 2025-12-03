@interface CMKShutterButton
+ (id)shutterButton;
+ (id)shutterButtonWithDesiredSpec:(CMKShutterButtonSpec)spec;
+ (id)smallShutterButton;
+ (id)tinyShutterButton;
- (CGSize)_sizeForMode:(int64_t)mode;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CMKShutterButton)initWithCoder:(id)coder;
- (CMKShutterButton)initWithFrame:(CGRect)frame;
- (CMKShutterButtonSpec)spec;
- (double)_borderWidthForMode:(int64_t)mode;
- (double)_cornerRadiusForMode:(int64_t)mode;
- (id)_colorForMode:(int64_t)mode;
- (void)_commonCMKShutterButtonInitialization;
- (void)_performHighlightAnimation;
- (void)_performModeSwitchAnimationFromMode:(int64_t)mode toMode:(int64_t)toMode animated:(BOOL)animated;
- (void)_updateOuterAndInnerLayers;
- (void)_updateSpinningAnimations;
- (void)layoutSubviews;
- (void)setPulsing:(BOOL)pulsing;
- (void)setShowDisabled:(BOOL)disabled;
- (void)setSpinning:(BOOL)spinning;
@end

@implementation CMKShutterButton

- (CMKShutterButtonSpec)spec
{
  outerRingDiameter = self->_spec.outerRingDiameter;
  outerRingStrokeWidth = self->_spec.outerRingStrokeWidth;
  stopSquareSideLength = self->_spec.stopSquareSideLength;
  stopSquareCornerRadius = self->_spec.stopSquareCornerRadius;
  result.stopSquareCornerRadius = stopSquareCornerRadius;
  result.stopSquareSideLength = stopSquareSideLength;
  result.outerRingStrokeWidth = outerRingStrokeWidth;
  result.outerRingDiameter = outerRingDiameter;
  return result;
}

- (void)_updateSpinningAnimations
{
  progressActivityIndicatorView = self->__progressActivityIndicatorView;
  if (!progressActivityIndicatorView)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
    v5 = self->__progressActivityIndicatorView;
    self->__progressActivityIndicatorView = v4;

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UIActivityIndicatorView *)self->__progressActivityIndicatorView setColor:whiteColor];

    [(UIActivityIndicatorView *)self->__progressActivityIndicatorView setAnimationDuration:1.0];
    [(UIActivityIndicatorView *)self->__progressActivityIndicatorView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    [(CMKShutterButton *)self bounds];
    UIRectCenteredIntegralRectScale();
    [(UIActivityIndicatorView *)self->__progressActivityIndicatorView setFrame:0];
    progressActivityIndicatorView = self->__progressActivityIndicatorView;
  }

  [(CMKShutterButton *)self insertSubview:progressActivityIndicatorView belowSubview:self->__innerView];
  if (self->_spinning)
  {
    [(UIView *)self->__innerView setAlpha:0.0];
    [(UIActivityIndicatorView *)self->__progressActivityIndicatorView setAlpha:1.0];
    v7 = self->__progressActivityIndicatorView;

    [(UIActivityIndicatorView *)v7 startAnimating];
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__CMKShutterButton__updateSpinningAnimations__block_invoke;
    v9[3] = &unk_278D894D0;
    v9[4] = self;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__CMKShutterButton__updateSpinningAnimations__block_invoke_2;
    v8[3] = &unk_278D894F8;
    v8[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:327680 delay:v9 options:v8 animations:0.3 completion:0.0];
  }
}

uint64_t __45__CMKShutterButton__updateSpinningAnimations__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 784) removeFromSuperview];
  v2 = *(*(a1 + 32) + 784);

  return [v2 stopAnimating];
}

- (void)_performModeSwitchAnimationFromMode:(int64_t)mode toMode:(int64_t)toMode animated:(BOOL)animated
{
  animatedCopy = animated;
  _innerView = [(CMKShutterButton *)self _innerView];
  layer = [_innerView layer];

  _outerView = [(CMKShutterButton *)self _outerView];
  layer2 = [_outerView layer];

  _outerImageView = [(CMKShutterButton *)self _outerImageView];
  layer3 = [_outerImageView layer];

  v12 = [(CMKShutterButton *)self _colorForMode:toMode];
  cGColor = [v12 CGColor];

  v14 = [(CMKShutterButton *)self _shouldUseImageViewForMode:toMode];
  v15 = [(CMKShutterButton *)self _shouldUseTimelapseOuterViewForMode:toMode];
  if (animatedCopy)
  {
    v100 = animatedCopy;
    v107 = v14;
    presentationLayer = [layer presentationLayer];
    v105 = v15;
    modeCopy = mode;
    if (presentationLayer)
    {
      presentationLayer2 = [layer presentationLayer];
      v18 = [presentationLayer2 valueForKeyPath:@"backgroundColor"];
    }

    else
    {
      v18 = [layer valueForKeyPath:@"backgroundColor"];
    }

    v97 = v18;

    v19 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"backgroundColor"];
    [v19 setFromValue:v18];
    [v19 setToValue:cGColor];
    UIAnimationDragCoefficient();
    [v19 setDuration:v20 * 0.25];
    v102 = cGColor;
    v21 = *MEMORY[0x277CDA7B8];
    v22 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [v19 setTimingFunction:v22];

    v23 = *MEMORY[0x277CDA230];
    [v19 setFillMode:*MEMORY[0x277CDA230]];
    [layer addAnimation:v19 forKey:@"backgroundColorAnimation"];
    v24 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    v25 = MEMORY[0x277CCABB0];
    [(UIView *)self->__outerView alpha];
    v26 = [v25 numberWithDouble:?];
    [v24 setFromValue:v26];

    UIAnimationDragCoefficient();
    [v24 setDuration:v27 * 0.25];
    v28 = [MEMORY[0x277CD9EF8] functionWithName:v21];
    [v24 setTimingFunction:v28];

    [v24 setFillMode:v23];
    [layer2 addAnimation:v24 forKey:@"opacity"];
    v29 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    v30 = MEMORY[0x277CCABB0];
    [(UIImageView *)self->__outerImageView alpha];
    v31 = [v30 numberWithDouble:?];
    [v29 setFromValue:v31];

    UIAnimationDragCoefficient();
    [v29 setDuration:v32 * 0.25];
    v33 = [MEMORY[0x277CD9EF8] functionWithName:v21];
    [v29 setTimingFunction:v33];

    [v29 setFillMode:v23];
    [layer3 addAnimation:v29 forKey:@"opacity"];
    v34 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    UIAnimationDragCoefficient();
    [v34 setDuration:v35 * 0.25];
    v36 = [MEMORY[0x277CD9EF8] functionWithName:v21];
    [v34 setTimingFunction:v36];

    cGColor = v102;
    [v34 setFillMode:v23];
    [0 addAnimation:v34 forKey:@"opacity"];

    v15 = v105;
    v14 = v107;
    animatedCopy = v100;
    mode = modeCopy;
  }

  if ([(CMKShutterButton *)self _isStopMode:toMode, v97])
  {
    [(CMKShutterButton *)self _sizeForMode:toMode];
    v37 = [MEMORY[0x277CCAE60] valueWithCGSize:?];
    if (animatedCopy)
    {
      v108 = v14;
      LODWORD(v38) = 1041812769;
      LODWORD(v39) = 1043018044;
      LODWORD(v40) = 1044413908;
      LODWORD(v41) = 1.0;
      v42 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v38 :v39 :v40 :v41];
      presentationLayer3 = [layer presentationLayer];
      v106 = v15;
      if (presentationLayer3)
      {
        presentationLayer4 = [layer presentationLayer];
        v45 = [presentationLayer4 valueForKeyPath:@"bounds.size"];
      }

      else
      {
        v45 = [layer valueForKeyPath:@"bounds.size"];
      }

      v57 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"bounds.size"];
      [v57 setFromValue:v45];
      [v57 setToValue:v37];
      UIAnimationDragCoefficient();
      [v57 setDuration:v58 * 0.265];
      [v57 setTimingFunction:v42];
      v59 = *MEMORY[0x277CDA230];
      [v57 setFillMode:*MEMORY[0x277CDA230]];
      presentationLayer5 = [layer presentationLayer];
      if (presentationLayer5)
      {
        presentationLayer6 = [layer presentationLayer];
        v62 = [presentationLayer6 valueForKeyPath:@"cornerRadius"];
      }

      else
      {
        v62 = [layer valueForKeyPath:@"cornerRadius"];
      }

      v63 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"cornerRadius"];
      [v63 setFromValue:v62];
      [v63 setToValue:&unk_28556E008];
      UIAnimationDragCoefficient();
      [v63 setDuration:v64 * 0.265];
      [v63 setTimingFunction:v42];
      [v63 setFillMode:v59];
      presentationLayer7 = [layer presentationLayer];
      if (presentationLayer7)
      {
        [layer presentationLayer];
        v103 = v57;
        v66 = v59;
        v67 = v42;
        v68 = v62;
        v69 = v37;
        v70 = v45;
        v72 = v71 = cGColor;
        v73 = [v72 valueForKeyPath:@"transform.scale.xy"];

        cGColor = v71;
        v45 = v70;
        v37 = v69;
        v62 = v68;
        v42 = v67;
        v59 = v66;
        v57 = v103;
      }

      else
      {
        v73 = [layer valueForKeyPath:@"transform.scale.xy"];
      }

      v74 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
      [v74 setFromValue:v73];
      [v74 setToValue:&unk_28556E018];
      UIAnimationDragCoefficient();
      [v74 setDuration:v75 * 0.36];
      [layer convertTime:0 fromLayer:CACurrentMediaTime()];
      v77 = v76;
      UIAnimationDragCoefficient();
      [v74 setBeginTime:v77 + v78 * 0.085];
      [v74 setFillMode:v59];
      [v74 setTimingFunction:v42];
      [layer addAnimation:v57 forKey:@"sizeAnimation"];
      [layer addAnimation:v63 forKey:@"cornerRadiusAnimation"];
      [layer addAnimation:v74 forKey:@"transformAnimation"];

      v15 = v106;
      v14 = v108;
    }

    else
    {
      [layer removeAllAnimations];
    }

    [layer setValue:v37 forKeyPath:@"bounds.size"];
    [layer setValue:&unk_28556E008 forKeyPath:@"cornerRadius"];
    [layer setValue:&unk_28556E018 forKeyPath:@"transform.scale.xy"];
  }

  else
  {
    if (![(CMKShutterButton *)self _isStopMode:mode])
    {
      goto LABEL_35;
    }

    [(CMKShutterButton *)self _sizeForMode:toMode];
    v47 = v46;
    v37 = [MEMORY[0x277CCAE60] valueWithCGSize:?];
    v48 = [MEMORY[0x277CCABB0] numberWithDouble:ceil(v47 * 0.5)];
    if (animatedCopy)
    {
      v109 = v14;
      LODWORD(v49) = 1041812769;
      LODWORD(v50) = 1043018044;
      LODWORD(v51) = 1044413908;
      LODWORD(v52) = 1.0;
      v53 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v49 :v50 :v51 :v52];
      presentationLayer8 = [layer presentationLayer];
      if (presentationLayer8)
      {
        presentationLayer9 = [layer presentationLayer];
        v56 = [presentationLayer9 valueForKeyPath:@"bounds.size"];
      }

      else
      {
        v56 = [layer valueForKeyPath:@"bounds.size"];
      }

      v104 = cGColor;

      v79 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"bounds.size"];
      v101 = v56;
      [v79 setFromValue:v56];
      [v79 setToValue:v37];
      UIAnimationDragCoefficient();
      [v79 setDuration:v80 * 0.49];
      [v79 setTimingFunction:v53];
      v81 = *MEMORY[0x277CDA230];
      [v79 setFillMode:*MEMORY[0x277CDA230]];
      presentationLayer10 = [layer presentationLayer];
      if (presentationLayer10)
      {
        presentationLayer11 = [layer presentationLayer];
        v84 = [presentationLayer11 valueForKeyPath:@"cornerRadius"];
      }

      else
      {
        v84 = [layer valueForKeyPath:@"cornerRadius"];
      }

      v85 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"cornerRadius"];
      v99 = v84;
      [v85 setFromValue:v84];
      [v85 setToValue:v48];
      UIAnimationDragCoefficient();
      [v85 setDuration:v86 * 0.395];
      [v85 setTimingFunction:v53];
      [v85 setFillMode:v81];
      presentationLayer12 = [layer presentationLayer];
      if (presentationLayer12)
      {
        [layer presentationLayer];
        v89 = v88 = v15;
        v90 = [v89 valueForKeyPath:@"transform.scale.xy"];

        v15 = v88;
      }

      else
      {
        v90 = [layer valueForKeyPath:@"transform.scale.xy"];
      }

      v14 = v109;

      v91 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
      [v91 setFromValue:v90];
      [v91 setToValue:&unk_28556E018];
      UIAnimationDragCoefficient();
      [v91 setDuration:v92 * 0.49];
      [v91 setFillMode:v81];
      [v91 setTimingFunction:v53];
      [layer addAnimation:v79 forKey:@"sizeAnimation"];
      [layer addAnimation:v85 forKey:@"cornerRadiusAnimation"];
      [layer addAnimation:v91 forKey:@"transformAnimation"];

      cGColor = v104;
    }

    else
    {
      [layer removeAllAnimations];
    }

    [layer setValue:v37 forKeyPath:@"bounds.size"];
    [layer setValue:v48 forKeyPath:@"cornerRadius"];
    [layer setValue:&unk_28556E018 forKeyPath:@"transform.scale.xy"];
  }

LABEL_35:
  [layer setValue:cGColor forKeyPath:@"backgroundColor"];
  v94 = 1.0;
  if (v14 || v15)
  {
    *&v93 = 0.0;
  }

  else
  {
    *&v93 = 1.0;
  }

  [layer2 setOpacity:v93];
  if (v15)
  {
    *&v95 = 0.0;
  }

  else
  {
    *&v95 = 1.0;
  }

  if (!v15)
  {
    v94 = 0.0;
  }

  [layer3 setOpacity:v95];
  *&v96 = v94;
  [0 setOpacity:v96];
}

- (void)_performHighlightAnimation
{
  isHighlighted = [(CMKShutterButton *)self isHighlighted];
  _innerView = [(CMKShutterButton *)self _innerView];
  layer = [_innerView layer];

  v5 = [layer valueForKeyPath:@"opacity"];
  if (isHighlighted)
  {
    LODWORD(v6) = 1045220557;
    [layer setOpacity:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v7 setFromValue:v5];
    UIAnimationDragCoefficient();
    [v7 setDuration:v8 * 0.49];
    LODWORD(v9) = 1041812769;
    LODWORD(v10) = 1043018044;
    LODWORD(v11) = 1044413908;
    LODWORD(v12) = 1.0;
    v13 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v9 :v10 :v11 :v12];
    [v7 setTimingFunction:v13];

    [v7 setFillMode:*MEMORY[0x277CDA230]];
    [layer addAnimation:v7 forKey:@"transformAnimation"];
    LODWORD(v14) = 1.0;
    [layer setOpacity:v14];
  }
}

- (void)setShowDisabled:(BOOL)disabled
{
  if (self->_showDisabled != disabled)
  {
    disabledCopy = disabled;
    self->_showDisabled = disabled;
    _innerView = [(CMKShutterButton *)self _innerView];
    layer = [_innerView layer];
    _outerView = [(CMKShutterButton *)self _outerView];
    layer2 = [_outerView layer];
    if (disabledCopy)
    {
      v10 = 0.4;
    }

    else
    {
      v10 = 1.0;
    }

    *&v9 = v10;
    [layer setOpacity:v9];
    *&v11 = v10;
    [layer2 setOpacity:v11];
  }
}

- (void)_updateOuterAndInnerLayers
{
  if ([(CMKShutterButton *)self _shouldUseImageViewForMode:self->_buttonMode])
  {
    outerImageView = self->__outerImageView;
    if (!outerImageView)
    {
      v4 = objc_alloc(MEMORY[0x277D755E8]);
      [(UIView *)self->__outerView frame];
      v5 = [v4 initWithFrame:?];
      v6 = self->__outerImageView;
      self->__outerImageView = v5;

      [(CMKShutterButton *)self insertSubview:self->__outerImageView belowSubview:self->__outerView];
      outerImageView = self->__outerImageView;
    }

    v7 = [(CMKShutterButton *)self _outerImageForMode:self->_buttonMode];
    [(UIImageView *)outerImageView setImage:v7];
  }

  _outerView = [(CMKShutterButton *)self _outerView];
  layer = [_outerView layer];
  [(CMKShutterButton *)self _borderWidthForMode:self->_buttonMode];
  [layer setBorderWidth:?];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [layer setBorderColor:{objc_msgSend(whiteColor, "CGColor")}];

  _innerView = [(CMKShutterButton *)self _innerView];
  layer2 = [_innerView layer];
  v12 = [(CMKShutterButton *)self _colorForMode:self->_buttonMode];
  [layer2 setBackgroundColor:{objc_msgSend(v12, "CGColor")}];
}

- (double)_borderWidthForMode:(int64_t)mode
{
  result = 0.0;
  if (mode <= 7)
  {
    return self->_spec.outerRingStrokeWidth;
  }

  return result;
}

- (double)_cornerRadiusForMode:(int64_t)mode
{
  if ((mode - 4) < 4)
  {
    return self->_spec.stopSquareCornerRadius;
  }

  if (mode > 3)
  {
    return 0.0;
  }

  [(CMKShutterButton *)self _innerCircleDiameter:v3];
  return ceil(v5 * 0.5);
}

- (CGSize)_sizeForMode:(int64_t)mode
{
  if ((mode - 4) < 4)
  {
    stopSquareSideLength = self->_spec.stopSquareSideLength;
    v5 = stopSquareSideLength;
  }

  else if (mode > 3)
  {
    v5 = *MEMORY[0x277CBF3A8];
    stopSquareSideLength = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    [(CMKShutterButton *)self _innerCircleDiameter:v3];
    stopSquareSideLength = v5;
  }

  result.height = stopSquareSideLength;
  result.width = v5;
  return result;
}

- (id)_colorForMode:(int64_t)mode
{
  if (mode > 7)
  {
    v5 = 0;
  }

  else
  {
    if (((1 << mode) & 0xEE) != 0)
    {
      [MEMORY[0x277D75348] colorWithRed:0.961 green:0.2 blue:0.2 alpha:{1.0, v3}];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v5 = ;
  }

  return v5;
}

- (void)setSpinning:(BOOL)spinning
{
  if (self->_spinning != spinning)
  {
    self->_spinning = spinning;
    [(CMKShutterButton *)self _updateSpinningAnimations];
  }
}

- (void)setPulsing:(BOOL)pulsing
{
  if (self->_pulsing != pulsing)
  {
    self->_pulsing = pulsing;
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CMKShutterButton;
  [(CMKShutterButton *)&v13 layoutSubviews];
  [(CMKShutterButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->__outerImageView setFrame:?];
  [(UIView *)self->__outerView setFrame:v4, v6, v8, v10];
  layer = [(UIView *)self->__outerView layer];
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  [layer setCornerRadius:ceil(CGRectGetWidth(v14) * 0.5)];

  [(CMKShutterButton *)self _sizeForMode:self->_buttonMode];
  UIRectCenteredIntegralRectScale();
  [(UIView *)self->__innerView setFrame:0];
  layer2 = [(UIView *)self->__innerView layer];
  [(CMKShutterButton *)self _cornerRadiusForMode:self->_buttonMode];
  [layer2 setCornerRadius:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  outerRingDiameter = self->_spec.outerRingDiameter;
  v4 = outerRingDiameter;
  result.height = v4;
  result.width = outerRingDiameter;
  return result;
}

- (CGSize)intrinsicContentSize
{
  outerRingDiameter = self->_spec.outerRingDiameter;
  v3 = outerRingDiameter;
  result.height = v3;
  result.width = outerRingDiameter;
  return result;
}

- (CMKShutterButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CMKShutterButton;
  v3 = [(CMKShutterButton *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CMKShutterButton *)v3 _commonCMKShutterButtonInitialization];
    v5 = v4;
  }

  return v4;
}

- (CMKShutterButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CMKShutterButton;
  v3 = [(CMKShutterButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CMKShutterButton *)v3 _commonCMKShutterButtonInitialization];
    v5 = v4;
  }

  return v4;
}

- (void)_commonCMKShutterButtonInitialization
{
  self->_buttonMode = 0;
  self->_spec = *ymmword_242BDEC80;
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  outerView = self->__outerView;
  self->__outerView = v8;

  v10 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  innerView = self->__innerView;
  self->__innerView = v10;

  [(UIView *)self->__outerView setUserInteractionEnabled:0];
  [(UIView *)self->__innerView setUserInteractionEnabled:0];
  [(CMKShutterButton *)self addSubview:self->__outerView];
  [(CMKShutterButton *)self addSubview:self->__innerView];
  [(CMKShutterButton *)self setAdjustsImageWhenHighlighted:0];
  [(CMKShutterButton *)self setAdjustsImageWhenDisabled:0];
  [(CMKShutterButton *)self setShowsTouchWhenHighlighted:0];

  [(CMKShutterButton *)self _updateOuterAndInnerLayers];
}

+ (id)shutterButtonWithDesiredSpec:(CMKShutterButtonSpec)spec
{
  stopSquareCornerRadius = spec.stopSquareCornerRadius;
  stopSquareSideLength = spec.stopSquareSideLength;
  outerRingStrokeWidth = spec.outerRingStrokeWidth;
  outerRingDiameter = spec.outerRingDiameter;
  v7 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 _setSpec:{outerRingDiameter, outerRingStrokeWidth, stopSquareSideLength, stopSquareCornerRadius}];

  return v7;
}

+ (id)tinyShutterButton
{
  v2 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v2 _setSpec:{28.0, 5.0, 11.0, 2.0}];

  return v2;
}

+ (id)smallShutterButton
{
  v2 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v2 _setSpec:{47.0, 5.0, 19.0, 4.0}];

  return v2;
}

+ (id)shutterButton
{
  v2 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v2 _setSpec:{66.0, 6.0, 28.0, 4.0}];

  return v2;
}

@end