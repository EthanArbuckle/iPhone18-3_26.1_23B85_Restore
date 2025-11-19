@interface CAMDrawerSmartStyleButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CAMDrawerSmartStyleButton)initWithLayoutStyle:(int64_t)a3;
- (CGPoint)_normalizedStyleValue;
- (id)imageForAXHUD;
- (id)imageForCurrentState;
- (id)imageNameForCurrentState;
- (void)_setNormalizedStyleValue:(CGPoint)a3;
- (void)_updateResetButtonVisibilityAnimated:(BOOL)a3;
- (void)_updateShutterButtonVisibilityAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)setOn:(BOOL)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setResetButtonVisibleWhenExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowDisabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setSmartStyle:(id)a3 animated:(BOOL)a4;
@end

@implementation CAMDrawerSmartStyleButton

- (CAMDrawerSmartStyleButton)initWithLayoutStyle:(int64_t)a3
{
  v20.receiver = self;
  v20.super_class = CAMDrawerSmartStyleButton;
  v4 = [(CAMControlDrawerButton *)&v20 initWithLayoutStyle:?];
  if (v4)
  {
    v5 = [(CAMControlDrawerButton *)[CAMDrawerSmartStyleResetButton alloc] initWithLayoutStyle:a3];
    resetButton = v4->_resetButton;
    v4->_resetButton = v5;

    [(CAMControlDrawerButton *)v4->_resetButton setOrientation:[(CAMControlDrawerButton *)v4 orientation]];
    v7 = [(CAMControlDrawerButton *)v4->_resetButton _backgroundView];
    [v7 setAlpha:0.85];

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
  v7 = [(CAMDrawerSmartStyleButton *)self shutterButton];
  [v7 intrinsicContentSize];
  CEKRectWithSize();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(CAMDrawerSmartStyleButton *)self resetButton];
  [v16 intrinsicContentSize];
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

  v24 = [(CAMDrawerSmartStyleButton *)self shutterButton];
  [v24 setCenter:{v22, v6}];

  v25 = [(CAMDrawerSmartStyleButton *)self shutterButton];
  [v25 setBounds:{v9, v11, v13, v15}];

  v26 = [(CAMDrawerSmartStyleButton *)self resetButton];
  [v26 setCenter:{v4, v6}];

  v27 = [(CAMDrawerSmartStyleButton *)self resetButton];
  [v27 setBounds:{v30, v29, v20, v28}];

  [(CAMDrawerSmartStyleButton *)self _updateResetButtonVisibilityAnimated:0];
  [(CAMDrawerSmartStyleButton *)self _updateShutterButtonVisibilityAnimated:0];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v12.receiver = self;
  v12.super_class = CAMDrawerSmartStyleButton;
  if ([(CAMControlDrawerCustomButton *)&v12 pointInside:a4 withEvent:?])
  {
    return 1;
  }

  if ([(CAMControlDrawerCustomButton *)self isExpanded])
  {
    if ([(CAMDrawerSmartStyleButton *)self isResetButtonVisibleWhenExpanded])
    {
      v8 = [(CAMDrawerSmartStyleButton *)self resetButton];
      [v8 frame];
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

  v10 = [(CAMDrawerSmartStyleButton *)self shutterButton];
  [v10 frame];
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
    v3 = [(CAMControlDrawerButton *)&v10 imageForCurrentState];
  }

  else
  {
    [(CAMDrawerSmartStyleButton *)self _normalizedStyleValue];
    v5 = v4;
    v7 = v6;
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    v3 = [CAMSmartStyleStatusIndicator gridImageWithSize:v8 cornerRadius:24.0 strokeWidth:24.0 strokeToDotSpacing:5.0 gridDotWidth:1.0 valueDotWidth:3.0 value:1.33333333 color:4.33333333, v5, v7];
  }

  return v3;
}

- (id)imageForAXHUD
{
  v2 = [MEMORY[0x1E69DC888] whiteColor];
  v3 = [CAMSmartStyleStatusIndicator gridImageWithSize:v2 cornerRadius:48.0 strokeWidth:48.0 strokeToDotSpacing:10.0 gridDotWidth:2.0 valueDotWidth:6.0 value:2.66666667 color:8.66666667, 0x3FE0000000000000, 0x3FE0000000000000];

  return v3;
}

- (void)setOn:(BOOL)a3
{
  if (self->_on != a3)
  {
    self->_on = a3;
    [(CAMControlDrawerButton *)self updateImage];
  }
}

- (void)setSmartStyle:(id)a3 animated:(BOOL)a4
{
  v9 = a3;
  if (([(CEKSmartStyle *)self->_smartStyle isEqualToSmartStyle:?]& 1) == 0)
  {
    objc_storeStrong(&self->_smartStyle, a3);
    [v9 colorBias];
    v7 = v6;
    [v9 toneBias];
    [(CAMDrawerSmartStyleButton *)self _setNormalizedStyleValue:v7, v8];
  }
}

- (void)setShowDisabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showDisabled != a3)
  {
    self->_showDisabled = a3;
    [(CAMControlDrawerButton *)self updateImageAnimated:a4];
  }
}

- (void)_setNormalizedStyleValue:(CGPoint)a3
{
  if (self->__normalizedStyleValue.x != a3.x || self->__normalizedStyleValue.y != a3.y)
  {
    self->__normalizedStyleValue = a3;
    [(CAMControlDrawerButton *)self updateImage];
  }
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = CAMDrawerSmartStyleButton;
  [CAMControlDrawerButton setOrientation:sel_setOrientation_animated_ animated:?];
  v7 = [(CAMDrawerSmartStyleButton *)self resetButton];
  [v7 setOrientation:a3 animated:v4];
}

- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(CAMControlDrawerCustomButton *)self isExpanded]!= a3)
  {
    v7.receiver = self;
    v7.super_class = CAMDrawerSmartStyleButton;
    [(CAMControlDrawerCustomButton *)&v7 setExpanded:v5 animated:v4];
    [(CAMDrawerSmartStyleButton *)self _updateResetButtonVisibilityAnimated:v4];
    [(CAMDrawerSmartStyleButton *)self _updateShutterButtonVisibilityAnimated:v4];
    [(CAMControlDrawerButton *)self updateImageAnimated:v4];
  }
}

- (void)setResetButtonVisibleWhenExpanded:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_resetButtonVisibleWhenExpanded != a3)
  {
    self->_resetButtonVisibleWhenExpanded = a3;
    [(CAMDrawerSmartStyleButton *)self _updateResetButtonVisibilityAnimated:a4];
  }
}

- (void)_updateResetButtonVisibilityAnimated:(BOOL)a3
{
  v3 = 0.0;
  if (a3)
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

- (void)_updateShutterButtonVisibilityAnimated:(BOOL)a3
{
  v3 = 0.0;
  if (a3)
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