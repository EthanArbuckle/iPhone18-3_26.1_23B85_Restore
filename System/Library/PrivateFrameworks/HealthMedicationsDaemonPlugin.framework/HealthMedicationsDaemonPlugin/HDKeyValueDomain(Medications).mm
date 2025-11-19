@interface HDKeyValueDomain(Medications)
+ (id)hdmd_defaultDomainWithProfile:()Medications;
+ (id)hdmd_timeZoneDomainWithProfile:()Medications;
- (uint64_t)hdmd_numberValueAsBoolForKey:()Medications;
@end

@implementation HDKeyValueDomain(Medications)

+ (id)hdmd_defaultDomainWithProfile:()Medications
{
  v3 = MEMORY[0x277D10718];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = *MEMORY[0x277D11438];
  v7 = [v5 initWithCategory:HDEntityCategoryForKeyValueCategory() domainName:*MEMORY[0x277D11440] profile:v4];

  return v7;
}

+ (id)hdmd_timeZoneDomainWithProfile:()Medications
{
  v3 = MEMORY[0x277D10718];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithCategory:HDEntityCategoryForKeyValueCategory() domainName:*MEMORY[0x277D114A8] profile:v4];

  return v6;
}

- (uint64_t)hdmd_numberValueAsBoolForKey:()Medications
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0;
  v5 = [a1 numberForKey:v4 error:&v11];
  v6 = v11;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKLogMedication();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v13 = a1;
      v14 = 2114;
      v15 = v4;
      v16 = 2114;
      v17 = v6;
    }

    v8 = 0;
  }

  else
  {
    v8 = [v5 BOOLValue];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

@end