@interface HKDocumentPickerViewController
- (HKDocumentPickerViewController)initWithCoder:(id)a3;
- (HKDocumentPickerViewController)initWithDocumentAuthorizations:(id)a3;
- (HKDocumentPickerViewController)initWithDocuments:(id)a3 presentationStyle:(int64_t)a4;
- (HKHealthPrivacyServicePickerControllerDelegate)delegate;
- (id)_tableHeaderView;
- (id)dataMetadataViewControllerForSample:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_addCancelAndDoneButtons;
- (void)_cancel:(id)a3;
- (void)_done:(id)a3;
- (void)_enableDocumentSample:(id)a3 enabled:(BOOL)a4;
- (void)_finishWithError:(id)a3;
- (void)_updateForCurrentSizeCategory;
- (void)adjustHeaderViewFrame;
- (void)cdaDocumentTableViewCellDidChangeValue:(id)a3;
- (void)configureHeaderView:(id)a3;
- (void)pushDetailForDocumentSample:(id)a3;
- (void)setSource:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation HKDocumentPickerViewController

- (HKDocumentPickerViewController)initWithDocuments:(id)a3 presentationStyle:(int64_t)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = HKDocumentPickerViewController;
  v7 = [(HKTableViewController *)&v18 initWithUsingInsetStyling:1];
  if (v7)
  {
    v8 = [v6 mutableCopy];
    samplesList = v7->_samplesList;
    v7->_samplesList = v8;

    v10 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    allSamples = v7->_allSamples;
    v7->_allSamples = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    enabledSamples = v7->_enabledSamples;
    v7->_enabledSamples = v12;

    v7->_presentationStyle = a4;
    v14 = objc_alloc_init(MEMORY[0x1E696C1C0]);
    healthStore = v7->_healthStore;
    v7->_healthStore = v14;

    if (a4)
    {
      v16 = [(NSMutableArray *)v7->_samplesList count]> 1;
    }

    else
    {
      v16 = 1;
    }

    v7->_showCheckboxes = v16;
  }

  return v7;
}

- (HKDocumentPickerViewController)initWithDocumentAuthorizations:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 allKeys];
  v6 = [(HKDocumentPickerViewController *)self initWithDocuments:v5 presentationStyle:0];
  if (v6)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v4 objectForKeyedSubscript:v12];
          v14 = [v13 BOOLValue];

          if (v14)
          {
            [(NSMutableSet *)v6->_enabledSamples addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v5 = v16;
  }

  return v6;
}

- (HKDocumentPickerViewController)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = HKDocumentPickerViewController;
  return [(HKDocumentPickerViewController *)&v4 initWithCoder:a3];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HKDocumentPickerViewController;
  [(HKTableViewController *)&v6 viewDidLoad];
  if ([(HKDocumentPickerViewController *)self _isPrompting])
  {
    [(HKDocumentPickerViewController *)self _addCancelAndDoneButtons];
  }

  if ([(NSMutableArray *)self->_samplesList count]== 1)
  {
    v3 = [(NSMutableArray *)self->_samplesList objectAtIndexedSubscript:0];
    [(HKDocumentPickerViewController *)self _enableDocumentSample:v3 enabled:1];
  }

  v4 = [(HKDocumentPickerViewController *)self tableView];
  [v4 setEstimatedRowHeight:114.0];

  v5 = [(HKDocumentPickerViewController *)self tableView];
  [v5 _setSectionCornerRadius:26.0];

  [(HKDocumentPickerViewController *)self _updateForCurrentSizeCategory];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HKDocumentPickerViewController;
  [(HKDocumentPickerViewController *)&v3 viewWillLayoutSubviews];
  [(HKDocumentPickerViewController *)self adjustHeaderViewFrame];
}

