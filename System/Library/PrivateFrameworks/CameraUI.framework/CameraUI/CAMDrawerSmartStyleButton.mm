@interface CAMDrawerSmartStyleButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CAMDrawerSmartStyleButton)initWithLayoutStyle:(int64_t)style;
- (CGPoint)_normalizedStyleValue;
- (id)imageForAXHUD;
- (id)imageForCurrentState;
- (id)imageNameForCurrentState;
- (void)_setNormalizedStyleValue:(CGPoint)value;
- (void)_updateResetButtonVisibilityAnimated:(BOOL)animated;
- (void)_updateShutterButtonVisibilityAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)setOn:(BOOL)on;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setResetButtonVisibleWhenExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)setShowDisabled:(BOOL)disabled animated:(BOOL)animated;
- (void)setSmartStyle:(id)style animated:(BOOL)animated;
@end

@implementation CAMDrawerSmartStyleButton

- (CAMDrawerSmartStyleButton)initWithLayoutStyle:(int64_t)style
{
  v20.receiver = self;
  v20.super_class = CAMDrawerSmartStyleButton;
  v4 = [(CAMControlDrawerButton *)&v20 initWithLayoutStyle:?];
  if (v4)
  {
    v5 = [(CAMControlDrawerButton *)[CAMDrawerSmartStyleResetButton alloc] initWithLayoutStyle:style];
    resetButton = v4->_resetButton;
    v4->_resetButton = v5;

    [(CAMControlDrawerButton *)v4->_resetButton setOrientation:[(CAMControlDrawerButton *)v4 orientation]];
    _backgroundView = [(CAMControlDrawerButton *)v4->_resetButton _backgroundView];
    [_backgroundView setAlpha:0.85];

    [(CAMDrawerSmartStyleButton *)v4 _updateResetButtonVisibilityAnimated:0];
    +[CAMControlDrawerButton buttonSize];
    v9 = v8;
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v10 = CAMPixelWidthForView(v4);
    CAMShutterButtonSpecMake(&v17, v9, 3.0 - v10, 0.0, 0.0, 2.0);
    v15[0] = v17;
    v15[1] = v18;
    v16 = v19;
    v11 = [CUShutterButton shutterButtonWithSpec:v15];
    shutterButton = v4->_shutterButton;
    v4->_shutterButton = v11;

    [(CAMDrawerSmartStyleButton *)v4 _updateShutterButtonVisibilityAnimated:0];
    [(CAMDrawerSmartStyleButton *)v4 insertSubview:v4->_shutterButton atIndex:0];
    [(CAMDrawerSmartStyleButton *)v4 insertSubview:v4->_resetButton atIndex:0];
    v13 = v4;
  }

  return v4;
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = CAMDrawerSmartStyleButton;
  [(CAMControlDrawerCustomButton *)&v31 layoutSubviews];
  [(CAMDrawerSmartStyleButton *)self bounds];
  UIRectGetCenter();
  v4 = v3;
  v6 = v5;
  shutterButton = [(CAMDrawerSmartStyleButton *)self shutterButton];
  [shutterButton intrinsicContentSize];
  CEKRectWithSize();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  resetButton = [(CAMDrawerSmartStyleButton *)self resetButton];
  [resetButton intrinsicContentSize];
  CEKRectWithSize();
  v29 = v18;
  v30 = v17;
  v20 = v19;
  v28 = v21;

  v22 = v4;
  if ([(CAMControlDrawerCustomButton *)self isExpanded])
  {
    [(CAMControlDrawerCustomButton *)self expansionInsets];
    v22 = v4 + v23;
    v4 = v4 + v20 + 18.0;
  }

  shutterButton2 = [(CAMDrawerSmartStyleButton *)self shutterButton];
  [shutterButton2 setCenter:{v22, v6}];

  shutterButton3 = [(CAMDrawerSmartStyleButton *)self shutterButton];
  [shutterButton3 setBounds:{v9, v11, v13, v15}];

  resetButton2 = [(CAMDrawerSmartStyleButton *)self resetButton];
  [resetButton2 setCenter:{v4, v6}];

  resetButton3 = [(CAMDrawerSmartStyleButton *)self resetButton];
  [resetButton3 setBounds:{v30, v29, v20, v28}];

  [(CAMDrawerSmartStyleButton *)self _updateResetButtonVisibilityAnimated:0];
  [(CAMDrawerSmartStyleButton *)self _updateShutterButtonVisibilityAnimated:0];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v12.receiver = self;
  v12.super_class = CAMDrawerSmartStyleButton;
  if ([(CAMControlDrawerCustomButton *)&v12 pointInside:event withEvent:?])
  {
    return 1;
  }

  if ([(CAMControlDrawerCustomButton *)self isExpanded])
  {
    if ([(CAMDrawerSmartStyleButton *)self isResetButtonVisibleWhenExpanded])
    {
      resetButton = [(CAMDrawerSmartStyleButton *)self resetButton];
      [resetButton frame];
      v13.x = x;
      v13.y = y;
      v9 = CGRectContainsPoint(v15, v13);

      if (v9)
      {
        return 1;
      }
    }
  }

  if (![(CAMControlDrawerCustomButton *)self isExpanded])
  {
    return 0;
  }

  shutterButton = [(CAMDrawerSmartStyleButton *)self shutterButton];
  [shutterButton frame];
  v14.x = x;
  v14.y = y;
  v7 = CGRectContainsPoint(v16, v14);

  return v7;
}

