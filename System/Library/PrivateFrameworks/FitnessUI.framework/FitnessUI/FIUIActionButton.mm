@interface FIUIActionButton
+ (id)buttonWithTitle:(id)title color:(id)color icon:(id)icon;
- (CGRect)backgroundImageFrame;
- (CGRect)backgroundRectForBounds:(CGRect)bounds;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (CGSize)FIUIActionButtonSize;
- (FIUIActionButton)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_animateHighlighted:(BOOL)highlighted;
- (void)_setupInternalTouchActions;
- (void)_touchDown;
- (void)_touchUp;
- (void)layoutSubviews;
- (void)setBackgroundImageColor:(id)color;
- (void)setEnabled:(BOOL)enabled;
- (void)setImage:(id)image forState:(unint64_t)state;
- (void)setImageViewTintColor:(id)color;
- (void)turnIntoSolidDotWithDuration:(double)duration completion:(id)completion;
@end

@implementation FIUIActionButton

- (void)_setupInternalTouchActions
{
  [(FIUIActionButton *)self addTarget:self action:sel__touchDown forControlEvents:1];
  [(FIUIActionButton *)self addTarget:self action:sel__touchDown forControlEvents:16];
  [(FIUIActionButton *)self addTarget:self action:sel__touchUp forControlEvents:64];

  [(FIUIActionButton *)self addTarget:self action:sel__touchUp forControlEvents:32];
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = FIUIActionButton;
  [(FIUIActionButton *)&v24 layoutSubviews];
  imageView = [(FIUIActionButton *)self imageView];
  [imageView setAlpha:0.0];

  transformingImageView = [(FIUIActionButton *)self transformingImageView];
  [transformingImageView intrinsicContentSize];
  v6 = v5;
  transformingImageView2 = [(FIUIActionButton *)self transformingImageView];
  [transformingImageView2 intrinsicContentSize];
  v9 = v8;

  transformingImageView3 = [(FIUIActionButton *)self transformingImageView];
  v11 = transformingImageView3;
  if (transformingImageView3)
  {
    [transformingImageView3 transform];
  }

  else
  {
    memset(&v23, 0, sizeof(v23));
  }

  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v6;
  v25.size.height = v9;
  v26 = CGRectApplyAffineTransform(v25, &v23);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  transformingImageView4 = [(FIUIActionButton *)self transformingImageView];
  [transformingImageView4 setFrame:{x, y, width, height}];

  imageView2 = [(FIUIActionButton *)self imageView];
  [imageView2 center];
  v19 = v18;
  v21 = v20;
  transformingImageView5 = [(FIUIActionButton *)self transformingImageView];
  [transformingImageView5 setCenter:{v19, v21}];
}

- (void)_touchDown
{
  [(FIUIActionButton *)self setAnimatingTouchDown:1];

  [(FIUIActionButton *)self _animateHighlighted:1];
}

- (void)_touchUp
{
  if (![(FIUIActionButton *)self animatingTouchDown])
  {

    [(FIUIActionButton *)self _animateHighlighted:0];
  }
}

+ (id)buttonWithTitle:(id)title color:(id)color icon:(id)icon
{
  iconCopy = icon;
  colorCopy = color;
  titleCopy = title;
  v11 = [self buttonWithType:0];
  [v11 setTitle:titleCopy forState:0];

  v12 = [iconCopy imageWithRenderingMode:2];

  [v11 setImage:v12 forState:0];
  v13 = [colorCopy colorWithAlphaComponent:0.2];
  [v11 setBackgroundImageColor:v13];

  v14 = [colorCopy colorWithAlphaComponent:1.0];

  [v11 setImageViewTintColor:v14];
  [v11 sizeToFit];

  return v11;
}

