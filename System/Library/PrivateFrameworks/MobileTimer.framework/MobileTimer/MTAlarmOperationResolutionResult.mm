@interface MTAlarmOperationResolutionResult
+ (id)confirmationRequiredWithAlarmOperationToConfirm:(int64_t)confirm;
+ (id)successWithResolvedAlarmOperation:(int64_t)operation;
@end

@implementation MTAlarmOperationResolutionResult

+ (id)successWithResolvedAlarmOperation:(int64_t)operation
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTAlarmOperationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedValue_, operation);

  return v3;
}

+ (id)confirmationRequiredWithAlarmOperationToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTAlarmOperationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithValueToConfirm_, confirm);

  return v3;
}

@end