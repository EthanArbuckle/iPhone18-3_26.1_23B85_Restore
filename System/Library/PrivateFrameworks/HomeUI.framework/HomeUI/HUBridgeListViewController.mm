@interface HUBridgeListViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (Class)_bridgeDetailsViewControllerClass;
- (HUBridgeListViewController)initWithHome:(id)home;
- (HUBridgeListViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (id)_presentBridgeSettingsForItem:(id)item animated:(BOOL)animated;
- (id)finishPresentation:(id)presentation animated:(BOOL)animated;
- (id)itemTableHeaderView;
- (id)presentBridgeSettingsForAccessory:(id)accessory animated:(BOOL)animated;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation HUBridgeListViewController

- (HUBridgeListViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUBridgeListViewController.m" lineNumber:32 description:{@"%s is unavailable; use %@ instead", "-[HUBridgeListViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUBridgeListViewController)initWithHome:(id)home
{
  v32 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = [[HUBridgeListItemManager alloc] initWithHome:homeCopy delegate:self];
  v19.receiver = self;
  v19.super_class = HUBridgeListViewController;
  v6 = [(HUItemTableViewController *)&v19 initWithItemManager:v5 tableViewStyle:1];
  if (v6)
  {
    v7 = _HULocalizedStringWithDefaultValue(@"HUBridgeAndResidentListItemTitle", @"HUBridgeAndResidentListItemTitle", 1);
    [(HUBridgeListViewController *)v6 setTitle:v7];

    residentDevices = [homeCopy residentDevices];
    v9 = [residentDevices na_filter:&__block_literal_global_7];
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    homeManager = [mEMORY[0x277D146E8] homeManager];
    hasOptedToHH2 = [homeManager hasOptedToHH2];

    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [homeCopy uniqueIdentifier];
      v15 = [residentDevices count];
      v16 = [v9 count];
      *buf = 138413570;
      v21 = homeCopy;
      v22 = 2114;
      v23 = uniqueIdentifier;
      v24 = 2048;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      v28 = 2112;
      v29 = v9;
      v30 = 1024;
      v31 = hasOptedToHH2;
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "[HUBridgeListViewController-initWithHome:] home = %@ (uniqueIdentifier = %{public}@) | Total residents: %lu - Reachable (%lu): %@ | hasOptedToHH2 = %{BOOL}d", buf, 0x3Au);
    }

    v17 = hasOptedToHH2 && [residentDevices count] && objc_msgSend(v9, "count") == 0;
    v6->_shouldShowHomeHubWarningHeader = v17;
  }

  return v6;
}

- (id)itemTableHeaderView
{
  if ([(HUBridgeListViewController *)self shouldShowHomeHubWarningHeader])
  {
    homehubHeaderView = [(HUBridgeListViewController *)self homehubHeaderView];

    if (!homehubHeaderView)
    {
      v4 = HULocalizedWiFiString(@"HUBridgeAndResidentListHomeHubWarningHeader");
      v5 = [[HUHomeHubHeaderView alloc] initWithMessage:v4];
      [(HUBridgeListViewController *)self setHomehubHeaderView:v5];

      homehubHeaderView2 = [(HUBridgeListViewController *)self homehubHeaderView];
      [homehubHeaderView2 layoutIfNeeded];
    }

    homehubHeaderView3 = [(HUBridgeListViewController *)self homehubHeaderView];
  }

  else
  {
    [(HUBridgeListViewController *)self setHomehubHeaderView:0];
    homehubHeaderView3 = 0;
  }

  return homehubHeaderView3;
}

- (id)presentBridgeSettingsForAccessory:(id)accessory animated:(BOOL)animated
{
  accessoryCopy = accessory;
  hu_preloadContent = [(HUItemTableViewController *)self hu_preloadContent];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__HUBridgeListViewController_presentBridgeSettingsForAccessory_animated___block_invoke;
  v11[3] = &unk_277DB7830;
  v11[4] = self;
  v12 = accessoryCopy;
  animatedCopy = animated;
  v8 = accessoryCopy;
  v9 = [hu_preloadContent flatMap:v11];

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

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = HUBridgeListViewController;
  [(HUItemTableViewController *)&v15 setupCell:cellCopy forItem:itemCopy indexPath:path];
  v10 = cellCopy;
  [v10 setIconDisplayStyle:1];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v12 = [itemManager isBridgeItem:itemCopy];

  if (v12)
  {
    [v10 setAccessoryType:{-[HUBridgeListViewController _bridgeDetailsViewControllerClass](self, "_bridgeDetailsViewControllerClass") != 0}];
    [v10 setHideValue:1];
  }

  else
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    v14 = [itemManager2 isResidentDeviceItem:itemCopy];

    if (v14)
    {
      [v10 setHideIcon:1];
    }
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  section = [pathCopy section];

  v8 = [itemManager displayedSectionIdentifierForSectionIndex:section];
  LODWORD(section) = [v8 isEqualToString:@"HUBridgeAndResidentDeviceBridgeSectionIdentifier"];

  return section && [(HUBridgeListViewController *)self _bridgeDetailsViewControllerClass]!= 0;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v17 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = HUBridgeListViewController;
  viewCopy = view;
  [(HUItemTableViewController *)&v12 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(HUItemTableViewController *)self itemManager:v12.receiver];
  v9 = [v8 displayedItemAtIndexPath:pathCopy];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = pathCopy;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "[HUBridgeListViewController-tableView:didSelectRowAtIndexPath] indexPath = %@ | item = %@", buf, 0x16u);
  }

  v11 = [(HUBridgeListViewController *)self _presentBridgeSettingsForItem:v9 animated:1];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (Class)_bridgeDetailsViewControllerClass
{
  v2 = +[HUViewControllerRegistry sharedInstance];
  v3 = [v2 viewControllerClassForIdentifier:@"serviceLikeItemDetails"];

  return v3;
}

- (id)_presentBridgeSettingsForItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager isBridgeItem:itemCopy];

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = &unk_28251B0C8;
  v10 = itemCopy;
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

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v16 = NSStringFromProtocol(v9);
    [currentHandler handleFailureInFunction:v15 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v16}];
  }

  v13 = 0;
LABEL_9:

  if ([(HUBridgeListViewController *)self _bridgeDetailsViewControllerClass])
  {
    v17 = [objc_alloc(-[HUBridgeListViewController _bridgeDetailsViewControllerClass](self "_bridgeDetailsViewControllerClass"))];
    [v17 setPresentationDelegate:self];
    navigationController = [(HUBridgeListViewController *)self navigationController];
    futureWithNoResult = [navigationController hu_pushPreloadableViewController:v17 animated:animatedCopy];

    goto LABEL_13;
  }

LABEL_12:
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_13:

  return futureWithNoResult;
}

- (id)finishPresentation:(id)presentation animated:(BOOL)animated
{
  v4 = [(HUBridgeListViewController *)self navigationController:presentation];
  v5 = [v4 popViewControllerAnimated:1];

  v6 = MEMORY[0x277D2C900];

  return [v6 futureWithNoResult];
}

@end