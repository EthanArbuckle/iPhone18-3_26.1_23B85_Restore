@interface CAMShutterButtonRingView
- (CAMShutterButtonRingView)initWithCoder:(id)coder;
- (CAMShutterButtonRingView)initWithFrame:(CGRect)frame;
- (CAMShutterButtonRingView)initWithSpec:(CAMShutterButtonSpec *)spec;
- (CAMShutterButtonSpec)spec;
- (UIEdgeInsets)alignmentRectInsets;
- (void)drawRect:(CGRect)rect;
- (void)setColor:(id)color;
- (void)setShowContrastBorder:(BOOL)border;
- (void)setSpec:(CAMShutterButtonSpec *)spec;
@end

@implementation CAMShutterButtonRingView

- (CAMShutterButtonRingView)initWithSpec:(CAMShutterButtonSpec *)spec
{
  v13.receiver = self;
  v13.super_class = CAMShutterButtonRingView;
  v4 = [(CAMShutterButtonRingView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    interRingSpacing = spec->interRingSpacing;
    v7 = *&spec->stopSquareSideLength;
    *(v4 + 424) = *&spec->outerRingDiameter;
    *(v4 + 440) = v7;
    *(v4 + 57) = interRingSpacing;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    color = v5->_color;
    v5->_color = whiteColor;

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(CAMShutterButtonRingView *)v5 setBackgroundColor:clearColor];

    [(CAMShutterButtonRingView *)v5 setUserInteractionEnabled:0];
    [(CAMShutterButtonRingView *)v5 setContentMode:3];
    v11 = v5;
  }

  return v5;
}

- (CAMShutterButtonRingView)initWithFrame:(CGRect)frame
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  CAMShutterButtonSpecForLayoutStyle(cam_initialLayoutStyle, &v9);
  v7[0] = v9;
  v7[1] = v10;
  v8 = v11;
  return [(CAMShutterButtonRingView *)self initWithSpec:v7];
}

- (CAMShutterButtonRingView)initWithCoder:(id)coder
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  CAMShutterButtonSpecForLayoutStyle(cam_initialLayoutStyle, &v9);
  v7[0] = v9;
  v7[1] = v10;
  v8 = v11;
  return [(CAMShutterButtonRingView *)self initWithSpec:v7];
}

- (UIEdgeInsets)alignmentRectInsets
{
  showContrastBorder = [(CAMShutterButtonRingView *)self showContrastBorder];
  v3 = 0.0;
  if (showContrastBorder)
  {
    v3 = 1.0;
  }

  v4 = v3;
  v5 = v3;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_color] & 1) == 0)
  {
    objc_storeStrong(&self->_color, color);
    [(CAMShutterButtonRingView *)self setNeedsDisplay];
  }
}

- (void)setShowContrastBorder:(BOOL)border
{
  if (self->_showContrastBorder != border)
  {
    self->_showContrastBorder = border;
    [(CAMShutterButtonRingView *)self setNeedsDisplay];
  }
}

- (void)setSpec:(CAMShutterButtonSpec *)spec
{
  interRingSpacing = spec->interRingSpacing;
  v4 = *&spec->stopSquareSideLength;
  *&self->_spec.outerRingDiameter = *&spec->outerRingDiameter;
  *&self->_spec.stopSquareSideLength = v4;
  self->_spec.interRingSpacing = interRingSpacing;
  [(CAMShutterButtonRingView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  v4 = [(CAMShutterButtonRingView *)self showContrastBorder:rect.origin.x];
  outerRingStrokeWidth = self->_spec.outerRingStrokeWidth;
  v6 = self->_spec.outerRingDiameter * 0.5;
  [(CAMShutterButtonRingView *)self bounds];
  [(CAMShutterButtonRingView *)self alignmentRectForFrame:?];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MidY = CGRectGetMidY(v20);
  CurrentContext = UIGraphicsGetCurrentContext();
  color = [(CAMShutterButtonRingView *)self color];
  [color set];

  CGContextSetLineWidth(CurrentContext, outerRingStrokeWidth);
  CGContextBeginPath(CurrentContext);
  CGContextMoveToPoint(CurrentContext, v6 - outerRingStrokeWidth * 0.5 + MidX, MidY);
  CGContextAddArc(CurrentContext, MidX, MidY, v6 - outerRingStrokeWidth * 0.5, 6.28318531, 0.0, 1);
  CGContextClosePath(CurrentContext);
  CGContextStrokePath(CurrentContext);
  if (v4)
  {
    v15 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.15];
    [v15 set];

    CGContextSetLineWidth(CurrentContext, 1.0);
    v16 = CAMPixelWidthForView(self);
    v17 = v6 - outerRingStrokeWidth - v16 * 0.5;
    CGContextBeginPath(CurrentContext);
    CGContextMoveToPoint(CurrentContext, v6 + 0.5 + MidX, MidY);
    CGContextAddArc(CurrentContext, MidX, MidY, v6 + 0.5, 6.28318531, 0.0, 1);
    CGContextClosePath(CurrentContext);
    CGContextStrokePath(CurrentContext);
    CGContextSetLineWidth(CurrentContext, v16);
    CGContextBeginPath(CurrentContext);
    CGContextMoveToPoint(CurrentContext, MidX + v17, MidY);
    CGContextAddArc(CurrentContext, MidX, MidY, v17, 6.28318531, 0.0, 1);
    CGContextClosePath(CurrentContext);

    CGContextStrokePath(CurrentContext);
  }
}

- (CAMShutterButtonSpec)spec
{
  v3 = *&self[11].outerRingDiameter;
  *&retstr->outerRingDiameter = *&self[10].stopSquareCornerRadius;
  *&retstr->stopSquareSideLength = v3;
  retstr->interRingSpacing = self[11].stopSquareSideLength;
  return self;
}

@end