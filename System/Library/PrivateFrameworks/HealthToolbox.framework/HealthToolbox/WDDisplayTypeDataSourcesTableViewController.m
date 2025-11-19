@interface WDDisplayTypeDataSourcesTableViewController
- (BOOL)_canEditDataSources;
- (BOOL)_isPrimaryProfile;
- (BOOL)_objectTypeRequiresPerObjectAuthorization;
- (BOOL)_sourceIsEnabled:(id)a3;
- (BOOL)showDataSourcesSectionOnly;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (WDDisplayTypeDataSourcesTableViewController)initWithCoder:(id)a3;
- (WDDisplayTypeDataSourcesTableViewController)initWithDisplayType:(id)a3 displayCategory:(id)a4 sourceOrderController:(id)a5 profile:(id)a6;
- (WDDisplayTypeDataSourcesTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (WDDisplayTypeDataSourcesTableViewController)initWithStyle:(int64_t)a3;
- (id)_authorizationStatusesWithAuth:(int64_t)a3;
- (id)_createIndexPathsWithSection:(int64_t)a3 startingRow:(int64_t)a4 numIndices:(int64_t)a5;
- (id)_dataSourceCellForTableView:(id)a3 row:(unint64_t)a4;
- (id)_fetchAuthorizationRecordsBySourceForType:(id)a3;
- (id)_fetchBloodPressureAuthorizationRecordsBySource;
- (id)_makeDataListViewControllerForSource:(id)a3;
- (id)_noneTableViewCell;
- (id)_readerSourceCellForTableView:(id)a3 sourceArray:(id)a4 row:(unint64_t)a5 group:(int64_t)a6;
- (id)createSectionIdentifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)sectionForSectionIdentifier:(int64_t)a3;
- (int64_t)sectionIdentifierForSection:(int64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addDataSources:(id)a3;
- (void)_fetchAuthorizationRecordsBySourceForType:(id)a3 completion:(id)a4;
- (void)_fetchDataSourcesForSampleType:(id)a3 completion:(id)a4;
- (void)_fetchOrderedSourcesForType:(id)a3 completion:(id)a4;
- (void)_gatherDataFromDataSource:(id)a3;
- (void)_handleReturnedImage:(id)a3 forSource:(id)a4 cell:(id)a5 tableView:(id)a6 fetchError:(id)a7;
- (void)_loadDataSource;
- (void)_refreshUI;
- (void)_sortDataSources;
- (void)_sourceIsEnabledDidChange:(id)a3;
- (void)_updateOrderedSources;
- (void)_willDisableSource:(id)a3;
- (void)_willEnableSource:(id)a3;
- (void)setSourceListDataSource:(id)a3;
- (void)sourceListDataSourceDidUpdate:(id)a3;
- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)updateHeaderView;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
@end

@implementation WDDisplayTypeDataSourcesTableViewController

- (WDDisplayTypeDataSourcesTableViewController)initWithDisplayType:(id)a3 displayCategory:(id)a4 sourceOrderController:(id)a5 profile:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v51.receiver = self;
  v51.super_class = WDDisplayTypeDataSourcesTableViewController;
  v15 = [(HKTableViewController *)&v51 initWithUsingInsetStyling:1];
  v16 = v15;
  if (v15)
  {
    v15->_isLoaded = 0;
    objc_storeStrong(&v15->_displayType, a3);
    objc_storeStrong(&v16->_displayCategory, a4);
    objc_storeStrong(&v16->_sourceOrderController, a5);
    objc_storeStrong(&v16->_profile, a6);
    v17 = [v14 healthStore];
    healthStore = v16->_healthStore;
    v16->_healthStore = v17;

    v19 = objc_alloc(MEMORY[0x277CCD7D0]);
    v20 = [v14 healthStore];
    v21 = [v19 initWithHealthStore:v20];
    profileStore = v16->_profileStore;
    v16->_profileStore = v21;

    v23 = objc_alloc(MEMORY[0x277CCD060]);
    v24 = [v14 healthStore];
    v25 = [v23 initWithHealthStore:v24];
    authorizationStore = v16->_authorizationStore;
    v16->_authorizationStore = v25;

    v27 = [MEMORY[0x277CBEB58] set];
    dataSources = v16->_dataSources;
    v16->_dataSources = v27;

    v29 = [MEMORY[0x277CBEB18] array];
    orderedDataSources = v16->_orderedDataSources;
    v16->_orderedDataSources = v29;

    readerAppSources = v16->_readerAppSources;
    v32 = MEMORY[0x277CBEBF8];
    v16->_readerAppSources = MEMORY[0x277CBEBF8];

    readerResearchStudySources = v16->_readerResearchStudySources;
    v16->_readerResearchStudySources = v32;

    v34 = [MEMORY[0x277CBEB38] dictionary];
    authorizationRecordsBySource = v16->_authorizationRecordsBySource;
    v16->_authorizationRecordsBySource = v34;

    v36 = [MEMORY[0x277CBEB58] set];
    sourcesPendingToggleOn = v16->_sourcesPendingToggleOn;
    v16->_sourcesPendingToggleOn = v36;

    v38 = [MEMORY[0x277CBEB58] set];
    sourcesPendingToggleOff = v16->_sourcesPendingToggleOff;
    v16->_sourcesPendingToggleOff = v38;

    v16->_shouldInsetSectionContentForDataSourceDataList = 0;
    v40 = [(WDDisplayTypeDataSourcesTableViewController *)v16 createSectionIdentifiers];
    sectionIdentifiers = v16->_sectionIdentifiers;
    v16->_sectionIdentifiers = v40;

    LODWORD(v32) = [(WDDisplayTypeDataSourcesTableViewController *)v16 showDataSourcesSectionOnly];
    v42 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v43 = v42;
    if (v32)
    {
      v44 = [v42 localizedStringForKey:@"SHARE_DATA_ONLY_TITLE" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
      [(WDDisplayTypeDataSourcesTableViewController *)v16 setTitle:v44];

      if ([(WDDisplayTypeDataSourcesTableViewController *)v16 _isPrimaryProfile])
      {
LABEL_9:
        [(WDDisplayTypeDataSourcesTableViewController *)v16 setModalPresentationStyle:2];
        goto LABEL_10;
      }

      v45 = [(WDProfile *)v16->_profile healthStore];
      v43 = WDGetProfileNameForHealthStore(v45);

      if (!v43)
      {
LABEL_8:

        goto LABEL_9;
      }

      v46 = MEMORY[0x277CCACA8];
      v47 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v48 = [v47 localizedStringForKey:@"SHARE_DATA_ONLY_TITLE_%@" value:&stru_28641D9B8 table:@"HealthUI-Localizable-tinker"];
      v49 = [v46 localizedStringWithFormat:v48, v43];
      [(WDDisplayTypeDataSourcesTableViewController *)v16 setTitle:v49];
    }

    else
    {
      v47 = [v42 localizedStringForKey:@"SHARE_DATA_TITLE" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
      [(WDDisplayTypeDataSourcesTableViewController *)v16 setTitle:v47];
    }

    goto LABEL_8;
  }

LABEL_10:

  return v16;
}

- (WDDisplayTypeDataSourcesTableViewController)initWithStyle:(int64_t)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (WDDisplayTypeDataSourcesTableViewController)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = WDDisplayTypeDataSourcesTableViewController;
  return [(WDDisplayTypeDataSourcesTableViewController *)&v4 initWithCoder:a3];
}

- (WDDisplayTypeDataSourcesTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (void)setSourceListDataSource:(id)a3
{
  v5 = a3;
  sourceListDataSource = self->_sourceListDataSource;
  if (sourceListDataSource != v5)
  {
    v7 = v5;
    [(HKSourceListDataSource *)sourceListDataSource unregisterObserver:self];
    objc_storeStrong(&self->_sourceListDataSource, a3);
    sourceListDataSource = [(HKSourceListDataSource *)self->_sourceListDataSource registerObserver:self];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](sourceListDataSource, v5);
}

- (void)updateHeaderView
{
  headerView = self->_headerView;
  v4 = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
  [v4 bounds];
  v6 = v5;
  LODWORD(v5) = 1148846080;
  LODWORD(v7) = 1112014848;
  [(HKTitledIconHeaderView *)headerView systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:0.0 verticalFittingPriority:v5, v7];

  [(HKTitledIconHeaderView *)self->_headerView bounds];
  [(HKTitledIconHeaderView *)self->_headerView setBounds:?];
  v8 = self->_headerView;
  v9 = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
  [v9 setTableHeaderView:v8];
}

- (void)viewDidLoad
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = WDDisplayTypeDataSourcesTableViewController;
  [(HKTableViewController *)&v21 viewDidLoad];
  v3 = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
  [v3 setRowHeight:*MEMORY[0x277D76F30]];
  [v3 setAllowsSelectionDuringEditing:1];
  [v3 setEstimatedRowHeight:*MEMORY[0x277D12780]];
  v4 = HKUIJoinStringsForAutomationIdentifier();
  [v3 setAccessibilityIdentifier:v4];

  v5 = [MEMORY[0x277D755D0] configurationWithPointSize:50.0];
  v6 = [(HKDisplayType *)self->_displayType shareIcon];
  v7 = [v6 imageByApplyingSymbolConfiguration:v5];

  v8 = objc_alloc_init(MEMORY[0x277D12B08]);
  headerView = self->_headerView;
  self->_headerView = v8;

  v10 = self->_headerView;
  v11 = [(HKDisplayType *)self->_displayType localization];
  v12 = [v11 displayName];
  [(HKTitledIconHeaderView *)v10 setTitle:v12];

  [(HKTitledIconHeaderView *)self->_headerView setIconImage:v7];
  v13 = self->_headerView;
  v14 = [(HKDisplayCategory *)self->_displayCategory color];
  [(HKTitledIconHeaderView *)v13 setIconImageTint:v14];

  [(WDDisplayTypeDataSourcesTableViewController *)self _loadDataSource];
  objc_initWeak(&location, self);
  v22[0] = objc_opt_class();
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__WDDisplayTypeDataSourcesTableViewController_viewDidLoad__block_invoke;
  v18[3] = &unk_2796E7740;
  objc_copyWeak(&v19, &location);
  v16 = [(WDDisplayTypeDataSourcesTableViewController *)self registerForTraitChanges:v15 withHandler:v18];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  v17 = *MEMORY[0x277D85DE8];
}

void __58__WDDisplayTypeDataSourcesTableViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateHeaderView];
}

- (id)createSectionIdentifiers
{
  if ([(WDDisplayTypeDataSourcesTableViewController *)self showDataSourcesSectionOnly])
  {
    return &unk_28642DF78;
  }

  else
  {
    return &unk_28642DF90;
  }
}

- (BOOL)showDataSourcesSectionOnly
{
  if ([(WDDisplayTypeDataSourcesTableViewController *)self _objectTypeRequiresPerObjectAuthorization])
  {
    return 1;
  }

  else
  {
    return ![(WDDisplayTypeDataSourcesTableViewController *)self _isPrimaryProfile];
  }
}

- (BOOL)_objectTypeRequiresPerObjectAuthorization
{
  v2 = [(HKDisplayType *)self->_displayType objectType];
  v3 = [v2 requiresPerObjectAuthorization];

  return v3;
}

- (BOOL)_isPrimaryProfile
{
  v2 = [(WDProfile *)self->_profile healthStore];
  v3 = [v2 profileIdentifier];
  v4 = [v3 type] == 1;

  return v4;
}

- (int64_t)sectionIdentifierForSection:(int64_t)a3
{
  v3 = [(NSArray *)self->_sectionIdentifiers objectAtIndexedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)sectionForSectionIdentifier:(int64_t)a3
{
  sectionIdentifiers = self->_sectionIdentifiers;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSArray *)sectionIdentifiers indexOfObject:v4];

  return v5;
}

- (void)_gatherDataFromDataSource:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = [a3 sources];
  v5 = [v4 allSources];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __73__WDDisplayTypeDataSourcesTableViewController__gatherDataFromDataSource___block_invoke;
  v69[3] = &unk_2796E7768;
  v69[4] = self;
  v6 = [v5 hk_filter:v69];
  v50 = [v6 mutableCopy];

  v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v4 allSources];
  v49 = [v8 hk_mapToDictionary:&__block_literal_global_5];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v51 = v4;
  v9 = [v4 orderedAppSources];
  v10 = [v9 countByEnumeratingWithState:&v65 objects:v72 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v66;
    do
    {
      v13 = 0;
      do
      {
        if (*v66 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v65 + 1) + 8 * v13);
        v15 = [(WDDisplayTypeDataSourcesTableViewController *)self loadedAuthorizationRecordsBySource];
        v16 = [v14 source];
        v17 = [v15 objectForKeyedSubscript:v16];

        if (v17)
        {
          if ([v17 requestedReading])
          {
            [v52 addObject:v14];
          }

          [(NSMutableDictionary *)v7 setObject:v17 forKeyedSubscript:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v11);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v18 = [v51 orderedResearchStudySources];
  v19 = [v18 countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v62;
    do
    {
      v22 = 0;
      do
      {
        if (*v62 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v61 + 1) + 8 * v22);
        v24 = [(WDDisplayTypeDataSourcesTableViewController *)self loadedAuthorizationRecordsBySource];
        v25 = [v23 source];
        v26 = [v24 objectForKeyedSubscript:v25];

        if (v26)
        {
          if ([v26 requestedReading])
          {
            [v52 addObject:v23];
          }

          [(NSMutableDictionary *)v7 setObject:v26 forKeyedSubscript:v23];
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v20);
  }

  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v28 = [(WDDisplayTypeDataSourcesTableViewController *)self loadedOrderedDataSources];
  v29 = [v28 countByEnumeratingWithState:&v57 objects:v70 count:16];
  v30 = v49;
  if (v29)
  {
    v31 = v29;
    v32 = *v58;
    do
    {
      v33 = 0;
      do
      {
        if (*v58 != v32)
        {
          objc_enumerationMutation(v28);
        }

        v34 = [v30 objectForKeyedSubscript:{*(*(&v57 + 1) + 8 * v33), v49}];
        if (v34)
        {
          [(NSMutableArray *)v27 addObject:v34];
        }

        ++v33;
      }

      while (v31 != v33);
      v31 = [v28 countByEnumeratingWithState:&v57 objects:v70 count:16];
    }

    while (v31);
  }

  orderedDataSources = self->_orderedDataSources;
  self->_orderedDataSources = v27;
  v36 = v27;

  authorizationRecordsBySource = self->_authorizationRecordsBySource;
  self->_authorizationRecordsBySource = v7;
  v38 = v7;

  [(WDDisplayTypeDataSourcesTableViewController *)self _addDataSources:v50];
  [(WDDisplayTypeDataSourcesTableViewController *)self _sortDataSources];
  v39 = [v51 orderedAppSources];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __73__WDDisplayTypeDataSourcesTableViewController__gatherDataFromDataSource___block_invoke_3;
  v55[3] = &unk_2796E7768;
  v40 = v52;
  v56 = v40;
  v41 = [v39 hk_filter:v55];

  readerAppSources = self->_readerAppSources;
  self->_readerAppSources = v41;
  v43 = v41;

  v44 = [v51 orderedResearchStudySources];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __73__WDDisplayTypeDataSourcesTableViewController__gatherDataFromDataSource___block_invoke_4;
  v53[3] = &unk_2796E7768;
  v54 = v40;
  v45 = v40;
  v46 = [v44 hk_filter:v53];

  readerResearchStudySources = self->_readerResearchStudySources;
  self->_readerResearchStudySources = v46;

  v48 = *MEMORY[0x277D85DE8];
}

uint64_t __73__WDDisplayTypeDataSourcesTableViewController__gatherDataFromDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 loadedAllDataSources];
  v6 = [v4 source];
  v7 = [v5 containsObject:v6];

  v8 = [*(a1 + 32) loadedAuthorizationRecordsBySource];
  v9 = [v4 source];

  v10 = [v8 objectForKeyedSubscript:v9];
  LODWORD(v6) = [v10 requestedSharing];

  return (v7 | v6) & 1;
}

void __73__WDDisplayTypeDataSourcesTableViewController__gatherDataFromDataSource___block_invoke_2(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 source];
  (a3)[2](v5, v7, v6);
}

