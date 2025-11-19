@interface NTKCFaceDetailComplicationPickerViewController
- (BOOL)_handleHomeItemSelection:(id)a3;
- (BOOL)_handleWidgetItemSelection:(id)a3;
- (BOOL)_showCustomHomePickerUI;
- (NTKCFaceDetailComplicationPickerViewController)initWithFace:(id)a3 slot:(id)a4 selectedComplication:(id)a5;
- (NTKCFaceDetailComplicationPickerViewController)initWithSlot:(id)a3 listProvider:(id)a4 title:(id)a5 selectedComplication:(id)a6;
- (NTKCFaceDetailComplicationPickerViewControllerDelegate)delegate;
- (id)detailViewControllerForSectionInfo:(id)a3;
- (void)_configureWithSlot:(id)a3 listProvider:(id)a4 selectedComplication:(id)a5;
- (void)_setCheckmarkForTableView:(id)a3 atIndexPath:(id)a4;
- (void)faceDetailComplicationPickerViewController:(id)a3 didSelectComplication:(id)a4;
- (void)homeDetailPickerViewController:(id)a3 didSelectItem:(id)a4;
- (void)homeListPickerViewController:(id)a3 didSelectItem:(id)a4;
- (void)peopleComplicationPickerViewController:(id)a3 didSelectItem:(id)a4;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation NTKCFaceDetailComplicationPickerViewController

- (void)_configureWithSlot:(id)a3 listProvider:(id)a4 selectedComplication:(id)a5
{
  objc_storeStrong(&self->_listProvider, a4);
  v13 = a4;
  v8 = a3;
  v9 = [v8 copy];

  slot = self->_slot;
  self->_slot = v9;

  v11 = objc_alloc_init(NTKCompanionConfigurationEditorController);
  configurationEditorController = self->_configurationEditorController;
  self->_configurationEditorController = v11;
}

- (NTKCFaceDetailComplicationPickerViewController)initWithSlot:(id)a3 listProvider:(id)a4 title:(id)a5 selectedComplication:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = NTKCFaceDetailComplicationPickerViewController;
  v14 = [(NTKCFaceDetailComplicationPickerViewController *)&v17 initWithStyle:2];
  v15 = v14;
  if (v14)
  {
    [(NTKCFaceDetailComplicationPickerViewController *)v14 _configureWithSlot:v10 listProvider:v11 selectedComplication:v13];
    [(NTKCFaceDetailComplicationPickerViewController *)v15 setTitle:v12];
  }

  return v15;
}

- (NTKCFaceDetailComplicationPickerViewController)initWithFace:(id)a3 slot:(id)a4 selectedComplication:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = NTKCFaceDetailComplicationPickerViewController;
  v11 = [(NTKCFaceDetailComplicationPickerViewController *)&v24 initWithStyle:2];
  if (v11)
  {
    v12 = objc_opt_class();
    v13 = [v8 device];
    v14 = [v12 richComplicationSlotsForDevice:v13];
    v15 = [v14 containsObject:v9];

    v16 = [v8 rankedComplicationFamiliesForSlot:v9];
    v17 = [v16 firstObject];
    v18 = [v17 integerValue];

    v19 = [v8 allowedComplicationsForSlot:v9];
    v20 = [[NTKFaceSlotComplicationTopLevelListProvider alloc] initWithRichSlot:v15 complicationFamily:v18 complications:v19 selectedComplication:v10];
    topLevelListProvider = v11->_topLevelListProvider;
    v11->_topLevelListProvider = v20;

    v22 = NTKCompanionClockFaceLocalizedString(@"EDIT_MODE_LABEL_COMPLICATIONS_COMPANION", @"Complications");
    [(NTKCFaceDetailComplicationPickerViewController *)v11 setTitle:v22];
    [(NTKCFaceDetailComplicationPickerViewController *)v11 _configureWithSlot:v9 listProvider:v11->_topLevelListProvider selectedComplication:v10];
  }

  return v11;
}

