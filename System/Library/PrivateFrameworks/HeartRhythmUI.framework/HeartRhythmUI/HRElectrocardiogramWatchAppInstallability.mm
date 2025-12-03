@interface HRElectrocardiogramWatchAppInstallability
+ (BOOL)isElectrocardiogramAppDeletableForActiveWatch;
+ (void)installElectrocardiogramAppOnActiveWatch:(id)watch;
- (HRElectrocardiogramWatchAppInstallability)init;
- (id)installElectrocardiogramAppAlertController:(id)controller cancel:(id)cancel;
- (void)checkElectrocardiogramAppInstallStateWithContext:(id)context completion:(id)completion;
- (void)electrocardiogramAppInstallStateOnActiveWatch:(id)watch;
- (void)setAllowInstallingElectrocardiogramWatchApp:(BOOL)app;
@end

@implementation HRElectrocardiogramWatchAppInstallability

- (HRElectrocardiogramWatchAppInstallability)init
{
  v7.receiver = self;
  v7.super_class = HRElectrocardiogramWatchAppInstallability;
  v2 = [(HRElectrocardiogramWatchAppInstallability *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCDBD8]);
    v4 = [v3 initWithBundleID:*MEMORY[0x277CCBCC8]];
    ecgAppAvailability = v2->_ecgAppAvailability;
    v2->_ecgAppAvailability = v4;
  }

  return v2;
}

- (void)setAllowInstallingElectrocardiogramWatchApp:(BOOL)app
{
  appCopy = app;
  v22[1] = *MEMORY[0x277D85DE8];
  hk_heartRhythmDefaults = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  [hk_heartRhythmDefaults hk_setElectrocardiogramWatchAppInstallIsAllowed:appCopy];

  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = *MEMORY[0x277CCBD20];
  v22[0] = *MEMORY[0x277CCBD20];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v10 = [v7 initWithArray:v9];

  HKSynchronizeNanoPreferencesUserDefaults();
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = NSStringFromSelector(a2);
    v14 = 138544130;
    selfCopy = self;
    v16 = 2114;
    v17 = v13;
    v18 = 2114;
    v19 = v8;
    v20 = 1026;
    v21 = appCopy;
    _os_log_impl(&dword_2521E7000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Triggered NanoPreferencesSync (key: %{public}@; value: %{public}d)", &v14, 0x26u);
  }
}

+ (BOOL)isElectrocardiogramAppDeletableForActiveWatch
{
  activeNonFamilySetupDevice = [MEMORY[0x277CCD6A0] activeNonFamilySetupDevice];
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"1CFACCB8-FFEB-4682-A50E-16F853583912"];
  v4 = [activeNonFamilySetupDevice supportsCapability:v3];

  return v4;
}

- (void)electrocardiogramAppInstallStateOnActiveWatch:(id)watch
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCD6A0];
  watchCopy = watch;
  activeNonFamilySetupDevice = [v5 activeNonFamilySetupDevice];
  if (activeNonFamilySetupDevice)
  {
    ecgAppAvailability = [(HRElectrocardiogramWatchAppInstallability *)self ecgAppAvailability];
    [ecgAppAvailability appInstallStateOnWatch:activeNonFamilySetupDevice completion:watchCopy];
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = NSStringFromSelector(a2);
      v12 = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&dword_2521E7000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> No active device", &v12, 0x16u);
    }

    ecgAppAvailability = [MEMORY[0x277CCA9B8] hk_error:100 description:@"No active device"];
    watchCopy[2](watchCopy, 0, ecgAppAvailability);
  }
}

