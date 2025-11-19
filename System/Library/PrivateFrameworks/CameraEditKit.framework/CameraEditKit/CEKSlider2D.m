@interface CEKSlider2D
+ (id)backgroundImageWithImage:(id)a3;
- (CEKSlider2D)initWithFrame:(CGRect)a3;
- (CGPoint)_normalizedViewValueForValue:(CGPoint)a3;
- (CGPoint)_valueForNormalizedViewValue:(CGPoint)a3;
- (CGPoint)defaultValue;
- (CGPoint)value;
- (id)_blurFilter;
- (id)_createGridImageWithSize:(CGSize)a3;
- (void)_createGradientsViewIfNecessary;
- (void)_destroyGradientsViewIfNecessary;
- (void)_handlePressGesture:(id)a3;
- (void)_performFeedback;
- (void)_prepareFeedback;
- (void)_setActive:(BOOL)a3 animated:(BOOL)a4;
- (void)_setValue:(CGPoint)a3 shouldNotify:(BOOL)a4 animated:(BOOL)a5;
- (void)_startScalingWithScale:(double)a3 duration:(double)a4 repeatCount:(float)a5 timingFunction:(id)a6;
- (void)_stopScalingWithDuration:(double)a3;
- (void)_updateGradientViews;
- (void)layoutSubviews;
- (void)setBackgroundAsSnapshotOfView:(id)a3;
- (void)setBackgroundFromExistingSlider2D:(id)a3;
- (void)setBackgroundImage:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setDefaultValue:(CGPoint)a3;
- (void)setPulsingValueIndicator:(BOOL)a3;
@end

@implementation CEKSlider2D

- (CEKSlider2D)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = CEKSlider2D;
  v3 = [(CEKSlider2D *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
    gridView = v3->__gridView;
    v3->__gridView = v4;

    [(CEKSlider2D *)v3 addSubview:v3->__gridView];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    defaultValueIndicator = v3->__defaultValueIndicator;
    v3->__defaultValueIndicator = v6;

    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.8 alpha:1.0];
    [(UIView *)v3->__defaultValueIndicator setBackgroundColor:v8];

    [(CEKSlider2D *)v3 addSubview:v3->__defaultValueIndicator];
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    valueIndicator = v3->__valueIndicator;
    v3->__valueIndicator = v9;

    v11 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v3->__valueIndicator setBackgroundColor:v11];

    [(CEKSlider2D *)v3 addSubview:v3->__valueIndicator];
    v12 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v3 action:sel__handlePressGesture_];
    pressGestureRecognizer = v3->__pressGestureRecognizer;
    v3->__pressGestureRecognizer = v12;

    [(UILongPressGestureRecognizer *)v3->__pressGestureRecognizer setMinimumPressDuration:0.0];
    [(CEKSlider2D *)v3 addGestureRecognizer:v3->__pressGestureRecognizer];
    v3->_cornerRadius = 22.0;
    v14 = [(CEKSlider2D *)v3 layer];
    [v14 setCornerRadius:22.0];

    v15 = [(CEKSlider2D *)v3 layer];
    [v15 setMasksToBounds:1];

    v3->_snapTouchesToDefaultValue = 1;
    if (CEKHapticsAllowed())
    {
      v16 = objc_alloc_init(CEKSelectionFeedbackGenerator);
      selectionFeedbackGenerator = v3->__selectionFeedbackGenerator;
      v3->__selectionFeedbackGenerator = v16;
    }

    v18 = v3;
  }

  return v3;
}

- (void)setBackgroundImage:(id)a3
{
  v5 = a3;
  if (self->_backgroundImage != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_backgroundImage, a3);
    if (!self->__backgroundImageView)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
      backgroundImageView = self->__backgroundImageView;
      self->__backgroundImageView = v6;

      [(CEKSlider2D *)self insertSubview:self->__backgroundImageView atIndex:0];
    }

    v8 = [(CEKSlider2D *)self _backgroundImageView];
    [v8 setImage:v9];

    v5 = v9;
  }
}

