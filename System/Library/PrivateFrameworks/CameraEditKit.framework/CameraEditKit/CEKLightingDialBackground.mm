@interface CEKLightingDialBackground
- (CEKLightingDialBackground)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setRadius:(double)a3;
@end

@implementation CEKLightingDialBackground

- (CEKLightingDialBackground)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CEKLightingDialBackground;
  v3 = [(CEKLightingDialBackground *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CEKLightingDialBackground *)v3 setOpaque:0];
    [(CEKLightingDialBackground *)v4 setContentMode:3];
  }

  return v4;
}

- (void)setRadius:(double)a3
{
  if (self->_radius != a3)
  {
    self->_radius = a3;
    [(CEKLightingDialBackground *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  [(CEKLightingDialBackground *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CEKLightingDialBackground *)self radius];
  UIRoundToViewScale();
  v14 = v13;
  v15 = CEKPixelWidthForView(self);
  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v10;
  v31.size.height = v12;
  v16 = v15 + CGRectGetMinY(v31);
  v32.origin.x = v6;
  v32.origin.y = v8;
  v32.size.width = v10;
  v32.size.height = v12;
  v17 = CGRectGetMidX(v32) + v14 * -0.5;
  v33.origin.x = v17;
  v33.origin.y = v16;
  v33.size.width = v14;
  v33.size.height = v14;
  v34 = CGRectInset(v33, v15, v15);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v22 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v23 = [v22 colorWithAlphaComponent:0.3];
  [v23 set];

  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  CGContextFillEllipseInRect(CurrentContext, v35);
  v24 = [MEMORY[0x1E69DC888] labelColor];
  v25 = [v24 colorWithAlphaComponent:0.1];
  [v25 set];

  CGContextSetLineWidth(CurrentContext, v15);
  v26 = v17;
  v27 = v16;
  v28 = v14;
  v29 = v14;

  CGContextStrokeEllipseInRect(CurrentContext, *&v26);
}

@end