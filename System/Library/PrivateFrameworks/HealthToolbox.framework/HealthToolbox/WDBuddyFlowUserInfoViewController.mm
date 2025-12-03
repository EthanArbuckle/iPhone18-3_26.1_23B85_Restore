@interface WDBuddyFlowUserInfoViewController
- (NSArray)dataEntryItems;
- (WDBuddyControllerUserInfoDelegate)delegate;
- (WDBuddyFlowUserInfoViewController)initWithProfile:(id)profile isLastScreen:(BOOL)screen;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_loadData;
- (void)_saveDataWithCompletion:(id)completion;
- (void)_setHeaderIcon;
- (void)_setUpFooterView;
- (void)_setUpTableView;
- (void)_setupObservers;
- (void)continueButtonTapped:(id)tapped;
- (void)dataEntryItemDonePressed:(id)pressed;
- (void)dataEntryItemNextPressed:(id)pressed;
- (void)dataEntryItemPrevPressed:(id)pressed;
- (void)dealloc;
- (void)focusItemAtIndex:(int64_t)index;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation WDBuddyFlowUserInfoViewController

- (WDBuddyFlowUserInfoViewController)initWithProfile:(id)profile isLastScreen:(BOOL)screen
{
  profileCopy = profile;
  v8 = WDBundle();
  v9 = [v8 localizedStringForKey:@"HEALTH_DETAILS" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v10 = WDBundle();
  v11 = [v10 localizedStringForKey:@"HEALTH_DETAILS_DESCRIPTION" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v19.receiver = self;
  v19.super_class = WDBuddyFlowUserInfoViewController;
  v12 = [(OBTableWelcomeController *)&v19 initWithTitle:v9 detailText:v11 icon:0 adoptTableViewScrollView:1];

  if (v12)
  {
    objc_storeStrong(&v12->_profile, profile);
    v12->_isLastScreen = screen;
    healthStore = [(WDProfile *)v12->_profile healthStore];
    healthStore = v12->_healthStore;
    v12->_healthStore = healthStore;

    userDefaults = [(WDProfile *)v12->_profile userDefaults];
    userDefaults = v12->_userDefaults;
    v12->_userDefaults = userDefaults;

    baseAutomationIdentifier = v12->_baseAutomationIdentifier;
    v12->_baseAutomationIdentifier = @"UIA.Health.BuddyOnboarding.UserInfoScreen";

    v12->_hasSetUpFooterView = 0;
    [(WDBuddyFlowUserInfoViewController *)v12 _setupObservers];
  }

  return v12;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  v4.receiver = self;
  v4.super_class = WDBuddyFlowUserInfoViewController;
  [(WDBuddyFlowUserInfoViewController *)&v4 dealloc];
}

- (void)_setupObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__localeDidChange_ name:*MEMORY[0x277CBE620] object:0];
}

- (NSArray)dataEntryItems
{
  v18 = *MEMORY[0x277D85DE8];
  dataEntryItems = self->_dataEntryItems;
  if (!dataEntryItems)
  {
    dataEntryItems = self->_userInfo;
    if (dataEntryItems)
    {
      defaultDataEntryItems = [dataEntryItems defaultDataEntryItems];
      v5 = self->_dataEntryItems;
      self->_dataEntryItems = defaultDataEntryItems;

      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = self->_dataEntryItems;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v13 + 1) + 8 * i) setToolbarDelegate:{self, v13}];
          }

          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }

      dataEntryItems = self->_dataEntryItems;
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return dataEntryItems;
}

