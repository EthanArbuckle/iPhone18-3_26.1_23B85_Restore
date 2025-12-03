@interface NSDateFormatter(HKMenstrualCycles)
+ (id)hkmc_longNonRelativeDateFormatter;
+ (id)hkmc_longRelativeDateFormatter;
+ (id)hkmc_nonRelativeDateWithoutDayFormatter;
+ (uint64_t)hkmc_shouldUseRelativeFormatForFertileWindowEndDate:()HKMenstrualCycles gregorianCalendar:dateFormatArgumentOut:;
+ (uint64_t)localizedKeyDayNameFromDate:()HKMenstrualCycles gregorianCalendar:;
@end

@implementation NSDateFormatter(HKMenstrualCycles)

+ (id)hkmc_longRelativeDateFormatter
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v0 setTimeStyle:0];
  [v0 setDateStyle:4];
  [v0 setFormattingContext:5];
  [v0 setDoesRelativeDateFormatting:1];

  return v0;
}

+ (id)hkmc_longNonRelativeDateFormatter
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v0 setTimeStyle:0];
  [v0 setDateStyle:4];
  [v0 setFormattingContext:5];
  [v0 setDoesRelativeDateFormatting:0];

  return v0;
}

+ (id)hkmc_nonRelativeDateWithoutDayFormatter
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v0 setTimeStyle:0];
  [v0 setDateStyle:3];
  [v0 setFormattingContext:5];
  [v0 setDoesRelativeDateFormatting:0];

  return v0;
}

+ (uint64_t)hkmc_shouldUseRelativeFormatForFertileWindowEndDate:()HKMenstrualCycles gregorianCalendar:dateFormatArgumentOut:
{
  v7 = a3;
  v8 = a4;
  hkmc_longRelativeDateFormatter = [MEMORY[0x277CCA968] hkmc_longRelativeDateFormatter];
  v10 = [hkmc_longRelativeDateFormatter stringFromDate:v7];

  hkmc_longNonRelativeDateFormatter = [MEMORY[0x277CCA968] hkmc_longNonRelativeDateFormatter];
  v12 = [hkmc_longNonRelativeDateFormatter stringFromDate:v7];

  v13 = [v12 isEqualToString:v10];
  if (v13)
  {
    v14 = [MEMORY[0x277CCA968] localizedKeyDayNameFromDate:v7 gregorianCalendar:v8];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"NOTIFICATION_UPDATE_FERTILE_WINDOW_BODY_WILL_END_ON_%@", v14];
    v16 = HKMCLocalizedString(v15);

    hkmc_nonRelativeDateWithoutDayFormatter = [MEMORY[0x277CCA968] hkmc_nonRelativeDateWithoutDayFormatter];
    v18 = [hkmc_nonRelativeDateWithoutDayFormatter stringFromDate:v7];

    v19 = HKMCLocalizedString(@"NOTIFICATION_UPDATE_FERTILE_WINDOW_BODY_FULL_FORMAT_%@_%@");
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:v19, v16, v18];
    if (a5)
    {
      v20 = v20;
      *a5 = v20;
    }
  }

  else if (a5)
  {
    v21 = v10;
    *a5 = v10;
  }

  return v13 ^ 1u;
}

+ (uint64_t)localizedKeyDayNameFromDate:()HKMenstrualCycles gregorianCalendar:
{
  v4 = [a4 component:512 fromDate:a3] - 1;

  return [&unk_2863D3050 objectAtIndexedSubscript:v4];
}

@end