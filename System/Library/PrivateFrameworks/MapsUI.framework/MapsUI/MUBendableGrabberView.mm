@interface MUBendableGrabberView
- (CGSize)_intrinsicSizeWithAngle:(double)a3;
- (CGSize)intrinsicContentSize;
- (MUBendableGrabberView)initWithSize:(CGSize)a3 minimumAngle:(double)a4 maximumAngle:(double)a5;
- (UIColor)color;
- (void)drawRect:(CGRect)a3;
- (void)setColor:(id)a3;
- (void)setLayoutProgress:(double)a3;
@end

@implementation MUBendableGrabberView

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = MUBendableGrabberView;
  [(MUBendableGrabberView *)&v13 drawRect:?];
  CurrentContext = UIGraphicsGetCurrentContext();
  if (CurrentContext)
  {
    v9 = CurrentContext;
    v10 = self->_height;
    v11 = [(MUBendableGrabberView *)self color];
    [v11 setStroke];
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

- (CGSize)_intrinsicSizeWithAngle:(double)a3
{
  v4 = __sincos_stret(a3);
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

- (void)setLayoutProgress:(double)a3
{
  v4 = fmin(fmax(a3, 0.0), 1.0);
  if (vabdd_f64(self->_layoutProgress, v4) > 2.22044605e-16)
  {
    self->_layoutProgress = v4;
    [(MUBendableGrabberView *)self setNeedsLayout];
    [(MUBendableGrabberView *)self invalidateIntrinsicContentSize];

    [(MUBendableGrabberView *)self setNeedsDisplay];
  }
}

- (void)setColor:(id)a3
{
  v5 = a3;
  if (self->_color != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_color, a3);
    [(MUBendableGrabberView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (UIColor)color
{
  color = self->_color;
  if (!color)
  {
    v4 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v5 = self->_color;
    self->_color = v4;

    color = self->_color;
  }

  return color;
}

- (MUBendableGrabberView)initWithSize:(CGSize)a3 minimumAngle:(double)a4 maximumAngle:(double)a5
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = MUBendableGrabberView;
  v9 = [(MUBendableGrabberView *)&v12 initWithFrame:0.0, 0.0, a3.width, a3.height];
  v10 = v9;
  if (v9)
  {
    v9->_width = width;
    v9->_height = height;
    v9->_minimumAngle = a4;
    v9->_maximumAngle = a5;
    [(MUBendableGrabberView *)v9 setOpaque:0];
    [(MUBendableGrabberView *)v10 setClearsContextBeforeDrawing:1];
  }

  return v10;
}

@end