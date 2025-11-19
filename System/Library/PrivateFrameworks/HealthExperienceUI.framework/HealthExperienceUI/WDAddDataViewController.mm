@interface WDAddDataViewController
- (BOOL)savingEnabled;
- (WDAddDataViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 unitController:(id)a5 initialStartDate:(id)a6 dateCache:(id)a7;
- (WDAddDataViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (WDAddDataViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_sectionHeaderView;
- (id)defaultMetadata;
- (id)generateHKObjects;
- (id)manualEntryItemsForSection:(int64_t)a3;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)_widthDesignationFromTraitCollection:(id)a3;
- (void)_dataValidated;
- (void)_showValidationConfirmAlertWithErrorString:(id)a3;
- (void)_showValidationErrorAlertWithErrorString:(id)a3;
- (void)_updateMargins;
- (void)_updateMarginsForWidthDesignation:(int64_t)a3;
- (void)addButtonTapped:(id)a3;
- (void)reloadContent;
- (void)saveHKObjectWithCompletion:(id)a3;
- (void)setSavingEnabled:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updatePreferredContentSize;
- (void)validateMaximumAllowedDurationFor:(id)a3 endDate:(id)a4 competion:(id)a5;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WDAddDataViewController

- (WDAddDataViewController)initWithDisplayType:(id)a3 healthStore:(id)a4 unitController:(id)a5 initialStartDate:(id)a6 dateCache:(id)a7
{
  v13 = a3;
  v24 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = WDAddDataViewController;
  v17 = [(HKTableViewController *)&v25 initWithUsingInsetStyling:1];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_displayType, a3);
    objc_storeStrong(&v18->_healthStore, a4);
    objc_storeStrong(&v18->_unitController, a5);
    objc_storeStrong(&v18->_initialStartDate, a6);
    objc_storeStrong(&v18->_dateCache, a7);
    v19 = objc_alloc_init(MEMORY[0x1E69A4400]);
    validationController = v18->_validationController;
    v18->_validationController = v19;

    v21 = [v13 localization];
    v22 = [v21 titleEmbeddedDisplayName];
    [(WDAddDataViewController *)v18 setTitle:v22];
  }

  return v18;
}

- (WDAddDataViewController)initWithStyle:(int64_t)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (WDAddDataViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (void)viewDidLoad
{
  v35[2] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = WDAddDataViewController;
  [(HKTableViewController *)&v31 viewDidLoad];
  v3 = [(WDAddDataViewController *)self tableView];
  [v3 setRowHeight:*MEMORY[0x1E69DE3D0]];

  v35[0] = @"UIA.Health.AddData";
  v35[1] = @"View";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v5 = HKUIJoinStringsForAutomationIdentifier();
  v6 = [(WDAddDataViewController *)self view];
  [v6 setAccessibilityIdentifier:v5];

  v7 = [(WDAddDataViewController *)self tableView];
  [v7 _setSectionContentInsetFollowsLayoutMargins:1];

  v8 = [(WDAddDataViewController *)self navigationItem];
  [v8 setTitle:0];

  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
  v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_addButtonTapped_];
  v11 = [(WDAddDataViewController *)self navigationItem];
  [v11 setLeftBarButtonItem:v9];

  v12 = [(WDAddDataViewController *)self navigationItem];
  [v12 setRightBarButtonItem:v10];

  v34[0] = @"UIA.Health.AddData";
  v34[1] = @"Cancel";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v14 = HKUIJoinStringsForAutomationIdentifier();
  [v9 setAccessibilityIdentifier:v14];

  v33[0] = @"UIA.Health.AddData";
  v33[1] = @"Add";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v16 = HKUIJoinStringsForAutomationIdentifier();
  [v10 setAccessibilityIdentifier:v16];

  v17 = MEMORY[0x1E69DCBA0];
  v18 = HABundle();
  v19 = [v18 localizedStringForKey:@"CANCEL" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v20 = [v17 commandWithTitle:v19 image:0 action:sel_cancelButtonTapped_ input:*MEMORY[0x1E69DDEA0] modifierFlags:0 propertyList:0];

  v21 = MEMORY[0x1E69DCBA0];
  v22 = HABundle();
  v23 = [v22 localizedStringForKey:@"ADD" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v24 = [v21 commandWithTitle:v23 image:0 action:sel_addButtonTapped_ input:@"\r" modifierFlags:0 propertyList:0];

  [(WDAddDataViewController *)self addKeyCommand:v20];
  [(WDAddDataViewController *)self addKeyCommand:v24];
  [(WDAddDataViewController *)self reloadContent];
  objc_initWeak(&location, self);
  v25 = objc_opt_self();
  v32 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __38__WDAddDataViewController_viewDidLoad__block_invoke;
  v28[3] = &unk_1E7EEB3C0;
  objc_copyWeak(&v29, &location);
  v27 = [(WDAddDataViewController *)self registerForTraitChanges:v26 withHandler:v28];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __38__WDAddDataViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updatePreferredContentSize];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _updateMargins];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 tableView];
  [v5 beginUpdates];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 tableView];
  [v7 endUpdates];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 updatePreferredContentSize];

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 _updateMargins];
}

