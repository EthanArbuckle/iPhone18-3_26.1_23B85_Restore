@interface HUMatterAccessoryRemovalHelper
- (BOOL)updateShouldUseEcosystemRemovalConfirmation;
- (HFServiceLikeItem)item;
- (HUMatterAccessoryRemovalHelper)initWithItem:(id)a3 connectedEcosystems:(id)a4;
- (void)matterAccessoryGenerateRemovalConfirmationForAccessoryName:(id)a3;
@end

@implementation HUMatterAccessoryRemovalHelper

- (HUMatterAccessoryRemovalHelper)initWithItem:(id)a3 connectedEcosystems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = HUMatterAccessoryRemovalHelper;
  v8 = [(HUMatterAccessoryRemovalHelper *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_item, v6);
    v10 = [MEMORY[0x277CD1888] hf_ecosystemComparator];
    v11 = [v7 sortedArrayUsingComparator:v10];
    connectedEcosystems = v9->_connectedEcosystems;
    v9->_connectedEcosystems = v11;

    v13 = [v7 na_filter:&__block_literal_global_0];
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
  v3 = [(HUMatterAccessoryRemovalHelper *)self item];
  if ([v3 conformsToProtocol:&unk_28251B268])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 isItemGroup];
  if (v6)
  {
    return 0;
  }

  objc_opt_class();
  v7 = [(HUMatterAccessoryRemovalHelper *)self item];
  v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v7 : 0;

  if (v8)
  {
    return 0;
  }

  objc_opt_class();
  v9 = [(HUMatterAccessoryRemovalHelper *)self item];
  v10 = (objc_opt_isKindOfClass() & 1) != 0 ? v9 : 0;
  v11 = v10;

  v12 = [v11 accessories];

  LOBYTE(v11) = [v12 na_any:&__block_literal_global_59];
  if (v11)
  {
    return 0;
  }

  v13 = [(HUMatterAccessoryRemovalHelper *)self item];
  v14 = [v13 accessories];
  v15 = [v14 count];

  if (v15 != 1)
  {
    return 0;
  }

  v16 = [(HUMatterAccessoryRemovalHelper *)self item];
  v17 = [v16 accessories];
  v18 = [v17 anyObject];

  if ([v18 supportsCHIP])
  {
    v19 = [(HUMatterAccessoryRemovalHelper *)self thirdPartyEcosystems];
    v20 = [v19 count] != 0;
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

- (void)matterAccessoryGenerateRemovalConfirmationForAccessoryName:(id)a3
{
  v100 = *MEMORY[0x277D85DE8];
  v88 = a3;
  [(HUMatterAccessoryRemovalHelper *)self setTitle:0];
  v4 = [(HUMatterAccessoryRemovalHelper *)self item];
  v5 = [v4 home];
  v6 = [v5 name];
  v13 = HULocalizedStringWithFormat(@"HUEcosystemAccessoryRemovalActionForAppleHome", @"%@", v7, v8, v9, v10, v11, v12, v6);
  [(HUMatterAccessoryRemovalHelper *)self setRemovalActionTitle:v13];

  v20 = HULocalizedStringWithFormat(@"HUServiceDetailsRemoveDeviceAlertTitle", @"%@", v14, v15, v16, v17, v18, v19, v88);
  [(HUMatterAccessoryRemovalHelper *)self setRemovalActionConfirmationTitle:v20];

  v21 = _HULocalizedStringWithDefaultValue(@"HURemoveTitle", @"HURemoveTitle", 1);
  [(HUMatterAccessoryRemovalHelper *)self setRemovalActionConfirmationButtonTitle:v21];

  objc_opt_class();
  v22 = [(HUMatterAccessoryRemovalHelper *)self item];
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  v25 = [v24 profile];
  v26 = [v25 hf_supportsRecordingEvents];

  if (v26)
  {
    v33 = HULocalizedStringWithFormat(@"HUServiceDetailsRemoveCameraWithClipsAlertTitle", @"%@", v27, v28, v29, v30, v31, v32, v88);
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
  v36 = [(HUMatterAccessoryRemovalHelper *)self connectedEcosystems];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __93__HUMatterAccessoryRemovalHelper_matterAccessoryGenerateRemovalConfirmationForAccessoryName___block_invoke;
  v89[3] = &unk_277DB72E8;
  v91 = &v92;
  v37 = v35;
  v90 = v37;
  [v36 na_each:v89];

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
    v42 = [v37 firstObject];
    v49 = HULocalizedStringWithFormat(@"HUEcosystemAccessoryRemovalActionConfirmationTitleForOneEcosystem", @"%@", v43, v44, v45, v46, v47, v48, v42);
    [v41 appendString:v49];
  }

  else if ([v37 count] == 2)
  {
    v42 = [v37 firstObject];
    v49 = [v37 lastObject];
    v56 = HULocalizedStringWithFormat(@"HUEcosystemAccessoryRemovalActionConfirmationTitleForTwoEcosystems", @"%@%@", v50, v51, v52, v53, v54, v55, v42);
    [v41 appendString:v56];
  }

  else
  {
    if ([v37 count] < 3)
    {
      goto LABEL_20;
    }

    v57 = [v37 firstObject];
    v64 = HULocalizedStringWithFormat(@"HUEcosystemAccessoryRemovalActionConfirmationTitleForMultipleEcosystems_FirstEcosystem", @"%@", v58, v59, v60, v61, v62, v63, v57);
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

    v42 = [v37 lastObject];
    v49 = HULocalizedStringWithFormat(@"HUEcosystemAccessoryRemovalActionConfirmationTitleForMultipleEcosystems_LastEcosystem", @"%@", v76, v77, v78, v79, v80, v81, v42);
    [v41 appendString:v49];
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