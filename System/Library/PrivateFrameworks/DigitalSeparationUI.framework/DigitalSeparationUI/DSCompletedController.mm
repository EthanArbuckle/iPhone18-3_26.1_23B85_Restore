@interface DSCompletedController
+ (void)initialize;
- (DSCompletedController)init;
- (DSNavigationDelegate)delegate;
- (void)addFamilyBullet;
- (void)addHomeBullet;
- (void)addUTAlerts;
- (void)addWalletBullet;
- (void)fetchAdditionalSharingWithCompletion:(id)completion;
- (void)fetchCompleted;
- (void)findMyAccessoryManager:(id)manager didFetchStatusOfUTEnablementRequirementsWithStatus:(id)status withError:(id)error;
- (void)learnMorePressed;
- (void)startContentSpinner;
- (void)stopContentSpinner;
- (void)viewDidLoad;
@end

@implementation DSCompletedController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = os_log_create("com.apple.DigitalSeparation", "DSCompletedController");
    v3 = DSLogAdditionalSharing;
    DSLogAdditionalSharing = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

- (DSCompletedController)init
{
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v3 = DSUILocStringForKey(@"DEVICE_ACCOUNT_SECURITY_COMPLETE");
    v4 = DSUILocStringForKey(@"DEVICE_ACCOUNT_SECURITY_COMPLETE_DETAIL");
    v12.receiver = self;
    v12.super_class = DSCompletedController;
    v5 = [(DSCompletedController *)&v12 initWithTitle:v3 detailText:v4 symbolName:@"checkmark.circle"];
  }

  else
  {
    v6 = MEMORY[0x277D755D0];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v3 = [v6 configurationWithHierarchicalColor:systemBlueColor];

    v4 = DSUILocStringForKey(@"DEVICE_ACCOUNT_SECURITY_COMPLETE");
    v8 = DSUILocStringForKey(@"DEVICE_ACCOUNT_SECURITY_COMPLETE_DETAIL");
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle" withConfiguration:v3];
    v11.receiver = self;
    v11.super_class = DSCompletedController;
    v5 = [(DSCompletedController *)&v11 initWithTitle:v4 detailText:v8 icon:v9];
  }

  return v5;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = DSCompletedController;
  [(DSOBWelcomeController *)&v12 viewDidLoad];
  v3 = [DSUIUtilities setUpLearnMoreButtonForController:self selector:sel_learnMorePressed];
  v4 = DSUILocStringForKey(@"DONE");
  delegate = [(DSCompletedController *)self delegate];
  v6 = [DSUIUtilities setUpBoldButtonForController:self title:v4 target:delegate selector:sel_pushNextPane];

  v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v7;

  v9 = objc_alloc(MEMORY[0x277CBFBD8]);
  v10 = [v9 initWithDelegate:self delegateQueue:MEMORY[0x277D85CD0]];
  [(DSCompletedController *)self setAccessoryManager:v10];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__DSCompletedController_viewDidLoad__block_invoke;
  v11[3] = &unk_278F75408;
  v11[4] = self;
  [(DSCompletedController *)self fetchAdditionalSharingWithCompletion:v11];
}

void __36__DSCompletedController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = DSUILocStringForKey(@"UNINSTALL_APPS");
  v4 = [DSUIUtilities valueForUnfinalizedString:v3];
  v5 = DSUILocStringForKey(@"UNINSTALL_APPS_DETAIL");
  v6 = [DSUIUtilities valueForUnfinalizedString:v5];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"network"];
  [v2 addBulletedListItemWithTitle:v4 description:v6 image:v7];

  v8 = *(a1 + 32);
  v9 = DSUILocStringForKey(@"UPDATE_PASSWORDS");
  v10 = DSUILocStringForKey(@"UPDATE_PASSWORDS_DETAIL");
  v11 = [MEMORY[0x277D755B8] systemImageNamed:@"key.fill"];
  [v8 addBulletedListItemWithTitle:v9 description:v10 image:v11];

  v12 = *(a1 + 32);
  v13 = DSUILocStringForKey(@"SOCIAL_MEDIA");
  v14 = DSUILocStringForKey(@"SOCIAL_MEDIA_DETAIL");
  v15 = [MEMORY[0x277D755B8] systemImageNamed:@"text.bubble.fill"];
  [v12 addBulletedListItemWithTitle:v13 description:v14 image:v15];

  v16 = *(a1 + 32);
  v17 = DSUILocStringForKey(@"CHECK_OTHER_DEVICES");
  v18 = DSUILocStringForKey(@"CHECK_OTHER_DEVICES_DETAIL");
  v19 = [MEMORY[0x277D755B8] systemImageNamed:@"person.3.fill"];
  [v16 addBulletedListItemWithTitle:v17 description:v18 image:v19];

  [*(a1 + 32) addUTAlerts];
  [*(a1 + 32) addHomeBullet];
  [*(a1 + 32) addWalletBullet];
  v20 = *(a1 + 32);
  v21 = DSUILocStringForKey(@"CELLULAR_SERVICE");
  v22 = DSUILocStringForKey(@"CELLULAR_SERVICE_DETAIL");
  v23 = [MEMORY[0x277D755B8] systemImageNamed:@"antenna.radiowaves.left.and.right"];
  [v20 addBulletedListItemWithTitle:v21 description:v22 image:v23];

  [*(a1 + 32) addFamilyBullet];
  if ([MEMORY[0x277D054A8] hasRestriction])
  {
    v24 = *(a1 + 32);
    v29 = DSUILocStringForKey(@"RESTRICTIONS_ADDITIONAL_ACTIONS_TITLE");
    v25 = DSUILocStringForKey(@"RESTRICTIONS_ADDITIONAL_ACTIONS_DETAIL");
    v26 = MEMORY[0x277D755B8];
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v26 imageNamed:@"custom.nosign" inBundle:v27];
    [v24 addBulletedListItemWithTitle:v29 description:v25 image:v28];
  }
}