- (void)_refreshUI
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
  v4 = [v3 window];

  if (v4)
  {
    isLoaded = self->_isLoaded;
    self->_isLoaded = 1;
    if ([(WDDisplayTypeDataSourcesTableViewController *)self _canEditDataSources])
    {
      v6 = [(WDDisplayTypeDataSourcesTableViewController *)self editButtonItem];
      v7 = [(WDDisplayTypeDataSourcesTableViewController *)self navigationItem];
      [v7 setRightBarButtonItem:v6];
    }

    else
    {
      v6 = [(WDDisplayTypeDataSourcesTableViewController *)self navigationItem];
      [v6 setRightBarButtonItem:0];
    }

    headerView = self->_headerView;
    v10 = [(HKDisplayType *)self->_displayType localization];
    v11 = [v10 displayName];
    [(HKTitledIconHeaderView *)headerView setTitle:v11];

    v12 = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
    v13 = v12;
    if (isLoaded)
    {
      [v12 reloadData];
    }

    else
    {
      [v12 beginUpdates];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __57__WDDisplayTypeDataSourcesTableViewController__refreshUI__block_invoke;
      v27[3] = &unk_2796E77B0;
      v27[4] = self;
      v13 = MEMORY[0x253092270](v27);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = self->_sectionIdentifiers;
      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        do
        {
          v18 = 0;
          do
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v13[2](v13, [*(*(&v23 + 1) + 8 * v18++) intValue]);
          }

          while (v16 != v18);
          v16 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v16);
      }

      v19 = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
      [v19 endUpdates];
    }

    v20 = [(WDDisplayTypeDataSourcesTableViewController *)self isEditing];
    v21 = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
    [v21 setEditing:0];

    v8 = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
    [v8 setEditing:v20];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251E85000, v8, OS_LOG_TYPE_DEFAULT, "WDDisplayTypeDataSourcesTableViewController has been removed, not updating UI", buf, 2u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __57__WDDisplayTypeDataSourcesTableViewController__refreshUI__block_invoke(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) sectionForSectionIdentifier:a2];
  v4 = *(a1 + 32);
  v5 = [v4 tableView];
  v6 = [v4 tableView:v5 numberOfRowsInSection:v3];

  v7 = [*(a1 + 32) tableView];
  v8 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v3];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v7 reloadRowsAtIndexPaths:v9 withRowAnimation:0];

  if (v6 >= 2)
  {
    v10 = [*(a1 + 32) tableView];
    v11 = [*(a1 + 32) _createIndexPathsWithSection:v3 startingRow:1 numIndices:v6 - 1];
    [v10 insertRowsAtIndexPaths:v11 withRowAnimation:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canEditDataSources
{
  v3 = [(WDProfile *)self->_profile healthStore];
  v4 = [v3 profileIdentifier];
  v5 = [v4 type];

  v6 = [(HKDisplayType *)self->_displayType behavior];
  if ([v6 allowEditView])
  {
    v7 = [(NSMutableArray *)self->_orderedDataSources count]!= 0;
  }

  else
  {
    v7 = 0;
  }

  return v5 == 1 && v7;
}

- (void)_loadDataSource
{
  v3 = [(HKDisplayType *)self->_displayType sampleType];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __62__WDDisplayTypeDataSourcesTableViewController__loadDataSource__block_invoke;
  v24[3] = &unk_2796E77D8;
  v8 = v4;
  v25 = v8;
  v9 = v7;
  v26 = v9;
  [(WDDisplayTypeDataSourcesTableViewController *)self _fetchOrderedSourcesForType:v3 completion:v24];
  dispatch_group_enter(v9);
  v10 = [(HKDisplayType *)self->_displayType recordSampleType];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__WDDisplayTypeDataSourcesTableViewController__loadDataSource__block_invoke_2;
  v21[3] = &unk_2796E7800;
  v11 = v5;
  v22 = v11;
  v23 = v9;
  v12 = v9;
  [(WDDisplayTypeDataSourcesTableViewController *)self _fetchDataSourcesForSampleType:v10 completion:v21];
  if ([v3 code] == 80)
  {
    [(WDDisplayTypeDataSourcesTableViewController *)self _fetchBloodPressureAuthorizationRecordsBySource];
  }

  else
  {
    [(WDDisplayTypeDataSourcesTableViewController *)self _fetchAuthorizationRecordsBySourceForType:v3];
  }
  v13 = ;
  [v6 addEntriesFromDictionary:v13];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__WDDisplayTypeDataSourcesTableViewController__loadDataSource__block_invoke_3;
  v17[3] = &unk_2796E7148;
  v17[4] = self;
  v18 = v11;
  v19 = v8;
  v20 = v6;
  v14 = v6;
  v15 = v8;
  v16 = v11;
  dispatch_group_notify(v12, MEMORY[0x277D85CD0], v17);
}

void __62__WDDisplayTypeDataSourcesTableViewController__loadDataSource__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObjectsFromArray:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __62__WDDisplayTypeDataSourcesTableViewController__loadDataSource__block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) unionSet:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __62__WDDisplayTypeDataSourcesTableViewController__loadDataSource__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setLoadedAllDataSources:*(a1 + 40)];
  [*(a1 + 32) setLoadedOrderedDataSources:*(a1 + 48)];
  [*(a1 + 32) setLoadedAuthorizationRecordsBySource:*(a1 + 56)];
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v2 = [*(a1 + 56) allKeys];
  [v9 addObjectsFromArray:v2];

  v3 = [*(a1 + 40) allObjects];
  [v9 addObjectsFromArray:v3];

  v4 = objc_alloc(MEMORY[0x277D12AD0]);
  v5 = *(*(a1 + 32) + 1080);
  v6 = [v9 allObjects];
  v7 = [v4 initWithHealthStore:v5 sources:v6 queue:MEMORY[0x277D85CD0]];

  [v7 setShouldFetchAppIcons:1];
  [*(a1 + 32) setSourceListDataSource:v7];
  v8 = [*(a1 + 32) sourceListDataSource];
  [v8 fetchSources];
}

