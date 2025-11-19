@interface SUUIPlayButtonControl
+ ($8452678F12DBC466148836A9D382CAFC)_calculateStatistics:(SEL)a3 withSize:(CGImage *)a4;
+ (id)blurColorForColor:(id)a3;
+ (id)blurColorForImage:(id)a3 forButtonSize:(CGSize)a4 withOffsetRight:(float)a5 withOffsetBottom:(float)a6;
- (BOOL)_renderAsEnabled;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)hitRect;
- (CGSize)buttonSize;
- (SUUIPlayButtonControl)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)bigHitInsets;
- (UIImage)backgroundImageForBlurring;
- (float)playButtonDefaultAlpha;
- (id)_backgroundView;
- (id)_borderLayer;
- (id)_cancelImage;
- (id)_classicBackdropView;
- (id)_defaultBackgroundView;
- (id)_gradientBackgroundView;
- (id)_imageView;
- (id)_innerProgressLayer;
- (id)_newShapeViewWithBounds:(CGRect)a3 lineWidth:(double)a4;
- (id)_outerProgressLayer;
- (id)_playImage;
- (id)_selectedLayer;
- (void)_beginIndeterminateAnimation;
- (void)_createGradient:(id)a3 withGradientType:(int64_t)a4;
- (void)_prepareForReuse;
- (void)_showPlayIndicator:(BOOL)a3;
- (void)_toggleToPlayState;
- (void)_updateBackdropView;
- (void)_updateBackgroundBlur:(id)a3 withOffsetRight:(float)a4 withOffsetBottom:(float)a5;
- (void)_updateEnabledState;
- (void)_updateInnerProgressLayerStroke;
- (void)_useBlurredBackground:(BOOL)a3;
- (void)beginIndeterminateAnimation;
- (void)endIndeterminateAnimation;
- (void)hideProgressAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)setBackdropGroupName:(id)a3;
- (void)setBackgroundGradientColors:(id)a3 withGradientType:(int64_t)a4;
- (void)setBackgroundImageForBlurring:(id)a3 withOffsetRight:(float)a4 withOffsetBottom:(float)a5;
- (void)setBackgroundType:(int64_t)a3;
- (void)setBufferProgressIndicatorColor:(id)a3 withCompositingFilter:(id)a4;
- (void)setControlColor:(id)a3;
- (void)setControlForegroundColor:(id)a3;
- (void)setCustomPlayImage:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setProgress:(float)a3 animated:(BOOL)a4;
- (void)setProgressIndicatorColor:(id)a3 withCompositingFilter:(id)a4;
- (void)setSelected:(BOOL)a3;
- (void)setSelectionColor:(id)a3 withCompositingFilter:(id)a4;
- (void)setShowBorder:(BOOL)a3;
- (void)setShowOuterBorder:(BOOL)a3;
- (void)showPlayIndicator:(BOOL)a3 force:(BOOL)a4;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)updateOuterProgressLayerStroke;
@end

@implementation SUUIPlayButtonControl

- (SUUIPlayButtonControl)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = SUUIPlayButtonControl;
  v3 = [(SUUIPlayButtonControl *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUUIPlayButtonControl *)v3 setBackgroundColor:0];
    [(SUUIPlayButtonControl *)v4 setOpaque:0];
    v5 = [(SUUIPlayButtonControl *)v4 layer];
    [v5 setAllowsGroupBlending:0];

    v6 = [(SUUIPlayButtonControl *)v4 layer];
    [v6 setAllowsGroupOpacity:0];

    v7 = [(SUUIPlayButtonControl *)v4 _imageView];
    [(SUUIPlayButtonControl *)v4 addSubview:v7];

    v4->_showingPlayIndicator = 1;
  }

  return v4;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  self->_didInitialHighlightForTouch = 0;
  v8.receiver = self;
  v8.super_class = SUUIPlayButtonControl;
  [(SUUIPlayButtonControl *)&v8 touchesBegan:a3 withEvent:a4];
  selectedLayer = self->_selectedLayer;
  if (selectedLayer)
  {
    v6 = [(SUUIPlayButtonShapeView *)selectedLayer layer];
    [v6 removeAllAnimations];

    v7 = [(SUUIPlayButtonControl *)self _selectedLayer];
    [v7 setAlpha:1.0];
  }

  else
  {
    v7 = [(SUUIPlayButtonControl *)self _selectedLayer];
    [(SUUIPlayButtonControl *)self addSubview:v7];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SUUIPlayButtonControl *)self isDisabledButSelectable])
  {
    v8 = [(SUUIPlayButtonControl *)self element];

    if (v8)
    {
      v9 = [(SUUIPlayButtonControl *)self element];
      [v9 dispatchEvent:0x286AFEA60 eventAttribute:0x286AFEA80 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
    }

    [(SUUIPlayButtonControl *)self sendActionsForControlEvents:256];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SUUIPlayButtonControl;
    [(SUUIPlayButtonControl *)&v10 touchesEnded:v6 withEvent:v7];
  }
}

- (CGRect)hitRect
{
  v13.receiver = self;
  v13.super_class = SUUIPlayButtonControl;
  [(SUUIPlayButtonControl *)&v13 hitRect];
  top = self->_bigHitInsets.top;
  left = self->_bigHitInsets.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_bigHitInsets.right);
  v12 = v11 - (top + self->_bigHitInsets.bottom);
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = SUUIPlayButtonControl;
  [(SUUIPlayButtonControl *)&v10 layoutSubviews];
  [(SUUIPlayButtonControl *)self buttonSize];
  v4 = v3;
  v6 = v5;
  if (self->_showingPlayIndicator)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(SUUIPlayButtonControl *)self _imageView];
  [v8 setFrame:{v7, 0.0, v4, v6}];

  v9 = [(SUUIPlayButtonControl *)self _backgroundView];
  [v9 setFrame:{0.0, 0.0, v4, v6}];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(SUUIPlayButtonControl *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUIPlayButtonControl;
  [(SUUIPlayButtonControl *)&v4 setEnabled:a3];
  [(SUUIPlayButtonControl *)self _updateEnabledState];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = SUUIPlayButtonControl;
  [(SUUIPlayButtonControl *)&v9 setHighlighted:?];
  if ([(SUUIPlayButtonControl *)self _renderAsEnabled])
  {
    if (self->_backgroundType == 3)
    {
      v5 = [(SUUIPlayButtonControl *)self _classicBackdropView];
      v6 = [v5 inputSettings];

      v7 = 0.7;
      if (v3)
      {
        v7 = 0.35;
      }

      [v6 setColorTintAlpha:v7];
      [(SUUIPlayButtonControl *)self _updateBackdropView];
    }

    else if (!v3)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __40__SUUIPlayButtonControl_setHighlighted___block_invoke;
      v8[3] = &unk_2798F5BE8;
      v8[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:0 delay:v8 options:0 animations:0.47 completion:0.0];
    }
  }
}

