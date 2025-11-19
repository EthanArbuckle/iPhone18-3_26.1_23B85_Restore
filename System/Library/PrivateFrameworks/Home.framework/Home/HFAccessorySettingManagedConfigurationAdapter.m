@interface HFAccessorySettingManagedConfigurationAdapter
- (BOOL)shouldShowSettingsEntity:(id)a3;
- (HFAccessorySettingManagedConfigurationAdapter)initWithHomeKitSettingsVendor:(id)a3 keyPaths:(id)a4 mode:(unint64_t)a5 updateHandler:(id)a6;
- (HFAccessorySettingManagedConfigurationAdapter)initWithHomeKitSettingsVendor:(id)a3 keyPaths:(id)a4 updateHandler:(id)a5;
- (HFAccessorySettingManagedConfigurationAdapter)initWithHomeKitSettingsVendor:(id)a3 mode:(unint64_t)a4;
- (MCProfileConnection)profileConnectionForSynchronization;
- (id)_beginMonitoringSettingsKeyPath:(id)a3;
- (id)_installedProfileData;
- (id)_profilesSettingData;
- (id)_removeProfileFromProfileManager:(id)a3;
- (id)_synchronizeManagedConfigurationToHomeKit;
- (id)profiles;
- (id)profilesSettingFuture;
- (id)removeProfileDataFromHomeKit:(id)a3;
- (id)removeProfileFromHomeKit:(id)a3;
- (unint64_t)numberOfProfiles;
- (void)_dispatchWasUpdated;
- (void)_setupDebugHandler;
- (void)addProfileObserver:(id)a3;
- (void)dealloc;
- (void)homeKitSettingWasUpdated:(id)a3 value:(id)a4;
- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)a3 userInfo:(id)a4;
- (void)removeProfileObserver:(id)a3;
@end

@implementation HFAccessorySettingManagedConfigurationAdapter

- (HFAccessorySettingManagedConfigurationAdapter)initWithHomeKitSettingsVendor:(id)a3 mode:(unint64_t)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingManagedConfigurationAdapter.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"homeKitSettingsVendor"}];
  }

  v17[0] = @"root.general.profiles.managedConfigurationProfiles";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v9 = [MEMORY[0x277CBEB98] setWithArray:v8];
  v16.receiver = self;
  v16.super_class = HFAccessorySettingManagedConfigurationAdapter;
  v10 = [(HFAccessorySettingAdapter *)&v16 initWithHomeKitSettingsVendor:v7 keyPaths:v9 mode:a4 updateHandler:0];

  if (v10)
  {
    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    profileObservers = v10->_profileObservers;
    v10->_profileObservers = v11;

    v10->_isSettingUp = 1;
    [(HFAccessorySettingManagedConfigurationAdapter *)v10 _setupDebugHandler];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (HFAccessorySettingManagedConfigurationAdapter)initWithHomeKitSettingsVendor:(id)a3 keyPaths:(id)a4 mode:(unint64_t)a5 updateHandler:(id)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_mode_);
  [v8 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingManagedConfigurationAdapter.m" lineNumber:61 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingManagedConfigurationAdapter initWithHomeKitSettingsVendor:keyPaths:mode:updateHandler:]", v9}];

  return 0;
}

- (HFAccessorySettingManagedConfigurationAdapter)initWithHomeKitSettingsVendor:(id)a3 keyPaths:(id)a4 updateHandler:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_mode_);
  [v7 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingManagedConfigurationAdapter.m" lineNumber:66 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingManagedConfigurationAdapter initWithHomeKitSettingsVendor:keyPaths:updateHandler:]", v8}];

  return 0;
}

- (void)dealloc
{
  [(MCProfileConnection *)self->_profileConnectionForSynchronization removeObserver:self];
  v3.receiver = self;
  v3.super_class = HFAccessorySettingManagedConfigurationAdapter;
  [(HFAccessorySettingManagedConfigurationAdapter *)&v3 dealloc];
}

