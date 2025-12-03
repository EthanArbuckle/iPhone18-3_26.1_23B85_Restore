@interface WDAddDataViewController
- (BOOL)savingEnabled;
- (WDAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache;
- (WDAddDataViewController)initWithNibName:(id)name bundle:(id)bundle;
- (WDAddDataViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_sectionHeaderView;
- (id)defaultMetadata;
- (id)generateHKObjects;
- (id)manualEntryItemsForSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)_widthDesignationFromTraitCollection:(id)collection;
- (void)_dataValidated;
- (void)_showValidationConfirmAlertWithErrorString:(id)string;
- (void)_showValidationErrorAlertWithErrorString:(id)string;
- (void)_updateMargins;
- (void)_updateMarginsForWidthDesignation:(int64_t)designation;
- (void)addButtonTapped:(id)tapped;
- (void)reloadContent;
- (void)saveHKObjectWithCompletion:(id)completion;
- (void)setSavingEnabled:(BOOL)enabled;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updatePreferredContentSize;
- (void)validateMaximumAllowedDurationFor:(id)for endDate:(id)date competion:(id)competion;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WDAddDataViewController

- (WDAddDataViewController)initWithDisplayType:(id)type healthStore:(id)store unitController:(id)controller initialStartDate:(id)date dateCache:(id)cache
{
  typeCopy = type;
  storeCopy = store;
  controllerCopy = controller;
  dateCopy = date;
  cacheCopy = cache;
  v25.receiver = self;
  v25.super_class = WDAddDataViewController;
  v17 = [(HKTableViewController *)&v25 initWithUsingInsetStyling:1];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_displayType, type);
    objc_storeStrong(&v18->_healthStore, store);
    objc_storeStrong(&v18->_unitController, controller);
    objc_storeStrong(&v18->_initialStartDate, date);
    objc_storeStrong(&v18->_dateCache, cache);
    v19 = objc_alloc_init(MEMORY[0x1E69A4400]);
    validationController = v18->_validationController;
    v18->_validationController = v19;

    localization = [typeCopy localization];
    titleEmbeddedDisplayName = [localization titleEmbeddedDisplayName];
    [(WDAddDataViewController *)v18 setTitle:titleEmbeddedDisplayName];
  }

  return v18;
}

- (WDAddDataViewController)initWithStyle:(int64_t)style
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (WDAddDataViewController)initWithNibName:(id)name bundle:(id)bundle
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
  tableView = [(WDAddDataViewController *)self tableView];
  [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];

  v35[0] = @"UIA.Health.AddData";
  v35[1] = @"View";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v5 = HKUIJoinStringsForAutomationIdentifier();
  view = [(WDAddDataViewController *)self view];
  [view setAccessibilityIdentifier:v5];

  tableView2 = [(WDAddDataViewController *)self tableView];
  [tableView2 _setSectionContentInsetFollowsLayoutMargins:1];

  navigationItem = [(WDAddDataViewController *)self navigationItem];
  [navigationItem setTitle:0];

  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
  v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_addButtonTapped_];
  navigationItem2 = [(WDAddDataViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v9];

  navigationItem3 = [(WDAddDataViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:v10];

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
  numberOfSections = [(WDAddDataViewController *)self numberOfSections];
  if (numberOfSections >= 1)
  {
    v4 = numberOfSections;
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

  tableView = [(WDAddDataViewController *)self tableView];
  [tableView reloadData];

  [(WDAddDataViewController *)self updatePreferredContentSize];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v5.receiver = self;
  v5.super_class = WDAddDataViewController;
  [(WDAddDataViewController *)&v5 viewIsAppearing:appearing];
  defaultEditingItem = [(WDAddDataViewController *)self defaultEditingItem];
  [defaultEditingItem beginEditing];

  [(WDAddDataViewController *)self updatePreferredContentSize];
  [(WDAddDataViewController *)self _updateMargins];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WDAddDataViewController;
  [(WDAddDataViewController *)&v4 viewWillAppear:appear];
  [(WDAddDataViewController *)self updatePreferredContentSize];
}

- (void)updatePreferredContentSize
{
  tableView = [(WDAddDataViewController *)self tableView];
  [tableView layoutIfNeeded];

  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  isiPad = [mEMORY[0x1E696C608] isiPad];

  if (isiPad)
  {
    v6 = 644.0;
    v7 = 540.0;
  }

  else
  {
    traitCollection = [(WDAddDataViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

    v7 = dbl_1BA4B23F0[UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC60]) == NSOrderedAscending];
    tableView2 = [(WDAddDataViewController *)self tableView];
    [tableView2 contentSize];
    v6 = v11;
  }

  [(WDAddDataViewController *)self setPreferredContentSize:v7, v6];
  navigationController = [(WDAddDataViewController *)self navigationController];
  [navigationController setPreferredContentSize:{v7, v6}];
}

- (int64_t)_widthDesignationFromTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy valueForNSIntegerTrait:objc_opt_class()];

  return v4;
}

- (void)_updateMarginsForWidthDesignation:(int64_t)designation
{
  sub_1BA4A75D8();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  tableView = [(WDAddDataViewController *)self tableView];
  [tableView setDirectionalLayoutMargins:{v5, v7, v9, v11}];
}

