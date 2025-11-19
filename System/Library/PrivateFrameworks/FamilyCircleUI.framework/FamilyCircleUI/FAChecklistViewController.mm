@interface FAChecklistViewController
- (FAChecklistViewController)initWithAccountManager:(id)a3 familyCircle:(id)a4 profilePictureStore:(id)a5 checklistStore:(id)a6;
- (FAChecklistViewControllerDelegate)delegate;
- (id)_childCommunicationLimitsForContactManagement:(id)a3;
- (id)_childContactsRecord:(id)a3;
- (id)_childPresetSpecifiers:(id)a3;
- (id)_childrenRecord;
- (id)_custodianContactSpecifiers;
- (id)_getOrganizer;
- (id)_icloudPlusSpecifiers:(id)a3;
- (id)_locationSpecifiersWithSharedCount:(unint64_t)a3;
- (id)_medicalSpecifiersWithMedicalIDData;
- (id)specifiers;
- (int)_contactsStatusForChild:(id)a3;
- (void)_checkAndReloadAllSpecifiers;
- (void)_checklistHeaderView;
- (void)_dismissMedicalID;
- (void)_fetchCommunicationLimitsModifiedDate:(id)a3 completionHandler:(id)a4;
- (void)_fetchPresetsForChild:(id)a3 andCompletionHandler:(id)a4;
- (void)_fetchScreenTimeModifiedDate:(id)a3 completionHandler:(id)a4;
- (void)_manageChildContactsWasTapped:(id)a3;
- (void)_reviewPresetsWasTapped:(id)a3;
- (void)_setupCustodianTapped:(id)a3;
- (void)_setupIcloudPlusWasTapped:(id)a3;
- (void)_setupNavigationBarTitleView;
- (void)_shareMyLocationButtonWasTapped:(id)a3;
- (void)_updateCommunicationLimitsSpecifierThen:(id)a3;
- (void)_updateCustodianSpecifierThen:(id)a3;
- (void)_updateICloudPlusSpecifierThen:(id)a3;
- (void)_updateLocationSpecifierThen:(id)a3;
- (void)_updateMedicalIDButtonWasTapped:(id)a3;
- (void)_updateMedicalSpecifierThen:(id)a3;
- (void)_updateScreenTimeSpecifierThen:(id)a3;
- (void)custodianSetupFlowControllerDidFinish:(id)a3;
- (void)doneButtonTapped:(id)a3;
- (void)emergencyContactFlow:(id)a3 didSelectContact:(id)a4;
- (void)loadView;
- (void)reloadSpecifiers;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation FAChecklistViewController

- (FAChecklistViewController)initWithAccountManager:(id)a3 familyCircle:(id)a4 profilePictureStore:(id)a5 checklistStore:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v69.receiver = self;
  v69.super_class = FAChecklistViewController;
  v15 = [(FAChecklistViewController *)&v69 init];
  if (v15)
  {
    v68 = v14;
    v75 = 0;
    v76 = &v75;
    v77 = 0x2050000000;
    v16 = getHKHealthStoreClass_softClass_2;
    v78 = getHKHealthStoreClass_softClass_2;
    if (!getHKHealthStoreClass_softClass_2)
    {
      v70 = MEMORY[0x277D85DD0];
      v71 = 3221225472;
      v72 = __getHKHealthStoreClass_block_invoke_2;
      v73 = &unk_2782F2988;
      v74 = &v75;
      __getHKHealthStoreClass_block_invoke_2(&v70);
      v16 = v76[3];
    }

    v17 = v16;
    _Block_object_dispose(&v75, 8);
    v18 = objc_alloc_init(v16);
    healthStore = v15->_healthStore;
    v15->_healthStore = v18;

    v75 = 0;
    v76 = &v75;
    v77 = 0x2050000000;
    v20 = getHKMedicalIDStoreClass_softClass_2;
    v78 = getHKMedicalIDStoreClass_softClass_2;
    if (!getHKMedicalIDStoreClass_softClass_2)
    {
      v70 = MEMORY[0x277D85DD0];
      v71 = 3221225472;
      v72 = __getHKMedicalIDStoreClass_block_invoke_2;
      v73 = &unk_2782F2988;
      v74 = &v75;
      __getHKMedicalIDStoreClass_block_invoke_2(&v70);
      v20 = v76[3];
    }

    v21 = v20;
    _Block_object_dispose(&v75, 8);
    v22 = [[v20 alloc] initWithHealthStore:v15->_healthStore];
    medicalIDStore = v15->_medicalIDStore;
    v15->_medicalIDStore = v22;

    v75 = 0;
    v76 = &v75;
    v77 = 0x2050000000;
    v24 = get_HKMedicalIDDataClass_softClass_1;
    v78 = get_HKMedicalIDDataClass_softClass_1;
    if (!get_HKMedicalIDDataClass_softClass_1)
    {
      v70 = MEMORY[0x277D85DD0];
      v71 = 3221225472;
      v72 = __get_HKMedicalIDDataClass_block_invoke_1;
      v73 = &unk_2782F2988;
      v74 = &v75;
      __get_HKMedicalIDDataClass_block_invoke_1(&v70);
      v24 = v76[3];
    }

    v25 = v24;
    _Block_object_dispose(&v75, 8);
    v26 = objc_alloc_init(v24);
    medicalIDData = v15->_medicalIDData;
    v15->_medicalIDData = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEA60]);
    currEmergencyContacts = v15->_currEmergencyContacts;
    v15->_currEmergencyContacts = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    childPresetRecord = v15->_childPresetRecord;
    v15->_childPresetRecord = v30;

    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    existingChildPresetRecord = v15->_existingChildPresetRecord;
    v15->_existingChildPresetRecord = v32;

    objc_storeStrong(&v15->_accountManager, a3);
    v34 = objc_alloc_init(MEMORY[0x277CCABD8]);
    networkActivityQueue = v15->_networkActivityQueue;
    v15->_networkActivityQueue = v34;

    [(NSOperationQueue *)v15->_networkActivityQueue setQualityOfService:33];
    v36 = objc_alloc_init(MEMORY[0x277D46220]);
    remoteUIViewController = v15->_remoteUIViewController;
    v15->_remoteUIViewController = v36;

    v38 = [(AIDAAccountManager *)v15->_accountManager accounts];
    v39 = [v38 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];
    appleAccount = v15->_appleAccount;
    v15->_appleAccount = v39;

    v41 = objc_alloc_init(MEMORY[0x277CEC798]);
    custodianController = v15->_custodianController;
    v15->_custodianController = v41;

    v75 = 0;
    v76 = &v75;
    v77 = 0x2050000000;
    v43 = getSTSetupClientClass_softClass_0;
    v78 = getSTSetupClientClass_softClass_0;
    if (!getSTSetupClientClass_softClass_0)
    {
      v70 = MEMORY[0x277D85DD0];
      v71 = 3221225472;
      v72 = __getSTSetupClientClass_block_invoke_0;
      v73 = &unk_2782F2988;
      v74 = &v75;
      __getSTSetupClientClass_block_invoke_0(&v70);
      v43 = v76[3];
    }

    v44 = v43;
    _Block_object_dispose(&v75, 8);
    v45 = objc_opt_new();
    setupClient = v15->_setupClient;
    v15->_setupClient = v45;

    v47 = objc_alloc_init(MEMORY[0x277CBEA60]);
    custodians = v15->_custodians;
    v15->_custodians = v47;

    objc_storeStrong(&v15->_familyCircle, a4);
    objc_storeStrong(&v15->_profilePictureStore, a5);
    objc_storeStrong(&v15->_checklistStore, a6);
    v15->_isMissingParentContact = 0;
    v49 = objc_alloc_init(MEMORY[0x277CBEB98]);
    membersWithLocation = v15->_membersWithLocation;
    v15->_membersWithLocation = v49;

    v51 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    screenTimeModifiedDate = v15->_screenTimeModifiedDate;
    v15->_screenTimeModifiedDate = v51;

    v53 = objc_alloc_init(MEMORY[0x277CBEB38]);
    screenTimeModifiedRecord = v15->_screenTimeModifiedRecord;
    v15->_screenTimeModifiedRecord = v53;

    v55 = objc_alloc_init(MEMORY[0x277CBEB38]);
    commLimitsModifiedRecord = v15->_commLimitsModifiedRecord;
    v15->_commLimitsModifiedRecord = v55;

    v57 = +[_TtC14FamilyCircleUI17LocationViewModel shared];
    locationViewModel = v15->_locationViewModel;
    v15->_locationViewModel = v57;

    v59 = [MEMORY[0x277D75418] currentDevice];
    v15->_deviceType = [v59 userInterfaceIdiom];

    v60 = objc_alloc_init(MEMORY[0x277CBEB38]);
    parentalControlsForChildren = v15->_parentalControlsForChildren;
    v15->_parentalControlsForChildren = v60;

    v62 = objc_alloc_init(MEMORY[0x277CBEB38]);
    commLimitsForChildren = v15->_commLimitsForChildren;
    v15->_commLimitsForChildren = v62;

    v64 = [(FAChecklistViewController *)v15 familyCircle];

    v14 = v68;
    if (v64)
    {
      objc_storeStrong(&v15->_familyCircle, a4);
      v65 = +[_TtC14FamilyCircleUI17LocationViewModel createModel];
      v66 = v15->_locationViewModel;
      v15->_locationViewModel = v65;
    }
  }

  return v15;
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = FAChecklistViewController;
  [(FAChecklistViewController *)&v7 loadView];
  v3 = [(FAChecklistViewController *)self _childrenRecord];
  listOfChildren = self->_listOfChildren;
  self->_listOfChildren = v3;

  v5 = [(FAChecklistViewController *)self _getOrganizer];
  organizerName = self->_organizerName;
  self->_organizerName = v5;
}

