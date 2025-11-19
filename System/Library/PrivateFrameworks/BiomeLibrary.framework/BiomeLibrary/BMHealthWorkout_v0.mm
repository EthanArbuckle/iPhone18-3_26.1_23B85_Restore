@interface BMHealthWorkout_v0
- (int)eventType;
@end

@implementation BMHealthWorkout_v0

- (int)eventType
{
  v4.receiver = self;
  v4.super_class = BMHealthWorkout_v0;
  v2 = [(BMHealthWorkout *)&v4 eventType];
  if (v2 < 4)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

@end