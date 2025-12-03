@interface HUNetworkConfigurationSettingsModule
+ (id)_allowedHostDescriptionForHostGroup:(id)group;
+ (id)_attributedIconNamed:(id)named;
- (BOOL)isItemNetworkProtectionModeOptionItem:(id)item;
- (HFNetworkConfigurationGroupItem)sourceItem;
- (HUNetworkConfigurationSettingsModule)initWithItemUpdater:(id)updater;
- (HUNetworkConfigurationSettingsModule)initWithItemUpdater:(id)updater group:(id)group;
- (HUNetworkConfigurationSettingsModuleDelegate)networkConfigurationSettingsModuleDelegate;
- (id)_protectionModeOptionSectionFooter;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)description;
- (id)itemProviders;
- (id)updateProtectionMode:(int64_t)mode;
@end

@implementation HUNetworkConfigurationSettingsModule

- (HUNetworkConfigurationSettingsModule)initWithItemUpdater:(id)updater group:(id)group
{
  groupCopy = group;
  v13.receiver = self;
  v13.super_class = HUNetworkConfigurationSettingsModule;
  v8 = [(HFItemModule *)&v13 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_group, group);
    v10 = [[HUNetworkProtectionModeOptionItemProvider alloc] initWithGroup:groupCopy];
    networkProtectionModeOptionItemProvider = v9->_networkProtectionModeOptionItemProvider;
    v9->_networkProtectionModeOptionItemProvider = v10;
  }

  return v9;
}

- (HUNetworkConfigurationSettingsModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_group_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationSettingsModule.m" lineNumber:45 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkConfigurationSettingsModule initWithItemUpdater:]", v6}];

  return 0;
}

- (BOOL)isItemNetworkProtectionModeOptionItem:(id)item
{
  itemCopy = item;
  networkProtectionModeOptionItemProvider = [(HUNetworkConfigurationSettingsModule *)self networkProtectionModeOptionItemProvider];
  items = [networkProtectionModeOptionItemProvider items];
  v7 = [items containsObject:itemCopy];

  return v7;
}

- (HFNetworkConfigurationGroupItem)sourceItem
{
  objc_opt_class();
  itemUpdater = [(HFItemModule *)self itemUpdater];
  if (objc_opt_isKindOfClass())
  {
    v4 = itemUpdater;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  sourceItem = [v5 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v7 = sourceItem;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    sourceItem2 = [v5 sourceItem];
    NSLog(&cfstr_InvalidSourceI.isa, sourceItem2, v5);
  }

  return v8;
}

- (id)updateProtectionMode:(int64_t)mode
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    group = [(HUNetworkConfigurationSettingsModule *)self group];
    *buf = 138412802;
    selfCopy2 = self;
    v22 = 2048;
    modeCopy = mode;
    v24 = 2112;
    v25 = group;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: Updating protection mode to %lu for group %@", buf, 0x20u);
  }

  group2 = [(HUNetworkConfigurationSettingsModule *)self group];
  v9 = [group2 hf_updateProtectionMode:mode];
  [(HUNetworkConfigurationSettingsModule *)self setIsUpdatingProtectionMode:1];
  updateProtectionModeTimer = [(HUNetworkConfigurationSettingsModule *)self updateProtectionModeTimer];

  if (updateProtectionModeTimer)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      updateProtectionModeTimer2 = [(HUNetworkConfigurationSettingsModule *)self updateProtectionModeTimer];
      *buf = 138412546;
      selfCopy2 = self;
      v22 = 2112;
      modeCopy = updateProtectionModeTimer2;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@: Cancelling timer %@ and restarting mode update", buf, 0x16u);
    }

    updateProtectionModeTimer3 = [(HUNetworkConfigurationSettingsModule *)self updateProtectionModeTimer];
    [updateProtectionModeTimer3 invalidate];

    [(HUNetworkConfigurationSettingsModule *)self setUpdateProtectionModeTimer:0];
  }

  objc_initWeak(buf, group2);
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__HUNetworkConfigurationSettingsModule_updateProtectionMode___block_invoke;
  v16[3] = &unk_277DB8CF8;
  objc_copyWeak(&v17, buf);
  objc_copyWeak(v18, &location);
  v18[1] = a2;
  v14 = [v9 addCompletionBlock:v16];
  objc_destroyWeak(v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  return v9;
}

