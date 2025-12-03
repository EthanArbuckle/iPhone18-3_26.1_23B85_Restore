@interface BMMindfulnessSession_v0
- (int)sessionMode;
@end

@implementation BMMindfulnessSession_v0

- (int)sessionMode
{
  v4.receiver = self;
  v4.super_class = BMMindfulnessSession_v0;
  sessionMode = [(BMMindfulnessSession *)&v4 sessionMode];
  if (sessionMode < 3)
  {
    return sessionMode + 1;
  }

  else
  {
    return 0;
  }
}

@end