- (void)setBackgroundAsSnapshotOfView:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UIView *)self->__backgroundSnapshotView1 removeFromSuperview];
  [(UIView *)self->__backgroundSnapshotView2 removeFromSuperview];
  backgroundSnapshotView1 = self->__backgroundSnapshotView1;
  self->__backgroundSnapshotView1 = 0;

  backgroundSnapshotView2 = self->__backgroundSnapshotView2;
  self->__backgroundSnapshotView2 = 0;

  if (v4)
  {
    if (!self->__backgroundSnapshotContainerView)
    {
      v7 = objc_alloc(MEMORY[0x1E69DD250]);
      v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      backgroundSnapshotContainerView = self->__backgroundSnapshotContainerView;
      self->__backgroundSnapshotContainerView = v8;

      v10 = [(CEKSlider2D *)self _blurFilter];
      v19[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      v12 = [(UIView *)self->__backgroundSnapshotContainerView layer];
      [v12 setFilters:v11];

      [(CEKSlider2D *)self insertSubview:self->__backgroundSnapshotContainerView atIndex:0];
    }

    v13 = [v4 snapshotViewAfterScreenUpdates:0];
    v14 = self->__backgroundSnapshotView1;
    self->__backgroundSnapshotView1 = v13;

    v15 = [v4 snapshotViewAfterScreenUpdates:0];
    v16 = self->__backgroundSnapshotView2;
    self->__backgroundSnapshotView2 = v15;

    v17 = *MEMORY[0x1E6979D18];
    v18 = [(UIView *)self->__backgroundSnapshotView2 layer];
    [v18 setCompositingFilter:v17];

    [(UIView *)self->__backgroundSnapshotContainerView addSubview:self->__backgroundSnapshotView1];
    [(UIView *)self->__backgroundSnapshotContainerView addSubview:self->__backgroundSnapshotView2];
    [(CEKSlider2D *)self setNeedsLayout];
  }

  [(CEKSlider2D *)self _updateGradientViews];
}

- (void)setBackgroundFromExistingSlider2D:(id)a3
{
  backgroundSnapshotContainerView = self->__backgroundSnapshotContainerView;
  v5 = a3;
  [(UIView *)backgroundSnapshotContainerView removeFromSuperview];
  v6 = [v5 _backgroundSnapshotContainerView];

  v7 = [v6 snapshotViewAfterScreenUpdates:0];
  v8 = self->__backgroundSnapshotContainerView;
  self->__backgroundSnapshotContainerView = v7;

  [(CEKSlider2D *)self insertSubview:self->__backgroundSnapshotContainerView atIndex:0];
  [(CEKSlider2D *)self _updateGradientViews];

  [(CEKSlider2D *)self setNeedsLayout];
}

