@interface FIUIChartSeries
- (CGRect)insetBounds;
- (FIUIChartSeries)init;
- (FIUIChartSeriesDataSource)dataSource;
- (UIEdgeInsets)edgeInsets;
- (double)xValueForPointFromChartPoint:(id)a3;
- (double)yValueForPointFromChartPointValue:(id)a3;
- (float)_relativePositionForXPlaneValue:(id)a3;
- (float)_relativePositionForYPlaneValue:(id)a3;
- (void)_reloadMinMaxValues;
- (void)layoutSubviews;
@end

@implementation FIUIChartSeries

- (FIUIChartSeries)init
{
  v8.receiver = self;
  v8.super_class = FIUIChartSeries;
  v2 = [(FIUIChartSeries *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(MEMORY[0x1E69DDCE0] + 16);
    *&v2->_edgeInsets.top = *MEMORY[0x1E69DDCE0];
    *&v2->_edgeInsets.bottom = v4;
    [(FIUIChartSeries *)v2 setBackgroundColor:0];
    [(FIUIChartSeries *)v3 setOpaque:0];
    v5 = [(FIUIChartSeries *)v3 layer];
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v6 scale];
    [v5 setContentsScale:?];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = FIUIChartSeries;
  [(FIUIChartSeries *)&v3 layoutSubviews];
  [(FIUIChartSeries *)self _reloadMinMaxValues];
}

- (void)_reloadMinMaxValues
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained minXValueForChartSeries:self];
  minXValue = self->_minXValue;
  self->_minXValue = v4;

  v6 = objc_loadWeakRetained(&self->_dataSource);
  v7 = [v6 maxXValueForChartSeries:self];
  maxXValue = self->_maxXValue;
  self->_maxXValue = v7;

  v9 = objc_loadWeakRetained(&self->_dataSource);
  v10 = [v9 minYValueForChartSeries:self];
  minYValue = self->_minYValue;
  self->_minYValue = v10;

  v14 = objc_loadWeakRetained(&self->_dataSource);
  v12 = [v14 maxYValueForChartSeries:self];
  maxYValue = self->_maxYValue;
  self->_maxYValue = v12;
}

- (float)_relativePositionForXPlaneValue:(id)a3
{
  minXValue = self->_minXValue;
  v5 = a3;
  v6 = FIUIChartXAxisFloatValue(minXValue);
  v7 = FIUIChartXAxisFloatValue(self->_maxXValue);
  v8 = FIUIChartXAxisFloatValue(v5);

  return FIUIChartRelativePositionForXPlaneValue(v8, v6, v7);
}

- (float)_relativePositionForYPlaneValue:(id)a3
{
  minYValue = self->_minYValue;
  v5 = a3;
  [(NSNumber *)minYValue doubleValue];
  v7 = v6;
  [(NSNumber *)self->_maxYValue doubleValue];
  v9 = v8;
  [v5 doubleValue];
  v11 = v10;

  return FIUIChartRelativePositionForYPlaneValue(v11, v7, v9);
}

- (double)xValueForPointFromChartPoint:(id)a3
{
  v4 = [a3 xValue];
  v5 = FIUIChartXAxisFloatValue(v4);

  v6 = FIUIChartXAxisFloatValue(self->_minXValue);
  v7 = FIUIChartXAxisFloatValue(self->_maxXValue);
  v8 = FIUIChartRelativePositionForXPlaneValue(v5, v6, v7);
  [(FIUIChartSeries *)self insetBounds];

  return FIUIChartAbsolutePositionForXPlaneValue(self, v8, v9, v10, v11, v12);
}

- (double)yValueForPointFromChartPointValue:(id)a3
{
  [a3 doubleValue];
  v5 = v4;
  v6 = [(FIUIChartSeries *)self minYValue];
  [v6 doubleValue];
  v8 = v7;

  v9 = [(FIUIChartSeries *)self maxYValue];
  [v9 doubleValue];
  v11 = v10;

  v12 = FIUIChartRelativePositionForYPlaneValue(v5, v8, v11);
  [(FIUIChartSeries *)self insetBounds];

  return FIUIChartAbsolutePositionForYPlaneValue(self, v12, v13, v14, v15, v16);
}

- (CGRect)insetBounds
{
  [(FIUIChartSeries *)self bounds];
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_edgeInsets.right);
  v12 = v11 - (top + self->_edgeInsets.bottom);
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (FIUIChartSeriesDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end