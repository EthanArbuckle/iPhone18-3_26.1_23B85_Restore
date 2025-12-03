@interface HUSetupBannerItem
- (id)_determineRequiredAccessorySetupReminders:(id)reminders;
- (id)_determineRequiredLockAccessorySetupReminders:(id)reminders;
- (id)_determineRequiredOnboardingReminders:(id)reminders;
- (id)_namesOfAccessoriesNeedingNaturalLightingOnboarding;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUSetupBannerItem

- (id)_subclass_updateWithOptions:(id)options
{
  v23[2] = *MEMORY[0x277D85DE8];
  v5 = [options objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = MEMORY[0x277D2C900];
    v8 = MEMORY[0x277D14780];
    v9 = *MEMORY[0x277D14150];
    v22[0] = *MEMORY[0x277D13FB8];
    v22[1] = v9;
    v23[0] = MEMORY[0x277CBEC38];
    v23[1] = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v11 = [v8 outcomeWithResults:v10];
    v12 = [v7 futureWithResult:v11];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277D14C98]);
    home = [(HUBannerItem *)self home];
    home2 = [(HUBannerItem *)self home];
    currentUser = [home2 currentUser];
    v17 = [v13 initWithHome:home user:currentUser nameStyle:0];

    v10 = [(HUSetupBannerItem *)self _determineRequiredAccessorySetupReminders:v17];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __49__HUSetupBannerItem__subclass_updateWithOptions___block_invoke;
    v19[3] = &unk_277DC0440;
    v19[4] = self;
    v20 = v17;
    v21 = a2;
    v11 = v17;
    v12 = [v10 flatMap:v19];
  }

  return v12;
}

id __49__HUSetupBannerItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _determineRequiredOnboardingReminders:*(a1 + 40)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HUSetupBannerItem__subclass_updateWithOptions___block_invoke_2;
  v10[3] = &unk_277DC0418;
  v10[4] = *(a1 + 32);
  v11 = v3;
  v9 = *(a1 + 40);
  v5 = v9;
  v12 = v9;
  v6 = v3;
  v7 = [v4 flatMap:v10];

  return v7;
}

id __49__HUSetupBannerItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v230[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  if ([*(a1 + 32) forceShowBanner] && !objc_msgSend(*(a1 + 40), "count") && !objc_msgSend(v3, "count"))
  {
    v5 = *MEMORY[0x277D13918];
    v230[0] = *MEMORY[0x277D138F8];
    v230[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v230 count:2];

    v3 = v6;
  }

  v204 = v3;
  if (![*(a1 + 40) count])
  {
    if (![v3 count])
    {
      v57 = 0;
      v49 = 0;
      v58 = 1;
      goto LABEL_43;
    }

    v26 = HFLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 32);
      v28 = NSStringFromSelector(*(a1 + 56));
      *buf = 138413058;
      v223 = v27;
      v224 = 2112;
      v225 = v28;
      v226 = 2048;
      v227 = [v3 count];
      v228 = 2112;
      v229 = v3;
      _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "%@:%@ Showing reminder banner for %lu onboarding features (%@)", buf, 0x2Au);
    }

    [v4 setObject:&unk_282491BB0 forKeyedSubscript:@"HFResultSetupBannerType"];
    [v4 setObject:v3 forKeyedSubscript:@"HFResultKeyPathsForUnfinishedOnboardingFlows"];
    if ([v3 count] == 1)
    {
      v12 = [v3 firstObject];
      if ([v12 isEqualToString:*MEMORY[0x277D138F8]])
      {
        v29 = _HULocalizedStringWithDefaultValue(@"HUSetupCellFinishVoiceProfileSetup_Title", @"HUSetupCellFinishVoiceProfileSetup_Title", 1);
        [v4 setObject:v29 forKeyedSubscript:*MEMORY[0x277D13F60]];

        [v4 setObject:@"Home.Banners.SetUp.FinishVoiceProfile" forKeyedSubscript:*MEMORY[0x277D13DC8]];
        [v4 setObject:@"HUSetupCellFinishVoiceProfileSetup_Title" forKeyedSubscript:*MEMORY[0x277D13F68]];
        v30 = _HULocalizedStringWithDefaultValue(@"HUSetupCellFinishVoiceProfileSetup_Details", @"HUSetupCellFinishVoiceProfileSetup_Details", 1);
        [v4 setObject:v30 forKeyedSubscript:*MEMORY[0x277D13E20]];

        v31 = _HULocalizedStringWithDefaultValue(@"HUSetupCellContinue", @"HUSetupCellContinue", 1);
        [v4 setObject:v31 forKeyedSubscript:*MEMORY[0x277D13DE8]];

        v32 = objc_alloc(MEMORY[0x277D14838]);
        v33 = *MEMORY[0x277D13AE8];
        v214[0] = *MEMORY[0x277D13AF0];
        v214[1] = v33;
        v34 = *MEMORY[0x277D13AD8];
        v215[0] = *MEMORY[0x277D13AE0];
        v215[1] = v34;
        v35 = MEMORY[0x277CBEAC0];
        v36 = v215;
        v37 = v214;
      }

      else
      {
        if (![v12 isEqualToString:*MEMORY[0x277D13918]])
        {
          if (![v12 isEqualToString:*MEMORY[0x277D13928]])
          {
            if (![v12 isEqualToString:*MEMORY[0x277D13910]])
            {
              goto LABEL_41;
            }

            v113 = _HULocalizedStringWithDefaultValue(@"HUSetupCellFinishNaturalLightingSetup_Title", @"HUSetupCellFinishNaturalLightingSetup_Title", 1);
            [v4 setObject:v113 forKeyedSubscript:*MEMORY[0x277D13F60]];

            [v4 setObject:@"Home.Banners.SetUp.FinishNaturalLighting" forKeyedSubscript:*MEMORY[0x277D13DC8]];
            [v4 setObject:@"HUSetupCellFinishNaturalLightingSetup_Title" forKeyedSubscript:*MEMORY[0x277D13F68]];
            v18 = _HULocalizedStringWithDefaultValue(@"HUSetupCellFinishNaturalLightingSetup_Details", @"HUSetupCellFinishNaturalLightingSetup_Details", 1);
            v19 = [*(a1 + 32) _namesOfAccessoriesNeedingNaturalLightingOnboarding];
            if ([v19 count] == 1)
            {
              v114 = [v19 firstObject];
              v121 = HULocalizedStringWithFormat(@"HUSetupCellFinishNaturalLightingSetup_Details_SingleAccessory", @"%@", v115, v116, v117, v118, v119, v120, v114);

              v18 = v121;
            }

            [v4 setObject:v18 forKeyedSubscript:*MEMORY[0x277D13E20]];
            v122 = _HULocalizedStringWithDefaultValue(@"HUSetupCellFinishNaturalLightingSetup_Continue", @"HUSetupCellFinishNaturalLightingSetup_Continue", 1);
            [v4 setObject:v122 forKeyedSubscript:*MEMORY[0x277D13DE8]];

            v123 = objc_alloc(MEMORY[0x277D14838]);
            v124 = *MEMORY[0x277D13AE8];
            v210[0] = *MEMORY[0x277D13AF0];
            v210[1] = v124;
            v125 = *MEMORY[0x277D13A60];
            v211[0] = *MEMORY[0x277D13A68];
            v211[1] = v125;
            v126 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v211 forKeys:v210 count:2];
            v127 = [v123 initWithImageIdentifiersKeyedBySize:v126];
            [v4 setObject:v127 forKeyedSubscript:*MEMORY[0x277D13E88]];

            goto LABEL_39;
          }

          v105 = _HULocalizedStringWithDefaultValue(@"HUEnergySettingsConnectUtilityTitle", @"HUEnergySettingsConnectUtilityTitle", 1);
          [v4 setObject:v105 forKeyedSubscript:*MEMORY[0x277D13F60]];

          [v4 setObject:@"Home.Banners.SetUp.FinishUtility" forKeyedSubscript:*MEMORY[0x277D13DC8]];
          [v4 setObject:@"HUEnergySettingsConnectUtilityTitle" forKeyedSubscript:*MEMORY[0x277D13F68]];
          v106 = _HULocalizedStringWithDefaultValue(@"HUEnergySettingsConnectUtilityDetail", @"HUEnergySettingsConnectUtilityDetail", 1);
          [v4 setObject:v106 forKeyedSubscript:*MEMORY[0x277D13E20]];

          v107 = _HULocalizedStringWithDefaultValue(@"HUEnergySettingsConnectUtility", @"HUEnergySettingsConnectUtility", 1);
          [v4 setObject:v107 forKeyedSubscript:*MEMORY[0x277D13DE8]];

          v18 = HUImageNamed(@"Onboarding-HomeUtilityLogo");
          v65 = MEMORY[0x277D13E98];
LABEL_28:
          [v4 setObject:v18 forKeyedSubscript:*v65];
LABEL_40:

          goto LABEL_41;
        }

        v76 = _HULocalizedStringWithDefaultValue(@"HUSetupCellFinishTVViewingProfileSetup_Title", @"HUSetupCellFinishTVViewingProfileSetup_Title", 1);
        [v4 setObject:v76 forKeyedSubscript:*MEMORY[0x277D13F60]];

        [v4 setObject:@"Home.Banners.SetUp.FinishTVViewingProfile" forKeyedSubscript:*MEMORY[0x277D13DC8]];
        [v4 setObject:@"HUSetupCellFinishTVViewingProfileSetup_Title" forKeyedSubscript:*MEMORY[0x277D13F68]];
        v77 = _HULocalizedStringWithDefaultValue(@"HUSetupCellFinishTVViewingProfileSetup_Details", @"HUSetupCellFinishTVViewingProfileSetup_Details", 1);
        [v4 setObject:v77 forKeyedSubscript:*MEMORY[0x277D13E20]];

        v78 = _HULocalizedStringWithDefaultValue(@"HUSetupCellContinue", @"HUSetupCellContinue", 1);
        [v4 setObject:v78 forKeyedSubscript:*MEMORY[0x277D13DE8]];

        v32 = objc_alloc(MEMORY[0x277D14838]);
        v79 = *MEMORY[0x277D13AE8];
        v212[0] = *MEMORY[0x277D13AF0];
        v212[1] = v79;
        v80 = *MEMORY[0x277D13A20];
        v213[0] = *MEMORY[0x277D13A28];
        v213[1] = v80;
        v35 = MEMORY[0x277CBEAC0];
        v36 = v213;
        v37 = v212;
      }

      v18 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:2];
      v81 = [v32 initWithImageIdentifiersKeyedBySize:v18];
      goto LABEL_37;
    }

    v59 = _HULocalizedStringWithDefaultValue(@"HUSetupCellFinishHomeSetup_Title", @"HUSetupCellFinishHomeSetup_Title", 1);
    [v4 setObject:v59 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v4 setObject:@"Home.Banners.SetUp.FinishSettingUpHome" forKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v4 setObject:@"HUSetupCellFinishHomeSetup_Title" forKeyedSubscript:*MEMORY[0x277D13F68]];
    v60 = _HULocalizedStringWithDefaultValue(@"HUSetupCellFinishHomeSetup_Details", @"HUSetupCellFinishHomeSetup_Details", 1);
    [v4 setObject:v60 forKeyedSubscript:*MEMORY[0x277D13E20]];

    v61 = _HULocalizedStringWithDefaultValue(@"HUSetupCellContinue", @"HUSetupCellContinue", 1);
    [v4 setObject:v61 forKeyedSubscript:*MEMORY[0x277D13DE8]];

    v41 = objc_alloc(MEMORY[0x277D14838]);
    v62 = *MEMORY[0x277D13AE8];
    v208[0] = *MEMORY[0x277D13AF0];
    v208[1] = v62;
    v63 = *MEMORY[0x277D13A48];
    v209[0] = *MEMORY[0x277D13A58];
    v209[1] = v63;
    v44 = MEMORY[0x277CBEAC0];
    v45 = v209;
    v46 = v208;
