@interface HomeAttributeTargetMapResolutionResult
+ (id)confirmationRequiredWithHomeAttributeTargetMapToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithHomeAttributeTargetMapsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedHomeAttributeTargetMap:(id)map;
+ (id)successWithResolvedObject:(id)object;
- (HomeAttributeTargetMapResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation HomeAttributeTargetMapResolutionResult

+ (id)successWithResolvedHomeAttributeTargetMap:(id)map
{
  swift_getObjCClassMetadata();
  mapCopy = map;
  v5 = sub_252E322E0(mapCopy);

  return v5;
}

+ (id)disambiguationWithHomeAttributeTargetMapsToDisambiguate:(id)disambiguate
{
  type metadata accessor for HomeAttributeTargetMap();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E32394(v3);

  return v4;
}

+ (id)confirmationRequiredWithHomeAttributeTargetMapToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_252E324F8(confirm);

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

- (HomeAttributeTargetMapResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeAttributeTargetMapResolutionResult();
  v8 = [(HomeAttributeTargetMapResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end