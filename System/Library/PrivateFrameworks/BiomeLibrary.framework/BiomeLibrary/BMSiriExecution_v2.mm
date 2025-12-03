@interface BMSiriExecution_v2
- (int)taskStep;
@end

@implementation BMSiriExecution_v2

- (int)taskStep
{
  v4.receiver = self;
  v4.super_class = BMSiriExecution_v2;
  taskStep = [(BMSiriExecution *)&v4 taskStep];
  if (taskStep < 0x5E)
  {
    return taskStep + 1;
  }

  else
  {
    return 0;
  }
}

@end