@interface CEKCinematicSubjectIndicatorView
+ (CGRect)minimumSuggestedBounds;
+ (id)_cornerImageWithResizableCapInsetsNamed:(id)a3;
- (CEKCinematicSubjectIndicatorView)initWithFrame:(CGRect)a3;
- (void)_performAnimationToActiveCorners;
- (void)_performAnimationToActiveRoundedRect;
- (void)_updateCornerImageViewsForThickness:(int64_t)a3 duration:(double)a4 delay:(double)a5;
- (void)_updateCornerViews;
- (void)_updateCrossHairViewsWithHeight:(double)a3;
- (void)_updateVisibility;
- (void)layoutSubviews;
- (void)setShape:(int64_t)a3 shouldUseCrosshairForAnimation:(BOOL)a4 animated:(BOOL)a5;
@end

@implementation CEKCinematicSubjectIndicatorView

- (CEKCinematicSubjectIndicatorView)initWithFrame:(CGRect)a3
{
  v29.receiver = self;
  v29.super_class = CEKCinematicSubjectIndicatorView;
  v3 = [(CEKCinematicSubjectIndicatorView *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    containerView = v3->__containerView;
    v3->__containerView = v4;

    [(CEKCinematicSubjectIndicatorView *)v3 addSubview:v3->__containerView];
    v6 = MEMORY[0x1E69DCAB8];
    v7 = CEKFrameworkBundle();
    v8 = [v6 imageNamed:@"CEKSubjectIndicatorCrossHair" inBundle:v7];

    v9 = [v8 resizableImageWithCapInsets:1 resizingMode:{0.0, 0.0, 4.0, 0.0}];

    v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
    topCrosshairView = v3->__topCrosshairView;
    v3->__topCrosshairView = v10;

    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
    leftCrosshairView = v3->__leftCrosshairView;
    v3->__leftCrosshairView = v12;

    v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
    bottomCrosshairView = v3->__bottomCrosshairView;
    v3->__bottomCrosshairView = v14;

    v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
    rightCrosshairView = v3->__rightCrosshairView;
    v3->__rightCrosshairView = v16;

    [(UIView *)v3->__containerView addSubview:v3->__topCrosshairView];
    [(UIView *)v3->__containerView addSubview:v3->__leftCrosshairView];
    [(UIView *)v3->__containerView addSubview:v3->__bottomCrosshairView];
    [(UIView *)v3->__containerView addSubview:v3->__rightCrosshairView];
    v18 = [objc_opt_class() _cornerImageWithResizableCapInsetsNamed:@"CEKCinematicSubjectIndicatorCornerInactiveThin"];
    v19 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v18];
    topLeftCornerView = v3->__topLeftCornerView;
    v3->__topLeftCornerView = v19;

    v21 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v18];
    topRightCornerView = v3->__topRightCornerView;
    v3->__topRightCornerView = v21;

    v23 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v18];
    bottomLeftCornerView = v3->__bottomLeftCornerView;
    v3->__bottomLeftCornerView = v23;

    v25 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v18];
    bottomRightCornerView = v3->__bottomRightCornerView;
    v3->__bottomRightCornerView = v25;

    [(UIView *)v3->__containerView addSubview:v3->__topLeftCornerView];
    [(UIView *)v3->__containerView addSubview:v3->__topRightCornerView];
    [(UIView *)v3->__containerView addSubview:v3->__bottomLeftCornerView];
    [(UIView *)v3->__containerView addSubview:v3->__bottomRightCornerView];
    v3->_shape = 0;
    v3->__crosshairsVisible = 0;
    v3->__activeAnimationToActiveRoundedRectCount = 0;
    v27 = v3;
  }

  return v3;
}

+ (id)_cornerImageWithResizableCapInsetsNamed:(id)a3
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = a3;
  v5 = CEKFrameworkBundle();
  v6 = [v3 imageNamed:v4 inBundle:v5];

  [v6 size];
  v8 = [v6 resizableImageWithCapInsets:1 resizingMode:{v7 + -1.0, v7 + -1.0, 0.0, 0.0}];

  return v8;
}

