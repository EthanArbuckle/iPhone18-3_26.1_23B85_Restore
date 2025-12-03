@interface DNDIntentStateResolutionResult
+ (id)confirmationRequiredWithIntentStateToConfirm:(int64_t)confirm;
+ (id)successWithResolvedIntentState:(int64_t)state;
@end

@implementation DNDIntentStateResolutionResult

+ (id)successWithResolvedIntentState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___DNDIntentStateResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedValue:", state);

  return v3;
}

+ (id)confirmationRequiredWithIntentStateToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___DNDIntentStateResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithValueToConfirm:", confirm);

  return v3;
}

@end