- (id)imageNameForCurrentState
{
  if ([(CAMControlDrawerCustomButton *)self isExpanded])
  {
    v2 = @"chevron.left";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)imageForCurrentState
{
  if ([(CAMControlDrawerCustomButton *)self isExpanded])
  {
    v10.receiver = self;
    v10.super_class = CAMDrawerSmartStyleButton;
    imageForCurrentState = [(CAMControlDrawerButton *)&v10 imageForCurrentState];
  }

  else
  {
    [(CAMDrawerSmartStyleButton *)self _normalizedStyleValue];
    v5 = v4;
    v7 = v6;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    imageForCurrentState = [CAMSmartStyleStatusIndicator gridImageWithSize:whiteColor cornerRadius:24.0 strokeWidth:24.0 strokeToDotSpacing:5.0 gridDotWidth:1.0 valueDotWidth:3.0 value:1.33333333 color:4.33333333, v5, v7];
  }

  return imageForCurrentState;
}

- (id)imageForAXHUD
{
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  0x3FE0000000000000 = [CAMSmartStyleStatusIndicator gridImageWithSize:whiteColor cornerRadius:48.0 strokeWidth:48.0 strokeToDotSpacing:10.0 gridDotWidth:2.0 valueDotWidth:6.0 value:2.66666667 color:8.66666667, 0x3FE0000000000000, 0x3FE0000000000000];

  return 0x3FE0000000000000;
}

- (void)setOn:(BOOL)on
{
  if (self->_on != on)
  {
    self->_on = on;
    [(CAMControlDrawerButton *)self updateImage];
  }
}

- (void)setSmartStyle:(id)style animated:(BOOL)animated
{
  styleCopy = style;
  if (([(CEKSmartStyle *)self->_smartStyle isEqualToSmartStyle:?]& 1) == 0)
  {
    objc_storeStrong(&self->_smartStyle, style);
    [styleCopy colorBias];
    v7 = v6;
    [styleCopy toneBias];
    [(CAMDrawerSmartStyleButton *)self _setNormalizedStyleValue:v7, v8];
  }
}

- (void)setShowDisabled:(BOOL)disabled animated:(BOOL)animated
{
  if (self->_showDisabled != disabled)
  {
    self->_showDisabled = disabled;
    [(CAMControlDrawerButton *)self updateImageAnimated:animated];
  }
}

- (void)_setNormalizedStyleValue:(CGPoint)value
{
  if (self->__normalizedStyleValue.x != value.x || self->__normalizedStyleValue.y != value.y)
  {
    self->__normalizedStyleValue = value;
    [(CAMControlDrawerButton *)self updateImage];
  }
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  animatedCopy = animated;
  v8.receiver = self;
  v8.super_class = CAMDrawerSmartStyleButton;
  [CAMControlDrawerButton setOrientation:sel_setOrientation_animated_ animated:?];
  resetButton = [(CAMDrawerSmartStyleButton *)self resetButton];
  [resetButton setOrientation:orientation animated:animatedCopy];
}

- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated
{
  animatedCopy = animated;
  expandedCopy = expanded;
  if ([(CAMControlDrawerCustomButton *)self isExpanded]!= expanded)
  {
    v7.receiver = self;
    v7.super_class = CAMDrawerSmartStyleButton;
    [(CAMControlDrawerCustomButton *)&v7 setExpanded:expandedCopy animated:animatedCopy];
    [(CAMDrawerSmartStyleButton *)self _updateResetButtonVisibilityAnimated:animatedCopy];
    [(CAMDrawerSmartStyleButton *)self _updateShutterButtonVisibilityAnimated:animatedCopy];
    [(CAMControlDrawerButton *)self updateImageAnimated:animatedCopy];
  }
}

- (void)setResetButtonVisibleWhenExpanded:(BOOL)expanded animated:(BOOL)animated
{
  if (self->_resetButtonVisibleWhenExpanded != expanded)
  {
    self->_resetButtonVisibleWhenExpanded = expanded;
    [(CAMDrawerSmartStyleButton *)self _updateResetButtonVisibilityAnimated:animated];
  }
}

- (void)_updateResetButtonVisibilityAnimated:(BOOL)animated
{
  v3 = 0.0;
  if (animated)
  {
    v3 = 0.25;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__CAMDrawerSmartStyleButton__updateResetButtonVisibilityAnimated___block_invoke;
  v4[3] = &unk_1E76F77B0;
  v4[4] = self;
  [CAMView animateIfNeededWithDuration:v4 animations:v3];
}

void __66__CAMDrawerSmartStyleButton__updateResetButtonVisibilityAnimated___block_invoke(uint64_t a1)
{
  v2 = 0.0;
  if ([*(a1 + 32) isExpanded])
  {
    if ([*(a1 + 32) isResetButtonVisibleWhenExpanded])
    {
      v2 = 1.0;
    }

    else
    {
      v2 = 0.0;
    }
  }

  v3 = [*(a1 + 32) resetButton];
  [v3 setAlpha:v2];
}

- (void)_updateShutterButtonVisibilityAnimated:(BOOL)animated
{
  v3 = 0.0;
  if (animated)
  {
    v3 = 0.25;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__CAMDrawerSmartStyleButton__updateShutterButtonVisibilityAnimated___block_invoke;
  v4[3] = &unk_1E76F77B0;
  v4[4] = self;
  [CAMView animateIfNeededWithDuration:v4 animations:v3];
}

void __68__CAMDrawerSmartStyleButton__updateShutterButtonVisibilityAnimated___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExpanded])
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) shutterButton];
  [v3 setAlpha:v2];
}

- (CGPoint)_normalizedStyleValue
{
  x = self->__normalizedStyleValue.x;
  y = self->__normalizedStyleValue.y;
  result.y = y;
  result.x = x;
  return result;
}

@end