- (void)_updateForCurrentSizeCategory
{
  v3 = [(HKDocumentPickerViewController *)self tableView];
  IsLargerThanSizeCategory = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory(*MEMORY[0x1E69DDC70]);
  v5 = *MEMORY[0x1E69DE3D0];
  if (!IsLargerThanSizeCategory)
  {
    v5 = 114.0;
  }

  [v3 setRowHeight:v5];

  if (self->_tableHeaderView)
  {

    [(HKDocumentPickerViewController *)self adjustHeaderViewFrame];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = HKDocumentPickerViewController;
  [(HKDocumentPickerViewController *)&v7 viewWillDisappear:a3];
  if (![(HKDocumentPickerViewController *)self _isPrompting])
  {
    v4 = [(HKDocumentPickerViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(HKDocumentPickerViewController *)self delegate];
      [v6 pickerControllerDidFinish:self error:0];
    }
  }
}

- (void)_addCancelAndDoneButtons
{
  v3 = objc_alloc(MEMORY[0x1E69DC708]);
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"AUTHORIZATION_PROMPT_DONT_ALLOW" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v13 = [v3 initWithTitle:v5 style:0 target:self action:sel__cancel_];

  v6 = objc_alloc(MEMORY[0x1E69DC708]);
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"AUTHORIZATION_PROMPT_ALLOW" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v9 = [v6 initWithTitle:v8 style:2 target:self action:sel__done_];

  [v9 setEnabled:0];
  v10 = [(HKDocumentPickerViewController *)self navigationItem];
  [v10 setLeftBarButtonItem:v13];
  [v10 setRightBarButtonItem:v9];
  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v11 localizedStringForKey:@"HEALTH_ACCESS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v10 setTitle:v12];
}

- (void)_cancel:(id)a3
{
  _HKInitializeLogging();
  v4 = HKLogAuthorization();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(HKDocumentPickerViewController *)v6 _cancel:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  if ([(HKDocumentPickerViewController *)self _isPrompting])
  {
    v14 = [MEMORY[0x1E696ABC0] hk_error:7 description:@"The user canceled authorization."];
    [(HKDocumentPickerViewController *)self _finishWithError:v14];
  }

  else
  {
    [(HKDocumentPickerViewController *)self _finishWithError:0];
  }
}

- (void)_done:(id)a3
{
  _HKInitializeLogging();
  v4 = HKLogAuthorization();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(HKDocumentPickerViewController *)v6 _done:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  [(HKDocumentPickerViewController *)self _finishWithError:0];
}

- (void)_finishWithError:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogAuthorization();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = HKLogAuthorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(HKDocumentPickerViewController *)v7 _finishWithError:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  v15 = [(HKDocumentPickerViewController *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(HKDocumentPickerViewController *)self delegate];
    [v17 pickerControllerDidFinish:self error:v4];
  }
}

