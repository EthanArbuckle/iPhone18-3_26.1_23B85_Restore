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
- (HUAccessoryDebugModule)initWithItemUpdater:(id)a3 homeKitObject:(id)a4;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
- (void)_pushSymptomUpdate;
- (void)_reloadItemProviders;
- (void)setFake8021xNetworkSymptom:(BOOL)a3;
- (void)setFakeCDPSymptom:(BOOL)a3;
- (void)setFakeCaptiveLeaseRenewalSymptom:(BOOL)a3;
- (void)setFakeGeneralFixSymptom:(BOOL)a3;
- (void)setFakeHardwareFixSymptom:(BOOL)a3;
- (void)setFakeHomeKitSymptom:(BOOL)a3;
- (void)setFakeICloudSymptom:(BOOL)a3;
- (void)setFakeITunesSymptom:(BOOL)a3;
- (void)setFakeInternetFixSymptom:(BOOL)a3;
- (void)setFakeNetworkNotShareableSymptom:(BOOL)a3;
- (void)setFakeNetworkProfileFixSymptom:(BOOL)a3;
- (void)setFakeNetworkProfileInstallSymptom:(BOOL)a3;
- (void)setFakeNetworkStrengthError:(BOOL)a3;
- (void)setFakeStereoPairGeneralSymptom:(BOOL)a3;
- (void)setFakeStereoPairNotFoundSymptom:(BOOL)a3;
- (void)setFakeStereoPairVersionMismatchSymptom:(BOOL)a3;
- (void)setFakeUnreachableError:(BOOL)a3;
- (void)setFakeVPNProfileExpiredSymptom:(BOOL)a3;
- (void)setFakeWiFiNetworkMismatchSymptom:(BOOL)a3;
- (void)setFakeWiFiPerformanceSymptom:(BOOL)a3;
- (void)setFakeWiFiSymptom:(BOOL)a3;
@end

@implementation HUAccessoryDebugModule

