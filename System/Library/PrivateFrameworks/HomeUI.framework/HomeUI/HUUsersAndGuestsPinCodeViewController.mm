@interface HUUsersAndGuestsPinCodeViewController
- (BOOL)_isEditingGuestList;
- (BOOL)_shouldShowInvitePeople;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HFPinCodeManager)pinCodeManager;
- (HUPresentationDelegate)presentationDelegate;
- (HUUsersAndGuestsPinCodeViewController)initWithSourceItem:(id)item pinCodeManager:(id)manager home:(id)home forAccessory:(id)accessory;
- (id)_addPinCodeItem;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)finishPresentation:(id)presentation animated:(BOOL)animated;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)hideSpinner;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)showSpinner;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)userSwitchCell:(id)cell didTurnOn:(BOOL)on;
@end

@implementation HUUsersAndGuestsPinCodeViewController

- (HUUsersAndGuestsPinCodeViewController)initWithSourceItem:(id)item pinCodeManager:(id)manager home:(id)home forAccessory:(id)accessory
{
  managerCopy = manager;
  accessoryCopy = accessory;
  homeCopy = home;
  v12 = [[HUUsersAndGuestsPinCodeItemManager alloc] initWithPinCodeManager:managerCopy delegate:self home:homeCopy forAccessory:accessoryCopy];

  v17.receiver = self;
  v17.super_class = HUUsersAndGuestsPinCodeViewController;
  v13 = [(HUItemTableViewController *)&v17 initWithItemManager:v12 tableViewStyle:1];
  v14 = v13;
  if (v13)
  {
    [(HUUsersAndGuestsPinCodeViewController *)v13 setPinCodeManager:managerCopy];
    v15 = _HULocalizedStringWithDefaultValue(@"HUUsersAndGuestsPinCodesTitle", @"HUUsersAndGuestsPinCodesTitle", 1);
    [(HUUsersAndGuestsPinCodeViewController *)v14 setTitle:v15];

    [(HUItemTableViewController *)v14 setAutomaticallyUpdatesViewControllerTitle:0];
  }

  return v14;
}

- (void)showSpinner
{
  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  navigationItem = [(HUUsersAndGuestsPinCodeViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  [v5 startAnimating];
}

- (void)hideSpinner
{
  objc_opt_class();
  navigationItem = [(HUUsersAndGuestsPinCodeViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  customView = [rightBarButtonItem customView];
  if (objc_opt_isKindOfClass())
  {
    v6 = customView;
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;

  navigationItem2 = [(HUUsersAndGuestsPinCodeViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:0];

  [v8 stopAnimating];
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, moduleCopy);
  }

  v4 = [[HUPinCodeListModuleController alloc] initWithModule:moduleCopy];

  return v4;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  userItemProvider = [itemManager userItemProvider];
  items = [userItemProvider items];
  v9 = [items containsObject:itemCopy];

  if ((v9 & 1) == 0)
  {
    transformedGuestUserItemProvider = [itemManager transformedGuestUserItemProvider];
    items2 = [transformedGuestUserItemProvider items];
    v12 = [items2 containsObject:itemCopy];

    if (v12)
    {
      [(HUUsersAndGuestsPinCodeViewController *)self _isEditingGuestList];
    }

    else
    {
      restoreHomeKeyAccessItem = [itemManager restoreHomeKeyAccessItem];
      v14 = [itemCopy isEqual:restoreHomeKeyAccessItem];

      if ((v14 & 1) == 0)
      {
        NSLog(&cfstr_UnrecognizedIt.isa, itemCopy);
      }
    }
  }

  v15 = objc_opt_class();

  return v15;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  userItemProvider = [itemManager userItemProvider];
  items = [userItemProvider items];
  v11 = [items containsObject:itemCopy];

  if (v11)
  {
    objc_opt_class();
    v12 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    [v14 setAccessoryType:0];
    latestResults = [itemCopy latestResults];
    v16 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    v17 = [v16 stringByAppendingString:@".UsersAndGuests"];
    [v14 setAccessibilityIdentifier:v17];

    latestResults2 = [itemCopy latestResults];
    v19 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D14120]];

    if (v19)
    {
      [v14 setUserHandle:v19];
    }
  }

  else
  {
    transformedGuestUserItemProvider = [itemManager transformedGuestUserItemProvider];
    items2 = [transformedGuestUserItemProvider items];
    v22 = [items2 containsObject:itemCopy];

    if (!v22)
    {
      goto LABEL_20;
    }

    objc_opt_class();
    v23 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v14 = v24;

    latestResults3 = [itemCopy latestResults];
    v19 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D14120]];

    if (v19)
    {
      [v14 setUserHandle:v19];
    }

    v26 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:itemCopy];
    [v14 setShowAccessLevelDescription:1];
    [v26 setPrefersSideBySideTextAndSecondaryText:0];
    [v23 setContentConfiguration:v26];
    latestResults4 = [itemCopy latestResults];
    v28 = *MEMORY[0x277D13DC8];
    v29 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v23 setAccessibilityIdentifier:v29];

    if ([(HUUsersAndGuestsPinCodeViewController *)self _isEditingGuestList])
    {
      [v23 setAccessoryType:1];
      latestResults5 = [itemCopy latestResults];
      v31 = [latestResults5 objectForKeyedSubscript:v28];
      [v23 setAccessibilityIdentifier:v31];
    }

    objc_opt_class();
    v32 = v23;
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;

    [v34 setOverrideDefaultContentConfiguration:0];
    [v34 setDelegate:self];
    latestResults6 = [itemCopy latestResults];
    v36 = [latestResults6 objectForKeyedSubscript:v28];
    [v34 setAccessibilityIdentifier:v36];
  }

