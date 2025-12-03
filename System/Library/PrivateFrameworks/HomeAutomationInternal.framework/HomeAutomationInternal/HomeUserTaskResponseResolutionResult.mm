@interface HomeUserTaskResponseResolutionResult
+ (id)confirmationRequiredWithHomeUserTaskResponseToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithHomeUserTaskResponsesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedHomeUserTaskResponse:(id)response;
+ (id)successWithResolvedObject:(id)object;
- (HomeUserTaskResponseResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation HomeUserTaskResponseResolutionResult

+ (id)successWithResolvedHomeUserTaskResponse:(id)response
{
  swift_getObjCClassMetadata();
  responseCopy = response;
  v5 = sub_252E2F640(responseCopy);

  return v5;
}

+ (id)disambiguationWithHomeUserTaskResponsesToDisambiguate:(id)disambiguate
{
  type metadata accessor for HomeUserTaskResponse();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E2F6F4(v3);

  return v4;
}

+ (id)confirmationRequiredWithHomeUserTaskResponseToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_252E2F858(confirm);

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

- (HomeUserTaskResponseResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeUserTaskResponseResolutionResult();
  v8 = [(HomeUserTaskResponseResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end