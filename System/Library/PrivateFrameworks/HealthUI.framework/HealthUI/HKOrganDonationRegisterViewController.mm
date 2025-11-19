@interface HKOrganDonationRegisterViewController
- (BOOL)_registrantIsUnderAge;
- (HKOrganDonationRegisterViewController)init;
- (NSArray)dataEntryItems;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_createTableFooterView;
- (id)_createTableHeaderView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_handleAppWillEnterForegroundNotification:(id)a3;
- (void)_handleResponse:(id)a3 status:(int64_t)a4;
- (void)_loadRegistrantInformationIfAvailableAndSetupRegisterView;
- (void)_reloadRegistrantInformationFromServer;
- (void)_setupRegisterViewWithDefaultDemographicsInformation;
- (void)_setupRegisterViewWithRegistrant:(id)a3 demographicsInformation:(id)a4;
- (void)_toggleLoadingStatusIsLoading:(BOOL)a3;
- (void)_toggleNextButtonEnabledState;
- (void)cancelButtonTapped:(id)a3;
- (void)dataEntryItemDonePressed:(id)a3;
- (void)dataEntryItemNextPressed:(id)a3;
- (void)dataEntryItemPrevPressed:(id)a3;
- (void)dealloc;
- (void)focusItemAtIndex:(int64_t)a3;
- (void)nextButtonTapped:(id)a3;
- (void)organDonationConnectionManagerDidRemoveCredential:(id)a3;
- (void)organDonationConnectionManagerDidStoreCredential:(id)a3;
- (void)submitOrganDonationFlowImpressionEvent:(int)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateButtonTapped:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HKOrganDonationRegisterViewController