void __40__SUUIPlayButtonControl_setHighlighted___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[76])
  {
    v2 = [v1 _selectedLayer];
    [v2 setAlpha:0.0];
  }
}

- (void)setSelected:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SUUIPlayButtonControl;
  [(SUUIPlayButtonControl *)&v6 setSelected:a3];
  if (self->_backgroundType == 3)
  {
    v4 = [(SUUIPlayButtonControl *)self _classicBackdropView];
    v5 = [v4 inputSettings];
    [v5 setSelected:{-[SUUIPlayButtonControl isSelected](self, "isSelected")}];

    [(SUUIPlayButtonControl *)self _updateBackdropView];
  }
}

- (void)setProgressIndicatorColor:(id)a3 withCompositingFilter:(id)a4
{
  v11 = a3;
  v7 = a4;
  progressIndicatorColor = self->_progressIndicatorColor;
  if (progressIndicatorColor == v11 || ([(UIColor *)progressIndicatorColor isEqual:?]& 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    objc_storeStrong(&self->_progressIndicatorColor, a3);
    v9 = 1;
  }

  progressIndicatorCompositingFilter = self->_progressIndicatorCompositingFilter;
  if (progressIndicatorCompositingFilter != v7 && ([progressIndicatorCompositingFilter isEqual:v7] & 1) == 0)
  {
    objc_storeStrong(&self->_progressIndicatorCompositingFilter, a4);
    goto LABEL_10;
  }

  if (v9)
  {
LABEL_10:
    [(SUUIPlayButtonControl *)self _updateInnerProgressLayerStroke];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = SUUIPlayButtonControl;
  [(SUUIPlayButtonControl *)&v3 tintColorDidChange];
  [(SUUIPlayButtonControl *)self _updateInnerProgressLayerStroke];
  [(SUUIPlayButtonControl *)self updateOuterProgressLayerStroke];
}

- (void)beginIndeterminateAnimation
{
  [(SUUIPlayButtonControl *)self setProgress:0 animated:0.0];
  indeterminate = self->_indeterminate;
  v4 = [(SUUIPlayButtonShapeView *)self->_outerProgressLayer layer];
  v5 = v4;
  if (indeterminate)
  {
    v6 = [v4 animationKeys];
    v7 = [v6 count];

    if (v7)
    {
      return;
    }
  }

  else
  {
    [v4 setStrokeStart:0.119999997];
    self->_indeterminate = 1;
  }

  v8 = [(SUUIPlayButtonControl *)self window];

  if (v8)
  {

    [(SUUIPlayButtonControl *)self _beginIndeterminateAnimation];
  }
}

+ (id)blurColorForColor:(id)a3
{
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0;
  v8 = 0;
  v3 = 0;
  if ([a3 getHue:&v10 saturation:&v9 brightness:&v8 alpha:&v7])
  {
    v9 = v9 * 1.8;
    v4 = [MEMORY[0x277D75348] colorWithHue:v10 saturation:? brightness:? alpha:?];
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.980392157 alpha:0.78];
    v3 = [v4 _colorBlendedWithColor:v5 compositingFilter:*MEMORY[0x277CDA620]];
  }

  return v3;
}

+ (id)blurColorForImage:(id)a3 forButtonSize:(CGSize)a4 withOffsetRight:(float)a5 withOffsetBottom:(float)a6
{
  width = a4.width;
  v9 = a3;
  [v9 scale];
  v11 = v10;
  [v9 size];
  v13 = v11 * v12;
  [v9 size];
  v15 = width * v11;
  v16 = v11 * v14 - a6 * v11 - v15;
  v17 = [v9 CGImage];

  v21.origin.x = v13 - a5 * v11 - v15;
  v21.origin.y = v16;
  v21.size.width = v15;
  v21.size.height = v15;
  v22 = CGRectIntegral(v21);
  v18 = CGImageCreateWithImageInRect(v17, v22);
  [SUUIPlayButtonControl _calculateStatistics:v18 withSize:v15, v15];
  CGImageRelease(v18);

  return 0;
}

- (CGSize)buttonSize
{
  v2 = 28.0;
  v3 = 28.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)endIndeterminateAnimation
{
  if (self->_indeterminate)
  {
    v3 = [(SUUIPlayButtonControl *)self _outerProgressLayer];
    v4 = [v3 layer];

    [v4 setStrokeStart:0.0];
    [v4 removeAllAnimations];
    v5 = [(SUUIPlayButtonControl *)self _outerProgressLayer];
    CGAffineTransformMakeRotation(&v6, -1.57079633);
    [v5 setTransform:&v6];

    self->_indeterminate = 0;
    [(SUUIPlayButtonControl *)self updateOuterProgressLayerStroke];
  }
}

- (void)hideProgressAnimated:(BOOL)a3
{
  if (self->_showingProgress || self->_indeterminate)
  {
    [(SUUIPlayButtonControl *)self endIndeterminateAnimation];
    v4 = [(SUUIPlayButtonControl *)self _innerProgressLayer];
    [v4 setHidden:1];

    if (self->_backgroundType == 3)
    {
      [(_UIBackdropView *)self->_backdropView setHidden:0];
    }

    else
    {
      v5 = [(SUUIPlayButtonControl *)self _backgroundView];
      v6 = v5;
      if (v5)
      {
        [v5 setHidden:0];
        [v6 setAlpha:1.0];
        v7 = [(SUUIPlayButtonControl *)self _imageView];
        [(SUUIPlayButtonControl *)self playButtonDefaultAlpha];
        [v7 setAlpha:v8];
      }
    }

    self->_showingProgress = 0;
    self->_showingPlayIndicator = 1;

    [(SUUIPlayButtonControl *)self _showPlayIndicator:1];
  }
}

- (float)playButtonDefaultAlpha
{
  result = 0.48;
  if (!self->_usesBlurredBackground)
  {
    return 1.0;
  }

  return result;
}

- (void)setBackdropGroupName:(id)a3
{
  v5 = a3;
  backdropGroupName = self->_backdropGroupName;
  if (backdropGroupName != v5)
  {
    v7 = v5;
    backdropGroupName = [backdropGroupName isEqualToString:v5];
    v5 = v7;
    if ((backdropGroupName & 1) == 0)
    {
      objc_storeStrong(&self->_backdropGroupName, a3);
      backdropGroupName = [(_UIBackdropView *)self->_backdropView setGroupName:self->_backdropGroupName];
      v5 = v7;
    }
  }

  MEMORY[0x2821F96F8](backdropGroupName, v5);
}

- (void)setBackgroundImageForBlurring:(id)a3 withOffsetRight:(float)a4 withOffsetBottom:(float)a5
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_backgroundImageForBlurring);

  v9 = obj;
  if (WeakRetained != obj)
  {
    v10 = objc_storeWeak(&self->_backgroundImageForBlurring, obj);

    v9 = obj;
    if (obj)
    {
      v11 = objc_loadWeakRetained(&self->_backgroundImageForBlurring);
      *&v12 = a4;
      *&v13 = a5;
      [(SUUIPlayButtonControl *)self _updateBackgroundBlur:v11 withOffsetRight:v12 withOffsetBottom:v13];

      v9 = obj;
    }
  }
}