- (id)detailViewControllerForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 ntk_identifier];
  v6 = [(NTKCFaceDetailComplicationPickerViewController *)self topLevelListProvider];
  v7 = [v6 detailListProviderForSectionIdentifier:v5];

  if (v7)
  {
    v8 = [NTKCFaceDetailComplicationPickerViewController alloc];
    v9 = [(NTKCFaceDetailComplicationPickerViewController *)self slot];
    v10 = [v4 ntk_localizedSectionName];
    v11 = [(NTKCFaceDetailComplicationPickerViewController *)self topLevelListProvider];
    v12 = [v11 selectedItemIgnoringMoreButton];
    v13 = [(NTKCFaceDetailComplicationPickerViewController *)v8 initWithSlot:v9 listProvider:v7 title:v10 selectedComplication:v12];

    [(NTKCFaceDetailComplicationPickerViewController *)v13 setDelegate:self];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = NTKCFaceDetailComplicationPickerViewController;
  [(NTKCFaceDetailComplicationPickerViewController *)&v17 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = [NTKCFaceDetailDiffableDataSource alloc];
  v4 = [(NTKCFaceDetailComplicationPickerViewController *)self tableView];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __61__NTKCFaceDetailComplicationPickerViewController_viewDidLoad__block_invoke;
  v14 = &unk_278786978;
  objc_copyWeak(&v15, &location);
  v5 = [(UITableViewDiffableDataSource *)v3 initWithTableView:v4 cellProvider:&v11];

  v6 = [(NTKCFaceDetailComplicationPickerViewController *)self listProvider:v11];
  v7 = [(NTKCFaceDetailComplicationPickerViewController *)self tableView];
  v8 = *MEMORY[0x277D76F30];
  [v7 setRowHeight:*MEMORY[0x277D76F30]];
  [v7 setSectionHeaderHeight:v8];
  v9 = *MEMORY[0x277D76F38];
  [v7 setEstimatedRowHeight:v9];
  [v7 setEstimatedSectionHeaderHeight:v9];
  v10 = [[NTKCFaceDetailComplicationCellProvider alloc] initWithTableView:v7 listProvider:v6];
  [(NTKCFaceDetailComplicationPickerViewController *)self setCellProvider:v10];
  [(NTKCFaceDetailComplicationPickerViewController *)self setDataSource:v5];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

id __61__NTKCFaceDetailComplicationPickerViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained cellProvider];
  v10 = [v9 cellForItem:v6 atIndexPath:v7];

  return v10;
}

