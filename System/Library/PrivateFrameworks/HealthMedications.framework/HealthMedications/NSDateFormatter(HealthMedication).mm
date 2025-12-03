@interface NSDateFormatter(HealthMedication)
+ (id)hm_localizableTimeStringKeyWithPrefix:()HealthMedication date:;
- (id)hm_localizableTimeStringKeyWithPrefix:()HealthMedication date:;
@end

@implementation NSDateFormatter(HealthMedication)

- (id)hm_localizableTimeStringKeyWithPrefix:()HealthMedication date:
{
  v6 = a3;
  v7 = a4;
  dateFormat = [self dateFormat];
  [self setLocalizedDateFormatFromTemplate:@"j"];
  v9 = [self stringFromDate:v7];
  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];
  v12 = [v9 componentsSeparatedByCharactersInSet:invertedSet];
  v13 = [v12 componentsJoinedByString:&stru_2863AECE0];

  v14 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v15 = [v14 numberFromString:v13];

  if (v15)
  {
    integerValue = [v15 integerValue];
  }

  else
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    integerValue = [currentCalendar component:32 fromDate:v7];
  }

  [self setDateFormat:dateFormat];
  if (integerValue == 1)
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