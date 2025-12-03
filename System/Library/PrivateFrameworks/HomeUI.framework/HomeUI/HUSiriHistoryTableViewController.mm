@interface HUSiriHistoryTableViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HUSiriHistoryTableViewController)initWithAccessoryGroupItem:(id)item;
- (HUSiriHistoryTableViewController)initWithAccessorySettingItem:(id)item module:(id)module;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUSiriHistoryTableViewController

- (HUSiriHistoryTableViewController)initWithAccessoryGroupItem:(id)item
{
  itemCopy = item;
  v5 = [[HUSiriHistoryItemManager alloc] initWithDelegate:self groupItem:itemCopy];

  v9.receiver = self;
  v9.super_class = HUSiriHistoryTableViewController;
  v6 = [(HUItemTableViewController *)&v9 initWithItemManager:v5 tableViewStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_siriHistoryItemManager, v5);
  }

  return v7;
}

- (HUSiriHistoryTableViewController)initWithAccessorySettingItem:(id)item module:(id)module
{
  v5 = [item copy];
  v6 = [[HUSiriHistoryItemManager alloc] initWithDelegate:self accessorySettingItem:v5];
  v10.receiver = self;
  v10.super_class = HUSiriHistoryTableViewController;
  v7 = [(HUItemTableViewController *)&v10 initWithItemManager:v6 tableViewStyle:1];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_siriHistoryItemManager, v6);
  }

  return v8;
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  v18.receiver = self;
  v18.super_class = HUSiriHistoryTableViewController;
  itemCopy = item;
  [(HUItemTableViewController *)&v18 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
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

  [v14 setDestructive:{1, v18.receiver, v18.super_class}];
  latestResults = [itemCopy latestResults];

  v16 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  textLabel = [v14 textLabel];
  [textLabel setText:v16];
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager attributedFooterTitleForSection:section];

  if (v8)
  {
    v9 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"footerReuseIdentifier"];

    if (!v9)
    {
      v9 = [[HUItemTableSectionHeaderFooterView alloc] initWithReuseIdentifier:@"footerReuseIdentifier"];
    }

    messageTextView = [(HUItemTableSectionHeaderFooterView *)v9 messageTextView];
    textDragInteraction = [messageTextView textDragInteraction];
    [textDragInteraction setEnabled:1];

    [(HUItemTableSectionHeaderFooterView *)v9 setType:1];
    [(HUItemTableSectionHeaderFooterView *)v9 setMessage:v8];
    viewCopy = [(HUItemTableSectionHeaderFooterView *)v9 messageTextView];
    [viewCopy setDelegate:self];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HUSiriHistoryTableViewController;
    v9 = [(HUItemTableViewController *)&v13 tableView:viewCopy viewForFooterInSection:section];
  }

  return v9;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    selfCopy = self;
    v19 = 2112;
    v20 = lCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v17, 0x16u);
  }

  aboutImproveSiriAndDictationURL = [MEMORY[0x277D14C80] aboutImproveSiriAndDictationURL];
  v10 = [lCopy isEqual:aboutImproveSiriAndDictationURL];

  if (v10)
  {
    navigationController = [(HUSiriHistoryTableViewController *)self navigationController];
    v12 = navigationController;
    if (navigationController)
    {
      selfCopy2 = navigationController;
    }

    else
    {
      selfCopy2 = self;
    }

    v14 = selfCopy2;

    v15 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376D8]];
    [v15 setPresentingViewController:v14];

    [v15 present];
  }

  return 0;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v29.receiver = self;
  v29.super_class = HUSiriHistoryTableViewController;
  viewCopy = view;
  [(HUItemTableViewController *)&v29 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  objc_opt_class();
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];

  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  siriHistoryItemManager = [(HUSiriHistoryTableViewController *)self siriHistoryItemManager];
  v12 = [siriHistoryItemManager didSelectItemAtIndexPath:pathCopy];

  if (v12)
  {
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    v15 = [(UITableViewController *)self hu_actionSheetWithTitle:v13 message:v14 indexPath:pathCopy];

    v16 = MEMORY[0x277D750F8];
    v17 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__HUSiriHistoryTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v25[3] = &unk_277DBBD68;
    v26 = v10;
    selfCopy = self;
    v28 = pathCopy;
    v18 = [v16 actionWithTitle:v17 style:2 handler:v25];
    [v15 addAction:v18];

    v19 = MEMORY[0x277D750F8];
    v20 = _HULocalizedStringWithDefaultValue(@"HUAlertCancel", @"HUAlertCancel", 1);
    v21 = [v19 actionWithTitle:v20 style:1 handler:0];
    [v15 addAction:v21];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__HUSiriHistoryTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_4;
    block[3] = &unk_277DB7558;
    block[4] = self;
    v24 = v15;
    v22 = v15;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __70__HUSiriHistoryTableViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShowSpinner:1];
  v2 = [*(a1 + 40) siriHistoryItemManager];
  v3 = [v2 didUpdateItemAtIndexPath:*(a1 + 48)];

  if (v3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__HUSiriHistoryTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    v7[3] = &unk_277DB7158;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8 = v4;
    v9 = v5;
    v6 = [v3 addCompletionBlock:v7];
  }
}

void __70__HUSiriHistoryTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HUSiriHistoryTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
  block[3] = &unk_277DB8810;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __70__HUSiriHistoryTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_3(id *a1)
{
  [a1[4] setShowSpinner:0];
  v2 = MEMORY[0x277D75110];
  v3 = [a1[5] objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v4 = [a1[5] objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  v8 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v5 = MEMORY[0x277D750F8];
  v6 = _HULocalizedStringWithDefaultValue(@"HUAlertDismiss", @"HUAlertDismiss", 1);
  v7 = [v5 actionWithTitle:v6 style:1 handler:0];
  [v8 addAction:v7];

  [a1[6] presentViewController:v8 animated:1 completion:0];
}

@end