- (void)setShape:(int64_t)a3 shouldUseCrosshairForAnimation:(BOOL)a4 animated:(BOOL)a5
{
  if (self->_shape == a3)
  {
    return;
  }

  v5 = a5;
  v6 = a4;
  v9 = [(CEKCinematicSubjectIndicatorView *)self _topCrosshairView];
  v10 = [v9 layer];
  [v10 removeAllAnimations];

  v11 = [(CEKCinematicSubjectIndicatorView *)self _leftCrosshairView];
  v12 = [v11 layer];
  [v12 removeAllAnimations];

  v13 = [(CEKCinematicSubjectIndicatorView *)self _bottomCrosshairView];
  v14 = [v13 layer];
  [v14 removeAllAnimations];

  v15 = [(CEKCinematicSubjectIndicatorView *)self _rightCrosshairView];
  v16 = [v15 layer];
  [v16 removeAllAnimations];

  v17 = [(CEKCinematicSubjectIndicatorView *)self _topLeftCornerView];
  v18 = [v17 layer];
  [v18 removeAllAnimations];

  v19 = [(CEKCinematicSubjectIndicatorView *)self _topRightCornerView];
  v20 = [v19 layer];
  [v20 removeAllAnimations];

  v21 = [(CEKCinematicSubjectIndicatorView *)self _bottomRightCornerView];
  v22 = [v21 layer];
  [v22 removeAllAnimations];

  v23 = [(CEKCinematicSubjectIndicatorView *)self _bottomLeftCornerView];
  v24 = [v23 layer];
  [v24 removeAllAnimations];

  if (v5)
  {
    [(CEKCinematicSubjectIndicatorView *)self layoutIfNeeded];
  }

  self->_shape = a3;
  if (a3 == 2)
  {
    [(CEKCinematicSubjectIndicatorView *)self set_crosshairsVisible:0];
    if (v5)
    {

      [(CEKCinematicSubjectIndicatorView *)self _performAnimationToActiveCorners];
      return;
    }

    v27 = self;
    v28 = 0;
LABEL_21:
    [(CEKCinematicSubjectIndicatorView *)v27 _updateCornerImageViewsForThickness:v28 duration:0.0 delay:0.0];

    [(CEKCinematicSubjectIndicatorView *)self setNeedsLayout];
    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    [(CEKCinematicSubjectIndicatorView *)self set_crosshairsVisible:0];
    [(CEKCinematicSubjectIndicatorView *)self _updateCornerImageViewsForThickness:1 duration:0.0 delay:0.0];
    [(CEKCinematicSubjectIndicatorView *)self setNeedsLayout];
    if (!v5)
    {
      return;
    }

    v25 = MEMORY[0x1E69DD250];
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __85__CEKCinematicSubjectIndicatorView_setShape_shouldUseCrosshairForAnimation_animated___block_invoke;
    v37 = &unk_1E7CC6358;
    v38 = self;
    v26 = &v34;
LABEL_25:
    [v25 animateWithDuration:2 delay:v26 options:0 animations:0.2 completion:{0.0, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38}];
    return;
  }

  if (!v5)
  {
    v27 = self;
    v28 = 1;
    goto LABEL_21;
  }

  if (!v6)
  {
    [(CEKCinematicSubjectIndicatorView *)self _updateCornerImageViewsForThickness:1 duration:0.0 delay:0.0];
    [(CEKCinematicSubjectIndicatorView *)self setNeedsLayout];
    v25 = MEMORY[0x1E69DD250];
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __85__CEKCinematicSubjectIndicatorView_setShape_shouldUseCrosshairForAnimation_animated___block_invoke_2;
    v32 = &unk_1E7CC6358;
    v33 = self;
    v26 = &v29;
    goto LABEL_25;
  }

  [(CEKCinematicSubjectIndicatorView *)self _performAnimationToActiveRoundedRect];
}

