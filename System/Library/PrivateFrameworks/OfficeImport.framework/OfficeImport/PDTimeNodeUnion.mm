@interface PDTimeNodeUnion
- (PDTimeNodeUnion)init;
- (id)commonBehavior;
- (id)description;
@end

@implementation PDTimeNodeUnion

- (PDTimeNodeUnion)init
{
  v3.receiver = self;
  v3.super_class = PDTimeNodeUnion;
  return [(PDTimeNodeUnion *)&v3 init];
}

- (id)commonBehavior
{
  mTimeBehavior = self->mTimeBehavior;
  if (mTimeBehavior || (mTimeBehavior = self->mEffectBehavior) != 0 || (mTimeBehavior = self->mMotionBehavior) != 0 || (mTimeBehavior = self->mRotateBehavior) != 0 || (mTimeBehavior = self->mScaleBehavior) != 0 || (mTimeBehavior = self->mSetBehavior) != 0 || (mTimeBehavior = self->mCmdBehavior) != 0)
  {
    v4 = mTimeBehavior;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDTimeNodeUnion;
  v2 = [(PDTimeNodeUnion *)&v4 description];

  return v2;
}

@end