- (void)setBackgroundType:(int64_t)a3
{
  if (self->_backgroundType == a3)
  {
    return;
  }

  v26 = v6;
  v27 = v5;
  v28 = v4;
  v29 = v3;
  self->_backgroundType = a3;
  if (a3 == 3)
  {
    v11 = 0;
    v10 = 1;
  }

  else
  {
    if (a3 != 4)
    {
      if (!self->_backgroundView)
      {
        v15 = [(SUUIPlayButtonControl *)self _defaultBackgroundView];
        backgroundView = self->_backgroundView;
        self->_backgroundView = v15;

        [(SUUIPlayButtonControl *)self insertSubview:self->_backgroundView atIndex:0];
      }

      v10 = 0;
      goto LABEL_12;
    }

    v10 = 0;
    v11 = 1;
  }

  [(UIView *)self->_backgroundView removeFromSuperview:v6];
  v12 = self->_backgroundView;
  self->_backgroundView = 0;

  if (v11)
  {
    if (!self->_gradientBackgroundView)
    {
      v13 = [(SUUIPlayButtonControl *)self _gradientBackgroundView];
      gradientBackgroundView = self->_gradientBackgroundView;
      self->_gradientBackgroundView = v13;

      [(SUUIPlayButtonControl *)self _createGradient:self->_gradientColors withGradientType:self->_gradientType];
      [(SUUIPlayButtonControl *)self insertSubview:self->_gradientBackgroundView atIndex:0];
    }

    goto LABEL_17;
  }

LABEL_12:
  v17 = self->_gradientBackgroundView;
  if (v17)
  {
    [(SUUIPlayButtonGradientView *)v17 removeFromSuperview];
    v18 = self->_gradientBackgroundView;
    self->_gradientBackgroundView = 0;
  }

  if (!v10)
  {
LABEL_17:
    backdropView = self->_backdropView;
    if (backdropView)
    {
      [(_UIBackdropView *)backdropView removeFromSuperview];
      [(_UIBackdropView *)self->_backdropView removeMaskViews];
      v19 = self->_backdropView;
      self->_backdropView = 0;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (!self->_backdropView)
  {
    v19 = [(SUUIPlayButtonControl *)self _classicBackdropView];
    v20 = [v19 effectView];
    v21 = [v20 layer];
    [(SUUIPlayButtonControl *)self buttonCornerRadius];
    [v21 setCornerRadius:v22];

    v23 = [v19 layer];
    [(SUUIPlayButtonControl *)self buttonCornerRadius];
    [v23 setCornerRadius:v24];

    [(SUUIPlayButtonControl *)self insertSubview:v19 atIndex:0];
LABEL_19:
  }

LABEL_20:
  [(SUUIPlayButtonControl *)self setShowBorder:1, v26, v27, v28, v29];

  [(SUUIPlayButtonControl *)self _prepareForReuse];
}

- (void)setBackgroundGradientColors:(id)a3 withGradientType:(int64_t)a4
{
  v7 = a3;
  if (*&self->_gradientColors != __PAIR128__(a4, v7))
  {
    self->_gradientType = a4;
    v8 = v7;
    objc_storeStrong(&self->_gradientColors, a3);
    v7 = v8;
  }
}

- (void)setBufferProgressIndicatorColor:(id)a3 withCompositingFilter:(id)a4
{
  v11 = a3;
  v7 = a4;
  bufferProgressIndicatorColor = self->_bufferProgressIndicatorColor;
  if (bufferProgressIndicatorColor == v11 || ([(UIColor *)bufferProgressIndicatorColor isEqual:?]& 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    objc_storeStrong(&self->_bufferProgressIndicatorColor, a3);
    v9 = 1;
  }

  bufferProgressIndicatorCompositingFilter = self->_bufferProgressIndicatorCompositingFilter;
  if (bufferProgressIndicatorCompositingFilter != v7 && ([bufferProgressIndicatorCompositingFilter isEqual:v7] & 1) == 0)
  {
    objc_storeStrong(&self->_bufferProgressIndicatorCompositingFilter, a4);
    goto LABEL_10;
  }

  if (v9)
  {
LABEL_10:
    [(SUUIPlayButtonControl *)self updateOuterProgressLayerStroke];
  }
}

- (void)setControlColor:(id)a3
{
  v5 = a3;
  backgroundColor = self->_backgroundColor;
  if (backgroundColor != v5)
  {
    v12 = v5;
    backgroundColor = [(UIColor *)backgroundColor isEqual:v5];
    v5 = v12;
    if ((backgroundColor & 1) == 0)
    {
      objc_storeStrong(&self->_backgroundColor, a3);
      v5 = v12;
      backgroundType = self->_backgroundType;
      v8 = backgroundType > 4;
      v9 = (1 << backgroundType) & 0x16;
      if (!v8 && v9 != 0)
      {
        v11 = [(SUUIPlayButtonControl *)self _backgroundView];
        [v11 setBackgroundColor:self->_backgroundColor];

        v5 = v12;
      }
    }
  }

  MEMORY[0x2821F96F8](backgroundColor, v5);
}

- (void)setSelectionColor:(id)a3 withCompositingFilter:(id)a4
{
  v6 = a3;
  v7 = a4;
  selectionColor = self->_selectionColor;
  self->_selectionColor = v6;
  v9 = v6;

  selectionCompositingFilter = self->_selectionCompositingFilter;
  self->_selectionCompositingFilter = v7;
  v11 = v7;

  v12 = [(SUUIPlayButtonShapeView *)self->_selectedLayer layer];
  [v12 setFillColor:{-[UIColor CGColor](v9, "CGColor")}];

  v13 = [(SUUIPlayButtonShapeView *)self->_selectedLayer layer];

  [v13 setCompositingFilter:v11];
}

- (void)setControlForegroundColor:(id)a3
{
  v5 = a3;
  controlForeGroundColor = self->_controlForeGroundColor;
  if (controlForeGroundColor != v5)
  {
    v8 = v5;
    controlForeGroundColor = [(UIColor *)controlForeGroundColor isEqual:v5];
    v5 = v8;
    if ((controlForeGroundColor & 1) == 0)
    {
      objc_storeStrong(&self->_controlForeGroundColor, a3);
      v7 = [(SUUIPlayButtonControl *)self _imageView];
      [v7 setTintColor:v8];

      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](controlForeGroundColor, v5);
}

- (void)setCustomPlayImage:(id)a3
{
  v5 = a3;
  customPlayImage = self->_customPlayImage;
  if (customPlayImage != v5)
  {
    v7 = v5;
    customPlayImage = [customPlayImage isEqual:v5];
    v5 = v7;
    if ((customPlayImage & 1) == 0)
    {
      objc_storeStrong(&self->_customPlayImage, a3);
      customPlayImage = [(SUUIPlayButtonControl *)self _showPlayIndicator:self->_showingPlayIndicator];
      v5 = v7;
    }
  }

  MEMORY[0x2821F96F8](customPlayImage, v5);
}

- (void)setProgress:(float)a3 animated:(BOOL)a4
{
  if (!self->_showingProgress)
  {
    [(SUUIPlayButtonControl *)self _toggleToPlayState];
  }

  if (self->_progress != a3)
  {
    if (a3 > 0.00000011921 && self->_indeterminate)
    {
      [(SUUIPlayButtonControl *)self endIndeterminateAnimation];
    }

    v7 = fmax(fmin(a3, 1.0), 0.0);
    self->_progress = v7;
    v8 = [(SUUIPlayButtonControl *)self _innerProgressLayer];
    v12 = [v8 layer];

    if (a4)
    {
      v9 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
      [v9 setDuration:0.2];
      [v9 setFillMode:*MEMORY[0x277CDA238]];
      [v9 setRemovedOnCompletion:0];
      *&v10 = self->_progress;
      v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
      [v9 setToValue:v11];

      [v12 addAnimation:v9 forKey:0];
    }

    else
    {
      [v12 removeAllAnimations];
      [v12 setStrokeEnd:self->_progress];
    }
  }
}

- (void)setShowBorder:(BOOL)a3
{
  if (self->_showBorder != a3)
  {
    self->_showBorder = a3;
    if (a3)
    {
      v5 = [(SUUIPlayButtonControl *)self _borderLayer];
      [v5 setHidden:0];
    }

    else
    {
      borderLayer = self->_borderLayer;
      if (borderLayer)
      {

        [(SUUIPlayButtonShapeView *)borderLayer setHidden:1];
      }
    }
  }
}

- (void)setShowOuterBorder:(BOOL)a3
{
  if (self->_showOuterBorder != a3)
  {
    v4 = a3;
    self->_showOuterBorder = a3;
    v6 = [(SUUIPlayButtonControl *)self _outerProgressLayer];
    [v6 setHidden:!v4];

    [(SUUIPlayButtonControl *)self updateOuterProgressLayerStroke];
  }
}

- (void)showPlayIndicator:(BOOL)a3 force:(BOOL)a4
{
  if (self->_showingPlayIndicator != a3 || a4)
  {
    self->_showingPlayIndicator = a3;
    [(SUUIPlayButtonControl *)self _showPlayIndicator:?];
  }
}

- (void)updateOuterProgressLayerStroke
{
  bufferProgressIndicatorColor = self->_bufferProgressIndicatorColor;
  if (bufferProgressIndicatorColor)
  {
    v9 = bufferProgressIndicatorColor;
    v4 = &OBJC_IVAR___SUUIPlayButtonControl__bufferProgressIndicatorCompositingFilter;
LABEL_7:
    v5 = *(&self->super.super.super.super.isa + *v4);
    goto LABEL_8;
  }

  if (!self->_usesBlurredBackground || self->_indeterminate || [(SUUIPlayButtonControl *)self showOuterBorder])
  {
    v9 = [(SUUIPlayButtonControl *)self outerBorderColor];
    v4 = &OBJC_IVAR___SUUIPlayButtonControl__progressIndicatorCompositingFilter;
    goto LABEL_7;
  }

  v9 = 0;
  v5 = 0;
LABEL_8:
  v6 = [(SUUIPlayButtonShapeView *)self->_outerProgressLayer layer];
  v7 = v9;
  [v6 setStrokeColor:{-[UIColor CGColor](v9, "CGColor")}];

  v8 = [(SUUIPlayButtonShapeView *)self->_outerProgressLayer layer];
  [v8 setCompositingFilter:v5];
}

- (id)_backgroundView
{
  gradientBackgroundView = self->_gradientBackgroundView;
  if (gradientBackgroundView)
  {
    goto LABEL_5;
  }

  if (self->_backgroundType == 3)
  {
    gradientBackgroundView = self->_backdropView;
    goto LABEL_5;
  }

  gradientBackgroundView = self->_backgroundView;
  if (gradientBackgroundView)
  {
LABEL_5:
    v4 = gradientBackgroundView;

    return v4;
  }

  v4 = 0;

  return v4;
}

- (void)_beginIndeterminateAnimation
{
  [(SUUIPlayButtonControl *)self updateOuterProgressLayerStroke];
  v3 = [(SUUIPlayButtonControl *)self _outerProgressLayer];
  v4 = [v3 layer];
  [v4 removeAllAnimations];

  v5 = [(SUUIPlayButtonControl *)self _outerProgressLayer];
  CGAffineTransformMakeRotation(&v7, -1.57079633);
  [v5 setTransform:&v7];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SUUIPlayButtonControl__beginIndeterminateAnimation__block_invoke;
  v6[3] = &unk_2798F5BE8;
  v6[4] = self;
  [MEMORY[0x277D75D18] animateKeyframesWithDuration:197228 delay:v6 options:0 animations:1.0 completion:0.0];
}

uint64_t __53__SUUIPlayButtonControl__beginIndeterminateAnimation__block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D85DD0];
  do
  {
    v5[0] = v3;
    v5[1] = 3221225472;
    v5[2] = __53__SUUIPlayButtonControl__beginIndeterminateAnimation__block_invoke_2;
    v5[3] = &unk_2798F6C18;
    v5[4] = *(a1 + 32);
    v5[5] = v2;
    result = [MEMORY[0x277D75D18] addKeyframeWithRelativeStartTime:v5 relativeDuration:vcvtd_n_f64_u64(v2++ animations:{2uLL), 0.25}];
  }

  while (v2 != 4);
  return result;
}

uint64_t __53__SUUIPlayButtonControl__beginIndeterminateAnimation__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 592);
  CGAffineTransformMakeRotation(&v3, *(a1 + 40) * 1.57079633);
  return [v1 setTransform:&v3];
}

