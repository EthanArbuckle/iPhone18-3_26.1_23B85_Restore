@interface HKMobilityAnalyticsResult
+ (id)resultWithStatus:(unint64_t)a3 error:(id)a4;
- (HKMobilityAnalyticsResult)initWithStatus:(unint64_t)a3 error:(id)a4;
@end

@implementation HKMobilityAnalyticsResult

+ (id)resultWithStatus:(unint64_t)a3 error:(id)a4
{
  v5 = a4;
  v6 = [[HKMobilityAnalyticsResult alloc] initWithStatus:a3 error:v5];

  return v6;
}

- (HKMobilityAnalyticsResult)initWithStatus:(unint64_t)a3 error:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HKMobilityAnalyticsResult;
  v8 = [(HKMobilityAnalyticsResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_status = a3;
    objc_storeStrong(&v8->_error, a4);
  }

  return v9;
}

@end