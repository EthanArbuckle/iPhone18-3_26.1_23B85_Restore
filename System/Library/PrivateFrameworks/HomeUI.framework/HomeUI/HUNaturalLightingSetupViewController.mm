@interface HUNaturalLightingSetupViewController
+ (id)moduleControllerInHome:(id)home;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUNaturalLightingSetupViewController)initWithHome:(id)home;
- (id)_markAllAccessoriesAsOnboarded;
- (id)hu_preloadContent;
- (void)_activateNaturalLighting:(id)lighting;
- (void)_doNotActivateNaturalLighting:(id)lighting;
- (void)_updateButtonWithNumberOfLightsSelected:(unint64_t)selected;
- (void)naturalLanguageSetupModule:(id)module didUpdateSelectedItems:(id)items;
- (void)viewDidLoad;
@end

@implementation HUNaturalLightingSetupViewController

- (HUNaturalLightingSetupViewController)initWithHome:(id)home
{
  homeCopy = home;
  v6 = _HULocalizedStringWithDefaultValue(@"HUNaturalLigthingSetup_Title", @"HUNaturalLigthingSetup_Title", 1);
  v7 = _HULocalizedStringWithDefaultValue(@"HUNaturalLightingSetup_Detail", @"HUNaturalLightingSetup_Detail", 1);
  v8 = [HUNaturalLightingSetupViewController moduleControllerInHome:homeCopy];
  v12.receiver = self;
  v12.super_class = HUNaturalLightingSetupViewController;
  v9 = [(HUItemTableOBWelcomeController *)&v12 initWithTitle:v6 detailText:v7 icon:0 contentLayout:2 itemTableViewController:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
  }

  return v10;
}

- (id)hu_preloadContent
{
  itemTableViewController = [(HUItemTableOBWelcomeController *)self itemTableViewController];
  hu_preloadContent = [itemTableViewController hu_preloadContent];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HUNaturalLightingSetupViewController_hu_preloadContent__block_invoke;
  v7[3] = &unk_277DC0788;
  v7[4] = self;
  v5 = [hu_preloadContent flatMap:v7];

  return v5;
}

uint64_t __57__HUNaturalLightingSetupViewController_hu_preloadContent__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemTableViewController];
  v3 = [v2 itemManager];
  v4 = [v3 itemModules];
  v5 = [v4 na_firstObjectPassingTest:&__block_literal_global_181];
  [*(a1 + 32) setModule:v5];

  v6 = *(a1 + 32);
  v7 = [v6 module];
  [v7 setDelegate:v6];

  v8 = MEMORY[0x277D2C900];

  return [v8 futureWithNoResult];
}

uint64_t __57__HUNaturalLightingSetupViewController_hu_preloadContent__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)naturalLanguageSetupModule:(id)module didUpdateSelectedItems:(id)items
{
  moduleCopy = module;
  itemsCopy = items;
  objc_initWeak(&location, self);
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__HUNaturalLightingSetupViewController_naturalLanguageSetupModule_didUpdateSelectedItems___block_invoke;
  v10[3] = &unk_277DBA860;
  objc_copyWeak(&v12, &location);
  v9 = itemsCopy;
  v11 = v9;
  [mainThreadScheduler performBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __90__HUNaturalLightingSetupViewController_naturalLanguageSetupModule_didUpdateSelectedItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained itemTableViewController];
  v3 = [v2 itemManager];
  v4 = [v3 allDisplayedItems];
  v5 = [v4 na_setByIntersectingWithSet:*(a1 + 32)];

  [WeakRetained _updateButtonWithNumberOfLightsSelected:{objc_msgSend(v5, "count")}];
}

- (void)_activateNaturalLighting:(id)lighting
{
  v25 = *MEMORY[0x277D85DE8];
  lightingCopy = lighting;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138412290;
    selfCopy = v9;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: Setting Up Natural Lighting", buf, 0xCu);
  }

  useWithLightsButton = [(HUNaturalLightingSetupViewController *)self useWithLightsButton];
  activityIndicator = [useWithLightsButton activityIndicator];
  [activityIndicator startAnimating];

  [lightingCopy setEnabled:0];
  module = [(HUNaturalLightingSetupViewController *)self module];
  commitSelectedItems = [module commitSelectedItems];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __65__HUNaturalLightingSetupViewController__activateNaturalLighting___block_invoke;
  v20[3] = &unk_277DBA338;
  v20[4] = self;
  v14 = [commitSelectedItems addSuccessBlock:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__HUNaturalLightingSetupViewController__activateNaturalLighting___block_invoke_13;
  v17[3] = &unk_277DB7E90;
  v18 = lightingCopy;
  selfCopy2 = self;
  v15 = lightingCopy;
  v16 = [v14 addFailureBlock:v17];
}

