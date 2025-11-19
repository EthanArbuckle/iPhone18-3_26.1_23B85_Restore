@interface HUMatterConnectedServicesViewController
- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUMatterConnectedServicesViewController)initWithConnectedServicesItemProvider:(id)a3;
- (HUMatterConnectedServicesViewControllerDelegate)delegate;
- (id)finishPresentation:(id)a3 animated:(BOOL)a4;
- (id)hu_preloadContent;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (void)_presentHomeConnectedEcosystemDetailViewController:(id)a3;
- (void)_presentRemoveFromEcosystemConfirmation:(id)a3 atIndexPath:(id)a4;
- (void)buttonTappedForCell:(id)a3 withItem:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation HUMatterConnectedServicesViewController

- (HUMatterConnectedServicesViewController)initWithConnectedServicesItemProvider:(id)a3
{
  v4 = a3;
  v5 = [[HUMatterConnectedServicesItemManager alloc] initWithConnectedServicesItemProvider:v4 delegate:self];

  v9.receiver = self;
  v9.super_class = HUMatterConnectedServicesViewController;
  v6 = [(HUItemTableViewController *)&v9 initWithItemManager:v5 tableViewStyle:1];
  if (v6)
  {
    v7 = _HULocalizedStringWithDefaultValue(@"HUMatterConnectedServicesTitle", @"HUMatterConnectedServicesTitle", 1);
    [(HUMatterConnectedServicesViewController *)v6 setTitle:v7];
  }

  return v6;
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
    v13.super_class = HUMatterConnectedServicesViewController;
    v9 = [(HUItemTableViewController *)&v13 tableView:v6 viewForFooterInSection:a4];
  }

  return v9;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v12, 0x16u);
  }

  v9 = [MEMORY[0x277D148E8] sharedInstance];
  v10 = [v9 openSensitiveURL:v7];

  return 0;
}

- (id)hu_preloadContent
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HUMatterConnectedServicesViewController;
  v3 = [(HUItemTableViewController *)&v11 hu_preloadContent];
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 fetchSystemCommissionerPairingUUID];

  v6 = MEMORY[0x277D2C900];
  v12[0] = v3;
  v12[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v8 = [v6 combineAllFutures:v7];
  v9 = [v8 flatMap:&__block_literal_global_286];

  return v9;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v5 = objc_opt_class();

  return v5;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = HUMatterConnectedServicesViewController;
  [(HUItemTableViewController *)&v12 setupCell:v8 forItem:a4 indexPath:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    [v9 setButtonColorFollowsTintColor:1];
    [v9 setHideIcon:1];
    [v9 setDelegate:self];
    v10 = 0;
LABEL_5:
    [v8 setAccessoryType:v10];

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
    v10 = 1;
    [v11 setValueColorFollowsTintColor:1];
    [v11 setHideIcon:1];
    goto LABEL_5;
  }

LABEL_6:
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3
{
  v3 = [(HUItemTableViewController *)self itemManager];
  v4 = [v3 connectedHomeEcosystemItemProvider];
  v5 = v4 != 0;

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = HUMatterConnectedServicesViewController;
  v6 = a4;
  v7 = a3;
  [(HUItemTableViewController *)&v13 tableView:v7 didSelectRowAtIndexPath:v6];
  [v7 deselectRowAtIndexPath:v6 animated:{1, v13.receiver, v13.super_class}];

  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v6];

  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    [(HUMatterConnectedServicesViewController *)self _presentHomeConnectedEcosystemDetailViewController:v12];
  }
}

- (void)_presentRemoveFromEcosystemConfirmation:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 latestResults];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v16 = HULocalizedStringWithFormat(@"HUEcosystemRemovalActionConfirmationTitle", @"%@", v10, v11, v12, v13, v14, v15, v9);
  v23 = HULocalizedStringWithFormat(@"HUEcosystemRemovalAction", @"%@", v17, v18, v19, v20, v21, v22, v9);
  v24 = [(UITableViewController *)self hu_actionSheetWithTitle:0 message:v16 indexPath:v7];
  v25 = MEMORY[0x277D750F8];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __95__HUMatterConnectedServicesViewController__presentRemoveFromEcosystemConfirmation_atIndexPath___block_invoke;
  v32[3] = &unk_277DBBD68;
  v32[4] = self;
  v33 = v6;
  v34 = v7;
  v26 = v7;
  v27 = v6;
  v28 = [v25 actionWithTitle:v23 style:2 handler:v32];
  [v24 addAction:v28];
  v29 = MEMORY[0x277D750F8];
  v30 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
  v31 = [v29 actionWithTitle:v30 style:1 handler:0];

  [v24 addAction:v31];
  [v24 setPreferredAction:v31];
  [(HUMatterConnectedServicesViewController *)self presentViewController:v24 animated:1 completion:0];
}

