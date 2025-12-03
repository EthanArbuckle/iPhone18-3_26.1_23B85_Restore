@interface HKChartSummaryTrendSpan
- (BOOL)isEqual:(id)equal;
- (HKChartSummaryTrendSpan)initWithTrendDateInterval:(id)interval trendAverage:(id)average;
@end

@implementation HKChartSummaryTrendSpan

- (HKChartSummaryTrendSpan)initWithTrendDateInterval:(id)interval trendAverage:(id)average
{
  intervalCopy = interval;
  averageCopy = average;
  v12.receiver = self;
  v12.super_class = HKChartSummaryTrendSpan;
  v9 = [(HKChartSummaryTrendSpan *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_trendDateInterval, interval);
    objc_storeStrong(&v10->_trendAverage, average);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(HKQuantity *)self->_trendAverage isEqual:v5->_trendAverage])
      {
        v6 = [(NSDateInterval *)self->_trendDateInterval isEqual:v5->_trendDateInterval];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end