LABEL_26:
    v12 = [v44 dictionaryWithObjects:v45 forKeys:v46 count:2];
    v64 = [v41 initWithImageIdentifiersKeyedBySize:v12];
LABEL_27:
    v18 = v64;
    v65 = MEMORY[0x277D13E88];
    goto LABEL_28;
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = NSStringFromSelector(*(a1 + 56));
    v10 = [*(a1 + 40) count];
    v11 = *(a1 + 40);
    *buf = 138413058;
    v223 = v8;
    v224 = 2112;
    v225 = v9;
    v226 = 2048;
    v227 = v10;
    v228 = 2112;
    v229 = v11;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Showing reminder banner for %lu accessory setup features (%@)", buf, 0x2Au);
  }

  [v4 setObject:&unk_282491B98 forKeyedSubscript:@"HFResultSetupBannerType"];
  [v4 setObject:*(a1 + 40) forKeyedSubscript:@"HFResultSetupBannerAccessorySetupFlowsKey"];
  if ([*(a1 + 40) count] != 1)
  {
    v38 = _HULocalizedStringWithDefaultValue(@"HUSetupCellFinishHomeSetup_Title", @"HUSetupCellFinishHomeSetup_Title", 1);
    [v4 setObject:v38 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v4 setObject:@"Home.Banners.SetUp.FinishSettingUpHome" forKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v4 setObject:@"HUSetupCellFinishHomeSetup_Title" forKeyedSubscript:*MEMORY[0x277D13F68]];
    v39 = _HULocalizedStringWithDefaultValue(@"HUSetupCellFinishHomeSetup_Details", @"HUSetupCellFinishHomeSetup_Details", 1);
    [v4 setObject:v39 forKeyedSubscript:*MEMORY[0x277D13E20]];

    v40 = _HULocalizedStringWithDefaultValue(@"HUSetupCellContinue", @"HUSetupCellContinue", 1);
    [v4 setObject:v40 forKeyedSubscript:*MEMORY[0x277D13DE8]];

    v41 = objc_alloc(MEMORY[0x277D14838]);
    v42 = *MEMORY[0x277D13AE8];
    v216[0] = *MEMORY[0x277D13AF0];
    v216[1] = v42;
    v43 = *MEMORY[0x277D13A48];
    v217[0] = *MEMORY[0x277D13A58];
    v217[1] = v43;
    v44 = MEMORY[0x277CBEAC0];
    v45 = v217;
    v46 = v216;
    goto LABEL_26;
  }

  v12 = [*(a1 + 40) firstObject];
  v13 = [v12 type];
  v14 = [v13 isEqualToString:HFAccessorySetupFlowTypeResume];

  if (v14)
  {
    [v4 setObject:&unk_282491B98 forKeyedSubscript:@"HFResultSetupBannerType"];
    [v4 setObject:v3 forKeyedSubscript:@"HFResultKeyPathsForUnfinishedOnboardingFlows"];
    objc_opt_class();
    v15 = [v12 homeKitObjects];
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if ([v17 count] == 1)
    {
      v18 = [v17 firstObject];

      v19 = [v18 hf_categoryOrPrimaryServiceType];
      v20 = [v18 matterDeviceTypeID];
      v21 = HFLocalizedCategoryOrPrimaryServiceTypeString();
      [v4 setObject:v21 forKeyedSubscript:*MEMORY[0x277D13F60]];

      [v4 setObject:@"Home.Banners.SetUp.ResumeAccessoryConfiguration" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v4 setObject:@"HUSetupBannerResumeAccessoryConfigurationTitle" forKeyedSubscript:*MEMORY[0x277D13F68]];
      v22 = _HULocalizedStringWithDefaultValue(@"HUSetupBannerResumeAccessoryConfigurationSubtitle", @"HUSetupBannerResumeAccessoryConfigurationSubtitle", 1);
      [v4 setObject:v22 forKeyedSubscript:*MEMORY[0x277D13E20]];

      v23 = [v18 matterDeviceTypeID];
      v24 = HFLocalizedCategoryOrPrimaryServiceTypeString();
      [v4 setObject:v24 forKeyedSubscript:*MEMORY[0x277D13DE8]];

      v25 = [MEMORY[0x277D14AC0] iconDescriptorForAccessory:v18];
      [v4 setObject:v25 forKeyedSubscript:*MEMORY[0x277D13E88]];

LABEL_39:
      goto LABEL_40;
    }

    v66 = [v17 count];

    if (v66 < 2)
    {
LABEL_41:
      v57 = 0;
      v49 = 0;
      goto LABEL_42;
    }

    v67 = _HULocalizedStringWithDefaultValue(@"HUSetupBannerResumeMultipleAccessoriesConfigurationTitle", @"HUSetupBannerResumeMultipleAccessoriesConfigurationTitle", 1);
    [v4 setObject:v67 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v4 setObject:@"Home.Banners.SetUp.ResumeMultipleAccessoryConfiguration" forKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v4 setObject:@"HUSetupBannerResumeMultipleAccessoriesConfigurationTitle" forKeyedSubscript:*MEMORY[0x277D13F68]];
    v68 = _HULocalizedStringWithDefaultValue(@"HUSetupBannerResumeMultipleAccessoriesConfigurationSubtitle", @"HUSetupBannerResumeMultipleAccessoriesConfigurationSubtitle", 1);
    [v4 setObject:v68 forKeyedSubscript:*MEMORY[0x277D13E20]];

    v69 = _HULocalizedStringWithDefaultValue(@"HUSetupBannerResumeMultipleAccessoriesConfigurationButton", @"HUSetupBannerResumeMultipleAccessoriesConfigurationButton", 1);
    [v4 setObject:v69 forKeyedSubscript:*MEMORY[0x277D13DE8]];

    v64 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"house.circle.fill"];
    goto LABEL_27;
  }

  v47 = [v12 type];
  v48 = [v47 isEqualToString:HFAccessorySetupFlowTypeLockAccessFirmwareUpdateAll];

  if (!v48)
  {
    v70 = [v12 type];
    v71 = [v70 isEqualToString:HFAccessorySetupFlowTypeLockAccessAll];

    if (v71)
    {
      v49 = 1;
      v72 = _HULocalizedStringWithDefaultValue(@"HUSetupBannerLocksUserOnboarding_Title_WalletKeyExpressMode", @"HUSetupBannerLocksUserOnboarding_Title_WalletKeyExpressMode", 1);
      [v4 setObject:v72 forKeyedSubscript:*MEMORY[0x277D13F60]];

      [v4 setObject:@"Home.Banners.SetUp.Lock.HomeKeyAndExpressMode" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v4 setObject:@"HUSetupBannerLocksUserOnboarding_Title_WalletKeyExpressMode" forKeyedSubscript:*MEMORY[0x277D13F68]];
      v73 = _HULocalizedStringWithDefaultValue(@"HUSetupBannerLocksUserOnboarding_Details_All", @"HUSetupBannerLocksUserOnboarding_Details_All", 1);
      [v4 setObject:v73 forKeyedSubscript:*MEMORY[0x277D13E20]];

      v74 = _HULocalizedStringWithDefaultValue(@"HUSetupCellSetUp", @"HUSetupCellSetUp", 1);
      [v4 setObject:v74 forKeyedSubscript:*MEMORY[0x277D13DE8]];

      v53 = [*(a1 + 48) home];
      v54 = [v53 hf_walletKeyAccessories];
      v55 = v54;
      v56 = &__block_literal_global_67_0;
      goto LABEL_33;
    }

    v101 = [v12 type];
    v102 = [v101 isEqualToString:HFAccessorySetupFlowTypeLockAccessFirmwareUpdatePinCode];

    if (v102)
    {
      v49 = 1;
      v103 = _HULocalizedStringWithDefaultValue(@"HUSetupCellLockFeatures_Title", @"HUSetupCellLockFeatures_Title", 1);
      [v4 setObject:v103 forKeyedSubscript:*MEMORY[0x277D13F60]];

      [v4 setObject:@"Home.Banners.SetUp.Lock.FirmwareUpdatePinCode" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v4 setObject:@"HUSetupCellLockFeatures_Title" forKeyedSubscript:*MEMORY[0x277D13F68]];
      v104 = @"HUSetupCellLockFeatures_Details_AccessCode";
LABEL_55:
      v111 = _HULocalizedStringWithDefaultValue(v104, v104, 1);
      [v4 setObject:v111 forKeyedSubscript:*MEMORY[0x277D13E20]];

      v112 = _HULocalizedStringWithDefaultValue(@"HUSetupCellSetUp", @"HUSetupCellSetUp", 1);
      [v4 setObject:v112 forKeyedSubscript:*MEMORY[0x277D13DE8]];

      v57 = 0;
      goto LABEL_42;
    }

    v108 = [v12 type];
    v109 = [v108 isEqualToString:HFAccessorySetupFlowTypeLockAccessPinCode];

    if (v109)
    {
      v49 = 1;
      v110 = _HULocalizedStringWithDefaultValue(@"HUSetupBannerLocksUserOnboarding_Title_AccessCode", @"HUSetupBannerLocksUserOnboarding_Title_AccessCode", 1);
      [v4 setObject:v110 forKeyedSubscript:*MEMORY[0x277D13F60]];

      [v4 setObject:@"Home.Banners.SetUp.Lock.PersonalAccessCodeAvailable" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v4 setObject:@"HUSetupBannerLocksUserOnboarding_Title_AccessCode" forKeyedSubscript:*MEMORY[0x277D13F68]];
      v104 = @"HUSetupBannerLocksUserOnboarding_Details_AccessCode";
      goto LABEL_55;
    }

    v128 = [v12 type];
    v129 = [v128 isEqualToString:HFAccessorySetupFlowTypeLockAccessFirmwareUpdateWalletKey];

    if (v129)
    {
      v57 = 1;
      v130 = _HULocalizedStringWithDefaultValue(@"HUSetupCellLockFeatures_Title", @"HUSetupCellLockFeatures_Title", 1);
      [v4 setObject:v130 forKeyedSubscript:*MEMORY[0x277D13F60]];

      [v4 setObject:@"Home.Banners.SetUp.Lock.Features" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v4 setObject:@"HUSetupCellLockFeatures_Title" forKeyedSubscript:*MEMORY[0x277D13F68]];
      v131 = @"HUSetupCellLockFeatures_Details_WalletKey";
LABEL_68:
      v148 = _HULocalizedStringWithDefaultValue(v131, v131, 1);
      [v4 setObject:v148 forKeyedSubscript:*MEMORY[0x277D13E20]];

      v149 = _HULocalizedStringWithDefaultValue(@"HUSetupCellSetUp", @"HUSetupCellSetUp", 1);
      [v4 setObject:v149 forKeyedSubscript:*MEMORY[0x277D13DE8]];

      v49 = 1;
      goto LABEL_42;
    }

    v132 = [v12 type];
    if ([v132 isEqualToString:HFAccessorySetupFlowTypeLockAccessWalletKeyUWB])
    {
      v133 = _os_feature_enabled_impl();

      if (v133)
      {
        v134 = _HULocalizedStringWithDefaultValue(@"HUSetupCellLocksUserOnboarding_Title_WalletKeyUWB", @"HUSetupCellLocksUserOnboarding_Title_WalletKeyUWB", 1);
        [v4 setObject:v134 forKeyedSubscript:*MEMORY[0x277D13F60]];

        [v4 setObject:@"HUSetupCellLocksUserOnboarding_Title_WalletKeyUWB" forKeyedSubscript:*MEMORY[0x277D13F68]];
        v135 = _HULocalizedStringWithDefaultValue(@"HUSetupCellLocksUserOnboarding_Details_WalletKeyUWB", @"HUSetupCellLocksUserOnboarding_Details_WalletKeyUWB", 1);
        [v4 setObject:v135 forKeyedSubscript:*MEMORY[0x277D13E20]];

        v136 = _HULocalizedStringWithDefaultValue(@"HUSetupCellSetUp", @"HUSetupCellSetUp", 1);
        [v4 setObject:v136 forKeyedSubscript:*MEMORY[0x277D13DE8]];

        [v4 setObject:0 forKeyedSubscript:*MEMORY[0x277D13F58]];
        v137 = MEMORY[0x277D755D0];
        v138 = [MEMORY[0x277D75348] lightGrayColor];
        v221[0] = v138;
        v139 = [MEMORY[0x277D75348] lightGrayColor];
        v221[1] = v139;
        v140 = [MEMORY[0x277CBEA60] arrayWithObjects:v221 count:2];
        v18 = [v137 configurationWithPaletteColors:v140];

        v141 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"door.left.hand.closed" configuration:v18];
        [v4 setObject:v141 forKeyedSubscript:*MEMORY[0x277D13E88]];

        v142 = MEMORY[0x277D755D0];
        v143 = [MEMORY[0x277D75348] labelColor];
        v19 = [v142 configurationWithHierarchicalColor:v143];

        v144 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"figure.stand" configuration:v19];
        [v4 setObject:v144 forKeyedSubscript:*MEMORY[0x277D13F30]];

        v82 = *MEMORY[0x277D13F38];
        v84 = &unk_282493520;
        v83 = v4;
        goto LABEL_38;
      }
    }

    else
    {
    }

    v145 = [v12 type];
    v146 = [v145 isEqualToString:HFAccessorySetupFlowTypeLockAccessWalletKey];

    if (v146)
    {
      v57 = 1;
      v147 = _HULocalizedStringWithDefaultValue(@"HUSetupBannerLocksUserOnboarding_Title_WalletKeyExpressMode", @"HUSetupBannerLocksUserOnboarding_Title_WalletKeyExpressMode", 1);
      [v4 setObject:v147 forKeyedSubscript:*MEMORY[0x277D13F60]];

      [v4 setObject:@"Home.Banners.SetUp.Lock.WalletKeyAndExpressMode" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v4 setObject:@"HUSetupBannerLocksUserOnboarding_Title_WalletKeyExpressMode" forKeyedSubscript:*MEMORY[0x277D13F68]];
      v131 = @"HUSetupBannerLocksUserOnboarding_Details_WalletKey";
      goto LABEL_68;
    }

    v150 = [v12 type];
    v151 = [v150 isEqualToString:HFAccessorySetupFlowTypeSafetyAndSecurity];

    if (v151)
    {
      v152 = _HULocalizedStringWithDefaultValue(@"HUSafetyAndSecurityBanner_Title", @"HUSafetyAndSecurityBanner_Title", 1);
      [v4 setObject:v152 forKeyedSubscript:*MEMORY[0x277D13F60]];

      [v4 setObject:@"HUSafetyAndSecurityBanner_Title" forKeyedSubscript:*MEMORY[0x277D13F68]];
      v153 = _HULocalizedStringWithDefaultValue(@"HUSafetyAndSecurityBanner_Description", @"HUSafetyAndSecurityBanner_Description", 1);
      [v4 setObject:v153 forKeyedSubscript:*MEMORY[0x277D13E20]];

      v154 = _HULocalizedStringWithDefaultValue(@"HUContinueTitle", @"HUContinueTitle", 1);
      [v4 setObject:v154 forKeyedSubscript:*MEMORY[0x277D13DE8]];

      v155 = objc_alloc(MEMORY[0x277D14728]);
      v156 = [MEMORY[0x277D755B8] hf_safetyAndSecurityImage];
      v157 = [v156 configuration];
      v158 = [v155 initWithSystemImageNamed:@"house.badge.shield.half.filled.fill" configuration:v157];
      [v4 setObject:v158 forKeyedSubscript:*MEMORY[0x277D13E88]];

      goto LABEL_41;
    }

    v159 = [v12 type];
    v160 = [v159 isEqualToString:HFAccessorySetupFlowTypeSiriEndpoint];

    if (v160)
    {
      v161 = [*(a1 + 32) home];
      v18 = [v161 hf_siriEndpointCapableAccessoriesToOnboard];

      if ([v18 count] < 2)
      {
        if ([v18 count] != 1)
        {
LABEL_79:
          v199 = objc_alloc(MEMORY[0x277D14838]);
          v200 = *MEMORY[0x277D13AE8];
          v219[0] = *MEMORY[0x277D13AF0];
          v219[1] = v200;
          v201 = *MEMORY[0x277D13AD8];
          v220[0] = *MEMORY[0x277D13AE0];
          v220[1] = v201;
          v202 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v220 forKeys:v219 count:2];
          v203 = [v199 initWithImageIdentifiersKeyedBySize:v202];
          [v4 setObject:v203 forKeyedSubscript:*MEMORY[0x277D13E88]];

          goto LABEL_40;
        }

        v180 = [v18 firstObject];
        v181 = [v180 hf_serviceNameComponents];
        v182 = [v181 serviceName];
        v189 = HULocalizedStringWithFormat(@"HUSetupCellSiriEndpointSetup_Title_Single", @"%@", v183, v184, v185, v186, v187, v188, v182);
        [v4 setObject:v189 forKeyedSubscript:*MEMORY[0x277D13F60]];

        [v4 setObject:@"Home.Banners.SetUp.Endpoint.SiriIsNowAvailable" forKeyedSubscript:*MEMORY[0x277D13DC8]];
        [v4 setObject:@"HUSetupCellSiriEndpointSetup_Title_Single" forKeyedSubscript:*MEMORY[0x277D13F68]];
        v170 = [v18 firstObject];
        v190 = [v170 hf_userFriendlyLocalizedLowercaseDescription];
        v197 = HULocalizedStringWithFormat(@"HUSetupCellSiriEndpointSetup_Details_Single", @"%@", v191, v192, v193, v194, v195, v196, v190);
        [v4 setObject:v197 forKeyedSubscript:*MEMORY[0x277D13E20]];

        v171 = @"HUSetupCellSiriEndpointSetup_ActionButtonTitle_Single";
      }

      else
      {
        v162 = _HULocalizedStringWithDefaultValue(@"HUSetupCellSiriEndpointSetup_Title_Multiple", @"HUSetupCellSiriEndpointSetup_Title_Multiple", 1);
        [v4 setObject:v162 forKeyedSubscript:*MEMORY[0x277D13F60]];

        [v4 setObject:@"Home.Banners.SetUp.Endpoint.AddSiriToAccesories" forKeyedSubscript:*MEMORY[0x277D13DC8]];
        [v4 setObject:@"HUSetupCellSiriEndpointSetup_Title_Multiple" forKeyedSubscript:*MEMORY[0x277D13F68]];
        v163 = [v18 count];
        v170 = HULocalizedStringWithFormat(@"HUSetupCellSiriEndpointSetup_Details_Multiple", @"%lu", v164, v165, v166, v167, v168, v169, v163);
        [v4 setObject:v170 forKeyedSubscript:*MEMORY[0x277D13E20]];
        v171 = @"HUSetupCellSiriEndpointSetup_ActionButtonTitle_Multiple";
      }

      v198 = _HULocalizedStringWithDefaultValue(v171, v171, 1);
      [v4 setObject:v198 forKeyedSubscript:*MEMORY[0x277D13DE8]];

      goto LABEL_79;
    }

    v172 = [v12 type];
    v173 = [v172 isEqualToString:HFAccessorySetupFlowTypeEnergyOptimization];

    if (!v173)
    {
      goto LABEL_41;
    }

    v174 = _HULocalizedStringWithDefaultValue(@"HUThermostatEnergyOptimization_Title", @"HUThermostatEnergyOptimization_Title", 1);
    [v4 setObject:v174 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v4 setObject:@"HUThermostatEnergyOptimization_Title" forKeyedSubscript:*MEMORY[0x277D13F68]];
    v175 = _HULocalizedStringWithDefaultValue(@"HUThermostatEnergyOptimization_Decription", @"HUThermostatEnergyOptimization_Decription", 1);
    [v4 setObject:v175 forKeyedSubscript:*MEMORY[0x277D13E20]];

    v176 = _HULocalizedStringWithDefaultValue(@"HUSetupCellSetUp", @"HUSetupCellSetUp", 1);
    [v4 setObject:v176 forKeyedSubscript:*MEMORY[0x277D13DE8]];

    [v4 setObject:0 forKeyedSubscript:*MEMORY[0x277D13F58]];
    v177 = MEMORY[0x277D755D0];
    v178 = [MEMORY[0x277D75348] systemOrangeColor];
    v218 = v178;
    v179 = [MEMORY[0x277CBEA60] arrayWithObjects:&v218 count:1];
    v18 = [v177 configurationWithPaletteColors:v179];

    v81 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"house.fill" configuration:v18];
