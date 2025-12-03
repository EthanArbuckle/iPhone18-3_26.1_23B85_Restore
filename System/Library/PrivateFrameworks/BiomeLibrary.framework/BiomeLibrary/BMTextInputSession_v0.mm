@interface BMTextInputSession_v0
- (int)sessionInput;
@end

@implementation BMTextInputSession_v0

- (int)sessionInput
{
  v4.receiver = self;
  v4.super_class = BMTextInputSession_v0;
  sessionInput = [(BMTextInputSession *)&v4 sessionInput];
  if (sessionInput < 4)
  {
    return sessionInput + 1;
  }

  else
  {
    return 0;
  }
}

@end