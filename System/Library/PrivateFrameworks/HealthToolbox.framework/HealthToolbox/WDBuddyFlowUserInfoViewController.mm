@interface WDBuddyFlowUserInfoViewController
- (NSArray)dataEntryItems;
- (WDBuddyControllerUserInfoDelegate)delegate;
- (WDBuddyFlowUserInfoViewController)initWithProfile:(id)a3 isLastScreen:(BOOL)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_loadData;
- (void)_saveDataWithCompletion:(id)a3;
- (void)_setHeaderIcon;
- (void)_setUpFooterView;
- (void)_setUpTableView;
- (void)_setupObservers;
- (void)continueButtonTapped:(id)a3;
- (void)dataEntryItemDonePressed:(id)a3;
- (void)dataEntryItemNextPressed:(id)a3;
- (void)dataEntryItemPrevPressed:(id)a3;
- (void)dealloc;
- (void)focusItemAtIndex:(int64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation WDBuddyFlowUserInfoViewController

- (WDBuddyFlowUserInfoViewController)initWithProfile:(id)a3 isLastScreen:(BOOL)a4
{
  v7 = a3;
  v8 = WDBundle();
  v9 = [v8 localizedStringForKey:@"HEALTH_DETAILS" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v10 = WDBundle();
  v11 = [v10 localizedStringForKey:@"HEALTH_DETAILS_DESCRIPTION" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v19.receiver = self;
  v19.super_class = WDBuddyFlowUserInfoViewController;
  v12 = [(OBTableWelcomeController *)&v19 initWithTitle:v9 detailText:v11 icon:0 adoptTableViewScrollView:1];

  if (v12)
  {
    objc_storeStrong(&v12->_profile, a3);
    v12->_isLastScreen = a4;
    v13 = [(WDProfile *)v12->_profile healthStore];
    healthStore = v12->_healthStore;
    v12->_healthStore = v13;

    v15 = [(WDProfile *)v12->_profile userDefaults];
    userDefaults = v12->_userDefaults;
    v12->_userDefaults = v15;

    baseAutomationIdentifier = v12->_baseAutomationIdentifier;
    v12->_baseAutomationIdentifier = @"UIA.Health.BuddyOnboarding.UserInfoScreen";

    v12->_hasSetUpFooterView = 0;
    [(WDBuddyFlowUserInfoViewController *)v12 _setupObservers];
  }

  return v12;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  v4.receiver = self;
  v4.super_class = WDBuddyFlowUserInfoViewController;
  [(WDBuddyFlowUserInfoViewController *)&v4 dealloc];
}

- (void)_setupObservers
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__localeDidChange_ name:*MEMORY[0x277CBE620] object:0];
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
      v4 = [dataEntryItems defaultDataEntryItems];
      v5 = self->_dataEntryItems;
      self->_dataEntryItems = v4;

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

- (void)continueButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(WDBuddyFlowUserInfoViewController *)self view];
  [v5 endEditing:1];

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
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(WDBuddyFlowUserInfoViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(WDBuddyFlowUserInfoViewController *)self headerView];
  [v5 setAllowFullWidthIcon:1];

  v6 = [WDBuddyFlowUserInfo buddyFlowUserInfoWithDemographicsInformation:0];
  userInfo = self->_userInfo;
  self->_userInfo = v6;

  [(WDBuddyFlowUserInfoViewController *)self _loadData];
  baseAutomationIdentifier = self->_baseAutomationIdentifier;
  v9 = [(WDBuddyFlowUserInfoViewController *)self view];
  [v9 setAccessibilityIdentifier:baseAutomationIdentifier];

  v15[0] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v11 = [(WDBuddyFlowUserInfoViewController *)self registerForTraitChanges:v10 withTarget:self action:sel__updateForCurrentSizeCategory];

  [(WDBuddyFlowUserInfoViewController *)self _setHeaderIcon];
  [(WDBuddyFlowUserInfoViewController *)self _setUpTableView];
  v12 = [(OBTableWelcomeController *)self tableView];
  [v12 _setSectionContentInsetFollowsLayoutMargins:1];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = WDBuddyFlowUserInfoViewController;
  [(OBTableWelcomeController *)&v13 viewDidLayoutSubviews];
  v3 = [(WDBuddyFlowUserInfoViewController *)self view];
  [v3 hk_onboardingListEdgeInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(OBTableWelcomeController *)self tableView];
  [v12 _setSectionContentInset:{v5, v7, v9, v11}];
}