- (void)_updateCornerImageViewsForThickness:(int64_t)a3 duration:(double)a4 delay:(double)a5
{
  v9 = [(CEKCinematicSubjectIndicatorView *)self shape];
  if (a3 == 2)
  {
    v10 = @"CEKSubjectIndicatorCornerActiveThick";
    v11 = @"CEKCinematicSubjectIndicatorCornerInactiveThick";
  }

  else if (a3 == 1)
  {
    v10 = @"CEKSubjectIndicatorCornerActiveThin";
    v11 = @"CEKCinematicSubjectIndicatorCornerInactiveThin";
  }

  else
  {
    if (a3)
    {
      v12 = &stru_1F2FD5B58;
      goto LABEL_11;
    }

    v10 = @"CEKSubjectIndicatorCornerActive";
    v11 = @"CEKCinematicSubjectIndicatorCornerInactive";
  }

  if (!v9)
  {
    v10 = v11;
  }

  v12 = v10;
LABEL_11:
  v30 = v12;
  v13 = [objc_opt_class() _cornerImageWithResizableCapInsetsNamed:v12];
  v14 = [(CEKCinematicSubjectIndicatorView *)self _topLeftCornerView];
  v15 = [v14 image];

  if (a4 != 0.0)
  {
    v16 = [MEMORY[0x1E6979318] animationWithKeyPath:@"contents"];
    v17 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v16 setTimingFunction:v17];

    [v16 setDuration:a4];
    [v16 setBeginTime:CACurrentMediaTime() + a5];
    [v16 setFromValue:{objc_msgSend(v15, "CGImage")}];
    [v16 setToValue:{objc_msgSend(v13, "CGImage")}];
    [v16 setDelegate:self];
    [v16 setFillMode:*MEMORY[0x1E69797D8]];
    v18 = [(CEKCinematicSubjectIndicatorView *)self _topLeftCornerView];
    v19 = [v18 layer];
    [v19 addAnimation:v16 forKey:@"animateContents"];

    v20 = [(CEKCinematicSubjectIndicatorView *)self _topRightCornerView];
    v21 = [v20 layer];
    [v21 addAnimation:v16 forKey:@"animateContents"];

    v22 = [(CEKCinematicSubjectIndicatorView *)self _bottomLeftCornerView];
    v23 = [v22 layer];
    [v23 addAnimation:v16 forKey:@"animateContents"];

    v24 = [(CEKCinematicSubjectIndicatorView *)self _bottomRightCornerView];
    v25 = [v24 layer];
    [v25 addAnimation:v16 forKey:@"animateContents"];
  }

  v26 = [(CEKCinematicSubjectIndicatorView *)self _topLeftCornerView];
  [v26 setImage:v13];

  v27 = [(CEKCinematicSubjectIndicatorView *)self _topRightCornerView];
  [v27 setImage:v13];

  v28 = [(CEKCinematicSubjectIndicatorView *)self _bottomLeftCornerView];
  [v28 setImage:v13];

  v29 = [(CEKCinematicSubjectIndicatorView *)self _bottomRightCornerView];
  [v29 setImage:v13];
}

- (void)_performAnimationToActiveCorners
{
  v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationTimingFunction:v3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__CEKCinematicSubjectIndicatorView__performAnimationToActiveCorners__block_invoke;
  v5[3] = &unk_1E7CC6358;
  v5[4] = self;
  [MEMORY[0x1E69DD250] animateKeyframesWithDuration:2 delay:v5 options:0 animations:0.45 completion:0.0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__CEKCinematicSubjectIndicatorView__performAnimationToActiveCorners__block_invoke_4;
  v4[3] = &unk_1E7CC6358;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v4 options:0 animations:0.2 completion:0.0];
  [(CEKCinematicSubjectIndicatorView *)self _updateCornerImageViewsForThickness:1 duration:0.2 delay:0.0];
  [(CEKCinematicSubjectIndicatorView *)self _updateCornerImageViewsForThickness:0 duration:0.25 delay:0.15];
  [MEMORY[0x1E6979518] commit];
}

uint64_t __68__CEKCinematicSubjectIndicatorView__performAnimationToActiveCorners__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__CEKCinematicSubjectIndicatorView__performAnimationToActiveCorners__block_invoke_2;
  v4[3] = &unk_1E7CC6358;
  v4[4] = *(a1 + 32);
  [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.45];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__CEKCinematicSubjectIndicatorView__performAnimationToActiveCorners__block_invoke_3;
  v3[3] = &unk_1E7CC6358;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v3 relativeDuration:0.45 animations:0.55];
}

