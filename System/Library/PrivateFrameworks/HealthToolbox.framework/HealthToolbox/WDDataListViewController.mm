@interface WDDataListViewController
- (BOOL)_dataProviderEnabled;
- (BOOL)_displayGuestModeAlert;
- (BOOL)_hasSpinnerRowRowAtIndexPath:(id)path;
- (BOOL)_shouldShowSpinnerRowInSection:(int64_t)section;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)isEditEnabled;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (id)_defaultCellForTableView:(id)view cellStyle:(int64_t)style indexPath:(id)path object:(id)object;
- (id)_deleteAllDataAlertMessage;
- (id)_overridenDisplayImageForSource:(id)source;
- (id)_quantityCellForTableView:(id)view dataObjectSource:(id)source;
- (id)_rightBarButtonItems;
- (id)_sampleAtIndexPath:(id)path;
- (id)_sampleTypesForDeleteAll;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)_closestRowToDate:(id)date;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_calendarDateSelectorButtonTapped:(id)tapped;
- (void)_dataProviderDidUpdate;
- (void)_deleteAllButtonTapped:(id)tapped;
- (void)_deleteAllPregnancySamplesConfirmationSender:(id)sender deleteBlock:(id)block;
- (void)_deleteAllWithOptions:(unint64_t)options;
- (void)_deleteAssociatedSamplesConfirmationPlural:(BOOL)plural sender:(id)sender deleteBlock:(id)block;
- (void)_deleteWorkoutSamplesConfirmationPlural:(BOOL)plural sender:(id)sender deleteBlock:(id)block;
- (void)_fetchMedicalIDData;
- (void)_handleReturnedImage:(id)image forSource:(id)source cell:(id)cell fetchError:(id)error;
- (void)_handleReturnedImage:(id)image forSource:(id)source cell:(id)cell tableView:(id)view fetchError:(id)error;
- (void)_loadIconForSourceObject:(id)object onCell:(id)cell ofTableView:(id)view;
- (void)_reloadAllDataScrolledToDate:(id)date;
- (void)_removePregnancyInformationFromMedicalID;
- (void)_removePregnancyInformationFromMedicalIDConfirmationSender:(id)sender deleteBlock:(id)block;
- (void)_tapGestureRecognizerAction:(id)action;
- (void)_updateNavigationTitle;
- (void)_updateRightBarButtonItems;
- (void)dealloc;
- (void)monthViewController:(id)controller didSelectDate:(id)date;
- (void)performDeleteActionAtIndexPath:(id)path completionHandler:(id)handler;
- (void)presentDeleteConfirmation:(id)confirmation;
- (void)resetDataAndScrollToDate:(id)date;
- (void)scrollViewDidScroll:(id)scroll;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation WDDataListViewController

- (void)_updateNavigationTitle
{
  healthStore = [(WDProfile *)self->_profile healthStore];
  v4 = WDGetProfileNameForHealthStore(healthStore);
  [(WDDataListViewControllerDataProvider *)self->_dataProvider setProfileName:v4];

  profileName = [(WDDataListViewControllerDataProvider *)self->_dataProvider profileName];

  if (profileName)
  {
    v6 = MEMORY[0x277CCACA8];
    v10 = WDBundle();
    v7 = [v10 localizedStringForKey:@"ALL_DATA_TITLE_%@" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Tinker"];
    profileName2 = [(WDDataListViewControllerDataProvider *)self->_dataProvider profileName];
    v9 = [v6 localizedStringWithFormat:v7, profileName2];
    [(WDDataListViewController *)self setTitle:v9];
  }

  else
  {
    v10 = WDBundle();
    v7 = [v10 localizedStringForKey:@"ALL_DATA_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    [(WDDataListViewController *)self setTitle:v7];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D12730] object:0];

  [(WDDataListViewControllerDataProvider *)self->_dataProvider stopCollectingData];
  v5.receiver = self;
  v5.super_class = WDDataListViewController;
  [(WDDataListViewController *)&v5 dealloc];
}

- (BOOL)isEditEnabled
{
  profile = [(WDDataListViewController *)self profile];
  healthStore = [profile healthStore];
  profileIdentifier = [healthStore profileIdentifier];
  v5 = [profileIdentifier type] == 1;

  return v5;
}

- (void)_fetchMedicalIDData
{
  objc_initWeak(&location, self);
  medicalIDStore = self->_medicalIDStore;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__WDDataListViewController__fetchMedicalIDData__block_invoke;
  v4[3] = &unk_2796E7CE8;
  objc_copyWeak(&v5, &location);
  [(HKMedicalIDStore *)medicalIDStore fetchMedicalIDDataWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __47__WDDataListViewController__fetchMedicalIDData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v6)
  {
    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __47__WDDataListViewController__fetchMedicalIDData__block_invoke_cold_1();
    }
  }

  else
  {
    [WeakRetained setMedicalIDData:v5];
  }
}

- (id)_sampleTypesForDeleteAll
{
  v15[2] = *MEMORY[0x277D85DE8];
  displayTypeIdentifier = [(HKDisplayType *)self->_displayType displayTypeIdentifier];
  displayType = self->_displayType;
  if (displayTypeIdentifier == 139)
  {
    sampleType = [(HKDisplayType *)displayType sampleType];
    v15[0] = sampleType;
    heartbeatSeriesType = [MEMORY[0x277CCD920] heartbeatSeriesType];
    v15[1] = heartbeatSeriesType;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
LABEL_5:

    goto LABEL_7;
  }

  displayTypeIdentifier2 = [(HKDisplayType *)displayType displayTypeIdentifier];
  sampleType2 = [(HKDisplayType *)self->_displayType sampleType];
  sampleType = sampleType2;
  if (displayTypeIdentifier2 == 80)
  {
    v14[0] = sampleType2;
    heartbeatSeriesType = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC978]];
    v14[1] = heartbeatSeriesType;
    v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC980]];
    v14[2] = v10;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];

    goto LABEL_5;
  }

  v13 = sampleType2;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
LABEL_7:

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_reloadAllDataScrolledToDate:(id)date
{
  dateCopy = date;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__WDDataListViewController__reloadAllDataScrolledToDate___block_invoke;
  v6[3] = &unk_2796E6BD8;
  v6[4] = self;
  v7 = dateCopy;
  v5 = dateCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __57__WDDataListViewController__reloadAllDataScrolledToDate___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _dataProviderEnabled] & 1) != 0 || (v3 = *(*(a1 + 32) + 1112), (objc_opt_respondsToSelector()) && (objc_msgSend(*(*(a1 + 32) + 1112), "hasCompleteDataSet") & 1) == 0)
  {
    [*(*(a1 + 32) + 1080) removeFromSuperview];
    v2 = 1;
  }

  else
  {
    if ([*(a1 + 32) isEditing])
    {
      [*(a1 + 32) setEditing:0];
    }

    v4 = [*(a1 + 32) view];
    [v4 addSubview:*(*(a1 + 32) + 1080)];

    v2 = 0;
  }

  [*(a1 + 32) _updateRightBarButtonItems];
  v5 = [*(a1 + 32) tableView];
  [v5 setScrollEnabled:v2];

  v6 = [*(a1 + 32) editButtonItem];
  [v6 setEnabled:v2];

  v7 = [*(a1 + 32) tableView];
  [v7 reloadData];

  if (*(a1 + 40))
  {
    v8 = [*(a1 + 32) _closestRowToDate:?];
    if (v8 < 1)
    {
      v12 = *(*(a1 + 32) + 1112);

      [v12 viewControllerIsNearEndOfScreen];
    }

    else
    {
      v9 = v8;
      [*(*(a1 + 32) + 1112) customEstimatedCellHeight];
      v11 = v9 * v10 + -16.0;
      v13 = [*(a1 + 32) tableView];
      [v13 setContentOffset:0 animated:{0.0, v11}];
    }
  }
}

