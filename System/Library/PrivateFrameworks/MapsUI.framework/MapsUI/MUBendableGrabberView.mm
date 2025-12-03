@interface MUBendableGrabberView
- (CGSize)_intrinsicSizeWithAngle:(double)angle;
- (CGSize)intrinsicContentSize;
- (MUBendableGrabberView)initWithSize:(CGSize)size minimumAngle:(double)angle maximumAngle:(double)maximumAngle;
- (UIColor)color;
- (void)drawRect:(CGRect)rect;
- (void)setColor:(id)color;
- (void)setLayoutProgress:(double)progress;
@end

@implementation MUBendableGrabberView

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v19 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = MUBendableGrabberView;
  [(MUBendableGrabberView *)&v13 drawRect:?];
  CurrentContext = UIGraphicsGetCurrentContext();
  if (CurrentContext)
  {
    v9 = CurrentContext;
    v10 = self->_height;
    color = [(MUBendableGrabberView *)self color];
    [color setStroke];
    CGContextSetLineWidth(v9, v10);
    CGContextSetLineCap(v9, kCGLineCapRound);
    points.x = v10 * 0.5 + x;
    points.y = y + height - v10 * 0.5;
    v15 = x + width * 0.5;
    v16 = v10 * 0.5 + y;
    v17 = x + width - v10 * 0.5;
    v18 = points.y;
    CGContextAddLines(v9, &points, 3uLL);
    CGContextStrokePath(v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (CGSize)_intrinsicSizeWithAngle:(double)angle
{
  v4 = __sincos_stret(angle);
  width = self->_width;
  v6 = self->_height + v4.__sinval * 0.5 * width;
  v7 = width * v4.__cosval;
  result.height = v6;
  result.width = v7;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(MUBendableGrabberView *)self _effectiveAngle];

  [(MUBendableGrabberView *)self _intrinsicSizeWithAngle:?];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setLayoutProgress:(double)progress
{
  v4 = fmin(fmax(progress, 0.0), 1.0);
  if (vabdd_f64(self->_layoutProgress, v4) > 2.22044605e-16)
  {
    self->_layoutProgress = v4;
    [(MUBendableGrabberView *)self setNeedsLayout];
    [(MUBendableGrabberView *)self invalidateIntrinsicContentSize];

    [(MUBendableGrabberView *)self setNeedsDisplay];
  }
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (self->_color != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_color, color);
    [(MUBendableGrabberView *)self setNeedsDisplay];
    colorCopy = v6;
  }
}

- (UIColor)color
{
  color = self->_color;
  if (!color)
  {
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v5 = self->_color;
    self->_color = tertiaryLabelColor;

    color = self->_color;
  }

  return color;
}

- (MUBendableGrabberView)initWithSize:(CGSize)size minimumAngle:(double)angle maximumAngle:(double)maximumAngle
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = MUBendableGrabberView;
  v9 = [(MUBendableGrabberView *)&v12 initWithFrame:0.0, 0.0, size.width, size.height];
  v10 = v9;
  if (v9)
  {
    v9->_width = width;
    v9->_height = height;
    v9->_minimumAngle = angle;
    v9->_maximumAngle = maximumAngle;
    [(MUBendableGrabberView *)v9 setOpaque:0];
    [(MUBendableGrabberView *)v10 setClearsContextBeforeDrawing:1];
  }

  return v10;
}

@end