@interface HUSafetyAndSecuritySettingsItemModuleController
- (Class)cellClassForItem:(id)a3;
- (HUSafetyAndSecuritySettingsItemModuleController)initWithModule:(id)a3 delegate:(id)a4;
- (HUSafetyAndSecuritySettingsModuleControllerDelegate)delegate;
- (unint64_t)didSelectItem:(id)a3;
- (void)bannerView:(id)a3 footerViewTapped:(id)a4;
- (void)homeManager:(id)a3 didUpdateHH2State:(BOOL)a4;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
- (void)userSwitchCell:(id)a3 didTurnOn:(BOOL)a4;
@end

@implementation HUSafetyAndSecuritySettingsItemModuleController

- (HUSafetyAndSecuritySettingsItemModuleController)initWithModule:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = HUSafetyAndSecuritySettingsItemModuleController;
  v7 = [(HUItemModuleController *)&v11 initWithModule:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v9 = [MEMORY[0x277D146E8] sharedDispatcher];
    [v9 addHomeManagerObserver:v8];
  }

  return v8;
}

- (Class)cellClassForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [v7 homeUpgradeBannerItem];
    [v4 isEqual:v8];
  }

  v9 = objc_opt_class();

  return v9;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v35.receiver = self;
  v35.super_class = HUSafetyAndSecuritySettingsItemModuleController;
  [(HUItemModuleController *)&v35 setupCell:v6 forItem:v7];
  objc_opt_class();
  v8 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [v6 bounds];
  v13 = [HUGridLayoutOptions defaultOptionsForViewSize:v11, v12];
  [(HUSafetyAndSecuritySettingsItemModuleController *)self setLayoutOptions:v13];
  v14 = [v10 listenForSoundsItem];
  if ([v7 isEqual:v14])
  {

LABEL_7:
    v17 = v6;
    [v17 setAccessoryView:0];
    [v17 setAccessoryType:1];
    [v17 setHideIcon:1];
LABEL_8:

    goto LABEL_9;
  }

  v15 = [v10 notificationsItem];
  v16 = [v7 isEqual:v15];

  if (v16)
  {
    goto LABEL_7;
  }

  v21 = [v10 homeUpgradeBannerItem];
  v22 = [v7 isEqual:v21];

  if (v22)
  {
    v23 = objc_opt_class();
    v24 = v6;
    if (v24)
    {
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v17 = v24;
      if (v25)
      {
        goto LABEL_23;
      }

      v26 = [MEMORY[0x277CCA890] currentHandler];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v26 handleFailureInFunction:v27 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v23, objc_opt_class()}];
    }

    v17 = 0;
LABEL_23:

    v28 = [(HUSafetyAndSecuritySettingsItemModuleController *)self layoutOptions];
    v29 = [v28 bannerCellOptions];
    v30 = [v24 layer];
    [v30 cornerRadius];
    [v29 setCellCornerRadius:?];

    v31 = [(HUSafetyAndSecuritySettingsItemModuleController *)self layoutOptions];
    v32 = [v31 bannerCellOptions];
    [v17 setLayoutOptions:v32];

    [v17 setDelegate:self];
    v33 = [v17 bannerView];
    softwareUpdateBannerView = self->_softwareUpdateBannerView;
    self->_softwareUpdateBannerView = v33;

    goto LABEL_8;
  }

