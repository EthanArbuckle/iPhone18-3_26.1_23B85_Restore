@interface HUMatterAccessoryRemovalHelper
- (BOOL)updateShouldUseEcosystemRemovalConfirmation;
- (HFServiceLikeItem)item;
- (HUMatterAccessoryRemovalHelper)initWithItem:(id)item connectedEcosystems:(id)ecosystems;
- (void)matterAccessoryGenerateRemovalConfirmationForAccessoryName:(id)name;
@end

@implementation HUMatterAccessoryRemovalHelper

- (HUMatterAccessoryRemovalHelper)initWithItem:(id)item connectedEcosystems:(id)ecosystems
{
  itemCopy = item;
  ecosystemsCopy = ecosystems;
  v16.receiver = self;
  v16.super_class = HUMatterAccessoryRemovalHelper;
  v8 = [(HUMatterAccessoryRemovalHelper *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_item, itemCopy);
    hf_ecosystemComparator = [MEMORY[0x277CD1888] hf_ecosystemComparator];
    v11 = [ecosystemsCopy sortedArrayUsingComparator:hf_ecosystemComparator];
    connectedEcosystems = v9->_connectedEcosystems;
    v9->_connectedEcosystems = v11;

    v13 = [ecosystemsCopy na_filter:&__block_literal_global_0];
    thirdPartyEcosystems = v9->_thirdPartyEcosystems;
    v9->_thirdPartyEcosystems = v13;

    v9->_shouldUseEcosystemRemovalConfirmation = [(HUMatterAccessoryRemovalHelper *)v9 updateShouldUseEcosystemRemovalConfirmation];
  }

  return v9;
}

uint64_t __67__HUMatterAccessoryRemovalHelper_initWithItem_connectedEcosystems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 vendor];
  if ([v3 isAppleVendor])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 vendor];
    v4 = [v5 isSystemCommissionerVendor] ^ 1;
  }

  return v4;
}