- (void)viewDidLoad
{
  v37.receiver = self;
  v37.super_class = FAChecklistViewController;
  [(FAChecklistViewController *)&v37 viewDidLoad];
  v3 = +[_TtC14FamilyCircleUI24FamilyChecklistAnalytics shared];
  [v3 sendTotalChecklistViewsAnalyticsEvent];

  self->_isFirstSpecifierLoad = 1;
  +[FATipKitSignaler sendSignalForFamilyChecklistTapped];
  v4 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v4 addObserver:self selector:sel__gotLocationChangedNotification name:*MEMORY[0x277D08110] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"FAChecklistTipUpdateNotification" object:0];

  v6 = [(FAChecklistViewController *)self navigationItem];
  navItem = self->_navItem;
  self->_navItem = v6;

  v8 = objc_alloc(MEMORY[0x277D751E0]);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"DONE" value:&stru_282D9AA68 table:@"Localizable"];
  v11 = [v8 initWithTitle:v10 style:2 target:self action:sel_doneButtonTapped_];

  [(UINavigationItem *)self->_navItem setRightBarButtonItem:v11];
  [(UINavigationItem *)self->_navItem setLeftBarButtonItem:0];
  [(UINavigationItem *)self->_navItem setLargeTitleDisplayMode:2];
  self->_isNavigationTitleViewDisplayed = 0;
  [(FAChecklistViewController *)self _setupNavigationBarTitleView];
  v12 = [_TtC14FamilyCircleUI34FASwiftUIHostingControllerProvider getCheckListControllerWithSpecifiers:self->_specifiers];
  checklistHostController = self->_checklistHostController;
  self->_checklistHostController = v12;

  [(FAChecklistViewController *)self addChildViewController:self->_checklistHostController];
  v14 = [(FAChecklistViewController *)self view];
  v15 = [(FACheckListHostControllerProtocol *)self->_checklistHostController view];
  [v14 addSubview:v15];

  v16 = [(FACheckListHostControllerProtocol *)self->_checklistHostController view];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [(FACheckListHostControllerProtocol *)self->_checklistHostController view];
  v18 = [v17 topAnchor];
  v19 = [(FAChecklistViewController *)self view];
  v20 = [v19 topAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [(FACheckListHostControllerProtocol *)self->_checklistHostController view];
  v23 = [v22 leadingAnchor];
  v24 = [(FAChecklistViewController *)self view];
  v25 = [v24 leadingAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  [v26 setActive:1];

  v27 = [(FACheckListHostControllerProtocol *)self->_checklistHostController view];
  v28 = [v27 trailingAnchor];
  v29 = [(FAChecklistViewController *)self view];
  v30 = [v29 trailingAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  [v31 setActive:1];

  v32 = [(FACheckListHostControllerProtocol *)self->_checklistHostController view];
  v33 = [v32 bottomAnchor];
  v34 = [(FAChecklistViewController *)self view];
  v35 = [v34 bottomAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  [v36 setActive:1];

  [(FACheckListHostControllerProtocol *)self->_checklistHostController didMoveToParentViewController:self];
}

- (void)_setupNavigationBarTitleView
{
  v3 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 100.0, 20.0}];
  navigationBarTitleLabel = self->_navigationBarTitleLabel;
  self->_navigationBarTitleLabel = v3;

  v5 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74420]];
  [(UILabel *)self->_navigationBarTitleLabel setFont:v5];

  [(UILabel *)self->_navigationBarTitleLabel setTextAlignment:1];
  v6 = self->_navigationBarTitleLabel;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"FAMILY_CHECKLIST" value:&stru_282D9AA68 table:@"Localizable"];
  [(UILabel *)v6 setText:v8];

  v9 = self->_navigationBarTitleLabel;

  [(UILabel *)v9 setAlpha:0.0];
}

- (void)doneButtonTapped:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__FAChecklistViewController_doneButtonTapped___block_invoke;
  block[3] = &unk_2782F29E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__FAChecklistViewController_doneButtonTapped___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2 && (v3 = v2, [*(a1 + 32) delegate], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, v3, (v5 & 1) != 0))
  {
    v7 = [*(a1 + 32) delegate];
    v6 = [*(a1 + 32) navigationController];
    [v7 checklistViewControllerDone:v6];
  }

  else
  {
    v7 = [*(a1 + 32) navigationController];
    [v7 dismissViewControllerAnimated:1 completion:&__block_literal_global_20];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = FAChecklistViewController;
  [(FAChecklistViewController *)&v4 viewWillAppear:1];
  [(FAChecklistViewController *)self _checkAndReloadAllSpecifiers];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = FAChecklistViewController;
  [(FAChecklistViewController *)&v3 viewDidAppear:1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = FAChecklistViewController;
  [(FAChecklistViewController *)&v3 viewWillDisappear:1];
}

- (void)_checkAndReloadAllSpecifiers
{
  if (!self->_isFirstSpecifierLoad)
  {
    v3 = [(FAChecklistViewController *)self checklistStore];
    [v3 clearChecklistCounts];
  }

  self->_isFirstSpecifierLoad = 0;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__FAChecklistViewController__checkAndReloadAllSpecifiers__block_invoke;
  v15[3] = &unk_2782F2AF8;
  v15[4] = self;
  v5 = v4;
  v16 = v5;
  [(FAChecklistViewController *)self _updateLocationSpecifierThen:v15];
  if (!self->_deviceType)
  {
    dispatch_group_enter(v5);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__FAChecklistViewController__checkAndReloadAllSpecifiers__block_invoke_3;
    v13[3] = &unk_2782F29E8;
    v14 = v5;
    [(FAChecklistViewController *)self _updateMedicalSpecifierThen:v13];
  }

  dispatch_group_enter(v5);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__FAChecklistViewController__checkAndReloadAllSpecifiers__block_invoke_4;
  v11[3] = &unk_2782F29E8;
  v6 = v5;
  v12 = v6;
  [(FAChecklistViewController *)self _updateCustodianSpecifierThen:v11];
  dispatch_group_enter(v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__FAChecklistViewController__checkAndReloadAllSpecifiers__block_invoke_5;
  v9[3] = &unk_2782F29E8;
  v10 = v6;
  v7 = v6;
  [(FAChecklistViewController *)self _updateCommunicationLimitsSpecifierThen:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__FAChecklistViewController__checkAndReloadAllSpecifiers__block_invoke_6;
  v8[3] = &unk_2782F29E8;
  v8[4] = self;
  dispatch_group_notify(v7, MEMORY[0x277D85CD0], v8);
}

void __57__FAChecklistViewController__checkAndReloadAllSpecifiers__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __57__FAChecklistViewController__checkAndReloadAllSpecifiers__block_invoke_2;
  v2[3] = &unk_2782F29E8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _updateScreenTimeSpecifierThen:v2];
}

void __57__FAChecklistViewController__checkAndReloadAllSpecifiers__block_invoke_6(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) reloadSpecifiers];
  v2 = [*(a1 + 32) checklistStore];
  [v2 notifyObservable];

  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) checklistStore];
    v5 = [v4 incompleteItems];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_21BB35000, v3, OS_LOG_TYPE_DEFAULT, "FAChecklistViewController _checkAndReloadAllSpecifiers end count %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateLocationSpecifierThen:(id)a3
{
  v4 = a3;
  v5 = [(FAChecklistViewController *)self checklistStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__FAChecklistViewController__updateLocationSpecifierThen___block_invoke;
  v7[3] = &unk_2782F41E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 familyLocationSharingStatus:v7];
}

void __58__FAChecklistViewController__updateLocationSpecifierThen___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__FAChecklistViewController__updateLocationSpecifierThen___block_invoke_2;
  v8[3] = &unk_2782F41C0;
  v11 = a2;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t __58__FAChecklistViewController__updateLocationSpecifierThen___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1008) = *(a1 + 56);
  objc_storeStrong((*(a1 + 32) + 1160), *(a1 + 40));
  v2 = [*(a1 + 32) checklistStore];
  [v2 setIncompleteCountFor:2 count:*(a1 + 56) == 0];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)_updateMedicalSpecifierThen:(id)a3
{
  v4 = a3;
  v5 = [(FAChecklistViewController *)self checklistStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__FAChecklistViewController__updateMedicalSpecifierThen___block_invoke;
  v7[3] = &unk_2782F4210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchMedicalIDData:v7];
}

void __57__FAChecklistViewController__updateMedicalSpecifierThen___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  objc_storeStrong((*(a1 + 32) + 1024), a2);
  v10 = a2;
  v6 = [v10 emergencyContacts];
  v7 = *(a1 + 32);
  v8 = *(v7 + 1032);
  *(v7 + 1032) = v6;

  *(*(a1 + 32) + 1016) = a3;
  v9 = [*(a1 + 32) checklistStore];
  [v9 setIncompleteCountFor:1 count:a3 == 0];

  (*(*(a1 + 40) + 16))();
}

- (void)_updateCustodianSpecifierThen:(id)a3
{
  v4 = a3;
  v5 = [(FAChecklistViewController *)self checklistStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__FAChecklistViewController__updateCustodianSpecifierThen___block_invoke;
  v7[3] = &unk_2782F4238;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchMyCustodians:v7];
}

void __59__FAChecklistViewController__updateCustodianSpecifierThen___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 1144), a2);
  v5 = a2;
  v4 = [*(a1 + 32) checklistStore];
  [v4 setIncompleteCountFor:3 count:{objc_msgSend(v5, "count") == 0}];

  (*(*(a1 + 40) + 16))();
}

- (void)_updateICloudPlusSpecifierThen:(id)a3
{
  v4 = a3;
  v5 = [(FAChecklistViewController *)self checklistStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__FAChecklistViewController__updateICloudPlusSpecifierThen___block_invoke;
  v7[3] = &unk_2782F3DC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchIcloudPlusMembership:v7];
}

