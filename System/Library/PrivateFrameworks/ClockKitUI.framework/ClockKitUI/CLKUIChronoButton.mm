@interface CLKUIChronoButton
+ (id)_fillImageWithRadius:(double)radius lineThickness:(double)thickness;
+ (id)_ringImageWithRadius:(double)radius lineThickness:(double)thickness;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CLKUIChronoButton)initWithDiameter:(double)diameter;
- (CLKUIChronoButton)initWithDiameter:(double)diameter lineThickness:(double)thickness;
- (CLKUIChronoButton)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)touchEdgeInsets;
- (void)_performTouchAnimationThroughColor:(id)color toColor:(id)toColor toRingColor:(id)ringColor;
- (void)_setupImagesWithDiameter:(double)diameter lineThickness:(double)thickness;
- (void)_updateColors;
- (void)layoutSubviews;
- (void)setColor:(id)color;
- (void)setEnabled:(BOOL)enabled;
- (void)setRingColor:(id)color;
@end

@implementation CLKUIChronoButton

- (CLKUIChronoButton)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CLKUIChronoButton;
  v3 = [(CLKUIChronoButton *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    currentDevice = [MEMORY[0x1E695B4F8] currentDevice];
    v5 = ___LayoutConstants_block_invoke_1(currentDevice, currentDevice);
    v7 = v6;

    [(CLKUIChronoButton *)v3 _setupImagesWithDiameter:v5 lineThickness:v7];
  }

  return v3;
}

- (CLKUIChronoButton)initWithDiameter:(double)diameter
{
  currentDevice = [MEMORY[0x1E695B4F8] currentDevice];
  CLKRoundForDevice();
  v7 = v6;

  return [(CLKUIChronoButton *)self initWithDiameter:diameter lineThickness:v7];
}

- (CLKUIChronoButton)initWithDiameter:(double)diameter lineThickness:(double)thickness
{
  v9.receiver = self;
  v9.super_class = CLKUIChronoButton;
  diameter = [(CLKUIChronoButton *)&v9 initWithFrame:0.0, 0.0, diameter, diameter];
  v7 = diameter;
  if (diameter)
  {
    [(CLKUIChronoButton *)diameter _setupImagesWithDiameter:diameter lineThickness:thickness];
  }

  return v7;
}

- (void)_setupImagesWithDiameter:(double)diameter lineThickness:(double)thickness
{
  v6 = diameter * 0.5;
  v18 = [CLKUIChronoButton _ringImageWithRadius:diameter * 0.5 lineThickness:thickness];
  v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v8 = [v18 imageWithRenderingMode:2];
  v9 = [v7 initWithImage:v8];
  ringView = self->_ringView;
  self->_ringView = v9;

  [(UIImageView *)self->_ringView setUserInteractionEnabled:0];
  [(CLKUIChronoButton *)self addSubview:self->_ringView];
  v11 = [CLKUIChronoButton _fillImageWithRadius:v6 lineThickness:thickness];
  v12 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v13 = [v11 imageWithRenderingMode:2];
  v14 = [v12 initWithImage:v13];
  fillView = self->_fillView;
  self->_fillView = v14;

  [(UIImageView *)self->_fillView setUserInteractionEnabled:0];
  [(CLKUIChronoButton *)self addSubview:self->_fillView];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(CLKUIChronoButton *)self setColor:whiteColor];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [(CLKUIChronoButton *)self setBackgroundColor:blackColor];
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_color isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_color, color);
    [(CLKUIChronoButton *)self _updateColors];
  }
}

- (void)setRingColor:(id)color
{
  objc_storeStrong(&self->_ringColor, color);

  [(CLKUIChronoButton *)self _updateColors];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(CLKUIChronoButton *)self isEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = CLKUIChronoButton;
    [(CLKUIChronoButton *)&v5 setEnabled:enabledCopy];
    [(CLKUIChronoButton *)self _updateColors];
  }
}

