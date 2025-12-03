@interface CAMTransientImageWell
- (BOOL)currentImageHidden;
- (CAMTransientImageWell)initWithFrame:(CGRect)frame;
- (CAMTransientImageWellDelegate)delegate;
- (CGPoint)_imageViewSpawnPoint;
- (CGPoint)_imageViewStashPoint;
- (CGRect)_unorientedFrameForImageView:(id)view;
- (CGRect)imageFrame;
- (CGSize)_imageViewMaxSize;
- (CGSize)_imageViewSizeForContentSize:(CGSize)size;
- (UIImage)image;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_cancelAutoStashTimer;
- (void)_dismissImageAnimated:(BOOL)animated;
- (void)_dismissImageView:(id)view animated:(BOOL)animated;
- (void)_handleAutoStashTimerFired:(id)fired;
- (void)_handleStashSwipe:(id)swipe;
- (void)_handleTap:(id)tap;
- (void)_handleUnstashSwipe:(id)swipe;
- (void)_restartAutoStashTimerWithDuration:(double)duration;
- (void)_setStashed:(BOOL)stashed animated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setAutoStashesImages:(BOOL)images;
- (void)setCurrentImageHidden:(BOOL)hidden;
- (void)setImage:(id)image animated:(BOOL)animated;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
@end

@implementation CAMTransientImageWell