void __60__FAChecklistViewController__updateICloudPlusSpecifierThen___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__FAChecklistViewController__updateICloudPlusSpecifierThen___block_invoke_2;
  block[3] = &unk_2782F4260;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = a2;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __60__FAChecklistViewController__updateICloudPlusSpecifierThen___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) checklistStore];
  [v3 setCountMembersIcloudPlus:v2];

  if ([*(*(a1 + 32) + 1104) aa_isCloudSubscriber])
  {
    v4 = *(a1 + 48) == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) checklistStore];
  [v5 setIncompleteCountFor:6 count:v4];

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (void)_updateScreenTimeSpecifierThen:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_listOfChildren;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    LODWORD(v7) = 0;
    v23 = *v29;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        dispatch_group_enter(v4);
        v10 = [(FAChecklistViewController *)self checklistStore];
        if ([v10 screenTimeEnabledForChild:v9] & 1) != 0 || (objc_msgSend(v9, "hasAskToBuyEnabled"))
        {
          v11 = 1;
        }

        else if ([(NSSet *)self->_membersWithLocation count])
        {
          membersWithLocation = self->_membersWithLocation;
          v16 = [v9 appleID];
          v11 = [(NSSet *)membersWithLocation containsObject:v16];
        }

        else
        {
          v11 = 0;
        }

        parentalControlsForChildren = self->_parentalControlsForChildren;
        v13 = [MEMORY[0x277CCABB0] numberWithBool:v11 & 1];
        v14 = [v9 appleID];
        [(NSMutableDictionary *)parentalControlsForChildren setObject:v13 forKey:v14];

        v7 = v7 + ((v11 & 1) == 0);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __60__FAChecklistViewController__updateScreenTimeSpecifierThen___block_invoke;
        v26[3] = &unk_2782F4288;
        v26[4] = self;
        v26[5] = v9;
        v27 = v4;
        [(FAChecklistViewController *)self _fetchScreenTimeModifiedDate:v9 completionHandler:v26];

        ++v8;
      }

      while (v6 != v8);
      v17 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      v6 = v17;
    }

    while (v17);
  }

  else
  {
    v7 = 0;
  }

  v18 = [(FAChecklistViewController *)self checklistStore];
  [v18 setIncompleteCountFor:4 count:v7];

  dispatch_group_leave(v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__FAChecklistViewController__updateScreenTimeSpecifierThen___block_invoke_2;
  block[3] = &unk_2782F3088;
  block[4] = self;
  v25 = v21;
  v19 = v21;
  dispatch_group_notify(v4, MEMORY[0x277D85CD0], block);

  v20 = *MEMORY[0x277D85DE8];
}

void __60__FAChecklistViewController__updateScreenTimeSpecifierThen___block_invoke(void *a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = a1[5];
    v5 = *(a1[4] + 1208);
    v6 = a2;
    v7 = [v4 dsid];
    [v5 setObject:v6 forKey:v7];
  }

  v8 = a1[6];

  dispatch_group_leave(v8);
}

uint64_t __60__FAChecklistViewController__updateScreenTimeSpecifierThen___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 1208) count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = *(*(a1 + 32) + 1208);
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = [*(*(a1 + 32) + 1208) objectForKey:{*(*(&v11 + 1) + 8 * i), v11}];
          v8 = v7;
          if (v7 && ([v7 isEqualToDate:*(*(a1 + 32) + 1192)] & 1) == 0)
          {
            objc_storeStrong((*(a1 + 32) + 1192), v8);
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_updateCommunicationLimitsSpecifierThen:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_listOfChildren;
  v28 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  v5 = 0;
  if (v28)
  {
    v6 = *v34;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        dispatch_group_enter(v4);
        v9 = [(FAChecklistViewController *)self checklistStore];
        v10 = [v9 contactManagementEnabledForChild:v8];

        v11 = [(FAChecklistViewController *)self checklistStore];
        v12 = [v11 screenTimeEnabledForChild:v8];

        v13 = [(FAChecklistViewController *)self checklistStore];
        v14 = [v13 screenTimeEnabledForChild:v8];

        if (v14)
        {
          commLimitsForChildren = self->_commLimitsForChildren;
          v15 = [MEMORY[0x277CCABB0] numberWithBool:v10 == 0];
          [v8 appleID];
          v16 = v12;
          v17 = self;
          v18 = v4;
          v20 = v19 = v6;
          [(NSMutableDictionary *)commLimitsForChildren setObject:v15 forKey:v20];

          v6 = v19;
          v4 = v18;
          self = v17;
          v12 = v16;
        }

        if (v10)
        {
          v21 = 0;
        }

        else
        {
          v21 = v12;
        }

        v5 = (v5 + v21);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __69__FAChecklistViewController__updateCommunicationLimitsSpecifierThen___block_invoke;
        v31[3] = &unk_2782F4288;
        v31[4] = self;
        v31[5] = v8;
        v32 = v4;
        [(FAChecklistViewController *)self _fetchCommunicationLimitsModifiedDate:v8 completionHandler:v31];
      }

      v28 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v28);
  }

  v22 = [(FAChecklistViewController *)self checklistStore];
  [v22 setIncompleteCountFor:5 count:v5];

  dispatch_group_leave(v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__FAChecklistViewController__updateCommunicationLimitsSpecifierThen___block_invoke_2;
  block[3] = &unk_2782F3088;
  block[4] = self;
  v30 = v25;
  v23 = v25;
  dispatch_group_notify(v4, MEMORY[0x277D85CD0], block);

  v24 = *MEMORY[0x277D85DE8];
}

void __69__FAChecklistViewController__updateCommunicationLimitsSpecifierThen___block_invoke(void *a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = a1[5];
    v5 = *(a1[4] + 1216);
    v6 = a2;
    v7 = [v4 dsid];
    [v5 setObject:v6 forKey:v7];
  }

  v8 = a1[6];

  dispatch_group_leave(v8);
}

uint64_t __69__FAChecklistViewController__updateCommunicationLimitsSpecifierThen___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 1216) count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = *(*(a1 + 32) + 1216);
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = [*(*(a1 + 32) + 1216) objectForKey:{*(*(&v11 + 1) + 8 * i), v11}];
          v8 = v7;
          if (v7 && ([v7 isEqualToDate:*(*(a1 + 32) + 1200)] & 1) == 0)
          {
            objc_storeStrong((*(a1 + 32) + 1200), v8);
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_childrenRecord
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(FAChecklistViewController *)self familyCircle];
  v5 = [v4 members];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 memberType] == 1 || objc_msgSend(v10, "memberType") == 2)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_getOrganizer
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [(FAChecklistViewController *)self familyCircle];
  v3 = [v2 members];

  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 isOrganizer])
        {
          v11 = [v10 firstName];

          v12 = [v10 contact];
          v13 = [v12 givenName];

          v6 = v11;
          v7 = v13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if ([v6 length])
  {
    v14 = v6;
  }

  else
  {
    v14 = v7;
  }

  v15 = v14;

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_checklistHeaderView
{
  v4 = +[_TtC14FamilyCircleUI34FASwiftUIHostingControllerProvider getFamilyChecklistHeaderView];
  v2 = [MEMORY[0x277D75348] clearColor];
  v3 = [v4 view];
  [v3 setBackgroundColor:v2];
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = FAChecklistViewController;
  [(FAChecklistViewController *)&v2 viewWillLayoutSubviews];
}

- (id)_childCommunicationLimitsForContactManagement:(id)a3
{
  v79[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FAMILY_CHECKLIST_COMMUNICATION_LIMITS_CARD" value:&stru_282D9AA68 table:@"Localizable"];
  v8 = [v4 firstName];
  v77 = [v5 localizedStringWithFormat:v7, v8];

  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"FAMILY_CHECKLIST_COMMUNICATION_LIMITS_CARD_SET" value:&stru_282D9AA68 table:@"Localizable"];
  v12 = [v4 firstName];
  v13 = [v9 localizedStringWithFormat:v11, v12];

  v14 = MEMORY[0x277D755B8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v76 = [v14 imageNamed:@"communicationLimitsIcon" inBundle:v15];

  v75 = [MEMORY[0x277CCA968] fa_checklistDateFormatter];
  v65 = [(FAChecklistViewController *)self _contactsStatusForChild:v4];
  v16 = [(FAChecklistViewController *)self checklistStore];
  v70 = [v16 contactManagementEnabledForChild:v4];

  v73 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"commLimits"];
  v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v77 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v74 = v13;
  v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v19 = *MEMORY[0x277D76F30];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
  v21 = *MEMORY[0x277D40140];
  [v17 setProperty:v20 forKey:*MEMORY[0x277D40140]];

  v22 = *MEMORY[0x277D40170];
  [v17 setProperty:v77 forKey:*MEMORY[0x277D40170]];
  v23 = *MEMORY[0x277D40160];
  [v17 setProperty:0 forKey:*MEMORY[0x277D40160]];
  v24 = *MEMORY[0x277D3FFC0];
  v72 = v17;
  [v17 setProperty:v76 forKey:*MEMORY[0x277D3FFC0]];
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
  v68 = v21;
  [v18 setProperty:v25 forKey:v21];

  v66 = v22;
  v26 = v22;
  v27 = v23;
  v28 = v18;
  [v18 setProperty:v77 forKey:v26];
  [v18 setProperty:0 forKey:v27];
  [v18 setProperty:v76 forKey:v24];
  commLimitsModifiedRecord = self->_commLimitsModifiedRecord;
  v30 = [v4 dsid];
  v31 = [(NSMutableDictionary *)commLimitsModifiedRecord objectForKeyedSubscript:v30];

  switch(v70)
  {
    case 2:
      v67 = v27;
      if (!v31)
      {
LABEL_13:
        v43 = 0;
        v71 = 0;
        goto LABEL_14;
      }

      v48 = MEMORY[0x277CCACA8];
      v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v46 = [v45 localizedStringForKey:@"FAMILY_CHECKLIST_SECTION_UPDATED_DATE" value:&stru_282D9AA68 table:@"Localizable"];
      v47 = [v75 stringFromDate:v31];
      v43 = [v48 localizedStringWithFormat:v46, v47];
      v71 = 0;
      break;
    case 1:
      v67 = v27;
      v39 = MEMORY[0x277CCACA8];
      v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:@"FAMILY_CHECKLIST_COMMUNICATION_SUBTITLE_PENDING" value:&stru_282D9AA68 table:@"Localizable"];
      v42 = [v4 firstName];
      v43 = [v39 localizedStringWithFormat:v41, v42];

      v44 = MEMORY[0x277CCACA8];
      v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v46 = [v45 localizedStringForKey:@"FAMILY_CHECKLIST_COMMUNICATION_LIMITS_SETUP_APPROVAL" value:&stru_282D9AA68 table:@"Localizable"];
      v47 = [v4 firstName];
      v71 = [v44 localizedStringWithFormat:v46, v47];
      break;
    case 0:
      v69 = v31;
      v32 = MEMORY[0x277CCACA8];
      v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"FAMILY_CHECKLIST_COMMUNICATION_LIMIT_DESCRIPTION" value:&stru_282D9AA68 table:@"Localizable"];
      v35 = [v4 firstName];
      v36 = [v32 localizedStringWithFormat:v34, v35];

      v37 = @"FAMILY_CHECKLIST_COMMUNICATION_LIMITS_SETUP";
      if (v65 == 2)
      {
        v38 = v72;
      }

      else
      {
        v38 = v72;
        if (v65 != 4)
        {
          if (v65 != 5)
          {
            v58 = 0;
            goto LABEL_20;
          }

          v37 = @"FAMILY_CHECKLIST_COMMUNICATION_LIMITS_SETUP_APPROVAL";
        }
      }

      v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v58 = [v57 localizedStringForKey:v37 value:&stru_282D9AA68 table:@"Localizable"];

LABEL_20:
      v59 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v58 target:self set:0 get:0 detail:0 cell:13 edit:0];
      v60 = objc_opt_class();
      v61 = *MEMORY[0x277D3FE58];
      [v38 setProperty:v60 forKey:*MEMORY[0x277D3FE58]];
      [v38 setProperty:v36 forKey:v27];
      [v59 setProperty:&unk_282DC0798 forKey:*MEMORY[0x277D3FD78]];
      v62 = [v4 dsid];
      [v59 setProperty:v62 forKey:@"childDsidKey"];

      v71 = v58;
      [v59 setProperty:v58 forKey:v66];
      [v59 setProperty:objc_opt_class() forKey:v61];
      [v59 setButtonAction:sel__manageChildContactsWasTapped_];
      v55 = v73;
      v79[0] = v73;
      v79[1] = v38;
      v79[2] = v59;
      v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:3];

      v43 = 0;
      v31 = v69;
      goto LABEL_21;
    default:
      v67 = v27;
      goto LABEL_13;
  }

