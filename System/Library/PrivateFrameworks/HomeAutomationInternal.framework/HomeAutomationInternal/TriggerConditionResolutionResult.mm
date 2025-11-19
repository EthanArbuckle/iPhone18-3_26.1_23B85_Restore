@interface TriggerConditionResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)confirmationRequiredWithTriggerConditionToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithTriggerConditionsToDisambiguate:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
+ (id)successWithResolvedTriggerCondition:(id)a3;
- (TriggerConditionResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation TriggerConditionResolutionResult

+ (id)successWithResolvedTriggerCondition:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_252E2A3A4(v4);

  return v5;
}

+ (id)disambiguationWithTriggerConditionsToDisambiguate:(id)a3
{
  type metadata accessor for TriggerCondition();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E2A408(v3);

  return v4;
}

+ (id)confirmationRequiredWithTriggerConditionToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_252E2A500(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  result = sub_252E37B04();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  result = sub_252E37B04();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  result = sub_252E37B04();
  __break(1u);
  return result;
}

- (TriggerConditionResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_252E36E44();
  v6 = a4;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for TriggerConditionResolutionResult();
  v8 = [(TriggerConditionResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end