- (void)layoutSubviews
{
  v3 = MEMORY[0x1E691D7B0]([(CLKUIChronoButton *)self bounds]);
  v5 = v4;
  [(UIImageView *)self->_ringView setCenter:?];
  fillView = self->_fillView;

  [(UIImageView *)fillView setCenter:v3, v5];
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  v16.receiver = self;
  v16.super_class = CLKUIChronoButton;
  v5 = [(CLKUIChronoButton *)&v16 beginTrackingWithTouch:touch withEvent:event];
  if (v5)
  {
    swapColor = self->_swapColor;
    if (!swapColor)
    {
      swapColor = self->_color;
    }

    v7 = swapColor;
    ringSwapColor = self->_ringSwapColor;
    if (!ringSwapColor)
    {
      ringSwapColor = self->_ringColor;
    }

    v9 = ringSwapColor;
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    [(CLKUIChronoButton *)self _performTouchAnimationThroughColor:self->_highlightColor toColor:v7 toRingColor:v11];
    objc_storeStrong(&self->_swapColor, self->_color);
    color = self->_color;
    self->_color = v7;
    v13 = v7;

    objc_storeStrong(&self->_ringSwapColor, self->_ringColor);
    ringColor = self->_ringColor;
    self->_ringColor = v10;
  }

  return v5;
}

- (void)_performTouchAnimationThroughColor:(id)color toColor:(id)toColor toRingColor:(id)ringColor
{
  colorCopy = color;
  toColorCopy = toColor;
  ringColorCopy = ringColor;
  v11 = MEMORY[0x1E69DD250];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __76__CLKUIChronoButton__performTouchAnimationThroughColor_toColor_toRingColor___block_invoke;
  v25[3] = &unk_1E8762A30;
  v25[4] = self;
  v26 = colorCopy;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __76__CLKUIChronoButton__performTouchAnimationThroughColor_toColor_toRingColor___block_invoke_2;
  v22[3] = &unk_1E8762AF8;
  v22[4] = self;
  v12 = v26;
  v23 = v12;
  v13 = toColorCopy;
  v24 = v13;
  [v11 animateWithDuration:0x10000 delay:v25 options:v22 animations:0.2 completion:0.0];
  v14 = MEMORY[0x1E69DD250];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__CLKUIChronoButton__performTouchAnimationThroughColor_toColor_toRingColor___block_invoke_4;
  v18[3] = &unk_1E8762B20;
  v18[4] = self;
  v19 = ringColorCopy;
  v20 = v12;
  v21 = v13;
  v15 = v13;
  v16 = v12;
  v17 = ringColorCopy;
  [v14 animateWithDuration:0 delay:v18 options:0 animations:0.4 completion:0.0];
}

uint64_t __76__CLKUIChronoButton__performTouchAnimationThroughColor_toColor_toRingColor___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 464);
  CGAffineTransformMakeScale(&v4, 1.0, 1.0);
  result = [v2 setTransform:&v4];
  if (*(a1 + 40))
  {
    return [*(*(a1 + 32) + 464) setTintColor:?];
  }

  return result;
}

void __76__CLKUIChronoButton__performTouchAnimationThroughColor_toColor_toRingColor___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__CLKUIChronoButton__performTouchAnimationThroughColor_toColor_toRingColor___block_invoke_3;
  v4[3] = &unk_1E8762AD0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 animateWithDuration:0x20000 delay:v4 options:0 animations:0.2 completion:0.0];
}

uint64_t __76__CLKUIChronoButton__performTouchAnimationThroughColor_toColor_toRingColor___block_invoke_3(void *a1)
{
  v2 = *(a1[4] + 464);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  result = [v2 setTransform:v5];
  if (a1[5])
  {
    return [*(a1[4] + 464) setTintColor:a1[6]];
  }

  return result;
}

uint64_t __76__CLKUIChronoButton__performTouchAnimationThroughColor_toColor_toRingColor___block_invoke_4(void *a1)
{
  result = [*(a1[4] + 456) setTintColor:a1[5]];
  if (!a1[6])
  {
    v3 = *(a1[4] + 464);
    v4 = a1[7];

    return [v3 setTintColor:v4];
  }

  return result;
}

- (void)_updateColors
{
  isEnabled = [(CLKUIChronoButton *)self isEnabled];
  color = self->_color;
  if (isEnabled)
  {
    v5 = color;
  }

  else
  {
    v5 = [(UIColor *)color colorWithAlphaComponent:0.2];
  }

  v11 = v5;
  isEnabled2 = [(CLKUIChronoButton *)self isEnabled];
  ringColor = self->_ringColor;
  if (isEnabled2)
  {
    v8 = ringColor;
  }

  else
  {
    v8 = [(UIColor *)ringColor colorWithAlphaComponent:0.2];
  }

  v9 = v8;
  [(UIImageView *)self->_fillView setTintColor:v11];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v11;
  }

  [(UIImageView *)self->_ringView setTintColor:v10];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(CLKUIChronoButton *)self bounds];
  top = self->_touchEdgeInsets.top;
  left = self->_touchEdgeInsets.left;
  v10 = v9 + left;
  v12 = v11 + top;
  v14 = v13 - (left + self->_touchEdgeInsets.right);
  v16 = v15 - (top + self->_touchEdgeInsets.bottom);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(*&v10, *&v17);
}

