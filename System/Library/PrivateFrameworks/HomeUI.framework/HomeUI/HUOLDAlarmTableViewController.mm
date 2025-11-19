@interface HUOLDAlarmTableViewController
- (CGSize)preferredContentSize;
- (HUOLDAlarmTableViewController)initWithMediaProfileContainer:(id)a3;
- (HUPresentationDelegate)presentationDelegate;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)backgroundView;
- (id)editViewControllerForAlarmItem:(id)a3;
- (id)itemModuleControllers;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_discernReachabilityForAccessory:(id)a3;
- (void)_layoutNoItemsLabel;
- (void)_numberOfItemsDidChangeAnimated:(BOOL)a3;
- (void)_updateAccessoryControllable:(BOOL)a3 alarmsSettingReady:(BOOL)a4;
- (void)alarmEditController:(id)a3 didAddAlarm:(id)a4 forMediaProfile:(id)a5;
- (void)alarmEditController:(id)a3 didDeleteAlarm:(id)a4 forMediaProfile:(id)a5;
- (void)alarmEditController:(id)a3 didEditAlarm:(id)a4 forMediaProfile:(id)a5;
- (void)alarmEditControllerGettingDismissed:(id)a3;
- (void)alarmItemModuleController:(id)a3 didSelectAlarmItem:(id)a4;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)itemManagerDidUpdate:(id)a3;
- (void)presentAddNewAlarmViewController;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUOLDAlarmTableViewController

- (HUOLDAlarmTableViewController)initWithMediaProfileContainer:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"HUOLDAlarmTableViewController.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];
  }

  v7 = [objc_alloc(MEMORY[0x277D14710]) initWithDelegate:self mediaProfileContainer:v6];
  v32.receiver = self;
  v32.super_class = HUOLDAlarmTableViewController;
  v8 = [(HUItemTableViewController *)&v32 initWithItemManager:v7 tableViewStyle:2];
  if (v8)
  {
    v9 = [HUHomePodAlarmItemModuleController alloc];
    v10 = [v7 alarmItemModule];
    v11 = [(HUHomePodAlarmItemModuleController *)v9 initWithModule:v10];
    alarmModuleController = v8->_alarmModuleController;
    v8->_alarmModuleController = v11;

    [(HUHomePodAlarmItemModuleController *)v8->_alarmModuleController setDelegate:v8];
    v13 = [v6 hf_settingsAdapterManager];
    v14 = [v13 adapterForIdentifier:*MEMORY[0x277D13330]];
    [v14 addObserver:v8];

    v15 = [MEMORY[0x277D755B8] imageNamed:@"BarAlarmTemplate"];
    v16 = [(HUOLDAlarmTableViewController *)v8 tabBarItem];
    [v16 setImage:v15];

    v17 = [MEMORY[0x277D755B8] imageNamed:@"BarAlarmOn"];
    v18 = [(HUOLDAlarmTableViewController *)v8 tabBarItem];
    [v18 setSelectedImage:v17];

    v19 = [v6 hf_serviceNameComponents];
    v20 = [v19 serviceName];
    v27 = HULocalizedStringWithFormat(@"HUAlarmClock", @"%@", v21, v22, v23, v24, v25, v26, v20);

    [(HUOLDAlarmTableViewController *)v8 setTitle:v27];
    [(HUTableViewController *)v8 setSectionContentInsetFollowsLayoutMargins:0];
    [(HUItemTableViewController *)v8 setWantsPreferredContentSize:1];
    v28 = [v7 reloadAndUpdateAllItemsFromSenderSelector:a2];
    objc_storeStrong(&v8->_mediaProfileContainer, a3);
    [(HUOLDAlarmTableViewController *)v8 _discernReachabilityForAccessory:0];
    v29 = [MEMORY[0x277D146E8] sharedDispatcher];
    [v29 addAccessoryObserver:v8];
  }

  return v8;
}

- (id)itemModuleControllers
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUOLDAlarmTableViewController *)self alarmModuleController];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = HUOLDAlarmTableViewController;
  [(HUItemTableViewController *)&v5 viewWillAppear:?];
  [(HUOLDAlarmTableViewController *)self _numberOfItemsDidChangeAnimated:v3];
}

