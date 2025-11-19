@interface NTKWorldClockMapLocationView
- (NTKWorldClockMapLocationView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)positionAtPoint:(CGPoint)a3 withinBounds:(CGRect)a4;
@end

@implementation NTKWorldClockMapLocationView

- (NTKWorldClockMapLocationView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NTKWorldClockMapLocationView;
  v3 = [(NTKWorldClockMapLocationView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKWorldClockMapLocationView *)v3 setOpaque:0];
  }

  return v4;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  v8 = [MEMORY[0x277D75348] whiteColor];
  CGContextSetFillColorWithColor(CurrentContext, [v8 CGColor]);

  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  CGContextFillEllipseInRect(CurrentContext, v10);

  CGContextFillPath(CurrentContext);
}

- (void)positionAtPoint:(CGPoint)a3 withinBounds:(CGRect)a4
{
  rect = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(NTKWorldClockMapLocationView *)self frame];
  UIRectCenteredAboutPointScale();
  v8 = v18.origin.x;
  v9 = v18.origin.y;
  v10 = v18.size.width;
  height = v18.size.height;
  if (CGRectGetMinX(v18) < 0.0)
  {
    v8 = 0.0;
  }

  v19.origin.x = v8;
  v19.origin.y = v9;
  v19.size.width = v10;
  v19.size.height = height;
  if (CGRectGetMinY(v19) < 0.0)
  {
    v9 = 0.0;
  }

  v20.origin.x = v8;
  v20.origin.y = v9;
  v20.size.width = v10;
  v20.size.height = height;
  MaxX = CGRectGetMaxX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = rect;
  if (MaxX > CGRectGetWidth(v21))
  {
    v22.origin.x = x;
    v22.size.height = rect;
    v22.origin.y = y;
    v22.size.width = width;
    v13 = CGRectGetWidth(v22);
    v23.origin.x = v8;
    v23.origin.y = v9;
    v23.size.width = v10;
    v23.size.height = height;
    v8 = v13 - CGRectGetWidth(v23);
  }

  v24.origin.x = v8;
  v24.origin.y = v9;
  v24.size.width = v10;
  v24.size.height = height;
  MaxY = CGRectGetMaxY(v24);
  v25.origin.x = x;
  v25.size.height = rect;
  v25.origin.y = y;
  v25.size.width = width;
  if (MaxY > CGRectGetHeight(v25))
  {
    v26.origin.x = x;
    v26.size.height = rect;
    v26.origin.y = y;
    v26.size.width = width;
    v15 = CGRectGetHeight(v26);
    v27.origin.x = v8;
    v27.origin.y = v9;
    v27.size.width = v10;
    v27.size.height = height;
    v9 = v15 - CGRectGetHeight(v27);
  }

  [(NTKWorldClockMapLocationView *)self setFrame:v8, v9, v10, height];
}

@end