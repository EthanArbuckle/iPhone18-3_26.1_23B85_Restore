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
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  status = [homeManager status];

  return (status >> 5) & 1;
}

- (BOOL)hf_shouldDisplayTurnOnICloudForHH2Update
{
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  dataSyncState = [homeManager dataSyncState];

  return dataSyncState == 3;
}

- (BOOL)hf_shouldDisplayTurnOnICloudKeychain
{
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  dataSyncState = [homeManager dataSyncState];

  return dataSyncState == 2;
}

- (id)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
{
  v2 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateControlDescription", @"HUSoftwareUpdateControlDescription", 1);
  if ([self hf_shouldDisplaySignIntoAppleAccountForHH2Update])
  {
    v3 = @"HUSoftwareUpdateControlDescription_GoToAppleAccountSettings";
LABEL_6:
    v4 = _HULocalizedStringWithDefaultValue(v3, v3, 1);

    v2 = v4;
    goto LABEL_7;
  }

  if ([self hf_shouldDisplayTurnOnICloudForHH2Update] & 1) != 0 || (objc_msgSend(self, "hf_shouldDisplayTurnOnICloudKeychain"))
  {
    v3 = @"HUSoftwareUpdateControlDescription_GoToICloudSettings";
    goto LABEL_6;
  }

  if (![MEMORY[0x277D14CE8] isCurrentAccount2FAEnabled])
  {
    v3 = @"HUSoftwareUpdateControlDescription_GoTo2FA";
    goto LABEL_6;
  }

  if ([self hf_shouldDisplayHH2UpdateLearnMore])
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
  hf_shouldDisplaySignIntoAppleAccountForHH2Update = [self hf_shouldDisplaySignIntoAppleAccountForHH2Update];
  hf_shouldDisplayTurnOnICloudForHH2Update = [self hf_shouldDisplayTurnOnICloudForHH2Update];
  hf_shouldDisplayTurnOnICloudKeychain = [self hf_shouldDisplayTurnOnICloudKeychain];
  isCurrentAccount2FAEnabled = [MEMORY[0x277D14CE8] isCurrentAccount2FAEnabled];
  hf_shouldDisplayHH2UpdateLearnMore = [self hf_shouldDisplayHH2UpdateLearnMore];
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67110144;
    v19[1] = hf_shouldDisplaySignIntoAppleAccountForHH2Update;
    v20 = 1024;
    v21 = hf_shouldDisplayTurnOnICloudForHH2Update;
    v22 = 1024;
    v23 = hf_shouldDisplayTurnOnICloudKeychain;
    v24 = 1024;
    v25 = isCurrentAccount2FAEnabled ^ 1;
    v26 = 1024;
    v27 = hf_shouldDisplayHH2UpdateLearnMore;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "[HMHome+HomeHubMigrationBanner-hf_homeHubMigrationBannerTapAction> userTappedOpenSettings = %{BOOL}d | userTappedTurnOnICloud = %{BOOL}d | userTappedTurnOnICloudKeychain = %{BOOL}d | userTappedTurnOn2FA = %{BOOL}d | userTappedLearnMore %{BOOL}d", v19, 0x20u);
  }

  if (hf_shouldDisplaySignIntoAppleAccountForHH2Update)
  {
    mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
    hu_openiCloudPreferencesURL = [MEMORY[0x277CBEBC0] hu_openiCloudPreferencesURL];
LABEL_13:
    v16 = hu_openiCloudPreferencesURL;
    v17 = [mEMORY[0x277D148E8] openURL:hu_openiCloudPreferencesURL];

    goto LABEL_14;
  }

  if (hf_shouldDisplayTurnOnICloudForHH2Update)
  {
    mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
    hu_openiCloudPreferencesURL = [MEMORY[0x277CBEBC0] hf_openiCloudToggleURL];
    goto LABEL_13;
  }

  if (hf_shouldDisplayTurnOnICloudKeychain)
  {
    mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
    hu_openiCloudPreferencesURL = [MEMORY[0x277CBEBC0] hf_openiCloudKeychainPreferences];
    goto LABEL_13;
  }

  if ((isCurrentAccount2FAEnabled & 1) == 0)
  {
    mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
    hu_openiCloudPreferencesURL = [MEMORY[0x277CBEBC0] hf_openiCloudPasswordAndSecurityURL];
    goto LABEL_13;
  }

  if (hf_shouldDisplayHH2UpdateLearnMore)
  {
    mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
    hu_openiCloudPreferencesURL = [MEMORY[0x277CBEBC0] hu_homeUpdateLearnMoreURL];
    goto LABEL_13;
  }

  v17 = [HUHomeFeatureOnboardingUtilities home:self onboardHomeHub2FromPresentingViewController:v6 devices:v7 usageOptions:0];
LABEL_14:

  return v17;
}

