@interface HKKeyValueDomain(MentalHealth)
+ (id)hkmh_mentalHealthSyncedDefaultsDomainWithHealthStore:()MentalHealth;
@end

@implementation HKKeyValueDomain(MentalHealth)

+ (id)hkmh_mentalHealthSyncedDefaultsDomainWithHealthStore:()MentalHealth
{
  v3 = MEMORY[0x277CCD570];
  v4 = a3;
  v5 = [[v3 alloc] initWithCategory:0 domainName:@"com.apple.private.health.mental-health" healthStore:v4];

  return v5;
}

@end