- (void)checkElectrocardiogramAppInstallStateWithContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  if ([objc_opt_class() isElectrocardiogramAppDeletableForActiveWatch])
  {
    objc_initWeak(location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __105__HRElectrocardiogramWatchAppInstallability_checkElectrocardiogramAppInstallStateWithContext_completion___block_invoke;
    v12[3] = &unk_2796FB560;
    objc_copyWeak(v15, location);
    v15[1] = a2;
    v14 = completionCopy;
    v13 = contextCopy;
    [(HRElectrocardiogramWatchAppInstallability *)self electrocardiogramAppInstallStateOnActiveWatch:v12];

    objc_destroyWeak(v15);
    objc_destroyWeak(location);
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = NSStringFromSelector(a2);
      *location = 138543618;
      *&location[4] = self;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_2521E7000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Skipping check for if ECG app is installed, active watch does not support standalone apps", location, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

void __105__HRElectrocardiogramWatchAppInstallability_checkElectrocardiogramAppInstallStateWithContext_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__HRElectrocardiogramWatchAppInstallability_checkElectrocardiogramAppInstallStateWithContext_completion___block_invoke_2;
    block[3] = &unk_2796FB538;
    v8 = v5;
    v9 = WeakRetained;
    v12[1] = a1[7];
    v11 = a1[5];
    v10 = a1[4];
    v12[2] = a2;
    objc_copyWeak(v12, a1 + 6);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(v12);
  }
}

void __105__HRElectrocardiogramWatchAppInstallability_checkElectrocardiogramAppInstallStateWithContext_completion___block_invoke_2(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __105__HRElectrocardiogramWatchAppInstallability_checkElectrocardiogramAppInstallStateWithContext_completion___block_invoke_2_cold_1(a1, v3, v2);
    }

    v4 = MEMORY[0x277D75110];
    v5 = [*(a1 + 32) localizedDescription];
    v6 = [v4 alertControllerWithTitle:@"error" message:v5 preferredStyle:1];

    v7 = MEMORY[0x277D750F8];
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:@"ECG_APP_INSTALL_PROMPT_CANCEL_BUTTON_TITLE" value:&stru_2864680B0 table:@"HealthUI-Localizable-Cinnamon"];
    v10 = HKConditionallyRedactedHeartRhythmString();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __105__HRElectrocardiogramWatchAppInstallability_checkElectrocardiogramAppInstallStateWithContext_completion___block_invoke_322;
    v37[3] = &unk_2796FB4C0;
    v39 = *(a1 + 56);
    v38 = *(a1 + 32);
    v11 = [v7 actionWithTitle:v10 style:1 handler:v37];

    [v6 addAction:v11];
    [*(a1 + 48) presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    v12 = *(a1 + 80) - 1;
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2D8];
    v14 = os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT);
    if (v12 > 1)
    {
      if (v14)
      {
        v22 = *(a1 + 40);
        v23 = *(a1 + 72);
        v24 = v13;
        v25 = NSStringFromSelector(v23);
        *buf = 138543618;
        v41 = v22;
        v42 = 2114;
        v43 = v25;
        _os_log_impl(&dword_2521E7000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> ECG App is not installed on watch, presenting install prompt", buf, 0x16u);
      }

      v26 = *(a1 + 40);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __105__HRElectrocardiogramWatchAppInstallability_checkElectrocardiogramAppInstallStateWithContext_completion___block_invoke_330;
      v34[3] = &unk_2796FB4E8;
      objc_copyWeak(v36, (a1 + 64));
      v36[1] = *(a1 + 72);
      v35 = *(a1 + 56);
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __105__HRElectrocardiogramWatchAppInstallability_checkElectrocardiogramAppInstallStateWithContext_completion___block_invoke_332;
      v31 = &unk_2796FB510;
      objc_copyWeak(v33, (a1 + 64));
      v33[1] = *(a1 + 72);
      v32 = *(a1 + 56);
      v27 = [v26 installElectrocardiogramAppAlertController:v34 cancel:&v28];
      [*(a1 + 48) presentViewController:v27 animated:1 completion:{0, v28, v29, v30, v31}];

      objc_destroyWeak(v33);
      objc_destroyWeak(v36);
    }

    else
    {
      if (v14)
      {
        v15 = *(a1 + 40);
        v16 = *(a1 + 72);
        v17 = v13;
        v18 = NSStringFromSelector(v16);
        v19 = v18;
        v20 = *(a1 + 80);
        *buf = 138543874;
        if (v20 == 2)
        {
          v21 = @"installed";
        }

        else
        {
          v21 = @"installing";
        }

        v41 = v15;
        v42 = 2114;
        v43 = v18;
        v44 = 2114;
        v45 = v21;
        _os_log_impl(&dword_2521E7000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> ECG App is %{public}@ on watch", buf, 0x20u);
      }

      (*(*(a1 + 56) + 16))();
    }
  }
}

