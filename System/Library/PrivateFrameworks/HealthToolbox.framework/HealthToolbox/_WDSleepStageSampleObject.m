@interface _WDSleepStageSampleObject
- (NSDateInterval)dateInterval;
- (_WDSleepStageSampleObject)initWithSample:(id)a3;
@end

@implementation _WDSleepStageSampleObject

- (_WDSleepStageSampleObject)initWithSample:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _WDSleepStageSampleObject;
  v6 = [(_WDSleepStageSampleObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sample, a3);
  }

  return v7;
}

- (NSDateInterval)dateInterval
{
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  v4 = [(HKCategorySample *)self->_sample startDate];
  v5 = [(HKCategorySample *)self->_sample endDate];
  v6 = [v3 initWithStartDate:v4 endDate:v5];

  return v6;
}

@end