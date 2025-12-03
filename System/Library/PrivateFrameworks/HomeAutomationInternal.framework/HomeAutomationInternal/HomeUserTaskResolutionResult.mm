@interface HomeUserTaskResolutionResult
+ (id)confirmationRequiredWithHomeUserTaskToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithHomeUserTasksToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedHomeUserTask:(id)task;
+ (id)successWithResolvedObject:(id)object;
- (HomeUserTaskResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation HomeUserTaskResolutionResult

+ (id)successWithResolvedHomeUserTask:(id)task
{
  swift_getObjCClassMetadata();
  taskCopy = task;
  v5 = sub_252E2C7CC(taskCopy);

  return v5;
}

+ (id)disambiguationWithHomeUserTasksToDisambiguate:(id)disambiguate
{
  type metadata accessor for HomeUserTask();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E2C830(v3);

  return v4;
}

+ (id)confirmationRequiredWithHomeUserTaskToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_252E2C928(confirm);

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

- (HomeUserTaskResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeUserTaskResolutionResult();
  v8 = [(HomeUserTaskResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end