- (id)_borderLayer
{
  borderLayer = self->_borderLayer;
  if (!borderLayer)
  {
    [(SUUIPlayButtonControl *)self buttonSize];
    v5 = v4;
    v7 = v6;
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 scale];
    v10 = -1.0 / v9;
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 scale];
    v13 = -1.0 / v12;
    v14 = [MEMORY[0x277D759A0] mainScreen];
    [v14 scale];
    v16 = v5 + 1.0 / v15 * 2.0;
    v17 = [MEMORY[0x277D759A0] mainScreen];
    [v17 scale];
    v19 = v7 + 1.0 / v18 * 2.0;

    v20 = [MEMORY[0x277D759A0] mainScreen];
    [v20 scale];
    v22 = [(SUUIPlayButtonControl *)self _newShapeViewWithBounds:v10 lineWidth:v13, v16, v19, 1.0 / v21];
    v23 = self->_borderLayer;
    self->_borderLayer = v22;

    v24 = self->_borderLayer;
    v25 = [MEMORY[0x277D75348] clearColor];
    [(SUUIPlayButtonShapeView *)v24 setBackgroundColor:v25];

    v26 = [(SUUIPlayButtonShapeView *)self->_borderLayer layer];
    v27 = [MEMORY[0x277D75348] clearColor];
    [v26 setFillColor:{objc_msgSend(v27, "CGColor")}];

    v28 = self->_borderLayer;
    if (self->_innerProgressLayer)
    {
      [(SUUIPlayButtonControl *)self insertSubview:v28 belowSubview:?];
    }

    else
    {
      [(SUUIPlayButtonControl *)self addSubview:v28];
    }

    v29 = [(SUUIPlayButtonShapeView *)self->_borderLayer layer];
    v30 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.1];
    [v29 setStrokeColor:{objc_msgSend(v30, "CGColor")}];

    borderLayer = self->_borderLayer;
  }

  return borderLayer;
}

