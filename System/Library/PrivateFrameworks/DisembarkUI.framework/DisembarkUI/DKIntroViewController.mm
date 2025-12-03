@interface DKIntroViewController
- (DKIntroViewController)init;
- (id)_createNotableUserDataCardForAccounts:(id)accounts;
- (id)_createNotableUserDataCardForAppleCare:(id)care findMyEnabled:(BOOL)enabled;
- (id)_createNotableUserDataCardForAppsAndData:(int64_t)data;
- (id)_createNotableUserDataCardForCellularPlans:(id)plans;
- (id)_createNotableUserDataCardForFindMy:(BOOL)my;
- (id)_createNotableUserDataCardForWallet:(id)wallet;
- (id)localPaymentCards;
- (void)_addNotableUserDataItemsView;
- (void)_continueTapped:(id)tapped;
- (void)_notNowTapped:(id)tapped;
- (void)_presentBasebandDeadWarning:(id)warning;
- (void)_presentLocalDataWarning:(id)warning;
- (void)_presentLocalPaymentCardConfirmation:(id)confirmation;
- (void)_presentRestoreWarning:(id)warning;
- (void)viewDidLoad;
@end

@implementation DKIntroViewController

- (DKIntroViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"INTRO_TITLE" value:&stru_285BC2A70 table:@"Localizable"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"INTRO_DETAIL" value:&stru_285BC2A70 table:@"Localizable"];

  v9.receiver = self;
  v9.super_class = DKIntroViewController;
  v7 = [(DKIntroViewController *)&v9 initWithTitle:v4 detailText:v6 icon:0 contentLayout:2];

  return v7;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = DKIntroViewController;
  [(OBBaseWelcomeController *)&v19 viewDidLoad];
  notableUserData = [(DKIntroViewController *)self notableUserData];
  accounts = [notableUserData accounts];
  if ([accounts count])
  {

LABEL_4:
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"INTRO_DETAIL_WITH_APPLE_ACCOUNT" value:&stru_285BC2A70 table:@"Localizable"];

    headerView = [(DKIntroViewController *)self headerView];
    [headerView setDetailText:v8];

    goto LABEL_5;
  }

  notableUserData2 = [(DKIntroViewController *)self notableUserData];
  findMyEnabled = [notableUserData2 findMyEnabled];

  if (findMyEnabled)
  {
    goto LABEL_4;
  }

