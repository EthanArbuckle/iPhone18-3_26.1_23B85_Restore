@interface HUUserCamerasAccessLevelViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUUserCamerasAccessLevelViewController)initWithUserItem:(id)a3 home:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidLoad;
@end

@implementation HUUserCamerasAccessLevelViewController

- (HUUserCamerasAccessLevelViewController)initWithUserItem:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [HUUserCamerasAccessLevelItemManager alloc];
  v9 = [v6 copy];
  v10 = [(HUUserCamerasAccessLevelItemManager *)v8 initWithHome:v7 userItem:v9 delegate:self];

  v15.receiver = self;
  v15.super_class = HUUserCamerasAccessLevelViewController;
  v11 = [(HUItemTableViewController *)&v15 initWithItemManager:v10 tableViewStyle:1];
  if (v11)
  {
    v12 = [v6 copy];
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

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUUserCamerasAccessLevelViewController *)self camerasAccessLevelItemManager];
  v9 = [v8 accessLevelItems];
  v10 = [v9 containsObject:v6];

  if (v10)
  {
    v11 = objc_opt_class();
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HUUserCamerasAccessLevelViewController;
    v11 = [(HUItemTableViewController *)&v14 cellClassForItem:v6 indexPath:v7];
  }

  v12 = v11;

  return v12;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = HUUserCamerasAccessLevelViewController;
  [(HUItemTableViewController *)&v20 setupCell:v8 forItem:v9 indexPath:a5];
  v10 = [(HUUserCamerasAccessLevelViewController *)self camerasAccessLevelItemManager];
  v11 = [v10 accessLevelItems];
  v12 = [v11 containsObject:v9];

  if (v12)
  {
    v13 = [v9 latestResults];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v15 = [v8 textLabel];
    [v15 setText:v14];

    v16 = [v9 latestResults];
    v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    LODWORD(v15) = [v17 BOOLValue];

    [v8 setUserInteractionEnabled:v15 ^ 1];
    v18 = [v8 textLabel];
    [v18 setEnabled:v15 ^ 1];

    if (v15)
    {
      v19 = 0;
    }

    else
    {
      v19 = 3;
    }

    [v8 setSelectionStyle:v19];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v20.receiver = self;
  v20.super_class = HUUserCamerasAccessLevelViewController;
  [(HUItemTableViewController *)&v20 updateCell:v10 forItem:v11 indexPath:v12 animated:v6];
  v13 = [(HUUserCamerasAccessLevelViewController *)self camerasAccessLevelItemManager];
  v14 = [v13 accessLevelItems];
  v15 = [v14 containsObject:v11];

  if (v15)
  {
    v16 = [v11 latestResults];
    v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
    v18 = [v17 BOOLValue];

    if (v18)
    {
      [(HUUserCamerasAccessLevelViewController *)self setSelectedIndexPath:v12];
      v19 = 3;
    }

    else
    {
      v19 = 0;
    }

    [v10 setAccessoryType:v19];
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUUserCamerasAccessLevelViewController *)self selectedIndexPath];
  v7 = [v6 isEqual:v5];

  return v7 ^ 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v36.receiver = self;
  v36.super_class = HUUserCamerasAccessLevelViewController;
  v7 = a3;
  [(HUItemTableViewController *)&v36 tableView:v7 didSelectRowAtIndexPath:v6];
  [(HUUserCamerasAccessLevelViewController *)self setSelectedIndexPath:v6];
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v6];

  v10 = [(HUUserCamerasAccessLevelViewController *)self camerasAccessLevelItemManager];
  v11 = [v10 user];

  v12 = [(HUItemTableViewController *)self itemManager];
  v13 = [v12 home];
  v14 = [v13 homeAccessControlForUser:v11];

  v15 = [(HUUserCamerasAccessLevelViewController *)self camerasAccessLevelItemManager];
  v16 = [v15 accessLevelItems];
  v17 = [v16 containsObject:v9];

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
  v29 = self;
  v30 = v11;
  v22 = v11;
  v23 = [v21 addSuccessBlock:&v25];
  v24 = [v21 addFailureBlock:{&__block_literal_global_147, v25, v26, v27, v28, v29}];
  [v7 deselectRowAtIndexPath:v6 animated:1];
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