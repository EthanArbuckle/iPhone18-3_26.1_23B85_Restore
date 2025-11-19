@interface CAMStageLightOverlayView
+ (CGRect)circleFrameForViewport:(CGRect)a3 orientation:(int64_t)a4 bottomContentInset:(double)a5 screenScale:(double)a6;
+ (double)_circleDiameterForViewportSize:(CGSize)a3 orientation:(int64_t)a4 screenScale:(double)a5;
- (CAMStageLightOverlayView)initWithFrame:(CGRect)a3;
- (CGRect)_circleFrameForOrientation:(int64_t)a3;
- (CGRect)viewportFrame;
- (void)_updateAnimatorState;
- (void)_updateShadowViewsAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)setActive:(BOOL)a3 animated:(BOOL)a4;
- (void)setBottomContentInset:(double)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setViewportFrame:(CGRect)a3;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CAMStageLightOverlayView

- (CAMStageLightOverlayView)initWithFrame:(CGRect)a3
{
  v35[3] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = CAMStageLightOverlayView;
  v3 = [(CAMStageLightOverlayView *)&v32 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_visible = 1;
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    tintView = v4->__tintView;
    v4->__tintView = v6;

    v8 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v4->__tintView setBackgroundColor:v8];

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
    v17 = [MEMORY[0x1E69DC888] clearColor];
    v35[0] = [v17 CGColor];
    v18 = [MEMORY[0x1E69DC888] clearColor];
    v35[1] = [v18 CGColor];
    v19 = [MEMORY[0x1E69DC888] blackColor];
    v35[2] = [v19 CGColor];
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
    [(CAGradientLayer *)v4->__gradientLayer setColors:v20];

    v33[0] = @"locations";
    v21 = [MEMORY[0x1E695DFB0] null];
    v34[0] = v21;
    v33[1] = @"startPoint";
    v22 = [MEMORY[0x1E695DFB0] null];
    v34[1] = v22;
    v33[2] = @"endPoint";
    v23 = [MEMORY[0x1E695DFB0] null];
    v34[2] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
    [(CAGradientLayer *)v4->__gradientLayer setActions:v24];

    v25 = v4->__gradientLayer;
    v26 = [(CAMStageLightOverlayView *)v4 layer];
    [v26 setMask:v25];

    v27 = [MEMORY[0x1E69794A0] layer];
    circleLayer = v4->__circleLayer;
    v4->__circleLayer = v27;

    v29 = [(CAMStageLightOverlayView *)v4 layer];
    [v29 addSublayer:v4->__circleLayer];

    [(CAMStageLightOverlayView *)v4 _updateShadowViewsAnimated:0];
    v30 = v4;
  }

  return v4;
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_visible != a3)
  {
    v14 = v4;
    v15 = v5;
    self->_visible = a3;
    v7 = 0.4;
    if (!a3)
    {
      v7 = 0.25;
    }

    v9 = 3221225472;
    v8 = MEMORY[0x1E69E9820];
    v10 = __48__CAMStageLightOverlayView_setVisible_animated___block_invoke;
    v11 = &unk_1E76F7850;
    if (!a4)
    {
      v7 = 0.0;
    }

    v12 = self;
    v13 = a3;
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

- (void)setActive:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(CAMStageLightOverlayView *)self _updateShadowViewsAnimated:a4];

    [(CAMStageLightOverlayView *)self _updateAnimatorState];
  }
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    v5 = a4;
    self->_orientation = a3;
    [(CAMStageLightOverlayView *)self _circleFrameForOrientation:[(CAMStageLightOverlayView *)self orientation]];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(CAMStageLightOverlayView *)self _animator];
    [v15 setCircleBaseFrame:v5 animated:{v8, v10, v12, v14}];
  }
}

- (void)setBottomContentInset:(double)a3
{
  if (self->_bottomContentInset != a3)
  {
    self->_bottomContentInset = a3;
    [(CAMStageLightOverlayView *)self _circleFrameForOrientation:[(CAMStageLightOverlayView *)self orientation]];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(CAMStageLightOverlayView *)self _animator];
    [v13 setCircleBaseFrame:1 animated:{v6, v8, v10, v12}];
  }
}

