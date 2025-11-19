@interface WDDataListViewController
- (BOOL)_dataProviderEnabled;
- (BOOL)_displayGuestModeAlert;
- (BOOL)_hasSpinnerRowRowAtIndexPath:(id)a3;
- (BOOL)_shouldShowSpinnerRowInSection:(int64_t)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)isEditEnabled;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (id)_defaultCellForTableView:(id)a3 cellStyle:(int64_t)a4 indexPath:(id)a5 object:(id)a6;
- (id)_deleteAllDataAlertMessage;
- (id)_overridenDisplayImageForSource:(id)a3;
- (id)_quantityCellForTableView:(id)a3 dataObjectSource:(id)a4;
- (id)_rightBarButtonItems;
- (id)_sampleAtIndexPath:(id)a3;
- (id)_sampleTypesForDeleteAll;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)_closestRowToDate:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_calendarDateSelectorButtonTapped:(id)a3;
- (void)_dataProviderDidUpdate;
- (void)_deleteAllButtonTapped:(id)a3;
- (void)_deleteAllPregnancySamplesConfirmationSender:(id)a3 deleteBlock:(id)a4;
- (void)_deleteAllWithOptions:(unint64_t)a3;
- (void)_deleteAssociatedSamplesConfirmationPlural:(BOOL)a3 sender:(id)a4 deleteBlock:(id)a5;
- (void)_deleteWorkoutSamplesConfirmationPlural:(BOOL)a3 sender:(id)a4 deleteBlock:(id)a5;
- (void)_fetchMedicalIDData;
- (void)_handleReturnedImage:(id)a3 forSource:(id)a4 cell:(id)a5 fetchError:(id)a6;
- (void)_handleReturnedImage:(id)a3 forSource:(id)a4 cell:(id)a5 tableView:(id)a6 fetchError:(id)a7;
- (void)_loadIconForSourceObject:(id)a3 onCell:(id)a4 ofTableView:(id)a5;
- (void)_reloadAllDataScrolledToDate:(id)a3;
- (void)_removePregnancyInformationFromMedicalID;
- (void)_removePregnancyInformationFromMedicalIDConfirmationSender:(id)a3 deleteBlock:(id)a4;
- (void)_tapGestureRecognizerAction:(id)a3;
- (void)_updateNavigationTitle;
- (void)_updateRightBarButtonItems;
- (void)dealloc;
- (void)monthViewController:(id)a3 didSelectDate:(id)a4;
- (void)performDeleteActionAtIndexPath:(id)a3 completionHandler:(id)a4;
- (void)presentDeleteConfirmation:(id)a3;
- (void)resetDataAndScrollToDate:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation WDDataListViewController

- (void)_updateNavigationTitle
{
  v3 = [(WDProfile *)self->_profile healthStore];
  v4 = WDGetProfileNameForHealthStore(v3);
  [(WDDataListViewControllerDataProvider *)self->_dataProvider setProfileName:v4];

  v5 = [(WDDataListViewControllerDataProvider *)self->_dataProvider profileName];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v10 = WDBundle();
    v7 = [v10 localizedStringForKey:@"ALL_DATA_TITLE_%@" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Tinker"];
    v8 = [(WDDataListViewControllerDataProvider *)self->_dataProvider profileName];
    v9 = [v6 localizedStringWithFormat:v7, v8];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D12730] object:0];

  [(WDDataListViewControllerDataProvider *)self->_dataProvider stopCollectingData];
  v5.receiver = self;
  v5.super_class = WDDataListViewController;
  [(WDDataListViewController *)&v5 dealloc];
}

- (BOOL)isEditEnabled
{
  v2 = [(WDDataListViewController *)self profile];
  v3 = [v2 healthStore];
  v4 = [v3 profileIdentifier];
  v5 = [v4 type] == 1;

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
  v3 = [(HKDisplayType *)self->_displayType displayTypeIdentifier];
  displayType = self->_displayType;
  if (v3 == 139)
  {
    v5 = [(HKDisplayType *)displayType sampleType];
    v15[0] = v5;
    v6 = [MEMORY[0x277CCD920] heartbeatSeriesType];
    v15[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
LABEL_5:

    goto LABEL_7;
  }

  v8 = [(HKDisplayType *)displayType displayTypeIdentifier];
  v9 = [(HKDisplayType *)self->_displayType sampleType];
  v5 = v9;
  if (v8 == 80)
  {
    v14[0] = v9;
    v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC978]];
    v14[1] = v6;
    v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC980]];
    v14[2] = v10;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];

    goto LABEL_5;
  }

  v13 = v9;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
