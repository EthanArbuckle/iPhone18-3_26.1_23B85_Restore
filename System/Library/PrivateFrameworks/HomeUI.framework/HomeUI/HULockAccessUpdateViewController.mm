@interface HULockAccessUpdateViewController
- (HULockAccessUpdateViewController)initWithHome:(id)a3;
@end

@implementation HULockAccessUpdateViewController

- (HULockAccessUpdateViewController)initWithHome:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = HULockAccessUpdateViewController;
  v6 = [(HULockAccessUpdateViewController *)&v16 initWithTitle:&stru_2823E0EE8 detailText:0 icon:0 contentLayout:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    objc_initWeak(&location, v7);
    v8 = [MEMORY[0x277D2C900] futureWithNoResult];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__HULockAccessUpdateViewController_initWithHome___block_invoke;
    v12[3] = &unk_277DC2648;
    objc_copyWeak(&v14, &location);
    v13 = v5;
    v9 = [v8 flatMap:v12];
    preloadFuture = v7->_preloadFuture;
    v7->_preloadFuture = v9;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v7;
}

id __49__HULockAccessUpdateViewController_initWithHome___block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v40 = [*(a1 + 32) hf_walletKeyAccessories];
  v2 = [*(a1 + 32) hf_currentUserIsAdministrator];
  if (([*(a1 + 32) hasOnboardedForWalletKey] & 1) != 0 || !objc_msgSend(v40, "count"))
  {
    v39 = 0;
  }

  else if (v2 && ([*(a1 + 32) hf_hasHomeHubSupportingWalletKey] & 1) != 0)
  {
    v39 = 1;
  }

  else
  {
    v39 = [*(a1 + 32) hf_currentUserIsOwner];
  }

  if ([*(a1 + 32) hasOnboardedForAccessCode])
  {
    v3 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) hf_accessoriesSupportingAccessCodes];
    if ([v4 count])
    {
      if (v2 && ([*(a1 + 32) hf_hasHomeHubSupportingAccessCodes] & 1) != 0)
      {
        v3 = 1;
      }

      else
      {
        v3 = [*(a1 + 32) hf_currentUserIsOwner];
      }
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = [MEMORY[0x277D755D0] configurationWithPointSize:36.0];
  if ((v39 & v3) == 1)
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HULockAccessUpdate_Feature_All_Title", @"HULockAccessUpdate_Feature_All_Title", 1);
    v7 = [*(a1 + 32) name];
    v14 = HULocalizedStringWithFormat(@"HULockAccessUpdate_Feature_All_Description", @"%@", v8, v9, v10, v11, v12, v13, v7);

LABEL_21:
    v15 = [MEMORY[0x277D755B8] _systemImageNamed:@"apple.homekey.fill" withConfiguration:v5];
    goto LABEL_22;
  }

  if (v39)
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HULockAccessUpdate_Feature_WalletKey_TapToUnlock_Title", @"HULockAccessUpdate_Feature_WalletKey_TapToUnlock_Title", 1);
    v14 = _HULocalizedStringWithDefaultValue(@"HULockAccessUpdate_Feature_WalletKey_Description", @"HULockAccessUpdate_Feature_WalletKey_Description", 1);
    goto LABEL_21;
  }

  if (!v3)
  {
    v16 = 0;
    v14 = 0;
    v6 = 0;
    v18 = 0;
    goto LABEL_36;
  }

  v6 = _HULocalizedStringWithDefaultValue(@"HULockAccessUpdate_Feature_AccessCode_Title", @"HULockAccessUpdate_Feature_AccessCode_Title", 1);
  v14 = _HULocalizedStringWithDefaultValue(@"HULockAccessUpdate_Feature_AccessCode_Description", @"HULockAccessUpdate_Feature_AccessCode_Description", 1);
  v15 = [MEMORY[0x277D755B8] systemImageNamed:@"circle.grid.3x3.circle.fill" withConfiguration:v5];
LABEL_22:
  v16 = v15;
  if (v6)
  {
    v17 = v14 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (!v17 && v15)
  {
    [WeakRetained addBulletedListItemWithTitle:v6 description:v14 image:v15];
  }

  if (v3)
  {
    v19 = [MEMORY[0x277D755B8] systemImageNamed:@"person.2.fill" withConfiguration:v5];
    v20 = _HULocalizedStringWithDefaultValue(@"HULockAccessUpdate_Feature_GuestAccess_Title", @"HULockAccessUpdate_Feature_GuestAccess_Title", 1);
    _HULocalizedStringWithDefaultValue(@"HULockAccessUpdate_Feature_GuestAccess_Description", @"HULockAccessUpdate_Feature_GuestAccess_Description", 1);
    v21 = v16;
    v23 = v22 = v14;
    [WeakRetained addBulletedListItemWithTitle:v20 description:v23 image:v19];

    v14 = v22;
    v16 = v21;
  }

LABEL_36:
  v24 = HFLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if (v18)
    {
      v25 = &stru_2823E0EE8;
    }

    else
    {
      v25 = @"Conditions not met for showing WalletKey OR PIN Code screen.";
    }

    v37 = [*(a1 + 32) hasOnboardedForWalletKey];
    v36 = [*(a1 + 32) hf_hasHomeHubSupportingWalletKey];
    v26 = v14;
    v27 = v5;
    v28 = [*(a1 + 32) hf_currentUserIsOwner];
    v38 = v6;
    v29 = v3;
    v30 = v16;
    v31 = [*(a1 + 32) hasOnboardedForAccessCode];
    v32 = [*(a1 + 32) hf_accessoriesSupportingAccessCodes];
    v33 = [*(a1 + 32) hf_hasHomeHubSupportingAccessCodes];
    *buf = 138415106;
    v44 = 2080;
    v43 = WeakRetained;
    v45 = "[HULockAccessUpdateViewController initWithHome:]_block_invoke";
    v46 = 2112;
    v47 = v25;
    v48 = 1024;
    v49 = v37;
    v50 = 2112;
    v51 = v40;
    v52 = 1024;
    v53 = v36;
    v54 = 1024;
    v55 = v28;
    v5 = v27;
    v14 = v26;
    v56 = 1024;
    v57 = v31;
    v16 = v30;
    v58 = 2112;
    v59 = v32;
    v60 = 1024;
    v61 = v33;
    v62 = 1024;
    v63 = v39;
    v64 = 1024;
    v65 = v29;
    v6 = v38;
    _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "(%@:%s) %@ hasOnboardedForWalletKey: %{BOOL}d. walletKeyAccessories: %@, hasHomeHubSupportingWalletKey: %{BOOL}d, currentUserIsOwner: %{BOOL}d, hasOnboardedForAccessCode: %{BOOL}d, accessoriesSupportingAccessCodes: %@, hasHomeHubSupportingAccessCodes: %{BOOL}d, showWalletKeyTapToUnlockFeature: %{BOOL}d, showAccessCodeFeature: %{BOOL}d", buf, 0x5Eu);
  }

  v34 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v34;
}

@end