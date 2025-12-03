@interface HUEditUserItemManager
- (BOOL)_canModifyUserBeingEditedPermissions;
- (BOOL)_hasPendingAccessories;
- (BOOL)_hasPersonalRequestsDevice;
- (BOOL)_hasResidentDevice;
- (BOOL)_hasTVViewingProfilesDevice;
- (BOOL)_isEditingAllowedForUser:(id)user;
- (BOOL)_isPersonalRequestsEnabledForUser;
- (BOOL)_isRemoteAccessAllowedForUser:(id)user;
- (BOOL)_isTVViewingProfilesEnabledForUser;
- (BOOL)_isUserOwner:(id)owner;
- (BOOL)_isVoiceIDEnabled:(id)enabled;
- (BOOL)isUserBeingEditedTheDeviceUser;
- (HMUser)userBeingEdited;
- (HUEditUserItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUEditUserItemManager)initWithHome:(id)home userItem:(id)item delegate:(id)delegate;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_createAccessLevelSectionUsing:(id)using;
- (id)_createAccessorySectionUsing:(id)using;
- (id)_createAllowEditingSectionUsing:(id)using;
- (id)_createAllowedAccessoriesSectionUsing:(id)using;
- (id)_createAppleTVProfileSectionUsing:(id)using;
- (id)_createLocalAccessSectionUsing:(id)using;
- (id)_createPendingAccessoriesSectionUsing:(id)using;
- (id)_createRemoveUserLeaveHomeSectionUsing:(id)using;
- (id)_homeFuture;
- (id)_itemsToHideInSet:(id)set;
- (id)reuseIdentifierForFooterViewInSection:(unint64_t)section;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
- (void)_updateSiriSectionFooterForSection:(id)section;
@end

@implementation HUEditUserItemManager

- (HUEditUserItemManager)initWithHome:(id)home userItem:(id)item delegate:(id)delegate
{
  v21[12] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v19.receiver = self;
  v19.super_class = HUEditUserItemManager;
  v9 = [(HFItemManager *)&v19 initWithDelegate:delegate sourceItem:item];
  if (v9)
  {
    v10 = +[HULocationDeviceManager sharedInstance];
    locationDeviceManager = v9->_locationDeviceManager;
    v9->_locationDeviceManager = v10;

    [(HUEditUserItemManager *)v9 setHomeForUser:homeCopy];
    v21[0] = *MEMORY[0x277D139E8];
    v12 = v21[0];
    v21[1] = @"HUEditUserItemManager_PersonalRequestsSectionIdentifier";
    v21[2] = @"HUEditUserItemManager_TVViewingProfilesSectionIdentifier";
    v21[3] = @"HUMediaServiceSettingsItemModule_MediaServicesSectionIdentifier";
    v13 = *MEMORY[0x277D13988];
    v21[4] = @"HUMediaServiceSettingsItemModule_PrimaryServiceSectionIdentifier";
    v21[5] = v13;
    v21[6] = @"HUEditUserItemManager_UpdateListeningHistorySectionIdentifier";
    v21[7] = @"HUEditUserItemManager_EditingSectionIdentifier";
    v21[8] = @"HUEditUserItemManager_AccessSectionIdentifier";
    v21[9] = @"HUEditUserItemManager_AccessLevelSectionIdentifier";
    v21[10] = @"HUEditUserItemManager_AccessoriesSectionIdentifier";
    v21[11] = @"HUEditUserItemManager_ButtonSectionIdentifier";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:12];
    sectionOrderArrayWhenViewingSelf = v9->_sectionOrderArrayWhenViewingSelf;
    v9->_sectionOrderArrayWhenViewingSelf = v14;

    v20[0] = @"HUEditUserItemManager_EditingSectionIdentifier";
    v20[1] = @"HUEditUserItemManager_AccessSectionIdentifier";
    v20[2] = @"HUEditUserItemManager_AccessLevelSectionIdentifier";
    v20[3] = @"HUEditUserItemManager_AccessoriesSectionIdentifier";
    v20[4] = v12;
    v20[5] = @"HUEditUserItemManager_PersonalRequestsSectionIdentifier";
    v20[6] = @"HUEditUserItemManager_TVViewingProfilesSectionIdentifier";
    v20[7] = @"HUMediaServiceSettingsItemModule_MediaServicesSectionIdentifier";
    v20[8] = @"HUMediaServiceSettingsItemModule_PrimaryServiceSectionIdentifier";
    v20[9] = v13;
    v20[10] = @"HUEditUserItemManager_UpdateListeningHistorySectionIdentifier";
    v20[11] = @"HUEditUserItemManager_ButtonSectionIdentifier";
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:12];
    sectionOrderArrayWhenViewingOther = v9->_sectionOrderArrayWhenViewingOther;
    v9->_sectionOrderArrayWhenViewingOther = v16;
  }

  return v9;
}

