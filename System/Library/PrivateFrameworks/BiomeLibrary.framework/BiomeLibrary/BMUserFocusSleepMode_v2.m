@interface BMUserFocusSleepMode_v2
- (int)state;
@end

@implementation BMUserFocusSleepMode_v2

- (int)state
{
  v4.receiver = self;
  v4.super_class = BMUserFocusSleepMode_v2;
  v2 = [(BMUserFocusSleepMode *)&v4 state];
  if (v2 < 3)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

@end