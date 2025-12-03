@interface BMClockAlarm_v1
- (int)eventType;
- (int)lastEventType;
@end

@implementation BMClockAlarm_v1

- (int)lastEventType
{
  v4.receiver = self;
  v4.super_class = BMClockAlarm_v1;
  lastEventType = [(BMClockAlarm *)&v4 lastEventType];
  if (lastEventType < 0xB)
  {
    return lastEventType + 1;
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
  eventType = [(BMClockAlarm *)&v4 eventType];
  if (eventType < 6)
  {
    return eventType + 1;
  }

  else
  {
    return 0;
  }
}

@end