- (HUEditUserItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_userItem_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUEditUserItemManager.m" lineNumber:159 description:{@"%s is unavailable; use %@ instead", "-[HUEditUserItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HMUser)userBeingEdited
{
  sourceItem = [(HFItemManager *)self sourceItem];
  user = [sourceItem user];

  return user;
}

- (id)reuseIdentifierForFooterViewInSection:(unint64_t)section
{
  v4 = [(HFItemManager *)self displayedSectionIdentifierForSectionIndex:section];
  if ([v4 isEqualToString:@"HUEditUserItemManager_AccessSectionIdentifier"] && !-[HUEditUserItemManager _hasResidentDevice](self, "_hasResidentDevice"))
  {
    v5 = @"HUAboutResidentDeviceFooterViewReuseIdentifier";
  }

  else
  {
    v5 = *MEMORY[0x277D13988];
    if (![v4 isEqualToString:*MEMORY[0x277D13988]])
    {
      v6 = 0;
      goto LABEL_7;
    }
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (BOOL)isUserBeingEditedTheDeviceUser
{
  userBeingEdited = [(HUEditUserItemManager *)self userBeingEdited];
  home = [(HFItemManager *)self home];
  currentUser = [home currentUser];
  v6 = [userBeingEdited isEqual:currentUser];

  return v6;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  homeForUser = [(HUEditUserItemManager *)self homeForUser];
  v4 = [v2 futureWithResult:homeForUser];

  return v4;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v170 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  objc_initWeak(&location, self);
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v96 = objc_opt_class();
    v97 = NSStringFromClass(v96);
    home = [(HFItemManager *)self home];
    currentUser = [home currentUser];
    hf_prettyDescription = [currentUser hf_prettyDescription];
    home2 = [(HFItemManager *)self home];
    currentUser2 = [home2 currentUser];
    name = [currentUser2 name];
    userBeingEdited = [(HUEditUserItemManager *)self userBeingEdited];
    userBeingEdited2 = [(HUEditUserItemManager *)self userBeingEdited];
    name2 = [userBeingEdited2 name];
    userBeingEdited3 = [(HUEditUserItemManager *)self userBeingEdited];
    v101 = [(HUEditUserItemManager *)self _isUserOwner:userBeingEdited3];
    userBeingEdited4 = [(HUEditUserItemManager *)self userBeingEdited];
    v103 = [(HUEditUserItemManager *)self _isEditingAllowedForUser:userBeingEdited4];
    _canModifyUserBeingEditedPermissions = [(HUEditUserItemManager *)self _canModifyUserBeingEditedPermissions];
    *buf = 138414082;
    selfCopy2 = v97;
    v156 = 2112;
    v157 = hf_prettyDescription;
    v158 = 2112;
    v159 = name;
    v160 = 2112;
    v161 = userBeingEdited;
    v162 = 2112;
    v163 = name2;
    v164 = 1024;
    v165 = v101;
    v166 = 1024;
    v167 = v103;
    v168 = 1024;
    v169 = _canModifyUserBeingEditedPermissions;
    _os_log_debug_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEBUG, "%@ Info:\n\tCurrent User: %@/%@\n\tUser Being Edited: %@/%@\n\tUBE is Owner: %{BOOL}d\n\tUBE is Admin: %{BOOL}d\n\tCU Can Modify User Permissions for UBE: %{BOOL}d", buf, 0x46u);
  }

  home3 = [(HFItemManager *)self home];
  userBeingEdited5 = [(HUEditUserItemManager *)self userBeingEdited];
  v8 = [home3 hf_userIsRestrictedGuest:userBeingEdited5];

  v9 = [HURestrictedGuestScheduleItem alloc];
  homeForUser = [(HUEditUserItemManager *)self homeForUser];
  userBeingEdited6 = [(HUEditUserItemManager *)self userBeingEdited];
  v12 = [(HURestrictedGuestScheduleItem *)v9 initWithHome:homeForUser user:userBeingEdited6];
  [(HUEditUserItemManager *)self setHomeScheduleItem:v12];

  v13 = [HUInstructionsItem alloc];
  v14 = _HULocalizedStringWithDefaultValue(@"HUUsersAccessWithoutRemoteCapability", @"HUUsersAccessWithoutRemoteCapability", 1);
  v15 = [(HUInstructionsItem *)v13 initWithStyle:5 title:0 description:v14];
  [(HUEditUserItemManager *)self setLocalAccessItem:v15];

  v16 = objc_alloc(MEMORY[0x277D14B38]);
  v146[0] = MEMORY[0x277D85DD0];
  v146[1] = 3221225472;
  v146[2] = __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke;
  v146[3] = &unk_277DB8A10;
  v146[4] = self;
  v147 = v8;
  v17 = [v16 initWithResultsBlock:v146];
  [(HUEditUserItemManager *)self setRemoteAccessItem:v17];

  LOBYTE(v12) = [(HUEditUserItemManager *)self _hasResidentDevice];
  v18 = [_HUUserAccessItem alloc];
  userBeingEdited7 = [(HUEditUserItemManager *)self userBeingEdited];
  v143[0] = MEMORY[0x277D85DD0];
  v143[1] = 3221225472;
  v143[2] = __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_2;
  v143[3] = &unk_277DB8E98;
  objc_copyWeak(&v144, &location);
  v145 = v8 & 1 | ((v12 & 1) == 0);
  v20 = [(_HUUserAccessItem *)v18 initWithUser:userBeingEdited7 resultsBlock:v143];
  [(HUEditUserItemManager *)self setAllowEditingItem:v20];

  v21 = [_HUUserAccessItem alloc];
  userBeingEdited8 = [(HUEditUserItemManager *)self userBeingEdited];
  v141[0] = MEMORY[0x277D85DD0];
  v141[1] = 3221225472;
  v141[2] = __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_3;
  v141[3] = &unk_277DB7448;
  objc_copyWeak(&v142, &location);
  v23 = [(_HUUserAccessItem *)v21 initWithUser:userBeingEdited8 resultsBlock:v141];
  [(HUEditUserItemManager *)self setCamerasItem:v23];

  homeForUser2 = [(HUEditUserItemManager *)self homeForUser];
  accessories = [homeForUser2 accessories];
  v26 = [accessories na_any:&__block_literal_global_28];

  if (!v26)
  {
    v30 = 1;
    goto LABEL_15;
  }

  home4 = [(HFItemManager *)self home];
  hasOnboardedForAccessCode = [home4 hasOnboardedForAccessCode];
  if ((hasOnboardedForAccessCode & 1) != 0 || (-[HFItemManager home](self, "home"), v26 = objc_claimAutoreleasedReturnValue(), [v26 hasOnboardedForWalletKey]))
  {
    if ([(HUEditUserItemManager *)self isUserBeingEditedTheDeviceUser])
    {
      hf_currentUserIsAdministrator = 1;
    }

    else
    {
      home5 = [(HFItemManager *)self home];
      hf_currentUserIsAdministrator = [home5 hf_currentUserIsAdministrator];
    }

    if (hasOnboardedForAccessCode)
    {
      goto LABEL_14;
    }
  }

  else
  {
    hf_currentUserIsAdministrator = 0;
  }

LABEL_14:
  v30 = hf_currentUserIsAdministrator ^ 1;
LABEL_15:
  v32 = objc_alloc(MEMORY[0x277D14B38]);
  v152[0] = *MEMORY[0x277D13F60];
  v33 = _HULocalizedStringWithDefaultValue(@"HUUsersLocksTitle", @"HUUsersLocksTitle", 1);
  v34 = *MEMORY[0x277D13DC8];
  v153[0] = v33;
  v153[1] = @"Home.Users.Locks.Title";
  v35 = *MEMORY[0x277D13E88];
  v152[1] = v34;
  v152[2] = v35;
  v36 = [MEMORY[0x277D14AC0] iconDescriptorForAccessoryCategoryOrServiceType:*MEMORY[0x277CCE890]];
  v153[2] = v36;
  v152[3] = *MEMORY[0x277D13FB8];
  v37 = [MEMORY[0x277CCABB0] numberWithInt:(v30 | v8) & 1];
  v152[4] = *MEMORY[0x277D13F10];
  v153[3] = v37;
  v153[4] = MEMORY[0x277CBEC28];
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v153 forKeys:v152 count:5];
  v39 = [v32 initWithResults:v38];
  [(HUEditUserItemManager *)self setLocksItem:v39];

  v40 = objc_alloc(MEMORY[0x277D14290]);
  home6 = [(HFItemManager *)self home];
  v123 = [v40 initWithHome:home6];

  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 3221225472;
  v138[2] = __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_5;
  v138[3] = &unk_277DB8EE8;
  objc_copyWeak(&v140, &location);
  v112 = homeCopy;
  v139 = v112;
  [v123 setFilter:v138];
  v42 = objc_alloc(MEMORY[0x277D14C38]);
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 3221225472;
  v136[2] = __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_7;
  v136[3] = &unk_277DB8F38;
  objc_copyWeak(&v137, &location);
  v43 = [v42 initWithSourceProvider:v123 transformationBlock:v136];
  [(HUEditUserItemManager *)self setAllowedAccessoryCategoryItemProvider:v43];

  v44 = [_HUUserAccessItem alloc];
  userBeingEdited9 = [(HUEditUserItemManager *)self userBeingEdited];
  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_10;
  v134[3] = &unk_277DB8F60;
  objc_copyWeak(v135, &location);
  v135[1] = a2;
  v46 = [(_HUUserAccessItem *)v44 initWithUser:userBeingEdited9 resultsBlock:v134];
  [(HUEditUserItemManager *)self setPersonalRequestsItem:v46];

  if ([(HUEditUserItemManager *)self _hasTVViewingProfilesDevice])
  {
    home7 = [(HFItemManager *)self home];
    userBeingEdited10 = [(HUEditUserItemManager *)self userBeingEdited];
    if ([home7 hf_canShowTvViewingInfoForUser:userBeingEdited10])
    {
      if ([(HUEditUserItemManager *)self isUserBeingEditedTheDeviceUser])
      {
        v49 = 1;
      }

      else
      {
        home8 = [(HFItemManager *)self home];
        currentUser3 = [home8 currentUser];
        v49 = [(HUEditUserItemManager *)self _isUserOwner:currentUser3];
      }
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v49 = 0;
  }

  isUserBeingEditedTheDeviceUser = [(HUEditUserItemManager *)self isUserBeingEditedTheDeviceUser];
  v53 = HFLogForCategory();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    v105 = NSStringFromSelector(a2);
    v106 = v105;
    v107 = @"HIDDEN";
    if (v49)
    {
      v107 = @"not hidden";
    }

    v108 = @"disabled";
    *buf = 138413058;
    selfCopy2 = self;
    v159 = v107;
    v156 = 2112;
    v157 = v105;
    v158 = 2112;
    if (isUserBeingEditedTheDeviceUser)
    {
      v108 = @"not disabled";
    }

    v160 = 2112;
    v161 = v108;
    _os_log_debug_impl(&dword_20CEB6000, v53, OS_LOG_TYPE_DEBUG, "%@:%@  TV Viewing Profiles is %@ / %@", buf, 0x2Au);
  }

  v54 = [_HUUserAccessItem alloc];
  userBeingEdited11 = [(HUEditUserItemManager *)self userBeingEdited];
  v130[0] = MEMORY[0x277D85DD0];
  v130[1] = 3221225472;
  v130[2] = __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_106;
  v130[3] = &unk_277DB8B98;
  objc_copyWeak(&v131, &location);
  v132 = v49;
  v133 = !isUserBeingEditedTheDeviceUser;
  v56 = [(_HUUserAccessItem *)v54 initWithUser:userBeingEdited11 resultsBlock:v130];
  [(HUEditUserItemManager *)self setTvViewingProfilesItem:v56];

  v57 = [_HUUserAccessItem alloc];
  userBeingEdited12 = [(HUEditUserItemManager *)self userBeingEdited];
  v128[0] = MEMORY[0x277D85DD0];
  v128[1] = 3221225472;
  v128[2] = __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_2_110;
  v128[3] = &unk_277DB7448;
  objc_copyWeak(&v129, &location);
  v59 = [(_HUUserAccessItem *)v57 initWithUser:userBeingEdited12 resultsBlock:v128];
  [(HUEditUserItemManager *)self setRemoveItem:v59];

  v60 = [_HUUserAccessItem alloc];
  userBeingEdited13 = [(HUEditUserItemManager *)self userBeingEdited];
  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_3_120;
  v126[3] = &unk_277DB7448;
  objc_copyWeak(&v127, &location);
  v62 = [(_HUUserAccessItem *)v60 initWithUser:userBeingEdited13 resultsBlock:v126];
  [(HUEditUserItemManager *)self setPendingAccessoriesItem:v62];

  if (-[HUEditUserItemManager isUserBeingEditedTheDeviceUser](self, "isUserBeingEditedTheDeviceUser") || (-[HFItemManager home](self, "home"), v63 = objc_claimAutoreleasedReturnValue(), [v63 currentUser], v64 = objc_claimAutoreleasedReturnValue(), v65 = -[HUEditUserItemManager _isUserOwner:](self, "_isUserOwner:", v64), v64, v63, v65))
  {
    sourceItem = [(HFItemManager *)self sourceItem];
    hasValidSettings = [sourceItem hasValidSettings];

    if (hasValidSettings)
    {
      v68 = [HUAccessorySettingsItemModule alloc];
      sourceItem2 = [(HFItemManager *)self sourceItem];
      v150 = *MEMORY[0x277D14258];
      v151 = MEMORY[0x277CBEC38];
      v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
      v71 = [(HUAccessorySettingsItemModule *)v68 initWithItemUpdater:self homeKitSettingsVendor:sourceItem2 usageOptions:v70];
      [(HUEditUserItemManager *)self setUserSettingsItemModule:v71];
    }

    else
    {
      sourceItem2 = HFLogForCategory();
      if (os_log_type_enabled(sourceItem2, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        selfCopy2 = "[HUEditUserItemManager _buildItemProvidersForHome:]";
        _os_log_error_impl(&dword_20CEB6000, sourceItem2, OS_LOG_TYPE_ERROR, "(%s) CAN'T ACCESS USER BASED SETTINGS: The user's settings can't be accessed because hasValidSettings == NO", buf, 0xCu);
      }
    }
  }

  else
  {
    sourceItem2 = HFLogForCategory();
    if (os_log_type_enabled(sourceItem2, OS_LOG_TYPE_DEBUG))
    {
      v109 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy2 = self;
      v156 = 2112;
      v157 = v109;
      _os_log_debug_impl(&dword_20CEB6000, sourceItem2, OS_LOG_TYPE_DEBUG, "%@:%@  Not Displaying HMSettings based controls because current user is not permitted", buf, 0x16u);
    }
  }

  v72 = objc_alloc(MEMORY[0x277D14B38]);
  v125[0] = MEMORY[0x277D85DD0];
  v125[1] = 3221225472;
  v125[2] = __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_122;
  v125[3] = &unk_277DB7478;
  v125[4] = self;
  v73 = [v72 initWithResultsBlock:v125];
  [(HUEditUserItemManager *)self setUpdateListeningHistoryItem:v73];

  if ([(HUEditUserItemManager *)self shouldShowMediaServicesSection])
  {
    v74 = [HUMediaServiceSettingsItemModule alloc];
    home9 = [(HFItemManager *)self home];
    v76 = [(HUMediaServiceSettingsItemModule *)v74 initWithItemUpdater:self home:home9];
    [(HUEditUserItemManager *)self setMediaServiceItemModule:v76];
  }

  v114 = objc_alloc(MEMORY[0x277CBEB58]);
  aSelectora = [(HUEditUserItemManager *)self homeScheduleItem];
  v149[0] = aSelectora;
  localAccessItem = [(HUEditUserItemManager *)self localAccessItem];
  v149[1] = localAccessItem;
  remoteAccessItem = [(HUEditUserItemManager *)self remoteAccessItem];
  v149[2] = remoteAccessItem;
  allowEditingItem = [(HUEditUserItemManager *)self allowEditingItem];
  v149[3] = allowEditingItem;
  camerasItem = [(HUEditUserItemManager *)self camerasItem];
  v149[4] = camerasItem;
  locksItem = [(HUEditUserItemManager *)self locksItem];
  v149[5] = locksItem;
  personalRequestsItem = [(HUEditUserItemManager *)self personalRequestsItem];
  v149[6] = personalRequestsItem;
  tvViewingProfilesItem = [(HUEditUserItemManager *)self tvViewingProfilesItem];
  v149[7] = tvViewingProfilesItem;
  updateListeningHistoryItem = [(HUEditUserItemManager *)self updateListeningHistoryItem];
  v149[8] = updateListeningHistoryItem;
  removeItem = [(HUEditUserItemManager *)self removeItem];
  v149[9] = removeItem;
  pendingAccessoriesItem = [(HUEditUserItemManager *)self pendingAccessoriesItem];
  v149[10] = pendingAccessoriesItem;
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:11];
  v115 = [v114 initWithArray:v85];

  v86 = MEMORY[0x277CBEB58];
  v87 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v115];
  v88 = [v86 setWithObject:v87];

  allowedAccessoryCategoryItemProvider = [(HUEditUserItemManager *)self allowedAccessoryCategoryItemProvider];
  [v88 na_safeAddObject:allowedAccessoryCategoryItemProvider];

  userSettingsItemModule = [(HUEditUserItemManager *)self userSettingsItemModule];
  itemProviders = [userSettingsItemModule itemProviders];
  [v88 unionSet:itemProviders];

  mediaServiceItemModule = [(HUEditUserItemManager *)self mediaServiceItemModule];
  itemProviders2 = [mediaServiceItemModule itemProviders];
  [v88 unionSet:itemProviders2];

  allObjects = [v88 allObjects];

  objc_destroyWeak(&v127);
  objc_destroyWeak(&v129);
  objc_destroyWeak(&v131);
  objc_destroyWeak(v135);
  objc_destroyWeak(&v137);

  objc_destroyWeak(&v140);
  objc_destroyWeak(&v142);
  objc_destroyWeak(&v144);
  objc_destroyWeak(&location);

  return allObjects;
}

