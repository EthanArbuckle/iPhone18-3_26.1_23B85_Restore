@interface HUEditLocationItemManager
- (BOOL)_inviteUsersItemAllowed;
- (BOOL)_isCurrentUserRestrictedGuest;
- (HUEditLocationItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUEditLocationItemManager)initWithHomeBuilder:(id)builder delegate:(id)delegate context:(unint64_t)context;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
- (id)_itemsToHideInSet:(id)set;
- (id)updateLocationServicesEnabled:(BOOL)enabled;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
- (void)pinCodeManagerDidUpdate:(id)update pinCodes:(id)codes;
@end

@implementation HUEditLocationItemManager

- (HUEditLocationItemManager)initWithHomeBuilder:(id)builder delegate:(id)delegate context:(unint64_t)context
{
  builderCopy = builder;
  v18.receiver = self;
  v18.super_class = HUEditLocationItemManager;
  v10 = [(HFItemManager *)&v18 initWithDelegate:delegate sourceItem:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_homeBuilder, builder);
    v11->_context = context;
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    home = [builderCopy home];
    v14 = [mEMORY[0x277D146E8] pinCodeManagerForHome:home];
    [(HUEditLocationItemManager *)v11 setPinCodeManager:v14];

    pinCodeManager = [(HUEditLocationItemManager *)v11 pinCodeManager];
    fetchFromAccessoryCache = [pinCodeManager fetchFromAccessoryCache];
  }

  return v11;
}