- (HKOrganDonationRegisterViewController)init
{
  v8.receiver = self;
  v8.super_class = HKOrganDonationRegisterViewController;
  v2 = [(HKOrganDonationRegisterViewController *)&v8 initWithStyle:2];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696C1C0]);
    healthStore = v2->_healthStore;
    v2->_healthStore = v3;

    v5 = [[HKOrganDonationConnectionManager alloc] initWithHealthStore:v2->_healthStore];
    connectionManager = v2->_connectionManager;
    v2->_connectionManager = v5;

    [(HKOrganDonationConnectionManager *)v2->_connectionManager setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];

  [(HKOrganDonationConnectionManager *)self->_connectionManager cleanUp];
  v4.receiver = self;
  v4.super_class = HKOrganDonationRegisterViewController;
  [(HKOrganDonationRegisterViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = HKOrganDonationRegisterViewController;
  [(HKOrganDonationRegisterViewController *)&v22 viewDidLoad];
  v3 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  bodyFont = self->_bodyFont;
  self->_bodyFont = v3;

  v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  loadingIndicator = self->_loadingIndicator;
  self->_loadingIndicator = v5;

  [(UIActivityIndicatorView *)self->_loadingIndicator setHidesWhenStopped:1];
  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_loadingIndicator];
  loadingIndicatorBarButtonItem = self->_loadingIndicatorBarButtonItem;
  self->_loadingIndicatorBarButtonItem = v7;

  [(UIBarButtonItem *)self->_loadingIndicatorBarButtonItem setHidden:1];
  v9 = objc_alloc(MEMORY[0x1E69DC708]);
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"OD_UPDATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v12 = [v9 initWithTitle:v11 style:0 target:self action:sel_updateButtonTapped_];
  updateBarButtonItem = self->_updateBarButtonItem;
  self->_updateBarButtonItem = v12;

  [(UIBarButtonItem *)self->_updateBarButtonItem setEnabled:0];
  v14 = [(HKOrganDonationRegisterViewController *)self navigationController];
  v15 = [v14 viewControllers];
  v16 = [v15 firstObject];

  if (v16 == self)
  {
    v17 = [(HKOrganDonationRegisterViewController *)self navigationItem];
    v18 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
    [v17 setLeftBarButtonItem:v18];
  }

  v19 = [(HKOrganDonationRegisterViewController *)self tableView];
  [v19 setKeyboardDismissMode:2];

  v20 = [(HKOrganDonationRegisterViewController *)self tableView];
  [v20 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

  [(HKOrganDonationRegisterViewController *)self setModalInPresentation:1];
  [(HKOrganDonationRegisterViewController *)self _loadRegistrantInformationIfAvailableAndSetupRegisterView];
  v21 = [MEMORY[0x1E696AD88] defaultCenter];
  [v21 addObserver:self selector:sel__handleAppWillEnterForegroundNotification_ name:*MEMORY[0x1E69DDBC0] object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = HKOrganDonationRegisterViewController;
  [(HKOrganDonationRegisterViewController *)&v6 viewWillAppear:a3];
  v4 = [(HKOrganDonationRegisterViewController *)self navigationController];
  v5 = [v4 navigationBar];
  [v5 _setHidesShadow:1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HKOrganDonationRegisterViewController;
  [(HKOrganDonationRegisterViewController *)&v5 viewWillDisappear:a3];
  v4 = [(HKOrganDonationRegisterViewController *)self view];
  [v4 endEditing:0];
}

- (id)_createTableHeaderView
{
  v3 = [(HKOrganDonationRegisterViewController *)self view];
  UIRoundToViewScale();
  v5 = v4;

  v6 = [(HKOrganDonationRegisterViewController *)self tableView];
  [v6 frame];
  Width = CGRectGetWidth(v23);

  v8 = [[HKTitledLogoBuddyHeaderView alloc] initWithTopInset:0 linkButtonTitle:v5];
  v9 = [(HKTitledLogoBuddyHeaderView *)v8 widthAnchor];
  v10 = [v9 constraintEqualToConstant:Width];
  [v10 setActive:1];

  v11 = MEMORY[0x1E69DCAB8];
  v12 = HKHealthUIFrameworkBundle();
  v13 = [v11 imageNamed:@"donate_life_logo" inBundle:v12];
  [(HKTitledLogoBuddyHeaderView *)v8 setLogoImage:v13];

  LODWORD(v13) = +[HKOrganDonationConnectionManager hasStoredRegistrant];
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = v14;
  if (v13)
  {
    v16 = @"OD_CHANGE_DELETE";
  }

  else
  {
    v16 = @"OD_REGISTER_MY_INFO";
  }

  v17 = [v14 localizedStringForKey:v16 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(HKTitledBuddyHeaderView *)v8 setTitleText:v17];

  if (!self->_isUpdate)
  {
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:@"OD_PERSONAL_INFO_BODY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(HKTitledBuddyHeaderView *)v8 setBodyText:v19];
  }

  [(HKTitledLogoBuddyHeaderView *)v8 layoutIfNeeded];
  v20 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(HKTitledLogoBuddyHeaderView *)v8 setBackgroundColor:v20];

  return v8;
}

- (id)_createTableFooterView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v4 = [(HKOrganDonationRegisterViewController *)self view];
  [v4 frame];
  Width = CGRectGetWidth(v19);

  v6 = MEMORY[0x1E69DC738];
  v7 = HKHealthKeyColor();
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"OD_REGISTER_CONTINUE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v10 = [v6 hk_multiLineRoundRectButtonTintedWithColor:v7 title:v9 target:self action:sel_nextButtonTapped_];
  continueButton = self->_continueButton;
  self->_continueButton = v10;

  [v3 addSubview:self->_continueButton];
  v12 = [v3 hk_addEqualsConstraintWithItem:self->_continueButton attribute:9 relatedTo:v3 constant:0.0];
  v13 = [v3 hk_addEqualsConstraintWithItem:self->_continueButton attribute:3 relatedTo:v3 attribute:3 constant:32.0];
  v14 = [v3 hk_addEqualsConstraintWithItem:self->_continueButton attribute:4 relatedTo:v3 attribute:4 constant:-24.0];
  [v3 systemLayoutSizeFittingSize:{Width, 1.79769313e308}];
  [v3 setFrame:{0.0, 0.0, v15, v16}];

  return v3;
}

- (void)_setupRegisterViewWithRegistrant:(id)a3 demographicsInformation:(id)a4
{
  v6 = a3;
  self->_isUpdate = 1;
  if (!v6)
  {
    self->_isUpdate = 0;
    v6 = [HKOrganDonationRegistrant organDonationRegistrantWithDemographicsInformation:a4];
  }

  dataEntryItems = self->_dataEntryItems;
  self->_dataEntryItems = 0;

  registrant = self->_registrant;
  self->_registrant = v6;
  v9 = v6;

  [(HKOrganDonationRegistrant *)self->_registrant setDelegate:self];
  [(HKOrganDonationRegisterViewController *)self _toggleLoadingStatusIsLoading:0];
  v10 = [(HKOrganDonationRegisterViewController *)self _createTableHeaderView];
  headerView = self->_headerView;
  self->_headerView = v10;

  v12 = [(HKOrganDonationRegisterViewController *)self _createTableFooterView];
  footerView = self->_footerView;
  self->_footerView = v12;

  [(HKOrganDonationRegisterViewController *)self _toggleNextButtonEnabledState];
  v14 = [(HKOrganDonationRegisterViewController *)self tableView];
  [v14 reloadData];
}

- (void)_toggleLoadingStatusIsLoading:(BOOL)a3
{
  v3 = a3;
  self->_isLoading = a3;
  if (a3)
  {
    v5 = [(HKOrganDonationRegisterViewController *)self navigationItem];
    p_loadingIndicatorBarButtonItem = &self->_loadingIndicatorBarButtonItem;
    [v5 setRightBarButtonItem:self->_loadingIndicatorBarButtonItem];

    [(UIActivityIndicatorView *)self->_loadingIndicator startAnimating];
  }

  else
  {
    if (+[HKOrganDonationConnectionManager hasStoredRegistrant])
    {
      v7 = [(HKOrganDonationRegisterViewController *)self navigationItem];
      [v7 setRightBarButtonItem:self->_updateBarButtonItem];
    }

    [(UIActivityIndicatorView *)self->_loadingIndicator stopAnimating];
    p_loadingIndicatorBarButtonItem = &self->_loadingIndicatorBarButtonItem;
  }

  [(UIBarButtonItem *)*p_loadingIndicatorBarButtonItem setHidden:!v3];

  [(HKOrganDonationRegisterViewController *)self _toggleNextButtonEnabledState];
}

- (void)_loadRegistrantInformationIfAvailableAndSetupRegisterView
{
  [(HKOrganDonationRegisterViewController *)self _toggleLoadingStatusIsLoading:1];
  if (+[HKOrganDonationConnectionManager hasStoredRegistrant])
  {

    [(HKOrganDonationRegisterViewController *)self _reloadRegistrantInformationFromServer];
  }

  else
  {

    [(HKOrganDonationRegisterViewController *)self _setupRegisterViewWithDefaultDemographicsInformation];
  }
}

- (void)_handleResponse:(id)a3 status:(int64_t)a4
{
  v6 = a3;
  [(HKOrganDonationRegisterViewController *)self _toggleLoadingStatusIsLoading:0];
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v27 = MEMORY[0x1E69DC650];
      v28 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v29 = [v28 localizedStringForKey:@"OD_NO_NETWORK_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v31 = [v30 localizedStringForKey:@"OD_NO_NETWORK_BODY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v12 = [v27 alertControllerWithTitle:v29 message:v31 preferredStyle:1];

      objc_initWeak(&location, self);
      v32 = MEMORY[0x1E69DC648];
      v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v24 = [v23 localizedStringForKey:@"OD_ALERT_OK" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v25 = v35;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __64__HKOrganDonationRegisterViewController__handleResponse_status___block_invoke;
      v35[3] = &unk_1E81B9428;
      objc_copyWeak(&v36, &location);
      v26 = [v32 actionWithTitle:v24 style:0 handler:v35];
      [v12 addAction:v26];
    }

    else
    {
      if (a4 != 4)
      {
        goto LABEL_14;
      }

      v17 = MEMORY[0x1E69DC650];
      v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v19 = [v18 localizedStringForKey:@"OD_GENERIC_FAILURE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v21 = [v20 localizedStringForKey:@"OD_GENERIC_FAILURE_BODY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v12 = [v17 alertControllerWithTitle:v19 message:v21 preferredStyle:1];

      objc_initWeak(&location, self);
      v22 = MEMORY[0x1E69DC648];
      v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v24 = [v23 localizedStringForKey:@"OD_ALERT_OK" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v25 = v33;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __64__HKOrganDonationRegisterViewController__handleResponse_status___block_invoke_2;
      v33[3] = &unk_1E81B9428;
      objc_copyWeak(&v34, &location);
      v26 = [v22 actionWithTitle:v24 style:0 handler:v33];
      [v12 addAction:v26];
    }

    objc_destroyWeak(v25 + 4);
    objc_destroyWeak(&location);
    if (v12)
    {
LABEL_12:
      [(HKOrganDonationRegisterViewController *)self presentViewController:v12 animated:1 completion:0];
      goto LABEL_13;
    }
  }

  else
  {
    if ((a4 - 1) < 2)
    {
      v7 = MEMORY[0x1E69DC650];
      v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v9 = [v8 localizedStringForKey:@"OD_INVALID_TOKEN_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v11 = [v10 localizedStringForKey:@"OD_INVALID_TOKEN_BODY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v12 = [v7 alertControllerWithTitle:v9 message:v11 preferredStyle:1];

      v13 = MEMORY[0x1E69DC648];
      v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v15 = [v14 localizedStringForKey:@"OD_ALERT_OK" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v16 = [v13 actionWithTitle:v15 style:0 handler:0];
      [v12 addAction:v16];

      [(HKOrganDonationRegisterViewController *)self _setupRegisterViewWithDefaultDemographicsInformation];
      if (!v12)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    if (!a4)
    {
      v12 = [HKOrganDonationRegistrant organDonationRegistrantWithJSONDictionary:v6];
      [(HKOrganDonationRegisterViewController *)self _setupRegisterViewWithRegistrant:v12];
LABEL_13:
    }
  }

LABEL_14:
}

void __64__HKOrganDonationRegisterViewController__handleResponse_status___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
    WeakRetained = v2;
  }
}

void __64__HKOrganDonationRegisterViewController__handleResponse_status___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
    WeakRetained = v2;
  }
}

- (void)_setupRegisterViewWithDefaultDemographicsInformation
{
  healthStore = self->_healthStore;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __93__HKOrganDonationRegisterViewController__setupRegisterViewWithDefaultDemographicsInformation__block_invoke;
  v3[3] = &unk_1E81B9450;
  v3[4] = self;
  [(HKHealthStore *)healthStore hk_fetchExistingDemographicInformationWithCompletion:v3];
}

- (NSArray)dataEntryItems
{
  v17 = *MEMORY[0x1E69E9840];
  dataEntryItems = self->_dataEntryItems;
  if (!dataEntryItems)
  {
    dataEntryItems = self->_registrant;
    if (dataEntryItems)
    {
      v4 = [dataEntryItems dataEntryItemsValidOnly:0];
      v5 = self->_dataEntryItems;
      self->_dataEntryItems = v4;

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = self->_dataEntryItems;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v12 + 1) + 8 * i) setToolbarDelegate:{self, v12}];
          }

          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }

      dataEntryItems = self->_dataEntryItems;
    }
  }

  return dataEntryItems;
}

