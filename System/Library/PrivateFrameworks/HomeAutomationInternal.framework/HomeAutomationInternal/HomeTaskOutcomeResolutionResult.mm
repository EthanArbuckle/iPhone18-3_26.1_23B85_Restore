@interface HomeTaskOutcomeResolutionResult
+ (id)confirmationRequiredWithHomeTaskOutcomeToConfirm:(int64_t)a3;
+ (id)successWithResolvedHomeTaskOutcome:(int64_t)a3;
- (HomeTaskOutcomeResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation HomeTaskOutcomeResolutionResult

+ (id)successWithResolvedHomeTaskOutcome:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_252E250C0(a3);

  return v4;
}

+ (id)confirmationRequiredWithHomeTaskOutcomeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_252E2514C(a3);

  return v4;
}

- (HomeTaskOutcomeResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_252E36E44();
  v6 = a4;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeTaskOutcomeResolutionResult();
  v8 = [(HomeTaskOutcomeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end