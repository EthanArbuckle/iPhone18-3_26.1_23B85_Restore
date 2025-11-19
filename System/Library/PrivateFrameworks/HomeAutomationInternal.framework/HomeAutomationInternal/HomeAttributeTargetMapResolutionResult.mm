@interface HomeAttributeTargetMapResolutionResult
+ (id)confirmationRequiredWithHomeAttributeTargetMapToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithHomeAttributeTargetMapsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedHomeAttributeTargetMap:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
- (HomeAttributeTargetMapResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation HomeAttributeTargetMapResolutionResult

+ (id)successWithResolvedHomeAttributeTargetMap:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_252E322E0(v4);

  return v5;
}

+ (id)disambiguationWithHomeAttributeTargetMapsToDisambiguate:(id)a3
{
  type metadata accessor for HomeAttributeTargetMap();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E32394(v3);

  return v4;
}

+ (id)confirmationRequiredWithHomeAttributeTargetMapToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_252E324F8(a3);

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

- (HomeAttributeTargetMapResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_252E36E44();
  v6 = a4;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeAttributeTargetMapResolutionResult();
  v8 = [(HomeAttributeTargetMapResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end