- (void)_toggleNextButtonEnabledState
{
  if (self->_isUpdate)
  {
    updateBarButtonItem = self->_updateBarButtonItem;
    v4 = [(HKOrganDonationRegistrant *)self->_registrant hasEdits]&& [(HKOrganDonationRegistrant *)self->_registrant isRegistrantValid]&& !self->_isLoading;

    [(UIBarButtonItem *)updateBarButtonItem setEnabled:v4];
  }

  else
  {
    v5 = ([(HKOrganDonationRegisterViewController *)self _registrantIsUnderAge]|| [(HKOrganDonationRegistrant *)self->_registrant isRegistrantValid]) && !self->_isLoading;
    [(UIButton *)self->_continueButton setEnabled:v5];
    continueButton = self->_continueButton;
    if (v5)
    {
      HKHealthKeyColor();
    }

    else
    {
      [MEMORY[0x1E69DC888] hk_appInteractionDisabledColor];
    }
    v7 = ;
    [(UIButton *)continueButton setBackgroundColor:v7];
  }
}

- (BOOL)_registrantIsUnderAge
{
  v2 = [(HKOrganDonationRegistrant *)self->_registrant age];
  v3 = [v2 compare:&unk_1F4383E80] == -1;

  return v3;
}

- (void)_reloadRegistrantInformationFromServer
{
  objc_initWeak(&location, self);
  connectionManager = self->_connectionManager;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__HKOrganDonationRegisterViewController__reloadRegistrantInformationFromServer__block_invoke;
  v4[3] = &unk_1E81B9478;
  objc_copyWeak(&v5, &location);
  [(HKOrganDonationConnectionManager *)connectionManager reloadRegistrantWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __79__HKOrganDonationRegisterViewController__reloadRegistrantInformationFromServer__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleResponse:v7 status:a3];
  }
}