LABEL_7:

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_reloadAllDataScrolledToDate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__WDDataListViewController__reloadAllDataScrolledToDate___block_invoke;
  v6[3] = &unk_2796E6BD8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (int64_t)_closestRowToDate:(id)a3
{
  v4 = a3;
  v5 = [(WDDataListViewController *)self dataProvider];
  v6 = [v5 numberOfObjectsForSection:0];

  v7 = v6 - 1;
  if (v6 >= 1)
  {
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = [(WDDataListViewController *)self dataProvider];
      v11 = [v10 objectAtIndex:v8 forSection:0];

      v12 = [MEMORY[0x277CBEA80] currentCalendar];
      v13 = [v11 endDate];
      v14 = [v12 startOfDayForDate:v13];

      LODWORD(v12) = [v14 hk_isBeforeOrEqualToDate:v4];
      if (v12)
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
  v3 = [(WDDataListViewControllerDataProvider *)self->_dataProvider numberOfSections];
  if (v3 < 1)
  {
    return 0;
  }

  v4 = v3;
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
  v4 = [(WDDataListViewController *)self view];
  [v4 setAccessibilityIdentifier:v3];

  v5 = objc_alloc(MEMORY[0x277D75E78]);
  v6 = WDBundle();
  v7 = [v6 localizedStringForKey:@"CHART_NO_DATA" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v8 = [v5 initWithFrame:v7 title:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  noContentView = self->_noContentView;
  self->_noContentView = v8;

  if ([(WDDataListViewControllerDataProvider *)self->_dataProvider cellStyle]== 2)
  {
    dataProvider = self->_dataProvider;
    v11 = [(WDDataListViewController *)self tableView];
    [(WDDataListViewControllerDataProvider *)dataProvider customizeTableView:v11];

    v12 = [(WDDataListViewController *)self tableView];
    [(WDDataListViewControllerDataProvider *)self->_dataProvider customEstimatedCellHeight];
    [v12 setEstimatedRowHeight:?];

    v13 = [(WDDataListViewController *)self tableView];
    [(WDDataListViewControllerDataProvider *)self->_dataProvider customCellHeight];
    v15 = v13;
  }

  else
  {
    v16 = [(WDDataListViewController *)self tableView];
    [v16 setEstimatedRowHeight:*MEMORY[0x277D12780]];

    v15 = [(WDDataListViewController *)self tableView];
    v13 = v15;
    v14 = *MEMORY[0x277D76F30];
  }

  [v15 setRowHeight:v14];

  v17 = [(WDDataListViewController *)self tableView];
  v18 = objc_opt_class();
  v19 = +[WDSpinnerTableViewCell defaultReuseIdentifier];
  [v17 registerClass:v18 forCellReuseIdentifier:v19];

  v20 = [(WDDataListViewController *)self tableView];
  [v20 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"HeaderView"];

  v21 = HKUIJoinStringsForAutomationIdentifier();
  v22 = [(WDDataListViewController *)self tableView];
  [v22 setAccessibilityIdentifier:v21];

  v23 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v23;

  [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
  v25 = [(WDDataListViewController *)self view];
  [v25 addSubview:self->_spinner];

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  v26 = [MEMORY[0x277CCDD30] sharedBehavior];
  LODWORD(v22) = [v26 isAppleInternalInstall];

  if (v22)
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
  v3 = [(WDDataListViewController *)self scrollToDate];
  [(WDDataListViewController *)self _reloadAllDataScrolledToDate:v3];

  [(WDDataListViewController *)self setScrollToDate:0];

  [(WDDataListViewController *)self _updateRightBarButtonItems];
}

- (void)viewWillLayoutSubviews
{
  v30.receiver = self;
  v30.super_class = WDDataListViewController;
  [(WDDataListViewController *)&v30 viewWillLayoutSubviews];
  v3 = [(WDDataListViewController *)self navigationController];
  v4 = [v3 navigationBar];
  [v4 frame];
  v6 = v5;

  v7 = [(WDDataListViewController *)self tabBarController];
  v8 = [v7 tabBar];
  [v8 frame];
  v10 = v9;

  v11 = [(WDDataListViewController *)self view];
  [v11 frame];
  v13 = v12;
  v15 = v14;

  [(UIActivityIndicatorView *)self->_spinner setCenter:v13 * 0.5, (v15 - v6 - v10) * 0.5];
  noContentView = self->_noContentView;
  v17 = [(WDDataListViewController *)self view];
  [v17 bounds];
  [(_UIContentUnavailableView *)noContentView setFrame:?];

  v18 = self->_noContentView;
  v19 = [(WDDataListViewController *)self view];
  [v19 center];
  v21 = v20;
  v22 = [(WDDataListViewController *)self view];
  [v22 center];
  v24 = v23;
  v25 = [(WDDataListViewController *)self view];
  [v25 safeAreaInsets];
  v27 = v26;
  v28 = [(WDDataListViewController *)self view];
  [v28 safeAreaInsets];
  [(_UIContentUnavailableView *)v18 setCenter:v21, v24 - (v27 + v29) * 0.5];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  v6 = v5;
  [v4 contentSize];
  v8 = v7;
  [v4 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v22.origin.x = v10;
  v22.origin.y = v12;
  v22.size.width = v14;
  v22.size.height = v16;
  v17 = v8 - (v6 + CGRectGetHeight(v22));
  v18 = [(WDDataListViewController *)self view];
  [v18 bounds];
  Height = CGRectGetHeight(v23);

  if (v17 < Height)
  {
    dataProvider = self->_dataProvider;

    [(WDDataListViewControllerDataProvider *)dataProvider viewControllerIsNearEndOfScreen];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 view];
  v8 = [v6 view];

  if (v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = [v5 view];
    objc_opt_class();
    v10 = objc_opt_isKindOfClass() ^ 1;
  }

  return v10 & 1;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:{@"HeaderView", a4}];
  v5 = [v4 textLabel];
  [v5 setNumberOfLines:0];

  v6 = [v4 textLabel];
  [v6 setLineBreakMode:1];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(WDDataListViewController *)self dataProvider];
  v7 = [v6 numberOfObjectsForSection:a4];

  return v7 + [(WDDataListViewController *)self _shouldShowSpinnerRowInSection:a4];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WDDataListViewController *)self _hasSpinnerRowRowAtIndexPath:v7];
  dataProvider = self->_dataProvider;
  if (!v8)
  {
    v11 = [v7 row];
    v12 = -[WDDataListViewControllerDataProvider objectAtIndex:forSection:](dataProvider, "objectAtIndex:forSection:", v11, [v7 section]);
    cellStyle = self->_cellStyle;
    if (cellStyle == 2)
    {
      v14 = [(WDDataListViewControllerDataProvider *)self->_dataProvider customCellForObject:v12 indexPath:v7 tableView:v6];
    }

    else if (cellStyle == 1)
    {
      v14 = [(WDDataListViewController *)self _defaultCellForTableView:v6 cellStyle:3 indexPath:v7 object:v12];
    }

    else
    {
      if (cellStyle)
      {
LABEL_12:

        goto LABEL_13;
      }

      v14 = [(WDDataListViewController *)self _quantityCellForTableView:v6 dataObjectSource:v12];
    }

    v11 = v14;
    goto LABEL_12;
  }

  v10 = self->_dataProvider;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(WDDataListViewControllerDataProvider *)self->_dataProvider customLoadingCellForRowAtIndexPath:v7 tableView:v6];
  }

  else
  {
    v15 = +[WDSpinnerTableViewCell defaultReuseIdentifier];
    v11 = [v6 dequeueReusableCellWithIdentifier:v15];
  }

