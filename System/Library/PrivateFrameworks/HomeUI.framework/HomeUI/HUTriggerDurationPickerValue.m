@interface HUTriggerDurationPickerValue
+ (id)valueWithDuration:(double)a3;
+ (id)valueWithNoDuration;
- (BOOL)hasDuration;
- (HUTriggerDurationPickerValue)initWithDuration:(id)a3;
@end

@implementation HUTriggerDurationPickerValue

+ (id)valueWithDuration:(double)a3
{
  v4 = [a1 alloc];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v6 = [v4 initWithDuration:v5];

  return v6;
}

+ (id)valueWithNoDuration
{
  v2 = [[a1 alloc] initWithDuration:0];

  return v2;
}

- (HUTriggerDurationPickerValue)initWithDuration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUTriggerDurationPickerValue;
  v6 = [(HUTriggerDurationPickerValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_duration, a3);
  }

  return v7;
}

- (BOOL)hasDuration
{
  v2 = [(HUTriggerDurationPickerValue *)self duration];
  v3 = v2 != 0;

  return v3;
}

@end