@interface BMSiriExecution_v2
- (int)taskStep;
@end

@implementation BMSiriExecution_v2

- (int)taskStep
{
  v4.receiver = self;
  v4.super_class = BMSiriExecution_v2;
  v2 = [(BMSiriExecution *)&v4 taskStep];
  if (v2 < 0x5E)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

@end