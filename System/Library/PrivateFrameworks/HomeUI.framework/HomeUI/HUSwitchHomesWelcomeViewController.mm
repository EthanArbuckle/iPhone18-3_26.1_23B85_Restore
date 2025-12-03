@interface HUSwitchHomesWelcomeViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUSwitchHomesWelcomeViewController)initWithHome:(id)home;
- (void)_changeButtonTapped:(id)tapped;
- (void)_continueButtonTapped:(id)tapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUSwitchHomesWelcomeViewController

- (HUSwitchHomesWelcomeViewController)initWithHome:(id)home
{
  homeCopy = home;
  name = [homeCopy name];
  v13 = HULocalizedStringWithFormat(@"HUSwitchHomesWelcome_Title", @"%@", v7, v8, v9, v10, v11, v12, name);

  v14 = _HULocalizedStringWithDefaultValue(@"HUSwitchHomesWelcome_Detail", @"HUSwitchHomesWelcome_Detail", 1);
  v15 = HUImageNamed(@"Onboarding-Home-Invite");
  v18.receiver = self;
  v18.super_class = HUSwitchHomesWelcomeViewController;
  v16 = [(HUImageOBWelcomeController *)&v18 initWithTitle:v13 detailText:v14 icon:0 contentImage:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_home, home);
    [(HUTopContentOBWelcomeController *)v16 setContentInsets:0.0, 41.0, 0.0, 41.0];
  }

  return v16;
}

- (void)_changeButtonTapped:(id)tapped
{
  v54 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v52 = 2080;
    v53 = "[HUSwitchHomesWelcomeViewController _changeButtonTapped:]";
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped change button", buf, 0x16u);
  }

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  hf_orderedHomes = [homeManager hf_orderedHomes];

  if (![hf_orderedHomes count] && (objc_msgSend(MEMORY[0x277D14CE8], "isInternalTest") & 1) == 0)
  {
    NSLog(&cfstr_AttemptingToDi_2.isa);
  }

  v42 = [MEMORY[0x277D75110] hu_actionSheetWithTitle:0 message:0 anchorView:tappedCopy];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = hf_orderedHomes;
  v7 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v7)
  {
    v40 = *v46;
    do
    {
      v8 = 0;
      do
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v45 + 1) + 8 * v8);
        mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
        homeManager2 = [mEMORY[0x277D146E8]2 homeManager];

        objc_initWeak(buf, self);
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __58__HUSwitchHomesWelcomeViewController__changeButtonTapped___block_invoke;
        aBlock[3] = &unk_277DB9948;
        objc_copyWeak(&v44, buf);
        aBlock[4] = v9;
        v12 = _Block_copy(aBlock);
        uniqueIdentifier = [v9 uniqueIdentifier];
        currentHome = [homeManager2 currentHome];
        uniqueIdentifier2 = [currentHome uniqueIdentifier];
        v16 = [uniqueIdentifier isEqual:uniqueIdentifier2];

        v17 = MEMORY[0x277D750F8];
        name = [v9 name];
        if (v16)
        {
          hu_locationArrowTemplate = [MEMORY[0x277D755B8] hu_locationArrowTemplate];
          v20 = [v17 _actionWithTitle:name image:hu_locationArrowTemplate style:0 handler:v12 shouldDismissHandler:0];
        }

        else
        {
          v20 = [v17 actionWithTitle:name style:0 handler:v12];
        }

        mEMORY[0x277D146E8]3 = [MEMORY[0x277D146E8] sharedDispatcher];
        home = [mEMORY[0x277D146E8]3 home];
        uniqueIdentifier3 = [home uniqueIdentifier];
        uniqueIdentifier4 = [v9 uniqueIdentifier];
        [v20 _setChecked:{objc_msgSend(uniqueIdentifier3, "isEqual:", uniqueIdentifier4)}];

        [v42 addAction:v20];
        objc_destroyWeak(&v44);
        objc_destroyWeak(buf);

        ++v8;
      }

      while (v7 != v8);
      v7 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v7);
  }

  v25 = MEMORY[0x277D750F8];
  v26 = _HULocalizedStringWithDefaultValue(@"HUSwitchHomesWelcome_MenuCancelTitle", @"HUSwitchHomesWelcome_MenuCancelTitle", 1);
  v27 = [v25 actionWithTitle:v26 style:1 handler:&__block_literal_global_287];
  [v42 addAction:v27];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    popoverPresentationController = [v42 popoverPresentationController];
    [popoverPresentationController setSourceView:tappedCopy];

    [tappedCopy bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    popoverPresentationController2 = [v42 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{v30, v32, v34, v36}];
  }

  else
  {
    NSLog(&cfstr_UnknownSenderF.isa, tappedCopy);
  }

  [(HUSwitchHomesWelcomeViewController *)self presentViewController:v42 animated:1 completion:0];
}

