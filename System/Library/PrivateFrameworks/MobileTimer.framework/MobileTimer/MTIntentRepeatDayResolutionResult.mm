@interface MTIntentRepeatDayResolutionResult
+ (id)confirmationRequiredWithRepeatDayToConfirm:(id)a3;
+ (id)disambiguationWithRepeatDaysToDisambiguate:(id)a3;
+ (id)successWithResolvedRepeatDay:(id)a3;
@end

@implementation MTIntentRepeatDayResolutionResult

+ (id)successWithResolvedRepeatDay:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTIntentRepeatDayResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, a3);

  return v3;
}

+ (id)disambiguationWithRepeatDaysToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTIntentRepeatDayResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, a3);

  return v3;
}

+ (id)confirmationRequiredWithRepeatDayToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTIntentRepeatDayResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, a3);

  return v3;
}

@end