LABEL_20:
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];
  userItemProvider = [itemManager userItemProvider];
  items = [userItemProvider items];
  v12 = [items containsObject:v9];

  if (v12 & 1) != 0 || !-[HUUsersAndGuestsPinCodeViewController _isEditingGuestList](self, "_isEditingGuestList") && ([itemManager transformedGuestUserItemProvider], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "items"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "containsObject:", v9), v15, v14, (v16))
  {
    v13 = 0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = HUUsersAndGuestsPinCodeViewController;
    v13 = [(HUItemTableViewController *)&v18 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
  }

  return v13;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v19.receiver = self;
  v19.super_class = HUUsersAndGuestsPinCodeViewController;
  pathCopy = path;
  v7 = [(HUItemTableViewController *)&v19 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(HUItemTableViewController *)self itemManager:v19.receiver];
  v9 = [v8 displayedItemAtIndexPath:pathCopy];

  if ([(HUUsersAndGuestsPinCodeViewController *)self _shouldShowInvitePeople])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _addPinCodeItem = [(HUUsersAndGuestsPinCodeViewController *)self _addPinCodeItem];
      v11 = [v9 isEqual:_addPinCodeItem];

      if (v11)
      {
        objc_opt_class();
        contentConfiguration = [v7 contentConfiguration];
        if (objc_opt_isKindOfClass())
        {
          v13 = contentConfiguration;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        v15 = _HULocalizedStringWithDefaultValue(@"HUInviteButtonTitle", @"HUInviteButtonTitle", 1);
        [v14 setText:v15];

        [v7 setContentConfiguration:v14];
        latestResults = [v9 latestResults];
        v17 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
        [v7 setAccessibilityIdentifier:v17];
      }
    }
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v64 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v10 = [itemManager displayedItemAtIndexPath:pathCopy];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  objc_initWeak(&location, itemManager2);

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v60 = 2080;
    v61 = "[HUUsersAndGuestsPinCodeViewController tableView:didSelectRowAtIndexPath:]";
    v62 = 2112;
    v63 = v10;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "In %@'s %s, user selected item %@", buf, 0x20u);
  }

  if ([(HUUsersAndGuestsPinCodeViewController *)self _shouldShowInvitePeople])
  {
    _addPinCodeItem = [(HUUsersAndGuestsPinCodeViewController *)self _addPinCodeItem];
    v14 = [v10 isEqual:_addPinCodeItem];

    if (v14)
    {
      itemManager3 = [(HUItemTableViewController *)self itemManager];
      home = [itemManager3 home];
      if ([home hasOnboardedForAccessCode])
      {
        itemManager4 = [(HUItemTableViewController *)self itemManager];
        home2 = [itemManager4 home];
        accessories = [home2 accessories];
        v20 = [accessories na_any:&__block_literal_global_155];
      }

      else
      {
        v20 = 0;
      }

      v47 = [HUAddPersonRoleViewController alloc];
      itemManager5 = [(HUItemTableViewController *)self itemManager];
      home3 = [itemManager5 home];
      v27 = [(HUAddPersonRoleViewController *)v47 initWithHome:home3];

      if (v20)
      {
        pinCodeManager = [(HUUsersAndGuestsPinCodeViewController *)self pinCodeManager];
        [(HUAddPersonRoleViewController *)v27 setPinCodeManager:pinCodeManager];
      }

      [(HUAddPersonRoleViewController *)v27 setPresentationDelegate:self];
      v30 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v27];
      [(HUAddPersonRoleViewController *)v30 setModalPresentationStyle:2];
      [(HUUsersAndGuestsPinCodeViewController *)self presentViewController:v30 animated:1 completion:0];
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
LABEL_25:

      goto LABEL_26;
    }
  }

  if ([(HUUsersAndGuestsPinCodeViewController *)self _isEditingGuestList])
  {
    v21 = objc_loadWeakRetained(&location);
    transformedGuestUserItemProvider = [v21 transformedGuestUserItemProvider];
    items = [transformedGuestUserItemProvider items];
    v24 = [items containsObject:v10];

    if (v24)
    {
      objc_opt_class();
      v25 = v10;
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;

      objc_opt_class();
      sourceItem = [(HUAddPersonRoleViewController *)v27 sourceItem];
      if (objc_opt_isKindOfClass())
      {
        v29 = sourceItem;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;

      v31 = [HUEditUserViewController alloc];
      pinCodeManager2 = [(HUUsersAndGuestsPinCodeViewController *)self pinCodeManager];
      home4 = [pinCodeManager2 home];
      pinCodeManager3 = [(HUUsersAndGuestsPinCodeViewController *)self pinCodeManager];
      v35 = [(HUEditUserViewController *)v31 initWithItem:v30 home:home4 pinCodeManager:pinCodeManager3];

      navigationController = [(HUUsersAndGuestsPinCodeViewController *)self navigationController];
      v37 = [navigationController hu_pushPreloadableViewController:v35 animated:1];

      goto LABEL_25;
    }
  }

  v56.receiver = self;
  v56.super_class = HUUsersAndGuestsPinCodeViewController;
  [(HUItemTableViewController *)&v56 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v38 = objc_loadWeakRetained(&location);
  restoreHomeKeyAccessItem = [v38 restoreHomeKeyAccessItem];
  v40 = [v10 isEqual:restoreHomeKeyAccessItem];

  if (v40)
  {
    v41 = [viewCopy cellForRowAtIndexPath:pathCopy];
    objc_opt_class();
    v27 = v41;
    if (objc_opt_isKindOfClass())
    {
      v42 = v27;
    }

    else
    {
      v42 = 0;
    }

    v43 = v42;

    [(HUAddPersonRoleViewController *)v43 setShowSpinner:1];
    objc_initWeak(buf, self);
    v44 = objc_loadWeakRetained(&location);
    restoreFuture = [v44 restoreFuture];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __75__HUUsersAndGuestsPinCodeViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    v51[3] = &unk_277DBFA80;
    objc_copyWeak(&v54, buf);
    objc_copyWeak(v55, &location);
    v52 = v10;
    v55[1] = a2;
    v30 = v43;
    v53 = v30;
    v46 = [restoreFuture addSuccessBlock:v51];

    objc_destroyWeak(v55);
    objc_destroyWeak(&v54);
    objc_destroyWeak(buf);
    goto LABEL_25;
  }

LABEL_26:
  objc_destroyWeak(&location);
}

void __75__HUUsersAndGuestsPinCodeViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained pinCodeManager];
  v6 = [v5 home];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__HUUsersAndGuestsPinCodeViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
  v9[3] = &unk_277DBFA58;
  objc_copyWeak(v12, (a1 + 56));
  v9[4] = WeakRetained;
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v10 = v7;
  v12[1] = v8;
  v11 = *(a1 + 40);
  [v6 restoreMissingWalletKeys:v3 completion:v9];

  objc_destroyWeak(v12);
}