LABEL_5:
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  [(DKIntroViewController *)self _addNotableUserDataItemsView];
  boldButton = [MEMORY[0x277D37618] boldButton];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CONTINUE" value:&stru_285BC2A70 table:@"Localizable"];
  [boldButton setTitle:v13 forState:0];

  [boldButton addTarget:self action:sel__continueTapped_ forControlEvents:64];
  buttonTray = [(DKIntroViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"NOT_NOW" value:&stru_285BC2A70 table:@"Localizable"];
  [linkButton setTitle:v17 forState:0];

  [linkButton addTarget:self action:sel__notNowTapped_ forControlEvents:64];
  buttonTray2 = [(DKIntroViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];
}

- (void)_addNotableUserDataItemsView
{
  v42[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75A68]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setAxis:1];
  [v4 setSpacing:10.0];
  notableUserData = [(DKIntroViewController *)self notableUserData];
  v6 = -[DKIntroViewController _createNotableUserDataCardForAppsAndData:](self, "_createNotableUserDataCardForAppsAndData:", [notableUserData dataSize]);
  [v4 addArrangedSubview:v6];

  notableUserData2 = [(DKIntroViewController *)self notableUserData];
  accounts = [notableUserData2 accounts];
  v9 = [(DKIntroViewController *)self _createNotableUserDataCardForAccounts:accounts];
  [v4 addArrangedSubview:v9];

  notableUserData3 = [(DKIntroViewController *)self notableUserData];
  v11 = -[DKIntroViewController _createNotableUserDataCardForFindMy:](self, "_createNotableUserDataCardForFindMy:", [notableUserData3 findMyEnabled]);
  [v4 addArrangedSubview:v11];

  notableUserData4 = [(DKIntroViewController *)self notableUserData];
  appleCareData = [notableUserData4 appleCareData];
  notableUserData5 = [(DKIntroViewController *)self notableUserData];
  v15 = -[DKIntroViewController _createNotableUserDataCardForAppleCare:findMyEnabled:](self, "_createNotableUserDataCardForAppleCare:findMyEnabled:", appleCareData, [notableUserData5 findMyEnabled]);
  [v4 addArrangedSubview:v15];

  notableUserData6 = [(DKIntroViewController *)self notableUserData];
  walletData = [notableUserData6 walletData];
  v18 = [(DKIntroViewController *)self _createNotableUserDataCardForWallet:walletData];
  [v4 addArrangedSubview:v18];

  notableUserData7 = [(DKIntroViewController *)self notableUserData];
  cellularPlans = [notableUserData7 cellularPlans];
  v21 = [(DKIntroViewController *)self _createNotableUserDataCardForCellularPlans:cellularPlans];
  [v4 addArrangedSubview:v21];

  contentView = [(DKIntroViewController *)self contentView];
  [contentView addSubview:v4];

  contentView2 = [(DKIntroViewController *)self contentView];
  contentView3 = [(DKIntroViewController *)self contentView];
  topAnchor = [contentView3 topAnchor];
  topAnchor2 = [v4 topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v42[0] = v38;
  contentView4 = [(DKIntroViewController *)self contentView];
  leadingAnchor = [contentView4 leadingAnchor];
  leadingAnchor2 = [v4 leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v42[1] = v34;
  contentView5 = [(DKIntroViewController *)self contentView];
  trailingAnchor = [contentView5 trailingAnchor];
  trailingAnchor2 = [v4 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v42[2] = v26;
  contentView6 = [(DKIntroViewController *)self contentView];
  bottomAnchor = [contentView6 bottomAnchor];
  bottomAnchor2 = [v4 bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v42[3] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [contentView2 addConstraints:v31];

  v32 = *MEMORY[0x277D85DE8];
}

- (id)_createNotableUserDataCardForAccounts:(id)accounts
{
  v46 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  if ([accountsCopy count])
  {
    firstObject = [accountsCopy firstObject];
    profilePicture = [firstObject profilePicture];

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v6 = accountsCopy;
    v7 = [v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v41;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v41 != v9)
          {
            objc_enumerationMutation(v6);
          }

          username = [*(*(&v40 + 1) + 8 * i) username];
          [v5 addObject:username];
        }

        v8 = [v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v8);
    }

    v12 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v5];
    v13 = [DKNotableUserDataCardView alloc];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"APPLE_ACCOUNT" value:&stru_285BC2A70 table:@"Localizable"];
    v16 = profilePicture;
    v17 = [(DKNotableUserDataCardView *)v13 initWithTitle:v15 subtitle:v12 icon:profilePicture];

    if ([v6 count] >= 2)
    {
      v32 = v12;
      v33 = accountsCopy;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      obj = v6;
      v18 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v37;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v37 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v36 + 1) + 8 * j);
            v23 = objc_alloc(MEMORY[0x277D755E8]);
            profilePicture2 = [v22 profilePicture];
            v25 = [v23 initWithImage:profilePicture2];

            v26 = [DKNotableUserDataCardCell alloc];
            name = [v22 name];
            username2 = [v22 username];
            v29 = [(DKNotableUserDataCardCell *)v26 initWithTitle:name subtitle:username2 accessoryView:v25];

            [(DKNotableUserDataCardView *)v17 addCardCell:v29];
          }

          v19 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
        }

        while (v19);
      }

      accountsCopy = v33;
      v16 = profilePicture;
      v12 = v32;
    }
  }

  else
  {
    v17 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_createNotableUserDataCardForFindMy:(BOOL)my
{
  if (my)
  {
    v3 = [DKNotableUserDataCardView alloc];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"FIND_MY" value:&stru_285BC2A70 table:@"Localizable"];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"ACTIVATION_LOCK" value:&stru_285BC2A70 table:@"Localizable"];
    v8 = [MEMORY[0x277D755B8] _systemImageNamed:@"findmy"];
    v9 = [(DKNotableUserDataCardView *)v3 initWithTitle:v5 subtitle:v7 icon:v8];

    v10 = [DKNotableUserDataCardCell alloc];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"FIND_MY_DESCRIPTION" value:&stru_285BC2A70 table:@"Localizable"];
    v13 = [(DKNotableUserDataCardCell *)v10 initWithTitle:0 subtitle:v12 accessoryView:0];

    [(DKNotableUserDataCardView *)v9 addCardCell:v13];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_createNotableUserDataCardForAppleCare:(id)care findMyEnabled:(BOOL)enabled
{
  v4 = 0;
  if (care && enabled)
  {
    careCopy = care;
    v6 = [DKNotableUserDataCardView alloc];
    title = [careCopy title];
    subtitle = [careCopy subtitle];

    v9 = MEMORY[0x277D755B8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v9 imageNamed:@"AppleCare" inBundle:v10 withConfiguration:0];
    v4 = [(DKNotableUserDataCardView *)v6 initWithTitle:title subtitle:subtitle icon:v11];
  }

  return v4;
}

