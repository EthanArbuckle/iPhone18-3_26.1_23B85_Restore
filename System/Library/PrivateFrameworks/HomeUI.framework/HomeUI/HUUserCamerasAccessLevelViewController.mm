@interface HUUserCamerasAccessLevelViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUUserCamerasAccessLevelViewController)initWithUserItem:(id)item home:(id)home;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation HUUserCamerasAccessLevelViewController

- (HUUserCamerasAccessLevelViewController)initWithUserItem:(id)item home:(id)home
{
  itemCopy = item;
  homeCopy = home;
  v8 = [HUUserCamerasAccessLevelItemManager alloc];
  v9 = [itemCopy copy];
  v10 = [(HUUserCamerasAccessLevelItemManager *)v8 initWithHome:homeCopy userItem:v9 delegate:self];

  v15.receiver = self;
  v15.super_class = HUUserCamerasAccessLevelViewController;
  v11 = [(HUItemTableViewController *)&v15 initWithItemManager:v10 tableViewStyle:1];
  if (v11)
  {
    v12 = [itemCopy copy];
    userItem = v11->_userItem;
    v11->_userItem = v12;

    objc_storeStrong(&v11->_camerasAccessLevelItemManager, v10);
  }

  return v11;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HUUserCamerasAccessLevelViewController;
  [(HUItemTableViewController *)&v4 viewDidLoad];
  v3 = _HULocalizedStringWithDefaultValue(@"HUUsersCamerasTitle", @"HUUsersCamerasTitle", 1);
  [(HUUserCamerasAccessLevelViewController *)self setTitle:v3];
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  camerasAccessLevelItemManager = [(HUUserCamerasAccessLevelViewController *)self camerasAccessLevelItemManager];
  accessLevelItems = [camerasAccessLevelItemManager accessLevelItems];
  v10 = [accessLevelItems containsObject:itemCopy];

  if (v10)
  {
    v11 = objc_opt_class();
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HUUserCamerasAccessLevelViewController;
    v11 = [(HUItemTableViewController *)&v14 cellClassForItem:itemCopy indexPath:pathCopy];
  }

  v12 = v11;

  return v12;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = HUUserCamerasAccessLevelViewController;
  [(HUItemTableViewController *)&v20 setupCell:cellCopy forItem:itemCopy indexPath:path];
  camerasAccessLevelItemManager = [(HUUserCamerasAccessLevelViewController *)self camerasAccessLevelItemManager];
  accessLevelItems = [camerasAccessLevelItemManager accessLevelItems];
  v12 = [accessLevelItems containsObject:itemCopy];

  if (v12)
  {
    latestResults = [itemCopy latestResults];
    v14 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    textLabel = [cellCopy textLabel];
    [textLabel setText:v14];

    latestResults2 = [itemCopy latestResults];
    v17 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    LODWORD(textLabel) = [v17 BOOLValue];

    [cellCopy setUserInteractionEnabled:textLabel ^ 1];
    textLabel2 = [cellCopy textLabel];
    [textLabel2 setEnabled:textLabel ^ 1];

    if (textLabel)
    {
      v19 = 0;
    }

    else
    {
      v19 = 3;
    }

    [cellCopy setSelectionStyle:v19];
  }
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = HUUserCamerasAccessLevelViewController;
  [(HUItemTableViewController *)&v20 updateCell:cellCopy forItem:itemCopy indexPath:pathCopy animated:animatedCopy];
  camerasAccessLevelItemManager = [(HUUserCamerasAccessLevelViewController *)self camerasAccessLevelItemManager];
  accessLevelItems = [camerasAccessLevelItemManager accessLevelItems];
  v15 = [accessLevelItems containsObject:itemCopy];

  if (v15)
  {
    latestResults = [itemCopy latestResults];
    v17 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
    bOOLValue = [v17 BOOLValue];

    if (bOOLValue)
    {
      [(HUUserCamerasAccessLevelViewController *)self setSelectedIndexPath:pathCopy];
      v19 = 3;
    }

    else
    {
      v19 = 0;
    }

    [cellCopy setAccessoryType:v19];
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  selectedIndexPath = [(HUUserCamerasAccessLevelViewController *)self selectedIndexPath];
  v7 = [selectedIndexPath isEqual:pathCopy];

  return v7 ^ 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v36.receiver = self;
  v36.super_class = HUUserCamerasAccessLevelViewController;
  viewCopy = view;
  [(HUItemTableViewController *)&v36 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [(HUUserCamerasAccessLevelViewController *)self setSelectedIndexPath:pathCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  camerasAccessLevelItemManager = [(HUUserCamerasAccessLevelViewController *)self camerasAccessLevelItemManager];
  user = [camerasAccessLevelItemManager user];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  home = [itemManager2 home];
  v14 = [home homeAccessControlForUser:user];

  camerasAccessLevelItemManager2 = [(HUUserCamerasAccessLevelViewController *)self camerasAccessLevelItemManager];
  accessLevelItems = [camerasAccessLevelItemManager2 accessLevelItems];
  v17 = [accessLevelItems containsObject:v9];

  if (v17)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__HUUserCamerasAccessLevelViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    aBlock[3] = &unk_277DBB448;
    v34 = v9;
    v35 = v14;
    v18 = _Block_copy(aBlock);
  }

  else
  {
    v18 = 0;
  }

  v19 = MEMORY[0x277D2C900];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __76__HUUserCamerasAccessLevelViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  v31[3] = &unk_277DBDA90;
  v32 = v18;
  v20 = v18;
  v21 = [v19 futureWithErrorOnlyHandlerAdapterBlock:v31];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __76__HUUserCamerasAccessLevelViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
  v28 = &unk_277DB7E68;
  selfCopy = self;
  v30 = user;
  v22 = user;
  v23 = [v21 addSuccessBlock:&v25];
  v24 = [v21 addFailureBlock:{&__block_literal_global_147, v25, v26, v27, v28, selfCopy}];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

void __76__HUUserCamerasAccessLevelViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = [v3 latestResults];
  v5 = [v4 objectForKeyedSubscript:@"HFAccessLevelValueResultKey"];
  v6 = [v5 integerValue];

  [*(a1 + 40) updateCamerasAccessLevel:v6 completionHandler:v7];
}

void __76__HUUserCamerasAccessLevelViewController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__HUUserCamerasAccessLevelViewController_tableView_didSelectRowAtIndexPath___block_invoke_4;
  v4[3] = &unk_277DB9920;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 dispatchHomeObserverMessage:v4 sender:0];
}

void __76__HUUserCamerasAccessLevelViewController_tableView_didSelectRowAtIndexPath___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) itemManager];
    v4 = [v3 home];
    [v5 home:v4 didUpdateAccessControlForUser:*(a1 + 40)];
  }
}

void __76__HUUserCamerasAccessLevelViewController_tableView_didSelectRowAtIndexPath___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3 operationType:*MEMORY[0x277D13C70] options:0 retryBlock:0 cancelBlock:0];
}

@end