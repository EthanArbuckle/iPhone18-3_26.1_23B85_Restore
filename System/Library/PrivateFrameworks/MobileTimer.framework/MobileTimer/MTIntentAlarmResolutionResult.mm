@interface MTIntentAlarmResolutionResult
+ (id)confirmationRequiredWithAlarmToConfirm:(id)confirm;
+ (id)disambiguationWithAlarmsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedAlarm:(id)alarm;
@end

@implementation MTIntentAlarmResolutionResult

+ (id)successWithResolvedAlarm:(id)alarm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTIntentAlarmResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, alarm);

  return v3;
}

+ (id)disambiguationWithAlarmsToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTIntentAlarmResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithAlarmToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MTIntentAlarmResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, confirm);

  return v3;
}

@end