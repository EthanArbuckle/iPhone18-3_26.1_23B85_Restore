@interface HUEditLocationItemManager
- (BOOL)_inviteUsersItemAllowed;
- (BOOL)_isCurrentUserRestrictedGuest;
- (HUEditLocationItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HUEditLocationItemManager)initWithHomeBuilder:(id)a3 delegate:(id)a4 context:(unint64_t)a5;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
- (id)_itemsToHideInSet:(id)a3;
- (id)updateLocationServicesEnabled:(BOOL)a3;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
- (void)pinCodeManagerDidUpdate:(id)a3 pinCodes:(id)a4;
@end

@implementation HUEditLocationItemManager

- (HUEditLocationItemManager)initWithHomeBuilder:(id)a3 delegate:(id)a4 context:(unint64_t)a5
{
  v9 = a3;
  v18.receiver = self;
  v18.super_class = HUEditLocationItemManager;
  v10 = [(HFItemManager *)&v18 initWithDelegate:a4 sourceItem:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_homeBuilder, a3);
    v11->_context = a5;
    v12 = [MEMORY[0x277D146E8] sharedDispatcher];
    v13 = [v9 home];
    v14 = [v12 pinCodeManagerForHome:v13];
    [(HUEditLocationItemManager *)v11 setPinCodeManager:v14];

    v15 = [(HUEditLocationItemManager *)v11 pinCodeManager];
    v16 = [v15 fetchFromAccessoryCache];
  }

  return v11;
}

- (HUEditLocationItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHomeBuilder_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUEditLocationItemManager.m" lineNumber:154 description:{@"%s is unavailable; use %@ instead", "-[HUEditLocationItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (id)updateLocationServicesEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  v6 = [(HFItemManager *)self home];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HUEditLocationItemManager_updateLocationServicesEnabled___block_invoke;
  v9[3] = &unk_277DB8C00;
  v7 = v5;
  v10 = v7;
  [v6 updateLocationServicesEnabled:v3 completion:v9];

  return v7;
}

uint64_t __59__HUEditLocationItemManager_updateLocationServicesEnabled___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = MEMORY[0x277CBEC28];
  }

  else
  {
    v3 = MEMORY[0x277CBEC38];
  }

  return [v2 finishWithResult:v3 error:a2];
}