- (CGSize)preferredContentSize
{
  v2 = [(HUOLDAlarmTableViewController *)self tableView];
  [v2 contentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = HUOLDAlarmTableViewController;
  [(HUItemTableViewController *)&v14 viewDidLayoutSubviews];
  v3 = [(HUOLDAlarmTableViewController *)self tableView];
  [v3 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  MTUIMainScreenScale();
  v11 = -1.0 / v10;
  v12 = [(HUOLDAlarmTableViewController *)self tableView];
  [v12 setContentInset:{v11, v5, v7, v9}];

  v13 = [(HUOLDAlarmTableViewController *)self noItemsView];

  if (v13)
  {
    [(HUOLDAlarmTableViewController *)self _layoutNoItemsLabel];
  }
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = HUOLDAlarmTableViewController;
  [(HUItemTableViewController *)&v19 viewDidLoad];
  v3 = [(HUOLDAlarmTableViewController *)self tableView];
  [v3 setAllowsSelectionDuringEditing:1];

  v4 = [(HUOLDAlarmTableViewController *)self tableView];
  [v4 setAllowsSelection:1];

  v5 = [(HUOLDAlarmTableViewController *)self tableView];
  [v5 _setMarginWidth:1.0];

  v6 = [(HUOLDAlarmTableViewController *)self tableView];
  [v6 setLayoutMarginsFollowReadableWidth:1];

  v7 = [(HUOLDAlarmTableViewController *)self tableView];
  [v7 setEstimatedRowHeight:88.0];

  v8 = *MEMORY[0x277D76F30];
  v9 = [(HUOLDAlarmTableViewController *)self tableView];
  [v9 setRowHeight:v8];

  v10 = [(HUOLDAlarmTableViewController *)self tableView];
  [v10 setSectionFooterHeight:0.0];

  v11 = [(HUOLDAlarmTableViewController *)self tableView];
  [v11 setSeparatorStyle:0];

  v12 = [MEMORY[0x277D75348] clearColor];
  v13 = [(HUOLDAlarmTableViewController *)self tableView];
  [v13 setBackgroundColor:v12];

  v14 = [(HUOLDAlarmTableViewController *)self tableView];
  [v14 _setTopPadding:0.0];

  v15 = [(HUOLDAlarmTableViewController *)self tableView];
  [v15 _setBottomPadding:0.0];

  v16 = [(HUOLDAlarmTableViewController *)self view];
  [v16 setClipsToBounds:1];

  v17 = [(HUOLDAlarmTableViewController *)self tableView];
  v18 = [v17 layer];
  [v18 setCornerRadius:10.0];
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 titleForSection:a4];

  if (v6)
  {
    v7 = *MEMORY[0x277D76F30];
  }

  else
  {
    v7 = 8.0;
  }

  return v7;
}

- (void)presentAddNewAlarmViewController
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "adding new alarm", v5, 2u);
  }

  v4 = [(HUOLDAlarmTableViewController *)self editViewControllerForAlarmItem:0];
  [(HUOLDAlarmTableViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)alarmItemModuleController:(id)a3 didSelectAlarmItem:(id)a4
{
  v5 = [(HUOLDAlarmTableViewController *)self editViewControllerForAlarmItem:a4];
  [(HUOLDAlarmTableViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (id)editViewControllerForAlarmItem:(id)a3
{
  v4 = a3;
  v5 = [HUAlarmEditViewController alloc];
  v6 = [(HUOLDAlarmTableViewController *)self mediaProfileContainer];
  v7 = [v4 alarm];

  v8 = [(HUAlarmEditViewController *)v5 initWithMediaProfileContainer:v6 alarm:v7];
  v9 = [(HUOLDAlarmTableViewController *)self alarmItemManager];
  v10 = [v9 mediaProfileContainer];
  v11 = [v10 hf_appleMusicCurrentLoggedInAccountDSID];
  [(HUAlarmEditViewController *)v8 setLoggedInAppleMusicAccountDSID:v11];

  [(HUAlarmEditViewController *)v8 setDelegate:self];
  v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    [v12 setOverrideUserInterfaceStyle:2];
  }

  v13 = [MEMORY[0x277D75348] hu_alarmsBackgroundColor];
  v14 = [v12 view];
  [v14 setBackgroundColor:v13];

  return v12;
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__HUOLDAlarmTableViewController_dismissViewControllerAnimated_completion___block_invoke;
  v8[3] = &unk_277DB8770;
  objc_copyWeak(&v9, &location);
  v7.receiver = self;
  v7.super_class = HUOLDAlarmTableViewController;
  [(HUOLDAlarmTableViewController *)&v7 dismissViewControllerAnimated:v4 completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __74__HUOLDAlarmTableViewController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained tableView];
  [v1 setUserInteractionEnabled:1];
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (HUIsVeryWidePhoneSize() && HUIsPhoneIdiom())
  {
    [v8 setModalPresentationStyle:2];
  }

  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__HUOLDAlarmTableViewController_presentViewController_animated_completion___block_invoke;
  v12[3] = &unk_277DB8798;
  objc_copyWeak(&v14, &location);
  v10 = v9;
  v13 = v10;
  v11.receiver = self;
  v11.super_class = HUOLDAlarmTableViewController;
  [(HUOLDAlarmTableViewController *)&v11 presentViewController:v8 animated:v6 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __75__HUOLDAlarmTableViewController_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained tableView];
  [v2 setUserInteractionEnabled:0];

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = a3;
  if ([(HUOLDAlarmTableViewController *)self isAccessoryControllable])
  {
    v7.receiver = self;
    v7.super_class = HUOLDAlarmTableViewController;
    v5 = [(HUItemTableViewController *)&v7 numberOfSectionsInTableView:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1 && a5)
  {
    v7 = a5;
    v8 = [(HUOLDAlarmTableViewController *)self alarmItemManager];
    v14 = [v8 displayedItemAtIndexPath:v7];

    v9 = [v14 alarm];
    v10 = [(HUOLDAlarmTableViewController *)self alarmItemManager];
    v11 = [v10 alarmItemModule];
    v12 = [v11 mobileTimerAdapterForAlarmItem:v14];
    v13 = [v12 removeAlarm:v9];
  }
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(HUOLDAlarmTableViewController *)self alarmModuleController:a3];
  v5 = [v4 allowsCellSelection];

  return v5;
}

- (void)itemManagerDidUpdate:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUOLDAlarmTableViewController;
  [(HUItemTableViewController *)&v4 itemManagerDidUpdate:a3];
  [(HUOLDAlarmTableViewController *)self _numberOfItemsDidChangeAnimated:[(HUOLDAlarmTableViewController *)self isViewLoaded]];
}

- (void)alarmEditControllerGettingDismissed:(id)a3
{
  v3 = [(HUOLDAlarmTableViewController *)self tableView];
  [v3 setUserInteractionEnabled:1];
}

- (void)alarmEditController:(id)a3 didAddAlarm:(id)a4 forMediaProfile:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v11 = [(HUOLDAlarmTableViewController *)self mediaProfileContainer];
    v12 = [v11 mediaProfiles];
    v10 = [v12 anyObject];
  }

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315906;
    v19 = "[HUOLDAlarmTableViewController alarmEditController:didAddAlarm:forMediaProfile:]";
    v20 = 2112;
    v21 = self;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%s(%@): Adding alarm %@ to profile %@", &v18, 0x2Au);
  }

  v14 = [(HUOLDAlarmTableViewController *)self alarmItemManager];
  v15 = [v14 alarmItemModule];
  v16 = [v15 mobileTimerAdapterForMediaProfile:v10];
  v17 = [v16 addAlarm:v9];

  [(HUOLDAlarmTableViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)alarmEditController:(id)a3 didEditAlarm:(id)a4 forMediaProfile:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v11 = [(HUOLDAlarmTableViewController *)self mediaProfileContainer];
    v12 = [v11 mediaProfiles];
    v10 = [v12 anyObject];
  }

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315906;
    v19 = "[HUOLDAlarmTableViewController alarmEditController:didEditAlarm:forMediaProfile:]";
    v20 = 2112;
    v21 = self;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%s(%@): Editing alarm %@ for profile %@", &v18, 0x2Au);
  }

  v14 = [(HUOLDAlarmTableViewController *)self alarmItemManager];
  v15 = [v14 alarmItemModule];
  v16 = [v15 mobileTimerAdapterForMediaProfile:v10];
  v17 = [v16 updateAlarm:v9];

  [(HUOLDAlarmTableViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)alarmEditController:(id)a3 didDeleteAlarm:(id)a4 forMediaProfile:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v11 = [(HUOLDAlarmTableViewController *)self mediaProfileContainer];
    v12 = [v11 mediaProfiles];
    v10 = [v12 anyObject];
  }

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315906;
    v19 = "[HUOLDAlarmTableViewController alarmEditController:didDeleteAlarm:forMediaProfile:]";
    v20 = 2112;
    v21 = self;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%s(%@): Deleting alarm %@ from profile %@", &v18, 0x2Au);
  }

  v14 = [(HUOLDAlarmTableViewController *)self alarmItemManager];
  v15 = [v14 alarmItemModule];
  v16 = [v15 mobileTimerAdapterForMediaProfile:v10];
  v17 = [v16 removeAlarm:v9];

  [(HUOLDAlarmTableViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [MEMORY[0x277CD9FF0] begin];
  v7.receiver = self;
  v7.super_class = HUOLDAlarmTableViewController;
  [(HUOLDAlarmTableViewController *)&v7 setEditing:v5 animated:v4];
  [MEMORY[0x277CD9FF0] commit];
}

- (id)backgroundView
{
  v3 = [(HUOLDAlarmTableViewController *)self tableView];
  v4 = [v3 backgroundView];

  if (!v4)
  {
    v4 = objc_opt_new();
    v5 = [(HUOLDAlarmTableViewController *)self tableView];
    [v5 bounds];
    [v4 setFrame:?];

    v6 = [(HUOLDAlarmTableViewController *)self tableView];
    [v6 setBackgroundView:v4];
  }

  return v4;
}

- (void)_layoutNoItemsLabel
{
  v29[2] = *MEMORY[0x277D85DE8];
  v3 = [(HUOLDAlarmTableViewController *)self backgroundView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [(HUOLDAlarmTableViewController *)self noItemsView];
  [v8 frame];

  if (v5 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v5 <= v7)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  MTUIRoundToPixel();
  v12 = v11;
  MTUIRoundToPixel();
  v14 = v13;
  v15 = [(HUOLDAlarmTableViewController *)self noItemsView];
  [v15 setFrame:{v12, v14, v9, v10}];

  v16 = [(HUOLDAlarmTableViewController *)self noItemsView];
  v17 = [v16 message];

  if (v17)
  {
    v18 = objc_opt_new();
    [v18 setAlignment:1];
    LODWORD(v19) = 1.0;
    [v18 setHyphenationFactor:v19];
    [v18 setLineBreakMode:0];
    v28[0] = *MEMORY[0x277D740A8];
    v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v28[1] = *MEMORY[0x277D74118];
    v29[0] = v20;
    v29[1] = v18;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

    v22 = objc_alloc(MEMORY[0x277CCA898]);
    v23 = [(HUOLDAlarmTableViewController *)self noItemsView];
    v24 = [v23 message];
    v25 = [v22 initWithString:v24 attributes:v21];
    v26 = [(HUOLDAlarmTableViewController *)self noItemsView];
    v27 = [v26 _messageLabel];
    [v27 setAttributedText:v25];
  }
}

- (void)_numberOfItemsDidChangeAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 allDisplayedItems];
  v7 = [v6 count];

  if ([(HUOLDAlarmTableViewController *)self isAccessoryControllable])
  {
    v8 = [(HUOLDAlarmTableViewController *)self isAlarmsSettingReady];
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v3;
    }

    v10 = v8 && v7 != 0;
    if (v8)
    {
      v3 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [(HUOLDAlarmTableViewController *)self noItemsView];

  if (v11)
  {
    v12 = [(HUOLDAlarmTableViewController *)self noItemsView];
    [v12 removeFromSuperview];

    [(HUOLDAlarmTableViewController *)self setNoItemsView:0];
  }

  if (!v10 && [(HUOLDAlarmTableViewController *)self isViewLoaded])
  {
    v13 = _HULocalizedStringWithDefaultValue(@"HUNoAlarms", @"HUNoAlarms", 1);
    v14 = objc_alloc(MEMORY[0x277D75E78]);
    v15 = [v14 initWithFrame:v13 title:0 style:0 includeBackdrop:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(HUOLDAlarmTableViewController *)self setNoItemsView:v15];

    if ([(HUOLDAlarmTableViewController *)self isAlarmsSettingReady])
    {
      if ([(HUOLDAlarmTableViewController *)self isAccessoryControllable])
      {
LABEL_20:
        v30 = [(HUOLDAlarmTableViewController *)self noItemsView];
        [v30 setVibrantOptions:0];

        v31 = [(HUOLDAlarmTableViewController *)self noItemsView];
        [v31 setUserInteractionEnabled:0];

        [(HUOLDAlarmTableViewController *)self _layoutNoItemsLabel];
        v32 = [(HUOLDAlarmTableViewController *)self backgroundView];
        v33 = [(HUOLDAlarmTableViewController *)self noItemsView];
        [v32 addSubview:v33];

        goto LABEL_21;
      }

      v16 = _HULocalizedStringWithDefaultValue(@"HUHomePodNotReachable", @"HUHomePodNotReachable", 1);
      v17 = [(HUOLDAlarmTableViewController *)self noItemsView];
      [v17 setTitle:v16];

      v18 = [(HUOLDAlarmTableViewController *)self mediaProfileContainer];
      v19 = [v18 hf_categoryLowercaseLocalizedDescription];
      v26 = HULocalizedStringWithFormat(@"HUHomePodAlarmsUnavailableExplanation", @"%@", v20, v21, v22, v23, v24, v25, v19);
      v27 = [(HUOLDAlarmTableViewController *)self noItemsView];
      [v27 setMessage:v26];
    }

    else
    {
      v28 = _HULocalizedStringWithDefaultValue(@"HUHomePodAlarmsSettingNotReadyTitle", @"HUHomePodAlarmsSettingNotReadyTitle", 1);
      v29 = [(HUOLDAlarmTableViewController *)self noItemsView];
      [v29 setTitle:v28];

      v18 = [(HUOLDAlarmTableViewController *)self noItemsView];
      [v18 setMessage:0];
    }

    goto LABEL_20;
  }

LABEL_21:
  v34 = [(HUOLDAlarmTableViewController *)self tableView];
  [v34 setSeparatorStyle:v10];

  v35 = 0.2;
  v36[1] = 3221225472;
  v36[0] = MEMORY[0x277D85DD0];
  v36[2] = __65__HUOLDAlarmTableViewController__numberOfItemsDidChangeAnimated___block_invoke;
  v36[3] = &unk_277DB7EE0;
  if (!v3)
  {
    v35 = 0.0;
  }

  v36[4] = self;
  v37 = v10;
  [MEMORY[0x277D75D18] animateWithDuration:v36 animations:v35];
}

void __65__HUOLDAlarmTableViewController__numberOfItemsDidChangeAnimated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = [*(a1 + 32) noItemsView];
  [v2 setAlpha:v1];
}

