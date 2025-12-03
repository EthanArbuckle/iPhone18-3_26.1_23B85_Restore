@interface _HKGraphViewAutoscaleSeries
- (_HKGraphViewAutoscaleSeries)initWithAutoscaleGroupRow:(int64_t)row autoscaleYAxis:(id)axis;
- (void)addAutoscaleSeries:(id)series;
@end

@implementation _HKGraphViewAutoscaleSeries

- (_HKGraphViewAutoscaleSeries)initWithAutoscaleGroupRow:(int64_t)row autoscaleYAxis:(id)axis
{
  axisCopy = axis;
  v13.receiver = self;
  v13.super_class = _HKGraphViewAutoscaleSeries;
  v8 = [(_HKGraphViewAutoscaleSeries *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_autoscaleGroupRow = row;
    objc_storeStrong(&v8->_autoscaleYAxis, axis);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    autoscaleSeries = v9->_autoscaleSeries;
    v9->_autoscaleSeries = v10;
  }

  return v9;
}

- (void)addAutoscaleSeries:(id)series
{
  seriesCopy = series;
  autoscaleSeries = [(_HKGraphViewAutoscaleSeries *)self autoscaleSeries];
  [autoscaleSeries addObject:seriesCopy];
}

@end