@interface RecurrenceFrequencyResolutionResult
+ (id)confirmationRequiredWithRecurrenceFrequencyToConfirm:(int64_t)confirm;
+ (id)successWithResolvedRecurrenceFrequency:(int64_t)frequency;
- (RecurrenceFrequencyResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation RecurrenceFrequencyResolutionResult

+ (id)successWithResolvedRecurrenceFrequency:(int64_t)frequency
{
  swift_getObjCClassMetadata();
  v4 = sub_252E250C0(frequency);

  return v4;
}

+ (id)confirmationRequiredWithRecurrenceFrequencyToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_252E2514C(confirm);

  return v4;
}

- (RecurrenceFrequencyResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for RecurrenceFrequencyResolutionResult();
  v8 = [(RecurrenceFrequencyResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end