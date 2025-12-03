@interface MTWorldClockResolutionResult
+ (id)confirmationRequiredWithMTWorldClockToConfirm:(id)confirm;
+ (id)disambiguationWithMTWorldClocksToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedMTWorldClock:(id)clock;
@end

@implementation MTWorldClockResolutionResult

+ (id)successWithResolvedMTWorldClock:(id)clock
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTWorldClockResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, clock);

  return v3;
}

+ (id)disambiguationWithMTWorldClocksToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTWorldClockResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithMTWorldClockToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTWorldClockResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, confirm);

  return v3;
}

@end