LABEL_37:
    v19 = v81;
    v82 = *MEMORY[0x277D13E88];
    v83 = v4;
    v84 = v19;
LABEL_38:
    [v83 setObject:v84 forKeyedSubscript:v82];
    goto LABEL_39;
  }

  v49 = 1;
  v50 = _HULocalizedStringWithDefaultValue(@"HUSetupCellLockFeatures_Title", @"HUSetupCellLockFeatures_Title", 1);
  [v4 setObject:v50 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v4 setObject:@"Home.Banners.SetUp.Lock.NewFeatures" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  [v4 setObject:@"HUSetupCellLockFeatures_Title" forKeyedSubscript:*MEMORY[0x277D13F68]];
  v51 = _HULocalizedStringWithDefaultValue(@"HUSetupCellLockFeatures_Details_All", @"HUSetupCellLockFeatures_Details_All", 1);
  [v4 setObject:v51 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v52 = _HULocalizedStringWithDefaultValue(@"HUSetupCellSetUp", @"HUSetupCellSetUp", 1);
  [v4 setObject:v52 forKeyedSubscript:*MEMORY[0x277D13DE8]];

  v53 = [*(a1 + 48) home];
  v54 = [v53 hf_walletKeyAccessories];
  v55 = v54;
  v56 = &__block_literal_global_177;
LABEL_33:
  v75 = [v54 na_any:v56];

  v57 = v75 ^ 1u;
LABEL_42:

  v58 = 0;
LABEL_43:
  v85 = [MEMORY[0x277CBEB58] set];
  v86 = [MEMORY[0x277CBEB58] set];
  v87 = [*(a1 + 32) home];
  v88 = [v87 hf_homePods];

  [v85 addObjectsFromArray:v88];
  v89 = [*(a1 + 32) home];
  [v85 addObject:v89];

  v90 = [*(a1 + 32) home];
  v91 = [v90 currentUser];
  [v85 addObject:v91];

  v207[0] = objc_opt_class();
  v207[1] = objc_opt_class();
  v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v207 count:2];
  [v86 addObjectsFromArray:v92];

  [v86 addObject:objc_opt_class()];
  [v86 addObject:objc_opt_class()];
  [v4 setObject:v85 forKeyedSubscript:*MEMORY[0x277D13DA8]];
  [v4 setObject:v86 forKeyedSubscript:*MEMORY[0x277D13DA0]];
  v93 = [MEMORY[0x277CCABB0] numberWithBool:v58];
  [v4 setObject:v93 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v94 = [*(a1 + 32) _possibleDependentKeyPaths];
  [v4 setObject:v94 forKeyedSubscript:*MEMORY[0x277D14098]];

  v95 = [*(a1 + 48) homekitObjectIdentifiers];
  [v4 setObject:v95 forKeyedSubscript:*MEMORY[0x277D140A0]];

  [v4 setObject:&unk_282491BC8 forKeyedSubscript:@"bannerItemCategory"];
  if (v49)
  {
    v96 = MEMORY[0x277D14D08];
    v97 = [*(a1 + 48) home];
    v98 = [v96 walletKeyIconDescriptorForHome:v97 shouldUseKeyholeAsset:v57 foriPhoneDevice:1];
    v205[0] = MEMORY[0x277D85DD0];
    v205[1] = 3221225472;
    v205[2] = __49__HUSetupBannerItem__subclass_updateWithOptions___block_invoke_235;
    v205[3] = &unk_277DC03F0;
    v206 = v4;
    v99 = [v98 flatMap:v205];
  }

  else
  {
    v99 = [MEMORY[0x277D2C900] futureWithResult:v4];
  }

  return v99;
}

uint64_t __49__HUSetupBannerItem__subclass_updateWithOptions___block_invoke_235(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) safeSetObject:a2 forKey:*MEMORY[0x277D13E88]];
  v3 = MEMORY[0x277D2C900];
  v4 = *(a1 + 32);

  return [v3 futureWithResult:v4];
}