- (void)fetchAdditionalSharingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  [(DSCompletedController *)self setFetchingGroup:v5];

  fetchingGroup = [(DSCompletedController *)self fetchingGroup];
  objc_initWeak(&location, self);
  v7 = objc_alloc_init(MEMORY[0x277D08280]);
  dispatch_group_enter(fetchingGroup);
  [(DSCompletedController *)self startContentSpinner];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__DSCompletedController_fetchAdditionalSharingWithCompletion___block_invoke;
  v22[3] = &unk_278F75A78;
  objc_copyWeak(&v24, &location);
  v8 = fetchingGroup;
  v23 = v8;
  [v7 startRequestWithCompletionHandler:v22];
  dispatch_group_enter(v8);
  v9 = MEMORY[0x277D38098];
  mEMORY[0x277D38170] = [MEMORY[0x277D38170] sharedService];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__DSCompletedController_fetchAdditionalSharingWithCompletion___block_invoke_424;
  v19[3] = &unk_278F75AA0;
  objc_copyWeak(&v21, &location);
  v11 = v8;
  v20 = v11;
  [v9 shouldShowWalletInDigitalSeparation:mEMORY[0x277D38170] withDeviceSpecificCompletion:v19];

  dispatch_group_enter(v11);
  v12 = DSLogAdditionalSharing;
  if (os_log_type_enabled(DSLogAdditionalSharing, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248C7E000, v12, OS_LOG_TYPE_INFO, "Fetching UT Enablement status", buf, 2u);
  }

  accessoryManager = [(DSCompletedController *)self accessoryManager];
  [accessoryManager fetchStatusOfUTEnablementRequirements];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__DSCompletedController_fetchAdditionalSharingWithCompletion___block_invoke_426;
  v15[3] = &unk_278F75AC8;
  objc_copyWeak(&v17, &location);
  v16 = completionCopy;
  v14 = completionCopy;
  dispatch_group_notify(v11, MEMORY[0x277D85CD0], v15);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __62__DSCompletedController_fetchAdditionalSharingWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(DSLogAdditionalSharing, OS_LOG_TYPE_ERROR))
    {
      __62__DSCompletedController_fetchAdditionalSharingWithCompletion___block_invoke_cold_1();
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v5 members];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 isMe])
          {
            WeakRetained = objc_loadWeakRetained((a1 + 40));
            [WeakRetained setFamilyMember:v12];

            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  dispatch_group_leave(*(a1 + 32));

  v14 = *MEMORY[0x277D85DE8];
}

void __62__DSCompletedController_fetchAdditionalSharingWithCompletion___block_invoke_424(uint64_t a1, int a2, unsigned int a3, void *a4)
{
  v7 = a4;
  if (v7 && os_log_type_enabled(DSLogAdditionalSharing, OS_LOG_TYPE_ERROR))
  {
    __62__DSCompletedController_fetchAdditionalSharingWithCompletion___block_invoke_424_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setWalletSharing:a2 | a3];

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __62__DSCompletedController_fetchAdditionalSharingWithCompletion___block_invoke_426(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained fetchCompleted];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)fetchCompleted
{
  [(DSCompletedController *)self setFetchingGroup:0];

  [(DSCompletedController *)self stopContentSpinner];
}

