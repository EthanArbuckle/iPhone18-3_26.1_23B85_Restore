@interface HUPinCodeDetailsItemManager
- (HUPinCodeDetailsItemManager)initWithDelegate:(id)delegate;
- (HUPinCodeDetailsItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUPinCodeDetailsItemManager)initWithDelegate:(id)delegate sourceItem:(id)item pinCodeManager:(id)manager home:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
- (id)_itemsToUpdateWhenApplicationDidBecomeActive;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
- (void)pinCodeManagerDidUpdate:(id)update pinCodes:(id)codes;
@end

@implementation HUPinCodeDetailsItemManager

- (HUPinCodeDetailsItemManager)initWithDelegate:(id)delegate sourceItem:(id)item pinCodeManager:(id)manager home:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  v29.receiver = self;
  v29.super_class = HUPinCodeDetailsItemManager;
  v14 = [(HFItemManager *)&v29 initWithDelegate:delegate sourceItem:item];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pinCodeManager, manager);
    objc_storeStrong(&v15->_overrideHome, home);
    v16 = objc_alloc_init(MEMORY[0x277D2C900]);
    restoreFuture = v15->_restoreFuture;
    v15->_restoreFuture = v16;
  }

  objc_opt_class();
  sourceItem = [(HFItemManager *)v15 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v19 = sourceItem;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  user = [v20 user];

  if (user)
  {
    user2 = [v20 user];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __79__HUPinCodeDetailsItemManager_initWithDelegate_sourceItem_pinCodeManager_home___block_invoke;
    v26[3] = &unk_277DC2198;
    v27 = v15;
    v28 = a2;
    [homeCopy fetchMissingWalletKeysForUser:user2 completion:v26];

    restoreFuture = v27;
  }

  else
  {
    restoreFuture = [(HUPinCodeDetailsItemManager *)v15 restoreFuture];
    v24 = [MEMORY[0x277CBEB98] set];
    [restoreFuture finishWithResult:v24];
  }

  return v15;
}

void __79__HUPinCodeDetailsItemManager_initWithDelegate_sourceItem_pinCodeManager_home___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138412546;
      v11 = v9;
      v12 = 2080;
      v13 = "[HUPinCodeDetailsItemManager initWithDelegate:sourceItem:pinCodeManager:home:]_block_invoke";
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "(%@:%s) Request to fetch missing wallet keys for user returned nil set", &v10, 0x16u);
    }
  }

  v5 = [*(a1 + 32) restoreFuture];
  v6 = v5;
  if (v3)
  {
    [v5 finishWithResult:v3];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] set];
    [v6 finishWithResult:v7];
  }

  v8 = [*(a1 + 32) reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 40)];
}

