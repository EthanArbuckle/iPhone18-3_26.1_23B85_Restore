@interface _HKGraphViewAutoscaleSeries
- (_HKGraphViewAutoscaleSeries)initWithAutoscaleGroupRow:(int64_t)a3 autoscaleYAxis:(id)a4;
- (void)addAutoscaleSeries:(id)a3;
@end

@implementation _HKGraphViewAutoscaleSeries

- (_HKGraphViewAutoscaleSeries)initWithAutoscaleGroupRow:(int64_t)a3 autoscaleYAxis:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _HKGraphViewAutoscaleSeries;
  v8 = [(_HKGraphViewAutoscaleSeries *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_autoscaleGroupRow = a3;
    objc_storeStrong(&v8->_autoscaleYAxis, a4);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    autoscaleSeries = v9->_autoscaleSeries;
    v9->_autoscaleSeries = v10;
  }

  return v9;
}

- (void)addAutoscaleSeries:(id)a3
{
  v4 = a3;
  v5 = [(_HKGraphViewAutoscaleSeries *)self autoscaleSeries];
  [v5 addObject:v4];
}

@end