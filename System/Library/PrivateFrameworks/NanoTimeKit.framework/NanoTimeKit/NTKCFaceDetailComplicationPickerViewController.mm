@interface NTKCFaceDetailComplicationPickerViewController
- (BOOL)_handleHomeItemSelection:(id)selection;
- (BOOL)_handleWidgetItemSelection:(id)selection;
- (BOOL)_showCustomHomePickerUI;
- (NTKCFaceDetailComplicationPickerViewController)initWithFace:(id)face slot:(id)slot selectedComplication:(id)complication;
- (NTKCFaceDetailComplicationPickerViewController)initWithSlot:(id)slot listProvider:(id)provider title:(id)title selectedComplication:(id)complication;
- (NTKCFaceDetailComplicationPickerViewControllerDelegate)delegate;
- (id)detailViewControllerForSectionInfo:(id)info;
- (void)_configureWithSlot:(id)slot listProvider:(id)provider selectedComplication:(id)complication;
- (void)_setCheckmarkForTableView:(id)view atIndexPath:(id)path;
- (void)faceDetailComplicationPickerViewController:(id)controller didSelectComplication:(id)complication;
- (void)homeDetailPickerViewController:(id)controller didSelectItem:(id)item;
- (void)homeListPickerViewController:(id)controller didSelectItem:(id)item;
- (void)peopleComplicationPickerViewController:(id)controller didSelectItem:(id)item;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NTKCFaceDetailComplicationPickerViewController

- (void)_configureWithSlot:(id)slot listProvider:(id)provider selectedComplication:(id)complication
{
  objc_storeStrong(&self->_listProvider, provider);
  providerCopy = provider;
  slotCopy = slot;
  v9 = [slotCopy copy];

  slot = self->_slot;
  self->_slot = v9;

  v11 = objc_alloc_init(NTKCompanionConfigurationEditorController);
  configurationEditorController = self->_configurationEditorController;
  self->_configurationEditorController = v11;
}

- (NTKCFaceDetailComplicationPickerViewController)initWithSlot:(id)slot listProvider:(id)provider title:(id)title selectedComplication:(id)complication
{
  slotCopy = slot;
  providerCopy = provider;
  titleCopy = title;
  complicationCopy = complication;
  v17.receiver = self;
  v17.super_class = NTKCFaceDetailComplicationPickerViewController;
  v14 = [(NTKCFaceDetailComplicationPickerViewController *)&v17 initWithStyle:2];
  v15 = v14;
  if (v14)
  {
    [(NTKCFaceDetailComplicationPickerViewController *)v14 _configureWithSlot:slotCopy listProvider:providerCopy selectedComplication:complicationCopy];
    [(NTKCFaceDetailComplicationPickerViewController *)v15 setTitle:titleCopy];
  }

  return v15;
}

- (NTKCFaceDetailComplicationPickerViewController)initWithFace:(id)face slot:(id)slot selectedComplication:(id)complication
{
  faceCopy = face;
  slotCopy = slot;
  complicationCopy = complication;
  v24.receiver = self;
  v24.super_class = NTKCFaceDetailComplicationPickerViewController;
  v11 = [(NTKCFaceDetailComplicationPickerViewController *)&v24 initWithStyle:2];
  if (v11)
  {
    v12 = objc_opt_class();
    device = [faceCopy device];
    v14 = [v12 richComplicationSlotsForDevice:device];
    v15 = [v14 containsObject:slotCopy];

    v16 = [faceCopy rankedComplicationFamiliesForSlot:slotCopy];
    firstObject = [v16 firstObject];
    integerValue = [firstObject integerValue];

    v19 = [faceCopy allowedComplicationsForSlot:slotCopy];
    v20 = [[NTKFaceSlotComplicationTopLevelListProvider alloc] initWithRichSlot:v15 complicationFamily:integerValue complications:v19 selectedComplication:complicationCopy];
    topLevelListProvider = v11->_topLevelListProvider;
    v11->_topLevelListProvider = v20;

    v22 = NTKCompanionClockFaceLocalizedString(@"EDIT_MODE_LABEL_COMPLICATIONS_COMPANION", @"Complications");
    [(NTKCFaceDetailComplicationPickerViewController *)v11 setTitle:v22];
    [(NTKCFaceDetailComplicationPickerViewController *)v11 _configureWithSlot:slotCopy listProvider:v11->_topLevelListProvider selectedComplication:complicationCopy];
  }

  return v11;
}

