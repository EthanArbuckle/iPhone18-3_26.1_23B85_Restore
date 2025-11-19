@interface CAMTransientImageWell
- (BOOL)currentImageHidden;
- (CAMTransientImageWell)initWithFrame:(CGRect)a3;
- (CAMTransientImageWellDelegate)delegate;
- (CGPoint)_imageViewSpawnPoint;
- (CGPoint)_imageViewStashPoint;
- (CGRect)_unorientedFrameForImageView:(id)a3;
- (CGRect)imageFrame;
- (CGSize)_imageViewMaxSize;
- (CGSize)_imageViewSizeForContentSize:(CGSize)a3;
- (UIImage)image;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_cancelAutoStashTimer;
- (void)_dismissImageAnimated:(BOOL)a3;
- (void)_dismissImageView:(id)a3 animated:(BOOL)a4;
- (void)_handleAutoStashTimerFired:(id)a3;
- (void)_handleStashSwipe:(id)a3;
- (void)_handleTap:(id)a3;
- (void)_handleUnstashSwipe:(id)a3;
- (void)_restartAutoStashTimerWithDuration:(double)a3;
- (void)_setStashed:(BOOL)a3 animated:(BOOL)a4;
- (void)layoutSubviews;
- (void)setAutoStashesImages:(BOOL)a3;
- (void)setCurrentImageHidden:(BOOL)a3;
- (void)setImage:(id)a3 animated:(BOOL)a4;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMTransientImageWell

- (CAMTransientImageWell)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = CAMTransientImageWell;
  v3 = [(CAMTransientImageWell *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_autoStashesImages = 1;
    v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel__handleTap_];
    tapGestureRecognizer = v4->__tapGestureRecognizer;
    v4->__tapGestureRecognizer = v5;

    [(UITapGestureRecognizer *)v4->__tapGestureRecognizer setDelegate:v4];
    [(CAMTransientImageWell *)v4 addGestureRecognizer:v4->__tapGestureRecognizer];
    v7 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:v4 action:sel__handleUnstashSwipe_];
    unstashGestureRecognizer = v4->__unstashGestureRecognizer;
    v4->__unstashGestureRecognizer = v7;

    [(UISwipeGestureRecognizer *)v4->__unstashGestureRecognizer setDelegate:v4];
    [(UISwipeGestureRecognizer *)v4->__unstashGestureRecognizer setDirection:1];
    [(CAMTransientImageWell *)v4 addGestureRecognizer:v4->__unstashGestureRecognizer];
    v9 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:v4 action:sel__handleStashSwipe_];
    stashGestureRecognizer = v4->__stashGestureRecognizer;
    v4->__stashGestureRecognizer = v9;

    [(UISwipeGestureRecognizer *)v4->__stashGestureRecognizer setDelegate:v4];
    [(UISwipeGestureRecognizer *)v4->__stashGestureRecognizer setDirection:2];
    [(CAMTransientImageWell *)v4 addGestureRecognizer:v4->__stashGestureRecognizer];
    v11 = v4;
  }

  return v4;
}

- (void)_setStashed:(BOOL)a3 animated:(BOOL)a4
{
  if (self->__stashed != a3)
  {
    v8[7] = v4;
    v8[8] = v5;
    v6 = a4;
    self->__stashed = a3;
    [(CAMTransientImageWell *)self setNeedsLayout];
    if (v6)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __46__CAMTransientImageWell__setStashed_animated___block_invoke;
      v8[3] = &unk_1E76F77B0;
      v8[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v8 options:0 animations:0.3 completion:0.0];
    }
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CAMTransientImageWell *)self _imageView];

  if (v8 && (-[CAMTransientImageWell _imageView](self, "_imageView"), v9 = objc_claimAutoreleasedReturnValue(), [v9 frame], v15.x = x, v15.y = y, v10 = CGRectContainsPoint(v16, v15), v9, v10))
  {
    v13.receiver = self;
    v13.super_class = CAMTransientImageWell;
    v11 = [(CAMTransientImageWell *)&v13 hitTest:v7 withEvent:x, y];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CAMTransientImageWell;
  [(CAMTransientImageWell *)&v14 layoutSubviews];
  v3 = [(CAMTransientImageWell *)self _imageView];
  [(CAMTransientImageWell *)self _unorientedFrameForImageView:v3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CAMTransientImageWell *)self _imageView];
  CAMViewSetBoundsAndCenterForFrame(v12, v5, v7, v9, v11);

  v13 = [(CAMTransientImageWell *)self _imageView];
  [CAMView rotateView:v13 toInterfaceOrientation:[(CAMTransientImageWell *)self orientation] animated:0];
}

