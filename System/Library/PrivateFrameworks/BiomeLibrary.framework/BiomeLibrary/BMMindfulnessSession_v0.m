@interface BMMindfulnessSession_v0
- (int)sessionMode;
@end

@implementation BMMindfulnessSession_v0

- (int)sessionMode
{
  v4.receiver = self;
  v4.super_class = BMMindfulnessSession_v0;
  v2 = [(BMMindfulnessSession *)&v4 sessionMode];
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