- (id)_buildItemModulesForHome:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [[HUUserNotificationTopicListModule alloc] initWithItemUpdater:self home:v4];
  [(HUEditLocationItemManager *)self setNotificationSettingsModule:v6];

  v7 = [[HUMatterConnectedServicesItemModule alloc] initWithItemUpdater:self home:v4];
  [(HUEditLocationItemManager *)self setConnectedServicesItemModule:v7];

  if (![(HUEditLocationItemManager *)self _isCurrentUserRestrictedGuest])
  {
    v8 = [(HUEditLocationItemManager *)self notificationSettingsModule];
    [v5 addObject:v8];
  }

  if (![(HUEditLocationItemManager *)self _isCurrentUserRestrictedGuest])
  {
    v9 = [(HUEditLocationItemManager *)self connectedServicesItemModule];
    [v5 addObject:v9];
  }

  return v5;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v182[6] = *MEMORY[0x277D85DE8];
  v142 = a3;
  v4 = [MEMORY[0x277D14B38] emptyItem];
  [(HUEditLocationItemManager *)self setNameItem:v4];

  v5 = [(HUEditLocationItemManager *)self _inviteUsersItemAllowed];
  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277D14B38]);
  v178[0] = *MEMORY[0x277D13F60];
  v144 = v178[0];
  v7 = _HULocalizedStringWithDefaultValue(@"HUEditLocationInvitePeopleTitle", @"HUEditLocationInvitePeopleTitle", 1);
  v8 = *MEMORY[0x277D13DC8];
  v182[0] = v7;
  v182[1] = @"Home.HomeSettings.InvitePeople";
  v9 = *MEMORY[0x277D13EA8];
  v146 = v8;
  v178[1] = v8;
  v178[2] = v9;
  v10 = MEMORY[0x277CCABB0];
  v11 = [MEMORY[0x277D14808] sharedDispatcher];
  v12 = [v10 numberWithInt:{objc_msgSend(v11, "isUsingiCloud") ^ 1}];
  v182[2] = v12;
  v179 = *MEMORY[0x277D13FB8];
  v13 = v179;
  v14 = [MEMORY[0x277CCABB0] numberWithInt:!v5];
  v15 = *MEMORY[0x277D13EA0];
  v182[3] = v14;
  v182[4] = @"plus";
  v16 = *MEMORY[0x277D13DA8];
  v180 = v15;
  v181 = v16;
  v17 = MEMORY[0x277CBEB98];
  v18 = [(HFItemManager *)self home];
  v19 = [v17 na_setWithSafeObject:v18];
  v182[5] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v182 forKeys:v178 count:6];
  v21 = [v6 initWithResults:v20];
  [(HUEditLocationItemManager *)self setInviteUsersItem:v21];

  v22 = [HURestrictedGuestScheduleItem alloc];
  v23 = [(HFItemManager *)self home];
  v24 = [(HFItemManager *)self home];
  v25 = [v24 currentUser];
  v26 = [(HURestrictedGuestScheduleItem *)v22 initWithHome:v23 user:v25];
  [(HUEditLocationItemManager *)self setHomeScheduleItem:v26];

  v27 = +[HUWallpaperPickerInlineViewController useWallpaperPickerCell];
  v28 = MEMORY[0x277CBEB38];
  v29 = _HULocalizedStringWithDefaultValue(@"HUEditLocationTakePhotoTitle", @"HUEditLocationTakePhotoTitle", 1);
  v143 = [v28 dictionaryWithObjectsAndKeys:{v29, v144, @"Home.HomeSettings.TakePhoto", v146, 0}];

  v30 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D755C8], "isSourceTypeAvailable:", 1) ^ 1}];
  [v143 setObject:v30 forKeyedSubscript:v13];

  v31 = [objc_alloc(MEMORY[0x277D14B38]) initWithResults:v143];
  [(HUEditLocationItemManager *)self setCameraItem:v31];

  v32 = objc_alloc(MEMORY[0x277D14B38]);
  v176[0] = v144;
  v33 = _HULocalizedStringWithDefaultValue(@"HUEditLocationShowPredictedScenesButtonTitle", @"HUEditLocationShowPredictedScenesButtonTitle", 1);
  v34 = *MEMORY[0x277D13F68];
  v177[0] = v33;
  v177[1] = @"HUEditLocationShowPredictedScenesButtonTitle";
  v176[1] = v34;
  v176[2] = v146;
  v177[2] = @"Home.HomeSettings.ShowSuggestedScenes";
  v35 = *MEMORY[0x277D14068];
  v176[3] = *MEMORY[0x277D14068];
  v36 = MEMORY[0x277CCABB0];
  [v142 hf_showPredictedScenesOnDashboard];
  v37 = [v36 numberWithInteger:HFPrimaryStateFromBOOL()];
  v177[3] = v37;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v177 forKeys:v176 count:4];
  v39 = [v32 initWithResults:v38];
  [(HUEditLocationItemManager *)self setShowPredictedScenes:v39];

  v40 = objc_alloc(MEMORY[0x277D14B38]);
  v174[0] = v144;
  v41 = _HULocalizedStringWithDefaultValue(@"HUEditLocationChooseWallpaperTitle", @"HUEditLocationChooseWallpaperTitle", 1);
  v175[0] = v41;
  v174[1] = v13;
  v42 = [MEMORY[0x277CCABB0] numberWithBool:v27];
  v174[2] = v146;
  v175[1] = v42;
  v175[2] = @"Home.HomeSetting.ChooseWallpaper";
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v175 forKeys:v174 count:3];
  v44 = [v40 initWithResults:v43];
  [(HUEditLocationItemManager *)self setChooseWallpaperItem:v44];

  v45 = objc_alloc(MEMORY[0x277D14B38]);
  v172[0] = v13;
  v46 = [MEMORY[0x277CCABB0] numberWithBool:v27];
  v172[1] = v146;
  v173[0] = v46;
  v173[1] = @"Home.HomeSettings.WallpaperThumbnail";
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:2];
  v48 = [v45 initWithResults:v47];
  [(HUEditLocationItemManager *)self setWallpaperThumbnailItem:v48];

  v49 = objc_alloc(MEMORY[0x277D14B38]);
  v170[0] = v13;
  v50 = [MEMORY[0x277CCABB0] numberWithInt:v27 ^ 1];
  v170[1] = v146;
  v171[0] = v50;
  v171[1] = @"Home.HomeSettings.WallpaperPicker";
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v170 count:2];
  v52 = [v49 initWithResults:v51];
  [(HUEditLocationItemManager *)self setWallpaperPickerItem:v52];

  v53 = objc_alloc(MEMORY[0x277D14B38]);
  v168 = *MEMORY[0x277D13F70];
  v54 = _HULocalizedStringWithDefaultValue(@"HUEditLocationDetailsNotesPlaceholder", @"HUEditLocationDetailsNotesPlaceholder", 1);
  v169 = v54;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
  v56 = [v53 initWithResults:v55];
  [(HUEditLocationItemManager *)self setDetailNotesItem:v56];

  v57 = [HUSoftwareUpdateSettingsItem alloc];
  v58 = [(HFItemManager *)self home];
  v59 = [(HUSoftwareUpdateSettingsItem *)v57 initWithHome:v58];
  [(HUEditLocationItemManager *)self setSoftwareUpdateItem:v59];

  v60 = objc_alloc(MEMORY[0x277D14B38]);
  v155[0] = MEMORY[0x277D85DD0];
  v155[1] = 3221225472;
  v155[2] = __56__HUEditLocationItemManager__buildItemProvidersForHome___block_invoke;
  v155[3] = &unk_277DB7448;
  objc_copyWeak(&v156, &location);
  v61 = [v60 initWithResultsBlock:v155];
  [(HUEditLocationItemManager *)self setRemoveItem:v61];

  v62 = objc_alloc(MEMORY[0x277D14B38]);
  v153[0] = MEMORY[0x277D85DD0];
  v153[1] = 3221225472;
  v153[2] = __56__HUEditLocationItemManager__buildItemProvidersForHome___block_invoke_2;
  v153[3] = &unk_277DB7448;
  objc_copyWeak(&v154, &location);
  v63 = [v62 initWithResultsBlock:v153];
  [(HUEditLocationItemManager *)self setSoundCheckItem:v63];

  v64 = [HUSiriTriggerPhraseSettingItem alloc];
  v65 = [(HFItemManager *)self home];
  v66 = [(HUSiriTriggerPhraseSettingItem *)v64 initWithHome:v65];
  [(HUEditLocationItemManager *)self setSiriTriggerPhraseSettingItem:v66];

  v67 = [(HFItemManager *)self home];
  v68 = [v67 accessories];
  v69 = [v68 na_any:&__block_literal_global_122_2];

  if (v69)
  {
    v70 = [(HFItemManager *)self home];
    v71 = [v70 hf_currentUserIsAdministrator];

    v72 = v71 ^ 1u;
  }

  else
  {
    v72 = 1;
  }

  v73 = HFLogForCategory();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v74 = [(HFItemManager *)self home];
    v75 = [v74 hf_currentUserIsAdministrator];
    *buf = 138412802;
    v159 = self;
    v160 = 1024;
    *v161 = v69;
    *&v161[4] = 1024;
    *&v161[6] = v75;
    _os_log_impl(&dword_20CEB6000, v73, OS_LOG_TYPE_DEFAULT, "%@:atLeastOneDeviceSupportsHomeLevelLocationServicesSetting = %{BOOL}d currentUserIsAdministrator = %{BOOL}d", buf, 0x18u);
  }

  v76 = objc_alloc(MEMORY[0x277D14B38]);
  v166[0] = v144;
  v77 = _HULocalizedStringWithDefaultValue(@"HUAccessoryLocationToggleTitle", @"HUAccessoryLocationToggleTitle", 1);
  v167[0] = v77;
  v167[1] = @"HUAccessoryLocationToggleTitle";
  v166[1] = v34;
  v166[2] = v146;
  v167[2] = @"Home.HomeSettings.LocationServices";
  v166[3] = v13;
  v78 = [MEMORY[0x277CCABB0] numberWithBool:v72];
  v167[3] = v78;
  v166[4] = v35;
  v79 = MEMORY[0x277CCABB0];
  v80 = [(HFItemManager *)self home];
  [v80 isLocationServicesEnabled];
  v81 = [v79 numberWithInteger:HFPrimaryStateFromBOOL()];
  v167[4] = v81;
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v167 forKeys:v166 count:5];
  v83 = [v76 initWithResults:v82];
  [(HUEditLocationItemManager *)self setLocationServicesSettingItem:v83];

  v147 = [(HUEditLocationItemManager *)self nameItem];
  v165[0] = v147;
  v145 = [(HUEditLocationItemManager *)self inviteUsersItem];
  v165[1] = v145;
  v141 = [(HUEditLocationItemManager *)self wallpaperPickerItem];
  v165[2] = v141;
  v140 = [(HUEditLocationItemManager *)self homeScheduleItem];
  v165[3] = v140;
  v139 = [(HUEditLocationItemManager *)self showPredictedScenes];
  v165[4] = v139;
  v84 = [(HUEditLocationItemManager *)self cameraItem];
  v165[5] = v84;
  v85 = [(HUEditLocationItemManager *)self chooseWallpaperItem];
  v165[6] = v85;
  v86 = [(HUEditLocationItemManager *)self wallpaperThumbnailItem];
  v165[7] = v86;
  v87 = [(HUEditLocationItemManager *)self detailNotesItem];
  v165[8] = v87;
  v88 = [(HUEditLocationItemManager *)self softwareUpdateItem];
  v165[9] = v88;
  v89 = [(HUEditLocationItemManager *)self siriTriggerPhraseSettingItem];
  v165[10] = v89;
  v90 = [(HUEditLocationItemManager *)self soundCheckItem];
  v165[11] = v90;
  v91 = [(HUEditLocationItemManager *)self locationServicesSettingItem];
  v165[12] = v91;
  v92 = [(HUEditLocationItemManager *)self removeItem];
  v165[13] = v92;
  v138 = [MEMORY[0x277CBEA60] arrayWithObjects:v165 count:14];

  v93 = HFLogForCategory();
  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v159 = "[HUEditLocationItemManager _buildItemProvidersForHome:]";
    _os_log_impl(&dword_20CEB6000, v93, OS_LOG_TYPE_DEFAULT, "(%s) Creating 'guests'", buf, 0xCu);
  }

  v94 = objc_alloc(MEMORY[0x277D14B38]);
  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 3221225472;
  v150[2] = __56__HUEditLocationItemManager__buildItemProvidersForHome___block_invoke_130;
  v150[3] = &unk_277DB8670;
  objc_copyWeak(&v152, &location);
  v95 = v142;
  v151 = v95;
  v96 = [v94 initWithResultsBlock:v150];
  [(HUEditLocationItemManager *)self setGuestsItem:v96];

  v97 = [(HFItemManager *)self home];
  v98 = [v97 hf_accessoriesSupportingAccessCodes];
  v99 = [v98 count] == 0;

  if (v99)
  {
    v101 = [(HFItemManager *)self home];
    v102 = [v101 restrictedGuests];
    v100 = [v102 count] != 0;
  }

  else
  {
    v100 = 1;
  }

  v103 = HFLogForCategory();
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
    v104 = NSStringFromBOOL();
    v105 = [(HFItemManager *)self home];
    v106 = [v105 hf_accessoriesSupportingAccessCodes];
    v107 = [v106 count];
    v108 = [(HFItemManager *)self home];
    v109 = [v108 restrictedGuests];
    v110 = [v109 count];
    *buf = 136315906;
    v159 = "[HUEditLocationItemManager _buildItemProvidersForHome:]";
    v160 = 2112;
    *v161 = v104;
    *&v161[8] = 2048;
    v162 = v107;
    v163 = 2048;
    v164 = v110;
    _os_log_impl(&dword_20CEB6000, v103, OS_LOG_TYPE_DEFAULT, "(%s) shouldIncludeNonBlockingItemProvider is %@ because hf_accessoriesSupportingAccessCodes.count = %ld. self.home.restrictedGuests.count = %ld.", buf, 0x2Au);
  }

  if (v100)
  {
    v111 = objc_alloc(MEMORY[0x277D14B48]);
    v112 = MEMORY[0x277CBEB98];
    v113 = [(HUEditLocationItemManager *)self guestsItem];
    v114 = [v112 setWithObject:v113];
    v115 = [v111 initWithItems:v114];
    [(HUEditLocationItemManager *)self setNonBlockingItemProvider:v115];

    v116 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D13B88]];
    v117 = [(HUEditLocationItemManager *)self nonBlockingItemProvider];
    [v117 setClientInvalidationReasons:v116];
  }

  v118 = objc_alloc(MEMORY[0x277D14B40]);
  v119 = [MEMORY[0x277CBEB98] setWithArray:v138];
  v120 = [v118 initWithItems:v119];

  v121 = [(HFItemManager *)self home];
  v122 = [(HFItemManager *)self home];
  v123 = [v122 currentUser];
  v124 = [v121 homeAccessControlForUser:v123];

  v125 = [v124 restrictedGuestAccessSettings];
  v126 = [v125 accessAllowedToAccessories];
  v127 = objc_alloc(MEMORY[0x277D14290]);
  v128 = [(HFItemManager *)self home];
  v129 = [v127 initWithHome:v128];
  [(HUEditLocationItemManager *)self setAllowedAccessoryCategoryItemProvider:v129];

  v148[0] = MEMORY[0x277D85DD0];
  v148[1] = 3221225472;
  v148[2] = __56__HUEditLocationItemManager__buildItemProvidersForHome___block_invoke_159;
  v148[3] = &unk_277DB8B00;
  v130 = v126;
  v149 = v130;
  v131 = [(HUEditLocationItemManager *)self allowedAccessoryCategoryItemProvider];
  [v131 setFilter:v148];

  v132 = [objc_alloc(MEMORY[0x277D14CA0]) initWithHome:v95];
  [v132 setIncludeCurrentUser:1];
  [(HUEditLocationItemManager *)self setUserItemProvider:v132];
  v133 = [objc_alloc(MEMORY[0x277D148F8]) initWithHome:v95];
  [v133 setFilter:&__block_literal_global_168_1];
  [(HUEditLocationItemManager *)self setInviteItemProvider:v133];
  v134 = [MEMORY[0x277CBEB18] arrayWithObjects:{v120, v132, v133, 0}];
  v135 = [(HUEditLocationItemManager *)self nonBlockingItemProvider];
  [v134 na_safeAddObject:v135];

  v136 = [(HUEditLocationItemManager *)self allowedAccessoryCategoryItemProvider];
  [v134 na_safeAddObject:v136];

  objc_destroyWeak(&v152);
  objc_destroyWeak(&v154);
  objc_destroyWeak(&v156);

  objc_destroyWeak(&location);

  return v134;
}

