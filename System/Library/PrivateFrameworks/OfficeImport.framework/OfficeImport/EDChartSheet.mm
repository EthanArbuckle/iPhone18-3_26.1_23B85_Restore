@interface EDChartSheet
- (CGRect)bounds;
- (void)addDrawable:(id)drawable;
- (void)setMainChart:(id)chart;
- (void)teardown;
@end

@implementation EDChartSheet

- (CGRect)bounds
{
  x = self->mBounds.origin.x;
  y = self->mBounds.origin.y;
  width = self->mBounds.size.width;
  height = self->mBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)teardown
{
  [(CHDChart *)self->mMainChart setSheet:0];
  mMainChart = self->mMainChart;
  self->mMainChart = 0;

  v4.receiver = self;
  v4.super_class = EDChartSheet;
  [(EDSheet *)&v4 teardown];
}

- (void)setMainChart:(id)chart
{
  chartCopy = chart;
  mMainChart = self->mMainChart;
  v7 = chartCopy;
  if (mMainChart != chartCopy)
  {
    [(CHDChart *)mMainChart setSheet:0];
    objc_storeStrong(&self->mMainChart, chart);
    [(CHDChart *)self->mMainChart setSheet:self];
  }
}

- (void)addDrawable:(id)drawable
{
  drawableCopy = drawable;
  mMainChart = self->mMainChart;
  if (mMainChart)
  {
    [(CHDChart *)mMainChart addChild:drawableCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(EDChartSheet *)self setMainChart:drawableCopy];
    }

    else
    {
      v6.receiver = self;
      v6.super_class = EDChartSheet;
      [(EDSheet *)&v6 addDrawable:drawableCopy];
    }
  }
}

@end