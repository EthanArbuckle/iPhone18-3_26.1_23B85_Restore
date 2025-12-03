@interface CAMStageLightOverlayView
+ (CGRect)circleFrameForViewport:(CGRect)viewport orientation:(int64_t)orientation bottomContentInset:(double)inset screenScale:(double)scale;
+ (double)_circleDiameterForViewportSize:(CGSize)size orientation:(int64_t)orientation screenScale:(double)scale;
- (CAMStageLightOverlayView)initWithFrame:(CGRect)frame;
- (CGRect)_circleFrameForOrientation:(int64_t)orientation;
- (CGRect)viewportFrame;
- (void)_updateAnimatorState;
- (void)_updateShadowViewsAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setActive:(BOOL)active animated:(BOOL)animated;
- (void)setBottomContentInset:(double)inset;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setViewportFrame:(CGRect)frame;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated;
@end

@implementation CAMStageLightOverlayView

- (CAMStageLightOverlayView)initWithFrame:(CGRect)frame
{
  v35[3] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = CAMStageLightOverlayView;
  v3 = [(CAMStageLightOverlayView *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_visible = 1;
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    tintView = v4->__tintView;
    v4->__tintView = v6;

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v4->__tintView setBackgroundColor:blackColor];

    [(CAMStageLightOverlayView *)v4 addSubview:v4->__tintView];
    v9 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v10 = MEMORY[0x1E69DCAB8];
    v11 = CAMCameraUIFrameworkBundle();
    v12 = [v10 imageNamed:@"CAMStageLightOverlayVignette" inBundle:v11];
    v13 = [v9 initWithImage:v12];
    vignetteView = v4->__vignetteView;
    v4->__vignetteView = v13;

    [(CAMStageLightOverlayView *)v4 addSubview:v4->__vignetteView];
    v15 = objc_alloc_init(MEMORY[0x1E6979380]);
    gradientLayer = v4->__gradientLayer;
    v4->__gradientLayer = v15;

    [(CAGradientLayer *)v4->__gradientLayer setType:*MEMORY[0x1E6979DB0]];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v35[0] = [clearColor CGColor];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    v35[1] = [clearColor2 CGColor];
    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    v35[2] = [blackColor2 CGColor];
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
    [(CAGradientLayer *)v4->__gradientLayer setColors:v20];

    v33[0] = @"locations";
    null = [MEMORY[0x1E695DFB0] null];
    v34[0] = null;
    v33[1] = @"startPoint";
    null2 = [MEMORY[0x1E695DFB0] null];
    v34[1] = null2;
    v33[2] = @"endPoint";
    null3 = [MEMORY[0x1E695DFB0] null];
    v34[2] = null3;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
    [(CAGradientLayer *)v4->__gradientLayer setActions:v24];

    v25 = v4->__gradientLayer;
    layer = [(CAMStageLightOverlayView *)v4 layer];
    [layer setMask:v25];

    layer2 = [MEMORY[0x1E69794A0] layer];
    circleLayer = v4->__circleLayer;
    v4->__circleLayer = layer2;

    layer3 = [(CAMStageLightOverlayView *)v4 layer];
    [layer3 addSublayer:v4->__circleLayer];

    [(CAMStageLightOverlayView *)v4 _updateShadowViewsAnimated:0];
    v30 = v4;
  }

  return v4;
}

- (void)setVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_visible != visible)
  {
    v14 = v4;
    v15 = v5;
    self->_visible = visible;
    v7 = 0.4;
    if (!visible)
    {
      v7 = 0.25;
    }

    v9 = 3221225472;
    v8 = MEMORY[0x1E69E9820];
    v10 = __48__CAMStageLightOverlayView_setVisible_animated___block_invoke;
    v11 = &unk_1E76F7850;
    if (!animated)
    {
      v7 = 0.0;
    }

    selfCopy = self;
    visibleCopy = visible;
    [CAMView animateIfNeededWithDuration:&v8 animations:v7];
    [(CAMStageLightOverlayView *)self _updateAnimatorState:v8];
  }
}

uint64_t __48__CAMStageLightOverlayView_setVisible_animated___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

- (void)setActive:(BOOL)active animated:(BOOL)animated
{
  if (self->_active != active)
  {
    self->_active = active;
    [(CAMStageLightOverlayView *)self _updateShadowViewsAnimated:animated];

    [(CAMStageLightOverlayView *)self _updateAnimatorState];
  }
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    animatedCopy = animated;
    self->_orientation = orientation;
    [(CAMStageLightOverlayView *)self _circleFrameForOrientation:[(CAMStageLightOverlayView *)self orientation]];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    _animator = [(CAMStageLightOverlayView *)self _animator];
    [_animator setCircleBaseFrame:animatedCopy animated:{v8, v10, v12, v14}];
  }
}

- (void)setBottomContentInset:(double)inset
{
  if (self->_bottomContentInset != inset)
  {
    self->_bottomContentInset = inset;
    [(CAMStageLightOverlayView *)self _circleFrameForOrientation:[(CAMStageLightOverlayView *)self orientation]];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    _animator = [(CAMStageLightOverlayView *)self _animator];
    [_animator setCircleBaseFrame:1 animated:{v6, v8, v10, v12}];
  }
}