- (void)setSource:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_source != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_source, a3);
    v7 = [(HKDocumentPickerViewController *)self tableView];
    [v7 reloadData];

    v5 = [(HKDocumentPickerViewController *)self _isPrompting];
    v6 = v11;
    if (v5)
    {
      v8 = [(HKDocumentPickerViewController *)self _tableHeaderView];
      [(HKDocumentPickerViewController *)self configureHeaderView:v8];
      if (v11)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = [(HKDocumentPickerViewController *)self tableView];
      [v10 setTableHeaderView:v9];

      v6 = v11;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (id)_tableHeaderView
{
  tableHeaderView = self->_tableHeaderView;
  if (!tableHeaderView)
  {
    v4 = objc_alloc_init(HKTitledIconHeaderView);
    v5 = self->_tableHeaderView;
    self->_tableHeaderView = v4;

    tableHeaderView = self->_tableHeaderView;
  }

  return tableHeaderView;
}

- (void)configureHeaderView:(id)a3
{
  v16 = a3;
  if ([(HKDocumentPickerViewController *)self _needsSampleRequestDescription])
  {
    v4 = [(NSMutableArray *)self->_samplesList count];
    v5 = MEMORY[0x1E696AEC0];
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = v6;
    v8 = @"CLINICAL_DOCUMENTS_REQUEST_DESCRIPTION_PLURAL";
    if (v4 == 2)
    {
      v8 = @"CLINICAL_DOCUMENTS_REQUEST_DESCRIPTION_DUAL";
    }

    if (v4 == 1)
    {
      v9 = @"CLINICAL_DOCUMENTS_REQUEST_DESCRIPTION_SINGULAR";
    }

    else
    {
      v9 = v8;
    }

    v10 = [v6 localizedStringForKey:v9 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v11 = [(HKSource *)self->_source name];
    v12 = [v5 stringWithFormat:v10, v11];

    [v16 setSubtitle:v12];
  }

  else
  {
    [v16 setSubtitle:0];
  }

  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v14 = [v13 localizedStringForKey:@"HEALTH" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v16 setTitle:v14];

  v15 = [(HKDocumentPickerViewController *)self tableView];
  [v16 setLayoutMarginsWithTableView:v15];
}

- (void)adjustHeaderViewFrame
{
  [(HKTitledIconHeaderView *)self->_tableHeaderView frame];
  v4 = v3;
  v6 = v5;
  tableHeaderView = self->_tableHeaderView;
  v8 = [(HKDocumentPickerViewController *)self tableView];
  [v8 bounds];
  [(HKTitledIconHeaderView *)tableHeaderView sizeThatFits:v9, v10];
  v12 = v11;
  v14 = v13;

  v15 = self->_tableHeaderView;

  [(HKTitledIconHeaderView *)v15 setFrame:v4, v6, v12, v14 + 16.0];
}

- (void)_enableDocumentSample:(id)a3 enabled:(BOOL)a4
{
  enabledSamples = self->_enabledSamples;
  if (a4)
  {
    [(NSMutableSet *)enabledSamples addObject:a3];
  }

  else
  {
    [(NSMutableSet *)enabledSamples removeObject:a3];
  }

  v6 = [(NSMutableSet *)self->_enabledSamples count]!= 0;
  v8 = [(HKDocumentPickerViewController *)self navigationItem];
  v7 = [v8 rightBarButtonItem];
  [v7 setEnabled:v6];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKDocumentPickerViewController;
  [(HKDocumentPickerViewController *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKDocumentPickerViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(HKDocumentPickerViewController *)self _updateForCurrentSizeCategory];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  samplesList = self->_samplesList;
  v7 = a3;
  v8 = -[NSMutableArray objectAtIndex:](samplesList, "objectAtIndex:", [a4 row]);
  if (self->_showCheckboxes)
  {
    v9 = @"DocumentMultipleSelectionTableViewCellIdentifier";
  }

  else
  {
    v9 = @"DocumentSingleSelectionTableViewCellIdentifier";
  }

  v10 = [v7 dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    showCheckboxes = self->_showCheckboxes;
    v12 = [HKCDADocumentTableViewCell alloc];
    if (showCheckboxes)
    {
      v10 = [(HKCDADocumentTableViewCell *)v12 initWithStyle:0 reuseIdentifier:@"DocumentMultipleSelectionTableViewCellIdentifier"];
      [(HKCDADocumentTableViewCell *)v10 setDelegate:self];
      v13 = v10;
      v14 = 1;
    }

    else
    {
      v13 = [(HKCDADocumentTableViewCell *)v12 initWithStyle:0 reuseIdentifier:@"DocumentSingleSelectionTableViewCellIdentifier"];
      v10 = v13;
      v14 = 0;
    }

    [(HKCDADocumentTableViewCell *)v13 setShowsCheckbox:v14];
  }

  [(HKCDADocumentTableViewCell *)v10 setCellValuesForDocumentSample:v8];
  [(HKCDADocumentTableViewCell *)v10 setChecked:[(NSMutableSet *)self->_enabledSamples containsObject:v8]];
  [(HKCDADocumentTableViewCell *)v10 setAccessoryType:1];

  return v10;
}

- (void)pushDetailForDocumentSample:(id)a3
{
  v4 = a3;
  v5 = [HKCDADocumentDetailViewController alloc];
  v6 = [v4 document];

  v7 = [v6 documentData];
  v9 = [(HKCDADocumentDetailViewController *)v5 initWithReportData:v7];

  v8 = [(HKDocumentPickerViewController *)self navigationController];
  [v8 pushViewController:v9 animated:1];
}

- (id)dataMetadataViewControllerForSample:(id)a3
{
  v4 = a3;
  v5 = [[HKDataMetadataViewController alloc] initWithSample:v4 usingInsetStyling:1 profileName:0 delegate:self];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = -[NSMutableArray objectAtIndex:](self->_samplesList, "objectAtIndex:", [v6 row]);
  v8 = [v7 document];
  v9 = [v8 documentData];

  if (v9)
  {
    v10 = [(HKDocumentPickerViewController *)self dataMetadataViewControllerForSample:v7];
    v11 = [(HKDocumentPickerViewController *)self navigationController];
    [v11 pushViewController:v10 animated:1];
  }

  else if (!self->_hasPendingDocumentFetch)
  {
    self->_hasPendingDocumentFetch = 1;
    v12 = objc_alloc(MEMORY[0x1E696C110]);
    v13 = [MEMORY[0x1E696C2E0] documentTypeForIdentifier:*MEMORY[0x1E696B7C0]];
    v14 = MEMORY[0x1E696C378];
    v15 = [v7 UUID];
    v16 = [v14 predicateForObjectWithUUID:v15];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__HKDocumentPickerViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v18[3] = &unk_1E81BA8C0;
    v18[4] = self;
    v19 = v6;
    v20 = v7;
    v17 = [v12 initWithDocumentType:v13 predicate:v16 limit:1 sortDescriptors:0 includeDocumentData:1 resultsHandler:v18];

    [(HKHealthStore *)self->_healthStore executeQuery:v17];
  }
}

void __68__HKDocumentPickerViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__HKDocumentPickerViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  v7[3] = &unk_1E81BA058;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __68__HKDocumentPickerViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1072) = 0;
  if ([*(a1 + 40) count])
  {
    v2 = [*(a1 + 40) objectAtIndexedSubscript:0];
    [*(*(a1 + 32) + 1048) setObject:v2 atIndexedSubscript:{objc_msgSend(*(a1 + 48), "row")}];

    v4 = [*(a1 + 32) dataMetadataViewControllerForSample:*(a1 + 56)];
    v3 = [*(a1 + 32) navigationController];
    [v3 pushViewController:v4 animated:1];
  }
}

- (void)cdaDocumentTableViewCellDidChangeValue:(id)a3
{
  v4 = a3;
  v5 = [(HKDocumentPickerViewController *)self tableView];
  v8 = [v5 indexPathForCell:v4];

  v6 = -[NSMutableArray objectAtIndex:](self->_samplesList, "objectAtIndex:", [v8 row]);
  v7 = [v4 isChecked];

  [(HKDocumentPickerViewController *)self _enableDocumentSample:v6 enabled:v7];
}

- (HKHealthPrivacyServicePickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end