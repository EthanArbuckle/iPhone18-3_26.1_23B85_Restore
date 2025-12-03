@interface HomeEntityResolutionResult
+ (id)confirmationRequiredWithHomeEntityToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithHomeEntitysToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedHomeEntity:(id)entity;
+ (id)successWithResolvedObject:(id)object;
- (HomeEntityResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation HomeEntityResolutionResult

+ (id)successWithResolvedHomeEntity:(id)entity
{
  swift_getObjCClassMetadata();
  entityCopy = entity;
  v5 = sub_252E2C0E4(entityCopy);

  return v5;
}

+ (id)disambiguationWithHomeEntitysToDisambiguate:(id)disambiguate
{
  type metadata accessor for HomeEntity();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E2C198(v3);

  return v4;
}

+ (id)confirmationRequiredWithHomeEntityToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_252E2C2FC(confirm);

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

- (HomeEntityResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeEntityResolutionResult();
  v8 = [(HomeEntityResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end