@interface BTSFitTestWelcomeController
- (BTSFitTestWelcomeController)init;
- (void)continueToFitTest;
- (void)deviceDisconnectedHandler:(id)handler;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation BTSFitTestWelcomeController

- (BTSFitTestWelcomeController)init
{
  if (!self)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = BTSFitTestWelcomeController;
  v2 = [(BTSFitTestWelcomeController *)&v6 init];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x277CF31A0] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:v2 selector:sel_powerChangedHandler_ name:*MEMORY[0x277CF3168] object:0];

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = BTSFitTestWelcomeController;
  [(BTSFitTestWelcomeController *)&v5 viewDidLoad];
  view = [(BTSFitTestWelcomeController *)self view];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];
}

- (void)loadView
{
  v61.receiver = self;
  v61.super_class = BTSFitTestWelcomeController;
  [(BTSFitTestWelcomeController *)&v61 loadView];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FIT_TEST_WELCOME_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];

  currentDevice = [(BTSFitTestWelcomeController *)self currentDevice];
  classicDevice = [currentDevice classicDevice];
  productId = [classicDevice productId];

  if (productId == 8210)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"FIT_TEST_WELCOME_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494"];

    v4 = v9;
  }

  currentDevice2 = [(BTSFitTestWelcomeController *)self currentDevice];
  classicDevice2 = [currentDevice2 classicDevice];
  productId2 = [classicDevice2 productId];

  if (productId2 == 8239)
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"FIT_TEST_WELCOME_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494b"];

    v4 = v14;
  }

  currentDevice3 = [(BTSFitTestWelcomeController *)self currentDevice];
  classicDevice3 = [currentDevice3 classicDevice];
  productId3 = [classicDevice3 productId];

  if (productId3 == 8221)
  {
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"FIT_TEST_WELCOME_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];

    v4 = v19;
  }

  v60 = v4;
  v20 = objc_alloc(MEMORY[0x277D37698]);
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"FIT_TEST_WELCOME_HEADER" value:? table:?];
  v23 = [v20 initWithTitle:v22 detailText:v4 icon:0];

  view = [(BTSFitTestWelcomeController *)self view];
  [view bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  view2 = [v23 view];
  [view2 setFrame:{v26, v28, v30, v32}];

  view3 = [v23 view];
  [view3 setAutoresizingMask:18];

  traitCollection = [(BTSFitTestWelcomeController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v37 = "dark";
  }

  else
  {
    v37 = "light";
  }

  v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bullet-AudioQuality-%s", v37];
  v38 = MEMORY[0x277D755B8];
  v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v58 = [v38 imageNamed:v59 inBundle:v39 compatibleWithTraitCollection:0];

  v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v41 = [v40 localizedStringForKey:@"FIT_TEST_WELCOME_BULLET1_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];
  v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v43 = [v42 localizedStringForKey:@"FIT_TEST_WELCOME_BULLET1_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
  [v23 addBulletedListItemWithTitle:v41 description:v43 image:v58];

  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bullet-ANC-%s", v37];
  v45 = MEMORY[0x277D755B8];
  v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v47 = [v45 imageNamed:v44 inBundle:v46 compatibleWithTraitCollection:0];

  v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v49 = [v48 localizedStringForKey:@"FIT_TEST_WELCOME_BULLET2_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];
  v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v51 = [v50 localizedStringForKey:@"FIT_TEST_WELCOME_BULLET2_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
  [v23 addBulletedListItemWithTitle:v49 description:v51 image:v47];

  boldButton = [MEMORY[0x277D37618] boldButton];
  v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v54 = [v53 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"DeviceConfig"];
  [boldButton setTitle:v54 forState:0];

  [boldButton addTarget:self action:sel_continueToFitTest forControlEvents:64];
  buttonTray = [v23 buttonTray];
  [buttonTray addButton:boldButton];

  [(BTSFitTestWelcomeController *)self addChildViewController:v23];
  view4 = [(BTSFitTestWelcomeController *)self view];
  view5 = [v23 view];
  [view4 addSubview:view5];
}

- (void)continueToFitTest
{
  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelFitTest];
  v3 = [BTSFitTestController alloc];
  currentDevice = [(BTSFitTestWelcomeController *)self currentDevice];
  classicDevice = [currentDevice classicDevice];
  v6 = [(BTSFitTestController *)v3 initWithDevice:classicDevice];

  navigationItem = [(BTSFitTestController *)v6 navigationItem];
  [navigationItem setLeftBarButtonItem:v11];

  navigationController = [(BTSFitTestController *)v6 navigationController];
  navigationItem2 = [navigationController navigationItem];
  [navigationItem2 setHidesBackButton:1];

  navigationController2 = [(BTSFitTestWelcomeController *)self navigationController];
  [navigationController2 pushViewController:v6 animated:1];
}

- (void)deviceDisconnectedHandler:(id)handler
{
  object = [handler object];
  address = [object address];
  currentDevice = [(BTSFitTestWelcomeController *)self currentDevice];
  identifier = [currentDevice identifier];

  if (address == identifier)
  {
    [(BTSFitTestWelcomeController *)self cancelFitTest];
  }
}

@end