- (id)_hf_homeHubMigrationBannerStringWithIsForTitle:()HomeHubMigrationBanner
{
  v91 = *MEMORY[0x277D85DE8];
  hf_currentUserIsOwner = [self hf_currentUserIsOwner];
  residentDevices = [self residentDevices];
  v5 = [residentDevices na_filter:&__block_literal_global_106];

  hf_appleTVs = [self hf_appleTVs];
  hf_homePods = [self hf_homePods];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [self uniqueIdentifier];
    currentUser = [self currentUser];
    name = [currentUser name];
    currentUser2 = [self currentUser];
    uniqueIdentifier2 = [currentUser2 uniqueIdentifier];
    residentDevices2 = [self residentDevices];
    v62 = [residentDevices2 count];
    residentDevices3 = [self residentDevices];
    v11 = __81__HMHome_HomeHubMigrationBanner___hf_homeHubMigrationBannerStringWithIsForTitle___block_invoke_2(residentDevices3);
    *buf = 138545666;
    v74 = uniqueIdentifier;
    v75 = 2112;
    v76 = name;
    v77 = 2114;
    v78 = uniqueIdentifier2;
    v79 = 1024;
    *v80 = hf_currentUserIsOwner;
    *&v80[4] = 1024;
    *&v80[6] = a3;
    v81 = 2048;
    v82 = v62;
    v83 = 2112;
    v84 = v11;
    v85 = 2048;
    v86 = [v5 count];
    v87 = 2048;
    v88 = [hf_appleTVs count];
    v89 = 2048;
    v90 = [hf_homePods count];
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(_hf_homeHubMigrationBannerStringWithIsForTitle:) home.uniqueIdentifier = %{public}@ | currentUser = %@ (uniqueIdentifier: %{public}@, isOwner = %{BOOL}d) | isForTitle = %{BOOL}d | residentDevices = (%lu) %@ | enabledResidents.count = %lu | atvs.count = %lu | hps.count = %lu", buf, 0x5Eu);
  }

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];

  status = [homeManager status];
  dataSyncState = [homeManager dataSyncState];
  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier3 = [self uniqueIdentifier];
    v18 = HMHomeManagerStatusToString();
    *buf = 138544130;
    v74 = uniqueIdentifier3;
    v75 = 2048;
    v76 = status;
    v77 = 2112;
    v78 = v18;
    v79 = 2048;
    *v80 = dataSyncState;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "[HMHome:_hf_homeHubMigrationBannerStringWithIsForTitle:] homeUUID = %{public}@ | homeManager.status = %ld (%@) | dataSyncState = %ld", buf, 0x2Au);
  }

  v19 = a3;
  if (a3)
  {
    goto LABEL_6;
  }

  if ([self hf_shouldDisplaySignIntoAppleAccountForHH2Update])
  {
    v21 = @"HUSoftwareUpdateHomeKitUpdateRequiredDescription_AutoUpdateFailureReason_NotSignedInAppleAccount";
LABEL_15:
    v20 = _HULocalizedStringWithDefaultValue(v21, v21, 1);
    goto LABEL_16;
  }

  if ([self hf_shouldDisplayTurnOnICloudForHH2Update])
  {
    v21 = @"HUSoftwareUpdateHomeKitUpdateRequiredDescription_AutoUpdateFailureReason_iCloudTurnedOFF";
    goto LABEL_15;
  }

  if ([self hf_shouldDisplayTurnOnICloudKeychain])
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
  if ([v5 count] || objc_msgSend(hf_appleTVs, "count") || objc_msgSend(hf_homePods, "count"))
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
        if (hf_currentUserIsOwner)
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
    residentDevices4 = [self residentDevices];
    v29 = [residentDevices4 na_filter:&__block_literal_global_78_1];

    v30 = [objc_opt_class() _hh1EOLAccessories:hf_appleTVs];
    v31 = hf_appleTVs;
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
        if (hf_currentUserIsOwner)
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

    v37 = [objc_opt_class() _hh1EOLAccessories:hf_homePods];
    v38 = [hf_homePods count];
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
        v49 = homeManager;
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
        homeManager = v49;
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
        hf_appleTVs = v67;
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
    if (hf_currentUserIsOwner)
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
    if (hf_currentUserIsOwner)
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
  if ([self hf_shouldBlockCurrentUserFromHomeForRoarUpgrade])
  {
    homeManager = HFLogForCategory();
    if (os_log_type_enabled(homeManager, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_20CEB6000, homeManager, OS_LOG_TYPE_DEFAULT, "[hf_isHomeHubMigrationBannerVisible:] Hiding HH2 migration banner because the full blockout upgrade view is displayed.", v9, 2u);
    }

    v3 = 0;
  }

  else
  {
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    homeManager = [mEMORY[0x277D146E8] homeManager];

    hf_canUpdateToHH2 = [self hf_canUpdateToHH2];
    if ([homeManager isHH2MigrationAvailable])
    {
      v6 = [homeManager hasOptedToHH2]^ 1;
    }

    else
    {
      v6 = 0;
    }

    v3 = hf_canUpdateToHH2 | v6;
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67110400;
      v9[1] = v3 & 1;
      v10 = 1024;
      v11 = hf_canUpdateToHH2;
      v12 = 1024;
      hf_currentUserIsOwner = [self hf_currentUserIsOwner];
      v14 = 1024;
      isHH2MigrationAvailable = [homeManager isHH2MigrationAvailable];
      v16 = 1024;
      hasOptedToHH2 = [homeManager hasOptedToHH2];
      v18 = 1024;
      v19 = v6;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "[hf_isHomeHubMigrationBannerVisible:] Show HH2 migration banner: %{BOOL}d | canUpdateToHH2: %{BOOL}d | isOwner:%{BOOL}d | migrationAvailable:%{BOOL}d | hasOptedToHH2:%{BOOL}d | displayHH2UpdateRequired: %{BOOL}d", v9, 0x26u);
    }
  }

  return v3 & 1;
}

@end