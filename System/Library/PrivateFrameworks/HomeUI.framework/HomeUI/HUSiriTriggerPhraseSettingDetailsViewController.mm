@interface HUSiriTriggerPhraseSettingDetailsViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUSiriTriggerPhraseSettingDelegate)delegate;
- (HUSiriTriggerPhraseSettingDetailsViewController)initWithAccessoryGroupItem:(id)item;
- (HUSiriTriggerPhraseSettingDetailsViewController)initWithAccessorySettingItem:(id)item;
- (HUSiriTriggerPhraseSettingDetailsViewController)initWithHome:(id)home delegate:(id)delegate;
- (void)_commonInit;
- (void)_preflightCheckToAllowSwitchingSiriTriggerForMediaItem:(id)item changingToOn:(BOOL)on withCompletion:(id)completion;
- (void)_updateFooterText;
- (void)setInProgressTriggerPhraseUpdateIndex:(int64_t)index;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUSiriTriggerPhraseSettingDetailsViewController

- (HUSiriTriggerPhraseSettingDetailsViewController)initWithAccessorySettingItem:(id)item
{
  itemCopy = item;
  v5 = [[HUSiriTriggerPhraseSettingDetailsItemManager alloc] initWithSourceItem:itemCopy delegate:self];

  [(HUSiriTriggerPhraseSettingDetailsViewController *)self setSiriSettingsDetailsItemManager:v5];
  siriSettingsDetailsItemManager = [(HUSiriTriggerPhraseSettingDetailsViewController *)self siriSettingsDetailsItemManager];
  v10.receiver = self;
  v10.super_class = HUSiriTriggerPhraseSettingDetailsViewController;
  v7 = [(HUItemTableViewController *)&v10 initWithItemManager:siriSettingsDetailsItemManager tableViewStyle:1];

  if (v7)
  {
    v8 = _HULocalizedStringWithDefaultValue(@"HUSiriTriggerPhraseSelectionDetails_Title", @"HUSiriTriggerPhraseSelectionDetails_Title", 1);
    [(HUSiriTriggerPhraseSettingDetailsViewController *)v7 setTitle:v8];

    [(HUSiriTriggerPhraseSettingDetailsViewController *)v7 _commonInit];
  }

  return v7;
}

- (HUSiriTriggerPhraseSettingDetailsViewController)initWithHome:(id)home delegate:(id)delegate
{
  delegateCopy = delegate;
  v7 = MEMORY[0x277D146D0];
  homeCopy = home;
  v9 = [[v7 alloc] initWithHome:homeCopy];

  v10 = [[HUSiriTriggerPhraseSettingDetailsItemManager alloc] initWithSourceItem:v9 delegate:self];
  [(HUSiriTriggerPhraseSettingDetailsViewController *)self setSiriSettingsDetailsItemManager:v10];

  siriSettingsDetailsItemManager = [(HUSiriTriggerPhraseSettingDetailsViewController *)self siriSettingsDetailsItemManager];
  v14.receiver = self;
  v14.super_class = HUSiriTriggerPhraseSettingDetailsViewController;
  v12 = [(HUItemTableViewController *)&v14 initWithItemManager:siriSettingsDetailsItemManager tableViewStyle:1];

  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    [(HUSiriTriggerPhraseSettingDetailsViewController *)v12 _commonInit];
  }

  return v12;
}

- (void)_commonInit
{
  self->_selectedSiriTriggerPhraseIndex = 0x7FFFFFFFFFFFFFFFLL;
  self->_inProgressTriggerPhraseUpdateIndex = 0x7FFFFFFFFFFFFFFFLL;
  [(HUItemTableViewController *)self setAutomaticallyUpdatesViewControllerTitle:0];
  v3 = _HULocalizedStringWithDefaultValue(@"HUSiriTriggerPhraseSelectionDetails_Title", @"HUSiriTriggerPhraseSelectionDetails_Title", 1);
  [(HUSiriTriggerPhraseSettingDetailsViewController *)self setTitle:v3];
}

