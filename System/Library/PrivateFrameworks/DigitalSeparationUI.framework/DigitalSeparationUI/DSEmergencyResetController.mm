@interface DSEmergencyResetController
+ (void)initialize;
- (DSEmergencyResetController)init;
- (DSNavigationDelegate)delegate;
- (void)fetchSharingPermissions:(id)permissions;
- (void)handleErrorsAndMoveToNextPane;
- (void)hideProgressBar;
- (void)initializeEmergencyResetActions;
- (void)removeAllPairedDevicesOnQueue:(id)queue completion:(id)completion;
- (void)resetAllFirstPartySharing:(id)sharing;
- (void)resetAllThirdPartyTCCs:(id)cs;
- (void)resetAppDistribution:(id)distribution;
- (void)resetIDFA:(id)a;
- (void)resetNecessaryFirstPartyPermissions:(id)permissions;
- (void)safetyResetAll;
- (void)safetyResetAllPressed;
- (void)setDigitalSeparationTipsFlag;
- (void)showProgressBar;
- (void)unpairContinuityDevices:(id)devices;
- (void)updateProgressBar;
- (void)viewDidLoad;
@end

@implementation DSEmergencyResetController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    DSLogSafetyResetAll = os_log_create("com.apple.DigitalSeparation", "DSEmergencyResetController");

    MEMORY[0x2821F96F8]();
  }
}

- (DSEmergencyResetController)init
{
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v3 = DSUILocStringForKey(@"RESET_PEOPLE_APPS");
    v4 = DSUILocStringForKey(@"RESET_PEOPLE_APPS_DETAIL");
    v12.receiver = self;
    v12.super_class = DSEmergencyResetController;
    v5 = [(DSEmergencyResetController *)&v12 initWithTitle:v3 detailText:v4 symbolName:@"person.2.gobackward"];
  }

  else
  {
    v6 = MEMORY[0x277D755D0];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v3 = [v6 configurationWithHierarchicalColor:systemBlueColor];

    v4 = DSUILocStringForKey(@"RESET_PEOPLE_APPS");
    v8 = DSUILocStringForKey(@"RESET_PEOPLE_APPS_DETAIL");
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"person.2.gobackward" withConfiguration:v3];
    v11.receiver = self;
    v11.super_class = DSEmergencyResetController;
    v5 = [(DSEmergencyResetController *)&v11 initWithTitle:v4 detailText:v8 icon:v9];
  }

  return v5;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = DSEmergencyResetController;
  [(DSOBWelcomeController *)&v17 viewDidLoad];
  v3 = DSUILocStringForKey(@"RESET_PEOPLE_APPS_BUTTON");
  v4 = [DSUIUtilities setUpBoldButtonForController:self title:v3 target:self selector:sel_safetyResetAllPressed];
  [(DSEmergencyResetController *)self setBoldButton:v4];

  array = [MEMORY[0x277CBEB18] array];
  [(DSEmergencyResetController *)self setResetErrors:array];

  v6 = objc_alloc_init(MEMORY[0x277D49638]);
  beaconManager = self->_beaconManager;
  self->_beaconManager = v6;

  v8 = objc_alloc_init(MEMORY[0x277D054D0]);
  v9 = [objc_alloc(MEMORY[0x277D05480]) initWithTCCStore:v8];
  appSharing = self->_appSharing;
  self->_appSharing = v9;

  v11 = objc_alloc_init(MEMORY[0x277D054E0]);
  wifiSyncStore = self->_wifiSyncStore;
  self->_wifiSyncStore = v11;

  v13 = objc_alloc_init(MEMORY[0x277D05488]);
  continuityStore = self->_continuityStore;
  self->_continuityStore = v13;

  self->_userDidPressReset = 0;
  self->_isFetching = 1;
  v15 = dispatch_queue_create("SafetyResetAllControllerWork", 0);
  [(DSEmergencyResetController *)self setWorkQueue:v15];

  [(DSEmergencyResetController *)self initializeEmergencyResetActions];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__DSEmergencyResetController_viewDidLoad__block_invoke;
  v16[3] = &unk_278F75408;
  v16[4] = self;
  [(DSEmergencyResetController *)self fetchSharingPermissions:v16];
}

