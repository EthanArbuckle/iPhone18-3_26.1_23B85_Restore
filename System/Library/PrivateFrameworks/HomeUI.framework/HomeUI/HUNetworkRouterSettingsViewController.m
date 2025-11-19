@interface HUNetworkRouterSettingsViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (Class)_networkRouterDetailsViewControllerClass;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUNetworkRouterSettingsViewController)initWithHome:(id)a3;
- (HUNetworkRouterSettingsViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)finishPresentation:(id)a3 animated:(BOOL)a4;
- (id)presentNetworkConfigurationSettingsForProfile:(id)a3 animated:(BOOL)a4;
- (id)presentNetworkRouterSettingsForAccessory:(id)a3 animated:(BOOL)a4;
- (id)presentNetworkRouterSettingsForItem:(id)a3 animated:(BOOL)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
@end

@implementation HUNetworkRouterSettingsViewController

- (HUNetworkRouterSettingsViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUNetworkRouterSettingsViewController.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkRouterSettingsViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUNetworkRouterSettingsViewController)initWithHome:(id)a3
{
  v4 = a3;
  v5 = [[HUNetworkRouterSettingsItemManager alloc] initWithHome:v4 delegate:self];

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

- (id)presentNetworkConfigurationSettingsForProfile:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self hu_preloadContent];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__HUNetworkRouterSettingsViewController_presentNetworkConfigurationSettingsForProfile_animated___block_invoke;
  v11[3] = &unk_277DB7830;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [v7 flatMap:v11];

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

- (id)presentNetworkRouterSettingsForAccessory:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self hu_preloadContent];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__HUNetworkRouterSettingsViewController_presentNetworkRouterSettingsForAccessory_animated___block_invoke;
  v11[3] = &unk_277DB7830;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [v7 flatMap:v11];

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

- (id)presentNetworkRouterSettingsForItem:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self hu_preloadContent];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__HUNetworkRouterSettingsViewController_presentNetworkRouterSettingsForItem_animated___block_invoke;
  v11[3] = &unk_277DB7830;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [v7 flatMap:v11];

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

- (id)buildItemModuleControllerForModule:(id)a3
{
  v5 = a3;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 networkConfigurationItemListModule];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    v9 = [[HUNetworkConfigurationItemListModuleController alloc] initWithModule:v5];
    [(HUNetworkRouterSettingsViewController *)self setNetworkConfigurationItemListModuleController:v9];

    v10 = [(HUNetworkRouterSettingsViewController *)self networkConfigurationItemListModuleController];
  }

  else
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HUNetworkRouterSettingsViewController.m" lineNumber:100 description:{@"Unexpected module %@", v5}];

    v10 = 0;
  }

  return v10;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 isItemNetworkRouterServiceItem:v6];

  if (v8 || (-[HUItemTableViewController itemManager](self, "itemManager"), v9 = objc_claimAutoreleasedReturnValue(), [v9 homeProtectionItem], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v6, "isEqual:", v10), v10, v9, v11))
  {
    v12 = objc_opt_class();
  }

  else
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HUNetworkRouterSettingsViewController.m" lineNumber:110 description:{@"Couldn't find a cell class for item: %@", v6}];

    v12 = 0;
  }

  return v12;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = HUNetworkRouterSettingsViewController;
  [(HUItemTableViewController *)&v16 setupCell:v8 forItem:v9 indexPath:a5];
  v10 = [(HUItemTableViewController *)self itemManager];
  v11 = [v10 isItemNetworkRouterServiceItem:v9];

  if (v11)
  {
    v12 = v8;
    [v12 setAccessoryType:{-[HUNetworkRouterSettingsViewController _shouldShowNetworkRouterDetails](self, "_shouldShowNetworkRouterDetails")}];
    [v12 setHideIcon:1];
  }

  else
  {
    v13 = [(HUItemTableViewController *)self itemManager];
    v14 = [v13 homeProtectionItem];
    v15 = [v9 isEqual:v14];

    if (v15)
    {
      [v8 setDelegate:self];
    }
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = HUNetworkRouterSettingsViewController;
  [(HUItemTableViewController *)&v18 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  v12 = [(HUItemTableViewController *)self itemManager];
  v13 = [v12 homeProtectionItem];
  LODWORD(self) = [v11 isEqual:v13];

  if (self)
  {
    v14 = v10;
    v15 = [v11 latestResults];
    v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D14068]];
    v17 = [v16 integerValue] == 2;

    [v14 setOn:v17 animated:1];
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  v10 = [(HUItemTableViewController *)self itemManager];
  v11 = [v10 isItemNetworkRouterServiceItem:v9];

  if (v11)
  {
    v12 = [(HUNetworkRouterSettingsViewController *)self _shouldShowNetworkRouterDetails];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = HUNetworkRouterSettingsViewController;
    v12 = [(HUItemTableViewController *)&v15 tableView:v6 shouldHighlightRowAtIndexPath:v7];
  }

  v13 = v12;

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = HUNetworkRouterSettingsViewController;
  [(HUItemTableViewController *)&v16 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  v10 = [(HUItemTableViewController *)self itemManager];
  v11 = [v10 isItemNetworkRouterServiceItem:v9];

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

  [v6 deselectRowAtIndexPath:v7 animated:1];
}

- (id)finishPresentation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HUNetworkRouterSettingsViewController *)self navigationController];
  v8 = [v7 viewControllers];
  v9 = [v8 indexOfObject:self];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v23 = [(HUNetworkRouterSettingsViewController *)self navigationController];
      v24 = [(HUNetworkRouterSettingsViewController *)self navigationController];
      v25 = [v24 viewControllers];
      v26 = 138412802;
      v27 = self;
      v28 = 2112;
      v29 = v23;
      v30 = 2112;
      v31 = v25;
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

  v12 = v6;
  if ([v12 conformsToProtocol:&unk_2824C3AE0])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v14 requiresPresentingViewControllerDismissal];
  if (v15)
  {
    v9 = v11;
  }

  v16 = [(HUNetworkRouterSettingsViewController *)self navigationController];
  v17 = [(HUNetworkRouterSettingsViewController *)self navigationController];
  v18 = [v17 viewControllers];
  v19 = [v18 objectAtIndex:v9];
  v20 = [v16 popToViewController:v19 animated:v4];

  v21 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v21;
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [(HUNetworkRouterSettingsViewController *)self tableView];
  v9 = [v8 indexPathForCell:v7];

  v10 = [(HUItemTableViewController *)self itemManager];
  v11 = [v10 displayedItemAtIndexPath:v9];

  v12 = [(HUItemTableViewController *)self itemManager];
  v13 = [v12 homeProtectionItem];
  v14 = [v11 isEqual:v13];

  if (v14)
  {
    v15 = [(HUItemTableViewController *)self itemManager];
    v16 = [v15 home];
    v17 = [v16 hf_updateNetworkProtection:v4];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __62__HUNetworkRouterSettingsViewController_switchCell_didTurnOn___block_invoke;
    v20[3] = &unk_277DBC098;
    v21 = v7;
    v22 = v4;
    v18 = [v17 addFailureBlock:v20];
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HUNetworkRouterSettingsViewController.m" lineNumber:202 description:{@"Invalid item: %@", v11}];
  }
}

- (Class)_networkRouterDetailsViewControllerClass
{
  v2 = +[HUViewControllerRegistry sharedInstance];
  v3 = [v2 viewControllerClassForIdentifier:@"serviceLikeItemDetails"];

  return v3;
}

@end