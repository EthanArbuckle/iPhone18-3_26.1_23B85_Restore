@interface HKPopulationNormsChartGridView
- (CGRect)_determineCanvasRectInRect:(CGRect)a3 yAxisWidth:(double)a4 xAxisHeight:(double)a5;
- (CGRect)determineCanvasRect;
- (HKPopulationNormsChartGridView)initWithXAxisLabels:(id)a3 YAxisLabels:(id)a4;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)relocalizeAxisLabels;
@end

@implementation HKPopulationNormsChartGridView

- (HKPopulationNormsChartGridView)initWithXAxisLabels:(id)a3 YAxisLabels:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKPopulationNormsChartGridView;
  v8 = [(HKPopulationNormsChartGridView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v8)
  {
    v9 = [[HKPopulationNormsAxisView alloc] initWithOrientation:1 axisLabels:v6];
    xAxisView = v8->_xAxisView;
    v8->_xAxisView = v9;

    v11 = [[HKPopulationNormsAxisView alloc] initWithOrientation:0 axisLabels:v7];
    yAxisView = v8->_yAxisView;
    v8->_yAxisView = v11;

    [(HKPopulationNormsChartGridView *)v8 addSubview:v8->_xAxisView];
    [(HKPopulationNormsChartGridView *)v8 addSubview:v8->_yAxisView];
    v8->_xAxisSegmentCount = [v6 count];
    v8->_yAxisSegmentCount = [v7 count];
  }

  return v8;
}

- (CGRect)determineCanvasRect
{
  [(HKPopulationNormsChartGridView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(HKPopulationNormsChartGridView *)self _determineYAxisWidth];
  v12 = v11;
  [(HKPopulationNormsChartGridView *)self _determineXAxisHeight];

  [(HKPopulationNormsChartGridView *)self _determineCanvasRectInRect:v4 yAxisWidth:v6 xAxisHeight:v8, v10, v12, v13];
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_determineCanvasRectInRect:(CGRect)a3 yAxisWidth:(double)a4 xAxisHeight:(double)a5
{
  v5 = a3.origin.x + 0.0;
  v6 = a3.origin.y + 0.0;
  v7 = a3.size.width - (a4 + 0.0);
  v8 = a3.size.height - (a5 + 0.0);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)relocalizeAxisLabels
{
  [(HKPopulationNormsAxisView *)self->_xAxisView setNeedsLayout];
  yAxisView = self->_yAxisView;

  [(HKPopulationNormsAxisView *)yAxisView setNeedsLayout];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = HKPopulationNormsChartGridView;
  [(HKPopulationNormsChartGridView *)&v9 layoutSubviews];
  [(HKPopulationNormsChartGridView *)self _determineYAxisWidth];
  v4 = v3;
  [(HKPopulationNormsChartGridView *)self _determineXAxisHeight];
  [(HKPopulationNormsChartGridView *)self frame];
  [HKPopulationNormsChartGridView _determineCanvasRectInRect:"_determineCanvasRectInRect:yAxisWidth:xAxisHeight:" yAxisWidth:? xAxisHeight:?];
  v6 = v5;
  v8 = v7;
  [(HKPopulationNormsAxisView *)self->_xAxisView setFrame:0.0, v7];
  [(HKPopulationNormsAxisView *)self->_yAxisView setFrame:v6, 0.0, v4, v8];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v25.receiver = self;
  v25.super_class = HKPopulationNormsChartGridView;
  [(HKPopulationNormsChartGridView *)&v25 drawRect:?];
  CurrentContext = UIGraphicsGetCurrentContext();
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MinX = CGRectGetMinX(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MinY = CGRectGetMinY(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MaxX = CGRectGetMaxX(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MaxY = CGRectGetMaxY(v29);
  [(HKPopulationNormsChartGridView *)self _determineYAxisWidth];
  v14 = v13;
  [(HKPopulationNormsChartGridView *)self _determineXAxisHeight];
  v16 = v15;
  v17 = [MEMORY[0x1E69DC888] hk_chartAxisMajorGridColor];
  CGContextSetStrokeColorWithColor(CurrentContext, [v17 CGColor]);

  CGContextSetLineWidth(CurrentContext, 0.5);
  CGContextBeginPath(CurrentContext);
  CGContextMoveToPoint(CurrentContext, MinX + 0.25, MinY);
  CGContextAddLineToPoint(CurrentContext, MinX + 0.25, MaxY);
  CGContextMoveToPoint(CurrentContext, MinX, MinY + 0.25);
  CGContextAddLineToPoint(CurrentContext, MaxX - v14, MinY + 0.25);
  CGContextMoveToPoint(CurrentContext, MaxX - v14, MinY);
  CGContextAddLineToPoint(CurrentContext, MaxX - v14, MaxY);
  CGContextMoveToPoint(CurrentContext, MinX, MaxY - v16);
  CGContextAddLineToPoint(CurrentContext, MaxX - v14, MaxY - v16);
  CGContextStrokePath(CurrentContext);
  if (self->_yAxisSegmentCount >= 2)
  {
    CGContextBeginPath(CurrentContext);
    yAxisSegmentCount = self->_yAxisSegmentCount;
    if (yAxisSegmentCount)
    {
      v19 = 0;
      v20 = (MaxY - MinY - v16) / (yAxisSegmentCount - 1);
      do
      {
        CGContextMoveToPoint(CurrentContext, MinX, MinY + v20 * v19);
        CGContextAddLineToPoint(CurrentContext, MaxX - v14, MinY + v20 * v19++);
      }

      while (self->_yAxisSegmentCount > v19);
    }

    CGContextStrokePath(CurrentContext);
  }

  v21 = [MEMORY[0x1E69DC888] hk_chartAxisMinorGridColor];
  CGContextSetStrokeColorWithColor(CurrentContext, [v21 CGColor]);

  if (self->_xAxisSegmentCount >= 2)
  {
    CGContextSetLineDash(CurrentContext, 2.0, drawRect__lengths, 2uLL);
    CGContextBeginPath(CurrentContext);
    xAxisSegmentCount = self->_xAxisSegmentCount;
    if (xAxisSegmentCount)
    {
      v23 = 0;
      v24 = (MaxX - MinX - v14) / xAxisSegmentCount;
      do
      {
        CGContextMoveToPoint(CurrentContext, MinX + v24 * v23, MaxY);
        CGContextAddLineToPoint(CurrentContext, MinX + v24 * v23++, MinY);
      }

      while (self->_xAxisSegmentCount > v23);
    }

    CGContextStrokePath(CurrentContext);
  }
}

@end