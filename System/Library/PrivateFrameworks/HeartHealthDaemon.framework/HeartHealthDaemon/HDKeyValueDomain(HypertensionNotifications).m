@interface HDKeyValueDomain(HypertensionNotifications)
+ (id)hdhr_hypertensionNotificationsDeviceLocalDomainForProfile:()HypertensionNotifications;
+ (id)hdhr_hypertensionNotificationsSyncedDomainForProfile:()HypertensionNotifications;
@end

@implementation HDKeyValueDomain(HypertensionNotifications)

+ (id)hdhr_hypertensionNotificationsDeviceLocalDomainForProfile:()HypertensionNotifications
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v5 initWithCategory:0 domainName:*MEMORY[0x277D12F00] profile:v4];

  return v6;
}

+ (id)hdhr_hypertensionNotificationsSyncedDomainForProfile:()HypertensionNotifications
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v5 initWithCategory:1 domainName:*MEMORY[0x277D12F00] profile:v4];

  return v6;
}

@end