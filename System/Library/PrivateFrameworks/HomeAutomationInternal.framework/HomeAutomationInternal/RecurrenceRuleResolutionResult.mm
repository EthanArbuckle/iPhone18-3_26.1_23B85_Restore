@interface RecurrenceRuleResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)confirmationRequiredWithRecurrenceRuleToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithRecurrenceRulesToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedObject:(id)object;
+ (id)successWithResolvedRecurrenceRule:(id)rule;
- (RecurrenceRuleResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation RecurrenceRuleResolutionResult

+ (id)successWithResolvedRecurrenceRule:(id)rule
{
  swift_getObjCClassMetadata();
  ruleCopy = rule;
  v5 = sub_252E2EBD0(ruleCopy);

  return v5;
}

+ (id)disambiguationWithRecurrenceRulesToDisambiguate:(id)disambiguate
{
  type metadata accessor for RecurrenceRule();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E2EC84(v3);

  return v4;
}

+ (id)confirmationRequiredWithRecurrenceRuleToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_252E2EDE8(confirm);

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

- (RecurrenceRuleResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for RecurrenceRuleResolutionResult();
  v8 = [(RecurrenceRuleResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end