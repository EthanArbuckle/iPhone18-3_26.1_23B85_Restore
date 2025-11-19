@interface HUGuestsPinCodesViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HFPinCodeManager)pinCodeManager;
- (HUGuestsPinCodesViewController)initWithPinCodeManager:(id)a3 settingsContext:(unint64_t)a4;
- (HUPresentationDelegate)presentationDelegate;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)finishPresentation:(id)a3 animated:(BOOL)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)hideSpinner;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)showSpinner;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation HUGuestsPinCodesViewController

- (HUGuestsPinCodesViewController)initWithPinCodeManager:(id)a3 settingsContext:(unint64_t)a4
{
  v6 = a3;
  v7 = [[HUGuestsPinCodesItemManager alloc] initWithPinCodeManager:v6 delegate:0];
  v12.receiver = self;
  v12.super_class = HUGuestsPinCodesViewController;
  v8 = [(HUItemTableViewController *)&v12 initWithItemManager:v7 tableViewStyle:1];
  v9 = v8;
  if (v8)
  {
    [(HUGuestsPinCodesViewController *)v8 setPinCodeManager:v6];
    [(HUGuestsPinCodesViewController *)v9 setSettingsContext:a4];
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
  v4 = [(HUGuestsPinCodesViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  [v5 startAnimating];
}

- (void)hideSpinner
{
  objc_opt_class();
  v3 = [(HUGuestsPinCodesViewController *)self navigationItem];
  v4 = [v3 rightBarButtonItem];
  v5 = [v4 customView];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;

  v7 = [(HUGuestsPinCodesViewController *)self navigationItem];
  [v7 setRightBarButtonItem:0];

  [v8 stopAnimating];
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, v3);
  }

  v4 = [[HUPinCodeListModuleController alloc] initWithModule:v3];

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v25.receiver = self;
  v25.super_class = HUGuestsPinCodesViewController;
  v6 = a4;
  v7 = [(HUItemTableViewController *)&v25 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(HUItemTableViewController *)self itemManager:v25.receiver];
  v9 = [v8 displayedItemAtIndexPath:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v10 = [v7 contentConfiguration];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
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

    v17 = [v16 latestResults];

    v12 = [v17 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

    v18 = HFLocalizedString();
    v19 = [v12 isEqualToString:v18];

    if (v19)
    {
      objc_opt_class();
      v20 = [v7 contentConfiguration];
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
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

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v4 = a3;
  objc_opt_class();
  objc_opt_isKindOfClass();

  v5 = objc_opt_class();

  return v5;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v15 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v7 = v15;
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
    v10 = [v6 latestResults];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D14120]];

    if (v11)
    {
      [v9 setUserHandle:v11];
      v12 = [v6 latestResults];
      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      v14 = [v13 stringByAppendingString:@".Guest"];
      [v9 setAccessibilityIdentifier:v14];
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v48 = self;
    v49 = 2112;
    v50 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@: User did select row for item: %@", buf, 0x16u);
  }

  v11 = [v9 latestResults];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v13 = HFLocalizedString();
  v14 = [v12 isEqualToString:v13];

  if (v14)
  {
    v15 = [(HUItemTableViewController *)self itemManager];
    v16 = [v15 home];
    if ([v16 hasOnboardedForAccessCode])
    {
      v17 = [(HUItemTableViewController *)self itemManager];
      v18 = [v17 home];
      v19 = [v18 accessories];
      v20 = [v19 na_any:&__block_literal_global_256];
    }

    else
    {
      v20 = 0;
    }

    v32 = [HUAddPersonRoleViewController alloc];
    v33 = [(HUItemTableViewController *)self itemManager];
    v34 = [v33 home];
    v23 = [(HUAddPersonRoleViewController *)v32 initWithHome:v34];

    if (v20)
    {
      v35 = [(HUGuestsPinCodesViewController *)self pinCodeManager];
      [(HUAddPersonRoleViewController *)v23 setPinCodeManager:v35];
    }

    [(HUAddPersonRoleViewController *)v23 setPresentationDelegate:self];
    v29 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v23];
    [(HUEditUserViewController *)v29 setModalPresentationStyle:2];
    [(HUGuestsPinCodesViewController *)self presentViewController:v29 animated:1 completion:0];
    [v6 deselectRowAtIndexPath:v7 animated:1];
    goto LABEL_19;
  }

  v46.receiver = self;
  v46.super_class = HUGuestsPinCodesViewController;
  [(HUItemTableViewController *)&v46 tableView:v6 didSelectRowAtIndexPath:v7];
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

      v24 = [(HUAddPersonRoleViewController *)v23 user];
      v25 = [(HUItemTableViewController *)self itemManager];
      v26 = [v25 home];

      objc_initWeak(buf, self);
      v27 = [(HUGuestsPinCodesViewController *)self pinCodeManager];
      v28 = [v27 userPinCodes];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __68__HUGuestsPinCodesViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
      v41[3] = &unk_277DBC550;
      objc_copyWeak(&v45, buf);
      v29 = v24;
      v42 = v29;
      v43 = v23;
      v30 = v26;
      v44 = v30;
      v31 = [v28 addSuccessBlock:v41];

      objc_destroyWeak(&v45);
      objc_destroyWeak(buf);
    }

    else
    {
      v36 = [HUEditUserViewController alloc];
      v37 = [(HUGuestsPinCodesViewController *)self pinCodeManager];
      v38 = [v37 home];
      v39 = [(HUGuestsPinCodesViewController *)self pinCodeManager];
      v29 = [(HUEditUserViewController *)v36 initWithItem:v23 home:v38 pinCodeManager:v39];

      v30 = [(HUGuestsPinCodesViewController *)self navigationController];
      v40 = [v30 hu_pushPreloadableViewController:v29 animated:1];
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

- (id)finishPresentation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 conformsToProtocol:&unk_2824C3AE0])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 requiresPresentingViewControllerDismissal];

  if (v9)
  {
    v10 = [(HUGuestsPinCodesViewController *)self presentationDelegate];
    v11 = [v10 finishPresentation:self animated:v4];
  }

  else
  {
    v11 = [(UIViewController *)self hu_dismissViewControllerAnimated:v4];
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