- (id)_createNotableUserDataCardForWallet:(id)wallet
{
  v40 = *MEMORY[0x277D85DE8];
  walletCopy = wallet;
  walletCards = [walletCopy walletCards];
  v5 = [walletCards count];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"WALLET_ITEMS" value:&stru_285BC2A70 table:@"Localizable"];
    walletCards2 = [walletCopy walletCards];
    v10 = [v6 localizedStringWithFormat:v8, objc_msgSend(walletCards2, "count")];

    v11 = [DKNotableUserDataWalletCardView alloc];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"APPLE_WALLET" value:&stru_285BC2A70 table:@"Localizable"];
    v14 = [MEMORY[0x277D755B8] _systemImageNamed:@"wallet"];
    v33 = v10;
    v15 = [(DKNotableUserDataWalletCardView *)v11 initWithTitle:v13 subtitle:v10 icon:v14];

    paymentProvisioningContext = [walletCopy paymentProvisioningContext];
    [paymentProvisioningContext setDelegate:v15];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [walletCopy walletCards];
    v17 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          v22 = objc_alloc(MEMORY[0x277D755E8]);
          v23 = [walletCopy passSnapshotForCredential:v21];
          v24 = [v22 initWithImage:v23];

          [v24 setContentMode:1];
          [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
          v25 = [DKNotableUserDataWalletCardCell alloc];
          [v21 title];
          v27 = v26 = walletCopy;
          subtitle = [v21 subtitle];
          v29 = [(DKNotableUserDataWalletCardCell *)v25 initWithTitle:v27 subtitle:subtitle accessoryView:v24];

          walletCopy = v26;
          uniqueIdentifier = [v21 uniqueIdentifier];
          [(DKNotableUserDataWalletCardCell *)v29 setUniqueIdentifier:uniqueIdentifier];

          [(DKNotableUserDataWalletCardView *)v15 addCardCell:v29];
        }

        v18 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v15 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_createNotableUserDataCardForCellularPlans:(id)plans
{
  v57 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  if ([plansCopy count])
  {
    v51 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v48 = plansCopy;
    obj = plansCopy;
    v5 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    v49 = v4;
    if (v5)
    {
      v6 = v5;
      v7 = *v53;
      v8 = 1;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v53 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v52 + 1) + 8 * i);
          if ([v10 isTransferred] || (objc_msgSend(v10, "phoneNumber"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, !v12))
          {
            carrierName = [v10 carrierName];
            [v51 addObject:carrierName];
          }

          else
          {
            v13 = MEMORY[0x277CCACA8];
            carrierName = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v15 = [carrierName localizedStringForKey:@"CELLULAR_PLAN_CARRIER_WITH_PHONE_NUMBER" value:&stru_285BC2A70 table:@"Localizable"];
            carrierName2 = [v10 carrierName];
            phoneNumber = [v10 phoneNumber];
            v18 = [v13 stringWithFormat:v15, carrierName2, phoneNumber];
            [v51 addObject:v18];

            v4 = v49;
          }

          carrierName3 = [v10 carrierName];
          [v4 addObject:carrierName3];

          v8 &= [v10 isTransferred];
        }

        v6 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 1;
    }

    v21 = MEMORY[0x277CCAAF0];
    allObjects = [v4 allObjects];
    v23 = [allObjects sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
    v24 = [v23 mutableCopy];
    v47 = [v21 localizedStringByJoiningStrings:v24];

    v25 = MEMORY[0x277CCAAF0];
    allObjects2 = [v51 allObjects];
    v27 = [allObjects2 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
    v28 = [v27 mutableCopy];
    v29 = [v25 localizedStringByJoiningStrings:v28];

    v30 = [obj count];
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = v31;
    if (v30 == 1)
    {
      v33 = [v31 localizedStringForKey:@"CELLULAR_PLAN" value:&stru_285BC2A70 table:@"Localizable"];

      v34 = @"CELLULAR_PLAN_DESCRIPTION_SINGULAR";
      v35 = @"CELLULAR_PLAN_TRANSFER_DESCRIPTION_SINGULAR";
    }

    else
    {
      v33 = [v31 localizedStringForKey:@"CELLULAR_PLANS" value:&stru_285BC2A70 table:@"Localizable"];

      v34 = @"CELLULAR_PLAN_DESCRIPTION_PLURAL";
      v35 = @"CELLULAR_PLAN_TRANSFER_DESCRIPTION_PLURAL";
    }

    if (v8)
    {
      v34 = v35;
    }

    plansCopy = v48;
    v36 = v34;
    v37 = MEMORY[0x277CCACA8];
    v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v39 = [v38 localizedStringForKey:v36 value:&stru_285BC2A70 table:@"Localizable"];
    if (v8)
    {
      [v37 stringWithFormat:v39, v47, v46];
    }

    else
    {
      [v37 stringWithFormat:v39, v29, v47];
    }
    v40 = ;

    v41 = [DKNotableUserDataCardView alloc];
    v42 = [MEMORY[0x277D755B8] systemImageNamed:@"antenna.radiowaves.left.and.right"];
    v20 = [(DKNotableUserDataCardView *)v41 initWithTitle:v33 subtitle:&stru_285BC2A70 icon:v42];

    v43 = [[DKNotableUserDataCardCell alloc] initWithTitle:0 subtitle:v40 accessoryView:0];
    [(DKNotableUserDataCardView *)v20 addCardCell:v43];
  }

  else
  {
    v20 = 0;
  }

  v44 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_createNotableUserDataCardForAppsAndData:(int64_t)data
{
  v3 = NSLocalizedFileSizeDescription();
  v4 = [DKNotableUserDataCardView alloc];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"APPS_AND_DATA" value:&stru_285BC2A70 table:@"Localizable"];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"internaldrive"];
  v8 = [(DKNotableUserDataCardView *)v4 initWithTitle:v6 subtitle:v3 icon:v7];

  return v8;
}