- (FIUIActionButton)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = FIUIActionButton;
  v3 = [(FIUIActionButton *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD10]];
    titleLabel = [(FIUIActionButton *)v3 titleLabel];
    [titleLabel setFont:v4];

    titleLabel2 = [(FIUIActionButton *)v3 titleLabel];
    [titleLabel2 setLineBreakMode:4];

    titleLabel3 = [(FIUIActionButton *)v3 titleLabel];
    [titleLabel3 setTextAlignment:1];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    titleLabel4 = [(FIUIActionButton *)v3 titleLabel];
    [titleLabel4 setTextColor:whiteColor];

    titleLabel5 = [(FIUIActionButton *)v3 titleLabel];
    [titleLabel5 setAllowsDefaultTighteningForTruncation:1];

    [(FIUIActionButton *)v3 _setupInternalTouchActions];
    v11 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    transformingImageView = v3->_transformingImageView;
    v3->_transformingImageView = v11;

    [(UIImageView *)v3->_transformingImageView setContentMode:1];
    [(FIUIActionButton *)v3 addSubview:v3->_transformingImageView];
    imageView = [(FIUIActionButton *)v3 imageView];
    [imageView setAlpha:0.0];

    [(FIUIActionButton *)v3 setExclusiveTouch:1];
  }

  return v3;
}

- (void)turnIntoSolidDotWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  backgroundImageColor = [(FIUIActionButton *)self backgroundImageColor];
  v8 = [backgroundImageColor colorWithAlphaComponent:1.0];

  v9 = MEMORY[0x1E69DD250];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__FIUIActionButton_turnIntoSolidDotWithDuration_completion___block_invoke;
  v14[3] = &unk_1E878BFB8;
  v14[4] = self;
  v15 = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__FIUIActionButton_turnIntoSolidDotWithDuration_completion___block_invoke_2;
  v12[3] = &unk_1E878BE28;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  [v9 transitionWithView:self duration:5439616 options:v14 animations:v12 completion:duration];
}

void __60__FIUIActionButton_turnIntoSolidDotWithDuration_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBackgroundImageColor:*(a1 + 40)];
  v2 = [*(a1 + 32) transformingImageView];
  [v2 setAlpha:0.0];
}

- (void)setImageViewTintColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_imageViewTintColor] & 1) == 0)
  {
    objc_storeStrong(&self->_imageViewTintColor, color);
    imageViewTintColor = self->_imageViewTintColor;
    transformingImageView = [(FIUIActionButton *)self transformingImageView];
    [transformingImageView setTintColor:imageViewTintColor];
  }
}

- (void)setBackgroundImageColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_backgroundImageColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_backgroundImageColor, color);
    v5 = colorCopy;
    v10.width = 67.5;
    v10.height = 43.5;
    UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
    [v5 setFill];

    v6 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, 67.5, 43.5, 21.75}];
    [v6 fill];
    v7 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    [(FIUIActionButton *)self setBackgroundImage:v7 forState:0];
  }
}

- (void)setImage:(id)image forState:(unint64_t)state
{
  v8.receiver = self;
  v8.super_class = FIUIActionButton;
  imageCopy = image;
  [(FIUIActionButton *)&v8 setImage:imageCopy forState:state];
  v7 = [(FIUIActionButton *)self transformingImageView:v8.receiver];
  [v7 setImage:imageCopy];
}

- (CGSize)FIUIActionButtonSize
{
  titleLabel = [(FIUIActionButton *)self titleLabel];
  [titleLabel frame];
  v4 = v3;

  v5 = v4 + 43.5 + 1.0;
  v6 = 67.5;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8.receiver = self;
  v8.super_class = FIUIActionButton;
  [(FIUIActionButton *)&v8 setEnabled:?];
  if (enabledCopy)
  {
    [(FIUIActionButton *)self setAlpha:1.0];
    imageViewTintColor = self->_imageViewTintColor;
    transformingImageView = [(FIUIActionButton *)self transformingImageView];
    [transformingImageView setTintColor:imageViewTintColor];
  }

  else
  {
    [(FIUIActionButton *)self setAlpha:0.400000006];
    transformingImageView = [MEMORY[0x1E69DC888] lightGrayColor];
    transformingImageView2 = [(FIUIActionButton *)self transformingImageView];
    [transformingImageView2 setTintColor:transformingImageView];
  }
}