void __41__DSEmergencyResetController_viewDidLoad__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsFetching:0];
  if ([*(a1 + 32) userDidPressReset])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__DSEmergencyResetController_viewDidLoad__block_invoke_2;
    block[3] = &unk_278F75408;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __41__DSEmergencyResetController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) updateProgressBar];
  v2 = *(a1 + 32);

  return [v2 safetyResetAll];
}

- (void)fetchSharingPermissions:(id)permissions
{
  permissionsCopy = permissions;
  v5 = objc_alloc_init(MEMORY[0x277D054B8]);
  [(DSEmergencyResetController *)self setPermissions:v5];

  objc_initWeak(&location, self);
  permissions = [(DSEmergencyResetController *)self permissions];
  v7 = MEMORY[0x277D85CD0];
  v8 = MEMORY[0x277D85CD0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__DSEmergencyResetController_fetchSharingPermissions___block_invoke;
  v10[3] = &unk_278F75390;
  objc_copyWeak(&v12, &location);
  v9 = permissionsCopy;
  v11 = v9;
  [permissions fetchPermissionsOnQueue:v7 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __54__DSEmergencyResetController_fetchSharingPermissions___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = DSLogSafetyResetAll;
    if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_ERROR))
    {
      __54__DSEmergencyResetController_fetchSharingPermissions___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = v3;
    v11 = [v3 underlyingErrors];
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      v15 = *MEMORY[0x277D05440];
      v16 = MEMORY[0x277D05430];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          v19 = [v18 domain];
          v20 = [v19 isEqualToString:*v16];

          if (v20)
          {
            v21 = [v18 userInfo];
            v22 = [v21 objectForKeyedSubscript:v15];

            v23 = DSLogSafetyResetAll;
            if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_ERROR))
            {
              v24 = v23;
              v25 = [v18 underlyingErrors];
              *buf = 138543618;
              v36 = v22;
              v37 = 2114;
              v38 = v25;
              _os_log_error_impl(&dword_248C7E000, v24, OS_LOG_TYPE_ERROR, "Failed to fetch permissions for source %{public}@, underlying errors: %{public}@", buf, 0x16u);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v13);
    }

    a1 = v29;
    WeakRetained = objc_loadWeakRetained((v29 + 40));
    v27 = [WeakRetained resetErrors];
    v3 = v30;
    [v27 addObject:v30];
  }

  (*(*(a1 + 32) + 16))();

  v28 = *MEMORY[0x277D85DE8];
}

- (void)safetyResetAllPressed
{
  v3 = MEMORY[0x277D75110];
  v4 = DSUILocStringForKey(@"RESET_ALERT_BODY");
  v5 = [v3 alertControllerWithTitle:0 message:v4 preferredStyle:0];

  v6 = MEMORY[0x277D750F8];
  v7 = DSUILocStringForKey(@"RESET_CANCEL");
  v8 = [v6 actionWithTitle:v7 style:1 handler:&__block_literal_global_4];

  v9 = MEMORY[0x277D750F8];
  v10 = DSUILocStringForKey(@"RESET_CONFIRM");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__DSEmergencyResetController_safetyResetAllPressed__block_invoke_2;
  v16[3] = &unk_278F750A0;
  v16[4] = self;
  v11 = [v9 actionWithTitle:v10 style:2 handler:v16];

  v12 = MEMORY[0x277D750F8];
  v13 = DSUILocStringForKey(@"RESET_CUSTOMIZE");
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__DSEmergencyResetController_safetyResetAllPressed__block_invoke_3;
  v15[3] = &unk_278F750A0;
  v15[4] = self;
  v14 = [v12 actionWithTitle:v13 style:0 handler:v15];

  [v5 addAction:v11];
  [v5 addAction:v8];
  [v5 addAction:v14];
  [(DSEmergencyResetController *)self presentViewController:v5 animated:1 completion:0];
}

uint64_t __51__DSEmergencyResetController_safetyResetAllPressed__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setUserDidPressReset:1];
  [*(a1 + 32) showProgressBar];
  result = [*(a1 + 32) isFetching];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) updateProgressBar];
    v3 = *(a1 + 32);

    return [v3 safetyResetAll];
  }

  return result;
}

void __51__DSEmergencyResetController_safetyResetAllPressed__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 goToCustomizeSharing];
}

