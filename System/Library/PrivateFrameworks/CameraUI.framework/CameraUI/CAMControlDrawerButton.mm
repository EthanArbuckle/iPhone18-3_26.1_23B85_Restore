@interface CAMControlDrawerButton
+ (CGSize)buttonSize;
+ (id)_backgroundImage;
- (CAMControlDrawerButton)initWithLayoutStyle:(int64_t)a3;
- (CGSize)intrinsicContentSize;
- (id)_imageForImageName:(id)a3;
- (id)hudItemForAccessibilityHUDManager:(id)a3;
- (id)imageForAXHUD;
- (id)imageForCurrentState;
- (id)imageNameForCurrentState;
- (int64_t)controlType;
- (void)_updateSlashAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)selectedByAccessibilityHUDManager:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)updateImageAnimated:(BOOL)a3;
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
  block[4] = a1;
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

- (CAMControlDrawerButton)initWithLayoutStyle:(int64_t)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = CAMControlDrawerButton;
  v4 = [(CAMControlDrawerButton *)&v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_layoutStyle = a3;
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v5->__imageView;
    v5->__imageView = v6;

    v8 = [objc_opt_class() _backgroundImage];
    v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
    backgroundView = v5->__backgroundView;
    v5->__backgroundView = v9;

    [(CAMControlDrawerButton *)v5 addSubview:v5->__backgroundView];
    [(CAMControlDrawerButton *)v5 addSubview:v5->__imageView];
    if ([(CAMControlDrawerButton *)v5 shouldUseSlash])
    {
      v11 = objc_alloc_init(CAMSlashView);
      slashView = v5->__slashView;
      v5->__slashView = v11;

      v13 = [MEMORY[0x1E69DC888] whiteColor];
      [(CAMSlashView *)v5->__slashView setTintColor:v13];

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
  v3 = [(CAMControlDrawerButton *)self _imageView];
  [v3 intrinsicContentSize];
  UIRectCenteredAboutPointScale();
  [v3 frameForAlignmentRect:?];
  CAMViewSetBoundsAndCenterForFrame(v3, v4, v5, v6, v7);
  v8 = [(CAMControlDrawerButton *)self _backgroundView];
  [v8 intrinsicContentSize];
  UIRectCenteredAboutPointScale();
  [v8 setFrame:?];
  if ([(CAMControlDrawerButton *)self shouldUseSlash])
  {
    v9 = [(CAMControlDrawerButton *)self _slashView];
    [v9 setBounds:{0.0, 0.0, 20.0, 20.0}];

    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    v11 = v10;
    v13 = v12;
    v14 = [(CAMControlDrawerButton *)self _slashView];
    [v14 setCenter:{v11, v13}];

    [v3 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [(CAMControlDrawerButton *)self _slashMaskView];
    [v23 setFrame:{v16, v18, v20, v22}];

    [(CAMControlDrawerButton *)self _updateSlashAnimated:0];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMControlDrawerButton *)self isHighlighted];
  v10.receiver = self;
  v10.super_class = CAMControlDrawerButton;
  [(CAMControlDrawerButton *)&v10 setHighlighted:v3];
  if (v5 != v3)
  {
    if ([(CAMControlDrawerButton *)self shouldScaleImageWhileHighlighted])
    {
      v6 = [(CAMControlDrawerButton *)self _imageView];
      v7 = [v6 layer];
      [CAMAnimationHelper animateLayer:v7 forButtonHighlighted:v3 layoutStyle:[(CAMControlDrawerButton *)self layoutStyle]];

      v8 = [(CAMControlDrawerButton *)self _slashView];
      v9 = [v8 layer];
      [CAMAnimationHelper animateLayer:v9 forButtonHighlighted:v3 layoutStyle:[(CAMControlDrawerButton *)self layoutStyle]];
    }
  }
}

- (id)hudItemForAccessibilityHUDManager:(id)a3
{
  v3 = [(CAMControlDrawerButton *)self imageForAXHUD];
  v4 = objc_alloc(MEMORY[0x1E69DC618]);
  v5 = [v4 initWithTitle:0 image:v3 imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v5;
}

- (void)selectedByAccessibilityHUDManager:(id)a3
{
  [(CAMControlDrawerButton *)self cancelTouchTracking];

  [(CAMControlDrawerButton *)self sendActionsForControlEvents:64];
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    v5 = a4;
    self->_orientation = a3;
    v8 = [(CAMControlDrawerButton *)self _imageView];
    [CAMView rotateView:v8 toInterfaceOrientation:a3 animated:v5];

    v9 = [(CAMControlDrawerButton *)self _slashView];
    [CAMView rotateView:v9 toInterfaceOrientation:a3 animated:v5];
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

- (void)updateImageAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMControlDrawerButton *)self imageForCurrentState];
  v6 = [(CAMControlDrawerButton *)self _imageView];
  [v6 setImage:v5];

  if ([(CAMControlDrawerButton *)self shouldUseActiveTintForCurrentState])
  {
    [MEMORY[0x1E69DC888] systemYellowColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v8 = ;
  v7 = [(CAMControlDrawerButton *)self _imageView];
  [v7 setTintColor:v8];

  [(CAMControlDrawerButton *)self setNeedsLayout];
  if ([(CAMControlDrawerButton *)self shouldUseSlash])
  {
    [(CAMControlDrawerButton *)self _updateSlashAnimated:v3];
  }
}

- (id)imageForCurrentState
{
  v3 = [(CAMControlDrawerButton *)self imageNameForCurrentState];
  if (v3)
  {
    v4 = [(CAMControlDrawerButton *)self _imageForImageName:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)imageForAXHUD
{
  v3 = [(CAMControlDrawerButton *)self imageNameForAXHUD];
  v4 = [(CAMControlDrawerButton *)self _imageForImageName:v3];

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

- (void)_updateSlashAnimated:(BOOL)a3
{
  v3 = a3;
  v7 = [(CAMControlDrawerButton *)self _slashView];
  v5 = [(CAMControlDrawerButton *)self _slashMaskView];
  v6 = [(CAMControlDrawerButton *)self shouldShowSlashForCurrentState];
  [v7 bounds];
  [v5 convertRect:v7 fromView:?];
  [v5 setSlashBounds:v3 animated:?];
  [v7 setVisible:v6 animated:v3];
}

- (id)_imageForImageName:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v6 = [(CAMControlDrawerButton *)self traitCollection];
  v7 = [v5 configurationWithTraitCollection:v6];

  v8 = [(CAMControlDrawerButton *)self imageSymbolColorConfiguration];
  if (v8)
  {
    v9 = [v7 configurationByApplyingConfiguration:v8];

    v7 = v9;
  }

  v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v4 withConfiguration:v7];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = MEMORY[0x1E69DCAB8];
    v14 = CAMCameraUIFrameworkBundle();
    v15 = [v13 imageNamed:v4 inBundle:v14];
    v12 = [v15 imageWithRenderingMode:2];
  }

  return v12;
}

@end