- (id)_cancelImage
{
  v2 = [(SUUIPlayButtonControl *)self cancelImage];
  v3 = [v2 imageWithRenderingMode:2];

  return v3;
}

- (void)_createGradient:(id)a3 withGradientType:(int64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SUUIPlayButtonControl *)self _gradientBackgroundView];
  v8 = [v7 layer];

  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v9 = 0.5;
    v10 = 1.0;
    v11 = 0.0;
    v12 = 0.5;
  }

  else
  {
    v12 = 1.0;
    v11 = 0.5;
    v9 = 0.0;
    v10 = 0.5;
  }

  [v8 setStartPoint:{v11, v9}];
  [v8 setEndPoint:{v10, v12}];
LABEL_6:
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v20 + 1) + 8 * v18);
        [v13 addObject:{objc_msgSend(v19, "CGColor", v20)}];
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  [v8 setColors:v13];
}

- (id)_classicBackdropView
{
  backdropView = self->_backdropView;
  if (!backdropView)
  {
    v4 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:2010];
    [v4 setColorBurnTintAlpha:0.0];
    [v4 setGrayscaleTintAlpha:0.0];
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.862745098 alpha:1.0];
    [v4 setColorTint:v5];

    v6 = [(SUUIPlayButtonControl *)self isHighlighted];
    v7 = 0.7;
    if (v6)
    {
      v7 = 0.35;
    }

    [v4 setColorTintAlpha:v7];
    [v4 setDarkeningTintAlpha:0.0];
    [v4 setScale:0.5];
    v8 = objc_alloc(MEMORY[0x277D75DE8]);
    [(SUUIPlayButtonControl *)self bounds];
    v9 = [v8 initWithFrame:v4 settings:?];
    v10 = self->_backdropView;
    self->_backdropView = v9;

    [(_UIBackdropView *)self->_backdropView setComputesColorSettings:0];
    [(_UIBackdropView *)self->_backdropView setUserInteractionEnabled:0];
    if (self->_backdropGroupName)
    {
      [(_UIBackdropView *)self->_backdropView setGroupName:?];
    }

    backdropView = self->_backdropView;
  }

  return backdropView;
}

- (id)_defaultBackgroundView
{
  backgroundView = self->_backgroundView;
  if (!backgroundView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_backgroundView;
    self->_backgroundView = v5;

    [(UIView *)self->_backgroundView setUserInteractionEnabled:0];
    v7 = [(UIView *)self->_backgroundView layer];
    [(SUUIPlayButtonControl *)self buttonCornerRadius];
    [v7 setCornerRadius:v8];

    v9 = self->_backgroundView;
    v10 = [(SUUIPlayButtonControl *)self defaultBackgroundColor];
    [(UIView *)v9 setBackgroundColor:v10];

    [(UIView *)self->_backgroundView setClipsToBounds:1];
    backgroundView = self->_backgroundView;
  }

  return backgroundView;
}

- (BOOL)_renderAsEnabled
{
  v3 = [(SUUIPlayButtonControl *)self isEnabled];
  if (v3)
  {
    LOBYTE(v3) = ![(SUUIPlayButtonControl *)self isDisabledButSelectable];
  }

  return v3;
}