id __56__HUEditLocationItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained home];
  v3 = [v2 hf_currentUserIsOwner];
  v4 = @"HUEditLocationLeaveHomeButtonTitle";
  if (v3)
  {
    v4 = @"HUEditLocationRemoveButtonTitle";
  }

  v5 = v4;

  v6 = MEMORY[0x277D2C900];
  v11[0] = *MEMORY[0x277D13F60];
  v7 = _HULocalizedStringWithDefaultValue(v5, v5, 1);

  v11[1] = *MEMORY[0x277D13DC8];
  v12[0] = v7;
  v12[1] = @"Home.HomeSettings.RemoveLeaveHome";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [v6 futureWithResult:v8];

  return v9;
}

id __56__HUEditLocationItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1)
{
  v21[6] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained home];
  [v2 soundCheckEnabled];

  v3 = [WeakRetained home];
  v4 = [v3 accessories];
  v5 = [v4 na_any:&__block_literal_global_299];

  if (v5)
  {
    v6 = [WeakRetained home];
    v7 = [v6 hf_currentUserIsAdministrator] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = MEMORY[0x277D2C900];
  v20[0] = *MEMORY[0x277D13F60];
  v9 = _HULocalizedStringWithDefaultValue(@"HUSoundCheckSetting_Title", @"HUSoundCheckSetting_Title", 1);
  v10 = *MEMORY[0x277D13DC8];
  v21[0] = v9;
  v21[1] = @"Home.HomeSetting.SoundCheck";
  v11 = *MEMORY[0x277D13F68];
  v20[1] = v10;
  v20[2] = v11;
  v21[2] = @"HUSoundCheckSetting_Title";
  v20[3] = *MEMORY[0x277D14068];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  v21[3] = v12;
  v20[4] = *MEMORY[0x277D13FB8];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v21[4] = v13;
  v20[5] = *MEMORY[0x277D13DA8];
  v14 = MEMORY[0x277CBEB98];
  v15 = [WeakRetained home];
  v16 = [v14 na_setWithSafeObject:v15];
  v21[5] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v18 = [v8 futureWithResult:v17];

  return v18;
}

