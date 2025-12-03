@interface MSDDefaultStoreViewController
- (MSDDefaultStoreViewController)init;
- (void)_completeSetupTapped:(id)tapped;
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

    boldButton = [MEMORY[0x277D37618] boldButton];
    [boldButton setTitle:v5 forState:0];
    [boldButton addTarget:v2 action:sel__completeSetupTapped_ forControlEvents:64];
    contentViewController = [(MSDDefaultStoreViewController *)v2 contentViewController];
    buttonTray = [contentViewController buttonTray];
    [buttonTray addButton:boldButton];

    contentViewController2 = [(MSDDefaultStoreViewController *)v2 contentViewController];
    navigationItem = [contentViewController2 navigationItem];
    [navigationItem setHidesBackButton:1];

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
  contentViewController = [(MSDDefaultStoreViewController *)self contentViewController];
  [(MSDDefaultStoreViewController *)self addChildViewController:contentViewController];

  contentViewController2 = [(MSDDefaultStoreViewController *)self contentViewController];
  view = [contentViewController2 view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(MSDDefaultStoreViewController *)self view];
  [view2 addSubview:view];

  topAnchor = [view topAnchor];
  view3 = [(MSDDefaultStoreViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[0] = v25;
  bottomAnchor = [view bottomAnchor];
  view4 = [(MSDDefaultStoreViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v31[1] = v20;
  leftAnchor = [view leftAnchor];
  view5 = [(MSDDefaultStoreViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide3 leftAnchor];
  v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v31[2] = v9;
  rightAnchor = [view rightAnchor];
  view6 = [(MSDDefaultStoreViewController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide4 rightAnchor];
  v14 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v31[3] = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v18];
  contentViewController3 = [(MSDDefaultStoreViewController *)self contentViewController];
  [contentViewController3 didMoveToParentViewController:self];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_completeSetupTapped:(id)tapped
{
  v12 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = tappedCopy;
    v5 = v9;
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Complete setup button tapped from: %{public}@", &v8, 0x16u);
  }

  v6 = +[MSDSetupUIController sharedInstance];
  [v6 setupCompleteWithStoreID:0];

  v7 = *MEMORY[0x277D85DE8];
}

@end