- (id)_gradientBackgroundView
{
  gradientBackgroundView = self->_gradientBackgroundView;
  if (!gradientBackgroundView)
  {
    v4 = [SUUIPlayButtonGradientView alloc];
    v5 = [(SUUIPlayButtonGradientView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_gradientBackgroundView;
    self->_gradientBackgroundView = v5;

    [(SUUIPlayButtonGradientView *)self->_gradientBackgroundView setUserInteractionEnabled:0];
    v7 = [(SUUIPlayButtonGradientView *)self->_gradientBackgroundView layer];
    [(SUUIPlayButtonControl *)self buttonCornerRadius];
    [v7 setCornerRadius:v8];

    v9 = self->_gradientBackgroundView;
    v10 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
    [(SUUIPlayButtonGradientView *)v9 setBackgroundColor:v10];

    [(SUUIPlayButtonGradientView *)self->_gradientBackgroundView setClipsToBounds:1];
    gradientBackgroundView = self->_gradientBackgroundView;
  }

  return gradientBackgroundView;
}

- (id)_imageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_imageView;
    self->_imageView = v5;

    [(UIImageView *)self->_imageView setContentMode:4];
    [(UIImageView *)self->_imageView setUserInteractionEnabled:0];
    [(UIImageView *)self->_imageView setOpaque:0];
    [(UIImageView *)self->_imageView setBackgroundColor:0];
    imageView = self->_imageView;
  }

  return imageView;
}

- (id)_newShapeViewWithBounds:(CGRect)a3 lineWidth:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [SUUIPlayButtonShapeView alloc];
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v16 = CGRectInset(v15, a4 * 0.5, a4 * 0.5);
  v10 = [(SUUIPlayButtonShapeView *)v9 initWithFrame:v16.origin.x, v16.origin.y, v16.size.width, v16.size.height];
  CGAffineTransformMakeRotation(&v14, -1.57079633);
  [(SUUIPlayButtonShapeView *)v10 setTransform:&v14];
  v11 = [(SUUIPlayButtonShapeView *)v10 layer];
  [v11 setLineWidth:a4];
  [(SUUIPlayButtonShapeView *)v10 bounds];
  v12 = CGPathCreateWithEllipseInRect(v17, 0);
  [v11 setPath:v12];
  [v11 setLineCap:@"round"];
  CGPathRelease(v12);
  [(SUUIPlayButtonShapeView *)v10 setUserInteractionEnabled:0];

  return v10;
}

- (void)_prepareForReuse
{
  objc_storeWeak(&self->_backgroundImageForBlurring, 0);
  self->_indeterminate = 0;
  self->_progress = 0.0;
  self->_showingProgress = 0;
  self->_showingPlayIndicator = 1;
  self->_showOuterBorder = 0;
  outerProgressLayer = self->_outerProgressLayer;
  if (outerProgressLayer)
  {
    [(SUUIPlayButtonShapeView *)outerProgressLayer removeFromSuperview];
    v4 = self->_outerProgressLayer;
    self->_outerProgressLayer = 0;
  }

  innerProgressLayer = self->_innerProgressLayer;
  if (innerProgressLayer)
  {
    [(SUUIPlayButtonShapeView *)innerProgressLayer removeFromSuperview];
    v6 = self->_innerProgressLayer;
    self->_innerProgressLayer = 0;
  }

  progressIndicatorColor = self->_progressIndicatorColor;
  self->_progressIndicatorColor = 0;

  if ([(SUUIPlayButtonControl *)self _renderAsEnabled])
  {
    [(SUUIPlayButtonControl *)self playButtonDefaultAlpha];
    v9 = v8;
  }

  else
  {
    v9 = 0.4;
  }

  v10 = [(SUUIPlayButtonControl *)self _imageView];
  [v10 setAlpha:v9];

  v11 = [(SUUIPlayButtonControl *)self _imageView];
  [v11 setAlpha:v9];

  if ((self->_backgroundType & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(SUUIPlayButtonControl *)self _useBlurredBackground:1];
    v12 = [MEMORY[0x277D75348] blackColor];
    controlForeGroundColor = self->_controlForeGroundColor;
    self->_controlForeGroundColor = v12;

    v14 = [(SUUIPlayButtonControl *)self _imageView];
    v15 = [v14 layer];
    v16 = v15;
    v17 = *MEMORY[0x277CDA5D8];
  }

  else
  {
    [(SUUIPlayButtonControl *)self _useBlurredBackground:0];
    v18 = self->_controlForeGroundColor;
    self->_controlForeGroundColor = 0;

    v14 = [(SUUIPlayButtonControl *)self _imageView];
    v15 = [v14 layer];
    v16 = v15;
    v17 = 0;
  }

  [v15 setCompositingFilter:v17];

  v19 = [(SUUIPlayButtonControl *)self _imageView];
  [v19 setTintColor:self->_controlForeGroundColor];

  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    v21 = [(UIView *)backgroundView layer];
    [(SUUIPlayButtonControl *)self buttonCornerRadius];
    [v21 setCornerRadius:v22];
  }

  [(SUUIPlayButtonControl *)self setControlForegroundColor:self->_controlForeGroundColor];
  v23 = [(SUUIPlayButtonControl *)self defaultBackgroundColor];
  [(SUUIPlayButtonControl *)self setControlColor:v23];

  [(SUUIPlayButtonControl *)self _showPlayIndicator:1];

  [(SUUIPlayButtonControl *)self setNeedsLayout];
}

- (id)_innerProgressLayer
{
  innerProgressLayer = self->_innerProgressLayer;
  if (!innerProgressLayer)
  {
    [(SUUIPlayButtonControl *)self buttonSize];
    v6 = [(SUUIPlayButtonControl *)self _newShapeViewWithBounds:0.0 lineWidth:0.0, v4, v5, 2.0];
    v7 = self->_innerProgressLayer;
    self->_innerProgressLayer = v6;

    v8 = self->_innerProgressLayer;
    v9 = [MEMORY[0x277D75348] clearColor];
    [(SUUIPlayButtonShapeView *)v8 setBackgroundColor:v9];

    v10 = [(SUUIPlayButtonShapeView *)self->_innerProgressLayer layer];
    v11 = [MEMORY[0x277D75348] clearColor];
    [v10 setFillColor:{objc_msgSend(v11, "CGColor")}];

    [v10 setStrokeEnd:0.0];
    [(SUUIPlayButtonControl *)self addSubview:self->_innerProgressLayer];
    [(SUUIPlayButtonControl *)self _updateInnerProgressLayerStroke];

    innerProgressLayer = self->_innerProgressLayer;
  }

  return innerProgressLayer;
}

