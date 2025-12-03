@interface TriggerValueResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)confirmationRequiredWithTriggerValueToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithTriggerValuesToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedObject:(id)object;
+ (id)successWithResolvedTriggerValue:(id)value;
- (TriggerValueResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation TriggerValueResolutionResult

+ (id)successWithResolvedTriggerValue:(id)value
{
  swift_getObjCClassMetadata();
  valueCopy = value;
  v5 = sub_252E29D10(valueCopy);

  return v5;
}

+ (id)disambiguationWithTriggerValuesToDisambiguate:(id)disambiguate
{
  type metadata accessor for TriggerValue();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E29DC4(v3);

  return v4;
}

+ (id)confirmationRequiredWithTriggerValueToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_252E29F28(confirm);

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

- (TriggerValueResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for TriggerValueResolutionResult();
  v8 = [(TriggerValueResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end