- (id)_determineRequiredOnboardingReminders:(id)reminders
{
  remindersCopy = reminders;
  home = [(HUBannerItem *)self home];
  v7 = [HUHomeFeatureOnboardingUtilities atLeastOneHomePodHasLanguageSettingsForHomeFuture:home];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HUSetupBannerItem__determineRequiredOnboardingReminders___block_invoke;
  v11[3] = &unk_277DC04B8;
  v12 = remindersCopy;
  selfCopy = self;
  v14 = a2;
  v8 = remindersCopy;
  v9 = [v7 flatMap:v11];

  return v9;
}

id __59__HUSetupBannerItem__determineRequiredOnboardingReminders___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__HUSetupBannerItem__determineRequiredOnboardingReminders___block_invoke_2;
  v14[3] = &unk_277DC0468;
  v15 = *(a1 + 32);
  v16 = v3;
  v17 = *(a1 + 40);
  v5 = v3;
  v6 = [v4 futureWithBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__HUSetupBannerItem__determineRequiredOnboardingReminders___block_invoke_241;
  v12[3] = &unk_277DC0490;
  v13 = *(a1 + 32);
  v7 = [v6 flatMap:v12];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HUSetupBannerItem__determineRequiredOnboardingReminders___block_invoke_3;
  v10[3] = &unk_277DC0490;
  v11 = *(a1 + 32);
  v8 = [v7 flatMap:v10];

  return v8;
}

