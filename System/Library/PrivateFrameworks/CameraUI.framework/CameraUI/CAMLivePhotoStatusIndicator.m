@interface CAMLivePhotoStatusIndicator
- (CAMLivePhotoStatusIndicator)initWithFrame:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (id)imageNameForAXHUD;
- (void)_updateTintColor;
- (void)layoutSubviews;
- (void)setLivePhotoMode:(int64_t)a3 animated:(BOOL)a4;
- (void)startAnimating;
- (void)stopAnimating;
@end

@implementation CAMLivePhotoStatusIndicator

- (CAMLivePhotoStatusIndicator)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CAMLivePhotoStatusIndicator;
  v3 = [(CAMControlStatusIndicator *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(CAMLivePhotoBloomView);
    bloomView = v3->__bloomView;
    v3->__bloomView = v4;

    v6 = [(CAMControlStatusIndicator *)v3 slashContainerView];
    [v6 addSubview:v3->__bloomView];

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
  v3 = [(CAMLivePhotoStatusIndicator *)self _bloomView];
  [v3 intrinsicContentSize];
  [(CAMLivePhotoStatusIndicator *)self bounds];
  UIRectGetCenter();
  UIRectCenteredAboutPointScale();
  [v3 setFrame:?];
}

- (void)setLivePhotoMode:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_livePhotoMode != a3)
  {
    v5 = a4;
    self->_livePhotoMode = a3;
    [(CAMLivePhotoStatusIndicator *)self _updateTintColor];
    [(CAMLivePhotoStatusIndicator *)self stopAnimating];

    [(CAMControlStatusIndicator *)self updateImageAnimated:v5];
  }
}

- (void)startAnimating
{
  v2 = [(CAMLivePhotoStatusIndicator *)self _bloomView];
  [v2 animateBloom];
}

- (void)stopAnimating
{
  v2 = [(CAMLivePhotoStatusIndicator *)self _bloomView];
  [v2 stopAnimating];
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