- (void)viewWillAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = NTKCFaceDetailComplicationPickerViewController;
  [(NTKCFaceDetailComplicationPickerViewController *)&v13 viewWillAppear:a3];
  v4 = [(NTKCFaceDetailComplicationPickerViewController *)self listProvider];
  v5 = [v4 pickerListDataSourceSnapshot];

  v6 = [(NTKCFaceDetailComplicationPickerViewController *)self dataSource];
  [v6 applySnapshot:v5 animatingDifferences:0 completion:0];

  v7 = [(NTKCFaceDetailComplicationPickerViewController *)self listProvider];
  v8 = [v7 pickerSelectedItem];

  if (v8 && ![(NTKCFaceDetailComplicationPickerViewController *)self hasDoneInitialScrollToItem])
  {
    v9 = [(NTKCFaceDetailComplicationPickerViewController *)self dataSource];
    v10 = [v9 indexPathForItemIdentifier:v8];
    [(NTKCFaceDetailComplicationPickerViewController *)self setIndexPathToScrollToAfterLayout:v10];

    v11 = [(NTKCFaceDetailComplicationPickerViewController *)self tableView];
    v12 = [(NTKCFaceDetailComplicationPickerViewController *)self indexPathToScrollToAfterLayout];
    [v11 scrollToRowAtIndexPath:v12 atScrollPosition:2 animated:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = NTKCFaceDetailComplicationPickerViewController;
  [(NTKCFaceDetailComplicationPickerViewController *)&v5 viewDidLayoutSubviews];
  v3 = [(NTKCFaceDetailComplicationPickerViewController *)self indexPathToScrollToAfterLayout];
  if (v3 && ![(NTKCFaceDetailComplicationPickerViewController *)self hasDoneInitialScrollToItem])
  {
    v4 = [(NTKCFaceDetailComplicationPickerViewController *)self tableView];
    [v4 scrollToRowAtIndexPath:v3 atScrollPosition:2 animated:0];

    [(NTKCFaceDetailComplicationPickerViewController *)self setHasDoneInitialScrollToItem:1];
  }
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v4 = [a3 cellForRowAtIndexPath:a4];
  [v4 setAccessoryType:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NTKCFaceDetailComplicationPickerViewController *)self dataSource];
  v9 = [v8 itemIdentifierForIndexPath:v7];

  v10 = [v9 ntk_itemType];
  if (v10 <= 3)
  {
    if ((v10 - 1) >= 2)
    {
      if (v10 == 3)
      {
        v11 = [v7 section];
        v12 = [(NTKCFaceDetailComplicationPickerViewController *)self dataSource];
        v13 = [v12 snapshot];
        v14 = [v13 sectionIdentifiers];
        v15 = [v14 objectAtIndex:v11];

        v16 = [v15 ntk_identifier];
        LODWORD(v13) = [v16 isEqualToString:@"com.apple.nanotimekit.contacts"];

        if (v13)
        {
          v17 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v46) = 0;
            _os_log_impl(&dword_22D9C5000, v17, OS_LOG_TYPE_DEFAULT, "Did select More... under Contacts. Loading Contacts-specific picker UI.", &v46, 2u);
          }

          v18 = [v15 ntk_identifier];
          v19 = [v15 ntk_localizedSectionName];
          v20 = [(NTKCFaceDetailComplicationPickerViewController *)self topLevelListProvider];
          v21 = [v20 detailListProviderForSectionIdentifier:v18];

          v22 = [[NTKComplicationPickerDetailViewConfiguration alloc] initWithDetailListProvider:v21 title:v19];
          v23 = NTKPeopleComplicationPickerViewController;
LABEL_8:
          v24 = [[v23 alloc] initWithDetailConfiguration:v22];
          [v24 setDelegate:self];

LABEL_34:
          [(NTKCFaceDetailComplicationPickerViewController *)self showViewController:v24 sender:self];

LABEL_35:
          goto LABEL_36;
        }

        if ((NTKUseComplicationEditor() & 1) == 0)
        {
          v38 = [v15 ntk_identifier];
          v39 = [MEMORY[0x277D2B980] appContainerBundleIdentifier];
          if ([v38 isEqualToString:v39])
          {
            v40 = [(NTKCFaceDetailComplicationPickerViewController *)self _showCustomHomePickerUI];

            if (v40)
            {
              v41 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v46) = 0;
                _os_log_impl(&dword_22D9C5000, v41, OS_LOG_TYPE_DEFAULT, "Did select More... under NanoHome. Loading Home-specific picker UI.", &v46, 2u);
              }

              v18 = [v15 ntk_identifier];
              v19 = [v15 ntk_localizedSectionName];
              v42 = [(NTKCFaceDetailComplicationPickerViewController *)self topLevelListProvider];
              v21 = [v42 detailListProviderForSectionIdentifier:v18];

              v22 = [[NTKComplicationPickerDetailViewConfiguration alloc] initWithDetailListProvider:v21 title:v19];
              v23 = NTKHomeListPickerViewController;
              goto LABEL_8;
            }
          }

          else
          {
          }
        }

        v44 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v15 ntk_identifier];
          v46 = 138412290;
          v47 = v45;
          _os_log_impl(&dword_22D9C5000, v44, OS_LOG_TYPE_DEFAULT, "Did select More... under section %@", &v46, 0xCu);
        }

        v24 = [(NTKCFaceDetailComplicationPickerViewController *)self detailViewControllerForSectionInfo:v15];
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (v10 != 6)
  {
    if (v10 != 4)
    {
LABEL_20:
      v30 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [NTKCFaceDetailComplicationPickerViewController tableView:v9 didSelectRowAtIndexPath:v30];
      }

LABEL_22:

      goto LABEL_36;
    }

LABEL_11:
    [(NTKCFaceDetailComplicationPickerViewController *)self _setCheckmarkForTableView:v6 atIndexPath:v7];
    v15 = v9;
    v25 = [MEMORY[0x277CBBAE8] currentDevice];
    v26 = [NTKComplicationProvider providerForDevice:v25];

    if (NTKUseComplicationEditor() && [v26 isComplicationConfigurable:v15])
    {
      configurationEditorController = self->_configurationEditorController;
      v28 = [(NTKCFaceDetailComplicationPickerViewController *)self delegate];
      v29 = [(NTKCompanionConfigurationEditorController *)configurationEditorController editorViewController:v15 pickerViewController:self delegate:v28];

      if (v29)
      {
        [(NTKCFaceDetailComplicationPickerViewController *)self presentViewController:v29 animated:1 completion:0];
      }

      else
      {
        v43 = [(NTKCFaceDetailComplicationPickerViewController *)self delegate];
        [v43 faceDetailComplicationPickerViewController:self didSelectComplication:v15];
      }
    }

    else
    {
      v29 = [(NTKCFaceDetailComplicationPickerViewController *)self delegate];
      [v29 faceDetailComplicationPickerViewController:self didSelectComplication:v15];
    }

    goto LABEL_35;
  }

  [(NTKCFaceDetailComplicationPickerViewController *)self _setCheckmarkForTableView:v6 atIndexPath:v7];
  if (![(NTKCFaceDetailComplicationPickerViewController *)self _handleWidgetItemSelection:v9])
  {
    v30 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(NTKCFaceDetailComplicationPickerViewController *)v30 tableView:v31 didSelectRowAtIndexPath:v32, v33, v34, v35, v36, v37];
    }

    goto LABEL_22;
  }