- (void)setViewportFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_viewportFrame = &self->_viewportFrame;
  if (!CGRectEqualToRect(a3, self->_viewportFrame))
  {
    p_viewportFrame->origin.x = x;
    p_viewportFrame->origin.y = y;
    p_viewportFrame->size.width = width;
    p_viewportFrame->size.height = height;
    v9 = [(CAMStageLightOverlayView *)self _animator];
    [(CAMStageLightOverlayView *)self _circleFrameForOrientation:[(CAMStageLightOverlayView *)self orientation]];
    [v9 setCircleBaseFrame:1 animated:?];
  }
}

- (void)_updateShadowViewsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMStageLightOverlayView *)self isActive];
  v6 = 0.3;
  if (!v3)
  {
    v6 = 0.0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__CAMStageLightOverlayView__updateShadowViewsAnimated___block_invoke;
  v8[3] = &unk_1E76F7850;
  if (v5)
  {
    v7 = 0x20000;
  }

  else
  {
    v7 = 0x10000;
  }

  v8[4] = self;
  v9 = v5;
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
  v3 = [(CAMStageLightOverlayView *)self isVisible];
  v4 = [(CAMStageLightOverlayView *)self isActive];
  v5 = 1;
  if (v4)
  {
    v5 = 2;
  }

  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CAMStageLightOverlayView *)self _animator];
  [v7 setState:v6];
}

+ (double)_circleDiameterForViewportSize:(CGSize)a3 orientation:(int64_t)a4 screenScale:(double)a5
{
  [a1 _useLargeLayoutForViewportSize:?];

  UIRoundToScale();
  return result;
}

+ (CGRect)circleFrameForViewport:(CGRect)a3 orientation:(int64_t)a4 bottomContentInset:(double)a5 screenScale:(double)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [a1 _useLargeLayoutForViewportSize:{a3.size.width, a3.size.height}];
  UIRectGetCenter();
  [objc_opt_class() _circleDiameterForViewportSize:a4 orientation:width screenScale:{height, a6}];
  v18.origin.x = x + 0.0;
  v18.origin.y = y + 0.0;
  v18.size.height = height - (a5 + 0.0);
  v18.size.width = width;
  CGRectGetMaxY(v18);

  UIRectCenteredAboutPointScale();
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_circleFrameForOrientation:(int64_t)a3
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
  v13 = [(CAMStageLightOverlayView *)self window];
  v14 = [v13 screen];
  [v14 scale];
  v16 = v15;

  v17 = objc_opt_class();
  [(CAMStageLightOverlayView *)self bottomContentInset];

  [v17 circleFrameForViewport:a3 orientation:v9 bottomContentInset:v10 screenScale:{v11, v12, v18, v16}];
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
  v11 = [(CAMStageLightOverlayView *)self _tintView];
  v12 = [(CAMStageLightOverlayView *)self _vignetteView];
  [v11 setFrame:{v4, v6, v8, v10}];
  [v12 setFrame:{v4, v6, v8, v10}];
  v13 = [(CAMStageLightOverlayView *)self _gradientLayer];
  [v13 setBounds:{v4, v6, v8, v10}];
  UIRectGetCenter();
  [v13 setPosition:?];
  v14 = [(CAMStageLightOverlayView *)self _animator];
  [(CAMStageLightOverlayView *)self _circleFrameForOrientation:[(CAMStageLightOverlayView *)self orientation]];
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  if (v14)
  {
    [(CAMStageLightAnimator *)v14 setCircleBaseFrame:v15, v16, v17, v18];
  }

  else
  {
    v23 = [CAMStageLightAnimator alloc];
    v24 = [(CAMStageLightOverlayView *)self _circleLayer];
    v14 = [(CAMStageLightAnimator *)v23 initWithGradientLayer:v13 circleLayer:v24];

    [(CAMStageLightAnimator *)v14 setCircleBaseFrame:v19, v20, v21, v22];
    [(CAMStageLightOverlayView *)self _setAnimator:v14];
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