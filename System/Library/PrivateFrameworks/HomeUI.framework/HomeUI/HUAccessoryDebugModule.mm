@interface HUAccessoryDebugModule
- (BOOL)fake8021xNetworkSymptom;
- (BOOL)fakeCDPSymptom;
- (BOOL)fakeCaptiveLeaseRenewalSymptom;
- (BOOL)fakeGeneralFixSymptom;
- (BOOL)fakeHardwareFixSymptom;
- (BOOL)fakeHomeKitSymptom;
- (BOOL)fakeICloudSymptom;
- (BOOL)fakeITunesSymptom;
- (BOOL)fakeInternetFixSymptom;
- (BOOL)fakeNetworkNotShareableSymptom;
- (BOOL)fakeNetworkProfileFixSymptom;
- (BOOL)fakeNetworkProfileInstallSymptom;
- (BOOL)fakeNetworkStrengthError;
- (BOOL)fakeStereoPairGeneralSymptom;
- (BOOL)fakeStereoPairNotFoundSymptom;
- (BOOL)fakeStereoPairVersionMismatchSymptom;
- (BOOL)fakeUnreachableError;
- (BOOL)fakeVPNProfileExpiredSymptom;
- (BOOL)fakeWiFiNetworkMismatchSymptom;
- (BOOL)fakeWiFiPerformanceSymptom;
- (BOOL)fakeWiFiSymptom;
- (HUAccessoryDebugModule)initWithItemUpdater:(id)updater homeKitObject:(id)object;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
- (void)_pushSymptomUpdate;
- (void)_reloadItemProviders;
- (void)setFake8021xNetworkSymptom:(BOOL)symptom;
- (void)setFakeCDPSymptom:(BOOL)symptom;
- (void)setFakeCaptiveLeaseRenewalSymptom:(BOOL)symptom;
- (void)setFakeGeneralFixSymptom:(BOOL)symptom;
- (void)setFakeHardwareFixSymptom:(BOOL)symptom;
- (void)setFakeHomeKitSymptom:(BOOL)symptom;
- (void)setFakeICloudSymptom:(BOOL)symptom;
- (void)setFakeITunesSymptom:(BOOL)symptom;
- (void)setFakeInternetFixSymptom:(BOOL)symptom;
- (void)setFakeNetworkNotShareableSymptom:(BOOL)symptom;
- (void)setFakeNetworkProfileFixSymptom:(BOOL)symptom;
- (void)setFakeNetworkProfileInstallSymptom:(BOOL)symptom;
- (void)setFakeNetworkStrengthError:(BOOL)error;
- (void)setFakeStereoPairGeneralSymptom:(BOOL)symptom;
- (void)setFakeStereoPairNotFoundSymptom:(BOOL)symptom;
- (void)setFakeStereoPairVersionMismatchSymptom:(BOOL)symptom;
- (void)setFakeUnreachableError:(BOOL)error;
- (void)setFakeVPNProfileExpiredSymptom:(BOOL)symptom;
- (void)setFakeWiFiNetworkMismatchSymptom:(BOOL)symptom;
- (void)setFakeWiFiPerformanceSymptom:(BOOL)symptom;
- (void)setFakeWiFiSymptom:(BOOL)symptom;
@end

@implementation HUAccessoryDebugModule

