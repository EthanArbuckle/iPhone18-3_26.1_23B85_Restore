@interface HKChartSummaryTrendSpan
- (BOOL)isEqual:(id)a3;
- (HKChartSummaryTrendSpan)initWithTrendDateInterval:(id)a3 trendAverage:(id)a4;
@end

@implementation HKChartSummaryTrendSpan

- (HKChartSummaryTrendSpan)initWithTrendDateInterval:(id)a3 trendAverage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKChartSummaryTrendSpan;
  v9 = [(HKChartSummaryTrendSpan *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_trendDateInterval, a3);
    objc_storeStrong(&v10->_trendAverage, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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