void __105__HRElectrocardiogramWatchAppInstallability_checkElectrocardiogramAppInstallStateWithContext_completion___block_invoke_330(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = NSStringFromSelector(*(a1 + 48));
    v9 = 138543618;
    v10 = WeakRetained;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_2521E7000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> User elected to install ECG App", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __105__HRElectrocardiogramWatchAppInstallability_checkElectrocardiogramAppInstallStateWithContext_completion___block_invoke_332(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138543618;
    v8 = WeakRetained;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_2521E7000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> User cancelled install prompt for ECG App", &v7, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (id)installElectrocardiogramAppAlertController:(id)controller cancel:(id)cancel
{
  controllerCopy = controller;
  cancelCopy = cancel;
  v6 = MEMORY[0x277D75110];
  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"ECG_APP_INSTALL_PROMPT_TITLE" value:&stru_2864680B0 table:@"HealthUI-Localizable-Cinnamon"];
  v9 = HKConditionallyRedactedHeartRhythmString();
  v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"ECG_APP_INSTALL_PROMPT_BODY" value:&stru_2864680B0 table:@"HealthUI-Localizable-Cinnamon"];
  v12 = HKConditionallyRedactedHeartRhythmString();
  v13 = [v6 alertControllerWithTitle:v9 message:v12 preferredStyle:1];

  v14 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:@"ECG_APP_INSTALL_PROMPT_CANCEL_BUTTON_TITLE" value:&stru_2864680B0 table:@"HealthUI-Localizable-Cinnamon"];
  v17 = HKConditionallyRedactedHeartRhythmString();
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __95__HRElectrocardiogramWatchAppInstallability_installElectrocardiogramAppAlertController_cancel___block_invoke;
  v31[3] = &unk_2796FB588;
  v32 = cancelCopy;
  v18 = cancelCopy;
  v19 = [v14 actionWithTitle:v17 style:1 handler:v31];

  v20 = MEMORY[0x277D750F8];
  v21 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v22 = [v21 localizedStringForKey:@"ECG_APP_INSTALL_PROMPT_INSTALL_BUTTON_TITLE" value:&stru_2864680B0 table:@"HealthUI-Localizable-Cinnamon"];
  v23 = HKConditionallyRedactedHeartRhythmString();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __95__HRElectrocardiogramWatchAppInstallability_installElectrocardiogramAppAlertController_cancel___block_invoke_2;
  v29[3] = &unk_2796FB600;
  v29[4] = self;
  v30 = controllerCopy;
  v24 = controllerCopy;
  v25 = [v20 actionWithTitle:v23 style:0 handler:v29];

  [v13 addAction:v19];
  [v13 addAction:v25];

  return v13;
}

uint64_t __95__HRElectrocardiogramWatchAppInstallability_installElectrocardiogramAppAlertController_cancel___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __95__HRElectrocardiogramWatchAppInstallability_installElectrocardiogramAppAlertController_cancel___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_class();
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __95__HRElectrocardiogramWatchAppInstallability_installElectrocardiogramAppAlertController_cancel___block_invoke_3;
  v3[3] = &unk_2796FB5D8;
  v4 = *(a1 + 40);
  [v2 installElectrocardiogramAppOnActiveWatch:v3];
}

void __95__HRElectrocardiogramWatchAppInstallability_installElectrocardiogramAppAlertController_cancel___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__HRElectrocardiogramWatchAppInstallability_installElectrocardiogramAppAlertController_cancel___block_invoke_4;
  block[3] = &unk_2796FB5B0;
  v6 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __95__HRElectrocardiogramWatchAppInstallability_installElectrocardiogramAppAlertController_cancel___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

