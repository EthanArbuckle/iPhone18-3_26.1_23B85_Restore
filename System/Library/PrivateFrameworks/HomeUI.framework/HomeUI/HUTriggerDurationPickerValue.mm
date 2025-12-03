@interface HUTriggerDurationPickerValue
+ (id)valueWithDuration:(double)duration;
+ (id)valueWithNoDuration;
- (BOOL)hasDuration;
- (HUTriggerDurationPickerValue)initWithDuration:(id)duration;
@end

@implementation HUTriggerDurationPickerValue

+ (id)valueWithDuration:(double)duration
{
  v4 = [self alloc];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  v6 = [v4 initWithDuration:v5];

  return v6;
}

+ (id)valueWithNoDuration
{
  v2 = [[self alloc] initWithDuration:0];

  return v2;
}

- (HUTriggerDurationPickerValue)initWithDuration:(id)duration
{
  durationCopy = duration;
  v9.receiver = self;
  v9.super_class = HUTriggerDurationPickerValue;
  v6 = [(HUTriggerDurationPickerValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_duration, duration);
  }

  return v7;
}

- (BOOL)hasDuration
{
  duration = [(HUTriggerDurationPickerValue *)self duration];
  v3 = duration != 0;

  return v3;
}

@end