void __68__CEKCinematicSubjectIndicatorView__performAnimationToActiveCorners__block_invoke_2(uint64_t a1)
{
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  *&v4.a = *MEMORY[0x1E695EFD0];
  *&v4.c = v2;
  *&v4.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v5, &v4, 1.1, 1.1);
  v3 = [*(a1 + 32) _containerView];
  v4 = v5;
  [v3 setTransform:&v4];
}

void __68__CEKCinematicSubjectIndicatorView__performAnimationToActiveCorners__block_invoke_3(uint64_t a1)
{
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  *&v4.a = *MEMORY[0x1E695EFD0];
  *&v4.c = v2;
  *&v4.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v5, &v4, 1.0, 1.0);
  v3 = [*(a1 + 32) _containerView];
  v4 = v5;
  [v3 setTransform:&v4];
}

uint64_t __68__CEKCinematicSubjectIndicatorView__performAnimationToActiveCorners__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _updateCornerViews];
  v2 = *(a1 + 32);

  return [v2 _updateVisibility];
}

- (void)_performAnimationToActiveRoundedRect
{
  [(CEKCinematicSubjectIndicatorView *)self set_activeAnimationToActiveRoundedRectCount:[(CEKCinematicSubjectIndicatorView *)self _activeAnimationToActiveRoundedRectCount]+ 1];
  [(CEKCinematicSubjectIndicatorView *)self set_crosshairsVisible:1];
  [(CEKCinematicSubjectIndicatorView *)self _updateCrossHairViewsWithHeight:0.0];
  v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationTimingFunction:v3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__CEKCinematicSubjectIndicatorView__performAnimationToActiveRoundedRect__block_invoke;
  v8[3] = &unk_1E7CC6358;
  v8[4] = self;
  [MEMORY[0x1E69DD250] animateKeyframesWithDuration:2 delay:v8 options:0 animations:0.45 completion:0.0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__CEKCinematicSubjectIndicatorView__performAnimationToActiveRoundedRect__block_invoke_4;
  v7[3] = &unk_1E7CC6358;
  v7[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v7 options:0 animations:0.2 completion:0.0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__CEKCinematicSubjectIndicatorView__performAnimationToActiveRoundedRect__block_invoke_5;
  v6[3] = &unk_1E7CC6358;
  v6[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v6 options:0 animations:0.15 completion:0.05];
  v4[4] = self;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__CEKCinematicSubjectIndicatorView__performAnimationToActiveRoundedRect__block_invoke_6;
  v5[3] = &unk_1E7CC6358;
  v5[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__CEKCinematicSubjectIndicatorView__performAnimationToActiveRoundedRect__block_invoke_7;
  v4[3] = &unk_1E7CC63C8;
  [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v5 options:v4 animations:0.3 completion:1.3];
  [(CEKCinematicSubjectIndicatorView *)self _updateCornerImageViewsForThickness:0 duration:0.15 delay:0.15];
  [(CEKCinematicSubjectIndicatorView *)self _updateCornerImageViewsForThickness:1 duration:0.3 delay:1.3];
  [MEMORY[0x1E6979518] commit];
}

uint64_t __72__CEKCinematicSubjectIndicatorView__performAnimationToActiveRoundedRect__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__CEKCinematicSubjectIndicatorView__performAnimationToActiveRoundedRect__block_invoke_2;
  v4[3] = &unk_1E7CC6358;
  v4[4] = *(a1 + 32);
  [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.45];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__CEKCinematicSubjectIndicatorView__performAnimationToActiveRoundedRect__block_invoke_3;
  v3[3] = &unk_1E7CC6358;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v3 relativeDuration:0.45 animations:0.55];
}

void __72__CEKCinematicSubjectIndicatorView__performAnimationToActiveRoundedRect__block_invoke_2(uint64_t a1)
{
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  *&v4.a = *MEMORY[0x1E695EFD0];
  *&v4.c = v2;
  *&v4.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v5, &v4, 1.1, 1.1);
  v3 = [*(a1 + 32) _containerView];
  v4 = v5;
  [v3 setTransform:&v4];
}