- (HUPinCodeDetailsItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_sourceItem_pinCodeManager_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPinCodeDetailsItemManager.m" lineNumber:92 description:{@"%s is unavailable; use %@ instead", "-[HUPinCodeDetailsItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUPinCodeDetailsItemManager)initWithDelegate:(id)delegate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithDelegate_sourceItem_pinCodeManager_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPinCodeDetailsItemManager.m" lineNumber:97 description:{@"%s is unavailable; use %@ instead", "-[HUPinCodeDetailsItemManager initWithDelegate:]", v6}];

  return 0;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v132[3] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  objc_opt_class();
  sourceItem = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v6 = sourceItem;
  }

  else
  {
    v6 = 0;
  }

  v79 = v6;

  objc_opt_class();
  sourceItem2 = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v8 = sourceItem2;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  sourceItem3 = [(HFItemManager *)self sourceItem];

  if (sourceItem3 && !v9 && !v79)
  {
    sourceItem4 = [(HFItemManager *)self sourceItem];
    NSLog(&cfstr_ExpectedItemTo.isa, sourceItem4);
  }

  sourceItem5 = [(HFItemManager *)self sourceItem];
  v81 = sourceItem5 == 0;

  if (v9)
  {
    [v9 user];
  }

  else
  {
    [v79 user];
  }
  v13 = ;
  hasOnboardedForAccessCode = [homeCopy hasOnboardedForAccessCode];
  hf_accessoriesSupportingAccessCodes = [homeCopy hf_accessoriesSupportingAccessCodes];
  v16 = [hf_accessoriesSupportingAccessCodes count] != 0;

  if ([homeCopy hf_hasHomeHubSupportingAccessCodes])
  {
    hf_currentUserIsOwner = 1;
  }

  else
  {
    hf_currentUserIsOwner = [homeCopy hf_currentUserIsOwner];
  }

  objc_initWeak(&location, self);
  v17 = objc_alloc(MEMORY[0x277D14B38]);
  v122[0] = MEMORY[0x277D85DD0];
  v122[1] = 3221225472;
  v122[2] = __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke;
  v122[3] = &unk_277DC21C0;
  objc_copyWeak(&v126, &location);
  v18 = v16 & hasOnboardedForAccessCode;
  v19 = v13;
  v123 = v19;
  v127 = v18;
  v20 = homeCopy;
  v124 = v20;
  v128 = hasOnboardedForAccessCode;
  v21 = v9;
  v125 = v21;
  v22 = [v17 initWithResultsBlock:v122];
  [(HUPinCodeDetailsItemManager *)self setPinCodeLabelItem:v22];

  v23 = objc_alloc(MEMORY[0x277D14B38]);
  v24 = hasOnboardedForAccessCode & (sourceItem5 == 0);
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 3221225472;
  v117[2] = __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_96;
  v117[3] = &unk_277DC21E8;
  v25 = v21;
  v118 = v25;
  v119 = v24;
  v120 = hasOnboardedForAccessCode;
  v121 = v81;
  v26 = [v23 initWithResultsBlock:v117];
  [(HUPinCodeDetailsItemManager *)self setPinCodeValueItem:v26];

  v27 = objc_alloc(MEMORY[0x277D14B38]);
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_103;
  v110[3] = &unk_277DC2210;
  v28 = v20;
  v111 = v28;
  v29 = v25;
  v112 = v29;
  v115 = hasOnboardedForAccessCode;
  v30 = v19;
  v116 = hf_currentUserIsOwner;
  v113 = v30;
  selfCopy = self;
  v31 = [v27 initWithResultsBlock:v110];
  [(HUPinCodeDetailsItemManager *)self setPinCodeRestoreAccessItem:v31];

  v32 = objc_alloc(MEMORY[0x277D14B38]);
  v131[0] = *MEMORY[0x277D13F60];
  v33 = _HULocalizedStringWithDefaultValue(@"HUPinCodeChangeCellTitle", @"HUPinCodeChangeCellTitle", 1);
  v34 = *MEMORY[0x277D13DC8];
  v132[0] = v33;
  v132[1] = @"Home.Locks.PinCode.Details.ChangeAccessCode";
  v35 = *MEMORY[0x277D13FB8];
  v131[1] = v34;
  v131[2] = v35;
  v36 = [MEMORY[0x277CCABB0] numberWithInt:v24 ^ 1u];
  v132[2] = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v132 forKeys:v131 count:3];
  v38 = [v32 initWithResults:v37];
  [(HUPinCodeDetailsItemManager *)self setPinCodeChangeItem:v38];

  v39 = objc_alloc(MEMORY[0x277D14B38]);
  v102[0] = MEMORY[0x277D85DD0];
  v102[1] = 3221225472;
  v102[2] = __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_118;
  v102[3] = &unk_277DC2238;
  v102[4] = self;
  v106 = hasOnboardedForAccessCode;
  v107 = v81;
  v40 = v29;
  v103 = v40;
  v108 = v18;
  v41 = v30;
  v104 = v41;
  v109 = hf_currentUserIsOwner;
  v42 = v28;
  v105 = v42;
  v43 = [v39 initWithResultsBlock:v102];
  [(HUPinCodeDetailsItemManager *)self setPersonalPINCodeItem:v43];

  v44 = objc_alloc(MEMORY[0x277D14B38]);
  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 3221225472;
  v98[2] = __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_126;
  v98[3] = &unk_277DC22A8;
  objc_copyWeak(&v101, &location);
  v45 = v42;
  v99 = v45;
  v46 = v41;
  v100 = v46;
  v47 = [v44 initWithResultsBlock:v98];
  [(HUPinCodeDetailsItemManager *)self setAddOrShowHomeKeyItem:v47];

  v48 = objc_alloc(MEMORY[0x277D14B38]);
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_2_149;
  v93[3] = &unk_277DC22D0;
  v96 = v81;
  v49 = v46;
  v97 = hasOnboardedForAccessCode;
  v94 = v49;
  selfCopy2 = self;
  v50 = [v48 initWithResultsBlock:v93];
  [(HUPinCodeDetailsItemManager *)self setDeleteGuestPINCodeItem:v50];

  v51 = objc_alloc(MEMORY[0x277D14B38]);
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_156;
  v92[3] = &unk_277DB7478;
  v92[4] = self;
  v52 = [v51 initWithResultsBlock:v92];
  [(HUPinCodeDetailsItemManager *)self setRestoreHomeKeyAccessItem:v52];

  v53 = objc_opt_new();
  pinCodeLabelItem = [(HUPinCodeDetailsItemManager *)self pinCodeLabelItem];
  [v53 na_safeAddObject:pinCodeLabelItem];

  pinCodeValueItem = [(HUPinCodeDetailsItemManager *)self pinCodeValueItem];
  [v53 na_safeAddObject:pinCodeValueItem];

  pinCodeRestoreAccessItem = [(HUPinCodeDetailsItemManager *)self pinCodeRestoreAccessItem];
  [v53 na_safeAddObject:pinCodeRestoreAccessItem];

  pinCodeChangeItem = [(HUPinCodeDetailsItemManager *)self pinCodeChangeItem];
  [v53 na_safeAddObject:pinCodeChangeItem];

  personalPINCodeItem = [(HUPinCodeDetailsItemManager *)self personalPINCodeItem];
  [v53 na_safeAddObject:personalPINCodeItem];

  addOrShowHomeKeyItem = [(HUPinCodeDetailsItemManager *)self addOrShowHomeKeyItem];
  [v53 na_safeAddObject:addOrShowHomeKeyItem];

  deleteGuestPINCodeItem = [(HUPinCodeDetailsItemManager *)self deleteGuestPINCodeItem];
  [v53 na_safeAddObject:deleteGuestPINCodeItem];

  restoreHomeKeyAccessItem = [(HUPinCodeDetailsItemManager *)self restoreHomeKeyAccessItem];
  [v53 na_safeAddObject:restoreHomeKeyAccessItem];

  v62 = [objc_alloc(MEMORY[0x277D142F0]) initWithHome:v45];
  [(HUPinCodeDetailsItemManager *)self setLocksItemProvider:v62];

  locksItemProvider = [(HUPinCodeDetailsItemManager *)self locksItemProvider];
  [locksItemProvider setIncludesMatterOnlyAccessoryItems:1];

  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_169;
  v90[3] = &unk_277DB83E8;
  v64 = v49;
  v91 = v64;
  locksItemProvider2 = [(HUPinCodeDetailsItemManager *)self locksItemProvider];
  [locksItemProvider2 setFilter:v90];

  v66 = objc_alloc(MEMORY[0x277D14C38]);
  locksItemProvider3 = [(HUPinCodeDetailsItemManager *)self locksItemProvider];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_2_173;
  v82[3] = &unk_277DC2340;
  v78 = v40;
  v83 = v78;
  objc_copyWeak(&v87, &location);
  v68 = v64;
  v84 = v68;
  v69 = v79;
  v85 = v69;
  v88 = v81;
  v70 = v45;
  v86 = v70;
  v89 = hf_currentUserIsOwner;
  v71 = [v66 initWithSourceProvider:locksItemProvider3 transformationBlock:v82];
  [(HUPinCodeDetailsItemManager *)self setTransformedLocksItemProvider:v71];

  v72 = objc_alloc(MEMORY[0x277D14B40]);
  v73 = [MEMORY[0x277CBEB98] setWithArray:v53];
  v74 = [v72 initWithItems:v73];

  v130[0] = v74;
  transformedLocksItemProvider = [(HUPinCodeDetailsItemManager *)self transformedLocksItemProvider];
  v130[1] = transformedLocksItemProvider;
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:2];

  objc_destroyWeak(&v87);
  objc_destroyWeak(&v101);

  objc_destroyWeak(&v126);
  objc_destroyWeak(&location);

  return v76;
}