- (HUSiriTriggerPhraseSettingDetailsViewController)initWithAccessoryGroupItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithAccessoryGroupItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUSiriTriggerPhraseSettingDetailsViewController.m" lineNumber:76 description:{@"%s is unavailable; use %@ instead", "-[HUSiriTriggerPhraseSettingDetailsViewController initWithAccessoryGroupItem:]", v6}];

  return 0;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  objc_opt_isKindOfClass();

  v5 = objc_opt_class();

  return v5;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  objc_opt_class();
  v30 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v11 = v30;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  objc_opt_class();
  v13 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    latestResults = [v13 latestResults];
    v17 = *MEMORY[0x277D13FE8];
    v18 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
    v19 = [v18 BOOLValue] ? 3 : 0;
    [v30 setAccessoryType:v19];

    latestResults2 = [v13 latestResults];
    v21 = [latestResults2 objectForKeyedSubscript:v17];
    bOOLValue = [v21 BOOLValue];

    if (bOOLValue)
    {
      -[HUSiriTriggerPhraseSettingDetailsViewController setSelectedSiriTriggerPhraseIndex:](self, "setSelectedSiriTriggerPhraseIndex:", [pathCopy row]);
    }
  }

  if (v12)
  {
    [v12 setDelegate:self];
  }

  itemManager = [(HUItemTableViewController *)self itemManager];
  v24 = [itemManager titleForSection:{objc_msgSend(pathCopy, "section")}];

  v25 = MEMORY[0x277CCACA8];
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v28 = [v24 stringByReplacingOccurrencesOfString:@" " withString:&stru_2823E0EE8];
  v29 = [v25 stringWithFormat:@"%@.SectionHeader-%@", v27, v28];
  [v30 setAccessibilityIdentifier:v29];
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = HUSiriTriggerPhraseSettingDetailsViewController;
  itemCopy = item;
  [(HUItemTableViewController *)&v15 updateCell:cellCopy forItem:itemCopy indexPath:pathCopy animated:animatedCopy];
  objc_opt_class();
  LOBYTE(animatedCopy) = objc_opt_isKindOfClass();

  if (animatedCopy)
  {
    v13 = [pathCopy row];
    if (v13 == [(HUSiriTriggerPhraseSettingDetailsViewController *)self inProgressTriggerPhraseUpdateIndex])
    {
      v14 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [v14 startAnimating];
      [cellCopy setAccessoryView:v14];
    }

    else
    {
      [cellCopy setAccessoryView:0];
    }
  }
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  tableView = [(HUSiriTriggerPhraseSettingDetailsViewController *)self tableView];
  v8 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v10 = [itemManager displayedItemAtIndexPath:v8];

  objc_opt_class();
  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  sourceItem = [v13 sourceItem];
  v15 = &unk_28251AE08;
  if ([sourceItem conformsToProtocol:v15])
  {
    v16 = sourceItem;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__HUSiriTriggerPhraseSettingDetailsViewController_switchCell_didTurnOn___block_invoke;
  v20[3] = &unk_277DBDD10;
  v21 = cellCopy;
  v22 = v17;
  v24 = onCopy;
  selfCopy = self;
  v18 = v17;
  v19 = cellCopy;
  [(HUSiriTriggerPhraseSettingDetailsViewController *)self _preflightCheckToAllowSwitchingSiriTriggerForMediaItem:v18 changingToOn:onCopy withCompletion:v20];
}

void __72__HUSiriTriggerPhraseSettingDetailsViewController_switchCell_didTurnOn___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 138412546;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(Switch) '%@/%@' running preflight check for Allow HS before changing...", buf, 0x16u);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__HUSiriTriggerPhraseSettingDetailsViewController_switchCell_didTurnOn___block_invoke_84;
    v15[3] = &unk_277DBDCE8;
    v16 = *(a1 + 40);
    v19 = *(a1 + 56);
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v17 = v7;
    v18 = v8;
    v9 = [v3 addSuccessBlock:v15];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__HUSiriTriggerPhraseSettingDetailsViewController_switchCell_didTurnOn___block_invoke_2;
    v11[3] = &unk_277DBC4D8;
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    v10 = [v3 addFailureBlock:v11];
  }
}

void __72__HUSiriTriggerPhraseSettingDetailsViewController_switchCell_didTurnOn___block_invoke_84(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    if ([v3 BOOLValue])
    {
      v6 = @"passed";
    }

    else
    {
      v6 = @"failed";
    }

    v7 = [v3 BOOLValue];
    v8 = @"NOT CHANGING";
    v9 = *(a1 + 56);
    if (v7)
    {
      v8 = @"CHANGING";
    }

    v10 = @"OFF";
    *buf = 138413058;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    if (v9)
    {
      v10 = @"ON";
    }

    v23 = v8;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(Switch) preflight returned check %@, %@ %@ to '%@'", buf, 0x2Au);
  }

  if ([v3 BOOLValue])
  {
    v11 = [*(a1 + 32) setSiriDisabled:(*(a1 + 56) & 1) == 0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__HUSiriTriggerPhraseSettingDetailsViewController_switchCell_didTurnOn___block_invoke_103;
    v15[3] = &unk_277DBC098;
    v16 = *(a1 + 40);
    v17 = *(a1 + 56);
    v12 = [v11 addFailureBlock:v15];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__HUSiriTriggerPhraseSettingDetailsViewController_switchCell_didTurnOn___block_invoke_105;
    v14[3] = &unk_277DB8BD8;
    v14[4] = *(a1 + 48);
    v13 = [v11 addSuccessBlock:v14];
  }
}

