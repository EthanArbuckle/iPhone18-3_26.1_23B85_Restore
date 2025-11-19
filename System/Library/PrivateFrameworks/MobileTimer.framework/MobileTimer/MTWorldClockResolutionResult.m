@interface MTWorldClockResolutionResult
+ (id)confirmationRequiredWithMTWorldClockToConfirm:(id)a3;
+ (id)disambiguationWithMTWorldClocksToDisambiguate:(id)a3;
+ (id)successWithResolvedMTWorldClock:(id)a3;
@end

@implementation MTWorldClockResolutionResult

+ (id)successWithResolvedMTWorldClock:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTWorldClockResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, a3);

  return v3;
}

+ (id)disambiguationWithMTWorldClocksToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTWorldClockResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, a3);

  return v3;
}

+ (id)confirmationRequiredWithMTWorldClockToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTWorldClockResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, a3);

  return v3;
}

@end