void __59__HUSetupBannerItem__determineRequiredOnboardingReminders___block_invoke_2(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [*(a1 + 32) home];
  if ([v5 hf_hasHomePods])
  {
  }

  else
  {
    v6 = [*(a1 + 32) home];
    v7 = [v6 hf_hasRMVCapableAppleTV];

    if (!v7)
    {
      goto LABEL_37;
    }
  }

  if ([*(a1 + 32) hasDismissedVoiceProfileOnboarding] && (objc_msgSend(*(a1 + 32), "hasDismissedIdentifyVoiceReminderBanner") & 1) == 0)
  {
    v8 = [*(a1 + 32) home];
    if (![v8 hf_hasRMVCapableAppleTV])
    {
      v9 = [*(a1 + 32) home];
      if ([v9 hf_hasHomePods])
      {
        v10 = *(a1 + 40);

        if (!v10)
        {
          v11 = HFLogForCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 48);
            v13 = NSStringFromSelector(*(a1 + 56));
            v37 = 138412546;
            v38 = v12;
            v39 = 2112;
            v40 = v13;
            _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@:%@ Supressing reminder banner for Voice ID until language settings sync", &v37, 0x16u);
          }

          v14 = 0;
LABEL_15:
          v15 = +[HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguages];
          v16 = HFLogForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(a1 + 48);
            v18 = NSStringFromSelector(*(a1 + 56));
            v19 = [v15 count];
            v37 = 138413058;
            v38 = v17;
            v39 = 2112;
            v40 = v18;
            v41 = 2048;
            v42 = v19;
            v43 = 2112;
            v44 = v15;
            _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@:%@ (%lu) supported voice recognition languages %@", &v37, 0x2Au);
          }

          if (!v15)
          {
            v20 = HFLogForCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v36 = NSStringFromSelector(*(a1 + 56));
              v37 = 138412290;
              v38 = v36;
              _os_log_error_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages", &v37, 0xCu);
            }

            v14 = 0;
          }

          v21 = [*(a1 + 32) home];
          if (([v21 hf_hasRMVCapableAppleTV] & 1) == 0)
          {
            v22 = [*(a1 + 32) home];
            if ([v22 hf_hasHomePods])
            {
              v23 = [*(a1 + 32) home];
              v24 = [HUHomeFeatureOnboardingUtilities home:v23 hasSomeHomePodsOnSupportedVoiceRecognitionLanguages:v15];

              if (!v24)
              {
                v25 = HFLogForCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  v26 = *(a1 + 48);
                  v27 = NSStringFromSelector(*(a1 + 56));
                  v37 = 138412546;
                  v38 = v26;
                  v39 = 2112;
                  v40 = v27;
                  _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "%@:%@ Supressing reminder banner for Voice ID because no HomePods in this home are on a supported language.", &v37, 0x16u);
                }

                if (![*(a1 + 32) isIdentifyVoiceEnabled])
                {
                  goto LABEL_36;
                }

                goto LABEL_31;
              }

LABEL_30:
              if (([*(a1 + 32) isIdentifyVoiceEnabled] & 1) == 0)
              {
                if (v14)
                {
                  [v4 addObject:*MEMORY[0x277D138F8]];
                }

                goto LABEL_36;
              }

LABEL_31:
              v28 = HFLogForCategory();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v35 = NSStringFromSelector(*(a1 + 56));
                v37 = 138412290;
                v38 = v35;
                _os_log_error_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_ERROR, "%@ Voice Rec is on but Reminder Banner has not been marked dismissed (This shouldn't happen, likey radar://58773131). Fixing.", &v37, 0xCu);
              }

              v29 = [*(a1 + 32) setDismissIdentifyVoiceReminderBanner:1];
LABEL_36:

              goto LABEL_37;
            }
          }

          goto LABEL_30;
        }

LABEL_14:
        v14 = 1;
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

LABEL_37:
  v30 = [*(a1 + 32) home];
  v31 = [v30 hf_tvViewingProfilesAccessories];
  v32 = [v31 count];

  if (v32 && [*(a1 + 32) hasDismissedTVViewingProfilesOnboarding] && (objc_msgSend(*(a1 + 32), "hasDismissedTVViewingProfilesReminderBanner") & 1) == 0)
  {
    [v4 addObject:*MEMORY[0x277D13918]];
  }

  v33 = [*(a1 + 32) home];
  v34 = [v33 hf_hasSecureRecordingCameras];

  if (v34 && [*(a1 + 32) hasDismissedCameraRecordingOnboarding] && (objc_msgSend(*(a1 + 32), "hasDismissedCameraRecordingReminderBanner") & 1) == 0)
  {
    [v4 addObject:*MEMORY[0x277D138D8]];
  }

  [v3 finishWithResult:v4];
}

id __59__HUSetupBannerItem__determineRequiredOnboardingReminders___block_invoke_241(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = @"OnboardingDisplayOption_OnboardingFromUserInput";
  v13[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v5 = [*(a1 + 32) home];
  v6 = [HUNaturalLightingOnboardingFlow needsOnboardingForHome:v5 options:v4];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HUSetupBannerItem__determineRequiredOnboardingReminders___block_invoke_2_243;
  v10[3] = &unk_277DB7AB8;
  v11 = v3;
  v7 = v3;
  v8 = [v6 flatMap:v10];

  return v8;
}

uint64_t __59__HUSetupBannerItem__determineRequiredOnboardingReminders___block_invoke_2_243(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    [*(a1 + 32) addObject:*MEMORY[0x277D13910]];
  }

  v3 = MEMORY[0x277D2C900];
  v4 = *(a1 + 32);

  return [v3 futureWithResult:v4];
}

id __59__HUSetupBannerItem__determineRequiredOnboardingReminders___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [HUUtilityOnboardingFlow needsOnboardingForHome:v4 options:MEMORY[0x277CBEC10]];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HUSetupBannerItem__determineRequiredOnboardingReminders___block_invoke_4;
  v9[3] = &unk_277DB7AB8;
  v10 = v3;
  v6 = v3;
  v7 = [v5 flatMap:v9];

  return v7;
}

uint64_t __59__HUSetupBannerItem__determineRequiredOnboardingReminders___block_invoke_4(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    [*(a1 + 32) addObject:*MEMORY[0x277D13928]];
  }

  v3 = MEMORY[0x277D2C900];
  v4 = *(a1 + 32);

  return [v3 futureWithResult:v4];
}