- (void)_fetchOrderedSourcesForType:(id)a3 completion:(id)a4
{
  v6 = a4;
  sourceOrderController = self->_sourceOrderController;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__WDDisplayTypeDataSourcesTableViewController__fetchOrderedSourcesForType_completion___block_invoke;
  v9[3] = &unk_2796E7828;
  v10 = v6;
  v8 = v6;
  [(WDSourceOrderController *)sourceOrderController getOrderedSourcesForDataType:a3 withCompletion:v9];
}

uint64_t __86__WDDisplayTypeDataSourcesTableViewController__fetchOrderedSourcesForType_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_fetchDataSourcesForSampleType:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCDA10];
  v8 = a3;
  v9 = [v7 alloc];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__WDDisplayTypeDataSourcesTableViewController__fetchDataSourcesForSampleType_completion___block_invoke;
  v12[3] = &unk_2796E7850;
  v13 = v6;
  v10 = v6;
  v11 = [v9 initWithSampleType:v8 samplePredicate:0 completionHandler:v12];

  [(HKHealthStore *)self->_healthStore executeQuery:v11];
}

void __89__WDDisplayTypeDataSourcesTableViewController__fetchDataSourcesForSampleType_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    _HKInitializeLogging();
    v10 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __89__WDDisplayTypeDataSourcesTableViewController__fetchDataSourcesForSampleType_completion___block_invoke_cold_1();
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v8);
  }
}

- (id)_fetchBloodPressureAuthorizationRecordsBySource
{
  v46 = *MEMORY[0x277D85DE8];
  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC978]];
  v4 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC980]];
  v32 = v3;
  v5 = [(WDDisplayTypeDataSourcesTableViewController *)self _fetchAuthorizationRecordsBySourceForType:v3];
  v31 = v4;
  v6 = [(WDDisplayTypeDataSourcesTableViewController *)self _fetchAuthorizationRecordsBySourceForType:v4];
  v7 = MEMORY[0x277CBEB58];
  v8 = [v5 allKeys];
  v9 = [v7 setWithArray:v8];

  v10 = [v6 allKeys];
  [v9 addObjectsFromArray:v10];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = [v6 objectForKeyedSubscript:v15];
        v17 = [v5 objectForKeyedSubscript:v15];
        v18 = v17;
        if (v16)
        {
          v19 = v17 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          [v16 status];
          v21 = HKAuthorizationStatusAllowsReading();
          if ((v21 & 1) == 0)
          {
            [v18 status];
            HKAuthorizationStatusAllowsReading();
          }

          [v16 status];
          if ((HKAuthorizationStatusAllowsSharing() & 1) == 0)
          {
            [v18 status];
            HKAuthorizationStatusAllowsSharing();
          }

          v22 = HKInternalAuthorizationStatusMake();
          if ([v16 requestedReading])
          {
            v23 = 1;
          }

          else
          {
            v23 = [v18 requestedReading];
          }

          if ([v16 requestedSharing])
          {
            v24 = 202;
            if (v23)
            {
              v24 = 203;
            }

            goto LABEL_27;
          }

          v25 = [v18 requestedSharing];
          v24 = 202;
          if ((v25 & 1 & v23) != 0)
          {
            v24 = 203;
          }

          if (v25)
          {
LABEL_27:
            v26 = 201;
          }

          else
          {
            v24 = 202;
            v26 = 200;
          }

          if (v23)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v20 = [MEMORY[0x277CCDD20] recordWithStatus:v22 request:v27 mode:0 anchorLimitModifiedDate:0];
          v28 = [[WDAuthorizationRecord alloc] initWithInternalAuthorizationRecord:v20];
          [v33 setObject:v28 forKeyedSubscript:v15];

          goto LABEL_33;
        }

        _HKInitializeLogging();
        v20 = HKLogWellnessDashboard();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v40 = v15;
          v41 = 2114;
          v42 = v16;
          v43 = 2114;
          v44 = v18;
          _os_log_error_impl(&dword_251E85000, v20, OS_LOG_TYPE_ERROR, "Source %{public}@ does not have authorization record for both systolic and diastolic types. systolicRecord: %{public}@ diastolicRecord: %{public}@", buf, 0x20u);
        }

LABEL_33:
      }

      v12 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v12);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)_fetchAuthorizationRecordsBySourceForType:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__WDDisplayTypeDataSourcesTableViewController__fetchAuthorizationRecordsBySourceForType___block_invoke;
  v9[3] = &unk_2796E7878;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [(WDDisplayTypeDataSourcesTableViewController *)self _fetchAuthorizationRecordsBySourceForType:v4 completion:v9];
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __89__WDDisplayTypeDataSourcesTableViewController__fetchAuthorizationRecordsBySourceForType___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)_fetchAuthorizationRecordsBySourceForType:(id)a3 completion:(id)a4
{
  v6 = a4;
  authorizationStore = self->_authorizationStore;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__WDDisplayTypeDataSourcesTableViewController__fetchAuthorizationRecordsBySourceForType_completion___block_invoke;
  v9[3] = &unk_2796E78A0;
  v10 = v6;
  v8 = v6;
  [(HKAuthorizationStore *)authorizationStore fetchAuthorizationRecordsForType:a3 completion:v9];
}

void __100__WDDisplayTypeDataSourcesTableViewController__fetchAuthorizationRecordsBySourceForType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a1;
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __100__WDDisplayTypeDataSourcesTableViewController__fetchAuthorizationRecordsBySourceForType_completion___block_invoke_cold_1();
    }
  }

  v19 = v5;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v4 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v4 objectForKeyedSubscript:{v13, v18, v19}];
        v15 = [[WDAuthorizationRecord alloc] initWithInternalAuthorizationRecord:v14];
        [v7 setObject:v15 forKeyedSubscript:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v16 = *(v18 + 32);
  if (v16)
  {
    (*(v16 + 16))(v16, v7);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_createIndexPathsWithSection:(int64_t)a3 startingRow:(int64_t)a4 numIndices:(int64_t)a5
{
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a5 >= 1)
  {
    do
    {
      v9 = [MEMORY[0x277CCAA70] indexPathForRow:a4 inSection:a3];
      [v8 addObject:v9];

      ++a4;
      --a5;
    }

    while (a5);
  }

  return v8;
}

- (void)_sortDataSources
{
  v38 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = [(NSMutableArray *)self->_orderedDataSources copy];
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        if (([(NSMutableSet *)self->_dataSources containsObject:v8]& 1) == 0)
        {
          [(NSMutableArray *)self->_orderedDataSources removeObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v5);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = self->_dataSources;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * j);
        if (([(NSMutableArray *)self->_orderedDataSources containsObject:v14]& 1) == 0)
        {
          [(NSMutableArray *)self->_orderedDataSources addObject:v14];
        }
      }

      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [(NSMutableArray *)self->_orderedDataSources copy];
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * k);
        if (![(WDDisplayTypeDataSourcesTableViewController *)self _sourceIsEnabled:v21])
        {
          [v15 addObject:v21];
          [(NSMutableArray *)self->_orderedDataSources removeObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v18);
  }

  [(NSMutableArray *)self->_orderedDataSources addObjectsFromArray:v15];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_updateOrderedSources
{
  v5 = [(NSMutableArray *)self->_orderedDataSources hk_map:&__block_literal_global_373];
  sourceOrderController = self->_sourceOrderController;
  v4 = [(HKDisplayType *)self->_displayType objectType];
  [(WDSourceOrderController *)sourceOrderController setOrderedSources:v5 dataType:v4];
}

