@interface HUSafetyAndSecuritySettingsItemModuleController
- (Class)cellClassForItem:(id)item;
- (HUSafetyAndSecuritySettingsItemModuleController)initWithModule:(id)module delegate:(id)delegate;
- (HUSafetyAndSecuritySettingsModuleControllerDelegate)delegate;
- (unint64_t)didSelectItem:(id)item;
- (void)bannerView:(id)view footerViewTapped:(id)tapped;
- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
- (void)userSwitchCell:(id)cell didTurnOn:(BOOL)on;
@end

@implementation HUSafetyAndSecuritySettingsItemModuleController

- (HUSafetyAndSecuritySettingsItemModuleController)initWithModule:(id)module delegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = HUSafetyAndSecuritySettingsItemModuleController;
  v7 = [(HUItemModuleController *)&v11 initWithModule:module];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    [mEMORY[0x277D146E8] addHomeManagerObserver:v8];
  }

  return v8;
}

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = module;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    homeUpgradeBannerItem = [v7 homeUpgradeBannerItem];
    [itemCopy isEqual:homeUpgradeBannerItem];
  }

  v9 = objc_opt_class();

  return v9;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v35.receiver = self;
  v35.super_class = HUSafetyAndSecuritySettingsItemModuleController;
  [(HUItemModuleController *)&v35 setupCell:cellCopy forItem:itemCopy];
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v9 = module;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [cellCopy bounds];
  v13 = [HUGridLayoutOptions defaultOptionsForViewSize:v11, v12];
  [(HUSafetyAndSecuritySettingsItemModuleController *)self setLayoutOptions:v13];
  listenForSoundsItem = [v10 listenForSoundsItem];
  if ([itemCopy isEqual:listenForSoundsItem])
  {

LABEL_7:
    v17 = cellCopy;
    [v17 setAccessoryView:0];
    [v17 setAccessoryType:1];
    [v17 setHideIcon:1];
LABEL_8:

    goto LABEL_9;
  }

  notificationsItem = [v10 notificationsItem];
  v16 = [itemCopy isEqual:notificationsItem];

  if (v16)
  {
    goto LABEL_7;
  }

  homeUpgradeBannerItem = [v10 homeUpgradeBannerItem];
  v22 = [itemCopy isEqual:homeUpgradeBannerItem];

  if (v22)
  {
    v23 = objc_opt_class();
    v24 = cellCopy;
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

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v27 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v23, objc_opt_class()}];
    }

    v17 = 0;
LABEL_23:

    layoutOptions = [(HUSafetyAndSecuritySettingsItemModuleController *)self layoutOptions];
    bannerCellOptions = [layoutOptions bannerCellOptions];
    layer = [v24 layer];
    [layer cornerRadius];
    [bannerCellOptions setCellCornerRadius:?];

    layoutOptions2 = [(HUSafetyAndSecuritySettingsItemModuleController *)self layoutOptions];
    bannerCellOptions2 = [layoutOptions2 bannerCellOptions];
    [v17 setLayoutOptions:bannerCellOptions2];

    [v17 setDelegate:self];
    bannerView = [v17 bannerView];
    softwareUpdateBannerView = self->_softwareUpdateBannerView;
    self->_softwareUpdateBannerView = bannerView;

    goto LABEL_8;
  }

LABEL_9:
  objc_opt_class();
  v18 = cellCopy;
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

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v26.receiver = self;
  v26.super_class = HUSafetyAndSecuritySettingsItemModuleController;
  [(HUItemModuleController *)&v26 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  objc_opt_class();
  v10 = cellCopy;
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
    v13 = itemCopy;
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
      home = [v15 home];
      user = [v15 user];
      v18 = [home hf_handleForUser:user];
      [v12 setUserHandle:v18];

      v19 = [home homeAccessControlForUser:user];
      [v12 setOn:{objc_msgSend(v19, "audioAnalysisUserDropInAccessLevel") == 2}];
      if ([home hf_currentUserIsOwner])
      {
        v20 = 0;
      }

      else if ([home hf_currentUserIsAdministrator])
      {
        uniqueIdentifier = [user uniqueIdentifier];
        currentUser = [home currentUser];
        uniqueIdentifier2 = [currentUser uniqueIdentifier];
        v25 = [uniqueIdentifier hmf_isEqualToUUID:uniqueIdentifier2];

        v24 = [home homeAccessControlForUser:user];
        LODWORD(currentUser) = [v24 isAdministrator];

        v20 = (v25 ^ 1) & currentUser;
      }

      else
      {
        v20 = 1;
      }

      [v12 setDisabled:v20];
    }
  }
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = module;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  listenForSoundsItem = [v7 listenForSoundsItem];
  v9 = [itemCopy isEqual:listenForSoundsItem];

  if (v9)
  {
    v10 = off_277DAFF10;
  }

  else
  {
    notificationsItem = [v7 notificationsItem];
    v12 = [itemCopy isEqual:notificationsItem];

    if (!v12)
    {
      v17 = 0;
      goto LABEL_10;
    }

    v10 = off_277DB1258;
  }

  v13 = objc_alloc(*v10);
  home = [v7 home];
  v15 = [v13 initWithHome:home];

  v16 = [HUViewControllerPresentationRequest requestWithViewController:v15];
  v17 = 1;
  [v16 setAnimated:1];
  [v16 setPreferredPresentationType:1];
  host = [(HUItemModuleController *)self host];
  v19 = [host moduleController:self presentViewControllerForRequest:v16];

