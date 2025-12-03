@interface HUNetworkRouterSettingsViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (Class)_networkRouterDetailsViewControllerClass;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUNetworkRouterSettingsViewController)initWithHome:(id)home;
- (HUNetworkRouterSettingsViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)finishPresentation:(id)presentation animated:(BOOL)animated;
- (id)presentNetworkConfigurationSettingsForProfile:(id)profile animated:(BOOL)animated;
- (id)presentNetworkRouterSettingsForAccessory:(id)accessory animated:(BOOL)animated;
- (id)presentNetworkRouterSettingsForItem:(id)item animated:(BOOL)animated;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUNetworkRouterSettingsViewController

- (HUNetworkRouterSettingsViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkRouterSettingsViewController.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkRouterSettingsViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUNetworkRouterSettingsViewController)initWithHome:(id)home
{
  homeCopy = home;
  v5 = [[HUNetworkRouterSettingsItemManager alloc] initWithHome:homeCopy delegate:self];

  v9.receiver = self;
  v9.super_class = HUNetworkRouterSettingsViewController;
  v6 = [(HUItemTableViewController *)&v9 initWithItemManager:v5 tableViewStyle:1];
  if (v6)
  {
    v7 = HULocalizedWiFiString(@"HUNetworkRouterSettingsTitle");
    [(HUNetworkRouterSettingsViewController *)v6 setTitle:v7];
  }

  return v6;
}

- (id)presentNetworkConfigurationSettingsForProfile:(id)profile animated:(BOOL)animated
{
  profileCopy = profile;
  hu_preloadContent = [(HUItemTableViewController *)self hu_preloadContent];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__HUNetworkRouterSettingsViewController_presentNetworkConfigurationSettingsForProfile_animated___block_invoke;
  v11[3] = &unk_277DB7830;
  v11[4] = self;
  v12 = profileCopy;
  animatedCopy = animated;
  v8 = profileCopy;
  v9 = [hu_preloadContent flatMap:v11];

  return v9;
}

id __96__HUNetworkRouterSettingsViewController_presentNetworkConfigurationSettingsForProfile_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemManager];
  v3 = [v2 networkConfigurationItemListModule];
  v4 = [v3 networkConfigurationGroupItemForProfile:*(a1 + 40)];

  if (v4)
  {
    v5 = [*(a1 + 32) networkConfigurationItemListModuleController];
    v6 = [v5 presentNetworkConfigurationSettingsForItem:v4 animated:*(a1 + 48)];
  }

  else
  {
    v6 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v6;
}

- (id)presentNetworkRouterSettingsForAccessory:(id)accessory animated:(BOOL)animated
{
  accessoryCopy = accessory;
  hu_preloadContent = [(HUItemTableViewController *)self hu_preloadContent];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__HUNetworkRouterSettingsViewController_presentNetworkRouterSettingsForAccessory_animated___block_invoke;
  v11[3] = &unk_277DB7830;
  v11[4] = self;
  v12 = accessoryCopy;
  animatedCopy = animated;
  v8 = accessoryCopy;
  v9 = [hu_preloadContent flatMap:v11];

  return v9;
}

id __91__HUNetworkRouterSettingsViewController_presentNetworkRouterSettingsForAccessory_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemManager];
  v3 = [v2 networkRouterServiceItemForAccessory:*(a1 + 40)];

  if (v3)
  {
    [*(a1 + 32) presentNetworkRouterSettingsForItem:v3 animated:*(a1 + 48)];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v4 = ;

  return v4;
}

- (id)presentNetworkRouterSettingsForItem:(id)item animated:(BOOL)animated
{
  itemCopy = item;
  hu_preloadContent = [(HUItemTableViewController *)self hu_preloadContent];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__HUNetworkRouterSettingsViewController_presentNetworkRouterSettingsForItem_animated___block_invoke;
  v11[3] = &unk_277DB7830;
  v11[4] = self;
  v12 = itemCopy;
  animatedCopy = animated;
  v8 = itemCopy;
  v9 = [hu_preloadContent flatMap:v11];

  return v9;
}

