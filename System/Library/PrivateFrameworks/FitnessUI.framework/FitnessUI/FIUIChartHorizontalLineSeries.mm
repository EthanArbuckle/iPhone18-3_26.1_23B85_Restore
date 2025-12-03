@interface FIUIChartHorizontalLineSeries
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)layoutSubviews;
@end

@implementation FIUIChartHorizontalLineSeries

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = FIUIChartHorizontalLineSeries;
  [(FIUIChartSeries *)&v6 layoutSubviews];
  cGPointsFromDataSet = [(FIUIChartNumericSeries *)self CGPointsFromDataSet];
  dataPoints = self->_dataPoints;
  self->_dataPoints = cGPointsFromDataSet;

  layer = [(FIUIChartHorizontalLineSeries *)self layer];
  [layer setNeedsDisplay];
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  v24 = *MEMORY[0x1E69E9840];
  UIGraphicsPushContext(context);
  CGContextBeginPath(context);
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
        CGContextMoveToPoint(context, self->_sidePadding, v11);
        [(FIUIChartSeries *)self insetBounds];
        CGContextAddLineToPoint(context, v13 + self->_sidePadding * -2.0, v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  CGContextClosePath(context);
  lineWidth = self->_lineWidth;
  color = self->_color;
  if (color)
  {
    whiteColor = color;
  }

  else
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  v17 = whiteColor;
  v18 = 1.0;
  if (lineWidth > 2.22044605e-16)
  {
    v18 = lineWidth;
  }

  CGContextSetLineWidth(context, v18);
  CGContextSetStrokeColorWithColor(context, [(UIColor *)v17 CGColor]);
  CGContextSetLineCap(context, kCGLineCapRound);
  CGContextDrawPath(context, kCGPathStroke);
  UIGraphicsPopContext();
}

@end