LABEL_13:

  return v11;
}

- (void)_loadIconForSourceObject:(id)a3 onCell:(id)a4 ofTableView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 sourceRevision];
  v30 = [v11 source];

  if ([(HKDisplayType *)self->_displayType displayTypeIdentifier]!= 5)
  {
    goto LABEL_7;
  }

  v12 = [v30 _isPreferredSource];
  v29 = [v30 _isApplication];
  v13 = [v8 device];
  v14 = [v13 localIdentifier];

  [v30 bundleIdentifier];
  v15 = v10;
  v17 = v16 = v9;
  v18 = [v8 device];
  v19 = [v18 localIdentifier];
  v20 = [v17 isEqualToString:v19];

  v9 = v16;
  v10 = v15;
  if (!v12)
  {
    goto LABEL_7;
  }

  if ((v29 & 1) == 0 && v14 && (v20 & 1) == 0)
  {
    v21 = HKBluetoothIcon();
    v22 = [v9 iconImageView];
    [v22 setImage:v21];
  }

  else
  {
LABEL_7:
    v23 = [v8 device];
    v24 = [v23 _isConnectedGymDevice];

    if (!v24)
    {
      objc_initWeak(&location, self);
      v27 = [MEMORY[0x277D127A8] sharedImageManager];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __72__WDDataListViewController__loadIconForSourceObject_onCell_ofTableView___block_invoke;
      v36[3] = &unk_2796E6C50;
      v28 = v9;
      v37 = v28;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __72__WDDataListViewController__loadIconForSourceObject_onCell_ofTableView___block_invoke_2;
      v31[3] = &unk_2796E6CA0;
      objc_copyWeak(&v35, &location);
      v32 = v30;
      v33 = v28;
      v34 = v10;
      [v27 loadIconForSource:v32 syncHandler:v36 asyncHandler:v31];

      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
      goto LABEL_11;
    }

    v21 = [MEMORY[0x277D127A8] sharedImageManager];
    v22 = [v8 device];
    v25 = [v21 iconForDevice:v22];
    v26 = [v9 iconImageView];
    [v26 setImage:v25];
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

- (void)_handleReturnedImage:(id)a3 forSource:(id)a4 cell:(id)a5 tableView:(id)a6 fetchError:(id)a7
{
  v20 = a3;
  v12 = a5;
  if (v20 && !a7)
  {
    v13 = a4;
    v14 = [a6 indexPathForCell:v12];
    v15 = [(WDDataListViewController *)self dataProvider];
    v16 = [v15 objectAtIndex:objc_msgSend(v14 forSection:{"row"), objc_msgSend(v14, "section")}];
    v17 = [v16 sourceRevision];
    v18 = [v17 source];

    LODWORD(v15) = [v18 isEqual:v13];
    if (v15)
    {
      v19 = [v12 iconImageView];
      [v19 setImage:v20];
    }
  }
}

- (id)_quantityCellForTableView:(id)a3 dataObjectSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dequeueReusableCellWithIdentifier:@"QuantityCell"];
  if (!v8)
  {
    v8 = [[WDDataTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"QuantityCell"];
  }

  [(WDDataTableViewCell *)v8 setAccessoryType:1];
  v9 = [(WDDataListViewController *)self dataProvider];
  v10 = [v9 textForObject:v7];
  [(WDDataTableViewCell *)v8 setDisplayValue:v10];

  v11 = [(WDDataListViewController *)self dataProvider];
  v12 = [v11 secondaryTextForObject:v7];
  [(WDDataTableViewCell *)v8 setDateString:v12];

  v13 = [(WDDataListViewController *)self dataProvider];
  -[WDDataTableViewCell setDisplayValueAdjustsFontSizeToFitWidth:](v8, "setDisplayValueAdjustsFontSizeToFitWidth:", [v13 textAdjustsFontSizeToFitWidth]);

  v14 = [(WDDataListViewController *)self dataProvider];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_7;
  }

  v15 = [(WDDataListViewController *)self dataProvider];
  v16 = [v15 shouldHideSourceImageForObject:v7];

  if ((v16 & 1) == 0)
  {
LABEL_7:
    v17 = [v7 sourceRevision];
    v18 = [v17 source];

    [(WDDataTableViewCell *)v8 setSource:v18];
    v19 = [v7 sourceRevision];
    v20 = [v19 productType];

    objc_initWeak(&location, self);
    v21 = [MEMORY[0x277D127A8] sharedImageManager];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __71__WDDataListViewController__quantityCellForTableView_dataObjectSource___block_invoke;
    v33[3] = &unk_2796E7D10;
    v22 = v8;
    v34 = v22;
    v35 = self;
    v23 = v18;
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
    [v21 loadIconForSource:v24 productType:v20 syncHandler:v33 asyncHandler:v29];

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

- (void)_handleReturnedImage:(id)a3 forSource:(id)a4 cell:(id)a5 fetchError:(id)a6
{
  v18 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v18)
  {
    if (!v12)
    {
      v13 = [v11 source];
      v14 = [v13 isEqual:v10];

      if (v14)
      {
        v15 = [(WDDataListViewController *)self _overridenDisplayImageForSource:v10];
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = v18;
        }

        v17 = [v11 imageView];
        [v17 setImage:v16];
      }
    }
  }
}

