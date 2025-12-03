@interface HKOrganDonationRegisterViewController
- (BOOL)_registrantIsUnderAge;
- (HKOrganDonationRegisterViewController)init;
- (NSArray)dataEntryItems;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_createTableFooterView;
- (id)_createTableHeaderView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_handleAppWillEnterForegroundNotification:(id)notification;
- (void)_handleResponse:(id)response status:(int64_t)status;
- (void)_loadRegistrantInformationIfAvailableAndSetupRegisterView;
- (void)_reloadRegistrantInformationFromServer;
- (void)_setupRegisterViewWithDefaultDemographicsInformation;
- (void)_setupRegisterViewWithRegistrant:(id)registrant demographicsInformation:(id)information;
- (void)_toggleLoadingStatusIsLoading:(BOOL)loading;
- (void)_toggleNextButtonEnabledState;
- (void)cancelButtonTapped:(id)tapped;
- (void)dataEntryItemDonePressed:(id)pressed;
- (void)dataEntryItemNextPressed:(id)pressed;
- (void)dataEntryItemPrevPressed:(id)pressed;
- (void)dealloc;
- (void)focusItemAtIndex:(int64_t)index;
- (void)nextButtonTapped:(id)tapped;
- (void)organDonationConnectionManagerDidRemoveCredential:(id)credential;
- (void)organDonationConnectionManagerDidStoreCredential:(id)credential;
- (void)submitOrganDonationFlowImpressionEvent:(int)event;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateButtonTapped:(id)tapped;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];

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
  navigationController = [(HKOrganDonationRegisterViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  firstObject = [viewControllers firstObject];

  if (firstObject == self)
  {
    navigationItem = [(HKOrganDonationRegisterViewController *)self navigationItem];
    v18 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
    [navigationItem setLeftBarButtonItem:v18];
  }

  tableView = [(HKOrganDonationRegisterViewController *)self tableView];
  [tableView setKeyboardDismissMode:2];

  tableView2 = [(HKOrganDonationRegisterViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

  [(HKOrganDonationRegisterViewController *)self setModalInPresentation:1];
  [(HKOrganDonationRegisterViewController *)self _loadRegistrantInformationIfAvailableAndSetupRegisterView];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleAppWillEnterForegroundNotification_ name:*MEMORY[0x1E69DDBC0] object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = HKOrganDonationRegisterViewController;
  [(HKOrganDonationRegisterViewController *)&v6 viewWillAppear:appear];
  navigationController = [(HKOrganDonationRegisterViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar _setHidesShadow:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HKOrganDonationRegisterViewController;
  [(HKOrganDonationRegisterViewController *)&v5 viewWillDisappear:disappear];
  view = [(HKOrganDonationRegisterViewController *)self view];
  [view endEditing:0];
}

- (id)_createTableHeaderView
{
  view = [(HKOrganDonationRegisterViewController *)self view];
  UIRoundToViewScale();
  v5 = v4;

  tableView = [(HKOrganDonationRegisterViewController *)self tableView];
  [tableView frame];
  Width = CGRectGetWidth(v23);

  v8 = [[HKTitledLogoBuddyHeaderView alloc] initWithTopInset:0 linkButtonTitle:v5];
  widthAnchor = [(HKTitledLogoBuddyHeaderView *)v8 widthAnchor];
  v10 = [widthAnchor constraintEqualToConstant:Width];
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
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(HKTitledLogoBuddyHeaderView *)v8 setBackgroundColor:secondarySystemBackgroundColor];

  return v8;
}

- (id)_createTableFooterView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  view = [(HKOrganDonationRegisterViewController *)self view];
  [view frame];
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

- (void)_setupRegisterViewWithRegistrant:(id)registrant demographicsInformation:(id)information
{
  registrantCopy = registrant;
  self->_isUpdate = 1;
  if (!registrantCopy)
  {
    self->_isUpdate = 0;
    registrantCopy = [HKOrganDonationRegistrant organDonationRegistrantWithDemographicsInformation:information];
  }

  dataEntryItems = self->_dataEntryItems;
  self->_dataEntryItems = 0;

  registrant = self->_registrant;
  self->_registrant = registrantCopy;
  v9 = registrantCopy;

  [(HKOrganDonationRegistrant *)self->_registrant setDelegate:self];
  [(HKOrganDonationRegisterViewController *)self _toggleLoadingStatusIsLoading:0];
  _createTableHeaderView = [(HKOrganDonationRegisterViewController *)self _createTableHeaderView];
  headerView = self->_headerView;
  self->_headerView = _createTableHeaderView;

  _createTableFooterView = [(HKOrganDonationRegisterViewController *)self _createTableFooterView];
  footerView = self->_footerView;
  self->_footerView = _createTableFooterView;

  [(HKOrganDonationRegisterViewController *)self _toggleNextButtonEnabledState];
  tableView = [(HKOrganDonationRegisterViewController *)self tableView];
  [tableView reloadData];
}

- (void)_toggleLoadingStatusIsLoading:(BOOL)loading
{
  loadingCopy = loading;
  self->_isLoading = loading;
  if (loading)
  {
    navigationItem = [(HKOrganDonationRegisterViewController *)self navigationItem];
    p_loadingIndicatorBarButtonItem = &self->_loadingIndicatorBarButtonItem;
    [navigationItem setRightBarButtonItem:self->_loadingIndicatorBarButtonItem];

    [(UIActivityIndicatorView *)self->_loadingIndicator startAnimating];
  }

  else
  {
    if (+[HKOrganDonationConnectionManager hasStoredRegistrant])
    {
      navigationItem2 = [(HKOrganDonationRegisterViewController *)self navigationItem];
      [navigationItem2 setRightBarButtonItem:self->_updateBarButtonItem];
    }

    [(UIActivityIndicatorView *)self->_loadingIndicator stopAnimating];
    p_loadingIndicatorBarButtonItem = &self->_loadingIndicatorBarButtonItem;
  }

  [(UIBarButtonItem *)*p_loadingIndicatorBarButtonItem setHidden:!loadingCopy];

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

- (void)_handleResponse:(id)response status:(int64_t)status
{
  responseCopy = response;
  [(HKOrganDonationRegisterViewController *)self _toggleLoadingStatusIsLoading:0];
  if (status > 2)
  {
    if (status == 3)
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
      if (status != 4)
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
    if ((status - 1) < 2)
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

    if (!status)
    {
      v12 = [HKOrganDonationRegistrant organDonationRegistrantWithJSONDictionary:responseCopy];
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

- (void)_handleAppWillEnterForegroundNotification:(id)notification
{
  if (+[HKOrganDonationConnectionManager hasStoredRegistrant])
  {
    [(HKOrganDonationRegisterViewController *)self _toggleLoadingStatusIsLoading:1];

    [(HKOrganDonationRegisterViewController *)self _reloadRegistrantInformationFromServer];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v12.receiver = self;
  v12.super_class = HKOrganDonationRegisterViewController;
  [(HKOrganDonationRegisterViewController *)&v12 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKOrganDonationRegisterViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

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

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 1;
  }

  dataEntryItems = [(HKOrganDonationRegisterViewController *)self dataEntryItems];
  v6 = [dataEntryItems count];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == 2)
  {
    v11 = [viewCopy dequeueReusableCellWithIdentifier:@"Cell"];
    [v11 setAccessoryType:1];
    textLabel = [v11 textLabel];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = v12;
    v14 = @"OD_REMOVE_FROM_REGISTRY";
  }

  else
  {
    if (section != 1)
    {
      if (section)
      {
        v16 = objc_opt_class();
        textLabel = NSStringFromClass(v16);
        HKErrorTableViewCell(textLabel);
      }

      else
      {
        dataEntryItems = [(HKOrganDonationRegisterViewController *)self dataEntryItems];
        textLabel = [dataEntryItems objectAtIndex:{objc_msgSend(pathCopy, "row")}];

        [textLabel cell];
      }
      v11 = ;
      goto LABEL_10;
    }

    v11 = [viewCopy dequeueReusableCellWithIdentifier:@"Cell"];
    [v11 setAccessoryType:0];
    textLabel = [v11 textLabel];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = v12;
    v14 = @"OD_EDIT_PREFERENCE";
  }

  v15 = [v12 localizedStringForKey:v14 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [textLabel setText:v15];

LABEL_10:

  return v11;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  isUpdate = self->_isUpdate;
  bodyFont = self->_bodyFont;
  v6 = 60.0;
  if (isUpdate)
  {
    v6 = 56.0;
  }

  [(UIFont *)bodyFont _scaledValueForValue:view, path, v6];
  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  section = [pathCopy section];
  if (section == 2)
  {
    v10 = [HKOrganDonationConfirmDeleteViewController alloc];
    connectionManager = self->_connectionManager;
    medicalIDData = [(HKOrganDonationRegisterViewController *)self medicalIDData];
    v9 = [(HKOrganDonationConfirmDeleteViewController *)v10 initWithConnectionManager:connectionManager medicalIDData:medicalIDData];

    registrationCompletionHandler = [(HKOrganDonationRegisterViewController *)self registrationCompletionHandler];
    [(HKOrganDonationBaseViewController *)v9 setRegistrationCompletionHandler:registrationCompletionHandler];

    completionButtonTitle = [(HKOrganDonationRegisterViewController *)self completionButtonTitle];
    [(HKOrganDonationBaseViewController *)v9 setCompletionButtonTitle:completionButtonTitle];

    navigationController = [(HKOrganDonationRegisterViewController *)self navigationController];
    [navigationController pushViewController:v9 animated:1];
  }

  else
  {
    if (section == 1)
    {
      [(HKOrganDonationConnectionManager *)self->_connectionManager openRegisterMeSiteInSafariIfAuthenticated];
      goto LABEL_8;
    }

    if (section)
    {
      goto LABEL_8;
    }

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    dataEntryItems = [(HKOrganDonationRegisterViewController *)self dataEntryItems];
    v9 = [dataEntryItems objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    [(HKOrganDonationConfirmDeleteViewController *)v9 beginEditing];
  }

LABEL_8:
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if (section)
  {
    return 5.0;
  }

  [(UIView *)self->_headerView frame:view];

  return CGRectGetHeight(*&v7);
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v5 = 0;
  }

  else
  {
    v5 = self->_headerView;
  }

  return v5;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  if (self->_isUpdate)
  {
    return 5.0;
  }

  [(UIView *)self->_footerView frame:view];

  return CGRectGetHeight(*&v7);
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
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

- (void)dataEntryItemDonePressed:(id)pressed
{
  view = [(HKOrganDonationRegisterViewController *)self view];
  [view endEditing:0];
}

- (void)dataEntryItemPrevPressed:(id)pressed
{
  v4 = [(NSArray *)self->_dataEntryItems indexOfObject:pressed];
  if (v4 <= 0)
  {
    v4 = [(NSArray *)self->_dataEntryItems count];
  }

  [(HKOrganDonationRegisterViewController *)self focusItemAtIndex:v4 - 1];
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

  [(HKOrganDonationRegisterViewController *)self focusItemAtIndex:v5];
}

- (void)focusItemAtIndex:(int64_t)index
{
  v7 = [(NSArray *)self->_dataEntryItems objectAtIndexedSubscript:?];
  [v7 beginEditing];
  v5 = [MEMORY[0x1E696AC88] indexPathForRow:index inSection:0];
  tableView = [(HKOrganDonationRegisterViewController *)self tableView];
  [tableView scrollToRowAtIndexPath:v5 atScrollPosition:3 animated:1];
}

- (void)nextButtonTapped:(id)tapped
{
  view = [(HKOrganDonationRegisterViewController *)self view];
  [view endEditing:0];

  if ([(HKOrganDonationRegisterViewController *)self _registrantIsUnderAge])
  {
    v5 = [HKOrganDonationUnderageViewController alloc];
    medicalIDData = [(HKOrganDonationRegisterViewController *)self medicalIDData];
    v7 = [(HKOrganDonationBaseViewController *)v5 initWithMedicalIDData:medicalIDData];
  }

  else
  {
    v8 = [HKOrganDonationConfirmationViewController alloc];
    registrant = self->_registrant;
    medicalIDData = [(HKOrganDonationRegisterViewController *)self medicalIDData];
    v7 = [(HKOrganDonationConfirmationViewController *)v8 initWithRegistrant:registrant medicalIDData:medicalIDData connectionManager:self->_connectionManager];
  }

  v12 = v7;

  completionButtonTitle = [(HKOrganDonationRegisterViewController *)self completionButtonTitle];
  [v12 setCompletionButtonTitle:completionButtonTitle];

  [v12 setRegistrationCompletionHandler:self->_registrationCompletionHandler];
  navigationController = [(HKOrganDonationRegisterViewController *)self navigationController];
  [navigationController pushViewController:v12 animated:1];
}

- (void)cancelButtonTapped:(id)tapped
{
  registrationCompletionHandler = self->_registrationCompletionHandler;
  if (registrationCompletionHandler)
  {
    registrationCompletionHandler[2](registrationCompletionHandler, 0, tapped);
  }

  [(HKOrganDonationRegisterViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)updateButtonTapped:(id)tapped
{
  v4 = [HKOrganDonationConfirmUpdateViewController alloc];
  registrant = self->_registrant;
  medicalIDData = [(HKOrganDonationRegisterViewController *)self medicalIDData];
  v8 = [(HKOrganDonationConfirmUpdateViewController *)v4 initWithRegistrant:registrant medicalIDData:medicalIDData connectionManager:self->_connectionManager];

  [(HKOrganDonationBaseViewController *)v8 setRegistrationCompletionHandler:self->_registrationCompletionHandler];
  navigationController = [(HKOrganDonationRegisterViewController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];
}

- (void)organDonationConnectionManagerDidStoreCredential:(id)credential
{
  [(_HKMedicalIDData *)self->_medicalIDData setIsOrganDonor:&unk_1F4383E98];
  healthStore = self->_healthStore;
  medicalIDData = self->_medicalIDData;

  [(HKHealthStore *)healthStore updateMedicalIDData:medicalIDData];
}

- (void)organDonationConnectionManagerDidRemoveCredential:(id)credential
{
  [(_HKMedicalIDData *)self->_medicalIDData setIsOrganDonor:0];
  healthStore = self->_healthStore;
  medicalIDData = self->_medicalIDData;

  [(HKHealthStore *)healthStore updateMedicalIDData:medicalIDData];
}

- (void)submitOrganDonationFlowImpressionEvent:(int)event
{
  v4 = [[HKOrganDonationFlowImpressionAnalyticEvent alloc] initWithImpressionEvent:*&event];
  analyticsEventSubmissionManager = [(HKOrganDonationConnectionManager *)self->_connectionManager analyticsEventSubmissionManager];
  v6 = 0;
  [analyticsEventSubmissionManager submitEvent:v4 error:&v6];
}

@end