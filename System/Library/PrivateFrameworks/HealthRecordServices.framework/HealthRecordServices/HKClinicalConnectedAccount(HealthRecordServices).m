@interface HKClinicalConnectedAccount(HealthRecordServices)
- (uint64_t)initWithClinicalAccount:()HealthRecordServices;
@end

@implementation HKClinicalConnectedAccount(HealthRecordServices)

- (uint64_t)initWithClinicalAccount:()HealthRecordServices
{
  v4 = MEMORY[0x277CCD0F8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 identifier];
  v8 = [v5 provenance];
  v9 = [v8 title];
  v10 = [v5 provenance];
  v11 = [v10 subtitle];
  v12 = [v5 brand];
  v13 = [v5 needsRelogin];

  v14 = [v6 initWithIdentifier:v7 title:v9 subtitle:v11 brand:v12 needsRelogin:v13];
  return v14;
}

@end