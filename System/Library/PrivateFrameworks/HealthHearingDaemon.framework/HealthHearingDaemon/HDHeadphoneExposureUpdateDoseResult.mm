@interface HDHeadphoneExposureUpdateDoseResult
+ (id)resultForNoChange;
+ (id)resultForUpdate:(id)update;
- (id)_initWithStatistics:(id)statistics;
@end

@implementation HDHeadphoneExposureUpdateDoseResult

+ (id)resultForNoChange
{
  v2 = [[self alloc] _initWithStatistics:0];

  return v2;
}

+ (id)resultForUpdate:(id)update
{
  updateCopy = update;
  v5 = [[self alloc] _initWithStatistics:updateCopy];

  return v5;
}

- (id)_initWithStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v10.receiver = self;
  v10.super_class = HDHeadphoneExposureUpdateDoseResult;
  v6 = [(HDHeadphoneExposureUpdateDoseResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statistics, statistics);
    v8 = v7;
  }

  return v7;
}

@end