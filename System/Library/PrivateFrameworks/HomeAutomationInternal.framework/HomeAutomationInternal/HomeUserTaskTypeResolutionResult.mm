@interface HomeUserTaskTypeResolutionResult
+ (id)confirmationRequiredWithHomeUserTaskTypeToConfirm:(int64_t)a3;
+ (id)successWithResolvedHomeUserTaskType:(int64_t)a3;
- (HomeUserTaskTypeResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation HomeUserTaskTypeResolutionResult

+ (id)successWithResolvedHomeUserTaskType:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_252E250C0(a3);

  return v4;
}

+ (id)confirmationRequiredWithHomeUserTaskTypeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_252E2514C(a3);

  return v4;
}

- (HomeUserTaskTypeResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_252E36E44();
  v6 = a4;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeUserTaskTypeResolutionResult();
  v8 = [(HomeUserTaskTypeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end