- (void)homeKitSettingWasUpdated:(id)a3 value:(id)a4
{
  v4 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEBUG, "Ignoring managed config updates in direct mode.", v5, 2u);
  }
}

- (id)removeProfileFromHomeKit:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v5;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Preparing to remove profile %@", buf, 0xCu);
  }

  if (!v5)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingManagedConfigurationAdapter.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"profile"}];
  }

  objc_initWeak(buf, self);
  v7 = [(HFAccessorySettingManagedConfigurationAdapter *)self profilesSettingFuture];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__HFAccessorySettingManagedConfigurationAdapter_removeProfileFromHomeKit___block_invoke;
  v17[3] = &unk_277DFC5D8;
  objc_copyWeak(&v19, buf);
  v8 = v5;
  v18 = v8;
  v9 = [v7 flatMap:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__HFAccessorySettingManagedConfigurationAdapter_removeProfileFromHomeKit___block_invoke_3;
  v15[3] = &unk_277DF4700;
  v10 = v8;
  v16 = v10;
  v11 = [v9 addCompletionBlock:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __74__HFAccessorySettingManagedConfigurationAdapter_removeProfileFromHomeKit___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained valueManager];
  v6 = [v5 valueForSetting:v3];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__HFAccessorySettingManagedConfigurationAdapter_removeProfileFromHomeKit___block_invoke_2;
  v11[3] = &unk_277DFBF58;
  v12 = *(a1 + 32);
  v7 = [v6 na_filter:v11];

  v8 = [WeakRetained valueManager];
  v9 = [v8 changeValueForSetting:v3 toValue:v7 changeType:1];

  return v9;
}

uint64_t __74__HFAccessorySettingManagedConfigurationAdapter_removeProfileFromHomeKit___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D26290];
  v4 = [a2 value];
  v5 = [v3 profileWithData:v4 outError:0];

  v6 = [v5 identifier];
  v7 = [*(a1 + 32) identifier];
  v8 = [v6 isEqualToString:v7];

  return v8 ^ 1u;
}

void __74__HFAccessorySettingManagedConfigurationAdapter_removeProfileFromHomeKit___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x3EuLL);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v4;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Removal of '%@' failed with error: %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Removal of '%@' finished successfully", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)removeProfileDataFromHomeKit:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingManagedConfigurationAdapter.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"profileData"}];
  }

  v14 = 0;
  v6 = [MEMORY[0x277D26290] profileWithData:v5 outError:&v14];
  v7 = v14;
  if (v7)
  {
    v8 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Unable to reconstitute data into a profile: %@", buf, 0xCu);
    }

    v9 = [MEMORY[0x277D2C900] futureWithError:v7];
  }

  else
  {
    v9 = [(HFAccessorySettingManagedConfigurationAdapter *)self removeProfileFromHomeKit:v6];
  }

  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)profiles
{
  v3 = [(HFAccessorySettingManagedConfigurationAdapter *)self _profilesSettingData];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HFAccessorySettingManagedConfigurationAdapter_profiles__block_invoke;
  v6[3] = &unk_277DF3FD0;
  v6[4] = self;
  v4 = [v3 flatMap:v6];

  return v4;
}

id __57__HFAccessorySettingManagedConfigurationAdapter_profiles__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HFAccessorySettingManagedConfigurationAdapter_profiles__block_invoke_2;
  v9[3] = &unk_277DFC4F8;
  v9[4] = *(a1 + 32);
  v4 = [v3 na_map:v9];
  v5 = MEMORY[0x277D2C900];
  v6 = [v4 sortedArrayUsingComparator:&__block_literal_global_121];
  v7 = [v5 futureWithResult:v6];

  return v7;
}

