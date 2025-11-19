@interface HDKeyValueDomain(HKMCSyncedButNotToWatchProtected)
+ (id)hdmc_appProtectedSyncedMenstrualCyclesDefaultsDomainWithProfile:()HKMCSyncedButNotToWatchProtected;
@end

@implementation HDKeyValueDomain(HKMCSyncedButNotToWatchProtected)

+ (id)hdmc_appProtectedSyncedMenstrualCyclesDefaultsDomainWithProfile:()HKMCSyncedButNotToWatchProtected
{
  v3 = MEMORY[0x277D10718];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithCategory:102 domainName:*MEMORY[0x277D11898] profile:v4];

  return v6;
}

@end