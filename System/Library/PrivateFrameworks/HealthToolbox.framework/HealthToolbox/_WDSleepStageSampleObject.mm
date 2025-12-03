@interface _WDSleepStageSampleObject
- (NSDateInterval)dateInterval;
- (_WDSleepStageSampleObject)initWithSample:(id)sample;
@end

@implementation _WDSleepStageSampleObject

- (_WDSleepStageSampleObject)initWithSample:(id)sample
{
  sampleCopy = sample;
  v9.receiver = self;
  v9.super_class = _WDSleepStageSampleObject;
  v6 = [(_WDSleepStageSampleObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sample, sample);
  }

  return v7;
}

- (NSDateInterval)dateInterval
{
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  startDate = [(HKCategorySample *)self->_sample startDate];
  endDate = [(HKCategorySample *)self->_sample endDate];
  v6 = [v3 initWithStartDate:startDate endDate:endDate];

  return v6;
}

@end