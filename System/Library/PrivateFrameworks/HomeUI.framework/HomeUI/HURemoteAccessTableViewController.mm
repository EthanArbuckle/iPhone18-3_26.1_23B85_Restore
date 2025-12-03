@interface HURemoteAccessTableViewController
- (BOOL)shouldHideSeparatorsForCell:(id)cell indexPath:(id)path;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HURemoteAccessTableViewController)initWithItem:(id)item home:(id)home;
- (id)user;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)viewDidLoad;
@end

@implementation HURemoteAccessTableViewController

- (HURemoteAccessTableViewController)initWithItem:(id)item home:(id)home
{
  itemCopy = item;
  homeCopy = home;
  v8 = [HURemoteAccessItemManager alloc];
  v9 = [itemCopy copy];
  v10 = [(HURemoteAccessItemManager *)v8 initWithHome:homeCopy userItem:v9 delegate:self];

  v15.receiver = self;
  v15.super_class = HURemoteAccessTableViewController;
  v11 = [(HUItemTableViewController *)&v15 initWithItemManager:v10 tableViewStyle:1];
  if (v11)
  {
    v12 = [itemCopy copy];
    userItem = v11->_userItem;
    v11->_userItem = v12;

    objc_storeStrong(&v11->_remoteAccessItemManager, v10);
  }

  return v11;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HURemoteAccessTableViewController;
  [(HUItemTableViewController *)&v4 viewDidLoad];
  v3 = _HULocalizedStringWithDefaultValue(@"HURemoteAccessTitle", @"HURemoteAccessTitle", 1);
  [(HURemoteAccessTableViewController *)self setTitle:v3];
}

- (id)user
{
  remoteAccessItemManager = [(HURemoteAccessTableViewController *)self remoteAccessItemManager];
  user = [remoteAccessItemManager user];

  return user;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  remoteAccessItemManager = [(HURemoteAccessTableViewController *)self remoteAccessItemManager];
  allowRemoteAccessItem = [remoteAccessItemManager allowRemoteAccessItem];
  v10 = [itemCopy isEqual:allowRemoteAccessItem];

  if (v10)
  {
    v11 = objc_opt_class();
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HURemoteAccessTableViewController;
    v11 = [(HUItemTableViewController *)&v14 cellClassForItem:itemCopy indexPath:pathCopy];
  }

  v12 = v11;

  return v12;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  v14.receiver = self;
  v14.super_class = HURemoteAccessTableViewController;
  itemCopy = item;
  [(HUItemTableViewController *)&v14 setupCell:cellCopy forItem:itemCopy indexPath:path];
  v10 = [(HURemoteAccessTableViewController *)self remoteAccessItemManager:v14.receiver];
  allowRemoteAccessItem = [v10 allowRemoteAccessItem];
  v12 = [itemCopy isEqual:allowRemoteAccessItem];

  if (v12)
  {
    v13 = cellCopy;
    [v13 setDelegate:self];
    [v13 setSelectionStyle:0];
  }
}

- (BOOL)shouldHideSeparatorsForCell:(id)cell indexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  v14.receiver = self;
  v14.super_class = HURemoteAccessTableViewController;
  LOBYTE(itemManager) = [(HUItemTableViewController *)&v14 shouldHideSeparatorsForCell:cellCopy indexPath:pathCopy];

  if (itemManager)
  {
    v10 = 1;
  }

  else
  {
    remoteAccessItemManager = [(HURemoteAccessTableViewController *)self remoteAccessItemManager];
    allowRemoteAccessItem = [remoteAccessItemManager allowRemoteAccessItem];
    v10 = [v9 isEqual:allowRemoteAccessItem];
  }

  return v10;
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  cellCopy = cell;
  tableView = [(HURemoteAccessTableViewController *)self tableView];
  v8 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v27 = v8;
  v10 = [itemManager displayedItemAtIndexPath:v8];

  remoteAccessItemManager = [(HURemoteAccessTableViewController *)self remoteAccessItemManager];
  user = [remoteAccessItemManager user];

  remoteAccessItemManager2 = [(HURemoteAccessTableViewController *)self remoteAccessItemManager];
  home = [remoteAccessItemManager2 home];
  v15 = [home homeAccessControlForUser:user];

  remoteAccessItemManager3 = [(HURemoteAccessTableViewController *)self remoteAccessItemManager];
  allowRemoteAccessItem = [remoteAccessItemManager3 allowRemoteAccessItem];
  v18 = [v10 isEqual:allowRemoteAccessItem];

  if (v18)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__HURemoteAccessTableViewController_switchCell_didTurnOn___block_invoke;
    aBlock[3] = &unk_277DBAE20;
    v36 = v15;
    onCopy = on;
    v19 = _Block_copy(aBlock);
  }

  else
  {
    v19 = 0;
  }

  v20 = MEMORY[0x277D2C900];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __58__HURemoteAccessTableViewController_switchCell_didTurnOn___block_invoke_2;
  v33[3] = &unk_277DBDA90;
  v34 = v19;
  v21 = v19;
  v22 = [v20 futureWithErrorOnlyHandlerAdapterBlock:v33];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __58__HURemoteAccessTableViewController_switchCell_didTurnOn___block_invoke_3;
  v31[3] = &unk_277DB7E68;
  v31[4] = self;
  v32 = user;
  v23 = user;
  v24 = [v22 addSuccessBlock:v31];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __58__HURemoteAccessTableViewController_switchCell_didTurnOn___block_invoke_5;
  v28[3] = &unk_277DBC098;
  v29 = cellCopy;
  onCopy2 = on;
  v25 = cellCopy;
  v26 = [v22 addFailureBlock:v28];
}

void __58__HURemoteAccessTableViewController_switchCell_didTurnOn___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__HURemoteAccessTableViewController_switchCell_didTurnOn___block_invoke_4;
  v4[3] = &unk_277DB9920;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 dispatchHomeObserverMessage:v4 sender:0];
}

void __58__HURemoteAccessTableViewController_switchCell_didTurnOn___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) itemManager];
    v4 = [v3 home];
    [v5 home:v4 didUpdateAccessControlForUser:*(a1 + 40)];
  }
}

uint64_t __58__HURemoteAccessTableViewController_switchCell_didTurnOn___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D14640];
  v4 = a2;
  v5 = [v3 sharedHandler];
  [v5 handleError:v4 operationType:*MEMORY[0x277D13C70] options:0 retryBlock:0 cancelBlock:0];

  v6 = *(a1 + 32);
  v7 = (*(a1 + 40) & 1) == 0;

  return [v6 setOn:v7 animated:1];
}

@end