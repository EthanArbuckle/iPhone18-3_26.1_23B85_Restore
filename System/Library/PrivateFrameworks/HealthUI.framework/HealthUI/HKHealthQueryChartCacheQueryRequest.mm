@interface HKHealthQueryChartCacheQueryRequest
- (HKHealthQueryChartCacheQueryRequest)initWithStartDate:(id)date endDate:(id)endDate statisticsInterval:(id)interval audience:(unint64_t)audience;
@end

@implementation HKHealthQueryChartCacheQueryRequest

- (HKHealthQueryChartCacheQueryRequest)initWithStartDate:(id)date endDate:(id)endDate statisticsInterval:(id)interval audience:(unint64_t)audience
{
  dateCopy = date;
  endDateCopy = endDate;
  intervalCopy = interval;
  v17.receiver = self;
  v17.super_class = HKHealthQueryChartCacheQueryRequest;
  v14 = [(HKHealthQueryChartCacheQueryRequest *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startDate, date);
    objc_storeStrong(&v15->_endDate, endDate);
    objc_storeStrong(&v15->_statisticsInterval, interval);
    v15->_audience = audience;
  }

  return v15;
}

@end