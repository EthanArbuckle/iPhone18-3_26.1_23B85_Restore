@interface MTAlarmStateResolutionResult
+ (id)confirmationRequiredWithAlarmStateToConfirm:(int64_t)confirm;
+ (id)successWithResolvedAlarmState:(int64_t)state;
@end

@implementation MTAlarmStateResolutionResult

+ (id)successWithResolvedAlarmState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTAlarmStateResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedValue_, state);

  return v3;
}

+ (id)confirmationRequiredWithAlarmStateToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTAlarmStateResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithValueToConfirm_, confirm);

  return v3;
}

@end