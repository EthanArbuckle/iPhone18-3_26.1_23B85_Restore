@interface MSIntentMailResolutionResult
+ (id)confirmationRequiredWithMailToConfirm:(id)a3;
+ (id)disambiguationWithMailsToDisambiguate:(id)a3;
+ (id)successWithResolvedMail:(id)a3;
@end

@implementation MSIntentMailResolutionResult

+ (id)successWithResolvedMail:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MSIntentMailResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, a3);

  return v3;
}

+ (id)disambiguationWithMailsToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MSIntentMailResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, a3);

  return v3;
}

+ (id)confirmationRequiredWithMailToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MSIntentMailResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, a3);

  return v3;
}

@end