id __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [WeakRetained sourceItem];
  v5 = [v4 latestResults];
  v6 = *MEMORY[0x277D13F60];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v3 setObject:v7 forKeyedSubscript:v6];

  if (*(a1 + 32))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 64) ^ 1;
  }

  v9 = v8 & 1;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v8 & 1];
  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) hf_accessoriesSupportingAccessCodes];
    v13 = [v12 count];
    v14 = *(a1 + 65);
    v15 = [*(a1 + 32) hf_prettyDescription];
    v19 = 136316162;
    v20 = "[HUPinCodeDetailsItemManager _buildItemProvidersForHome:]_block_invoke";
    v21 = 1024;
    v22 = v9;
    v23 = 2048;
    v24 = v13;
    v25 = 1024;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "(%s) For pinCodeLabelItem, shouldHide = %{BOOL}d | accessoriesSupportingAccessCodes.count = %ld | hasOnboardedForAccessCode = %{BOOL}d | user = %@", &v19, 0x2Cu);
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 48), "isUnknownGuestFromMatter")}];
  [v3 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v17 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v17;
}

id __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_96(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = _HULocalizedStringWithDefaultValue(@"HUPinCodeValueCellTitle", @"HUPinCodeValueCellTitle", 1);
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v2 setObject:@"Home.Locks.PinCode.Details.AccessCode" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  v4 = [*(a1 + 32) pinCodeValue];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) ^ 1u];
  [v2 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 41);
    v9 = *(a1 + 42);
    v12 = 136315906;
    v13 = "[HUPinCodeDetailsItemManager _buildItemProvidersForHome:]_block_invoke";
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(%s) For pinCodeValueItem, showPinCodeValue = %{BOOL}d | hasOnboardedForAccessCode = %{BOOL}d | newPinCode = %{BOOL}d", &v12, 0x1Eu);
  }

  v10 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v10;
}

