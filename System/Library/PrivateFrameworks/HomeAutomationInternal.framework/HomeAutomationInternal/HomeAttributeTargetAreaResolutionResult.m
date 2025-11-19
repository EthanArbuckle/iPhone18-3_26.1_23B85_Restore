@interface HomeAttributeTargetAreaResolutionResult
+ (id)confirmationRequiredWithHomeAttributeTargetAreaToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithHomeAttributeTargetAreasToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedHomeAttributeTargetArea:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
- (HomeAttributeTargetAreaResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation HomeAttributeTargetAreaResolutionResult

+ (id)successWithResolvedHomeAttributeTargetArea:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_252E31870(v4);

  return v5;
}

+ (id)disambiguationWithHomeAttributeTargetAreasToDisambiguate:(id)a3
{
  type metadata accessor for HomeAttributeTargetArea();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E31924(v3);

  return v4;
}

+ (id)confirmationRequiredWithHomeAttributeTargetAreaToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_252E31A88(a3);

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

- (HomeAttributeTargetAreaResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_252E36E44();
  v6 = a4;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeAttributeTargetAreaResolutionResult();
  v8 = [(HomeAttributeTargetAreaResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end