+ (id)_fillImageWithRadius:(double)radius lineThickness:(double)thickness
{
  v4 = _fillImageWithRadius_lineThickness__image;
  if (_fillImageWithRadius_lineThickness__image)
  {
    v5 = *&_fillImageWithRadius_lineThickness__cachedRadius == radius;
  }

  else
  {
    v5 = 0;
  }

  if (!v5 || *&_fillImageWithRadius_lineThickness__cachedThickness != thickness)
  {
    _fillImageWithRadius_lineThickness__cachedRadius = *&radius;
    _fillImageWithRadius_lineThickness__cachedThickness = *&thickness;
    v7 = thickness + thickness;
    v8 = radius - (thickness + thickness);
    layer = [MEMORY[0x1E69794A0] layer];
    v10 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v7, v7, v8 + v8, v8 + v8}];
    [layer setPath:{objc_msgSend(v10, "CGPath")}];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [layer setBackgroundColor:{objc_msgSend(blackColor, "CGColor")}];

    currentDevice = [MEMORY[0x1E695B4F8] currentDevice];
    [currentDevice screenScale];
    v14 = v13;
    v19.width = v7 + v8 + v7 + v8;
    v19.height = v19.width;
    UIGraphicsBeginImageContextWithOptions(v19, 0, v14);

    [layer renderInContext:UIGraphicsGetCurrentContext()];
    v15 = UIGraphicsGetImageFromCurrentImageContext();
    v16 = _fillImageWithRadius_lineThickness__image;
    _fillImageWithRadius_lineThickness__image = v15;

    UIGraphicsEndImageContext();
    v4 = _fillImageWithRadius_lineThickness__image;
  }

  return v4;
}

+ (id)_ringImageWithRadius:(double)radius lineThickness:(double)thickness
{
  v6 = _ringImageWithRadius_lineThickness__image;
  if (_ringImageWithRadius_lineThickness__image)
  {
    v7 = *&_ringImageWithRadius_lineThickness__cachedRadius == radius;
  }

  else
  {
    v7 = 0;
  }

  if (!v7 || *&_ringImageWithRadius_lineThickness__cachedThickness != thickness)
  {
    _ringImageWithRadius_lineThickness__cachedRadius = *&radius;
    _ringImageWithRadius_lineThickness__cachedThickness = *&thickness;
    v9 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:radius startAngle:radius endAngle:radius + thickness * -0.5 clockwise:{0.0, 6.28318531}];
    layer = [MEMORY[0x1E69794A0] layer];
    [layer setBounds:{0.0, 0.0, radius, radius}];
    [layer setPath:{objc_msgSend(v9, "CGPath")}];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [layer setStrokeColor:{objc_msgSend(blackColor, "CGColor")}];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [layer setFillColor:{objc_msgSend(clearColor, "CGColor")}];

    [layer setLineWidth:thickness];
    currentDevice = [MEMORY[0x1E695B4F8] currentDevice];
    [currentDevice screenScale];
    v15 = v14;
    v20.width = radius + radius;
    v20.height = radius + radius;
    UIGraphicsBeginImageContextWithOptions(v20, 0, v15);

    [layer renderInContext:UIGraphicsGetCurrentContext()];
    v16 = UIGraphicsGetImageFromCurrentImageContext();
    v17 = _ringImageWithRadius_lineThickness__image;
    _ringImageWithRadius_lineThickness__image = v16;

    UIGraphicsEndImageContext();
    v6 = _ringImageWithRadius_lineThickness__image;
  }

  return v6;
}

- (UIEdgeInsets)touchEdgeInsets
{
  top = self->_touchEdgeInsets.top;
  left = self->_touchEdgeInsets.left;
  bottom = self->_touchEdgeInsets.bottom;
  right = self->_touchEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end