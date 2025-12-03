@interface CKBrowserIconView
+ (id)_pieImageForPercentComplete:(double)complete size:(CGSize)size center:(CGPoint)center radius:(double)radius;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKBrowserIconView)initWithFrame:(CGRect)frame;
- (void)_onDisplayLink:(id)link;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setAnimating:(BOOL)animating;
- (void)setIconImage:(id)image;
- (void)setPercentComplete:(double)complete animated:(BOOL)animated;
@end

@implementation CKBrowserIconView

- (CKBrowserIconView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CKBrowserIconView;
  v3 = [(CKBrowserIconView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setIconImage:(id)image
{
  imageCopy = image;
  if (self->_iconImage != imageCopy)
  {
    v8 = imageCopy;
    objc_storeStrong(&self->_iconImage, image);
    layer = [MEMORY[0x1E6979398] layer];
    [layer setContents:{-[UIImage CGImage](self->_iconImage, "CGImage")}];
    layer2 = [(CKBrowserIconView *)self layer];
    [layer2 setMask:layer];

    [(CKBrowserIconView *)self setNeedsDisplay];
    [(CKBrowserIconView *)self invalidateIntrinsicContentSize];

    imageCopy = v8;
  }
}

- (void)setPercentComplete:(double)complete animated:(BOOL)animated
{
  if (animated)
  {
    if (![(CKBrowserIconView *)self animating])
    {
      [(CKBrowserIconView *)self percentComplete];
      if (v6 == complete)
      {
        return;
      }
    }

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    v9 = v8;

    [(CKBrowserIconView *)self setAnimationStartTime:v9];
    [(CKBrowserIconView *)self percentComplete];
    [(CKBrowserIconView *)self setAnimationStartPercentComplete:?];
    [(CKBrowserIconView *)self setAnimationEndPercentComplete:complete];
    [(CKBrowserIconView *)self setAnimating:1];
  }

  else
  {
    [(CKBrowserIconView *)self setAnimating:?];
    if (self->_percentComplete == complete)
    {
      return;
    }

    self->_percentComplete = complete;
  }

  [(CKBrowserIconView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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
  iconImage = [(CKBrowserIconView *)self iconImage];

  if (iconImage)
  {
    iconImage2 = [(CKBrowserIconView *)self iconImage];
    [iconImage2 drawInRect:17 blendMode:v9 alpha:{v11, v13, v15, 0.7}];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(CKBrowserIconView *)self iconImage:fits.width];
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
  iconImage = [(CKBrowserIconView *)self iconImage];
  [iconImage size];
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
  layer = [(CKBrowserIconView *)self layer];
  [layer bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  mask = [layer mask];
  [mask setFrame:{v5, v7, v9, v11}];
}

+ (id)_pieImageForPercentComplete:(double)complete size:(CGSize)size center:(CGPoint)center radius:(double)radius
{
  y = center.y;
  x = center.x;
  height = size.height;
  width = size.width;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
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

  v20 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:x startAngle:y endAngle:radius clockwise:{0.0, 6.28318531}];
  [v20 setLineWidth:3.0];
  [v20 strokeWithBlendMode:17 alpha:1.0];
  if (fabs(complete) >= 2.22044605e-16)
  {
    bezierPath = [MEMORY[0x1E69DC728] bezierPath];
    [bezierPath moveToPoint:{x, y}];
    [bezierPath addLineToPoint:{x, y - radius}];
    [bezierPath addArcWithCenter:1 radius:x startAngle:y endAngle:radius clockwise:{-1.57079633, complete / 100.0 * 6.28318531 + -1.57079633}];
    [bezierPath addLineToPoint:{x, y}];
    [bezierPath fillWithBlendMode:17 alpha:1.0];
  }

  UIGraphicsPopContext();
  Image = CGBitmapContextCreateImage(v17);
  CGContextRelease(v17);
  v23 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image scale:0 orientation:v13];
  CGImageRelease(Image);

  return v23;
}

- (void)setAnimating:(BOOL)animating
{
  if (self->_animating != animating)
  {
    self->_animating = animating;
    if (animating)
    {
      v4 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__onDisplayLink_];
      [(CKBrowserIconView *)self setDisplayLink:v4];

      displayLink = [(CKBrowserIconView *)self displayLink];
      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [displayLink addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
    }

    else
    {
      displayLink2 = [(CKBrowserIconView *)self displayLink];
      [displayLink2 invalidate];

      [(CKBrowserIconView *)self setDisplayLink:0];
    }
  }
}

- (void)_onDisplayLink:(id)link
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceReferenceDate];
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