- (HUAccessoryDebugModule)initWithItemUpdater:(id)updater homeKitObject:(id)object
{
  updaterCopy = updater;
  objectCopy = object;
  if (!objectCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessoryDebugModule.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"homeKitObject"}];
  }

  v138.receiver = self;
  v138.super_class = HUAccessoryDebugModule;
  v9 = [(HFItemModule *)&v138 initWithItemUpdater:updaterCopy];
  v10 = v9;
  if (v9)
  {
    v92 = updaterCopy;
    objc_storeStrong(&v9->_homeKitObject, object);
    objc_opt_class();
    v11 = objectCopy;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    objc_opt_class();
    v14 = v11;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    objc_initWeak(&location, v10);
    if ([v13 hf_isHomeMediaAccessory])
    {
      objc_storeStrong(&v10->_accessory, v12);
      symptomsHandler = [v13 symptomsHandler];
      symptomsHandler = v10->_symptomsHandler;
      v10->_symptomsHandler = symptomsHandler;

      v19 = objc_alloc(MEMORY[0x277D14B38]);
      v135[0] = MEMORY[0x277D85DD0];
      v135[1] = 3221225472;
      v135[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke;
      v135[3] = &unk_277DB7448;
      objc_copyWeak(&v136, &location);
      v20 = [v19 initWithResultsBlock:v135];
      fakeUnreachableItem = v10->_fakeUnreachableItem;
      v10->_fakeUnreachableItem = v20;

      v22 = objc_alloc(MEMORY[0x277D14B38]);
      v133[0] = MEMORY[0x277D85DD0];
      v133[1] = 3221225472;
      v133[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_2;
      v133[3] = &unk_277DB7448;
      objc_copyWeak(&v134, &location);
      v23 = [v22 initWithResultsBlock:v133];
      fakeWiFiSymptomItem = v10->_fakeWiFiSymptomItem;
      v10->_fakeWiFiSymptomItem = v23;

      v25 = objc_alloc(MEMORY[0x277D14B38]);
      v131[0] = MEMORY[0x277D85DD0];
      v131[1] = 3221225472;
      v131[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_3;
      v131[3] = &unk_277DB7448;
      objc_copyWeak(&v132, &location);
      v26 = [v25 initWithResultsBlock:v131];
      fakeWiFiPerformanceSymptomItem = v10->_fakeWiFiPerformanceSymptomItem;
      v10->_fakeWiFiPerformanceSymptomItem = v26;

      v28 = objc_alloc(MEMORY[0x277D14B38]);
      v129[0] = MEMORY[0x277D85DD0];
      v129[1] = 3221225472;
      v129[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_4;
      v129[3] = &unk_277DB7448;
      objc_copyWeak(&v130, &location);
      v29 = [v28 initWithResultsBlock:v129];
      fakeWifiNetworkMismatchSymptomItem = v10->_fakeWifiNetworkMismatchSymptomItem;
      v10->_fakeWifiNetworkMismatchSymptomItem = v29;

      v31 = objc_alloc(MEMORY[0x277D14B38]);
      v127[0] = MEMORY[0x277D85DD0];
      v127[1] = 3221225472;
      v127[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_5;
      v127[3] = &unk_277DB7448;
      objc_copyWeak(&v128, &location);
      v32 = [v31 initWithResultsBlock:v127];
      fakeInternetFixSymptomItem = v10->_fakeInternetFixSymptomItem;
      v10->_fakeInternetFixSymptomItem = v32;

      v34 = objc_alloc(MEMORY[0x277D14B38]);
      v125[0] = MEMORY[0x277D85DD0];
      v125[1] = 3221225472;
      v125[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_6;
      v125[3] = &unk_277DB7448;
      objc_copyWeak(&v126, &location);
      v35 = [v34 initWithResultsBlock:v125];
      fakeHardwareFixSymptomItem = v10->_fakeHardwareFixSymptomItem;
      v10->_fakeHardwareFixSymptomItem = v35;

      v37 = objc_alloc(MEMORY[0x277D14B38]);
      v123[0] = MEMORY[0x277D85DD0];
      v123[1] = 3221225472;
      v123[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_7;
      v123[3] = &unk_277DB7448;
      objc_copyWeak(&v124, &location);
      v38 = [v37 initWithResultsBlock:v123];
      fakeGeneralFixSymptomItem = v10->_fakeGeneralFixSymptomItem;
      v10->_fakeGeneralFixSymptomItem = v38;

      v40 = objc_alloc(MEMORY[0x277D14B38]);
      v121[0] = MEMORY[0x277D85DD0];
      v121[1] = 3221225472;
      v121[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_8;
      v121[3] = &unk_277DB7448;
      objc_copyWeak(&v122, &location);
      v41 = [v40 initWithResultsBlock:v121];
      fakeHomeKitSymptomItem = v10->_fakeHomeKitSymptomItem;
      v10->_fakeHomeKitSymptomItem = v41;

      v43 = objc_alloc(MEMORY[0x277D14B38]);
      v119[0] = MEMORY[0x277D85DD0];
      v119[1] = 3221225472;
      v119[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_9;
      v119[3] = &unk_277DB7448;
      objc_copyWeak(&v120, &location);
      v44 = [v43 initWithResultsBlock:v119];
      fakeICloudSymptomItem = v10->_fakeICloudSymptomItem;
      v10->_fakeICloudSymptomItem = v44;

      v46 = objc_alloc(MEMORY[0x277D14B38]);
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v117[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_10;
      v117[3] = &unk_277DB7448;
      objc_copyWeak(&v118, &location);
      v47 = [v46 initWithResultsBlock:v117];
      fakeITunesSymptomItem = v10->_fakeITunesSymptomItem;
      v10->_fakeITunesSymptomItem = v47;

      v49 = objc_alloc(MEMORY[0x277D14B38]);
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_11;
      v115[3] = &unk_277DB7448;
      objc_copyWeak(&v116, &location);
      v50 = [v49 initWithResultsBlock:v115];
      fakeCDPSymptomItem = v10->_fakeCDPSymptomItem;
      v10->_fakeCDPSymptomItem = v50;

      v52 = objc_alloc(MEMORY[0x277D14B38]);
      v113[0] = MEMORY[0x277D85DD0];
      v113[1] = 3221225472;
      v113[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_12;
      v113[3] = &unk_277DB7448;
      objc_copyWeak(&v114, &location);
      v53 = [v52 initWithResultsBlock:v113];
      fakeVPNProfileExpiredSymptomItem = v10->_fakeVPNProfileExpiredSymptomItem;
      v10->_fakeVPNProfileExpiredSymptomItem = v53;

      v55 = objc_alloc(MEMORY[0x277D14B38]);
      v111[0] = MEMORY[0x277D85DD0];
      v111[1] = 3221225472;
      v111[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_13;
      v111[3] = &unk_277DB7448;
      objc_copyWeak(&v112, &location);
      v56 = [v55 initWithResultsBlock:v111];
      fake8021xNetworkSymptomItem = v10->_fake8021xNetworkSymptomItem;
      v10->_fake8021xNetworkSymptomItem = v56;

      v58 = objc_alloc(MEMORY[0x277D14B38]);
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_14;
      v109[3] = &unk_277DB7448;
      objc_copyWeak(&v110, &location);
      v59 = [v58 initWithResultsBlock:v109];
      fakeNetworkProfileFixSymptomItem = v10->_fakeNetworkProfileFixSymptomItem;
      v10->_fakeNetworkProfileFixSymptomItem = v59;

      v61 = objc_alloc(MEMORY[0x277D14B38]);
      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_15;
      v107[3] = &unk_277DB7448;
      objc_copyWeak(&v108, &location);
      v62 = [v61 initWithResultsBlock:v107];
      fakeNetworkProfileInstallSymptomItem = v10->_fakeNetworkProfileInstallSymptomItem;
      v10->_fakeNetworkProfileInstallSymptomItem = v62;

      v64 = objc_alloc(MEMORY[0x277D14B38]);
      v105[0] = MEMORY[0x277D85DD0];
      v105[1] = 3221225472;
      v105[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_16;
      v105[3] = &unk_277DB7448;
      objc_copyWeak(&v106, &location);
      v65 = [v64 initWithResultsBlock:v105];
      fakeNetworkNotShareableSymptomItem = v10->_fakeNetworkNotShareableSymptomItem;
      v10->_fakeNetworkNotShareableSymptomItem = v65;

      v67 = objc_alloc(MEMORY[0x277D14B38]);
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_17;
      v103[3] = &unk_277DB7448;
      objc_copyWeak(&v104, &location);
      v68 = [v67 initWithResultsBlock:v103];
      fakeCaptiveLeaseRenewalSymptomItem = v10->_fakeCaptiveLeaseRenewalSymptomItem;
      v10->_fakeCaptiveLeaseRenewalSymptomItem = v68;

      v70 = objc_alloc(MEMORY[0x277D14B38]);
      v101[0] = MEMORY[0x277D85DD0];
      v101[1] = 3221225472;
      v101[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_18;
      v101[3] = &unk_277DB7448;
      objc_copyWeak(&v102, &location);
      v71 = [v70 initWithResultsBlock:v101];
      fakeNetworkStrengthErrorItem = v10->_fakeNetworkStrengthErrorItem;
      v10->_fakeNetworkStrengthErrorItem = v71;

      objc_destroyWeak(&v102);
      objc_destroyWeak(&v104);
      objc_destroyWeak(&v106);
      objc_destroyWeak(&v108);
      objc_destroyWeak(&v110);
      objc_destroyWeak(&v112);
      objc_destroyWeak(&v114);
      objc_destroyWeak(&v116);
      objc_destroyWeak(&v118);
      objc_destroyWeak(&v120);
      objc_destroyWeak(&v122);
      objc_destroyWeak(&v124);
      objc_destroyWeak(&v126);
      objc_destroyWeak(&v128);
      objc_destroyWeak(&v130);
      objc_destroyWeak(&v132);
      objc_destroyWeak(&v134);
      objc_destroyWeak(&v136);
    }

    if (v16)
    {
      symptomsHandler2 = [v16 symptomsHandler];
      v74 = v10->_symptomsHandler;
      v10->_symptomsHandler = symptomsHandler2;

      v75 = objc_alloc(MEMORY[0x277D14B38]);
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_19;
      v99[3] = &unk_277DB7448;
      objc_copyWeak(&v100, &location);
      v76 = [v75 initWithResultsBlock:v99];
      fakeStereoPairGeneralSymptomItem = v10->_fakeStereoPairGeneralSymptomItem;
      v10->_fakeStereoPairGeneralSymptomItem = v76;

      v78 = objc_alloc(MEMORY[0x277D14B38]);
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_20;
      v97[3] = &unk_277DB7448;
      objc_copyWeak(&v98, &location);
      v79 = [v78 initWithResultsBlock:v97];
      fakeStereoPairNotFoundSymptomItem = v10->_fakeStereoPairNotFoundSymptomItem;
      v10->_fakeStereoPairNotFoundSymptomItem = v79;

      v81 = objc_alloc(MEMORY[0x277D14B38]);
      v95[0] = MEMORY[0x277D85DD0];
      v95[1] = 3221225472;
      v95[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_21;
      v95[3] = &unk_277DB7448;
      objc_copyWeak(&v96, &location);
      v82 = [v81 initWithResultsBlock:v95];
      fakeStereoPairVersionMismatchSymptomItem = v10->_fakeStereoPairVersionMismatchSymptomItem;
      v10->_fakeStereoPairVersionMismatchSymptomItem = v82;

      v84 = objc_alloc(MEMORY[0x277D14B38]);
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_22;
      v93[3] = &unk_277DB7448;
      objc_copyWeak(&v94, &location);
      v85 = [v84 initWithResultsBlock:v93];
      v86 = v10->_fake8021xNetworkSymptomItem;
      v10->_fake8021xNetworkSymptomItem = v85;

      objc_destroyWeak(&v94);
      objc_destroyWeak(&v96);
      objc_destroyWeak(&v98);
      objc_destroyWeak(&v100);
    }

    v87 = objc_opt_new();
    if ([MEMORY[0x277D14CE8] isInternalInstall])
    {
      [v87 na_safeAddObject:v10->_fakeUnreachableItem];
      [v87 na_safeAddObject:v10->_fakeWifiNetworkMismatchSymptomItem];
      [v87 na_safeAddObject:v10->_fakeWiFiSymptomItem];
      [v87 na_safeAddObject:v10->_fakeWiFiPerformanceSymptomItem];
      [v87 na_safeAddObject:v10->_fakeInternetFixSymptomItem];
      [v87 na_safeAddObject:v10->_fakeHardwareFixSymptomItem];
      [v87 na_safeAddObject:v10->_fakeGeneralFixSymptomItem];
      [v87 na_safeAddObject:v10->_fakeHomeKitSymptomItem];
      [v87 na_safeAddObject:v10->_fakeICloudSymptomItem];
      [v87 na_safeAddObject:v10->_fakeITunesSymptomItem];
      [v87 na_safeAddObject:v10->_fakeCDPSymptomItem];
      [v87 na_safeAddObject:v10->_fakeVPNProfileExpiredSymptomItem];
      [v87 na_safeAddObject:v10->_fake8021xNetworkSymptomItem];
      [v87 na_safeAddObject:v10->_fakeNetworkProfileFixSymptomItem];
      [v87 na_safeAddObject:v10->_fakeNetworkProfileInstallSymptomItem];
      [v87 na_safeAddObject:v10->_fakeNetworkNotShareableSymptomItem];
      [v87 na_safeAddObject:v10->_fakeCaptiveLeaseRenewalSymptomItem];
      [v87 na_safeAddObject:v10->_fakeNetworkStrengthErrorItem];
      [v87 na_safeAddObject:v10->_fakeStereoPairGeneralSymptomItem];
      [v87 na_safeAddObject:v10->_fakeStereoPairNotFoundSymptomItem];
      [v87 na_safeAddObject:v10->_fakeStereoPairVersionMismatchSymptomItem];
    }

    v88 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v87];
    debugItemProvider = v10->_debugItemProvider;
    v10->_debugItemProvider = v88;

    objc_destroyWeak(&location);
    updaterCopy = v92;
  }

  return v10;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake Reachability Error" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeUnreachableError];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake WiFi Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeWiFiSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake WiFi Perf Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeWiFiPerformanceSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake WiFi Network Mismatch" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeWiFiNetworkMismatchSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake Internet Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeInternetFixSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake Hardware Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeHardwareFixSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake General Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeGeneralFixSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake HomeKit Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeHomeKitSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake iCloud Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeICloudSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake iTunes Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeITunesSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake CDP Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeCDPSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake VPN Profile Expired Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeVPNProfileExpiredSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake 802.1x Network Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fake8021xNetworkSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake Network Profile Fix Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeNetworkProfileFixSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake Network Profile Install Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeNetworkProfileInstallSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake Network Not Shareable Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeNetworkNotShareableSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake Captive Lease Renewal" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeCaptiveLeaseRenewalSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake WiFi Indicator Problem" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeNetworkStrengthError];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake Stereo Pair General Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeStereoPairGeneralSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake Stereo Pair not Found Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeStereoPairNotFoundSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake Stereo Pair Version Mismatch Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fakeStereoPairVersionMismatchSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __60__HUAccessoryDebugModule_initWithItemUpdater_homeKitObject___block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  [v2 setObject:@"Fake 802.1x Network Symptom" forKeyedSubscript:*MEMORY[0x277D13F60]];
  v3 = MEMORY[0x277CCABB0];
  [WeakRetained fake8021xNetworkSymptom];
  v4 = [v3 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D14068]];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  debugItemProvider = [(HUAccessoryDebugModule *)self debugItemProvider];
  v4 = [v2 setWithObject:debugItemProvider];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  if (HFPreferencesInternalDebuggingEnabled() && [itemsCopy count])
  {
    v5 = MEMORY[0x277CBEB98];
    fakeUnreachableItem = [(HUAccessoryDebugModule *)self fakeUnreachableItem];
    fakeNetworkStrengthErrorItem = [(HUAccessoryDebugModule *)self fakeNetworkStrengthErrorItem];
    v8 = [v5 setWithObjects:{fakeUnreachableItem, fakeNetworkStrengthErrorItem, 0}];
    v34 = [v8 na_setByIntersectingWithSet:itemsCopy];

    v32 = MEMORY[0x277CBEB98];
    fakeInternetFixSymptomItem = [(HUAccessoryDebugModule *)self fakeInternetFixSymptomItem];
    fakeWiFiSymptomItem = [(HUAccessoryDebugModule *)self fakeWiFiSymptomItem];
    fakeWiFiPerformanceSymptomItem = [(HUAccessoryDebugModule *)self fakeWiFiPerformanceSymptomItem];
    fake8021xNetworkSymptomItem = [(HUAccessoryDebugModule *)self fake8021xNetworkSymptomItem];
    [(HUAccessoryDebugModule *)self fakeNetworkProfileFixSymptomItem];
    v37 = v40 = itemsCopy;
    fakeNetworkProfileInstallSymptomItem = [(HUAccessoryDebugModule *)self fakeNetworkProfileInstallSymptomItem];
    fakeNetworkNotShareableSymptomItem = [(HUAccessoryDebugModule *)self fakeNetworkNotShareableSymptomItem];
    fakeHardwareFixSymptomItem = [(HUAccessoryDebugModule *)self fakeHardwareFixSymptomItem];
    fakeGeneralFixSymptomItem = [(HUAccessoryDebugModule *)self fakeGeneralFixSymptomItem];
    fakeHomeKitSymptomItem = [(HUAccessoryDebugModule *)self fakeHomeKitSymptomItem];
    fakeITunesSymptomItem = [(HUAccessoryDebugModule *)self fakeITunesSymptomItem];
    fakeICloudSymptomItem = [(HUAccessoryDebugModule *)self fakeICloudSymptomItem];
    fakeCDPSymptomItem = [(HUAccessoryDebugModule *)self fakeCDPSymptomItem];
    fakeWifiNetworkMismatchSymptomItem = [(HUAccessoryDebugModule *)self fakeWifiNetworkMismatchSymptomItem];
    fakeVPNProfileExpiredSymptomItem = [(HUAccessoryDebugModule *)self fakeVPNProfileExpiredSymptomItem];
    fakeCaptiveLeaseRenewalSymptomItem = [(HUAccessoryDebugModule *)self fakeCaptiveLeaseRenewalSymptomItem];
    v16 = [v32 setWithObjects:{fakeInternetFixSymptomItem, fakeWiFiSymptomItem, fakeWiFiPerformanceSymptomItem, fake8021xNetworkSymptomItem, v37, fakeNetworkProfileInstallSymptomItem, fakeNetworkNotShareableSymptomItem, fakeHardwareFixSymptomItem, fakeGeneralFixSymptomItem, fakeHomeKitSymptomItem, fakeITunesSymptomItem, fakeICloudSymptomItem, fakeCDPSymptomItem, fakeWifiNetworkMismatchSymptomItem, fakeVPNProfileExpiredSymptomItem, fakeCaptiveLeaseRenewalSymptomItem, 0}];
    v33 = [v16 na_setByIntersectingWithSet:v40];

    itemsCopy = v40;
    v17 = MEMORY[0x277CBEB98];
    fakeStereoPairNotFoundSymptomItem = [(HUAccessoryDebugModule *)self fakeStereoPairNotFoundSymptomItem];
    fakeStereoPairVersionMismatchSymptomItem = [(HUAccessoryDebugModule *)self fakeStereoPairVersionMismatchSymptomItem];
    fakeStereoPairGeneralSymptomItem = [(HUAccessoryDebugModule *)self fakeStereoPairGeneralSymptomItem];
    fake8021xNetworkSymptomItem2 = [(HUAccessoryDebugModule *)self fake8021xNetworkSymptomItem];
    v22 = [v17 setWithObjects:{fakeStereoPairNotFoundSymptomItem, fakeStereoPairVersionMismatchSymptomItem, fakeStereoPairGeneralSymptomItem, fake8021xNetworkSymptomItem2, 0}];
    v23 = [v22 na_setByIntersectingWithSet:v40];

    v24 = objc_opt_new();
    v25 = __58__HUAccessoryDebugModule_buildSectionsWithDisplayedItems___block_invoke(@"Accessory Debugging", v34);
    [v24 na_safeAddObject:v25];

    v26 = __58__HUAccessoryDebugModule_buildSectionsWithDisplayedItems___block_invoke(@"Symptom Debugging", v33);
    [v24 na_safeAddObject:v26];

    v27 = __58__HUAccessoryDebugModule_buildSectionsWithDisplayedItems___block_invoke(@"Stereo Pair Symptom Debugging", v23);
    [v24 na_safeAddObject:v27];
  }

  else
  {
    v24 = MEMORY[0x277CBEBF8];
  }

  return v24;
}

id __58__HUAccessoryDebugModule_buildSectionsWithDisplayedItems___block_invoke(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:v3];
    [v5 setHeaderTitle:v3];
    [v5 setFooterTitle:@"*** INTERNAL USE ONLY ***"];
    v6 = [v4 allObjects];
    v7 = [MEMORY[0x277D14778] defaultItemComparator];
    v8 = [v6 sortedArrayUsingComparator:v7];
    [v5 setItems:v8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)fakeICloudSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeICloudSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeITunesSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeITunesSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeCDPSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeCDPSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeGeneralFixSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeGeneralFixSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeHomeKitSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeHomeKitSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeUnreachableError
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeUnreachableError:(BOOL)error
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HUAccessoryDebugModule_setFakeUnreachableError___block_invoke;
  v8[3] = &unk_277DBEF60;
  v8[4] = self;
  [mEMORY[0x277D146E8] dispatchAccessoryObserverMessage:v8 sender:0];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

void __50__HUAccessoryDebugModule_setFakeUnreachableError___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) accessory];
    [v5 accessoryDidUpdateReachability:v3];
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) accessory];
    [v5 accessoryDidUpdateReachableTransports:v4];
  }
}

- (BOOL)fakeWiFiNetworkMismatchSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeWiFiNetworkMismatchSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeVPNProfileExpiredSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeVPNProfileExpiredSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeWiFiSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeWiFiSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeWiFiPerformanceSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeWiFiPerformanceSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeInternetFixSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeInternetFixSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeHardwareFixSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeHardwareFixSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeStereoPairGeneralSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeStereoPairGeneralSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeStereoPairNotFoundSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeStereoPairNotFoundSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeStereoPairVersionMismatchSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeStereoPairVersionMismatchSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fake8021xNetworkSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFake8021xNetworkSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeNetworkProfileFixSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeNetworkProfileFixSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeNetworkProfileInstallSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeNetworkProfileInstallSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeNetworkNotShareableSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeNetworkNotShareableSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeCaptiveLeaseRenewalSymptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeCaptiveLeaseRenewalSymptom:(BOOL)symptom
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeNetworkStrengthError
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)setFakeNetworkStrengthError:(BOOL)error
{
  homeKitObject = [(HUAccessoryDebugModule *)self homeKitObject];
  uniqueIdentifier = [homeKitObject uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (void)_reloadItemProviders
{
  v4 = MEMORY[0x277D14788];
  itemProviders = [(HUAccessoryDebugModule *)self itemProviders];
  v8 = [v4 requestToReloadItemProviders:itemProviders senderSelector:a2];

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v7 = [itemUpdater performItemUpdateRequest:v8];
}

- (void)_pushSymptomUpdate
{
  symptomsHandler = [(HUAccessoryDebugModule *)self symptomsHandler];
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__HUAccessoryDebugModule__pushSymptomUpdate__block_invoke;
  v5[3] = &unk_277DC1018;
  v6 = symptomsHandler;
  v4 = symptomsHandler;
  [mEMORY[0x277D146E8] dispatchSymptomsHandlerMessage:v5 sender:0];
}

void __44__HUAccessoryDebugModule__pushSymptomUpdate__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [v3 symptoms];
    [v5 symptomsHandler:v3 didUpdateSymptoms:v4];
  }
}

@end