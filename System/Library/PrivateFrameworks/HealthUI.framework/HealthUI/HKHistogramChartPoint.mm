@interface HKHistogramChartPoint
- (HKHistogramChartPoint)initWithXValue:(id)value yValue:(id)yValue;
- (id)allYValues;
- (id)userInfo;
@end

@implementation HKHistogramChartPoint

- (HKHistogramChartPoint)initWithXValue:(id)value yValue:(id)yValue
{
  valueCopy = value;
  yValueCopy = yValue;
  v12.receiver = self;
  v12.super_class = HKHistogramChartPoint;
  v9 = [(HKHistogramChartPoint *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_xValue, value);
    objc_storeStrong(&v10->_yValue, yValue);
  }

  return v10;
}

- (id)allYValues
{
  v5[1] = *MEMORY[0x1E69E9840];
  yValue = [(HKHistogramChartPoint *)self yValue];
  v5[0] = yValue;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)userInfo
{
  v3 = [HKHistogramChartData alloc];
  xValue = [(HKHistogramChartPoint *)self xValue];
  [xValue doubleValue];
  v6 = v5;
  yValue = [(HKHistogramChartPoint *)self yValue];
  [yValue doubleValue];
  v9 = [(HKHistogramChartData *)v3 initWithXValue:v6 yValue:v8];

  return v9;
}

@end