- (void)_presentLocalDataWarning:(id)warning
{
  warningCopy = warning;
  fetchRestoreState = [(DKIntroViewController *)self fetchRestoreState];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__DKIntroViewController__presentLocalDataWarning___block_invoke;
  v8[3] = &unk_278F7DBC0;
  v8[4] = self;
  v9 = warningCopy;
  v6 = fetchRestoreState[2];
  v7 = warningCopy;
  v6(fetchRestoreState, v8);
}

uint64_t __50__DKIntroViewController__presentLocalDataWarning___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return [*(a1 + 32) _presentRestoreWarning:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)_presentRestoreWarning:(id)warning
{
  warningCopy = warning;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v5 localizedStringForKey:@"RESTORE_IN_PROGRESS_ALERT_TITLE" value:&stru_285BC2A70 table:@"Localizable"];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"RESTORE_IN_PROGRESS_ALERT_MESSAGE" value:&stru_285BC2A70 table:@"Localizable"];

  v8 = [MEMORY[0x277D75110] alertControllerWithTitle:v18 message:v7 preferredStyle:1];
  v9 = MEMORY[0x277D750F8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"ERASE_ANYWAY" value:&stru_285BC2A70 table:@"Localizable"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__DKIntroViewController__presentRestoreWarning___block_invoke;
  v19[3] = &unk_278F7D9C0;
  v20 = warningCopy;
  v12 = warningCopy;
  v13 = [v9 actionWithTitle:v11 style:2 handler:v19];
  [v8 addAction:v13];

  v14 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_285BC2A70 table:@"Localizable"];
  v17 = [v14 actionWithTitle:v16 style:1 handler:0];
  [v8 addAction:v17];

  [(DKIntroViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_presentBasebandDeadWarning:(id)warning
{
  warningCopy = warning;
  if ([(DKIntroViewController *)self isBasebandDead])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"TELEPHONY_BASEBAND_DEAD_ALERT_TITLE" value:&stru_285BC2A70 table:@"Localizable"];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"TELEPHONY_BASEBAND_DEAD_ALERT_MESSAGE" value:&stru_285BC2A70 table:@"Localizable"];

    if ([(DKIntroViewController *)self preventOpeningSafari])
    {
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"TELEPHONY_BASEBAND_DEAD_WEB_LINK" value:&stru_285BC2A70 table:@"Localizable"];
      v11 = [v8 stringByAppendingFormat:@"\n\n%@", v10];

      v8 = v11;
    }

    v12 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v8 preferredStyle:1];
    if (![(DKIntroViewController *)self preventOpeningSafari])
    {
      v13 = MEMORY[0x277D750F8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"LEARN_MORE" value:&stru_285BC2A70 table:@"Localizable"];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __53__DKIntroViewController__presentBasebandDeadWarning___block_invoke;
      v27[3] = &unk_278F7DBE8;
      v27[4] = self;
      v16 = [v13 actionWithTitle:v15 style:0 handler:v27];
      [v12 addAction:v16];
    }

    v17 = MEMORY[0x277D750F8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"ERASE_ANYWAY" value:&stru_285BC2A70 table:@"Localizable"];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __53__DKIntroViewController__presentBasebandDeadWarning___block_invoke_2;
    v25[3] = &unk_278F7D9C0;
    v26 = warningCopy;
    v20 = [v17 actionWithTitle:v19 style:2 handler:v25];
    [v12 addAction:v20];

    v21 = MEMORY[0x277D750F8];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"CANCEL" value:&stru_285BC2A70 table:@"Localizable"];
    v24 = [v21 actionWithTitle:v23 style:1 handler:0];
    [v12 addAction:v24];

    [(DKIntroViewController *)self presentViewController:v12 animated:1 completion:0];
  }

  else
  {
    warningCopy[2](warningCopy);
  }
}

