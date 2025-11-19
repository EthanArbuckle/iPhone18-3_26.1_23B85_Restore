@interface DKIntroViewController
- (DKIntroViewController)init;
- (id)_createNotableUserDataCardForAccounts:(id)a3;
- (id)_createNotableUserDataCardForAppleCare:(id)a3 findMyEnabled:(BOOL)a4;
- (id)_createNotableUserDataCardForAppsAndData:(int64_t)a3;
- (id)_createNotableUserDataCardForCellularPlans:(id)a3;
- (id)_createNotableUserDataCardForFindMy:(BOOL)a3;
- (id)_createNotableUserDataCardForWallet:(id)a3;
- (id)localPaymentCards;
- (void)_addNotableUserDataItemsView;
- (void)_continueTapped:(id)a3;
- (void)_notNowTapped:(id)a3;
- (void)_presentBasebandDeadWarning:(id)a3;
- (void)_presentLocalDataWarning:(id)a3;
- (void)_presentLocalPaymentCardConfirmation:(id)a3;
- (void)_presentRestoreWarning:(id)a3;
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
  v3 = [(DKIntroViewController *)self notableUserData];
  v4 = [v3 accounts];
  if ([v4 count])
  {

LABEL_4:
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"INTRO_DETAIL_WITH_APPLE_ACCOUNT" value:&stru_285BC2A70 table:@"Localizable"];

    v9 = [(DKIntroViewController *)self headerView];
    [v9 setDetailText:v8];

    goto LABEL_5;
  }

  v5 = [(DKIntroViewController *)self notableUserData];
  v6 = [v5 findMyEnabled];

  if (v6)
  {
    goto LABEL_4;
  }

LABEL_5:
  v10 = [(OBBaseWelcomeController *)self navigationItem];
  [v10 setHidesBackButton:1];

  [(DKIntroViewController *)self _addNotableUserDataItemsView];
  v11 = [MEMORY[0x277D37618] boldButton];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CONTINUE" value:&stru_285BC2A70 table:@"Localizable"];
  [v11 setTitle:v13 forState:0];

  [v11 addTarget:self action:sel__continueTapped_ forControlEvents:64];
  v14 = [(DKIntroViewController *)self buttonTray];
  [v14 addButton:v11];

  v15 = [MEMORY[0x277D37650] linkButton];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"NOT_NOW" value:&stru_285BC2A70 table:@"Localizable"];
  [v15 setTitle:v17 forState:0];

  [v15 addTarget:self action:sel__notNowTapped_ forControlEvents:64];
  v18 = [(DKIntroViewController *)self buttonTray];
  [v18 addButton:v15];
}