uint64_t __75__HUUsersAndGuestsPinCodeViewController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D2C900] futureWithResult:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setRestoreFuture:v3];

  v5 = [*(a1 + 32) itemManager];
  v6 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
  v7 = [v5 updateResultsForItems:v6 senderSelector:*(a1 + 64)];

  v8 = *(a1 + 48);

  return [v8 setShowSpinner:0];
}

- (id)finishPresentation:(id)presentation animated:(BOOL)animated
{
  animatedCopy = animated;
  presentationCopy = presentation;
  if ([presentationCopy conformsToProtocol:&unk_2824C3AE0])
  {
    v7 = presentationCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  requiresPresentingViewControllerDismissal = [v8 requiresPresentingViewControllerDismissal];

  if (requiresPresentingViewControllerDismissal)
  {
    presentationDelegate = [(HUUsersAndGuestsPinCodeViewController *)self presentationDelegate];
    v11 = [presentationDelegate finishPresentation:self animated:animatedCopy];
  }

  else
  {
    v11 = [(UIViewController *)self hu_dismissViewControllerAnimated:animatedCopy];
  }

  return v11;
}

- (void)userSwitchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  v40 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    text = [cellCopy text];
    item = [cellCopy item];
    *buf = 138413314;
    selfCopy = self;
    v32 = 2112;
    v33 = v9;
    v34 = 2112;
    v35 = text;
    v36 = 1024;
    v37 = onCopy;
    v38 = 2112;
    v39 = item;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped on switch cell '%@' | isOn = %{BOOL}d | item = %@", buf, 0x30u);
  }

  itemManager = [(HUItemTableViewController *)self itemManager];
  objc_opt_class();
  item2 = [cellCopy item];
  if (objc_opt_isKindOfClass())
  {
    v14 = item2;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  sourceItem = [v15 sourceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    sourceItem2 = [v15 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v19 = sourceItem2;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    v21 = [itemManager enableRestrictedGuestAccessSetting:onCopy forItem:v20];

    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __66__HUUsersAndGuestsPinCodeViewController_userSwitchCell_didTurnOn___block_invoke;
    v27 = &unk_277DB7EB8;
    v28 = cellCopy;
    v29 = onCopy;
    v22 = [v21 addCompletionBlock:&v24];
  }

  v23 = [itemManager reloadAndUpdateAllItemsFromSenderSelector:{a2, v24, v25, v26, v27}];
}

void __66__HUUsersAndGuestsPinCodeViewController_userSwitchCell_didTurnOn___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [*(a1 + 32) setOn:(*(a1 + 40) & 1) == 0 animated:1];
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[HUUsersAndGuestsPinCodeViewController userSwitchCell:didTurnOn:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "(%s) Failed to update restricted guest access settings with error %@.", &v7, 0x16u);
    }

    v6 = [MEMORY[0x277D14640] sharedHandler];
    [v6 handleError:v4 operationType:*MEMORY[0x277D13C78] options:0 retryBlock:0 cancelBlock:0];
  }
}

