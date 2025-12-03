@interface HFScheduleValidator
+ (BOOL)containsInvalidRules:(id)rules;
+ (BOOL)containsUnsupportedRules:(id)rules;
+ (BOOL)isValid:(id)valid;
@end

@implementation HFScheduleValidator

+ (BOOL)isValid:(id)valid
{
  validCopy = valid;
  if (validCopy && ([self containsUnsupportedRules:validCopy] & 1) == 0)
  {
    v5 = [self containsInvalidRules:validCopy] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)containsInvalidRules:(id)rules
{
  rules = [rules rules];
  v4 = [rules na_any:&__block_literal_global_128];

  return v4;
}

BOOL __44__HFScheduleValidator_containsInvalidRules___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isWeekDayRule])
  {
    v3 = [v2 weekDayRule];
    v4 = [v3 daysOfTheWeek] == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)containsUnsupportedRules:(id)rules
{
  rulesCopy = rules;
  rules = [rulesCopy rules];
  v5 = [rules count];
  if (v5 >= [rulesCopy minNumberOfRules] && (v6 = objc_msgSend(rules, "count"), v6 <= objc_msgSend(rulesCopy, "maxNumberOfRules")) && ((v7 = objc_msgSend(rules, "na_any:", &__block_literal_global_2), (objc_msgSend(rulesCopy, "supportsWeekDayRules") & 1) != 0) || !v7))
  {
    v10 = [rules na_any:&__block_literal_global_4_9];
    v8 = ([rulesCopy supportsYearDayRules] ^ 1) & v10;
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

@end