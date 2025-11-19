@interface HMFitTestWelcomeController
- (BOOL)isProductOfDifferentColors;
- (HMFitTestWelcomeController)initWithHeadphoneDevice:(id)a3;
- (HPMHeadphoneDevice)headphoneDevice;
- (id)getAssetsDictionary;
- (id)marketingName;
- (id)platformName;
- (id)singularName;
- (unsigned)defaultFiltersID;
- (unsigned)deviceColor;
- (void)continueToFitTest;
- (void)deviceDisconnectedHandler:(id)a3;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation HMFitTestWelcomeController

- (HMFitTestWelcomeController)initWithHeadphoneDevice:(id)a3
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = HMFitTestWelcomeController;
  v3 = a3;
  v4 = [(HMFitTestWelcomeController *)&v8 init];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:v4 selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x277CF31A0] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:v4 selector:sel_powerChangedHandler_ name:*MEMORY[0x277CF3168] object:0];

  objc_storeWeak(&v4->_headphoneDevice, v3);
  return v4;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HMFitTestWelcomeController;
  [(HMFitTestWelcomeController *)&v5 viewDidLoad];
  v3 = [(HMFitTestWelcomeController *)self view];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v3 setBackgroundColor:v4];
}

- (void)loadView
{
  v53.receiver = self;
  v53.super_class = HMFitTestWelcomeController;
  [(HMFitTestWelcomeController *)&v53 loadView];
  v3 = [_TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider alloc];
  v4 = [(HMFitTestWelcomeController *)self headphoneDevice];
  v5 = [(AnyHearingFeatureContentProvider *)v3 initWithDevice:v4];
  [(HMFitTestWelcomeController *)self setProvider:v5];

  v6 = [(HMFitTestWelcomeController *)self provider];
  if ([v6 featureFlag])
  {
    v7 = [(HMFitTestWelcomeController *)self provider];
    v8 = [v7 devicePlatformName];
  }

  else
  {
    v8 = @"AirPods";
  }

  v50 = v8;

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"For the best acoustic performance value:%@ ear tips should create a complete seal when placed in your ears." table:{&stru_28643BDD8, 0}];

  v52 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v10, v8];

  v11 = objc_alloc(MEMORY[0x277D37698]);
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"Test the Fit of Your Ear Tips" value:&stru_28643BDD8 table:0];
  v14 = [v11 initWithTitle:v13 detailText:v52 icon:0];

  v15 = [(HMFitTestWelcomeController *)self view];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [v14 view];
  [v24 setFrame:{v17, v19, v21, v23}];

  v25 = [v14 view];
  [v25 setAutoresizingMask:18];

  v26 = [(HMFitTestWelcomeController *)self traitCollection];
  v27 = [v26 userInterfaceStyle];

  if (v27 == 2)
  {
    v28 = "dark";
  }

  else
  {
    v28 = "light";
  }

  v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bullet-AudioQuality-%s", v28];
  v29 = MEMORY[0x277D755B8];
  v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v49 = [v29 imageNamed:v51 inBundle:v30 compatibleWithTraitCollection:0];

  v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v32 = [v31 localizedStringForKey:@"Audio Quality" value:&stru_28643BDD8 table:0];
  v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v34 = [v33 localizedStringForKey:@"A good seal will improve overall audio quality with deeper bass and richer low frequencies." value:&stru_28643BDD8 table:0];
  [v14 addBulletedListItemWithTitle:v32 description:v34 image:v49];

  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bullet-ANC-%s", v28];
  v36 = MEMORY[0x277D755B8];
  v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v38 = [v36 imageNamed:v35 inBundle:v37 compatibleWithTraitCollection:0];

  v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v40 = [v39 localizedStringForKey:@"Noise Cancellation" value:&stru_28643BDD8 table:0];
  v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v42 = [v41 localizedStringForKey:@"A good seal will keep noise from leaking in or out and results in better noise cancellation." value:&stru_28643BDD8 table:0];
  [v14 addBulletedListItemWithTitle:v40 description:v42 image:v38];

  v43 = [MEMORY[0x277D37618] boldButton];
  v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v45 = [v44 localizedStringForKey:@"Continue" value:&stru_28643BDD8 table:0];
  [v43 setTitle:v45 forState:0];

  [v43 addTarget:self action:sel_continueToFitTest forControlEvents:64];
  v46 = [v14 buttonTray];
  [v46 addButton:v43];

  [(HMFitTestWelcomeController *)self addChildViewController:v14];
  v47 = [(HMFitTestWelcomeController *)self view];
  v48 = [v14 view];
  [v47 addSubview:v48];
}

- (void)continueToFitTest
{
  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelFitTest];
  v3 = objc_alloc(MEMORY[0x277D0FB68]);
  v4 = [(HMFitTestWelcomeController *)self currentDevice];
  v5 = [v3 initWithDevice:v4 provider:self];

  v6 = [v5 navigationItem];
  [v6 setLeftBarButtonItem:v10];

  v7 = [v5 navigationController];
  v8 = [v7 navigationItem];
  [v8 setHidesBackButton:1];

  v9 = [(HMFitTestWelcomeController *)self navigationController];
  [v9 pushViewController:v5 animated:1];
}

- (void)deviceDisconnectedHandler:(id)a3
{
  v6 = [a3 object];
  v4 = [v6 address];
  v5 = [(BluetoothDevice *)self->_currentDevice address];

  if (v4 == v5)
  {
    [(HMFitTestWelcomeController *)self cancelFitTest];
  }
}

- (unsigned)defaultFiltersID
{
  v2 = [(HMFitTestWelcomeController *)self provider];
  v3 = [v2 defaultFiltersID];

  return v3;
}

- (unsigned)deviceColor
{
  v2 = [(HMFitTestWelcomeController *)self provider];
  v3 = [v2 deviceColor];

  return v3;
}

- (id)getAssetsDictionary
{
  v2 = [(HMFitTestWelcomeController *)self provider];
  v3 = [v2 getAssetsDictionary];

  return v3;
}

- (BOOL)isProductOfDifferentColors
{
  v2 = [(HMFitTestWelcomeController *)self provider];
  v3 = [v2 isProductOfDifferentColors];

  return v3;
}

- (id)marketingName
{
  v2 = [(HMFitTestWelcomeController *)self provider];
  v3 = [v2 deviceMarketingName];

  return v3;
}

- (id)platformName
{
  v2 = [(HMFitTestWelcomeController *)self provider];
  v3 = [v2 devicePlatformName];

  return v3;
}

- (id)singularName
{
  v2 = [(HMFitTestWelcomeController *)self provider];
  v3 = [v2 singleDeviceName];

  return v3;
}

- (HPMHeadphoneDevice)headphoneDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_headphoneDevice);

  return WeakRetained;
}

@end