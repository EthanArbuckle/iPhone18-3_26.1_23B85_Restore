@interface HMHome(HomeHubMigrationBanner)
- (BOOL)hf_shouldDisplayTurnOnICloudForHH2Update;
- (BOOL)hf_shouldDisplayTurnOnICloudKeychain;
- (id)_hf_homeHubMigrationBannerStringWithIsForTitle:()HomeHubMigrationBanner;
- (id)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;
- (id)hf_homeHubMigrationBannerTapActionFromViewController:()HomeHubMigrationBanner devices:;
- (uint64_t)hf_isHomeHubMigrationBannerVisible;
- (uint64_t)hf_shouldDisplaySignIntoAppleAccountForHH2Update;
@end

@implementation HMHome(HomeHubMigrationBanner)

- (uint64_t)hf_shouldDisplaySignIntoAppleAccountForHH2Update
{
  v0 = [MEMORY[0x277D146E8] sharedDispatcher];
  v1 = [v0 homeManager];
  v2 = [v1 status];

  return (v2 >> 5) & 1;
}

- (BOOL)hf_shouldDisplayTurnOnICloudForHH2Update
{
  v0 = [MEMORY[0x277D146E8] sharedDispatcher];
  v1 = [v0 homeManager];
  v2 = [v1 dataSyncState];

  return v2 == 3;
}

- (BOOL)hf_shouldDisplayTurnOnICloudKeychain
{
  v0 = [MEMORY[0x277D146E8] sharedDispatcher];
  v1 = [v0 homeManager];
  v2 = [v1 dataSyncState];

  return v2 == 2;
}

- (id)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
{
  v2 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateControlDescription", @"HUSoftwareUpdateControlDescription", 1);
  if ([a1 hf_shouldDisplaySignIntoAppleAccountForHH2Update])
  {
    v3 = @"HUSoftwareUpdateControlDescription_GoToAppleAccountSettings";
LABEL_6:
    v4 = _HULocalizedStringWithDefaultValue(v3, v3, 1);

    v2 = v4;
    goto LABEL_7;
  }

  if ([a1 hf_shouldDisplayTurnOnICloudForHH2Update] & 1) != 0 || (objc_msgSend(a1, "hf_shouldDisplayTurnOnICloudKeychain"))
  {
    v3 = @"HUSoftwareUpdateControlDescription_GoToICloudSettings";
    goto LABEL_6;
  }

  if (![MEMORY[0x277D14CE8] isCurrentAccount2FAEnabled])
  {
    v3 = @"HUSoftwareUpdateControlDescription_GoTo2FA";
    goto LABEL_6;
  }

  if ([a1 hf_shouldDisplayHH2UpdateLearnMore])
  {
    v3 = @"HULearnMoreTitle";
    goto LABEL_6;
  }

LABEL_7:

  return v2;
}

- (id)hf_homeHubMigrationBannerTapActionFromViewController:()HomeHubMigrationBanner devices:
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 hf_shouldDisplaySignIntoAppleAccountForHH2Update];
  v9 = [a1 hf_shouldDisplayTurnOnICloudForHH2Update];
  v10 = [a1 hf_shouldDisplayTurnOnICloudKeychain];
  v11 = [MEMORY[0x277D14CE8] isCurrentAccount2FAEnabled];
  v12 = [a1 hf_shouldDisplayHH2UpdateLearnMore];
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67110144;
    v19[1] = v8;
    v20 = 1024;
    v21 = v9;
    v22 = 1024;
    v23 = v10;
    v24 = 1024;
    v25 = v11 ^ 1;
    v26 = 1024;
    v27 = v12;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "[HMHome+HomeHubMigrationBanner-hf_homeHubMigrationBannerTapAction> userTappedOpenSettings = %{BOOL}d | userTappedTurnOnICloud = %{BOOL}d | userTappedTurnOnICloudKeychain = %{BOOL}d | userTappedTurnOn2FA = %{BOOL}d | userTappedLearnMore %{BOOL}d", v19, 0x20u);
  }

  if (v8)
  {
    v14 = [MEMORY[0x277D148E8] sharedInstance];
    v15 = [MEMORY[0x277CBEBC0] hu_openiCloudPreferencesURL];
LABEL_13:
    v16 = v15;
    v17 = [v14 openURL:v15];

    goto LABEL_14;
  }

  if (v9)
  {
    v14 = [MEMORY[0x277D148E8] sharedInstance];
    v15 = [MEMORY[0x277CBEBC0] hf_openiCloudToggleURL];
    goto LABEL_13;
  }

  if (v10)
  {
    v14 = [MEMORY[0x277D148E8] sharedInstance];
    v15 = [MEMORY[0x277CBEBC0] hf_openiCloudKeychainPreferences];
    goto LABEL_13;
  }

  if ((v11 & 1) == 0)
  {
    v14 = [MEMORY[0x277D148E8] sharedInstance];
    v15 = [MEMORY[0x277CBEBC0] hf_openiCloudPasswordAndSecurityURL];
    goto LABEL_13;
  }

  if (v12)
  {
    v14 = [MEMORY[0x277D148E8] sharedInstance];
    v15 = [MEMORY[0x277CBEBC0] hu_homeUpdateLearnMoreURL];
    goto LABEL_13;
  }

  v17 = [HUHomeFeatureOnboardingUtilities home:a1 onboardHomeHub2FromPresentingViewController:v6 devices:v7 usageOptions:0];
