@interface TriggerEventResolutionResult
+ (id)confirmationRequiredWithTriggerEventToConfirm:(int64_t)a3;
+ (id)successWithResolvedTriggerEvent:(int64_t)a3;
- (TriggerEventResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation TriggerEventResolutionResult

+ (id)successWithResolvedTriggerEvent:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_252E250C0(a3);

  return v4;
}

+ (id)confirmationRequiredWithTriggerEventToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_252E2514C(a3);

  return v4;
}

- (TriggerEventResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_252E36E44();
  v6 = a4;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for TriggerEventResolutionResult();
  v8 = [(TriggerEventResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end