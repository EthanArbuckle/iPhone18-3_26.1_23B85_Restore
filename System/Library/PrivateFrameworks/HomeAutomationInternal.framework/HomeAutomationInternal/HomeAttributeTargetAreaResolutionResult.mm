@interface HomeAttributeTargetAreaResolutionResult
+ (id)confirmationRequiredWithHomeAttributeTargetAreaToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithHomeAttributeTargetAreasToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedHomeAttributeTargetArea:(id)area;
+ (id)successWithResolvedObject:(id)object;
- (HomeAttributeTargetAreaResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation HomeAttributeTargetAreaResolutionResult

+ (id)successWithResolvedHomeAttributeTargetArea:(id)area
{
  swift_getObjCClassMetadata();
  areaCopy = area;
  v5 = sub_252E31870(areaCopy);

  return v5;
}

+ (id)disambiguationWithHomeAttributeTargetAreasToDisambiguate:(id)disambiguate
{
  type metadata accessor for HomeAttributeTargetArea();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E31924(v3);

  return v4;
}

+ (id)confirmationRequiredWithHomeAttributeTargetAreaToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_252E31A88(confirm);

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

- (HomeAttributeTargetAreaResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeAttributeTargetAreaResolutionResult();
  v8 = [(HomeAttributeTargetAreaResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end