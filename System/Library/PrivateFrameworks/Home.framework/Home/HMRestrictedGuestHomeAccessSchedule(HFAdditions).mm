@interface HMRestrictedGuestHomeAccessSchedule(HFAdditions)
+ (id)hf_restrictedGuestHomeAccessScheduleFromHFSchedule:()HFAdditions;
@end

@implementation HMRestrictedGuestHomeAccessSchedule(HFAdditions)

+ (id)hf_restrictedGuestHomeAccessScheduleFromHFSchedule:()HFAdditions
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 rules];
    v5 = [v4 allObjects];
    v6 = [v5 na_filter:&__block_literal_global_204];
    v7 = [v6 na_map:&__block_literal_global_3_33];

    v8 = [v3 rules];

    v9 = [v8 allObjects];
    v10 = [v9 na_filter:&__block_literal_global_5_3];
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