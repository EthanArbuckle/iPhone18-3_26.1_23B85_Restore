@interface CAMControlDrawerButton
+ (CGSize)buttonSize;
+ (id)_backgroundImage;
- (CAMControlDrawerButton)initWithLayoutStyle:(int64_t)style;
- (CGSize)intrinsicContentSize;
- (id)_imageForImageName:(id)name;
- (id)hudItemForAccessibilityHUDManager:(id)manager;
- (id)imageForAXHUD;
- (id)imageForCurrentState;
- (id)imageNameForCurrentState;
- (int64_t)controlType;
- (void)_updateSlashAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)selectedByAccessibilityHUDManager:(id)manager;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)updateImageAnimated:(BOOL)animated;
@end

@implementation CAMControlDrawerButton

+ (id)_backgroundImage
{
  if (_backgroundImage_onceToken != -1)
  {
    +[CAMControlDrawerButton _backgroundImage];
  }

  v3 = _backgroundImage_backgroundImage;

  return v3;
}

void __42__CAMControlDrawerButton__backgroundImage__block_invoke()
{
  v0 = MEMORY[0x1E69DCAB8];
  v4 = CAMCameraUIFrameworkBundle();
  v1 = [v0 imageNamed:@"CAMButtonBackground" inBundle:v4];
  v2 = [v1 imageWithRenderingMode:2];
  v3 = _backgroundImage_backgroundImage;
  _backgroundImage_backgroundImage = v2;
}

+ (CGSize)buttonSize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CAMControlDrawerButton_buttonSize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (buttonSize_onceToken != -1)
  {
    dispatch_once(&buttonSize_onceToken, block);
  }

  v2 = *&buttonSize_size_0;
  v3 = *&buttonSize_size_1;
  result.height = v3;
  result.width = v2;
  return result;
}

void __36__CAMControlDrawerButton_buttonSize__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _backgroundImage];
  [v3 size];
  buttonSize_size_0 = v1;
  buttonSize_size_1 = v2;
}

- (CAMControlDrawerButton)initWithLayoutStyle:(int64_t)style
{
  v20[1] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = CAMControlDrawerButton;
  v4 = [(CAMControlDrawerButton *)&v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_layoutStyle = style;
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v5->__imageView;
    v5->__imageView = v6;

    _backgroundImage = [objc_opt_class() _backgroundImage];
    v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:_backgroundImage];
    backgroundView = v5->__backgroundView;
    v5->__backgroundView = v9;

    [(CAMControlDrawerButton *)v5 addSubview:v5->__backgroundView];
    [(CAMControlDrawerButton *)v5 addSubview:v5->__imageView];
    if ([(CAMControlDrawerButton *)v5 shouldUseSlash])
    {
      v11 = objc_alloc_init(CAMSlashView);
      slashView = v5->__slashView;
      v5->__slashView = v11;

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(CAMSlashView *)v5->__slashView setTintColor:whiteColor];

      [(CAMControlDrawerButton *)v5 addSubview:v5->__slashView];
      v14 = objc_alloc_init(CAMSlashMaskView);
      slashMaskView = v5->__slashMaskView;
      v5->__slashMaskView = v14;

      [(UIImageView *)v5->__imageView setMaskView:v5->__slashMaskView];
    }

    [(CAMControlDrawerButton *)v5 addTarget:v5 action:sel_handleButtonReleased_ forControlEvents:64];
    [(CAMControlDrawerButton *)v5 updateImage];
    [(CAMControlDrawerButton *)v5 setExclusiveTouch:1];
    v20[0] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v17 = [(CAMControlDrawerButton *)v5 registerForTraitChanges:v16 withAction:sel_didChangeContentSize];
  }

  return v5;
}

