@interface EDChartSheet
- (CGRect)bounds;
- (void)addDrawable:(id)a3;
- (void)setMainChart:(id)a3;
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

- (void)setMainChart:(id)a3
{
  v5 = a3;
  mMainChart = self->mMainChart;
  v7 = v5;
  if (mMainChart != v5)
  {
    [(CHDChart *)mMainChart setSheet:0];
    objc_storeStrong(&self->mMainChart, a3);
    [(CHDChart *)self->mMainChart setSheet:self];
  }
}

- (void)addDrawable:(id)a3
{
  v4 = a3;
  mMainChart = self->mMainChart;
  if (mMainChart)
  {
    [(CHDChart *)mMainChart addChild:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(EDChartSheet *)self setMainChart:v4];
    }

    else
    {
      v6.receiver = self;
      v6.super_class = EDChartSheet;
      [(EDSheet *)&v6 addDrawable:v4];
    }
  }
}

@end