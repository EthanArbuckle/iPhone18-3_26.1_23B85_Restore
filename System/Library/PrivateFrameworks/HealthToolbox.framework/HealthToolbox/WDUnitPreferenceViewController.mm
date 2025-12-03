@interface WDUnitPreferenceViewController
- (UIFont)bodyFont;
- (WDUnitPreferenceViewController)initWithUnits:(id)units displayType:(id)type unitController:(id)controller;
- (id)_sortedUnitPreferenceRows;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (void)_doneButtonTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
@end

@implementation WDUnitPreferenceViewController

- (WDUnitPreferenceViewController)initWithUnits:(id)units displayType:(id)type unitController:(id)controller
{
  unitsCopy = units;
  typeCopy = type;
  controllerCopy = controller;
  v29.receiver = self;
  v29.super_class = WDUnitPreferenceViewController;
  v11 = [(HKTableViewController *)&v29 initWithUsingInsetStyling:1];
  if (v11)
  {
    v12 = WDBundle();
    v13 = [v12 localizedStringForKey:@"UNIT" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    [(WDUnitPreferenceViewController *)v11 setTitle:v13];

    v14 = [unitsCopy copy];
    units = v11->_units;
    v11->_units = v14;

    objc_storeStrong(&v11->_displayType, type);
    objc_storeStrong(&v11->_unitController, controller);
    _sortedUnitPreferenceRows = [(WDUnitPreferenceViewController *)v11 _sortedUnitPreferenceRows];
    rows = v11->_rows;
    v11->_rows = _sortedUnitPreferenceRows;

    v18 = [controllerCopy unitForDisplayType:v11->_displayType];
    v19 = v11->_rows;
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __75__WDUnitPreferenceViewController_initWithUnits_displayType_unitController___block_invoke;
    v26 = &unk_2796E79C8;
    v27 = v18;
    v20 = v11;
    v28 = v20;
    v21 = v18;
    [(NSArray *)v19 enumerateObjectsUsingBlock:&v23];
    [(WDUnitPreferenceViewController *)v20 setModalPresentationStyle:2, v23, v24, v25, v26];
  }

  return v11;
}

void __75__WDUnitPreferenceViewController_initWithUnits_displayType_unitController___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 unit];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    *(*(a1 + 40) + 1080) = a3;
    *(*(a1 + 40) + 1088) = a3;
  }
}

- (id)_sortedUnitPreferenceRows
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_units;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = objc_alloc_init(_WDUnitPreferenceViewControllerRow);
        [(_WDUnitPreferenceViewControllerRow *)v10 setUnit:v9, v15];
        v11 = [(HKUnitPreferenceController *)self->_unitController localizedDisplayNameForUnit:v9 value:0 nameContext:2];
        [(_WDUnitPreferenceViewControllerRow *)v10 setLocalizedDisplayName:v11];

        [v3 addObject:v10];
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v3 sortedArrayUsingComparator:&__block_literal_global_6];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __59__WDUnitPreferenceViewController__sortedUnitPreferenceRows__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedDisplayName];
  v6 = [v4 localizedDisplayName];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (UIFont)bodyFont
{
  bodyFont = self->_bodyFont;
  if (!bodyFont)
  {
    v4 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v5 = self->_bodyFont;
    self->_bodyFont = v4;

    bodyFont = self->_bodyFont;
  }

  return bodyFont;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = WDUnitPreferenceViewController;
  [(HKTableViewController *)&v6 viewDidLoad];
  tableView = [(WDUnitPreferenceViewController *)self tableView];
  [tableView setEstimatedRowHeight:44.0];

  v4 = HKUIJoinStringsForAutomationIdentifier();
  tableView2 = [(WDUnitPreferenceViewController *)self tableView];
  [tableView2 setAccessibilityIdentifier:v4];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = WDUnitPreferenceViewController;
  [(WDUnitPreferenceViewController *)&v10 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(WDUnitPreferenceViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      bodyFont = self->_bodyFont;
      self->_bodyFont = 0;
    }
  }
}

- (void)_doneButtonTapped:(id)tapped
{
  v4 = [(NSArray *)self->_rows objectAtIndexedSubscript:self->_selectedRowIndex];
  v5 = MEMORY[0x277D750F8];
  v6 = WDBundle();
  v7 = [v6 localizedStringForKey:@"CANCEL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v8 = [v5 actionWithTitle:v7 style:1 handler:0];

  v9 = MEMORY[0x277D750F8];
  v10 = WDBundle();
  v11 = [v10 localizedStringForKey:@"CHANGE_UNITS" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__WDUnitPreferenceViewController__doneButtonTapped___block_invoke;
  v20[3] = &unk_2796E6F78;
  v20[4] = self;
  v21 = v4;
  v12 = v4;
  v13 = [v9 actionWithTitle:v11 style:0 handler:v20];

  v14 = MEMORY[0x277CCACA8];
  v15 = WDBundle();
  v16 = [v15 localizedStringForKey:@"CONFIRM_UNIT_CHANGE %@" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  localizedDisplayName = [v12 localizedDisplayName];
  v18 = [v14 stringWithFormat:v16, localizedDisplayName];

  v19 = [MEMORY[0x277D75110] alertControllerWithTitle:&stru_28641D9B8 message:v18 preferredStyle:1];
  [v19 addAction:v8];
  [v19 addAction:v13];
  [(WDUnitPreferenceViewController *)self presentViewController:v19 animated:1 completion:0];
}

uint64_t __52__WDUnitPreferenceViewController__doneButtonTapped___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) unit];
  [v2 _updateCurrentUnit:v3];

  v4 = *(a1 + 32);

  return [v4 dismissViewControllerAnimated:1 completion:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"Cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"Cell"];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_rows, "objectAtIndexedSubscript:", [pathCopy row]);
  textLabel = [v7 textLabel];
  localizedDisplayName = [v8 localizedDisplayName];
  [textLabel setText:localizedDisplayName];

  selectedRowIndex = self->_selectedRowIndex;
  v12 = [pathCopy row];

  if (selectedRowIndex == v12)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [v7 setAccessoryType:v13];
  textLabel2 = [v7 textLabel];
  bodyFont = [(WDUnitPreferenceViewController *)self bodyFont];
  [textLabel2 setFont:bodyFont];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  if ([pathCopy row] != self->_selectedRowIndex)
  {
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:? inSection:?];
    v9 = [pathCopy row];
    self->_selectedRowIndex = v9;
    [(UIBarButtonItem *)self->_doneButton setEnabled:v9 != self->_originalSelectedRowIndex];
    v16[0] = pathCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [viewCopy reloadRowsAtIndexPaths:v10 withRowAnimation:100];

    v15 = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    [viewCopy reloadRowsAtIndexPaths:v11 withRowAnimation:5];

    if (![(WDUnitPreferenceViewController *)self requiresChangeConfirmation])
    {
      v12 = [(NSArray *)self->_rows objectAtIndexedSubscript:self->_selectedRowIndex];
      unit = [v12 unit];
      [(WDUnitPreferenceViewController *)self _updateCurrentUnit:unit];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(HKDisplayType *)self->_displayType localization:view];
  unitChangeCautionaryText = [v4 unitChangeCautionaryText];

  return unitChangeCautionaryText;
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = MEMORY[0x277D750C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __70__WDUnitPreferenceViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_2796E6DB8;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  navigationItem = [(WDUnitPreferenceViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __70__WDUnitPreferenceViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  navigationItem = [(WDUnitPreferenceViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
}

@end