- (void)initializeEmergencyResetActions
{
  v14 = MEMORY[0x277CBEA60];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke;
  v25[3] = &unk_278F754B8;
  v25[4] = self;
  v15 = [v25 copy];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2;
  v24[3] = &unk_278F754B8;
  v24[4] = self;
  v3 = [v24 copy];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2_361;
  v23[3] = &unk_278F754B8;
  v23[4] = self;
  v4 = [v23 copy];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2_366;
  v22[3] = &unk_278F754B8;
  v22[4] = self;
  v5 = [v22 copy];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2_371;
  v21[3] = &unk_278F754B8;
  v21[4] = self;
  v6 = [v21 copy];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2_377;
  v20[3] = &unk_278F754B8;
  v20[4] = self;
  v13 = [v20 copy];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2_382;
  v19[3] = &unk_278F754B8;
  v19[4] = self;
  v7 = [v19 copy];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_3;
  v18[3] = &unk_278F754B8;
  v18[4] = self;
  v8 = [v18 copy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2_392;
  v17[3] = &unk_278F754B8;
  v17[4] = self;
  v9 = [v17 copy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_3_398;
  v16[3] = &unk_278F754B8;
  v16[4] = self;
  v10 = [v16 copy];
  v11 = [v14 arrayWithObjects:{v15, v3, v4, v5, v6, v13, v7, v8, v9, v10, 0}];
  emergencyResetSteps = self->_emergencyResetSteps;
  self->_emergencyResetSteps = v11;
}

void __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DSLogSafetyResetAll;
  if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248C7E000, v4, OS_LOG_TYPE_INFO, "Emergency Reset: started resetting first party sharing", buf, 2u);
  }

  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_352;
  v7[3] = &unk_278F75490;
  v8 = v3;
  v6 = v3;
  [v5 resetAllFirstPartySharing:v7];
}

void __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DSLogSafetyResetAll;
  if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248C7E000, v4, OS_LOG_TYPE_INFO, "Emergency Reset: started resetting third party permissions", buf, 2u);
  }

  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_357;
  v7[3] = &unk_278F75490;
  v8 = v3;
  v6 = v3;
  [v5 resetAllThirdPartyTCCs:v7];
}

void __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2_361(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DSLogSafetyResetAll;
  if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248C7E000, v4, OS_LOG_TYPE_INFO, "Emergency Reset: started resetting necessary first party permissions", buf, 2u);
  }

  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_362;
  v7[3] = &unk_278F75490;
  v8 = v3;
  v6 = v3;
  [v5 resetNecessaryFirstPartyPermissions:v7];
}

void __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2_366(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DSLogSafetyResetAll;
  if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 appSharing];
    *buf = 134217984;
    v14 = v7;
    _os_log_impl(&dword_248C7E000, v6, OS_LOG_TYPE_INFO, "Emergency Reset: started resetting shortcuts automation timer. DSAppSharing: %p", buf, 0xCu);
  }

  v8 = [*(a1 + 32) appSharing];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_367;
  v11[3] = &unk_278F754E0;
  v12 = v3;
  v9 = v3;
  [v8 resetShortcutsAutomationTimer:MEMORY[0x277D85CD0] handler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2_371(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DSLogSafetyResetAll;
  if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 appSharing];
    *buf = 134217984;
    v15 = v7;
    _os_log_impl(&dword_248C7E000, v6, OS_LOG_TYPE_INFO, "Emergency Reset: started resetting background app refresh. DSAppSharing: %p", buf, 0xCu);
  }

  v8 = [*(a1 + 32) appSharing];
  v9 = [MEMORY[0x277D054D8] allUserVisibleApps];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_373;
  v12[3] = &unk_278F75490;
  v13 = v3;
  v10 = v3;
  [v8 resetBackgroundAppRefresh:v9 queue:MEMORY[0x277D85CD0] handler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2_377(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DSLogSafetyResetAll;
  if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248C7E000, v4, OS_LOG_TYPE_INFO, "Emergency Reset: started resetting synced devices.", buf, 2u);
  }

  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_378;
  v7[3] = &unk_278F754E0;
  v8 = v3;
  v6 = v3;
  [v5 removeAllPairedDevicesOnQueue:MEMORY[0x277D85CD0] completion:v7];
}