id __86__HUNetworkRouterSettingsViewController_presentNetworkRouterSettingsForItem_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemManager];
  v3 = [v2 isItemNetworkRouterServiceItem:*(a1 + 40)];

  if (!v3)
  {
    goto LABEL_6;
  }

  if (([*(a1 + 32) _shouldShowNetworkRouterDetails] & 1) == 0)
  {
    NSLog(&cfstr_AttemptingToDi_1.isa);
  }

  if ([*(a1 + 32) _shouldShowNetworkRouterDetails])
  {
    v4 = [objc_alloc(objc_msgSend(*(a1 + 32) "_networkRouterDetailsViewControllerClass"))];
    [v4 setPresentationDelegate:*(a1 + 32)];
    v5 = [*(a1 + 32) navigationController];
    v6 = [v5 hu_pushPreloadableViewController:v4 animated:*(a1 + 48)];
  }

  else
  {
LABEL_6:
    v6 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v6;
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  itemManager = [(HUItemTableViewController *)self itemManager];
  networkConfigurationItemListModule = [itemManager networkConfigurationItemListModule];
  v8 = [moduleCopy isEqual:networkConfigurationItemListModule];

  if (v8)
  {
    v9 = [[HUNetworkConfigurationItemListModuleController alloc] initWithModule:moduleCopy];
    [(HUNetworkRouterSettingsViewController *)self setNetworkConfigurationItemListModuleController:v9];

    networkConfigurationItemListModuleController = [(HUNetworkRouterSettingsViewController *)self networkConfigurationItemListModuleController];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkRouterSettingsViewController.m" lineNumber:100 description:{@"Unexpected module %@", moduleCopy}];

    networkConfigurationItemListModuleController = 0;
  }

  return networkConfigurationItemListModuleController;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager isItemNetworkRouterServiceItem:itemCopy];

  if (v8 || (-[HUItemTableViewController itemManager](self, "itemManager"), v9 = objc_claimAutoreleasedReturnValue(), [v9 homeProtectionItem], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(itemCopy, "isEqual:", v10), v10, v9, v11))
  {
    v12 = objc_opt_class();
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkRouterSettingsViewController.m" lineNumber:110 description:{@"Couldn't find a cell class for item: %@", itemCopy}];

    v12 = 0;
  }

  return v12;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = HUNetworkRouterSettingsViewController;
  [(HUItemTableViewController *)&v16 setupCell:cellCopy forItem:itemCopy indexPath:path];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v11 = [itemManager isItemNetworkRouterServiceItem:itemCopy];

  if (v11)
  {
    v12 = cellCopy;
    [v12 setAccessoryType:{-[HUNetworkRouterSettingsViewController _shouldShowNetworkRouterDetails](self, "_shouldShowNetworkRouterDetails")}];
    [v12 setHideIcon:1];
  }

  else
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    homeProtectionItem = [itemManager2 homeProtectionItem];
    v15 = [itemCopy isEqual:homeProtectionItem];

    if (v15)
    {
      [cellCopy setDelegate:self];
    }
  }
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v18.receiver = self;
  v18.super_class = HUNetworkRouterSettingsViewController;
  [(HUItemTableViewController *)&v18 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  homeProtectionItem = [itemManager homeProtectionItem];
  LODWORD(self) = [itemCopy isEqual:homeProtectionItem];

  if (self)
  {
    v14 = cellCopy;
    latestResults = [itemCopy latestResults];
    v16 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14068]];
    v17 = [v16 integerValue] == 2;

    [v14 setOn:v17 animated:1];
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  v11 = [itemManager2 isItemNetworkRouterServiceItem:v9];

  if (v11)
  {
    _shouldShowNetworkRouterDetails = [(HUNetworkRouterSettingsViewController *)self _shouldShowNetworkRouterDetails];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = HUNetworkRouterSettingsViewController;
    _shouldShowNetworkRouterDetails = [(HUItemTableViewController *)&v15 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
  }

  v13 = _shouldShowNetworkRouterDetails;

  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = HUNetworkRouterSettingsViewController;
  [(HUItemTableViewController *)&v16 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  v11 = [itemManager2 isItemNetworkRouterServiceItem:v9];

  if (v11)
  {
    objc_opt_class();
    v12 = v9;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v15 = [(HUNetworkRouterSettingsViewController *)self presentNetworkRouterSettingsForItem:v14 animated:1];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)finishPresentation:(id)presentation animated:(BOOL)animated
{
  animatedCopy = animated;
  v32 = *MEMORY[0x277D85DE8];
  presentationCopy = presentation;
  navigationController = [(HUNetworkRouterSettingsViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v9 = [viewControllers indexOfObject:self];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      navigationController2 = [(HUNetworkRouterSettingsViewController *)self navigationController];
      navigationController3 = [(HUNetworkRouterSettingsViewController *)self navigationController];
      viewControllers2 = [navigationController3 viewControllers];
      v26 = 138412802;
      selfCopy = self;
      v28 = 2112;
      v29 = navigationController2;
      v30 = 2112;
      v31 = viewControllers2;
      _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "%@ not in %@ navigation stack: %@", &v26, 0x20u);
    }

    v9 = 0;
    v11 = 0;
  }

  else if (v9 <= 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9 - 1;
  }

  v12 = presentationCopy;
  if ([v12 conformsToProtocol:&unk_2824C3AE0])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  requiresPresentingViewControllerDismissal = [v14 requiresPresentingViewControllerDismissal];
  if (requiresPresentingViewControllerDismissal)
  {
    v9 = v11;
  }

  navigationController4 = [(HUNetworkRouterSettingsViewController *)self navigationController];
  navigationController5 = [(HUNetworkRouterSettingsViewController *)self navigationController];
  viewControllers3 = [navigationController5 viewControllers];
  v19 = [viewControllers3 objectAtIndex:v9];
  v20 = [navigationController4 popToViewController:v19 animated:animatedCopy];

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  return futureWithNoResult;
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  tableView = [(HUNetworkRouterSettingsViewController *)self tableView];
  v9 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v11 = [itemManager displayedItemAtIndexPath:v9];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  homeProtectionItem = [itemManager2 homeProtectionItem];
  v14 = [v11 isEqual:homeProtectionItem];

  if (v14)
  {
    itemManager3 = [(HUItemTableViewController *)self itemManager];
    home = [itemManager3 home];
    v17 = [home hf_updateNetworkProtection:onCopy];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __62__HUNetworkRouterSettingsViewController_switchCell_didTurnOn___block_invoke;
    v20[3] = &unk_277DBC098;
    v21 = cellCopy;
    v22 = onCopy;
    v18 = [v17 addFailureBlock:v20];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkRouterSettingsViewController.m" lineNumber:202 description:{@"Invalid item: %@", v11}];
  }
}

- (Class)_networkRouterDetailsViewControllerClass
{
  v2 = +[HUViewControllerRegistry sharedInstance];
  v3 = [v2 viewControllerClassForIdentifier:@"serviceLikeItemDetails"];

  return v3;
}

@end