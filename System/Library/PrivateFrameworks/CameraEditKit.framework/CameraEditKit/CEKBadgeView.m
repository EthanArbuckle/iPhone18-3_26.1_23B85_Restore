@interface CEKBadgeView
- (CEKBadgeView)initWithFrame:(CGRect)a3;
- (CEKBadgeViewDelegate)delegate;
- (id)_invertMaskImage:(id)a3;
- (void)_setContentColor:(id)a3;
- (void)_setFillColor:(id)a3;
- (void)_setFillCornerRadius:(double)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation CEKBadgeView

- (CEKBadgeView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = CEKBadgeView;
  v3 = [(CEKBadgeView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CEKBadgeView *)v3 setContentMode:3];
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(CEKBadgeView *)v4 setBackgroundColor:v5];

    v6 = [MEMORY[0x1E69DC888] systemYellowColor];
    fillColor = v4->__fillColor;
    v4->__fillColor = v6;

    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.6];
    contentColor = v4->__contentColor;
    v4->__contentColor = v8;

    v4->__fillCornerRadius = 5.0;
    v10 = v4;
  }

  return v4;
}

- (void)drawRect:(CGRect)a3
{
  [(CEKBadgeView *)self bounds:a3.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v32 = [(CEKBadgeView *)self _maskImage];
  v30 = [(CEKBadgeView *)self _contentColor];
  v31 = [(CEKBadgeView *)self _fillColor];
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
  v16 = v32;
  v17 = [v32 CGImage];
  Width = CGImageGetWidth(v17);
  v19 = CGImageGetHeight(v17);
  BitsPerComponent = CGImageGetBitsPerComponent(v17);
  BitsPerPixel = CGImageGetBitsPerPixel(v17);
  BytesPerRow = CGImageGetBytesPerRow(v17);
  DataProvider = CGImageGetDataProvider(v17);
  Decode = CGImageGetDecode(v17);
  ShouldInterpolate = CGImageGetShouldInterpolate(v17);
  v26 = CGImageMaskCreate(Width, v19, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, Decode, ShouldInterpolate);
  v27 = [(CEKBadgeView *)self _invertMaskImage:v32];
  v28 = [v27 CGImage];
  CGContextSaveGState(CurrentContext);
  [v30 set];
  v36.origin.x = v5;
  v36.origin.y = v7;
  v36.size.width = v9;
  v36.size.height = v11;
  CGContextClipToMask(CurrentContext, v36, v28);
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
  [v31 set];
  v29 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v5 cornerRadius:{v7, v9, v11, v13}];
  [v29 fill];
  CGImageRelease(v26);
}

- (id)_invertMaskImage:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(CEKBadgeView *)self _maskImage];
  v4 = v3;
  if (v3)
  {
    v17 = 0u;
    decode = 1.0;
    v18 = 0x3FF0000000000000uLL;
    v19 = 0x3FF0000000000000uLL;
    v20 = 0x3FF0000000000000;
    v5 = [v3 CGImage];
    Width = CGImageGetWidth(v5);
    Height = CGImageGetHeight(v5);
    BitsPerComponent = CGImageGetBitsPerComponent(v5);
    BitsPerPixel = CGImageGetBitsPerPixel(v5);
    BytesPerRow = CGImageGetBytesPerRow(v5);
    DataProvider = CGImageGetDataProvider(v5);
    ShouldInterpolate = CGImageGetShouldInterpolate(v5);
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

- (void)_setFillCornerRadius:(double)a3
{
  if (self->__fillCornerRadius != a3)
  {
    self->__fillCornerRadius = a3;
    [(CEKBadgeView *)self setNeedsDisplay];
  }
}

- (void)_setFillColor:(id)a3
{
  v5 = a3;
  fillColor = self->__fillColor;
  if (fillColor != v5)
  {
    v7 = v5;
    fillColor = [fillColor isEqual:v5];
    v5 = v7;
    if ((fillColor & 1) == 0)
    {
      objc_storeStrong(&self->__fillColor, a3);
      fillColor = [(CEKBadgeView *)self setNeedsDisplay];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](fillColor, v5);
}

- (void)_setContentColor:(id)a3
{
  v5 = a3;
  contentColor = self->__contentColor;
  if (contentColor != v5)
  {
    v7 = v5;
    contentColor = [contentColor isEqual:v5];
    v5 = v7;
    if ((contentColor & 1) == 0)
    {
      objc_storeStrong(&self->__contentColor, a3);
      contentColor = [(CEKBadgeView *)self setNeedsDisplay];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](contentColor, v5);
}

- (CEKBadgeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end