void __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2_382(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DSLogSafetyResetAll;
  if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 beaconManager];
    *buf = 134217984;
    v14 = v7;
    _os_log_impl(&dword_248C7E000, v6, OS_LOG_TYPE_INFO, "Emergency Reset: started resetting FindMy acknowledgement. BeaconManager: %p", buf, 0xCu);
  }

  v8 = [*(a1 + 32) beaconManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_383;
  v11[3] = &unk_278F75490;
  v12 = v3;
  v9 = v3;
  [v8 setUserHasAcknowledgedFindMy:0 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_383(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2_384;
  block[3] = &unk_278F75490;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DSLogSafetyResetAll;
  if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248C7E000, v4, OS_LOG_TYPE_INFO, "Emergency Reset: started resetting IDFA for all apps.", buf, 2u);
  }

  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_388;
  v7[3] = &unk_278F75490;
  v8 = v3;
  v6 = v3;
  [v5 resetIDFA:v7];
}

void __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2_392(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DSLogSafetyResetAll;
  if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248C7E000, v4, OS_LOG_TYPE_INFO, "Emergency Reset: started resetting App Distribution.", buf, 2u);
  }

  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_393;
  v7[3] = &unk_278F75490;
  v8 = v3;
  v6 = v3;
  [v5 resetAppDistribution:v7];
}

void __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_393(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2_394;
  block[3] = &unk_278F75490;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_3_398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DSLogSafetyResetAll;
  if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248C7E000, v4, OS_LOG_TYPE_INFO, "Emergency Reset: started resetting Continuity pairing.", buf, 2u);
  }

  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_399;
  v7[3] = &unk_278F75490;
  v8 = v3;
  v6 = v3;
  [v5 unpairContinuityDevices:v7];
}

void __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_399(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__DSEmergencyResetController_initializeEmergencyResetActions__block_invoke_2_400;
  block[3] = &unk_278F75490;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)safetyResetAll
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = DSLogSafetyResetAll;
  if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248C7E000, v3, OS_LOG_TYPE_INFO, "User initiated an Emergency Reset", buf, 2u);
  }

  [(DSEmergencyResetController *)self setUserDidPressReset:0];
  v4 = dispatch_group_create();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__DSEmergencyResetController_safetyResetAll__block_invoke;
  aBlock[3] = &unk_278F75508;
  aBlock[4] = self;
  v5 = v4;
  v20 = v5;
  v6 = _Block_copy(aBlock);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_emergencyResetSteps;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        dispatch_group_enter(v5);
        (*(v12 + 16))(v12, v6);
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v9);
  }

  [(DSEmergencyResetController *)self setDigitalSeparationTipsFlag];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__DSEmergencyResetController_safetyResetAll__block_invoke_405;
  block[3] = &unk_278F75408;
  block[4] = self;
  dispatch_group_notify(v5, MEMORY[0x277D85CD0], block);

  v13 = *MEMORY[0x277D85DE8];
}

void __44__DSEmergencyResetController_safetyResetAll__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) updateProgressBar];
  v4 = DSLogSafetyResetAll;
  if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_INFO))
  {
    v5 = v3;
    v6 = v4;
    v8 = 136315138;
    v9 = [v3 UTF8String];
    _os_log_impl(&dword_248C7E000, v6, OS_LOG_TYPE_INFO, "%s", &v8, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __44__DSEmergencyResetController_safetyResetAll__block_invoke_405(uint64_t a1)
{
  [*(a1 + 32) handleErrorsAndMoveToNextPane];
  v1 = DSLogSafetyResetAll;
  if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_248C7E000, v1, OS_LOG_TYPE_INFO, "Emergency Reset complete", v3, 2u);
  }

  return AnalyticsSendEventLazy();
}