- (CGRect)_unorientedFrameForImageView:(id)a3
{
  v4 = a3;
  [(CAMTransientImageWell *)self _imageViewMaxSize];
  v5 = [v4 image];

  [v5 size];
  _UIScaleTransformForAspectFitOfSizeInTargetSize();
  [(CAMTransientImageWell *)self _imageViewSpawnPoint];
  if ([(CAMTransientImageWell *)self _isStashed])
  {
    [(CAMTransientImageWell *)self orientation];
    [(CAMTransientImageWell *)self _imageViewStashPoint:0];
  }

  UIRectCenteredAboutPoint();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)_handleTap:(id)a3
{
  if ([(CAMTransientImageWell *)self _isStashed])
  {
    [(CAMTransientImageWell *)self _setStashed:0 animated:1];
    v4 = [(CAMTransientImageWell *)self delegate];
    [v4 transientImageWellDidGestureToUnstash:self];

    if ([(CAMTransientImageWell *)self autoStashesImages])
    {

      [(CAMTransientImageWell *)self _restartAutoStashTimerWithDuration:2.3];
    }
  }

  else
  {
    v5 = [(CAMTransientImageWell *)self delegate];
    [v5 transientImageWellDidGestureToPresentCameraRoll:self];
  }
}

- (void)_handleUnstashSwipe:(id)a3
{
  if ([(CAMTransientImageWell *)self _isStashed])
  {
    [(CAMTransientImageWell *)self _setStashed:0 animated:1];
    v4 = [(CAMTransientImageWell *)self delegate];
    [v4 transientImageWellDidGestureToUnstash:self];

    if ([(CAMTransientImageWell *)self autoStashesImages])
    {

      [(CAMTransientImageWell *)self _restartAutoStashTimerWithDuration:2.3];
    }
  }
}

- (void)_handleStashSwipe:(id)a3
{
  if (![(CAMTransientImageWell *)self _isStashed])
  {
    [(CAMTransientImageWell *)self _setStashed:1 animated:1];
    v4 = [(CAMTransientImageWell *)self delegate];
    [v4 transientImageWellDidGestureToStash:self];
  }
}

- (CGSize)_imageViewMaxSize
{
  [(CAMTransientImageWell *)self bounds];
  v4 = v3;
  [(CAMTransientImageWell *)self bounds];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (CGSize)_imageViewSizeForContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(CAMTransientImageWell *)self _imageViewMaxSize];
  _UIScaleTransformForAspectFitOfSizeInTargetSize();
  v3 = vmlaq_n_f64(vmulq_n_f64(0, height), 0, width);
  v4 = v3.f64[1];
  result.width = v3.f64[0];
  result.height = v4;
  return result;
}

- (CGPoint)_imageViewSpawnPoint
{
  [(CAMTransientImageWell *)self bounds];
  v4 = v3;
  [(CAMTransientImageWell *)self bounds];
  v6 = v4 - v5;
  [(CAMTransientImageWell *)self bounds];
  v9 = v6 + v8 + v7 * 0.5;
  [(CAMTransientImageWell *)self bounds];
  v12 = v11 + v10 * 0.5;
  v13 = v9;
  result.y = v12;
  result.x = v13;
  return result;
}

- (CGPoint)_imageViewStashPoint
{
  [(CAMTransientImageWell *)self _imageViewSpawnPoint];
  v4 = v3;
  [(CAMTransientImageWell *)self bounds];
  v6 = -(v5 * 0.5 + -10.0);
  v7 = v4;
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)_restartAutoStashTimerWithDuration:(double)a3
{
  [(CAMTransientImageWell *)self _cancelAutoStashTimer];
  v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__handleAutoStashTimerFired_ selector:0 userInfo:0 repeats:a3];
  [(CAMTransientImageWell *)self set_autoStashTimer:v5];
}

- (void)_handleAutoStashTimerFired:(id)a3
{
  v4 = a3;
  v5 = [(CAMTransientImageWell *)self _autoStashTimer];

  if (v5 == v4)
  {
    v6 = [(CAMTransientImageWell *)self _imageView];
    if (v6)
    {
      v7 = v6;
      v8 = [(CAMTransientImageWell *)self _isStashed];

      if (!v8)
      {

        [(CAMTransientImageWell *)self _setStashed:1 animated:1];
      }
    }
  }
}

- (void)_cancelAutoStashTimer
{
  v3 = [(CAMTransientImageWell *)self _autoStashTimer];

  if (v3)
  {
    v4 = [(CAMTransientImageWell *)self _autoStashTimer];
    [v4 invalidate];

    [(CAMTransientImageWell *)self set_autoStashTimer:0];
  }
}