- (void)_handleAppWillEnterForegroundNotification:(id)a3
{
  if (+[HKOrganDonationConnectionManager hasStoredRegistrant])
  {
    [(HKOrganDonationRegisterViewController *)self _toggleLoadingStatusIsLoading:1];

    [(HKOrganDonationRegisterViewController *)self _reloadRegistrantInformationFromServer];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKOrganDonationRegisterViewController;
  [(HKOrganDonationRegisterViewController *)&v12 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKOrganDonationRegisterViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      bodyFont = self->_bodyFont;
      self->_bodyFont = v9;

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__HKOrganDonationRegisterViewController_traitCollectionDidChange___block_invoke;
      block[3] = &unk_1E81B55A8;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __66__HKOrganDonationRegisterViewController_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = 3;
  if (self->_isLoading)
  {
    v3 = 0;
  }

  if (self->_isUpdate)
  {
    return v3;
  }

  else
  {
    return !self->_isLoading;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  v5 = [(HKOrganDonationRegisterViewController *)self dataEntryItems];
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == 2)
  {
    v11 = [v6 dequeueReusableCellWithIdentifier:@"Cell"];
    [v11 setAccessoryType:1];
    v10 = [v11 textLabel];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = v12;
    v14 = @"OD_REMOVE_FROM_REGISTRY";
  }

  else
  {
    if (v8 != 1)
    {
      if (v8)
      {
        v16 = objc_opt_class();
        v10 = NSStringFromClass(v16);
        HKErrorTableViewCell(v10);
      }

      else
      {
        v9 = [(HKOrganDonationRegisterViewController *)self dataEntryItems];
        v10 = [v9 objectAtIndex:{objc_msgSend(v7, "row")}];

        [v10 cell];
      }
      v11 = ;
      goto LABEL_10;
    }

    v11 = [v6 dequeueReusableCellWithIdentifier:@"Cell"];
    [v11 setAccessoryType:0];
    v10 = [v11 textLabel];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = v12;
    v14 = @"OD_EDIT_PREFERENCE";
  }

  v15 = [v12 localizedStringForKey:v14 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v10 setText:v15];

LABEL_10:

  return v11;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  isUpdate = self->_isUpdate;
  bodyFont = self->_bodyFont;
  v6 = 60.0;
  if (isUpdate)
  {
    v6 = 56.0;
  }

  [(UIFont *)bodyFont _scaledValueForValue:a3, a4, v6];
  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16 = a3;
  v6 = a4;
  [v16 deselectRowAtIndexPath:v6 animated:1];
  v7 = [v6 section];
  if (v7 == 2)
  {
    v10 = [HKOrganDonationConfirmDeleteViewController alloc];
    connectionManager = self->_connectionManager;
    v12 = [(HKOrganDonationRegisterViewController *)self medicalIDData];
    v9 = [(HKOrganDonationConfirmDeleteViewController *)v10 initWithConnectionManager:connectionManager medicalIDData:v12];

    v13 = [(HKOrganDonationRegisterViewController *)self registrationCompletionHandler];
    [(HKOrganDonationBaseViewController *)v9 setRegistrationCompletionHandler:v13];

    v14 = [(HKOrganDonationRegisterViewController *)self completionButtonTitle];
    [(HKOrganDonationBaseViewController *)v9 setCompletionButtonTitle:v14];

    v15 = [(HKOrganDonationRegisterViewController *)self navigationController];
    [v15 pushViewController:v9 animated:1];
  }

  else
  {
    if (v7 == 1)
    {
      [(HKOrganDonationConnectionManager *)self->_connectionManager openRegisterMeSiteInSafariIfAuthenticated];
      goto LABEL_8;
    }

    if (v7)
    {
      goto LABEL_8;
    }

    [v16 deselectRowAtIndexPath:v6 animated:1];
    v8 = [(HKOrganDonationRegisterViewController *)self dataEntryItems];
    v9 = [v8 objectAtIndex:{objc_msgSend(v6, "row")}];

    [(HKOrganDonationConfirmDeleteViewController *)v9 beginEditing];
  }

LABEL_8:
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    return 5.0;
  }

  [(UIView *)self->_headerView frame:a3];

  return CGRectGetHeight(*&v7);
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    v5 = 0;
  }

  else
  {
    v5 = self->_headerView;
  }

  return v5;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  if (self->_isUpdate)
  {
    return 5.0;
  }

  [(UIView *)self->_footerView frame:a3];

  return CGRectGetHeight(*&v7);
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if (self->_isUpdate)
  {
    v5 = 0;
  }

  else
  {
    v5 = self->_footerView;
  }

  return v5;
}