void __61__HUNetworkConfigurationSettingsModule_updateProtectionMode___block_invoke(id *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v8 = objc_loadWeakRetained(a1 + 5);
  v9 = [MEMORY[0x277D146E8] sharedDispatcher];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __61__HUNetworkConfigurationSettingsModule_updateProtectionMode___block_invoke_2;
  v20[3] = &unk_277DB8C80;
  objc_copyWeak(&v21, a1 + 4);
  [v9 dispatchHomeObserverMessage:v20 sender:0];

  v10 = MEMORY[0x277CBEBB8];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __61__HUNetworkConfigurationSettingsModule_updateProtectionMode___block_invoke_3;
  v17 = &unk_277DB8CD0;
  v18 = v8;
  objc_copyWeak(v19, a1 + 5);
  v19[1] = a1[6];
  v11 = [v10 scheduledTimerWithTimeInterval:0 repeats:&v14 block:30.0];
  [v8 setUpdateProtectionModeTimer:{v11, v14, v15, v16, v17, v18}];

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v8 updateProtectionModeTimer];
    *buf = 138412802;
    v23 = v8;
    v24 = 2112;
    v25 = v13;
    v26 = 2048;
    v27 = 30;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@: Starting protection mode update timer %@ (%lus)", buf, 0x20u);
  }

  objc_destroyWeak(v19);
  objc_destroyWeak(&v21);
}

void __61__HUNetworkConfigurationSettingsModule_updateProtectionMode___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained hf_home];
    [v6 home:v5 didUpdateAccessoryNetworkProtectionGroup:v4];
  }
}

void __61__HUNetworkConfigurationSettingsModule_updateProtectionMode___block_invoke_3(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v23 = v5;
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: Timer fired %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (!WeakRetained || ([WeakRetained sourceItem], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, v9))
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_error_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_ERROR, "%@: Protection mode update timer lost reference to parent; invalidating", buf, 0xCu);
    }
  }

  else
  {
    [v7 setIsUpdatingProtectionMode:0];
    [v7 setUpdateProtectionModeTimer:0];
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 sourceItem];
      *buf = 138412546;
      v23 = v7;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@: Ending attempt and updating %@ to check for mismatch", buf, 0x16u);
    }

    v12 = [v7 itemUpdater];
    v13 = MEMORY[0x277D14788];
    v14 = MEMORY[0x277CBEB98];
    v15 = [v7 sourceItem];
    v16 = [v14 setWithObject:v15];
    v17 = [v13 requestToUpdateItems:v16 senderSelector:*(a1 + 48)];
    v18 = [v12 performItemUpdateRequest:v17];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __61__HUNetworkConfigurationSettingsModule_updateProtectionMode___block_invoke_23;
    v20[3] = &unk_277DB8CA8;
    objc_copyWeak(&v21, (a1 + 40));
    v19 = [v18 addCompletionBlock:v20];
    objc_destroyWeak(&v21);
  }
}

void __61__HUNetworkConfigurationSettingsModule_updateProtectionMode___block_invoke_23(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained sourceItem];
  v3 = [v2 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D14040]];
  v5 = [v4 BOOLValue];

  v6 = HFLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = 138412290;
      v9 = WeakRetained;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: Protection mode update attempt timed out", &v8, 0xCu);
    }

    v6 = [WeakRetained networkConfigurationSettingsModuleDelegate];
    [v6 networkConfigurationSettingsModuleUpdateDidTimeout:WeakRetained];
  }

  else if (v7)
  {
    v8 = 138412290;
    v9 = WeakRetained;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: Protection mode update attempt already succeeded", &v8, 0xCu);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  group = [(HUNetworkConfigurationSettingsModule *)self group];
  hf_title = [group hf_title];
  v6 = [v3 stringWithFormat:@"<HUNetworkConfigurationSettingsModule %p (%@)>", self, hf_title];

  return v6;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  networkProtectionModeOptionItemProvider = [(HUNetworkConfigurationSettingsModule *)self networkProtectionModeOptionItemProvider];
  v4 = [v2 setWithObject:networkProtectionModeOptionItemProvider];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  itemsCopy = items;
  v6 = [[v4 alloc] initWithIdentifier:@"HUNetworkConfigurationSettingsModuleProtectionModeOptionSectionIdentifier"];
  v7 = _HULocalizedStringWithDefaultValue(@"HUNetworkConfigurationSettingsSectionTitle", @"HUNetworkConfigurationSettingsSectionTitle", 1);
  [v6 setHeaderTitle:v7];

  networkProtectionModeOptionItemProvider = [(HUNetworkConfigurationSettingsModule *)self networkProtectionModeOptionItemProvider];
  items = [networkProtectionModeOptionItemProvider items];
  allObjects = [items allObjects];
  itemResultManualSortComparator = [MEMORY[0x277D14778] itemResultManualSortComparator];
  v12 = [allObjects sortedArrayUsingComparator:itemResultManualSortComparator];
  [v6 setItems:v12];

  _protectionModeOptionSectionFooter = [(HUNetworkConfigurationSettingsModule *)self _protectionModeOptionSectionFooter];
  [v6 setAttributedFooterTitle:_protectionModeOptionSectionFooter];

  v14 = MEMORY[0x277D14778];
  v18[0] = v6;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v16 = [v14 filterSections:v15 toDisplayedItems:itemsCopy];

  return v16;
}