- (void)_addNotableUserDataItemsView
{
  v42[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75A68]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setAxis:1];
  [v4 setSpacing:10.0];
  v5 = [(DKIntroViewController *)self notableUserData];
  v6 = -[DKIntroViewController _createNotableUserDataCardForAppsAndData:](self, "_createNotableUserDataCardForAppsAndData:", [v5 dataSize]);
  [v4 addArrangedSubview:v6];

  v7 = [(DKIntroViewController *)self notableUserData];
  v8 = [v7 accounts];
  v9 = [(DKIntroViewController *)self _createNotableUserDataCardForAccounts:v8];
  [v4 addArrangedSubview:v9];

  v10 = [(DKIntroViewController *)self notableUserData];
  v11 = -[DKIntroViewController _createNotableUserDataCardForFindMy:](self, "_createNotableUserDataCardForFindMy:", [v10 findMyEnabled]);
  [v4 addArrangedSubview:v11];

  v12 = [(DKIntroViewController *)self notableUserData];
  v13 = [v12 appleCareData];
  v14 = [(DKIntroViewController *)self notableUserData];
  v15 = -[DKIntroViewController _createNotableUserDataCardForAppleCare:findMyEnabled:](self, "_createNotableUserDataCardForAppleCare:findMyEnabled:", v13, [v14 findMyEnabled]);
  [v4 addArrangedSubview:v15];

  v16 = [(DKIntroViewController *)self notableUserData];
  v17 = [v16 walletData];
  v18 = [(DKIntroViewController *)self _createNotableUserDataCardForWallet:v17];
  [v4 addArrangedSubview:v18];

  v19 = [(DKIntroViewController *)self notableUserData];
  v20 = [v19 cellularPlans];
  v21 = [(DKIntroViewController *)self _createNotableUserDataCardForCellularPlans:v20];
  [v4 addArrangedSubview:v21];

  v22 = [(DKIntroViewController *)self contentView];
  [v22 addSubview:v4];

  v23 = [(DKIntroViewController *)self contentView];
  v41 = [(DKIntroViewController *)self contentView];
  v40 = [v41 topAnchor];
  v39 = [v4 topAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v42[0] = v38;
  v37 = [(DKIntroViewController *)self contentView];
  v36 = [v37 leadingAnchor];
  v35 = [v4 leadingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v42[1] = v34;
  v33 = [(DKIntroViewController *)self contentView];
  v24 = [v33 trailingAnchor];
  v25 = [v4 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v42[2] = v26;
  v27 = [(DKIntroViewController *)self contentView];
  v28 = [v27 bottomAnchor];
  v29 = [v4 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v42[3] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [v23 addConstraints:v31];

  v32 = *MEMORY[0x277D85DE8];
}

- (id)_createNotableUserDataCardForAccounts:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v34 = [v4 profilePicture];

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v6 = v3;
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

          v11 = [*(*(&v40 + 1) + 8 * i) username];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v8);
    }

    v12 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v5];
    v13 = [DKNotableUserDataCardView alloc];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"APPLE_ACCOUNT" value:&stru_285BC2A70 table:@"Localizable"];
    v16 = v34;
    v17 = [(DKNotableUserDataCardView *)v13 initWithTitle:v15 subtitle:v12 icon:v34];

    if ([v6 count] >= 2)
    {
      v32 = v12;
      v33 = v3;
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
            v24 = [v22 profilePicture];
            v25 = [v23 initWithImage:v24];

            v26 = [DKNotableUserDataCardCell alloc];
            v27 = [v22 name];
            v28 = [v22 username];
            v29 = [(DKNotableUserDataCardCell *)v26 initWithTitle:v27 subtitle:v28 accessoryView:v25];

            [(DKNotableUserDataCardView *)v17 addCardCell:v29];
          }

          v19 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
        }

        while (v19);
      }

      v3 = v33;
      v16 = v34;
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

- (id)_createNotableUserDataCardForFindMy:(BOOL)a3
{
  if (a3)
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

- (id)_createNotableUserDataCardForAppleCare:(id)a3 findMyEnabled:(BOOL)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v5 = a3;
    v6 = [DKNotableUserDataCardView alloc];
    v7 = [v5 title];
    v8 = [v5 subtitle];

    v9 = MEMORY[0x277D755B8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v9 imageNamed:@"AppleCare" inBundle:v10 withConfiguration:0];
    v4 = [(DKNotableUserDataCardView *)v6 initWithTitle:v7 subtitle:v8 icon:v11];
  }

  return v4;
}

- (id)_createNotableUserDataCardForWallet:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 walletCards];
  v5 = [v4 count];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"WALLET_ITEMS" value:&stru_285BC2A70 table:@"Localizable"];
    v9 = [v3 walletCards];
    v10 = [v6 localizedStringWithFormat:v8, objc_msgSend(v9, "count")];

    v11 = [DKNotableUserDataWalletCardView alloc];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"APPLE_WALLET" value:&stru_285BC2A70 table:@"Localizable"];
    v14 = [MEMORY[0x277D755B8] _systemImageNamed:@"wallet"];
    v33 = v10;
    v15 = [(DKNotableUserDataWalletCardView *)v11 initWithTitle:v13 subtitle:v10 icon:v14];

    v16 = [v3 paymentProvisioningContext];
    [v16 setDelegate:v15];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [v3 walletCards];
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
          v23 = [v3 passSnapshotForCredential:v21];
          v24 = [v22 initWithImage:v23];

          [v24 setContentMode:1];
          [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
          v25 = [DKNotableUserDataWalletCardCell alloc];
          [v21 title];
          v27 = v26 = v3;
          v28 = [v21 subtitle];
          v29 = [(DKNotableUserDataWalletCardCell *)v25 initWithTitle:v27 subtitle:v28 accessoryView:v24];

          v3 = v26;
          v30 = [v21 uniqueIdentifier];
          [(DKNotableUserDataWalletCardCell *)v29 setUniqueIdentifier:v30];

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

- (id)_createNotableUserDataCardForCellularPlans:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v51 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v48 = v3;
    obj = v3;
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
            v14 = [v10 carrierName];
            [v51 addObject:v14];
          }

          else
          {
            v13 = MEMORY[0x277CCACA8];
            v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v15 = [v14 localizedStringForKey:@"CELLULAR_PLAN_CARRIER_WITH_PHONE_NUMBER" value:&stru_285BC2A70 table:@"Localizable"];
            v16 = [v10 carrierName];
            v17 = [v10 phoneNumber];
            v18 = [v13 stringWithFormat:v15, v16, v17];
            [v51 addObject:v18];

            v4 = v49;
          }

          v19 = [v10 carrierName];
          [v4 addObject:v19];

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
    v22 = [v4 allObjects];
    v23 = [v22 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
    v24 = [v23 mutableCopy];
    v47 = [v21 localizedStringByJoiningStrings:v24];

    v25 = MEMORY[0x277CCAAF0];
    v26 = [v51 allObjects];
    v27 = [v26 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
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

    v3 = v48;
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

- (id)_createNotableUserDataCardForAppsAndData:(int64_t)a3
{
  v3 = NSLocalizedFileSizeDescription();
  v4 = [DKNotableUserDataCardView alloc];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"APPS_AND_DATA" value:&stru_285BC2A70 table:@"Localizable"];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"internaldrive"];
  v8 = [(DKNotableUserDataCardView *)v4 initWithTitle:v6 subtitle:v3 icon:v7];

  return v8;
}