- (void)_updateMargins
{
  traitCollection = [(WDAddDataViewController *)self traitCollection];
  v4 = [(WDAddDataViewController *)self _widthDesignationFromTraitCollection:traitCollection];

  [(WDAddDataViewController *)self _updateMarginsForWidthDesignation:v4];
}

- (void)setSavingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationItem = [(WDAddDataViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:enabledCopy];
}

- (BOOL)savingEnabled
{
  navigationItem = [(WDAddDataViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  isEnabled = [rightBarButtonItem isEnabled];

  return isEnabled;
}

- (void)addButtonTapped:(id)tapped
{
  navigationItem = [(WDAddDataViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

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

- (void)_showValidationErrorAlertWithErrorString:(id)string
{
  v4 = MEMORY[0x1E69DC650];
  stringCopy = string;
  v6 = HABundle();
  v7 = [v6 localizedStringForKey:@"OUT_OF_RANGE_ALERT_ERROR_TITLE" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v8 = [v4 alertControllerWithTitle:v7 message:stringCopy preferredStyle:1];

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

- (void)_showValidationConfirmAlertWithErrorString:(id)string
{
  v4 = MEMORY[0x1E69DC650];
  stringCopy = string;
  v6 = HABundle();
  v7 = [v6 localizedStringForKey:@"OUT_OF_RANGE_ALERT_CONFIRM_TITLE" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v8 = [v4 alertControllerWithTitle:v7 message:stringCopy preferredStyle:1];

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

- (void)validateMaximumAllowedDurationFor:(id)for endDate:(id)date competion:(id)competion
{
  forCopy = for;
  dateCopy = date;
  competionCopy = competion;
  [dateCopy timeIntervalSinceDate:forCopy];
  v11 = v10;
  validationController = self->_validationController;
  sampleType = [(HKDisplayType *)self->_displayType sampleType];
  v14 = [(HKManualEntryValidationController *)validationController validateMaximumAllowedDuration:sampleType ofType:v11];

  if (v14)
  {
    if (v14 == 1)
    {
      v19 = objc_alloc_init(MEMORY[0x1E696AB78]);
      v28 = CPDateFormatStringForFormatType();
      [v19 setDateFormat:v28];

      v21 = [v19 stringFromDate:forCopy];
      v29 = [v19 stringFromDate:dateCopy];
      v30 = MEMORY[0x1E696AEC0];
      v31 = HABundle();
      v32 = [v31 localizedStringForKey:@"OUT_OF_RANGE_ALERT_TWO_ITEMS_FORMAT_%@_%@" value:&stru_1F3823B88 table:@"AddDataLocalization"];
      v33 = [v30 stringWithFormat:v32, v21, v29];

      competionCopy[2](competionCopy, 0, v33, 1);
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_14;
      }

      sampleType2 = [(HKDisplayType *)self->_displayType sampleType];
      [sampleType2 maximumAllowedDuration];
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
      wd_outOfRangeAlertDisplayName = [(HKDisplayType *)self->_displayType wd_outOfRangeAlertDisplayName];
      v23 = MEMORY[0x1E696AEC0];
      v24 = HABundle();
      v25 = v24;
      if (wd_outOfRangeAlertDisplayName)
      {
        v26 = [v24 localizedStringForKey:@"OUT_OF_RANGE_ALERT_SAMPLE_DURATION_ERROR_%@_%@" value:&stru_1F3823B88 table:@"AddDataLocalization"];
        v27 = [v19 stringFromDateComponents:v21];
        [v23 stringWithFormat:v26, v27, wd_outOfRangeAlertDisplayName];
      }

      else
      {
        v26 = [v24 localizedStringForKey:@"OUT_OF_RANGE_ALERT_DEFAULT_DURATION_ERROR_%@" value:&stru_1F3823B88 table:@"AddDataLocalization"];
        v27 = [v19 stringFromDateComponents:v21];
        [v23 stringWithFormat:v26, v27, v35];
      }
      v34 = ;

      competionCopy[2](competionCopy, 0, v34, 0);
    }
  }

  else
  {
    competionCopy[2](competionCopy, 1, 0, 0);
  }

LABEL_14:
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(WDAddDataViewController *)self _sectionHeaderView:view];
  }

  return v6;
}

- (id)_sectionHeaderView
{
  v2 = [objc_alloc(MEMORY[0x1E69A40E8]) initWithDisplayType:self->_displayType];

  return v2;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  v9 = [(WDAddDataManualEntryTableData *)self->_model itemForCell:v8];
  [v9 cellForItemTapped:v8];
  v10 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__WDAddDataViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v13[3] = &unk_1E7EEB480;
  v14 = viewCopy;
  v15 = pathCopy;
  selfCopy = self;
  v11 = pathCopy;
  v12 = viewCopy;
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

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = [(WDAddDataManualEntryTableData *)self->_model cellForRowAtIndexPath:path];
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

- (void)saveHKObjectWithCompletion:(id)completion
{
  completionCopy = completion;
  generateHKObjects = [(WDAddDataViewController *)self generateHKObjects];
  [(HKHealthStore *)self->_healthStore saveObjects:generateHKObjects withCompletion:completionCopy];
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

- (id)manualEntryItemsForSection:(int64_t)section
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