- (void)_animateHighlighted:(BOOL)highlighted
{
  v3 = 0.8;
  if (!highlighted)
  {
    v3 = 1.0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__FIUIActionButton__animateHighlighted___block_invoke;
  v6[3] = &unk_1E878CC18;
  v6[4] = self;
  *&v6[5] = v3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__FIUIActionButton__animateHighlighted___block_invoke_2;
  v4[3] = &unk_1E878CC40;
  v4[4] = self;
  highlightedCopy = highlighted;
  [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:v4 completion:0.15];
}

void __40__FIUIActionButton__animateHighlighted___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v4, *(a1 + 40), *(a1 + 40));
  v2 = [*(a1 + 32) transformingImageView];
  v3 = v4;
  [v2 setTransform:&v3];
}

void __40__FIUIActionButton__animateHighlighted___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAnimatingTouchDown:0];
  if (([*(a1 + 32) isHighlighted] & 1) != 0 || *(a1 + 40) != 1)
  {
    v3 = [*(a1 + 32) touchUpAnimationCompleteHandler];

    if (v3)
    {
      v4 = [*(a1 + 32) touchUpAnimationCompleteHandler];
      v4[2]();
    }
  }

  else
  {
    v2 = *(a1 + 32);

    [v2 _animateHighlighted:0];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  [(FIUIActionButton *)self bounds];
  [(FIUIActionButton *)self backgroundRectForBounds:?];
  v15.origin.x = v7 + -8.0;
  v15.origin.y = v8 + -12.0;
  v15.size.width = v9 + 16.0;
  v15.size.height = v10 + 24.0;
  v14.x = x;
  v14.y = y;
  if (CGRectContainsPoint(v15, v14))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CGRect)backgroundRectForBounds:(CGRect)bounds
{
  v3 = (bounds.size.width + -67.5) * 0.5;
  v4 = 67.5;
  v5 = 43.5;
  v6 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v6;
  result.origin.x = v3;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  currentTitle = [(FIUIActionButton *)self currentTitle];

  if (currentTitle)
  {
    titleLabel = [(FIUIActionButton *)self titleLabel];
    [titleLabel _firstBaselineOffsetFromTop];
    v11 = v10;

    titleLabel2 = [(FIUIActionButton *)self titleLabel];
    [titleLabel2 intrinsicContentSize];
    v14 = v13;

    if (width < v14)
    {
      v18 = 0.0;
    }

    else
    {
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      v15 = CGRectGetWidth(v29) * 0.5;
      titleLabel3 = [(FIUIActionButton *)self titleLabel];
      [titleLabel3 intrinsicContentSize];
      v18 = v15 - v17 * 0.5;

      titleLabel4 = [(FIUIActionButton *)self titleLabel];
      [titleLabel4 intrinsicContentSize];
      width = v20;
    }

    v21 = y + 43.5 + 15.5 - v11;
    titleLabel5 = [(FIUIActionButton *)self titleLabel];
    [titleLabel5 intrinsicContentSize];
    v22 = v24;
  }

  else
  {
    v18 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    v22 = *(MEMORY[0x1E695F058] + 24);
  }

  v25 = v18;
  v26 = v21;
  v27 = width;
  v28 = v22;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  width = rect.size.width;
  v4 = [(FIUIActionButton *)self imageForState:[(FIUIActionButton *)self state:rect.origin.x]];
  [v4 size];
  v6 = (width - v5) * 0.5;
  [v4 size];
  v8 = (43.5 - v7) * 0.5;
  [v4 size];
  v10 = v9;
  [v4 size];
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)backgroundImageFrame
{
  [(FIUIActionButton *)self bounds];

  [(FIUIActionButton *)self backgroundRectForBounds:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end