- (void)_addDataSources:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(NSMutableSet *)self->_dataSources copy];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if (([v4 containsObject:v10] & 1) == 0)
        {
          v11 = [(NSMutableDictionary *)self->_authorizationRecordsBySource objectForKeyedSubscript:v10];

          if (!v11)
          {
            [(NSMutableSet *)self->_dataSources removeObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * j);
        if (([(NSMutableSet *)self->_dataSources containsObject:v17, v19]& 1) == 0)
        {
          [(NSMutableSet *)self->_dataSources addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_sourceIsEnabled:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self->_healthStore profileIdentifier];
  v6 = [v5 type];

  if (v6 == 3 || ([(NSMutableSet *)self->_sourcesPendingToggleOn containsObject:v4]& 1) != 0)
  {
    LOBYTE(v7) = 1;
  }

  else if (([(NSMutableSet *)self->_sourcesPendingToggleOff containsObject:v4]& 1) != 0)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_authorizationRecordsBySource objectForKeyedSubscript:v4];
    [v9 status];
    if (HKAuthorizationStatusAllowsSharing())
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v10 = [v4 source];
      v7 = [v10 _requiresAuthorization] ^ 1;
    }
  }

  return v7;
}

- (void)_willDisableSource:(id)a3
{
  sourcesPendingToggleOn = self->_sourcesPendingToggleOn;
  v5 = a3;
  [(NSMutableSet *)sourcesPendingToggleOn removeObject:v5];
  [(NSMutableSet *)self->_sourcesPendingToggleOff addObject:v5];
}

- (void)_willEnableSource:(id)a3
{
  sourcesPendingToggleOff = self->_sourcesPendingToggleOff;
  v5 = a3;
  [(NSMutableSet *)sourcesPendingToggleOff removeObject:v5];
  [(NSMutableSet *)self->_sourcesPendingToggleOn addObject:v5];
}

- (void)_sourceIsEnabledDidChange:(id)a3
{
  sourcesPendingToggleOff = self->_sourcesPendingToggleOff;
  v5 = a3;
  [(NSMutableSet *)sourcesPendingToggleOff removeObject:v5];
  [(NSMutableSet *)self->_sourcesPendingToggleOn removeObject:v5];
}

void __67__WDDisplayTypeDataSourcesTableViewController_setEditing_animated___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1128);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__WDDisplayTypeDataSourcesTableViewController_setEditing_animated___block_invoke_2;
  v12[3] = &unk_2796E78E8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v13 = v3;
  v14 = v4;
  v15 = *(a1 + 48);
  [v2 enumerateObjectsUsingBlock:v12];
  v5 = *(*(a1 + 32) + 1136);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__WDDisplayTypeDataSourcesTableViewController_setEditing_animated___block_invoke_3;
  v8[3] = &unk_2796E78E8;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  v11 = *(a1 + 48);
  [v5 enumerateObjectsUsingBlock:v8];
}

void __67__WDDisplayTypeDataSourcesTableViewController_setEditing_animated___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:{objc_msgSend(*(a1 + 40), "sectionForSectionIdentifier:", 0)}];
  v8 = [v4 cellForRowAtIndexPath:v5];

  if (*(a1 + 48))
  {
    v6 = 0.600000024;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = [v8 contentView];
  [v7 setAlpha:v6];

  [v8 setUserInteractionEnabled:(*(a1 + 48) & 1) == 0];
}

void __67__WDDisplayTypeDataSourcesTableViewController_setEditing_animated___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:{objc_msgSend(*(a1 + 40), "sectionForSectionIdentifier:", 1)}];
  v8 = [v4 cellForRowAtIndexPath:v5];

  if (*(a1 + 48))
  {
    v6 = 0.600000024;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = [v8 contentView];
  [v7 setAlpha:v6];

  [v8 setUserInteractionEnabled:(*(a1 + 48) & 1) == 0];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (!self->_isLoaded)
  {
    return 1;
  }

  v5 = [(WDDisplayTypeDataSourcesTableViewController *)self sectionIdentifierForSection:a4];
  if (v5 > 2)
  {
    result = 0;
  }

  else
  {
    result = [*(&self->super.super.super.super.super.isa + *off_2796E7958[v5]) count];
  }

  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_isLoaded)
  {
    v16 = objc_alloc_init(WDSpinnerTableViewCell);
    goto LABEL_11;
  }

  v9 = -[WDDisplayTypeDataSourcesTableViewController sectionIdentifierForSection:](self, "sectionIdentifierForSection:", [v7 section]);
  switch(v9)
  {
    case 2:
      v16 = -[WDDisplayTypeDataSourcesTableViewController _dataSourceCellForTableView:row:](self, "_dataSourceCellForTableView:row:", v6, [v8 row]);
      break;
    case 1:
      readerResearchStudySources = self->_readerResearchStudySources;
      v11 = [v8 row];
      v12 = self;
      v13 = v6;
      v14 = readerResearchStudySources;
      v15 = 1;
      goto LABEL_8;
    case 0:
      readerAppSources = self->_readerAppSources;
      v11 = [v8 row];
      v12 = self;
      v13 = v6;
      v14 = readerAppSources;
      v15 = 0;
LABEL_8:
      v16 = [(WDDisplayTypeDataSourcesTableViewController *)v12 _readerSourceCellForTableView:v13 sourceArray:v14 row:v11 group:v15];
      break;
    default:
      v16 = HKErrorTableViewCell();
      break;
  }

LABEL_11:
  v18 = v16;

  return v18;
}

- (id)_readerSourceCellForTableView:(id)a3 sourceArray:(id)a4 row:(unint64_t)a5 group:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  if (!a6)
  {
    v12 = @".ReaderApps";
    goto LABEL_5;
  }

  if (a6 == 1)
  {
    v12 = @".ResearchStudies";
LABEL_5:
    v13 = [@"Sources" stringByAppendingFormat:v12];
    goto LABEL_7;
  }

  v13 = @"Sources";