LABEL_14:

  return v17;
}

- (id)_hf_homeHubMigrationBannerStringWithIsForTitle:()HomeHubMigrationBanner
{
  v91 = *MEMORY[0x277D85DE8];
  v70 = [a1 hf_currentUserIsOwner];
  v4 = [a1 residentDevices];
  v5 = [v4 na_filter:&__block_literal_global_106];

  v6 = [a1 hf_appleTVs];
  v72 = [a1 hf_homePods];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [a1 uniqueIdentifier];
    v68 = [a1 currentUser];
    v9 = [v68 name];
    v66 = [a1 currentUser];
    v10 = [v66 uniqueIdentifier];
    v64 = [a1 residentDevices];
    v62 = [v64 count];
    v63 = [a1 residentDevices];
    v11 = __81__HMHome_HomeHubMigrationBanner___hf_homeHubMigrationBannerStringWithIsForTitle___block_invoke_2(v63);
    *buf = 138545666;
    v74 = v8;
    v75 = 2112;
    v76 = v9;
    v77 = 2114;
    v78 = v10;
    v79 = 1024;
    *v80 = v70;
    *&v80[4] = 1024;
    *&v80[6] = a3;
    v81 = 2048;
    v82 = v62;
    v83 = 2112;
    v84 = v11;
    v85 = 2048;
    v86 = [v5 count];
    v87 = 2048;
    v88 = [v6 count];
    v89 = 2048;
    v90 = [v72 count];
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(_hf_homeHubMigrationBannerStringWithIsForTitle:) home.uniqueIdentifier = %{public}@ | currentUser = %@ (uniqueIdentifier: %{public}@, isOwner = %{BOOL}d) | isForTitle = %{BOOL}d | residentDevices = (%lu) %@ | enabledResidents.count = %lu | atvs.count = %lu | hps.count = %lu", buf, 0x5Eu);
  }

  v12 = [MEMORY[0x277D146E8] sharedDispatcher];
  v13 = [v12 homeManager];

  v14 = [v13 status];
  v15 = [v13 dataSyncState];
  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [a1 uniqueIdentifier];
    v18 = HMHomeManagerStatusToString();
    *buf = 138544130;
    v74 = v17;
    v75 = 2048;
    v76 = v14;
    v77 = 2112;
    v78 = v18;
    v79 = 2048;
    *v80 = v15;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "[HMHome:_hf_homeHubMigrationBannerStringWithIsForTitle:] homeUUID = %{public}@ | homeManager.status = %ld (%@) | dataSyncState = %ld", buf, 0x2Au);
  }

  v19 = a3;
  if (a3)
  {
    goto LABEL_6;
  }

  if ([a1 hf_shouldDisplaySignIntoAppleAccountForHH2Update])
  {
    v21 = @"HUSoftwareUpdateHomeKitUpdateRequiredDescription_AutoUpdateFailureReason_NotSignedInAppleAccount";
LABEL_15:
    v20 = _HULocalizedStringWithDefaultValue(v21, v21, 1);
    goto LABEL_16;
  }

  if ([a1 hf_shouldDisplayTurnOnICloudForHH2Update])
  {
    v21 = @"HUSoftwareUpdateHomeKitUpdateRequiredDescription_AutoUpdateFailureReason_iCloudTurnedOFF";
    goto LABEL_15;
  }

  if ([a1 hf_shouldDisplayTurnOnICloudKeychain])
  {
    v21 = @"HUSoftwareUpdateHomeKitUpdateRequiredDescription_AutoUpdateFailureReason_iCloudKeychainTurnedOFF";
    goto LABEL_15;
  }

  if (([MEMORY[0x277D14CE8] isCurrentAccount2FAEnabled] & 1) == 0)
  {
    v21 = @"HUSoftwareUpdateHomeKitUpdateRequiredDescription_AutoUpdateFailureReason_2FATurnedOff";
    goto LABEL_15;
  }

