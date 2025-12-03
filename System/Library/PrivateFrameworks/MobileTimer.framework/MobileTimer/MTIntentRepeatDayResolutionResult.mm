@interface MTIntentRepeatDayResolutionResult
+ (id)confirmationRequiredWithRepeatDayToConfirm:(id)confirm;
+ (id)disambiguationWithRepeatDaysToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedRepeatDay:(id)day;
@end

@implementation MTIntentRepeatDayResolutionResult

+ (id)successWithResolvedRepeatDay:(id)day
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTIntentRepeatDayResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, day);

  return v3;
}

+ (id)disambiguationWithRepeatDaysToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTIntentRepeatDayResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithRepeatDayToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTIntentRepeatDayResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, confirm);

  return v3;
}

@end