- (int64_t)_closestRowToDate:(id)date
{
  dateCopy = date;
  dataProvider = [(WDDataListViewController *)self dataProvider];
  v6 = [dataProvider numberOfObjectsForSection:0];

  v7 = v6 - 1;
  if (v6 >= 1)
  {
    v8 = 0;
    v9 = 1;
    while (1)
    {
      dataProvider2 = [(WDDataListViewController *)self dataProvider];
      v11 = [dataProvider2 objectAtIndex:v8 forSection:0];

      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      endDate = [v11 endDate];
      v14 = [currentCalendar startOfDayForDate:endDate];

      LODWORD(currentCalendar) = [v14 hk_isBeforeOrEqualToDate:dateCopy];
      if (currentCalendar)
      {
        break;
      }

      v9 = v6 > ++v8;
      if (v6 == v8)
      {
        v8 = v6;
        break;
      }
    }

    v7 = v6 - 1;
    if (v9)
    {
      v7 = v8;
    }
  }

  return v7;
}

- (BOOL)_dataProviderEnabled
{
  numberOfSections = [(WDDataListViewControllerDataProvider *)self->_dataProvider numberOfSections];
  if (numberOfSections < 1)
  {
    return 0;
  }

  v4 = numberOfSections;
  if ([(WDDataListViewControllerDataProvider *)self->_dataProvider numberOfObjectsForSection:0]> 0)
  {
    return 1;
  }

  v6 = 1;
  do
  {
    v7 = v6;
    if (v4 == v6)
    {
      break;
    }

    v8 = [(WDDataListViewControllerDataProvider *)self->_dataProvider numberOfObjectsForSection:v6];
    v6 = v7 + 1;
  }

  while (v8 < 1);
  return v4 > v7;
}

- (BOOL)_displayGuestModeAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"GUEST_MODE_DELETE_HEALTH_TITLE" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"GUEST_MODE_DELETE_HEALTH_DESCRIPTION" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  v8 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"SHARE_ALERT_OK" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  v12 = [v9 actionWithTitle:v11 style:0 handler:0];

  [v8 addAction:v12];
  [(WDDataListViewController *)self presentViewController:v8 animated:1 completion:0];

  return 1;
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = WDDataListViewController;
  [(HKTableViewController *)&v33 viewDidLoad];
  v3 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:0 suffix:@"DataListViewController.View"];
  view = [(WDDataListViewController *)self view];
  [view setAccessibilityIdentifier:v3];

  v5 = objc_alloc(MEMORY[0x277D75E78]);
  v6 = WDBundle();
  v7 = [v6 localizedStringForKey:@"CHART_NO_DATA" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v8 = [v5 initWithFrame:v7 title:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  noContentView = self->_noContentView;
  self->_noContentView = v8;

  if ([(WDDataListViewControllerDataProvider *)self->_dataProvider cellStyle]== 2)
  {
    dataProvider = self->_dataProvider;
    tableView = [(WDDataListViewController *)self tableView];
    [(WDDataListViewControllerDataProvider *)dataProvider customizeTableView:tableView];

    tableView2 = [(WDDataListViewController *)self tableView];
    [(WDDataListViewControllerDataProvider *)self->_dataProvider customEstimatedCellHeight];
    [tableView2 setEstimatedRowHeight:?];

    tableView3 = [(WDDataListViewController *)self tableView];
    [(WDDataListViewControllerDataProvider *)self->_dataProvider customCellHeight];
    tableView5 = tableView3;
  }

  else
  {
    tableView4 = [(WDDataListViewController *)self tableView];
    [tableView4 setEstimatedRowHeight:*MEMORY[0x277D12780]];

    tableView5 = [(WDDataListViewController *)self tableView];
    tableView3 = tableView5;
    v14 = *MEMORY[0x277D76F30];
  }

  [tableView5 setRowHeight:v14];

  tableView6 = [(WDDataListViewController *)self tableView];
  v18 = objc_opt_class();
  v19 = +[WDSpinnerTableViewCell defaultReuseIdentifier];
  [tableView6 registerClass:v18 forCellReuseIdentifier:v19];

  tableView7 = [(WDDataListViewController *)self tableView];
  [tableView7 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"HeaderView"];

  v21 = HKUIJoinStringsForAutomationIdentifier();
  tableView8 = [(WDDataListViewController *)self tableView];
  [tableView8 setAccessibilityIdentifier:v21];

  v23 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v23;

  [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
  view2 = [(WDDataListViewController *)self view];
  [view2 addSubview:self->_spinner];

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  LODWORD(tableView8) = [mEMORY[0x277CCDD30] isAppleInternalInstall];

  if (tableView8)
  {
    v27 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapGestureRecognizerAction_];
    navigationBarTapGestureRecognizer = self->_navigationBarTapGestureRecognizer;
    self->_navigationBarTapGestureRecognizer = v27;

    [(UITapGestureRecognizer *)self->_navigationBarTapGestureRecognizer setNumberOfTapsRequired:3];
    [(UITapGestureRecognizer *)self->_navigationBarTapGestureRecognizer setDelegate:self];
  }

  objc_initWeak(&location, self);
  v29 = self->_dataProvider;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __39__WDDataListViewController_viewDidLoad__block_invoke;
  v30[3] = &unk_2796E6CF0;
  objc_copyWeak(&v31, &location);
  [(WDDataListViewControllerDataProvider *)v29 startCollectingDataWithUpdateHandler:v30];
  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __39__WDDataListViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__WDDataListViewController_viewDidLoad__block_invoke_2;
  block[3] = &unk_2796E6CF0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __39__WDDataListViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dataProviderDidUpdate];
}

- (void)_dataProviderDidUpdate
{
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  scrollToDate = [(WDDataListViewController *)self scrollToDate];
  [(WDDataListViewController *)self _reloadAllDataScrolledToDate:scrollToDate];

  [(WDDataListViewController *)self setScrollToDate:0];

  [(WDDataListViewController *)self _updateRightBarButtonItems];
}

