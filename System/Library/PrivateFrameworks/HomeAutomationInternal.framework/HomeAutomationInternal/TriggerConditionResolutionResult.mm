@interface TriggerConditionResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)confirmationRequiredWithTriggerConditionToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithTriggerConditionsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedObject:(id)object;
+ (id)successWithResolvedTriggerCondition:(id)condition;
- (TriggerConditionResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation TriggerConditionResolutionResult

+ (id)successWithResolvedTriggerCondition:(id)condition
{
  swift_getObjCClassMetadata();
  conditionCopy = condition;
  v5 = sub_252E2A3A4(conditionCopy);

  return v5;
}

+ (id)disambiguationWithTriggerConditionsToDisambiguate:(id)disambiguate
{
  type metadata accessor for TriggerCondition();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E2A408(v3);

  return v4;
}

+ (id)confirmationRequiredWithTriggerConditionToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_252E2A500(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  result = sub_252E37B04();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  result = sub_252E37B04();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  result = sub_252E37B04();
  __break(1u);
  return result;
}

- (TriggerConditionResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for TriggerConditionResolutionResult();
  v8 = [(TriggerConditionResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end