- (HUAccessoryDebugModule)initWithItemUpdater:(id)a3 homeKitObject:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v91 = [MEMORY[0x277CCA890] currentHandler];
    [v91 handleFailureInMethod:a2 object:self file:@"HUAccessoryDebugModule.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"homeKitObject"}];
  }

  v138.receiver = self;
  v138.super_class = HUAccessoryDebugModule;
  v9 = [(HFItemModule *)&v138 initWithItemUpdater:v7];
  v10 = v9;
  if (v9)
  {
    v92 = v7;
    objc_storeStrong(&v9->_homeKitObject, a4);
    objc_opt_class();
    v11 = v8;
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
      v17 = [v13 symptomsHandler];
      symptomsHandler = v10->_symptomsHandler;
      v10->_symptomsHandler = v17;

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
      v73 = [v16 symptomsHandler];
      v74 = v10->_symptomsHandler;
      v10->_symptomsHandler = v73;

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
    v7 = v92;
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
  v3 = [(HUAccessoryDebugModule *)self debugItemProvider];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  if (HFPreferencesInternalDebuggingEnabled() && [v4 count])
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [(HUAccessoryDebugModule *)self fakeUnreachableItem];
    v7 = [(HUAccessoryDebugModule *)self fakeNetworkStrengthErrorItem];
    v8 = [v5 setWithObjects:{v6, v7, 0}];
    v34 = [v8 na_setByIntersectingWithSet:v4];

    v32 = MEMORY[0x277CBEB98];
    v41 = [(HUAccessoryDebugModule *)self fakeInternetFixSymptomItem];
    v31 = [(HUAccessoryDebugModule *)self fakeWiFiSymptomItem];
    v39 = [(HUAccessoryDebugModule *)self fakeWiFiPerformanceSymptomItem];
    v38 = [(HUAccessoryDebugModule *)self fake8021xNetworkSymptomItem];
    [(HUAccessoryDebugModule *)self fakeNetworkProfileFixSymptomItem];
    v37 = v40 = v4;
    v36 = [(HUAccessoryDebugModule *)self fakeNetworkProfileInstallSymptomItem];
    v35 = [(HUAccessoryDebugModule *)self fakeNetworkNotShareableSymptomItem];
    v30 = [(HUAccessoryDebugModule *)self fakeHardwareFixSymptomItem];
    v9 = [(HUAccessoryDebugModule *)self fakeGeneralFixSymptomItem];
    v10 = [(HUAccessoryDebugModule *)self fakeHomeKitSymptomItem];
    v29 = [(HUAccessoryDebugModule *)self fakeITunesSymptomItem];
    v11 = [(HUAccessoryDebugModule *)self fakeICloudSymptomItem];
    v12 = [(HUAccessoryDebugModule *)self fakeCDPSymptomItem];
    v13 = [(HUAccessoryDebugModule *)self fakeWifiNetworkMismatchSymptomItem];
    v14 = [(HUAccessoryDebugModule *)self fakeVPNProfileExpiredSymptomItem];
    v15 = [(HUAccessoryDebugModule *)self fakeCaptiveLeaseRenewalSymptomItem];
    v16 = [v32 setWithObjects:{v41, v31, v39, v38, v37, v36, v35, v30, v9, v10, v29, v11, v12, v13, v14, v15, 0}];
    v33 = [v16 na_setByIntersectingWithSet:v40];

    v4 = v40;
    v17 = MEMORY[0x277CBEB98];
    v18 = [(HUAccessoryDebugModule *)self fakeStereoPairNotFoundSymptomItem];
    v19 = [(HUAccessoryDebugModule *)self fakeStereoPairVersionMismatchSymptomItem];
    v20 = [(HUAccessoryDebugModule *)self fakeStereoPairGeneralSymptomItem];
    v21 = [(HUAccessoryDebugModule *)self fake8021xNetworkSymptomItem];
    v22 = [v17 setWithObjects:{v18, v19, v20, v21, 0}];
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
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeICloudSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeITunesSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeITunesSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeCDPSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeCDPSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeGeneralFixSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeGeneralFixSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeHomeKitSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeHomeKitSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeUnreachableError
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeUnreachableError:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  v7 = [MEMORY[0x277D146E8] sharedDispatcher];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HUAccessoryDebugModule_setFakeUnreachableError___block_invoke;
  v8[3] = &unk_277DBEF60;
  v8[4] = self;
  [v7 dispatchAccessoryObserverMessage:v8 sender:0];

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
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeWiFiNetworkMismatchSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeVPNProfileExpiredSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeVPNProfileExpiredSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeWiFiSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeWiFiSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeWiFiPerformanceSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeWiFiPerformanceSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeInternetFixSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeInternetFixSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeHardwareFixSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeHardwareFixSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeStereoPairGeneralSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeStereoPairGeneralSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeStereoPairNotFoundSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeStereoPairNotFoundSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeStereoPairVersionMismatchSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeStereoPairVersionMismatchSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fake8021xNetworkSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFake8021xNetworkSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeNetworkProfileFixSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeNetworkProfileFixSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeNetworkProfileInstallSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeNetworkProfileInstallSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeNetworkNotShareableSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeNetworkNotShareableSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeCaptiveLeaseRenewalSymptom
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeCaptiveLeaseRenewalSymptom:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _pushSymptomUpdate];

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (BOOL)fakeNetworkStrengthError
{
  v2 = [(HUAccessoryDebugModule *)self homeKitObject];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = HFPreferencesAccessoryValueForKey();
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setFakeNetworkStrengthError:(BOOL)a3
{
  v4 = [(HUAccessoryDebugModule *)self homeKitObject];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  HFPreferencesAccessorySetValueForKey();

  [(HUAccessoryDebugModule *)self _reloadItemProviders];
}

- (void)_reloadItemProviders
{
  v4 = MEMORY[0x277D14788];
  v5 = [(HUAccessoryDebugModule *)self itemProviders];
  v8 = [v4 requestToReloadItemProviders:v5 senderSelector:a2];

  v6 = [(HFItemModule *)self itemUpdater];
  v7 = [v6 performItemUpdateRequest:v8];
}

- (void)_pushSymptomUpdate
{
  v2 = [(HUAccessoryDebugModule *)self symptomsHandler];
  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__HUAccessoryDebugModule__pushSymptomUpdate__block_invoke;
  v5[3] = &unk_277DC1018;
  v6 = v2;
  v4 = v2;
  [v3 dispatchSymptomsHandlerMessage:v5 sender:0];
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