- (id)detailViewControllerForSectionInfo:(id)info
{
  infoCopy = info;
  ntk_identifier = [infoCopy ntk_identifier];
  topLevelListProvider = [(NTKCFaceDetailComplicationPickerViewController *)self topLevelListProvider];
  v7 = [topLevelListProvider detailListProviderForSectionIdentifier:ntk_identifier];

  if (v7)
  {
    v8 = [NTKCFaceDetailComplicationPickerViewController alloc];
    slot = [(NTKCFaceDetailComplicationPickerViewController *)self slot];
    ntk_localizedSectionName = [infoCopy ntk_localizedSectionName];
    topLevelListProvider2 = [(NTKCFaceDetailComplicationPickerViewController *)self topLevelListProvider];
    selectedItemIgnoringMoreButton = [topLevelListProvider2 selectedItemIgnoringMoreButton];
    v13 = [(NTKCFaceDetailComplicationPickerViewController *)v8 initWithSlot:slot listProvider:v7 title:ntk_localizedSectionName selectedComplication:selectedItemIgnoringMoreButton];

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
  tableView = [(NTKCFaceDetailComplicationPickerViewController *)self tableView];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __61__NTKCFaceDetailComplicationPickerViewController_viewDidLoad__block_invoke;
  v14 = &unk_278786978;
  objc_copyWeak(&v15, &location);
  v5 = [(UITableViewDiffableDataSource *)v3 initWithTableView:tableView cellProvider:&v11];

  v6 = [(NTKCFaceDetailComplicationPickerViewController *)self listProvider:v11];
  tableView2 = [(NTKCFaceDetailComplicationPickerViewController *)self tableView];
  v8 = *MEMORY[0x277D76F30];
  [tableView2 setRowHeight:*MEMORY[0x277D76F30]];
  [tableView2 setSectionHeaderHeight:v8];
  v9 = *MEMORY[0x277D76F38];
  [tableView2 setEstimatedRowHeight:v9];
  [tableView2 setEstimatedSectionHeaderHeight:v9];
  v10 = [[NTKCFaceDetailComplicationCellProvider alloc] initWithTableView:tableView2 listProvider:v6];
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

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = NTKCFaceDetailComplicationPickerViewController;
  [(NTKCFaceDetailComplicationPickerViewController *)&v13 viewWillAppear:appear];
  listProvider = [(NTKCFaceDetailComplicationPickerViewController *)self listProvider];
  pickerListDataSourceSnapshot = [listProvider pickerListDataSourceSnapshot];

  dataSource = [(NTKCFaceDetailComplicationPickerViewController *)self dataSource];
  [dataSource applySnapshot:pickerListDataSourceSnapshot animatingDifferences:0 completion:0];

  listProvider2 = [(NTKCFaceDetailComplicationPickerViewController *)self listProvider];
  pickerSelectedItem = [listProvider2 pickerSelectedItem];

  if (pickerSelectedItem && ![(NTKCFaceDetailComplicationPickerViewController *)self hasDoneInitialScrollToItem])
  {
    dataSource2 = [(NTKCFaceDetailComplicationPickerViewController *)self dataSource];
    v10 = [dataSource2 indexPathForItemIdentifier:pickerSelectedItem];
    [(NTKCFaceDetailComplicationPickerViewController *)self setIndexPathToScrollToAfterLayout:v10];

    tableView = [(NTKCFaceDetailComplicationPickerViewController *)self tableView];
    indexPathToScrollToAfterLayout = [(NTKCFaceDetailComplicationPickerViewController *)self indexPathToScrollToAfterLayout];
    [tableView scrollToRowAtIndexPath:indexPathToScrollToAfterLayout atScrollPosition:2 animated:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = NTKCFaceDetailComplicationPickerViewController;
  [(NTKCFaceDetailComplicationPickerViewController *)&v5 viewDidLayoutSubviews];
  indexPathToScrollToAfterLayout = [(NTKCFaceDetailComplicationPickerViewController *)self indexPathToScrollToAfterLayout];
  if (indexPathToScrollToAfterLayout && ![(NTKCFaceDetailComplicationPickerViewController *)self hasDoneInitialScrollToItem])
  {
    tableView = [(NTKCFaceDetailComplicationPickerViewController *)self tableView];
    [tableView scrollToRowAtIndexPath:indexPathToScrollToAfterLayout atScrollPosition:2 animated:0];

    [(NTKCFaceDetailComplicationPickerViewController *)self setHasDoneInitialScrollToItem:1];
  }
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  v4 = [view cellForRowAtIndexPath:path];
  [v4 setAccessoryType:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v48 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  dataSource = [(NTKCFaceDetailComplicationPickerViewController *)self dataSource];
  v9 = [dataSource itemIdentifierForIndexPath:pathCopy];

  ntk_itemType = [v9 ntk_itemType];
  if (ntk_itemType <= 3)
  {
    if ((ntk_itemType - 1) >= 2)
    {
      if (ntk_itemType == 3)
      {
        section = [pathCopy section];
        dataSource2 = [(NTKCFaceDetailComplicationPickerViewController *)self dataSource];
        snapshot = [dataSource2 snapshot];
        sectionIdentifiers = [snapshot sectionIdentifiers];
        v15 = [sectionIdentifiers objectAtIndex:section];

        ntk_identifier = [v15 ntk_identifier];
        LODWORD(snapshot) = [ntk_identifier isEqualToString:@"com.apple.nanotimekit.contacts"];

        if (snapshot)
        {
          v17 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v46) = 0;
            _os_log_impl(&dword_22D9C5000, v17, OS_LOG_TYPE_DEFAULT, "Did select More... under Contacts. Loading Contacts-specific picker UI.", &v46, 2u);
          }

          ntk_identifier2 = [v15 ntk_identifier];
          ntk_localizedSectionName = [v15 ntk_localizedSectionName];
          topLevelListProvider = [(NTKCFaceDetailComplicationPickerViewController *)self topLevelListProvider];
          v21 = [topLevelListProvider detailListProviderForSectionIdentifier:ntk_identifier2];

          v22 = [[NTKComplicationPickerDetailViewConfiguration alloc] initWithDetailListProvider:v21 title:ntk_localizedSectionName];
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
          ntk_identifier3 = [v15 ntk_identifier];
          appContainerBundleIdentifier = [MEMORY[0x277D2B980] appContainerBundleIdentifier];
          if ([ntk_identifier3 isEqualToString:appContainerBundleIdentifier])
          {
            _showCustomHomePickerUI = [(NTKCFaceDetailComplicationPickerViewController *)self _showCustomHomePickerUI];

            if (_showCustomHomePickerUI)
            {
              v41 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v46) = 0;
                _os_log_impl(&dword_22D9C5000, v41, OS_LOG_TYPE_DEFAULT, "Did select More... under NanoHome. Loading Home-specific picker UI.", &v46, 2u);
              }

              ntk_identifier2 = [v15 ntk_identifier];
              ntk_localizedSectionName = [v15 ntk_localizedSectionName];
              topLevelListProvider2 = [(NTKCFaceDetailComplicationPickerViewController *)self topLevelListProvider];
              v21 = [topLevelListProvider2 detailListProviderForSectionIdentifier:ntk_identifier2];

              v22 = [[NTKComplicationPickerDetailViewConfiguration alloc] initWithDetailListProvider:v21 title:ntk_localizedSectionName];
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
          ntk_identifier4 = [v15 ntk_identifier];
          v46 = 138412290;
          v47 = ntk_identifier4;
          _os_log_impl(&dword_22D9C5000, v44, OS_LOG_TYPE_DEFAULT, "Did select More... under section %@", &v46, 0xCu);
        }

        v24 = [(NTKCFaceDetailComplicationPickerViewController *)self detailViewControllerForSectionInfo:v15];
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (ntk_itemType != 6)
  {
    if (ntk_itemType != 4)
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
    [(NTKCFaceDetailComplicationPickerViewController *)self _setCheckmarkForTableView:viewCopy atIndexPath:pathCopy];
    v15 = v9;
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    v26 = [NTKComplicationProvider providerForDevice:currentDevice];

    if (NTKUseComplicationEditor() && [v26 isComplicationConfigurable:v15])
    {
      configurationEditorController = self->_configurationEditorController;
      delegate = [(NTKCFaceDetailComplicationPickerViewController *)self delegate];
      delegate3 = [(NTKCompanionConfigurationEditorController *)configurationEditorController editorViewController:v15 pickerViewController:self delegate:delegate];

      if (delegate3)
      {
        [(NTKCFaceDetailComplicationPickerViewController *)self presentViewController:delegate3 animated:1 completion:0];
      }

      else
      {
        delegate2 = [(NTKCFaceDetailComplicationPickerViewController *)self delegate];
        [delegate2 faceDetailComplicationPickerViewController:self didSelectComplication:v15];
      }
    }

    else
    {
      delegate3 = [(NTKCFaceDetailComplicationPickerViewController *)self delegate];
      [delegate3 faceDetailComplicationPickerViewController:self didSelectComplication:v15];
    }

    goto LABEL_35;
  }

  [(NTKCFaceDetailComplicationPickerViewController *)self _setCheckmarkForTableView:viewCopy atIndexPath:pathCopy];
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

- (void)faceDetailComplicationPickerViewController:(id)controller didSelectComplication:(id)complication
{
  complicationCopy = complication;
  delegate = [(NTKCFaceDetailComplicationPickerViewController *)self delegate];
  [delegate faceDetailComplicationPickerViewController:self didSelectComplication:complicationCopy];
}

- (void)peopleComplicationPickerViewController:(id)controller didSelectItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(NTKCFaceDetailComplicationPickerViewController *)self delegate];
    [delegate faceDetailComplicationPickerViewController:self didSelectComplication:itemCopy];
  }
}

- (void)homeListPickerViewController:(id)controller didSelectItem:(id)item
{
  itemCopy = item;
  if (![(NTKCFaceDetailComplicationPickerViewController *)self _handleWidgetItemSelection:itemCopy]&& ![(NTKCFaceDetailComplicationPickerViewController *)self _handleHomeItemSelection:itemCopy])
  {
    v6 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NTKCFaceDetailComplicationPickerViewController *)v6 homeListPickerViewController:v7 didSelectItem:v8, v9, v10, v11, v12, v13];
    }
  }
}

