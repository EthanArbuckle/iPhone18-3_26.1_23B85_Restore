@interface NTKWorldClockHighlightedMapLocationView
- (NTKWorldClockHighlightedMapLocationView)initWithFrame:(CGRect)frame fillColor:(id)color strokeColor:(id)strokeColor strokeWidth:(double)width;
- (void)drawRect:(CGRect)rect;
- (void)setFillColor:(id)color;
- (void)setStrokeColor:(id)color;
@end

@implementation NTKWorldClockHighlightedMapLocationView

- (NTKWorldClockHighlightedMapLocationView)initWithFrame:(CGRect)frame fillColor:(id)color strokeColor:(id)strokeColor strokeWidth:(double)width
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  strokeColorCopy = strokeColor;
  v19.receiver = self;
  v19.super_class = NTKWorldClockHighlightedMapLocationView;
  height = [(NTKWorldClockMapLocationView *)&v19 initWithFrame:x, y, width, height];
  v17 = height;
  if (height)
  {
    objc_storeStrong(&height->_fillColor, color);
    objc_storeStrong(&v17->_strokeColor, strokeColor);
    v17->_strokeWidth = width;
    [(NTKWorldClockHighlightedMapLocationView *)v17 setOpaque:0];
  }

  return v17;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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
  fillColor = [(NTKWorldClockHighlightedMapLocationView *)self fillColor];
  CGContextSetFillColorWithColor(CurrentContext, [fillColor CGColor]);

  strokeColor = [(NTKWorldClockHighlightedMapLocationView *)self strokeColor];
  CGContextSetStrokeColorWithColor(CurrentContext, [strokeColor CGColor]);

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

- (void)setFillColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_fillColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_fillColor, color);
    [(NTKWorldClockHighlightedMapLocationView *)self setNeedsDisplay];
  }
}

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_strokeColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_strokeColor, color);
    [(NTKWorldClockHighlightedMapLocationView *)self setNeedsDisplay];
  }
}

@end