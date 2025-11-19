@interface HKHistogramChartData
- (HKHistogramChartData)initWithXValue:(double)a3 yValue:(double)a4;
@end

@implementation HKHistogramChartData

- (HKHistogramChartData)initWithXValue:(double)a3 yValue:(double)a4
{
  v7.receiver = self;
  v7.super_class = HKHistogramChartData;
  result = [(HKHistogramChartData *)&v7 init];
  if (result)
  {
    result->_xValue = a3;
    result->_yValue = a4;
  }

  return result;
}

@end