void __72__CEKCinematicSubjectIndicatorView__performAnimationToActiveRoundedRect__block_invoke_3(uint64_t a1)
{
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  *&v4.a = *MEMORY[0x1E695EFD0];
  *&v4.c = v2;
  *&v4.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v5, &v4, 1.0, 1.0);
  v3 = [*(a1 + 32) _containerView];
  v4 = v5;
  [v3 setTransform:&v4];
}

uint64_t __72__CEKCinematicSubjectIndicatorView__performAnimationToActiveRoundedRect__block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) set_activeAnimationToActiveRoundedRectCount:{objc_msgSend(*(a1 + 32), "_activeAnimationToActiveRoundedRectCount") - 1}];
  result = [*(a1 + 32) _activeAnimationToActiveRoundedRectCount];
  if (!result)
  {
    [*(a1 + 32) set_crosshairsVisible:0];
    v3 = *(a1 + 32);

    return [v3 setNeedsLayout];
  }

  return result;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CEKCinematicSubjectIndicatorView;
  [(CEKCinematicSubjectIndicatorView *)&v15 layoutSubviews];
  [(CEKCinematicSubjectIndicatorView *)self bounds];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  CGRectGetMidX(v16);
  UIRoundToViewScale();
  v8 = v7;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  CGRectGetMidY(v17);
  UIRoundToViewScale();
  v10 = v9;
  v11 = [(CEKCinematicSubjectIndicatorView *)self _containerView];
  [v11 setBounds:{x + -3.0, y + -3.0, width + 6.0, height + 6.0}];
  [v11 setCenter:{v8, v10}];
  [(CEKCinematicSubjectIndicatorView *)self _updateCornerViews];
  v12 = [(CEKCinematicSubjectIndicatorView *)self _topCrosshairView];
  v13 = [v12 image];
  [v13 size];
  [(CEKCinematicSubjectIndicatorView *)self _updateCrossHairViewsWithHeight:v14];

  [(CEKCinematicSubjectIndicatorView *)self _updateVisibility];
}

- (void)_updateCornerViews
{
  [(CEKCinematicSubjectIndicatorView *)self bounds];
  v4 = v3 + 6.0;
  v6 = v5 + 6.0;
  v7 = [(CEKCinematicSubjectIndicatorView *)self _topLeftCornerView];
  v8 = [v7 image];
  [v8 size];
  v10 = v9;
  v12 = v11;

  v13 = [(CEKCinematicSubjectIndicatorView *)self shape];
  if (v13 < 2)
  {
    UIRoundToViewScale();
    v15 = v14;
    UIRoundToViewScale();
    v17 = v16;
    v18 = 0.0;
    v19 = v16;
    v20 = v15;
LABEL_15:
    v23 = 0.0;
    goto LABEL_16;
  }

  if (v13 == 2)
  {
    if (v4 >= v6)
    {
      v21 = v6;
    }

    else
    {
      v21 = v4;
    }

    v22 = v21 * 0.5;
    if (v12 >= v22)
    {
      v19 = v22;
    }

    else
    {
      v19 = v12;
    }

    if (v10 >= v22)
    {
      v20 = v22;
    }

    else
    {
      v20 = v10;
    }

    v15 = v4 - v20;
    v17 = v6 - v19;
    v18 = 0.0;
    goto LABEL_15;
  }

  v15 = *MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 8);
  v20 = *(MEMORY[0x1E695F058] + 16);
  v19 = *(MEMORY[0x1E695F058] + 24);
  v18 = v17;
  v23 = *MEMORY[0x1E695F058];