- (void)reloadContent
{
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(WDAddDataViewController *)self numberOfSections];
  if (v3 >= 1)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(WDAddDataViewController *)self manualEntryItemsForSection:i];
      v7 = [[WDAddDataManualEntrySectionData alloc] initWithItems:v6];
      [v11 addObject:v7];
    }
  }

  v8 = [[WDAddDataManualEntryTableData alloc] initWithSections:v11];
  model = self->_model;
  self->_model = v8;

  v10 = [(WDAddDataViewController *)self tableView];
  [v10 reloadData];

  [(WDAddDataViewController *)self updatePreferredContentSize];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = WDAddDataViewController;
  [(WDAddDataViewController *)&v5 viewIsAppearing:a3];
  v4 = [(WDAddDataViewController *)self defaultEditingItem];
  [v4 beginEditing];

  [(WDAddDataViewController *)self updatePreferredContentSize];
  [(WDAddDataViewController *)self _updateMargins];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WDAddDataViewController;
  [(WDAddDataViewController *)&v4 viewWillAppear:a3];
  [(WDAddDataViewController *)self updatePreferredContentSize];
}

- (void)updatePreferredContentSize
{
  v3 = [(WDAddDataViewController *)self tableView];
  [v3 layoutIfNeeded];

  v4 = [MEMORY[0x1E696C608] sharedBehavior];
  v5 = [v4 isiPad];

  if (v5)
  {
    v6 = 644.0;
    v7 = 540.0;
  }

  else
  {
    v8 = [(WDAddDataViewController *)self traitCollection];
    v9 = [v8 preferredContentSizeCategory];

    v7 = dbl_1BA4B23F0[UIContentSizeCategoryCompareToCategory(v9, *MEMORY[0x1E69DDC60]) == NSOrderedAscending];
    v10 = [(WDAddDataViewController *)self tableView];
    [v10 contentSize];
    v6 = v11;
  }

  [(WDAddDataViewController *)self setPreferredContentSize:v7, v6];
  v12 = [(WDAddDataViewController *)self navigationController];
  [v12 setPreferredContentSize:{v7, v6}];
}

- (int64_t)_widthDesignationFromTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForNSIntegerTrait:objc_opt_class()];

  return v4;
}

- (void)_updateMarginsForWidthDesignation:(int64_t)a3
{
  sub_1BA4A75D8();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(WDAddDataViewController *)self tableView];
  [v12 setDirectionalLayoutMargins:{v5, v7, v9, v11}];
}

- (void)_updateMargins
{
  v3 = [(WDAddDataViewController *)self traitCollection];
  v4 = [(WDAddDataViewController *)self _widthDesignationFromTraitCollection:v3];

  [(WDAddDataViewController *)self _updateMarginsForWidthDesignation:v4];
}

- (void)setSavingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(WDAddDataViewController *)self navigationItem];
  v4 = [v5 rightBarButtonItem];
  [v4 setEnabled:v3];
}

- (BOOL)savingEnabled
{
  v2 = [(WDAddDataViewController *)self navigationItem];
  v3 = [v2 rightBarButtonItem];
  v4 = [v3 isEnabled];

  return v4;
}

- (void)addButtonTapped:(id)a3
{
  v4 = [(WDAddDataViewController *)self navigationItem];
  v5 = [v4 rightBarButtonItem];
  [v5 setEnabled:0];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__WDAddDataViewController_addButtonTapped___block_invoke;
  v6[3] = &unk_1E7EEB3E8;
  v6[4] = self;
  [(WDAddDataViewController *)self validateDataWithCompletion:v6];
}

void __43__WDAddDataViewController_addButtonTapped___block_invoke(uint64_t a1, int a2, void *a3, int a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = v7;
  if (a2)
  {
    [v8 _dataValidated];
  }

  else if (a4)
  {
    [v8 _showValidationConfirmAlertWithErrorString:v7];
  }

  else
  {
    [v8 _showValidationErrorAlertWithErrorString:v7];
  }
}