- (void)showProgressBar
{
  headerView = [(DSEmergencyResetController *)self headerView];
  [headerView setDetailText:&stru_285BA4988];

  buttonTray = [(DSEmergencyResetController *)self buttonTray];
  boldButton = [(DSEmergencyResetController *)self boldButton];
  [buttonTray removeButton:boldButton];

  [(DSEmergencyResetController *)self setBoldButton:0];
  v6 = objc_alloc_init(MEMORY[0x277D75A68]);
  progressStackView = self->_progressStackView;
  self->_progressStackView = v6;

  progressStackView = [(DSEmergencyResetController *)self progressStackView];
  [progressStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  progressStackView2 = [(DSEmergencyResetController *)self progressStackView];
  [progressStackView2 setAxis:1];

  progressStackView3 = [(DSEmergencyResetController *)self progressStackView];
  [progressStackView3 setAlignment:3];

  progressStackView4 = [(DSEmergencyResetController *)self progressStackView];
  [progressStackView4 setSpacing:20.0];

  contentView = [(DSEmergencyResetController *)self contentView];
  progressStackView5 = [(DSEmergencyResetController *)self progressStackView];
  [contentView addSubview:progressStackView5];

  progressStackView6 = [(DSEmergencyResetController *)self progressStackView];
  topAnchor = [progressStackView6 topAnchor];
  contentView2 = [(DSEmergencyResetController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  [v18 setActive:1];

  progressStackView7 = [(DSEmergencyResetController *)self progressStackView];
  widthAnchor = [progressStackView7 widthAnchor];
  contentView3 = [(DSEmergencyResetController *)self contentView];
  widthAnchor2 = [contentView3 widthAnchor];
  v23 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v23 setActive:1];

  v41 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = DSUILocStringForKey(@"PROGRESS_TEXT");
  [v41 setText:v24];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v41 setTextColor:secondaryLabelColor];

  [v41 setTextAlignment:1];
  progressStackView8 = [(DSEmergencyResetController *)self progressStackView];
  [progressStackView8 addArrangedSubview:v41];

  widthAnchor3 = [v41 widthAnchor];
  progressStackView9 = [(DSEmergencyResetController *)self progressStackView];
  widthAnchor4 = [progressStackView9 widthAnchor];
  v30 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  [v30 setActive:1];

  v31 = objc_alloc_init(MEMORY[0x277D758F0]);
  progressView = self->_progressView;
  self->_progressView = v31;

  progressView = [(DSEmergencyResetController *)self progressView];
  [progressView setTranslatesAutoresizingMaskIntoConstraints:0];

  progressStackView10 = [(DSEmergencyResetController *)self progressStackView];
  progressView2 = [(DSEmergencyResetController *)self progressView];
  [progressStackView10 addArrangedSubview:progressView2];

  progressView3 = [(DSEmergencyResetController *)self progressView];
  widthAnchor5 = [progressView3 widthAnchor];
  progressStackView11 = [(DSEmergencyResetController *)self progressStackView];
  widthAnchor6 = [progressStackView11 widthAnchor];
  v40 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 constant:-20.0];
  [v40 setActive:1];
}

- (void)hideProgressBar
{
  progressStackView = [(DSEmergencyResetController *)self progressStackView];
  [progressStackView removeFromSuperview];

  headerView = [(DSEmergencyResetController *)self headerView];
  v5 = DSUILocStringForKey(@"RESET_PEOPLE_APPS_DETAIL");
  [headerView setDetailText:v5];

  boldButton = [(DSEmergencyResetController *)self boldButton];

  if (!boldButton)
  {
    v8 = DSUILocStringForKey(@"RESET_PEOPLE_APPS_BUTTON");
    v7 = [DSUIUtilities setUpBoldButtonForController:self title:v8 target:self selector:sel_safetyResetAllPressed];
    [(DSEmergencyResetController *)self setBoldButton:v7];
  }
}

- (void)updateProgressBar
{
  progressView = [(DSEmergencyResetController *)self progressView];
  [progressView progress];
  v5 = v4;
  v6 = 1.0 / ([(NSArray *)self->_emergencyResetSteps count]+ 1);
  v7 = v5 + v6;

  if (v7 >= 1.0)
  {
    v7 = v7 + -0.1;
  }

  progressView2 = [(DSEmergencyResetController *)self progressView];
  *&v8 = v7;
  [progressView2 setProgress:v8];
}

- (void)setDigitalSeparationTipsFlag
{
  v2 = BiomeLibrary();
  discoverability = [v2 Discoverability];
  signals = [discoverability Signals];

  source = [signals source];
  v5 = objc_alloc(MEMORY[0x277CF1168]);
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  operatingSystemVersionString = [processInfo operatingSystemVersionString];
  v8 = [v5 initWithContentIdentifier:@"com.apple.DigitalSeparation.safety-reset" context:0 osBuild:operatingSystemVersionString userInfo:0];

  [source sendEvent:v8];
}