LABEL_7:
  if ([v11 count])
  {
    v14 = [v11 objectAtIndexedSubscript:a5];
    v15 = [(NSMutableDictionary *)self->_authorizationRecordsBySource objectForKeyedSubscript:v14];
    v16 = [v10 dequeueReusableCellWithIdentifier:@"sharing"];
    if (!v16)
    {
      v16 = [objc_alloc(MEMORY[0x277D12AE8]) initWithStyle:0 reuseIdentifier:@"sharing"];
      [v16 setDelegate:self];
    }

    [v16 setSelectionStyle:0];
    v17 = [v14 source];
    v18 = [v17 name];

    [v16 setDisplayText:v18];
    if ([(WDDisplayTypeDataSourcesTableViewController *)self isEditing])
    {
      v19 = 0.600000024;
    }

    else
    {
      v19 = 1.0;
    }

    v20 = [v16 contentView];
    [v20 setAlpha:v19];

    [v15 status];
    [v16 setOn:HKAuthorizationStatusAllowsReading()];
    v21 = [(WDProfile *)self->_profile healthStore];
    v22 = [v21 profileIdentifier];
    [v16 setEnabled:{objc_msgSend(v22, "type") == 1}];

    v23 = [(__CFString *)v13 stringByAppendingFormat:@".%@", v18];

    v24 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:0 suffix:v23];
    [v16 setAccessibilityIdentifier:v24];

    objc_initWeak(&location, self);
    v25 = [MEMORY[0x277D127A8] sharedImageManager];
    v26 = [v14 source];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __99__WDDisplayTypeDataSourcesTableViewController__readerSourceCellForTableView_sourceArray_row_group___block_invoke;
    v41[3] = &unk_2796E6C50;
    v27 = v16;
    v42 = v27;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __99__WDDisplayTypeDataSourcesTableViewController__readerSourceCellForTableView_sourceArray_row_group___block_invoke_2;
    v36[3] = &unk_2796E6CA0;
    objc_copyWeak(&v40, &location);
    v28 = v14;
    v37 = v28;
    v29 = v27;
    v38 = v29;
    v39 = v10;
    [v25 loadIconForSource:v26 syncHandler:v41 asyncHandler:v36];

    v30 = v39;
    v31 = v29;

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);

    v13 = v23;
  }

  else
  {
    v31 = [(WDDisplayTypeDataSourcesTableViewController *)self _noneTableViewCell];
    v32 = MEMORY[0x277CCACA8];
    v33 = [(__CFString *)v13 stringByAppendingString:@".None"];
    v34 = [v32 healthAccessibilityIdentifier:0 suffix:v33];
    [v31 setAccessibilityIdentifier:v34];
  }

  return v31;
}

void __99__WDDisplayTypeDataSourcesTableViewController__readerSourceCellForTableView_sourceArray_row_group___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__WDDisplayTypeDataSourcesTableViewController__readerSourceCellForTableView_sourceArray_row_group___block_invoke_3;
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

void __99__WDDisplayTypeDataSourcesTableViewController__readerSourceCellForTableView_sourceArray_row_group___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) source];
  [WeakRetained _handleReturnedImage:v2 forSource:v3 cell:*(a1 + 48) tableView:*(a1 + 56) fetchError:*(a1 + 64)];
}

- (id)_dataSourceCellForTableView:(id)a3 row:(unint64_t)a4
{
  v6 = a3;
  v7 = [@"Sources" stringByAppendingString:@".DataSources"];
  if ([(NSMutableArray *)self->_orderedDataSources count])
  {
    v8 = [(NSMutableArray *)self->_orderedDataSources objectAtIndexedSubscript:a4];
    v9 = [v6 dequeueReusableCellWithIdentifier:@"provider"];
    if (!v9)
    {
      v9 = [[WDDataProviderTableViewCell alloc] initWithStyle:3 reuseIdentifier:@"provider"];
      [(WDDataProviderTableViewCell *)v9 setShowsReorderControl:1];
      [(WDDataProviderTableViewCell *)v9 setShouldIndentWhileEditing:0];
      [(WDDataProviderTableViewCell *)v9 setAccessoryType:[(HKDisplayType *)self->_displayType isActivitySummary]^ 1];
    }

    v10 = [v8 source];
    v11 = [v10 name];

    [(WDDataProviderTableViewCell *)v9 setDisplayName:v11];
    if ([v8 installed])
    {
      if ([(WDDisplayTypeDataSourcesTableViewController *)self _sourceIsEnabled:v8])
      {
        v12 = 2;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 1;
    }

    [(WDDataProviderTableViewCell *)v9 setSourceStatus:v12];
    v15 = [v7 stringByAppendingFormat:@".%@", v11];

    v16 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:0 suffix:v15];
    [(WDDataProviderTableViewCell *)v9 setAccessibilityIdentifier:v16];

    objc_initWeak(&location, self);
    v17 = [MEMORY[0x277D127A8] sharedImageManager];
    v18 = [v8 source];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __79__WDDisplayTypeDataSourcesTableViewController__dataSourceCellForTableView_row___block_invoke;
    v29[3] = &unk_2796E6C50;
    v19 = v9;
    v30 = v19;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __79__WDDisplayTypeDataSourcesTableViewController__dataSourceCellForTableView_row___block_invoke_2;
    v24[3] = &unk_2796E6CA0;
    objc_copyWeak(&v28, &location);
    v20 = v8;
    v25 = v20;
    v21 = v19;
    v26 = v21;
    v27 = v6;
    [v17 loadIconForSource:v18 syncHandler:v29 asyncHandler:v24];

    v22 = v27;
    v13 = v21;

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);

    v7 = v15;
  }

  else
  {
    v13 = [(WDDisplayTypeDataSourcesTableViewController *)self _noneTableViewCell];
    v14 = [v7 stringByAppendingString:@".None"];
    [(WDDataProviderTableViewCell *)v13 setAccessibilityIdentifier:v14];
  }

  return v13;
}

void __79__WDDisplayTypeDataSourcesTableViewController__dataSourceCellForTableView_row___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__WDDisplayTypeDataSourcesTableViewController__dataSourceCellForTableView_row___block_invoke_3;
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

void __79__WDDisplayTypeDataSourcesTableViewController__dataSourceCellForTableView_row___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) source];
  [WeakRetained _handleReturnedImage:v2 forSource:v3 cell:*(a1 + 48) tableView:*(a1 + 56) fetchError:*(a1 + 64)];
}

- (id)_noneTableViewCell
{
  v2 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
  v3 = WDBundle();
  v4 = [v3 localizedStringForKey:@"NONE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v5 = [v2 textLabel];
  [v5 setText:v4];

  v6 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v7 = [v2 textLabel];
  [v7 setFont:v6];

  v8 = [MEMORY[0x277D75348] secondaryLabelColor];
  v9 = [v2 textLabel];
  [v9 setTextColor:v8];

  [v2 setSelectionStyle:0];

  return v2;
}

- (void)_handleReturnedImage:(id)a3 forSource:(id)a4 cell:(id)a5 tableView:(id)a6 fetchError:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v12 && !a7)
  {
    v15 = [a6 indexPathForCell:v14];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 row];
      v18 = [(WDDisplayTypeDataSourcesTableViewController *)self orderedDataSources];
      v19 = [v18 count];

      if (v17 >= v19)
      {
        _HKInitializeLogging();
        v23 = HKLogWellnessDashboard();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [WDDisplayTypeDataSourcesTableViewController _handleReturnedImage:v16 forSource:self cell:v23 tableView:? fetchError:?];
        }

        goto LABEL_15;
      }

      v20 = [(WDDisplayTypeDataSourcesTableViewController *)self orderedDataSources];
      v21 = [v20 objectAtIndex:{objc_msgSend(v16, "row")}];
      v22 = [v21 source];

      if ([v22 isEqual:v13])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v14 setIconImage:v12];
        }

        else
        {
          v24 = [v14 imageView];
          [v24 setImage:v12];
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v22 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [WDDisplayTypeDataSourcesTableViewController _handleReturnedImage:v22 forSource:? cell:? tableView:? fetchError:?];
      }
    }