- (void)_showValidationErrorAlertWithErrorString:(id)a3
{
  v4 = MEMORY[0x1E69DC650];
  v5 = a3;
  v6 = HABundle();
  v7 = [v6 localizedStringForKey:@"OUT_OF_RANGE_ALERT_ERROR_TITLE" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v8 = [v4 alertControllerWithTitle:v7 message:v5 preferredStyle:1];

  v9 = MEMORY[0x1E69DC648];
  v10 = HABundle();
  v11 = [v10 localizedStringForKey:@"OUT_OF_RANGE_ALERT_OK" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__WDAddDataViewController__showValidationErrorAlertWithErrorString___block_invoke;
  v13[3] = &unk_1E7EEB410;
  v13[4] = self;
  v12 = [v9 actionWithTitle:v11 style:0 handler:v13];

  [v8 addAction:v12];
  [(WDAddDataViewController *)self presentViewController:v8 animated:1 completion:0];
}

void __68__WDAddDataViewController__showValidationErrorAlertWithErrorString___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationItem];
  v1 = [v2 rightBarButtonItem];
  [v1 setEnabled:1];
}

- (void)_showValidationConfirmAlertWithErrorString:(id)a3
{
  v4 = MEMORY[0x1E69DC650];
  v5 = a3;
  v6 = HABundle();
  v7 = [v6 localizedStringForKey:@"OUT_OF_RANGE_ALERT_CONFIRM_TITLE" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v8 = [v4 alertControllerWithTitle:v7 message:v5 preferredStyle:1];

  v9 = MEMORY[0x1E69DC648];
  v10 = HABundle();
  v11 = [v10 localizedStringForKey:@"OUT_OF_RANGE_ALERT_CONFIRM" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__WDAddDataViewController__showValidationConfirmAlertWithErrorString___block_invoke;
  v18[3] = &unk_1E7EEB410;
  v18[4] = self;
  v12 = [v9 _actionWithTitle:v11 image:0 style:0 handler:v18 shouldDismissHandler:&__block_literal_global_2];

  v13 = MEMORY[0x1E69DC648];
  v14 = HABundle();
  v15 = [v14 localizedStringForKey:@"OUT_OF_RANGE_ALERT_CANCEL" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__WDAddDataViewController__showValidationConfirmAlertWithErrorString___block_invoke_3;
  v17[3] = &unk_1E7EEB410;
  v17[4] = self;
  v16 = [v13 actionWithTitle:v15 style:1 handler:v17];

  [v8 addAction:v12];
  [v8 addAction:v16];
  [(WDAddDataViewController *)self presentViewController:v8 animated:1 completion:0];
}

void __70__WDAddDataViewController__showValidationConfirmAlertWithErrorString___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _dataValidated];
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = [*(a1 + 32) view];
  [v2 endEditing:1];
}

void __70__WDAddDataViewController__showValidationConfirmAlertWithErrorString___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationItem];
  v1 = [v2 rightBarButtonItem];
  [v1 setEnabled:1];
}

- (void)_dataValidated
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__WDAddDataViewController__dataValidated__block_invoke;
  v2[3] = &unk_1E7EEB458;
  v2[4] = self;
  [(WDAddDataViewController *)self saveHKObjectWithCompletion:v2];
}

