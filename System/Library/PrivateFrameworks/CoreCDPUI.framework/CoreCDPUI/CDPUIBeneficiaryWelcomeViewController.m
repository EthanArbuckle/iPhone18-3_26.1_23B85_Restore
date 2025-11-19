@interface CDPUIBeneficiaryWelcomeViewController
- (CDPUIBeneficiaryWelcomeViewController)init;
- (CDPUIBeneficiaryWelcomeViewControllerDelegate)delegate;
- (id)_configurationForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_setupAppOptions;
- (void)_setupTableView;
- (void)_setupViews;
- (void)cancelTapped:(id)a3;
- (void)learnMoreTapped:(id)a3;
- (void)okTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation CDPUIBeneficiaryWelcomeViewController

- (CDPUIBeneficiaryWelcomeViewController)init
{
  v3 = [MEMORY[0x277CFD480] sharedInstance];
  v4 = [v3 primaryAccountFirstName];

  v5 = [MEMORY[0x277CFD4F8] sharedInstance];
  v6 = [v5 deviceClass];

  v7 = MEMORY[0x277CCACA8];
  v8 = CDPLocalizedString();
  v9 = [v7 stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v4];

  v10 = MEMORY[0x277CCACA8];
  v11 = CDPLocalizedString();
  v12 = [v10 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%1$@ %2$@" error:0, v4, v6];

  v16.receiver = self;
  v16.super_class = CDPUIBeneficiaryWelcomeViewController;
  v13 = [(OBTableWelcomeController *)&v16 initWithTitle:v9 detailText:v12 icon:0 adoptTableViewScrollView:1];
  v14 = v13;
  if (v13)
  {
    [(CDPUIBeneficiaryWelcomeViewController *)v13 _setupViews];
  }

  return v14;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = CDPUIBeneficiaryWelcomeViewController;
  [(OBTableWelcomeController *)&v9 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelTapped_];
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  [v4 setBackBarButtonItem:v3];

  [(CDPUIBeneficiaryWelcomeViewController *)self _setupTableView];
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, 2000000000);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__CDPUIBeneficiaryWelcomeViewController_viewDidLoad__block_invoke;
  v6[3] = &unk_278E2B4B0;
  objc_copyWeak(&v7, &location);
  dispatch_after(v5, MEMORY[0x277D85CD0], v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __52__CDPUIBeneficiaryWelcomeViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained tableView];
  [v1 reloadData];
}

- (void)_setupViews
{
  v8 = [MEMORY[0x277D37618] boldButton];
  v3 = CDPLocalizedString();
  [v8 setTitle:v3 forState:0];

  [v8 addTarget:self action:sel_okTapped_ forControlEvents:64];
  v4 = [(CDPUIBeneficiaryWelcomeViewController *)self buttonTray];
  [v4 addButton:v8];

  if ((_BYSetupAssistantNeedsToRun() & 1) == 0)
  {
    v5 = [MEMORY[0x277D37650] linkButton];
    v6 = CDPLocalizedString();
    [v5 setTitle:v6 forState:0];

    [v5 addTarget:self action:sel_learnMoreTapped_ forControlEvents:64];
    v7 = [(CDPUIBeneficiaryWelcomeViewController *)self buttonTray];
    [v7 addButton:v5];
  }
}

- (void)_setupTableView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 setRowHeight:62.0];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setDelegate:self];

  v8 = [(OBTableWelcomeController *)self tableView];
  [v8 setDataSource:self];

  [(CDPUIBeneficiaryWelcomeViewController *)self _setupAppOptions];
}

