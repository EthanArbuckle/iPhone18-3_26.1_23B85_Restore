@interface HUGuestsPinCodesViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HFPinCodeManager)pinCodeManager;
- (HUGuestsPinCodesViewController)initWithPinCodeManager:(id)manager settingsContext:(unint64_t)context;
- (HUPresentationDelegate)presentationDelegate;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)finishPresentation:(id)presentation animated:(BOOL)animated;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)hideSpinner;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)showSpinner;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation HUGuestsPinCodesViewController

- (HUGuestsPinCodesViewController)initWithPinCodeManager:(id)manager settingsContext:(unint64_t)context
{
  managerCopy = manager;
  v7 = [[HUGuestsPinCodesItemManager alloc] initWithPinCodeManager:managerCopy delegate:0];
  v12.receiver = self;
  v12.super_class = HUGuestsPinCodesViewController;
  v8 = [(HUItemTableViewController *)&v12 initWithItemManager:v7 tableViewStyle:1];
  v9 = v8;
  if (v8)
  {
    [(HUGuestsPinCodesViewController *)v8 setPinCodeManager:managerCopy];
    [(HUGuestsPinCodesViewController *)v9 setSettingsContext:context];
    v10 = _HULocalizedStringWithDefaultValue(@"HUGuestsPinCodesTitle", @"HUGuestsPinCodesTitle", 1);
    [(HUGuestsPinCodesViewController *)v9 setTitle:v10];

    [(HUItemTableViewController *)v9 setAutomaticallyUpdatesViewControllerTitle:0];
  }

  return v9;
}