- (id)_defaultCellForTableView:(id)a3 cellStyle:(int64_t)a4 indexPath:(id)a5 object:(id)a6
{
  v9 = a6;
  v10 = a3;
  v11 = [v10 dequeueReusableCellWithIdentifier:@"WDDataListViewControllerCell"];
  if (!v11)
  {
    v11 = [[WDDataListViewControllerCell alloc] initWithStyle:a4 reuseIdentifier:@"WDDataListViewControllerCell"];
  }

  v12 = [(WDDataListViewControllerDataProvider *)self->_dataProvider textForObject:v9];
  v13 = [(WDDataListViewControllerDataProvider *)self->_dataProvider secondaryTextForObject:v9];
  v14 = [(WDDataListViewControllerCell *)v11 titleTextLabel];
  [v14 setText:v12];

  v15 = [(WDDataListViewControllerCell *)v11 subtitleTextLabel];
  [v15 setText:v13];

  [(WDDataListViewController *)self _loadIconForSourceObject:v9 onCell:v11 ofTableView:v10];

  return v11;
}

- (id)_overridenDisplayImageForSource:(id)a3
{
  v4 = a3;
  if (-[HKDisplayType displayTypeIdentifier](self->_displayType, "displayTypeIdentifier") == 14 && ([v4 bundleIdentifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"com.apple.NanoOxygenSaturation.watchkitapp"), v5, v6) && !self->_showOriginalAppProvenance)
  {
    v9 = [v4 _productType];
    v10 = [v9 hasPrefix:*MEMORY[0x277CCC8C8]];

    if (v10)
    {
      v11 = [v4 _productType];
    }

    else
    {
      v11 = @"Watch";
    }

    v12 = [MEMORY[0x277D12B20] appleDeviceIconForHardwareVersion:v11];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (![(WDDataListViewController *)self _hasSpinnerRowRowAtIndexPath:v6])
  {
    v7 = [(WDDataListViewControllerDataProvider *)self->_dataProvider viewControllerForItemAtIndexPath:v6];
    v8 = [(WDDataListViewController *)self navigationController];
    [v8 hk_showViewController:v7 animated:1];

    [v9 deselectRowAtIndexPath:v6 animated:1];
  }
}

- (id)_sampleAtIndexPath:(id)a3
{
  dataProvider = self->_dataProvider;
  v4 = a3;
  v5 = [v4 row];
  v6 = [v4 section];

  return [(WDDataListViewControllerDataProvider *)dataProvider objectAtIndex:v5 forSection:v6];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(WDDataListViewController *)self isEditEnabled])
  {
    dataProvider = self->_dataProvider;
    if (objc_opt_respondsToSelector())
    {
      v7 = [(WDDataListViewControllerDataProvider *)self->_dataProvider canEditRowAtIndexPath:v5];
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

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(WDDataListViewController *)self tableView:a3 canEditRowAtIndexPath:v6])
  {
    v7 = MEMORY[0x277D753C0];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __89__WDDataListViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
    v18 = &unk_2796E7D88;
    v19 = self;
    v20 = v6;
    v8 = [v7 contextualActionWithStyle:1 title:0 handler:&v15];
    v9 = [MEMORY[0x277D755B8] systemImageNamed:{@"trash.fill", v15, v16, v17, v18, v19}];
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

- (void)performDeleteActionAtIndexPath:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __77__WDDataListViewController_performDeleteActionAtIndexPath_completionHandler___block_invoke;
  v27[3] = &unk_2796E7DB0;
  v27[4] = self;
  v8 = v6;
  v28 = v8;
  v9 = v7;
  v29 = v9;
  v10 = MEMORY[0x253092270](v27);
  v11 = [(WDDataListViewController *)self tableView];
  v12 = [v11 cellForRowAtIndexPath:v8];

  objc_initWeak(&location, self);
  v13 = [(HKDisplayType *)self->_displayType behavior];
  v14 = [v13 supportsAssociatedSamples];

  displayType = self->_displayType;
  if (v14)
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
    v17 = [(HKDisplayType *)displayType displayTypeIdentifierString];
    v18 = HKDisplayTypeIdentifierToString();
    if ([v17 isEqualToString:v18])
    {
      v19 = [(_HKMedicalIDData *)self->_medicalIDData pregnancyEstimatedDueDate];

      if (v19)
      {
        v16 = [(WDDataListViewController *)self _sampleAtIndexPath:v8];
        v20 = [v16 endDate];
        v21 = [MEMORY[0x277CBEAA8] distantFuture];
        v22 = [v20 isEqualToDate:v21];

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

- (void)monthViewController:(id)a3 didSelectDate:(id)a4
{
  [(WDDataListViewController *)self resetDataAndScrollToDate:a4];

  [(WDDataListViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)resetDataAndScrollToDate:(id)a3
{
  v7 = a3;
  [(WDDataListViewController *)self setScrollToDate:?];
  v4 = [(WDDataListViewController *)self dataProvider];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WDDataListViewController *)self dataProvider];
    [v6 viewControllerWantsDataIncludingDate:v7];

    [(UIActivityIndicatorView *)self->_spinner startAnimating];
    [(WDDataListViewController *)self _reloadAllData];
  }
}

- (void)_calendarDateSelectorButtonTapped:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277D12918]);
  v5 = [(WDProfile *)self->_profile healthStore];
  v6 = [(WDProfile *)self->_profile dateCache];
  v7 = [MEMORY[0x277CBEAA8] date];
  v13 = [v4 initWithHealthStore:v5 dateCache:v6 date:v7];

  v8 = [(HKDisplayType *)self->_displayType sampleType];
  [v13 setSampleType:v8];

  v9 = [(HKDisplayType *)self->_displayType color];
  [v13 setSampleColor:v9];

  v10 = [(WDDataListViewController *)self dataProvider];
  v11 = [v10 defaultQueryPredicate];
  [v13 setAdditionalSamplePredicate:v11];

  [v13 setDelegate:self];
  v12 = [objc_alloc(MEMORY[0x277D12978]) initWithRootViewController:v13];
  [(WDDataListViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_deleteAllButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(HKDisplayType *)self->_displayType behavior];
  v6 = [v5 supportsAssociatedSamples];

  objc_initWeak(&location, self);
  if (!v6)
  {
    v13 = [(HKDisplayType *)self->_displayType displayTypeIdentifierString];
    v14 = HKDisplayTypeIdentifierToString();
    if ([v13 isEqualToString:v14])
    {
      v15 = [(_HKMedicalIDData *)self->_medicalIDData pregnancyEstimatedDueDate];

      if (v15)
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __51__WDDataListViewController__deleteAllButtonTapped___block_invoke_4;
        v16[3] = &unk_2796E7E20;
        objc_copyWeak(&v17, &location);
        [(WDDataListViewController *)self _deleteAllPregnancySamplesConfirmationSender:v4 deleteBlock:v16];
        objc_destroyWeak(&v17);
        goto LABEL_13;
      }
    }

    else
    {
    }

    [(WDDataListViewController *)self presentDeleteConfirmation:v4];
    goto LABEL_13;
  }

  v7 = self->_dataProvider;
  v8 = v7;
  if (v7)
  {
    v9 = [(WDDataListViewControllerDataProvider *)v7 samples];
    v10 = [v9 allSamples];
    v11 = [v10 hk_containsObjectPassingTest:&__block_literal_global_10];

    if (v11)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __51__WDDataListViewController__deleteAllButtonTapped___block_invoke_2;
      v20[3] = &unk_2796E7E20;
      v12 = &v21;
      objc_copyWeak(&v21, &location);
      [(WDDataListViewController *)self _deleteAssociatedSamplesConfirmationPlural:1 sender:v4 deleteBlock:v20];
    }

    else
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __51__WDDataListViewController__deleteAllButtonTapped___block_invoke_3;
      v18[3] = &unk_2796E7E20;
      v12 = &v19;
      objc_copyWeak(&v19, &location);
      [(WDDataListViewController *)self _deleteWorkoutSamplesConfirmationPlural:1 sender:v4 deleteBlock:v18];
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
    v4 = [v3 BOOLValue];

    v5 = [v2 getPreferenceFor:*MEMORY[0x277CEFAF8]];
    v6 = [v5 BOOLValue];

    LOBYTE(v5) = v4 | v6;
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