void __65__HUNaturalLightingSetupViewController__activateNaturalLighting___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _markAllAccessoriesAsOnboarded];
  v3 = [*(a1 + 32) useWithLightsButton];
  v4 = [v3 activityIndicator];
  [v4 stopAnimating];

  v5 = [*(a1 + 32) delegate];
  v6 = *(a1 + 32);
  v8 = @"HUNaturalLightingOnboardingKey_UserInput";
  v9[0] = &unk_282491C10;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v5 viewController:v6 didFinishWithConfigurationResults:v7];
}

void __65__HUNaturalLightingSetupViewController__activateNaturalLighting___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setEnabled:1];
  v5 = [*(a1 + 40) useWithLightsButton];
  v6 = [v5 activityIndicator];
  [v6 stopAnimating];

  v7 = [MEMORY[0x277D14640] sharedHandler];
  [v7 handleError:v4];
}

- (void)_doNotActivateNaturalLighting:(id)lighting
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  _markAllAccessoriesAsOnboarded = [(HUNaturalLightingSetupViewController *)self _markAllAccessoriesAsOnboarded];
  delegate = [(HUNaturalLightingSetupViewController *)self delegate];
  v10 = @"HUNaturalLightingOnboardingKey_UserInput";
  v11 = &unk_282491C28;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v9];
}

- (void)viewDidLoad
{
  v24 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = HUNaturalLightingSetupViewController;
  [(HUItemTableOBWelcomeController *)&v19 viewDidLoad];
  headerView = [(HUNaturalLightingSetupViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282493058];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUNaturalLightingSetupViewController *)self setUseWithLightsButton:boldButton];

  useWithLightsButton = [(HUNaturalLightingSetupViewController *)self useWithLightsButton];
  [useWithLightsButton setTranslatesAutoresizingMaskIntoConstraints:0];

  useWithLightsButton2 = [(HUNaturalLightingSetupViewController *)self useWithLightsButton];
  [useWithLightsButton2 addTarget:self action:sel__activateNaturalLighting_ forControlEvents:64];

  useWithLightsButton3 = [(HUNaturalLightingSetupViewController *)self useWithLightsButton];
  [useWithLightsButton3 setAccessibilityIdentifier:@"Home.OnboardingView.NaturalLighting.SetUp.UseWithLightsButton"];

  buttonTray = [(HUNaturalLightingSetupViewController *)self buttonTray];
  useWithLightsButton4 = [(HUNaturalLightingSetupViewController *)self useWithLightsButton];
  [buttonTray addButton:useWithLightsButton4];

  module = [(HUNaturalLightingSetupViewController *)self module];
  selectedItems = [module selectedItems];
  -[HUNaturalLightingSetupViewController _updateButtonWithNumberOfLightsSelected:](self, "_updateButtonWithNumberOfLightsSelected:", [selectedItems count]);

  linkButton = [MEMORY[0x277D37650] linkButton];
  [linkButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = _HULocalizedStringWithDefaultValue(@"HUNaturalLightingTitle_NotNowButton", @"HUNaturalLightingTitle_NotNowButton", 1);
  [linkButton setTitle:v15 forState:0];

  [linkButton setAccessibilityIdentifier:@"Home.OnboardingView.NaturalLighting.SetUp.NotNowButton"];
  [linkButton addTarget:self action:sel__doNotActivateNaturalLighting_ forControlEvents:64];
  buttonTray2 = [(HUNaturalLightingSetupViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];

  [(HUNaturalLightingSetupViewController *)self setModalInPresentation:1];
  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v22 = 2112;
    v23 = v18;
    _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: NLSVC", buf, 0x16u);
  }
}

- (void)_updateButtonWithNumberOfLightsSelected:(unint64_t)selected
{
  v13 = HULocalizedStringWithFormat(@"HUNaturalLightingSetup_UseLightsButton", @"%lu", selected, v3, v4, v5, v6, v7, selected);
  if (selected == 1)
  {
    v10 = _HULocalizedStringWithDefaultValue(@"HUNaturalLightingSetup_UseLightsButtonSingular", @"HUNaturalLightingSetup_UseLightsButtonSingular", 1);

    v13 = v10;
  }

  useWithLightsButton = [(HUNaturalLightingSetupViewController *)self useWithLightsButton];
  [useWithLightsButton setTitle:v13 forState:0];

  useWithLightsButton2 = [(HUNaturalLightingSetupViewController *)self useWithLightsButton];
  [useWithLightsButton2 setEnabled:selected != 0];
}

