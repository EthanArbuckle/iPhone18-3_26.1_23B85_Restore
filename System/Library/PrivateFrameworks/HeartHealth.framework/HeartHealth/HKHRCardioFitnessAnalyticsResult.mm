@interface HKHRCardioFitnessAnalyticsResult
- (HKHRCardioFitnessAnalyticsResult)initWithStatus:(int64_t)status error:(id)error;
@end

@implementation HKHRCardioFitnessAnalyticsResult

- (HKHRCardioFitnessAnalyticsResult)initWithStatus:(int64_t)status error:(id)error
{
  errorCopy = error;
  v11.receiver = self;
  v11.super_class = HKHRCardioFitnessAnalyticsResult;
  v8 = [(HKHRCardioFitnessAnalyticsResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_status = status;
    objc_storeStrong(&v8->_error, error);
  }

  return v9;
}

@end