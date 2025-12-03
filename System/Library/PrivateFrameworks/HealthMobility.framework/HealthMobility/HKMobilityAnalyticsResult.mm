@interface HKMobilityAnalyticsResult
+ (id)resultWithStatus:(unint64_t)status error:(id)error;
- (HKMobilityAnalyticsResult)initWithStatus:(unint64_t)status error:(id)error;
@end

@implementation HKMobilityAnalyticsResult

+ (id)resultWithStatus:(unint64_t)status error:(id)error
{
  errorCopy = error;
  v6 = [[HKMobilityAnalyticsResult alloc] initWithStatus:status error:errorCopy];

  return v6;
}

- (HKMobilityAnalyticsResult)initWithStatus:(unint64_t)status error:(id)error
{
  errorCopy = error;
  v11.receiver = self;
  v11.super_class = HKMobilityAnalyticsResult;
  v8 = [(HKMobilityAnalyticsResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_status = status;
    objc_storeStrong(&v8->_error, error);
  }

  return v9;
}

@end