void __41__WDAddDataViewController__dataValidated__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__WDAddDataViewController__dataValidated__block_invoke_cold_1(a1, v5, v6);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__WDAddDataViewController__dataValidated__block_invoke_371;
  block[3] = &unk_1E7EEB0F0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)validateMaximumAllowedDurationFor:(id)a3 endDate:(id)a4 competion:(id)a5
{
  v36 = a3;
  v8 = a4;
  v9 = a5;
  [v8 timeIntervalSinceDate:v36];
  v11 = v10;
  validationController = self->_validationController;
  v13 = [(HKDisplayType *)self->_displayType sampleType];
  v14 = [(HKManualEntryValidationController *)validationController validateMaximumAllowedDuration:v13 ofType:v11];

  if (v14)
  {
    if (v14 == 1)
    {
      v19 = objc_alloc_init(MEMORY[0x1E696AB78]);
      v28 = CPDateFormatStringForFormatType();
      [v19 setDateFormat:v28];

      v21 = [v19 stringFromDate:v36];
      v29 = [v19 stringFromDate:v8];
      v30 = MEMORY[0x1E696AEC0];
      v31 = HABundle();
      v32 = [v31 localizedStringForKey:@"OUT_OF_RANGE_ALERT_TWO_ITEMS_FORMAT_%@_%@" value:&stru_1F3823B88 table:@"AddDataLocalization"];
      v33 = [v30 stringWithFormat:v32, v21, v29];

      v9[2](v9, 0, v33, 1);
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_14;
      }

      v15 = [(HKDisplayType *)self->_displayType sampleType];
      [v15 maximumAllowedDuration];
      v17 = v16;

      v18 = (v17 / 86400.0);
      v19 = objc_alloc_init(MEMORY[0x1E696AB70]);
      [v19 setAllowedUnits:16];
      if (v18 > 10)
      {
        v20 = 3;
      }

      else
      {
        v20 = 4;
      }

      [v19 setUnitsStyle:v20];
      v21 = [MEMORY[0x1E695DF10] hk_componentsWithDays:v18];
      v22 = [(HKDisplayType *)self->_displayType wd_outOfRangeAlertDisplayName];
      v23 = MEMORY[0x1E696AEC0];
      v24 = HABundle();
      v25 = v24;
      if (v22)
      {
        v26 = [v24 localizedStringForKey:@"OUT_OF_RANGE_ALERT_SAMPLE_DURATION_ERROR_%@_%@" value:&stru_1F3823B88 table:@"AddDataLocalization"];
        v27 = [v19 stringFromDateComponents:v21];
        [v23 stringWithFormat:v26, v27, v22];
      }

      else
      {
        v26 = [v24 localizedStringForKey:@"OUT_OF_RANGE_ALERT_DEFAULT_DURATION_ERROR_%@" value:&stru_1F3823B88 table:@"AddDataLocalization"];
        v27 = [v19 stringFromDateComponents:v21];
        [v23 stringWithFormat:v26, v27, v35];
      }
      v34 = ;

      v9[2](v9, 0, v34, 0);
    }
  }

  else
  {
    v9[2](v9, 1, 0, 0);
  }

LABEL_14:
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(WDAddDataViewController *)self _sectionHeaderView:a3];
  }

  return v6;
}

- (id)_sectionHeaderView
{
  v2 = [objc_alloc(MEMORY[0x1E69A40E8]) initWithDisplayType:self->_displayType];

  return v2;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v8 = [v6 cellForRowAtIndexPath:v7];
  v9 = [(WDAddDataManualEntryTableData *)self->_model itemForCell:v8];
  [v9 cellForItemTapped:v8];
  v10 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__WDAddDataViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v13[3] = &unk_1E7EEB480;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v11 = v7;
  v12 = v6;
  [v10 animateWithDuration:v13 animations:0.2];
}

uint64_t __61__WDAddDataViewController_tableView_didSelectRowAtIndexPath___block_invoke(id *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [a1[4] indexPathsForVisibleRows];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [a1[4] cellForRowAtIndexPath:v7];
        if ([v8 conformsToProtocol:&unk_1F3858B38])
        {
          v9 = v8;
          if ([a1[5] isEqual:v7])
          {
            v10 = [v9 expanded] ^ 1;
          }

          else
          {
            v10 = 0;
          }

          [v9 setExpanded:v10];
          if (([v9 expanded] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v9 endEditing];
            }
          }
        }

        else if (([a1[5] isEqual:v7] & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v8 endEditing];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  [a1[4] beginUpdates];
  [a1[4] endUpdates];
  [a1[6] updatePreferredContentSize];
  return [a1[4] scrollToRowAtIndexPath:a1[5] atScrollPosition:0 animated:1];
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [(WDAddDataManualEntryTableData *)self->_model cellForRowAtIndexPath:a4];
  if (![v4 conformsToProtocol:&unk_1F3858B38])
  {
    goto LABEL_5;
  }

  v5 = v4;
  if (![v5 expanded])
  {

LABEL_5:
    v7 = *MEMORY[0x1E69DE3D0];
    goto LABEL_6;
  }

  [v5 expandedHeight];
  v7 = v6;

LABEL_6:
  return v7;
}

- (void)saveHKObjectWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WDAddDataViewController *)self generateHKObjects];
  [(HKHealthStore *)self->_healthStore saveObjects:v5 withCompletion:v4];
}

- (id)defaultMetadata
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E696BBA0];
  v5[0] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)generateHKObjects
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)manualEntryItemsForSection:(int64_t)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

void __41__WDAddDataViewController__dataValidated__block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a2;
  v5 = v7;
  _os_log_error_impl(&dword_1B9F07000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Error saving HKObjects: %{public}@", &v6, 0x16u);
}

@end