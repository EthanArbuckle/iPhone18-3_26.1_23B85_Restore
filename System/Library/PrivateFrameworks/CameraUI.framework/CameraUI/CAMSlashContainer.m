@interface CAMSlashContainer
- (CAMSlashContainer)initWithFrame:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)slashSize;
- (UIEdgeInsets)alignmentRectInsets;
- (void)_updateOrientationAnimated:(BOOL)a3;
- (void)_updateSlashAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setSlashed:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CAMSlashContainer

- (CAMSlashContainer)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CAMSlashContainer;
  v3 = [(CAMSlashContainer *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v2 = [(CAMSlashContainer *)self contentView];
  [v2 intrinsicContentSize];
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
  v2 = [(CAMSlashContainer *)self contentView];
  [v2 alignmentRectInsets];
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
  v11 = [(CAMSlashContainer *)self traitCollection];
  [v11 displayScale];

  v12 = [(CAMSlashContainer *)self contentView];
  CAMViewSetBoundsAndCenterForFrame(v12, v4, v6, v8, v10);

  v13 = [(CAMSlashContainer *)self _slashView];
  if (v13)
  {
    v14 = v13;
    v15 = [(CAMSlashContainer *)self _slashMaskView];

    if (v15)
    {
      v16 = [(CAMSlashContainer *)self _slashMaskView];
      CAMViewSetBoundsAndCenterForFrame(v16, v4, v6, v8, v10);

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
      v29 = [(CAMSlashContainer *)self _slashView];
      [v29 setCenter:{v26, v28}];
      [v29 setBounds:{v18, v20, v22, v24}];
      [(CAMSlashContainer *)self _updateSlashAnimated:0];
    }
  }
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    [(CAMSlashContainer *)self _updateOrientationAnimated:a4];
  }
}

- (void)_updateOrientationAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMSlashContainer *)self orientation];
  v6 = [(CAMSlashContainer *)self contentView];
  [CAMView rotateView:v6 toInterfaceOrientation:v5 animated:v3];

  v7 = [(CAMSlashContainer *)self _slashView];
  [CAMView rotateView:v7 toInterfaceOrientation:v5 animated:v3];
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v10 = v5;
    v7 = [(UIView *)contentView superview];

    if (v7 == self)
    {
      [(UIView *)self->_contentView removeFromSuperview];
    }

    v8 = [(CAMSlashContainer *)self _slashMaskView];
    v9 = [(UIView *)self->_contentView maskView];

    if (v9 == v8)
    {
      [(UIView *)self->_contentView setMaskView:0];
    }

    objc_storeStrong(&self->_contentView, a3);
    [(CAMSlashContainer *)self addSubview:v10];
    [(UIView *)v10 setMaskView:v8];
    [(CAMSlashContainer *)self _updateOrientationAnimated:0];

    v5 = v10;
  }

  MEMORY[0x1EEE66BB8](contentView, v5);
}

- (void)setSlashed:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_slashed != a3)
  {
    v4 = a4;
    v5 = a3;
    v9 = [(CAMSlashContainer *)self _slashView];
    v7 = [(CAMSlashContainer *)self _slashMaskView];
    if (v5 && !v9 && !v7)
    {
      v7 = objc_alloc_init(CAMSlashMaskView);
      v9 = objc_alloc_init(CAMSlashView);
      [(CAMSlashContainer *)self _setSlashView:v9];
      [(CAMSlashContainer *)self _setSlashMaskView:v7];
      [(CAMSlashContainer *)self _updateOrientationAnimated:0];
      v8 = [(CAMSlashContainer *)self contentView];
      [v8 setMaskView:v7];

      [(CAMSlashContainer *)self addSubview:v9];
      [(CAMSlashContainer *)self layoutIfNeeded];
    }

    self->_slashed = v5;
    [(CAMSlashContainer *)self _updateSlashAnimated:v4];
  }
}

- (void)_updateSlashAnimated:(BOOL)a3
{
  v3 = a3;
  v7 = [(CAMSlashContainer *)self _slashView];
  v5 = [(CAMSlashContainer *)self _slashMaskView];
  v6 = [(CAMSlashContainer *)self isSlashed];
  [v7 bounds];
  [v5 convertRect:v7 fromView:?];
  [v5 setSlashBounds:v3 animated:?];
  [v7 setVisible:v6 animated:v3];
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