- (void)_setupAppOptions
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(25, 0);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__CDPUIBeneficiaryWelcomeViewController__setupAppOptions__block_invoke;
  v3[3] = &unk_278E2B4B0;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __57__CDPUIBeneficiaryWelcomeViewController__setupAppOptions__block_invoke(uint64_t a1)
{
  v28[8] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v24 = CDPLocalizedString();
    v22 = CDPLocalizedString();
    v2 = CDPLocalizedString();
    v23 = CDPLocalizedString();
    v21 = CDPLocalizedString();
    v20 = CDPLocalizedString();
    v19 = [[CDPUIInheritanceAppAccessDetails alloc] initWithBundleID:@"com.apple.mobileslideshow" accessString:v24];
    v18 = [[CDPUIInheritanceAppAccessDetails alloc] initWithBundleID:@"com.apple.mobilenotes" accessString:v24];
    v17 = [[CDPUIInheritanceAppAccessDetails alloc] initWithBundleID:@"com.apple.mobilemail" accessString:v2];
    v16 = [[CDPUIInheritanceAppAccessDetails alloc] initWithBundleID:@"com.apple.MobileSMS" accessString:v2];
    v15 = [[CDPUIInheritanceAppAccessDetails alloc] initWithBundleID:@"com.apple.mobilephone" accessString:v23];
    v3 = [[CDPUIInheritanceAppAccessDetails alloc] initWithBundleID:@"com.apple.VoiceMemos" accessString:v22];
    v4 = [[CDPUIInheritanceAppAccessDetails alloc] initWithBundleID:@"com.apple.Home" accessString:v21];
    v5 = [[CDPUIInheritanceAppAccessDetails alloc] initWithBundleID:@"com.apple.AppStore" accessString:v20];
    v28[0] = v19;
    v28[1] = v18;
    v28[2] = v17;
    v28[3] = v16;
    v28[4] = v15;
    v28[5] = v3;
    v6 = v3;
    v28[6] = v4;
    v28[7] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:8];
    v8 = WeakRetained[159];
    WeakRetained[159] = v7;

    v9 = [[CDPUIInheritanceAppAccessDetails alloc] initWithBundleID:@"com.apple.Music"];
    v10 = [[CDPUIInheritanceAppAccessDetails alloc] initWithBundleID:@"com.apple.tv"];
    v11 = [[CDPUIInheritanceAppAccessDetails alloc] initWithBundleID:@"com.apple.iBooks"];
    v12 = [[CDPUIInheritanceAppAccessDetails alloc] initWithBundleID:@"com.apple.AppStore"];
    v27[0] = v9;
    v27[1] = v10;
    v27[2] = v11;
    v27[3] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
    v14 = WeakRetained[160];
    WeakRetained[160] = v13;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__CDPUIBeneficiaryWelcomeViewController__setupAppOptions__block_invoke_2;
    block[3] = &unk_278E2AF90;
    v26 = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __57__CDPUIBeneficiaryWelcomeViewController__setupAppOptions__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 tableView];
    [v3 reloadData];

    v4 = [*(a1 + 32) view];
    [v4 setNeedsUpdateConstraints];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = &OBJC_IVAR___CDPUIBeneficiaryWelcomeViewController__restrictedAppsDetails;
  if (!a4)
  {
    v4 = &OBJC_IVAR___CDPUIBeneficiaryWelcomeViewController__accessibleAppsDetails;
  }

  return [*(&self->super.super.super.super.super.super.isa + *v4) count];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"BeneficiaryWelcomeAppCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"BeneficiaryWelcomeAppCell"];
  }

  v8 = [(CDPUIBeneficiaryWelcomeViewController *)self _configurationForIndexPath:v6];
  [v7 setContentConfiguration:v8];
  v9 = [v6 row];

  if (v9)
  {
    [v7 setSeparatorInset:{0.0, 1.79769313e308, 0.0, 0.0}];
  }

  else
  {
    v10 = [(OBTableWelcomeController *)self tableView];
    [v10 layoutMargins];
    [v7 setSeparatorInset:0.0];
  }

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = CDPLocalizedString();

  return v4;
}

- (id)_configurationForIndexPath:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 section];
  v6 = &OBJC_IVAR___CDPUIBeneficiaryWelcomeViewController__restrictedAppsDetails;
  if (!v5)
  {
    v6 = &OBJC_IVAR___CDPUIBeneficiaryWelcomeViewController__accessibleAppsDetails;
  }

  v7 = *(&self->super.super.super.super.super.super.isa + *v6);
  v8 = [v4 row];

  v9 = [v7 objectAtIndexedSubscript:v8];
  v10 = [MEMORY[0x277D756E0] cellConfiguration];
  v11 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] weight:*MEMORY[0x277D74410]];
  v12 = objc_alloc(MEMORY[0x277CCA898]);
  v13 = [v9 appName];
  v14 = *MEMORY[0x277D740A8];
  v29 = *MEMORY[0x277D740A8];
  v30[0] = v11;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v16 = [v12 initWithString:v13 attributes:v15];

  [v10 setAttributedText:v16];
  v17 = [v9 accessString];
  v18 = [v17 length];

  if (v18)
  {
    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    v20 = objc_alloc(MEMORY[0x277CCA898]);
    v21 = [v9 accessString];
    v27[0] = *MEMORY[0x277D740C0];
    v22 = [MEMORY[0x277D75348] secondaryLabelColor];
    v27[1] = v14;
    v28[0] = v22;
    v28[1] = v19;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v24 = [v20 initWithString:v21 attributes:v23];

    [v10 setSecondaryAttributedText:v24];
  }

  v25 = [v9 appIcon];
  [v10 setImage:v25];

  return v10;
}

- (void)okTapped:(id)a3
{
  v4 = [(CDPUIBeneficiaryWelcomeViewController *)self delegate];
  [v4 welcomeViewController:self didCompleteWithError:0];
}

- (void)cancelTapped:(id)a3
{
  v5 = [(CDPUIBeneficiaryWelcomeViewController *)self delegate];
  v4 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5307];
  [v5 welcomeViewController:self didCompleteWithError:v4];
}

- (void)learnMoreTapped:(id)a3
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2451DB000, v3, OS_LOG_TYPE_DEFAULT, "Learn more was tapped", v6, 2u);
  }

  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/kb/HT212361"];
  v5 = [MEMORY[0x277D75128] sharedApplication];
  [v5 openURL:v4 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (CDPUIBeneficiaryWelcomeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end