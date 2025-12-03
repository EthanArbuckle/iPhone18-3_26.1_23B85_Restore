@interface HMRestrictedGuestHomeAccessSchedule(HFAdditions)
+ (id)hf_restrictedGuestHomeAccessScheduleFromHFSchedule:()HFAdditions;
@end

@implementation HMRestrictedGuestHomeAccessSchedule(HFAdditions)

+ (id)hf_restrictedGuestHomeAccessScheduleFromHFSchedule:()HFAdditions
{
  if (a3)
  {
    v3 = a3;
    rules = [v3 rules];
    allObjects = [rules allObjects];
    v6 = [allObjects na_filter:&__block_literal_global_204];
    v7 = [v6 na_map:&__block_literal_global_3_33];

    rules2 = [v3 rules];

    allObjects2 = [rules2 allObjects];
    v10 = [allObjects2 na_filter:&__block_literal_global_5_3];
    v11 = [v10 na_map:&__block_literal_global_7_13];

    v12 = [objc_alloc(MEMORY[0x277CD1D78]) initWithWeekDayRules:v7 yearDayRules:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end