id __57__HFAccessorySettingManagedConfigurationAdapter_profiles__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0;
  v4 = [MEMORY[0x277D26290] profileWithData:v3 outError:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 136315906;
      v13 = "[HFAccessorySettingManagedConfigurationAdapter profiles]_block_invoke_2";
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v3;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%s(%@): Error (%@), ignoring profile data %@.", buf, 0x2Au);
    }

    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __57__HFAccessorySettingManagedConfigurationAdapter_profiles__block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 installDate];
  v6 = [v4 installDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)addProfileObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessorySettingManagedConfigurationAdapter *)self profileObservers];
  [v5 addObject:v4];
}

- (void)removeProfileObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessorySettingManagedConfigurationAdapter *)self profileObservers];
  [v5 removeObject:v4];
}

- (unint64_t)numberOfProfiles
{
  v2 = [(HFAccessorySettingAdapter *)self valueManager];
  v3 = [v2 valueForSettingAtKeyPath:@"root.general.profiles.managedConfigurationProfiles"];

  v4 = [v3 count];
  return v4;
}

- (id)profilesSettingFuture
{
  v2 = [(HFAccessorySettingAdapter *)self settingWatchFutureForKeyPath:@"root.general.profiles.managedConfigurationProfiles"];
  v3 = [v2 flatMap:&__block_literal_global_34_3];

  return v3;
}

id __70__HFAccessorySettingManagedConfigurationAdapter_profilesSettingFuture__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4;
    if (v5)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
  }

  v6 = 0;
LABEL_8:

  [v6 setItemValueClass:objc_opt_class()];
  v9 = [MEMORY[0x277D2C900] futureWithResult:v6];

  return v9;
}

- (id)_installedProfileData
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(HFAccessorySettingAdapter *)self mode])
  {
    v3 = [(HFAccessorySettingManagedConfigurationAdapter *)self profileConnectionForSynchronization];
    v4 = [v3 installedProfileIdentifiers];

    v5 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[HFAccessorySettingManagedConfigurationAdapter _installedProfileData]";
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%s: Current set of installed profiles %@", buf, 0x16u);
    }

    v6 = objc_opt_new();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__HFAccessorySettingManagedConfigurationAdapter__installedProfileData__block_invoke;
    v12[3] = &unk_277DF7060;
    v12[4] = self;
    v7 = v6;
    v13 = v7;
    [v4 na_each:v12];
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __70__HFAccessorySettingManagedConfigurationAdapter__installedProfileData__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 profileConnectionForSynchronization];
  v6 = [v5 installedProfileDataWithIdentifier:v4];

  [*(a1 + 40) na_safeSetObject:v6 forKey:v4];
}

- (id)_profilesSettingData
{
  v3 = [(HFAccessorySettingAdapter *)self valueManager];
  v4 = [(HFAccessorySettingManagedConfigurationAdapter *)self profilesSettingFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__HFAccessorySettingManagedConfigurationAdapter__profilesSettingData__block_invoke;
  v8[3] = &unk_277DFC568;
  v9 = v3;
  v5 = v3;
  v6 = [v4 flatMap:v8];

  return v6;
}

id __69__HFAccessorySettingManagedConfigurationAdapter__profilesSettingData__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) valueForSetting:a2];
  v3 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HFAccessorySettingManagedConfigurationAdapter__profilesSettingData__block_invoke_2;
  v7[3] = &unk_277DFC540;
  v8 = v3;
  v4 = v3;
  [v2 na_each:v7];
  v5 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v5;
}

void __69__HFAccessorySettingManagedConfigurationAdapter__profilesSettingData__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D26290];
  v4 = a2;
  v5 = [v4 value];
  v9 = [v3 profileWithData:v5 outError:0];

  v6 = *(a1 + 32);
  v7 = [v4 value];

  v8 = [v9 identifier];
  [v6 na_safeSetObject:v7 forKey:v8];
}