- (HUEditLocationItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHomeBuilder_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUEditLocationItemManager.m" lineNumber:154 description:{@"%s is unavailable; use %@ instead", "-[HUEditLocationItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (id)updateLocationServicesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  home = [(HFItemManager *)self home];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HUEditLocationItemManager_updateLocationServicesEnabled___block_invoke;
  v9[3] = &unk_277DB8C00;
  v7 = v5;
  v10 = v7;
  [home updateLocationServicesEnabled:enabledCopy completion:v9];

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

- (id)_buildItemModulesForHome:(id)home
{
  homeCopy = home;
  v5 = objc_opt_new();
  v6 = [[HUUserNotificationTopicListModule alloc] initWithItemUpdater:self home:homeCopy];
  [(HUEditLocationItemManager *)self setNotificationSettingsModule:v6];

  v7 = [[HUMatterConnectedServicesItemModule alloc] initWithItemUpdater:self home:homeCopy];
  [(HUEditLocationItemManager *)self setConnectedServicesItemModule:v7];

  if (![(HUEditLocationItemManager *)self _isCurrentUserRestrictedGuest])
  {
    notificationSettingsModule = [(HUEditLocationItemManager *)self notificationSettingsModule];
    [v5 addObject:notificationSettingsModule];
  }

  if (![(HUEditLocationItemManager *)self _isCurrentUserRestrictedGuest])
  {
    connectedServicesItemModule = [(HUEditLocationItemManager *)self connectedServicesItemModule];
    [v5 addObject:connectedServicesItemModule];
  }

  return v5;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v182[6] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  emptyItem = [MEMORY[0x277D14B38] emptyItem];
  [(HUEditLocationItemManager *)self setNameItem:emptyItem];

  _inviteUsersItemAllowed = [(HUEditLocationItemManager *)self _inviteUsersItemAllowed];
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
  mEMORY[0x277D14808] = [MEMORY[0x277D14808] sharedDispatcher];
  v12 = [v10 numberWithInt:{objc_msgSend(mEMORY[0x277D14808], "isUsingiCloud") ^ 1}];
  v182[2] = v12;
  v179 = *MEMORY[0x277D13FB8];
  v13 = v179;
  v14 = [MEMORY[0x277CCABB0] numberWithInt:!_inviteUsersItemAllowed];
  v15 = *MEMORY[0x277D13EA0];
  v182[3] = v14;
  v182[4] = @"plus";
  v16 = *MEMORY[0x277D13DA8];
  v180 = v15;
  v181 = v16;
  v17 = MEMORY[0x277CBEB98];
  home = [(HFItemManager *)self home];
  v19 = [v17 na_setWithSafeObject:home];
  v182[5] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v182 forKeys:v178 count:6];
  v21 = [v6 initWithResults:v20];
  [(HUEditLocationItemManager *)self setInviteUsersItem:v21];

  v22 = [HURestrictedGuestScheduleItem alloc];
  home2 = [(HFItemManager *)self home];
  home3 = [(HFItemManager *)self home];
  currentUser = [home3 currentUser];
  v26 = [(HURestrictedGuestScheduleItem *)v22 initWithHome:home2 user:currentUser];
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
  [homeCopy hf_showPredictedScenesOnDashboard];
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
  home4 = [(HFItemManager *)self home];
  v59 = [(HUSoftwareUpdateSettingsItem *)v57 initWithHome:home4];
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
  home5 = [(HFItemManager *)self home];
  v66 = [(HUSiriTriggerPhraseSettingItem *)v64 initWithHome:home5];
  [(HUEditLocationItemManager *)self setSiriTriggerPhraseSettingItem:v66];

  home6 = [(HFItemManager *)self home];
  accessories = [home6 accessories];
  v69 = [accessories na_any:&__block_literal_global_122_2];

  if (v69)
  {
    home7 = [(HFItemManager *)self home];
    hf_currentUserIsAdministrator = [home7 hf_currentUserIsAdministrator];

    v72 = hf_currentUserIsAdministrator ^ 1u;
  }

  else
  {
    v72 = 1;
  }

  v73 = HFLogForCategory();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    home8 = [(HFItemManager *)self home];
    hf_currentUserIsAdministrator2 = [home8 hf_currentUserIsAdministrator];
    *buf = 138412802;
    selfCopy = self;
    v160 = 1024;
    *v161 = v69;
    *&v161[4] = 1024;
    *&v161[6] = hf_currentUserIsAdministrator2;
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
  home9 = [(HFItemManager *)self home];
  [home9 isLocationServicesEnabled];
  v81 = [v79 numberWithInteger:HFPrimaryStateFromBOOL()];
  v167[4] = v81;
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v167 forKeys:v166 count:5];
  v83 = [v76 initWithResults:v82];
  [(HUEditLocationItemManager *)self setLocationServicesSettingItem:v83];

  nameItem = [(HUEditLocationItemManager *)self nameItem];
  v165[0] = nameItem;
  inviteUsersItem = [(HUEditLocationItemManager *)self inviteUsersItem];
  v165[1] = inviteUsersItem;
  wallpaperPickerItem = [(HUEditLocationItemManager *)self wallpaperPickerItem];
  v165[2] = wallpaperPickerItem;
  homeScheduleItem = [(HUEditLocationItemManager *)self homeScheduleItem];
  v165[3] = homeScheduleItem;
  showPredictedScenes = [(HUEditLocationItemManager *)self showPredictedScenes];
  v165[4] = showPredictedScenes;
  cameraItem = [(HUEditLocationItemManager *)self cameraItem];
  v165[5] = cameraItem;
  chooseWallpaperItem = [(HUEditLocationItemManager *)self chooseWallpaperItem];
  v165[6] = chooseWallpaperItem;
  wallpaperThumbnailItem = [(HUEditLocationItemManager *)self wallpaperThumbnailItem];
  v165[7] = wallpaperThumbnailItem;
  detailNotesItem = [(HUEditLocationItemManager *)self detailNotesItem];
  v165[8] = detailNotesItem;
  softwareUpdateItem = [(HUEditLocationItemManager *)self softwareUpdateItem];
  v165[9] = softwareUpdateItem;
  siriTriggerPhraseSettingItem = [(HUEditLocationItemManager *)self siriTriggerPhraseSettingItem];
  v165[10] = siriTriggerPhraseSettingItem;
  soundCheckItem = [(HUEditLocationItemManager *)self soundCheckItem];
  v165[11] = soundCheckItem;
  locationServicesSettingItem = [(HUEditLocationItemManager *)self locationServicesSettingItem];
  v165[12] = locationServicesSettingItem;
  removeItem = [(HUEditLocationItemManager *)self removeItem];
  v165[13] = removeItem;
  v138 = [MEMORY[0x277CBEA60] arrayWithObjects:v165 count:14];

  v93 = HFLogForCategory();
  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    selfCopy = "[HUEditLocationItemManager _buildItemProvidersForHome:]";
    _os_log_impl(&dword_20CEB6000, v93, OS_LOG_TYPE_DEFAULT, "(%s) Creating 'guests'", buf, 0xCu);
  }

  v94 = objc_alloc(MEMORY[0x277D14B38]);
  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 3221225472;
  v150[2] = __56__HUEditLocationItemManager__buildItemProvidersForHome___block_invoke_130;
  v150[3] = &unk_277DB8670;
  objc_copyWeak(&v152, &location);
  v95 = homeCopy;
  v151 = v95;
  v96 = [v94 initWithResultsBlock:v150];
  [(HUEditLocationItemManager *)self setGuestsItem:v96];

  home10 = [(HFItemManager *)self home];
  hf_accessoriesSupportingAccessCodes = [home10 hf_accessoriesSupportingAccessCodes];
  v99 = [hf_accessoriesSupportingAccessCodes count] == 0;

  if (v99)
  {
    home11 = [(HFItemManager *)self home];
    restrictedGuests = [home11 restrictedGuests];
    v100 = [restrictedGuests count] != 0;
  }

  else
  {
    v100 = 1;
  }

  v103 = HFLogForCategory();
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
    v104 = NSStringFromBOOL();
    home12 = [(HFItemManager *)self home];
    hf_accessoriesSupportingAccessCodes2 = [home12 hf_accessoriesSupportingAccessCodes];
    v107 = [hf_accessoriesSupportingAccessCodes2 count];
    home13 = [(HFItemManager *)self home];
    restrictedGuests2 = [home13 restrictedGuests];
    v110 = [restrictedGuests2 count];
    *buf = 136315906;
    selfCopy = "[HUEditLocationItemManager _buildItemProvidersForHome:]";
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
    guestsItem = [(HUEditLocationItemManager *)self guestsItem];
    v114 = [v112 setWithObject:guestsItem];
    v115 = [v111 initWithItems:v114];
    [(HUEditLocationItemManager *)self setNonBlockingItemProvider:v115];

    v116 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D13B88]];
    nonBlockingItemProvider = [(HUEditLocationItemManager *)self nonBlockingItemProvider];
    [nonBlockingItemProvider setClientInvalidationReasons:v116];
  }

  v118 = objc_alloc(MEMORY[0x277D14B40]);
  v119 = [MEMORY[0x277CBEB98] setWithArray:v138];
  v120 = [v118 initWithItems:v119];

  home14 = [(HFItemManager *)self home];
  home15 = [(HFItemManager *)self home];
  currentUser2 = [home15 currentUser];
  v124 = [home14 homeAccessControlForUser:currentUser2];

  restrictedGuestAccessSettings = [v124 restrictedGuestAccessSettings];
  accessAllowedToAccessories = [restrictedGuestAccessSettings accessAllowedToAccessories];
  v127 = objc_alloc(MEMORY[0x277D14290]);
  home16 = [(HFItemManager *)self home];
  v129 = [v127 initWithHome:home16];
  [(HUEditLocationItemManager *)self setAllowedAccessoryCategoryItemProvider:v129];

  v148[0] = MEMORY[0x277D85DD0];
  v148[1] = 3221225472;
  v148[2] = __56__HUEditLocationItemManager__buildItemProvidersForHome___block_invoke_159;
  v148[3] = &unk_277DB8B00;
  v130 = accessAllowedToAccessories;
  v149 = v130;
  allowedAccessoryCategoryItemProvider = [(HUEditLocationItemManager *)self allowedAccessoryCategoryItemProvider];
  [allowedAccessoryCategoryItemProvider setFilter:v148];

  v132 = [objc_alloc(MEMORY[0x277D14CA0]) initWithHome:v95];
  [v132 setIncludeCurrentUser:1];
  [(HUEditLocationItemManager *)self setUserItemProvider:v132];
  v133 = [objc_alloc(MEMORY[0x277D148F8]) initWithHome:v95];
  [v133 setFilter:&__block_literal_global_168_1];
  [(HUEditLocationItemManager *)self setInviteItemProvider:v133];
  v134 = [MEMORY[0x277CBEB18] arrayWithObjects:{v120, v132, v133, 0}];
  nonBlockingItemProvider2 = [(HUEditLocationItemManager *)self nonBlockingItemProvider];
  [v134 na_safeAddObject:nonBlockingItemProvider2];

  allowedAccessoryCategoryItemProvider2 = [(HUEditLocationItemManager *)self allowedAccessoryCategoryItemProvider];
  [v134 na_safeAddObject:allowedAccessoryCategoryItemProvider2];

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
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  if (hasOptedToHH2)
  {
    home = [(HFItemManager *)self home];
    residentDevices = [home residentDevices];
    v8 = [residentDevices count] != 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    home2 = [(HFItemManager *)self home];
    residentDevices2 = [home2 residentDevices];
    v13 = 136315906;
    v14 = "[HUEditLocationItemManager _inviteUsersItemAllowed]";
    v15 = 1024;
    v16 = hasOptedToHH2;
    v17 = 1024;
    v18 = v8;
    v19 = 2048;
    v20 = [residentDevices2 count];
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%s hasOptedToHH2 = %{BOOL}d, shouldShowInviteUsersItem = %{BOOL}d, residentDevices.count = %ld", &v13, 0x22u);
  }

  return v8;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  homeBuilder = [(HUEditLocationItemManager *)self homeBuilder];
  home = [homeBuilder home];
  v5 = [v2 futureWithResult:home];

  return v5;
}

