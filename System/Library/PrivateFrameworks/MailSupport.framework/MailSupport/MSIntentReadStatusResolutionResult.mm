@interface MSIntentReadStatusResolutionResult
+ (id)confirmationRequiredWithReadStatusToConfirm:(int64_t)confirm;
+ (id)successWithResolvedReadStatus:(int64_t)status;
@end

@implementation MSIntentReadStatusResolutionResult

+ (id)successWithResolvedReadStatus:(int64_t)status
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MSIntentReadStatusResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedValue_, status);

  return v3;
}

+ (id)confirmationRequiredWithReadStatusToConfirm:(int64_t)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MSIntentReadStatusResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithValueToConfirm_, confirm);

  return v3;
}

@end