- (void)_dismissImageAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMTransientImageWell *)self _imageView];

  if (v5)
  {
    v6 = [(CAMTransientImageWell *)self _imageView];
    [(CAMTransientImageWell *)self _dismissImageView:v6 animated:v3];
  }

  [(CAMTransientImageWell *)self _setImageView:0];

  [(CAMTransientImageWell *)self _setStashed:0 animated:v3];
}

- (void)_dismissImageView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    [(CAMTransientImageWell *)self _imageViewSpawnPoint];
    if (v4)
    {
      v9 = v7;
      v10 = v8;
      v11 = MEMORY[0x1E69DD250];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __52__CAMTransientImageWell__dismissImageView_animated___block_invoke;
      v14[3] = &unk_1E76FA580;
      v15 = v6;
      v16 = v9;
      v17 = v10;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __52__CAMTransientImageWell__dismissImageView_animated___block_invoke_2;
      v12[3] = &unk_1E76F7988;
      v13 = v15;
      [v11 animateWithDuration:0 delay:v14 usingSpringWithDamping:v12 initialSpringVelocity:0.4 options:0.0 animations:0.9 completion:0.0];
    }

    else
    {
      [v6 removeFromSuperview];
    }
  }
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    v8[7] = v4;
    v8[8] = v5;
    v6 = a4;
    self->_orientation = a3;
    [(CAMTransientImageWell *)self setNeedsLayout];
    if (v6)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __49__CAMTransientImageWell_setOrientation_animated___block_invoke;
      v8[3] = &unk_1E76F77B0;
      v8[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v8 options:0 animations:0.3 completion:0.0];
    }
  }
}

- (void)setAutoStashesImages:(BOOL)a3
{
  if (self->_autoStashesImages != a3)
  {
    self->_autoStashesImages = a3;
    if (a3)
    {
      [(CAMTransientImageWell *)self _restartAutoStashTimer];
    }

    else
    {
      [(CAMTransientImageWell *)self _cancelAutoStashTimer];
    }
  }
}

- (UIImage)image
{
  v2 = [(CAMTransientImageWell *)self _imageView];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(CAMTransientImageWell *)self _dismissImageAnimated:1];
  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];

  [(CAMTransientImageWell *)self _setImageView:v7];
  v8 = [(CAMTransientImageWell *)self _imageView];
  [(CAMTransientImageWell *)self addSubview:v8];

  [(CAMTransientImageWell *)self layoutIfNeeded];
  v9 = *MEMORY[0x1E69796E8];
  v10 = [(CAMTransientImageWell *)self _imageView];
  v11 = [v10 layer];
  [v11 setCornerCurve:v9];

  v12 = [(CAMTransientImageWell *)self _imageView];
  v13 = [v12 layer];
  [v13 setCornerRadius:4.0];

  v14 = [(CAMTransientImageWell *)self _imageView];
  v15 = [v14 layer];
  [v15 setMasksToBounds:1];

  if (v4)
  {
    memset(&v24, 0, sizeof(v24));
    v16 = [(CAMTransientImageWell *)self _imageView];
    v17 = v16;
    if (v16)
    {
      [v16 transform];
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
    }

    v22 = v24;
    CGAffineTransformScale(&v23, &v22, 0.0, 0.0);
    v18 = [(CAMTransientImageWell *)self _imageView];
    v22 = v23;
    [v18 setTransform:&v22];

    v19 = [(CAMTransientImageWell *)self _imageView];
    [v19 setAlpha:0.0];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v21 = v24;
    v20[2] = __43__CAMTransientImageWell_setImage_animated___block_invoke;
    v20[3] = &unk_1E76FA5A8;
    v20[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v20 usingSpringWithDamping:0 initialSpringVelocity:0.25 options:0.0 animations:0.9 completion:0.5];
    if ([(CAMTransientImageWell *)self autoStashesImages])
    {
      [(CAMTransientImageWell *)self _restartAutoStashTimerWithDuration:2.25];
    }
  }

  else if ([(CAMTransientImageWell *)self autoStashesImages])
  {

    [(CAMTransientImageWell *)self _restartAutoStashTimer];
  }
}

void __43__CAMTransientImageWell_setImage_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _imageView];
  [v2 setTransform:&v4];

  v3 = [*(a1 + 32) _imageView];
  [v3 setAlpha:1.0];
}

- (CGRect)imageFrame
{
  v2 = [(CAMTransientImageWell *)self _imageView];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)currentImageHidden
{
  v2 = [(CAMTransientImageWell *)self _imageView];
  v3 = [v2 isHidden];

  return v3;
}

- (void)setCurrentImageHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(CAMTransientImageWell *)self _imageView];
  [v4 setHidden:v3];
}

- (CAMTransientImageWellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end