@interface HFScheduleValidator
+ (BOOL)containsInvalidRules:(id)a3;
+ (BOOL)containsUnsupportedRules:(id)a3;
+ (BOOL)isValid:(id)a3;
@end

@implementation HFScheduleValidator

+ (BOOL)isValid:(id)a3
{
  v4 = a3;
  if (v4 && ([a1 containsUnsupportedRules:v4] & 1) == 0)
  {
    v5 = [a1 containsInvalidRules:v4] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)containsInvalidRules:(id)a3
{
  v3 = [a3 rules];
  v4 = [v3 na_any:&__block_literal_global_128];

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

+ (BOOL)containsUnsupportedRules:(id)a3
{
  v3 = a3;
  v4 = [v3 rules];
  v5 = [v4 count];
  if (v5 >= [v3 minNumberOfRules] && (v6 = objc_msgSend(v4, "count"), v6 <= objc_msgSend(v3, "maxNumberOfRules")) && ((v7 = objc_msgSend(v4, "na_any:", &__block_literal_global_2), (objc_msgSend(v3, "supportsWeekDayRules") & 1) != 0) || !v7))
  {
    v10 = [v4 na_any:&__block_literal_global_4_9];
    v8 = ([v3 supportsYearDayRules] ^ 1) & v10;
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

@end