LABEL_15:
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(WDDisplayTypeDataSourcesTableViewController *)self sectionIdentifierForSection:a4];
  switch(v5)
  {
    case 2:
      v11 = WDBundle();
      v9 = v11;
      v12 = @"DATA_SOURCES_HEADER";
      goto LABEL_9;
    case 1:
      v11 = WDBundle();
      v9 = v11;
      v12 = @"RESEARCH_STUDIES_READ_ACCESS_HEADER";
LABEL_9:
      v10 = [v11 localizedStringForKey:v12 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
LABEL_10:

      goto LABEL_12;
    case 0:
      v6 = [(HKDisplayType *)self->_displayType isDocument];
      v7 = @"APPS_READ_ACCESS_HEADER";
      if (v6)
      {
        v7 = @"SHARE_DATA_HEADER_CCD";
      }

      v8 = v7;
      v9 = WDBundle();
      v10 = [v9 localizedStringForKey:v8 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

      goto LABEL_10;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(WDDisplayTypeDataSourcesTableViewController *)self sectionIdentifierForSection:a4];
  switch(v5)
  {
    case 2:
      v14 = [(HKHealthStore *)self->_healthStore profileIdentifier];
      v15 = [v14 type];

      v16 = [(HKDisplayType *)self->_displayType behavior];
      v17 = [v16 allowsSourceReordering];

      v6 = MEMORY[0x277CCACA8];
      v7 = WDBundle();
      v8 = v7;
      if (v15 == 3)
      {
        if (v17)
        {
          v18 = @"%1$@_DATA_TYPE_PROVIDERS_EXPLANATION_%2$@";
        }

        else
        {
          v18 = @"%1$@_DATA_TYPE_PROVIDERS_EXPLANATION_NO_REORDERING_%2$@";
        }

        v10 = [v7 localizedStringForKey:v18 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Tinker"];
        v11 = [(HKProfileStore *)self->_profileStore synchronouslyFetchFirstName];
        v12 = [(HKDisplayType *)self->_displayType localization];
        v20 = [v12 embeddedDisplayName];
        v13 = [v6 stringWithFormat:v10, v11, v20];

        goto LABEL_7;
      }

      if (v17)
      {
        v9 = @"DATA_TYPE_PROVIDERS_EXPLANATION";
      }

      else
      {
        v9 = @"DATA_TYPE_PROVIDERS_EXPLANATION_NO_REORDERING";
      }

LABEL_6:
      v10 = [v7 localizedStringForKey:v9 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
      v11 = [(HKDisplayType *)self->_displayType localization];
      v12 = [v11 embeddedDisplayName];
      v13 = [v6 stringWithFormat:v10, v12];
LABEL_7:

      goto LABEL_12;
    case 1:
      v6 = MEMORY[0x277CCACA8];
      v7 = WDBundle();
      v8 = v7;
      v9 = @"DATA_TYPE_SHARING_RESEARCH_STUDIES_EXPLANATION";
      goto LABEL_6;
    case 0:
      v6 = MEMORY[0x277CCACA8];
      v7 = WDBundle();
      v8 = v7;
      v9 = @"DATA_TYPE_SHARING_APPS_EXPLANATION";
      goto LABEL_6;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HKDisplayType *)self->_displayType behavior];
  v7 = [v6 allowEditView];

  v8 = v7 && -[WDDisplayTypeDataSourcesTableViewController sectionIdentifierForSection:](self, "sectionIdentifierForSection:", [v5 section]) == 2 && -[NSMutableArray count](self->_orderedDataSources, "count") != 0;
  return v8;
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  if (-[WDDisplayTypeDataSourcesTableViewController sectionIdentifierForSection:](self, "sectionIdentifierForSection:", [a4 section]) != 2)
  {
    return 0;
  }

  v5 = [(HKDisplayType *)self->_displayType behavior];
  v6 = [v5 allowsSourceReordering];

  return v6;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  orderedDataSources = self->_orderedDataSources;
  v8 = a5;
  v11 = -[NSMutableArray objectAtIndexedSubscript:](orderedDataSources, "objectAtIndexedSubscript:", [a4 row]);
  [(NSMutableArray *)self->_orderedDataSources removeObject:v11];
  v9 = self->_orderedDataSources;
  v10 = [v8 row];

  [(NSMutableArray *)v9 insertObject:v11 atIndex:v10];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (-[WDDisplayTypeDataSourcesTableViewController sectionIdentifierForSection:](self, "sectionIdentifierForSection:", [v5 section]) == 2 && -[NSMutableArray count](self->_orderedDataSources, "count"))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v33[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (-[WDDisplayTypeDataSourcesTableViewController sectionIdentifierForSection:](self, "sectionIdentifierForSection:", [v7 section]) == 2 && -[NSMutableArray count](self->_orderedDataSources, "count"))
  {
    [v6 deselectRowAtIndexPath:v7 animated:1];
    v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_orderedDataSources, "objectAtIndexedSubscript:", [v7 row]);
    v9 = [(WDDisplayTypeDataSourcesTableViewController *)self isEditing];
    v10 = [v8 source];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 _requiresAuthorization];

      if (v12)
      {
        v13 = [v6 cellForRowAtIndexPath:v7];
        v14 = [v13 isActive];
        v15 = [(NSMutableDictionary *)self->_authorizationRecordsBySource objectForKeyedSubscript:v8];
        if (v15)
        {
          if (v14)
          {
            [(WDDisplayTypeDataSourcesTableViewController *)self _willDisableSource:v8];
            if ([v15 requestedReading] && (objc_msgSend(v15, "status"), (HKAuthorizationStatusAllowsReading() & 1) != 0))
            {
              v16 = 103;
            }

            else
            {
              v16 = 104;
            }
          }

          else
          {
            [(WDDisplayTypeDataSourcesTableViewController *)self _willEnableSource:v8];
            if ([v15 requestedReading] && (objc_msgSend(v15, "status"), (HKAuthorizationStatusAllowsReading() & 1) != 0))
            {
              v16 = 101;
            }

            else
            {
              v16 = 102;
            }
          }

          v33[0] = v7;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
          [v6 reloadRowsAtIndexPaths:v21 withRowAnimation:0];

          [v15 setStatus:v16];
          objc_initWeak(&location, self);
          v22 = [(WDDisplayTypeDataSourcesTableViewController *)self _authorizationStatusesWithAuth:v16];
          authorizationStore = self->_authorizationStore;
          v24 = [v8 source];
          v25 = [v24 bundleIdentifier];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __81__WDDisplayTypeDataSourcesTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
          v27[3] = &unk_2796E7938;
          objc_copyWeak(&v31, &location);
          v28 = v8;
          v29 = v6;
          v30 = v7;
          [(HKAuthorizationStore *)authorizationStore setAuthorizationStatuses:v22 authorizationModes:MEMORY[0x277CBEC10] forBundleIdentifier:v25 options:0 completion:v27];

          objc_destroyWeak(&v31);
          objc_destroyWeak(&location);
        }
      }
    }

    else
    {
      v17 = [(WDDisplayTypeDataSourcesTableViewController *)self _makeDataListViewControllerForSource:v10];

      v18 = [v8 source];
      v19 = [v18 name];
      [v17 setTitle:v19];

      v20 = [(WDDisplayTypeDataSourcesTableViewController *)self navigationController];
      [v20 pushViewController:v17 animated:1];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __81__WDDisplayTypeDataSourcesTableViewController_tableView_didSelectRowAtIndexPath___block_invoke(id *a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __81__WDDisplayTypeDataSourcesTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_cold_1();
    }
  }

  v7 = [MEMORY[0x277CBEB88] mainRunLoop];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__WDDisplayTypeDataSourcesTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_451;
  v8[3] = &unk_2796E7910;
  objc_copyWeak(&v12, a1 + 7);
  v9 = a1[4];
  v13 = a2;
  v10 = a1[5];
  v11 = a1[6];
  [v7 performBlock:v8];

  objc_destroyWeak(&v12);
}

void __81__WDDisplayTypeDataSourcesTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_451(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _sourceIsEnabledDidChange:*(a1 + 32)];
  if (WeakRetained && (*(a1 + 64) & 1) == 0)
  {
    v3 = *(a1 + 40);
    v6[0] = *(a1 + 48);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    [v3 reloadRowsAtIndexPaths:v4 withRowAnimation:0];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_authorizationStatusesWithAuth:(int64_t)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = [(HKDisplayType *)self->_displayType objectType];
  v6 = [v5 code];

  if (v6 == 80)
  {
    v7 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC978]];
    v8 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC980]];
    v16[0] = v7;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v16[1] = v8;
    v17[0] = v9;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v17[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v7 = [(HKDisplayType *)self->_displayType objectType];
    v14 = v7;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v15 = v8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_makeDataListViewControllerForSource:(id)a3
{
  v4 = [MEMORY[0x277CCD838] predicateForObjectsFromSource:a3];
  v5 = [(WDProfile *)self->_profile healthStore];
  v6 = [HBXHealthAppPluginFactory makeDataListViewControllerForHealthStore:v5 displayType:self->_displayType predicate:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    displayType = self->_displayType;
    profile = self->_profile;
    v10 = [(WDProfile *)profile unitController];
    v11 = [(HKDisplayType *)displayType wd_listViewControllerDataProviderWithProfile:profile unitController:v10];

    [v11 setDefaultQueryPredicate:v4];
    v7 = [[WDDataListViewController alloc] initWithDisplayType:self->_displayType profile:self->_profile dataProvider:v11 usingInsetStyling:1];
    if ([(WDDisplayTypeDataSourcesTableViewController *)self shouldInsetSectionContentForDataSourceDataList])
    {
      v12 = [(WDDataListViewController *)v7 tableView];
      [v12 _setSectionContentInsetFollowsLayoutMargins:1];

      v13 = *MEMORY[0x277D12798];
      v14 = [(WDDataListViewController *)v7 tableView];
      [v14 _setSectionCornerRadius:v13];
    }
  }

  return v7;
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (-[WDDisplayTypeDataSourcesTableViewController sectionIdentifierForSection:](self, "sectionIdentifierForSection:", [v8 section]) == 2)
  {
    v9 = -[NSMutableArray objectAtIndexedSubscript:](self->_orderedDataSources, "objectAtIndexedSubscript:", [v8 row]);
    if ([(WDDisplayTypeDataSourcesTableViewController *)self _sourceIsEnabled:v9])
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  return v11;
}

- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4
{
  v5 = a3;
  v6 = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
  v16 = [v6 indexPathForCell:v5];

  v7 = -[WDDisplayTypeDataSourcesTableViewController sectionIdentifierForSection:](self, "sectionIdentifierForSection:", [v16 section]);
  if (!v7)
  {
    v8 = &OBJC_IVAR___WDDisplayTypeDataSourcesTableViewController__readerAppSources;
    goto LABEL_5;
  }

  if (v7 == 1)
  {
    v8 = &OBJC_IVAR___WDDisplayTypeDataSourcesTableViewController__readerResearchStudySources;
LABEL_5:
    v9 = [*(&self->super.super.super.super.super.isa + *v8) objectAtIndexedSubscript:{objc_msgSend(v16, "row")}];
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v10 = [(NSMutableDictionary *)self->_authorizationRecordsBySource objectForKeyedSubscript:v9];
  [v10 status];
  HKAuthorizationStatusAllowsSharing();
  v11 = HKInternalAuthorizationStatusMake();
  [v10 setStatus:v11];
  v12 = [(WDDisplayTypeDataSourcesTableViewController *)self _authorizationStatusesWithAuth:v11];
  authorizationStore = self->_authorizationStore;
  v14 = [v9 source];
  v15 = [v14 bundleIdentifier];
  [(HKAuthorizationStore *)authorizationStore setAuthorizationStatuses:v12 authorizationModes:MEMORY[0x277CBEC10] forBundleIdentifier:v15 options:0 completion:&__block_literal_global_458];
}

void __76__WDDisplayTypeDataSourcesTableViewController_switchCellValueChanged_value___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __81__WDDisplayTypeDataSourcesTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_cold_1();
    }
  }
}