void __72__HUSiriTriggerPhraseSettingDetailsViewController_switchCell_didTurnOn___block_invoke_103(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setOn:(*(a1 + 40) & 1) == 0];
  }

  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Allow Hey Siri Setting FAILED to update with value %{BOOL}d. Reverting UI state.", v6, 8u);
  }
}

void __72__HUSiriTriggerPhraseSettingDetailsViewController_switchCell_didTurnOn___block_invoke_105(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 didUpdateSiriTriggerPhraseSetting];
    }
  }
}

uint64_t __72__HUSiriTriggerPhraseSettingDetailsViewController_switchCell_didTurnOn___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(Switch) preflight failed, NOT changing %@", &v5, 0xCu);
  }

  return [*(a1 + 40) setOn:(*(a1 + 48) & 1) == 0 animated:1];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v22 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = HUSiriTriggerPhraseSettingDetailsViewController;
  [(HUItemTableViewController *)&v17 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  selectedSiriTriggerPhraseIndex = [(HUSiriTriggerPhraseSettingDetailsViewController *)self selectedSiriTriggerPhraseIndex];
  if (selectedSiriTriggerPhraseIndex != [pathCopy row])
  {
    siriSettingsDetailsItemManager = [(HUSiriTriggerPhraseSettingDetailsViewController *)self siriSettingsDetailsItemManager];
    v10 = [siriSettingsDetailsItemManager displayedItemAtIndexPath:pathCopy];

    v11 = [viewCopy cellForRowAtIndexPath:pathCopy];
    siriSettingsDetailsItemManager2 = [(HUSiriTriggerPhraseSettingDetailsViewController *)self siriSettingsDetailsItemManager];
    v13 = [siriSettingsDetailsItemManager2 updateSiriTriggerPhrase:v10];

    -[HUSiriTriggerPhraseSettingDetailsViewController setInProgressTriggerPhraseUpdateIndex:](self, "setInProgressTriggerPhraseUpdateIndex:", [pathCopy row]);
    -[HUSiriTriggerPhraseSettingDetailsViewController setSelectedSiriTriggerPhraseIndex:](self, "setSelectedSiriTriggerPhraseIndex:", [pathCopy row]);
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[HUSiriTriggerPhraseSettingDetailsViewController tableView:didSelectRowAtIndexPath:]";
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%s User Tapped [%@]", buf, 0x16u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __85__HUSiriTriggerPhraseSettingDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v16[3] = &unk_277DB7530;
    v16[4] = self;
    v15 = [v13 addCompletionBlock:v16];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

void __85__HUSiriTriggerPhraseSettingDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) _clearSpinner];
  if (!a3 && [v5 BOOLValue])
  {
    [*(a1 + 32) _updateFooterText];
  }
}

- (void)_preflightCheckToAllowSwitchingSiriTriggerForMediaItem:(id)item changingToOn:(BOOL)on withCompletion:(id)completion
{
  onCopy = on;
  v49 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  if ([itemCopy isSiriEndpointAccessory] && onCopy)
  {
    accessories = [itemCopy accessories];
    anyObject = [accessories anyObject];

    hf_siriEndpointProfile = [anyObject hf_siriEndpointProfile];
    currentAssistant = [hf_siriEndpointProfile currentAssistant];
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v46 = currentAssistant;
      v47 = 1024;
      isSiriAssistant = [currentAssistant isSiriAssistant];
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "currentAssistant = %@, currentAssistant.isSiriAssistant = %{BOOL}d", buf, 0x12u);
    }

    if (currentAssistant && ([currentAssistant isSiriAssistant] & 1) == 0)
    {
      selfCopy = self;
      v16 = HFLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = currentAssistant;
        _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Accessory has a different assistant = %@", buf, 0xCu);
      }

      name = [currentAssistant name];
      v15 = HULocalizedStringWithFormat(@"HUSiriEndpoint_TurnOffAssistant_AlertTitle", @"%@", v18, v19, v20, v21, v22, v23, name);

      name2 = [currentAssistant name];
      v39 = HULocalizedStringWithFormat(@"HUSiriEndpoint_TurnOffAssistant_AlertMessage", @"%@", v25, v26, v27, v28, v29, v30, name2);

      v31 = [MEMORY[0x277D75110] alertControllerWithTitle:v15 message:v39 preferredStyle:1];
      v32 = MEMORY[0x277D750F8];
      v33 = _HULocalizedStringWithDefaultValue(@"HUSiriEndpoint_TurnOffAssistant_AlertButtonTitle", @"HUSiriEndpoint_TurnOffAssistant_AlertButtonTitle", 1);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __134__HUSiriTriggerPhraseSettingDetailsViewController__preflightCheckToAllowSwitchingSiriTriggerForMediaItem_changingToOn_withCompletion___block_invoke;
      v43[3] = &unk_277DBBA20;
      v34 = completionCopy;
      v44 = v34;
      v35 = [v32 actionWithTitle:v33 style:0 handler:v43];
      [v31 addAction:v35];

      v36 = MEMORY[0x277D750F8];
      v37 = _HULocalizedStringWithDefaultValue(@"HUAlertCancel", @"HUAlertCancel", 1);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __134__HUSiriTriggerPhraseSettingDetailsViewController__preflightCheckToAllowSwitchingSiriTriggerForMediaItem_changingToOn_withCompletion___block_invoke_2;
      v41[3] = &unk_277DBBA20;
      v42 = v34;
      v38 = [v36 actionWithTitle:v37 style:1 handler:v41];
      [v31 addAction:v38];

      [(HUSiriTriggerPhraseSettingDetailsViewController *)selfCopy presentViewController:v31 animated:1 completion:0];
    }

    else
    {
      v15 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
      (*(completionCopy + 2))(completionCopy, v15);
    }
  }

  else
  {
    anyObject = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
    (*(completionCopy + 2))(completionCopy, anyObject);
  }
}

