@interface HUAddPersonRoleViewController
- (BOOL)_disableAddPinCode;
- (BOOL)shouldShowPinCodeRoleOption;
- (BOOL)shouldShowRestrictedGuestRoleOption;
- (HUAddPersonRoleViewController)initWithHome:(id)a3;
- (HUAddPersonRoleViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (HUAddPersonRoleViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (HUAddPersonRoleViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (HUPresentationDelegate)presentationDelegate;
- (id)finishPresentation:(id)a3 animated:(BOOL)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancelButtonPressed:(id)a3;
- (void)didSelectPeopleForInvite:(id)a3 inviteeAddresses:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HUAddPersonRoleViewController

- (HUAddPersonRoleViewController)initWithHome:(id)a3
{
  v4 = a3;
  v5 = _HULocalizedStringWithDefaultValue(@"HUAddPersonRoleTitle", @"HUAddPersonRoleTitle", 1);
  v6 = _HULocalizedStringWithDefaultValue(@"HUAddPersonRoleSubtitle", @"HUAddPersonRoleSubtitle", 1);
  if ([v4 hf_canAddRestrictedGuest])
  {
    v7 = _HULocalizedStringWithDefaultValue(@"HUAddPersonRole_Title", @"HUAddPersonRole_Title", 1);

    v8 = _HULocalizedStringWithDefaultValue(@"HUAddPersonRole_Subtitle", @"HUAddPersonRole_Subtitle", 1);

    v5 = v7;
    v6 = v8;
  }

  v22.receiver = self;
  v22.super_class = HUAddPersonRoleViewController;
  v9 = [(OBTableWelcomeController *)&v22 initWithTitle:v5 detailText:v6 symbolName:0 adoptTableViewScrollView:1];
  v10 = v9;
  if (v9)
  {
    [(HUAddPersonRoleViewController *)v9 setHome:v4];
    v11 = [(HUAddPersonRoleViewController *)v10 headerView];
    [v11 setTitleAccessibilityIdentifier:@"Home.Users.AddPerson.ChooseRole.Title"];

    v12 = [(HUAddPersonRoleViewController *)v10 headerView];
    [v12 setDetailTextAccessibilityIdentifier:@"Home.Users.AddPerson.ChooseRole.Subtitle"];

    v13 = objc_alloc(MEMORY[0x277D75B40]);
    v14 = [v13 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(OBTableWelcomeController *)v10 setTableView:v14];

    v15 = [(OBTableWelcomeController *)v10 tableView];
    [v15 setDataSource:v10];

    v16 = [(OBTableWelcomeController *)v10 tableView];
    [v16 setDelegate:v10];

    v17 = [(OBTableWelcomeController *)v10 tableView];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [MEMORY[0x277D75348] clearColor];
    v19 = [(OBTableWelcomeController *)v10 tableView];
    [v19 setBackgroundColor:v18];

    v20 = [(OBTableWelcomeController *)v10 tableView];
    [v20 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUAddPersonRoleCell"];
  }

  return v10;
}

- (HUAddPersonRoleViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithHome_);
  [v7 handleFailureInMethod:a2 object:self file:@"HUAddPersonRoleViewController.m" lineNumber:74 description:{@"%s is unavailable; use %@ instead", "-[HUAddPersonRoleViewController initWithTitle:detailText:icon:]", v8}];

  return 0;
}

- (HUAddPersonRoleViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHome_);
  [v8 handleFailureInMethod:a2 object:self file:@"HUAddPersonRoleViewController.m" lineNumber:79 description:{@"%s is unavailable; use %@ instead", "-[HUAddPersonRoleViewController initWithTitle:detailText:icon:adoptTableViewScrollView:]", v9}];

  return 0;
}

- (HUAddPersonRoleViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHome_);
  [v8 handleFailureInMethod:a2 object:self file:@"HUAddPersonRoleViewController.m" lineNumber:84 description:{@"%s is unavailable; use %@ instead", "-[HUAddPersonRoleViewController initWithTitle:detailText:symbolName:adoptTableViewScrollView:]", v9}];

  return 0;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HUAddPersonRoleViewController;
  [(OBTableWelcomeController *)&v7 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed_];
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  [v4 setLeftBarButtonItem:v3];

  v5 = [(OBBaseWelcomeController *)self navigationItem];
  v6 = [v5 leftBarButtonItem];
  [v6 setAccessibilityIdentifier:@"Home.Users.AddPerson.CancelButton"];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if ([(HUAddPersonRoleViewController *)self shouldShowPinCodeRoleOption])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  if ([(HUAddPersonRoleViewController *)self shouldShowRestrictedGuestRoleOption:a3])
  {
    return 2;
  }

  return 1;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"HUAddPersonRoleCell"];
  v8 = [MEMORY[0x277D756E0] subtitleCellConfiguration];
  if ([v6 section])
  {
    if ([v6 section] == 1)
    {
      v9 = _HULocalizedStringWithDefaultValue(@"HUAddPersonPinGuestTitle", @"HUAddPersonPinGuestTitle", 1);
      [v8 setText:v9];

      v10 = _HULocalizedStringWithDefaultValue(@"HUAddPersonPinGuestSubitle", @"HUAddPersonPinGuestSubitle", 1);
      [v8 setSecondaryText:v10];

      [v7 setAccessibilityIdentifier:@"Home.Users.AddPerson.PinCodeGuest"];
      if ([(HUAddPersonRoleViewController *)self shouldShowRestrictedGuestRoleOption])
      {
        v11 = _HULocalizedStringWithDefaultValue(@"HUAddPersonRole_PinCode_Title", @"HUAddPersonRole_PinCode_Title", 1);
        [v8 setText:v11];

        [v8 setSecondaryText:0];
        v12 = [MEMORY[0x277D755B8] _systemImageNamed:@"number"];
        [v8 setImage:v12];

        v13 = [MEMORY[0x277D75348] systemGrayColor];
        v14 = [v8 imageProperties];
        [v14 setTintColor:v13];

        [v7 setAccessibilityIdentifier:@"Home.Users.AddPerson.PincodeAccess"];
      }

      if ([(HUAddPersonRoleViewController *)self _disableAddPinCode])
      {
        v15 = [MEMORY[0x277D75348] secondaryLabelColor];
        v16 = [v8 textProperties];
        [v16 setColor:v15];
      }
    }
  }

  else
  {
    if ([v6 row])
    {
      if ([v6 row] != 1)
      {
        goto LABEL_13;
      }

      v17 = _HULocalizedStringWithDefaultValue(@"HUAddPersonRole_RestrictedGuest_Title", @"HUAddPersonRole_RestrictedGuest_Title", 1);
      [v8 setText:v17];

      v18 = _HULocalizedStringWithDefaultValue(@"HUAddPersonRole_RestrictedGuest_Subtitle", @"HUAddPersonRole_RestrictedGuest_Subtitle", 1);
      [v8 setSecondaryText:v18];

      v19 = [MEMORY[0x277D755B8] _systemImageNamed:@"person"];
      [v8 setImage:v19];

      v20 = @"Home.Users.AddPerson.Guest";
    }

    else
    {
      v21 = _HULocalizedStringWithDefaultValue(@"HUAddPersonResidentTitle", @"HUAddPersonResidentTitle", 1);
      [v8 setText:v21];

      v22 = _HULocalizedStringWithDefaultValue(@"HUAddPersonResidentSubitle", @"HUAddPersonResidentSubitle", 1);
      [v8 setSecondaryText:v22];

      if (![(HUAddPersonRoleViewController *)self shouldShowRestrictedGuestRoleOption])
      {
        goto LABEL_13;
      }

      v23 = _HULocalizedStringWithDefaultValue(@"HUAddPersonRole_Resident_Subtitle", @"HUAddPersonRole_Resident_Subtitle", 1);
      [v8 setSecondaryText:v23];

      v24 = [MEMORY[0x277D755B8] _systemImageNamed:@"house.fill"];
      [v8 setImage:v24];

      v20 = @"Home.Users.AddPerson.Resident";
    }

    [v7 setAccessibilityIdentifier:v20];
  }

LABEL_13:
  v25 = [MEMORY[0x277D75348] secondaryLabelColor];
  v26 = [v8 secondaryTextProperties];
  [v26 setColor:v25];

  [v8 setAxesPreservingSuperviewLayoutMargins:3];
  [v7 setContentConfiguration:v8];
  [v7 setAccessoryType:1];
  v27 = [MEMORY[0x277D751C0] listGroupedCellConfiguration];
  v28 = [MEMORY[0x277D75348] tertiarySystemGroupedBackgroundColor];
  [v27 setBackgroundColor:v28];

  [v7 setBackgroundConfiguration:v27];

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 == 1)
  {
    if ([(HUAddPersonRoleViewController *)self _disableAddPinCode:a3])
    {
      v6 = _HULocalizedStringWithDefaultValue(@"HUAddPersonPinGuestSectionHeaderDisabled", @"HUAddPersonPinGuestSectionHeaderDisabled", 1);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4 == 1 && [(HUAddPersonRoleViewController *)self _disableAddPinCode])
  {
    v5 = _HULocalizedStringWithDefaultValue(@"HUAddPersonPinGuestFooterDisabled", @"HUAddPersonPinGuestFooterDisabled", 1);
    if ([(HUAddPersonRoleViewController *)self shouldShowRestrictedGuestRoleOption])
    {
      v6 = _HULocalizedStringWithDefaultValue(@"HUAddPersonRole_PinCode_Disabled_Footer", @"HUAddPersonRole_PinCode_Disabled_Footer", 1);

      v5 = v6;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = v5;
  if ([v5 section] == 1)
  {
    if ([(HUAddPersonRoleViewController *)self _disableAddPinCode])
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  v7 = v6;

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (![v5 section])
  {
    if (![v5 row])
    {
      v9 = [(HUAddPersonRoleViewController *)self navigationController];
      v10 = [(HUAddPersonRoleViewController *)self home];
      [HUAddPeopleViewController presentAddPersonOrAlertForHH2Upgrade:v9 withHome:v10 viewContext:0 delegate:0 presentationDelegate:self];
      v12 = @"HUAddPersonRoleSectionUser - HUUserSectionRowResident";
      goto LABEL_9;
    }

    if ([v5 row] == 1)
    {
      v9 = [(HUAddPersonRoleViewController *)self navigationController];
      v10 = [(HUAddPersonRoleViewController *)self home];
      [HUAddPeopleViewController presentAddPersonOrAlertForHH2Upgrade:v9 withHome:v10 viewContext:1 delegate:self presentationDelegate:self];
      v12 = @"HUAddPersonRoleSectionUser - HUUserSectionRowRestrictedGuest";
      goto LABEL_9;
    }

LABEL_7:
    v12 = &stru_2823E0EE8;
    goto LABEL_10;
  }

  if ([v5 section] != 1)
  {
    goto LABEL_7;
  }

  v6 = [HUAddGuestViewController alloc];
  v7 = [(HUAddPersonRoleViewController *)self pinCodeManager];
  v8 = [(HUAddPersonRoleViewController *)self home];
  v9 = [(HUAddGuestViewController *)v6 initWithPinCodeManager:v7 home:v8];

  [(HUAddGuestViewController *)v9 setPresentationDelegate:self];
  v10 = [(HUAddPersonRoleViewController *)self navigationController];
  v11 = [v10 hu_pushPreloadableViewController:v9 animated:1];
  v12 = @"HUAddPersonRoleSectionPinCode";
LABEL_9:

LABEL_10:
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[HUAddPersonRoleViewController tableView:didSelectRowAtIndexPath:]";
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "(%s) User selected %@", &v14, 0x16u);
  }
}

- (void)cancelButtonPressed:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[HUAddPersonRoleViewController cancelButtonPressed:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'cancel' button %@", &v6, 0x16u);
  }

  [(HUAddPersonRoleViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)shouldShowRestrictedGuestRoleOption
{
  v2 = [(HUAddPersonRoleViewController *)self home];
  v3 = [v2 hf_canAddRestrictedGuest];

  return v3;
}

- (BOOL)shouldShowPinCodeRoleOption
{
  v2 = [(HUAddPersonRoleViewController *)self home];
  v3 = [v2 hf_canAddAccessCode];

  return v3;
}

- (BOOL)_disableAddPinCode
{
  v3 = [(HUAddPersonRoleViewController *)self home];
  v4 = [v3 hf_accessoriesSupportingAccessCodes];
  v5 = [v4 na_any:&__block_literal_global_198];

  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = [(HUAddPersonRoleViewController *)self home];
    v6 = [v7 hf_hasEnabledResident] ^ 1;
  }

  return v6;
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
    v10 = [(HUAddPersonRoleViewController *)self presentationDelegate];
    v11 = [v10 finishPresentation:self animated:v4];
  }

  else
  {
    v11 = [(UIViewController *)self hu_dismissViewControllerAnimated:v4];
  }

  return v11;
}

- (void)didSelectPeopleForInvite:(id)a3 inviteeAddresses:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v14 = 138412546;
    v15 = self;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ User did select people to invite. Continuing with restricted guest flow.", &v14, 0x16u);
  }

  v9 = [HUAddRestrictedGuestViewController alloc];
  v10 = [(HUAddPersonRoleViewController *)self home];
  v11 = [(HUAddRestrictedGuestViewController *)v9 initWithHome:v10 inviteeAddresses:v6];

  [(HUAddRestrictedGuestViewController *)v11 setPresentationDelegate:self];
  v12 = [(HUAddPersonRoleViewController *)self navigationController];
  v13 = [v12 hu_pushPreloadableViewController:v11 animated:1];
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presentationDelegate);

  return WeakRetained;
}

@end