- (void)continueButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  view = [(WDBuddyFlowUserInfoViewController *)self view];
  [view endEditing:1];

  location = 0;
  objc_storeWeak(&location, 0);
  v6 = objc_loadWeakRetained(&location);
  [v6 showsBusyIndicator];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__WDBuddyFlowUserInfoViewController_continueButtonTapped___block_invoke;
  v7[3] = &unk_2796E7FD8;
  v7[4] = self;
  objc_copyWeak(&v8, &location);
  [(WDBuddyFlowUserInfoViewController *)self _saveDataWithCompletion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __58__WDBuddyFlowUserInfoViewController_continueButtonTapped___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __58__WDBuddyFlowUserInfoViewController_continueButtonTapped___block_invoke_2;
  v1[3] = &unk_2796E7FD8;
  v1[4] = *(a1 + 32);
  objc_copyWeak(&v2, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], v1);
  objc_destroyWeak(&v2);
}

void __58__WDBuddyFlowUserInfoViewController_continueButtonTapped___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__WDBuddyFlowUserInfoViewController_continueButtonTapped___block_invoke_3;
  v3[3] = &unk_2796E6CF0;
  objc_copyWeak(&v4, (a1 + 40));
  [v2 didTapContinueButtonWithCompletion:v3];

  objc_destroyWeak(&v4);
}

void __58__WDBuddyFlowUserInfoViewController_continueButtonTapped___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__WDBuddyFlowUserInfoViewController_continueButtonTapped___block_invoke_4;
  block[3] = &unk_2796E6CF0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __58__WDBuddyFlowUserInfoViewController_continueButtonTapped___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hidesBusyIndicator];
}

- (void)viewDidLoad
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = WDBuddyFlowUserInfoViewController;
  [(OBTableWelcomeController *)&v14 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(WDBuddyFlowUserInfoViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  headerView = [(WDBuddyFlowUserInfoViewController *)self headerView];
  [headerView setAllowFullWidthIcon:1];

  v6 = [WDBuddyFlowUserInfo buddyFlowUserInfoWithDemographicsInformation:0];
  userInfo = self->_userInfo;
  self->_userInfo = v6;

  [(WDBuddyFlowUserInfoViewController *)self _loadData];
  baseAutomationIdentifier = self->_baseAutomationIdentifier;
  view2 = [(WDBuddyFlowUserInfoViewController *)self view];
  [view2 setAccessibilityIdentifier:baseAutomationIdentifier];

  v15[0] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v11 = [(WDBuddyFlowUserInfoViewController *)self registerForTraitChanges:v10 withTarget:self action:sel__updateForCurrentSizeCategory];

  [(WDBuddyFlowUserInfoViewController *)self _setHeaderIcon];
  [(WDBuddyFlowUserInfoViewController *)self _setUpTableView];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView _setSectionContentInsetFollowsLayoutMargins:1];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = WDBuddyFlowUserInfoViewController;
  [(OBTableWelcomeController *)&v13 viewDidLayoutSubviews];
  view = [(WDBuddyFlowUserInfoViewController *)self view];
  [view hk_onboardingListEdgeInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView _setSectionContentInset:{v5, v7, v9, v11}];
}

- (void)_setUpTableView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView3 setBackgroundColor:clearColor];

  v24 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918] symbolicTraits:2];
  [v24 _scaledValueForValue:60.0];
  v10 = v9;
  if (HKUIApplicationIsUsingAccessibilityContentSizeCategory())
  {
    v11 = *MEMORY[0x277D76F30];
    tableView4 = [(OBTableWelcomeController *)self tableView];
    [tableView4 setRowHeight:v11];

    tableView5 = [(OBTableWelcomeController *)self tableView];
    [tableView5 setEstimatedRowHeight:v10];
  }

  else
  {
    tableView5 = [(OBTableWelcomeController *)self tableView];
    [tableView5 setRowHeight:v10];
  }

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 hk_onboardingListEdgeInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 _setSectionContentInset:{v16, v18, v20, v22}];
}

