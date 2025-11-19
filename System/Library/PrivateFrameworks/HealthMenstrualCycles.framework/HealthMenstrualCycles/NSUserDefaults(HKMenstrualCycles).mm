@interface NSUserDefaults(HKMenstrualCycles)
+ (id)hkmc_menstrualCyclesDefaults;
- (uint64_t)hkmc_integerForKey:()HKMenstrualCycles defaultValue:;
@end

@implementation NSUserDefaults(HKMenstrualCycles)

+ (id)hkmc_menstrualCyclesDefaults
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.private.health.menstrual-cycles"];

  return v0;
}

- (uint64_t)hkmc_integerForKey:()HKMenstrualCycles defaultValue:
{
  v6 = a3;
  v7 = [a1 objectForKey:v6];

  if (v7)
  {
    a4 = [a1 integerForKey:v6];
  }

  return a4;
}

@end