- (id)_itemsToHideInSet:(id)set
{
  v28.receiver = self;
  v28.super_class = HUEditLocationItemManager;
  v4 = [(HFItemManager *)&v28 _itemsToHideInSet:set];
  v5 = [v4 mutableCopy];

  home = [(HFItemManager *)self home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  if ((hf_currentUserIsAdministrator & 1) == 0)
  {
    inviteUsersItem = [(HUEditLocationItemManager *)self inviteUsersItem];
    [v5 addObject:inviteUsersItem];

    homeBuilder = [(HUEditLocationItemManager *)self homeBuilder];
    userNotes = [homeBuilder userNotes];
    v11 = [userNotes length];

    if (!v11)
    {
      detailNotesItem = [(HUEditLocationItemManager *)self detailNotesItem];
      [v5 addObject:detailNotesItem];
    }
  }

  mEMORY[0x277D14808] = [MEMORY[0x277D14808] sharedDispatcher];
  isUsingiCloud = [mEMORY[0x277D14808] isUsingiCloud];

  if (!isUsingiCloud || [(HUEditLocationItemManager *)self _isCurrentUserRestrictedGuest])
  {
    userItemProvider = [(HUEditLocationItemManager *)self userItemProvider];
    items = [userItemProvider items];
    [v5 unionSet:items];

    guestsItem = [(HUEditLocationItemManager *)self guestsItem];
    [v5 addObject:guestsItem];

    inviteItemProvider = [(HUEditLocationItemManager *)self inviteItemProvider];
    items2 = [inviteItemProvider items];
    [v5 unionSet:items2];
  }

  if ([(HUEditLocationItemManager *)self _isCurrentUserRestrictedGuest])
  {
    showPredictedScenes = [(HUEditLocationItemManager *)self showPredictedScenes];
    [v5 addObject:showPredictedScenes];
  }

  if ([(HUEditLocationItemManager *)self context]== 1)
  {
    wallpaperPickerItem = [(HUEditLocationItemManager *)self wallpaperPickerItem];
    [v5 addObject:wallpaperPickerItem];

    showPredictedScenes2 = [(HUEditLocationItemManager *)self showPredictedScenes];
    [v5 na_safeAddObject:showPredictedScenes2];

    cameraItem = [(HUEditLocationItemManager *)self cameraItem];
    [v5 addObject:cameraItem];

    chooseWallpaperItem = [(HUEditLocationItemManager *)self chooseWallpaperItem];
    [v5 addObject:chooseWallpaperItem];

    wallpaperThumbnailItem = [(HUEditLocationItemManager *)self wallpaperThumbnailItem];
    [v5 addObject:wallpaperThumbnailItem];
  }

  if ([MEMORY[0x277D14CE8] isRunningInStoreDemoMode])
  {
    removeItem = [(HUEditLocationItemManager *)self removeItem];
    [v5 addObject:removeItem];
  }

  return v5;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v113[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationNameSectionIdentifier"];
  v6 = _HULocalizedStringWithDefaultValue(@"HUEditLocationNameSectionTitle", @"HUEditLocationNameSectionTitle", 1);
  [v5 setHeaderTitle:v6];

  nameItem = [(HUEditLocationItemManager *)self nameItem];
  v113[0] = nameItem;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:1];
  [v5 setItems:v8];

  v98 = v5;
  [v4 addObject:v5];
  v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUScheduleSectionIdentifier"];
  homeScheduleItem = [(HUEditLocationItemManager *)self homeScheduleItem];
  v112 = homeScheduleItem;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:1];
  [v9 setItems:v11];

  v12 = HFLocalizedString();
  [v9 setHeaderTitle:v12];

  v13 = _HULocalizedStringWithDefaultValue(@"HURestrictedGuestScheduleItem_HomeSettings_FooterTitle", @"HURestrictedGuestScheduleItem_HomeSettings_FooterTitle", 1);
  [v9 setFooterTitle:v13];

  v97 = v9;
  [v4 addObject:v9];
  v14 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUAllowedAccessoriesSectionIdentifier"];
  allowedAccessoryCategoryItemProvider = [(HUEditLocationItemManager *)self allowedAccessoryCategoryItemProvider];
  items = [allowedAccessoryCategoryItemProvider items];
  allObjects = [items allObjects];
  defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
  v19 = [allObjects sortedArrayUsingComparator:defaultItemComparator];
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

  userItemProvider = [(HUEditLocationItemManager *)self userItemProvider];
  items2 = [userItemProvider items];
  inviteItemProvider = [(HUEditLocationItemManager *)self inviteItemProvider];
  items3 = [inviteItemProvider items];
  v28 = [items2 setByAddingObjectsFromSet:items3];
  allObjects2 = [v28 allObjects];

  defaultItemComparator2 = [MEMORY[0x277D14778] defaultItemComparator];
  v94 = allObjects2;
  v31 = [allObjects2 sortedArrayUsingComparator:defaultItemComparator2];
  v111[0] = v31;
  guestsItem = [(HUEditLocationItemManager *)self guestsItem];
  v111[1] = guestsItem;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:2];
  na_arrayByFlattening = [v33 na_arrayByFlattening];
  [v21 setItems:na_arrayByFlattening];

  if ([(HUEditLocationItemManager *)self _inviteUsersItemAllowed])
  {
    items4 = [v21 items];
    v110[0] = items4;
    inviteUsersItem = [(HUEditLocationItemManager *)self inviteUsersItem];
    v110[1] = inviteUsersItem;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:2];
    na_arrayByFlattening2 = [v37 na_arrayByFlattening];
    [v21 setItems:na_arrayByFlattening2];
  }

  v95 = v21;
  [v4 addObject:v21];
  notificationSettingsModule = [(HUEditLocationItemManager *)self notificationSettingsModule];
  v40 = [notificationSettingsModule buildSectionsWithDisplayedItems:itemsCopy];
  [v4 addObjectsFromArray:v40];

  v41 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationSiriTriggerPhraseSectionIdentifier"];
  siriTriggerPhraseSettingItem = [(HUEditLocationItemManager *)self siriTriggerPhraseSettingItem];
  v109 = siriTriggerPhraseSettingItem;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v109 count:1];
  [v41 setItems:v43];

  v93 = v41;
  [v4 addObject:v41];
  v44 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationSoftwareUpdateSectionIdentifier"];
  home = [(HFItemManager *)self home];
  v46 = [HUSoftwareUpdateSettingsItem footerTitleForHome:home];
  [v44 setFooterTitle:v46];

  softwareUpdateItem = [(HUEditLocationItemManager *)self softwareUpdateItem];
  v108 = softwareUpdateItem;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v108 count:1];
  [v44 setItems:v48];

  v92 = v44;
  [v4 addObject:v44];
  connectedServicesItemModule = [(HUEditLocationItemManager *)self connectedServicesItemModule];
  v50 = [connectedServicesItemModule buildSectionsWithDisplayedItems:itemsCopy];
  [v4 addObjectsFromArray:v50];

  soundCheckItem = [(HUEditLocationItemManager *)self soundCheckItem];
  LODWORD(v50) = [itemsCopy containsObject:soundCheckItem];

  if (v50)
  {
    v52 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationSoundCheckSectionIdentifier"];
    v53 = _HULocalizedStringWithDefaultValue(@"HUHomeMediaSettingSection_Title", @"HUHomeMediaSettingSection_Title", 1);
    [v52 setHeaderTitle:v53];

    soundCheckItem2 = [(HUEditLocationItemManager *)self soundCheckItem];
    v107 = soundCheckItem2;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
    [v52 setItems:v55];

    [v4 addObject:v52];
  }

  v56 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationScenesSectionIdentifier"];
  v57 = MEMORY[0x277CBEA60];
  showPredictedScenes = [(HUEditLocationItemManager *)self showPredictedScenes];
  v59 = [v57 na_arrayWithSafeObject:showPredictedScenes];
  [v56 setItems:v59];

  v60 = _HULocalizedStringWithDefaultValue(@"HUEditLocationScenesSectionTitle", @"HUEditLocationScenesSectionTitle", 1);
  v91 = v56;
  [v56 setHeaderTitle:v60];

  [v4 addObject:v56];
  v61 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationWallpaperSectionIdentifier"];
  v62 = _HULocalizedStringWithDefaultValue(@"HUEditLocationWallpaperSectionTitle", @"HUEditLocationWallpaperSectionTitle", 1);
  [v61 setHeaderTitle:v62];

  cameraItem = [(HUEditLocationItemManager *)self cameraItem];
  v106[0] = cameraItem;
  chooseWallpaperItem = [(HUEditLocationItemManager *)self chooseWallpaperItem];
  v106[1] = chooseWallpaperItem;
  wallpaperThumbnailItem = [(HUEditLocationItemManager *)self wallpaperThumbnailItem];
  v106[2] = wallpaperThumbnailItem;
  wallpaperPickerItem = [(HUEditLocationItemManager *)self wallpaperPickerItem];
  v106[3] = wallpaperPickerItem;
  v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:4];
  [v61 setItems:v67];

  [v4 addObject:v61];
  v68 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationDetailsSectionIdentifier"];
  v69 = _HULocalizedStringWithDefaultValue(@"HUEditLocationDetailsSectionTitle", @"HUEditLocationDetailsSectionTitle", 1);
  [v68 setHeaderTitle:v69];

  v70 = _HULocalizedStringWithDefaultValue(@"HUEditLocationDetailsFooterTitle", @"HUEditLocationDetailsFooterTitle", 1);
  [v68 setFooterTitle:v70];

  detailNotesItem = [(HUEditLocationItemManager *)self detailNotesItem];
  v105 = detailNotesItem;
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
  locationPrivacyURL = [MEMORY[0x277D14C80] locationPrivacyURL];
  v104 = locationPrivacyURL;
  v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
  v81 = [v78 initWithString:v74 attributes:v80];
  [v77 appendAttributedString:v81];

  v82 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HULocationServicesSectionIdentifier"];
  v83 = _HULocalizedStringWithDefaultValue(@"HUAccessoryLocationSectionTitle", @"HUAccessoryLocationSectionTitle", 1);
  [v82 setHeaderTitle:v83];

  [v82 setAttributedFooterTitle:v77];
  locationServicesSettingItem = [(HUEditLocationItemManager *)self locationServicesSettingItem];
  v102 = locationServicesSettingItem;
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
  [v82 setItems:v85];

  [v4 addObject:v82];
  v86 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditLocationRemoveSectionIdentifier"];
  removeItem = [(HUEditLocationItemManager *)self removeItem];
  v101 = removeItem;
  v88 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
  [v86 setItems:v88];

  [v4 addObject:v86];
  v89 = [MEMORY[0x277D14778] filterSections:v4 toDisplayedItems:itemsCopy];

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
  home = [(HFItemManager *)self home];
  home2 = [(HFItemManager *)self home];
  currentUser = [home2 currentUser];
  v6 = [home hf_userIsRestrictedGuest:currentUser];

  return v6;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUEditLocationItemManager;
  [(HFItemManager *)&v4 _registerForExternalUpdates];
  pinCodeManager = [(HUEditLocationItemManager *)self pinCodeManager];
  [pinCodeManager addObserver:self];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUEditLocationItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  pinCodeManager = [(HUEditLocationItemManager *)self pinCodeManager];
  [pinCodeManager removeObserver:self];
}

- (void)pinCodeManagerDidUpdate:(id)update pinCodes:(id)codes
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Reloading PIN Code related items...", buf, 0x16u);
  }

  nonBlockingItemProvider = [(HUEditLocationItemManager *)self nonBlockingItemProvider];

  if (nonBlockingItemProvider)
  {
    nonBlockingItemProvider2 = [(HUEditLocationItemManager *)self nonBlockingItemProvider];
    v12 = nonBlockingItemProvider2;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    v11 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:v10 senderSelector:a2];
  }
}

@end