- (id)_markAllAccessoriesAsOnboarded
{
  v2 = MEMORY[0x277D2C900];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__HUNaturalLightingSetupViewController__markAllAccessoriesAsOnboarded__block_invoke;
  v6[3] = &unk_277DB7580;
  v6[4] = self;
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v4 = [v2 futureWithBlock:v6 scheduler:globalAsyncScheduler];

  return v4;
}

void __70__HUNaturalLightingSetupViewController__markAllAccessoriesAsOnboarded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) module];
  v5 = [v4 allItems];
  v6 = [v5 na_flatMap:&__block_literal_global_60_2];

  v7 = MEMORY[0x277D2C900];
  v8 = [v6 allObjects];
  v9 = [v8 na_map:&__block_literal_global_111_2];
  v10 = [v7 combineAllFutures:v9];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HUNaturalLightingSetupViewController__markAllAccessoriesAsOnboarded__block_invoke_5;
  v13[3] = &unk_277DB7530;
  v14 = v3;
  v11 = v3;
  v12 = [v10 addCompletionBlock:v13];
}

id __70__HUNaturalLightingSetupViewController__markAllAccessoriesAsOnboarded__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_2824C0788])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [v4 homeKitObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = [v4 homeKitObject];
  if (isKindOfClass)
  {
    [v5 addObject:v8];
  }

  else
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }

    v8 = [v4 homeKitObject];
    v10 = [v8 accessory];
    [v5 addObject:v10];
  }

LABEL_9:

  return v5;
}

id __70__HUNaturalLightingSetupViewController__markAllAccessoriesAsOnboarded__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HUNaturalLightingSetupViewController__markAllAccessoriesAsOnboarded__block_invoke_4;
  v7[3] = &unk_277DB7508;
  v8 = v2;
  v4 = v2;
  v5 = [v3 futureWithErrorOnlyHandlerAdapterBlock:v7];

  return v5;
}

+ (id)moduleControllerInHome:(id)home
{
  homeCopy = home;
  v6 = [HUSimpleItemModuleTableViewController alloc];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__HUNaturalLightingSetupViewController_moduleControllerInHome___block_invoke;
  v11[3] = &unk_277DB9F78;
  v12 = homeCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HUNaturalLightingSetupViewController_moduleControllerInHome___block_invoke_4;
  v10[3] = &__block_descriptor_48_e46___HUItemModuleController_16__0__HFItemModule_8l;
  v10[4] = a2;
  v10[5] = self;
  v7 = homeCopy;
  v8 = [(HUSimpleItemModuleTableViewController *)v6 initWithTableViewStyle:1 moduleCreator:v11 moduleControllerBuilder:v10];

  return v8;
}

id __63__HUNaturalLightingSetupViewController_moduleControllerInHome___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HUNaturalLightingSetupModule alloc] initWithHome:*(a1 + 32) itemUpdater:v4];

  [(HUNaturalLightingSetupModule *)v5 setDefaultSelectedValue:MEMORY[0x277CBEC38]];
  [(HUNaturalLightingSetupModule *)v5 setFilter:&__block_literal_global_118_1];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

uint64_t __63__HUNaturalLightingSetupViewController_moduleControllerInHome___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (HFForceNaturalLightingOnboarding())
  {
    v3 = 1;
  }

  else
  {
    v4 = [v2 services];
    v3 = [v4 na_any:&__block_literal_global_121_2];
  }

  return v3;
}

uint64_t __63__HUNaturalLightingSetupViewController_moduleControllerInHome___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 accessory];
  v3 = [v2 hasOnboardedForNaturalLighting];

  return v3 ^ 1u;
}

HUNaturalLightingSetupModuleController *__63__HUNaturalLightingSetupViewController_moduleControllerInHome___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[HUNaturalLightingSetupModuleController alloc] initWithModule:v3];
  }

  else
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"HUNaturalLightingSetupViewController.m" lineNumber:206 description:{@"HUNaturalLightingSetupViewController was given unknown item module: %@", v3}];

    v4 = 0;
  }

  return v4;
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end