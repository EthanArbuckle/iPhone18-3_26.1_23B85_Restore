@interface BMClockAlarm_v1
- (int)eventType;
- (int)lastEventType;
@end

@implementation BMClockAlarm_v1

- (int)lastEventType
{
  v4.receiver = self;
  v4.super_class = BMClockAlarm_v1;
  v2 = [(BMClockAlarm *)&v4 lastEventType];
  if (v2 < 0xB)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

- (int)eventType
{
  v4.receiver = self;
  v4.super_class = BMClockAlarm_v1;
  v2 = [(BMClockAlarm *)&v4 eventType];
  if (v2 < 6)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

@end