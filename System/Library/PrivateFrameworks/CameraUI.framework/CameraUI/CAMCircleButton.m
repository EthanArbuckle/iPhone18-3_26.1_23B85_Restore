@interface CAMCircleButton
- (CAMCircleButton)initWithFrame:(CGRect)a3;
- (id)_createCircleImageForContentSize:(id)a3;
- (id)imageNameForCurrentState;
- (int64_t)orientation;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_updateBackgroundImage;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)updateImage;
- (void)updateSlashAnimated:(BOOL)a3;
- (void)updateTintColors;
@end

@implementation CAMCircleButton

- (CAMCircleButton)initWithFrame:(CGRect)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CAMCircleButton;
  v3 = [(CAMCircleButton *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
      v11 = [MEMORY[0x1E69DD250] thinMaterialView];
      p_backgroundView = &v3->__materialEffectBackgroundView;
      materialEffectBackgroundView = v3->__materialEffectBackgroundView;
      v3->__materialEffectBackgroundView = v11;

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
  v3 = [(CAMCircleButton *)self _backgroundView];
  [v3 intrinsicContentSize];
  CEKRectWithSize();
  v5 = v4;
  UIRectCenteredAboutPointScale();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(CAMCircleButton *)self _materialEffectBackgroundView];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(CAMCircleButton *)self _materialEffectBackgroundView];
  v16 = [v15 layer];
  [v16 setCornerRadius:v5 * 0.5];

  UIRectCenteredAboutPointScale();
  [v3 setFrame:?];
  v17 = [(CAMCircleButton *)self _slashView];
  CAMViewAlignmentSize(v17);
  CEKRectWithSize();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [v17 setCenter:?];
  [v17 setBounds:{v19, v21, v23, v25}];
}

- (void)_preferredContentSizeCategoryDidChange
{
  [(CAMCircleButton *)self updateImage];

  [(CAMCircleButton *)self _updateBackgroundImage];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMCircleButton *)self isHighlighted];
  v8.receiver = self;
  v8.super_class = CAMCircleButton;
  [(CAMCircleButton *)&v8 setHighlighted:v3];
  if (v5 != v3)
  {
    v6 = [(CAMCircleButton *)self _slashView];
    v7 = [v6 layer];
    [CAMAnimationHelper animateLayer:v7 forButtonHighlighted:v3 layoutStyle:3];
  }
}

- (void)_updateBackgroundImage
{
  v3 = [(CAMCircleButton *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v7 = [(CAMCircleButton *)self _createCircleImageForContentSize:v4];

  v5 = [v7 imageWithRenderingMode:2];
  v6 = [(CAMCircleButton *)self _backgroundView];
  [v6 setImage:v5];

  [(CAMCircleButton *)self setNeedsLayout];
}

- (void)setOrientation:(int64_t)a3
{
  v4 = [(CAMCircleButton *)self _slashView];
  [v4 setOrientation:a3];
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(CAMCircleButton *)self _slashView];
  [v6 setOrientation:a3 animated:v4];
}

- (int64_t)orientation
{
  v2 = [(CAMCircleButton *)self _slashView];
  v3 = [v2 orientation];

  return v3;
}

- (void)updateImage
{
  v3 = [(CAMCircleButton *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = [CAMZoomButton shouldUseLargeButtonSizeForContentSize:v4];

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v12 = [MEMORY[0x1E69DCAD8] configurationWithScale:v6];
  v7 = [(CAMCircleButton *)self imageNameForCurrentState];
  v8 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v7 withConfiguration:v12];
  if (!v8)
  {
    v9 = MEMORY[0x1E69DCAB8];
    v10 = CAMCameraUIFrameworkBundle();
    v8 = [v9 imageNamed:v7 inBundle:v10];
  }

  v11 = [(CAMCircleButton *)self _imageView];
  [v11 setImage:v8];

  [(CAMCircleButton *)self setNeedsLayout];
}

- (void)updateTintColors
{
  if ([(CAMCircleButton *)self shouldUseActiveTintForCurrentState])
  {
    v3 = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CAMCircleButton *)self activeTintAlphaForCurrentState];
    v7 = [v3 colorWithAlphaComponent:?];

    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v4 = ;
  v5 = [(CAMCircleButton *)self _backgroundView];
  [v5 setTintColor:v7];

  v6 = [(CAMCircleButton *)self _slashView];
  [v6 setTintColor:v4];
}

- (void)updateSlashAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMCircleButton *)self _slashView];
  [v5 setSlashed:-[CAMCircleButton shouldShowSlashForCurrentState](self animated:{"shouldShowSlashForCurrentState"), v3}];
}

- (id)imageNameForCurrentState
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D920];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"%@ must be implemented by subclasses", v4}];

  return 0;
}

- (id)_createCircleImageForContentSize:(id)a3
{
  [CAMZoomButton circleDiameterForContentSize:a3];
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