- (void)showSpinner
{
  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  navigationItem = [(HUGuestsPinCodesViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  [v5 startAnimating];
}

- (void)hideSpinner
{
  objc_opt_class();
  navigationItem = [(HUGuestsPinCodesViewController *)self navigationItem];
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

  navigationItem2 = [(HUGuestsPinCodesViewController *)self navigationItem];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v25.receiver = self;
  v25.super_class = HUGuestsPinCodesViewController;
  pathCopy = path;
  v7 = [(HUItemTableViewController *)&v25 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(HUItemTableViewController *)self itemManager:v25.receiver];
  v9 = [v8 displayedItemAtIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    contentConfiguration = [v7 contentConfiguration];
    if (objc_opt_isKindOfClass())
    {
      v11 = contentConfiguration;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = _HULocalizedStringWithDefaultValue(@"HUPinCodeGuestAccessDescription", @"HUPinCodeGuestAccessDescription", 1);
    [v12 setSecondaryText:v13];

    [v7 setContentConfiguration:v12];
LABEL_6:

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v14 = v9;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    latestResults = [v16 latestResults];

    v12 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];

    v18 = HFLocalizedString();
    v19 = [v12 isEqualToString:v18];

    if (v19)
    {
      objc_opt_class();
      contentConfiguration2 = [v7 contentConfiguration];
      if (objc_opt_isKindOfClass())
      {
        v21 = contentConfiguration2;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      [v7 setAccessibilityIdentifier:@"Home.Guests.InvitePeople"];
      v23 = _HULocalizedStringWithDefaultValue(@"HUInviteButtonTitle", @"HUInviteButtonTitle", 1);
      [v22 setText:v23];

      [v7 setContentConfiguration:v22];
    }

    goto LABEL_6;
  }

LABEL_16:

  return v7;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  objc_opt_isKindOfClass();

  v5 = objc_opt_class();

  return v5;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v7 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    [v9 setShowAccessLevelDescription:1];
    [v9 setAccessoryType:1];
    latestResults = [itemCopy latestResults];
    v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14120]];

    if (v11)
    {
      [v9 setUserHandle:v11];
      latestResults2 = [itemCopy latestResults];
      v13 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      v14 = [v13 stringByAppendingString:@".Guest"];
      [v9 setAccessibilityIdentifier:v14];
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v51 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v49 = 2112;
    v50 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@: User did select row for item: %@", buf, 0x16u);
  }

  latestResults = [v9 latestResults];
  v12 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v13 = HFLocalizedString();
  v14 = [v12 isEqualToString:v13];

  if (v14)
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    home = [itemManager2 home];
    if ([home hasOnboardedForAccessCode])
    {
      itemManager3 = [(HUItemTableViewController *)self itemManager];
      home2 = [itemManager3 home];
      accessories = [home2 accessories];
      v20 = [accessories na_any:&__block_literal_global_256];
    }

    else
    {
      v20 = 0;
    }

    v32 = [HUAddPersonRoleViewController alloc];
    itemManager4 = [(HUItemTableViewController *)self itemManager];
    home3 = [itemManager4 home];
    v23 = [(HUAddPersonRoleViewController *)v32 initWithHome:home3];

    if (v20)
    {
      pinCodeManager = [(HUGuestsPinCodesViewController *)self pinCodeManager];
      [(HUAddPersonRoleViewController *)v23 setPinCodeManager:pinCodeManager];
    }

    [(HUAddPersonRoleViewController *)v23 setPresentationDelegate:self];
    v29 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v23];
    [(HUEditUserViewController *)v29 setModalPresentationStyle:2];
    [(HUGuestsPinCodesViewController *)self presentViewController:v29 animated:1 completion:0];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    goto LABEL_19;
  }

  v46.receiver = self;
  v46.super_class = HUGuestsPinCodesViewController;
  [(HUItemTableViewController *)&v46 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v21 = v9;
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    if ([(HUGuestsPinCodesViewController *)self settingsContext])
    {
      if ([(HUGuestsPinCodesViewController *)self settingsContext]!= 1)
      {
LABEL_20:

        goto LABEL_21;
      }

      user = [(HUAddPersonRoleViewController *)v23 user];
      itemManager5 = [(HUItemTableViewController *)self itemManager];
      home4 = [itemManager5 home];

      objc_initWeak(buf, self);
      pinCodeManager2 = [(HUGuestsPinCodesViewController *)self pinCodeManager];
      userPinCodes = [pinCodeManager2 userPinCodes];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __68__HUGuestsPinCodesViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
      v41[3] = &unk_277DBC550;
      objc_copyWeak(&v45, buf);
      v29 = user;
      v42 = v29;
      v43 = v23;
      navigationController = home4;
      v44 = navigationController;
      v31 = [userPinCodes addSuccessBlock:v41];

      objc_destroyWeak(&v45);
      objc_destroyWeak(buf);
    }

    else
    {
      v36 = [HUEditUserViewController alloc];
      pinCodeManager3 = [(HUGuestsPinCodesViewController *)self pinCodeManager];
      home5 = [pinCodeManager3 home];
      pinCodeManager4 = [(HUGuestsPinCodesViewController *)self pinCodeManager];
      v29 = [(HUEditUserViewController *)v36 initWithItem:v23 home:home5 pinCodeManager:pinCodeManager4];

      navigationController = [(HUGuestsPinCodesViewController *)self navigationController];
      v40 = [navigationController hu_pushPreloadableViewController:v29 animated:1];
    }

LABEL_19:
    goto LABEL_20;
  }

LABEL_21:
}

void __68__HUGuestsPinCodesViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__HUGuestsPinCodesViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
  v13[3] = &unk_277DBC528;
  v14 = *(a1 + 32);
  v5 = [v3 na_firstObjectPassingTest:v13];

  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277D14920]) initWithPinCode:v5 inHome:*(a1 + 48) onAccessory:0];

    v6 = v7;
  }

  v8 = [HUPinCodeDetailsViewController alloc];
  v9 = [WeakRetained pinCodeManager];
  v10 = [(HUPinCodeDetailsViewController *)v8 initWithItem:v6 pinCodeManager:v9 home:*(a1 + 48)];

  v11 = [WeakRetained navigationController];
  v12 = [v11 hu_pushPreloadableViewController:v10 animated:1];
}

uint64_t __68__HUGuestsPinCodesViewController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 userLabel];
  v4 = [v3 user];
  v5 = [v4 uniqueIdentifier];
  v6 = [*(a1 + 32) uniqueIdentifier];
  v7 = [v5 isEqual:v6];

  return v7;
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
    presentationDelegate = [(HUGuestsPinCodesViewController *)self presentationDelegate];
    v11 = [presentationDelegate finishPresentation:self animated:animatedCopy];
  }

  else
  {
    v11 = [(UIViewController *)self hu_dismissViewControllerAnimated:animatedCopy];
  }

  return v11;
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