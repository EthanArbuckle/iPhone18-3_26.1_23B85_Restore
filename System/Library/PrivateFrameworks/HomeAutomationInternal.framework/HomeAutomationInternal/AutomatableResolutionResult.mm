@interface AutomatableResolutionResult
+ (id)confirmationRequiredWithAutomatableToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithAutomatablesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedAutomatable:(id)automatable;
+ (id)successWithResolvedObject:(id)object;
- (AutomatableResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation AutomatableResolutionResult

+ (id)successWithResolvedAutomatable:(id)automatable
{
  swift_getObjCClassMetadata();
  automatableCopy = automatable;
  v5 = sub_252E28EC0(automatableCopy);

  return v5;
}

+ (id)disambiguationWithAutomatablesToDisambiguate:(id)disambiguate
{
  type metadata accessor for Automatable();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E28F24(v3);

  return v4;
}

+ (id)confirmationRequiredWithAutomatableToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_252E29068(confirm);

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

- (AutomatableResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for AutomatableResolutionResult();
  v8 = [(AutomatableResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end