@interface HomeAttributeValueResolutionResult
+ (id)confirmationRequiredWithHomeAttributeValueToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithHomeAttributeValuesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedHomeAttributeValue:(id)value;
+ (id)successWithResolvedObject:(id)object;
- (HomeAttributeValueResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation HomeAttributeValueResolutionResult

+ (id)successWithResolvedHomeAttributeValue:(id)value
{
  swift_getObjCClassMetadata();
  valueCopy = value;
  v5 = sub_252E2D6C0(valueCopy);

  return v5;
}

+ (id)disambiguationWithHomeAttributeValuesToDisambiguate:(id)disambiguate
{
  type metadata accessor for HomeAttributeValue();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E2D774(v3);

  return v4;
}

+ (id)confirmationRequiredWithHomeAttributeValueToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_252E2D8D8(confirm);

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

- (HomeAttributeValueResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeAttributeValueResolutionResult();
  v8 = [(HomeAttributeValueResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end