LABEL_14:
  v49 = MEMORY[0x277CCACA8];
  v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v51 = [v50 localizedStringForKey:@"FAMILY_CHECKLIST_COMMUNICATION_LIMIT_DESCRIPTION_SETUP" value:&stru_282D9AA68 table:@"Localizable"];
  v52 = [v4 firstName];
  v36 = [v49 localizedStringWithFormat:v51, v52];

  [v28 setCellType:1];
  v53 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
  [v28 setProperty:v53 forKey:v68];

  [v28 setProperty:v36 forKey:v67];
  if (v43)
  {
    [v28 setProperty:v43 forKey:*MEMORY[0x277D3FFA8]];
  }

  [v28 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v54 = [v4 dsid];
  [v28 setProperty:v54 forKey:@"childDsidKey"];

  [v28 setButtonAction:sel__manageChildContactsWasTapped_];
  v55 = v73;
  v78[0] = v73;
  v78[1] = v28;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
  v38 = v72;
LABEL_21:

  v63 = *MEMORY[0x277D85DE8];

  return v56;
}

- (id)_locationSpecifiersWithSharedCount:(unint64_t)a3
{
  v46[2] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v44 = [v5 localizedStringForKey:@"FAMILY_CHECKLIST_LOCATION_CARD" value:&stru_282D9AA68 table:@"Localizable"];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FAMILY_CHECKLIST_LOCATION_SET" value:&stru_282D9AA68 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"FAMILY_CHECKLIST_LOCATION_SETUP" value:&stru_282D9AA68 table:@"Localizable"];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"FAMILY_CHECKLIST_LOCATION_SHARING_INFO" value:&stru_282D9AA68 table:@"Localizable"];
  v13 = [(FAChecklistViewController *)self familyCircle];
  v14 = [v13 members];
  v41 = [v10 localizedStringWithFormat:v12, a3, objc_msgSend(v14, "count") - 1];

  v15 = MEMORY[0x277D755B8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v15 imageNamed:@"fmfNewIcon" inBundle:v16];

  v40 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"location"];
  v42 = v9;
  v38 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v44 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v43 = v7;
  v19 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v20 = *MEMORY[0x277D40170];
  [v18 setProperty:v44 forKey:*MEMORY[0x277D40170]];
  v21 = *MEMORY[0x277D3FFC0];
  v39 = v17;
  [v18 setProperty:v17 forKey:*MEMORY[0x277D3FFC0]];
  v22 = objc_opt_class();
  v23 = *MEMORY[0x277D3FE58];
  [v18 setProperty:v22 forKey:*MEMORY[0x277D3FE58]];
  countMembersWithLocation = self->_countMembersWithLocation;
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = v25;
  if (countMembersWithLocation)
  {
    v27 = [v25 localizedStringForKey:@"FAMILY_CHECKLIST_LOCATION_CARD_DESCRIPTION_SET" value:&stru_282D9AA68 table:@"Localizable"];

    v28 = v44;
    [v19 setProperty:v44 forKey:v20];
    v29 = v39;
    [v19 setProperty:v39 forKey:v21];
    [v19 setProperty:objc_opt_class() forKey:v23];
    [v19 setCellType:1];
    v30 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
    [v19 setProperty:v30 forKey:*MEMORY[0x277D40140]];

    [v19 setButtonAction:sel__shareMyLocationButtonWasTapped_];
    v31 = v41;
    [v19 setProperty:v41 forKey:*MEMORY[0x277D3FFA8]];
    [v19 setProperty:v27 forKey:*MEMORY[0x277D40160]];
    v32 = v40;
    v46[0] = v40;
    v46[1] = v19;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    v34 = v42;
    v35 = v38;
  }

  else
  {
    v27 = [v25 localizedStringForKey:@"FAMILY_CHECKLIST_LOCATION_CARD_DESCRIPTION" value:&stru_282D9AA68 table:@"Localizable"];

    [v18 setProperty:v27 forKey:*MEMORY[0x277D40160]];
    v34 = v42;
    [v18 setProperty:v42 forKey:*MEMORY[0x277D3FE10]];
    v35 = v38;
    [v38 setProperty:&unk_282DC0798 forKey:*MEMORY[0x277D3FD78]];
    [v38 setProperty:v42 forKey:v20];
    [v38 setProperty:objc_opt_class() forKey:v23];
    [v38 setButtonAction:sel__shareMyLocationButtonWasTapped_];
    v32 = v40;
    v45[0] = v40;
    v45[1] = v18;
    v45[2] = v38;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
    v28 = v44;
    v31 = v41;
    v29 = v39;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)_medicalSpecifiersWithMedicalIDData
{
  v48[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v37 = [v3 localizedStringForKey:@"FAMILY_CHECKLIST_MEDICAL_CARD" value:&stru_282D9AA68 table:@"Localizable"];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FAMILY_CHECKLIST_MEDICAL_SET" value:&stru_282D9AA68 table:@"Localizable"];

  v6 = [MEMORY[0x277CCA968] fa_checklistDateFormatter];
  v7 = [(_HKMedicalIDData *)self->_medicalIDData emergencyContactsModifiedDate];
  medicalIDData = self->_medicalIDData;
  if (v7)
  {
    [(_HKMedicalIDData *)medicalIDData emergencyContactsModifiedDate];
  }

  else
  {
    [(_HKMedicalIDData *)medicalIDData dateSaved];
  }
  v9 = ;

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"FAMILY_CHECKLIST_SECTION_UPDATED_DATE" value:&stru_282D9AA68 table:@"Localizable"];
  v43 = v9;
  v44 = v6;
  v13 = [v6 stringFromDate:v9];
  v42 = [v10 localizedStringWithFormat:v12, v13];

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"FAMILY_CHECKLIST_MEDICAL_SETUP" value:&stru_282D9AA68 table:@"Localizable"];

  v41 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:35.0];
  v16 = [MEMORY[0x277D755B8] systemImageNamed:@"staroflife.fill" withConfiguration:?];
  v17 = [MEMORY[0x277D75348] systemRedColor];
  v18 = [v16 imageWithTintColor:v17 renderingMode:1];

  v38 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"medical"];
  v19 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v37 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v45 = v5;
  v20 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v40 = v15;
  v46 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v21 = *MEMORY[0x277D40170];
  [v19 setProperty:v37 forKey:*MEMORY[0x277D40170]];
  v22 = *MEMORY[0x277D3FFC0];
  v39 = v18;
  [v19 setProperty:v18 forKey:*MEMORY[0x277D3FFC0]];
  v23 = objc_opt_class();
  v24 = *MEMORY[0x277D3FE58];
  [v19 setProperty:v23 forKey:*MEMORY[0x277D3FE58]];
  countEmergencyContacts = self->_countEmergencyContacts;
  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = v26;
  if (countEmergencyContacts)
  {
    v28 = [v26 localizedStringForKey:@"FAMILY_CHECKLIST_MEDICAL_CARD_DESCRIPTION_SET" value:&stru_282D9AA68 table:@"Localizable"];

    [v20 setProperty:v37 forKey:v21];
    v29 = v39;
    [v20 setProperty:v39 forKey:v22];
    [v20 setProperty:objc_opt_class() forKey:v24];
    [v20 setCellType:1];
    v30 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
    [v20 setProperty:v30 forKey:*MEMORY[0x277D40140]];

    [v20 setButtonAction:sel__updateMedicalIDButtonWasTapped_];
    v31 = v42;
    [v20 setProperty:v42 forKey:*MEMORY[0x277D3FFA8]];
    [v20 setProperty:v28 forKey:*MEMORY[0x277D40160]];
    v32 = v38;
    v48[0] = v38;
    v48[1] = v20;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
    v34 = v40;
  }

  else
  {
    v28 = [v26 localizedStringForKey:@"FAMILY_CHECKLIST_MEDICAL_CARD_DESCRIPTION_NOT_SET" value:&stru_282D9AA68 table:@"Localizable"];

    [v19 setProperty:v28 forKey:*MEMORY[0x277D40160]];
    [v46 setProperty:&unk_282DC0798 forKey:*MEMORY[0x277D3FD78]];
    [v46 setProperty:v40 forKey:v21];
    [v46 setProperty:objc_opt_class() forKey:v24];
    [v46 setButtonAction:sel__updateMedicalIDButtonWasTapped_];
    v32 = v38;
    v47[0] = v38;
    v47[1] = v19;
    v47[2] = v46;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
    v31 = v42;
    v34 = v40;
    v29 = v39;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)_childPresetSpecifiers:(id)a3
{
  v89[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FAMILY_CHECKLIST_CHILD_CARD" value:&stru_282D9AA68 table:@"Localizable"];
  v8 = [v4 firstName];
  v9 = [v5 localizedStringWithFormat:v7, v8];

  v10 = v9;
  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"FAMILY_CHECKLIST_CHILD_CARD_REVIEW" value:&stru_282D9AA68 table:@"Localizable"];
  v14 = [v11 localizedStringWithFormat:v13];

  v81 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"children"];
  v15 = [v4 dsid];
  v80 = [v15 stringValue];

  v16 = [(FAChecklistViewController *)self profilePictureStore];
  v17 = [v16 profilePictureForFamilyMember:v4 pictureDiameter:40.0];

  v18 = MEMORY[0x277D755B8];
  v19 = [MEMORY[0x277D759A0] mainScreen];
  [v19 scale];
  v79 = v17;
  v85 = [v18 imageWithData:v17 scale:?];

  v20 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v82 = v14;
  v78 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v21 = [MEMORY[0x277CCA968] fa_checklistDateFormatter];
  v22 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v22 setMonth:-6];
  v23 = objc_alloc(MEMORY[0x277CBEA80]);
  v24 = [v23 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v25 = [MEMORY[0x277CBEAA8] date];
  v75 = v24;
  v76 = v22;
  v84 = [v24 dateByAddingComponents:v22 toDate:v25 options:0];

  screenTimeModifiedRecord = self->_screenTimeModifiedRecord;
  v27 = [v4 dsid];
  v28 = [(NSMutableDictionary *)screenTimeModifiedRecord objectForKeyedSubscript:v27];

  v86 = v28;
  v77 = v21;
  if (v28)
  {
    v29 = MEMORY[0x277CCACA8];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v30 localizedStringForKey:@"FAMILY_CHECKLIST_SECTION_UPDATED_DATE" value:&stru_282D9AA68 table:@"Localizable"];
    v32 = v31 = v10;
    v33 = [v21 stringFromDate:v86];
    v83 = [v29 localizedStringWithFormat:v32, v33];

    v10 = v31;
    v28 = v86;
  }

  else
  {
    v83 = 0;
  }

  v74 = *MEMORY[0x277D40170];
  [v20 setProperty:v10 forKey:?];
  v34 = *MEMORY[0x277D3FFC0];
  [v20 setProperty:v85 forKey:*MEMORY[0x277D3FFC0]];
  v35 = objc_opt_class();
  v36 = *MEMORY[0x277D3FE58];
  [v20 setProperty:v35 forKey:*MEMORY[0x277D3FE58]];
  if (!v28 || [v28 compare:v84] != -1)
  {
    v37 = [(FAChecklistViewController *)self checklistStore];
    if ([v37 screenTimeEnabledForChild:v4] & 1) != 0 || (objc_msgSend(v4, "hasAskToBuyEnabled"))
    {

LABEL_9:
      v38 = MEMORY[0x277CCACA8];
      v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v40 = [v39 localizedStringForKey:@"FAMILY_CHECKLIST_CHILD_SETUP_DONE" value:&stru_282D9AA68 table:@"Localizable"];
      v41 = [v4 firstName];
      v42 = [v38 stringWithFormat:v40, v41];

      [v20 setCellType:1];
      v43 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
      [v20 setProperty:v43 forKey:*MEMORY[0x277D40140]];

      v44 = v80;
      [v20 setProperty:v80 forKey:@"childDsidKey"];
      v45 = [v4 altDSID];
      [v20 setProperty:v45 forKey:@"childAltDsidKey"];

      v46 = v83;
      if (v83)
      {
        [v20 setProperty:v83 forKey:*MEMORY[0x277D3FFA8]];
      }

      [v20 setProperty:v42 forKey:*MEMORY[0x277D40160]];
      [v20 setButtonAction:sel__reviewPresetsWasTapped_];
      v47 = v81;
      v89[0] = v81;
      v89[1] = v20;
      v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
      v49 = v78;
      goto LABEL_22;
    }

    v73 = v36;
    if ([(NSSet *)self->_membersWithLocation count])
    {
      membersWithLocation = self->_membersWithLocation;
      v60 = [v4 appleID];
      LODWORD(membersWithLocation) = [(NSSet *)membersWithLocation containsObject:v60];

      if (membersWithLocation)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_21:
    v61 = MEMORY[0x277CCACA8];
    v62 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v63 = [v62 localizedStringForKey:@"FAMILY_CHECKLIST_CHILD_CARD_DESCRIPTION_UNSET" value:&stru_282D9AA68 table:@"Localizable"];
    v64 = [v4 firstName];
    v42 = [v61 localizedStringWithFormat:v63, v64];

    v65 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v66 = [v65 localizedStringForKey:@"FAMILY_CHECKLIST_CHILD_SETUP" value:&stru_282D9AA68 table:@"Localizable"];

    v67 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v66 target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v20 setProperty:v42 forKey:*MEMORY[0x277D40160]];
    [v67 setProperty:&unk_282DC0798 forKey:*MEMORY[0x277D3FD78]];
    v44 = v80;
    [v67 setProperty:v80 forKey:@"childDsidKey"];
    v68 = [v4 altDSID];
    [v67 setProperty:v68 forKey:@"childAltDsidKey"];

    [v67 setProperty:v66 forKey:v74];
    [v67 setProperty:objc_opt_class() forKey:v73];
    [v67 setButtonAction:sel__reviewPresetsWasTapped_];
    v47 = v81;
    v87[0] = v81;
    v87[1] = v20;
    v87[2] = v67;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:3];

    v49 = v78;
    v46 = v83;
    goto LABEL_22;
  }

  v73 = v36;
  if ([v28 compare:v84] != -1)
  {
    goto LABEL_21;
  }

  v50 = [(FAChecklistViewController *)self checklistStore];
  v51 = [v50 screenTimeEnabledForChild:v4];

  if (!v51)
  {
    goto LABEL_21;
  }

  v52 = MEMORY[0x277CCACA8];
  v71 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v53 = [v71 localizedStringForKey:@"FAMILY_CHECKLIST_CHILD_CARD_DESCRIPTION_OLD" value:&stru_282D9AA68 table:@"Localizable"];
  v54 = [v4 firstName];
  v42 = [v52 stringWithFormat:v53, v54, objc_msgSend(v4, "age")];

  v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v56 = [v55 localizedStringForKey:@"FAMILY_CHECKLIST_CHILD_SETUP_UPDATE" value:&stru_282D9AA68 table:@"Localizable"];

  v72 = v56;
  v57 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v56 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v49 = v78;
  [v78 setProperty:v10 forKey:v74];
  [v78 setProperty:v85 forKey:v34];
  [v78 setProperty:objc_opt_class() forKey:v73];
  [v78 setProperty:v42 forKey:*MEMORY[0x277D40160]];
  [v78 setIdentifier:@"checkScreenTimeSettings"];
  if (v83)
  {
    [v78 setProperty:v83 forKey:*MEMORY[0x277D3FFA8]];
  }

  [v57 setProperty:&unk_282DC0798 forKey:*MEMORY[0x277D3FD78]];
  v44 = v80;
  [v57 setProperty:v80 forKey:@"childDsidKey"];
  v58 = [v4 altDSID];
  [v57 setProperty:v58 forKey:@"childAltDsidKey"];

  v46 = v83;
  [v57 setProperty:v72 forKey:v74];
  [v57 setProperty:objc_opt_class() forKey:v73];
  [v57 setButtonAction:sel__reviewPresetsWasTapped_];
  v47 = v81;
  v88[0] = v81;
  v88[1] = v78;
  v88[2] = v57;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:3];