void __53__DKIntroViewController__presentBasebandDeadWarning___block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277D75128] sharedApplication];
  v2 = MEMORY[0x277CBEBC0];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"TELEPHONY_BASEBAND_DEAD_HTTPS_WEB_LINK" value:&stru_285BC2A70 table:@"Localizable"];
  v6 = [v2 URLWithString:v5];
  [v7 openURL:v6 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (id)localPaymentCards
{
  notableUserData = [(DKIntroViewController *)self notableUserData];
  walletData = [notableUserData walletData];
  localPaymentCards = [walletData localPaymentCards];

  return localPaymentCards;
}

- (void)_presentLocalPaymentCardConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  localPaymentCards = [(DKIntroViewController *)self localPaymentCards];
  if (![localPaymentCards count])
  {

    goto LABEL_7;
  }

  hasInternetConnectivity = [(DKIntroViewController *)self hasInternetConnectivity];
  v7 = hasInternetConnectivity[2]();

  if (v7)
  {
LABEL_7:
    confirmationCopy[2](confirmationCopy);
    goto LABEL_8;
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"ERASE_LOCAL_PAYMENT_CARDS_OFFLINE_TITLE_SINGLE" value:&stru_285BC2A70 table:@"Localizable"];
  localPaymentCards2 = [(DKIntroViewController *)self localPaymentCards];
  firstObject = [localPaymentCards2 firstObject];
  title = [firstObject title];
  v14 = [v8 stringWithFormat:v10, title];

  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"ERASE_LOCAL_PAYMENT_CARDS_OFFLINE_MESSAGE_SINGLE" value:&stru_285BC2A70 table:@"Localizable"];

  localPaymentCards3 = [(DKIntroViewController *)self localPaymentCards];
  v18 = [localPaymentCards3 count];

  if (v18 >= 2)
  {
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"ERASE_LOCAL_PAYMENT_CARDS_OFFLINE_TITLE_MULTIPLE" value:&stru_285BC2A70 table:@"Localizable"];

    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"ERASE_LOCAL_PAYMENT_CARDS_OFFLINE_MESSAGE_MULTIPLE" value:&stru_285BC2A70 table:@"Localizable"];

    v14 = v20;
    v16 = v22;
  }

  v23 = [MEMORY[0x277D75110] alertControllerWithTitle:v14 message:v16 preferredStyle:1];
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"ERASE_CONFIRMATION_ALERT_BUTTON" value:&stru_285BC2A70 table:@"Localizable"];

  v26 = MEMORY[0x277D750F8];
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"CANCEL" value:&stru_285BC2A70 table:@"Localizable"];
  v29 = [v26 actionWithTitle:v28 style:0 handler:0];
  [v23 addAction:v29];

  v30 = MEMORY[0x277D750F8];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __62__DKIntroViewController__presentLocalPaymentCardConfirmation___block_invoke;
  v32[3] = &unk_278F7D9C0;
  v33 = confirmationCopy;
  v31 = [v30 actionWithTitle:v25 style:2 handler:v32];
  [v23 addAction:v31];

  [(DKIntroViewController *)self presentViewController:v23 animated:1 completion:0];