- (void)dataEntryItemDonePressed:(id)a3
{
  v3 = [(HKOrganDonationRegisterViewController *)self view];
  [v3 endEditing:0];
}

- (void)dataEntryItemPrevPressed:(id)a3
{
  v4 = [(NSArray *)self->_dataEntryItems indexOfObject:a3];
  if (v4 <= 0)
  {
    v4 = [(NSArray *)self->_dataEntryItems count];
  }

  [(HKOrganDonationRegisterViewController *)self focusItemAtIndex:v4 - 1];
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

  [(HKOrganDonationRegisterViewController *)self focusItemAtIndex:v5];
}

- (void)focusItemAtIndex:(int64_t)a3
{
  v7 = [(NSArray *)self->_dataEntryItems objectAtIndexedSubscript:?];
  [v7 beginEditing];
  v5 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:0];
  v6 = [(HKOrganDonationRegisterViewController *)self tableView];
  [v6 scrollToRowAtIndexPath:v5 atScrollPosition:3 animated:1];
}

- (void)nextButtonTapped:(id)a3
{
  v4 = [(HKOrganDonationRegisterViewController *)self view];
  [v4 endEditing:0];

  if ([(HKOrganDonationRegisterViewController *)self _registrantIsUnderAge])
  {
    v5 = [HKOrganDonationUnderageViewController alloc];
    v6 = [(HKOrganDonationRegisterViewController *)self medicalIDData];
    v7 = [(HKOrganDonationBaseViewController *)v5 initWithMedicalIDData:v6];
  }

  else
  {
    v8 = [HKOrganDonationConfirmationViewController alloc];
    registrant = self->_registrant;
    v6 = [(HKOrganDonationRegisterViewController *)self medicalIDData];
    v7 = [(HKOrganDonationConfirmationViewController *)v8 initWithRegistrant:registrant medicalIDData:v6 connectionManager:self->_connectionManager];
  }

  v12 = v7;

  v10 = [(HKOrganDonationRegisterViewController *)self completionButtonTitle];
  [v12 setCompletionButtonTitle:v10];

  [v12 setRegistrationCompletionHandler:self->_registrationCompletionHandler];
  v11 = [(HKOrganDonationRegisterViewController *)self navigationController];
  [v11 pushViewController:v12 animated:1];
}