LABEL_10:
  return v17;
}

- (void)bannerView:(id)view footerViewTapped:(id)tapped
{
  v30 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v7 = module;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  delegate = [(HUSafetyAndSecuritySettingsItemModuleController *)self delegate];
  if (objc_opt_isKindOfClass())
  {
    v10 = delegate;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  softwareUpdateBannerView = [(HUSafetyAndSecuritySettingsItemModuleController *)self softwareUpdateBannerView];
  v13 = [viewCopy isEqual:softwareUpdateBannerView];

  if (v13 && v11)
  {
    home = [v8 home];
    devices = [v8 devices];
    v16 = [home hf_homeHubMigrationBannerTapActionFromViewController:v11 devices:devices];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      home2 = [v8 home];
      home3 = [v8 home];
      uniqueIdentifier = [home3 uniqueIdentifier];
      delegate2 = [(HUSafetyAndSecuritySettingsItemModuleController *)self delegate];
      v22 = 138413058;
      v23 = home2;
      v24 = 2114;
      v25 = uniqueIdentifier;
      v26 = 2112;
      v27 = viewCopy;
      v28 = 2112;
      v29 = delegate2;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "<HUSafetyAndSecuritySettingsItemModuleController-bannerView:footerViewTapped:> User tapped softwareUpdateBannerView for home %@ (uniqueIdentifier:%{public}@ | bannerView = %@ | delegate = %@", &v22, 0x2Au);
    }
  }
}

- (void)userSwitchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  v36 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"OFF";
    if (onCopy)
    {
      v9 = @"ON";
    }

    *buf = 138412290;
    v35 = v9;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "User Tapped switch to turn %@.", buf, 0xCu);
  }

  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v11 = module;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  item = [cellCopy item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    item2 = [cellCopy item];
    v16 = [v12 enableUserPermissionSetting:onCopy forItem:item2];

    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __76__HUSafetyAndSecuritySettingsItemModuleController_userSwitchCell_didTurnOn___block_invoke;
    v31 = &unk_277DB7EB8;
    v32 = cellCopy;
    v33 = onCopy;
    v17 = [v16 addCompletionBlock:&v28];
  }

  itemUpdater = [v12 itemUpdater];
  v19 = MEMORY[0x277D14788];
  itemProviders = [v12 itemProviders];
  v21 = [v19 requestToReloadItemProviders:itemProviders senderSelector:a2];
  v22 = [itemUpdater performItemUpdateRequest:v21];

  objc_opt_class();
  host = [(HUItemModuleController *)self host];
  if (objc_opt_isKindOfClass())
  {
    v24 = host;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (v25)
  {
    v26 = MEMORY[0x277D143D8];
    item3 = [cellCopy item];
    [v26 sendSwitchCellToggleEventForItem:item3 isOn:onCopy title:@"userDisplayString" fromSourceViewController:v25];
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

- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state
{
  stateCopy = state;
  v16 = *MEMORY[0x277D85DE8];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = v8;
    v14 = 1024;
    v15 = stateCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@: didUpdateHH2State = %{BOOL}d", &v10, 0x1Cu);
  }

  if (stateCopy)
  {
    delegate = [(HUSafetyAndSecuritySettingsItemModuleController *)self delegate];
    [delegate dismissToHomeSettings];
  }
}

- (HUSafetyAndSecuritySettingsModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end