LABEL_22:
  v69 = *MEMORY[0x277D85DE8];

  return v48;
}

- (id)_custodianContactSpecifiers
{
  v66[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FAMILY_CHECKLIST_CUSTODIAN_TITLE" value:&stru_282D9AA68 table:@"Localizable"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FAMILY_CHECKLIST_CUSTODIAN_CONTACT_DESCRIPTION" value:&stru_282D9AA68 table:@"Localizable"];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"FAMILY_CHECKLIST_CUSTODIAN_CONTACTS_SETUP" value:&stru_282D9AA68 table:@"Localizable"];

  v9 = MEMORY[0x277D755B8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v63 = [v9 imageNamed:@"RecoveryContactsIcon" inBundle:v10];

  v64 = [MEMORY[0x277CCA968] fa_checklistDateFormatter];
  v11 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"custodian"];
  v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v13 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v62 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v14 = [MEMORY[0x277CCABB0] numberWithInt:{-[NSArray count](self->_custodians, "count")}];
  v61 = [v14 stringValue];

  custodians = self->_custodians;
  if (custodians && [(NSArray *)custodians count])
  {
    v16 = [MEMORY[0x277CF0130] sharedInstance];
    v54 = [v16 primaryAuthKitAccount];
    v55 = v16;
    v17 = [v16 custodianLastModifiedForAccount:?];
    v56 = v11;
    v53 = v17;
    if (v17)
    {
      v18 = MEMORY[0x277CBEAA8];
      [v17 doubleValue];
      v60 = [v18 dateWithTimeIntervalSince1970:v19 / 1000.0];
    }

    else
    {
      v60 = 0;
    }

    v57 = v8;
    v59 = v4;
    v28 = [(NSArray *)self->_custodians count];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = v29;
    v58 = v6;
    if (v28 == 1)
    {
      v52 = [v29 localizedStringForKey:@"FAMILY_CHECKLIST_CUSTODIAN_SINGLE_TITLE" value:&stru_282D9AA68 table:@"Localizable"];

      v31 = [(NSArray *)self->_custodians lastObject];
      v32 = [v31 firstName];

      v33 = MEMORY[0x277CCACA8];
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = v34;
      if (v32)
      {
        v36 = [v34 localizedStringForKey:@"FAMILY_CHECKLIST_CUSTODIAN_UPDATED" value:&stru_282D9AA68 table:@"Localizable"];
        v37 = [v64 stringFromDate:v60];
        [v33 localizedStringWithFormat:v36, v32, v37];
      }

      else
      {
        v36 = [v34 localizedStringForKey:@"FAMILY_CHECKLIST_SECTION_UPDATED_DATE" value:&stru_282D9AA68 table:@"Localizable"];
        v37 = [v64 stringFromDate:v60];
        [v33 localizedStringWithFormat:v36, v37, v50];
      }
      v41 = ;

      v39 = v60;
      v40 = v41;
    }

    else
    {
      v52 = [v29 localizedStringForKey:@"FAMILY_CHECKLIST_CUSTODIAN_ALTERNATE_TITLE" value:&stru_282D9AA68 table:@"Localizable"];

      v38 = MEMORY[0x277CCACA8];
      v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v32 localizedStringForKey:@"FAMILY_CHECKLIST_SECTION_UPDATED_DATE" value:&stru_282D9AA68 table:@"Localizable"];
      v39 = v60;
      v36 = [v64 stringFromDate:v60];
      v40 = [v38 localizedStringWithFormat:v35, v36];
    }

    if (v39)
    {
      v51 = v40;
    }

    else
    {

      v51 = &stru_282D9AA68;
    }

    v42 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v52 target:self set:0 get:0 detail:0 cell:4 edit:0];
    v43 = MEMORY[0x277CCACA8];
    v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v45 = [v44 localizedStringForKey:@"FAMILY_CHECKLIST_CUSTODIAN_DESCRIPTION" value:&stru_282D9AA68 table:@"Localizable"];
    v46 = [v43 localizedStringWithFormat:v45, -[NSArray count](self->_custodians, "count")];

    v20 = v63;
    [v42 setProperty:v63 forKey:*MEMORY[0x277D3FFC0]];
    [v42 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [v42 setProperty:v52 forKey:*MEMORY[0x277D40170]];
    [v42 setCellType:1];
    v47 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
    [v42 setProperty:v47 forKey:*MEMORY[0x277D40140]];

    [v42 setProperty:v51 forKey:*MEMORY[0x277D3FFA8]];
    [v42 setProperty:v46 forKey:*MEMORY[0x277D40160]];
    [v42 setButtonAction:sel__setupCustodianTapped_];
    v26 = v56;
    v66[0] = v56;
    v66[1] = v42;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];

    v6 = v58;
    v4 = v59;
    v8 = v57;
  }

  else
  {
    v20 = v63;
    [v12 setProperty:v63 forKey:*MEMORY[0x277D3FFC0]];
    v21 = objc_opt_class();
    v22 = *MEMORY[0x277D3FE58];
    [v12 setProperty:v21 forKey:*MEMORY[0x277D3FE58]];
    v23 = v11;
    v24 = *MEMORY[0x277D40170];
    [v12 setProperty:v4 forKey:*MEMORY[0x277D40170]];
    [v12 setProperty:v6 forKey:*MEMORY[0x277D40160]];
    [v13 setProperty:&unk_282DC0798 forKey:*MEMORY[0x277D3FD78]];
    v25 = v24;
    v26 = v23;
    [v13 setProperty:v8 forKey:v25];
    [v13 setProperty:objc_opt_class() forKey:v22];
    [v13 setButtonAction:sel__setupCustodianTapped_];
    v65[0] = v23;
    v65[1] = v12;
    v65[2] = v13;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];
  }

  v48 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_icloudPlusSpecifiers:(id)a3
{
  v63[2] = *MEMORY[0x277D85DE8];
  v59 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FAMILY_CHECKLIST_ICLOUD_PLUS_CARD" value:&stru_282D9AA68 table:@"Localizable"];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FAMILY_CHECKLIST_ICLOUD_PLUS_SHARED" value:&stru_282D9AA68 table:@"Localizable"];

  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"FAMILY_CHECKLIST_ICLOUD_PLUS_NON_SUBSCRIBER" value:&stru_282D9AA68 table:@"Localizable"];
  v11 = [v8 localizedStringWithFormat:v10, self->_organizerName];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"FAMILY_CHECKLIST_ICLOUD_PLUS_SETUP" value:&stru_282D9AA68 table:@"Localizable"];

  v14 = MEMORY[0x277D755B8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v14 imageNamed:@"iCloudStorageIcon" inBundle:v15];

  v56 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"icloudPlus"];
  v60 = v5;
  v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v58 = v7;
  v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v57 = v11;
  v19 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v20 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v21 = [(FAChecklistViewController *)self checklistStore];
  v22 = [v21 countMembersIcloudPlus];

  if (v22)
  {
    v53 = v20;
    v54 = v16;
    v55 = v13;
    v23 = [v59 isOrganizer];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = v24;
    if (v23)
    {
      v26 = [v24 localizedStringForKey:@"FAMILY_CHECKLIST_ICLOUD_PLUS_DESCRIPTION_SHARED" value:&stru_282D9AA68 table:@"Localizable"];

      v52 = v19;
      v27 = MEMORY[0x277CCACA8];
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"FAMILY_CHECKLIST_ICLOUD_PLUS_SHARING_INFO" value:&stru_282D9AA68 table:@"Localizable"];
      v30 = [(FAChecklistViewController *)self checklistStore];
      v31 = [v30 countMembersIcloudPlus] - 1;
      v32 = [(FAChecklistViewController *)self familyCircle];
      v33 = [v32 members];
      v34 = [v27 localizedStringWithFormat:v29, v31, objc_msgSend(v33, "count") - 1];

      v35 = v26;
      v36 = v54;
      [v18 setProperty:v54 forKey:*MEMORY[0x277D3FFC0]];
      [v18 setProperty:v60 forKey:*MEMORY[0x277D40170]];
      [v18 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      [v18 setCellType:1];
      v37 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
      [v18 setProperty:v37 forKey:*MEMORY[0x277D40140]];

      v38 = v59;
      [v18 setProperty:v34 forKey:*MEMORY[0x277D3FFA8]];
      [v18 setProperty:v26 forKey:*MEMORY[0x277D40160]];
      [v18 setButtonAction:sel__setupIcloudPlusWasTapped_];
      v39 = v56;
      v63[0] = v56;
      v63[1] = v18;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];

      v41 = v52;
      v20 = v53;
      v13 = v55;
      goto LABEL_7;
    }

    v35 = [v24 localizedStringForKey:@"FAMILY_CHECKLIST_ICLOUD_PLUS_DESCRIPTION_NON_SUBSCRIBER" value:&stru_282D9AA68 table:@"Localizable"];

    v36 = v16;
    [v19 setProperty:v16 forKey:*MEMORY[0x277D3FFC0]];
    [v19 setProperty:v60 forKey:*MEMORY[0x277D40170]];
    [v19 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [v19 setCellType:1];
    [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
    v49 = v48 = v19;
    [v48 setProperty:v49 forKey:*MEMORY[0x277D40140]];

    v41 = v48;
    [v48 setProperty:v35 forKey:*MEMORY[0x277D40160]];
    [v48 setButtonAction:sel__setupIcloudPlusWasTapped_];
    v39 = v56;
    v62[0] = v56;
    v62[1] = v48;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
  }

  else
  {
    v42 = v19;
    v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v43 localizedStringForKey:@"FAMILY_CHECKLIST_ICLOUD_PLUS_DESCRIPTION" value:&stru_282D9AA68 table:@"Localizable"];

    v36 = v16;
    [v17 setProperty:v16 forKey:*MEMORY[0x277D3FFC0]];
    v44 = *MEMORY[0x277D40170];
    [v17 setProperty:v60 forKey:*MEMORY[0x277D40170]];
    v45 = objc_opt_class();
    v46 = *MEMORY[0x277D3FE58];
    [v17 setProperty:v45 forKey:*MEMORY[0x277D3FE58]];
    [v17 setProperty:v35 forKey:*MEMORY[0x277D40160]];
    [v20 setProperty:&unk_282DC0798 forKey:*MEMORY[0x277D3FD78]];
    v47 = v44;
    v41 = v42;
    [v20 setProperty:v13 forKey:v47];
    [v20 setProperty:objc_opt_class() forKey:v46];
    [v20 setButtonAction:sel__setupIcloudPlusWasTapped_];
    v39 = v56;
    v61[0] = v56;
    v61[1] = v17;
    v61[2] = v20;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
  }

  v38 = v59;