LABEL_6:
  v20 = 0;
LABEL_16:
  if ([v5 count] || objc_msgSend(v6, "count") || objc_msgSend(v72, "count"))
  {
    v22 = [v5 na_filter:&__block_literal_global_75];
    v23 = [v5 count];
    if (v23 == [v22 count] && objc_msgSend(v22, "count"))
    {
      v24 = HFLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v22 count];
        v26 = __81__HMHome_HomeHubMigrationBanner___hf_homeHubMigrationBannerStringWithIsForTitle___block_invoke_2(v22);
        *buf = 134218242;
        v74 = v25;
        v75 = 2114;
        v76 = v26;
        _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "(_hf_homeHubMigrationBannerStringWithIsForTitle:) allResidentsAreiPads = YES | enabledIPads = (%lu) %{public}@", buf, 0x16u);
      }

      if (a3)
      {
        v27 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateHomeKitUpdateTitleRequiredSoon", @"HUSoftwareUpdateHomeKitUpdateTitleRequiredSoon", 1);
      }

      else
      {
        if (v70)
        {
          v53 = @"HUSoftwareUpdateHomeKitUpdateRequiredDescription_accessoriesOnly";
        }

        else
        {
          v53 = @"HUResidentSWUpdateRequired_NonOwner_Description";
        }

        v27 = _HULocalizedStringWithDefaultValue(v53, v53, 1);
        if ([v20 length])
        {
          v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v27, v20];

          v27 = v54;
        }
      }

      goto LABEL_57;
    }

    v69 = v5;
    v28 = [a1 residentDevices];
    v29 = [v28 na_filter:&__block_literal_global_78_1];

    v30 = [objc_opt_class() _hh1EOLAccessories:v6];
    v31 = v6;
    v32 = v30;
    v67 = v31;
    v33 = [v31 count];
    if (v33 == [v29 count] && objc_msgSend(v32, "count"))
    {
      v34 = HFLogForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v32 count];
        v36 = __81__HMHome_HomeHubMigrationBanner___hf_homeHubMigrationBannerStringWithIsForTitle___block_invoke_3(v32);
        *buf = 134218242;
        v74 = v35;
        v75 = 2114;
        v76 = v36;
        _os_log_impl(&dword_20CEB6000, v34, OS_LOG_TYPE_DEFAULT, "(_hf_homeHubMigrationBannerStringWithIsForTitle:) allResidentsAreATVsWithHH1EOL = YES | atvsHH1EOL = (%lu) %{public}@", buf, 0x16u);
      }

      if (a3)
      {
        v27 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateHomeKitUpdateTitleRequired", @"HUSoftwareUpdateHomeKitUpdateTitleRequired", 1);
      }

      else
      {
        if (v70)
        {
          v58 = @"HUResidentSWUpdateRequired_AllResidentsAreATVsWithHH1EOL_Description";
        }

        else
        {
          v58 = @"HUResidentSWUpdateRequired_NonOwner_AllResidentsAreATVsWithHH1EOL_Description";
        }

        v27 = _HULocalizedStringWithDefaultValue(v58, v58, 1);
        if ([v20 length])
        {
          v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v27, v20];

          v27 = v59;
        }
      }

      goto LABEL_56;
    }

    v37 = [objc_opt_class() _hh1EOLAccessories:v72];
    v38 = [v72 count];
    if (v38 == [v29 count] && objc_msgSend(v37, "count"))
    {
      v39 = HFLogForCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [v37 count];
        v41 = __81__HMHome_HomeHubMigrationBanner___hf_homeHubMigrationBannerStringWithIsForTitle___block_invoke_3(v37);
        *buf = 134218242;
        v74 = v40;
        v75 = 2114;
        v76 = v41;
        _os_log_impl(&dword_20CEB6000, v39, OS_LOG_TYPE_DEFAULT, "(_hf_homeHubMigrationBannerStringWithIsForTitle:) allResidentsAreHPsWithHH1EOL = YES | hpsHH1EOL = (%lu) %{public}@", buf, 0x16u);
      }

      if (!a3)
      {
        v42 = @"HUResidentSWUpdateRequired_NonOwner_AllResidentsAreHomePodsWithHH1EOL_Description";
        v43 = @"HUResidentSWUpdateRequired_AllResidentsAreHomePodsWithHH1EOL_Description";
        goto LABEL_50;
      }

      goto LABEL_42;
    }

    if ([v32 count] || objc_msgSend(v37, "count"))
    {
      v44 = HFLogForCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [v32 count];
        v46 = __81__HMHome_HomeHubMigrationBanner___hf_homeHubMigrationBannerStringWithIsForTitle___block_invoke_3(v32);
        v47 = [v37 count];
        __81__HMHome_HomeHubMigrationBanner___hf_homeHubMigrationBannerStringWithIsForTitle___block_invoke_3(v37);
        v65 = v37;
        v48 = v29;
        v49 = v13;
        v51 = v50 = v20;
        *buf = 134218754;
        v74 = v45;
        v75 = 2114;
        v76 = v46;
        v77 = 2048;
        v78 = v47;
        v19 = a3;
        v79 = 2114;
        *v80 = v51;
        _os_log_impl(&dword_20CEB6000, v44, OS_LOG_TYPE_DEFAULT, "(_hf_homeHubMigrationBannerStringWithIsForTitle:) atvsHH1EOL = (%lu) %{public}@ | hpsHH1EOL = (%lu) %{public}@", buf, 0x2Au);

        v20 = v50;
        v13 = v49;
        v29 = v48;
        v37 = v65;
      }

      if (v19)
      {
LABEL_42:
        v52 = @"HUSoftwareUpdateHomeKitUpdateTitleRequired";
LABEL_43:
        v27 = _HULocalizedStringWithDefaultValue(v52, v52, 1);
LABEL_55:

LABEL_56:
        v6 = v67;
        v5 = v69;
LABEL_57:

        goto LABEL_58;
      }

      v42 = @"HUResidentSWUpdateRequired_NonOwner_Description_ATVAndHP";
      v43 = @"HUResidentSWUpdateRequired_HasHH1EOL_Description";
    }

    else
    {
      if (a3)
      {
        v52 = @"HUSoftwareUpdateHomeKitUpdateTitleRequiredSoon";
        goto LABEL_43;
      }

      v42 = @"HUResidentSWUpdateRequired_NonOwner_Description";
      v43 = @"HUSoftwareUpdateHomeKitUpdateRequiredDescription";
    }

