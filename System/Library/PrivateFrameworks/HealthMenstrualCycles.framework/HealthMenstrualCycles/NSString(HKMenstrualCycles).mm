@interface NSString(HKMenstrualCycles)
+ (id)hkmc_stringForDays:()HKMenstrualCycles;
+ (id)hkmc_stringForMonths:()HKMenstrualCycles;
+ (id)hkmc_stringForYears:()HKMenstrualCycles;
@end

@implementation NSString(HKMenstrualCycles)

+ (id)hkmc_stringForYears:()HKMenstrualCycles
{
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v4 setYear:a3];
  v5 = [MEMORY[0x277CCA958] localizedStringFromDateComponents:v4 unitsStyle:3];

  return v5;
}

+ (id)hkmc_stringForMonths:()HKMenstrualCycles
{
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v4 setMonth:a3];
  v5 = [MEMORY[0x277CCA958] localizedStringFromDateComponents:v4 unitsStyle:3];

  return v5;
}

+ (id)hkmc_stringForDays:()HKMenstrualCycles
{
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v4 setDay:a3];
  v5 = [MEMORY[0x277CCA958] localizedStringFromDateComponents:v4 unitsStyle:3];

  return v5;
}

@end