- (id)_outerProgressLayer
{
  outerProgressLayer = self->_outerProgressLayer;
  if (!outerProgressLayer)
  {
    [(SUUIPlayButtonControl *)self buttonSize];
    v6 = [(SUUIPlayButtonControl *)self _newShapeViewWithBounds:0.0 lineWidth:0.0, v4, v5, 1.5];
    v7 = self->_outerProgressLayer;
    self->_outerProgressLayer = v6;

    v8 = self->_outerProgressLayer;
    v9 = [MEMORY[0x277D75348] clearColor];
    [(SUUIPlayButtonShapeView *)v8 setBackgroundColor:v9];

    v10 = [(SUUIPlayButtonShapeView *)self->_outerProgressLayer layer];
    v11 = [MEMORY[0x277D75348] clearColor];
    [v10 setFillColor:{objc_msgSend(v11, "CGColor")}];

    v12 = self->_outerProgressLayer;
    if (self->_innerProgressLayer)
    {
      [(SUUIPlayButtonControl *)self insertSubview:v12 belowSubview:?];
    }

    else
    {
      [(SUUIPlayButtonControl *)self addSubview:v12];
    }

    [(SUUIPlayButtonControl *)self updateOuterProgressLayerStroke];

    outerProgressLayer = self->_outerProgressLayer;
  }

  return outerProgressLayer;
}

- (id)_playImage
{
  v2 = [(SUUIPlayButtonControl *)self playImage];
  v3 = [v2 imageWithRenderingMode:2];

  return v3;
}

- (id)_selectedLayer
{
  selectedLayer = self->_selectedLayer;
  if (!selectedLayer)
  {
    [(SUUIPlayButtonControl *)self buttonSize];
    v6 = [[SUUIPlayButtonShapeView alloc] initWithFrame:0.0, 0.0, v4, v5];
    v7 = self->_selectedLayer;
    self->_selectedLayer = v6;

    v8 = [(SUUIPlayButtonShapeView *)self->_selectedLayer layer];
    selectionColor = self->_selectionColor;
    if (selectionColor)
    {
      [(SUUIPlayButtonControl *)self setSelectionColor:selectionColor withCompositingFilter:self->_selectionCompositingFilter];
    }

    else
    {
      v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.16];
      [(SUUIPlayButtonControl *)self setSelectionColor:v10 withCompositingFilter:self->_selectionCompositingFilter];
    }

    [(SUUIPlayButtonShapeView *)self->_selectedLayer bounds];
    v11 = CGPathCreateWithEllipseInRect(v14, 0);
    [v8 setPath:v11];
    CGPathRelease(v11);
    [(SUUIPlayButtonControl *)self addSubview:self->_selectedLayer];
    [(SUUIPlayButtonShapeView *)self->_selectedLayer setUserInteractionEnabled:0];

    selectedLayer = self->_selectedLayer;
  }

  return selectedLayer;
}

- (void)_showPlayIndicator:(BOOL)a3
{
  v3 = a3;
  imageView = self->_imageView;
  if (a3)
  {
    [(SUUIPlayButtonControl *)self _playImage];
  }

  else
  {
    [(SUUIPlayButtonControl *)self _cancelImage];
  }
  v6 = ;
  [(UIImageView *)imageView setImage:v6];

  [(SUUIPlayButtonControl *)self playIndicatorDidChange:v3];

  [(SUUIPlayButtonControl *)self setNeedsLayout];
}

- (void)_toggleToPlayState
{
  self->_showingProgress = 1;
  self->_showingPlayIndicator = 0;
  [(SUUIPlayButtonControl *)self _showPlayIndicator:0];
  v3 = [(SUUIPlayButtonControl *)self _outerProgressLayer];
  [v3 setHidden:0];

  v4 = [(SUUIPlayButtonControl *)self _innerProgressLayer];
  [v4 setHidden:0];
}

- (void)_updateBackdropView
{
  v3 = [(_UIBackdropView *)self->_backdropView outputSettings];
  v4 = [(_UIBackdropView *)self->_backdropView inputSettings];
  [v3 computeOutputSettingsUsingModel:v4];

  backdropView = self->_backdropView;
  v6 = [(_UIBackdropView *)backdropView outputSettings];
  [(_UIBackdropView *)backdropView applySettings:v6];
}

- (void)_updateBackgroundBlur:(id)a3 withOffsetRight:(float)a4 withOffsetBottom:(float)a5
{
  v8 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__9;
  v32 = __Block_byref_object_dispose__9;
  v33 = objc_getAssociatedObject(v8, _SUUIPlayButtonControlBackgroundImageAssociatedObjectKeyColorCache);
  [(SUUIPlayButtonControl *)self buttonSize];
  v11 = [MEMORY[0x277CCAE60] valueWithCGRect:{a4, a5, v9, v10}];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__SUUIPlayButtonControl__updateBackgroundBlur_withOffsetRight_withOffsetBottom___block_invoke;
  aBlock[3] = &unk_2798F6C40;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  v13 = [v29[5] objectForKey:v11];
  if (v13)
  {
    v14 = [MEMORY[0x277CBEB68] null];
    v15 = [v13 isEqual:v14];

    if (v15)
    {

      v13 = 0;
    }

    v12[2](v12, v13);
  }

  else
  {
    objc_initWeak(&location, self);
    v16 = dispatch_get_global_queue(0, 0);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__SUUIPlayButtonControl__updateBackgroundBlur_withOffsetRight_withOffsetBottom___block_invoke_2;
    v18[3] = &unk_2798F6C90;
    objc_copyWeak(&v23, &location);
    v17 = v8;
    v24 = a4;
    v25 = a5;
    v19 = v17;
    v22 = &v28;
    v20 = v11;
    v21 = v12;
    dispatch_async(v16, v18);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
    v13 = 0;
  }

  _Block_object_dispose(&v28, 8);
}

void __80__SUUIPlayButtonControl__updateBackgroundBlur_withOffsetRight_withOffsetBottom___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (!v3)
  {
    v3 = [*(a1 + 32) defaultBackgroundColor];
  }

  v4 = [*(a1 + 32) _backgroundView];
  [v4 setBackgroundColor:v3];
}

