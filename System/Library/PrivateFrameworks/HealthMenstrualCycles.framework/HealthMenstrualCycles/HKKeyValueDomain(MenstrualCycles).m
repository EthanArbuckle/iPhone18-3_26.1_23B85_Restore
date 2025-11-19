@interface HKKeyValueDomain(MenstrualCycles)
+ (id)hkmc_cycleChartsHiddenRowsDomainWithHealthStore:()MenstrualCycles;
- (uint64_t)hkmc_setOnboardingTileLastDismissedDate:()MenstrualCycles error:;
@end

@implementation HKKeyValueDomain(MenstrualCycles)

+ (id)hkmc_cycleChartsHiddenRowsDomainWithHealthStore:()MenstrualCycles
{
  v3 = MEMORY[0x277CCD570];
  v4 = a3;
  v5 = [[v3 alloc] initWithCategory:4 domainName:@"com.apple.private.health.menstrual-cycles.cycle-charts-hidden-rows" healthStore:v4];

  return v5;
}

- (uint64_t)hkmc_setOnboardingTileLastDismissedDate:()MenstrualCycles error:
{
  v7 = a3;
  v8 = [a1 domainName];
  if (![v8 isEqualToString:@"com.apple.private.health.menstrual-cycles"])
  {

    goto LABEL_5;
  }

  v9 = [a1 category];

  if (v9 != 4)
  {
LABEL_5:
    [HKKeyValueDomain(MenstrualCycles) hkmc_setOnboardingTileLastDismissedDate:a2 error:a1];
  }

  v10 = [a1 setDate:v7 forKey:@"OnboardingTileLastDismissedDate" error:a4];

  return v10;
}

- (void)hkmc_setOnboardingTileLastDismissedDate:()MenstrualCycles error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKKeyValueDomain+MenstrualCycles.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"[self.domainName isEqualToString:HKMCMenstrualCyclesDefaultsDomain] && self.category == HKKeyValueCategoryUbiquitousUserDefaults"}];
}

@end