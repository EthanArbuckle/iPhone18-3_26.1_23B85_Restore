@interface HomeFilterResolutionResult
+ (id)confirmationRequiredWithHomeFilterToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithHomeFiltersToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedHomeFilter:(id)filter;
+ (id)successWithResolvedObject:(id)object;
- (HomeFilterResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation HomeFilterResolutionResult

+ (id)successWithResolvedHomeFilter:(id)filter
{
  swift_getObjCClassMetadata();
  filterCopy = filter;
  v5 = sub_252E2B004(filterCopy);

  return v5;
}

+ (id)disambiguationWithHomeFiltersToDisambiguate:(id)disambiguate
{
  type metadata accessor for HomeFilter();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E2B068(v3);

  return v4;
}

+ (id)confirmationRequiredWithHomeFilterToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_252E2B160(confirm);

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

- (HomeFilterResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeFilterResolutionResult();
  v8 = [(HomeFilterResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end