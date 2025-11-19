@interface HUBridgeListViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (Class)_bridgeDetailsViewControllerClass;
- (HUBridgeListViewController)initWithHome:(id)a3;
- (HUBridgeListViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (id)_presentBridgeSettingsForItem:(id)a3 animated:(BOOL)a4;
- (id)finishPresentation:(id)a3 animated:(BOOL)a4;
- (id)itemTableHeaderView;
- (id)presentBridgeSettingsForAccessory:(id)a3 animated:(BOOL)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation HUBridgeListViewController

- (HUBridgeListViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUBridgeListViewController.m" lineNumber:32 description:{@"%s is unavailable; use %@ instead", "-[HUBridgeListViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUBridgeListViewController)initWithHome:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HUBridgeListItemManager alloc] initWithHome:v4 delegate:self];
  v19.receiver = self;
  v19.super_class = HUBridgeListViewController;
  v6 = [(HUItemTableViewController *)&v19 initWithItemManager:v5 tableViewStyle:1];
  if (v6)
  {
    v7 = _HULocalizedStringWithDefaultValue(@"HUBridgeAndResidentListItemTitle", @"HUBridgeAndResidentListItemTitle", 1);
    [(HUBridgeListViewController *)v6 setTitle:v7];

    v8 = [v4 residentDevices];
    v9 = [v8 na_filter:&__block_literal_global_7];
    v10 = [MEMORY[0x277D146E8] sharedDispatcher];
    v11 = [v10 homeManager];
    v12 = [v11 hasOptedToHH2];

    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v4 uniqueIdentifier];
      v15 = [v8 count];
      v16 = [v9 count];
      *buf = 138413570;
      v21 = v4;
      v22 = 2114;
      v23 = v14;
      v24 = 2048;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      v28 = 2112;
      v29 = v9;
      v30 = 1024;
      v31 = v12;
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "[HUBridgeListViewController-initWithHome:] home = %@ (uniqueIdentifier = %{public}@) | Total residents: %lu - Reachable (%lu): %@ | hasOptedToHH2 = %{BOOL}d", buf, 0x3Au);
    }

    v17 = v12 && [v8 count] && objc_msgSend(v9, "count") == 0;
    v6->_shouldShowHomeHubWarningHeader = v17;
  }

  return v6;
}

- (id)itemTableHeaderView
{
  if ([(HUBridgeListViewController *)self shouldShowHomeHubWarningHeader])
  {
    v3 = [(HUBridgeListViewController *)self homehubHeaderView];

    if (!v3)
    {
      v4 = HULocalizedWiFiString(@"HUBridgeAndResidentListHomeHubWarningHeader");
      v5 = [[HUHomeHubHeaderView alloc] initWithMessage:v4];
      [(HUBridgeListViewController *)self setHomehubHeaderView:v5];

      v6 = [(HUBridgeListViewController *)self homehubHeaderView];
      [v6 layoutIfNeeded];
    }

    v7 = [(HUBridgeListViewController *)self homehubHeaderView];
  }

  else
  {
    [(HUBridgeListViewController *)self setHomehubHeaderView:0];
    v7 = 0;
  }

  return v7;
}

- (id)presentBridgeSettingsForAccessory:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self hu_preloadContent];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__HUBridgeListViewController_presentBridgeSettingsForAccessory_animated___block_invoke;
  v11[3] = &unk_277DB7830;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [v7 flatMap:v11];

  return v9;
}

id __73__HUBridgeListViewController_presentBridgeSettingsForAccessory_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemManager];
  v3 = [v2 bridgeItemForAccessory:*(a1 + 40)];

  if (v3)
  {
    [*(a1 + 32) _presentBridgeSettingsForItem:v3 animated:*(a1 + 48)];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v4 = ;

  return v4;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = HUBridgeListViewController;
  [(HUItemTableViewController *)&v15 setupCell:v8 forItem:v9 indexPath:a5];
  v10 = v8;
  [v10 setIconDisplayStyle:1];
  v11 = [(HUItemTableViewController *)self itemManager];
  v12 = [v11 isBridgeItem:v9];

  if (v12)
  {
    [v10 setAccessoryType:{-[HUBridgeListViewController _bridgeDetailsViewControllerClass](self, "_bridgeDetailsViewControllerClass") != 0}];
    [v10 setHideValue:1];
  }

  else
  {
    v13 = [(HUItemTableViewController *)self itemManager];
    v14 = [v13 isResidentDeviceItem:v9];

    if (v14)
    {
      [v10 setHideIcon:1];
    }
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v5 section];

  v8 = [v6 displayedSectionIdentifierForSectionIndex:v7];
  LODWORD(v7) = [v8 isEqualToString:@"HUBridgeAndResidentDeviceBridgeSectionIdentifier"];

  return v7 && [(HUBridgeListViewController *)self _bridgeDetailsViewControllerClass]!= 0;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HUBridgeListViewController;
  v7 = a3;
  [(HUItemTableViewController *)&v12 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [(HUItemTableViewController *)self itemManager:v12.receiver];
  v9 = [v8 displayedItemAtIndexPath:v6];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "[HUBridgeListViewController-tableView:didSelectRowAtIndexPath] indexPath = %@ | item = %@", buf, 0x16u);
  }

  v11 = [(HUBridgeListViewController *)self _presentBridgeSettingsForItem:v9 animated:1];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (Class)_bridgeDetailsViewControllerClass
{
  v2 = +[HUViewControllerRegistry sharedInstance];
  v3 = [v2 viewControllerClassForIdentifier:@"serviceLikeItemDetails"];

  return v3;
}

- (id)_presentBridgeSettingsForItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 isBridgeItem:v6];

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = &unk_28251B0C8;
  v10 = v6;
  v11 = v10;
  if (v10)
  {
    if ([v10 conformsToProtocol:v9])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v11;
    if (v12)
    {
      goto LABEL_9;
    }

    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v16 = NSStringFromProtocol(v9);
    [v14 handleFailureInFunction:v15 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v16}];
  }

  v13 = 0;
LABEL_9:

  if ([(HUBridgeListViewController *)self _bridgeDetailsViewControllerClass])
  {
    v17 = [objc_alloc(-[HUBridgeListViewController _bridgeDetailsViewControllerClass](self "_bridgeDetailsViewControllerClass"))];
    [v17 setPresentationDelegate:self];
    v18 = [(HUBridgeListViewController *)self navigationController];
    v19 = [v18 hu_pushPreloadableViewController:v17 animated:v4];

    goto LABEL_13;
  }

LABEL_12:
  v19 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_13:

  return v19;
}

- (id)finishPresentation:(id)a3 animated:(BOOL)a4
{
  v4 = [(HUBridgeListViewController *)self navigationController:a3];
  v5 = [v4 popViewControllerAnimated:1];

  v6 = MEMORY[0x277D2C900];

  return [v6 futureWithNoResult];
}

@end