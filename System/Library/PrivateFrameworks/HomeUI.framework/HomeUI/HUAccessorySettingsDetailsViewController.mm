@interface HUAccessorySettingsDetailsViewController
- (HUAccessorySettingsDetailsViewController)initWithAccessoryGroupItem:(id)item;
- (HUAccessorySettingsDetailsViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (id)accessorySettingsItemManager;
- (id)itemModuleControllers;
- (id)moduleController:(id)controller requestPresentViewController:(id)viewController animated:(BOOL)animated;
- (void)moduleController:(id)controller presentGroup:(id)group;
@end

@implementation HUAccessorySettingsDetailsViewController

- (HUAccessorySettingsDetailsViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithAccessoryGroupItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsDetailsViewController.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[HUAccessorySettingsDetailsViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUAccessorySettingsDetailsViewController)initWithAccessoryGroupItem:(id)item
{
  itemCopy = item;
  v5 = [[HUAccessorySettingsItemManager alloc] initWithDelegate:self accessoryGroupItem:itemCopy];
  v10.receiver = self;
  v10.super_class = HUAccessorySettingsDetailsViewController;
  v6 = [(HUItemTableViewController *)&v10 initWithItemManager:v5 tableViewStyle:1];
  if (v6)
  {
    v7 = [itemCopy copy];
    groupItem = v6->_groupItem;
    v6->_groupItem = v7;
  }

  return v6;
}

- (id)accessorySettingsItemManager
{
  objc_opt_class();
  itemManager = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v4 = itemManager;
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
  accessorySettingsItemModuleController = [(HUAccessorySettingsDetailsViewController *)self accessorySettingsItemModuleController];

  if (!accessorySettingsItemModuleController)
  {
    v5 = [HUAccessorySettingsItemModuleController alloc];
    accessorySettingsItemManager = [(HUAccessorySettingsDetailsViewController *)self accessorySettingsItemManager];
    accessorySettingsSectionItemModule = [accessorySettingsItemManager accessorySettingsSectionItemModule];
    v8 = [(HUAccessorySettingsItemModuleController *)v5 initWithModule:accessorySettingsSectionItemModule delegate:self];
    [(HUAccessorySettingsDetailsViewController *)self setAccessorySettingsItemModuleController:v8];
  }

  accessorySettingsItemModuleController2 = [(HUAccessorySettingsDetailsViewController *)self accessorySettingsItemModuleController];
  [v3 na_safeAddObject:accessorySettingsItemModuleController2];

  return v3;
}

- (void)moduleController:(id)controller presentGroup:(id)group
{
  groupCopy = group;
  latestResults = [groupCopy latestResults];
  v6 = *MEMORY[0x277D13EA8];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  if (!v7)
  {

    goto LABEL_5;
  }

  v8 = v7;
  latestResults2 = [groupCopy latestResults];
  v10 = [latestResults2 objectForKeyedSubscript:v6];
  bOOLValue = [v10 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
LABEL_5:
    v12 = [HUAccessorySettingsDetailsViewControllerFactory viewControllerForGroup:groupCopy];
    navigationController = [(HUAccessorySettingsDetailsViewController *)self navigationController];
    v14 = [navigationController hu_pushPreloadableViewController:v12 animated:1];
  }
}

- (id)moduleController:(id)controller requestPresentViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  v8 = objc_opt_new();
  popoverPresentationController = [viewControllerCopy popoverPresentationController];
  view = [(HUAccessorySettingsDetailsViewController *)self view];
  [popoverPresentationController setSourceView:view];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__HUAccessorySettingsDetailsViewController_moduleController_requestPresentViewController_animated___block_invoke;
  v13[3] = &unk_277DB8488;
  v11 = v8;
  v14 = v11;
  [(HUAccessorySettingsDetailsViewController *)self presentViewController:viewControllerCopy animated:animatedCopy completion:v13];

  return v11;
}

@end