@interface HKMedicationDeviceConfiguration
+ (BOOL)_isSupportedLocale:(id)a3;
+ (BOOL)_isSupportedRegion:(id)a3;
+ (BOOL)supportsOntologyBackedMedications;
- (HKMedicationDeviceConfiguration)init;
@end

@implementation HKMedicationDeviceConfiguration

+ (BOOL)supportsOntologyBackedMedications
{
  v3 = [MEMORY[0x277CBEAF8] hk_testableCurrentLocale];
  LOBYTE(a1) = [a1 _isSupportedLocale:v3];

  return a1;
}

- (HKMedicationDeviceConfiguration)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (BOOL)_isSupportedLocale:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 countryCode];
  if (v6)
  {
    v7 = [a1 _isSupportedRegion:v6];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogHealthOntology();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = 138543874;
      v13 = a1;
      v14 = 2114;
      v15 = v11;
      v16 = 2114;
      v17 = v5;
      _os_log_error_impl(&dword_2517E7000, v8, OS_LOG_TYPE_ERROR, "%{public}@: passing a locale without country code (%{public}@) to %{public}@, will return NO", &v12, 0x20u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)_isSupportedRegion:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CCBBC0];
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v8 count:1];
  LOBYTE(v3) = [v5 containsObject:{v4, v8, v9}];

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

@end