- (void)handleErrorsAndMoveToNextPane
{
  v36 = *MEMORY[0x277D85DE8];
  resetErrors = [(DSEmergencyResetController *)self resetErrors];
  v4 = [resetErrors count];

  if (v4)
  {
    if (_os_feature_enabled_impl())
    {
      v5 = MEMORY[0x277D75110];
      resetErrors2 = [(DSEmergencyResetController *)self resetErrors];
      v7 = [v5 ds_alertControllerWithResetErrors:resetErrors2];

      v8 = MEMORY[0x277D750F8];
      v9 = DSUILocStringForKey(@"OK");
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __59__DSEmergencyResetController_handleErrorsAndMoveToNextPane__block_invoke;
      v30[3] = &unk_278F750A0;
      v30[4] = self;
      v10 = v30;
    }

    else
    {
      [(DSEmergencyResetController *)self resetErrors];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v12 = v34 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v32;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v32 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v31 + 1) + 8 * i);
            if ([v17 code] == 7 || objc_msgSend(v17, "code") == 8 || objc_msgSend(v17, "code") == 6)
            {

              v21 = MEMORY[0x277D75110];
              v22 = DSUILocStringForKey(@"RESET_ALL_FAILED_RESTRICTIONS_TITLE");
              v23 = DSUILocStringForKey(@"RESET_ALL_FAILED_RESTRICTIONS");
              v7 = [v21 alertControllerWithTitle:v22 message:v23 preferredStyle:1];

              v8 = MEMORY[0x277D750F8];
              v9 = DSUILocStringForKey(@"OK");
              v29[0] = MEMORY[0x277D85DD0];
              v29[1] = 3221225472;
              v29[2] = __59__DSEmergencyResetController_handleErrorsAndMoveToNextPane__block_invoke_2;
              v29[3] = &unk_278F750A0;
              v29[4] = self;
              v10 = v29;
              goto LABEL_19;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v18 = MEMORY[0x277D75110];
      resetErrors3 = [(DSEmergencyResetController *)self resetErrors];
      lastObject = [resetErrors3 lastObject];
      v7 = [v18 ds_alertControllerWithStopSharingError:lastObject];

      v8 = MEMORY[0x277D750F8];
      v9 = DSUILocStringForKey(@"OK");
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __59__DSEmergencyResetController_handleErrorsAndMoveToNextPane__block_invoke_3;
      v28[3] = &unk_278F750A0;
      v28[4] = self;
      v10 = v28;
    }

LABEL_19:
    v24 = [v8 actionWithTitle:v9 style:1 handler:v10];
    [v7 addAction:v24];

    [(DSEmergencyResetController *)self presentViewController:v7 animated:1 completion:0];
    resetErrors4 = [(DSEmergencyResetController *)self resetErrors];
    [resetErrors4 removeAllObjects];

    v26 = *MEMORY[0x277D85DE8];
  }

  else
  {
    delegate = [(DSEmergencyResetController *)self delegate];
    [delegate pushNextPane];
    v11 = *MEMORY[0x277D85DE8];
  }
}

void __59__DSEmergencyResetController_handleErrorsAndMoveToNextPane__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 pushNextPane];
}

void __59__DSEmergencyResetController_handleErrorsAndMoveToNextPane__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 pushNextPane];
}

void __59__DSEmergencyResetController_handleErrorsAndMoveToNextPane__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 pushNextPane];
}

- (void)resetAllFirstPartySharing:(id)sharing
{
  sharingCopy = sharing;
  permissions = [(DSEmergencyResetController *)self permissions];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__DSEmergencyResetController_resetAllFirstPartySharing___block_invoke;
  v7[3] = &unk_278F75550;
  v7[4] = self;
  v8 = sharingCopy;
  v6 = sharingCopy;
  [permissions stopAllSharingOnQueue:MEMORY[0x277D85CD0] completion:v7];
}

void __56__DSEmergencyResetController_resetAllFirstPartySharing___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 count])
  {
    v4 = [*(a1 + 32) resetErrors];
    v5 = [MEMORY[0x277D05498] errorWithCode:2 underlyingErrors:v6];
    [v4 addObject:v5];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)resetAllThirdPartyTCCs:(id)cs
{
  csCopy = cs;
  appSharing = [(DSEmergencyResetController *)self appSharing];
  v6 = MEMORY[0x277CBEB98];
  tccServices = [MEMORY[0x277D054D8] tccServices];
  v8 = [v6 setWithArray:tccServices];
  allApps = [MEMORY[0x277D054D8] allApps];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__DSEmergencyResetController_resetAllThirdPartyTCCs___block_invoke;
  v11[3] = &unk_278F75578;
  v11[4] = self;
  v12 = csCopy;
  v10 = csCopy;
  [appSharing resetPermissions:v8 forApps:allApps queue:MEMORY[0x277D85CD0] handler:v11];
}

