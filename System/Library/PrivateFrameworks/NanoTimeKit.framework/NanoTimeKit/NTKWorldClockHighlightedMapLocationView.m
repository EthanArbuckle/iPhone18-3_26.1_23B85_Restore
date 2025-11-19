@interface NTKWorldClockHighlightedMapLocationView
- (NTKWorldClockHighlightedMapLocationView)initWithFrame:(CGRect)a3 fillColor:(id)a4 strokeColor:(id)a5 strokeWidth:(double)a6;
- (void)drawRect:(CGRect)a3;
- (void)setFillColor:(id)a3;
- (void)setStrokeColor:(id)a3;
@end

@implementation NTKWorldClockHighlightedMapLocationView

- (NTKWorldClockHighlightedMapLocationView)initWithFrame:(CGRect)a3 fillColor:(id)a4 strokeColor:(id)a5 strokeWidth:(double)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = NTKWorldClockHighlightedMapLocationView;
  v16 = [(NTKWorldClockMapLocationView *)&v19 initWithFrame:x, y, width, height];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_fillColor, a4);
    objc_storeStrong(&v17->_strokeColor, a5);
    v17->_strokeWidth = a6;
    [(NTKWorldClockHighlightedMapLocationView *)v17 setOpaque:0];
  }

  return v17;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(NTKWorldClockHighlightedMapLocationView *)self strokeWidth];
  v9 = v8 * 0.5;
  [(NTKWorldClockHighlightedMapLocationView *)self strokeWidth];
  v11 = v10 * 0.5;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v22 = CGRectInset(v21, v9, v11);
  v12 = v22.origin.x;
  v13 = v22.origin.y;
  v14 = v22.size.width;
  v15 = v22.size.height;
  CurrentContext = UIGraphicsGetCurrentContext();
  v17 = [(NTKWorldClockHighlightedMapLocationView *)self fillColor];
  CGContextSetFillColorWithColor(CurrentContext, [v17 CGColor]);

  v18 = [(NTKWorldClockHighlightedMapLocationView *)self strokeColor];
  CGContextSetStrokeColorWithColor(CurrentContext, [v18 CGColor]);

  [(NTKWorldClockHighlightedMapLocationView *)self strokeWidth];
  CGContextSetLineWidth(CurrentContext, v19);
  v23.origin.x = v12;
  v23.origin.y = v13;
  v23.size.width = v14;
  v23.size.height = v15;
  CGContextFillEllipseInRect(CurrentContext, v23);
  v24.origin.x = v12;
  v24.origin.y = v13;
  v24.size.width = v14;
  v24.size.height = v15;
  CGContextStrokeEllipseInRect(CurrentContext, v24);

  CGContextFillPath(CurrentContext);
}

- (void)setFillColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_fillColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_fillColor, a3);
    [(NTKWorldClockHighlightedMapLocationView *)self setNeedsDisplay];
  }
}

- (void)setStrokeColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_strokeColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_strokeColor, a3);
    [(NTKWorldClockHighlightedMapLocationView *)self setNeedsDisplay];
  }
}

@end