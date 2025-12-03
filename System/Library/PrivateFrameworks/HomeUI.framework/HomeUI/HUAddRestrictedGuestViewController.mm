@interface HUAddRestrictedGuestViewController
- (HUAddRestrictedGuestViewController)initWithHome:(id)home inviteeAddresses:(id)addresses;
- (HUPresentationDelegate)presentationDelegate;
- (UIBarButtonItem)addButtonItem;
- (id)_contactForAddress:(id)address;
- (id)_requiredContactKeyDescriptors;
- (id)_servicesAllowingToRGWithNotificationOff;
- (void)restrictedGuestItemManager:(id)manager didFailToSendInvitations:(id)invitations;
- (void)restrictedGuestItemManager:(id)manager didSendInvitations:(id)invitations;
- (void)saveButtonPressed:(id)pressed;
- (void)setAddButtonItem:(id)item;
- (void)viewDidLoad;
@end

@implementation HUAddRestrictedGuestViewController

- (HUAddRestrictedGuestViewController)initWithHome:(id)home inviteeAddresses:(id)addresses
{
  addressesCopy = addresses;
  homeCopy = home;
  if (![addressesCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAddRestrictedGuestViewController.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"inviteeAddresses.count > 0"}];
  }

  v9 = [[HUAddRestrictedGuestTableViewController alloc] initWithItem:0 home:homeCopy inviteeAddresses:addressesCopy];

  v10 = _HULocalizedStringWithDefaultValue(@"HUAddRestrictedGuest_Subtitle", @"HUAddRestrictedGuest_Subtitle", 1);
  v11 = _HULocalizedStringWithDefaultValue(@"HUAddRestrictedGuest_Title", @"HUAddRestrictedGuest_Title", 1);
  v18.receiver = self;
  v18.super_class = HUAddRestrictedGuestViewController;
  v12 = [(HUItemTableOBWelcomeController *)&v18 initWithTitle:v11 detailText:v10 icon:0 contentLayout:3 itemTableViewController:v9];

  if (v12)
  {
    headerView = [(HUAddRestrictedGuestViewController *)v12 headerView];
    [headerView setTitleAccessibilityIdentifier:@"Home.Users.AddGuest.CustomizeAccess.Title"];

    headerView2 = [(HUAddRestrictedGuestViewController *)v12 headerView];
    [headerView2 setDetailTextAccessibilityIdentifier:@"Home.Users.AddGuest.CustomizeAccess.Subtitle"];

    objc_storeStrong(&v12->_restrictedGuestTableViewController, v9);
    [(HUAddRestrictedGuestTableViewController *)v12->_restrictedGuestTableViewController setDelegate:v12];
    restrictedGuestItemManager = [(HUAddRestrictedGuestTableViewController *)v12->_restrictedGuestTableViewController restrictedGuestItemManager];
    [restrictedGuestItemManager setRestrictedGuestDelegate:v12];
  }

  return v12;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = HUAddRestrictedGuestViewController;
  [(HUItemTableOBWelcomeController *)&v11 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = _HULocalizedStringWithDefaultValue(@"HUAddRestrictedGuest_InviteButton", @"HUAddRestrictedGuest_InviteButton", 1);
  v5 = [v3 initWithTitle:v4 style:2 target:self action:sel_saveButtonPressed_];
  [(HUAddRestrictedGuestViewController *)self setSaveButtonItem:v5];

  saveButtonItem = [(HUAddRestrictedGuestViewController *)self saveButtonItem];
  [saveButtonItem setEnabled:0];

  saveButtonItem2 = [(HUAddRestrictedGuestViewController *)self saveButtonItem];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:saveButtonItem2];

  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setAccessibilityIdentifier:@"Home.Users.AddGuest.NavigationBar.InviteButton"];
}

- (UIBarButtonItem)addButtonItem
{
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  return rightBarButtonItem;
}

- (void)setAddButtonItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    itemCopy = [(HUAddRestrictedGuestViewController *)self saveButtonItem];
  }

  v6 = itemCopy;
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v6];
}

