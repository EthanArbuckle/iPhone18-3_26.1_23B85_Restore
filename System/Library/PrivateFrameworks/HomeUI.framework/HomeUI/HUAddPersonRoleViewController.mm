@interface HUAddPersonRoleViewController
- (BOOL)_disableAddPinCode;
- (BOOL)shouldShowPinCodeRoleOption;
- (BOOL)shouldShowRestrictedGuestRoleOption;
- (HUAddPersonRoleViewController)initWithHome:(id)home;
- (HUAddPersonRoleViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (HUAddPersonRoleViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (HUAddPersonRoleViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (HUPresentationDelegate)presentationDelegate;
- (id)finishPresentation:(id)presentation animated:(BOOL)animated;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancelButtonPressed:(id)pressed;
- (void)didSelectPeopleForInvite:(id)invite inviteeAddresses:(id)addresses;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation HUAddPersonRoleViewController

- (HUAddPersonRoleViewController)initWithHome:(id)home
{
  homeCopy = home;
  v5 = _HULocalizedStringWithDefaultValue(@"HUAddPersonRoleTitle", @"HUAddPersonRoleTitle", 1);
  v6 = _HULocalizedStringWithDefaultValue(@"HUAddPersonRoleSubtitle", @"HUAddPersonRoleSubtitle", 1);
  if ([homeCopy hf_canAddRestrictedGuest])
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
    [(HUAddPersonRoleViewController *)v9 setHome:homeCopy];
    headerView = [(HUAddPersonRoleViewController *)v10 headerView];
    [headerView setTitleAccessibilityIdentifier:@"Home.Users.AddPerson.ChooseRole.Title"];

    headerView2 = [(HUAddPersonRoleViewController *)v10 headerView];
    [headerView2 setDetailTextAccessibilityIdentifier:@"Home.Users.AddPerson.ChooseRole.Subtitle"];

    v13 = objc_alloc(MEMORY[0x277D75B40]);
    v14 = [v13 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(OBTableWelcomeController *)v10 setTableView:v14];

    tableView = [(OBTableWelcomeController *)v10 tableView];
    [tableView setDataSource:v10];

    tableView2 = [(OBTableWelcomeController *)v10 tableView];
    [tableView2 setDelegate:v10];

    tableView3 = [(OBTableWelcomeController *)v10 tableView];
    [tableView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    tableView4 = [(OBTableWelcomeController *)v10 tableView];
    [tableView4 setBackgroundColor:clearColor];

    tableView5 = [(OBTableWelcomeController *)v10 tableView];
    [tableView5 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUAddPersonRoleCell"];
  }

  return v10;
}

- (HUAddPersonRoleViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAddPersonRoleViewController.m" lineNumber:74 description:{@"%s is unavailable; use %@ instead", "-[HUAddPersonRoleViewController initWithTitle:detailText:icon:]", v8}];

  return 0;
}

- (HUAddPersonRoleViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAddPersonRoleViewController.m" lineNumber:79 description:{@"%s is unavailable; use %@ instead", "-[HUAddPersonRoleViewController initWithTitle:detailText:icon:adoptTableViewScrollView:]", v9}];

  return 0;
}

- (HUAddPersonRoleViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAddPersonRoleViewController.m" lineNumber:84 description:{@"%s is unavailable; use %@ instead", "-[HUAddPersonRoleViewController initWithTitle:detailText:symbolName:adoptTableViewScrollView:]", v9}];

  return 0;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HUAddPersonRoleViewController;
  [(OBTableWelcomeController *)&v7 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed_];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v3];

  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  leftBarButtonItem = [navigationItem2 leftBarButtonItem];
  [leftBarButtonItem setAccessibilityIdentifier:@"Home.Users.AddPerson.CancelButton"];
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 1;
  }

  if ([(HUAddPersonRoleViewController *)self shouldShowRestrictedGuestRoleOption:view])
  {
    return 2;
  }

  return 1;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"HUAddPersonRoleCell"];
  subtitleCellConfiguration = [MEMORY[0x277D756E0] subtitleCellConfiguration];
  if ([pathCopy section])
  {
    if ([pathCopy section] == 1)
    {
      v9 = _HULocalizedStringWithDefaultValue(@"HUAddPersonPinGuestTitle", @"HUAddPersonPinGuestTitle", 1);
      [subtitleCellConfiguration setText:v9];

      v10 = _HULocalizedStringWithDefaultValue(@"HUAddPersonPinGuestSubitle", @"HUAddPersonPinGuestSubitle", 1);
      [subtitleCellConfiguration setSecondaryText:v10];

      [v7 setAccessibilityIdentifier:@"Home.Users.AddPerson.PinCodeGuest"];
      if ([(HUAddPersonRoleViewController *)self shouldShowRestrictedGuestRoleOption])
      {
        v11 = _HULocalizedStringWithDefaultValue(@"HUAddPersonRole_PinCode_Title", @"HUAddPersonRole_PinCode_Title", 1);
        [subtitleCellConfiguration setText:v11];

        [subtitleCellConfiguration setSecondaryText:0];
        v12 = [MEMORY[0x277D755B8] _systemImageNamed:@"number"];
        [subtitleCellConfiguration setImage:v12];

        systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
        imageProperties = [subtitleCellConfiguration imageProperties];
        [imageProperties setTintColor:systemGrayColor];

        [v7 setAccessibilityIdentifier:@"Home.Users.AddPerson.PincodeAccess"];
      }

      if ([(HUAddPersonRoleViewController *)self _disableAddPinCode])
      {
        secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
        textProperties = [subtitleCellConfiguration textProperties];
        [textProperties setColor:secondaryLabelColor];
      }
    }
  }

  else
  {
    if ([pathCopy row])
    {
      if ([pathCopy row] != 1)
      {
        goto LABEL_13;
      }

      v17 = _HULocalizedStringWithDefaultValue(@"HUAddPersonRole_RestrictedGuest_Title", @"HUAddPersonRole_RestrictedGuest_Title", 1);
      [subtitleCellConfiguration setText:v17];

      v18 = _HULocalizedStringWithDefaultValue(@"HUAddPersonRole_RestrictedGuest_Subtitle", @"HUAddPersonRole_RestrictedGuest_Subtitle", 1);
      [subtitleCellConfiguration setSecondaryText:v18];

      v19 = [MEMORY[0x277D755B8] _systemImageNamed:@"person"];
      [subtitleCellConfiguration setImage:v19];

      v20 = @"Home.Users.AddPerson.Guest";
    }

    else
    {
      v21 = _HULocalizedStringWithDefaultValue(@"HUAddPersonResidentTitle", @"HUAddPersonResidentTitle", 1);
      [subtitleCellConfiguration setText:v21];

      v22 = _HULocalizedStringWithDefaultValue(@"HUAddPersonResidentSubitle", @"HUAddPersonResidentSubitle", 1);
      [subtitleCellConfiguration setSecondaryText:v22];

      if (![(HUAddPersonRoleViewController *)self shouldShowRestrictedGuestRoleOption])
      {
        goto LABEL_13;
      }

      v23 = _HULocalizedStringWithDefaultValue(@"HUAddPersonRole_Resident_Subtitle", @"HUAddPersonRole_Resident_Subtitle", 1);
      [subtitleCellConfiguration setSecondaryText:v23];

      v24 = [MEMORY[0x277D755B8] _systemImageNamed:@"house.fill"];
      [subtitleCellConfiguration setImage:v24];

      v20 = @"Home.Users.AddPerson.Resident";
    }

    [v7 setAccessibilityIdentifier:v20];
  }

LABEL_13:
  secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
  secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
  [secondaryTextProperties setColor:secondaryLabelColor2];

  [subtitleCellConfiguration setAxesPreservingSuperviewLayoutMargins:3];
  [v7 setContentConfiguration:subtitleCellConfiguration];
  [v7 setAccessoryType:1];
  listGroupedCellConfiguration = [MEMORY[0x277D751C0] listGroupedCellConfiguration];
  tertiarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] tertiarySystemGroupedBackgroundColor];
  [listGroupedCellConfiguration setBackgroundColor:tertiarySystemGroupedBackgroundColor];

  [v7 setBackgroundConfiguration:listGroupedCellConfiguration];

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section == 1)
  {
    if ([(HUAddPersonRoleViewController *)self _disableAddPinCode:view])
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

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section == 1 && [(HUAddPersonRoleViewController *)self _disableAddPinCode])
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

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = pathCopy;
  if ([pathCopy section] == 1)
  {
    if ([(HUAddPersonRoleViewController *)self _disableAddPinCode])
    {
      v6 = 0;
    }

    else
    {
      v6 = pathCopy;
    }
  }

  v7 = v6;

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v18 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (![pathCopy section])
  {
    if (![pathCopy row])
    {
      navigationController = [(HUAddPersonRoleViewController *)self navigationController];
      home = [(HUAddPersonRoleViewController *)self home];
      [HUAddPeopleViewController presentAddPersonOrAlertForHH2Upgrade:navigationController withHome:home viewContext:0 delegate:0 presentationDelegate:self];
      v12 = @"HUAddPersonRoleSectionUser - HUUserSectionRowResident";
      goto LABEL_9;
    }

    if ([pathCopy row] == 1)
    {
      navigationController = [(HUAddPersonRoleViewController *)self navigationController];
      home = [(HUAddPersonRoleViewController *)self home];
      [HUAddPeopleViewController presentAddPersonOrAlertForHH2Upgrade:navigationController withHome:home viewContext:1 delegate:self presentationDelegate:self];
      v12 = @"HUAddPersonRoleSectionUser - HUUserSectionRowRestrictedGuest";
      goto LABEL_9;
    }

LABEL_7:
    v12 = &stru_2823E0EE8;
    goto LABEL_10;
  }

  if ([pathCopy section] != 1)
  {
    goto LABEL_7;
  }

  v6 = [HUAddGuestViewController alloc];
  pinCodeManager = [(HUAddPersonRoleViewController *)self pinCodeManager];
  home2 = [(HUAddPersonRoleViewController *)self home];
  navigationController = [(HUAddGuestViewController *)v6 initWithPinCodeManager:pinCodeManager home:home2];

  [(HUAddGuestViewController *)navigationController setPresentationDelegate:self];
  home = [(HUAddPersonRoleViewController *)self navigationController];
  v11 = [home hu_pushPreloadableViewController:navigationController animated:1];
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

