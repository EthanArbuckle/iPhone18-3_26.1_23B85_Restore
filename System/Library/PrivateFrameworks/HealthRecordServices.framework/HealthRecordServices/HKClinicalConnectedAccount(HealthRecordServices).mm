@interface HKClinicalConnectedAccount(HealthRecordServices)
- (uint64_t)initWithClinicalAccount:()HealthRecordServices;
@end

@implementation HKClinicalConnectedAccount(HealthRecordServices)

- (uint64_t)initWithClinicalAccount:()HealthRecordServices
{
  v4 = MEMORY[0x277CCD0F8];
  v5 = a3;
  v6 = [v4 alloc];
  identifier = [v5 identifier];
  provenance = [v5 provenance];
  title = [provenance title];
  provenance2 = [v5 provenance];
  subtitle = [provenance2 subtitle];
  brand = [v5 brand];
  needsRelogin = [v5 needsRelogin];

  v14 = [v6 initWithIdentifier:identifier title:title subtitle:subtitle brand:brand needsRelogin:needsRelogin];
  return v14;
}

@end