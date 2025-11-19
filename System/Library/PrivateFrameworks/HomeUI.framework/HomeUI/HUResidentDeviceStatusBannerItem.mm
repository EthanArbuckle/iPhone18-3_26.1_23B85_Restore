@interface HUResidentDeviceStatusBannerItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUResidentDeviceStatusBannerItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  if ([v5 BOOLValue])
  {

LABEL_4:
    v7 = MEMORY[0x277D2C900];
    v8 = MEMORY[0x277D14780];
    v17 = *MEMORY[0x277D13FB8];
    v18[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v10 = [v8 outcomeWithResults:v9];
    v11 = [v7 futureWithResult:v10];

    goto LABEL_6;
  }

  v6 = [MEMORY[0x277D14CE8] isPressDemoModeEnabled];

  if (v6)
  {
    goto LABEL_4;
  }

  v12 = MEMORY[0x277D2C900];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__HUResidentDeviceStatusBannerItem__subclass_updateWithOptions___block_invoke;
  v14[3] = &unk_277DB8200;
  v15 = v4;
  v16 = self;
  v11 = [v12 futureWithBlock:v14];
  v9 = v15;
LABEL_6:

  return v11;
}

void __64__HUResidentDeviceStatusBannerItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v10.receiver = *(a1 + 40);
  v10.super_class = HUResidentDeviceStatusBannerItem;
  v4 = a2;
  v5 = objc_msgSendSuper2(&v10, sel__subclass_updateWithOptions_, v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HUResidentDeviceStatusBannerItem__subclass_updateWithOptions___block_invoke_2;
  v9[3] = &unk_277DBB878;
  v9[4] = *(a1 + 40);
  v6 = [v5 flatMap:v9];

  v7 = [v4 completionHandlerAdapter];

  v8 = [v6 addCompletionBlock:v7];
}

id __64__HUResidentDeviceStatusBannerItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D13FB8];
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:v4];

    goto LABEL_35;
  }

  v8 = [v4 mutableCopy];

  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D14078]];
  v10 = [v9 count];
  v11 = *(a1 + 32);
  if (!v10)
  {
    v23 = [v11 sourceItem];
    v12 = [v23 home];

    v24 = [v12 hf_remoteAccessState];
    v25 = [MEMORY[0x277D146E8] sharedDispatcher];
    v26 = [v25 homeManager];
    v27 = [v26 residentProvisioningStatus];

    v28 = [v12 hf_hasAppleTVs];
    v29 = [v12 hf_hasHomePods];
    v30 = MEMORY[0x277D13DC0];
    if (v27)
    {
      v35 = @"HFStatusDetailsRemoteAccessAvailableButNeedsTwoFactorAuthTitle";
      if (v24 == 1)
      {
        v35 = @"HFStatusDetailsNeedsTwoFactorAuthTitle";
      }

      v36 = *MEMORY[0x277D13F68];
      v37 = v35;
      [v8 setObject:v37 forKeyedSubscript:v36];
      v38 = HFLocalizedString();

      [v8 setObject:v38 forKeyedSubscript:*MEMORY[0x277D13F60]];
      v39 = HFLocalizedString();
      v40 = *MEMORY[0x277D13E20];
    }

    else
    {
      v31 = v29;
      if ((v27 & 2) != 0 && v24 == 1)
      {
        v32 = HFLocalizedString();
        [v8 setObject:v32 forKeyedSubscript:*MEMORY[0x277D13F60]];

        v33 = *MEMORY[0x277D13F68];
        if ((v28 & v31) == 1)
        {
          v34 = @"HFStatusDetailsNoRemoteAccessDescription_AppleTVHomePod";
        }

        else if (v28)
        {
          v34 = @"HFStatusDetailsNoRemoteAccessDescription_AppleTV";
        }

        else
        {
          if (!v31)
          {
            [v8 setObject:@"HFStatusDetailsNoRemoteAccessNotAtHomeTitle" forKeyedSubscript:v33];
            v52 = HFLogForCategory();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              v54 = *(a1 + 32);
              *buf = 138412290;
              v56 = v54;
              _os_log_error_impl(&dword_20CEB6000, v52, OS_LOG_TYPE_ERROR, "%@: Showing 'No Remote Access' banner but there are no HomePods or Apple TVs in the home.", buf, 0xCu);
            }

            goto LABEL_29;
          }

          v34 = @"HFStatusDetailsNoRemoteAccessDescription_HomePod";
        }

        [v8 setObject:v34 forKeyedSubscript:v33];
        v45 = HFLocalizedString();
        [v8 setObject:v45 forKeyedSubscript:*MEMORY[0x277D13E20]];

LABEL_29:
        v43 = *MEMORY[0x277D13DE8];
        v42 = v8;
        v41 = 0;
        goto LABEL_30;
      }

      if (v24 != 1 || [v12 hf_isCurrentLocationHome])
      {
        v41 = MEMORY[0x277CBEC38];
        v42 = v8;
        v43 = v3;
LABEL_30:
        [v42 setObject:v41 forKeyedSubscript:v43];
        goto LABEL_31;
      }

      if ((v28 | v31))
      {
        [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v3];
        v44 = HFLogForCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v53 = *(a1 + 32);
          *buf = 138412290;
          v56 = v53;
          _os_log_error_impl(&dword_20CEB6000, v44, OS_LOG_TYPE_ERROR, "%@: Hiding banner since there are HomePods or Apple TVs in the home that are still configuring.", buf, 0xCu);
        }

        goto LABEL_31;
      }

      v50 = HFLocalizedString();
      [v8 setObject:v50 forKeyedSubscript:*MEMORY[0x277D13F60]];

      [v8 setObject:@"HFStatusDetailsNoRemoteAccessTitle" forKeyedSubscript:*MEMORY[0x277D13F68]];
      v39 = [MEMORY[0x277D14C80] aboutResidentDeviceURL];
      v51 = HFLocalizedString();
      [v8 setObject:v51 forKeyedSubscript:*MEMORY[0x277D13E20]];

      v40 = *v30;
    }

    [v8 setObject:v39 forKeyedSubscript:v40];

