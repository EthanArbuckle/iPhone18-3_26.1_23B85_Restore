@interface HUNetworkProtectionModeOptionItem
+ (int64_t)_priorityForTargetProtectionMode:(int64_t)a3;
- (HUNetworkProtectionModeOptionItem)initWithGroup:(id)a3 targetProtectionModeOption:(int64_t)a4;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUNetworkProtectionModeOptionItem

- (HUNetworkProtectionModeOptionItem)initWithGroup:(id)a3 targetProtectionModeOption:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HUNetworkProtectionModeOptionItem;
  v8 = [(HUNetworkProtectionModeOptionItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_group, a3);
    v9->_targetProtectionModeOption = a4;
  }

  return v9;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v3 = self;
  v68 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  v5 = [(HUNetworkProtectionModeOptionItem *)self group];
  v6 = [v5 hf_networkConfigurationProfiles];
  v7 = [v4 setWithArray:v6];

  v8 = [v3 group];
  [v7 addObject:v8];

  v9 = [v3 group];
  v10 = [v9 hf_home];
  v48 = v7;
  [v7 na_safeAddObject:v10];

  v11 = [MEMORY[0x277CD1CA8] hf_detailedLocalizedTitleForTargetProtectionMode:{objc_msgSend(v3, "targetProtectionModeOption")}];
  v12 = [v3 group];
  v13 = [v12 targetProtectionMode];
  v14 = [v3 targetProtectionModeOption];

  v15 = [v3 group];
  v16 = [v15 hf_networkConfigurationProfiles];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __65__HUNetworkProtectionModeOptionItem__subclass_updateWithOptions___block_invoke;
  v49[3] = &unk_277DBCC10;
  v49[4] = v3;
  v17 = [v16 na_any:v49];

  v18 = HFLogForCategory();
  v47 = v11;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v13 == v14;
    v42 = v14;
    v43 = v13;
    v20 = [v3 targetProtectionModeOption];
    v21 = v19 & v17;
    v22 = [v3 group];
    [v3 group];
    v23 = v45 = v17;
    v24 = [v23 hf_title];
    v25 = [v3 group];
    v26 = [v25 targetProtectionMode];
    *buf = 134219778;
    v53 = v3;
    v54 = 2112;
    v55 = v47;
    v56 = 2048;
    v57 = v20;
    v58 = 1024;
    v59 = v19;
    v11 = v47;
    v60 = 1024;
    v61 = v21;
    v14 = v42;
    v13 = v43;
    v62 = 2112;
    v63 = v22;
    v64 = 2112;
    v65 = v24;
    v66 = 2048;
    v67 = v26;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "<HUNetworkProtectionModeOptionItem: %p %@/%lu> (selected=%{BOOL}d, updating=%{BOOL}d) for group (%@ %@, target mode %lu)", buf, 0x4Au);

    v17 = v45;
  }

  v44 = MEMORY[0x277D14780];
  v27 = *MEMORY[0x277D13F60];
  v50[0] = *MEMORY[0x277D13DA8];
  v50[1] = v27;
  v51[0] = v7;
  v51[1] = v11;
  v50[2] = *MEMORY[0x277D13E20];
  v46 = [MEMORY[0x277CD1CA8] hf_detailedLocalizedDescriptionForTargetProtectionMode:{objc_msgSend(v3, "targetProtectionModeOption")}];
  v51[2] = v46;
  v50[3] = *MEMORY[0x277D13FE8];
  v28 = [MEMORY[0x277CCABB0] numberWithBool:v13 == v14];
  v51[3] = v28;
  v50[4] = *MEMORY[0x277D140F0];
  v29 = [MEMORY[0x277CCABB0] numberWithBool:v17];
  v51[4] = v29;
  v50[5] = *MEMORY[0x277D13FF0];
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(objc_opt_class(), "_priorityForTargetProtectionMode:", objc_msgSend(v3, "targetProtectionModeOption"))}];
  v51[5] = v30;
  v50[6] = *MEMORY[0x277D13EA8];
  v31 = MEMORY[0x277CCABB0];
  v32 = [v3 group];
  v33 = [v32 hf_home];
  v34 = [v33 hf_isNetworkProtectionSupportedForAccessories];
  if (v34)
  {
    v35 = MEMORY[0x277CD1CA8];
    v3 = [v3 group];
    v36 = [v35 hf_targetProtectionModeIsValid:{objc_msgSend(v3, "targetProtectionMode")}] ^ 1;
  }

  else
  {
    v36 = 1;
  }

  v37 = [v31 numberWithInt:v36];
  v51[6] = v37;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:7];
  v39 = [v44 outcomeWithResults:v38];

  if (v34)
  {
  }

  v40 = [MEMORY[0x277D2C900] futureWithResult:v39];

  return v40;
}

uint64_t __65__HUNetworkProtectionModeOptionItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1CA8];
  v4 = [a2 currentProtectionMode];
  v5 = [*(a1 + 32) group];
  LODWORD(v3) = [v3 hf_currentProtectionMode:v4 isValidForTargetProtectionMode:{objc_msgSend(v5, "targetProtectionMode")}];

  return v3 ^ 1;
}

+ (int64_t)_priorityForTargetProtectionMode:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return qword_20D5CAA30[a3];
  }
}

@end