void __134__HUSiriTriggerPhraseSettingDetailsViewController__preflightCheckToAllowSwitchingSiriTriggerForMediaItem_changingToOn_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
  (*(v1 + 16))(v1, v2);
}

void __134__HUSiriTriggerPhraseSettingDetailsViewController__preflightCheckToAllowSwitchingSiriTriggerForMediaItem_changingToOn_withCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:37];
  v3 = [v2 futureWithError:v4];
  (*(v1 + 16))(v1, v3);
}

- (void)_updateFooterText
{
  siriSettingsDetailsItemManager = [(HUSiriTriggerPhraseSettingDetailsViewController *)self siriSettingsDetailsItemManager];
  [siriSettingsDetailsItemManager recalculateVisibilityAndSortAllItems];

  tableView = [(HUSiriTriggerPhraseSettingDetailsViewController *)self tableView];
  [tableView reloadData];
}

- (void)setInProgressTriggerPhraseUpdateIndex:(int64_t)index
{
  if (self->_inProgressTriggerPhraseUpdateIndex != index)
  {
    v5 = objc_opt_new();
    siriSettingsDetailsItemManager = [(HUSiriTriggerPhraseSettingDetailsViewController *)self siriSettingsDetailsItemManager];
    v7 = [siriSettingsDetailsItemManager displayedItemsInSection:0];
    v8 = [v7 count];

    inProgressTriggerPhraseUpdateIndex = self->_inProgressTriggerPhraseUpdateIndex;
    if (inProgressTriggerPhraseUpdateIndex != 0x7FFFFFFFFFFFFFFFLL && inProgressTriggerPhraseUpdateIndex < v8)
    {
      v11 = [MEMORY[0x277CCAA70] indexPathForRow:? inSection:?];
      [v5 addObject:v11];
    }

    if (index != 0x7FFFFFFFFFFFFFFFLL && v8 > index)
    {
      v12 = [MEMORY[0x277CCAA70] indexPathForRow:index inSection:0];
      [v5 addObject:v12];
    }

    self->_inProgressTriggerPhraseUpdateIndex = index;
    if ([v5 count])
    {
      itemManager = [(HUItemTableViewController *)self itemManager];
      diffableDataSourceDisabled = [itemManager diffableDataSourceDisabled];

      if (diffableDataSourceDisabled)
      {
        tableView = [(HUSiriTriggerPhraseSettingDetailsViewController *)self tableView];
        [tableView reloadRowsAtIndexPaths:v5 withRowAnimation:5];
      }

      else
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __89__HUSiriTriggerPhraseSettingDetailsViewController_setInProgressTriggerPhraseUpdateIndex___block_invoke;
        v18[3] = &unk_277DBBD18;
        v18[4] = self;
        v16 = [v5 na_map:v18];
        siriSettingsDetailsItemManager2 = [(HUSiriTriggerPhraseSettingDetailsViewController *)self siriSettingsDetailsItemManager];
        [siriSettingsDetailsItemManager2 reloadUIRepresentationForItems:v16 withAnimation:0];
      }
    }
  }
}

id __89__HUSiriTriggerPhraseSettingDetailsViewController_setInProgressTriggerPhraseUpdateIndex___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemManager];
  v5 = [v4 displayedItemAtIndexPath:v3];

  return v5;
}

- (HUSiriTriggerPhraseSettingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end