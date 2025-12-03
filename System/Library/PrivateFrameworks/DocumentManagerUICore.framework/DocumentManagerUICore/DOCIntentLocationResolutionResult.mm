@interface DOCIntentLocationResolutionResult
+ (id)confirmationRequiredWithDOCIntentLocationToConfirm:(id)confirm;
+ (id)disambiguationWithDOCIntentLocationsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedDOCIntentLocation:(id)location;
@end

@implementation DOCIntentLocationResolutionResult

+ (id)successWithResolvedDOCIntentLocation:(id)location
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___DOCIntentLocationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, location);

  return v3;
}

+ (id)disambiguationWithDOCIntentLocationsToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___DOCIntentLocationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithDOCIntentLocationToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___DOCIntentLocationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, confirm);

  return v3;
}

@end