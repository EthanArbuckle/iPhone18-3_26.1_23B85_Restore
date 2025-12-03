@interface MSDLocationViewController
- (MSDLocationViewController)init;
- (void)_locationButtonTapped:(id)tapped;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)viewDidLoad;
@end

@implementation MSDLocationViewController

- (MSDLocationViewController)init
{
  v3 = [MSDSetupUILocalization localizedStringForKey:@"LOCATION_SERVICES_TITLE"];
  v4 = [MSDSetupUILocalization localizedStringForKey:@"LOCATION_SERVICES_DESCRIPTION"];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"location"];
  v10.receiver = self;
  v10.super_class = MSDLocationViewController;
  v6 = [(MSDLocationViewController *)&v10 initWithTitle:v3 detailText:v4 icon:v5];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBFC10]);
    [(MSDLocationViewController *)v6 setLocationManager:v7];

    locationManager = [(MSDLocationViewController *)v6 locationManager];
    [locationManager setDelegate:v6];
  }

  return v6;
}

- (void)viewDidLoad
{
  v32[5] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = MSDLocationViewController;
  [(OBBaseWelcomeController *)&v29 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277CBFCF8]);
  [v3 setLabel:4];
  [v3 setIcon:0];
  [v3 setCornerRadius:14.0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addTarget:self action:sel__locationButtonTapped_ forControlEvents:64];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton setTitle:@"placeholder" forState:0];
  buttonTray = [(MSDLocationViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  buttonTray2 = [(MSDLocationViewController *)self buttonTray];
  [buttonTray2 addSubview:v3];

  topAnchor = [v3 topAnchor];
  topAnchor2 = [boldButton topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[0] = v26;
  bottomAnchor = [v3 bottomAnchor];
  bottomAnchor2 = [boldButton bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[1] = v23;
  leadingAnchor = [v3 leadingAnchor];
  leadingAnchor2 = [boldButton leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[2] = v8;
  trailingAnchor = [v3 trailingAnchor];
  trailingAnchor2 = [boldButton trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v32[3] = v11;
  heightAnchor = [v3 heightAnchor];
  [boldButton frame];
  v14 = [heightAnchor constraintEqualToConstant:v13];
  v32[4] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:5];

  [MEMORY[0x277CCAAD0] activateConstraints:v15];
  v16 = defaultLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v31 = 2;
    _os_log_impl(&dword_259BCA000, v16, OS_LOG_TYPE_DEFAULT, "Setting location button use mode to %d...", buf, 8u);
  }

  v17 = MEMORY[0x277CBFC10];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [v17 setLocationButtonUseMode:2 forBundleIdentifier:bundleIdentifier];

  v20 = +[MSDSetupUIController sharedInstance];
  [v20 enableLocationServices];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v19 = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v13 = 138543874;
    v14 = v5;
    v15 = 1024;
    authorizationStatus = [authorizationCopy authorizationStatus];
    v17 = 2048;
    accuracyAuthorization = [authorizationCopy accuracyAuthorization];
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: location authorization status changed to %d; accuracy authorization %ld", &v13, 0x1Cu);
  }

  if ([authorizationCopy authorizationStatus] >= 3)
  {
    v7 = defaultLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v13 = 138543362;
      v14 = v8;
      v9 = v8;
      _os_log_impl(&dword_259BCA000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: location authorized; moving to store search view controller", &v13, 0xCu);
    }

    v10 = objc_alloc_init(MSDStoreSearchViewController);
    v11 = +[MSDSetupUIController sharedInstance];
    [v11 pushViewController:v10 andRemoveTopmostView:1];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_locationButtonTapped:(id)tapped
{
  v11 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = tappedCopy;
    v5 = v8;
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Location button tapped from: %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end