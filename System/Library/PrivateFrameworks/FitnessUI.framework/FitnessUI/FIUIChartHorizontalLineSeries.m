@interface FIUIChartHorizontalLineSeries
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)layoutSubviews;
@end

@implementation FIUIChartHorizontalLineSeries

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = FIUIChartHorizontalLineSeries;
  [(FIUIChartSeries *)&v6 layoutSubviews];
  v3 = [(FIUIChartNumericSeries *)self CGPointsFromDataSet];
  dataPoints = self->_dataPoints;
  self->_dataPoints = v3;

  v5 = [(FIUIChartHorizontalLineSeries *)self layer];
  [v5 setNeedsDisplay];
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  UIGraphicsPushContext(a4);
  CGContextBeginPath(a4);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_dataPoints;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v19 + 1) + 8 * v10) CGPointValue];
        v12 = v11;
        CGContextMoveToPoint(a4, self->_sidePadding, v11);
        [(FIUIChartSeries *)self insetBounds];
        CGContextAddLineToPoint(a4, v13 + self->_sidePadding * -2.0, v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  CGContextClosePath(a4);
  lineWidth = self->_lineWidth;
  color = self->_color;
  if (color)
  {
    v16 = color;
  }

  else
  {
    v16 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v17 = v16;
  v18 = 1.0;
  if (lineWidth > 2.22044605e-16)
  {
    v18 = lineWidth;
  }

  CGContextSetLineWidth(a4, v18);
  CGContextSetStrokeColorWithColor(a4, [(UIColor *)v17 CGColor]);
  CGContextSetLineCap(a4, kCGLineCapRound);
  CGContextDrawPath(a4, kCGPathStroke);
  UIGraphicsPopContext();
}

@end