- (void)viewWillLayoutSubviews
{
  v30.receiver = self;
  v30.super_class = WDDataListViewController;
  [(WDDataListViewController *)&v30 viewWillLayoutSubviews];
  navigationController = [(WDDataListViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v6 = v5;

  tabBarController = [(WDDataListViewController *)self tabBarController];
  tabBar = [tabBarController tabBar];
  [tabBar frame];
  v10 = v9;

  view = [(WDDataListViewController *)self view];
  [view frame];
  v13 = v12;
  v15 = v14;

  [(UIActivityIndicatorView *)self->_spinner setCenter:v13 * 0.5, (v15 - v6 - v10) * 0.5];
  noContentView = self->_noContentView;
  view2 = [(WDDataListViewController *)self view];
  [view2 bounds];
  [(_UIContentUnavailableView *)noContentView setFrame:?];

  v18 = self->_noContentView;
  view3 = [(WDDataListViewController *)self view];
  [view3 center];
  v21 = v20;
  view4 = [(WDDataListViewController *)self view];
  [view4 center];
  v24 = v23;
  view5 = [(WDDataListViewController *)self view];
  [view5 safeAreaInsets];
  v27 = v26;
  view6 = [(WDDataListViewController *)self view];
  [view6 safeAreaInsets];
  [(_UIContentUnavailableView *)v18 setCenter:v21, v24 - (v27 + v29) * 0.5];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  v6 = v5;
  [scrollCopy contentSize];
  v8 = v7;
  [scrollCopy frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v22.origin.x = v10;
  v22.origin.y = v12;
  v22.size.width = v14;
  v22.size.height = v16;
  v17 = v8 - (v6 + CGRectGetHeight(v22));
  view = [(WDDataListViewController *)self view];
  [view bounds];
  Height = CGRectGetHeight(v23);

  if (v17 < Height)
  {
    dataProvider = self->_dataProvider;

    [(WDDataListViewControllerDataProvider *)dataProvider viewControllerIsNearEndOfScreen];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  view = [touchCopy view];
  view2 = [recognizerCopy view];

  if (view == view2)
  {
    v10 = 1;
  }

  else
  {
    view3 = [touchCopy view];
    objc_opt_class();
    v10 = objc_opt_isKindOfClass() ^ 1;
  }

  return v10 & 1;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = [view dequeueReusableHeaderFooterViewWithIdentifier:{@"HeaderView", section}];
  textLabel = [v4 textLabel];
  [textLabel setNumberOfLines:0];

  textLabel2 = [v4 textLabel];
  [textLabel2 setLineBreakMode:1];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  dataProvider = [(WDDataListViewController *)self dataProvider];
  v7 = [dataProvider numberOfObjectsForSection:section];

  return v7 + [(WDDataListViewController *)self _shouldShowSpinnerRowInSection:section];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(WDDataListViewController *)self _hasSpinnerRowRowAtIndexPath:pathCopy];
  dataProvider = self->_dataProvider;
  if (!v8)
  {
    v11 = [pathCopy row];
    v12 = -[WDDataListViewControllerDataProvider objectAtIndex:forSection:](dataProvider, "objectAtIndex:forSection:", v11, [pathCopy section]);
    cellStyle = self->_cellStyle;
    if (cellStyle == 2)
    {
      v14 = [(WDDataListViewControllerDataProvider *)self->_dataProvider customCellForObject:v12 indexPath:pathCopy tableView:viewCopy];
    }

    else if (cellStyle == 1)
    {
      v14 = [(WDDataListViewController *)self _defaultCellForTableView:viewCopy cellStyle:3 indexPath:pathCopy object:v12];
    }

    else
    {
      if (cellStyle)
      {
LABEL_12:

        goto LABEL_13;
      }

      v14 = [(WDDataListViewController *)self _quantityCellForTableView:viewCopy dataObjectSource:v12];
    }

    v11 = v14;
    goto LABEL_12;
  }

  v10 = self->_dataProvider;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(WDDataListViewControllerDataProvider *)self->_dataProvider customLoadingCellForRowAtIndexPath:pathCopy tableView:viewCopy];
  }

  else
  {
    v15 = +[WDSpinnerTableViewCell defaultReuseIdentifier];
    v11 = [viewCopy dequeueReusableCellWithIdentifier:v15];
  }

LABEL_13:

  return v11;
}

- (void)_loadIconForSourceObject:(id)object onCell:(id)cell ofTableView:(id)view
{
  objectCopy = object;
  cellCopy = cell;
  viewCopy = view;
  sourceRevision = [objectCopy sourceRevision];
  source = [sourceRevision source];

  if ([(HKDisplayType *)self->_displayType displayTypeIdentifier]!= 5)
  {
    goto LABEL_7;
  }

  _isPreferredSource = [source _isPreferredSource];
  _isApplication = [source _isApplication];
  device = [objectCopy device];
  localIdentifier = [device localIdentifier];

  [source bundleIdentifier];
  v15 = viewCopy;
  v17 = v16 = cellCopy;
  device2 = [objectCopy device];
  localIdentifier2 = [device2 localIdentifier];
  v20 = [v17 isEqualToString:localIdentifier2];

  cellCopy = v16;
  viewCopy = v15;
  if (!_isPreferredSource)
  {
    goto LABEL_7;
  }

  if ((_isApplication & 1) == 0 && localIdentifier && (v20 & 1) == 0)
  {
    mEMORY[0x277D127A8]2 = HKBluetoothIcon();
    iconImageView = [cellCopy iconImageView];
    [iconImageView setImage:mEMORY[0x277D127A8]2];
  }

  else
  {
LABEL_7:
    device3 = [objectCopy device];
    _isConnectedGymDevice = [device3 _isConnectedGymDevice];

    if (!_isConnectedGymDevice)
    {
      objc_initWeak(&location, self);
      mEMORY[0x277D127A8] = [MEMORY[0x277D127A8] sharedImageManager];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __72__WDDataListViewController__loadIconForSourceObject_onCell_ofTableView___block_invoke;
      v36[3] = &unk_2796E6C50;
      v28 = cellCopy;
      v37 = v28;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __72__WDDataListViewController__loadIconForSourceObject_onCell_ofTableView___block_invoke_2;
      v31[3] = &unk_2796E6CA0;
      objc_copyWeak(&v35, &location);
      v32 = source;
      v33 = v28;
      v34 = viewCopy;
      [mEMORY[0x277D127A8] loadIconForSource:v32 syncHandler:v36 asyncHandler:v31];

      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
      goto LABEL_11;
    }

    mEMORY[0x277D127A8]2 = [MEMORY[0x277D127A8] sharedImageManager];
    iconImageView = [objectCopy device];
    v25 = [mEMORY[0x277D127A8]2 iconForDevice:iconImageView];
    iconImageView2 = [cellCopy iconImageView];
    [iconImageView2 setImage:v25];
  }

LABEL_11:
}

void __72__WDDataListViewController__loadIconForSourceObject_onCell_ofTableView___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 iconImageView];
  [v4 setImage:v3];
}

void __72__WDDataListViewController__loadIconForSourceObject_onCell_ofTableView___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__WDDataListViewController__loadIconForSourceObject_onCell_ofTableView___block_invoke_3;
  v9[3] = &unk_2796E6C78;
  objc_copyWeak(&v15, a1 + 7);
  v10 = v5;
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v14 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v15);
}

void __72__WDDataListViewController__loadIconForSourceObject_onCell_ofTableView___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _handleReturnedImage:*(a1 + 32) forSource:*(a1 + 40) cell:*(a1 + 48) tableView:*(a1 + 56) fetchError:*(a1 + 64)];
}