- (id)_blurFilter
{
  v2 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  [v2 setValue:&unk_1F2FDFA98 forKey:@"inputRadius"];
  [v2 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
  [v2 setValue:@"low" forKey:@"inputQuality"];
  [v2 setValue:@"low" forKey:@"inputIntermediateBitDepth"];

  return v2;
}

- (void)_updateGradientViews
{
  if ([(CEKSlider2D *)self _wantsGradientLayers])
  {

    [(CEKSlider2D *)self _createGradientsViewIfNecessary];
  }

  else
  {

    [(CEKSlider2D *)self _destroyGradientsViewIfNecessary];
  }
}

- (void)_createGradientsViewIfNecessary
{
  v30[2] = *MEMORY[0x1E69E9840];
  if (!self->__gradientsView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD250]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v5 = objc_alloc_init(MEMORY[0x1E6979380]);
    v6 = [MEMORY[0x1E69DC888] colorWithRed:0.87 green:0.87 blue:0.87 alpha:1.0];
    v30[0] = [v6 CGColor];
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    v8 = [v7 colorWithAlphaComponent:0.05];
    v30[1] = [v8 CGColor];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    [v5 setColors:v9];

    [v5 setStartPoint:{0.13, 0.76}];
    [v5 setEndPoint:{0.88, 0.11}];
    v10 = [(UIView *)v4 layer];
    [v10 insertSublayer:v5 atIndex:0];

    v11 = objc_alloc_init(MEMORY[0x1E6979380]);
    v12 = [MEMORY[0x1E69DC888] colorWithRed:0.87 green:0.87 blue:0.87 alpha:1.0];
    v29[0] = [v12 CGColor];
    v13 = [MEMORY[0x1E69DC888] whiteColor];
    v14 = [v13 colorWithAlphaComponent:0.0];
    v29[1] = [v14 CGColor];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    [v11 setColors:v15];

    LODWORD(v16) = 1058642330;
    [v11 setOpacity:v16];
    [v11 setStartPoint:{0.0, 0.0}];
    [v11 setEndPoint:{0.45, 0.33}];
    v17 = [(UIView *)v4 layer];
    [v17 insertSublayer:v11 atIndex:1];

    v18 = objc_alloc_init(MEMORY[0x1E6979380]);
    v19 = [MEMORY[0x1E69DC888] colorWithRed:0.07 green:0.07 blue:0.11 alpha:1.0];
    v28[0] = [v19 CGColor];
    v20 = [MEMORY[0x1E69DC888] colorWithRed:0.35 green:0.35 blue:0.35 alpha:0.01];
    v28[1] = [v20 CGColor];
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    [v18 setColors:v21];

    LODWORD(v22) = *"333?";
    [v18 setOpacity:v22];
    [v18 setStartPoint:{0.5, 1.0}];
    [v18 setEndPoint:{0.5, -0.1}];
    [v18 setCompositingFilter:*MEMORY[0x1E6979C78]];
    v23 = [(UIView *)v4 layer];
    [v23 insertSublayer:v18 atIndex:2];

    gradientsView = self->__gradientsView;
    self->__gradientsView = v4;
    v25 = v4;

    v26 = self->__gradientsView;
    v27 = [(CEKSlider2D *)self _gridView];
    [(CEKSlider2D *)self insertSubview:v26 belowSubview:v27];
  }
}

- (void)_destroyGradientsViewIfNecessary
{
  [(UIView *)self->__gradientsView removeFromSuperview];
  gradientsView = self->__gradientsView;
  self->__gradientsView = 0;
}

- (void)_setValue:(CGPoint)a3 shouldNotify:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  y = a3.y;
  v9 = CEKClamp(a3.x, -1.0, 1.0);
  v10 = CEKClamp(y, -1.0, 1.0);
  if (self->_value.x != v9 || self->_value.y != v10)
  {
    self->_value.x = v9;
    self->_value.y = v10;
    [(CEKSlider2D *)self setNeedsLayout];
    if (v5)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __47__CEKSlider2D__setValue_shouldNotify_animated___block_invoke;
      v12[3] = &unk_1E7CC6358;
      v12[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:131074 delay:v12 options:0 animations:0.25 completion:0.0];
    }

    if (v6)
    {
      [(CEKSlider2D *)self sendActionsForControlEvents:4096];
    }
  }
}

- (void)setDefaultValue:(CGPoint)a3
{
  y = a3.y;
  v5 = CEKClamp(a3.x, -1.0, 1.0);
  v6 = CEKClamp(y, -1.0, 1.0);
  if (self->_defaultValue.x != v5 || self->_defaultValue.y != v6)
  {
    self->_defaultValue.x = v5;
    self->_defaultValue.y = v6;

    [(CEKSlider2D *)self setNeedsLayout];
  }
}