- (void)presentDeleteConfirmation:(id)a3
{
  v4 = MEMORY[0x277D75110];
  v5 = a3;
  v6 = [(WDDataListViewController *)self _deleteAllDataAlertMessage];
  v7 = [v4 alertControllerWithTitle:v6 message:0 preferredStyle:0];

  v8 = [v7 popoverPresentationController];
  [v8 setSourceItem:v5];

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

- (void)_deleteAssociatedSamplesConfirmationPlural:(BOOL)a3 sender:(id)a4 deleteBlock:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = a4;
  v9 = WDBundle();
  v10 = v9;
  v11 = !v6;
  if (v6)
  {
    v12 = @"DELETE_ALL_ASSOCIATED_MESSAGE_PLURAL";
  }

  else
  {
    v12 = @"DELETE_ALL_ASSOCIATED_MESSAGE";
  }

  if (v6)
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

  v24 = [v23 popoverPresentationController];
  [v24 setSourceItem:v8];

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
  v30 = v7;
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

- (void)_deleteWorkoutSamplesConfirmationPlural:(BOOL)a3 sender:(id)a4 deleteBlock:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  v10 = WDBundle();
  v11 = v10;
  v12 = !v6;
  if (v6)
  {
    v13 = @"DELETE_WORKOUT_PLURAL_ALERT_TITLE_FITNESS_JR";
  }

  else
  {
    v13 = @"DELETE_WORKOUT_ALERT_TITLE_FITNESS_JR";
  }

  if (v6)
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
  v22 = [v21 popoverPresentationController];
  [v22 setSourceItem:v9];

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
  v31 = v8;
  v28 = v8;
  v29 = [v27 actionWithTitle:v20 style:0 handler:v30];
  [v21 addAction:v29];

  [(WDDataListViewController *)self presentViewController:v21 animated:1 completion:0];
}