- (void)homeDetailPickerViewController:(id)controller didSelectItem:(id)item
{
  if (![(NTKCFaceDetailComplicationPickerViewController *)self _handleWidgetItemSelection:item])
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
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  eagleRoostFeatureFlagIsEnabled = [MEMORY[0x277D2B970] eagleRoostFeatureFlagIsEnabled];
  v4 = [currentDevice supportsPDRCapability:1252064358];

  return eagleRoostFeatureFlagIsEnabled & v4;
}

- (BOOL)_handleWidgetItemSelection:(id)selection
{
  selectionCopy = selection;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    widgetComplication = [selectionCopy widgetComplication];
    delegate = [(NTKCFaceDetailComplicationPickerViewController *)self delegate];
    [delegate faceDetailComplicationPickerViewController:self didSelectComplication:widgetComplication];
  }

  return isKindOfClass & 1;
}

- (BOOL)_handleHomeItemSelection:(id)selection
{
  selectionCopy = selection;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = selectionCopy;
    homeLocalizedName = [v6 homeLocalizedName];
    topLevelListProvider = [(NTKCFaceDetailComplicationPickerViewController *)self topLevelListProvider];
    appContainerBundleIdentifier = [MEMORY[0x277D2B980] appContainerBundleIdentifier];
    v10 = [topLevelListProvider detailListProviderForSectionIdentifier:appContainerBundleIdentifier];

    v11 = [[NTKComplicationPickerDetailViewConfiguration alloc] initWithDetailListProvider:v10 title:homeLocalizedName];
    v12 = [[NTKHomeDetailPickerViewController alloc] initWithDetailConfiguration:v11 homeListItem:v6];

    [(NTKHomeDetailPickerViewController *)v12 setDelegate:self];
    [(NTKCFaceDetailComplicationPickerViewController *)self showViewController:v12 sender:self];
  }

  return isKindOfClass & 1;
}

- (void)_setCheckmarkForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  listProvider = [(NTKCFaceDetailComplicationPickerViewController *)self listProvider];
  pickerSelectedItem = [listProvider pickerSelectedItem];

  if (pickerSelectedItem)
  {
    dataSource = [(NTKCFaceDetailComplicationPickerViewController *)self dataSource];
    v10 = [dataSource indexPathForItemIdentifier:pickerSelectedItem];

    v11 = [viewCopy cellForRowAtIndexPath:v10];
    [v11 ntk_setPickerSelected:0];
  }

  v12 = [viewCopy cellForRowAtIndexPath:pathCopy];
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