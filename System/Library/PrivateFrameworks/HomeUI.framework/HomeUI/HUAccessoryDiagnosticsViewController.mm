@interface HUAccessoryDiagnosticsViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUAccessoryDiagnosticsItemManager)accessoryLogsItemManager;
- (HUAccessoryDiagnosticsViewController)initWithSourceItem:(id)item;
- (void)generateNewLogs:(id)logs;
- (void)showShareSheetForItem:(id)item withAnchorView:(id)view;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUAccessoryDiagnosticsViewController

- (HUAccessoryDiagnosticsViewController)initWithSourceItem:(id)item
{
  itemCopy = item;
  v5 = [[HUAccessoryDiagnosticsItemManager alloc] initWithDelegate:self sourceItem:itemCopy];

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

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  accessoryLogsItemManager = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
  fetchManufacturerSnapshotButtonItem = [accessoryLogsItemManager fetchManufacturerSnapshotButtonItem];
  if ([itemCopy isEqual:fetchManufacturerSnapshotButtonItem])
  {
    goto LABEL_4;
  }

  accessoryLogsItemManager2 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
  fetchADKSnapshotButtonItem = [accessoryLogsItemManager2 fetchADKSnapshotButtonItem];
  if ([itemCopy isEqual:fetchADKSnapshotButtonItem])
  {

LABEL_4:
    goto LABEL_5;
  }

  accessoryLogsItemManager3 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
  fetchMatterSnapshotButtonItem = [accessoryLogsItemManager3 fetchMatterSnapshotButtonItem];
  v14 = [itemCopy isEqual:fetchMatterSnapshotButtonItem];

  if ((v14 & 1) == 0)
  {
    accessoryLogsItemManager4 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
    logCollectionFailedItem = [accessoryLogsItemManager4 logCollectionFailedItem];
    v17 = [itemCopy isEqual:logCollectionFailedItem];

    if ((v17 & 1) == 0)
    {
      accessoryLogsItemManager = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
      fetchManufacturerSnapshotButtonItem = [accessoryLogsItemManager enableVerboseLoggingItem];
      if ([itemCopy isEqual:fetchManufacturerSnapshotButtonItem])
      {
        goto LABEL_4;
      }

      accessoryLogsItemManager5 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
      enableAudioClipLoggingItem = [accessoryLogsItemManager5 enableAudioClipLoggingItem];
      [itemCopy isEqual:enableAudioClipLoggingItem];
    }
  }

LABEL_5:
  v10 = objc_opt_class();

  return v10;
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  v13.receiver = self;
  v13.super_class = HUAccessoryDiagnosticsViewController;
  [(HUItemTableViewController *)&v13 updateCell:cellCopy forItem:item indexPath:path animated:animatedCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setHideIcon:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = cellCopy;
      accessoryLogsItemManager = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
      [v11 setShowSpinner:{objc_msgSend(accessoryLogsItemManager, "collectionInProgress")}];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [cellCopy setDelegate:self];
      }
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v34.receiver = self;
  v34.super_class = HUAccessoryDiagnosticsViewController;
  viewCopy = view;
  [(HUItemTableViewController *)&v34 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:{1, v34.receiver, v34.super_class}];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  accessoryLogsItemManager = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
  fetchManufacturerSnapshotButtonItem = [accessoryLogsItemManager fetchManufacturerSnapshotButtonItem];
  if (v9 == fetchManufacturerSnapshotButtonItem)
  {
    goto LABEL_9;
  }

  accessoryLogsItemManager2 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
  fetchADKSnapshotButtonItem = [accessoryLogsItemManager2 fetchADKSnapshotButtonItem];
  v14 = fetchADKSnapshotButtonItem;
  if (v9 == fetchADKSnapshotButtonItem)
  {

LABEL_9:
    goto LABEL_10;
  }

  accessoryLogsItemManager3 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
  fetchMatterSnapshotButtonItem = [accessoryLogsItemManager3 fetchMatterSnapshotButtonItem];

  if (v9 != fetchMatterSnapshotButtonItem)
  {
    tableView = [(HUAccessoryDiagnosticsViewController *)self tableView];
    v18 = [tableView cellForRowAtIndexPath:pathCopy];

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
  itemManager2 = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v23 = itemManager2;
  }

  else
  {
    v23 = 0;
  }

  v18 = v23;

  sourceAccessory = [v18 sourceAccessory];
  if (![sourceAccessory hf_isDirectlyReachable])
  {
    sourceAccessory2 = [v18 sourceAccessory];
    if ([sourceAccessory2 supportsCHIP])
    {
      sourceAccessory3 = [v18 sourceAccessory];
      isReachable = [sourceAccessory3 isReachable];

      if (isReachable)
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

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  item = [cellCopy item];
  accessoryLogsItemManager = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
  enableVerboseLoggingItem = [accessoryLogsItemManager enableVerboseLoggingItem];
  v10 = [item isEqual:enableVerboseLoggingItem];

  accessoryLogsItemManager2 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
  v12 = accessoryLogsItemManager2;
  if (v10)
  {
    [accessoryLogsItemManager2 setVerboseLoggingEnabled:onCopy];
  }

  else
  {
    enableAudioClipLoggingItem = [accessoryLogsItemManager2 enableAudioClipLoggingItem];
    v14 = [item isEqual:enableAudioClipLoggingItem];

    if (v14)
    {
      if (onCopy)
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
        v29 = onCopy;
        v20 = [v18 actionWithTitle:v19 style:0 handler:v27];
        [v17 addAction:v20];

        v21 = MEMORY[0x277D750F8];
        v22 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __61__HUAccessoryDiagnosticsViewController_switchCell_didTurnOn___block_invoke_2;
        v25[3] = &unk_277DB7600;
        v26 = cellCopy;
        v23 = [v21 actionWithTitle:v22 style:1 handler:v25];
        [v17 addAction:v23];

        [(HUAccessoryDiagnosticsViewController *)self presentViewController:v17 animated:1 completion:0];
        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
      }

      else
      {
        accessoryLogsItemManager3 = [(HUAccessoryDiagnosticsViewController *)self accessoryLogsItemManager];
        [accessoryLogsItemManager3 setAudioClipLoggingEnabled:0];
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

- (void)showShareSheetForItem:(id)item withAnchorView:(id)view
{
  v25[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  viewCopy = view;
  if ([itemCopy isEligibleForUpload])
  {
    v8 = [[HUSendDiagnosticsToManufacturerActivity alloc] initWithDiagnosticItem:itemCopy];
    v25[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_alloc(MEMORY[0x277D546D8]);
  fileURL = [itemCopy fileURL];
  v24 = fileURL;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v13 = [v10 initWithActivityItems:v12 applicationActivities:v9];

  [v13 setCompletionWithItemsHandler:&__block_literal_global_263];
  popoverPresentationController = [v13 popoverPresentationController];
  [popoverPresentationController setSourceView:viewCopy];

  [viewCopy frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  popoverPresentationController2 = [v13 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v16, v18, v20, v22}];

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

- (void)generateNewLogs:(id)logs
{
  logsCopy = logs;
  objc_opt_class();
  itemManager = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v6 = itemManager;
  }

  else
  {
    v6 = 0;
  }

  v14 = v6;

  [v14 beginDiagnosticCollection:logsCopy];
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