- (void)_removePregnancyInformationFromMedicalIDConfirmationSender:(id)a3 deleteBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = WDBundle();
  v8 = [v7 localizedStringForKey:@"REMOVE_PREGNANCY_FROM_MEDICAL_ID_ALERT_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  v9 = WDBundle();
  v10 = [v9 localizedStringForKey:@"REMOVE_PREGNANCY_FROM_MEDICAL_ID_ALERT_DESCRIPTION" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v10 preferredStyle:0];
  v12 = [v11 popoverPresentationController];
  [v12 setSourceItem:v6];

  v13 = MEMORY[0x277D750F8];
  v14 = WDBundle();
  v15 = [v14 localizedStringForKey:@"REMOVE_PREGNANCY_FROM_MEDICAL_ID_ALERT_PRIMARY_ACTION" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __99__WDDataListViewController__removePregnancyInformationFromMedicalIDConfirmationSender_deleteBlock___block_invoke;
  v29[3] = &unk_2796E7E48;
  v16 = v5;
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

  v23 = [(WDDataListViewController *)self navigationController];
  v24 = [v23 presentedViewController];
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

- (void)_deleteAllPregnancySamplesConfirmationSender:(id)a3 deleteBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = WDBundle();
  v9 = [v8 localizedStringForKey:@"DELETE_PREGNANCY_INFORMATION_ALERT_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  v10 = WDBundle();
  v11 = [v10 localizedStringForKey:@"DELETE_ALL_PREGNANCY_INFORMATION_ALERT_DESCRIPTION" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  v12 = WDBundle();
  v13 = [v12 localizedStringForKey:@"DELETE_PREGNANCY_INFORMATION_ALERT_YES" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v9 message:v11 preferredStyle:0];
  v15 = [v14 popoverPresentationController];
  [v15 setSourceItem:v7];

  v16 = MEMORY[0x277D750F8];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __85__WDDataListViewController__deleteAllPregnancySamplesConfirmationSender_deleteBlock___block_invoke;
  v26[3] = &unk_2796E7E48;
  v17 = v6;
  v27 = v17;
  v18 = [v16 actionWithTitle:v13 style:2 handler:v26];
  [v14 addAction:v18];

  v19 = MEMORY[0x277D750F8];
  v20 = WDBundle();
  v21 = [v20 localizedStringForKey:@"CANCEL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v22 = [v19 actionWithTitle:v21 style:1 handler:0];
  [v14 addAction:v22];

  v23 = [(WDDataListViewController *)self navigationController];
  v24 = [v23 presentedViewController];
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

- (void)_deleteAllWithOptions:(unint64_t)a3
{
  v3 = a3;
  v30 = *MEMORY[0x277D85DE8];
  v5 = [(WDDataListViewController *)self _sampleTypesForDeleteAll];
  v6 = 1112;
  v18 = [(WDDataListViewControllerDataProvider *)self->_dataProvider defaultQueryPredicate];
  if (v18)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v16 = 1112;
      v17 = v5;
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
          v23 = v18;
          v24 = self;
          [v13 deleteObjectsOfType:v12 predicate:v23 options:v3 & 2 withCompletion:v22];
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
      v6 = v16;
      v5 = v17;
    }
  }

  else
  {
    v14 = [(WDProfile *)self->_profile healthStore];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __50__WDDataListViewController__deleteAllWithOptions___block_invoke_600;
    v19[3] = &unk_2796E7718;
    v20 = v5;
    v21 = self;
    [v14 deleteAllSamplesWithTypes:v20 sourceBundleIdentifier:0 options:v3 & 2 completion:v19];

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
  v3 = [(WDDataListViewController *)self dataProvider];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(WDDataListViewController *)self dataProvider];
    v5 = [v4 calendarDateSelectorVisible];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x277D751E0]);
      v7 = WDBundle();
      v8 = [v7 localizedStringForKey:@"CALENDAR" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
      v9 = [v6 initWithTitle:v8 style:0 target:self action:sel__calendarDateSelectorButtonTapped_];

      [v9 setEnabled:{-[WDDataListViewController _dataProviderEnabled](self, "_dataProviderEnabled")}];
      v10 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:0 suffix:@"DataList.Calendar"];
      [v9 setAccessibilityIdentifier:v10];

      v15 = v9;
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
    v9 = [(WDDataListViewController *)self editButtonItem];
    v16[0] = v9;
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
  v4 = [(WDDataListViewController *)self _rightBarButtonItems];
  v3 = [(WDDataListViewController *)self navigationItem];
  [v3 setRightBarButtonItems:v4];
}

- (BOOL)_shouldShowSpinnerRowInSection:(int64_t)a3
{
  v5 = [(WDDataListViewController *)self dataProvider];
  v6 = [v5 numberOfSections] - 1;

  if (v6 != a3)
  {
    goto LABEL_5;
  }

  v7 = [(WDDataListViewController *)self dataProvider];
  v8 = [v7 numberOfObjectsForSection:a3];

  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = [(WDDataListViewController *)self dataProvider];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(WDDataListViewController *)self dataProvider];
    v12 = [v11 hasCompleteDataSet] ^ 1;
  }

  else
  {
LABEL_5:
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)_hasSpinnerRowRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [(WDDataListViewController *)self dataProvider];
  v7 = [v4 section];

  LOBYTE(v4) = v5 >= [v6 numberOfObjectsForSection:v7];
  return v4;
}

- (void)_tapGestureRecognizerAction:(id)a3
{
  self->_showOriginalAppProvenance ^= 1u;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 setBool:self->_showOriginalAppProvenance forKey:@"ShowOriginalAppProvenance"];

  v5 = [(WDDataListViewController *)self tableView];
  [v5 reloadData];
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
    v8 = [(WDDataListViewController *)self navigationItem];
    [v8 setLeftBarButtonItem:v6];
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
    v3 = [(WDDataListViewController *)self navigationItem];
    [v3 setLeftBarButtonItem:0];
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