- (void)_setUpTableView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 setDataSource:self];

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 setDelegate:self];

  v7 = [(OBTableWelcomeController *)self tableView];
  v8 = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:v8];

  v24 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918] symbolicTraits:2];
  [v24 _scaledValueForValue:60.0];
  v10 = v9;
  if (HKUIApplicationIsUsingAccessibilityContentSizeCategory())
  {
    v11 = *MEMORY[0x277D76F30];
    v12 = [(OBTableWelcomeController *)self tableView];
    [v12 setRowHeight:v11];

    v13 = [(OBTableWelcomeController *)self tableView];
    [v13 setEstimatedRowHeight:v10];
  }

  else
  {
    v13 = [(OBTableWelcomeController *)self tableView];
    [v13 setRowHeight:v10];
  }

  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 hk_onboardingListEdgeInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(OBTableWelcomeController *)self tableView];
  [v23 _setSectionContentInset:{v16, v18, v20, v22}];
}

- (void)_setUpFooterView
{
  if (!self->_hasSetUpFooterView)
  {
    v3 = [MEMORY[0x277D37618] boldButton];
    continueButton = self->continueButton;
    self->continueButton = v3;

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
    v9 = [(WDBuddyFlowUserInfoViewController *)self buttonTray];
    [v9 addButton:self->continueButton];

    self->_hasSetUpFooterView = 1;
  }
}

- (void)_setHeaderIcon
{
  v47[1] = *MEMORY[0x277D85DE8];
  v3 = [(WDBuddyFlowUserInfoViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:1];

  v31 = objc_alloc_init(MEMORY[0x277CECA90]);
  v35 = [v31 profilePictureForAccountOwnerWithoutMonogramFallback];
  v36 = [v35 hk_resizedInterfaceImageWithSize:{82.0, 82.0}];
  if (!v36)
  {
    v4 = [MEMORY[0x277D75DA0] _applicationKeyWindow];
    v5 = [v4 effectiveUserInterfaceLayoutDirection];

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
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 scale];
    v13 = [v9 scopeWithPointSize:v5 == 1 scale:0 rightToLeft:82.0 style:{82.0, v12}];

    v14 = objc_alloc_init(MEMORY[0x277CBDA58]);
    v47[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    v36 = [v8 avatarImageForContacts:v15 scope:v13];
  }

  v16 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v36];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [(WDBuddyFlowUserInfoViewController *)self headerView];
  v18 = [v17 customIconContainerView];
  [v18 addSubview:v16];

  v19 = [(WDBuddyFlowUserInfoViewController *)self headerView];
  v20 = [v19 customIconContainerView];

  v30 = MEMORY[0x277CCAAD0];
  v34 = [v16 centerXAnchor];
  v33 = [v20 centerXAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v46[0] = v32;
  v21 = [v16 centerYAnchor];
  v22 = [v20 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v46[1] = v23;
  v24 = [v16 widthAnchor];
  v25 = [v24 constraintEqualToConstant:82.0];
  v46[2] = v25;
  v26 = [v16 heightAnchor];
  v27 = [v26 constraintEqualToConstant:82.0];
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

- (void)_saveDataWithCompletion:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
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

- (void)dataEntryItemDonePressed:(id)a3
{
  v3 = [(WDBuddyFlowUserInfoViewController *)self view];
  [v3 endEditing:0];
}

- (void)dataEntryItemPrevPressed:(id)a3
{
  v4 = [(NSArray *)self->_dataEntryItems indexOfObject:a3];
  if (v4 <= 0)
  {
    v4 = [(NSArray *)self->_dataEntryItems count];
  }

  [(WDBuddyFlowUserInfoViewController *)self focusItemAtIndex:v4 - 1];
}

- (void)dataEntryItemNextPressed:(id)a3
{
  v4 = [(NSArray *)self->_dataEntryItems indexOfObject:a3];
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

- (void)focusItemAtIndex:(int64_t)a3
{
  v7 = [(NSArray *)self->_dataEntryItems objectAtIndexedSubscript:?];
  [v7 beginEditing];
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:0];
  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 scrollToRowAtIndexPath:v5 atScrollPosition:3 animated:1];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(WDBuddyFlowUserInfoViewController *)self dataEntryItems:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(WDBuddyFlowUserInfoViewController *)self dataEntryItems];
  v7 = [v5 row];

  v8 = [v6 objectAtIndex:v7];

  v9 = [v8 cell];
  v10 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v9 setBackgroundColor:v10];

  v16[0] = self->_baseAutomationIdentifier;
  v11 = [v8 accessibilityIdentifier];
  v16[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v13 = HKUIJoinStringsForAutomationIdentifier();
  [v9 setAccessibilityIdentifier:v13];

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [(WDBuddyFlowUserInfoViewController *)self dataEntryItems];
  v8 = [v6 row];

  v9 = [v7 objectAtIndex:v8];

  [v9 beginEditing];
}

- (WDBuddyControllerUserInfoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end