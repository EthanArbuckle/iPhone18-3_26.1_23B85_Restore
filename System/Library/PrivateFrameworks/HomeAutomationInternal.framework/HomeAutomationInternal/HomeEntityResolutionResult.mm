@interface HomeEntityResolutionResult
+ (id)confirmationRequiredWithHomeEntityToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithHomeEntitysToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedHomeEntity:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
- (HomeEntityResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation HomeEntityResolutionResult

+ (id)successWithResolvedHomeEntity:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_252E2C0E4(v4);

  return v5;
}

+ (id)disambiguationWithHomeEntitysToDisambiguate:(id)a3
{
  type metadata accessor for HomeEntity();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E2C198(v3);

  return v4;
}

+ (id)confirmationRequiredWithHomeEntityToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_252E2C2FC(a3);

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

- (HomeEntityResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_252E36E44();
  v6 = a4;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeEntityResolutionResult();
  v8 = [(HomeEntityResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end