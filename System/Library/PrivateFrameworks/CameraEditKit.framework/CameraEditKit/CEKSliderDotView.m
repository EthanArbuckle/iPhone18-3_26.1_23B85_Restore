@interface CEKSliderDotView
- (CEKSliderDotView)initWithFrame:(CGRect)a3;
- (id)dotCircleColor;
- (void)drawRect:(CGRect)a3;
- (void)setUseLegibilityShadow:(BOOL)a3;
@end

@implementation CEKSliderDotView

- (CEKSliderDotView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CEKSliderDotView;
  v3 = [(CEKSliderDotView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CEKSliderDotView *)v3 setContentMode:3];
  }

  return v4;
}

- (void)setUseLegibilityShadow:(BOOL)a3
{
  if (self->_useLegibilityShadow != a3)
  {
    self->_useLegibilityShadow = a3;
    [(CEKSliderDotView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  [(CEKSliderDotView *)self bounds];
  CGContextClearRect(CurrentContext, v21);
  v9 = CEKPixelWidthForView(self);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v23 = CGRectInset(v22, 1.0, 1.0);
  v10 = v23.origin.x;
  v11 = v23.origin.y;
  v12 = v23.size.width;
  v13 = v23.size.height;
  if ([(CEKSliderDotView *)self useLegibilityShadow])
  {
    v24.origin.x = v10;
    v24.origin.y = v11;
    v24.size.width = v12;
    v24.size.height = v13;
    v25 = CGRectInset(v24, -v9, -v9);
    v14 = v25.origin.x;
    v15 = v25.origin.y;
    v16 = v25.size.width;
    v17 = v25.size.height;
    v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.15];
    [v18 set];
    v26.origin.x = v14;
    v26.origin.y = v15;
    v26.size.width = v16;
    v26.size.height = v17;
    CGContextFillEllipseInRect(CurrentContext, v26);

    [(CEKSliderDotView *)self dotCircleColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithWhite:0.400000006 alpha:1.0];
  }
  v19 = ;
  [v19 set];
  v27.origin.x = v10;
  v27.origin.y = v11;
  v27.size.width = v12;
  v27.size.height = v13;
  CGContextFillEllipseInRect(CurrentContext, v27);
}

- (id)dotCircleColor
{
  v2 = [(CEKSliderDotView *)self dotColor];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] labelColor];
  }

  v5 = v4;

  return v5;
}

@end