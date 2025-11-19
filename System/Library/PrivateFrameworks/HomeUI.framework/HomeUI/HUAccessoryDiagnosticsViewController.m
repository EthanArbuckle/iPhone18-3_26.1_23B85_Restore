@interface HUAccessoryDiagnosticsViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUAccessoryDiagnosticsItemManager)accessoryLogsItemManager;
- (HUAccessoryDiagnosticsViewController)initWithSourceItem:(id)a3;
- (void)generateNewLogs:(id)a3;
- (void)showShareSheetForItem:(id)a3 withAnchorView:(id)a4;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
@end

@implementation HUAccessoryDiagnosticsViewController

- (HUAccessoryDiagnosticsViewController)initWithSourceItem:(id)a3
{
  v4 = a3;
  v5 = [[HUAccessoryDiagnosticsItemManager alloc] initWithDelegate:self sourceItem:v4];

  v10.receiver = self;
  v10.super_class = HUAccessoryDiagnosticsViewController;
  v6 = [(HUItemTableViewController *)&v10 initWithItemManager:v5 tableViewStyle:1];
  v7 = v6;
  if (v6)
  {
    [(HUAccessoryDiagnosticsViewController *)v6 setAccessoryLogsItemManager:v5];
    [(HUItemTableViewController *)v7 setAutomaticallyUpdatesViewControllerTitle:0];
    v8 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsTitle", @"HUAccessoryDiagnosticsTitle", 1);
    [(HUAccessoryDiagnosticsViewController *)v7 setTitle:v8];
  }

  return v7;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
  v7 = [v6 fetchManufacturerSnapshotButtonItem];
  if ([v5 isEqual:v7])
  {
    goto LABEL_4;
  }

  v8 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
  v9 = [v8 fetchADKSnapshotButtonItem];
  if ([v5 isEqual:v9])
  {

LABEL_4:
    goto LABEL_5;
  }

  v12 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
  v13 = [v12 fetchMatterSnapshotButtonItem];
  v14 = [v5 isEqual:v13];

  if ((v14 & 1) == 0)
  {
    v15 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
    v16 = [v15 logCollectionFailedItem];
    v17 = [v5 isEqual:v16];

    if ((v17 & 1) == 0)
    {
      v6 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
      v7 = [v6 enableVerboseLoggingItem];
      if ([v5 isEqual:v7])
      {
        goto LABEL_4;
      }

      v18 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
      v19 = [v18 enableAudioClipLoggingItem];
      [v5 isEqual:v19];
    }
  }

LABEL_5:
  v10 = objc_opt_class();

  return v10;
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v13.receiver = self;
  v13.super_class = HUAccessoryDiagnosticsViewController;
  [(HUItemTableViewController *)&v13 updateCell:v10 forItem:a4 indexPath:a5 animated:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setHideIcon:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      v12 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
      [v11 setShowSpinner:{objc_msgSend(v12, "collectionInProgress")}];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 setDelegate:self];
      }
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v34.receiver = self;
  v34.super_class = HUAccessoryDiagnosticsViewController;
  v7 = a3;
  [(HUItemTableViewController *)&v34 tableView:v7 didSelectRowAtIndexPath:v6];
  [v7 deselectRowAtIndexPath:v6 animated:{1, v34.receiver, v34.super_class}];

  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v6];

  v10 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
  v11 = [v10 fetchManufacturerSnapshotButtonItem];
  if (v9 == v11)
  {
    goto LABEL_9;
  }

  v12 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
  v13 = [v12 fetchADKSnapshotButtonItem];
  v14 = v13;
  if (v9 == v13)
  {

LABEL_9:
    goto LABEL_10;
  }

  v15 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
  v16 = [v15 fetchMatterSnapshotButtonItem];

  if (v9 != v16)
  {
    v17 = [(HUAccessoryDiagnosticsViewController *)self tableView];
    v18 = [v17 cellForRowAtIndexPath:v6];

    objc_opt_class();
    v19 = v9;
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    [(HUAccessoryDiagnosticsViewController *)self showShareSheetForItem:v21 withAnchorView:v18];
    goto LABEL_21;
  }