- (void)_handleReturnedImage:(id)image forSource:(id)source cell:(id)cell tableView:(id)view fetchError:(id)error
{
  imageCopy = image;
  cellCopy = cell;
  if (imageCopy && !error)
  {
    sourceCopy = source;
    v14 = [view indexPathForCell:cellCopy];
    dataProvider = [(WDDataListViewController *)self dataProvider];
    v16 = [dataProvider objectAtIndex:objc_msgSend(v14 forSection:{"row"), objc_msgSend(v14, "section")}];
    sourceRevision = [v16 sourceRevision];
    source = [sourceRevision source];

    LODWORD(dataProvider) = [source isEqual:sourceCopy];
    if (dataProvider)
    {
      iconImageView = [cellCopy iconImageView];
      [iconImageView setImage:imageCopy];
    }
  }
}

- (id)_quantityCellForTableView:(id)view dataObjectSource:(id)source
{
  viewCopy = view;
  sourceCopy = source;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"QuantityCell"];
  if (!v8)
  {
    v8 = [[WDDataTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"QuantityCell"];
  }

  [(WDDataTableViewCell *)v8 setAccessoryType:1];
  dataProvider = [(WDDataListViewController *)self dataProvider];
  v10 = [dataProvider textForObject:sourceCopy];
  [(WDDataTableViewCell *)v8 setDisplayValue:v10];

  dataProvider2 = [(WDDataListViewController *)self dataProvider];
  v12 = [dataProvider2 secondaryTextForObject:sourceCopy];
  [(WDDataTableViewCell *)v8 setDateString:v12];

  dataProvider3 = [(WDDataListViewController *)self dataProvider];
  -[WDDataTableViewCell setDisplayValueAdjustsFontSizeToFitWidth:](v8, "setDisplayValueAdjustsFontSizeToFitWidth:", [dataProvider3 textAdjustsFontSizeToFitWidth]);

  dataProvider4 = [(WDDataListViewController *)self dataProvider];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_7;
  }

  dataProvider5 = [(WDDataListViewController *)self dataProvider];
  v16 = [dataProvider5 shouldHideSourceImageForObject:sourceCopy];

  if ((v16 & 1) == 0)
  {
LABEL_7:
    sourceRevision = [sourceCopy sourceRevision];
    source = [sourceRevision source];

    [(WDDataTableViewCell *)v8 setSource:source];
    sourceRevision2 = [sourceCopy sourceRevision];
    productType = [sourceRevision2 productType];

    objc_initWeak(&location, self);
    mEMORY[0x277D127A8] = [MEMORY[0x277D127A8] sharedImageManager];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __71__WDDataListViewController__quantityCellForTableView_dataObjectSource___block_invoke;
    v33[3] = &unk_2796E7D10;
    v22 = v8;
    v34 = v22;
    selfCopy = self;
    v23 = source;
    v36 = v23;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __71__WDDataListViewController__quantityCellForTableView_dataObjectSource___block_invoke_2;
    v29[3] = &unk_2796E7D60;
    objc_copyWeak(&v32, &location);
    v24 = v23;
    v30 = v24;
    v25 = v22;
    v31 = v25;
    [mEMORY[0x277D127A8] loadIconForSource:v24 productType:productType syncHandler:v33 asyncHandler:v29];

    v26 = v31;
    v27 = v25;

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __71__WDDataListViewController__quantityCellForTableView_dataObjectSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = a2;
  v6 = [v3 _overridenDisplayImageForSource:v4];
  v9 = v6;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = [*(a1 + 32) imageView];
  [v8 setImage:v7];
}

void __71__WDDataListViewController__quantityCellForTableView_dataObjectSource___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__WDDataListViewController__quantityCellForTableView_dataObjectSource___block_invoke_3;
  block[3] = &unk_2796E7D38;
  objc_copyWeak(&v14, a1 + 6);
  v10 = v5;
  v11 = a1[4];
  v12 = a1[5];
  v13 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v14);
}

void __71__WDDataListViewController__quantityCellForTableView_dataObjectSource___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _handleReturnedImage:*(a1 + 32) forSource:*(a1 + 40) cell:*(a1 + 48) fetchError:*(a1 + 56)];
}

- (void)_handleReturnedImage:(id)image forSource:(id)source cell:(id)cell fetchError:(id)error
{
  imageCopy = image;
  sourceCopy = source;
  cellCopy = cell;
  errorCopy = error;
  if (imageCopy)
  {
    if (!errorCopy)
    {
      source = [cellCopy source];
      v14 = [source isEqual:sourceCopy];

      if (v14)
      {
        v15 = [(WDDataListViewController *)self _overridenDisplayImageForSource:sourceCopy];
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = imageCopy;
        }

        imageView = [cellCopy imageView];
        [imageView setImage:v16];
      }
    }
  }
}

- (id)_defaultCellForTableView:(id)view cellStyle:(int64_t)style indexPath:(id)path object:(id)object
{
  objectCopy = object;
  viewCopy = view;
  v11 = [viewCopy dequeueReusableCellWithIdentifier:@"WDDataListViewControllerCell"];
  if (!v11)
  {
    v11 = [[WDDataListViewControllerCell alloc] initWithStyle:style reuseIdentifier:@"WDDataListViewControllerCell"];
  }

  v12 = [(WDDataListViewControllerDataProvider *)self->_dataProvider textForObject:objectCopy];
  v13 = [(WDDataListViewControllerDataProvider *)self->_dataProvider secondaryTextForObject:objectCopy];
  titleTextLabel = [(WDDataListViewControllerCell *)v11 titleTextLabel];
  [titleTextLabel setText:v12];

  subtitleTextLabel = [(WDDataListViewControllerCell *)v11 subtitleTextLabel];
  [subtitleTextLabel setText:v13];

  [(WDDataListViewController *)self _loadIconForSourceObject:objectCopy onCell:v11 ofTableView:viewCopy];

  return v11;
}

- (id)_overridenDisplayImageForSource:(id)source
{
  sourceCopy = source;
  if (-[HKDisplayType displayTypeIdentifier](self->_displayType, "displayTypeIdentifier") == 14 && ([sourceCopy bundleIdentifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"com.apple.NanoOxygenSaturation.watchkitapp"), v5, v6) && !self->_showOriginalAppProvenance)
  {
    _productType = [sourceCopy _productType];
    v10 = [_productType hasPrefix:*MEMORY[0x277CCC8C8]];

    if (v10)
    {
      _productType2 = [sourceCopy _productType];
    }

    else
    {
      _productType2 = @"Watch";
    }

    v12 = [MEMORY[0x277D12B20] appleDeviceIconForHardwareVersion:_productType2];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = HKDeviceImage();
    }

    v7 = v14;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![(WDDataListViewController *)self _hasSpinnerRowRowAtIndexPath:pathCopy])
  {
    v7 = [(WDDataListViewControllerDataProvider *)self->_dataProvider viewControllerForItemAtIndexPath:pathCopy];
    navigationController = [(WDDataListViewController *)self navigationController];
    [navigationController hk_showViewController:v7 animated:1];

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }
}