id __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_103(uint64_t a1)
{
  v44[5] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessories];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_2;
  v25[3] = &unk_277DB8EC0;
  v26 = *(a1 + 40);
  v3 = [v2 na_firstObjectPassingTest:v25];

  if (*(a1 + 64) == 1 && *(a1 + 48) && *(a1 + 65) == 1)
  {
    v4 = [*(a1 + 56) pinCodeManager];
    if ([v4 isAccessoryFetchInProgress])
    {
      v5 = 0;
    }

    else
    {
      if (*(a1 + 40))
      {
        v23 = v3 == 0;
      }

      else
      {
        v23 = 1;
      }

      v5 = !v23;
    }
  }

  else
  {
    v5 = 0;
  }

  v43[0] = *MEMORY[0x277D13F60];
  v6 = _HULocalizedStringWithDefaultValue(@"HUPinCodeRestoreAccessButtonTitle", @"HUPinCodeRestoreAccessButtonTitle", 1);
  v7 = *MEMORY[0x277D13DC8];
  v44[0] = v6;
  v44[1] = @"Home.Locks.PinCode.Details.RestoreAccessEntry";
  v8 = *MEMORY[0x277D13FB8];
  v43[1] = v7;
  v43[2] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithInt:v5 ^ 1u];
  v10 = *MEMORY[0x277D13F10];
  v44[2] = v9;
  v44[3] = MEMORY[0x277CBEC28];
  v11 = *MEMORY[0x277D13EA8];
  v43[3] = v10;
  v43[4] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 56), "operationInProgress")}];
  v44[4] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:5];

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 64);
    v24 = *(a1 + 65);
    v16 = [*(a1 + 56) pinCodeManager];
    v17 = [v16 isAccessoryFetchInProgress];
    v18 = [v3 hf_minimumDescription];
    v19 = *(a1 + 40);
    v20 = [*(a1 + 48) hf_prettyDescription];
    *buf = 136316930;
    v28 = "[HUPinCodeDetailsItemManager _buildItemProvidersForHome:]_block_invoke";
    v29 = 1024;
    v30 = v5;
    v31 = 1024;
    v32 = v15;
    v33 = 1024;
    v34 = v24;
    v35 = 1024;
    v36 = v17;
    v37 = 2112;
    v38 = v18;
    v39 = 2112;
    v40 = v19;
    v41 = 2112;
    v42 = v20;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "(%s) For pinCodeRestoreAccessItem, showRestoreAccess = %{BOOL}d | hasOnboardedForAccessCode = %{BOOL}d | hasResidentDevice = %{BOOL}d | isAccessoryFetchInProgress = %{BOOL}d | pinCodeRestorableAccessory = %@ | pinCodeItem = %@ | user = %@", buf, 0x42u);
  }

  v21 = [MEMORY[0x277D2C900] futureWithResult:v13];

  return v21;
}

uint64_t __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 category];
  if ([v4 isEqual:*MEMORY[0x277CCE890]])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 hf_primaryService];
    v7 = [v6 serviceType];
    v5 = [v7 isEqualToString:*MEMORY[0x277CD0EB0]];
  }

  v8 = [*(a1 + 32) accessories];
  v9 = [v8 containsObject:v3];

  if (v5 && [v3 isReachable])
  {
    v10 = [v3 supportsAccessCodes] & (v9 ^ 1);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_118(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = _HULocalizedStringWithDefaultValue(@"HUPinCodePersonalPINCodeCellTitle", @"HUPinCodePersonalPINCodeCellTitle", 1);
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v2 setObject:@"Home.Locks.PinCode.PersonalAccessCode" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  v4 = objc_alloc_init(MEMORY[0x277CD4790]);
  v28 = 0;
  v5 = [v4 canEvaluatePolicy:2 error:&v28];
  v6 = v28;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 domain];
    if ([v8 isEqualToString:*MEMORY[0x277CD4770]])
    {
      v9 = [v7 code] == -5;

      v5 |= v9;
    }

    else
    {
    }

    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 32);
      *buf = 138413058;
      v30 = v25;
      v31 = 2080;
      *v32 = "[HUPinCodeDetailsItemManager _buildItemProvidersForHome:]_block_invoke";
      *&v32[8] = 1024;
      *v33 = v5 & 1;
      *&v33[4] = 2112;
      v34 = v7;
      _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "(%@:%s) canLocalAuthenticate = %{BOOL}d, localAuthenticationError = %@", buf, 0x26u);
    }
  }

  if (*(a1 + 64) == 1 && (*(a1 + 65) & 1) == 0 && ((v24 = *(a1 + 40)) != 0 && (*(a1 + 66) & 1) != 0 || *(a1 + 48) && *(a1 + 66) == 1 && *(a1 + 67) == 1))
  {
    v11 = ([v24 isUnknownGuestFromMatter] ^ 1) & v5;
  }

  else
  {
    v11 = 0;
  }

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 64);
    v14 = *(a1 + 65);
    v27 = v4;
    v15 = *(a1 + 67);
    v16 = [*(a1 + 56) hf_accessoriesSupportingAccessCodes];
    v17 = [v16 count];
    [*(a1 + 48) hf_prettyDescription];
    v18 = v26 = v7;
    v19 = *(a1 + 40);
    *buf = 136316930;
    v30 = "[HUPinCodeDetailsItemManager _buildItemProvidersForHome:]_block_invoke";
    v31 = 1024;
    *v32 = v11;
    *&v32[4] = 1024;
    *&v32[6] = v13;
    *v33 = 1024;
    *&v33[2] = v14;
    LOWORD(v34) = 1024;
    *(&v34 + 2) = v15;
    v4 = v27;
    HIWORD(v34) = 2048;
    v35 = v17;
    v36 = 2112;
    v37 = v18;
    v38 = 2112;
    v39 = v19;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "(%s) For personalPINCodeItem, shouldShow = %{BOOL}d | hasOnboardedForAccessCode = %{BOOL}d | newPinCode = %{BOOL}d | hasResidentDevice = %{BOOL}d | accessoriesSupportingAccessCodes.count = %ld | user = %@ | pinCodeItem = %@", buf, 0x42u);

    v7 = v26;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithInt:v11 ^ 1u];
  [v2 setObject:v20 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v21 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 56), "hf_hasHomeHubSupportingAccessCodes") ^ 1}];
  [v2 setObject:v21 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  v22 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v22;
}

