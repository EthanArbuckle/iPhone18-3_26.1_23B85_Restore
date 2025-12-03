@interface HomeAttributeRangeResolutionResult
+ (id)confirmationRequiredWithHomeAttributeRangeToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithHomeAttributeRangesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedHomeAttributeRange:(id)range;
+ (id)successWithResolvedObject:(id)object;
- (HomeAttributeRangeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation HomeAttributeRangeResolutionResult

+ (id)successWithResolvedHomeAttributeRange:(id)range
{
  swift_getObjCClassMetadata();
  rangeCopy = range;
  v5 = sub_252E2E16C(rangeCopy);

  return v5;
}

+ (id)disambiguationWithHomeAttributeRangesToDisambiguate:(id)disambiguate
{
  type metadata accessor for HomeAttributeRange();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E2E220(v3);

  return v4;
}

+ (id)confirmationRequiredWithHomeAttributeRangeToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_252E2E384(confirm);

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

- (HomeAttributeRangeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeAttributeRangeResolutionResult();
  v8 = [(HomeAttributeRangeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end