- (void)_setActive:(BOOL)a3 animated:(BOOL)a4
{
  if (self->__active != a3)
  {
    v4 = a4;
    self->__active = a3;
    v6 = [(CEKSlider2D *)self _valueIndicator];
    if (self->__active)
    {
      v7 = [MEMORY[0x1E69DC888] whiteColor];
      v8 = [v7 CGColor];
      v9 = [v6 layer];
      [v9 setShadowColor:v8];

      v10 = [v6 layer];
      [v10 setShadowRadius:6.0];
    }

    v11 = [v6 layer];
    [v11 setShadowOffset:{0.0, 0.0}];

    if (v4)
    {
      v12 = [MEMORY[0x1E6979318] animationWithKeyPath:@"shadowOpacity"];
      [v12 setDuration:0.2];
      if (self->__active)
      {
        v13 = &unk_1F2FDFAA8;
      }

      else
      {
        v13 = &unk_1F2FDFAB8;
      }

      [v12 setFromValue:v13];
      if (self->__active)
      {
        v14 = &unk_1F2FDFAB8;
      }

      else
      {
        v14 = &unk_1F2FDFAA8;
      }

      [v12 setToValue:v14];
      [v12 setRemovedOnCompletion:1];
      v15 = [v6 layer];
      [v15 addAnimation:v12 forKey:@"shadowOpacity"];

      if (self->__active)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      v17 = [v6 layer];
      *&v18 = v16;
      [v17 setShadowOpacity:v18];

      [(CEKSlider2D *)self setNeedsLayout];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __35__CEKSlider2D__setActive_animated___block_invoke;
      v22[3] = &unk_1E7CC6358;
      v22[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v22 options:0 animations:0.2 completion:0.0];
    }

    else
    {
      if (self->__active)
      {
        v19 = 1.0;
      }

      else
      {
        v19 = 0.0;
      }

      v20 = [v6 layer];
      *&v21 = v19;
      [v20 setShadowOpacity:v21];

      [(CEKSlider2D *)self setNeedsLayout];
    }
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    v4 = [(CEKSlider2D *)self layer];
    [v4 setCornerRadius:a3];
  }
}

- (void)layoutSubviews
{
  v53 = *MEMORY[0x1E69E9840];
  v51.receiver = self;
  v51.super_class = CEKSlider2D;
  [(CEKSlider2D *)&v51 layoutSubviews];
  [(CEKSlider2D *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CEKSlider2D *)self _backgroundImageView];

  if (v11)
  {
    v12 = [(CEKSlider2D *)self _backgroundImageView];
    [v12 setFrame:{v4, v6, v8, v10}];
  }

  v13 = [(CEKSlider2D *)self _backgroundSnapshotContainerView];
  [v13 setFrame:{v4, v6, v8, v10}];

  v14 = [(CEKSlider2D *)self _backgroundSnapshotView1];
  [v14 setFrame:{v4, v6, v8, v10}];

  v15 = [(CEKSlider2D *)self _backgroundSnapshotView2];
  [v15 setFrame:{v4, v6, v8, v10}];

  v16 = [(CEKSlider2D *)self _gradientsView];
  [v16 setFrame:{v4, v6, v8, v10}];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v17 = [(CEKSlider2D *)self _gradientsView];
  v18 = [v17 layer];
  v19 = [v18 sublayers];

  v20 = [v19 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v48;
    do
    {
      v23 = 0;
      do
      {
        if (*v48 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v47 + 1) + 8 * v23++) setFrame:{v4, v6, v8, v10}];
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v21);
  }

  v24 = [(CEKSlider2D *)self _gridView];
  [v24 setFrame:{v4, v6, v8, v10}];

  v25 = [(CEKSlider2D *)self _gridView];
  v26 = [v25 image];

  [v26 size];
  if (v28 != v8 || v27 != v10)
  {
    v29 = [(CEKSlider2D *)self _createGridImageWithSize:v8, v10];
    v30 = [(CEKSlider2D *)self _gridView];
    [v30 setImage:v29];
  }

  v31 = [(CEKSlider2D *)self _valueIndicator];
  v32 = [(CEKSlider2D *)self _defaultValueIndicator];
  [(CEKSlider2D *)self value];
  [(CEKSlider2D *)self _normalizedViewValueForValue:?];
  v34 = v33;
  v36 = v35;
  [(CEKSlider2D *)self defaultValue];
  [(CEKSlider2D *)self _normalizedViewValueForValue:?];
  v38 = v37;
  v40 = v39;
  CEKExpandNormalizedPoint(v34, v36, v4, v6, v8, v10);
  CEKExpandNormalizedPoint(v38, v40, v4, v6, v8, v10);
  v41 = v8 * 0.085;
  if (self->__active)
  {
    v42 = 30.0;
  }

  else
  {
    v42 = v8 * 0.085;
  }

  [v31 setBounds:CEKRectWithSize()];
  v43 = [v31 layer];
  [v43 setCornerRadius:v42 * 0.5];

  v44 = [v32 layer];
  [v44 setCornerRadius:v41 * 0.5 * 0.5];

  [v32 setBounds:CEKRectWithSize()];
  [v31 bounds];
  v45 = [(CEKSlider2D *)self traitCollection];
  [v45 displayScale];
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [v31 setCenter:?];

  [v32 bounds];
  v46 = [(CEKSlider2D *)self traitCollection];
  [v46 displayScale];
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [v32 setCenter:?];
}

