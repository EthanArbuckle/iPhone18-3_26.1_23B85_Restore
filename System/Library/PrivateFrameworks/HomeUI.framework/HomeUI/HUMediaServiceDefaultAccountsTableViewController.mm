@interface HUMediaServiceDefaultAccountsTableViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUMediaServiceDefaultAccountsTableViewController)initWithItem:(id)item home:(id)home;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)itemModuleControllers;
- (void)mediaServiceDefaultAccountsItemModuleController:(id)controller didUpdateDefaultAccount:(id)account;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
@end

@implementation HUMediaServiceDefaultAccountsTableViewController

- (HUMediaServiceDefaultAccountsTableViewController)initWithItem:(id)item home:(id)home
{
  homeCopy = home;
  itemCopy = item;
  v8 = [HUMediaServiceDefaultAccountsItemManager alloc];
  v9 = [itemCopy copy];

  v10 = [(HUMediaServiceDefaultAccountsItemManager *)v8 initWithHome:homeCopy sourceItem:v9 delegate:self];
  v18.receiver = self;
  v18.super_class = HUMediaServiceDefaultAccountsTableViewController;
  v11 = [(HUItemTableViewController *)&v18 initWithItemManager:v10 tableViewStyle:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaServiceDefaultAccountsItemManager, v10);
    v13 = objc_alloc(MEMORY[0x277D14C98]);
    currentUser = [homeCopy currentUser];
    v15 = [v13 initWithHome:homeCopy user:currentUser nameStyle:0];
    userItem = v12->_userItem;
    v12->_userItem = v15;
  }

  return v12;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  mediaServiceDefaultAccountsItemManager = [(HUMediaServiceDefaultAccountsTableViewController *)self mediaServiceDefaultAccountsItemManager];
  defaultAccountsTitleItem = [mediaServiceDefaultAccountsItemManager defaultAccountsTitleItem];
  [itemCopy isEqual:defaultAccountsTitleItem];

  v8 = objc_opt_class();

  return v8;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = HUMediaServiceDefaultAccountsTableViewController;
  [(HUItemTableViewController *)&v20 setupCell:cellCopy forItem:itemCopy indexPath:path];
  mediaServiceDefaultAccountsItemManager = [(HUMediaServiceDefaultAccountsTableViewController *)self mediaServiceDefaultAccountsItemManager];
  defaultAccountsTitleItem = [mediaServiceDefaultAccountsItemManager defaultAccountsTitleItem];

  if (defaultAccountsTitleItem == itemCopy)
  {
    objc_opt_class();
    v12 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    latestResults = [itemCopy latestResults];
    v16 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    textLabel = [v14 textLabel];
    [textLabel setText:v16];

    textLabel2 = [v14 textLabel];
    [textLabel2 setNumberOfLines:0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [v14 setBackgroundColor:clearColor];
  }
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v6 = [itemManager displayedSectionIdentifierForSectionIndex:section];

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
  mediaServiceDefaultAccountsItemModuleController = [(HUMediaServiceDefaultAccountsTableViewController *)self mediaServiceDefaultAccountsItemModuleController];
  if (!mediaServiceDefaultAccountsItemModuleController)
  {
    mediaServiceDefaultAccountsItemManager = [(HUMediaServiceDefaultAccountsTableViewController *)self mediaServiceDefaultAccountsItemManager];
    defaultAccountsItemModule = [mediaServiceDefaultAccountsItemManager defaultAccountsItemModule];

    if (!defaultAccountsItemModule)
    {
      goto LABEL_5;
    }

    v7 = [HUMediaServiceDefaultAccountsItemModuleController alloc];
    mediaServiceDefaultAccountsItemModuleController = [(HUMediaServiceDefaultAccountsTableViewController *)self mediaServiceDefaultAccountsItemManager];
    defaultAccountsItemModule2 = [mediaServiceDefaultAccountsItemModuleController defaultAccountsItemModule];
    v9 = [(HUMediaServiceDefaultAccountsItemModuleController *)v7 initWithModule:defaultAccountsItemModule2 delegate:self host:self];
    [(HUMediaServiceDefaultAccountsTableViewController *)self setMediaServiceDefaultAccountsItemModuleController:v9];
  }

LABEL_5:
  mediaServiceDefaultAccountsItemModuleController2 = [(HUMediaServiceDefaultAccountsTableViewController *)self mediaServiceDefaultAccountsItemModuleController];
  [v3 na_safeAddObject:mediaServiceDefaultAccountsItemModuleController2];

  return v3;
}

- (void)mediaServiceDefaultAccountsItemModuleController:(id)controller didUpdateDefaultAccount:(id)account
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = [(HUMediaServiceDefaultAccountsTableViewController *)self mediaServiceDefaultAccountsItemManager:controller];
  v7 = [v6 reloadAndUpdateAllItemsFromSenderSelector:a2];

  itemManager = [(HUItemTableViewController *)self itemManager];
  LODWORD(v6) = [itemManager diffableDataSourceDisabled];

  if (v6)
  {
    tableView = [(HUMediaServiceDefaultAccountsTableViewController *)self tableView];
    v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
    [tableView reloadSections:v9 withRowAnimation:5];
  }

  else
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    v11 = [itemManager2 itemSectionForSectionIndex:0];

    if (v11)
    {
      itemManager3 = [(HUItemTableViewController *)self itemManager];
      v15[0] = v11;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      [itemManager3 reloadUIRepresentationForSections:v13 withAnimation:0];
    }
  }
}

@end