id __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _canModifyUserBeingEditedPermissions];
  [*(a1 + 32) _hasResidentDevice];
  if ([*(a1 + 32) _hasResidentDevice])
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 1;
  }

  v4 = MEMORY[0x277D2C900];
  v14[0] = *MEMORY[0x277D13FB8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v3 & 1];
  v15[0] = v5;
  v14[1] = *MEMORY[0x277D13F60];
  v6 = _HULocalizedStringWithDefaultValue(@"HUUsersCellControlAccessRemotely", @"HUUsersCellControlAccessRemotely", 1);
  v15[1] = v6;
  v14[2] = *MEMORY[0x277D13E20];
  v7 = *(a1 + 32);
  v8 = [v7 userBeingEdited];
  [v7 _isRemoteAccessAllowedForUser:v8];
  v9 = HFLocalizedString();
  v15[2] = v9;
  v14[3] = *MEMORY[0x277D13EA8];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v2 ^ 1u];
  v15[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v12 = [v4 futureWithResult:v11];

  return v12;
}

id __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1)
{
  v18[5] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _canModifyUserBeingEditedPermissions];
  v4 = MEMORY[0x277D2C900];
  v17[0] = *MEMORY[0x277D13FB8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v18[0] = v5;
  v17[1] = *MEMORY[0x277D13F60];
  v6 = _HULocalizedStringWithDefaultValue(@"HUUsersCellAllowEditing", @"HUUsersCellAllowEditing", 1);
  v7 = *MEMORY[0x277D13F68];
  v18[1] = v6;
  v18[2] = @"HUUsersCellAllowEditing";
  v8 = *MEMORY[0x277D14068];
  v17[2] = v7;
  v17[3] = v8;
  v9 = MEMORY[0x277CCABB0];
  v10 = [WeakRetained userBeingEdited];
  if ([WeakRetained _isEditingAllowedForUser:v10])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = [v9 numberWithInteger:v11];
  v18[3] = v12;
  v17[4] = *MEMORY[0x277D13EA8];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v3 ^ 1u];
  v18[4] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v15 = [v4 futureWithResult:v14];

  return v15;
}