LABEL_31:
    v46 = MEMORY[0x277CBEC38];
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13F98]];
    [v8 setObject:v46 forKeyedSubscript:*MEMORY[0x277D13F90]];
    v47 = [v8 objectForKeyedSubscript:*v30];

    if (v47)
    {
      v48 = _HULocalizedStringWithDefaultValue(@"HUBannerStatus_LearnMore", @"HUBannerStatus_LearnMore", 1);
      [v8 setObject:v48 forKeyedSubscript:*MEMORY[0x277D13DE8]];
    }

    [v8 setObject:&unk_282491A30 forKeyedSubscript:@"bannerItemCategory"];
    goto LABEL_34;
  }

  v12 = [v11 _sortedObjectDisplayNamesForHomeKitObjects:v9];
  v13 = [v12 count];
  v14 = *MEMORY[0x277D13F68];
  if (v13 == 1)
  {
    [v8 setObject:@"HUBannerResidentDevice_Description_NotReady_OneObject" forKeyedSubscript:v14];
    v15 = [v12 objectAtIndexedSubscript:0];
    v22 = HULocalizedStringWithFormat(@"HUBannerResidentDevice_Description_NotReady_OneObject", @"%@", v16, v17, v18, v19, v20, v21, v15);
    [v8 setObject:v22 forKeyedSubscript:*MEMORY[0x277D13E20]];
  }

  else
  {
    [v8 setObject:@"HUBannerResidentDevice_Description_NotReady_MultipleObjects" forKeyedSubscript:v14];
    v15 = _HULocalizedStringWithDefaultValue(@"HUBannerResidentDevice_Description_NotReady_MultipleObjects", @"HUBannerResidentDevice_Description_NotReady_MultipleObjects", 1);
    [v8 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13E20]];
  }

LABEL_34:
  v7 = [MEMORY[0x277D2C900] futureWithResult:v8];

LABEL_35:

  return v7;
}

@end