- (void)_setUpFooterView
{
  if (!self->_hasSetUpFooterView)
  {
    boldButton = [MEMORY[0x277D37618] boldButton];
    continueButton = self->continueButton;
    self->continueButton = boldButton;

    isLastScreen = self->_isLastScreen;
    v6 = WDBundle();
    v7 = v6;
    if (isLastScreen)
    {
      v8 = @"DONE";
    }

    else
    {
      v8 = @"NEXT";
    }

    v10 = [v6 localizedStringForKey:v8 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

    [(OBBoldTrayButton *)self->continueButton setTitle:v10 forState:0];
    [(OBBoldTrayButton *)self->continueButton addTarget:self action:sel_continueButtonTapped_ forControlEvents:64];
    buttonTray = [(WDBuddyFlowUserInfoViewController *)self buttonTray];
    [buttonTray addButton:self->continueButton];

    self->_hasSetUpFooterView = 1;
  }
}

- (void)_setHeaderIcon
{
  v47[1] = *MEMORY[0x277D85DE8];
  view = [(WDBuddyFlowUserInfoViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:1];

  v31 = objc_alloc_init(MEMORY[0x277CECA90]);
  profilePictureForAccountOwnerWithoutMonogramFallback = [v31 profilePictureForAccountOwnerWithoutMonogramFallback];
  v36 = [profilePictureForAccountOwnerWithoutMonogramFallback hk_resizedInterfaceImageWithSize:{82.0, 82.0}];
  if (!v36)
  {
    _applicationKeyWindow = [MEMORY[0x277D75DA0] _applicationKeyWindow];
    effectiveUserInterfaceLayoutDirection = [_applicationKeyWindow effectiveUserInterfaceLayoutDirection];

    v42 = 0;
    v43 = &v42;
    v44 = 0x2050000000;
    v6 = getCNAvatarImageRendererClass_softClass;
    v45 = getCNAvatarImageRendererClass_softClass;
    if (!getCNAvatarImageRendererClass_softClass)
    {
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __getCNAvatarImageRendererClass_block_invoke;
      v40 = &unk_2796E8028;
      v41 = &v42;
      __getCNAvatarImageRendererClass_block_invoke(&v37);
      v6 = v43[3];
    }

    v7 = v6;
    _Block_object_dispose(&v42, 8);
    v8 = objc_alloc_init(v6);
    v42 = 0;
    v43 = &v42;
    v44 = 0x2050000000;
    v9 = getCNAvatarImageRenderingScopeClass_softClass;
    v45 = getCNAvatarImageRenderingScopeClass_softClass;
    if (!getCNAvatarImageRenderingScopeClass_softClass)
    {
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __getCNAvatarImageRenderingScopeClass_block_invoke;
      v40 = &unk_2796E8028;
      v41 = &v42;
      __getCNAvatarImageRenderingScopeClass_block_invoke(&v37);
      v9 = v43[3];
    }

    v10 = v9;
    _Block_object_dispose(&v42, 8);
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v13 = [v9 scopeWithPointSize:effectiveUserInterfaceLayoutDirection == 1 scale:0 rightToLeft:82.0 style:{82.0, v12}];

    v14 = objc_alloc_init(MEMORY[0x277CBDA58]);
    v47[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    v36 = [v8 avatarImageForContacts:v15 scope:v13];
  }

  v16 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v36];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  headerView = [(WDBuddyFlowUserInfoViewController *)self headerView];
  customIconContainerView = [headerView customIconContainerView];
  [customIconContainerView addSubview:v16];

  headerView2 = [(WDBuddyFlowUserInfoViewController *)self headerView];
  customIconContainerView2 = [headerView2 customIconContainerView];

  v30 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v16 centerXAnchor];
  centerXAnchor2 = [customIconContainerView2 centerXAnchor];
  v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v46[0] = v32;
  centerYAnchor = [v16 centerYAnchor];
  centerYAnchor2 = [customIconContainerView2 centerYAnchor];
  v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v46[1] = v23;
  widthAnchor = [v16 widthAnchor];
  v25 = [widthAnchor constraintEqualToConstant:82.0];
  v46[2] = v25;
  heightAnchor = [v16 heightAnchor];
  v27 = [heightAnchor constraintEqualToConstant:82.0];
  v46[3] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
  [v30 activateConstraints:v28];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_loadData
{
  healthStore = self->_healthStore;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__WDBuddyFlowUserInfoViewController__loadData__block_invoke;
  v3[3] = &unk_2796E8000;
  v3[4] = self;
  [(HKHealthStore *)healthStore hk_fetchExistingDemographicInformationWithCompletion:v3];
}

void __46__WDBuddyFlowUserInfoViewController__loadData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__WDBuddyFlowUserInfoViewController__loadData__block_invoke_2;
  v5[3] = &unk_2796E6BD8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __46__WDBuddyFlowUserInfoViewController__loadData__block_invoke_2(uint64_t a1)
{
  v2 = [WDBuddyFlowUserInfo buddyFlowUserInfoWithDemographicsInformation:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1344);
  *(v3 + 1344) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 1336);
  *(v5 + 1336) = 0;

  v7 = [*(a1 + 32) tableView];
  [v7 reloadData];
}

- (void)_saveDataWithCompletion:(id)completion
{
  completionCopy = completion;
  userInfo = self->_userInfo;
  healthStore = self->_healthStore;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__WDBuddyFlowUserInfoViewController__saveDataWithCompletion___block_invoke;
  v10[3] = &unk_2796E6D18;
  v10[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__WDBuddyFlowUserInfoViewController__saveDataWithCompletion___block_invoke_2;
  v8[3] = &unk_2796E7198;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(WDBuddyFlowUserInfo *)userInfo saveChangesToHealthStore:healthStore andSaveNameCompletion:v10 andOverallCompletion:v8];
}

void __61__WDBuddyFlowUserInfoViewController__saveDataWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didSaveFirstLastNameFor:*(*(a1 + 32) + 1288)];
}