id __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_126(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  v4 = objc_opt_new();
  [v4 na_safeAddObject:*(a1 + 32)];
  v5 = [*(a1 + 32) hf_walletKeyAccessories];
  v6 = [v5 copy];
  [v4 na_safeAddObjectsFromArray:v6];

  v7 = [v4 copy];
  [v3 na_safeSetObject:v7 forKey:*MEMORY[0x277D13DA8]];

  v8 = [v5 count];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) currentUser];
  if ([v9 isEqual:v10])
  {
    v11 = *(a1 + 40) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = [MEMORY[0x277D14CE8] isAnIPhone] ^ 1;
  if (v11 || (v12 & 1) != 0 || !v8 || ([*(a1 + 32) hasOnboardedForWalletKey] & 1) == 0)
  {
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(a1 + 32) hasOnboardedForWalletKey];
      *buf = 138413826;
      v24 = WeakRetained;
      v25 = 2080;
      v26 = "[HUPinCodeDetailsItemManager _buildItemProvidersForHome:]_block_invoke";
      v27 = 1024;
      v28 = v11;
      v29 = 1024;
      v30 = v12;
      v31 = 1024;
      v32 = v8 != 0;
      v33 = 1024;
      v34 = v17;
      v35 = 2112;
      v36 = v5;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "(%@: %s) Hiding addOrShowHomeKeyItem. shouldHideForUser: %{BOOL}d, shouldHideForDevice: %{BOOL}d, hasWalletKeyAccessories: %{BOOL}d, home.hasOnboardedForWalletKey = hasWalletKeyAccessories: %{BOOL}d, walletKeyAccessories: %@", buf, 0x38u);
    }

    v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 na_safeSetObject:v18 forKey:*MEMORY[0x277D13FB8]];

    v15 = [MEMORY[0x277D2C900] futureWithResult:v3];
  }

  else
  {
    v13 = [WeakRetained home];
    v14 = [v13 hf_fetchWalletKeyDeviceStateForCurrentDeviceIfNecessary];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_129;
    v20[3] = &unk_277DC2280;
    v20[4] = WeakRetained;
    v21 = v3;
    v22 = *(a1 + 32);
    v15 = [v14 flatMap:v20];
  }

  return v15;
}

id __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_129(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([a2 canAddWalletKeyErrorCode] == 8)
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412546;
      v12 = v4;
      v13 = 2080;
      v14 = "[HUPinCodeDetailsItemManager _buildItemProvidersForHome:]_block_invoke";
      _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%@: %s) Hiding Add/Show Home Key to Wallet buttonbecause current device has Wallet app deleted", buf, 0x16u);
    }

    [*(a1 + 40) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    v5 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 40)];
  }

  else
  {
    v6 = [*(a1 + 48) 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];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_130;
    v8[3] = &unk_277DBD4E0;
    v9 = *(a1 + 48);
    v10 = *(a1 + 40);
    v5 = [v6 flatMap:v8];
  }

  return v5;
}

id __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_130(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 hf_hasWalletKey];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_2_131;
    v18 = &unk_277DB7AB8;
    v6 = &v19;
    v19 = *(a1 + 40);
    v7 = &v15;
  }

  else
  {
    v5 = [v4 hf_walletKeyDeviceStatesOfCompatiblePairedWatches];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_3;
    v13 = &unk_277DB7A90;
    v6 = &v14;
    v14 = *(a1 + 40);
    v7 = &v10;
  }

  v8 = [v5 flatMap:{v7, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19}];

  return v8;
}

