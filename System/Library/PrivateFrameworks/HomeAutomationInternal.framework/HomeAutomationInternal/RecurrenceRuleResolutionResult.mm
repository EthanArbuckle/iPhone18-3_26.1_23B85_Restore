@interface RecurrenceRuleResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)confirmationRequiredWithRecurrenceRuleToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithRecurrenceRulesToDisambiguate:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
+ (id)successWithResolvedRecurrenceRule:(id)a3;
- (RecurrenceRuleResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation RecurrenceRuleResolutionResult

+ (id)successWithResolvedRecurrenceRule:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_252E2EBD0(v4);

  return v5;
}

+ (id)disambiguationWithRecurrenceRulesToDisambiguate:(id)a3
{
  type metadata accessor for RecurrenceRule();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E2EC84(v3);

  return v4;
}

+ (id)confirmationRequiredWithRecurrenceRuleToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_252E2EDE8(a3);

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

- (RecurrenceRuleResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_252E36E44();
  v6 = a4;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for RecurrenceRuleResolutionResult();
  v8 = [(RecurrenceRuleResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end