@interface HDCategorySampleEntity
@end

@implementation HDCategorySampleEntity

uint64_t __115__HDCategorySampleEntity_HKMenstrualCycles__hdmc_ongoingFactorsOnDayIndex_factorTypes_profile_calendarCache_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 _timeZone];
  v6 = [v4 calendarForTimeZone:v5];
  v7 = [v3 hk_dayIndexRangeWithCalendar:v6];
  v9 = v8;

  v10 = a1[6];
  if (v7 < v10 && (v9 < 1 || v7 + v9 > v10))
  {
    [*(*(a1[5] + 8) + 40) addObject:v3];
  }

  return 1;
}

uint64_t __115__HDCategorySampleEntity_HKMenstrualCycles__hdmc_ongoingFactorsOnDayIndex_factorTypes_profile_calendarCache_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = a2;
  v8 = [v7 startDate];
  v9 = *(a1 + 32);
  v10 = [v7 _timeZone];

  v11 = [v9 calendarForTimeZone:v10];
  v12 = [v5 numberWithInteger:{objc_msgSend(v8, "hk_dayIndexWithCalendar:", v11)}];
  v13 = MEMORY[0x277CCABB0];
  v14 = [v6 startDate];
  v15 = *(a1 + 32);
  v16 = [v6 _timeZone];

  v17 = [v15 calendarForTimeZone:v16];
  v18 = [v13 numberWithInteger:{objc_msgSend(v14, "hk_dayIndexWithCalendar:", v17)}];
  v19 = [v12 compare:v18];

  return v19;
}

@end