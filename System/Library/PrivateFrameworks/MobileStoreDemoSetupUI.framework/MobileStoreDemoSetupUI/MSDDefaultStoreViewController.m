@interface MSDDefaultStoreViewController
- (MSDDefaultStoreViewController)init;
- (void)_completeSetupTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation MSDDefaultStoreViewController

- (MSDDefaultStoreViewController)init
{
  v15.receiver = self;
  v15.super_class = MSDDefaultStoreViewController;
  v2 = [(MSDDefaultStoreViewController *)&v15 init];
  if (v2)
  {
    v3 = [MSDSetupUILocalization localizedStringForKey:@"DEFAULT_STORE_VIEW_TITLE"];
    v4 = [MSDSetupUILocalization localizedStringForKey:@"DEFAULT_STORE_VIEW_DESCRIPTION"];
    v5 = [MSDSetupUILocalization localizedStringForKey:@"COMPLETE_SETUP_BUTTON"];
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"building.2.crop.circle.fill"];
    v7 = [objc_alloc(MEMORY[0x277D37698]) initWithTitle:v3 detailText:v4 icon:v6];
    [(MSDDefaultStoreViewController *)v2 setContentViewController:v7];

    v8 = [MEMORY[0x277D37618] boldButton];
    [v8 setTitle:v5 forState:0];
    [v8 addTarget:v2 action:sel__completeSetupTapped_ forControlEvents:64];
    v9 = [(MSDDefaultStoreViewController *)v2 contentViewController];
    v10 = [v9 buttonTray];
    [v10 addButton:v8];

    v11 = [(MSDDefaultStoreViewController *)v2 contentViewController];
    v12 = [v11 navigationItem];
    [v12 setHidesBackButton:1];

    v13 = [MSDSetupUILocalization localizedStringForKey:@"CANNOT_FIND_STORE_HEADER"];
    [(MSDDefaultStoreViewController *)v2 setTitle:v13];
  }

  return v2;
}

- (void)viewDidLoad
{
  v31[4] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = MSDDefaultStoreViewController;
  [(MSDDefaultStoreViewController *)&v30 viewDidLoad];
  v3 = [(MSDDefaultStoreViewController *)self contentViewController];
  [(MSDDefaultStoreViewController *)self addChildViewController:v3];

  v4 = [(MSDDefaultStoreViewController *)self contentViewController];
  v5 = [v4 view];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(MSDDefaultStoreViewController *)self view];
  [v6 addSubview:v5];

  v28 = [v5 topAnchor];
  v29 = [(MSDDefaultStoreViewController *)self view];
  v27 = [v29 safeAreaLayoutGuide];
  v26 = [v27 topAnchor];
  v25 = [v28 constraintEqualToAnchor:v26];
  v31[0] = v25;
  v23 = [v5 bottomAnchor];
  v24 = [(MSDDefaultStoreViewController *)self view];
  v22 = [v24 safeAreaLayoutGuide];
  v21 = [v22 bottomAnchor];
  v20 = [v23 constraintEqualToAnchor:v21];
  v31[1] = v20;
  v17 = [v5 leftAnchor];
  v19 = [(MSDDefaultStoreViewController *)self view];
  v7 = [v19 safeAreaLayoutGuide];
  v8 = [v7 leftAnchor];
  v9 = [v17 constraintEqualToAnchor:v8];
  v31[2] = v9;
  v10 = [v5 rightAnchor];
  v11 = [(MSDDefaultStoreViewController *)self view];
  v12 = [v11 safeAreaLayoutGuide];
  v13 = [v12 rightAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  v31[3] = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v18];
  v15 = [(MSDDefaultStoreViewController *)self contentViewController];
  [v15 didMoveToParentViewController:self];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_completeSetupTapped:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v5 = v9;
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Complete setup button tapped from: %{public}@", &v8, 0x16u);
  }

  v6 = +[MSDSetupUIController sharedInstance];
  [v6 setupCompleteWithStoreID:0];

  v7 = *MEMORY[0x277D85DE8];
}

@end