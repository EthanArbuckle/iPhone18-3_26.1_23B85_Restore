@interface CEKBadgeView
- (CEKBadgeView)initWithFrame:(CGRect)frame;
- (CEKBadgeViewDelegate)delegate;
- (id)_invertMaskImage:(id)image;
- (void)_setContentColor:(id)color;
- (void)_setFillColor:(id)color;
- (void)_setFillCornerRadius:(double)radius;
- (void)drawRect:(CGRect)rect;
@end

@implementation CEKBadgeView

- (CEKBadgeView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = CEKBadgeView;
  v3 = [(CEKBadgeView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CEKBadgeView *)v3 setContentMode:3];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(CEKBadgeView *)v4 setBackgroundColor:clearColor];

    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    fillColor = v4->__fillColor;
    v4->__fillColor = systemYellowColor;

    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.6];
    contentColor = v4->__contentColor;
    v4->__contentColor = v8;

    v4->__fillCornerRadius = 5.0;
    v10 = v4;
  }

  return v4;
}

- (void)drawRect:(CGRect)rect
{
  [(CEKBadgeView *)self bounds:rect.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _maskImage = [(CEKBadgeView *)self _maskImage];
  _contentColor = [(CEKBadgeView *)self _contentColor];
  _fillColor = [(CEKBadgeView *)self _fillColor];
  [(CEKBadgeView *)self _fillCornerRadius];
  v13 = v12;
  CurrentContext = UIGraphicsGetCurrentContext();
  v34.origin.x = v5;
  v34.origin.y = v7;
  v34.size.width = v9;
  v34.size.height = v11;
  CGContextClearRect(CurrentContext, v34);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  Height = CGRectGetHeight(v35);
  CGContextTranslateCTM(CurrentContext, 0.0, -Height);
  v16 = _maskImage;
  cGImage = [_maskImage CGImage];
  Width = CGImageGetWidth(cGImage);
  v19 = CGImageGetHeight(cGImage);
  BitsPerComponent = CGImageGetBitsPerComponent(cGImage);
  BitsPerPixel = CGImageGetBitsPerPixel(cGImage);
  BytesPerRow = CGImageGetBytesPerRow(cGImage);
  DataProvider = CGImageGetDataProvider(cGImage);
  Decode = CGImageGetDecode(cGImage);
  ShouldInterpolate = CGImageGetShouldInterpolate(cGImage);
  v26 = CGImageMaskCreate(Width, v19, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, Decode, ShouldInterpolate);
  v27 = [(CEKBadgeView *)self _invertMaskImage:_maskImage];
  cGImage2 = [v27 CGImage];
  CGContextSaveGState(CurrentContext);
  [_contentColor set];
  v36.origin.x = v5;
  v36.origin.y = v7;
  v36.size.width = v9;
  v36.size.height = v11;
  CGContextClipToMask(CurrentContext, v36, cGImage2);
  v37.origin.x = v5;
  v37.origin.y = v7;
  v37.size.width = v9;
  v37.size.height = v11;
  CGContextFillRect(CurrentContext, v37);
  CGContextRestoreGState(CurrentContext);
  v38.origin.x = v5;
  v38.origin.y = v7;
  v38.size.width = v9;
  v38.size.height = v11;
  CGContextClipToRect(CurrentContext, v38);
  v39.origin.x = v5;
  v39.origin.y = v7;
  v39.size.width = v9;
  v39.size.height = v11;
  CGContextClipToMask(CurrentContext, v39, v26);
  [_fillColor set];
  v29 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v5 cornerRadius:{v7, v9, v11, v13}];
  [v29 fill];
  CGImageRelease(v26);
}

- (id)_invertMaskImage:(id)image
{
  v21 = *MEMORY[0x1E69E9840];
  _maskImage = [(CEKBadgeView *)self _maskImage];
  v4 = _maskImage;
  if (_maskImage)
  {
    v17 = 0u;
    decode = 1.0;
    v18 = 0x3FF0000000000000uLL;
    v19 = 0x3FF0000000000000uLL;
    v20 = 0x3FF0000000000000;
    cGImage = [_maskImage CGImage];
    Width = CGImageGetWidth(cGImage);
    Height = CGImageGetHeight(cGImage);
    BitsPerComponent = CGImageGetBitsPerComponent(cGImage);
    BitsPerPixel = CGImageGetBitsPerPixel(cGImage);
    BytesPerRow = CGImageGetBytesPerRow(cGImage);
    DataProvider = CGImageGetDataProvider(cGImage);
    ShouldInterpolate = CGImageGetShouldInterpolate(cGImage);
    v13 = CGImageMaskCreate(Width, Height, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, &decode, ShouldInterpolate);
    v14 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v13];
    CGImageRelease(v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_setFillCornerRadius:(double)radius
{
  if (self->__fillCornerRadius != radius)
  {
    self->__fillCornerRadius = radius;
    [(CEKBadgeView *)self setNeedsDisplay];
  }
}

- (void)_setFillColor:(id)color
{
  colorCopy = color;
  fillColor = self->__fillColor;
  if (fillColor != colorCopy)
  {
    v7 = colorCopy;
    fillColor = [fillColor isEqual:colorCopy];
    colorCopy = v7;
    if ((fillColor & 1) == 0)
    {
      objc_storeStrong(&self->__fillColor, color);
      fillColor = [(CEKBadgeView *)self setNeedsDisplay];
      colorCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](fillColor, colorCopy);
}

- (void)_setContentColor:(id)color
{
  colorCopy = color;
  contentColor = self->__contentColor;
  if (contentColor != colorCopy)
  {
    v7 = colorCopy;
    contentColor = [contentColor isEqual:colorCopy];
    colorCopy = v7;
    if ((contentColor & 1) == 0)
    {
      objc_storeStrong(&self->__contentColor, color);
      contentColor = [(CEKBadgeView *)self setNeedsDisplay];
      colorCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](contentColor, colorCopy);
}

- (CEKBadgeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end