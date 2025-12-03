@interface CAMLevelCrosshair
+ (void)_drawCrosshairInContext:(CGContext *)context withBounds:(CGRect)bounds strokeWidth:(double)width color:(id)color;
- (CAMLevelCrosshair)initWithCoder:(id)coder;
- (CAMLevelCrosshair)initWithFrame:(CGRect)frame;
- (void)_commonCAMLevelCrosshairInitialization;
- (void)drawRect:(CGRect)rect;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation CAMLevelCrosshair

+ (void)_drawCrosshairInContext:(CGContext *)context withBounds:(CGRect)bounds strokeWidth:(double)width color:(id)color
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [color setStroke];
  UIRectGetCenter();
  v12 = v11;
  v14 = v13;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MinY = CGRectGetMinY(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MaxY = CGRectGetMaxY(v21);
  CGContextMoveToPoint(context, v12, MinY);
  CGContextAddLineToPoint(context, v12, MaxY);
  CGContextDrawPath(context, kCGPathStroke);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MinX = CGRectGetMinX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MaxX = CGRectGetMaxX(v23);
  CGContextMoveToPoint(context, MinX, v14);
  CGContextAddLineToPoint(context, MaxX, v14);

  CGContextDrawPath(context, kCGPathStroke);
}

- (CAMLevelCrosshair)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CAMLevelCrosshair;
  v3 = [(CAMLevelCrosshair *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMLevelCrosshair *)v3 _commonCAMLevelCrosshairInitialization];
  }

  return v4;
}

- (CAMLevelCrosshair)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CAMLevelCrosshair;
  v3 = [(CAMLevelCrosshair *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CAMLevelCrosshair *)v3 _commonCAMLevelCrosshairInitialization];
  }

  return v4;
}

- (void)_commonCAMLevelCrosshairInitialization
{
  [(CAMLevelCrosshair *)self setOpaque:0];

  [(CAMLevelCrosshair *)self setContentMode:3];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(CAMLevelCrosshair *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  [(CAMLevelCrosshair *)self bounds:rect.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  isHighlighted = [(CAMLevelCrosshair *)self isHighlighted];
  v13 = CAMPixelWidthForView(self);
  v16 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.15];
  if (isHighlighted)
  {
    [MEMORY[0x1E69DC888] systemYellowColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v14 = ;
  CurrentContext = UIGraphicsGetCurrentContext();
  [objc_opt_class() _drawCrosshairInContext:CurrentContext withBounds:v16 strokeWidth:v5 color:{v7, v9, v11, v13 * 2.0 + 1.0}];
  [objc_opt_class() _drawCrosshairInContext:CurrentContext withBounds:v14 strokeWidth:v5 color:{v7, v9, v11, 1.0}];
}

@end