- (id)_protectionModeOptionSectionFooter
{
  v62 = *MEMORY[0x277D85DE8];
  sourceItem = [(HUNetworkConfigurationSettingsModule *)self sourceItem];
  latestResults = [sourceItem latestResults];
  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14048]];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  latestResults2 = [sourceItem latestResults];
  v8 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D14018]];
  unsignedIntegerValue2 = [v8 unsignedIntegerValue];

  latestResults3 = [sourceItem latestResults];
  v11 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D14030]];
  bOOLValue = [v11 BOOLValue];

  latestResults4 = [sourceItem latestResults];
  v14 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D14028]];
  bOOLValue2 = [v14 BOOLValue];

  latestResults5 = [sourceItem latestResults];
  v17 = [latestResults5 objectForKeyedSubscript:*MEMORY[0x277D14010]];

  allObjects = [v17 allObjects];
  v33 = [allObjects sortedArrayUsingComparator:&__block_literal_global_27];

  latestResults6 = [sourceItem latestResults];
  v20 = [latestResults6 objectForKeyedSubscript:*MEMORY[0x277D14020]];
  bOOLValue3 = [v20 BOOLValue];
  if (unsignedIntegerValue2 == 2)
  {
    v22 = bOOLValue3;
  }

  else
  {
    v22 = 0;
  }

  v34 = v22;

  latestResults7 = [sourceItem latestResults];
  v24 = [latestResults7 objectForKeyedSubscript:*MEMORY[0x277D14040]];
  if ([v24 BOOLValue])
  {
    v25 = ![(HUNetworkConfigurationSettingsModule *)self isUpdatingProtectionMode];
  }

  else
  {
    v25 = 0;
  }

  v26 = HFLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138414594;
    selfCopy = self;
    v44 = 2112;
    v45 = sourceItem;
    v46 = 2048;
    v47 = unsignedIntegerValue;
    v48 = 2048;
    v49 = unsignedIntegerValue2;
    v50 = 1024;
    isUpdatingProtectionMode = [(HUNetworkConfigurationSettingsModule *)self isUpdatingProtectionMode];
    v52 = 1024;
    v53 = v25;
    v54 = 1024;
    v55 = bOOLValue2;
    v56 = 1024;
    v57 = bOOLValue;
    v58 = 2048;
    v59 = [v17 count];
    v60 = 1024;
    v61 = v34;
    _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "%@: Constructing footer for item %@: target:%lu current:%lu updateAttempt:%{BOOL}d protectionMismatch:%{BOOL}d hostException:%{BOOL}d hostMismatch:%{BOOL}d allowedHostCount:%lu accessViolation:%{BOOL}d", buf, 0x52u);
  }

  v27 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_38;
  v39[3] = &__block_descriptor_34_e25___NSAttributedString_8__0l;
  v40 = bOOLValue;
  v41 = bOOLValue2;
  v28 = __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_38(v39);
  [v27 appendAttributedString:v28];

  if ([v27 length])
  {
    v29 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
    [v27 appendAttributedString:v29];
  }

  if (unsignedIntegerValue2 == 2)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_3;
    v36[3] = &unk_277DB8DA8;
    v37 = v27;
    selfCopy2 = self;
    [v33 na_each:v36];
  }

  if (v34)
  {
    v35[5] = MEMORY[0x277D85DD0];
    v35[6] = 3221225472;
    v35[7] = __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_5;
    v35[8] = &unk_277DB74A0;
    v35[9] = self;
    v30 = __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_5();
    [v27 appendAttributedString:v30];
  }

  if (v25)
  {
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_6;
    v35[3] = &unk_277DB74A0;
    v35[4] = self;
    v31 = __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_6(v35);
    [v27 appendAttributedString:v31];
  }

  return v27;
}

uint64_t __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

id __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_38(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCA898]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_2;
  v6[3] = &__block_descriptor_34_e15___NSString_8__0l;
  v7 = *(a1 + 32);
  v3 = __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_2(v6);
  v4 = [v2 initWithString:v3];

  return v4;
}