LABEL_16:
  v24 = [(CEKCinematicSubjectIndicatorView *)self _topLeftCornerView];
  [v24 setFrame:{v23, v18, v20, v19}];

  v25 = [(CEKCinematicSubjectIndicatorView *)self _topRightCornerView];
  [v25 setFrame:{v15, v18, v20, v19}];

  v26 = [(CEKCinematicSubjectIndicatorView *)self _bottomLeftCornerView];
  [v26 setFrame:{v23, v17, v20, v19}];

  v27 = [(CEKCinematicSubjectIndicatorView *)self _bottomRightCornerView];
  [v27 setFrame:{v15, v17, v20, v19}];

  CGAffineTransformMakeScale(&v34, -1.0, 1.0);
  v28 = [(CEKCinematicSubjectIndicatorView *)self _topRightCornerView];
  v33 = v34;
  [v28 setTransform:&v33];

  CGAffineTransformMakeScale(&v32, 1.0, -1.0);
  v29 = [(CEKCinematicSubjectIndicatorView *)self _bottomLeftCornerView];
  v33 = v32;
  [v29 setTransform:&v33];

  CGAffineTransformMakeScale(&v31, -1.0, -1.0);
  v30 = [(CEKCinematicSubjectIndicatorView *)self _bottomRightCornerView];
  v33 = v31;
  [v30 setTransform:&v33];
}

- (void)_updateCrossHairViewsWithHeight:(double)a3
{
  [(CEKCinematicSubjectIndicatorView *)self bounds];
  v5 = [(CEKCinematicSubjectIndicatorView *)self _topCrosshairView];
  v6 = [v5 image];
  [v6 size];
  v8 = v7;

  UIRoundToViewScale();
  UIRoundToViewScale();
  UIRoundToViewScale();
  UIRoundToViewScale();
  v9 = [(CEKCinematicSubjectIndicatorView *)self _topCrosshairView];
  [v9 setBounds:{0.0, 0.0, v8, a3}];

  v10 = [(CEKCinematicSubjectIndicatorView *)self _bottomCrosshairView];
  [v10 setBounds:{0.0, 0.0, v8, a3}];

  v11 = [(CEKCinematicSubjectIndicatorView *)self _leftCrosshairView];
  [v11 setBounds:{0.0, 0.0, v8, a3}];

  v12 = [(CEKCinematicSubjectIndicatorView *)self _rightCrosshairView];
  [v12 setBounds:{0.0, 0.0, v8, a3}];

  UIRectGetCenter();
  v14 = v13;
  v16 = v15;
  v17 = [(CEKCinematicSubjectIndicatorView *)self _topCrosshairView];
  [v17 setCenter:{v14, v16}];

  UIRectGetCenter();
  v19 = v18;
  v21 = v20;
  v22 = [(CEKCinematicSubjectIndicatorView *)self _bottomCrosshairView];
  [v22 setCenter:{v19, v21}];

  UIRectGetCenter();
  v24 = v23;
  v26 = v25;
  v27 = [(CEKCinematicSubjectIndicatorView *)self _leftCrosshairView];
  [v27 setCenter:{v24, v26}];

  UIRectGetCenter();
  v29 = v28;
  v31 = v30;
  v32 = [(CEKCinematicSubjectIndicatorView *)self _rightCrosshairView];
  [v32 setCenter:{v29, v31}];

  CGAffineTransformMakeRotation(&v39, 3.14159265);
  v33 = [(CEKCinematicSubjectIndicatorView *)self _bottomCrosshairView];
  v38 = v39;
  [v33 setTransform:&v38];

  CGAffineTransformMakeRotation(&v37, 4.71238898);
  v34 = [(CEKCinematicSubjectIndicatorView *)self _leftCrosshairView];
  v38 = v37;
  [v34 setTransform:&v38];

  CGAffineTransformMakeRotation(&v36, 1.57079633);
  v35 = [(CEKCinematicSubjectIndicatorView *)self _rightCrosshairView];
  v38 = v36;
  [v35 setTransform:&v38];
}

- (void)_updateVisibility
{
  v3 = [(CEKCinematicSubjectIndicatorView *)self _crosshairsVisible];
  v4 = [(CEKCinematicSubjectIndicatorView *)self _topCrosshairView];
  [v4 setHidden:!v3];

  v5 = [(CEKCinematicSubjectIndicatorView *)self _bottomCrosshairView];
  [v5 setHidden:!v3];

  v6 = [(CEKCinematicSubjectIndicatorView *)self _leftCrosshairView];
  [v6 setHidden:!v3];

  v7 = [(CEKCinematicSubjectIndicatorView *)self _rightCrosshairView];
  [v7 setHidden:!v3];
}

+ (CGRect)minimumSuggestedBounds
{
  v2 = 50.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 50.0;
  result.size.height = v5;
  result.size.width = v2;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end