@interface CAMShutterIndicatorView
- (CAMShutterIndicatorView)initWithCoder:(id)coder;
- (CAMShutterIndicatorView)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
- (void)_commonCAMShutterIndicatorViewInitialization;
- (void)drawRect:(CGRect)rect;
@end

@implementation CAMShutterIndicatorView

- (void)_commonCAMShutterIndicatorViewInitialization
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = *MEMORY[0x1E69DB648];
  v3 = [CAMFont cameraFontOfSize:12.0];
  v4 = *MEMORY[0x1E69DB660];
  v14[0] = v3;
  v14[1] = &unk_1F16C8BC8;
  v5 = *MEMORY[0x1E69DB650];
  v13[1] = v4;
  v13[2] = v5;
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v14[2] = whiteColor;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v8 = objc_alloc(MEMORY[0x1E696AAB0]);
  v9 = CAMLocalizedFrameworkString(@"SHUTTER", @"Label for the hardware button which controls the Camera shutter.");
  v10 = [v8 initWithString:v9 attributes:v7];
  indicatorText = self->__indicatorText;
  self->__indicatorText = v10;

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(CAMShutterIndicatorView *)self setBackgroundColor:clearColor];

  [(CAMShutterIndicatorView *)self setUserInteractionEnabled:0];
}

- (CGSize)intrinsicContentSize
{
  _indicatorText = [(CAMShutterIndicatorView *)self _indicatorText];
  [_indicatorText size];
  UIRoundToViewScale();
  v4 = v3;

  v5 = 33.0;
  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

- (CAMShutterIndicatorView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CAMShutterIndicatorView;
  v3 = [(CAMShutterIndicatorView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMShutterIndicatorView *)v3 _commonCAMShutterIndicatorViewInitialization];
    v5 = v4;
  }

  return v4;
}

- (CAMShutterIndicatorView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CAMShutterIndicatorView;
  v3 = [(CAMShutterIndicatorView *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CAMShutterIndicatorView *)v3 _commonCAMShutterIndicatorViewInitialization];
    v5 = v4;
  }

  return v4;
}

- (void)drawRect:(CGRect)rect
{
  [(CAMShutterIndicatorView *)self bounds:rect.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v39 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:12 byRoundingCorners:v5 cornerRadii:{v7, v9, v11, 3.0, 3.0}];
  v42.origin.x = v5;
  v42.origin.y = v7;
  v42.size.width = v9;
  v42.size.height = v11;
  v43 = CGRectInset(v42, 2.0, 0.0);
  v38 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:12 byRoundingCorners:v43.origin.x cornerRadii:{v43.origin.y, v43.size.width, v43.size.height + -2.0, 2.0, 2.0}];
  v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.6];
  [v13 set];

  [v39 fill];
  v37 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v5, v7, v9, v11}];
  [v37 appendPath:v38];
  [v37 setUsesEvenOddFillRule:1];
  [v37 addClip];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [whiteColor set];

  [v39 fill];
  CGContextRestoreGState(CurrentContext);
  _indicatorText = [(CAMShutterIndicatorView *)self _indicatorText];
  [_indicatorText size];
  UIRectCenteredIntegralRectScale();
  v16 = v15;
  v18 = v17;
  v20 = v19 + 1.0;
  v44.origin.x = v5;
  v44.origin.y = v7;
  v44.size.width = v9;
  v44.size.height = v11;
  v21 = CGRectGetMinY(v44) + 13.0;
  v41.width = v9;
  v41.height = v11;
  UIGraphicsBeginImageContextWithOptions(v41, 0, 0.0);
  UIGraphicsGetCurrentContext();
  [_indicatorText drawInRect:{v20, v21, v16, v18, 0}];
  v22 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  CGContextSaveGState(CurrentContext);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  v45.origin.x = v5;
  v45.origin.y = v7;
  v45.size.width = v9;
  v45.size.height = v11;
  Height = CGRectGetHeight(v45);
  CGContextTranslateCTM(CurrentContext, 0.0, -Height);
  cGImage = [v22 CGImage];
  Width = CGImageGetWidth(cGImage);
  v26 = CGImageGetHeight(cGImage);
  BitsPerComponent = CGImageGetBitsPerComponent(cGImage);
  BitsPerPixel = CGImageGetBitsPerPixel(cGImage);
  BytesPerRow = CGImageGetBytesPerRow(cGImage);
  DataProvider = CGImageGetDataProvider(cGImage);
  Decode = CGImageGetDecode(cGImage);
  ShouldInterpolate = CGImageGetShouldInterpolate(cGImage);
  v33 = CGImageMaskCreate(Width, v26, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, Decode, ShouldInterpolate);
  v46.origin.x = v5;
  v46.origin.y = v7;
  v46.size.width = v9;
  v46.size.height = v11;
  CGContextClipToMask(CurrentContext, v46, v33);
  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  [whiteColor2 set];

  v47.origin.x = v5;
  v47.origin.y = v7;
  v47.size.width = v9;
  v47.size.height = v11;
  v48 = CGRectInset(v47, 3.0, 0.0);
  v35 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:3 byRoundingCorners:v48.origin.x cornerRadii:{v48.origin.y + 3.0, v48.size.width, v48.size.height, 2.0, 2.0}];
  [v35 fill];
  CGContextRestoreGState(CurrentContext);
  CGImageRelease(v33);
}

@end