- (CAMTransientImageWell)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = CAMTransientImageWell;
  v3 = [(CAMTransientImageWell *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)_setStashed:(BOOL)stashed animated:(BOOL)animated
{
  if (self->__stashed != stashed)
  {
    v8[7] = v4;
    v8[8] = v5;
    animatedCopy = animated;
    self->__stashed = stashed;
    [(CAMTransientImageWell *)self setNeedsLayout];
    if (animatedCopy)
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  _imageView = [(CAMTransientImageWell *)self _imageView];

  if (_imageView && (-[CAMTransientImageWell _imageView](self, "_imageView"), v9 = objc_claimAutoreleasedReturnValue(), [v9 frame], v15.x = x, v15.y = y, v10 = CGRectContainsPoint(v16, v15), v9, v10))
  {
    v13.receiver = self;
    v13.super_class = CAMTransientImageWell;
    v11 = [(CAMTransientImageWell *)&v13 hitTest:eventCopy withEvent:x, y];
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
  _imageView = [(CAMTransientImageWell *)self _imageView];
  [(CAMTransientImageWell *)self _unorientedFrameForImageView:_imageView];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  _imageView2 = [(CAMTransientImageWell *)self _imageView];
  CAMViewSetBoundsAndCenterForFrame(_imageView2, v5, v7, v9, v11);

  _imageView3 = [(CAMTransientImageWell *)self _imageView];
  [CAMView rotateView:_imageView3 toInterfaceOrientation:[(CAMTransientImageWell *)self orientation] animated:0];
}

- (CGRect)_unorientedFrameForImageView:(id)view
{
  viewCopy = view;
  [(CAMTransientImageWell *)self _imageViewMaxSize];
  image = [viewCopy image];

  [image size];
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

- (void)_handleTap:(id)tap
{
  if ([(CAMTransientImageWell *)self _isStashed])
  {
    [(CAMTransientImageWell *)self _setStashed:0 animated:1];
    delegate = [(CAMTransientImageWell *)self delegate];
    [delegate transientImageWellDidGestureToUnstash:self];

    if ([(CAMTransientImageWell *)self autoStashesImages])
    {

      [(CAMTransientImageWell *)self _restartAutoStashTimerWithDuration:2.3];
    }
  }

  else
  {
    delegate2 = [(CAMTransientImageWell *)self delegate];
    [delegate2 transientImageWellDidGestureToPresentCameraRoll:self];
  }
}

- (void)_handleUnstashSwipe:(id)swipe
{
  if ([(CAMTransientImageWell *)self _isStashed])
  {
    [(CAMTransientImageWell *)self _setStashed:0 animated:1];
    delegate = [(CAMTransientImageWell *)self delegate];
    [delegate transientImageWellDidGestureToUnstash:self];

    if ([(CAMTransientImageWell *)self autoStashesImages])
    {

      [(CAMTransientImageWell *)self _restartAutoStashTimerWithDuration:2.3];
    }
  }
}

- (void)_handleStashSwipe:(id)swipe
{
  if (![(CAMTransientImageWell *)self _isStashed])
  {
    [(CAMTransientImageWell *)self _setStashed:1 animated:1];
    delegate = [(CAMTransientImageWell *)self delegate];
    [delegate transientImageWellDidGestureToStash:self];
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

- (CGSize)_imageViewSizeForContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)_restartAutoStashTimerWithDuration:(double)duration
{
  [(CAMTransientImageWell *)self _cancelAutoStashTimer];
  v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__handleAutoStashTimerFired_ selector:0 userInfo:0 repeats:duration];
  [(CAMTransientImageWell *)self set_autoStashTimer:v5];
}

- (void)_handleAutoStashTimerFired:(id)fired
{
  firedCopy = fired;
  _autoStashTimer = [(CAMTransientImageWell *)self _autoStashTimer];

  if (_autoStashTimer == firedCopy)
  {
    _imageView = [(CAMTransientImageWell *)self _imageView];
    if (_imageView)
    {
      v7 = _imageView;
      _isStashed = [(CAMTransientImageWell *)self _isStashed];

      if (!_isStashed)
      {

        [(CAMTransientImageWell *)self _setStashed:1 animated:1];
      }
    }
  }
}

- (void)_cancelAutoStashTimer
{
  _autoStashTimer = [(CAMTransientImageWell *)self _autoStashTimer];

  if (_autoStashTimer)
  {
    _autoStashTimer2 = [(CAMTransientImageWell *)self _autoStashTimer];
    [_autoStashTimer2 invalidate];

    [(CAMTransientImageWell *)self set_autoStashTimer:0];
  }
}

- (void)_dismissImageAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _imageView = [(CAMTransientImageWell *)self _imageView];

  if (_imageView)
  {
    _imageView2 = [(CAMTransientImageWell *)self _imageView];
    [(CAMTransientImageWell *)self _dismissImageView:_imageView2 animated:animatedCopy];
  }

  [(CAMTransientImageWell *)self _setImageView:0];

  [(CAMTransientImageWell *)self _setStashed:0 animated:animatedCopy];
}

- (void)_dismissImageView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  if (viewCopy)
  {
    [(CAMTransientImageWell *)self _imageViewSpawnPoint];
    if (animatedCopy)
    {
      v9 = v7;
      v10 = v8;
      v11 = MEMORY[0x1E69DD250];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __52__CAMTransientImageWell__dismissImageView_animated___block_invoke;
      v14[3] = &unk_1E76FA580;
      v15 = viewCopy;
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
      [viewCopy removeFromSuperview];
    }
  }
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    v8[7] = v4;
    v8[8] = v5;
    animatedCopy = animated;
    self->_orientation = orientation;
    [(CAMTransientImageWell *)self setNeedsLayout];
    if (animatedCopy)
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

- (void)setAutoStashesImages:(BOOL)images
{
  if (self->_autoStashesImages != images)
  {
    self->_autoStashesImages = images;
    if (images)
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
  _imageView = [(CAMTransientImageWell *)self _imageView];
  image = [_imageView image];

  return image;
}

- (void)setImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  [(CAMTransientImageWell *)self _dismissImageAnimated:1];
  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];

  [(CAMTransientImageWell *)self _setImageView:v7];
  _imageView = [(CAMTransientImageWell *)self _imageView];
  [(CAMTransientImageWell *)self addSubview:_imageView];

  [(CAMTransientImageWell *)self layoutIfNeeded];
  v9 = *MEMORY[0x1E69796E8];
  _imageView2 = [(CAMTransientImageWell *)self _imageView];
  layer = [_imageView2 layer];
  [layer setCornerCurve:v9];

  _imageView3 = [(CAMTransientImageWell *)self _imageView];
  layer2 = [_imageView3 layer];
  [layer2 setCornerRadius:4.0];

  _imageView4 = [(CAMTransientImageWell *)self _imageView];
  layer3 = [_imageView4 layer];
  [layer3 setMasksToBounds:1];

  if (animatedCopy)
  {
    memset(&v24, 0, sizeof(v24));
    _imageView5 = [(CAMTransientImageWell *)self _imageView];
    v17 = _imageView5;
    if (_imageView5)
    {
      [_imageView5 transform];
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
    }

    v22 = v24;
    CGAffineTransformScale(&v23, &v22, 0.0, 0.0);
    _imageView6 = [(CAMTransientImageWell *)self _imageView];
    v22 = v23;
    [_imageView6 setTransform:&v22];

    _imageView7 = [(CAMTransientImageWell *)self _imageView];
    [_imageView7 setAlpha:0.0];

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
  _imageView = [(CAMTransientImageWell *)self _imageView];
  [_imageView frame];
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
  _imageView = [(CAMTransientImageWell *)self _imageView];
  isHidden = [_imageView isHidden];

  return isHidden;
}

- (void)setCurrentImageHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _imageView = [(CAMTransientImageWell *)self _imageView];
  [_imageView setHidden:hiddenCopy];
}

- (CAMTransientImageWellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end