- (id)_addPinCodeItem
{
  itemModuleControllers = [(HUItemTableViewController *)self itemModuleControllers];
  v3 = [itemModuleControllers na_firstObjectPassingTest:&__block_literal_global_98_0];

  module = [v3 module];
  addPinCodeItem = [module addPinCodeItem];

  return addPinCodeItem;
}

BOOL __56__HUUsersAndGuestsPinCodeViewController__addPinCodeItem__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = [v2 module];

  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 listType] == 2;
  return v6;
}

- (BOOL)_isEditingGuestList
{
  itemModuleControllers = [(HUItemTableViewController *)self itemModuleControllers];
  v3 = [itemModuleControllers na_firstObjectPassingTest:&__block_literal_global_100_0];

  LOBYTE(itemModuleControllers) = [v3 editing];
  return itemModuleControllers;
}

BOOL __60__HUUsersAndGuestsPinCodeViewController__isEditingGuestList__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = [v2 module];

  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 listType] == 2;
  return v6;
}

- (BOOL)_shouldShowInvitePeople
{
  v22 = *MEMORY[0x277D85DE8];
  itemManager = [(HUItemTableViewController *)self itemManager];
  home = [itemManager home];

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  if (hasOptedToHH2)
  {
    residentDevices = [home residentDevices];
    v8 = [residentDevices count] != 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    residentDevices2 = [home residentDevices];
    v12 = 136316162;
    v13 = "[HUUsersAndGuestsPinCodeViewController _shouldShowInvitePeople]";
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = hasOptedToHH2;
    v18 = 2048;
    v19 = [residentDevices2 count];
    v20 = 2112;
    v21 = home;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "(%s) shouldShowInvitePeople = %{BOOL}d because hasOptedToHH2 = %{BOOL}d | residentDevices.count = %ld | home %@", &v12, 0x2Cu);
  }

  return v8;
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presentationDelegate);

  return WeakRetained;
}

- (HFPinCodeManager)pinCodeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_pinCodeManager);

  return WeakRetained;
}

@end