id __56__HUEditLocationItemManager__buildItemProvidersForHome___block_invoke_130(uint64_t a1)
{
  v16[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = MEMORY[0x277D2C900];
  v4 = [WeakRetained pinCodeManager];
  v5 = [v4 guestPinCodes];
  v16[0] = v5;
  v6 = [WeakRetained pinCodeManager];
  v7 = [v6 otherEcosystemGuestPinCodes];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v9 = [v3 combineAllFutures:v8];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__HUEditLocationItemManager__buildItemProvidersForHome___block_invoke_2_131;
  v13[3] = &unk_277DBB198;
  v14 = *(a1 + 32);
  v15 = WeakRetained;
  v10 = [v9 flatMap:v13];
  v11 = [v10 recover:&__block_literal_global_155_0];

  return v11;
}

id __56__HUEditLocationItemManager__buildItemProvidersForHome___block_invoke_2_131(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v40 = "[HUEditLocationItemManager _buildItemProvidersForHome:]_block_invoke_2";
    v41 = 2112;
    v42 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) Completed getting access codes from HK and other ecosystems with results %@", buf, 0x16u);
  }

  v5 = [v3 na_arrayByFlattening];
  v6 = [v5 count];
  v35 = v3;
  if (v6)
  {
    v7 = [*(a1 + 32) hf_accessoriesSupportingAccessCodes];
    if ([v7 count])
    {
      v8 = [*(a1 + 40) home];
      if ([v8 hf_currentUserIsAdministrator])
      {
        v9 = [*(a1 + 40) home];
        v10 = [v9 hasOnboardedForAccessCode] ^ 1;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = [*(a1 + 40) home];
  v12 = [v11 restrictedGuests];
  v13 = [v12 count];

  if (v13)
  {
    v20 = 0;
  }

  else
  {
    v20 = v10;
  }

  v21 = HULocalizedStringWithFormat(@"HUEditLocationGuestsDescriptionFormat", @"%lu", v14, v15, v16, v17, v18, v19, v13 + v6);
  v22 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
  v23 = MEMORY[0x277D2C900];
  v37[0] = *MEMORY[0x277D13F60];
  v24 = _HULocalizedStringWithDefaultValue(@"HUEditLocationGuestsTitle", @"HUEditLocationGuestsTitle", 1);
  v25 = *MEMORY[0x277D13DC8];
  v38[0] = v24;
  v38[1] = @"Home.HomeSettings.Guests";
  v26 = *MEMORY[0x277D13E20];
  v37[1] = v25;
  v37[2] = v26;
  v38[2] = v21;
  v37[3] = *MEMORY[0x277D13E98];
  v27 = [MEMORY[0x277D755B8] systemImageNamed:@"person.2.circle.fill" withConfiguration:v22];
  v38[3] = v27;
  v37[4] = *MEMORY[0x277D13FB8];
  v28 = [MEMORY[0x277CCABB0] numberWithBool:v20];
  v38[4] = v28;
  v37[5] = *MEMORY[0x277D13DA0];
  v29 = MEMORY[0x277CBEB98];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v31 = [v29 setWithArray:v30];
  v38[5] = v31;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:6];
  v33 = [v23 futureWithResult:v32];

  return v33;
}

id __56__HUEditLocationItemManager__buildItemProvidersForHome___block_invoke_152(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[HUEditLocationItemManager _buildItemProvidersForHome:]_block_invoke";
    v12 = 2112;
    v13 = v2;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%s) Failed to get access codes from HK and other ecosystems. Error = %@. Hiding 'guests' item.", buf, 0x16u);
  }

  v4 = MEMORY[0x277D2C900];
  v8 = *MEMORY[0x277D13FB8];
  v9 = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 futureWithResult:v5];

  return v6;
}

