@interface MTIntentAlarmResolutionResult
+ (id)confirmationRequiredWithAlarmToConfirm:(id)a3;
+ (id)disambiguationWithAlarmsToDisambiguate:(id)a3;
+ (id)successWithResolvedAlarm:(id)a3;
@end

@implementation MTIntentAlarmResolutionResult

+ (id)successWithResolvedAlarm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTIntentAlarmResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, a3);

  return v3;
}

+ (id)disambiguationWithAlarmsToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTIntentAlarmResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, a3);

  return v3;
}

+ (id)confirmationRequiredWithAlarmToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MTIntentAlarmResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, a3);

  return v3;
}

@end