- (void)setViewportFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_viewportFrame = &self->_viewportFrame;
  if (!CGRectEqualToRect(frame, self->_viewportFrame))
  {
    p_viewportFrame->origin.x = x;
    p_viewportFrame->origin.y = y;
    p_viewportFrame->size.width = width;
    p_viewportFrame->size.height = height;
    _animator = [(CAMStageLightOverlayView *)self _animator];
    [(CAMStageLightOverlayView *)self _circleFrameForOrientation:[(CAMStageLightOverlayView *)self orientation]];
    [_animator setCircleBaseFrame:1 animated:?];
  }
}

- (void)_updateShadowViewsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  isActive = [(CAMStageLightOverlayView *)self isActive];
  v6 = 0.3;
  if (!animatedCopy)
  {
    v6 = 0.0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__CAMStageLightOverlayView__updateShadowViewsAnimated___block_invoke;
  v8[3] = &unk_1E76F7850;
  if (isActive)
  {
    v7 = 0x20000;
  }

  else
  {
    v7 = 0x10000;
  }

  v8[4] = self;
  v9 = isActive;
  [CAMView animateIfNeededWithDuration:v7 options:v8 animations:0 completion:v6];
}

void __55__CAMStageLightOverlayView__updateShadowViewsAnimated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0.75;
  }

  else
  {
    v2 = 0.6;
  }

  v3 = [*(a1 + 32) _tintView];
  [v3 setAlpha:v2];

  if (*(a1 + 40))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) _vignetteView];
  [v5 setAlpha:v4];
}

- (void)_updateAnimatorState
{
  isVisible = [(CAMStageLightOverlayView *)self isVisible];
  isActive = [(CAMStageLightOverlayView *)self isActive];
  v5 = 1;
  if (isActive)
  {
    v5 = 2;
  }

  if (isVisible)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  _animator = [(CAMStageLightOverlayView *)self _animator];
  [_animator setState:v6];
}

+ (double)_circleDiameterForViewportSize:(CGSize)size orientation:(int64_t)orientation screenScale:(double)scale
{
  [self _useLargeLayoutForViewportSize:?];

  UIRoundToScale();
  return result;
}

+ (CGRect)circleFrameForViewport:(CGRect)viewport orientation:(int64_t)orientation bottomContentInset:(double)inset screenScale:(double)scale
{
  height = viewport.size.height;
  width = viewport.size.width;
  y = viewport.origin.y;
  x = viewport.origin.x;
  [self _useLargeLayoutForViewportSize:{viewport.size.width, viewport.size.height}];
  UIRectGetCenter();
  [objc_opt_class() _circleDiameterForViewportSize:orientation orientation:width screenScale:{height, scale}];
  v18.origin.x = x + 0.0;
  v18.origin.y = y + 0.0;
  v18.size.height = height - (inset + 0.0);
  v18.size.width = width;
  CGRectGetMaxY(v18);

  UIRectCenteredAboutPointScale();
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_circleFrameForOrientation:(int64_t)orientation
{
  [(CAMStageLightOverlayView *)self viewportFrame];
  if (CGRectEqualToRect(v24, *MEMORY[0x1E695F058]))
  {
    [(CAMStageLightOverlayView *)self bounds];
  }

  else
  {
    [(CAMStageLightOverlayView *)self viewportFrame];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  window = [(CAMStageLightOverlayView *)self window];
  screen = [window screen];
  [screen scale];
  v16 = v15;

  v17 = objc_opt_class();
  [(CAMStageLightOverlayView *)self bottomContentInset];

  [v17 circleFrameForViewport:orientation orientation:v9 bottomContentInset:v10 screenScale:{v11, v12, v18, v16}];
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = CAMStageLightOverlayView;
  [(CAMStageLightOverlayView *)&v25 layoutSubviews];
  [(CAMStageLightOverlayView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _tintView = [(CAMStageLightOverlayView *)self _tintView];
  _vignetteView = [(CAMStageLightOverlayView *)self _vignetteView];
  [_tintView setFrame:{v4, v6, v8, v10}];
  [_vignetteView setFrame:{v4, v6, v8, v10}];
  _gradientLayer = [(CAMStageLightOverlayView *)self _gradientLayer];
  [_gradientLayer setBounds:{v4, v6, v8, v10}];
  UIRectGetCenter();
  [_gradientLayer setPosition:?];
  _animator = [(CAMStageLightOverlayView *)self _animator];
  [(CAMStageLightOverlayView *)self _circleFrameForOrientation:[(CAMStageLightOverlayView *)self orientation]];
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  if (_animator)
  {
    [(CAMStageLightAnimator *)_animator setCircleBaseFrame:v15, v16, v17, v18];
  }

  else
  {
    v23 = [CAMStageLightAnimator alloc];
    _circleLayer = [(CAMStageLightOverlayView *)self _circleLayer];
    _animator = [(CAMStageLightAnimator *)v23 initWithGradientLayer:_gradientLayer circleLayer:_circleLayer];

    [(CAMStageLightAnimator *)_animator setCircleBaseFrame:v19, v20, v21, v22];
    [(CAMStageLightOverlayView *)self _setAnimator:_animator];
    [(CAMStageLightOverlayView *)self _updateAnimatorState];
  }
}

- (CGRect)viewportFrame
{
  x = self->_viewportFrame.origin.x;
  y = self->_viewportFrame.origin.y;
  width = self->_viewportFrame.size.width;
  height = self->_viewportFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end