- (id)_removeProfileFromProfileManager:(id)a3
{
  v4 = a3;
  if ([(HFAccessorySettingAdapter *)self mode])
  {
    v5 = [(HFAccessorySettingManagedConfigurationAdapter *)self profileConnectionForSynchronization];
    v6 = MEMORY[0x277D2C900];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __82__HFAccessorySettingManagedConfigurationAdapter__removeProfileFromProfileManager___block_invoke;
    v12[3] = &unk_277DF28D8;
    v13 = v5;
    v14 = v4;
    v7 = v5;
    v8 = [v6 futureWithBlock:v12];
  }

  else
  {
    v9 = MEMORY[0x277D2C900];
    v10 = [MEMORY[0x277CCA9B8] hf_errorWithCode:8];
    v8 = [v9 futureWithError:v10];
  }

  return v8;
}

void __82__HFAccessorySettingManagedConfigurationAdapter__removeProfileFromProfileManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) identifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__HFAccessorySettingManagedConfigurationAdapter__removeProfileFromProfileManager___block_invoke_2;
  v7[3] = &unk_277DF3D38;
  v8 = v3;
  v6 = v3;
  [v4 removeProfileWithIdentifier:v5 completion:v7];
}

- (MCProfileConnection)profileConnectionForSynchronization
{
  v3 = [(HFAccessorySettingAdapter *)self mode];
  if (v3)
  {
    profileConnectionForSynchronization = self->_profileConnectionForSynchronization;
    if (!profileConnectionForSynchronization)
    {
      v5 = [MEMORY[0x277D262A0] sharedConnection];
      v6 = self->_profileConnectionForSynchronization;
      self->_profileConnectionForSynchronization = v5;

      [(MCProfileConnection *)self->_profileConnectionForSynchronization addObserver:self];
      profileConnectionForSynchronization = self->_profileConnectionForSynchronization;
    }

    v3 = profileConnectionForSynchronization;
  }

  return v3;
}

- (id)_synchronizeManagedConfigurationToHomeKit
{
  if ([(HFAccessorySettingAdapter *)self mode])
  {
    v3 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Synchronizing Managed Configuration -> HomeKit (Replacing HomeKit configuration with contents of ManagedConfiguration)", buf, 2u);
    }

    objc_initWeak(buf, self);
    v4 = [(HFAccessorySettingManagedConfigurationAdapter *)self profilesSettingFuture];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __90__HFAccessorySettingManagedConfigurationAdapter__synchronizeManagedConfigurationToHomeKit__block_invoke;
    v11 = &unk_277DFC5D8;
    v12 = self;
    objc_copyWeak(&v13, buf);
    v5 = [v4 flatMap:&v8];
    v6 = [v5 addCompletionBlock:{&__block_literal_global_52_1, v8, v9, v10, v11, v12}];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v6 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v6;
}

id __90__HFAccessorySettingManagedConfigurationAdapter__synchronizeManagedConfigurationToHomeKit__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _profilesSettingData];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__HFAccessorySettingManagedConfigurationAdapter__synchronizeManagedConfigurationToHomeKit__block_invoke_2;
  v8[3] = &unk_277DFC5B0;
  objc_copyWeak(&v10, (a1 + 40));
  v5 = v3;
  v9 = v5;
  v6 = [v4 flatMap:v8];

  objc_destroyWeak(&v10);

  return v6;
}

id __90__HFAccessorySettingManagedConfigurationAdapter__synchronizeManagedConfigurationToHomeKit__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[HFAccessorySettingManagedConfigurationAdapter _synchronizeManagedConfigurationToHomeKit]_block_invoke_2";
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%s: set of HomeKit profiles: %@", &v16, 0x16u);
  }

  v6 = [WeakRetained _installedProfileData];
  v7 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[HFAccessorySettingManagedConfigurationAdapter _synchronizeManagedConfigurationToHomeKit]_block_invoke";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "%s: set of Managed Configuration profiles: %@", &v16, 0x16u);
  }

  if ([v6 isEqual:v3])
  {
    v8 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[HFAccessorySettingManagedConfigurationAdapter _synchronizeManagedConfigurationToHomeKit]_block_invoke";
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%s: profiles match, no work needed", &v16, 0xCu);
    }

    v9 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v10 = [v6 allValues];
    v11 = [v10 na_map:&__block_literal_global_47_1];

    v12 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "[HFAccessorySettingManagedConfigurationAdapter _synchronizeManagedConfigurationToHomeKit]_block_invoke_2";
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "%s: replace HomeKit profiles with Managed Configuration profiles %@", &v16, 0x16u);
    }

    v13 = [WeakRetained valueManager];
    v9 = [v13 changeValueForSetting:*(a1 + 32) toValue:v11 changeType:0];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