- (void)saveButtonPressed:(id)pressed
{
  v65 = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v58 = "[HUAddRestrictedGuestViewController saveButtonPressed:]";
    v59 = 2112;
    *v60 = pressedCopy;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) '%@' button tapped.", buf, 0x16u);
  }

  v45 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v45];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  [v45 startAnimating];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__HUAddRestrictedGuestViewController_saveButtonPressed___block_invoke;
  aBlock[3] = &unk_277DB8770;
  objc_copyWeak(&v55, &location);
  v7 = _Block_copy(aBlock);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __56__HUAddRestrictedGuestViewController_saveButtonPressed___block_invoke_33;
  v51[3] = &unk_277DB8798;
  objc_copyWeak(&v53, &location);
  v43 = v7;
  v52 = v43;
  v44 = _Block_copy(v51);
  restrictedGuestTableViewController = [(HUAddRestrictedGuestViewController *)self restrictedGuestTableViewController];
  rgHomeAccessSettings = [restrictedGuestTableViewController rgHomeAccessSettings];

  locksWithReducedFunctionalityDueToSchedule = [rgHomeAccessSettings locksWithReducedFunctionalityDueToSchedule];
  v10 = [locksWithReducedFunctionalityDueToSchedule count];

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v42 = pressedCopy;
    guestAccessSchedule = [rgHomeAccessSettings guestAccessSchedule];
    v13 = guestAccessSchedule;
    if (guestAccessSchedule)
    {
      v14 = guestAccessSchedule;
    }

    else
    {
      v14 = @"Always allowed";
    }

    v15 = MEMORY[0x277CD1650];
    locksWithReducedFunctionalityDueToSchedule2 = [rgHomeAccessSettings locksWithReducedFunctionalityDueToSchedule];
    allObjects = [locksWithReducedFunctionalityDueToSchedule2 allObjects];
    v18 = [v15 hf_minimumDescriptionsOfAccessories:allObjects];
    v19 = MEMORY[0x277CD1650];
    accessAllowedToAccessories = [rgHomeAccessSettings accessAllowedToAccessories];
    allObjects2 = [accessAllowedToAccessories allObjects];
    v22 = [v19 hf_minimumDescriptionsOfAccessories:allObjects2];
    *buf = 136316162;
    v58 = "[HUAddRestrictedGuestViewController saveButtonPressed:]";
    v59 = 1024;
    *v60 = v10 != 0;
    *&v60[4] = 2112;
    *&v60[6] = v14;
    v61 = 2112;
    v62 = v18;
    v63 = 2112;
    v64 = v22;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "(%s) shouldShowLockScheduleAlert = %{BOOL}d | rgSchedule = %@ | locksWithReducedFunct = %@ | allowedAccessories = %@", buf, 0x30u);

    pressedCopy = v42;
  }

  if (v10)
  {
    accessAllowedToAccessories2 = [rgHomeAccessSettings accessAllowedToAccessories];
    v24 = [accessAllowedToAccessories2 na_filter:&__block_literal_global_285];

    restrictedGuestTableViewController2 = [(HUAddRestrictedGuestViewController *)self restrictedGuestTableViewController];
    restrictedGuestItemManager = [restrictedGuestTableViewController2 restrictedGuestItemManager];
    inviteeAddresses = [restrictedGuestItemManager inviteeAddresses];
    v28 = [inviteeAddresses count] == 1;

    if (v28)
    {
      v29 = @"%@_SingleGuest";
    }

    else
    {
      v29 = @"%@_PluralGuests";
    }

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:v29, @"HURestrictedGuest_LocksWithReducedFunctionalityDueToSchedule_Alert"];
    if ([v24 count] == 1)
    {
      v31 = @"%@_SingleLock";
    }

    else
    {
      v31 = @"%@_PluralLocks";
    }

    v32 = [MEMORY[0x277CCACA8] stringWithFormat:v31, v30];

    v33 = MEMORY[0x277D75110];
    v34 = _HULocalizedStringWithDefaultValue(v32, v32, 1);
    v35 = [v33 alertControllerWithTitle:&stru_2823E0EE8 message:v34 preferredStyle:1];

    v36 = MEMORY[0x277D750F8];
    v37 = _HULocalizedStringWithDefaultValue(@"HUContinueTitle", @"HUContinueTitle", 1);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __56__HUAddRestrictedGuestViewController_saveButtonPressed___block_invoke_2;
    v49[3] = &unk_277DBBA20;
    v50 = v44;
    v38 = [v36 actionWithTitle:v37 style:0 handler:v49];

    [v38 setAccessibilityIdentifier:@"Home.AddGuest.ReducedFunctionality.Alert.ContinueButton"];
    [v35 addAction:v38];
    v39 = MEMORY[0x277D750F8];
    v40 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __56__HUAddRestrictedGuestViewController_saveButtonPressed___block_invoke_77;
    v48[3] = &unk_277DB7600;
    v48[4] = self;
    v41 = [v39 actionWithTitle:v40 style:0 handler:v48];

    [v41 setAccessibilityIdentifier:@"Home.AddGuest.ReducedFunctionality.Alert.CancelButton"];
    [v35 addAction:v41];
    [(HUAddRestrictedGuestViewController *)self presentViewController:v35 animated:1 completion:&__block_literal_global_83_2];
  }

  else
  {
    v44[2]();
  }

  objc_destroyWeak(&v53);
  objc_destroyWeak(&v55);
  objc_destroyWeak(&location);
}

