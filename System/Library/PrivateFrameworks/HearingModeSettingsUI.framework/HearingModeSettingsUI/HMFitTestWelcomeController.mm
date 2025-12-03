@interface HMFitTestWelcomeController
- (BOOL)isProductOfDifferentColors;
- (HMFitTestWelcomeController)initWithHeadphoneDevice:(id)device;
- (HPMHeadphoneDevice)headphoneDevice;
- (id)getAssetsDictionary;
- (id)marketingName;
- (id)platformName;
- (id)singularName;
- (unsigned)defaultFiltersID;
- (unsigned)deviceColor;
- (void)continueToFitTest;
- (void)deviceDisconnectedHandler:(id)handler;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation HMFitTestWelcomeController

- (HMFitTestWelcomeController)initWithHeadphoneDevice:(id)device
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = HMFitTestWelcomeController;
  deviceCopy = device;
  v4 = [(HMFitTestWelcomeController *)&v8 init];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v4 selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x277CF31A0] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:v4 selector:sel_powerChangedHandler_ name:*MEMORY[0x277CF3168] object:0];

  objc_storeWeak(&v4->_headphoneDevice, deviceCopy);
  return v4;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HMFitTestWelcomeController;
  [(HMFitTestWelcomeController *)&v5 viewDidLoad];
  view = [(HMFitTestWelcomeController *)self view];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];
}

- (void)loadView
{
  v53.receiver = self;
  v53.super_class = HMFitTestWelcomeController;
  [(HMFitTestWelcomeController *)&v53 loadView];
  v3 = [_TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider alloc];
  headphoneDevice = [(HMFitTestWelcomeController *)self headphoneDevice];
  v5 = [(AnyHearingFeatureContentProvider *)v3 initWithDevice:headphoneDevice];
  [(HMFitTestWelcomeController *)self setProvider:v5];

  provider = [(HMFitTestWelcomeController *)self provider];
  if ([provider featureFlag])
  {
    provider2 = [(HMFitTestWelcomeController *)self provider];
    devicePlatformName = [provider2 devicePlatformName];
  }

  else
  {
    devicePlatformName = @"AirPods";
  }

  v50 = devicePlatformName;

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"For the best acoustic performance value:%@ ear tips should create a complete seal when placed in your ears." table:{&stru_28643BDD8, 0}];

  v52 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v10, devicePlatformName];

  v11 = objc_alloc(MEMORY[0x277D37698]);
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"Test the Fit of Your Ear Tips" value:&stru_28643BDD8 table:0];
  v14 = [v11 initWithTitle:v13 detailText:v52 icon:0];

  view = [(HMFitTestWelcomeController *)self view];
  [view bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  view2 = [v14 view];
  [view2 setFrame:{v17, v19, v21, v23}];

  view3 = [v14 view];
  [view3 setAutoresizingMask:18];

  traitCollection = [(HMFitTestWelcomeController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
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

  boldButton = [MEMORY[0x277D37618] boldButton];
  v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v45 = [v44 localizedStringForKey:@"Continue" value:&stru_28643BDD8 table:0];
  [boldButton setTitle:v45 forState:0];

  [boldButton addTarget:self action:sel_continueToFitTest forControlEvents:64];
  buttonTray = [v14 buttonTray];
  [buttonTray addButton:boldButton];

  [(HMFitTestWelcomeController *)self addChildViewController:v14];
  view4 = [(HMFitTestWelcomeController *)self view];
  view5 = [v14 view];
  [view4 addSubview:view5];
}

- (void)continueToFitTest
{
  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelFitTest];
  v3 = objc_alloc(MEMORY[0x277D0FB68]);
  currentDevice = [(HMFitTestWelcomeController *)self currentDevice];
  v5 = [v3 initWithDevice:currentDevice provider:self];

  navigationItem = [v5 navigationItem];
  [navigationItem setLeftBarButtonItem:v10];

  navigationController = [v5 navigationController];
  navigationItem2 = [navigationController navigationItem];
  [navigationItem2 setHidesBackButton:1];

  navigationController2 = [(HMFitTestWelcomeController *)self navigationController];
  [navigationController2 pushViewController:v5 animated:1];
}

- (void)deviceDisconnectedHandler:(id)handler
{
  object = [handler object];
  address = [object address];
  address2 = [(BluetoothDevice *)self->_currentDevice address];

  if (address == address2)
  {
    [(HMFitTestWelcomeController *)self cancelFitTest];
  }
}

- (unsigned)defaultFiltersID
{
  provider = [(HMFitTestWelcomeController *)self provider];
  defaultFiltersID = [provider defaultFiltersID];

  return defaultFiltersID;
}

- (unsigned)deviceColor
{
  provider = [(HMFitTestWelcomeController *)self provider];
  deviceColor = [provider deviceColor];

  return deviceColor;
}

- (id)getAssetsDictionary
{
  provider = [(HMFitTestWelcomeController *)self provider];
  getAssetsDictionary = [provider getAssetsDictionary];

  return getAssetsDictionary;
}

- (BOOL)isProductOfDifferentColors
{
  provider = [(HMFitTestWelcomeController *)self provider];
  isProductOfDifferentColors = [provider isProductOfDifferentColors];

  return isProductOfDifferentColors;
}

- (id)marketingName
{
  provider = [(HMFitTestWelcomeController *)self provider];
  deviceMarketingName = [provider deviceMarketingName];

  return deviceMarketingName;
}

- (id)platformName
{
  provider = [(HMFitTestWelcomeController *)self provider];
  devicePlatformName = [provider devicePlatformName];

  return devicePlatformName;
}

- (id)singularName
{
  provider = [(HMFitTestWelcomeController *)self provider];
  singleDeviceName = [provider singleDeviceName];

  return singleDeviceName;
}

- (HPMHeadphoneDevice)headphoneDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_headphoneDevice);

  return WeakRetained;
}

@end