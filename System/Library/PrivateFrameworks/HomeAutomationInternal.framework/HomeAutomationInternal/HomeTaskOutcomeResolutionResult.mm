@interface HomeTaskOutcomeResolutionResult
+ (id)confirmationRequiredWithHomeTaskOutcomeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedHomeTaskOutcome:(int64_t)outcome;
- (HomeTaskOutcomeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation HomeTaskOutcomeResolutionResult

+ (id)successWithResolvedHomeTaskOutcome:(int64_t)outcome
{
  swift_getObjCClassMetadata();
  v4 = sub_252E250C0(outcome);

  return v4;
}

+ (id)confirmationRequiredWithHomeTaskOutcomeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_252E2514C(confirm);

  return v4;
}

- (HomeTaskOutcomeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeTaskOutcomeResolutionResult();
  v8 = [(HomeTaskOutcomeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end