- (id)_determineRequiredAccessorySetupReminders:(id)reminders
{
  remindersCopy = reminders;
  if ([MEMORY[0x277D14CE8] supportsAccessorySetup])
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = [(HUSetupBannerItem *)self _determineRequiredLockAccessorySetupReminders:remindersCopy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__HUSetupBannerItem__determineRequiredAccessorySetupReminders___block_invoke;
    v12[3] = &unk_277DC0418;
    v13 = array;
    v14 = remindersCopy;
    selfCopy = self;
    v16 = a2;
    v8 = array;
    v9 = [v7 flatMap:v12];
  }

  else
  {
    v10 = MEMORY[0x277D2C900];
    v7 = objc_opt_new();
    v9 = [v10 futureWithResult:v7];
  }

  return v9;
}

id __63__HUSetupBannerItem__determineRequiredAccessorySetupReminders___block_invoke(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) addObjectsFromArray:a2];
  v3 = [*(a1 + 40) home];
  v4 = [v3 hf_currentUserIsRestrictedGuest];

  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 136315394;
      v48 = "[HUSetupBannerItem _determineRequiredAccessorySetupReminders:]_block_invoke";
      v49 = 2112;
      *v50 = v6;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) Current user is restricted guest. Only lock related banners should be displayed. accessorySetupFlows = %@", buf, 0x16u);
    }

    v7 = MEMORY[0x277D2C900];
    v8 = [*(a1 + 32) copy];
    v9 = [v7 futureWithResult:v8];
    goto LABEL_33;
  }

  v10 = [*(a1 + 40) home];
  v11 = [v10 accessories];
  v12 = [v11 na_filter:&__block_literal_global_252];

  v13 = [*(a1 + 40) home];
  v14 = [(HUAccessorySetupFlow *)v13 hf_currentUserIsAdministrator];
  v46 = v12;
  if (v14)
  {
    v15 = [v12 count];

    if (!v15)
    {
      v14 = 0;
      goto LABEL_9;
    }

    v16 = [HUAccessorySetupFlow alloc];
    v13 = [(HUAccessorySetupFlow *)v16 initWithType:HFAccessorySetupFlowTypeResume homeKitObjects:v12];
    [*(a1 + 32) addObject:v13];
  }

LABEL_9:
  v17 = [*(a1 + 40) home];
  v18 = [*(a1 + 40) hasDismissedAudioAnalysisOnboardingOnThisDevice];
  v19 = HFLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 48);
    v21 = NSStringFromSelector(*(a1 + 56));
    *buf = 138413314;
    v48 = v20;
    v49 = 2112;
    *v50 = v21;
    *&v50[8] = 1024;
    *v51 = [v17 hf_hasAtleastOneSafetyAndSecuritySupportedAccessory];
    *&v51[4] = 1024;
    *v52 = [v17 didOnboardAudioAnalysis];
    *&v52[4] = 1024;
    *v53 = v18;
    _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "%@:%@ Determing whether to show safety and security banner... hasAtleastOneSafetyAndSecuritySupportedAccessory=%{BOOL}d | didOnboardAudioAnalysis=%{BOOL}d | hasDismissedAudioAnalysisOnboardingOnThisDevice=%{BOOL}d", buf, 0x28u);
  }

  if ([v17 hf_hasAtleastOneSafetyAndSecuritySupportedAccessory] && objc_msgSend(v17, "hf_currentUserIsAdministrator") && ((objc_msgSend(v17, "didOnboardAudioAnalysis") | v18) & 1) == 0 || HFForceSafetyAndSecurityOnboarding())
  {
    v22 = [v17 hf_safetyAndSecuritySupportedAccessories];
    v23 = [HUAccessorySetupFlow alloc];
    v24 = [(HUAccessorySetupFlow *)v23 initWithType:HFAccessorySetupFlowTypeSafetyAndSecurity homeKitObjects:v22];
    [*(a1 + 32) addObject:v24];
  }

  v25 = [v17 hf_siriEndpointCapableAccessoriesToOnboard];
  v26 = [MEMORY[0x277D143C0] sharedHandler];
  v27 = [v26 isAccessorySetupActive];

  if (([MEMORY[0x277D14CE8] isAMac] & 1) == 0 && !(v27 & 1 | ((objc_msgSend(v17, "hf_currentUserIsAdministrator") & 1) == 0)) && objc_msgSend(v25, "count"))
  {
    v28 = [HUAccessorySetupFlow alloc];
    v29 = [(HUAccessorySetupFlow *)v28 initWithType:HFAccessorySetupFlowTypeSiriEndpoint homeKitObjects:v25];
    [*(a1 + 32) addObject:v29];
  }

  v30 = [v17 isAllowedToEnableAdaptiveTemperatureAutomations];
  v31 = [v17 hf_hasResidentCapableOfSupportingHomeActivityState];
  v32 = [v17 hf_autoClimateCapableThermostatsToOnboard];
  v45 = v25;
  v44 = v14;
  if ((v27 & 1) != 0 || !_os_feature_enabled_impl())
  {
    v34 = 0;
  }

  else
  {
    v33 = [*(a1 + 40) home];
    v34 = 0;
    if (((v14 | [v33 hf_currentUserIsAdministrator] ^ 1) & 1) == 0 && ((v30 ^ 1) & 1) == 0 && ((v31 ^ 1) & 1) == 0)
    {
      v34 = [v32 count] != 0;
    }
  }

  v35 = HFLogForCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [*(a1 + 40) home];
    v37 = [v36 hf_currentUserIsAdministrator];
    v38 = [v32 count];
    *buf = 136316930;
    v48 = "[HUSetupBannerItem _determineRequiredAccessorySetupReminders:]_block_invoke";
    v49 = 1024;
    *v50 = v27;
    *&v50[4] = 1024;
    *&v50[6] = v37;
    *v51 = 1024;
    *&v51[2] = v44;
    *v52 = 1024;
    *&v52[2] = v34;
    *v53 = 1024;
    *&v53[2] = v30;
    v54 = 1024;
    v55 = v31;
    v56 = 2048;
    v57 = v38;
    _os_log_impl(&dword_20CEB6000, v35, OS_LOG_TYPE_DEFAULT, "(%s) needsEnergyOptimizationSetUp = %{BOOL}d because accessorySetupIsActive = %{BOOL}d, userIsAdmin =%{BOOL}d, showingResumeBanner = %{BOOL}d, adaptiveTemperatureEnabled = %{BOOL}d, homeCapableOfSupportingACC = %{BOOL}d, thermostatsNeedingACCOnboarding count = %lu", buf, 0x3Au);
  }

  if (v34)
  {
    v39 = [HUAccessorySetupFlow alloc];
    v40 = [(HUAccessorySetupFlow *)v39 initWithType:HFAccessorySetupFlowTypeEnergyOptimization homeKitObjects:v32];
    [*(a1 + 32) addObject:v40];
  }

  v41 = MEMORY[0x277D2C900];
  v42 = [*(a1 + 32) copy];
  v9 = [v41 futureWithResult:v42];

  v8 = v46;
LABEL_33:

  return v9;
}

BOOL __63__HUSetupBannerItem__determineRequiredAccessorySetupReminders___block_invoke_250(uint64_t a1, void *a2)
{
  v2 = [a2 pendingConfigurationIdentifier];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)_determineRequiredLockAccessorySetupReminders:(id)reminders
{
  v33 = *MEMORY[0x277D85DE8];
  remindersCopy = reminders;
  mEMORY[0x277D143C0] = [MEMORY[0x277D143C0] sharedHandler];
  isAccessorySetupActive = [mEMORY[0x277D143C0] isAccessorySetupActive];

  if (isAccessorySetupActive)
  {
LABEL_6:
    v8 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
    goto LABEL_13;
  }

  if ([MEMORY[0x277D14CE8] isAVisionPro])
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v31 = 2080;
      v32 = "[HUSetupBannerItem _determineRequiredLockAccessorySetupReminders:]";
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) Not showing any lock related banners because the device is vision.", buf, 0x16u);
    }

    goto LABEL_6;
  }

  home = [remindersCopy home];
  isAnIPhone = [MEMORY[0x277D14CE8] isAnIPhone];
  hf_fetchWalletKeyDeviceStateForCurrentDeviceIfNecessary = [home hf_fetchWalletKeyDeviceStateForCurrentDeviceIfNecessary];
  hf_walletKeyAccessories = [home hf_walletKeyAccessories];
  v13 = [hf_walletKeyAccessories count];

  if (v13 && isAnIPhone && ([hf_fetchWalletKeyDeviceStateForCurrentDeviceIfNecessary isFinished] & 1) == 0)
  {
    v8 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v14 = objc_opt_new();
    hasDismissedWalletKeyExpressModeOnboardingOnThisDevice = [remindersCopy hasDismissedWalletKeyExpressModeOnboardingOnThisDevice];
    [v14 na_safeAddObject:hasDismissedWalletKeyExpressModeOnboardingOnThisDevice];
    [v14 na_safeAddObject:hf_fetchWalletKeyDeviceStateForCurrentDeviceIfNecessary];
    v16 = MEMORY[0x277D2C900];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v18 = [v16 combineAllFutures:v14 ignoringErrors:1 scheduler:mainThreadScheduler];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __67__HUSetupBannerItem__determineRequiredLockAccessorySetupReminders___block_invoke;
    v22[3] = &unk_277DC0530;
    v23 = home;
    v24 = v14;
    v25 = hasDismissedWalletKeyExpressModeOnboardingOnThisDevice;
    v26 = hf_fetchWalletKeyDeviceStateForCurrentDeviceIfNecessary;
    v27 = remindersCopy;
    v28 = isAnIPhone;
    v19 = hasDismissedWalletKeyExpressModeOnboardingOnThisDevice;
    v20 = v14;
    v8 = [v18 flatMap:v22];
  }

