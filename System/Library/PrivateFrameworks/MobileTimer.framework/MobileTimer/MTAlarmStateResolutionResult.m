@interface MTAlarmStateResolutionResult
+ (id)confirmationRequiredWithAlarmStateToConfirm:(int64_t)a3;
+ (id)successWithResolvedAlarmState:(int64_t)a3;
@end

@implementation MTAlarmStateResolutionResult

+ (id)successWithResolvedAlarmState:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTAlarmStateResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedValue_, a3);

  return v3;
}

+ (id)confirmationRequiredWithAlarmStateToConfirm:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTAlarmStateResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithValueToConfirm_, a3);

  return v3;
}

@end