void __53__DSEmergencyResetController_resetAllThirdPartyTCCs___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count])
  {
    v3 = [*(a1 + 32) resetErrors];
    v4 = [MEMORY[0x277D05498] errorWithCode:4 underlyingErrors:v5];
    [v3 addObject:v4];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)removeAllPairedDevicesOnQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  wifiSyncStore = [(DSEmergencyResetController *)self wifiSyncStore];
  [wifiSyncStore removeAllPairedDevicesOnQueue:queueCopy completion:completionCopy];
}

- (void)resetNecessaryFirstPartyPermissions:(id)permissions
{
  permissionsCopy = permissions;
  appSharing = [(DSEmergencyResetController *)self appSharing];
  v6 = [MEMORY[0x277CBEB98] setWithObject:@"DSLocationAlways"];
  v7 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.shortcuts"];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__DSEmergencyResetController_resetNecessaryFirstPartyPermissions___block_invoke;
  v9[3] = &unk_278F75578;
  v9[4] = self;
  v10 = permissionsCopy;
  v8 = permissionsCopy;
  [appSharing resetPermissions:v6 forApps:v7 queue:MEMORY[0x277D85CD0] handler:v9];
}

void __66__DSEmergencyResetController_resetNecessaryFirstPartyPermissions___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count])
  {
    v3 = [*(a1 + 32) resetErrors];
    v4 = [MEMORY[0x277D05498] errorWithCode:4 underlyingErrors:v5];
    [v3 addObject:v4];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)resetIDFA:(id)a
{
  aCopy = a;
  appSharing = [(DSEmergencyResetController *)self appSharing];
  v6 = [MEMORY[0x277CBEB98] setWithObject:@"kTCCServiceUserTracking"];
  allApps = [MEMORY[0x277D054D8] allApps];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__DSEmergencyResetController_resetIDFA___block_invoke;
  v9[3] = &unk_278F75578;
  v9[4] = self;
  v10 = aCopy;
  v8 = aCopy;
  [appSharing resetPermissions:v6 forApps:allApps queue:MEMORY[0x277D85CD0] handler:v9];
}

void __40__DSEmergencyResetController_resetIDFA___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count])
  {
    v3 = [*(a1 + 32) resetErrors];
    v4 = [MEMORY[0x277D05498] errorWithCode:4 underlyingErrors:v5];
    [v3 addObject:v4];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)resetAppDistribution:(id)distribution
{
  distributionCopy = distribution;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__DSEmergencyResetController_resetAppDistribution___block_invoke;
  v6[3] = &unk_278F755A0;
  v6[4] = self;
  v7 = distributionCopy;
  v5 = distributionCopy;
  [_TtC19DigitalSeparationUI21AppDistributorWrapper handleEmergencyResetWithCompletionHandler:v6];
}

void __51__DSEmergencyResetController_resetAppDistribution___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DSLogSafetyResetAll;
    if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_ERROR))
    {
      __51__DSEmergencyResetController_resetAppDistribution___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = [*(a1 + 32) resetErrors];
    [v11 addObject:v3];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)unpairContinuityDevices:(id)devices
{
  devicesCopy = devices;
  continuityStore = [(DSEmergencyResetController *)self continuityStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__DSEmergencyResetController_unpairContinuityDevices___block_invoke;
  v7[3] = &unk_278F755A0;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  [continuityStore unpairAllDevicesWithCompletion:v7];
}

void __54__DSEmergencyResetController_unpairContinuityDevices___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = DSLogSafetyResetAll;
    if (os_log_type_enabled(DSLogSafetyResetAll, OS_LOG_TYPE_ERROR))
    {
      __54__DSEmergencyResetController_unpairContinuityDevices___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = [*(a1 + 32) resetErrors];
    v12 = MEMORY[0x277D05498];
    v16[0] = v3;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v14 = [v12 errorWithCode:10 underlyingErrors:v13];
    [v11 addObject:v14];
  }

  (*(*(a1 + 40) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __54__DSEmergencyResetController_fetchSharingPermissions___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_248C7E000, a2, a3, "Failed to fetch permissions because %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __51__DSEmergencyResetController_resetAppDistribution___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_248C7E000, a2, a3, "Failed to reset App Distribution because of error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __54__DSEmergencyResetController_unpairContinuityDevices___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_248C7E000, a2, a3, "Failed to reset Continuity pairs because of error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end