@interface DayOfWeekOptionsResolutionResult
+ (id)confirmationRequiredWithDayOfWeekOptionsToConfirm:(int64_t)confirm;
+ (id)successWithResolvedDayOfWeekOptions:(int64_t)options;
- (DayOfWeekOptionsResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation DayOfWeekOptionsResolutionResult

+ (id)successWithResolvedDayOfWeekOptions:(int64_t)options
{
  swift_getObjCClassMetadata();
  v4 = sub_252E250C0(options);

  return v4;
}

+ (id)confirmationRequiredWithDayOfWeekOptionsToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_252E2514C(confirm);

  return v4;
}

- (DayOfWeekOptionsResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for DayOfWeekOptionsResolutionResult();
  v8 = [(DayOfWeekOptionsResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end