void __56__HUAddRestrictedGuestViewController_saveButtonPressed___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained restrictedGuestTableViewController];
    v4 = [v3 restrictedGuestItemManager];
    v5 = [v4 inviteeAddresses];
    v7 = 136315394;
    v8 = "[HUAddRestrictedGuestViewController saveButtonPressed:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) Sending invitation. Start sending invitation %@", &v7, 0x16u);
  }

  v6 = [WeakRetained restrictedGuestTableViewController];
  [v6 sendInvites];
}

void __56__HUAddRestrictedGuestViewController_saveButtonPressed___block_invoke_33(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _servicesAllowingToRGWithNotificationOff];
  v4 = [v3 count];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Presenting";
    v8 = 136315650;
    v9 = "[HUAddRestrictedGuestViewController saveButtonPressed:]_block_invoke";
    v10 = 2112;
    if (!v4)
    {
      v6 = @"NOT presenting";
    }

    v11 = v6;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) %@ notification alert because services allowed to RG with notification Off = %@", &v8, 0x20u);
  }

  v7 = *(a1 + 32);
  if (v4)
  {
    [WeakRetained hu_presentNotificationAlertForNotificationCapableObjects:v3 notificationsEnabled:1 mainActionBlock:v7 notNowActionBlock:*(a1 + 32)];
  }

  else
  {
    (*(v7 + 16))(*(a1 + 32));
  }
}

uint64_t __56__HUAddRestrictedGuestViewController_saveButtonPressed___block_invoke_47(uint64_t a1, void *a2)
{
  v2 = [a2 category];
  v3 = [v2 categoryType];
  v4 = [v3 isEqualToString:*MEMORY[0x277CCE890]];

  return v4;
}

uint64_t __56__HUAddRestrictedGuestViewController_saveButtonPressed___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[HUAddRestrictedGuestViewController saveButtonPressed:]_block_invoke_2";
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'Continue' button about the limit for wallet key and pin code due to RG's schedule.", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void __56__HUAddRestrictedGuestViewController_saveButtonPressed___block_invoke_77(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[HUAddRestrictedGuestViewController saveButtonPressed:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'cancel' button about the limit for wallet key and pin code due to RG's schedule. NOT sending invitation.", &v5, 0xCu);
  }

  v3 = [*(a1 + 32) saveButtonItem];
  v4 = [*(a1 + 32) navigationItem];
  [v4 setRightBarButtonItem:v3];
}