LABEL_7:

  v50 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)specifiers
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v4 = [(FAChecklistViewController *)self familyCircle];
  v5 = [v4 members];

  v6 = [v5 countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v57;
    v41 = *v57;
    v42 = v5;
    do
    {
      v9 = 0;
      v43 = v7;
      do
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v56 + 1) + 8 * v9);
        if ([v10 isMe] && objc_msgSend(v10, "isParent"))
        {
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v11 = self->_listOfChildren;
          v12 = [(NSArray *)v11 countByEnumeratingWithState:&v52 objects:v62 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v53;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v53 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v52 + 1) + 8 * i);
                v17 = [(FAChecklistViewController *)self checklistStore];
                v18 = [v17 screenTimeEnabledForChild:v16];

                if (v18)
                {
                  v19 = [(FAChecklistViewController *)self _childCommunicationLimitsForContactManagement:v16];
                  [v3 addObjectsFromArray:v19];
                }

                v20 = [(FAChecklistViewController *)self _childPresetSpecifiers:v16];
                [v3 addObjectsFromArray:v20];
              }

              v13 = [(NSArray *)v11 countByEnumeratingWithState:&v52 objects:v62 count:16];
            }

            while (v13);
          }

          v8 = v41;
          v5 = v42;
          v7 = v43;
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v7);
  }

  if (!self->_deviceType)
  {
    v21 = [(FAChecklistViewController *)self _medicalSpecifiersWithMedicalIDData];
    [v3 addObjectsFromArray:v21];
  }

  v22 = [(FAChecklistViewController *)self _locationSpecifiersWithSharedCount:self->_countMembersWithLocation];
  [v3 addObjectsFromArray:v22];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v23 = [(FAChecklistViewController *)self familyCircle];
  v24 = [v23 members];

  v25 = [v24 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v49;
    while (2)
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v48 + 1) + 8 * j);
        if (-[ACAccount aa_isCloudSubscriber](self->_appleAccount, "aa_isCloudSubscriber") && [v29 isMe])
        {
          v30 = [(FAChecklistViewController *)self _icloudPlusSpecifiers:v29];
          [v3 addObjectsFromArray:v30];

          goto LABEL_33;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v48 objects:v61 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v31 = [(FAChecklistViewController *)self familyCircle];
  v32 = [v31 members];

  v33 = [v32 countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v45;
    while (2)
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v44 + 1) + 8 * k);
        if ([v37 isMe] && (!objc_msgSend(v37, "memberType") || objc_msgSend(v37, "memberType") == 1))
        {
          v38 = [(FAChecklistViewController *)self _custodianContactSpecifiers];
          [v3 addObjectsFromArray:v38];

          goto LABEL_45;
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v44 objects:v60 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

LABEL_45:

  objc_storeStrong(&self->_specifiers, v3);
  v39 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_fetchScreenTimeModifiedDate:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(getSTManagementStateClass());
  v8 = [v6 dsid];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__FAChecklistViewController__fetchScreenTimeModifiedDate_completionHandler___block_invoke;
  v10[3] = &unk_2782F42D8;
  v11 = v5;
  v9 = v5;
  [v7 lastModifcationDateForDSID:v8 completionHandler:v10];
}

