@interface EDGridView
- (EDGridView)initWithWithCellCount:(int64_t)a3;
- (void)drawRect:(CGRect)a3;
- (void)setStrokeColor:(id)a3;
@end

@implementation EDGridView

- (EDGridView)initWithWithCellCount:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = EDGridView;
  v4 = [(EDGridView *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_cellCount = a3;
    v6 = [MEMORY[0x277D75348] whiteColor];
    strokeColor = v5->_strokeColor;
    v5->_strokeColor = v6;
  }

  return v5;
}

- (void)setStrokeColor:(id)a3
{
  objc_storeStrong(&self->_strokeColor, a3);

  [(EDGridView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  v16 = *MEMORY[0x277D85DE8];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetStrokeColorWithColor(CurrentContext, [(UIColor *)self->_strokeColor CGColor]);
  [(EDGridView *)self bounds];
  v7 = v6;
  cellCount = self->_cellCount;
  v9 = v5 / cellCount;
  if (v5 / cellCount < v5)
  {
    v10 = v5;
    v11 = v5 / cellCount;
    do
    {
      points.x = v11;
      points.y = 0.0;
      v14 = v11;
      v15 = v7;
      CGContextStrokeLineSegments(CurrentContext, &points, 2uLL);
      v11 = v9 + v11;
    }

    while (v11 < v10);
  }

  if (v9 < v7)
  {
    v12 = v9;
    do
    {
      points.x = 0.0;
      points.y = v12;
      v14 = v7;
      v15 = v12;
      CGContextStrokeLineSegments(CurrentContext, &points, 2uLL);
      v12 = v9 + v12;
    }

    while (v12 < v7);
  }
}

@end