void __56__HUAddRestrictedGuestViewController_saveButtonPressed___block_invoke_81()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[HUAddRestrictedGuestViewController saveButtonPressed:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "(%s) Displayed alert about wallet key and pin code limits when updating schedule", &v1, 0xCu);
  }
}

- (id)_servicesAllowingToRGWithNotificationOff
{
  v30 = *MEMORY[0x277D85DE8];
  restrictedGuestTableViewController = [(HUAddRestrictedGuestViewController *)self restrictedGuestTableViewController];
  accessoriesToAllowToRG = [restrictedGuestTableViewController accessoriesToAllowToRG];
  v5 = [accessoriesToAllowToRG count];

  if (v5)
  {
    v6 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    restrictedGuestTableViewController2 = [(HUAddRestrictedGuestViewController *)self restrictedGuestTableViewController];
    accessoriesToAllowToRG2 = [restrictedGuestTableViewController2 accessoriesToAllowToRG];

    v9 = [accessoriesToAllowToRG2 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(accessoriesToAllowToRG2);
          }

          hf_servicesWithBulletinBoardNotificationTurnedOff = [*(*(&v19 + 1) + 8 * i) hf_servicesWithBulletinBoardNotificationTurnedOff];
          [v6 na_safeAddObjectsFromArray:hf_servicesWithBulletinBoardNotificationTurnedOff];
        }

        v10 = [accessoriesToAllowToRG2 countByEnumeratingWithState:&v19 objects:v29 count:16];
      }

      while (v10);
    }

    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      restrictedGuestTableViewController3 = [(HUAddRestrictedGuestViewController *)self restrictedGuestTableViewController];
      accessoriesToAllowToRG3 = [restrictedGuestTableViewController3 accessoriesToAllowToRG];
      *buf = 136315650;
      v24 = "[HUAddRestrictedGuestViewController _servicesAllowingToRGWithNotificationOff]";
      v25 = 2112;
      v26 = accessoriesToAllowToRG3;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "(%s) Creating invitation that allows access to RG for %@. Among these accessories, services with notifications turned off: %@", buf, 0x20u);
    }

    v17 = [v6 copy];
  }

  else
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[HUAddRestrictedGuestViewController _servicesAllowingToRGWithNotificationOff]";
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(%s) No accessories to be allowed for restricted guest in this invitation.", buf, 0xCu);
    }

    v17 = MEMORY[0x277CBEBF8];
  }

  return v17;
}

- (id)_contactForAddress:(id)address
{
  addressCopy = address;
  _requiredContactKeyDescriptors = [(HUAddRestrictedGuestViewController *)self _requiredContactKeyDescriptors];
  if ([addressCopy hf_isPhoneNumber])
  {
    v6 = [MEMORY[0x277D145A8] contactForPhoneNumber:addressCopy keyDescriptors:_requiredContactKeyDescriptors];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  if ([addressCopy hf_isEmail])
  {
    v6 = [MEMORY[0x277D145A8] contactForEmailAddress:addressCopy keyDescriptors:_requiredContactKeyDescriptors];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)_requiredContactKeyDescriptors
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)restrictedGuestItemManager:(id)manager didSendInvitations:(id)invitations
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "The invitations were successfully sent. Attempting to dismiss invite flow.", v8, 2u);
  }

  [(HUAddRestrictedGuestViewController *)self setRequiresPresentingViewControllerDismissal:1];
  presentationDelegate = [(HUAddRestrictedGuestViewController *)self presentationDelegate];
  v7 = [presentationDelegate finishPresentation:self animated:1];
}

- (void)restrictedGuestItemManager:(id)manager didFailToSendInvitations:(id)invitations
{
  v11 = *MEMORY[0x277D85DE8];
  invitationsCopy = invitations;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = invitationsCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "The invitations were NOT sent due to error {%@}.", &v9, 0xCu);
  }

  saveButtonItem = [(HUAddRestrictedGuestViewController *)self saveButtonItem];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:saveButtonItem];
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end