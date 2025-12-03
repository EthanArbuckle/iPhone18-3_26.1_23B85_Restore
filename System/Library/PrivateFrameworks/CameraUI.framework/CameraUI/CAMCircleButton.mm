@interface CAMCircleButton
- (CAMCircleButton)initWithFrame:(CGRect)frame;
- (id)_createCircleImageForContentSize:(id)size;
- (id)imageNameForCurrentState;
- (int64_t)orientation;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_updateBackgroundImage;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setOrientation:(int64_t)orientation;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)updateImage;
- (void)updateSlashAnimated:(BOOL)animated;
- (void)updateTintColors;
@end

@implementation CAMCircleButton

- (CAMCircleButton)initWithFrame:(CGRect)frame
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CAMCircleButton;
  v3 = [(CAMCircleButton *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    p_backgroundView = &v3->__backgroundView;
    backgroundView = v3->__backgroundView;
    v3->__backgroundView = v4;

    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->__imageView;
    v3->__imageView = v7;

    v9 = objc_alloc_init(CAMSlashContainer);
    slashView = v3->__slashView;
    v3->__slashView = v9;

    [(CAMSlashContainer *)v3->__slashView setContentView:v3->__imageView];
    if ([(CAMCircleButton *)v3 useThinMaterialBackground])
    {
      thinMaterialView = [MEMORY[0x1E69DD250] thinMaterialView];
      p_backgroundView = &v3->__materialEffectBackgroundView;
      materialEffectBackgroundView = v3->__materialEffectBackgroundView;
      v3->__materialEffectBackgroundView = thinMaterialView;

      [(UIView *)v3->__materialEffectBackgroundView setClipsToBounds:1];
      [(UIView *)v3->__materialEffectBackgroundView setUserInteractionEnabled:0];
    }

    [(CAMCircleButton *)v3 addSubview:*p_backgroundView];
    [(CAMCircleButton *)v3 addSubview:v3->__slashView];
    [(CAMCircleButton *)v3 updateImage];
    [(CAMCircleButton *)v3 _updateBackgroundImage];
    [(CAMCircleButton *)v3 updateTintColors];
    v17[0] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v14 = [(CAMCircleButton *)v3 registerForTraitChanges:v13 withAction:sel__preferredContentSizeCategoryDidChange];
  }

  return v3;
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = CAMCircleButton;
  [(CAMCircleButton *)&v26 layoutSubviews];
  [(CAMCircleButton *)self bounds];
  UIRectGetCenter();
  _backgroundView = [(CAMCircleButton *)self _backgroundView];
  [_backgroundView intrinsicContentSize];
  CEKRectWithSize();
  v5 = v4;
  UIRectCenteredAboutPointScale();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  _materialEffectBackgroundView = [(CAMCircleButton *)self _materialEffectBackgroundView];
  [_materialEffectBackgroundView setFrame:{v7, v9, v11, v13}];

  _materialEffectBackgroundView2 = [(CAMCircleButton *)self _materialEffectBackgroundView];
  layer = [_materialEffectBackgroundView2 layer];
  [layer setCornerRadius:v5 * 0.5];

  UIRectCenteredAboutPointScale();
  [_backgroundView setFrame:?];
  _slashView = [(CAMCircleButton *)self _slashView];
  CAMViewAlignmentSize(_slashView);
  CEKRectWithSize();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [_slashView setCenter:?];
  [_slashView setBounds:{v19, v21, v23, v25}];
}

- (void)_preferredContentSizeCategoryDidChange
{
  [(CAMCircleButton *)self updateImage];

  [(CAMCircleButton *)self _updateBackgroundImage];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(CAMCircleButton *)self isHighlighted];
  v8.receiver = self;
  v8.super_class = CAMCircleButton;
  [(CAMCircleButton *)&v8 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    _slashView = [(CAMCircleButton *)self _slashView];
    layer = [_slashView layer];
    [CAMAnimationHelper animateLayer:layer forButtonHighlighted:highlightedCopy layoutStyle:3];
  }
}

- (void)_updateBackgroundImage
{
  traitCollection = [(CAMCircleButton *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v7 = [(CAMCircleButton *)self _createCircleImageForContentSize:preferredContentSizeCategory];

  v5 = [v7 imageWithRenderingMode:2];
  _backgroundView = [(CAMCircleButton *)self _backgroundView];
  [_backgroundView setImage:v5];

  [(CAMCircleButton *)self setNeedsLayout];
}

- (void)setOrientation:(int64_t)orientation
{
  _slashView = [(CAMCircleButton *)self _slashView];
  [_slashView setOrientation:orientation];
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  animatedCopy = animated;
  _slashView = [(CAMCircleButton *)self _slashView];
  [_slashView setOrientation:orientation animated:animatedCopy];
}

- (int64_t)orientation
{
  _slashView = [(CAMCircleButton *)self _slashView];
  orientation = [_slashView orientation];

  return orientation;
}

- (void)updateImage
{
  traitCollection = [(CAMCircleButton *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = [CAMZoomButton shouldUseLargeButtonSizeForContentSize:preferredContentSizeCategory];

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v12 = [MEMORY[0x1E69DCAD8] configurationWithScale:v6];
  imageNameForCurrentState = [(CAMCircleButton *)self imageNameForCurrentState];
  v8 = [MEMORY[0x1E69DCAB8] _systemImageNamed:imageNameForCurrentState withConfiguration:v12];
  if (!v8)
  {
    v9 = MEMORY[0x1E69DCAB8];
    v10 = CAMCameraUIFrameworkBundle();
    v8 = [v9 imageNamed:imageNameForCurrentState inBundle:v10];
  }

  _imageView = [(CAMCircleButton *)self _imageView];
  [_imageView setImage:v8];

  [(CAMCircleButton *)self setNeedsLayout];
}

- (void)updateTintColors
{
  if ([(CAMCircleButton *)self shouldUseActiveTintForCurrentState])
  {
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CAMCircleButton *)self activeTintAlphaForCurrentState];
    v7 = [systemYellowColor colorWithAlphaComponent:?];

    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v4 = ;
  _backgroundView = [(CAMCircleButton *)self _backgroundView];
  [_backgroundView setTintColor:v7];

  _slashView = [(CAMCircleButton *)self _slashView];
  [_slashView setTintColor:v4];
}

- (void)updateSlashAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _slashView = [(CAMCircleButton *)self _slashView];
  [_slashView setSlashed:-[CAMCircleButton shouldShowSlashForCurrentState](self animated:{"shouldShowSlashForCurrentState"), animatedCopy}];
}

- (id)imageNameForCurrentState
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D920];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"%@ must be implemented by subclasses", v4}];

  return 0;
}

- (id)_createCircleImageForContentSize:(id)size
{
  [CAMZoomButton circleDiameterForContentSize:size];
  width = v11.width;
  v11.height = v11.width;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
  [v7 setFill];

  v12.origin.x = v5;
  v12.origin.y = v6;
  v12.size.width = width;
  v12.size.height = width;
  CGContextFillEllipseInRect(CurrentContext, v12);
  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

@end