- (BOOL)updateShouldUseEcosystemRemovalConfirmation
{
  item = [(HUMatterAccessoryRemovalHelper *)self item];
  if ([item conformsToProtocol:&unk_28251B268])
  {
    v4 = item;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  isItemGroup = [v5 isItemGroup];
  if (isItemGroup)
  {
    return 0;
  }

  objc_opt_class();
  item2 = [(HUMatterAccessoryRemovalHelper *)self item];
  v8 = (objc_opt_isKindOfClass() & 1) != 0 ? item2 : 0;

  if (v8)
  {
    return 0;
  }

  objc_opt_class();
  item3 = [(HUMatterAccessoryRemovalHelper *)self item];
  v10 = (objc_opt_isKindOfClass() & 1) != 0 ? item3 : 0;
  v11 = v10;

  accessories = [v11 accessories];

  LOBYTE(v11) = [accessories na_any:&__block_literal_global_59];
  if (v11)
  {
    return 0;
  }

  item4 = [(HUMatterAccessoryRemovalHelper *)self item];
  accessories2 = [item4 accessories];
  v15 = [accessories2 count];

  if (v15 != 1)
  {
    return 0;
  }

  item5 = [(HUMatterAccessoryRemovalHelper *)self item];
  accessories3 = [item5 accessories];
  anyObject = [accessories3 anyObject];

  if ([anyObject supportsCHIP])
  {
    thirdPartyEcosystems = [(HUMatterAccessoryRemovalHelper *)self thirdPartyEcosystems];
    v20 = [thirdPartyEcosystems count] != 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t __77__HUMatterAccessoryRemovalHelper_updateShouldUseEcosystemRemovalConfirmation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 category];
  v3 = [v2 categoryType];
  v4 = [v3 isEqualToString:*MEMORY[0x277CCE8B0]];

  return v4;
}

- (void)matterAccessoryGenerateRemovalConfirmationForAccessoryName:(id)name
{
  v100 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  [(HUMatterAccessoryRemovalHelper *)self setTitle:0];
  item = [(HUMatterAccessoryRemovalHelper *)self item];
  home = [item home];
  name = [home name];
  v13 = HULocalizedStringWithFormat(@"HUEcosystemAccessoryRemovalActionForAppleHome", @"%@", v7, v8, v9, v10, v11, v12, name);
  [(HUMatterAccessoryRemovalHelper *)self setRemovalActionTitle:v13];

  v20 = HULocalizedStringWithFormat(@"HUServiceDetailsRemoveDeviceAlertTitle", @"%@", v14, v15, v16, v17, v18, v19, nameCopy);
  [(HUMatterAccessoryRemovalHelper *)self setRemovalActionConfirmationTitle:v20];

  v21 = _HULocalizedStringWithDefaultValue(@"HURemoveTitle", @"HURemoveTitle", 1);
  [(HUMatterAccessoryRemovalHelper *)self setRemovalActionConfirmationButtonTitle:v21];

  objc_opt_class();
  item2 = [(HUMatterAccessoryRemovalHelper *)self item];
  if (objc_opt_isKindOfClass())
  {
    v23 = item2;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  profile = [v24 profile];
  hf_supportsRecordingEvents = [profile hf_supportsRecordingEvents];

  if (hf_supportsRecordingEvents)
  {
    v33 = HULocalizedStringWithFormat(@"HUServiceDetailsRemoveCameraWithClipsAlertTitle", @"%@", v27, v28, v29, v30, v31, v32, nameCopy);
    [(HUMatterAccessoryRemovalHelper *)self setTitle:v33];

    v34 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveDeviceAlertRemoveCameraButton", @"HUServiceDetailsRemoveDeviceAlertRemoveCameraButton", 1);
    [(HUMatterAccessoryRemovalHelper *)self setRemovalActionTitle:v34];
  }

  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = __Block_byref_object_copy_;
  v96 = __Block_byref_object_dispose_;
  v97 = 0;
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  connectedEcosystems = [(HUMatterAccessoryRemovalHelper *)self connectedEcosystems];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __93__HUMatterAccessoryRemovalHelper_matterAccessoryGenerateRemovalConfirmationForAccessoryName___block_invoke;
  v89[3] = &unk_277DB72E8;
  v91 = &v92;
  v37 = v35;
  v90 = v37;
  [connectedEcosystems na_each:v89];

  [v37 sortUsingSelector:sel_localizedStandardCompare_];
  v38 = HFLogForCategory();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v99 = v37;
    _os_log_impl(&dword_20CEB6000, v38, OS_LOG_TYPE_DEFAULT, "vendorNames, %@", buf, 0xCu);
  }

  v39 = HFLogForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = v93[5];
    *buf = 138412290;
    v99 = v40;
    _os_log_impl(&dword_20CEB6000, v39, OS_LOG_TYPE_DEFAULT, "systemCommissionerVendor, %@", buf, 0xCu);
  }

  v41 = [MEMORY[0x277CCAB68] stringWithString:&stru_2823E0EE8];
  if ([v37 count] == 1)
  {
    firstObject = [v37 firstObject];
    lastObject = HULocalizedStringWithFormat(@"HUEcosystemAccessoryRemovalActionConfirmationTitleForOneEcosystem", @"%@", v43, v44, v45, v46, v47, v48, firstObject);
    [v41 appendString:lastObject];
  }

  else if ([v37 count] == 2)
  {
    firstObject = [v37 firstObject];
    lastObject = [v37 lastObject];
    v56 = HULocalizedStringWithFormat(@"HUEcosystemAccessoryRemovalActionConfirmationTitleForTwoEcosystems", @"%@%@", v50, v51, v52, v53, v54, v55, firstObject);
    [v41 appendString:v56];
  }

  else
  {
    if ([v37 count] < 3)
    {
      goto LABEL_20;
    }

    firstObject2 = [v37 firstObject];
    v64 = HULocalizedStringWithFormat(@"HUEcosystemAccessoryRemovalActionConfirmationTitleForMultipleEcosystems_FirstEcosystem", @"%@", v58, v59, v60, v61, v62, v63, firstObject2);
    [v41 appendString:v64];

    v65 = [v37 count];
    if (v65 - 1 >= 2)
    {
      v66 = v65 - 2;
      v67 = 1;
      do
      {
        v68 = [v37 objectAtIndexedSubscript:v67];
        v75 = HULocalizedStringWithFormat(@"HUEcosystemAccessoryRemovalActionConfirmationTitleForMultipleEcosystems_OtherEcosystems", @"%@", v69, v70, v71, v72, v73, v74, v68);
        [v41 appendString:v75];

        ++v67;
        --v66;
      }

      while (v66);
    }

    firstObject = [v37 lastObject];
    lastObject = HULocalizedStringWithFormat(@"HUEcosystemAccessoryRemovalActionConfirmationTitleForMultipleEcosystems_LastEcosystem", @"%@", v76, v77, v78, v79, v80, v81, firstObject);
    [v41 appendString:lastObject];
  }

LABEL_20:
  if (v93[5])
  {
    v82 = _HULocalizedStringWithDefaultValue(@"HUEcosystemAccessoryRemovalActionConfirmationTitle_SystemCommissioner", @"HUEcosystemAccessoryRemovalActionConfirmationTitle_SystemCommissioner", 1);
    [v41 appendString:v82];
  }

  v83 = _HULocalizedStringWithDefaultValue(@"HUEcosystemAccessoryRemovalActionConfirmationTitle_Postfix", @"HUEcosystemAccessoryRemovalActionConfirmationTitle_Postfix", 1);
  [v41 appendString:v83];

  v84 = HFLogForCategory();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v99 = v41;
    _os_log_impl(&dword_20CEB6000, v84, OS_LOG_TYPE_DEFAULT, "resetAllActionConfirmationTitle, %@", buf, 0xCu);
  }

  v85 = _HULocalizedStringWithDefaultValue(@"HUEcosystemAccessoryRemovalActionForMultipleEcosystems", @"HUEcosystemAccessoryRemovalActionForMultipleEcosystems", 1);
  [(HUMatterAccessoryRemovalHelper *)self setResetAllActionTitle:v85];

  v86 = [v41 copy];
  [(HUMatterAccessoryRemovalHelper *)self setResetAllActionConfirmationTitle:v86];

  v87 = _HULocalizedStringWithDefaultValue(@"HUEcosystemAccessoryRemovalActionForMultipleEcosystems", @"HUEcosystemAccessoryRemovalActionForMultipleEcosystems", 1);
  [(HUMatterAccessoryRemovalHelper *)self setResetAllActionConfirmationButtonTitle:v87];

  _Block_object_dispose(&v92, 8);
}

void __93__HUMatterAccessoryRemovalHelper_matterAccessoryGenerateRemovalConfirmationForAccessoryName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 vendor];
  v5 = [v4 isSystemCommissionerVendor];

  if (v5)
  {
    v6 = [v3 vendor];

    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(a1 + 32);
    v11 = [v3 vendor];

    v10 = [v11 name];
    [v9 na_safeAddObject:v10];

    v8 = v11;
  }
}

- (HFServiceLikeItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end