LABEL_9:
  objc_opt_class();
  v18 = v6;
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (v20)
  {
    [v20 setDelegate:self];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v26.receiver = self;
  v26.super_class = HUSafetyAndSecuritySettingsItemModuleController;
  [(HUItemModuleController *)&v26 updateCell:v8 forItem:v9 animated:v5];
  objc_opt_class();
  v10 = v8;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    objc_opt_class();
    v13 = v9;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      v16 = [v15 home];
      v17 = [v15 user];
      v18 = [v16 hf_handleForUser:v17];
      [v12 setUserHandle:v18];

      v19 = [v16 homeAccessControlForUser:v17];
      [v12 setOn:{objc_msgSend(v19, "audioAnalysisUserDropInAccessLevel") == 2}];
      if ([v16 hf_currentUserIsOwner])
      {
        v20 = 0;
      }

      else if ([v16 hf_currentUserIsAdministrator])
      {
        v21 = [v17 uniqueIdentifier];
        v22 = [v16 currentUser];
        v23 = [v22 uniqueIdentifier];
        v25 = [v21 hmf_isEqualToUUID:v23];

        v24 = [v16 homeAccessControlForUser:v17];
        LODWORD(v22) = [v24 isAdministrator];

        v20 = (v25 ^ 1) & v22;
      }

      else
      {
        v20 = 1;
      }

      [v12 setDisabled:v20];
    }
  }
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 listenForSoundsItem];
  v9 = [v4 isEqual:v8];

  if (v9)
  {
    v10 = off_277DAFF10;
  }

  else
  {
    v11 = [v7 notificationsItem];
    v12 = [v4 isEqual:v11];

    if (!v12)
    {
      v17 = 0;
      goto LABEL_10;
    }

    v10 = off_277DB1258;
  }

  v13 = objc_alloc(*v10);
  v14 = [v7 home];
  v15 = [v13 initWithHome:v14];

  v16 = [HUViewControllerPresentationRequest requestWithViewController:v15];
  v17 = 1;
  [v16 setAnimated:1];
  [v16 setPreferredPresentationType:1];
  v18 = [(HUItemModuleController *)self host];
  v19 = [v18 moduleController:self presentViewControllerForRequest:v16];

LABEL_10:
  return v17;
}

- (void)bannerView:(id)a3 footerViewTapped:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  v6 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = [(HUSafetyAndSecuritySettingsItemModuleController *)self delegate];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [(HUSafetyAndSecuritySettingsItemModuleController *)self softwareUpdateBannerView];
  v13 = [v5 isEqual:v12];

  if (v13 && v11)
  {
    v14 = [v8 home];
    v15 = [v8 devices];
    v16 = [v14 hf_homeHubMigrationBannerTapActionFromViewController:v11 devices:v15];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v8 home];
      v19 = [v8 home];
      v20 = [v19 uniqueIdentifier];
      v21 = [(HUSafetyAndSecuritySettingsItemModuleController *)self delegate];
      v22 = 138413058;
      v23 = v18;
      v24 = 2114;
      v25 = v20;
      v26 = 2112;
      v27 = v5;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "<HUSafetyAndSecuritySettingsItemModuleController-bannerView:footerViewTapped:> User tapped softwareUpdateBannerView for home %@ (uniqueIdentifier:%{public}@ | bannerView = %@ | delegate = %@", &v22, 0x2Au);
    }
  }
}

- (void)userSwitchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"OFF";
    if (v4)
    {
      v9 = @"ON";
    }

    *buf = 138412290;
    v35 = v9;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "User Tapped switch to turn %@.", buf, 0xCu);
  }

  objc_opt_class();
  v10 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v7 item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v15 = [v7 item];
    v16 = [v12 enableUserPermissionSetting:v4 forItem:v15];

    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __76__HUSafetyAndSecuritySettingsItemModuleController_userSwitchCell_didTurnOn___block_invoke;
    v31 = &unk_277DB7EB8;
    v32 = v7;
    v33 = v4;
    v17 = [v16 addCompletionBlock:&v28];
  }

  v18 = [v12 itemUpdater];
  v19 = MEMORY[0x277D14788];
  v20 = [v12 itemProviders];
  v21 = [v19 requestToReloadItemProviders:v20 senderSelector:a2];
  v22 = [v18 performItemUpdateRequest:v21];

  objc_opt_class();
  v23 = [(HUItemModuleController *)self host];
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (v25)
  {
    v26 = MEMORY[0x277D143D8];
    v27 = [v7 item];
    [v26 sendSwitchCellToggleEventForItem:v27 isOn:v4 title:@"userDisplayString" fromSourceViewController:v25];
  }
}

uint64_t __76__HUSafetyAndSecuritySettingsItemModuleController_userSwitchCell_didTurnOn___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) setOn:(*(result + 40) & 1) == 0 animated:1];
  }

  return result;
}

- (void)homeManager:(id)a3 didUpdateHH2State:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x277D85DE8];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = self;
    v12 = 2112;
    v13 = v8;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@: didUpdateHH2State = %{BOOL}d", &v10, 0x1Cu);
  }

  if (v4)
  {
    v9 = [(HUSafetyAndSecuritySettingsItemModuleController *)self delegate];
    [v9 dismissToHomeSettings];
  }
}

- (HUSafetyAndSecuritySettingsModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end