uint64_t __61__WDBuddyFlowUserInfoViewController__saveDataWithCompletion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_251E85000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completed saving changes to health store.", &v6, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dataEntryItemDonePressed:(id)pressed
{
  view = [(WDBuddyFlowUserInfoViewController *)self view];
  [view endEditing:0];
}

- (void)dataEntryItemPrevPressed:(id)pressed
{
  v4 = [(NSArray *)self->_dataEntryItems indexOfObject:pressed];
  if (v4 <= 0)
  {
    v4 = [(NSArray *)self->_dataEntryItems count];
  }

  [(WDBuddyFlowUserInfoViewController *)self focusItemAtIndex:v4 - 1];
}

- (void)dataEntryItemNextPressed:(id)pressed
{
  v4 = [(NSArray *)self->_dataEntryItems indexOfObject:pressed];
  if (v4 + 1 < [(NSArray *)self->_dataEntryItems count])
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  [(WDBuddyFlowUserInfoViewController *)self focusItemAtIndex:v5];
}

- (void)focusItemAtIndex:(int64_t)index
{
  v7 = [(NSArray *)self->_dataEntryItems objectAtIndexedSubscript:?];
  [v7 beginEditing];
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:index inSection:0];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView scrollToRowAtIndexPath:v5 atScrollPosition:3 animated:1];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WDBuddyFlowUserInfoViewController *)self dataEntryItems:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v16[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  dataEntryItems = [(WDBuddyFlowUserInfoViewController *)self dataEntryItems];
  v7 = [pathCopy row];

  v8 = [dataEntryItems objectAtIndex:v7];

  cell = [v8 cell];
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [cell setBackgroundColor:secondarySystemBackgroundColor];

  v16[0] = self->_baseAutomationIdentifier;
  accessibilityIdentifier = [v8 accessibilityIdentifier];
  v16[1] = accessibilityIdentifier;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v13 = HKUIJoinStringsForAutomationIdentifier();
  [cell setAccessibilityIdentifier:v13];

  v14 = *MEMORY[0x277D85DE8];

  return cell;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  dataEntryItems = [(WDBuddyFlowUserInfoViewController *)self dataEntryItems];
  v8 = [pathCopy row];

  v9 = [dataEntryItems objectAtIndex:v8];

  [v9 beginEditing];
}

- (WDBuddyControllerUserInfoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end