@interface BTSFitTestWelcomeController
- (BTSFitTestWelcomeController)init;
- (void)continueToFitTest;
- (void)deviceDisconnectedHandler:(id)a3;
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:v2 selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x277CF31A0] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:v2 selector:sel_powerChangedHandler_ name:*MEMORY[0x277CF3168] object:0];

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = BTSFitTestWelcomeController;
  [(BTSFitTestWelcomeController *)&v5 viewDidLoad];
  v3 = [(BTSFitTestWelcomeController *)self view];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v3 setBackgroundColor:v4];
}

- (void)loadView
{
  v61.receiver = self;
  v61.super_class = BTSFitTestWelcomeController;
  [(BTSFitTestWelcomeController *)&v61 loadView];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FIT_TEST_WELCOME_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];

  v5 = [(BTSFitTestWelcomeController *)self currentDevice];
  v6 = [v5 classicDevice];
  v7 = [v6 productId];

  if (v7 == 8210)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"FIT_TEST_WELCOME_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494"];

    v4 = v9;
  }

  v10 = [(BTSFitTestWelcomeController *)self currentDevice];
  v11 = [v10 classicDevice];
  v12 = [v11 productId];

  if (v12 == 8239)
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"FIT_TEST_WELCOME_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494b"];

    v4 = v14;
  }

  v15 = [(BTSFitTestWelcomeController *)self currentDevice];
  v16 = [v15 classicDevice];
  v17 = [v16 productId];

  if (v17 == 8221)
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

  v24 = [(BTSFitTestWelcomeController *)self view];
  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [v23 view];
  [v33 setFrame:{v26, v28, v30, v32}];

  v34 = [v23 view];
  [v34 setAutoresizingMask:18];

  v35 = [(BTSFitTestWelcomeController *)self traitCollection];
  v36 = [v35 userInterfaceStyle];

  if (v36 == 2)
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

  v52 = [MEMORY[0x277D37618] boldButton];
  v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v54 = [v53 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"DeviceConfig"];
  [v52 setTitle:v54 forState:0];

  [v52 addTarget:self action:sel_continueToFitTest forControlEvents:64];
  v55 = [v23 buttonTray];
  [v55 addButton:v52];

  [(BTSFitTestWelcomeController *)self addChildViewController:v23];
  v56 = [(BTSFitTestWelcomeController *)self view];
  v57 = [v23 view];
  [v56 addSubview:v57];
}

- (void)continueToFitTest
{
  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelFitTest];
  v3 = [BTSFitTestController alloc];
  v4 = [(BTSFitTestWelcomeController *)self currentDevice];
  v5 = [v4 classicDevice];
  v6 = [(BTSFitTestController *)v3 initWithDevice:v5];

  v7 = [(BTSFitTestController *)v6 navigationItem];
  [v7 setLeftBarButtonItem:v11];

  v8 = [(BTSFitTestController *)v6 navigationController];
  v9 = [v8 navigationItem];
  [v9 setHidesBackButton:1];

  v10 = [(BTSFitTestWelcomeController *)self navigationController];
  [v10 pushViewController:v6 animated:1];
}

- (void)deviceDisconnectedHandler:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 address];
  v5 = [(BTSFitTestWelcomeController *)self currentDevice];
  v6 = [v5 identifier];

  if (v4 == v6)
  {
    [(BTSFitTestWelcomeController *)self cancelFitTest];
  }
}

@end