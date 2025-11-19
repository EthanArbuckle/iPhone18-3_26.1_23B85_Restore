@interface NSDateFormatter(HealthMedication)
+ (id)hm_localizableTimeStringKeyWithPrefix:()HealthMedication date:;
- (id)hm_localizableTimeStringKeyWithPrefix:()HealthMedication date:;
@end

@implementation NSDateFormatter(HealthMedication)

- (id)hm_localizableTimeStringKeyWithPrefix:()HealthMedication date:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 dateFormat];
  [a1 setLocalizedDateFormatFromTemplate:@"j"];
  v9 = [a1 stringFromDate:v7];
  v10 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v11 = [v10 invertedSet];
  v12 = [v9 componentsSeparatedByCharactersInSet:v11];
  v13 = [v12 componentsJoinedByString:&stru_2863AECE0];

  v14 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v15 = [v14 numberFromString:v13];

  if (v15)
  {
    v16 = [v15 integerValue];
  }

  else
  {
    v17 = [MEMORY[0x277CBEA80] currentCalendar];
    v16 = [v17 component:32 fromDate:v7];
  }

  [a1 setDateFormat:v8];
  if (v16 == 1)
  {
    v18 = [v6 stringByAppendingString:@"_SINGULAR"];
  }

  else
  {
    v18 = v6;
  }

  v19 = v18;

  return v19;
}

+ (id)hm_localizableTimeStringKeyWithPrefix:()HealthMedication date:
{
  v5 = MEMORY[0x277CCA968];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = [v8 hm_localizableTimeStringKeyWithPrefix:v7 date:v6];

  return v9;
}

@end