@interface HomeUserTaskResponseResolutionResult
+ (id)confirmationRequiredWithHomeUserTaskResponseToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithHomeUserTaskResponsesToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedHomeUserTaskResponse:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
- (HomeUserTaskResponseResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation HomeUserTaskResponseResolutionResult

+ (id)successWithResolvedHomeUserTaskResponse:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_252E2F640(v4);

  return v5;
}

+ (id)disambiguationWithHomeUserTaskResponsesToDisambiguate:(id)a3
{
  type metadata accessor for HomeUserTaskResponse();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E2F6F4(v3);

  return v4;
}

+ (id)confirmationRequiredWithHomeUserTaskResponseToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_252E2F858(a3);

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

- (HomeUserTaskResponseResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_252E36E44();
  v6 = a4;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeUserTaskResponseResolutionResult();
  v8 = [(HomeUserTaskResponseResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end