uint64_t __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_2_131(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = v3 == 0;
  if (v3)
  {
    v5 = @"HUShowHomeKeyInWalletButtonTitle";
  }

  else
  {
    v5 = @"HUHomeSettingsLockAddHomeKeyToWallet";
  }

  if (v4)
  {
    v6 = @"Home.Locks.PinCode.Details.AddHomeKeyToWallet";
  }

  else
  {
    v6 = @"Home.Locks.PinCode.Details.ShowHomeKeyInWallet";
  }

  v7 = _HULocalizedStringWithDefaultValue(v5, v5, 1);
  [*(a1 + 32) setObject:v7 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [*(a1 + 32) setObject:v6 forKeyedSubscript:*MEMORY[0x277D13DC8]];
  v8 = MEMORY[0x277D2C900];
  v9 = *(a1 + 32);

  return [v8 futureWithResult:v9];
}

id __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[HUPinCodeDetailsItemManager _buildItemProvidersForHome:]_block_invoke_3";
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) For addOrShowHomeKeyItem | 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 returned NO and hf_walletKeyDeviceStatesOfCompatiblePairedWatches is %@", &v16, 0x16u);
  }

  v5 = [v3 count];
  v6 = *(a1 + 32);
  v7 = *MEMORY[0x277D13FB8];
  if (v5)
  {
    [v6 na_safeSetObject:MEMORY[0x277CBEC28] forKey:v7];
    v8 = [v3 na_filter:&__block_literal_global_229];
    v9 = [v8 count];
    v10 = v9 == 0;
    if (v9)
    {
      v11 = @"HUHomeSettingsLockAddHomeKeyToWallet";
    }

    else
    {
      v11 = @"HUShowHomeKeyInWalletButtonTitle";
    }

    if (v10)
    {
      v12 = @"Home.Locks.PinCode.Details.ShowHomeKeyInWallet";
    }

    else
    {
      v12 = @"Home.Locks.PinCode.Details.AddHomeKeyToWallet";
    }

    v13 = _HULocalizedStringWithDefaultValue(v11, v11, 1);
    [*(a1 + 32) setObject:v13 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [*(a1 + 32) setObject:v12 forKeyedSubscript:*MEMORY[0x277D13DC8]];
    v14 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 32)];
  }

  else
  {
    [v6 na_safeSetObject:MEMORY[0x277CBEC38] forKey:v7];
    v14 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 32)];
  }

  return v14;
}

BOOL __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_145(uint64_t a1, void *a2)
{
  v2 = [a2 walletKey];
  v3 = v2 == 0;

  return v3;
}

id __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_2_149(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = 1;
  v4 = _HULocalizedStringWithDefaultValue(@"HUPinCodeDeleteGuestButtonTitle", @"HUPinCodeDeleteGuestButtonTitle", 1);
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v2 setObject:@"Home.Locks.PinCode.Details.RemoveGuest" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  if ((*(a1 + 48) & 1) == 0 && !*(a1 + 32))
  {
    v3 = *(a1 + 49) ^ 1;
  }

  v5 = v3 & 1;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v3 & 1];
  [v2 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "operationInProgress")}];
  [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 49);
    v11 = [*(a1 + 40) operationInProgress];
    v12 = [*(a1 + 32) hf_prettyDescription];
    v15 = 136316418;
    v16 = "[HUPinCodeDetailsItemManager _buildItemProvidersForHome:]_block_invoke_2";
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    v23 = 1024;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "(%s) For deleteGuestPINCodeItem, hide = %{BOOL}d | newPinCode = %{BOOL}d |  hasOnboardedForAccessCode = %{BOOL}d | operationInProgress = %{BOOL}d | user = %@", &v15, 0x2Eu);
  }

  v13 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v13;
}

id __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_156(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) restoreFuture];
  v3 = [v2 isFinished];

  if (v3)
  {
    v4 = [*(a1 + 32) restoreFuture];
    v5 = [v4 flatMap:&__block_literal_global_160_0];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v6 = _HULocalizedStringWithDefaultValue(@"HUPinCodeRestoreHomeKeyAccessButton", @"HUPinCodeRestoreHomeKeyAccessButton", 1);
    [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v4 setObject:@"Home.Locks.PinCode.Details.RestoreHomeKeyAccess" forKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[HUPinCodeDetailsItemManager _buildItemProvidersForHome:]_block_invoke";
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(%s) restoreHomeKeyAccessItem is hidden because restoreFuture is NOT finished", &v10, 0xCu);
    }

    v5 = [MEMORY[0x277D2C900] futureWithResult:v4];
  }

  v8 = v5;

  return v8;
}

id __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_2_157(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = _HULocalizedStringWithDefaultValue(@"HUPinCodeRestoreHomeKeyAccessButton", @"HUPinCodeRestoreHomeKeyAccessButton", 1);
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v3 setObject:@"Home.Locks.PinCode.Details.RestoreHomeKeyAccess" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  v5 = [v2 hmf_isEmpty];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[HUPinCodeDetailsItemManager _buildItemProvidersForHome:]_block_invoke_2";
    v12 = 1024;
    v13 = v5;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(%s) For restoreHomeKeyAccessItem, hidden = %{BOOL}d | missingWalletKeys = %@ | restoreFuture.isFinished = YES", &v10, 0x1Cu);
  }

  v8 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v8;
}

BOOL __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_169(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 category];
  if ([v7 isEqual:*MEMORY[0x277CCE890]])
  {
  }

  else
  {
    v8 = [v6 hf_primaryService];
    v9 = [v8 serviceType];
    v10 = [v9 isEqualToString:*MEMORY[0x277CD0EB0]];

    if (!v10)
    {
      v11 = 0;
      goto LABEL_11;
    }
  }

  v11 = ([v6 supportsAccessCodes] & 1) != 0 || *(a1 + 32) != 0;
LABEL_11:

  return v11;
}