void __58__HUSwitchHomesWelcomeViewController__changeButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[HUSwitchHomesWelcomeViewController _changeButtonTapped:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%@' from the alert popup", buf, 0x16u);
  }

  v6 = [*(a1 + 32) uniqueIdentifier];
  v7 = [WeakRetained home];
  v8 = [v7 uniqueIdentifier];
  v9 = [v6 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [WeakRetained delegate];
    v13 = @"HUSwitchHomesWelcomeOnboardingKey_UserInput";
    v14 = &unk_282492570;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v10 viewController:WeakRetained didFinishWithConfigurationResults:v11];
  }

  v12 = [MEMORY[0x277D146E8] sharedDispatcher];
  [v12 setSelectedHome:*(a1 + 32) userInitiated:1];
}

void __58__HUSwitchHomesWelcomeViewController__changeButtonTapped___block_invoke_23(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 title];
    v5 = 136315394;
    v6 = "[HUSwitchHomesWelcomeViewController _changeButtonTapped:]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%s) User tapped cancel button '%@' from the alert popup", &v5, 0x16u);
  }
}

- (void)_continueButtonTapped:(id)tapped
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  delegate = [(HUSwitchHomesWelcomeViewController *)self delegate];
  v9 = @"HUSwitchHomesWelcomeOnboardingKey_UserInput";
  v10 = &unk_282492588;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v8];
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = HUSwitchHomesWelcomeViewController;
  [(HUImageOBWelcomeController *)&v27 viewDidLoad];
  headerView = [(HUSwitchHomesWelcomeViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282493210];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUSwitchHomesWelcomeViewController *)self setContinueButton:boldButton];

  continueButton = [(HUSwitchHomesWelcomeViewController *)self continueButton];
  [continueButton setTranslatesAutoresizingMaskIntoConstraints:0];

  continueButton2 = [(HUSwitchHomesWelcomeViewController *)self continueButton];
  v8 = _HULocalizedStringWithDefaultValue(@"HUSwitchHomesWelcome_ContinueButton", @"HUSwitchHomesWelcome_ContinueButton", 1);
  [continueButton2 setTitle:v8 forState:0];

  continueButton3 = [(HUSwitchHomesWelcomeViewController *)self continueButton];
  [continueButton3 setAccessibilityIdentifier:@"Home.OnboardingView.SwitchHomesWelcome.ContinueButton"];

  continueButton4 = [(HUSwitchHomesWelcomeViewController *)self continueButton];
  [continueButton4 addTarget:self action:sel__continueButtonTapped_ forControlEvents:64];

  buttonTray = [(HUSwitchHomesWelcomeViewController *)self buttonTray];
  continueButton5 = [(HUSwitchHomesWelcomeViewController *)self continueButton];
  [buttonTray addButton:continueButton5];

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  homes = [homeManager homes];
  v16 = [homes count];

  if (v16 >= 2)
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    [(HUSwitchHomesWelcomeViewController *)self setChangeButton:linkButton];

    changeButton = [(HUSwitchHomesWelcomeViewController *)self changeButton];
    [changeButton setTranslatesAutoresizingMaskIntoConstraints:0];

    changeButton2 = [(HUSwitchHomesWelcomeViewController *)self changeButton];
    v20 = _HULocalizedStringWithDefaultValue(@"HUSwitchHomesWelcome_ChangeButton", @"HUSwitchHomesWelcome_ChangeButton", 1);
    [changeButton2 setTitle:v20 forState:0];

    changeButton3 = [(HUSwitchHomesWelcomeViewController *)self changeButton];
    [changeButton3 setAccessibilityIdentifier:@"Home.OnboardingView.SwitchHomesWelcome.ChangeButton"];

    changeButton4 = [(HUSwitchHomesWelcomeViewController *)self changeButton];
    [changeButton4 addTarget:self action:sel__changeButtonTapped_ forControlEvents:64];

    buttonTray2 = [(HUSwitchHomesWelcomeViewController *)self buttonTray];
    changeButton5 = [(HUSwitchHomesWelcomeViewController *)self changeButton];
    [buttonTray2 addButton:changeButton5];
  }

  [(HUSwitchHomesWelcomeViewController *)self setModalInPresentation:1];
  v25 = HFLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "[HUSwitchHomesWelcomeViewController:viewDidLoad] presented: SHWVC", v26, 2u);
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = HUSwitchHomesWelcomeViewController;
  [(HUImageOBWelcomeController *)&v8 viewDidLayoutSubviews];
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    view = [(HUSwitchHomesWelcomeViewController *)self view];
    [view frame];
    v5 = v4 * 0.65;
  }

  else
  {
    view = [(HUSwitchHomesWelcomeViewController *)self continueButton];
    [view bounds];
    v5 = v6;
  }

  [(HUTopContentOBWelcomeController *)self maxSize];
  if (v7 != v5)
  {
    [(HUTopContentOBWelcomeController *)self maxSize];
    [(HUTopContentOBWelcomeController *)self setMaxSize:v5];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HUSwitchHomesWelcomeViewController;
  [(HUSwitchHomesWelcomeViewController *)&v5 viewWillAppear:appear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUSwitchHomesWelcomeViewController:viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HUSwitchHomesWelcomeViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:disappear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUSwitchHomesWelcomeViewController:viewWillDisappear]", v4, 2u);
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end