void __76__FAChecklistViewController__fetchScreenTimeModifiedDate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__FAChecklistViewController__fetchScreenTimeModifiedDate_completionHandler___block_invoke_2;
  block[3] = &unk_2782F42B0;
  v11 = v6;
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __76__FAChecklistViewController__fetchScreenTimeModifiedDate_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1 + 4;
  if (a1[4])
  {
    v3 = _FALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __76__FAChecklistViewController__fetchScreenTimeModifiedDate_completionHandler___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    v10 = *v2;
  }

  v11 = a1[5];
  return (*(a1[6] + 16))();
}

- (void)_fetchCommunicationLimitsModifiedDate:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(getSTManagementStateClass());
  v8 = [v6 dsid];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__FAChecklistViewController__fetchCommunicationLimitsModifiedDate_completionHandler___block_invoke;
  v10[3] = &unk_2782F42D8;
  v11 = v5;
  v9 = v5;
  [v7 lastCommunicationLimitsModifcationDateForDSID:v8 completionHandler:v10];
}

void __85__FAChecklistViewController__fetchCommunicationLimitsModifiedDate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__FAChecklistViewController__fetchCommunicationLimitsModifiedDate_completionHandler___block_invoke_2;
  block[3] = &unk_2782F42B0;
  v11 = v6;
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __85__FAChecklistViewController__fetchCommunicationLimitsModifiedDate_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1 + 4;
  if (a1[4])
  {
    v3 = _FALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __85__FAChecklistViewController__fetchCommunicationLimitsModifiedDate_completionHandler___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    v10 = *v2;
  }

  v11 = a1[5];
  return (*(a1[6] + 16))();
}

- (id)_childContactsRecord:(id)a3
{
  v15[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBDAB8] storeForFamilyMember:a3];
  v4 = *MEMORY[0x277CBCFF8];
  v15[0] = *MEMORY[0x277CBD000];
  v15[1] = v4;
  v5 = *MEMORY[0x277CBCFC0];
  v15[2] = *MEMORY[0x277CBD098];
  v15[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  v7 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v8 = [v6 arrayByAddingObject:v7];

  v9 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v8];
  v14 = 0;
  v10 = [v3 executeFetchRequest:v9 error:&v14];
  v11 = [v10 value];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (int)_contactsStatusForChild:(id)a3
{
  v3 = [MEMORY[0x277CBDAB8] storeForFamilyMember:a3];
  v4 = objc_alloc(MEMORY[0x277CBDA70]);
  v5 = [v4 initWithKeysToFetch:MEMORY[0x277CBEBF8]];
  v20 = 0;
  v6 = [v3 contactCountForFetchRequest:v5 error:&v20];
  v7 = v20;
  v8 = [v6 unsignedIntValue];
  v9 = v8 != 0;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    [v5 setShouldFailIfAccountNotYetSynced:1];
    v19 = 0;
    v11 = [v3 contactCountForFetchRequest:v5 error:&v19];
    v7 = v19;

    v12 = [v11 unsignedIntValue];
    v9 = v12 != 0;
    v13 = _FALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(FAChecklistViewController *)v12 != 0 _contactsStatusForChild:v7, v13];
    }

    v6 = v11;
  }

  if (v7 || !v9)
  {
    if (v7 == 0 && !v9)
    {
      v14 = 4;
      goto LABEL_23;
    }

    v15 = [v7 domain];
    if ([v15 isEqual:*MEMORY[0x277CBD198]])
    {
      v16 = [v7 code];

      if (v16 == 1007)
      {
        v17 = _FALogSystem();
        v14 = 2;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [FAChecklistViewController _contactsStatusForChild:v17];
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
    }

    v17 = _FALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FAChecklistViewController _contactsStatusForChild:];
    }

    v14 = 3;
    goto LABEL_22;
  }

  v14 = 5;
LABEL_23:

  return v14;
}

- (void)_fetchPresetsForChild:(id)a3 andCompletionHandler:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277D08328];
  v7 = a3;
  v8 = [[v6 alloc] initWithFamilyMemberAltDSID:v7];

  v9 = [v8 fetchPresets];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__FAChecklistViewController__fetchPresetsForChild_andCompletionHandler___block_invoke;
  v11[3] = &unk_2782F4300;
  v12 = v5;
  v10 = v5;
  [v9 onComplete:v11];
}

void __72__FAChecklistViewController__fetchPresetsForChild_andCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__FAChecklistViewController__fetchPresetsForChild_andCompletionHandler___block_invoke_2;
  block[3] = &unk_2782F42B0;
  v11 = v6;
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __72__FAChecklistViewController__fetchPresetsForChild_andCompletionHandler___block_invoke_2(void *a1)
{
  v2 = a1 + 4;
  if (a1[4])
  {
    v3 = _FALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __72__FAChecklistViewController__fetchPresetsForChild_andCompletionHandler___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = a1[5];
  return (*(a1[6] + 16))();
}

- (void)_manageChildContactsWasTapped:(id)a3
{
  v4 = a3;
  v5 = +[_TtC14FamilyCircleUI24FamilyChecklistAnalytics shared];
  [v5 sendCommLimitsAnalyticsEvent];

  v6 = [v4 propertyForKey:@"childDsidKey"];

  v8 = [FAScreenTimeCommunicationLimitsViewControllerProvider communicationLimitsViewControllerForDSID:v6];

  v7 = [(FAChecklistViewController *)self navigationController];
  [v7 pushViewController:v8 animated:1];
}

- (void)_shareMyLocationButtonWasTapped:(id)a3
{
  v4 = a3;
  v5 = +[_TtC14FamilyCircleUI24FamilyChecklistAnalytics shared];
  [v5 sendLocationSharingAnalyticsEvent];

  locationViewModel = self->_locationViewModel;
  v7 = [(FAChecklistViewController *)self profilePictureStore];
  v8 = [_TtC14FamilyCircleUI34FASwiftUIHostingControllerProvider getLocationViewControllerWithViewModel:locationViewModel pictureStore:v7 hackfromObjC:1];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"LOCATION" value:&stru_282D9AA68 table:@"Localizable"];
  v11 = [v8 navigationItem];
  [v11 setTitle:v10];

  v12 = [v8 navigationItem];
  [v12 setStyle:0];

  v13 = [[FACircleContext alloc] initWithEventType:@"FACircleEventTypeSharedService"];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = objc_alloc_init(FACircleStateController);
  v14 = MEMORY[0x277CBEBC0];
  v15 = [(FAChecklistViewController *)self checklistStore];
  v16 = [v15 locationSharedService];
  v17 = [v16 actionURLString];
  v18 = [v14 URLWithString:v17];

  [v24[5] setPresenter:self];
  [v24[5] setModalPresentationStyle:-2];
  v19 = [(FAChecklistStore *)self->_checklistStore familyCircle];
  LODWORD(v16) = [v19 showLocationSplashScreen];

  if (v16)
  {
    [(FACircleContext *)v13 setUrlForContext:v18];
    v20 = v24[5];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __61__FAChecklistViewController__shareMyLocationButtonWasTapped___block_invoke;
    v22[3] = &unk_2782F4328;
    v22[4] = &v23;
    [v20 performWithContext:v13 completion:v22];
  }

  else
  {
    v21 = [(FAChecklistViewController *)self navigationController];
    [v21 pushViewController:v8 animated:1];
  }

  _Block_object_dispose(&v23, 8);
}

void __61__FAChecklistViewController__shareMyLocationButtonWasTapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  if (([v3 loadSuccess] & 1) == 0)
  {
    v6 = _FALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__FAChecklistViewController__shareMyLocationButtonWasTapped___block_invoke_cold_1(v3);
    }
  }
}

