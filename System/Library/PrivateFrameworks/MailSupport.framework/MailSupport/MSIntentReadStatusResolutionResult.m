@interface MSIntentReadStatusResolutionResult
+ (id)confirmationRequiredWithReadStatusToConfirm:(int64_t)a3;
+ (id)successWithResolvedReadStatus:(int64_t)a3;
@end

@implementation MSIntentReadStatusResolutionResult

+ (id)successWithResolvedReadStatus:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MSIntentReadStatusResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedValue_, a3);

  return v3;
}

+ (id)confirmationRequiredWithReadStatusToConfirm:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MSIntentReadStatusResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithValueToConfirm_, a3);

  return v3;
}

@end