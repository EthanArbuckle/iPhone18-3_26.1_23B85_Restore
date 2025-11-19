@interface HURemoteAccessTableViewController
- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HURemoteAccessTableViewController)initWithItem:(id)a3 home:(id)a4;
- (id)user;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation HURemoteAccessTableViewController

- (HURemoteAccessTableViewController)initWithItem:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [HURemoteAccessItemManager alloc];
  v9 = [v6 copy];
  v10 = [(HURemoteAccessItemManager *)v8 initWithHome:v7 userItem:v9 delegate:self];

  v15.receiver = self;
  v15.super_class = HURemoteAccessTableViewController;
  v11 = [(HUItemTableViewController *)&v15 initWithItemManager:v10 tableViewStyle:1];
  if (v11)
  {
    v12 = [v6 copy];
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
  v2 = [(HURemoteAccessTableViewController *)self remoteAccessItemManager];
  v3 = [v2 user];

  return v3;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HURemoteAccessTableViewController *)self remoteAccessItemManager];
  v9 = [v8 allowRemoteAccessItem];
  v10 = [v6 isEqual:v9];

  if (v10)
  {
    v11 = objc_opt_class();
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HURemoteAccessTableViewController;
    v11 = [(HUItemTableViewController *)&v14 cellClassForItem:v6 indexPath:v7];
  }

  v12 = v11;

  return v12;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = HURemoteAccessTableViewController;
  v9 = a4;
  [(HUItemTableViewController *)&v14 setupCell:v8 forItem:v9 indexPath:a5];
  v10 = [(HURemoteAccessTableViewController *)self remoteAccessItemManager:v14.receiver];
  v11 = [v10 allowRemoteAccessItem];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    v13 = v8;
    [v13 setDelegate:self];
    [v13 setSelectionStyle:0];
  }
}

- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v6];

  v14.receiver = self;
  v14.super_class = HURemoteAccessTableViewController;
  LOBYTE(v8) = [(HUItemTableViewController *)&v14 shouldHideSeparatorsForCell:v7 indexPath:v6];

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v11 = [(HURemoteAccessTableViewController *)self remoteAccessItemManager];
    v12 = [v11 allowRemoteAccessItem];
    v10 = [v9 isEqual:v12];
  }

  return v10;
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v6 = a3;
  v7 = [(HURemoteAccessTableViewController *)self tableView];
  v8 = [v7 indexPathForCell:v6];

  v9 = [(HUItemTableViewController *)self itemManager];
  v27 = v8;
  v10 = [v9 displayedItemAtIndexPath:v8];

  v11 = [(HURemoteAccessTableViewController *)self remoteAccessItemManager];
  v12 = [v11 user];

  v13 = [(HURemoteAccessTableViewController *)self remoteAccessItemManager];
  v14 = [v13 home];
  v15 = [v14 homeAccessControlForUser:v12];

  v16 = [(HURemoteAccessTableViewController *)self remoteAccessItemManager];
  v17 = [v16 allowRemoteAccessItem];
  v18 = [v10 isEqual:v17];

  if (v18)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__HURemoteAccessTableViewController_switchCell_didTurnOn___block_invoke;
    aBlock[3] = &unk_277DBAE20;
    v36 = v15;
    v37 = a4;
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
  v32 = v12;
  v23 = v12;
  v24 = [v22 addSuccessBlock:v31];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __58__HURemoteAccessTableViewController_switchCell_didTurnOn___block_invoke_5;
  v28[3] = &unk_277DBC098;
  v29 = v6;
  v30 = a4;
  v25 = v6;
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