uint64_t __56__HUEditLocationItemManager__buildItemProvidersForHome___block_invoke_159(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HUEditLocationItemManager__buildItemProvidersForHome___block_invoke_2_160;
  v8[3] = &unk_277DB8EC0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __56__HUEditLocationItemManager__buildItemProvidersForHome___block_invoke_2_160(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1680];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 hf_compatibleServiceTypesForCategoryType:v3];
  v6 = [v4 hf_primaryService];

  v7 = [v6 serviceType];
  v8 = [v5 na_safeContainsObject:v7];

  return v8;
}

BOOL __56__HUEditLocationItemManager__buildItemProvidersForHome___block_invoke_3_165(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 invitationState] != 5;
  return v6;
}

- (BOOL)_inviteUsersItemAllowed
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  v4 = [v3 homeManager];
  v5 = [v4 hasOptedToHH2];

  if (v5)
  {
    v6 = [(HFItemManager *)self home];
    v7 = [v6 residentDevices];
    v8 = [v7 count] != 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(HFItemManager *)self home];
    v11 = [v10 residentDevices];
    v13 = 136315906;
    v14 = "[HUEditLocationItemManager _inviteUsersItemAllowed]";
    v15 = 1024;
    v16 = v5;
    v17 = 1024;
    v18 = v8;
    v19 = 2048;
    v20 = [v11 count];
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%s hasOptedToHH2 = %{BOOL}d, shouldShowInviteUsersItem = %{BOOL}d, residentDevices.count = %ld", &v13, 0x22u);
  }

  return v8;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HUEditLocationItemManager *)self homeBuilder];
  v4 = [v3 home];
  v5 = [v2 futureWithResult:v4];

  return v5;
}