- (CGSize)intrinsicContentSize
{
  v2 = objc_opt_class();

  [v2 buttonSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = CAMControlDrawerButton;
  [(CAMControlDrawerButton *)&v24 layoutSubviews];
  [(CAMControlDrawerButton *)self bounds];
  [(CAMControlDrawerButton *)self alignmentRectForFrame:?];
  UIRectGetCenter();
  _imageView = [(CAMControlDrawerButton *)self _imageView];
  [_imageView intrinsicContentSize];
  UIRectCenteredAboutPointScale();
  [_imageView frameForAlignmentRect:?];
  CAMViewSetBoundsAndCenterForFrame(_imageView, v4, v5, v6, v7);
  _backgroundView = [(CAMControlDrawerButton *)self _backgroundView];
  [_backgroundView intrinsicContentSize];
  UIRectCenteredAboutPointScale();
  [_backgroundView setFrame:?];
  if ([(CAMControlDrawerButton *)self shouldUseSlash])
  {
    _slashView = [(CAMControlDrawerButton *)self _slashView];
    [_slashView setBounds:{0.0, 0.0, 20.0, 20.0}];

    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    v11 = v10;
    v13 = v12;
    _slashView2 = [(CAMControlDrawerButton *)self _slashView];
    [_slashView2 setCenter:{v11, v13}];

    [_imageView bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    _slashMaskView = [(CAMControlDrawerButton *)self _slashMaskView];
    [_slashMaskView setFrame:{v16, v18, v20, v22}];

    [(CAMControlDrawerButton *)self _updateSlashAnimated:0];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(CAMControlDrawerButton *)self isHighlighted];
  v10.receiver = self;
  v10.super_class = CAMControlDrawerButton;
  [(CAMControlDrawerButton *)&v10 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    if ([(CAMControlDrawerButton *)self shouldScaleImageWhileHighlighted])
    {
      _imageView = [(CAMControlDrawerButton *)self _imageView];
      layer = [_imageView layer];
      [CAMAnimationHelper animateLayer:layer forButtonHighlighted:highlightedCopy layoutStyle:[(CAMControlDrawerButton *)self layoutStyle]];

      _slashView = [(CAMControlDrawerButton *)self _slashView];
      layer2 = [_slashView layer];
      [CAMAnimationHelper animateLayer:layer2 forButtonHighlighted:highlightedCopy layoutStyle:[(CAMControlDrawerButton *)self layoutStyle]];
    }
  }
}

- (id)hudItemForAccessibilityHUDManager:(id)manager
{
  imageForAXHUD = [(CAMControlDrawerButton *)self imageForAXHUD];
  v4 = objc_alloc(MEMORY[0x1E69DC618]);
  v5 = [v4 initWithTitle:0 image:imageForAXHUD imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v5;
}

- (void)selectedByAccessibilityHUDManager:(id)manager
{
  [(CAMControlDrawerButton *)self cancelTouchTracking];

  [(CAMControlDrawerButton *)self sendActionsForControlEvents:64];
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    animatedCopy = animated;
    self->_orientation = orientation;
    _imageView = [(CAMControlDrawerButton *)self _imageView];
    [CAMView rotateView:_imageView toInterfaceOrientation:orientation animated:animatedCopy];

    _slashView = [(CAMControlDrawerButton *)self _slashView];
    [CAMView rotateView:_slashView toInterfaceOrientation:orientation animated:animatedCopy];
  }
}

- (int64_t)controlType
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D920];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"%@ must be implemented by subclasses", v4}];

  return 0;
}

- (void)updateImageAnimated:(BOOL)animated
{
  animatedCopy = animated;
  imageForCurrentState = [(CAMControlDrawerButton *)self imageForCurrentState];
  _imageView = [(CAMControlDrawerButton *)self _imageView];
  [_imageView setImage:imageForCurrentState];

  if ([(CAMControlDrawerButton *)self shouldUseActiveTintForCurrentState])
  {
    [MEMORY[0x1E69DC888] systemYellowColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v8 = ;
  _imageView2 = [(CAMControlDrawerButton *)self _imageView];
  [_imageView2 setTintColor:v8];

  [(CAMControlDrawerButton *)self setNeedsLayout];
  if ([(CAMControlDrawerButton *)self shouldUseSlash])
  {
    [(CAMControlDrawerButton *)self _updateSlashAnimated:animatedCopy];
  }
}

- (id)imageForCurrentState
{
  imageNameForCurrentState = [(CAMControlDrawerButton *)self imageNameForCurrentState];
  if (imageNameForCurrentState)
  {
    v4 = [(CAMControlDrawerButton *)self _imageForImageName:imageNameForCurrentState];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)imageForAXHUD
{
  imageNameForAXHUD = [(CAMControlDrawerButton *)self imageNameForAXHUD];
  v4 = [(CAMControlDrawerButton *)self _imageForImageName:imageNameForAXHUD];

  return v4;
}

- (id)imageNameForCurrentState
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D920];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"%@ must be implemented by subclasses", v4}];

  return 0;
}

- (void)_updateSlashAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _slashView = [(CAMControlDrawerButton *)self _slashView];
  _slashMaskView = [(CAMControlDrawerButton *)self _slashMaskView];
  shouldShowSlashForCurrentState = [(CAMControlDrawerButton *)self shouldShowSlashForCurrentState];
  [_slashView bounds];
  [_slashMaskView convertRect:_slashView fromView:?];
  [_slashMaskView setSlashBounds:animatedCopy animated:?];
  [_slashView setVisible:shouldShowSlashForCurrentState animated:animatedCopy];
}

- (id)_imageForImageName:(id)name
{
  nameCopy = name;
  v5 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  traitCollection = [(CAMControlDrawerButton *)self traitCollection];
  v7 = [v5 configurationWithTraitCollection:traitCollection];

  imageSymbolColorConfiguration = [(CAMControlDrawerButton *)self imageSymbolColorConfiguration];
  if (imageSymbolColorConfiguration)
  {
    v9 = [v7 configurationByApplyingConfiguration:imageSymbolColorConfiguration];

    v7 = v9;
  }

  v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:nameCopy withConfiguration:v7];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = MEMORY[0x1E69DCAB8];
    v14 = CAMCameraUIFrameworkBundle();
    v15 = [v13 imageNamed:nameCopy inBundle:v14];
    v12 = [v15 imageWithRenderingMode:2];
  }

  return v12;
}

@end