@interface MTCityResolutionResult
+ (id)confirmationRequiredWithMTCityToConfirm:(id)confirm;
+ (id)disambiguationWithMTCitysToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedMTCity:(id)city;
@end

@implementation MTCityResolutionResult

+ (id)successWithResolvedMTCity:(id)city
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTCityResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, city);

  return v3;
}

+ (id)disambiguationWithMTCitysToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTCityResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithMTCityToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTCityResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, confirm);

  return v3;
}

@end