- (id)_itemsToHideInSet:(id)a3
{
  v28.receiver = self;
  v28.super_class = HUEditLocationItemManager;
  v4 = [(HFItemManager *)&v28 _itemsToHideInSet:a3];
  v5 = [v4 mutableCopy];

  v6 = [(HFItemManager *)self home];
  v7 = [v6 hf_currentUserIsAdministrator];

  if ((v7 & 1) == 0)
  {
    v8 = [(HUEditLocationItemManager *)self inviteUsersItem];
    [v5 addObject:v8];

    v9 = [(HUEditLocationItemManager *)self homeBuilder];
    v10 = [v9 userNotes];
    v11 = [v10 length];

    if (!v11)
    {
      v12 = [(HUEditLocationItemManager *)self detailNotesItem];
      [v5 addObject:v12];
    }
  }

  v13 = [MEMORY[0x277D14808] sharedDispatcher];
  v14 = [v13 isUsingiCloud];

  if (!v14 || [(HUEditLocationItemManager *)self _isCurrentUserRestrictedGuest])
  {
    v15 = [(HUEditLocationItemManager *)self userItemProvider];
    v16 = [v15 items];
    [v5 unionSet:v16];

    v17 = [(HUEditLocationItemManager *)self guestsItem];
    [v5 addObject:v17];

    v18 = [(HUEditLocationItemManager *)self inviteItemProvider];
    v19 = [v18 items];
    [v5 unionSet:v19];
  }

  if ([(HUEditLocationItemManager *)self _isCurrentUserRestrictedGuest])
  {
    v20 = [(HUEditLocationItemManager *)self showPredictedScenes];
    [v5 addObject:v20];
  }

  if ([(HUEditLocationItemManager *)self context]== 1)
  {
    v21 = [(HUEditLocationItemManager *)self wallpaperPickerItem];
    [v5 addObject:v21];

    v22 = [(HUEditLocationItemManager *)self showPredictedScenes];
    [v5 na_safeAddObject:v22];

    v23 = [(HUEditLocationItemManager *)self cameraItem];
    [v5 addObject:v23];

    v24 = [(HUEditLocationItemManager *)self chooseWallpaperItem];
    [v5 addObject:v24];

    v25 = [(HUEditLocationItemManager *)self wallpaperThumbnailItem];
    [v5 addObject:v25];
  }

  if ([MEMORY[0x277D14CE8] isRunningInStoreDemoMode])
  {
    v26 = [(HUEditLocationItemManager *)self removeItem];
    [v5 addObject:v26];
  }

  return v5;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v113[1] = *MEMORY[0x277D85DE8];
  v99 = a3;
  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationNameSectionIdentifier"];
  v6 = _HULocalizedStringWithDefaultValue(@"HUEditLocationNameSectionTitle", @"HUEditLocationNameSectionTitle", 1);
  [v5 setHeaderTitle:v6];

  v7 = [(HUEditLocationItemManager *)self nameItem];
  v113[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:1];
  [v5 setItems:v8];

  v98 = v5;
  [v4 addObject:v5];
  v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUScheduleSectionIdentifier"];
  v10 = [(HUEditLocationItemManager *)self homeScheduleItem];
  v112 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:1];
  [v9 setItems:v11];

  v12 = HFLocalizedString();
  [v9 setHeaderTitle:v12];

  v13 = _HULocalizedStringWithDefaultValue(@"HURestrictedGuestScheduleItem_HomeSettings_FooterTitle", @"HURestrictedGuestScheduleItem_HomeSettings_FooterTitle", 1);
  [v9 setFooterTitle:v13];

  v97 = v9;
  [v4 addObject:v9];
  v14 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUAllowedAccessoriesSectionIdentifier"];
  v15 = [(HUEditLocationItemManager *)self allowedAccessoryCategoryItemProvider];
  v16 = [v15 items];
  v17 = [v16 allObjects];
  v18 = [MEMORY[0x277D14778] defaultItemComparator];
  v19 = [v17 sortedArrayUsingComparator:v18];
  [v14 setItems:v19];

  v20 = _HULocalizedStringWithDefaultValue(@"HURestrictedGuest_AllowedAccessoriesSection_Header", @"HURestrictedGuest_AllowedAccessoriesSection_Header", 1);
  [v14 setHeaderTitle:v20];

  v96 = v14;
  [v4 addObject:v14];
  v21 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationPeopleSectionIdentifier"];
  v22 = _HULocalizedStringWithDefaultValue(@"HUEditLocationPeopleSectionTitle", @"HUEditLocationPeopleSectionTitle", 1);
  [v21 setHeaderTitle:v22];

  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = __62__HUEditLocationItemManager__buildSectionsWithDisplayedItems___block_invoke;
  v100[3] = &unk_277DBA4B8;
  v100[4] = self;
  v23 = __62__HUEditLocationItemManager__buildSectionsWithDisplayedItems___block_invoke(v100);
  [v21 setFooterTitle:v23];

  v24 = [(HUEditLocationItemManager *)self userItemProvider];
  v25 = [v24 items];
  v26 = [(HUEditLocationItemManager *)self inviteItemProvider];
  v27 = [v26 items];
  v28 = [v25 setByAddingObjectsFromSet:v27];
  v29 = [v28 allObjects];

  v30 = [MEMORY[0x277D14778] defaultItemComparator];
  v94 = v29;
  v31 = [v29 sortedArrayUsingComparator:v30];
  v111[0] = v31;
  v32 = [(HUEditLocationItemManager *)self guestsItem];
  v111[1] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:2];
  v34 = [v33 na_arrayByFlattening];
  [v21 setItems:v34];

  if ([(HUEditLocationItemManager *)self _inviteUsersItemAllowed])
  {
    v35 = [v21 items];
    v110[0] = v35;
    v36 = [(HUEditLocationItemManager *)self inviteUsersItem];
    v110[1] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:2];
    v38 = [v37 na_arrayByFlattening];
    [v21 setItems:v38];
  }

  v95 = v21;
  [v4 addObject:v21];
  v39 = [(HUEditLocationItemManager *)self notificationSettingsModule];
  v40 = [v39 buildSectionsWithDisplayedItems:v99];
  [v4 addObjectsFromArray:v40];

  v41 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationSiriTriggerPhraseSectionIdentifier"];
  v42 = [(HUEditLocationItemManager *)self siriTriggerPhraseSettingItem];
  v109 = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v109 count:1];
  [v41 setItems:v43];

  v93 = v41;
  [v4 addObject:v41];
  v44 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationSoftwareUpdateSectionIdentifier"];
  v45 = [(HFItemManager *)self home];
  v46 = [HUSoftwareUpdateSettingsItem footerTitleForHome:v45];
  [v44 setFooterTitle:v46];

  v47 = [(HUEditLocationItemManager *)self softwareUpdateItem];
  v108 = v47;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v108 count:1];
  [v44 setItems:v48];

  v92 = v44;
  [v4 addObject:v44];
  v49 = [(HUEditLocationItemManager *)self connectedServicesItemModule];
  v50 = [v49 buildSectionsWithDisplayedItems:v99];
  [v4 addObjectsFromArray:v50];

  v51 = [(HUEditLocationItemManager *)self soundCheckItem];
  LODWORD(v50) = [v99 containsObject:v51];

  if (v50)
  {
    v52 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationSoundCheckSectionIdentifier"];
    v53 = _HULocalizedStringWithDefaultValue(@"HUHomeMediaSettingSection_Title", @"HUHomeMediaSettingSection_Title", 1);
    [v52 setHeaderTitle:v53];

    v54 = [(HUEditLocationItemManager *)self soundCheckItem];
    v107 = v54;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
    [v52 setItems:v55];

    [v4 addObject:v52];
  }

  v56 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationScenesSectionIdentifier"];
  v57 = MEMORY[0x277CBEA60];
  v58 = [(HUEditLocationItemManager *)self showPredictedScenes];
  v59 = [v57 na_arrayWithSafeObject:v58];
  [v56 setItems:v59];

  v60 = _HULocalizedStringWithDefaultValue(@"HUEditLocationScenesSectionTitle", @"HUEditLocationScenesSectionTitle", 1);
  v91 = v56;
  [v56 setHeaderTitle:v60];

  [v4 addObject:v56];
  v61 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationWallpaperSectionIdentifier"];
  v62 = _HULocalizedStringWithDefaultValue(@"HUEditLocationWallpaperSectionTitle", @"HUEditLocationWallpaperSectionTitle", 1);
  [v61 setHeaderTitle:v62];

  v63 = [(HUEditLocationItemManager *)self cameraItem];
  v106[0] = v63;
  v64 = [(HUEditLocationItemManager *)self chooseWallpaperItem];
  v106[1] = v64;
  v65 = [(HUEditLocationItemManager *)self wallpaperThumbnailItem];
  v106[2] = v65;
  v66 = [(HUEditLocationItemManager *)self wallpaperPickerItem];
  v106[3] = v66;
  v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:4];
  [v61 setItems:v67];

  [v4 addObject:v61];
  v68 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationDetailsSectionIdentifier"];
  v69 = _HULocalizedStringWithDefaultValue(@"HUEditLocationDetailsSectionTitle", @"HUEditLocationDetailsSectionTitle", 1);
  [v68 setHeaderTitle:v69];

  v70 = _HULocalizedStringWithDefaultValue(@"HUEditLocationDetailsFooterTitle", @"HUEditLocationDetailsFooterTitle", 1);
  [v68 setFooterTitle:v70];

  v71 = [(HUEditLocationItemManager *)self detailNotesItem];
  v105 = v71;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
  [v68 setItems:v72];

  [v4 addObject:v68];
  v73 = HFLocalizedString();
  v74 = HFLocalizedString();
  v75 = objc_alloc(MEMORY[0x277CCAB48]);
  v76 = [v73 stringByAppendingString:@" "];
  v77 = [v75 initWithString:v76];

  v78 = objc_alloc(MEMORY[0x277CCA898]);
  v103 = *MEMORY[0x277D740E8];
  v79 = [MEMORY[0x277D14C80] locationPrivacyURL];
  v104 = v79;
  v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
  v81 = [v78 initWithString:v74 attributes:v80];
  [v77 appendAttributedString:v81];

  v82 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HULocationServicesSectionIdentifier"];
  v83 = _HULocalizedStringWithDefaultValue(@"HUAccessoryLocationSectionTitle", @"HUAccessoryLocationSectionTitle", 1);
  [v82 setHeaderTitle:v83];

  [v82 setAttributedFooterTitle:v77];
  v84 = [(HUEditLocationItemManager *)self locationServicesSettingItem];
  v102 = v84;
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
  [v82 setItems:v85];

  [v4 addObject:v82];
  v86 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationRemoveSectionIdentifier"];
  v87 = [(HUEditLocationItemManager *)self removeItem];
  v101 = v87;
  v88 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
  [v86 setItems:v88];

  [v4 addObject:v86];
  v89 = [MEMORY[0x277D14778] filterSections:v4 toDisplayedItems:v99];

  return v89;
}

