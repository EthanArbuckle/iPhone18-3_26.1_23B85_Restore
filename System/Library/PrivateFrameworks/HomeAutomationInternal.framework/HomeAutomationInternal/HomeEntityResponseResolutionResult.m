@interface HomeEntityResponseResolutionResult
+ (id)confirmationRequiredWithHomeEntityResponseToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithHomeEntityResponsesToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedHomeEntityResponse:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
- (HomeEntityResponseResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation HomeEntityResponseResolutionResult

+ (id)successWithResolvedHomeEntityResponse:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_252E30180(v4);

  return v5;
}

+ (id)disambiguationWithHomeEntityResponsesToDisambiguate:(id)a3
{
  type metadata accessor for HomeEntityResponse();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E30234(v3);

  return v4;
}

+ (id)confirmationRequiredWithHomeEntityResponseToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_252E30398(a3);

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

- (HomeEntityResponseResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_252E36E44();
  v6 = a4;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeEntityResponseResolutionResult();
  v8 = [(HomeEntityResponseResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end