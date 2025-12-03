@interface CAMSlashContainer
- (CAMSlashContainer)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
- (CGSize)slashSize;
- (UIEdgeInsets)alignmentRectInsets;
- (void)_updateOrientationAnimated:(BOOL)animated;
- (void)_updateSlashAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setSlashed:(BOOL)slashed animated:(BOOL)animated;
@end

@implementation CAMSlashContainer

- (CAMSlashContainer)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CAMSlashContainer;
  v3 = [(CAMSlashContainer *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_orientation = 1;
    [(CAMSlashContainer *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  contentView = [(CAMSlashContainer *)self contentView];
  [contentView intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  contentView = [(CAMSlashContainer *)self contentView];
  [contentView alignmentRectInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)layoutSubviews
{
  [(CAMSlashContainer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  UIRectGetCenter();
  traitCollection = [(CAMSlashContainer *)self traitCollection];
  [traitCollection displayScale];

  contentView = [(CAMSlashContainer *)self contentView];
  CAMViewSetBoundsAndCenterForFrame(contentView, v4, v6, v8, v10);

  _slashView = [(CAMSlashContainer *)self _slashView];
  if (_slashView)
  {
    v14 = _slashView;
    _slashMaskView = [(CAMSlashContainer *)self _slashMaskView];

    if (_slashMaskView)
    {
      _slashMaskView2 = [(CAMSlashContainer *)self _slashMaskView];
      CAMViewSetBoundsAndCenterForFrame(_slashMaskView2, v4, v6, v8, v10);

      [(CAMSlashContainer *)self slashSize];
      CEKRectWithSize();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      UIRectCenteredAboutPointScale();
      UIRectGetCenter();
      v26 = v25;
      v28 = v27;
      _slashView2 = [(CAMSlashContainer *)self _slashView];
      [_slashView2 setCenter:{v26, v28}];
      [_slashView2 setBounds:{v18, v20, v22, v24}];
      [(CAMSlashContainer *)self _updateSlashAnimated:0];
    }
  }
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    [(CAMSlashContainer *)self _updateOrientationAnimated:animated];
  }
}

- (void)_updateOrientationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  orientation = [(CAMSlashContainer *)self orientation];
  contentView = [(CAMSlashContainer *)self contentView];
  [CAMView rotateView:contentView toInterfaceOrientation:orientation animated:animatedCopy];

  _slashView = [(CAMSlashContainer *)self _slashView];
  [CAMView rotateView:_slashView toInterfaceOrientation:orientation animated:animatedCopy];
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v10 = viewCopy;
    superview = [(UIView *)contentView superview];

    if (superview == self)
    {
      [(UIView *)self->_contentView removeFromSuperview];
    }

    _slashMaskView = [(CAMSlashContainer *)self _slashMaskView];
    maskView = [(UIView *)self->_contentView maskView];

    if (maskView == _slashMaskView)
    {
      [(UIView *)self->_contentView setMaskView:0];
    }

    objc_storeStrong(&self->_contentView, view);
    [(CAMSlashContainer *)self addSubview:v10];
    [(UIView *)v10 setMaskView:_slashMaskView];
    [(CAMSlashContainer *)self _updateOrientationAnimated:0];

    viewCopy = v10;
  }

  MEMORY[0x1EEE66BB8](contentView, viewCopy);
}

- (void)setSlashed:(BOOL)slashed animated:(BOOL)animated
{
  if (self->_slashed != slashed)
  {
    animatedCopy = animated;
    slashedCopy = slashed;
    _slashView = [(CAMSlashContainer *)self _slashView];
    _slashMaskView = [(CAMSlashContainer *)self _slashMaskView];
    if (slashedCopy && !_slashView && !_slashMaskView)
    {
      _slashMaskView = objc_alloc_init(CAMSlashMaskView);
      _slashView = objc_alloc_init(CAMSlashView);
      [(CAMSlashContainer *)self _setSlashView:_slashView];
      [(CAMSlashContainer *)self _setSlashMaskView:_slashMaskView];
      [(CAMSlashContainer *)self _updateOrientationAnimated:0];
      contentView = [(CAMSlashContainer *)self contentView];
      [contentView setMaskView:_slashMaskView];

      [(CAMSlashContainer *)self addSubview:_slashView];
      [(CAMSlashContainer *)self layoutIfNeeded];
    }

    self->_slashed = slashedCopy;
    [(CAMSlashContainer *)self _updateSlashAnimated:animatedCopy];
  }
}

- (void)_updateSlashAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _slashView = [(CAMSlashContainer *)self _slashView];
  _slashMaskView = [(CAMSlashContainer *)self _slashMaskView];
  isSlashed = [(CAMSlashContainer *)self isSlashed];
  [_slashView bounds];
  [_slashMaskView convertRect:_slashView fromView:?];
  [_slashMaskView setSlashBounds:animatedCopy animated:?];
  [_slashView setVisible:isSlashed animated:animatedCopy];
}

- (CGSize)slashSize
{
  width = self->_slashSize.width;
  height = self->_slashSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end