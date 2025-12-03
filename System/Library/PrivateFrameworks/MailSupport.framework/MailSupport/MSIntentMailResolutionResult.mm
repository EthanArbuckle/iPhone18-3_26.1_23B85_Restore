@interface MSIntentMailResolutionResult
+ (id)confirmationRequiredWithMailToConfirm:(id)confirm;
+ (id)disambiguationWithMailsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedMail:(id)mail;
@end

@implementation MSIntentMailResolutionResult

+ (id)successWithResolvedMail:(id)mail
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MSIntentMailResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, mail);

  return v3;
}

+ (id)disambiguationWithMailsToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MSIntentMailResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithMailToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MSIntentMailResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, confirm);

  return v3;
}

@end