- (void)_updateMedicalIDButtonWasTapped:(id)a3
{
  v4 = a3;
  v5 = +[_TtC14FamilyCircleUI24FamilyChecklistAnalytics shared];
  [v5 sendEmergencyContactsAnalyticsEvent];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v6 = getMIUIDisplayConfigurationClass_softClass_0;
  v24 = getMIUIDisplayConfigurationClass_softClass_0;
  if (!getMIUIDisplayConfigurationClass_softClass_0)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __getMIUIDisplayConfigurationClass_block_invoke_0;
    v19 = &unk_2782F2988;
    v20 = &v21;
    __getMIUIDisplayConfigurationClass_block_invoke_0(&v16);
    v6 = v22[3];
  }

  v7 = v6;
  _Block_object_dispose(&v21, 8);
  v8 = [v6 standardConfiguration];
  [v8 setIsDeletionAvailable:0];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v9 = getMIUIMedicalIDViewControllerClass_softClass_0;
  v24 = getMIUIMedicalIDViewControllerClass_softClass_0;
  if (!getMIUIMedicalIDViewControllerClass_softClass_0)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __getMIUIMedicalIDViewControllerClass_block_invoke_0;
    v19 = &unk_2782F2988;
    v20 = &v21;
    __getMIUIMedicalIDViewControllerClass_block_invoke_0(&v16);
    v9 = v22[3];
  }

  v10 = v9;
  _Block_object_dispose(&v21, 8);
  v11 = [[v9 alloc] initWithHealthStore:self->_healthStore medicalIDData:self->_medicalIDData displayConfiguration:v8];
  medicalIDViewController = self->_medicalIDViewController;
  self->_medicalIDViewController = v11;

  v13 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_medicalIDViewController];
  [v13 setModalInPresentation:1];
  v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__dismissMedicalID];
  v15 = [(MIUIMedicalIDViewController *)self->_medicalIDViewController navigationItem];
  [v15 setRightBarButtonItem:v14];

  [(FAChecklistViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (void)_reviewPresetsWasTapped:(id)a3
{
  v4 = a3;
  v5 = +[_TtC14FamilyCircleUI24FamilyChecklistAnalytics shared];
  [v5 sendChildSettingsAnalyticsEvent];

  v6 = [[FACircleContext alloc] initWithEventType:@"FACircleEventTypeFamilyRepair"];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = objc_alloc_init(FACircleStateController);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v13[5] setPresenter:self];
  [v13[5] setModalPresentationStyle:-2];
  v8 = [v4 propertyForKey:@"childDsidKey"];
  [v7 setObject:v8 forKeyedSubscript:@"memberId"];

  v9 = [v4 propertyForKey:@"childAltDsidKey"];
  [v7 setObject:v9 forKeyedSubscript:@"altDSID"];

  [v7 setObject:@"FamilyChecklist" forKeyedSubscript:@"requester"];
  if ([v7 count])
  {
    [(FACircleContext *)v6 setAdditionalParameters:v7];
  }

  v10 = v13[5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__FAChecklistViewController__reviewPresetsWasTapped___block_invoke;
  v11[3] = &unk_2782F4198;
  v11[4] = self;
  v11[5] = &v12;
  [v10 performWithContext:v6 completion:v11];

  _Block_object_dispose(&v12, 8);
}

void __53__FAChecklistViewController__reviewPresetsWasTapped___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  if ([v3 loadSuccess])
  {
    v6 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__FAChecklistViewController__reviewPresetsWasTapped___block_invoke_695;
    v10[3] = &unk_2782F29E8;
    v10[4] = v6;
    [v6 _updateScreenTimeSpecifierThen:v10];
  }

  else
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 error];
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "Failed to fetch family repair flow %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __53__FAChecklistViewController__reviewPresetsWasTapped___block_invoke_695(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__FAChecklistViewController__reviewPresetsWasTapped___block_invoke_2;
  v4[3] = &unk_2782F29E8;
  v4[4] = v2;
  return [v2 _updateCommunicationLimitsSpecifierThen:v4];
}

void __53__FAChecklistViewController__reviewPresetsWasTapped___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) checklistStore];
  [v1 notifyObservable];
}

- (void)_setupCustodianTapped:(id)a3
{
  v4 = +[_TtC14FamilyCircleUI24FamilyChecklistAnalytics shared];
  [v4 sendRecoveryContactsAnalyticsEvent];

  v5 = [objc_alloc(MEMORY[0x277CECA10]) initWithAccountManager:self->_accountManager];
  custodianSetupFlowController = self->_custodianSetupFlowController;
  self->_custodianSetupFlowController = v5;

  [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController setDelegate:self];
  [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController start];
  v7 = [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController navigationController];
  [(FAChecklistViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_setupIcloudPlusWasTapped:(id)a3
{
  v4 = a3;
  v5 = +[_TtC14FamilyCircleUI24FamilyChecklistAnalytics shared];
  [v5 sendIcloudPlusSharingAnalyticsEvent];

  v6 = [(FAChecklistViewController *)self checklistStore];
  v7 = [v6 icloudPlusUrl];

  if (v7)
  {
    v8 = [v4 identifier];
    [(FACheckListHostControllerProtocol *)self->_checklistHostController setActiveSpecifierID:v8];

    v9 = [[FACircleContext alloc] initWithEventType:@"FACircleEventTypeSharedService"];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__6;
    v20 = __Block_byref_object_dispose__6;
    v21 = objc_alloc_init(FACircleStateController);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v10 setObject:@"FamilyChecklist" forKeyedSubscript:@"requester"];
    if ([v10 count])
    {
      [(FACircleContext *)v9 setAdditionalParameters:v10];
    }

    v11 = [(FAChecklistViewController *)self checklistStore];
    v12 = [v11 icloudPlusUrl];
    [(FACircleContext *)v9 setUrlForContext:v12];

    v13 = [(FAChecklistViewController *)self navigationController];
    [v17[5] setPresenter:v13];

    [v17[5] setModalPresentationStyle:-2];
    v14 = v17[5];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__FAChecklistViewController__setupIcloudPlusWasTapped___block_invoke;
    v15[3] = &unk_2782F4198;
    v15[4] = self;
    v15[5] = &v16;
    [v14 performWithContext:v9 completion:v15];

    _Block_object_dispose(&v16, 8);
  }
}

void __55__FAChecklistViewController__setupIcloudPlusWasTapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  [*(*(a1 + 32) + 1232) setActiveSpecifierID:0];
  if ([v3 loadSuccess])
  {
    v6 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__FAChecklistViewController__setupIcloudPlusWasTapped___block_invoke_697;
    v8[3] = &unk_2782F29E8;
    v8[4] = v6;
    [v6 _updateICloudPlusSpecifierThen:v8];
  }

  else
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__FAChecklistViewController__setupIcloudPlusWasTapped___block_invoke_cold_1(v3);
    }
  }
}

void __55__FAChecklistViewController__setupIcloudPlusWasTapped___block_invoke_697(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = [*(a1 + 32) checklistStore];
  [v2 notifyObservable];
}

- (void)_dismissMedicalID
{
  v3 = [(MIUIMedicalIDViewController *)self->_medicalIDViewController navigationController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__FAChecklistViewController__dismissMedicalID__block_invoke;
  v4[3] = &unk_2782F29E8;
  v4[4] = self;
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

uint64_t __46__FAChecklistViewController__dismissMedicalID__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__FAChecklistViewController__dismissMedicalID__block_invoke_2;
  v3[3] = &unk_2782F29E8;
  v3[4] = v1;
  return [v1 _updateMedicalSpecifierThen:v3];
}

void __46__FAChecklistViewController__dismissMedicalID__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = [*(a1 + 32) checklistStore];
  [v2 notifyObservable];
}

- (void)emergencyContactFlow:(id)a3 didSelectContact:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (([getSOSUtilitiesClass_0() isAllowedToMessageSOSContacts] & 1) == 0)
  {
    [getSOSUtilitiesClass_0() setAllowedToMessageSOSContacts:1];
  }

  v6 = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
  if (v6)
  {
    v7 = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
    v8 = [v7 arrayByAddingObject:v5];
  }

  else
  {
    v13[0] = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  [(_HKMedicalIDData *)self->_medicalIDData setEmergencyContacts:v8];
  medicalIDStore = self->_medicalIDStore;
  medicalIDData = self->_medicalIDData;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__FAChecklistViewController_emergencyContactFlow_didSelectContact___block_invoke;
  v12[3] = &unk_2782F3568;
  v12[4] = self;
  [(HKMedicalIDStore *)medicalIDStore updateMedicalIDData:medicalIDData completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __67__FAChecklistViewController_emergencyContactFlow_didSelectContact___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _FALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __67__FAChecklistViewController_emergencyContactFlow_didSelectContact___block_invoke_cold_1();
    }
  }

  if (a2)
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__FAChecklistViewController_emergencyContactFlow_didSelectContact___block_invoke_698;
    v8[3] = &unk_2782F29E8;
    v8[4] = v7;
    [v7 _updateMedicalSpecifierThen:v8];
  }
}

void __67__FAChecklistViewController_emergencyContactFlow_didSelectContact___block_invoke_698(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = [*(a1 + 32) checklistStore];
  [v2 notifyObservable];
}

- (void)custodianSetupFlowControllerDidFinish:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__FAChecklistViewController_custodianSetupFlowControllerDidFinish___block_invoke;
  v5[3] = &unk_2782F29E8;
  v5[4] = self;
  v4 = a3;
  [(FAChecklistViewController *)self _updateCustodianSpecifierThen:v5];
  [v4 dismissViewControllerAnimated:1 completion:&__block_literal_global_701];
}

void __67__FAChecklistViewController_custodianSetupFlowControllerDidFinish___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__FAChecklistViewController_custodianSetupFlowControllerDidFinish___block_invoke_2;
  block[3] = &unk_2782F29E8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __67__FAChecklistViewController_custodianSetupFlowControllerDidFinish___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = [*(a1 + 32) checklistStore];
  [v2 notifyObservable];
}

- (void)reloadSpecifiers
{
  v3 = [(FAChecklistViewController *)self specifiers];
  [(FACheckListHostControllerProtocol *)self->_checklistHostController setSpecifiers:v3];
}

- (FAChecklistViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __76__FAChecklistViewController__fetchScreenTimeModifiedDate_completionHandler___block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_4(&dword_21BB35000, a2, a3, "Failed to retrieve Screen Time state for last modified date: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __85__FAChecklistViewController__fetchCommunicationLimitsModifiedDate_completionHandler___block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_4(&dword_21BB35000, a2, a3, "Failed to retrieve Screen Time state for communication limits: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_contactsStatusForChild:(os_log_t)log .cold.1(char a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a1 & 1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_21BB35000, log, OS_LOG_TYPE_DEBUG, "RETRIED with shouldFailIfAccountNotYetSynced childHasContacts %i,error %@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_contactsStatusForChild:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_21BB35000, v1, OS_LOG_TYPE_ERROR, "contactCountForFetchRequest: %@ Error: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __72__FAChecklistViewController__fetchPresetsForChild_andCompletionHandler___block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_4(&dword_21BB35000, a2, a3, "Failed to fetch age appropriate preset for the child with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __61__FAChecklistViewController__shareMyLocationButtonWasTapped___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_21BB35000, v2, v3, "Failed to fetch location flow %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __55__FAChecklistViewController__setupIcloudPlusWasTapped___block_invoke_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  v2 = [v1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_21BB35000, v3, v4, "Failed to fetch iCloud+ view %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __67__FAChecklistViewController_emergencyContactFlow_didSelectContact___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_21BB35000, v0, v1, "Error updating medicalIDData error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end