id __62__HUEditLocationItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D14808] sharedDispatcher];
  v3 = [v2 isUsingiCloud];

  if (v3)
  {
    v4 = [*(a1 + 32) home];
    if ([v4 hf_currentUserIsAdministrator])
    {
      v5 = @"HUEditLocationPeopleFooterTitle_AdminOrOwner";
    }

    else
    {
      v5 = @"HUEditLocationPeopleFooterTitle_NonAdmin";
    }

    v6 = _HULocalizedStringWithDefaultValue(v5, v5, 1);
  }

  else
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HUEditLocationPeopleICloudNotEnabledFooterTitle", @"HUEditLocationPeopleICloudNotEnabledFooterTitle", 1);
  }

  return v6;
}

- (BOOL)_isCurrentUserRestrictedGuest
{
  v3 = [(HFItemManager *)self home];
  v4 = [(HFItemManager *)self home];
  v5 = [v4 currentUser];
  v6 = [v3 hf_userIsRestrictedGuest:v5];

  return v6;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUEditLocationItemManager;
  [(HFItemManager *)&v4 _registerForExternalUpdates];
  v3 = [(HUEditLocationItemManager *)self pinCodeManager];
  [v3 addObserver:self];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUEditLocationItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  v3 = [(HUEditLocationItemManager *)self pinCodeManager];
  [v3 removeObserver:self];
}

- (void)pinCodeManagerDidUpdate:(id)a3 pinCodes:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Reloading PIN Code related items...", buf, 0x16u);
  }

  v8 = [(HUEditLocationItemManager *)self nonBlockingItemProvider];

  if (v8)
  {
    v9 = [(HUEditLocationItemManager *)self nonBlockingItemProvider];
    v12 = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    v11 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:v10 senderSelector:a2];
  }
}

@end