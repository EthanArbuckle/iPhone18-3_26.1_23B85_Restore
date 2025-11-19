@interface CAMLevelCrosshair
+ (void)_drawCrosshairInContext:(CGContext *)a3 withBounds:(CGRect)a4 strokeWidth:(double)a5 color:(id)a6;
- (CAMLevelCrosshair)initWithCoder:(id)a3;
- (CAMLevelCrosshair)initWithFrame:(CGRect)a3;
- (void)_commonCAMLevelCrosshairInitialization;
- (void)drawRect:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation CAMLevelCrosshair

+ (void)_drawCrosshairInContext:(CGContext *)a3 withBounds:(CGRect)a4 strokeWidth:(double)a5 color:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [a6 setStroke];
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
  CGContextMoveToPoint(a3, v12, MinY);
  CGContextAddLineToPoint(a3, v12, MaxY);
  CGContextDrawPath(a3, kCGPathStroke);
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
  CGContextMoveToPoint(a3, MinX, v14);
  CGContextAddLineToPoint(a3, MaxX, v14);

  CGContextDrawPath(a3, kCGPathStroke);
}

- (CAMLevelCrosshair)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CAMLevelCrosshair;
  v3 = [(CAMLevelCrosshair *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMLevelCrosshair *)v3 _commonCAMLevelCrosshairInitialization];
  }

  return v4;
}

- (CAMLevelCrosshair)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CAMLevelCrosshair;
  v3 = [(CAMLevelCrosshair *)&v6 initWithCoder:a3];
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

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(CAMLevelCrosshair *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  [(CAMLevelCrosshair *)self bounds:a3.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CAMLevelCrosshair *)self isHighlighted];
  v13 = CAMPixelWidthForView(self);
  v16 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.15];
  if (v12)
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