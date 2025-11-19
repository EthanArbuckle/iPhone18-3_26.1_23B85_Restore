@interface MTCityResolutionResult
+ (id)confirmationRequiredWithMTCityToConfirm:(id)a3;
+ (id)disambiguationWithMTCitysToDisambiguate:(id)a3;
+ (id)successWithResolvedMTCity:(id)a3;
@end

@implementation MTCityResolutionResult

+ (id)successWithResolvedMTCity:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTCityResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, a3);

  return v3;
}

+ (id)disambiguationWithMTCitysToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTCityResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, a3);

  return v3;
}

+ (id)confirmationRequiredWithMTCityToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTCityResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, a3);

  return v3;
}

@end