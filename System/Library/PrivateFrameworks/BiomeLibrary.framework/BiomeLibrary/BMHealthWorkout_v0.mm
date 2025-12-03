@interface BMHealthWorkout_v0
- (int)eventType;
@end

@implementation BMHealthWorkout_v0

- (int)eventType
{
  v4.receiver = self;
  v4.super_class = BMHealthWorkout_v0;
  eventType = [(BMHealthWorkout *)&v4 eventType];
  if (eventType < 4)
  {
    return eventType + 1;
  }

  else
  {
    return 0;
  }
}

@end