id __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_2_173(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 accessory];
  if ([*(a1 + 32) isUnknownGuestFromMatter] && (objc_msgSend(*(a1 + 32), "accessories"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsObject:", v7), v8, !v9))
  {
    v12 = 0;
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277D14C30]);
    v11 = [v4 copy];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_3_176;
    v14[3] = &unk_277DC2318;
    objc_copyWeak(&v19, (a1 + 64));
    v15 = v7;
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v20 = *(a1 + 72);
    v18 = *(a1 + 56);
    v21 = *(a1 + 73);
    v12 = [v10 initWithSourceItem:v11 transformationBlock:v14];

    objc_destroyWeak(&v19);
  }

  return v12;
}

id __58__HUPinCodeDetailsItemManager__buildItemProvidersForHome___block_invoke_3_176(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  objc_opt_class();
  v5 = [WeakRetained sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 accessories];
  v9 = [v8 containsObject:*(a1 + 32)];

  v10 = [*(a1 + 32) supportsAccessCodes];
  if (*(a1 + 40))
  {
    v11 = *(a1 + 48) != 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = [MEMORY[0x277CBEB38] dictionary];
  v13 = *MEMORY[0x277D13F60];
  v14 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v12 setObject:v14 forKeyedSubscript:v13];

  v15 = *MEMORY[0x277D13DC8];
  v16 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];

  [v12 setObject:v16 forKeyedSubscript:v15];
  [v12 setObject:@"lock.fill" forKeyedSubscript:*MEMORY[0x277D13EA0]];
  v17 = [MEMORY[0x277D14378] securityAccessoryTypeGroup];
  v18 = [v17 hu_tintColor];
  [v12 setObject:v18 forKeyedSubscript:*MEMORY[0x277D13F58]];

  if ([*(a1 + 56) hf_currentUserIsAdministrator] && objc_msgSend(*(a1 + 56), "hf_userIsRestrictedGuest:", *(a1 + 40)))
  {
    v19 = [*(a1 + 56) homeAccessControlForUser:*(a1 + 40)];
    v20 = [v19 restrictedGuestAccessSettings];
    [v20 accessAllowedToAccessories];
    v31 = v9;
    v21 = v7;
    v22 = WeakRetained;
    v23 = v11;
    v25 = v24 = v10;
    [v25 containsObject:*(a1 + 32)];

    v10 = v24;
    v11 = v23;
    WeakRetained = v22;
    v7 = v21;
    v9 = v31;
  }

  v26 = [*(a1 + 32) isReachable];
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  [v12 setObject:v27 forKeyedSubscript:*MEMORY[0x277D14068]];

  if ((v26 & 1) == 0 && ([*(a1 + 56) hf_shouldBlockCurrentRestrictedGuestFromHome] & 1) == 0)
  {
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13EA8]];
    v28 = @"HUPinCodeAccessorySectionIsUnReachable";
    goto LABEL_17;
  }

  if (((v11 | v9) & 1) == 0 && ((v10 ^ 1) & 1) == 0 && *(a1 + 73) == 1)
  {
    v28 = @"HUPinCodeAccessorySectionUserPINUnset";
LABEL_17:
    v29 = _HULocalizedStringWithDefaultValue(v28, v28, 1);
    [v12 na_safeSetObject:v29 forKey:*MEMORY[0x277D13E20]];
  }

  return v12;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v63[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  itemsCopy = items;
  array = [v4 array];
  objc_opt_class();
  sourceItem = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v7 = sourceItem;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  sourceItem2 = [(HFItemManager *)self sourceItem];

  home = [(HFItemManager *)self home];
  if ([home hf_hasHomeHubSupportingAccessCodes])
  {
    hf_currentUserIsAdministrator = 1;
  }

  else
  {
    home2 = [(HFItemManager *)self home];
    hf_currentUserIsAdministrator = [home2 hf_currentUserIsAdministrator];
  }

  v13 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"PinCodesLabel"];
  pinCodeLabelItem = [(HUPinCodeDetailsItemManager *)self pinCodeLabelItem];
  v63[0] = pinCodeLabelItem;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
  [v13 setItems:v15];

  if (sourceItem2)
  {
    v16 = _HULocalizedStringWithDefaultValue(@"HUPinCodeNameLabelSectionHeader", @"HUPinCodeNameLabelSectionHeader", 1);
    [v13 setHeaderTitle:v16];
  }

  v60 = v8;
  if ([v8 isUnknownGuestFromMatter])
  {
    v17 = _HULocalizedStringWithDefaultValue(@"HUPinCodeNameLabelSectionFooter", @"HUPinCodeNameLabelSectionFooter", 1);
    [v13 setFooterTitle:v17];
  }

  v58 = v13;
  [array na_safeAddObject:v13];
  if (hf_currentUserIsAdministrator)
  {
    v18 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"PinCodesAccessories"];
    transformedLocksItemProvider = [(HUPinCodeDetailsItemManager *)self transformedLocksItemProvider];
    items = [transformedLocksItemProvider items];
    allObjects = [items allObjects];
    defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
    v23 = [allObjects sortedArrayUsingComparator:defaultItemComparator];
    v24 = [v23 mutableCopy];

    pinCodeRestoreAccessItem = [(HUPinCodeDetailsItemManager *)self pinCodeRestoreAccessItem];
    [v24 addObject:pinCodeRestoreAccessItem];

    restoreHomeKeyAccessItem = [(HUPinCodeDetailsItemManager *)self restoreHomeKeyAccessItem];
    [v24 addObject:restoreHomeKeyAccessItem];

    [v18 setItems:v24];
    v27 = _HULocalizedStringWithDefaultValue(@"HUPinCodeAccessorySectionHeader", @"HUPinCodeAccessorySectionHeader", 1);
    [v18 setHeaderTitle:v27];

    user = [v60 user];

    if (user)
    {
      home3 = [(HFItemManager *)self home];
      name = [home3 name];
      v37 = HULocalizedStringWithFormat(@"HUPinCodeUserAccessorySectionFooter", @"%@", v31, v32, v33, v34, v35, v36, name);
      [v18 setFooterTitle:v37];
    }

    else
    {
      home3 = _HULocalizedStringWithDefaultValue(@"HUPinCodeGuestAccessorySectionFooter", @"HUPinCodeGuestAccessorySectionFooter", 1);
      [v18 setFooterTitle:home3];
    }

    [array addObject:v18];
  }

  v38 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"PinCodesValue"];
  v39 = MEMORY[0x277CBEB18];
  pinCodeValueItem = [(HUPinCodeDetailsItemManager *)self pinCodeValueItem];
  v62[0] = pinCodeValueItem;
  pinCodeChangeItem = [(HUPinCodeDetailsItemManager *)self pinCodeChangeItem];
  v62[1] = pinCodeChangeItem;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
  v43 = [v39 arrayWithArray:v42];

  [v38 setItems:v43];
  v44 = _HULocalizedStringWithDefaultValue(@"HUPinCodeValueSectionFooter", @"HUPinCodeValueSectionFooter", 1);
  [v38 setFooterTitle:v44];

  [array na_safeAddObject:v38];
  v45 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"PersonalPINCode"];
  v46 = MEMORY[0x277CBEA60];
  personalPINCodeItem = [(HUPinCodeDetailsItemManager *)self personalPINCodeItem];
  v48 = [v46 na_arrayWithSafeObject:personalPINCodeItem];
  [v45 setItems:v48];

  [array na_safeAddObject:v45];
  v49 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"ShowHomeKeyInWallet"];
  v50 = MEMORY[0x277CBEA60];
  addOrShowHomeKeyItem = [(HUPinCodeDetailsItemManager *)self addOrShowHomeKeyItem];
  v52 = [v50 na_arrayWithSafeObject:addOrShowHomeKeyItem];
  [v49 setItems:v52];

  [array na_safeAddObject:v49];
  v53 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"PinCodesDelete"];
  deleteGuestPINCodeItem = [(HUPinCodeDetailsItemManager *)self deleteGuestPINCodeItem];
  v61 = deleteGuestPINCodeItem;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
  [v53 setItems:v55];

  [array addObject:v53];
  v56 = [MEMORY[0x277D14778] filterSections:array toDisplayedItems:itemsCopy];

  return v56;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  overrideHome = [(HUPinCodeDetailsItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:overrideHome];

  return v4;
}

