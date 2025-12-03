@interface NSDate(HKMenstrualCycles)
- (id)hkmc_durationStringToEndDate:()HKMenstrualCycles calendar:;
@end

@implementation NSDate(HKMenstrualCycles)

- (id)hkmc_durationStringToEndDate:()HKMenstrualCycles calendar:
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 components:16 fromDate:self toDate:v7 options:0];
  v9 = [v6 components:24 fromDate:self toDate:v7 options:0];
  v10 = [v6 components:12 fromDate:self toDate:v7 options:0];

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v8 day] == 0x7FFFFFFFFFFFFFFFLL || (v12 = objc_msgSend(v8, "day"), v13 = v8, v12 >= 61))
  {
    if ([v10 year] == 0x7FFFFFFFFFFFFFFFLL || (v14 = objc_msgSend(v10, "year"), v13 = v9, v14 >= 1))
    {
      v13 = v10;
    }
  }

  v15 = v13;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];
  v18 = [languageCode isEqualToString:@"en"];

  if (v18)
  {
    if ([v15 year] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v15, "year") >= 1)
    {
      v19 = [MEMORY[0x277CCACA8] hkmc_stringForYears:{objc_msgSend(v15, "year")}];
      [v11 addObject:v19];
    }

    if ([v15 month] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v15, "month") >= 1)
    {
      v20 = [MEMORY[0x277CCACA8] hkmc_stringForMonths:{objc_msgSend(v15, "month")}];
      [v11 addObject:v20];
    }

    if ([v15 day] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v15, "day") >= 1)
    {
      v21 = [MEMORY[0x277CCACA8] hkmc_stringForDays:{objc_msgSend(v15, "day")}];
      [v11 addObject:v21];
    }

    v22 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v11];
  }

  else
  {
    v22 = [MEMORY[0x277CCA958] localizedStringFromDateComponents:v15 unitsStyle:3];
  }

  v23 = v22;

  return v23;
}

@end