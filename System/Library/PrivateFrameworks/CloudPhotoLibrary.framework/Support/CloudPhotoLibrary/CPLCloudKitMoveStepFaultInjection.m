@interface CPLCloudKitMoveStepFaultInjection
+ (id)moveStepFaultInjectionWithMoveStep:(int64_t)a3 workItemDelay:(double)a4;
- (CPLCloudKitMoveStepFaultInjection)initWithMoveStep:(int64_t)a3 workItemDelay:(double)a4;
@end

@implementation CPLCloudKitMoveStepFaultInjection

+ (id)moveStepFaultInjectionWithMoveStep:(int64_t)a3 workItemDelay:(double)a4
{
  v4 = [[a1 alloc] initWithMoveStep:a3 workItemDelay:a4];

  return v4;
}

- (CPLCloudKitMoveStepFaultInjection)initWithMoveStep:(int64_t)a3 workItemDelay:(double)a4
{
  v7.receiver = self;
  v7.super_class = CPLCloudKitMoveStepFaultInjection;
  result = [(CPLCloudKitMoveStepFaultInjection *)&v7 init];
  if (result)
  {
    result->_moveStep = a3;
    result->_workItemDelay = a4;
  }

  return result;
}

@end