LABEL_13:

  return v8;
}

id __67__HUSetupBannerItem__determineRequiredLockAccessorySetupReminders___block_invoke(uint64_t a1, void *a2)
{
  v93 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v65 = [*(a1 + 32) dismissedWalletKeyUWBUnlockOnboarding];
  v4 = [*(a1 + 40) indexOfObject:*(a1 + 48)];
  objc_opt_class();
  v5 = [v3 objectAtIndex:v4];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v68 = v6;

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v3 objectAtIndex:v4];
    *buf = 136316418;
    v85 = "[HUSetupBannerItem _determineRequiredLockAccessorySetupReminders:]_block_invoke";
    v86 = 2048;
    *v87 = v4;
    *&v87[8] = 1024;
    *v88 = v8 == 0;
    *&v88[4] = 1024;
    *&v88[6] = v68 == 0;
    *&v88[10] = 2112;
    *&v88[12] = v3;
    *&v88[20] = 2048;
    *&v88[22] = [v3 count];
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(%s) expressModeIndex = %lu | result[index] == nil : %{BOOL}d | isNSNumber = %{BOOL}d | result = %@ (count = %ld)", buf, 0x36u);
  }

  v64 = [v68 BOOLValue];
  v9 = [*(a1 + 40) indexOfObject:*(a1 + 56)];
  objc_opt_class();
  v10 = [v3 objectAtIndex:v9];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = HFLogForCategory();
  v69 = v12;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v12 walletKey];
    v15 = [v12 walletKey];
    v16 = [v15 isExpressEnabled];
    v17 = [v3 count];
    *buf = 136316418;
    v85 = "[HUSetupBannerItem _determineRequiredLockAccessorySetupReminders:]_block_invoke";
    v86 = 1024;
    *v87 = v12 == 0;
    *&v87[4] = 1024;
    *&v87[6] = v14 == 0;
    *v88 = 1024;
    *&v88[2] = v16;
    *&v88[6] = 2112;
    *&v88[8] = v3;
    *&v88[16] = 2048;
    *&v88[18] = v17;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "(%s) walletKeyDeviceState == nil: %{BOOL}d | walletKeyDeviceState.walletKey == nil: %{BOOL}d | expressEnabled = %{BOOL}d | result = %@ (count %ld)", buf, 0x32u);
  }

  v18 = [v12 walletKey];
  if (v18)
  {
    v19 = [v12 walletKey];
    if ([v19 isUWBUnlockEnabled])
    {
      v20 = 1;
    }

    else
    {
      v20 = [*(a1 + 32) hf_containsWalletKeyUWBAccessory] ^ 1;
    }
  }

  else
  {
    v20 = 1;
  }

  v21 = _os_feature_enabled_impl() ^ 1 | v20;
  v22 = HFLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    if (v21)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v24 = [*(a1 + 32) name];
    v25 = [*(a1 + 32) hf_accessoriesSupportingUWBUnlock];
    *buf = 136316162;
    v85 = "[HUSetupBannerItem _determineRequiredLockAccessorySetupReminders:]_block_invoke";
    v86 = 2112;
    *v87 = v23;
    v12 = v69;
    *&v87[8] = 2112;
    *v88 = v69;
    *&v88[8] = 2112;
    *&v88[10] = v24;
    *&v88[18] = 2112;
    *&v88[20] = v25;
    _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "(%s) shouldHideWalletKeyUWBBanner = %@. walletKeyDeviceState = %@. HMHome %@ has UWB supported accessories %@.", buf, 0x34u);
  }

  v26 = [v12 walletKey];
  v67 = v3;
  if (v26)
  {
    v27 = [v12 walletKey];
    v28 = [v27 isExpressEnabled];
  }

  else
  {
    v28 = 1;
  }

  v29 = [*(a1 + 32) hf_accessoriesSupportingAccessCodes];
  v30 = [v29 count];

  v31 = *(a1 + 32);
  v32 = [*(a1 + 64) user];
  v33 = [v31 hf_userIsAdministrator:v32];

  v34 = *(a1 + 32);
  v35 = [*(a1 + 64) user];
  v36 = [v34 hf_userIsOwner:v35];

  v63 = v21;
  if (!v30)
  {
    v37 = 0;
LABEL_35:
    v38 = 0;
    goto LABEL_36;
  }

  if (v33)
  {
    if (([*(a1 + 32) hf_hasHomeHubSupportingAccessCodes] & 1) == 0 && (v36 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    v37 = [*(a1 + 32) hasOnboardedForAccessCode] ^ 1;
    goto LABEL_33;
  }

  if (v36)
  {
    goto LABEL_32;
  }

LABEL_29:
  v37 = 0;
LABEL_33:
  if (![*(a1 + 32) hasOnboardedForAccessCode] || (objc_msgSend(*(a1 + 64), "hasDismissedAccessCodeOnboarding") & 1) != 0)
  {
    goto LABEL_35;
  }

  v38 = [*(a1 + 32) hf_hasHomeHubSupportingAccessCodes];
LABEL_36:
  v39 = HFLogForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v61 = v30 != 0;
    v62 = v28;
    v40 = *(a1 + 32);
    v41 = *(a1 + 64);
    v42 = [v40 hasOnboardedForAccessCode];
    v43 = [*(a1 + 64) hasDismissedAccessCodeOnboarding];
    v44 = [*(a1 + 32) hf_hasHomeHubSupportingAccessCodes];
    *buf = 136317186;
    v85 = "[HUSetupBannerItem _determineRequiredLockAccessorySetupReminders:]_block_invoke";
    v86 = 1024;
    *v87 = v37;
    *&v87[4] = 1024;
    *&v87[6] = v38;
    *v88 = 2112;
    *&v88[2] = v40;
    *&v88[10] = 2112;
    *&v88[12] = v41;
    *&v88[20] = 1024;
    v28 = v62;
    *&v88[22] = v61;
    *&v88[26] = 1024;
    *&v88[28] = v42;
    v89 = 1024;
    v90 = v43;
    v91 = 1024;
    v92 = v44;
    _os_log_impl(&dword_20CEB6000, v39, OS_LOG_TYPE_DEFAULT, "(%s) needsPinCodeFirmwareUpgradeSetup=%{BOOL}d | needsPinCodeUserOnboardingSetup=%{BOOL}d                for home %@ user %@ | eligibleForPinCodeSetup=%{BOOL}d | homeHasOnboarded=%{BOOL}d | userHasPreviouslyDismissed=%{BOOL}d | hasHomeHubSupportingAccessCodes=%{BOOL}d", buf, 0x44u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__HUSetupBannerItem__determineRequiredLockAccessorySetupReminders___block_invoke_264;
  aBlock[3] = &unk_277DC04E0;
  v75 = v33;
  v73 = *(a1 + 32);
  v76 = v36;
  v77 = v65;
  v78 = v63 & 1;
  v79 = v64;
  v80 = v28;
  v81 = v37;
  v82 = v38;
  v74 = *(a1 + 64);
  v83 = *(a1 + 72);
  v45 = _Block_copy(aBlock);
  v46 = [*(a1 + 32) hf_walletKeyAccessories];
  if ([v46 count])
  {
    v47 = *(a1 + 72);
  }

  else
  {
    v47 = 0;
  }

  v48 = v67;

  v49 = HFLogForCategory();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = *(a1 + 32);
    v51 = [v50 currentUser];
    v52 = [v51 hf_prettyDescription];
    v53 = [*(a1 + 32) hf_walletKeyAccessories];
    v54 = [v53 count];
    v66 = v47;
    v55 = MEMORY[0x277CD1650];
    v56 = [*(a1 + 32) hf_walletKeyAccessories];
    v57 = [v55 hf_minimumDescriptionsOfAccessories:v56];
    *buf = 136316162;
    v85 = "[HUSetupBannerItem _determineRequiredLockAccessorySetupReminders:]_block_invoke";
    v86 = 2112;
    *v87 = v50;
    *&v87[8] = 2112;
    *v88 = v52;
    *&v88[8] = 2048;
    *&v88[10] = v54;
    *&v88[18] = 2112;
    *&v88[20] = v57;
    _os_log_impl(&dword_20CEB6000, v49, OS_LOG_TYPE_DEFAULT, "(%s) home %@ | user %@ | hf_walletKeyAccessories.count = %ld | walletKeyAccessories = %@", buf, 0x34u);

    v48 = v67;
    v47 = v66;
  }

  if (v47)
  {
    v58 = [*(a1 + 32) hf_hasWalletKeyCompatibleDevice];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __67__HUSetupBannerItem__determineRequiredLockAccessorySetupReminders___block_invoke_272;
    v70[3] = &unk_277DC0508;
    v71 = v45;
    v59 = [v58 flatMap:v70];
  }

  else
  {
    v59 = (*(v45 + 2))(v45, 0, 0);
  }

  return v59;
}

id __67__HUSetupBannerItem__determineRequiredLockAccessorySetupReminders___block_invoke_264(uint64_t a1, int a2, void *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v42 = a3;
  if (!a2)
  {
    v6 = MGGetBoolAnswer();
    v5 = 0;
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if (*(a1 + 48) == 1 && ([*(a1 + 32) hf_hasHomeHubSupportingWalletKey] & 1) != 0 || *(a1 + 49) == 1)
  {
    v5 = [*(a1 + 32) hasOnboardedForWalletKey] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = MGGetBoolAnswer();
  if (![*(a1 + 32) hasOnboardedForWalletKey] || (*(a1 + 50) & 1) != 0)
  {
    goto LABEL_10;
  }

  v7 = 0;
  if ((*(a1 + 51) & 1) == 0 && ((v6 ^ 1) & 1) == 0)
  {
    v7 = _os_feature_enabled_impl();
  }

LABEL_11:
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) hasOnboardedForWalletKey];
    v10 = *(a1 + 50);
    v11 = *(a1 + 51);
    *buf = 136316674;
    v45 = "[HUSetupBannerItem _determineRequiredLockAccessorySetupReminders:]_block_invoke";
    v46 = 1024;
    *v47 = v7;
    *&v47[4] = 1024;
    *&v47[6] = a2;
    LOWORD(v48) = 1024;
    *(&v48 + 2) = v9;
    HIWORD(v48) = 1024;
    *v49 = v10;
    *&v49[4] = 1024;
    *&v49[6] = v11;
    v50 = 1024;
    LODWORD(v51) = v6;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "(%s) needsWalletKeyUWBUnlockUserOnboardingSetup = %{BOOL}d because isEligibleForWalletKeySetup = %{BOOL}d. home.hasOnboardedForWalletKey = %{BOOL}d. userHasDismissedWalletKeyUWBUnlockOnboarding = %{BOOL}d. shouldHideWalletKeyUWBBanner = %{BOOL}d. deviceSupportsUWB = %{BOOL}d", buf, 0x30u);
  }

  if (a2 && [*(a1 + 32) hasOnboardedForWalletKey] && (*(a1 + 52) & 1) == 0)
  {
    v12 = *(a1 + 53) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 54);
  if (v13 & v5)
  {
    v14 = &HFAccessorySetupFlowTypeLockAccessFirmwareUpdateAll;
LABEL_27:
    v18 = *v14;
    goto LABEL_28;
  }

  v15 = *(a1 + 55);
  v16 = v15 & (v7 | v12);
  v17 = v13 | v15;
  if (*(a1 + 54))
  {
    v14 = &HFAccessorySetupFlowTypeLockAccessFirmwareUpdatePinCode;
  }

  else
  {
    v14 = &HFAccessorySetupFlowTypeLockAccessPinCode;
  }

  if (v16)
  {
    v14 = &HFAccessorySetupFlowTypeLockAccessAll;
  }

  if ((v17 & 1) == 0)
  {
    v14 = &HFAccessorySetupFlowTypeLockAccessFirmwareUpdateWalletKey;
  }

  if ((v17 | v5))
  {
    goto LABEL_27;
  }

  if (v7)
  {
    v36 = _os_feature_enabled_impl();
    v14 = &HFAccessorySetupFlowTypeLockAccessWalletKey;
    if (v36)
    {
      v14 = &HFAccessorySetupFlowTypeLockAccessWalletKeyUWB;
    }

    if ((v36 | v12))
    {
      goto LABEL_27;
    }
  }

  else if (v12)
  {
    v14 = &HFAccessorySetupFlowTypeLockAccessWalletKey;
    goto LABEL_27;
  }

  v18 = 0;