+ (void)installElectrocardiogramAppOnActiveWatch:(id)watch
{
  watchCopy = watch;
  activeNonFamilySetupDevice = [MEMORY[0x277CCD6A0] activeNonFamilySetupDevice];
  if (activeNonFamilySetupDevice)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v7 = getASDSystemAppMetadataClass_softClass;
    v26 = getASDSystemAppMetadataClass_softClass;
    if (!getASDSystemAppMetadataClass_softClass)
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getASDSystemAppMetadataClass_block_invoke;
      v21 = &unk_2796FB650;
      v22 = &v23;
      __getASDSystemAppMetadataClass_block_invoke(&v18);
      v7 = v24[3];
    }

    v8 = v7;
    _Block_object_dispose(&v23, 8);
    v9 = [v7 alloc];
    v10 = [v9 initWithBundleID:*MEMORY[0x277CCBCC8]];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v11 = getASDInstallAppsClass_softClass;
    v26 = getASDInstallAppsClass_softClass;
    if (!getASDInstallAppsClass_softClass)
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getASDInstallAppsClass_block_invoke;
      v21 = &unk_2796FB650;
      v22 = &v23;
      __getASDInstallAppsClass_block_invoke(&v18);
      v11 = v24[3];
    }

    v12 = v11;
    _Block_object_dispose(&v23, 8);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __86__HRElectrocardiogramWatchAppInstallability_installElectrocardiogramAppOnActiveWatch___block_invoke;
    v14[3] = &unk_2796FB628;
    selfCopy = self;
    v17 = a2;
    v15 = watchCopy;
    [v11 installApp:v10 onPairedDevice:activeNonFamilySetupDevice withCompletionHandler:v14];
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [(HRElectrocardiogramWatchAppInstallability *)self installElectrocardiogramAppOnActiveWatch:v13, a2];
    }

    v10 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"No active device"];
    (*(watchCopy + 2))(watchCopy, 0, v10);
  }
}

void __86__HRElectrocardiogramWatchAppInstallability_installElectrocardiogramAppOnActiveWatch___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2D8];
  v6 = *MEMORY[0x277CCC2D8];
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __86__HRElectrocardiogramWatchAppInstallability_installElectrocardiogramAppOnActiveWatch___block_invoke_cold_1(a1, v5, v4);
    }

    v7 = *(a1[4] + 16);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[5];
      v8 = a1[6];
      v10 = v5;
      v11 = NSStringFromSelector(v8);
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&dword_2521E7000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Scheduled installation of ECG app on watch", &v12, 0x16u);
    }

    v7 = *(a1[4] + 16);
  }

  v7();
}

void __105__HRElectrocardiogramWatchAppInstallability_checkElectrocardiogramAppInstallStateWithContext_completion___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = *(a1 + 72);
  v6 = a2;
  v7 = NSStringFromSelector(v5);
  v8 = *a3;
  v9 = 138543874;
  v10 = v4;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  _os_log_error_impl(&dword_2521E7000, v6, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] -> Failed to check if ECG app is installed on watch with error: %{public}@", &v9, 0x20u);
}

+ (void)installElectrocardiogramAppOnActiveWatch:(const char *)a3 .cold.1(uint64_t a1, void *a2, const char *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = NSStringFromSelector(a3);
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_2521E7000, v5, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] -> Failed to schedule installation of ECG app on watch due to no active device", &v7, 0x16u);
}

void __86__HRElectrocardiogramWatchAppInstallability_installElectrocardiogramAppOnActiveWatch___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = a2;
  v7 = NSStringFromSelector(v4);
  v8 = 138543874;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2114;
  v13 = a3;
  _os_log_error_impl(&dword_2521E7000, v6, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] -> Failed to schedule installation of ECG app on watch with error: %{public}@", &v8, 0x20u);
}

@end