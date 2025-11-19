@interface HKHealthSettingsProfile
+ (id)sharedProfile;
- (HKHealthSettingsProfile)initWithProfileIdentifier:(id)a3;
- (id)fetchMedicalIDDataSynchronously;
- (id)getNameComponents;
- (id)profileStore;
- (void)getProfilesOfType:(int64_t)a3 completion:(id)a4;
@end

@implementation HKHealthSettingsProfile

+ (id)sharedProfile
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HKHealthSettingsProfile_sharedProfile__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedProfile_onceToken != -1)
  {
    dispatch_once(&sharedProfile_onceToken, block);
  }

  v2 = sharedProfile_sharedProfile;

  return v2;
}

void __40__HKHealthSettingsProfile_sharedProfile__block_invoke(uint64_t a1)
{
  v4 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  [v4 setSourceBundleIdentifier:@"com.apple.Health"];
  [v4 resume];
  v2 = [objc_alloc(*(a1 + 32)) initWithHealthStore:v4];
  v3 = sharedProfile_sharedProfile;
  sharedProfile_sharedProfile = v2;
}

- (HKHealthSettingsProfile)initWithProfileIdentifier:(id)a3
{
  v4 = MEMORY[0x277CCD4D8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setProfileIdentifier:v5];

  [v6 resume];
  v11.receiver = self;
  v11.super_class = HKHealthSettingsProfile;
  v7 = [(WDProfile *)&v11 initWithHealthStore:v6];
  v8 = [(HKHealthSettingsProfile *)v7 getNameComponents];
  [(HKHealthSettingsProfile *)v7 setNameComponents:v8];

  v9 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v7->_nameComponents style:2 options:0];
  [(HKHealthSettingsProfile *)v7 setLocalizedName:v9];

  return v7;
}

- (void)getProfilesOfType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(HKHealthSettingsProfile *)self profileStore];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HKHealthSettingsProfile_getProfilesOfType_completion___block_invoke;
  v9[3] = &unk_2796E5420;
  v10 = v6;
  v11 = a3;
  v9[4] = self;
  v8 = v6;
  [v7 fetchAllProfilesWithCompletion:v9];
}

void __56__HKHealthSettingsProfile_getProfilesOfType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d", *(a1 + 48)];
    v8 = *(a1 + 40);
    v9 = [v5 filteredArrayUsingPredicate:v7];
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      __56__HKHealthSettingsProfile_getProfilesOfType_completion___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (id)getNameComponents
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = objc_alloc_init(MEMORY[0x277CCAC00]);
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = [(HKHealthSettingsProfile *)self profileStore];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__HKHealthSettingsProfile_getNameComponents__block_invoke;
  v9[3] = &unk_2796E5448;
  v11 = &v12;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 fetchDisplayName:v9];

  v6 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v5, v6);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __44__HKHealthSettingsProfile_getNameComponents__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      __44__HKHealthSettingsProfile_getNameComponents__block_invoke_cold_1(a1);
    }
  }

  else
  {
    [*(*(*(a1 + 48) + 8) + 40) setGivenName:a2];
    [*(*(*(a1 + 48) + 8) + 40) setFamilyName:v7];
  }

  dispatch_group_leave(*(a1 + 40));
}

- (id)profileStore
{
  v3 = objc_alloc(MEMORY[0x277CCD7D0]);
  v4 = [(WDProfile *)self healthStore];
  v5 = [v3 initWithHealthStore:v4];

  return v5;
}

- (id)fetchMedicalIDDataSynchronously
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = objc_alloc(MEMORY[0x277CCD5E8]);
  v5 = [(WDProfile *)self healthStore];
  v6 = [v4 initWithHealthStore:v5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__HKHealthSettingsProfile_fetchMedicalIDDataSynchronously__block_invoke;
  v11[3] = &unk_2796E5470;
  v13 = &v14;
  v7 = v3;
  v12 = v7;
  [v6 fetchMedicalIDDataWithCompletion:v11];

  v8 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v7, v8);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __58__HKHealthSettingsProfile_fetchMedicalIDDataSynchronously__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __56__HKHealthSettingsProfile_getProfilesOfType_completion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_251E77000, v2, v3, "%{public}@ Failed to fetch profiles from HKProfileStore, Error: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __44__HKHealthSettingsProfile_getNameComponents__block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_251E77000, v2, v3, "%{public}@ Failed to fetch name for profile, Error: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

@end