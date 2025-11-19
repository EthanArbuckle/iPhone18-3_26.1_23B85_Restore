@interface PDTimeCondition
- (PDTimeCondition)init;
- (id)description;
- (int)delay;
@end

@implementation PDTimeCondition

- (PDTimeCondition)init
{
  v3.receiver = self;
  v3.super_class = PDTimeCondition;
  return [(PDTimeCondition *)&v3 init];
}

- (int)delay
{
  if (self->mDelay == -1)
  {
    return 0;
  }

  else
  {
    return self->mDelay;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDTimeCondition;
  v2 = [(PDTimeCondition *)&v4 description];

  return v2;
}

@end