- (CGPoint)_normalizedViewValueForValue:(CGPoint)a3
{
  y = a3.y;
  v4 = CEKProgress(a3.x, -1.0, 1.0);
  v5 = 1.0 - CEKProgress(y, -1.0, 1.0);
  v6 = v4 * 0.833333333 + 0.0833333333;
  v7 = v5 * 0.833333333 + 0.0833333333;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)_valueForNormalizedViewValue:(CGPoint)a3
{
  v3 = 1.0 - (a3.y + -0.0833333333) / 0.833333333;
  v4 = CEKInterpolate(-1.0, 1.0, (a3.x + -0.0833333333) / 0.833333333);
  v5 = CEKInterpolate(-1.0, 1.0, v3);
  v6 = v4;
  result.y = v5;
  result.x = v6;
  return result;
}

- (void)_handlePressGesture:(id)a3
{
  v30 = a3;
  v4 = [v30 state];
  if ((v4 - 3) < 3)
  {
    [(CEKSlider2D *)self _setActive:0 animated:1];
    goto LABEL_13;
  }

  if (v4 != 2)
  {
    if (v4 != 1)
    {
      goto LABEL_13;
    }

    [(CEKSlider2D *)self _setActive:1 animated:1];
    [(CEKSlider2D *)self _prepareFeedback];
  }

  [v30 locationInView:self];
  v6 = v5;
  v8 = v7;
  [(CEKSlider2D *)self bounds];
  [(CEKSlider2D *)self _valueForNormalizedViewValue:CEKNormalizePoint(v6, v8, v9, v10, v11, v12)];
  v14 = v13;
  v16 = v15;
  if ([(CEKSlider2D *)self snapTouchesToDefaultValue])
  {
    [(CEKSlider2D *)self defaultValue];
    [(CEKSlider2D *)self _normalizedViewValueForValue:?];
    v18 = v17;
    v20 = v19;
    [(CEKSlider2D *)self bounds];
    CEKExpandNormalizedPoint(v18, v20, v21, v22, v23, v24);
    UIDistanceBetweenPoints();
    if (v25 < 10.0)
    {
      [(CEKSlider2D *)self defaultValue];
      v14 = v26;
      v16 = v27;
    }
  }

  [(CEKSlider2D *)self value];
  if (v14 * v28 < 0.0 || ([(CEKSlider2D *)self value], v16 * v29 < 0.0))
  {
    [(CEKSlider2D *)self _performFeedback];
    [(CEKSlider2D *)self _prepareFeedback];
  }

  [(CEKSlider2D *)self _setValue:1 shouldNotify:0 animated:v14, v16];
LABEL_13:
}

- (id)_createGridImageWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (a3.width == *MEMORY[0x1E695F060] && a3.height == *(MEMORY[0x1E695F060] + 8))
  {
    v12 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E69DCA80] preferredFormat];
    v7 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v6 format:{width, height}];
    v8 = CEKRectWithSize();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __40__CEKSlider2D__createGridImageWithSize___block_invoke;
    v14[3] = &__block_descriptor_80_e40_v16__0__UIGraphicsImageRendererContext_8l;
    *&v14[4] = v8;
    v14[5] = v9;
    v14[6] = v10;
    v14[7] = v11;
    *&v14[8] = width;
    *&v14[9] = height;
    v12 = [v7 imageWithActions:v14];
  }

  return v12;
}