id __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_3(uint64_t a1)
{
  v22[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained home];
  v3 = [WeakRetained userBeingEdited];
  v4 = [v2 homeAccessControlForUser:v3];
  [v4 camerasAccessLevel];
  v5 = HFLocalizedStringFromHMUserCameraAccessLevel();

  v6 = [WeakRetained home];
  v7 = [v6 hf_allCameraProfiles];
  if ([v7 count])
  {
    v8 = [WeakRetained home];
    v9 = [v8 hf_hasCameraRecordingResident] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = &stru_2823E0EE8;
  }

  v11 = [WeakRetained home];
  v12 = [WeakRetained userBeingEdited];
  v13 = [v11 hf_userIsRestrictedGuest:v12];

  v14 = MEMORY[0x277D2C900];
  v21[0] = *MEMORY[0x277D13FB8];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:(v13 | v9) & 1];
  v22[0] = v15;
  v21[1] = *MEMORY[0x277D13F60];
  v16 = _HULocalizedStringWithDefaultValue(@"HUUsersCamerasTitle", @"HUUsersCamerasTitle", 1);
  v22[1] = v16;
  v21[2] = *MEMORY[0x277D13E88];
  v17 = [MEMORY[0x277D14AC0] iconDescriptorForAccessoryCategoryOrServiceType:*MEMORY[0x277CCE8B8]];
  v21[3] = *MEMORY[0x277D13E20];
  v22[2] = v17;
  v22[3] = v10;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v19 = [v14 futureWithResult:v18];

  return v19;
}

uint64_t __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 hf_categoryOrPrimaryServiceType];
  if ([v3 isEqualToString:*MEMORY[0x277CCE890]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 hf_categoryOrPrimaryServiceType];
    v4 = [v5 isEqualToString:*MEMORY[0x277CD0EB0]];
  }

  return v4;
}

uint64_t __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained home];
  if ([v5 hf_currentUserIsAdministrator])
  {
    v6 = [WeakRetained home];
    v7 = [WeakRetained userBeingEdited];
    v8 = [v6 hf_userIsRestrictedGuest:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x277CD1680] hf_compatibleServiceTypesForCategoryType:v3];

  v10 = [*(a1 + 32) accessories];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_6;
  v17[3] = &unk_277DB8EC0;
  v11 = v9;
  v18 = v11;
  v12 = [v10 na_any:v17];

  v13 = 0;
  if (v8 && v12)
  {
    v14 = MEMORY[0x277CD1D80];
    v15 = [v11 allObjects];
    v13 = [v14 doesAccessoryHaveRestrictedGuestCapableServiceTypes:v15];
  }

  return v13;
}

uint64_t __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 hf_primaryService];
  v4 = [v3 serviceType];
  v5 = [v2 na_safeContainsObject:v4];

  return v5;
}

id __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = objc_alloc(MEMORY[0x277D14C30]);
  v9 = [v7 copy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_8;
  v13[3] = &unk_277DB8F10;
  v13[4] = WeakRetained;
  v14 = v7;
  v10 = v7;
  v11 = [v8 initWithSourceItem:v9 transformationBlock:v13];

  return v11;
}

id __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) home];
  v5 = [*(a1 + 32) userBeingEdited];
  v6 = [v4 homeAccessControlForUser:v5];

  v7 = [v6 restrictedGuestAccessSettings];
  v8 = [v7 accessAllowedToAccessories];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_9;
  v19[3] = &unk_277DB8EC0;
  v20 = *(a1 + 40);
  v9 = [v8 na_filter:v19];
  v10 = [v9 count];

  if (v10)
  {
    HULocalizedStringWithFormat(@"HURestrictedGuestScheduleUserSettings_AccessoryCategory_AllowedCount_Description", @"%lu", v11, v12, v13, v14, v15, v16, v10);
  }

  else
  {
    _HULocalizedStringWithDefaultValue(@"HURestrictedGuestScheduleUserSettings_AccessoryCategory_AllowedNone_Description", @"HURestrictedGuestScheduleUserSettings_AccessoryCategory_AllowedNone_Description", 1);
  }
  v17 = ;
  [v3 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13E20]];

  return v3;
}

uint64_t __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1680];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 categoryType];
  v6 = [v2 hf_compatibleServiceTypesForCategoryType:v5];
  v7 = [v4 hf_primaryService];

  v8 = [v7 serviceType];
  v9 = [v6 na_safeContainsObject:v8];

  return v9;
}

id __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_10(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _hasPersonalRequestsDevice])
  {
    if ([WeakRetained isUserBeingEditedTheDeviceUser])
    {
      v3 = 1;
    }

    else
    {
      v4 = [WeakRetained home];
      v5 = [v4 currentUser];
      v3 = [WeakRetained _isUserOwner:v5];
    }
  }

  else
  {
    v3 = 0;
  }

  if ([WeakRetained isUserBeingEditedTheDeviceUser])
  {
    v6 = [MEMORY[0x277D14CE8] isAMac];
  }

  else
  {
    v6 = 1;
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v16 = NSStringFromSelector(*(a1 + 40));
    v17 = v16;
    v18 = @"HIDDEN";
    if (v3)
    {
      v18 = @"not hidden";
    }

    v19 = @"not disabled";
    *buf = 138413058;
    v23 = WeakRetained;
    v27 = v18;
    v24 = 2112;
    v25 = v16;
    v26 = 2112;
    if (v6)
    {
      v19 = @"disabled";
    }

    v28 = 2112;
    v29 = v19;
    _os_log_debug_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEBUG, "%@:%@  Personal Requests is %@ / %@", buf, 0x2Au);
  }

  v8 = MEMORY[0x277D2C900];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:{v3 ^ 1u, *MEMORY[0x277D13FB8]}];
  v21[0] = v9;
  v20[1] = *MEMORY[0x277D13F60];
  v10 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalContent", @"HUUsersPersonalContent", 1);
  v21[1] = v10;
  v20[2] = *MEMORY[0x277D13E20];
  [WeakRetained _isPersonalRequestsEnabledForUser];
  v11 = HFLocalizedString();
  v21[2] = v11;
  v20[3] = *MEMORY[0x277D13EA8];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v20[4] = *MEMORY[0x277D13F10];
  v21[3] = v12;
  v21[4] = MEMORY[0x277CBEC28];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];
  v14 = [v8 futureWithResult:v13];

  return v14;
}

id __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_106(uint64_t a1)
{
  v12[5] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = MEMORY[0x277D2C900];
  v11[0] = *MEMORY[0x277D13FB8];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) ^ 1u];
  v12[0] = v4;
  v11[1] = *MEMORY[0x277D13F60];
  v5 = _HULocalizedStringWithDefaultValue(@"HUUsersShowTVViewingProfile", @"HUUsersShowTVViewingProfile", 1);
  v12[1] = v5;
  v11[2] = *MEMORY[0x277D13E20];
  [WeakRetained _isTVViewingProfilesEnabledForUser];
  v6 = HFLocalizedString();
  v12[2] = v6;
  v11[3] = *MEMORY[0x277D13EA8];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 41)];
  v11[4] = *MEMORY[0x277D13F10];
  v12[3] = v7;
  v12[4] = MEMORY[0x277CBEC28];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v9 = [v3 futureWithResult:v8];

  return v9;
}

id __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_2_110(uint64_t a1)
{
  v14[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained userBeingEdited];
  v3 = [WeakRetained _isUserOwner:v2];

  v4 = MEMORY[0x277D2C900];
  v13[0] = *MEMORY[0x277D13F60];
  if ([WeakRetained isUserBeingEditedTheDeviceUser])
  {
    v5 = @"HUEditLocationLeaveHomeButtonTitle";
  }

  else
  {
    v5 = @"HUUsersCellRemovePerson";
  }

  v6 = _HULocalizedStringWithDefaultValue(v5, v5, 1);
  v7 = *MEMORY[0x277D13DC8];
  v14[0] = v6;
  v14[1] = @"Home.Users.Remove";
  v8 = *MEMORY[0x277D13FB8];
  v13[1] = v7;
  v13[2] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v13[3] = *MEMORY[0x277D13F10];
  v14[2] = v9;
  v14[3] = MEMORY[0x277CBEC28];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  v11 = [v4 futureWithResult:v10];

  return v11;
}