- (void)addFamilyBullet
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Failed to find name for %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addWalletBullet
{
  if ([(DSCompletedController *)self walletSharing])
  {
    v5 = DSUILocStringForKey(@"ADDITIONAL_WALLET_TITLE");
    v3 = DSUILocStringForKey(@"ADDITIONAL_WALLET_DETAIL");
    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"wallet.pass.fill"];
    [(DSCompletedController *)self addBulletedListItemWithTitle:v5 description:v3 image:v4];
  }
}

- (void)addHomeBullet
{
  v5 = DSUILocStringForKey(@"ADDITIONAL_HOME_TITLE");
  v3 = DSUILocStringForKey(@"ADDITIONAL_HOME_DETAIL");
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"house.fill"];
  [(DSCompletedController *)self addBulletedListItemWithTitle:v5 description:v3 image:v4];
}

- (void)addUTAlerts
{
  if (![(DSCompletedController *)self UTAlertsEnabled])
  {
    v5 = DSUILocStringForKey(@"UNWANTED_TRACKING");
    v3 = DSUILocStringForKey(@"UNWANTED_TRACKING_DETAIL");
    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"location.fill"];
    [(DSCompletedController *)self addBulletedListItemWithTitle:v5 description:v3 image:v4];
  }
}

- (void)startContentSpinner
{
  contentView = [(DSCompletedController *)self contentView];
  spinner = [(DSCompletedController *)self spinner];
  [contentView addSubview:spinner];

  spinner2 = [(DSCompletedController *)self spinner];
  [spinner2 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(DSCompletedController *)self contentView];
  [contentView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView3 = [(DSCompletedController *)self contentView];
  heightAnchor = [contentView3 heightAnchor];
  v9 = [heightAnchor constraintEqualToConstant:100.0];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v9;

  heightConstraint = [(DSCompletedController *)self heightConstraint];
  [heightConstraint setActive:1];

  spinner3 = [(DSCompletedController *)self spinner];
  centerXAnchor = [spinner3 centerXAnchor];
  contentView4 = [(DSCompletedController *)self contentView];
  centerXAnchor2 = [contentView4 centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v16 setActive:1];

  spinner4 = [(DSCompletedController *)self spinner];
  [spinner4 startAnimating];
}

- (void)stopContentSpinner
{
  spinner = [(DSCompletedController *)self spinner];
  [spinner stopAnimating];

  spinner2 = [(DSCompletedController *)self spinner];
  [spinner2 removeFromSuperview];

  heightConstraint = [(DSCompletedController *)self heightConstraint];
  [heightConstraint setActive:0];
}

- (void)learnMorePressed
{
  AnalyticsSendEventLazy();
  delegate = [(DSCompletedController *)self delegate];
  v3 = DSUIFeatureTable();
  v4 = DSUILocStringForKeyInTable(@"NAVIGATION_LEARN_MORE_URL", v3);
  [delegate learnMorePressedForController:self withURL:v4];
}

- (void)findMyAccessoryManager:(id)manager didFetchStatusOfUTEnablementRequirementsWithStatus:(id)status withError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  statusCopy = status;
  errorCopy = error;
  if (errorCopy && os_log_type_enabled(DSLogAdditionalSharing, OS_LOG_TYPE_ERROR))
  {
    [DSCompletedController findMyAccessoryManager:didFetchStatusOfUTEnablementRequirementsWithStatus:withError:];
  }

  v11 = DSLogAdditionalSharing;
  if (os_log_type_enabled(DSLogAdditionalSharing, OS_LOG_TYPE_INFO))
  {
    v15 = 138543362;
    v16 = statusCopy;
    _os_log_impl(&dword_248C7E000, v11, OS_LOG_TYPE_INFO, "Got UT EnablementStatus %{public}@", &v15, 0xCu);
  }

  v12 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277CBFCE8]];
  -[DSCompletedController setUTAlertsEnabled:](self, "setUTAlertsEnabled:", [v12 unsignedIntegerValue] == 1);

  fetchingGroup = [(DSCompletedController *)self fetchingGroup];
  dispatch_group_leave(fetchingGroup);

  v14 = *MEMORY[0x277D85DE8];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __62__DSCompletedController_fetchAdditionalSharingWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Failed to fetch FamilyCircle because %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__DSCompletedController_fetchAdditionalSharingWithCompletion___block_invoke_424_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Failed to fetch wallet sharing because %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)findMyAccessoryManager:didFetchStatusOfUTEnablementRequirementsWithStatus:withError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Failed to fetch status of UT enablement because %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end