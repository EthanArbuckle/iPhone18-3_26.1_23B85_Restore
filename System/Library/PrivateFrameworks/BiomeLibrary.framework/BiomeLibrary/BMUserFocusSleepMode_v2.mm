@interface BMUserFocusSleepMode_v2
- (int)state;
@end

@implementation BMUserFocusSleepMode_v2

- (int)state
{
  v4.receiver = self;
  v4.super_class = BMUserFocusSleepMode_v2;
  state = [(BMUserFocusSleepMode *)&v4 state];
  if (state < 3)
  {
    return state + 1;
  }

  else
  {
    return 0;
  }
}

@end