LABEL_36:
}

- (void)faceDetailComplicationPickerViewController:(id)a3 didSelectComplication:(id)a4
{
  v5 = a4;
  v6 = [(NTKCFaceDetailComplicationPickerViewController *)self delegate];
  [v6 faceDetailComplicationPickerViewController:self didSelectComplication:v5];
}

- (void)peopleComplicationPickerViewController:(id)a3 didSelectItem:(id)a4
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NTKCFaceDetailComplicationPickerViewController *)self delegate];
    [v5 faceDetailComplicationPickerViewController:self didSelectComplication:v6];
  }
}

- (void)homeListPickerViewController:(id)a3 didSelectItem:(id)a4
{
  v5 = a4;
  if (![(NTKCFaceDetailComplicationPickerViewController *)self _handleWidgetItemSelection:v5]&& ![(NTKCFaceDetailComplicationPickerViewController *)self _handleHomeItemSelection:v5])
  {
    v6 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NTKCFaceDetailComplicationPickerViewController *)v6 homeListPickerViewController:v7 didSelectItem:v8, v9, v10, v11, v12, v13];
    }
  }
}

- (void)homeDetailPickerViewController:(id)a3 didSelectItem:(id)a4
{
  if (![(NTKCFaceDetailComplicationPickerViewController *)self _handleWidgetItemSelection:a4])
  {
    v4 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(NTKCFaceDetailComplicationPickerViewController *)v4 homeDetailPickerViewController:v5 didSelectItem:v6, v7, v8, v9, v10, v11];
    }
  }
}

- (BOOL)_showCustomHomePickerUI
{
  v2 = [MEMORY[0x277CBBAE8] currentDevice];
  v3 = [MEMORY[0x277D2B970] eagleRoostFeatureFlagIsEnabled];
  v4 = [v2 supportsPDRCapability:1252064358];

  return v3 & v4;
}

- (BOOL)_handleWidgetItemSelection:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = [v4 widgetComplication];
    v7 = [(NTKCFaceDetailComplicationPickerViewController *)self delegate];
    [v7 faceDetailComplicationPickerViewController:self didSelectComplication:v6];
  }

  return isKindOfClass & 1;
}

- (BOOL)_handleHomeItemSelection:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v4;
    v7 = [v6 homeLocalizedName];
    v8 = [(NTKCFaceDetailComplicationPickerViewController *)self topLevelListProvider];
    v9 = [MEMORY[0x277D2B980] appContainerBundleIdentifier];
    v10 = [v8 detailListProviderForSectionIdentifier:v9];

    v11 = [[NTKComplicationPickerDetailViewConfiguration alloc] initWithDetailListProvider:v10 title:v7];
    v12 = [[NTKHomeDetailPickerViewController alloc] initWithDetailConfiguration:v11 homeListItem:v6];

    [(NTKHomeDetailPickerViewController *)v12 setDelegate:self];
    [(NTKCFaceDetailComplicationPickerViewController *)self showViewController:v12 sender:self];
  }

  return isKindOfClass & 1;
}

- (void)_setCheckmarkForTableView:(id)a3 atIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(NTKCFaceDetailComplicationPickerViewController *)self listProvider];
  v8 = [v7 pickerSelectedItem];

  if (v8)
  {
    v9 = [(NTKCFaceDetailComplicationPickerViewController *)self dataSource];
    v10 = [v9 indexPathForItemIdentifier:v8];

    v11 = [v13 cellForRowAtIndexPath:v10];
    [v11 ntk_setPickerSelected:0];
  }

  v12 = [v13 cellForRowAtIndexPath:v6];
  [v12 ntk_setPickerSelected:1];
}

- (NTKCFaceDetailComplicationPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(void *)a1 didSelectRowAtIndexPath:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 ntk_itemType];
  v5 = [a1 ntk_identifier];
  v6 = 134218242;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Item with type %ld and identifier %@ not expected to appear on top level detail picker view!", &v6, 0x16u);
}

@end