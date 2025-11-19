@interface CKBrowserIconView
+ (id)_pieImageForPercentComplete:(double)a3 size:(CGSize)a4 center:(CGPoint)a5 radius:(double)a6;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKBrowserIconView)initWithFrame:(CGRect)a3;
- (void)_onDisplayLink:(id)a3;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAnimating:(BOOL)a3;
- (void)setIconImage:(id)a3;
- (void)setPercentComplete:(double)a3 animated:(BOOL)a4;
@end

@implementation CKBrowserIconView

- (CKBrowserIconView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CKBrowserIconView;
  v3 = [(CKBrowserIconView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKBrowserIconView *)v3 setOpaque:0];
  }

  return v4;
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = CKBrowserIconView;
  [(CKBrowserIconView *)&v3 dealloc];
}

- (void)setIconImage:(id)a3
{
  v5 = a3;
  if (self->_iconImage != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_iconImage, a3);
    v6 = [MEMORY[0x1E6979398] layer];
    [v6 setContents:{-[UIImage CGImage](self->_iconImage, "CGImage")}];
    v7 = [(CKBrowserIconView *)self layer];
    [v7 setMask:v6];

    [(CKBrowserIconView *)self setNeedsDisplay];
    [(CKBrowserIconView *)self invalidateIntrinsicContentSize];

    v5 = v8;
  }
}

- (void)setPercentComplete:(double)a3 animated:(BOOL)a4
{
  if (a4)
  {
    if (![(CKBrowserIconView *)self animating])
    {
      [(CKBrowserIconView *)self percentComplete];
      if (v6 == a3)
      {
        return;
      }
    }

    v7 = [MEMORY[0x1E695DF00] date];
    [v7 timeIntervalSinceReferenceDate];
    v9 = v8;

    [(CKBrowserIconView *)self setAnimationStartTime:v9];
    [(CKBrowserIconView *)self percentComplete];
    [(CKBrowserIconView *)self setAnimationStartPercentComplete:?];
    [(CKBrowserIconView *)self setAnimationEndPercentComplete:a3];
    [(CKBrowserIconView *)self setAnimating:1];
  }

  else
  {
    [(CKBrowserIconView *)self setAnimating:?];
    if (self->_percentComplete == a3)
    {
      return;
    }

    self->_percentComplete = a3;
  }

  [(CKBrowserIconView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CKBrowserIconView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  UIRectGetCenter();
  v31 = v16;
  v32 = v17;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v29 = v16;
  CurrentContext = UIGraphicsGetCurrentContext();
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  CGContextClearRect(CurrentContext, v34);
  v19 = [(CKBrowserIconView *)self iconImage];

  if (v19)
  {
    v20 = [(CKBrowserIconView *)self iconImage];
    [v20 drawInRect:17 blendMode:v9 alpha:{v11, v13, v15, 0.7}];
  }

  [(CKBrowserIconView *)self percentComplete];
  if (v21 < 100.0)
  {
    v22 = objc_opt_class();
    [(CKBrowserIconView *)self percentComplete];
    v24 = v23;
    [(CKBrowserIconView *)self bounds];
    v30 = [v22 _pieImageForPercentComplete:v24 size:v25 center:v26 radius:{v31, v32, v29 + -3.0}];
    [v30 size];
    [v30 drawInRect:0 blendMode:ceil(v31 - v27 * 0.5) alpha:{ceil(v32 - v28 * 0.5), v27, v28, 1.0}];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(CKBrowserIconView *)self iconImage:a3.width];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(CKBrowserIconView *)self iconImage];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CKBrowserIconView;
  [(CKBrowserIconView *)&v13 layoutSubviews];
  v3 = [(CKBrowserIconView *)self layer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 mask];
  [v12 setFrame:{v5, v7, v9, v11}];
}

+ (id)_pieImageForPercentComplete:(double)a3 size:(CGSize)a4 center:(CGPoint)a5 radius:(double)a6
{
  y = a5.y;
  x = a5.x;
  height = a4.height;
  width = a4.width;
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = ceil(height * v13);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v17 = CGBitmapContextCreate(0, vcvtpd_u64_f64(width * v13), vcvtpd_u64_f64(height * v13), 8uLL, AlignedBytesPerRow, DeviceRGB, 0x2002u);
  CGColorSpaceRelease(DeviceRGB);
  v28.size.width = ceil(width * v13);
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.height = v14;
  CGContextClearRect(v17, v28);
  CGContextTranslateCTM(v17, 0.0, v14);
  CGContextScaleCTM(v17, v13, -v13);
  CGContextGetCTM(&v26, v17);
  CGContextSetBaseCTM();
  UIGraphicsPushContext(v17);
  v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.7];
  [v18 set];

  v29.origin.x = *MEMORY[0x1E695EFF8];
  v29.origin.y = *(MEMORY[0x1E695EFF8] + 8);
  v29.size.width = width;
  v29.size.height = height;
  UIRectFill(v29);
  v19 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
  [v19 set];

  v20 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:x startAngle:y endAngle:a6 clockwise:{0.0, 6.28318531}];
  [v20 setLineWidth:3.0];
  [v20 strokeWithBlendMode:17 alpha:1.0];
  if (fabs(a3) >= 2.22044605e-16)
  {
    v21 = [MEMORY[0x1E69DC728] bezierPath];
    [v21 moveToPoint:{x, y}];
    [v21 addLineToPoint:{x, y - a6}];
    [v21 addArcWithCenter:1 radius:x startAngle:y endAngle:a6 clockwise:{-1.57079633, a3 / 100.0 * 6.28318531 + -1.57079633}];
    [v21 addLineToPoint:{x, y}];
    [v21 fillWithBlendMode:17 alpha:1.0];
  }

  UIGraphicsPopContext();
  Image = CGBitmapContextCreateImage(v17);
  CGContextRelease(v17);
  v23 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image scale:0 orientation:v13];
  CGImageRelease(Image);

  return v23;
}

- (void)setAnimating:(BOOL)a3
{
  if (self->_animating != a3)
  {
    self->_animating = a3;
    if (a3)
    {
      v4 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__onDisplayLink_];
      [(CKBrowserIconView *)self setDisplayLink:v4];

      v7 = [(CKBrowserIconView *)self displayLink];
      v5 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v7 addToRunLoop:v5 forMode:*MEMORY[0x1E695DA28]];
    }

    else
    {
      v6 = [(CKBrowserIconView *)self displayLink];
      [v6 invalidate];

      [(CKBrowserIconView *)self setDisplayLink:0];
    }
  }
}

- (void)_onDisplayLink:(id)a3
{
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  [(CKBrowserIconView *)self animationStartTime];
  v8 = v7;
  [(CKBrowserIconView *)self animationEndPercentComplete];
  v10 = v9;
  [(CKBrowserIconView *)self animationStartPercentComplete];
  v12 = vabdd_f64(v10, v11) * 0.005;
  [(CKBrowserIconView *)self animationStartTime];
  if (v6 <= v13 + v12)
  {
    v15 = v6 - v8;
    [(CKBrowserIconView *)self animationStartPercentComplete];
    v17 = v16;
    v18 = v15 / v12;
    [(CKBrowserIconView *)self animationEndPercentComplete];
    v20 = v19;
    [(CKBrowserIconView *)self animationStartPercentComplete];
    self->_percentComplete = v17 + v18 * (v20 - v21);
  }

  else
  {
    [(CKBrowserIconView *)self animationEndPercentComplete];
    self->_percentComplete = v14;
    [(CKBrowserIconView *)self setAnimating:0];
  }

  [(CKBrowserIconView *)self setNeedsDisplay];
}

@end