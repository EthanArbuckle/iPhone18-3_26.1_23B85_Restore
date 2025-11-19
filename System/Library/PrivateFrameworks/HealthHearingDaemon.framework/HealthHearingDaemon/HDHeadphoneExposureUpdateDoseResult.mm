@interface HDHeadphoneExposureUpdateDoseResult
+ (id)resultForNoChange;
+ (id)resultForUpdate:(id)a3;
- (id)_initWithStatistics:(id)a3;
@end

@implementation HDHeadphoneExposureUpdateDoseResult

+ (id)resultForNoChange
{
  v2 = [[a1 alloc] _initWithStatistics:0];

  return v2;
}

+ (id)resultForUpdate:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithStatistics:v4];

  return v5;
}

- (id)_initWithStatistics:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HDHeadphoneExposureUpdateDoseResult;
  v6 = [(HDHeadphoneExposureUpdateDoseResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statistics, a3);
    v8 = v7;
  }

  return v7;
}

@end