- (void)sourceListDataSourceDidUpdate:(id)a3
{
  [(WDDisplayTypeDataSourcesTableViewController *)self _gatherDataFromDataSource:a3];

  [(WDDisplayTypeDataSourcesTableViewController *)self _refreshUI];
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = MEMORY[0x277D750C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __83__WDDisplayTypeDataSourcesTableViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_2796E6DB8;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  if ([(WDDisplayTypeDataSourcesTableViewController *)self isEditing])
  {
    [(WDDisplayTypeDataSourcesTableViewController *)self setLeftBarButtonItemReference:v6];
  }

  else
  {
    v7 = [(WDDisplayTypeDataSourcesTableViewController *)self navigationItem];
    [v7 setLeftBarButtonItem:v6];
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __83__WDDisplayTypeDataSourcesTableViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  if ([(WDDisplayTypeDataSourcesTableViewController *)self isEditing])
  {

    [(WDDisplayTypeDataSourcesTableViewController *)self setLeftBarButtonItemReference:0];
  }

  else
  {
    v3 = [(WDDisplayTypeDataSourcesTableViewController *)self navigationItem];
    [v3 setLeftBarButtonItem:0];
  }
}

void __89__WDDisplayTypeDataSourcesTableViewController__fetchDataSourcesForSampleType_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Error fetching source query: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __100__WDDisplayTypeDataSourcesTableViewController__fetchAuthorizationRecordsBySourceForType_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Error fetching authorization records: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleReturnedImage:(NSObject *)a3 forSource:cell:tableView:fetchError:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 row];
  v6 = [a2 orderedDataSources];
  v8[0] = 67109376;
  v8[1] = v5;
  v9 = 1024;
  v10 = [v6 count];
  _os_log_error_impl(&dword_251E85000, a3, OS_LOG_TYPE_ERROR, "_handleReturnedImage called for row (%d) beyond valid range (< %d)", v8, 0xEu);

  v7 = *MEMORY[0x277D85DE8];
}

void __81__WDDisplayTypeDataSourcesTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Error saving sharing state: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end