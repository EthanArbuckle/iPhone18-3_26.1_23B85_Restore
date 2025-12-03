@interface HomeEntityResponseResolutionResult
+ (id)confirmationRequiredWithHomeEntityResponseToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithHomeEntityResponsesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedHomeEntityResponse:(id)response;
+ (id)successWithResolvedObject:(id)object;
- (HomeEntityResponseResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation HomeEntityResponseResolutionResult

+ (id)successWithResolvedHomeEntityResponse:(id)response
{
  swift_getObjCClassMetadata();
  responseCopy = response;
  v5 = sub_252E30180(responseCopy);

  return v5;
}

+ (id)disambiguationWithHomeEntityResponsesToDisambiguate:(id)disambiguate
{
  type metadata accessor for HomeEntityResponse();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E30234(v3);

  return v4;
}

+ (id)confirmationRequiredWithHomeEntityResponseToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_252E30398(confirm);

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

- (HomeEntityResponseResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeEntityResponseResolutionResult();
  v8 = [(HomeEntityResponseResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end