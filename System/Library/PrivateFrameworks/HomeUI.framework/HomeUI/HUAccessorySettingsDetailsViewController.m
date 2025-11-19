@interface HUAccessorySettingsDetailsViewController
- (HUAccessorySettingsDetailsViewController)initWithAccessoryGroupItem:(id)a3;
- (HUAccessorySettingsDetailsViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (id)accessorySettingsItemManager;
- (id)itemModuleControllers;
- (id)moduleController:(id)a3 requestPresentViewController:(id)a4 animated:(BOOL)a5;
- (void)moduleController:(id)a3 presentGroup:(id)a4;
@end

@implementation HUAccessorySettingsDetailsViewController

- (HUAccessorySettingsDetailsViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithAccessoryGroupItem_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsDetailsViewController.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[HUAccessorySettingsDetailsViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUAccessorySettingsDetailsViewController)initWithAccessoryGroupItem:(id)a3
{
  v4 = a3;
  v5 = [[HUAccessorySettingsItemManager alloc] initWithDelegate:self accessoryGroupItem:v4];
  v10.receiver = self;
  v10.super_class = HUAccessorySettingsDetailsViewController;
  v6 = [(HUItemTableViewController *)&v10 initWithItemManager:v5 tableViewStyle:1];
  if (v6)
  {
    v7 = [v4 copy];
    groupItem = v6->_groupItem;
    v6->_groupItem = v7;
  }

  return v6;
}

- (id)accessorySettingsItemManager
{
  objc_opt_class();
  v3 = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)itemModuleControllers
{
  v3 = objc_opt_new();
  v4 = [(HUAccessorySettingsDetailsViewController *)self accessorySettingsItemModuleController];

  if (!v4)
  {
    v5 = [HUAccessorySettingsItemModuleController alloc];
    v6 = [(HUAccessorySettingsDetailsViewController *)self accessorySettingsItemManager];
    v7 = [v6 accessorySettingsSectionItemModule];
    v8 = [(HUAccessorySettingsItemModuleController *)v5 initWithModule:v7 delegate:self];
    [(HUAccessorySettingsDetailsViewController *)self setAccessorySettingsItemModuleController:v8];
  }

  v9 = [(HUAccessorySettingsDetailsViewController *)self accessorySettingsItemModuleController];
  [v3 na_safeAddObject:v9];

  return v3;
}

- (void)moduleController:(id)a3 presentGroup:(id)a4
{
  v15 = a4;
  v5 = [v15 latestResults];
  v6 = *MEMORY[0x277D13EA8];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  if (!v7)
  {

    goto LABEL_5;
  }

  v8 = v7;
  v9 = [v15 latestResults];
  v10 = [v9 objectForKeyedSubscript:v6];
  v11 = [v10 BOOLValue];

  if ((v11 & 1) == 0)
  {
LABEL_5:
    v12 = [HUAccessorySettingsDetailsViewControllerFactory viewControllerForGroup:v15];
    v13 = [(HUAccessorySettingsDetailsViewController *)self navigationController];
    v14 = [v13 hu_pushPreloadableViewController:v12 animated:1];
  }
}

- (id)moduleController:(id)a3 requestPresentViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v7 popoverPresentationController];
  v10 = [(HUAccessorySettingsDetailsViewController *)self view];
  [v9 setSourceView:v10];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__HUAccessorySettingsDetailsViewController_moduleController_requestPresentViewController_animated___block_invoke;
  v13[3] = &unk_277DB8488;
  v11 = v8;
  v14 = v11;
  [(HUAccessorySettingsDetailsViewController *)self presentViewController:v7 animated:v5 completion:v13];

  return v11;
}

@end