id __90__HFAccessorySettingManagedConfigurationAdapter__synchronizeManagedConfigurationToHomeKit__block_invoke_45(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1690];
  v3 = a2;
  v4 = [[v2 alloc] initWithValue:v3];

  return v4;
}

void __90__HFAccessorySettingManagedConfigurationAdapter__synchronizeManagedConfigurationToHomeKit__block_invoke_49(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = +[HFErrorHandler sharedHandler];
    [v4 logError:v3 operationDescription:@"_synchronizeManagedConfigurationToHomeKit"];
  }

  else
  {
    v4 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Successfully Synchronized managed configuration -> homeKit", v5, 2u);
    }
  }
}

- (void)_dispatchWasUpdated
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(HFAccessorySettingManagedConfigurationAdapter *)self profileObservers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 managedConfigurationAdapterSettingsWereUpdated:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)a3 userInfo:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "received notification from MobileConfig that profile lists changed: connection: %@ userInfo: %@", &v11, 0x16u);
  }

  v9 = [(HFAccessorySettingManagedConfigurationAdapter *)self _synchronizeManagedConfigurationToHomeKit];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldShowSettingsEntity:(id)a3
{
  v4 = [a3 keyPath];
  v5 = [v4 isEqualToString:@"root.general.profiles"];

  return !v5 || [(HFAccessorySettingManagedConfigurationAdapter *)self numberOfProfiles]!= 0;
}

- (id)_beginMonitoringSettingsKeyPath:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HFAccessorySettingManagedConfigurationAdapter *)self _synchronizeManagedConfigurationToHomeKit];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__HFAccessorySettingManagedConfigurationAdapter__beginMonitoringSettingsKeyPath___block_invoke;
  v8[3] = &unk_277DFC620;
  objc_copyWeak(&v9, &location);
  v6 = [v5 addCompletionBlock:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __81__HFAccessorySettingManagedConfigurationAdapter__beginMonitoringSettingsKeyPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsSettingUp:0];
}

- (void)_setupDebugHandler
{
  objc_initWeak(&location, self);
  v2 = +[HFDebugStateDumpManager sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__HFAccessorySettingManagedConfigurationAdapter__setupDebugHandler__block_invoke;
  v6[3] = &unk_277DF2B00;
  objc_copyWeak(&v7, &location);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 registerStateDumpHandler:v6 withName:v4];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

id __67__HFAccessorySettingManagedConfigurationAdapter__setupDebugHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [HFStateDumpBuilderContext contextWithDetailLevel:2];
    v3 = [HFStateDumpBuilder builderWithObject:WeakRetained context:v2];

    v4 = [MEMORY[0x277D262A0] sharedConnection];
    v5 = [v4 installedProfileIdentifiers];
    [v3 setObject:v5 forKeyedSubscript:@"MCProfiles"];

    v6 = [WeakRetained settingForKeyPath:@"root.general.profiles.managedConfigurationProfiles"];
    v7 = [v6 value];
    [v3 setObject:v7 forKeyedSubscript:@"HKProfiles"];

    if ([WeakRetained mode] == 1)
    {
      v8 = @"Accessory";
    }

    else
    {
      v8 = @"Controller";
    }

    [v3 setObject:v8 forKeyedSubscript:@"adapterMode"];
    [v3 appendBool:objc_msgSend(WeakRetained withName:"isSettingUp") ifEqualTo:{@"settingUp", 1}];
    v9 = [v3 buildPropertyListRepresentation];
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  return v9;
}

@end