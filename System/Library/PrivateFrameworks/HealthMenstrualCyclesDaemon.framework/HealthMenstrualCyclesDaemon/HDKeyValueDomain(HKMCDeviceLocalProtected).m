@interface HDKeyValueDomain(HKMCDeviceLocalProtected)
+ (id)hdmc_deviationDetectionAnalyticsProtectedDomainWithProfile:()HKMCDeviceLocalProtected;
@end

@implementation HDKeyValueDomain(HKMCDeviceLocalProtected)

+ (id)hdmc_deviationDetectionAnalyticsProtectedDomainWithProfile:()HKMCDeviceLocalProtected
{
  v3 = MEMORY[0x277D10718];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithCategory:100 domainName:*MEMORY[0x277D11828] profile:v4];

  return v6;
}

@end