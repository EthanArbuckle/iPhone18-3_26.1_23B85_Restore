@interface HUSiriHistoryTableViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (HUSiriHistoryTableViewController)initWithAccessoryGroupItem:(id)a3;
- (HUSiriHistoryTableViewController)initWithAccessorySettingItem:(id)a3 module:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
@end

@implementation HUSiriHistoryTableViewController

- (HUSiriHistoryTableViewController)initWithAccessoryGroupItem:(id)a3
{
  v4 = a3;
  v5 = [[HUSiriHistoryItemManager alloc] initWithDelegate:self groupItem:v4];

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

- (HUSiriHistoryTableViewController)initWithAccessorySettingItem:(id)a3 module:(id)a4
{
  v5 = [a3 copy];
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

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v18.receiver = self;
  v18.super_class = HUSiriHistoryTableViewController;
  v11 = a4;
  [(HUItemTableViewController *)&v18 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  objc_opt_class();
  v12 = v10;
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
  v15 = [v11 latestResults];

  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v17 = [v14 textLabel];
  [v17 setText:v16];
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 attributedFooterTitleForSection:a4];

  if (v8)
  {
    v9 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"footerReuseIdentifier"];

    if (!v9)
    {
      v9 = [[HUItemTableSectionHeaderFooterView alloc] initWithReuseIdentifier:@"footerReuseIdentifier"];
    }

    v10 = [(HUItemTableSectionHeaderFooterView *)v9 messageTextView];
    v11 = [v10 textDragInteraction];
    [v11 setEnabled:1];

    [(HUItemTableSectionHeaderFooterView *)v9 setType:1];
    [(HUItemTableSectionHeaderFooterView *)v9 setMessage:v8];
    v6 = [(HUItemTableSectionHeaderFooterView *)v9 messageTextView];
    [v6 setDelegate:self];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HUSiriHistoryTableViewController;
    v9 = [(HUItemTableViewController *)&v13 tableView:v6 viewForFooterInSection:a4];
  }

  return v9;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = self;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v17, 0x16u);
  }

  v9 = [MEMORY[0x277D14C80] aboutImproveSiriAndDictationURL];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = [(HUSiriHistoryTableViewController *)self navigationController];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = self;
    }

    v14 = v13;

    v15 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376D8]];
    [v15 setPresentingViewController:v14];

    [v15 present];
  }

  return 0;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v29.receiver = self;
  v29.super_class = HUSiriHistoryTableViewController;
  v7 = a3;
  [(HUItemTableViewController *)&v29 tableView:v7 didSelectRowAtIndexPath:v6];
  [v7 deselectRowAtIndexPath:v6 animated:1];
  objc_opt_class();
  v8 = [v7 cellForRowAtIndexPath:v6];

  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [(HUSiriHistoryTableViewController *)self siriHistoryItemManager];
  v12 = [v11 didSelectItemAtIndexPath:v6];

  if (v12)
  {
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    v15 = [(UITableViewController *)self hu_actionSheetWithTitle:v13 message:v14 indexPath:v6];

    v16 = MEMORY[0x277D750F8];
    v17 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__HUSiriHistoryTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v25[3] = &unk_277DBBD68;
    v26 = v10;
    v27 = self;
    v28 = v6;
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