void __40__CEKSlider2D__createGridImageWithSize___block_invoke(double *a1, void *a2)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[6] / 12.0;
  if (a1[8] >= 100.0)
  {
    v5 = 4.0;
  }

  else
  {
    v5 = 2.0;
  }

  v6 = v5 * -0.5;
  v7 = 1;
  v8 = a1[7] / 12.0;
  do
  {
    for (i = 1; i != 12; ++i)
    {
      if (i == 6 || v7 == 6)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.3;
      }

      v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:v11];
      [v12 setFill];

      v13 = [v3 CGContext];
      v35.origin.x = v6 + v7 * v4;
      v35.origin.y = v6 + i * v8;
      v35.size.width = v5;
      v35.size.height = v5;
      CGContextFillEllipseInRect(v13, v35);
    }

    ++v7;
  }

  while (v7 != 12);
  v14 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F120]);
  v15 = [MEMORY[0x1E69DC888] grayColor];
  v16 = [v15 colorWithAlphaComponent:0.4];

  v17 = [MEMORY[0x1E69DC888] clearColor];
  v30[0] = [v16 CGColor];
  v30[1] = [v17 CGColor];
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  *locations = xmmword_1B7EDA320;
  v19 = CGGradientCreateWithColors(v14, v18, locations);
  v20 = [v3 CGContext];
  v33.x = a1[8];
  v31.x = 0.0;
  v31.y = 0.0;
  v33.y = 0.0;
  CGContextDrawLinearGradient(v20, v19, v31, v33, 0);
  CGGradientRelease(v19);
  v21 = [MEMORY[0x1E69DC888] blackColor];
  v22 = [v21 colorWithAlphaComponent:0.6];

  v23 = [MEMORY[0x1E69DC888] clearColor];
  v28[0] = [v22 CGColor];
  v28[1] = [v23 CGColor];
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v27 = xmmword_1B7EDA330;
  v25 = CGGradientCreateWithColors(v14, v24, &v27);
  v26 = [v3 CGContext];
  v34.y = a1[9];
  v32.x = 0.0;
  v32.y = 0.0;
  v34.x = 0.0;
  CGContextDrawLinearGradient(v26, v25, v32, v34, 0);
  CGGradientRelease(v25);
  CGColorSpaceRelease(v14);
}

+ (id)backgroundImageWithImage:(id)a3
{
  v3 = MEMORY[0x1E695F620];
  v4 = a3;
  v5 = [v3 contextWithOptions:0];
  v6 = [objc_alloc(MEMORY[0x1E695F658]) initWithImage:v4];

  v7 = [MEMORY[0x1E695F648] filterWithName:@"CIColorControls"];
  [v7 setValue:v6 forKey:@"inputImage"];
  [v7 setValue:&unk_1F2FDFAC8 forKey:@"inputSaturation"];
  v8 = [v7 valueForKey:@"outputImage"];
  v9 = [MEMORY[0x1E695F648] filterWithName:@"CIGaussianBlur"];
  [v9 setValue:v8 forKey:@"inputImage"];
  [v9 setValue:&unk_1F2FDFC88 forKey:@"inputRadius"];
  v10 = [v9 valueForKey:@"outputImage"];

  [v6 extent];
  v11 = [v5 createCGImage:v10 fromRect:?];
  v12 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v11];
  CGImageRelease(v11);

  return v12;
}

- (void)setPulsingValueIndicator:(BOOL)a3
{
  if (self->_pulsingValueIndicator != a3)
  {
    self->_pulsingValueIndicator = a3;
    if (a3)
    {
      LODWORD(v3) = 2139095040;
      [(CEKSlider2D *)self _startScalingWithScale:0 duration:2.0 repeatCount:0.75 timingFunction:v3];
    }

    else
    {
      [(CEKSlider2D *)self _stopScalingWithDuration:0.25];
    }
  }
}

