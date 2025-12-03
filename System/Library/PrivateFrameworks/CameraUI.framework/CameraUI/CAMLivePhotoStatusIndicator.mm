@interface CAMLivePhotoStatusIndicator
- (CAMLivePhotoStatusIndicator)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
- (id)imageNameForAXHUD;
- (void)_updateTintColor;
- (void)layoutSubviews;
- (void)setLivePhotoMode:(int64_t)mode animated:(BOOL)animated;
- (void)startAnimating;
- (void)stopAnimating;
@end

@implementation CAMLivePhotoStatusIndicator

- (CAMLivePhotoStatusIndicator)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CAMLivePhotoStatusIndicator;
  v3 = [(CAMControlStatusIndicator *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(CAMLivePhotoBloomView);
    bloomView = v3->__bloomView;
    v3->__bloomView = v4;

    slashContainerView = [(CAMControlStatusIndicator *)v3 slashContainerView];
    [slashContainerView addSubview:v3->__bloomView];

    [(CAMLivePhotoStatusIndicator *)v3 _updateTintColor];
    [(CAMLivePhotoStatusIndicator *)v3 setAccessibilityIdentifier:@"StatusBarLivePhotoButton"];
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CAMLivePhotoStatusIndicator;
  [(CAMControlStatusIndicator *)&v4 layoutSubviews];
  _bloomView = [(CAMLivePhotoStatusIndicator *)self _bloomView];
  [_bloomView intrinsicContentSize];
  [(CAMLivePhotoStatusIndicator *)self bounds];
  UIRectGetCenter();
  UIRectCenteredAboutPointScale();
  [_bloomView setFrame:?];
}

- (void)setLivePhotoMode:(int64_t)mode animated:(BOOL)animated
{
  if (self->_livePhotoMode != mode)
  {
    animatedCopy = animated;
    self->_livePhotoMode = mode;
    [(CAMLivePhotoStatusIndicator *)self _updateTintColor];
    [(CAMLivePhotoStatusIndicator *)self stopAnimating];

    [(CAMControlStatusIndicator *)self updateImageAnimated:animatedCopy];
  }
}

- (void)startAnimating
{
  _bloomView = [(CAMLivePhotoStatusIndicator *)self _bloomView];
  [_bloomView animateBloom];
}

- (void)stopAnimating
{
  _bloomView = [(CAMLivePhotoStatusIndicator *)self _bloomView];
  [_bloomView stopAnimating];
}

- (CGSize)intrinsicContentSize
{
  v2 = 25.0 - CAMPixelWidthForView(self);
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)imageNameForAXHUD
{
  if ([(CAMLivePhotoStatusIndicator *)self shouldShowSlashForCurrentState])
  {
    v2 = @"livephoto.slash";
  }

  else
  {
    v2 = @"livephoto";
  }

  return v2;
}

- (void)_updateTintColor
{
  if ([(CAMLivePhotoStatusIndicator *)self shouldUseActiveTintForCurrentState])
  {
    [MEMORY[0x1E69DC888] systemYellowColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v3 = ;
  [(CAMLivePhotoBloomView *)self->__bloomView setTintColor:v3];
}

@end