void __80__SUUIPlayButtonControl__updateBackgroundBlur_withOffsetRight_withOffsetBottom___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    [WeakRetained buttonSize];
    v5 = [SUUIPlayButtonControl blurColorForImage:"blurColorForImage:forButtonSize:withOffsetRight:withOffsetBottom:" forButtonSize:v4 withOffsetRight:? withOffsetBottom:?];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__SUUIPlayButtonControl__updateBackgroundBlur_withOffsetRight_withOffsetBottom___block_invoke_3;
    block[3] = &unk_2798F6C68;
    v12 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = v5;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v6 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __80__SUUIPlayButtonControl__updateBackgroundBlur_withOffsetRight_withOffsetBottom___block_invoke_3(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), _SUUIPlayButtonControlBackgroundImageAssociatedObjectKeyColorCache);
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 64) + 8) + 40);
  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    objc_setAssociatedObject(*(a1 + 32), _SUUIPlayButtonControlBackgroundImageAssociatedObjectKeyColorCache, *(*(*(a1 + 64) + 8) + 40), 1);
    v5 = *(*(*(a1 + 64) + 8) + 40);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    [v5 setObject:v9 forKey:*(a1 + 48)];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB68] null];
    [v5 setObject:v10 forKey:*(a1 + 48)];
  }

  v11 = *(*(a1 + 56) + 16);

  return v11();
}

- (void)_useBlurredBackground:(BOOL)a3
{
  if (self->_usesBlurredBackground != a3)
  {
    self->_usesBlurredBackground = a3;
  }
}

- (void)_updateInnerProgressLayerStroke
{
  progressIndicatorColor = self->_progressIndicatorColor;
  if (progressIndicatorColor)
  {
    v8 = progressIndicatorColor;
    v4 = self->_progressIndicatorCompositingFilter;
  }

  else
  {
    v8 = [(SUUIPlayButtonControl *)self tintColor];
    v4 = 0;
  }

  v5 = [(SUUIPlayButtonShapeView *)self->_innerProgressLayer layer];
  v6 = v8;
  [v5 setStrokeColor:{-[UIColor CGColor](v8, "CGColor")}];

  v7 = [(SUUIPlayButtonShapeView *)self->_innerProgressLayer layer];
  [v7 setCompositingFilter:v4];
}

- (void)_updateEnabledState
{
  if (self->_backgroundType == 3)
  {
    v3 = [(SUUIPlayButtonControl *)self _classicBackdropView];
    v4 = [v3 inputSettings];
    [v4 setEnabled:{-[SUUIPlayButtonControl _renderAsEnabled](self, "_renderAsEnabled")}];

    v5 = [v3 inputSettings];
    [v5 setHighlighted:0];
  }

  else
  {
    if ([(SUUIPlayButtonControl *)self _renderAsEnabled])
    {
      [(SUUIPlayButtonControl *)self playButtonDefaultAlpha];
      v7 = v6;
    }

    else
    {
      v7 = 0.4;
    }

    [(UIImageView *)self->_imageView setAlpha:v7];
  }

  [(SUUIPlayButtonControl *)self setNeedsLayout];
}

+ ($8452678F12DBC466148836A9D382CAFC)_calculateStatistics:(SEL)a3 withSize:(CGImage *)a4
{
  height = a5.height;
  width = a5.width;
  v9 = a5.width;
  v10 = a5.height;
  v11 = 4 * a5.width;
  retstr->var8 = 0.0;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  v12 = malloc_type_malloc(v11 * a5.height, 0x53E025C6uLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v14 = CGBitmapContextCreate(v12, v9, v10, 8uLL, v11, DeviceRGB, 0x4001u);
  v56.size.width = width;
  v56.size.height = height;
  v56.origin.x = 0.0;
  v56.origin.y = 0.0;
  CGContextDrawImage(v14, v56, a4);
  CGContextRelease(v14);
  CGColorSpaceRelease(DeviceRGB);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 1;
  do
  {
    v25 = v24;
    v26 = qword_259FCAD90[v23];
    if (v26 < v10)
    {
      v27 = v12 + (v11 + 4) * v26 + 1;
      v28 = v26;
      do
      {
        v29 = v27;
        for (i = v26; i < v9; v29 += 4 * v26)
        {
          v31 = *(v29 - 1);
          v15 += v31;
          v32 = *v29;
          v16 += v32;
          v33 = v29[1];
          v17 += v33;
          v18 += v29[2];
          v19 += (v31 * v31);
          v20 += (v32 * v32);
          v21 += (v33 * v33);
          ++v22;
          i += v26;
        }

        v28 += v26;
        v27 += v11 * v26;
      }

      while (v28 < v10);
    }

    v24 = 0;
    v23 = 1;
  }

  while ((v25 & 1) != 0);
  v34 = 1.0 / v22;
  v35 = (v34 * v15);
  v36 = (v34 * v16);
  v37 = (v34 * v17);
  v38 = fmax(-((v35 * v35) - v19 * v34), 0.0);
  v39 = sqrtf(v38);
  v40 = fmax(-((v36 * v36) - v20 * v34), 0.0);
  v41 = sqrtf(v40);
  v42 = fmax(-((v37 * v37) - v21 * v34), 0.0);
  v43 = sqrtf(v42);
  v54 = 0.0;
  v55 = 0.0;
  v53 = 0.0;
  v50 = 0.0;
  v51 = 0.0;
  v44 = v35 * 0.00392156863;
  v45 = v36 * 0.00392156863;
  v46 = v37 * 0.00392156863;
  __SK_RGBtoHSV(&v55, &v54, &v53, v44, v45, v46);
  result = __SK_RGBtoHSV(&v52, &v51, &v50, v39 * 0.00392156863, v41 * 0.00392156863, v43 * 0.00392156863);
  if (a4)
  {
    free(v12);
  }

  retstr->var0 = v44;
  retstr->var1 = v45;
  retstr->var2 = v46;
  retstr->var3 = v55;
  v48 = v53;
  retstr->var4 = v54;
  retstr->var5 = v48;
  v49 = v51;
  retstr->var7 = v50;
  retstr->var8 = v49;
  retstr->var6 = (v34 * v18) * 0.00392156863;
  return result;
}

- (UIEdgeInsets)bigHitInsets
{
  top = self->_bigHitInsets.top;
  left = self->_bigHitInsets.left;
  bottom = self->_bigHitInsets.bottom;
  right = self->_bigHitInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIImage)backgroundImageForBlurring
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundImageForBlurring);

  return WeakRetained;
}

@end