LABEL_10:
  objc_opt_class();
  v22 = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v18 = v23;

  v24 = [v18 sourceAccessory];
  if (![v24 hf_isDirectlyReachable])
  {
    v25 = [v18 sourceAccessory];
    if ([v25 supportsCHIP])
    {
      v26 = [v18 sourceAccessory];
      v27 = [v26 isReachable];

      if (v27)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    v28 = MEMORY[0x277D75110];
    v29 = _HULocalizedStringWithDefaultValue(@"HUAccessoryUnreachableAlertTitle", @"HUAccessoryUnreachableAlertTitle", 1);
    v30 = _HULocalizedStringWithDefaultValue(@"HUAccessoryUnreachableAlertMessage", @"HUAccessoryUnreachableAlertMessage", 1);
    v21 = [v28 alertControllerWithTitle:v29 message:v30 preferredStyle:1];

    v31 = MEMORY[0x277D750F8];
    v32 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
    v33 = [v31 actionWithTitle:v32 style:0 handler:0];
    [v21 addAction:v33];

    [(HUAccessoryDiagnosticsViewController *)self presentViewController:v21 animated:1 completion:0];
LABEL_21:

    goto LABEL_22;
  }

LABEL_15:
  [(HUAccessoryDiagnosticsViewController *)self generateNewLogs:v9];
LABEL_22:
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 item];
  v8 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
  v9 = [v8 enableVerboseLoggingItem];
  v10 = [v7 isEqual:v9];

  v11 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
  v12 = v11;
  if (v10)
  {
    [v11 setVerboseLoggingEnabled:v4];
  }

  else
  {
    v13 = [v11 enableAudioClipLoggingItem];
    v14 = [v7 isEqual:v13];

    if (v14)
    {
      if (v4)
      {
        v15 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsAudioClipAlertTitle", @"HUAccessoryDiagnosticsAudioClipAlertTitle", 1);
        v16 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsAudioClipAlertMessage", @"HUAccessoryDiagnosticsAudioClipAlertMessage", 1);
        v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v15 message:v16 preferredStyle:1];
        objc_initWeak(&location, self);
        v18 = MEMORY[0x277D750F8];
        v19 = _HULocalizedStringWithDefaultValue(@"HUContinueTitle", @"HUContinueTitle", 1);
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __61__HUAccessoryDiagnosticsViewController_switchCell_didTurnOn___block_invoke;
        v27[3] = &unk_277DC3B98;
        objc_copyWeak(&v28, &location);
        v29 = v4;
        v20 = [v18 actionWithTitle:v19 style:0 handler:v27];
        [v17 addAction:v20];

        v21 = MEMORY[0x277D750F8];
        v22 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __61__HUAccessoryDiagnosticsViewController_switchCell_didTurnOn___block_invoke_2;
        v25[3] = &unk_277DB7600;
        v26 = v6;
        v23 = [v21 actionWithTitle:v22 style:1 handler:v25];
        [v17 addAction:v23];

        [(HUAccessoryDiagnosticsViewController *)self presentViewController:v17 animated:1 completion:0];
        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
      }

      else
      {
        v24 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
        [v24 setAudioClipLoggingEnabled:0];
      }
    }
  }
}

void __61__HUAccessoryDiagnosticsViewController_switchCell_didTurnOn___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained accessoryLogsItemManager];
  [v2 setAudioClipLoggingEnabled:*(a1 + 40)];
}

- (void)showShareSheetForItem:(id)a3 withAnchorView:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isEligibleForUpload])
  {
    v8 = [[HUSendDiagnosticsToManufacturerActivity alloc] initWithDiagnosticItem:v6];
    v25[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_alloc(MEMORY[0x277D546D8]);
  v11 = [v6 fileURL];
  v24 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v13 = [v10 initWithActivityItems:v12 applicationActivities:v9];

  [v13 setCompletionWithItemsHandler:&__block_literal_global_263];
  v14 = [v13 popoverPresentationController];
  [v14 setSourceView:v7];

  [v7 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [v13 popoverPresentationController];
  [v23 setSourceRect:{v16, v18, v20, v22}];

  [(HUAccessoryDiagnosticsViewController *)self presentViewController:v13 animated:1 completion:0];
}

void __77__HUAccessoryDiagnosticsViewController_showShareSheetForItem_withAnchorView___block_invoke(uint64_t a1, void *a2, int a3, uint64_t a4, void *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a5;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = v7;
    v12 = 1024;
    v13 = a3;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Finished export activity for activityType:%@ completed:%{BOOL}d with error:%@", &v10, 0x1Cu);
  }
}

- (void)generateNewLogs:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v14 = v6;

  [v14 beginDiagnosticCollection:v4];
  v7 = MEMORY[0x277D75110];
  v8 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsAlertTitle", @"HUAccessoryDiagnosticsAlertTitle", 1);
  v9 = _HULocalizedStringWithDefaultValue(@"HUAccessoryDiagnosticsAlertMessage", @"HUAccessoryDiagnosticsAlertMessage", 1);
  v10 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = MEMORY[0x277D750F8];
  v12 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v13 = [v11 actionWithTitle:v12 style:0 handler:0];
  [v10 addAction:v13];

  [(HUAccessoryDiagnosticsViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (HUAccessoryDiagnosticsItemManager)accessoryLogsItemManager
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryLogsItemManager);

  return WeakRetained;
}

@end