id __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_3_120(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D2C900];
  v7 = *MEMORY[0x277D13FB8];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(WeakRetained, "_hasPendingAccessories") ^ 1}];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 futureWithResult:v4];

  return v5;
}

id __52__HUEditUserItemManager__buildItemProvidersForHome___block_invoke_122(uint64_t a1)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 accessories];
  v4 = [v3 na_filter:&__block_literal_global_125_0];

  if ([v4 count])
  {
    if ([*(a1 + 32) isUserBeingEditedTheDeviceUser])
    {
      v5 = 0;
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = [v6 home];
      v8 = [v7 currentUser];
      v5 = [v6 _isUserOwner:v8] ^ 1;
    }
  }

  else
  {
    v5 = 1;
  }

  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v9 = 1;
  }

  else
  {
    v9 = [*(a1 + 32) isUserBeingEditedTheDeviceUser] ^ 1;
  }

  v10 = MEMORY[0x277D2C900];
  v17[0] = *MEMORY[0x277D13FB8];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v18[0] = v11;
  v17[1] = *MEMORY[0x277D13F60];
  v12 = _HULocalizedStringWithDefaultValue(@"HUUpdateListeningHistorySettingTitle", @"HUUpdateListeningHistorySettingTitle", 1);
  v18[1] = v12;
  v17[2] = *MEMORY[0x277D13EA8];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  v17[3] = *MEMORY[0x277D13F10];
  v18[2] = v13;
  v18[3] = MEMORY[0x277CBEC28];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v15 = [v10 futureWithResult:v14];

  return v15;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(HUEditUserItemManager *)self _createLocalAccessSectionUsing:itemsCopy];
  if (v7)
  {
    [v6 addObject:v7];
  }

  v8 = [(HUEditUserItemManager *)self _createAllowEditingSectionUsing:itemsCopy];
  if (v8)
  {
    [v6 addObject:v8];
  }

  v9 = [(HUEditUserItemManager *)self _createAccessLevelSectionUsing:itemsCopy];
  if (v9)
  {
    [v6 addObject:v9];
  }

  v10 = [(HUEditUserItemManager *)self _createAccessorySectionUsing:itemsCopy];
  if (v10)
  {
    [v6 addObject:v10];
  }

  v33 = v8;
  v34 = v7;
  v11 = [(HUEditUserItemManager *)self _createAllowedAccessoriesSectionUsing:itemsCopy];
  if (v11)
  {
    [v6 addObject:v11];
  }

  v31 = v11;
  v32 = v9;
  userSettingsItemModule = [(HUEditUserItemManager *)self userSettingsItemModule];
  v13 = [userSettingsItemModule buildSectionsWithDisplayedItems:itemsCopy];

  LOBYTE(userSettingsItemModule) = [(HUEditUserItemManager *)self _isVoiceIDEnabled:v13];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__HUEditUserItemManager__buildSectionsWithDisplayedItems___block_invoke;
  aBlock[3] = &unk_277DB8F88;
  aBlock[4] = self;
  v14 = itemsCopy;
  v41 = userSettingsItemModule;
  v39 = v14;
  v40 = a2;
  v15 = _Block_copy(aBlock);
  homeForUser = [(HUEditUserItemManager *)self homeForUser];
  accessories = [homeForUser accessories];
  v18 = [accessories na_any:&__block_literal_global_162];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __58__HUEditUserItemManager__buildSectionsWithDisplayedItems___block_invoke_2_163;
  v36[3] = &unk_277DB8FB0;
  v36[4] = self;
  v37 = v18;
  v19 = [v13 na_filter:v36];
  v30 = v15;
  v20 = [v19 na_map:v15];

  v21 = [v20 sortedArrayUsingComparator:&__block_literal_global_168];
  [v6 addObjectsFromArray:v21];

  v22 = [(HUEditUserItemManager *)self _createAppleTVProfileSectionUsing:v14];
  if (v22)
  {
    [v6 addObject:v22];
  }

  v23 = v10;
  mediaServiceItemModule = [(HUEditUserItemManager *)self mediaServiceItemModule];
  v25 = [mediaServiceItemModule buildSectionsWithDisplayedItems:v14];

  [v6 addObjectsFromArray:v25];
  v26 = [(HUEditUserItemManager *)self _createPendingAccessoriesSectionUsing:v14];
  if (v26)
  {
    [v6 addObject:v26];
  }

  v27 = [(HUEditUserItemManager *)self _createRemoveUserLeaveHomeSectionUsing:v14];
  if (v27)
  {
    [v6 addObject:v27];
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __58__HUEditUserItemManager__buildSectionsWithDisplayedItems___block_invoke_4_169;
  v35[3] = &unk_277DB8FF8;
  v35[4] = self;
  v28 = [v6 sortedArrayUsingComparator:v35];

  return v28;
}