- (id)_sampleAtIndexPath:(id)path
{
  dataProvider = self->_dataProvider;
  pathCopy = path;
  v5 = [pathCopy row];
  section = [pathCopy section];

  return [(WDDataListViewControllerDataProvider *)dataProvider objectAtIndex:v5 forSection:section];
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(WDDataListViewController *)self isEditEnabled])
  {
    dataProvider = self->_dataProvider;
    if (objc_opt_respondsToSelector())
    {
      v7 = [(WDDataListViewControllerDataProvider *)self->_dataProvider canEditRowAtIndexPath:pathCopy];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v21[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if ([(WDDataListViewController *)self tableView:view canEditRowAtIndexPath:pathCopy])
  {
    v7 = MEMORY[0x277D753C0];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __89__WDDataListViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
    v18 = &unk_2796E7D88;
    selfCopy = self;
    v20 = pathCopy;
    v8 = [v7 contextualActionWithStyle:1 title:0 handler:&v15];
    v9 = [MEMORY[0x277D755B8] systemImageNamed:{@"trash.fill", v15, v16, v17, v18, selfCopy}];
    [v8 setImage:v9];

    v10 = MEMORY[0x277D75AD8];
    v21[0] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v12 = [v10 configurationWithActions:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)performDeleteActionAtIndexPath:(id)path completionHandler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __77__WDDataListViewController_performDeleteActionAtIndexPath_completionHandler___block_invoke;
  v27[3] = &unk_2796E7DB0;
  v27[4] = self;
  v8 = pathCopy;
  v28 = v8;
  v9 = handlerCopy;
  v29 = v9;
  v10 = MEMORY[0x253092270](v27);
  tableView = [(WDDataListViewController *)self tableView];
  v12 = [tableView cellForRowAtIndexPath:v8];

  objc_initWeak(&location, self);
  behavior = [(HKDisplayType *)self->_displayType behavior];
  supportsAssociatedSamples = [behavior supportsAssociatedSamples];

  displayType = self->_displayType;
  if (supportsAssociatedSamples)
  {
    if ([(HKDisplayType *)displayType displayTypeIdentifier]== 79)
    {
      v16 = [(WDDataListViewController *)self _sampleAtIndexPath:v8];
      if ([v16 _activityMoveMode] == 2)
      {
        [(WDDataListViewController *)self _deleteWorkoutSamplesConfirmationPlural:0 sender:v12 deleteBlock:v10];
      }

      else
      {
        [(WDDataListViewController *)self _deleteAssociatedSamplesConfirmationPlural:0 sender:v12 deleteBlock:v10];
      }

LABEL_14:

      goto LABEL_15;
    }

    [(WDDataListViewController *)self _deleteAssociatedSamplesConfirmationPlural:0 sender:v12 deleteBlock:v10];
  }

  else
  {
    displayTypeIdentifierString = [(HKDisplayType *)displayType displayTypeIdentifierString];
    v18 = HKDisplayTypeIdentifierToString();
    if ([displayTypeIdentifierString isEqualToString:v18])
    {
      pregnancyEstimatedDueDate = [(_HKMedicalIDData *)self->_medicalIDData pregnancyEstimatedDueDate];

      if (pregnancyEstimatedDueDate)
      {
        v16 = [(WDDataListViewController *)self _sampleAtIndexPath:v8];
        endDate = [v16 endDate];
        distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
        v22 = [endDate isEqualToDate:distantFuture];

        if (v22)
        {
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __77__WDDataListViewController_performDeleteActionAtIndexPath_completionHandler___block_invoke_3;
          v23[3] = &unk_2796E7DD8;
          objc_copyWeak(&v25, &location);
          v24 = v10;
          [(WDDataListViewController *)self _removePregnancyInformationFromMedicalIDConfirmationSender:v12 deleteBlock:v23];

          objc_destroyWeak(&v25);
        }

        else
        {
          v10[2](v10, 2);
        }

        goto LABEL_14;
      }
    }

    else
    {
    }

    v10[2](v10, 2);
  }

LABEL_15:
  objc_destroyWeak(&location);
}

uint64_t __77__WDDataListViewController_performDeleteActionAtIndexPath_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v4 + 1112);
  v7 = [*(v4 + 1048) healthStore];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__WDDataListViewController_performDeleteActionAtIndexPath_completionHandler___block_invoke_2;
  v13[3] = &unk_2796E6CC8;
  v13[4] = *(a1 + 32);
  [v6 deleteObjectsAtIndexPath:v5 healthStore:v7 options:a2 completion:v13];

  v12 = 0;
  [*(*(a1 + 32) + 1112) removeObjectAtIndex:objc_msgSend(*(a1 + 40) forSection:"row") sectionRemoved:{objc_msgSend(*(a1 + 40), "section"), &v12}];
  LODWORD(v5) = v12;
  v8 = [*(a1 + 32) tableView];
  if (v5 == 1)
  {
    v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(*(a1 + 40), "section")}];
    [v8 deleteSections:v9 withRowAnimation:0];
  }

  else
  {
    v14[0] = *(a1 + 40);
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v8 deleteRowsAtIndexPaths:v9 withRowAnimation:0];
  }

  result = (*(*(a1 + 48) + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void __77__WDDataListViewController_performDeleteActionAtIndexPath_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!a2 || ([*(a1 + 32) _dataProviderEnabled] & 1) == 0)
  {
    [*(a1 + 32) _reloadAllData];
  }
}

void __77__WDDataListViewController_performDeleteActionAtIndexPath_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  if (a3)
  {
    [WeakRetained _removePregnancyInformationFromMedicalID];
  }
}

