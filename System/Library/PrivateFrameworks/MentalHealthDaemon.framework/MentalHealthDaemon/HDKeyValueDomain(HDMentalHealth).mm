@interface HDKeyValueDomain(HDMentalHealth)
+ (id)hdmh_mentalHealthSyncedDefaultsDomainWithProfile:()HDMentalHealth;
@end

@implementation HDKeyValueDomain(HDMentalHealth)

+ (id)hdmh_mentalHealthSyncedDefaultsDomainWithProfile:()HDMentalHealth
{
  v3 = a3;
  v4 = HDEntityCategoryForKeyValueCategory();
  v5 = objc_alloc(MEMORY[0x277D10718]);
  v6 = [v5 initWithCategory:v4 domainName:*MEMORY[0x277D28008] profile:v3];

  return v6;
}

@end