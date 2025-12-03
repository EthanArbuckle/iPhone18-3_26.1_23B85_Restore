@interface CEKCinematicSubjectIndicatorView
+ (CGRect)minimumSuggestedBounds;
+ (id)_cornerImageWithResizableCapInsetsNamed:(id)named;
- (CEKCinematicSubjectIndicatorView)initWithFrame:(CGRect)frame;
- (void)_performAnimationToActiveCorners;
- (void)_performAnimationToActiveRoundedRect;
- (void)_updateCornerImageViewsForThickness:(int64_t)thickness duration:(double)duration delay:(double)delay;
- (void)_updateCornerViews;
- (void)_updateCrossHairViewsWithHeight:(double)height;
- (void)_updateVisibility;
- (void)layoutSubviews;
- (void)setShape:(int64_t)shape shouldUseCrosshairForAnimation:(BOOL)animation animated:(BOOL)animated;
@end

@implementation CEKCinematicSubjectIndicatorView

- (CEKCinematicSubjectIndicatorView)initWithFrame:(CGRect)frame
{
  v29.receiver = self;
  v29.super_class = CEKCinematicSubjectIndicatorView;
  v3 = [(CEKCinematicSubjectIndicatorView *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

+ (id)_cornerImageWithResizableCapInsetsNamed:(id)named
{
  v3 = MEMORY[0x1E69DCAB8];
  namedCopy = named;
  v5 = CEKFrameworkBundle();
  v6 = [v3 imageNamed:namedCopy inBundle:v5];

  [v6 size];
  v8 = [v6 resizableImageWithCapInsets:1 resizingMode:{v7 + -1.0, v7 + -1.0, 0.0, 0.0}];

  return v8;
}

- (void)setShape:(int64_t)shape shouldUseCrosshairForAnimation:(BOOL)animation animated:(BOOL)animated
{
  if (self->_shape == shape)
  {
    return;
  }

  animatedCopy = animated;
  animationCopy = animation;
  _topCrosshairView = [(CEKCinematicSubjectIndicatorView *)self _topCrosshairView];
  layer = [_topCrosshairView layer];
  [layer removeAllAnimations];

  _leftCrosshairView = [(CEKCinematicSubjectIndicatorView *)self _leftCrosshairView];
  layer2 = [_leftCrosshairView layer];
  [layer2 removeAllAnimations];

  _bottomCrosshairView = [(CEKCinematicSubjectIndicatorView *)self _bottomCrosshairView];
  layer3 = [_bottomCrosshairView layer];
  [layer3 removeAllAnimations];

  _rightCrosshairView = [(CEKCinematicSubjectIndicatorView *)self _rightCrosshairView];
  layer4 = [_rightCrosshairView layer];
  [layer4 removeAllAnimations];

  _topLeftCornerView = [(CEKCinematicSubjectIndicatorView *)self _topLeftCornerView];
  layer5 = [_topLeftCornerView layer];
  [layer5 removeAllAnimations];

  _topRightCornerView = [(CEKCinematicSubjectIndicatorView *)self _topRightCornerView];
  layer6 = [_topRightCornerView layer];
  [layer6 removeAllAnimations];

  _bottomRightCornerView = [(CEKCinematicSubjectIndicatorView *)self _bottomRightCornerView];
  layer7 = [_bottomRightCornerView layer];
  [layer7 removeAllAnimations];

  _bottomLeftCornerView = [(CEKCinematicSubjectIndicatorView *)self _bottomLeftCornerView];
  layer8 = [_bottomLeftCornerView layer];
  [layer8 removeAllAnimations];

  if (animatedCopy)
  {
    [(CEKCinematicSubjectIndicatorView *)self layoutIfNeeded];
  }

  self->_shape = shape;
  if (shape == 2)
  {
    [(CEKCinematicSubjectIndicatorView *)self set_crosshairsVisible:0];
    if (animatedCopy)
    {

      [(CEKCinematicSubjectIndicatorView *)self _performAnimationToActiveCorners];
      return;
    }

    selfCopy3 = self;
    v28 = 0;
LABEL_21:
    [(CEKCinematicSubjectIndicatorView *)selfCopy3 _updateCornerImageViewsForThickness:v28 duration:0.0 delay:0.0];

    [(CEKCinematicSubjectIndicatorView *)self setNeedsLayout];
    return;
  }

  if (shape != 1)
  {
    if (shape)
    {
      return;
    }

    [(CEKCinematicSubjectIndicatorView *)self set_crosshairsVisible:0];
    [(CEKCinematicSubjectIndicatorView *)self _updateCornerImageViewsForThickness:1 duration:0.0 delay:0.0];
    [(CEKCinematicSubjectIndicatorView *)self setNeedsLayout];
    if (!animatedCopy)
    {
      return;
    }

    v25 = MEMORY[0x1E69DD250];
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __85__CEKCinematicSubjectIndicatorView_setShape_shouldUseCrosshairForAnimation_animated___block_invoke;
    v37 = &unk_1E7CC6358;
    selfCopy2 = self;
    v26 = &v34;
LABEL_25:
    [v25 animateWithDuration:2 delay:v26 options:0 animations:0.2 completion:{0.0, v29, v30, v31, v32, selfCopy4, v34, v35, v36, v37, selfCopy2}];
    return;
  }

  if (!animatedCopy)
  {
    selfCopy3 = self;
    v28 = 1;
    goto LABEL_21;
  }

  if (!animationCopy)
  {
    [(CEKCinematicSubjectIndicatorView *)self _updateCornerImageViewsForThickness:1 duration:0.0 delay:0.0];
    [(CEKCinematicSubjectIndicatorView *)self setNeedsLayout];
    v25 = MEMORY[0x1E69DD250];
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __85__CEKCinematicSubjectIndicatorView_setShape_shouldUseCrosshairForAnimation_animated___block_invoke_2;
    v32 = &unk_1E7CC6358;
    selfCopy4 = self;
    v26 = &v29;
    goto LABEL_25;
  }

  [(CEKCinematicSubjectIndicatorView *)self _performAnimationToActiveRoundedRect];
}

- (void)_updateCornerImageViewsForThickness:(int64_t)thickness duration:(double)duration delay:(double)delay
{
  shape = [(CEKCinematicSubjectIndicatorView *)self shape];
  if (thickness == 2)
  {
    v10 = @"CEKSubjectIndicatorCornerActiveThick";
    v11 = @"CEKCinematicSubjectIndicatorCornerInactiveThick";
  }

  else if (thickness == 1)
  {
    v10 = @"CEKSubjectIndicatorCornerActiveThin";
    v11 = @"CEKCinematicSubjectIndicatorCornerInactiveThin";
  }

  else
  {
    if (thickness)
    {
      v12 = &stru_1F2FD5B58;
      goto LABEL_11;
    }

    v10 = @"CEKSubjectIndicatorCornerActive";
    v11 = @"CEKCinematicSubjectIndicatorCornerInactive";
  }

  if (!shape)
  {
    v10 = v11;
  }

  v12 = v10;
LABEL_11:
  v30 = v12;
  v13 = [objc_opt_class() _cornerImageWithResizableCapInsetsNamed:v12];
  _topLeftCornerView = [(CEKCinematicSubjectIndicatorView *)self _topLeftCornerView];
  image = [_topLeftCornerView image];

  if (duration != 0.0)
  {
    v16 = [MEMORY[0x1E6979318] animationWithKeyPath:@"contents"];
    v17 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v16 setTimingFunction:v17];

    [v16 setDuration:duration];
    [v16 setBeginTime:CACurrentMediaTime() + delay];
    [v16 setFromValue:{objc_msgSend(image, "CGImage")}];
    [v16 setToValue:{objc_msgSend(v13, "CGImage")}];
    [v16 setDelegate:self];
    [v16 setFillMode:*MEMORY[0x1E69797D8]];
    _topLeftCornerView2 = [(CEKCinematicSubjectIndicatorView *)self _topLeftCornerView];
    layer = [_topLeftCornerView2 layer];
    [layer addAnimation:v16 forKey:@"animateContents"];

    _topRightCornerView = [(CEKCinematicSubjectIndicatorView *)self _topRightCornerView];
    layer2 = [_topRightCornerView layer];
    [layer2 addAnimation:v16 forKey:@"animateContents"];

    _bottomLeftCornerView = [(CEKCinematicSubjectIndicatorView *)self _bottomLeftCornerView];
    layer3 = [_bottomLeftCornerView layer];
    [layer3 addAnimation:v16 forKey:@"animateContents"];

    _bottomRightCornerView = [(CEKCinematicSubjectIndicatorView *)self _bottomRightCornerView];
    layer4 = [_bottomRightCornerView layer];
    [layer4 addAnimation:v16 forKey:@"animateContents"];
  }

  _topLeftCornerView3 = [(CEKCinematicSubjectIndicatorView *)self _topLeftCornerView];
  [_topLeftCornerView3 setImage:v13];

  _topRightCornerView2 = [(CEKCinematicSubjectIndicatorView *)self _topRightCornerView];
  [_topRightCornerView2 setImage:v13];

  _bottomLeftCornerView2 = [(CEKCinematicSubjectIndicatorView *)self _bottomLeftCornerView];
  [_bottomLeftCornerView2 setImage:v13];

  _bottomRightCornerView2 = [(CEKCinematicSubjectIndicatorView *)self _bottomRightCornerView];
  [_bottomRightCornerView2 setImage:v13];
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
  _containerView = [(CEKCinematicSubjectIndicatorView *)self _containerView];
  [_containerView setBounds:{x + -3.0, y + -3.0, width + 6.0, height + 6.0}];
  [_containerView setCenter:{v8, v10}];
  [(CEKCinematicSubjectIndicatorView *)self _updateCornerViews];
  _topCrosshairView = [(CEKCinematicSubjectIndicatorView *)self _topCrosshairView];
  image = [_topCrosshairView image];
  [image size];
  [(CEKCinematicSubjectIndicatorView *)self _updateCrossHairViewsWithHeight:v14];

  [(CEKCinematicSubjectIndicatorView *)self _updateVisibility];
}

- (void)_updateCornerViews
{
  [(CEKCinematicSubjectIndicatorView *)self bounds];
  v4 = v3 + 6.0;
  v6 = v5 + 6.0;
  _topLeftCornerView = [(CEKCinematicSubjectIndicatorView *)self _topLeftCornerView];
  image = [_topLeftCornerView image];
  [image size];
  v10 = v9;
  v12 = v11;

  shape = [(CEKCinematicSubjectIndicatorView *)self shape];
  if (shape < 2)
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

  if (shape == 2)
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
  _topLeftCornerView2 = [(CEKCinematicSubjectIndicatorView *)self _topLeftCornerView];
  [_topLeftCornerView2 setFrame:{v23, v18, v20, v19}];

  _topRightCornerView = [(CEKCinematicSubjectIndicatorView *)self _topRightCornerView];
  [_topRightCornerView setFrame:{v15, v18, v20, v19}];

  _bottomLeftCornerView = [(CEKCinematicSubjectIndicatorView *)self _bottomLeftCornerView];
  [_bottomLeftCornerView setFrame:{v23, v17, v20, v19}];

  _bottomRightCornerView = [(CEKCinematicSubjectIndicatorView *)self _bottomRightCornerView];
  [_bottomRightCornerView setFrame:{v15, v17, v20, v19}];

  CGAffineTransformMakeScale(&v34, -1.0, 1.0);
  _topRightCornerView2 = [(CEKCinematicSubjectIndicatorView *)self _topRightCornerView];
  v33 = v34;
  [_topRightCornerView2 setTransform:&v33];

  CGAffineTransformMakeScale(&v32, 1.0, -1.0);
  _bottomLeftCornerView2 = [(CEKCinematicSubjectIndicatorView *)self _bottomLeftCornerView];
  v33 = v32;
  [_bottomLeftCornerView2 setTransform:&v33];

  CGAffineTransformMakeScale(&v31, -1.0, -1.0);
  _bottomRightCornerView2 = [(CEKCinematicSubjectIndicatorView *)self _bottomRightCornerView];
  v33 = v31;
  [_bottomRightCornerView2 setTransform:&v33];
}

- (void)_updateCrossHairViewsWithHeight:(double)height
{
  [(CEKCinematicSubjectIndicatorView *)self bounds];
  _topCrosshairView = [(CEKCinematicSubjectIndicatorView *)self _topCrosshairView];
  image = [_topCrosshairView image];
  [image size];
  v8 = v7;

  UIRoundToViewScale();
  UIRoundToViewScale();
  UIRoundToViewScale();
  UIRoundToViewScale();
  _topCrosshairView2 = [(CEKCinematicSubjectIndicatorView *)self _topCrosshairView];
  [_topCrosshairView2 setBounds:{0.0, 0.0, v8, height}];

  _bottomCrosshairView = [(CEKCinematicSubjectIndicatorView *)self _bottomCrosshairView];
  [_bottomCrosshairView setBounds:{0.0, 0.0, v8, height}];

  _leftCrosshairView = [(CEKCinematicSubjectIndicatorView *)self _leftCrosshairView];
  [_leftCrosshairView setBounds:{0.0, 0.0, v8, height}];

  _rightCrosshairView = [(CEKCinematicSubjectIndicatorView *)self _rightCrosshairView];
  [_rightCrosshairView setBounds:{0.0, 0.0, v8, height}];

  UIRectGetCenter();
  v14 = v13;
  v16 = v15;
  _topCrosshairView3 = [(CEKCinematicSubjectIndicatorView *)self _topCrosshairView];
  [_topCrosshairView3 setCenter:{v14, v16}];

  UIRectGetCenter();
  v19 = v18;
  v21 = v20;
  _bottomCrosshairView2 = [(CEKCinematicSubjectIndicatorView *)self _bottomCrosshairView];
  [_bottomCrosshairView2 setCenter:{v19, v21}];

  UIRectGetCenter();
  v24 = v23;
  v26 = v25;
  _leftCrosshairView2 = [(CEKCinematicSubjectIndicatorView *)self _leftCrosshairView];
  [_leftCrosshairView2 setCenter:{v24, v26}];

  UIRectGetCenter();
  v29 = v28;
  v31 = v30;
  _rightCrosshairView2 = [(CEKCinematicSubjectIndicatorView *)self _rightCrosshairView];
  [_rightCrosshairView2 setCenter:{v29, v31}];

  CGAffineTransformMakeRotation(&v39, 3.14159265);
  _bottomCrosshairView3 = [(CEKCinematicSubjectIndicatorView *)self _bottomCrosshairView];
  v38 = v39;
  [_bottomCrosshairView3 setTransform:&v38];

  CGAffineTransformMakeRotation(&v37, 4.71238898);
  _leftCrosshairView3 = [(CEKCinematicSubjectIndicatorView *)self _leftCrosshairView];
  v38 = v37;
  [_leftCrosshairView3 setTransform:&v38];

  CGAffineTransformMakeRotation(&v36, 1.57079633);
  _rightCrosshairView3 = [(CEKCinematicSubjectIndicatorView *)self _rightCrosshairView];
  v38 = v36;
  [_rightCrosshairView3 setTransform:&v38];
}

- (void)_updateVisibility
{
  _crosshairsVisible = [(CEKCinematicSubjectIndicatorView *)self _crosshairsVisible];
  _topCrosshairView = [(CEKCinematicSubjectIndicatorView *)self _topCrosshairView];
  [_topCrosshairView setHidden:!_crosshairsVisible];

  _bottomCrosshairView = [(CEKCinematicSubjectIndicatorView *)self _bottomCrosshairView];
  [_bottomCrosshairView setHidden:!_crosshairsVisible];

  _leftCrosshairView = [(CEKCinematicSubjectIndicatorView *)self _leftCrosshairView];
  [_leftCrosshairView setHidden:!_crosshairsVisible];

  _rightCrosshairView = [(CEKCinematicSubjectIndicatorView *)self _rightCrosshairView];
  [_rightCrosshairView setHidden:!_crosshairsVisible];
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