- (id)_itemsToUpdateWhenApplicationDidBecomeActive
{
  v2 = MEMORY[0x277CBEB98];
  addOrShowHomeKeyItem = [(HUPinCodeDetailsItemManager *)self addOrShowHomeKeyItem];
  v4 = [v2 na_setWithSafeObject:addOrShowHomeKeyItem];

  return v4;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUPinCodeDetailsItemManager;
  [(HFItemManager *)&v4 _registerForExternalUpdates];
  pinCodeManager = [(HUPinCodeDetailsItemManager *)self pinCodeManager];
  [pinCodeManager addObserver:self];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUPinCodeDetailsItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  pinCodeManager = [(HUPinCodeDetailsItemManager *)self pinCodeManager];
  [pinCodeManager removeObserver:self];
}

- (void)pinCodeManagerDidUpdate:(id)update pinCodes:(id)codes
{
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Updating details", buf, 2u);
  }

  objc_opt_class();
  sourceItem = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v8 = sourceItem;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    pinCodeManager = [(HUPinCodeDetailsItemManager *)self pinCodeManager];
    pinCodeValue = [v9 pinCodeValue];
    v12 = [pinCodeManager pinCodeForCodeValue:pinCodeValue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__HUPinCodeDetailsItemManager_pinCodeManagerDidUpdate_pinCodes___block_invoke;
    v14[3] = &unk_277DC2368;
    v15 = v9;
    selfCopy = self;
    v17 = a2;
    v13 = [v12 addSuccessBlock:v14];
  }
}

id *__64__HUPinCodeDetailsItemManager_pinCodeManagerDidUpdate_pinCodes___block_invoke(id *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    [result[4] updateFromPinCode:a2];
    return [v2[5] reloadAndUpdateAllItemsFromSenderSelector:v2[6]];
  }

  return result;
}

@end