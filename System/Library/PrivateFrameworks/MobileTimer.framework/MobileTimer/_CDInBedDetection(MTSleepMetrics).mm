@interface _CDInBedDetection(MTSleepMetrics)
- (id)_mt_dateInterval;
- (void)_mt_dateInterval;
@end

@implementation _CDInBedDetection(MTSleepMetrics)

- (id)_mt_dateInterval
{
  startDate = [self startDate];
  endDate = [self endDate];
  v4 = [startDate mtIsAfterOrSameAsDate:endDate];

  if (v4)
  {
    v5 = MTLogForCategory(7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_CDInBedDetection(MTSleepMetrics) *)self _mt_dateInterval];
    }

    NSLog(&cfstr_StartdateMustO.isa);
    v6 = 0;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696AB80]);
    startDate2 = [self startDate];
    endDate2 = [self endDate];
    v6 = [v7 initWithStartDate:startDate2 endDate:endDate2];
  }

  return v6;
}

- (void)_mt_dateInterval
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "%{public}@ startDate must occur before endDate.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end