- (void)_discernReachabilityForAccessory:(id)a3
{
  v18 = a3;
  if (!v18 || (-[HUOLDAlarmTableViewController mediaProfileContainer](self, "mediaProfileContainer"), v4 = objc_claimAutoreleasedReturnValue(), [v4 accessories], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", v18), v5, v4, v7 = v18, v6))
  {
    v8 = [(HUOLDAlarmTableViewController *)self mediaProfileContainer];
    v9 = [v8 settings];
    v10 = [v9 isControllable];

    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v12 = [v8 hf_backingAccessory];
      v13 = [v12 hf_siriEndpointProfile];
      v11 = v13 != 0;
    }

    v14 = [(HUOLDAlarmTableViewController *)self mediaProfileContainer];
    v15 = [v14 hf_settingsAdapterManager];
    v16 = [v15 adapterForIdentifier:*MEMORY[0x277D13330]];
    v17 = [v16 isAdapterReady];

    [(HUOLDAlarmTableViewController *)self _updateAccessoryControllable:v11 alarmsSettingReady:v17];
    v7 = v18;
  }
}

- (void)_updateAccessoryControllable:(BOOL)a3 alarmsSettingReady:(BOOL)a4
{
  if (self->_isAccessoryControllable != a3 || self->_isAlarmsSettingReady != a4)
  {
    if ([(HUOLDAlarmTableViewController *)self isViewLoaded])
    {
      [MEMORY[0x277CD9FF0] begin];
    }

    self->_isAccessoryControllable = a3;
    self->_isAlarmsSettingReady = a4;
    if ([(HUOLDAlarmTableViewController *)self isViewLoaded])
    {
      v7 = [(HUOLDAlarmTableViewController *)self tableView];
      [v7 reloadData];

      [(HUOLDAlarmTableViewController *)self _numberOfItemsDidChangeAnimated:1];
      v8 = MEMORY[0x277CD9FF0];

      [v8 commit];
    }
  }
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end