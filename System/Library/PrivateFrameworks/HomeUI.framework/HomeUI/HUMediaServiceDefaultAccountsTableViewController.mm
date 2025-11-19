@interface HUMediaServiceDefaultAccountsTableViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUMediaServiceDefaultAccountsTableViewController)initWithItem:(id)a3 home:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)itemModuleControllers;
- (void)mediaServiceDefaultAccountsItemModuleController:(id)a3 didUpdateDefaultAccount:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
@end

@implementation HUMediaServiceDefaultAccountsTableViewController

- (HUMediaServiceDefaultAccountsTableViewController)initWithItem:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HUMediaServiceDefaultAccountsItemManager alloc];
  v9 = [v7 copy];

  v10 = [(HUMediaServiceDefaultAccountsItemManager *)v8 initWithHome:v6 sourceItem:v9 delegate:self];
  v18.receiver = self;
  v18.super_class = HUMediaServiceDefaultAccountsTableViewController;
  v11 = [(HUItemTableViewController *)&v18 initWithItemManager:v10 tableViewStyle:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaServiceDefaultAccountsItemManager, v10);
    v13 = objc_alloc(MEMORY[0x277D14C98]);
    v14 = [v6 currentUser];
    v15 = [v13 initWithHome:v6 user:v14 nameStyle:0];
    userItem = v12->_userItem;
    v12->_userItem = v15;
  }

  return v12;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(HUMediaServiceDefaultAccountsTableViewController *)self mediaServiceDefaultAccountsItemManager];
  v7 = [v6 defaultAccountsTitleItem];
  [v5 isEqual:v7];

  v8 = objc_opt_class();

  return v8;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = HUMediaServiceDefaultAccountsTableViewController;
  [(HUItemTableViewController *)&v20 setupCell:v8 forItem:v9 indexPath:a5];
  v10 = [(HUMediaServiceDefaultAccountsTableViewController *)self mediaServiceDefaultAccountsItemManager];
  v11 = [v10 defaultAccountsTitleItem];

  if (v11 == v9)
  {
    objc_opt_class();
    v12 = v8;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v15 = [v9 latestResults];
    v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v17 = [v14 textLabel];
    [v17 setText:v16];

    v18 = [v14 textLabel];
    [v18 setNumberOfLines:0];

    v19 = [MEMORY[0x277D75348] clearColor];
    [v14 setBackgroundColor:v19];
  }
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 displayedSectionIdentifierForSectionIndex:a4];

  if ([v6 isEqualToString:@"HUMediaServiceDefaultAccountsTitleSectionIdentifier"])
  {
    v7 = 0.01;
  }

  else
  {
    v7 = *MEMORY[0x277D76F30];
  }

  return v7;
}

- (id)itemModuleControllers
{
  v3 = objc_opt_new();
  v4 = [(HUMediaServiceDefaultAccountsTableViewController *)self mediaServiceDefaultAccountsItemModuleController];
  if (!v4)
  {
    v5 = [(HUMediaServiceDefaultAccountsTableViewController *)self mediaServiceDefaultAccountsItemManager];
    v6 = [v5 defaultAccountsItemModule];

    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = [HUMediaServiceDefaultAccountsItemModuleController alloc];
    v4 = [(HUMediaServiceDefaultAccountsTableViewController *)self mediaServiceDefaultAccountsItemManager];
    v8 = [v4 defaultAccountsItemModule];
    v9 = [(HUMediaServiceDefaultAccountsItemModuleController *)v7 initWithModule:v8 delegate:self host:self];
    [(HUMediaServiceDefaultAccountsTableViewController *)self setMediaServiceDefaultAccountsItemModuleController:v9];
  }

LABEL_5:
  v10 = [(HUMediaServiceDefaultAccountsTableViewController *)self mediaServiceDefaultAccountsItemModuleController];
  [v3 na_safeAddObject:v10];

  return v3;
}

- (void)mediaServiceDefaultAccountsItemModuleController:(id)a3 didUpdateDefaultAccount:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = [(HUMediaServiceDefaultAccountsTableViewController *)self mediaServiceDefaultAccountsItemManager:a3];
  v7 = [v6 reloadAndUpdateAllItemsFromSenderSelector:a2];

  v8 = [(HUItemTableViewController *)self itemManager];
  LODWORD(v6) = [v8 diffableDataSourceDisabled];

  if (v6)
  {
    v14 = [(HUMediaServiceDefaultAccountsTableViewController *)self tableView];
    v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
    [v14 reloadSections:v9 withRowAnimation:5];
  }

  else
  {
    v10 = [(HUItemTableViewController *)self itemManager];
    v11 = [v10 itemSectionForSectionIndex:0];

    if (v11)
    {
      v12 = [(HUItemTableViewController *)self itemManager];
      v15[0] = v11;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      [v12 reloadUIRepresentationForSections:v13 withAnimation:0];
    }
  }
}

@end