void __95__HUMatterConnectedServicesViewController__presentRemoveFromEcosystemConfirmation_atIndexPath___block_invoke(id *a1)
{
  v2 = [a1[4] itemManager];
  v3 = [v2 accessory];
  v4 = [a1[5] chipAccessoryPairings];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __95__HUMatterConnectedServicesViewController__presentRemoveFromEcosystemConfirmation_atIndexPath___block_invoke_2;
  v7[3] = &unk_277DBE710;
  v5 = a1[5];
  v6 = a1[4];
  v8 = v5;
  v9 = v6;
  v10 = a1[6];
  [v3 removeCHIPPairings:v4 completion:v7];
}

void __95__HUMatterConnectedServicesViewController__presentRemoveFromEcosystemConfirmation_atIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) chipAccessoryPairings];
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "failed to remove accessory pairings: %@, error: %@", buf, 0x16u);
    }

    v7 = [MEMORY[0x277D14640] sharedHandler];
    [v7 handleError:v3];
  }

  else
  {
    if (v5)
    {
      v8 = [*(a1 + 32) chipAccessoryPairings];
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Removed accessory pairings: %@, error: %@", buf, 0x16u);
    }

    v9 = [*(a1 + 40) itemManager];
    v7 = [v9 displayedItemAtIndexPath:*(a1 + 48)];

    v10 = [*(a1 + 40) itemManager];
    v16 = v7;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [v10 reloadUIRepresentationForItems:v11 withAnimation:1];

    v12 = [*(a1 + 32) chipAccessoryPairings];
    LODWORD(v11) = [v12 na_any:&__block_literal_global_61_1];

    if (v11)
    {
      v13 = [*(a1 + 40) delegate];
      v14 = [*(a1 + 40) itemManager];
      v15 = [v14 accessory];
      [v13 didRemoveCHIPPairingforAccessory:v15];
    }
  }
}

uint64_t __95__HUMatterConnectedServicesViewController__presentRemoveFromEcosystemConfirmation_atIndexPath___block_invoke_58(uint64_t a1, void *a2)
{
  v2 = [a2 home];
  v3 = [v2 ecosystem];
  v4 = [v3 vendor];
  v5 = [v4 isAppleVendor];

  return v5;
}

- (void)_presentHomeConnectedEcosystemDetailViewController:(id)a3
{
  v4 = a3;
  v5 = [HUMatterConnectedEcosystemDetailViewController alloc];
  v6 = [v4 connectedEcosystem];

  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 connectedHomeEcosystemItemProvider];
  v11 = [(HUMatterConnectedEcosystemDetailViewController *)v5 initWithConnectedEcosystem:v6 connectedEcosystemItemProvider:v8];

  v9 = [(HUMatterConnectedServicesViewController *)self navigationController];
  v10 = [v9 hu_pushPreloadableViewController:v11 animated:1];
}

- (id)finishPresentation:(id)a3 animated:(BOOL)a4
{
  v4 = [(HUMatterConnectedServicesViewController *)self navigationController:a3];
  v5 = [v4 popViewControllerAnimated:1];

  v6 = MEMORY[0x277D2C900];

  return [v6 futureWithNoResult];
}

- (void)buttonTappedForCell:(id)a3 withItem:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 indexPathForItem:v5];

  objc_opt_class();
  v8 = v5;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = self;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v7;
      _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "%@ Invalid connected home item: %@ at indexPath: %@", &v13, 0x20u);
    }
  }

  else
  {
    [(HUMatterConnectedServicesViewController *)self _presentRemoveFromEcosystemConfirmation:v10 atIndexPath:v7];
  }
}

- (HUMatterConnectedServicesViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end