- (void)cancelButtonTapped:(id)a3
{
  registrationCompletionHandler = self->_registrationCompletionHandler;
  if (registrationCompletionHandler)
  {
    registrationCompletionHandler[2](registrationCompletionHandler, 0, a3);
  }

  [(HKOrganDonationRegisterViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)updateButtonTapped:(id)a3
{
  v4 = [HKOrganDonationConfirmUpdateViewController alloc];
  registrant = self->_registrant;
  v6 = [(HKOrganDonationRegisterViewController *)self medicalIDData];
  v8 = [(HKOrganDonationConfirmUpdateViewController *)v4 initWithRegistrant:registrant medicalIDData:v6 connectionManager:self->_connectionManager];

  [(HKOrganDonationBaseViewController *)v8 setRegistrationCompletionHandler:self->_registrationCompletionHandler];
  v7 = [(HKOrganDonationRegisterViewController *)self navigationController];
  [v7 pushViewController:v8 animated:1];
}

- (void)organDonationConnectionManagerDidStoreCredential:(id)a3
{
  [(_HKMedicalIDData *)self->_medicalIDData setIsOrganDonor:&unk_1F4383E98];
  healthStore = self->_healthStore;
  medicalIDData = self->_medicalIDData;

  [(HKHealthStore *)healthStore updateMedicalIDData:medicalIDData];
}

- (void)organDonationConnectionManagerDidRemoveCredential:(id)a3
{
  [(_HKMedicalIDData *)self->_medicalIDData setIsOrganDonor:0];
  healthStore = self->_healthStore;
  medicalIDData = self->_medicalIDData;

  [(HKHealthStore *)healthStore updateMedicalIDData:medicalIDData];
}

- (void)submitOrganDonationFlowImpressionEvent:(int)a3
{
  v4 = [[HKOrganDonationFlowImpressionAnalyticEvent alloc] initWithImpressionEvent:*&a3];
  v5 = [(HKOrganDonationConnectionManager *)self->_connectionManager analyticsEventSubmissionManager];
  v6 = 0;
  [v5 submitEvent:v4 error:&v6];
}

@end