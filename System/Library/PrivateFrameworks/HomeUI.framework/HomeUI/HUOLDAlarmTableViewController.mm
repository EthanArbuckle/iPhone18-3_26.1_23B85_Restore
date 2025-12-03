@interface HUOLDAlarmTableViewController
- (CGSize)preferredContentSize;
- (HUOLDAlarmTableViewController)initWithMediaProfileContainer:(id)container;
- (HUPresentationDelegate)presentationDelegate;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)backgroundView;
- (id)editViewControllerForAlarmItem:(id)item;
- (id)itemModuleControllers;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_discernReachabilityForAccessory:(id)accessory;
- (void)_layoutNoItemsLabel;
- (void)_numberOfItemsDidChangeAnimated:(BOOL)animated;
- (void)_updateAccessoryControllable:(BOOL)controllable alarmsSettingReady:(BOOL)ready;
- (void)alarmEditController:(id)controller didAddAlarm:(id)alarm forMediaProfile:(id)profile;
- (void)alarmEditController:(id)controller didDeleteAlarm:(id)alarm forMediaProfile:(id)profile;
- (void)alarmEditController:(id)controller didEditAlarm:(id)alarm forMediaProfile:(id)profile;
- (void)alarmEditControllerGettingDismissed:(id)dismissed;
- (void)alarmItemModuleController:(id)controller didSelectAlarmItem:(id)item;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)itemManagerDidUpdate:(id)update;
- (void)presentAddNewAlarmViewController;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUOLDAlarmTableViewController

- (HUOLDAlarmTableViewController)initWithMediaProfileContainer:(id)container
{
  containerCopy = container;
  if (!containerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUOLDAlarmTableViewController.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];
  }

  v7 = [objc_alloc(MEMORY[0x277D14710]) initWithDelegate:self mediaProfileContainer:containerCopy];
  v32.receiver = self;
  v32.super_class = HUOLDAlarmTableViewController;
  v8 = [(HUItemTableViewController *)&v32 initWithItemManager:v7 tableViewStyle:2];
  if (v8)
  {
    v9 = [HUHomePodAlarmItemModuleController alloc];
    alarmItemModule = [v7 alarmItemModule];
    v11 = [(HUHomePodAlarmItemModuleController *)v9 initWithModule:alarmItemModule];
    alarmModuleController = v8->_alarmModuleController;
    v8->_alarmModuleController = v11;

    [(HUHomePodAlarmItemModuleController *)v8->_alarmModuleController setDelegate:v8];
    hf_settingsAdapterManager = [containerCopy hf_settingsAdapterManager];
    v14 = [hf_settingsAdapterManager adapterForIdentifier:*MEMORY[0x277D13330]];
    [v14 addObserver:v8];

    v15 = [MEMORY[0x277D755B8] imageNamed:@"BarAlarmTemplate"];
    tabBarItem = [(HUOLDAlarmTableViewController *)v8 tabBarItem];
    [tabBarItem setImage:v15];

    v17 = [MEMORY[0x277D755B8] imageNamed:@"BarAlarmOn"];
    tabBarItem2 = [(HUOLDAlarmTableViewController *)v8 tabBarItem];
    [tabBarItem2 setSelectedImage:v17];

    hf_serviceNameComponents = [containerCopy hf_serviceNameComponents];
    serviceName = [hf_serviceNameComponents serviceName];
    v27 = HULocalizedStringWithFormat(@"HUAlarmClock", @"%@", v21, v22, v23, v24, v25, v26, serviceName);

    [(HUOLDAlarmTableViewController *)v8 setTitle:v27];
    [(HUTableViewController *)v8 setSectionContentInsetFollowsLayoutMargins:0];
    [(HUItemTableViewController *)v8 setWantsPreferredContentSize:1];
    v28 = [v7 reloadAndUpdateAllItemsFromSenderSelector:a2];
    objc_storeStrong(&v8->_mediaProfileContainer, container);
    [(HUOLDAlarmTableViewController *)v8 _discernReachabilityForAccessory:0];
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    [mEMORY[0x277D146E8] addAccessoryObserver:v8];
  }

  return v8;
}

- (id)itemModuleControllers
{
  v2 = MEMORY[0x277CBEB98];
  alarmModuleController = [(HUOLDAlarmTableViewController *)self alarmModuleController];
  v4 = [v2 setWithObject:alarmModuleController];

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = HUOLDAlarmTableViewController;
  [(HUItemTableViewController *)&v5 viewWillAppear:?];
  [(HUOLDAlarmTableViewController *)self _numberOfItemsDidChangeAnimated:appearCopy];
}