id __58__HUEditUserItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v100[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 headerTitle];
  v5 = _HULocalizedStringWithDefaultValue(@"HUSiriSectionTitle", @"HUSiriSectionTitle", 1);
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [v3 mutableCopy];
  }

  else
  {
    v7 = 0;
  }

  [*(a1 + 32) _updateSiriSectionFooterForSection:v7];
  if (![*(a1 + 32) _hasPersonalRequestsDevice])
  {
    goto LABEL_27;
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) personalRequestsItem];
  LODWORD(v8) = [v8 containsObject:v9];

  if (!v8)
  {
    goto LABEL_27;
  }

  if (v6 && *(a1 + 56) == 1)
  {
    v10 = objc_alloc(MEMORY[0x277D14850]);
    v11 = [v3 identifier];
    v12 = [v10 initWithIdentifier:v11];

    v13 = MEMORY[0x277CBEB18];
    v14 = [v3 items];
    v15 = [v13 arrayWithArray:v14];

    v16 = [*(a1 + 32) personalRequestsItem];
    [v15 addObject:v16];

    v17 = _HULocalizedStringWithDefaultValue(@"HUSiriSectionTitle", @"HUSiriSectionTitle", 1);
    [v12 setHeaderTitle:v17];

    [v12 setFooterTitle:0];
    [*(a1 + 32) _updateSiriSectionFooterForSection:v12];
    [v12 setItems:v15];

    v7 = v12;
LABEL_16:
    if (v7)
    {
      v46 = [v7 headerTitle];
      v47 = _HULocalizedStringWithDefaultValue(@"HUSiriSectionTitle", @"HUSiriSectionTitle", 1);
      v48 = [v46 isEqualToString:v47];

      if (v48)
      {
        v78 = v7;
        v79 = v3;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v49 = [v7 items];
        v50 = [v49 countByEnumeratingWithState:&v84 objects:v99 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v85;
          v53 = *MEMORY[0x277D13F98];
          v54 = MEMORY[0x277CBEC38];
          do
          {
            for (i = 0; i != v51; ++i)
            {
              if (*v85 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v56 = *(*(&v84 + 1) + 8 * i);
              v57 = objc_opt_new();
              [v57 setObject:v54 forKeyedSubscript:v53];
              v58 = [v56 updateWithOptions:v57];
            }

            v51 = [v49 countByEnumeratingWithState:&v84 objects:v99 count:16];
          }

          while (v51);
        }

        v59 = [MEMORY[0x277D146E8] sharedDispatcher];
        v60 = [v59 homeManager];
        v61 = [v60 hasOptedToHH2];

        if (v61)
        {
          v62 = [*(a1 + 32) homeForUser];
          v63 = [v62 hf_hasReachableResidents] ^ 1;
        }

        else
        {
          v63 = 0;
        }

        v65 = HFLogForCategory();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = *(a1 + 32);
          v67 = NSStringFromSelector(*(a1 + 48));
          *buf = 138413058;
          *&buf[4] = v66;
          v93 = 2112;
          v94 = v67;
          v95 = 1024;
          v96 = v61;
          v97 = 1024;
          v98 = v63;
          _os_log_impl(&dword_20CEB6000, v65, OS_LOG_TYPE_DEFAULT, "%@:%@: hasOptedToHH2 %{BOOL}d, shouldDisableVoiceIDSetting = %{BOOL}d", buf, 0x22u);
        }

        if (v63 & 1 | (([*(a1 + 32) isUserBeingEditedTheDeviceUser] & 1) == 0))
        {
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v68 = [v78 items];
          v69 = [v68 countByEnumeratingWithState:&v80 objects:v91 count:16];
          if (v69)
          {
            v70 = v69;
            v71 = *v81;
            v72 = *MEMORY[0x277D13EA8];
            v73 = MEMORY[0x277CBEC38];
            do
            {
              for (j = 0; j != v70; ++j)
              {
                if (*v81 != v71)
                {
                  objc_enumerationMutation(v68);
                }

                v75 = *(*(&v80 + 1) + 8 * j);
                v76 = objc_opt_new();
                [v76 setObject:v73 forKeyedSubscript:v72];
                v77 = [v75 updateWithOptions:v76];
              }

              v70 = [v68 countByEnumeratingWithState:&v80 objects:v91 count:16];
            }

            while (v70);
          }
        }

        v7 = v78;
        v23 = v7;
        v3 = v79;
        goto LABEL_28;
      }
    }

LABEL_27:
    v23 = v3;
    goto LABEL_28;
  }

  v18 = [v3 headerTitle];
  v19 = HFLocalizedString();
  v20 = [v18 isEqualToString:v19];

  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = objc_alloc(MEMORY[0x277D14850]);
  v22 = [v3 identifier];
  v23 = [v21 initWithIdentifier:v22];

  v24 = [v3 items];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __58__HUEditUserItemManager__buildSectionsWithDisplayedItems___block_invoke_2;
  v90[3] = &unk_277DB85D8;
  v90[4] = *(a1 + 32);
  v25 = [v24 na_filter:v90];
  [v23 setItems:v25];

  v26 = [*(a1 + 32) updateListeningHistoryItem];
  if (v26)
  {
    v27 = v26;
    v28 = *(a1 + 40);
    v29 = [*(a1 + 32) updateListeningHistoryItem];
    LODWORD(v28) = [v28 containsObject:v29];

    if (v28)
    {
      v30 = MEMORY[0x277CBEB18];
      v31 = [v23 items];
      v32 = [v30 arrayWithArray:v31];

      v33 = [*(a1 + 32) updateListeningHistoryItem];
      [v32 addObject:v33];

      [v23 setItems:v32];
    }
  }

  v34 = [v3 headerTitle];
  [v23 setHeaderTitle:v34];

  v35 = [v23 items];
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __58__HUEditUserItemManager__buildSectionsWithDisplayedItems___block_invoke_3;
  v88[3] = &unk_277DB85D8;
  v89 = *(a1 + 40);
  v36 = [v35 na_any:v88];

  if (v36)
  {
    v37 = HFLocalizedString();
    v38 = HFLocalizedString();
    v39 = objc_alloc(MEMORY[0x277CCAB48]);
    v40 = [v37 stringByAppendingString:@" "];
    v41 = [v39 initWithString:v40];

    v42 = objc_alloc(MEMORY[0x277CCA898]);
    v100[0] = *MEMORY[0x277D740E8];
    v43 = [MEMORY[0x277D14C80] musicPrivacyURL];
    *buf = v43;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v100 count:1];
    v45 = [v42 initWithString:v38 attributes:v44];
    [v41 appendAttributedString:v45];

    [v23 setAttributedFooterTitle:v41];
  }

LABEL_28:

  return v23;
}

uint64_t __58__HUEditUserItemManager__buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2)
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

  v7 = 1;
  if ([*(a1 + 32) shouldFilterOutInlineULHItem] && v6)
  {
    v8 = [v6 settingKeyPath];
    v9 = [v8 isEqualToString:*MEMORY[0x277D13990]];

    v7 = v9 ^ 1;
  }

  v10 = [v6 settingKeyPath];
  [v10 isEqualToString:*MEMORY[0x277D13978]];

  if (v6)
  {
    v11 = [v6 settingKeyPath];
    v12 = [v11 isEqualToString:*MEMORY[0x277D13980]];

    v7 &= v12 ^ 1;
  }

  v13 = [v6 settingKeyPath];
  if ([v13 isEqualToString:*MEMORY[0x277D139D0]])
  {
  }

  else
  {
    v14 = [v6 settingKeyPath];
    v15 = [v14 isEqualToString:*MEMORY[0x277D139A8]];

    v16 = v7;
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  v16 = 0;
LABEL_13:
  v17 = [v6 settingKeyPath];
  if ([v17 isEqualToString:*MEMORY[0x277D139A0]])
  {

LABEL_19:
    v18 = 0;
    goto LABEL_20;
  }

  if (v6)
  {
    v18 = v16;
  }

  else
  {
    v18 = v7;
  }

  v19 = [v6 settingKeyPath];
  v20 = [v19 isEqualToString:*MEMORY[0x277D13998]];

  if (v20)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v6)
  {
    v21 = v18;
  }

  else
  {
    v21 = v7;
  }

  return v21 & 1;
}

uint64_t __58__HUEditUserItemManager__buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, void *a2)
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

  if (v6)
  {
    v7 = [v6 settingKeyPath];
    if ([v7 isEqualToString:*MEMORY[0x277D13990]])
    {
      v8 = [*(a1 + 32) containsObject:v6];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __58__HUEditUserItemManager__buildSectionsWithDisplayedItems___block_invoke_2_163(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [*(a1 + 32) userBeingEdited];
  v6 = [v4 hf_userIsRestrictedGuest:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v3 headerTitle];
    v9 = HFLocalizedString();
    v10 = [v8 isEqualToString:v9];

    v7 = *(a1 + 40) | v10 ^ 1;
  }

  return v7 & 1;
}

uint64_t __58__HUEditUserItemManager__buildSectionsWithDisplayedItems___block_invoke_3_165(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HUAccessorySettingsItemModuleSortKey"];
  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:@"HUAccessorySettingsItemModuleSortKey"];
  v9 = [v6 compare:v8];

  return v9;
}

uint64_t __58__HUEditUserItemManager__buildSectionsWithDisplayedItems___block_invoke_4_169(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 identifier];
  v7 = [v5 identifier];

  v8 = [*(a1 + 32) isUserBeingEditedTheDeviceUser];
  v9 = *(a1 + 32);
  if (v8)
  {
    [v9 sectionOrderArrayWhenViewingSelf];
  }

  else
  {
    [v9 sectionOrderArrayWhenViewingOther];
  }
  v10 = ;
  v11 = [v10 indexOfObject:v6];
  v12 = [v10 indexOfObject:v7];
  v13 = -1;
  v14 = 1;
  if (v11 < v12)
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v15;
  }

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v14;
  }

  if (v11 == v12)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  return v16;
}