LABEL_28:
  v19 = HFLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [*(a1 + 32) name];
    [*(a1 + 32) uniqueIdentifier];
    v20 = v41 = v18;
    v40 = [*(a1 + 40) user];
    v21 = [v40 name];
    v39 = [*(a1 + 40) user];
    v22 = [v39 uniqueIdentifier];
    v37 = a2;
    v23 = v12 & 1;
    v24 = [*(a1 + 32) hasOnboardedForWalletKey];
    v25 = *(a1 + 52);
    v26 = *(a1 + 56);
    v27 = [*(a1 + 32) hf_hasHomeHubSupportingWalletKey];
    v28 = *(a1 + 53);
    v29 = &stru_2823E0EE8;
    *buf = 136318466;
    if (v42)
    {
      v29 = v42;
    }

    v45 = "[HUSetupBannerItem _determineRequiredLockAccessorySetupReminders:]_block_invoke";
    v46 = 2112;
    *v47 = v38;
    *&v47[8] = 2112;
    v48 = v20;
    *v49 = 2112;
    *&v49[2] = v21;
    v50 = 2112;
    v51 = v22;
    v52 = 1024;
    v53 = v5;
    v54 = 1024;
    v55 = v23;
    v56 = 1024;
    v57 = v37;
    v58 = 1024;
    v59 = v24;
    v60 = 1024;
    v61 = v25;
    v62 = 1024;
    v63 = v26;
    v64 = 1024;
    v65 = v27;
    v66 = 1024;
    v67 = v28;
    v68 = 2112;
    v69 = v29;
    _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "(%s) home <Name:%@, uniqueIdentifier:%@> | user <Name:%@, uniqueIdentifier:%@> | needsWalletKeyFirmwareUpgradeSetup=%{BOOL}d | needsWalletKeyExpressModeUserOnboardingSetup=%{BOOL}d | eligibleForWalletKeySetup=%{BOOL}d | homeHasOnboarded=%{BOOL}d | userHasDismissedWalletKeyExpressModeOnboarding=%{BOOL}d | is_iPhone=%{BOOL}d | hasHomeHubSupportingWalletKey=%{BOOL}d | shouldHideWalletKeyExpressModeBanner=%{BOOL}d | %@", buf, 0x6Eu);

    v18 = v41;
  }

  v30 = MEMORY[0x277D2C900];
  if (v18)
  {
    v31 = [HUAccessorySetupFlow alloc];
    v32 = [(HUAccessorySetupFlow *)v31 initWithType:v18 homeKitObjects:MEMORY[0x277CBEBF8]];
    v43 = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v34 = [v30 futureWithResult:v33];
  }

  else
  {
    v34 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  return v34;
}

id __67__HUSetupBannerItem__determineRequiredLockAccessorySetupReminders___block_invoke_272(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@" | hasWalletKeyCompatible iPhone or paired watch = %{BOOL}d", objc_msgSend(v4, "BOOLValue")];
  v6 = *(a1 + 32);
  v7 = [v4 BOOLValue];

  v8 = (*(v6 + 16))(v6, v7, v5);

  return v8;
}

- (id)_namesOfAccessoriesNeedingNaturalLightingOnboarding
{
  home = [(HUBannerItem *)self home];
  hf_allLightProfilesSupportingNaturalLighting = [home hf_allLightProfilesSupportingNaturalLighting];
  v5 = [hf_allLightProfilesSupportingNaturalLighting na_flatMap:&__block_literal_global_279_0];

  v6 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HUSetupBannerItem__namesOfAccessoriesNeedingNaturalLightingOnboarding__block_invoke_2;
  v11[3] = &unk_277DBB1E0;
  v11[4] = self;
  v7 = [v6 na_map:v11];

  allObjects = [v7 allObjects];
  v9 = [allObjects na_map:&__block_literal_global_283];

  return v9;
}

id __72__HUSetupBannerItem__namesOfAccessoriesNeedingNaturalLightingOnboarding__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessory];
  v5 = [v4 hf_showAsAccessoryTile];

  if (v5)
  {
    v6 = [v3 accessory];
  }

  else
  {
    if ([v3 hf_isInGroup])
    {
      v7 = [*(a1 + 32) home];
      v8 = [v7 hf_serviceGroupsForService:v3];
      v9 = [v8 firstObject];

      goto LABEL_7;
    }

    v6 = v3;
  }

  v9 = v6;
LABEL_7:

  return v9;
}

@end