LABEL_8:
}

- (void)_continueTapped:(id)tapped
{
  confirmErase = [(DKIntroViewController *)self confirmErase];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__DKIntroViewController__continueTapped___block_invoke;
  v5[3] = &unk_278F7DC60;
  v5[4] = self;
  (confirmErase)[2](confirmErase, v5);
}

uint64_t __41__DKIntroViewController__continueTapped___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__DKIntroViewController__continueTapped___block_invoke_2;
  v3[3] = &unk_278F7DC38;
  v3[4] = v1;
  return [v1 _presentLocalDataWarning:v3];
}

uint64_t __41__DKIntroViewController__continueTapped___block_invoke_2(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__DKIntroViewController__continueTapped___block_invoke_3;
  v4[3] = &unk_278F7DC10;
  v4[4] = v2;
  v5 = a2;
  return [v2 _presentLocalPaymentCardConfirmation:v4];
}

uint64_t __41__DKIntroViewController__continueTapped___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__DKIntroViewController__continueTapped___block_invoke_4;
  v3[3] = &unk_278F7DC10;
  v3[4] = v1;
  v4 = *(a1 + 40);
  return [v1 _presentBasebandDeadWarning:v3];
}

void __41__DKIntroViewController__continueTapped___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) beginEraseBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) beginEraseBlock];
    v3[2](v3, *(a1 + 40));
  }
}

- (void)_notNowTapped:(id)tapped
{
  eraseLaterBlock = [(DKIntroViewController *)self eraseLaterBlock];

  if (eraseLaterBlock)
  {
    eraseLaterBlock2 = [(DKIntroViewController *)self eraseLaterBlock];
    eraseLaterBlock2[2]();
  }
}

@end