- (void)monthViewController:(id)controller didSelectDate:(id)date
{
  [(WDDataListViewController *)self resetDataAndScrollToDate:date];

  [(WDDataListViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)resetDataAndScrollToDate:(id)date
{
  dateCopy = date;
  [(WDDataListViewController *)self setScrollToDate:?];
  dataProvider = [(WDDataListViewController *)self dataProvider];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    dataProvider2 = [(WDDataListViewController *)self dataProvider];
    [dataProvider2 viewControllerWantsDataIncludingDate:dateCopy];

    [(UIActivityIndicatorView *)self->_spinner startAnimating];
    [(WDDataListViewController *)self _reloadAllData];
  }
}

- (void)_calendarDateSelectorButtonTapped:(id)tapped
{
  v4 = objc_alloc(MEMORY[0x277D12918]);
  healthStore = [(WDProfile *)self->_profile healthStore];
  dateCache = [(WDProfile *)self->_profile dateCache];
  date = [MEMORY[0x277CBEAA8] date];
  v13 = [v4 initWithHealthStore:healthStore dateCache:dateCache date:date];

  sampleType = [(HKDisplayType *)self->_displayType sampleType];
  [v13 setSampleType:sampleType];

  color = [(HKDisplayType *)self->_displayType color];
  [v13 setSampleColor:color];

  dataProvider = [(WDDataListViewController *)self dataProvider];
  defaultQueryPredicate = [dataProvider defaultQueryPredicate];
  [v13 setAdditionalSamplePredicate:defaultQueryPredicate];

  [v13 setDelegate:self];
  v12 = [objc_alloc(MEMORY[0x277D12978]) initWithRootViewController:v13];
  [(WDDataListViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_deleteAllButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  behavior = [(HKDisplayType *)self->_displayType behavior];
  supportsAssociatedSamples = [behavior supportsAssociatedSamples];

  objc_initWeak(&location, self);
  if (!supportsAssociatedSamples)
  {
    displayTypeIdentifierString = [(HKDisplayType *)self->_displayType displayTypeIdentifierString];
    v14 = HKDisplayTypeIdentifierToString();
    if ([displayTypeIdentifierString isEqualToString:v14])
    {
      pregnancyEstimatedDueDate = [(_HKMedicalIDData *)self->_medicalIDData pregnancyEstimatedDueDate];

      if (pregnancyEstimatedDueDate)
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __51__WDDataListViewController__deleteAllButtonTapped___block_invoke_4;
        v16[3] = &unk_2796E7E20;
        objc_copyWeak(&v17, &location);
        [(WDDataListViewController *)self _deleteAllPregnancySamplesConfirmationSender:tappedCopy deleteBlock:v16];
        objc_destroyWeak(&v17);
        goto LABEL_13;
      }
    }

    else
    {
    }

    [(WDDataListViewController *)self presentDeleteConfirmation:tappedCopy];
    goto LABEL_13;
  }

  v7 = self->_dataProvider;
  v8 = v7;
  if (v7)
  {
    samples = [(WDDataListViewControllerDataProvider *)v7 samples];
    allSamples = [samples allSamples];
    v11 = [allSamples hk_containsObjectPassingTest:&__block_literal_global_10];

    if (v11)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __51__WDDataListViewController__deleteAllButtonTapped___block_invoke_2;
      v20[3] = &unk_2796E7E20;
      v12 = &v21;
      objc_copyWeak(&v21, &location);
      [(WDDataListViewController *)self _deleteAssociatedSamplesConfirmationPlural:1 sender:tappedCopy deleteBlock:v20];
    }

    else
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __51__WDDataListViewController__deleteAllButtonTapped___block_invoke_3;
      v18[3] = &unk_2796E7E20;
      v12 = &v19;
      objc_copyWeak(&v19, &location);
      [(WDDataListViewController *)self _deleteWorkoutSamplesConfirmationPlural:1 sender:tappedCopy deleteBlock:v18];
    }

    objc_destroyWeak(v12);
  }

LABEL_13:
  objc_destroyWeak(&location);
}

void __51__WDDataListViewController__deleteAllButtonTapped___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deleteAllWithOptions:a2];
}

void __51__WDDataListViewController__deleteAllButtonTapped___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deleteAllWithOptions:a2];
}

void __51__WDDataListViewController__deleteAllButtonTapped___block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removePregnancyInformationFromMedicalID];
  [WeakRetained _deleteAllWithOptions:a2];
}

