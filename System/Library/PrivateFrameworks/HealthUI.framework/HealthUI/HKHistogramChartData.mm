@interface HKHistogramChartData
- (HKHistogramChartData)initWithXValue:(double)value yValue:(double)yValue;
@end

@implementation HKHistogramChartData

- (HKHistogramChartData)initWithXValue:(double)value yValue:(double)yValue
{
  v7.receiver = self;
  v7.super_class = HKHistogramChartData;
  result = [(HKHistogramChartData *)&v7 init];
  if (result)
  {
    result->_xValue = value;
    result->_yValue = yValue;
  }

  return result;
}

@end