id __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    if (*(a1 + 33))
    {
      v1 = @"HUNetworkConfigurationSettingsAllowedHostMessageMismatchAndException";
    }

    else
    {
      v1 = @"HUNetworkConfigurationSettingsAllowedHostMessageMismatch";
    }

    goto LABEL_7;
  }

  if (*(a1 + 33))
  {
    v1 = @"HUNetworkConfigurationSettingsAllowedHostMessageException";
LABEL_7:
    v2 = _HULocalizedStringWithDefaultValue(v1, v1, 1);
    goto LABEL_9;
  }

  v2 = [MEMORY[0x277CCACA8] string];
LABEL_9:

  return v2;
}

void __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_4;
  v10 = &unk_277DB8D80;
  v4 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v3;
  v5 = v3;
  v6 = __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_4(&v7);
  [v4 appendAttributedString:{v6, v7, v8, v9, v10, v11}];
}

id __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_4(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v3 = [objc_opt_class() _attributedCheckmarkIcon];
  [v2 appendAttributedString:v3];

  v4 = objc_alloc(MEMORY[0x277CCA898]);
  v5 = [objc_opt_class() _allowedHostDescriptionForHostGroup:*(a1 + 40)];
  v6 = [v4 initWithString:v5];
  [v2 appendAttributedString:v6];

  return v2;
}

id __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_5()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v1 = [objc_opt_class() _attributedExclamationIcon];
  [v0 appendAttributedString:v1];

  v2 = objc_alloc(MEMORY[0x277CCA898]);
  v3 = _HULocalizedStringWithDefaultValue(@"HUNetworkConfigurationSettingsBlockedHostDescription", @"HUNetworkConfigurationSettingsBlockedHostDescription", 1);
  v4 = [v2 initWithString:v3];
  [v0 appendAttributedString:v4];

  return v0;
}

id __74__HUNetworkConfigurationSettingsModule__protectionModeOptionSectionFooter__block_invoke_6(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v3 = [objc_opt_class() _attributedExclamationIcon];
  [v2 appendAttributedString:v3];

  v4 = MEMORY[0x277CD1CA8];
  v5 = [*(a1 + 32) group];
  v6 = [v4 hf_detailedLocalizedTitleForTargetProtectionMode:{objc_msgSend(v5, "targetProtectionMode")}];
  v7 = [*(a1 + 32) group];
  v20 = [v7 hf_title];
  v14 = HULocalizedStringWithFormat(@"HUNetworkConfigurationSettingsConfigurationMismatchDescription", @"%@%@", v8, v9, v10, v11, v12, v13, v6);

  v15 = MEMORY[0x277CCA898];
  v16 = _HULocalizedStringWithDefaultValue(@"HUNetworkConfigurationSettingsConfigurationMismatchDescriptionLink", @"HUNetworkConfigurationSettingsConfigurationMismatchDescriptionLink", 1);
  v21 = @"HUNetworkConfigurationSettingsMismatchLinkAttributeName";
  v22[0] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v18 = [v15 hf_attributedLinkStringForString:v14 linkString:v16 linkURL:0 attributes:0 additionalLinkAttributes:v17];

  [v2 appendAttributedString:v18];

  return v2;
}

+ (id)_allowedHostDescriptionForHostGroup:(id)group
{
  groupCopy = group;
  name = [groupCopy name];
  purposeLocalizedDescription = [groupCopy purposeLocalizedDescription];

  v12 = HULocalizedStringWithFormat(@"HUNetworkConfigurationSettingsAllowedHostDescriptionFormat", @"%@%@", v6, v7, v8, v9, v10, v11, name);

  return v12;
}

+ (id)_attributedIconNamed:(id)named
{
  namedCopy = named;
  v4 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:@"\n"];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HUNetworkConfigurationSettingsModule__attributedIconNamed___block_invoke;
  v9[3] = &unk_277DB8DD0;
  v10 = namedCopy;
  v5 = namedCopy;
  v6 = __61__HUNetworkConfigurationSettingsModule__attributedIconNamed___block_invoke(v9);
  [v4 appendAttributedString:v6];

  v7 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:@" "];
  [v4 appendAttributedString:v7];

  return v4;
}

id __61__HUNetworkConfigurationSettingsModule__attributedIconNamed___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D74270]);
  v3 = [MEMORY[0x277D755B8] _systemImageNamed:*(a1 + 32)];
  v4 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76968] scale:2];
  v5 = [v3 imageWithSymbolConfiguration:v4];
  v6 = [v5 imageWithRenderingMode:2];
  [v2 setImage:v6];

  v7 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v2];

  return v7;
}

- (HUNetworkConfigurationSettingsModuleDelegate)networkConfigurationSettingsModuleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_networkConfigurationSettingsModuleDelegate);

  return WeakRetained;
}

@end