- (void)_startScalingWithScale:(double)a3 duration:(double)a4 repeatCount:(float)a5 timingFunction:(id)a6
{
  v22[2] = *MEMORY[0x1E69E9840];
  v10 = a6;
  if (!v10)
  {
    v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
  }

  v11 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale"];
  [v11 setTimingFunction:v10];
  [v11 setDuration:a4];
  v22[0] = &unk_1F2FDFCA0;
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v22[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  [v11 setValues:v13];

  *&v14 = a5;
  [v11 setRepeatCount:v14];
  [v11 setAutoreverses:1];
  v15 = [(CEKSlider2D *)self _valueIndicator];
  v16 = [v15 layer];

  [v16 addAnimation:v11 forKey:@"pulsingTransform"];
  v17 = *(MEMORY[0x1E69792E8] + 80);
  v21[4] = *(MEMORY[0x1E69792E8] + 64);
  v21[5] = v17;
  v18 = *(MEMORY[0x1E69792E8] + 112);
  v21[6] = *(MEMORY[0x1E69792E8] + 96);
  v21[7] = v18;
  v19 = *(MEMORY[0x1E69792E8] + 16);
  v21[0] = *MEMORY[0x1E69792E8];
  v21[1] = v19;
  v20 = *(MEMORY[0x1E69792E8] + 48);
  v21[2] = *(MEMORY[0x1E69792E8] + 32);
  v21[3] = v20;
  [v16 setTransform:v21];
}

- (void)_stopScalingWithDuration:(double)a3
{
  v4 = [(CEKSlider2D *)self _valueIndicator];
  v5 = [v4 layer];

  v6 = MEMORY[0x1E69792E8];
  if (a3 > 0.0)
  {
    v7 = [v5 presentationLayer];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    v10 = v9;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    if (v10)
    {
      [v10 transform];
    }

    v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
    [v11 setDuration:a3];
    v12 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
    [v11 setTimingFunction:v12];

    v27 = v35;
    v28 = v36;
    v29 = v37;
    v30 = v38;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v13 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v23];
    [v11 setFromValue:v13];

    v14 = v6[5];
    v27 = v6[4];
    v28 = v14;
    v15 = v6[7];
    v29 = v6[6];
    v30 = v15;
    v16 = v6[1];
    v23 = *v6;
    v24 = v16;
    v17 = v6[3];
    v25 = v6[2];
    v26 = v17;
    v18 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v23];
    [v11 setToValue:v18];

    [v5 addAnimation:v11 forKey:@"stopScalingAnimation"];
  }

  [v5 removeAnimationForKey:@"pulsingTransform"];
  v19 = v6[5];
  v35 = v6[4];
  v36 = v19;
  v20 = v6[7];
  v37 = v6[6];
  v38 = v20;
  v21 = v6[1];
  v31 = *v6;
  v32 = v21;
  v22 = v6[3];
  v33 = v6[2];
  v34 = v22;
  [v5 setTransform:&v31];
}

- (void)_prepareFeedback
{
  if ([(CEKSlider2D *)self _shouldPerformFeedback])
  {
    selectionFeedbackGenerator = self->__selectionFeedbackGenerator;

    [(CEKSelectionFeedbackGenerator *)selectionFeedbackGenerator prepareFeedback];
  }
}

- (void)_performFeedback
{
  if ([(CEKSlider2D *)self _shouldPerformFeedback])
  {
    selectionFeedbackGenerator = self->__selectionFeedbackGenerator;

    [(CEKSelectionFeedbackGenerator *)selectionFeedbackGenerator performFeedback];
  }
}

- (CGPoint)value
{
  x = self->_value.x;
  y = self->_value.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)defaultValue
{
  x = self->_defaultValue.x;
  y = self->_defaultValue.y;
  result.y = y;
  result.x = x;
  return result;
}

@end