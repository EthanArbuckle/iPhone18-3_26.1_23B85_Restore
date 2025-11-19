@interface HKHRCardioFitnessAnalyticsResult
- (HKHRCardioFitnessAnalyticsResult)initWithStatus:(int64_t)a3 error:(id)a4;
@end

@implementation HKHRCardioFitnessAnalyticsResult

- (HKHRCardioFitnessAnalyticsResult)initWithStatus:(int64_t)a3 error:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HKHRCardioFitnessAnalyticsResult;
  v8 = [(HKHRCardioFitnessAnalyticsResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_status = a3;
    objc_storeStrong(&v8->_error, a4);
  }

  return v9;
}

@end