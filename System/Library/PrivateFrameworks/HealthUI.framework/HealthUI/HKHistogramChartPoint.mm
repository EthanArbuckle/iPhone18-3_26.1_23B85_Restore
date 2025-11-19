@interface HKHistogramChartPoint
- (HKHistogramChartPoint)initWithXValue:(id)a3 yValue:(id)a4;
- (id)allYValues;
- (id)userInfo;
@end

@implementation HKHistogramChartPoint

- (HKHistogramChartPoint)initWithXValue:(id)a3 yValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKHistogramChartPoint;
  v9 = [(HKHistogramChartPoint *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_xValue, a3);
    objc_storeStrong(&v10->_yValue, a4);
  }

  return v10;
}

- (id)allYValues
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(HKHistogramChartPoint *)self yValue];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)userInfo
{
  v3 = [HKHistogramChartData alloc];
  v4 = [(HKHistogramChartPoint *)self xValue];
  [v4 doubleValue];
  v6 = v5;
  v7 = [(HKHistogramChartPoint *)self yValue];
  [v7 doubleValue];
  v9 = [(HKHistogramChartData *)v3 initWithXValue:v6 yValue:v8];

  return v9;
}

@end