LABEL_50:
    if (v70)
    {
      v55 = v43;
    }

    else
    {
      v55 = v42;
    }

    v27 = _HULocalizedStringWithDefaultValue(v55, v55, 1);
    if ([v20 length])
    {
      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v27, v20];

      v27 = v56;
    }

    goto LABEL_55;
  }

  if (a3)
  {
    v27 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateHomeKitUpdateTitleRequiredSoon", @"HUSoftwareUpdateHomeKitUpdateTitleRequiredSoon", 1);
  }

  else
  {
    if (v70)
    {
      v60 = @"HUSoftwareUpdateHomeKitUpdateRequiredDescription_accessoriesOnly";
    }

    else
    {
      v60 = @"HUResidentSWUpdateRequired_NonOwner_Description";
    }

    v27 = _HULocalizedStringWithDefaultValue(v60, v60, 1);
    if ([v20 length])
    {
      v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v27, v20];

      v27 = v61;
    }
  }

LABEL_58:

  return v27;
}

- (uint64_t)hf_isHomeHubMigrationBannerVisible
{
  v20 = *MEMORY[0x277D85DE8];
  if ([a1 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade])
  {
    v2 = HFLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "[hf_isHomeHubMigrationBannerVisible:] Hiding HH2 migration banner because the full blockout upgrade view is displayed.", v9, 2u);
    }

    v3 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277D146E8] sharedDispatcher];
    v2 = [v4 homeManager];

    v5 = [a1 hf_canUpdateToHH2];
    if ([v2 isHH2MigrationAvailable])
    {
      v6 = [v2 hasOptedToHH2]^ 1;
    }

    else
    {
      v6 = 0;
    }

    v3 = v5 | v6;
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67110400;
      v9[1] = v3 & 1;
      v10 = 1024;
      v11 = v5;
      v12 = 1024;
      v13 = [a1 hf_currentUserIsOwner];
      v14 = 1024;
      v15 = [v2 isHH2MigrationAvailable];
      v16 = 1024;
      v17 = [v2 hasOptedToHH2];
      v18 = 1024;
      v19 = v6;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "[hf_isHomeHubMigrationBannerVisible:] Show HH2 migration banner: %{BOOL}d | canUpdateToHH2: %{BOOL}d | isOwner:%{BOOL}d | migrationAvailable:%{BOOL}d | hasOptedToHH2:%{BOOL}d | displayHH2UpdateRequired: %{BOOL}d", v9, 0x26u);
    }
  }

  return v3 & 1;
}

@end