- (id)_createAllowEditingSectionUsing:(id)using
{
  v30[3] = *MEMORY[0x277D85DE8];
  usingCopy = using;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  homeScheduleItem = [(HUEditUserItemManager *)self homeScheduleItem];
  remoteAccessItem = [(HUEditUserItemManager *)self remoteAccessItem];
  v30[1] = remoteAccessItem;
  allowEditingItem = [(HUEditUserItemManager *)self allowEditingItem];
  v30[2] = allowEditingItem;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v10 = [v5 initWithArray:v9];
  v11 = [usingCopy intersectsSet:v10];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    remoteAccessItem2 = [(HUEditUserItemManager *)self remoteAccessItem];
    v14 = [usingCopy containsObject:remoteAccessItem2];

    if (v14)
    {
      remoteAccessItem3 = [(HUEditUserItemManager *)self remoteAccessItem];
      [v12 addObject:remoteAccessItem3];
    }

    homeScheduleItem2 = [(HUEditUserItemManager *)self homeScheduleItem];
    v17 = [usingCopy containsObject:homeScheduleItem2];

    if (v17)
    {
      homeScheduleItem3 = [(HUEditUserItemManager *)self homeScheduleItem];
      [v12 addObject:homeScheduleItem3];
    }

    allowEditingItem2 = [(HUEditUserItemManager *)self allowEditingItem];
    v20 = [usingCopy containsObject:allowEditingItem2];

    if (v20)
    {
      allowEditingItem3 = [(HUEditUserItemManager *)self allowEditingItem];
      [v12 addObject:allowEditingItem3];
    }

    if ([v12 count])
    {
      v22 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditUserItemManager_EditingSectionIdentifier"];
      [v22 setItems:v12];
      v23 = _HULocalizedStringWithDefaultValue(@"HUAllowAccessSectionTitle", @"HUAllowAccessSectionTitle", 1);
      v24 = _HULocalizedStringWithDefaultValue(@"HUUsersAllowEditingFooter", @"HUUsersAllowEditingFooter", 1);
      homeScheduleItem4 = [(HUEditUserItemManager *)self homeScheduleItem];
      v26 = [usingCopy containsObject:homeScheduleItem4];

      if (v26)
      {
        v27 = HFLocalizedString();

        v28 = _HULocalizedStringWithDefaultValue(@"HURestrictedGuestScheduleUserSettings_SectionFooter_Title", @"HURestrictedGuestScheduleUserSettings_SectionFooter_Title", 1);

        v23 = v27;
        v24 = v28;
      }

      [v22 setHeaderTitle:v23];
      [v22 setFooterTitle:v24];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)_createLocalAccessSectionUsing:(id)using
{
  v14[1] = *MEMORY[0x277D85DE8];
  usingCopy = using;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  localAccessItem = [(HUEditUserItemManager *)self localAccessItem];
  v14[0] = localAccessItem;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v8 = [v5 initWithArray:v7];
  if (([usingCopy intersectsSet:v8] & 1) == 0)
  {
    goto LABEL_6;
  }

  localAccessItem2 = [(HUEditUserItemManager *)self localAccessItem];
  if (![usingCopy containsObject:localAccessItem2])
  {

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  _hasResidentDevice = [(HUEditUserItemManager *)self _hasResidentDevice];

  if (_hasResidentDevice)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v11 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditUserItemManager_AccessSectionIdentifier"];
  localAccessItem = [(HUEditUserItemManager *)self localAccessItem];
  v13 = localAccessItem;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v11 setItems:v7];
LABEL_7:

LABEL_8:

  return v11;
}

- (id)_createAccessLevelSectionUsing:(id)using
{
  v14[1] = *MEMORY[0x277D85DE8];
  usingCopy = using;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  camerasItem = [(HUEditUserItemManager *)self camerasItem];
  v14[0] = camerasItem;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v8 = [v5 initWithArray:v7];
  if (([usingCopy intersectsSet:v8] & 1) == 0)
  {

    v11 = 0;
    goto LABEL_5;
  }

  camerasItem2 = [(HUEditUserItemManager *)self camerasItem];
  v10 = [usingCopy containsObject:camerasItem2];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditUserItemManager_AccessLevelSectionIdentifier"];
    camerasItem = [(HUEditUserItemManager *)self camerasItem];
    v13 = camerasItem;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    [v11 setItems:v7];
LABEL_5:

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_createAccessorySectionUsing:(id)using
{
  v11[1] = *MEMORY[0x277D85DE8];
  usingCopy = using;
  locksItem = [(HUEditUserItemManager *)self locksItem];
  v6 = [usingCopy containsObject:locksItem];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditUserItemManager_AccessoriesSectionIdentifier"];
    locksItem2 = [(HUEditUserItemManager *)self locksItem];
    v11[0] = locksItem2;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v7 setItems:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_createAllowedAccessoriesSectionUsing:(id)using
{
  usingCopy = using;
  allowedAccessoryCategoryItemProvider = [(HUEditUserItemManager *)self allowedAccessoryCategoryItemProvider];
  items = [allowedAccessoryCategoryItemProvider items];
  v7 = [usingCopy intersectsSet:items];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditUserItemManager_AccessoriesSectionIdentifier"];
    allowedAccessoryCategoryItemProvider2 = [(HUEditUserItemManager *)self allowedAccessoryCategoryItemProvider];
    items2 = [allowedAccessoryCategoryItemProvider2 items];
    allObjects = [items2 allObjects];
    defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
    v13 = [allObjects sortedArrayUsingComparator:defaultItemComparator];
    [v8 setItems:v13];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_createAppleTVProfileSectionUsing:(id)using
{
  v11[1] = *MEMORY[0x277D85DE8];
  usingCopy = using;
  if (-[HUEditUserItemManager _hasTVViewingProfilesDevice](self, "_hasTVViewingProfilesDevice") && (-[HUEditUserItemManager tvViewingProfilesItem](self, "tvViewingProfilesItem"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [usingCopy containsObject:v5], v5, v6))
  {
    v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditUserItemManager_TVViewingProfilesSectionIdentifier"];
    tvViewingProfilesItem = [(HUEditUserItemManager *)self tvViewingProfilesItem];
    v11[0] = tvViewingProfilesItem;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v7 setItems:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_createPendingAccessoriesSectionUsing:(id)using
{
  v13[1] = *MEMORY[0x277D85DE8];
  usingCopy = using;
  pendingAccessoriesItem = [(HUEditUserItemManager *)self pendingAccessoriesItem];
  v6 = [usingCopy containsObject:pendingAccessoriesItem];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditUserItemManager_PendingAccessoriesSectionIdentifier"];
    v8 = _HULocalizedStringWithDefaultValue(@"HUUsersTableSectionPendingAccessories", @"HUUsersTableSectionPendingAccessories", 1);
    [v7 setHeaderTitle:v8];

    v9 = _HULocalizedStringWithDefaultValue(@"HUUsersPendingAccessoriesFooter", @"HUUsersPendingAccessoriesFooter", 1);
    [v7 setFooterTitle:v9];

    pendingAccessoriesItem2 = [(HUEditUserItemManager *)self pendingAccessoriesItem];
    v13[0] = pendingAccessoriesItem2;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [v7 setItems:v11];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_createRemoveUserLeaveHomeSectionUsing:(id)using
{
  v11[1] = *MEMORY[0x277D85DE8];
  usingCopy = using;
  removeItem = [(HUEditUserItemManager *)self removeItem];
  v6 = [usingCopy containsObject:removeItem];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditUserItemManager_ButtonSectionIdentifier"];
    removeItem2 = [(HUEditUserItemManager *)self removeItem];
    v11[0] = removeItem2;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v7 setItems:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_itemsToHideInSet:(id)set
{
  v15.receiver = self;
  v15.super_class = HUEditUserItemManager;
  setCopy = set;
  v6 = [(HFItemManager *)&v15 _itemsToHideInSet:setCopy];
  v7 = [v6 mutableCopy];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__HUEditUserItemManager__itemsToHideInSet___block_invoke;
  v12[3] = &unk_277DB9020;
  v12[4] = self;
  v14 = a2;
  v8 = v7;
  v13 = v8;
  [setCopy enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __43__HUEditUserItemManager__itemsToHideInSet___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 latestResults];
  v5 = *MEMORY[0x277D13340];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13340]];
  v7 = [v6 isEqualToString:*MEMORY[0x277D139E8]];

  if (!v7)
  {
    v10 = [v3 latestResults];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D13350]];
    v12 = [v11 isEqualToString:*MEMORY[0x277D139B8]];

    if (v12)
    {
      v13 = [*(a1 + 32) home];
      v14 = [v13 hf_hasRMVCapableAppleTV];

      v15 = [*(a1 + 32) homeForUser];
      v16 = [v15 hf_hasHomePods];

      if (v14 & 1) != 0 || (v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v25 = [v3 latestResults];
      v26 = [v25 objectForKeyedSubscript:v5];
      v27 = [v26 isEqualToString:*MEMORY[0x277D13988]];

      if (!v27)
      {
        goto LABEL_16;
      }

      v28 = [*(a1 + 32) homeForUser];
      v29 = [v28 hf_hasHomePods];

      if (v29)
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    [*(a1 + 40) addObject:v3];
    goto LABEL_16;
  }

  v8 = [*(a1 + 32) homeForUser];
  if ([v8 hf_hasHomePods])
  {
    v9 = 1;
  }

  else
  {
    v17 = [*(a1 + 32) home];
    v9 = [v17 hf_hasRMVCapableAppleTV];
  }

  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 32);
    v19 = NSStringFromSelector(*(a1 + 48));
    v20 = [*(a1 + 32) home];
    v21 = [*(a1 + 32) home];
    v22 = [v21 currentUser];
    v23 = [v22 hf_prettyDescription];
    v24 = [*(a1 + 32) homeForUser];
    *buf = 138413570;
    v32 = v30;
    v33 = 2112;
    v34 = v19;
    v35 = 2112;
    v36 = v20;
    v37 = 2112;
    v38 = v23;
    v39 = 1024;
    v40 = v9;
    v41 = 1024;
    v42 = [v24 hf_hasHomePods];
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@ Home = %@ currentUser = %@ shouldShowRMVSettingInHome = %{BOOL}d [self.homeForUser hf_hasHomePods] = %{BOOL}d", buf, 0x36u);
  }

  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUEditUserItemManager;
  [(HFItemManager *)&v4 _registerForExternalUpdates];
  mediaServiceItemModule = [(HUEditUserItemManager *)self mediaServiceItemModule];
  [mediaServiceItemModule registerForExternalUpdates];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUEditUserItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  mediaServiceItemModule = [(HUEditUserItemManager *)self mediaServiceItemModule];
  [mediaServiceItemModule unregisterForExternalUpdates];
}

- (BOOL)_isRemoteAccessAllowedForUser:(id)user
{
  userCopy = user;
  home = [(HFItemManager *)self home];
  v6 = [home homeAccessControlForUser:userCopy];

  LOBYTE(userCopy) = [v6 isRemoteAccessAllowed];
  return userCopy;
}

- (BOOL)_isEditingAllowedForUser:(id)user
{
  userCopy = user;
  home = [(HFItemManager *)self home];
  v6 = [home homeAccessControlForUser:userCopy];

  LOBYTE(userCopy) = [v6 isAdministrator];
  return userCopy;
}

- (BOOL)_isUserOwner:(id)owner
{
  ownerCopy = owner;
  home = [(HFItemManager *)self home];
  v6 = [home homeAccessControlForUser:ownerCopy];

  LOBYTE(ownerCopy) = [v6 isOwner];
  return ownerCopy;
}

- (BOOL)_hasResidentDevice
{
  home = [(HFItemManager *)self home];
  if ([home hf_supportsRemoteAccessRestrictions])
  {
    hf_supportsPerUserRemoteAccess = 1;
  }

  else
  {
    home2 = [(HFItemManager *)self home];
    hf_supportsPerUserRemoteAccess = [home2 hf_supportsPerUserRemoteAccess];
  }

  return hf_supportsPerUserRemoteAccess;
}

- (BOOL)_hasPersonalRequestsDevice
{
  home = [(HFItemManager *)self home];
  hf_mediaAccessories = [home hf_mediaAccessories];
  v4 = [hf_mediaAccessories na_any:&__block_literal_global_199];

  return v4;
}

- (BOOL)_hasTVViewingProfilesDevice
{
  home = [(HFItemManager *)self home];
  hf_tvViewingProfilesAccessories = [home hf_tvViewingProfilesAccessories];
  v4 = [hf_tvViewingProfilesAccessories count] != 0;

  return v4;
}

- (BOOL)_hasPendingAccessories
{
  userBeingEdited = [(HUEditUserItemManager *)self userBeingEdited];
  pendingAccessoryInvitations = [userBeingEdited pendingAccessoryInvitations];

  LOBYTE(userBeingEdited) = [pendingAccessoryInvitations na_any:&__block_literal_global_203];
  return userBeingEdited;
}

- (BOOL)_canModifyUserBeingEditedPermissions
{
  home = [(HFItemManager *)self home];
  currentUser = [home currentUser];
  if ([(HUEditUserItemManager *)self _isUserOwner:currentUser])
  {
    isUserBeingEditedTheDeviceUser = [(HUEditUserItemManager *)self isUserBeingEditedTheDeviceUser];

    if (!isUserBeingEditedTheDeviceUser)
    {
      LOBYTE(v6) = 1;
      return v6;
    }
  }

  else
  {
  }

  home2 = [(HFItemManager *)self home];
  currentUser2 = [home2 currentUser];
  if ([(HUEditUserItemManager *)self _isEditingAllowedForUser:currentUser2])
  {
    userBeingEdited = [(HUEditUserItemManager *)self userBeingEdited];
    v6 = ![(HUEditUserItemManager *)self _isEditingAllowedForUser:userBeingEdited];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_isPersonalRequestsEnabledForUser
{
  home = [(HFItemManager *)self home];
  currentUser = [home currentUser];
  v5 = [(HUEditUserItemManager *)self _isUserOwner:currentUser];

  userBeingEdited = [(HUEditUserItemManager *)self userBeingEdited];
  home2 = [(HFItemManager *)self home];
  v8 = [userBeingEdited assistantAccessControlForHome:home2];

  supportedMULanguageCodes = [(HUEditUserItemManager *)self supportedMULanguageCodes];
  LOBYTE(userBeingEdited) = [v8 hf_effectivelyEnabledForSupportedVoiceRecognitionLanguages:supportedMULanguageCodes currentUserIsOwner:v5];

  return userBeingEdited;
}

- (BOOL)_isTVViewingProfilesEnabledForUser
{
  userBeingEdited = [(HUEditUserItemManager *)self userBeingEdited];
  home = [(HFItemManager *)self home];
  v5 = [userBeingEdited mediaContentProfileAccessControlForHome:home];

  accessories = [v5 accessories];
  LOBYTE(userBeingEdited) = [accessories count] != 0;

  return userBeingEdited;
}

- (BOOL)_isVoiceIDEnabled:(id)enabled
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = enabled;
  v3 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    bOOLValue = 0;
    v6 = *v32;
    v7 = *MEMORY[0x277D139E8];
    v8 = *MEMORY[0x277D139B8];
    v23 = *MEMORY[0x277D139E8];
    v24 = *v32;
    do
    {
      v9 = 0;
      v25 = v4;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:v7];

        if (v12)
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          items = [v10 items];
          v14 = [items countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v28;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v28 != v16)
                {
                  objc_enumerationMutation(items);
                }

                v18 = *(*(&v27 + 1) + 8 * i);
                settingKeyPath = [v18 settingKeyPath];
                v20 = [settingKeyPath isEqualToString:v8];

                if (v20)
                {
                  value = [v18 value];
                  bOOLValue = [value BOOLValue];
                }
              }

              v15 = [items countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v15);
          }

          v7 = v23;
          v6 = v24;
          v4 = v25;
        }

        ++v9;
      }

      while (v9 != v4);
      v4 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v4);
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue & 1;
}

- (void)_updateSiriSectionFooterForSection:(id)section
{
  sectionCopy = section;
  v5 = _HULocalizedStringWithDefaultValue(@"HUSiriSectionFooter_RecognizeMyVoice", @"HUSiriSectionFooter_RecognizeMyVoice", 1);
  v6 = objc_alloc(MEMORY[0x277D14C98]);
  home = [(HFItemManager *)self home];
  userBeingEdited = [(HUEditUserItemManager *)self userBeingEdited];
  v9 = [v6 initWithHome:home user:userBeingEdited nameStyle:0];

  if ([v9 isIdentifyVoiceEnabled])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__3;
    v22 = __Block_byref_object_dispose__3;
    v23 = _HULocalizedStringWithDefaultValue(@"HUSiriSectionFooter_PersonalContent_UnknownDevice", @"HUSiriSectionFooter_PersonalContent_UnknownDevice", 1);
    if ([(HUEditUserItemManager *)self isUserBeingEditedTheDeviceUser])
    {
      locationDeviceManager = [(HUEditUserItemManager *)self locationDeviceManager];
      activeLocationDeviceFuture = [locationDeviceManager activeLocationDeviceFuture];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __60__HUEditUserItemManager__updateSiriSectionFooterForSection___block_invoke;
      v14[3] = &unk_277DB9068;
      v17 = &v18;
      v15 = sectionCopy;
      v16 = v5;
      v12 = [activeLocationDeviceFuture addCompletionBlock:v14];

      v13 = v15;
    }

    else
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v5, v19[5]];
      [sectionCopy setFooterTitle:v13];
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    [sectionCopy setFooterTitle:v5];
  }
}

void __60__HUEditUserItemManager__updateSiriSectionFooterForSection___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = [a2 name];
    v11 = HULocalizedStringWithFormat(@"HUSiriSectionFooter_PersonalContent", @"%@", v5, v6, v7, v8, v9, v10, v4);
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", *(a1 + 40), *(*(*(a1 + 48) + 8) + 40)];
  [*(a1 + 32) setFooterTitle:v14];
}

@end