- (id)_deleteAllDataAlertMessage
{
  if ([(HKDisplayType *)self->_displayType displayTypeIdentifier]== 173)
  {
    v2 = objc_alloc_init(MEMORY[0x277CEFB38]);
    v3 = [v2 getPreferenceFor:*MEMORY[0x277CEFAF0]];
    bOOLValue = [v3 BOOLValue];

    v5 = [v2 getPreferenceFor:*MEMORY[0x277CEFAF8]];
    bOOLValue2 = [v5 BOOLValue];

    LOBYTE(v5) = bOOLValue | bOOLValue2;
    v7 = WDBundle();
    v8 = v7;
    if (v5)
    {
      v9 = @"DELETE_ALL_HEADPHONE_DATA_CONFIRMATION_TITLE";
    }

    else
    {
      v9 = @"DELETE_ALL_CONFIRMATION_TITLE";
    }

    v10 = [v7 localizedStringForKey:v9 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  }

  else
  {
    v2 = WDBundle();
    v10 = [v2 localizedStringForKey:@"DELETE_ALL_CONFIRMATION_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  }

  return v10;
}

- (void)presentDeleteConfirmation:(id)confirmation
{
  v4 = MEMORY[0x277D75110];
  confirmationCopy = confirmation;
  _deleteAllDataAlertMessage = [(WDDataListViewController *)self _deleteAllDataAlertMessage];
  v7 = [v4 alertControllerWithTitle:_deleteAllDataAlertMessage message:0 preferredStyle:0];

  popoverPresentationController = [v7 popoverPresentationController];
  [popoverPresentationController setSourceItem:confirmationCopy];

  v9 = MEMORY[0x277D750F8];
  v10 = WDBundle();
  v11 = [v10 localizedStringForKey:@"CANCEL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v12 = [v9 actionWithTitle:v11 style:0 handler:0];
  [v7 addAction:v12];

  v13 = MEMORY[0x277D750F8];
  v14 = WDBundle();
  v15 = [v14 localizedStringForKey:@"DELETE_ALL_BUTTON_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__WDDataListViewController_presentDeleteConfirmation___block_invoke;
  v17[3] = &unk_2796E7088;
  v17[4] = self;
  v16 = [v13 actionWithTitle:v15 style:2 handler:v17];
  [v7 addAction:v16];

  [(WDDataListViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_deleteAssociatedSamplesConfirmationPlural:(BOOL)plural sender:(id)sender deleteBlock:(id)block
{
  pluralCopy = plural;
  blockCopy = block;
  senderCopy = sender;
  v9 = WDBundle();
  v10 = v9;
  v11 = !pluralCopy;
  if (pluralCopy)
  {
    v12 = @"DELETE_ALL_ASSOCIATED_MESSAGE_PLURAL";
  }

  else
  {
    v12 = @"DELETE_ALL_ASSOCIATED_MESSAGE";
  }

  if (pluralCopy)
  {
    v13 = @"DELETE_ALL_ASSOCIATED_YES_PLURAL";
  }

  else
  {
    v13 = @"DELETE_ALL_ASSOCIATED_YES";
  }

  if (v11)
  {
    v14 = @"DELETE_ALL_ASSOCIATED_NO";
  }

  else
  {
    v14 = @"DELETE_ALL_ASSOCIATED_NO_PLURAL";
  }

  v15 = [v9 localizedStringForKey:v12 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  v16 = WDBundle();
  v17 = [v16 localizedStringForKey:v13 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  v18 = WDBundle();
  v19 = [v18 localizedStringForKey:v14 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  v20 = MEMORY[0x277D75110];
  v21 = WDBundle();
  v22 = [v21 localizedStringForKey:@"DELETE_ALL_ASSOCIATED_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v23 = [v20 alertControllerWithTitle:v22 message:v15 preferredStyle:0];

  popoverPresentationController = [v23 popoverPresentationController];
  [popoverPresentationController setSourceItem:senderCopy];

  v25 = MEMORY[0x277D750F8];
  v26 = WDBundle();
  v27 = [v26 localizedStringForKey:@"CANCEL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v28 = [v25 actionWithTitle:v27 style:0 handler:0];
  [v23 addAction:v28];

  v29 = MEMORY[0x277D750F8];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __90__WDDataListViewController__deleteAssociatedSamplesConfirmationPlural_sender_deleteBlock___block_invoke;
  v38[3] = &unk_2796E7E48;
  v30 = blockCopy;
  v39 = v30;
  v31 = [v29 actionWithTitle:v17 style:2 handler:v38];
  [v23 addAction:v31];

  v32 = MEMORY[0x277D750F8];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __90__WDDataListViewController__deleteAssociatedSamplesConfirmationPlural_sender_deleteBlock___block_invoke_2;
  v36[3] = &unk_2796E7E48;
  v37 = v30;
  v33 = v30;
  v34 = [v32 actionWithTitle:v19 style:0 handler:v36];
  [v23 addAction:v34];

  [(WDDataListViewController *)self presentViewController:v23 animated:1 completion:0];
}

- (void)_deleteWorkoutSamplesConfirmationPlural:(BOOL)plural sender:(id)sender deleteBlock:(id)block
{
  pluralCopy = plural;
  blockCopy = block;
  senderCopy = sender;
  v10 = WDBundle();
  v11 = v10;
  v12 = !pluralCopy;
  if (pluralCopy)
  {
    v13 = @"DELETE_WORKOUT_PLURAL_ALERT_TITLE_FITNESS_JR";
  }

  else
  {
    v13 = @"DELETE_WORKOUT_ALERT_TITLE_FITNESS_JR";
  }

  if (pluralCopy)
  {
    v14 = @"DELETE_WORKOUT_PLURAL_ALERT_DESCRIPTION_FITNESS_JR";
  }

  else
  {
    v14 = @"DELETE_WORKOUT_ALERT_DESCRIPTION_FITNESS_JR";
  }

  if (v12)
  {
    v15 = @"DELETE_WORKOUT_ALERT_YES_FITNESS_JR";
  }

  else
  {
    v15 = @"DELETE_WORKOUT_PLURAL_ALERT_YES_FITNESS_JR";
  }

  v16 = [v10 localizedStringForKey:v13 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Tinker"];

  v17 = WDBundle();
  v18 = [v17 localizedStringForKey:v14 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Tinker"];

  v19 = WDBundle();
  v20 = [v19 localizedStringForKey:v15 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Tinker"];

  v21 = [MEMORY[0x277D75110] alertControllerWithTitle:v16 message:v18 preferredStyle:0];
  popoverPresentationController = [v21 popoverPresentationController];
  [popoverPresentationController setSourceItem:senderCopy];

  v23 = MEMORY[0x277D750F8];
  v24 = WDBundle();
  v25 = [v24 localizedStringForKey:@"CANCEL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v26 = [v23 actionWithTitle:v25 style:0 handler:0];
  [v21 addAction:v26];

  v27 = MEMORY[0x277D750F8];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __87__WDDataListViewController__deleteWorkoutSamplesConfirmationPlural_sender_deleteBlock___block_invoke;
  v30[3] = &unk_2796E7E48;
  v31 = blockCopy;
  v28 = blockCopy;
  v29 = [v27 actionWithTitle:v20 style:0 handler:v30];
  [v21 addAction:v29];

  [(WDDataListViewController *)self presentViewController:v21 animated:1 completion:0];
}

- (void)_removePregnancyInformationFromMedicalIDConfirmationSender:(id)sender deleteBlock:(id)block
{
  blockCopy = block;
  senderCopy = sender;
  v7 = WDBundle();
  v8 = [v7 localizedStringForKey:@"REMOVE_PREGNANCY_FROM_MEDICAL_ID_ALERT_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  v9 = WDBundle();
  v10 = [v9 localizedStringForKey:@"REMOVE_PREGNANCY_FROM_MEDICAL_ID_ALERT_DESCRIPTION" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v10 preferredStyle:0];
  popoverPresentationController = [v11 popoverPresentationController];
  [popoverPresentationController setSourceItem:senderCopy];

  v13 = MEMORY[0x277D750F8];
  v14 = WDBundle();
  v15 = [v14 localizedStringForKey:@"REMOVE_PREGNANCY_FROM_MEDICAL_ID_ALERT_PRIMARY_ACTION" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __99__WDDataListViewController__removePregnancyInformationFromMedicalIDConfirmationSender_deleteBlock___block_invoke;
  v29[3] = &unk_2796E7E48;
  v16 = blockCopy;
  v30 = v16;
  v17 = [v13 actionWithTitle:v15 style:2 handler:v29];
  [v11 addAction:v17];

  v18 = MEMORY[0x277D750F8];
  v19 = WDBundle();
  v20 = [v19 localizedStringForKey:@"REMOVE_PREGNANCY_FROM_MEDICAL_ID_ALERT_SECONDARY_ACTION" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __99__WDDataListViewController__removePregnancyInformationFromMedicalIDConfirmationSender_deleteBlock___block_invoke_2;
  v27[3] = &unk_2796E7E48;
  v21 = v16;
  v28 = v21;
  v22 = [v18 actionWithTitle:v20 style:0 handler:v27];
  [v11 addAction:v22];

  navigationController = [(WDDataListViewController *)self navigationController];
  presentedViewController = [navigationController presentedViewController];
  objc_opt_class();
  LOBYTE(v19) = objc_opt_isKindOfClass();

  if (v19)
  {
    _HKInitializeLogging();
    v25 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [WDDataListViewController _removePregnancyInformationFromMedicalIDConfirmationSender:deleteBlock:];
    }
  }

  else
  {
    [(WDDataListViewController *)self presentViewController:v11 animated:1 completion:0];
  }
}

- (void)_deleteAllPregnancySamplesConfirmationSender:(id)sender deleteBlock:(id)block
{
  blockCopy = block;
  senderCopy = sender;
  v8 = WDBundle();
  v9 = [v8 localizedStringForKey:@"DELETE_PREGNANCY_INFORMATION_ALERT_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  v10 = WDBundle();
  v11 = [v10 localizedStringForKey:@"DELETE_ALL_PREGNANCY_INFORMATION_ALERT_DESCRIPTION" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  v12 = WDBundle();
  v13 = [v12 localizedStringForKey:@"DELETE_PREGNANCY_INFORMATION_ALERT_YES" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v9 message:v11 preferredStyle:0];
  popoverPresentationController = [v14 popoverPresentationController];
  [popoverPresentationController setSourceItem:senderCopy];

  v16 = MEMORY[0x277D750F8];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __85__WDDataListViewController__deleteAllPregnancySamplesConfirmationSender_deleteBlock___block_invoke;
  v26[3] = &unk_2796E7E48;
  v17 = blockCopy;
  v27 = v17;
  v18 = [v16 actionWithTitle:v13 style:2 handler:v26];
  [v14 addAction:v18];

  v19 = MEMORY[0x277D750F8];
  v20 = WDBundle();
  v21 = [v20 localizedStringForKey:@"CANCEL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v22 = [v19 actionWithTitle:v21 style:1 handler:0];
  [v14 addAction:v22];

  navigationController = [(WDDataListViewController *)self navigationController];
  presentedViewController = [navigationController presentedViewController];
  objc_opt_class();
  LOBYTE(v19) = objc_opt_isKindOfClass();

  if (v19)
  {
    _HKInitializeLogging();
    v25 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [WDDataListViewController _removePregnancyInformationFromMedicalIDConfirmationSender:deleteBlock:];
    }
  }

  else
  {
    [(WDDataListViewController *)self presentViewController:v14 animated:1 completion:0];
  }
}

- (void)_removePregnancyInformationFromMedicalID
{
  medicalIDData = self->_medicalIDData;
  if (medicalIDData)
  {
    [(_HKMedicalIDData *)medicalIDData setPregnancyStartDate:0];
    [(_HKMedicalIDData *)self->_medicalIDData setPregnancyEstimatedDueDate:0];
    medicalIDStore = self->_medicalIDStore;
    v5 = self->_medicalIDData;

    [(HKMedicalIDStore *)medicalIDStore updateMedicalIDData:v5 completion:&__block_literal_global_598];
  }
}

void __68__WDDataListViewController__removePregnancyInformationFromMedicalID__block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __68__WDDataListViewController__removePregnancyInformationFromMedicalID__block_invoke_cold_1();
    }
  }
}

- (void)_deleteAllWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v30 = *MEMORY[0x277D85DE8];
  _sampleTypesForDeleteAll = [(WDDataListViewController *)self _sampleTypesForDeleteAll];
  v6 = 1112;
  defaultQueryPredicate = [(WDDataListViewControllerDataProvider *)self->_dataProvider defaultQueryPredicate];
  if (defaultQueryPredicate)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = _sampleTypesForDeleteAll;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v16 = 1112;
      v17 = _sampleTypesForDeleteAll;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = [(WDProfile *)self->_profile healthStore:v16];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __50__WDDataListViewController__deleteAllWithOptions___block_invoke;
          v22[3] = &unk_2796E7E70;
          v22[4] = v12;
          v23 = defaultQueryPredicate;
          selfCopy = self;
          [v13 deleteObjectsOfType:v12 predicate:v23 options:optionsCopy & 2 withCompletion:v22];
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
      v6 = v16;
      _sampleTypesForDeleteAll = v17;
    }
  }

  else
  {
    healthStore = [(WDProfile *)self->_profile healthStore];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __50__WDDataListViewController__deleteAllWithOptions___block_invoke_600;
    v19[3] = &unk_2796E7718;
    v20 = _sampleTypesForDeleteAll;
    selfCopy2 = self;
    [healthStore deleteAllSamplesWithTypes:v20 sourceBundleIdentifier:0 options:optionsCopy & 2 completion:v19];

    v7 = v20;
  }

  [*(&self->super.super.super.super.super.isa + v6) deleteAllData];
  [(WDDataListViewController *)self setEditing:0 animated:1];
  [(WDDataListViewController *)self _reloadAllData];

  v15 = *MEMORY[0x277D85DE8];
}

void __50__WDDataListViewController__deleteAllWithOptions___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __50__WDDataListViewController__deleteAllWithOptions___block_invoke_cold_1(a1);
    }

    [*(a1 + 48) _reloadAllData];
  }
}

void __50__WDDataListViewController__deleteAllWithOptions___block_invoke_600(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __50__WDDataListViewController__deleteAllWithOptions___block_invoke_600_cold_1(a1);
    }

    [*(a1 + 40) _reloadAllData];
  }
}

- (id)_rightBarButtonItems
{
  v16[1] = *MEMORY[0x277D85DE8];
  dataProvider = [(WDDataListViewController *)self dataProvider];
  if (objc_opt_respondsToSelector())
  {
    dataProvider2 = [(WDDataListViewController *)self dataProvider];
    calendarDateSelectorVisible = [dataProvider2 calendarDateSelectorVisible];

    if (calendarDateSelectorVisible)
    {
      v6 = objc_alloc(MEMORY[0x277D751E0]);
      v7 = WDBundle();
      v8 = [v7 localizedStringForKey:@"CALENDAR" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
      editButtonItem = [v6 initWithTitle:v8 style:0 target:self action:sel__calendarDateSelectorButtonTapped_];

      [editButtonItem setEnabled:{-[WDDataListViewController _dataProviderEnabled](self, "_dataProviderEnabled")}];
      v10 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:0 suffix:@"DataList.Calendar"];
      [editButtonItem setAccessibilityIdentifier:v10];

      v15 = editButtonItem;
      v11 = &v15;
LABEL_7:
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

      goto LABEL_9;
    }
  }

  else
  {
  }

  if ([(WDDataListViewController *)self isEditEnabled])
  {
    editButtonItem = [(WDDataListViewController *)self editButtonItem];
    v16[0] = editButtonItem;
    v11 = v16;
    goto LABEL_7;
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_9:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_updateRightBarButtonItems
{
  _rightBarButtonItems = [(WDDataListViewController *)self _rightBarButtonItems];
  navigationItem = [(WDDataListViewController *)self navigationItem];
  [navigationItem setRightBarButtonItems:_rightBarButtonItems];
}

- (BOOL)_shouldShowSpinnerRowInSection:(int64_t)section
{
  dataProvider = [(WDDataListViewController *)self dataProvider];
  v6 = [dataProvider numberOfSections] - 1;

  if (v6 != section)
  {
    goto LABEL_5;
  }

  dataProvider2 = [(WDDataListViewController *)self dataProvider];
  v8 = [dataProvider2 numberOfObjectsForSection:section];

  if (!v8)
  {
    goto LABEL_5;
  }

  dataProvider3 = [(WDDataListViewController *)self dataProvider];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    dataProvider4 = [(WDDataListViewController *)self dataProvider];
    v12 = [dataProvider4 hasCompleteDataSet] ^ 1;
  }

  else
  {
LABEL_5:
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)_hasSpinnerRowRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  dataProvider = [(WDDataListViewController *)self dataProvider];
  section = [pathCopy section];

  LOBYTE(pathCopy) = v5 >= [dataProvider numberOfObjectsForSection:section];
  return pathCopy;
}

- (void)_tapGestureRecognizerAction:(id)action
{
  self->_showOriginalAppProvenance ^= 1u;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:self->_showOriginalAppProvenance forKey:@"ShowOriginalAppProvenance"];

  tableView = [(WDDataListViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = MEMORY[0x277D750C8];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __64__WDDataListViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v12 = &unk_2796E6DB8;
  objc_copyWeak(&v13, &location);
  v5 = [v4 actionWithHandler:&v9];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v9, v10, v11, v12}];

  v7 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:0 suffix:@"DataListViewController.DoneButton"];
  [v6 setAccessibilityIdentifier:v7];

  if ([(WDDataListViewController *)self isEditing])
  {
    [(WDDataListViewController *)self setLeftBarButtonItemReference:v6];
  }

  else
  {
    navigationItem = [(WDDataListViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v6];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __64__WDDataListViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  if ([(WDDataListViewController *)self isEditing])
  {

    [(WDDataListViewController *)self setLeftBarButtonItemReference:0];
  }

  else
  {
    navigationItem = [(WDDataListViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:0];
  }
}

void __47__WDDataListViewController__fetchMedicalIDData__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __68__WDDataListViewController__removePregnancyInformationFromMedicalID__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__WDDataListViewController__deleteAllWithOptions___block_invoke_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_2();
  v9 = v3;
  v10 = v4;
  v11 = v5;
  _os_log_error_impl(&dword_251E85000, v6, OS_LOG_TYPE_ERROR, "Error deleting samples of type %{public}@ with predicate %{public}@: %{public}@", v8, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __50__WDDataListViewController__deleteAllWithOptions___block_invoke_600_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_2();
  v6 = v2;
  _os_log_error_impl(&dword_251E85000, v3, OS_LOG_TYPE_ERROR, "Error deleting samples of types %{public}@: %{public}@", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end