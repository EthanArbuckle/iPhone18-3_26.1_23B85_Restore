@interface MSDLocationViewController
- (MSDLocationViewController)init;
- (void)_locationButtonTapped:(id)a3;
- (void)locationManagerDidChangeAuthorization:(id)a3;
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

    v8 = [(MSDLocationViewController *)v6 locationManager];
    [v8 setDelegate:v6];
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
  v4 = [MEMORY[0x277D37618] boldButton];
  [v4 setTitle:@"placeholder" forState:0];
  v5 = [(MSDLocationViewController *)self buttonTray];
  [v5 addButton:v4];

  v6 = [(MSDLocationViewController *)self buttonTray];
  [v6 addSubview:v3];

  v28 = [v3 topAnchor];
  v27 = [v4 topAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v32[0] = v26;
  v25 = [v3 bottomAnchor];
  v24 = [v4 bottomAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v32[1] = v23;
  v22 = [v3 leadingAnchor];
  v7 = [v4 leadingAnchor];
  v8 = [v22 constraintEqualToAnchor:v7];
  v32[2] = v8;
  v9 = [v3 trailingAnchor];
  v10 = [v4 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v32[3] = v11;
  v12 = [v3 heightAnchor];
  [v4 frame];
  v14 = [v12 constraintEqualToConstant:v13];
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
  v18 = [MEMORY[0x277CCA8D8] mainBundle];
  v19 = [v18 bundleIdentifier];
  [v17 setLocationButtonUseMode:2 forBundleIdentifier:v19];

  v20 = +[MSDSetupUIController sharedInstance];
  [v20 enableLocationServices];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v13 = 138543874;
    v14 = v5;
    v15 = 1024;
    v16 = [v3 authorizationStatus];
    v17 = 2048;
    v18 = [v3 accuracyAuthorization];
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: location authorization status changed to %d; accuracy authorization %ld", &v13, 0x1Cu);
  }

  if ([v3 authorizationStatus] >= 3)
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

- (void)_locationButtonTapped:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = v3;
    v5 = v8;
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Location button tapped from: %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end