- (void)_presentLocalDataWarning:(id)a3
{
  v4 = a3;
  v5 = [(DKIntroViewController *)self fetchRestoreState];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__DKIntroViewController__presentLocalDataWarning___block_invoke;
  v8[3] = &unk_278F7DBC0;
  v8[4] = self;
  v9 = v4;
  v6 = v5[2];
  v7 = v4;
  v6(v5, v8);
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

- (void)_presentRestoreWarning:(id)a3
{
  v4 = a3;
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
  v20 = v4;
  v12 = v4;
  v13 = [v9 actionWithTitle:v11 style:2 handler:v19];
  [v8 addAction:v13];

  v14 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_285BC2A70 table:@"Localizable"];
  v17 = [v14 actionWithTitle:v16 style:1 handler:0];
  [v8 addAction:v17];

  [(DKIntroViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_presentBasebandDeadWarning:(id)a3
{
  v4 = a3;
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
    v26 = v4;
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
    v4[2](v4);
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
  v2 = [(DKIntroViewController *)self notableUserData];
  v3 = [v2 walletData];
  v4 = [v3 localPaymentCards];

  return v4;
}

- (void)_presentLocalPaymentCardConfirmation:(id)a3
{
  v4 = a3;
  v5 = [(DKIntroViewController *)self localPaymentCards];
  if (![v5 count])
  {

    goto LABEL_7;
  }

  v6 = [(DKIntroViewController *)self hasInternetConnectivity];
  v7 = v6[2]();

  if (v7)
  {
LABEL_7:
    v4[2](v4);
    goto LABEL_8;
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"ERASE_LOCAL_PAYMENT_CARDS_OFFLINE_TITLE_SINGLE" value:&stru_285BC2A70 table:@"Localizable"];
  v11 = [(DKIntroViewController *)self localPaymentCards];
  v12 = [v11 firstObject];
  v13 = [v12 title];
  v14 = [v8 stringWithFormat:v10, v13];

  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"ERASE_LOCAL_PAYMENT_CARDS_OFFLINE_MESSAGE_SINGLE" value:&stru_285BC2A70 table:@"Localizable"];

  v17 = [(DKIntroViewController *)self localPaymentCards];
  v18 = [v17 count];

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
  v33 = v4;
  v31 = [v30 actionWithTitle:v25 style:2 handler:v32];
  [v23 addAction:v31];

  [(DKIntroViewController *)self presentViewController:v23 animated:1 completion:0];
LABEL_8:
}

- (void)_continueTapped:(id)a3
{
  v4 = [(DKIntroViewController *)self confirmErase];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__DKIntroViewController__continueTapped___block_invoke;
  v5[3] = &unk_278F7DC60;
  v5[4] = self;
  (v4)[2](v4, v5);
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

- (void)_notNowTapped:(id)a3
{
  v4 = [(DKIntroViewController *)self eraseLaterBlock];

  if (v4)
  {
    v5 = [(DKIntroViewController *)self eraseLaterBlock];
    v5[2]();
  }
}

@end