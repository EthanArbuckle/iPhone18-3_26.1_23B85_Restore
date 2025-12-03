@interface CPLCloudKitMoveStepFaultInjection
+ (id)moveStepFaultInjectionWithMoveStep:(int64_t)step workItemDelay:(double)delay;
- (CPLCloudKitMoveStepFaultInjection)initWithMoveStep:(int64_t)step workItemDelay:(double)delay;
@end

@implementation CPLCloudKitMoveStepFaultInjection

+ (id)moveStepFaultInjectionWithMoveStep:(int64_t)step workItemDelay:(double)delay
{
  v4 = [[self alloc] initWithMoveStep:step workItemDelay:delay];

  return v4;
}

- (CPLCloudKitMoveStepFaultInjection)initWithMoveStep:(int64_t)step workItemDelay:(double)delay
{
  v7.receiver = self;
  v7.super_class = CPLCloudKitMoveStepFaultInjection;
  result = [(CPLCloudKitMoveStepFaultInjection *)&v7 init];
  if (result)
  {
    result->_moveStep = step;
    result->_workItemDelay = delay;
  }

  return result;
}

@end