- (CGSize)preferredContentSize
{
  tableView = [(HUOLDAlarmTableViewController *)self tableView];
  [tableView contentSize];
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
  tableView = [(HUOLDAlarmTableViewController *)self tableView];
  [tableView contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  MTUIMainScreenScale();
  v11 = -1.0 / v10;
  tableView2 = [(HUOLDAlarmTableViewController *)self tableView];
  [tableView2 setContentInset:{v11, v5, v7, v9}];

  noItemsView = [(HUOLDAlarmTableViewController *)self noItemsView];

  if (noItemsView)
  {
    [(HUOLDAlarmTableViewController *)self _layoutNoItemsLabel];
  }
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = HUOLDAlarmTableViewController;
  [(HUItemTableViewController *)&v19 viewDidLoad];
  tableView = [(HUOLDAlarmTableViewController *)self tableView];
  [tableView setAllowsSelectionDuringEditing:1];

  tableView2 = [(HUOLDAlarmTableViewController *)self tableView];
  [tableView2 setAllowsSelection:1];

  tableView3 = [(HUOLDAlarmTableViewController *)self tableView];
  [tableView3 _setMarginWidth:1.0];

  tableView4 = [(HUOLDAlarmTableViewController *)self tableView];
  [tableView4 setLayoutMarginsFollowReadableWidth:1];

  tableView5 = [(HUOLDAlarmTableViewController *)self tableView];
  [tableView5 setEstimatedRowHeight:88.0];

  v8 = *MEMORY[0x277D76F30];
  tableView6 = [(HUOLDAlarmTableViewController *)self tableView];
  [tableView6 setRowHeight:v8];

  tableView7 = [(HUOLDAlarmTableViewController *)self tableView];
  [tableView7 setSectionFooterHeight:0.0];

  tableView8 = [(HUOLDAlarmTableViewController *)self tableView];
  [tableView8 setSeparatorStyle:0];

  clearColor = [MEMORY[0x277D75348] clearColor];
  tableView9 = [(HUOLDAlarmTableViewController *)self tableView];
  [tableView9 setBackgroundColor:clearColor];

  tableView10 = [(HUOLDAlarmTableViewController *)self tableView];
  [tableView10 _setTopPadding:0.0];

  tableView11 = [(HUOLDAlarmTableViewController *)self tableView];
  [tableView11 _setBottomPadding:0.0];

  view = [(HUOLDAlarmTableViewController *)self view];
  [view setClipsToBounds:1];

  tableView12 = [(HUOLDAlarmTableViewController *)self tableView];
  layer = [tableView12 layer];
  [layer setCornerRadius:10.0];
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v6 = [itemManager titleForSection:section];

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

- (void)alarmItemModuleController:(id)controller didSelectAlarmItem:(id)item
{
  v5 = [(HUOLDAlarmTableViewController *)self editViewControllerForAlarmItem:item];
  [(HUOLDAlarmTableViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (id)editViewControllerForAlarmItem:(id)item
{
  itemCopy = item;
  v5 = [HUAlarmEditViewController alloc];
  mediaProfileContainer = [(HUOLDAlarmTableViewController *)self mediaProfileContainer];
  alarm = [itemCopy alarm];

  v8 = [(HUAlarmEditViewController *)v5 initWithMediaProfileContainer:mediaProfileContainer alarm:alarm];
  alarmItemManager = [(HUOLDAlarmTableViewController *)self alarmItemManager];
  mediaProfileContainer2 = [alarmItemManager mediaProfileContainer];
  hf_appleMusicCurrentLoggedInAccountDSID = [mediaProfileContainer2 hf_appleMusicCurrentLoggedInAccountDSID];
  [(HUAlarmEditViewController *)v8 setLoggedInAppleMusicAccountDSID:hf_appleMusicCurrentLoggedInAccountDSID];

  [(HUAlarmEditViewController *)v8 setDelegate:self];
  v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    [v12 setOverrideUserInterfaceStyle:2];
  }

  hu_alarmsBackgroundColor = [MEMORY[0x277D75348] hu_alarmsBackgroundColor];
  view = [v12 view];
  [view setBackgroundColor:hu_alarmsBackgroundColor];

  return v12;
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__HUOLDAlarmTableViewController_dismissViewControllerAnimated_completion___block_invoke;
  v8[3] = &unk_277DB8770;
  objc_copyWeak(&v9, &location);
  v7.receiver = self;
  v7.super_class = HUOLDAlarmTableViewController;
  [(HUOLDAlarmTableViewController *)&v7 dismissViewControllerAnimated:animatedCopy completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __74__HUOLDAlarmTableViewController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained tableView];
  [v1 setUserInteractionEnabled:1];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  if (HUIsVeryWidePhoneSize() && HUIsPhoneIdiom())
  {
    [controllerCopy setModalPresentationStyle:2];
  }

  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__HUOLDAlarmTableViewController_presentViewController_animated_completion___block_invoke;
  v12[3] = &unk_277DB8798;
  objc_copyWeak(&v14, &location);
  v10 = completionCopy;
  v13 = v10;
  v11.receiver = self;
  v11.super_class = HUOLDAlarmTableViewController;
  [(HUOLDAlarmTableViewController *)&v11 presentViewController:controllerCopy animated:animatedCopy completion:v12];

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

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  if ([(HUOLDAlarmTableViewController *)self isAccessoryControllable])
  {
    v7.receiver = self;
    v7.super_class = HUOLDAlarmTableViewController;
    v5 = [(HUItemTableViewController *)&v7 numberOfSectionsInTableView:viewCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1 && path)
  {
    pathCopy = path;
    alarmItemManager = [(HUOLDAlarmTableViewController *)self alarmItemManager];
    v14 = [alarmItemManager displayedItemAtIndexPath:pathCopy];

    alarm = [v14 alarm];
    alarmItemManager2 = [(HUOLDAlarmTableViewController *)self alarmItemManager];
    alarmItemModule = [alarmItemManager2 alarmItemModule];
    v12 = [alarmItemModule mobileTimerAdapterForAlarmItem:v14];
    v13 = [v12 removeAlarm:alarm];
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(HUOLDAlarmTableViewController *)self alarmModuleController:view];
  allowsCellSelection = [v4 allowsCellSelection];

  return allowsCellSelection;
}

- (void)itemManagerDidUpdate:(id)update
{
  v4.receiver = self;
  v4.super_class = HUOLDAlarmTableViewController;
  [(HUItemTableViewController *)&v4 itemManagerDidUpdate:update];
  [(HUOLDAlarmTableViewController *)self _numberOfItemsDidChangeAnimated:[(HUOLDAlarmTableViewController *)self isViewLoaded]];
}

- (void)alarmEditControllerGettingDismissed:(id)dismissed
{
  tableView = [(HUOLDAlarmTableViewController *)self tableView];
  [tableView setUserInteractionEnabled:1];
}

- (void)alarmEditController:(id)controller didAddAlarm:(id)alarm forMediaProfile:(id)profile
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  alarmCopy = alarm;
  profileCopy = profile;
  if (!profileCopy)
  {
    mediaProfileContainer = [(HUOLDAlarmTableViewController *)self mediaProfileContainer];
    mediaProfiles = [mediaProfileContainer mediaProfiles];
    profileCopy = [mediaProfiles anyObject];
  }

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315906;
    v19 = "[HUOLDAlarmTableViewController alarmEditController:didAddAlarm:forMediaProfile:]";
    v20 = 2112;
    selfCopy = self;
    v22 = 2112;
    v23 = alarmCopy;
    v24 = 2112;
    v25 = profileCopy;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%s(%@): Adding alarm %@ to profile %@", &v18, 0x2Au);
  }

  alarmItemManager = [(HUOLDAlarmTableViewController *)self alarmItemManager];
  alarmItemModule = [alarmItemManager alarmItemModule];
  v16 = [alarmItemModule mobileTimerAdapterForMediaProfile:profileCopy];
  v17 = [v16 addAlarm:alarmCopy];

  [(HUOLDAlarmTableViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)alarmEditController:(id)controller didEditAlarm:(id)alarm forMediaProfile:(id)profile
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  alarmCopy = alarm;
  profileCopy = profile;
  if (!profileCopy)
  {
    mediaProfileContainer = [(HUOLDAlarmTableViewController *)self mediaProfileContainer];
    mediaProfiles = [mediaProfileContainer mediaProfiles];
    profileCopy = [mediaProfiles anyObject];
  }

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315906;
    v19 = "[HUOLDAlarmTableViewController alarmEditController:didEditAlarm:forMediaProfile:]";
    v20 = 2112;
    selfCopy = self;
    v22 = 2112;
    v23 = alarmCopy;
    v24 = 2112;
    v25 = profileCopy;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%s(%@): Editing alarm %@ for profile %@", &v18, 0x2Au);
  }

  alarmItemManager = [(HUOLDAlarmTableViewController *)self alarmItemManager];
  alarmItemModule = [alarmItemManager alarmItemModule];
  v16 = [alarmItemModule mobileTimerAdapterForMediaProfile:profileCopy];
  v17 = [v16 updateAlarm:alarmCopy];

  [(HUOLDAlarmTableViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)alarmEditController:(id)controller didDeleteAlarm:(id)alarm forMediaProfile:(id)profile
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  alarmCopy = alarm;
  profileCopy = profile;
  if (!profileCopy)
  {
    mediaProfileContainer = [(HUOLDAlarmTableViewController *)self mediaProfileContainer];
    mediaProfiles = [mediaProfileContainer mediaProfiles];
    profileCopy = [mediaProfiles anyObject];
  }

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315906;
    v19 = "[HUOLDAlarmTableViewController alarmEditController:didDeleteAlarm:forMediaProfile:]";
    v20 = 2112;
    selfCopy = self;
    v22 = 2112;
    v23 = alarmCopy;
    v24 = 2112;
    v25 = profileCopy;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%s(%@): Deleting alarm %@ from profile %@", &v18, 0x2Au);
  }

  alarmItemManager = [(HUOLDAlarmTableViewController *)self alarmItemManager];
  alarmItemModule = [alarmItemManager alarmItemModule];
  v16 = [alarmItemModule mobileTimerAdapterForMediaProfile:profileCopy];
  v17 = [v16 removeAlarm:alarmCopy];

  [(HUOLDAlarmTableViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  [MEMORY[0x277CD9FF0] begin];
  v7.receiver = self;
  v7.super_class = HUOLDAlarmTableViewController;
  [(HUOLDAlarmTableViewController *)&v7 setEditing:editingCopy animated:animatedCopy];
  [MEMORY[0x277CD9FF0] commit];
}

- (id)backgroundView
{
  tableView = [(HUOLDAlarmTableViewController *)self tableView];
  backgroundView = [tableView backgroundView];

  if (!backgroundView)
  {
    backgroundView = objc_opt_new();
    tableView2 = [(HUOLDAlarmTableViewController *)self tableView];
    [tableView2 bounds];
    [backgroundView setFrame:?];

    tableView3 = [(HUOLDAlarmTableViewController *)self tableView];
    [tableView3 setBackgroundView:backgroundView];
  }

  return backgroundView;
}

- (void)_layoutNoItemsLabel
{
  v29[2] = *MEMORY[0x277D85DE8];
  backgroundView = [(HUOLDAlarmTableViewController *)self backgroundView];
  [backgroundView bounds];
  v5 = v4;
  v7 = v6;

  noItemsView = [(HUOLDAlarmTableViewController *)self noItemsView];
  [noItemsView frame];

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
  noItemsView2 = [(HUOLDAlarmTableViewController *)self noItemsView];
  [noItemsView2 setFrame:{v12, v14, v9, v10}];

  noItemsView3 = [(HUOLDAlarmTableViewController *)self noItemsView];
  message = [noItemsView3 message];

  if (message)
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
    noItemsView4 = [(HUOLDAlarmTableViewController *)self noItemsView];
    message2 = [noItemsView4 message];
    v25 = [v22 initWithString:message2 attributes:v21];
    noItemsView5 = [(HUOLDAlarmTableViewController *)self noItemsView];
    _messageLabel = [noItemsView5 _messageLabel];
    [_messageLabel setAttributedText:v25];
  }
}

- (void)_numberOfItemsDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  itemManager = [(HUItemTableViewController *)self itemManager];
  allDisplayedItems = [itemManager allDisplayedItems];
  v7 = [allDisplayedItems count];

  if ([(HUOLDAlarmTableViewController *)self isAccessoryControllable])
  {
    isAlarmsSettingReady = [(HUOLDAlarmTableViewController *)self isAlarmsSettingReady];
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = animatedCopy;
    }

    v10 = isAlarmsSettingReady && v7 != 0;
    if (isAlarmsSettingReady)
    {
      animatedCopy = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  noItemsView = [(HUOLDAlarmTableViewController *)self noItemsView];

  if (noItemsView)
  {
    noItemsView2 = [(HUOLDAlarmTableViewController *)self noItemsView];
    [noItemsView2 removeFromSuperview];

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
        noItemsView3 = [(HUOLDAlarmTableViewController *)self noItemsView];
        [noItemsView3 setVibrantOptions:0];

        noItemsView4 = [(HUOLDAlarmTableViewController *)self noItemsView];
        [noItemsView4 setUserInteractionEnabled:0];

        [(HUOLDAlarmTableViewController *)self _layoutNoItemsLabel];
        backgroundView = [(HUOLDAlarmTableViewController *)self backgroundView];
        noItemsView5 = [(HUOLDAlarmTableViewController *)self noItemsView];
        [backgroundView addSubview:noItemsView5];

        goto LABEL_21;
      }

      v16 = _HULocalizedStringWithDefaultValue(@"HUHomePodNotReachable", @"HUHomePodNotReachable", 1);
      noItemsView6 = [(HUOLDAlarmTableViewController *)self noItemsView];
      [noItemsView6 setTitle:v16];

      mediaProfileContainer = [(HUOLDAlarmTableViewController *)self mediaProfileContainer];
      hf_categoryLowercaseLocalizedDescription = [mediaProfileContainer hf_categoryLowercaseLocalizedDescription];
      v26 = HULocalizedStringWithFormat(@"HUHomePodAlarmsUnavailableExplanation", @"%@", v20, v21, v22, v23, v24, v25, hf_categoryLowercaseLocalizedDescription);
      noItemsView7 = [(HUOLDAlarmTableViewController *)self noItemsView];
      [noItemsView7 setMessage:v26];
    }

    else
    {
      v28 = _HULocalizedStringWithDefaultValue(@"HUHomePodAlarmsSettingNotReadyTitle", @"HUHomePodAlarmsSettingNotReadyTitle", 1);
      noItemsView8 = [(HUOLDAlarmTableViewController *)self noItemsView];
      [noItemsView8 setTitle:v28];

      mediaProfileContainer = [(HUOLDAlarmTableViewController *)self noItemsView];
      [mediaProfileContainer setMessage:0];
    }

    goto LABEL_20;
  }

LABEL_21:
  tableView = [(HUOLDAlarmTableViewController *)self tableView];
  [tableView setSeparatorStyle:v10];

  v35 = 0.2;
  v36[1] = 3221225472;
  v36[0] = MEMORY[0x277D85DD0];
  v36[2] = __65__HUOLDAlarmTableViewController__numberOfItemsDidChangeAnimated___block_invoke;
  v36[3] = &unk_277DB7EE0;
  if (!animatedCopy)
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

- (void)_discernReachabilityForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (!accessoryCopy || (-[HUOLDAlarmTableViewController mediaProfileContainer](self, "mediaProfileContainer"), v4 = objc_claimAutoreleasedReturnValue(), [v4 accessories], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", accessoryCopy), v5, v4, v7 = accessoryCopy, v6))
  {
    mediaProfileContainer = [(HUOLDAlarmTableViewController *)self mediaProfileContainer];
    settings = [mediaProfileContainer settings];
    isControllable = [settings isControllable];

    if (isControllable)
    {
      v11 = 1;
    }

    else
    {
      hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
      hf_siriEndpointProfile = [hf_backingAccessory hf_siriEndpointProfile];
      v11 = hf_siriEndpointProfile != 0;
    }

    mediaProfileContainer2 = [(HUOLDAlarmTableViewController *)self mediaProfileContainer];
    hf_settingsAdapterManager = [mediaProfileContainer2 hf_settingsAdapterManager];
    v16 = [hf_settingsAdapterManager adapterForIdentifier:*MEMORY[0x277D13330]];
    isAdapterReady = [v16 isAdapterReady];

    [(HUOLDAlarmTableViewController *)self _updateAccessoryControllable:v11 alarmsSettingReady:isAdapterReady];
    v7 = accessoryCopy;
  }
}

- (void)_updateAccessoryControllable:(BOOL)controllable alarmsSettingReady:(BOOL)ready
{
  if (self->_isAccessoryControllable != controllable || self->_isAlarmsSettingReady != ready)
  {
    if ([(HUOLDAlarmTableViewController *)self isViewLoaded])
    {
      [MEMORY[0x277CD9FF0] begin];
    }

    self->_isAccessoryControllable = controllable;
    self->_isAlarmsSettingReady = ready;
    if ([(HUOLDAlarmTableViewController *)self isViewLoaded])
    {
      tableView = [(HUOLDAlarmTableViewController *)self tableView];
      [tableView reloadData];

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