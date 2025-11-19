@interface HKHealthQueryChartCacheQueryRequest
- (HKHealthQueryChartCacheQueryRequest)initWithStartDate:(id)a3 endDate:(id)a4 statisticsInterval:(id)a5 audience:(unint64_t)a6;
@end

@implementation HKHealthQueryChartCacheQueryRequest

- (HKHealthQueryChartCacheQueryRequest)initWithStartDate:(id)a3 endDate:(id)a4 statisticsInterval:(id)a5 audience:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = HKHealthQueryChartCacheQueryRequest;
  v14 = [(HKHealthQueryChartCacheQueryRequest *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startDate, a3);
    objc_storeStrong(&v15->_endDate, a4);
    objc_storeStrong(&v15->_statisticsInterval, a5);
    v15->_audience = a6;
  }

  return v15;
}

@end