- (void)cancelButtonPressed:(id)pressed
{
  v10 = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[HUAddPersonRoleViewController cancelButtonPressed:]";
    v8 = 2112;
    v9 = pressedCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'cancel' button %@", &v6, 0x16u);
  }

  [(HUAddPersonRoleViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)shouldShowRestrictedGuestRoleOption
{
  home = [(HUAddPersonRoleViewController *)self home];
  hf_canAddRestrictedGuest = [home hf_canAddRestrictedGuest];

  return hf_canAddRestrictedGuest;
}

- (BOOL)shouldShowPinCodeRoleOption
{
  home = [(HUAddPersonRoleViewController *)self home];
  hf_canAddAccessCode = [home hf_canAddAccessCode];

  return hf_canAddAccessCode;
}

- (BOOL)_disableAddPinCode
{
  home = [(HUAddPersonRoleViewController *)self home];
  hf_accessoriesSupportingAccessCodes = [home hf_accessoriesSupportingAccessCodes];
  v5 = [hf_accessoriesSupportingAccessCodes na_any:&__block_literal_global_198];

  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    home2 = [(HUAddPersonRoleViewController *)self home];
    v6 = [home2 hf_hasEnabledResident] ^ 1;
  }

  return v6;
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
    presentationDelegate = [(HUAddPersonRoleViewController *)self presentationDelegate];
    v11 = [presentationDelegate finishPresentation:self animated:animatedCopy];
  }

  else
  {
    v11 = [(UIViewController *)self hu_dismissViewControllerAnimated:animatedCopy];
  }

  return v11;
}

- (void)didSelectPeopleForInvite:(id)invite inviteeAddresses:(id)addresses
{
  v18 = *MEMORY[0x277D85DE8];
  addressesCopy = addresses;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v14 = 138412546;
    selfCopy = self;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ User did select people to invite. Continuing with restricted guest flow.", &v14, 0x16u);
  }

  v9 = [HUAddRestrictedGuestViewController alloc];
  home = [(HUAddPersonRoleViewController *)self home];
  v11 = [(HUAddRestrictedGuestViewController *)v9 initWithHome:home inviteeAddresses:addressesCopy];

  [(HUAddRestrictedGuestViewController *)v11 setPresentationDelegate:self];
  navigationController = [(HUAddPersonRoleViewController *)self navigationController];
  v13 = [navigationController hu_pushPreloadableViewController:v11 animated:1];
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presentationDelegate);

  return WeakRetained;
}

@end