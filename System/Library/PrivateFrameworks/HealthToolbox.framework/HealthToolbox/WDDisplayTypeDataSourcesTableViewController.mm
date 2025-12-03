@interface WDDisplayTypeDataSourcesTableViewController
- (BOOL)_canEditDataSources;
- (BOOL)_isPrimaryProfile;
- (BOOL)_objectTypeRequiresPerObjectAuthorization;
- (BOOL)_sourceIsEnabled:(id)enabled;
- (BOOL)showDataSourcesSectionOnly;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (WDDisplayTypeDataSourcesTableViewController)initWithCoder:(id)coder;
- (WDDisplayTypeDataSourcesTableViewController)initWithDisplayType:(id)type displayCategory:(id)category sourceOrderController:(id)controller profile:(id)profile;
- (WDDisplayTypeDataSourcesTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (WDDisplayTypeDataSourcesTableViewController)initWithStyle:(int64_t)style;
- (id)_authorizationStatusesWithAuth:(int64_t)auth;
- (id)_createIndexPathsWithSection:(int64_t)section startingRow:(int64_t)row numIndices:(int64_t)indices;
- (id)_dataSourceCellForTableView:(id)view row:(unint64_t)row;
- (id)_fetchAuthorizationRecordsBySourceForType:(id)type;
- (id)_fetchBloodPressureAuthorizationRecordsBySource;
- (id)_makeDataListViewControllerForSource:(id)source;
- (id)_noneTableViewCell;
- (id)_readerSourceCellForTableView:(id)view sourceArray:(id)array row:(unint64_t)row group:(int64_t)group;
- (id)createSectionIdentifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)sectionForSectionIdentifier:(int64_t)identifier;
- (int64_t)sectionIdentifierForSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addDataSources:(id)sources;
- (void)_fetchAuthorizationRecordsBySourceForType:(id)type completion:(id)completion;
- (void)_fetchDataSourcesForSampleType:(id)type completion:(id)completion;
- (void)_fetchOrderedSourcesForType:(id)type completion:(id)completion;
- (void)_gatherDataFromDataSource:(id)source;
- (void)_handleReturnedImage:(id)image forSource:(id)source cell:(id)cell tableView:(id)view fetchError:(id)error;
- (void)_loadDataSource;
- (void)_refreshUI;
- (void)_sortDataSources;
- (void)_sourceIsEnabledDidChange:(id)change;
- (void)_updateOrderedSources;
- (void)_willDisableSource:(id)source;
- (void)_willEnableSource:(id)source;
- (void)setSourceListDataSource:(id)source;
- (void)sourceListDataSourceDidUpdate:(id)update;
- (void)switchCellValueChanged:(id)changed value:(BOOL)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)updateHeaderView;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
@end

@implementation WDDisplayTypeDataSourcesTableViewController

- (WDDisplayTypeDataSourcesTableViewController)initWithDisplayType:(id)type displayCategory:(id)category sourceOrderController:(id)controller profile:(id)profile
{
  typeCopy = type;
  categoryCopy = category;
  controllerCopy = controller;
  profileCopy = profile;
  v51.receiver = self;
  v51.super_class = WDDisplayTypeDataSourcesTableViewController;
  v15 = [(HKTableViewController *)&v51 initWithUsingInsetStyling:1];
  v16 = v15;
  if (v15)
  {
    v15->_isLoaded = 0;
    objc_storeStrong(&v15->_displayType, type);
    objc_storeStrong(&v16->_displayCategory, category);
    objc_storeStrong(&v16->_sourceOrderController, controller);
    objc_storeStrong(&v16->_profile, profile);
    healthStore = [profileCopy healthStore];
    healthStore = v16->_healthStore;
    v16->_healthStore = healthStore;

    v19 = objc_alloc(MEMORY[0x277CCD7D0]);
    healthStore2 = [profileCopy healthStore];
    v21 = [v19 initWithHealthStore:healthStore2];
    profileStore = v16->_profileStore;
    v16->_profileStore = v21;

    v23 = objc_alloc(MEMORY[0x277CCD060]);
    healthStore3 = [profileCopy healthStore];
    v25 = [v23 initWithHealthStore:healthStore3];
    authorizationStore = v16->_authorizationStore;
    v16->_authorizationStore = v25;

    v27 = [MEMORY[0x277CBEB58] set];
    dataSources = v16->_dataSources;
    v16->_dataSources = v27;

    array = [MEMORY[0x277CBEB18] array];
    orderedDataSources = v16->_orderedDataSources;
    v16->_orderedDataSources = array;

    readerAppSources = v16->_readerAppSources;
    v32 = MEMORY[0x277CBEBF8];
    v16->_readerAppSources = MEMORY[0x277CBEBF8];

    readerResearchStudySources = v16->_readerResearchStudySources;
    v16->_readerResearchStudySources = v32;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    authorizationRecordsBySource = v16->_authorizationRecordsBySource;
    v16->_authorizationRecordsBySource = dictionary;

    v36 = [MEMORY[0x277CBEB58] set];
    sourcesPendingToggleOn = v16->_sourcesPendingToggleOn;
    v16->_sourcesPendingToggleOn = v36;

    v38 = [MEMORY[0x277CBEB58] set];
    sourcesPendingToggleOff = v16->_sourcesPendingToggleOff;
    v16->_sourcesPendingToggleOff = v38;

    v16->_shouldInsetSectionContentForDataSourceDataList = 0;
    createSectionIdentifiers = [(WDDisplayTypeDataSourcesTableViewController *)v16 createSectionIdentifiers];
    sectionIdentifiers = v16->_sectionIdentifiers;
    v16->_sectionIdentifiers = createSectionIdentifiers;

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

      healthStore4 = [(WDProfile *)v16->_profile healthStore];
      v43 = WDGetProfileNameForHealthStore(healthStore4);

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

- (WDDisplayTypeDataSourcesTableViewController)initWithStyle:(int64_t)style
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (WDDisplayTypeDataSourcesTableViewController)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = WDDisplayTypeDataSourcesTableViewController;
  return [(WDDisplayTypeDataSourcesTableViewController *)&v4 initWithCoder:coder];
}

- (WDDisplayTypeDataSourcesTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (void)setSourceListDataSource:(id)source
{
  sourceCopy = source;
  sourceListDataSource = self->_sourceListDataSource;
  if (sourceListDataSource != sourceCopy)
  {
    v7 = sourceCopy;
    [(HKSourceListDataSource *)sourceListDataSource unregisterObserver:self];
    objc_storeStrong(&self->_sourceListDataSource, source);
    sourceListDataSource = [(HKSourceListDataSource *)self->_sourceListDataSource registerObserver:self];
    sourceCopy = v7;
  }

  MEMORY[0x2821F96F8](sourceListDataSource, sourceCopy);
}

- (void)updateHeaderView
{
  headerView = self->_headerView;
  tableView = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
  [tableView bounds];
  v6 = v5;
  LODWORD(v5) = 1148846080;
  LODWORD(v7) = 1112014848;
  [(HKTitledIconHeaderView *)headerView systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:0.0 verticalFittingPriority:v5, v7];

  [(HKTitledIconHeaderView *)self->_headerView bounds];
  [(HKTitledIconHeaderView *)self->_headerView setBounds:?];
  v8 = self->_headerView;
  tableView2 = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
  [tableView2 setTableHeaderView:v8];
}

- (void)viewDidLoad
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = WDDisplayTypeDataSourcesTableViewController;
  [(HKTableViewController *)&v21 viewDidLoad];
  tableView = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
  [tableView setRowHeight:*MEMORY[0x277D76F30]];
  [tableView setAllowsSelectionDuringEditing:1];
  [tableView setEstimatedRowHeight:*MEMORY[0x277D12780]];
  v4 = HKUIJoinStringsForAutomationIdentifier();
  [tableView setAccessibilityIdentifier:v4];

  v5 = [MEMORY[0x277D755D0] configurationWithPointSize:50.0];
  shareIcon = [(HKDisplayType *)self->_displayType shareIcon];
  v7 = [shareIcon imageByApplyingSymbolConfiguration:v5];

  v8 = objc_alloc_init(MEMORY[0x277D12B08]);
  headerView = self->_headerView;
  self->_headerView = v8;

  v10 = self->_headerView;
  localization = [(HKDisplayType *)self->_displayType localization];
  displayName = [localization displayName];
  [(HKTitledIconHeaderView *)v10 setTitle:displayName];

  [(HKTitledIconHeaderView *)self->_headerView setIconImage:v7];
  v13 = self->_headerView;
  color = [(HKDisplayCategory *)self->_displayCategory color];
  [(HKTitledIconHeaderView *)v13 setIconImageTint:color];

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
  objectType = [(HKDisplayType *)self->_displayType objectType];
  requiresPerObjectAuthorization = [objectType requiresPerObjectAuthorization];

  return requiresPerObjectAuthorization;
}

- (BOOL)_isPrimaryProfile
{
  healthStore = [(WDProfile *)self->_profile healthStore];
  profileIdentifier = [healthStore profileIdentifier];
  v4 = [profileIdentifier type] == 1;

  return v4;
}

- (int64_t)sectionIdentifierForSection:(int64_t)section
{
  v3 = [(NSArray *)self->_sectionIdentifiers objectAtIndexedSubscript:section];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)sectionForSectionIdentifier:(int64_t)identifier
{
  sectionIdentifiers = self->_sectionIdentifiers;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:identifier];
  v5 = [(NSArray *)sectionIdentifiers indexOfObject:v4];

  return v5;
}

- (void)_gatherDataFromDataSource:(id)source
{
  v73 = *MEMORY[0x277D85DE8];
  sources = [source sources];
  allSources = [sources allSources];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __73__WDDisplayTypeDataSourcesTableViewController__gatherDataFromDataSource___block_invoke;
  v69[3] = &unk_2796E7768;
  v69[4] = self;
  v6 = [allSources hk_filter:v69];
  v50 = [v6 mutableCopy];

  v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  allSources2 = [sources allSources];
  v49 = [allSources2 hk_mapToDictionary:&__block_literal_global_5];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v51 = sources;
  orderedAppSources = [sources orderedAppSources];
  v10 = [orderedAppSources countByEnumeratingWithState:&v65 objects:v72 count:16];
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
          objc_enumerationMutation(orderedAppSources);
        }

        v14 = *(*(&v65 + 1) + 8 * v13);
        loadedAuthorizationRecordsBySource = [(WDDisplayTypeDataSourcesTableViewController *)self loadedAuthorizationRecordsBySource];
        source = [v14 source];
        v17 = [loadedAuthorizationRecordsBySource objectForKeyedSubscript:source];

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
      v11 = [orderedAppSources countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v11);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  orderedResearchStudySources = [v51 orderedResearchStudySources];
  v19 = [orderedResearchStudySources countByEnumeratingWithState:&v61 objects:v71 count:16];
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
          objc_enumerationMutation(orderedResearchStudySources);
        }

        v23 = *(*(&v61 + 1) + 8 * v22);
        loadedAuthorizationRecordsBySource2 = [(WDDisplayTypeDataSourcesTableViewController *)self loadedAuthorizationRecordsBySource];
        source2 = [v23 source];
        v26 = [loadedAuthorizationRecordsBySource2 objectForKeyedSubscript:source2];

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
      v20 = [orderedResearchStudySources countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v20);
  }

  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  loadedOrderedDataSources = [(WDDisplayTypeDataSourcesTableViewController *)self loadedOrderedDataSources];
  v29 = [loadedOrderedDataSources countByEnumeratingWithState:&v57 objects:v70 count:16];
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
          objc_enumerationMutation(loadedOrderedDataSources);
        }

        v34 = [v30 objectForKeyedSubscript:{*(*(&v57 + 1) + 8 * v33), v49}];
        if (v34)
        {
          [(NSMutableArray *)v27 addObject:v34];
        }

        ++v33;
      }

      while (v31 != v33);
      v31 = [loadedOrderedDataSources countByEnumeratingWithState:&v57 objects:v70 count:16];
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
  orderedAppSources2 = [v51 orderedAppSources];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __73__WDDisplayTypeDataSourcesTableViewController__gatherDataFromDataSource___block_invoke_3;
  v55[3] = &unk_2796E7768;
  v40 = v52;
  v56 = v40;
  v41 = [orderedAppSources2 hk_filter:v55];

  readerAppSources = self->_readerAppSources;
  self->_readerAppSources = v41;
  v43 = v41;

  orderedResearchStudySources2 = [v51 orderedResearchStudySources];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __73__WDDisplayTypeDataSourcesTableViewController__gatherDataFromDataSource___block_invoke_4;
  v53[3] = &unk_2796E7768;
  v54 = v40;
  v45 = v40;
  v46 = [orderedResearchStudySources2 hk_filter:v53];

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
  tableView = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
  window = [tableView window];

  if (window)
  {
    isLoaded = self->_isLoaded;
    self->_isLoaded = 1;
    if ([(WDDisplayTypeDataSourcesTableViewController *)self _canEditDataSources])
    {
      editButtonItem = [(WDDisplayTypeDataSourcesTableViewController *)self editButtonItem];
      navigationItem = [(WDDisplayTypeDataSourcesTableViewController *)self navigationItem];
      [navigationItem setRightBarButtonItem:editButtonItem];
    }

    else
    {
      editButtonItem = [(WDDisplayTypeDataSourcesTableViewController *)self navigationItem];
      [editButtonItem setRightBarButtonItem:0];
    }

    headerView = self->_headerView;
    localization = [(HKDisplayType *)self->_displayType localization];
    displayName = [localization displayName];
    [(HKTitledIconHeaderView *)headerView setTitle:displayName];

    tableView2 = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
    v13 = tableView2;
    if (isLoaded)
    {
      [tableView2 reloadData];
    }

    else
    {
      [tableView2 beginUpdates];

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

      tableView3 = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
      [tableView3 endUpdates];
    }

    isEditing = [(WDDisplayTypeDataSourcesTableViewController *)self isEditing];
    tableView4 = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
    [tableView4 setEditing:0];

    tableView5 = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
    [tableView5 setEditing:isEditing];
  }

  else
  {
    _HKInitializeLogging();
    tableView5 = HKLogWellnessDashboard();
    if (os_log_type_enabled(tableView5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251E85000, tableView5, OS_LOG_TYPE_DEFAULT, "WDDisplayTypeDataSourcesTableViewController has been removed, not updating UI", buf, 2u);
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
  healthStore = [(WDProfile *)self->_profile healthStore];
  profileIdentifier = [healthStore profileIdentifier];
  type = [profileIdentifier type];

  behavior = [(HKDisplayType *)self->_displayType behavior];
  if ([behavior allowEditView])
  {
    v7 = [(NSMutableArray *)self->_orderedDataSources count]!= 0;
  }

  else
  {
    v7 = 0;
  }

  return type == 1 && v7;
}

- (void)_loadDataSource
{
  sampleType = [(HKDisplayType *)self->_displayType sampleType];
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
  [(WDDisplayTypeDataSourcesTableViewController *)self _fetchOrderedSourcesForType:sampleType completion:v24];
  dispatch_group_enter(v9);
  recordSampleType = [(HKDisplayType *)self->_displayType recordSampleType];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__WDDisplayTypeDataSourcesTableViewController__loadDataSource__block_invoke_2;
  v21[3] = &unk_2796E7800;
  v11 = v5;
  v22 = v11;
  v23 = v9;
  v12 = v9;
  [(WDDisplayTypeDataSourcesTableViewController *)self _fetchDataSourcesForSampleType:recordSampleType completion:v21];
  if ([sampleType code] == 80)
  {
    [(WDDisplayTypeDataSourcesTableViewController *)self _fetchBloodPressureAuthorizationRecordsBySource];
  }

  else
  {
    [(WDDisplayTypeDataSourcesTableViewController *)self _fetchAuthorizationRecordsBySourceForType:sampleType];
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

- (void)_fetchOrderedSourcesForType:(id)type completion:(id)completion
{
  completionCopy = completion;
  sourceOrderController = self->_sourceOrderController;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__WDDisplayTypeDataSourcesTableViewController__fetchOrderedSourcesForType_completion___block_invoke;
  v9[3] = &unk_2796E7828;
  v10 = completionCopy;
  v8 = completionCopy;
  [(WDSourceOrderController *)sourceOrderController getOrderedSourcesForDataType:type withCompletion:v9];
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

- (void)_fetchDataSourcesForSampleType:(id)type completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277CCDA10];
  typeCopy = type;
  v9 = [v7 alloc];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__WDDisplayTypeDataSourcesTableViewController__fetchDataSourcesForSampleType_completion___block_invoke;
  v12[3] = &unk_2796E7850;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [v9 initWithSampleType:typeCopy samplePredicate:0 completionHandler:v12];

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
  allKeys = [v5 allKeys];
  v9 = [v7 setWithArray:allKeys];

  allKeys2 = [v6 allKeys];
  [v9 addObjectsFromArray:allKeys2];

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
            requestedReading = 1;
          }

          else
          {
            requestedReading = [v18 requestedReading];
          }

          if ([v16 requestedSharing])
          {
            v24 = 202;
            if (requestedReading)
            {
              v24 = 203;
            }

            goto LABEL_27;
          }

          requestedSharing = [v18 requestedSharing];
          v24 = 202;
          if ((requestedSharing & 1 & requestedReading) != 0)
          {
            v24 = 203;
          }

          if (requestedSharing)
          {
LABEL_27:
            v26 = 201;
          }

          else
          {
            v24 = 202;
            v26 = 200;
          }

          if (requestedReading)
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

- (id)_fetchAuthorizationRecordsBySourceForType:(id)type
{
  typeCopy = type;
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
  [(WDDisplayTypeDataSourcesTableViewController *)self _fetchAuthorizationRecordsBySourceForType:typeCopy completion:v9];
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

- (void)_fetchAuthorizationRecordsBySourceForType:(id)type completion:(id)completion
{
  completionCopy = completion;
  authorizationStore = self->_authorizationStore;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__WDDisplayTypeDataSourcesTableViewController__fetchAuthorizationRecordsBySourceForType_completion___block_invoke;
  v9[3] = &unk_2796E78A0;
  v10 = completionCopy;
  v8 = completionCopy;
  [(HKAuthorizationStore *)authorizationStore fetchAuthorizationRecordsForType:type completion:v9];
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

- (id)_createIndexPathsWithSection:(int64_t)section startingRow:(int64_t)row numIndices:(int64_t)indices
{
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (indices >= 1)
  {
    do
    {
      v9 = [MEMORY[0x277CCAA70] indexPathForRow:row inSection:section];
      [v8 addObject:v9];

      ++row;
      --indices;
    }

    while (indices);
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

  array = [MEMORY[0x277CBEB18] array];
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
          [array addObject:v21];
          [(NSMutableArray *)self->_orderedDataSources removeObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v18);
  }

  [(NSMutableArray *)self->_orderedDataSources addObjectsFromArray:array];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_updateOrderedSources
{
  v5 = [(NSMutableArray *)self->_orderedDataSources hk_map:&__block_literal_global_373];
  sourceOrderController = self->_sourceOrderController;
  objectType = [(HKDisplayType *)self->_displayType objectType];
  [(WDSourceOrderController *)sourceOrderController setOrderedSources:v5 dataType:objectType];
}

- (void)_addDataSources:(id)sources
{
  v29 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
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
        if (([sourcesCopy containsObject:v10] & 1) == 0)
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
  v12 = sourcesCopy;
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

- (BOOL)_sourceIsEnabled:(id)enabled
{
  enabledCopy = enabled;
  profileIdentifier = [(HKHealthStore *)self->_healthStore profileIdentifier];
  type = [profileIdentifier type];

  if (type == 3 || ([(NSMutableSet *)self->_sourcesPendingToggleOn containsObject:enabledCopy]& 1) != 0)
  {
    LOBYTE(v7) = 1;
  }

  else if (([(NSMutableSet *)self->_sourcesPendingToggleOff containsObject:enabledCopy]& 1) != 0)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_authorizationRecordsBySource objectForKeyedSubscript:enabledCopy];
    [v9 status];
    if (HKAuthorizationStatusAllowsSharing())
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      source = [enabledCopy source];
      v7 = [source _requiresAuthorization] ^ 1;
    }
  }

  return v7;
}

- (void)_willDisableSource:(id)source
{
  sourcesPendingToggleOn = self->_sourcesPendingToggleOn;
  sourceCopy = source;
  [(NSMutableSet *)sourcesPendingToggleOn removeObject:sourceCopy];
  [(NSMutableSet *)self->_sourcesPendingToggleOff addObject:sourceCopy];
}

- (void)_willEnableSource:(id)source
{
  sourcesPendingToggleOff = self->_sourcesPendingToggleOff;
  sourceCopy = source;
  [(NSMutableSet *)sourcesPendingToggleOff removeObject:sourceCopy];
  [(NSMutableSet *)self->_sourcesPendingToggleOn addObject:sourceCopy];
}

- (void)_sourceIsEnabledDidChange:(id)change
{
  sourcesPendingToggleOff = self->_sourcesPendingToggleOff;
  changeCopy = change;
  [(NSMutableSet *)sourcesPendingToggleOff removeObject:changeCopy];
  [(NSMutableSet *)self->_sourcesPendingToggleOn removeObject:changeCopy];
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (!self->_isLoaded)
  {
    return 1;
  }

  v5 = [(WDDisplayTypeDataSourcesTableViewController *)self sectionIdentifierForSection:section];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  if (!self->_isLoaded)
  {
    v16 = objc_alloc_init(WDSpinnerTableViewCell);
    goto LABEL_11;
  }

  v9 = -[WDDisplayTypeDataSourcesTableViewController sectionIdentifierForSection:](self, "sectionIdentifierForSection:", [pathCopy section]);
  switch(v9)
  {
    case 2:
      v16 = -[WDDisplayTypeDataSourcesTableViewController _dataSourceCellForTableView:row:](self, "_dataSourceCellForTableView:row:", viewCopy, [v8 row]);
      break;
    case 1:
      readerResearchStudySources = self->_readerResearchStudySources;
      v11 = [v8 row];
      selfCopy2 = self;
      v13 = viewCopy;
      v14 = readerResearchStudySources;
      v15 = 1;
      goto LABEL_8;
    case 0:
      readerAppSources = self->_readerAppSources;
      v11 = [v8 row];
      selfCopy2 = self;
      v13 = viewCopy;
      v14 = readerAppSources;
      v15 = 0;
LABEL_8:
      v16 = [(WDDisplayTypeDataSourcesTableViewController *)selfCopy2 _readerSourceCellForTableView:v13 sourceArray:v14 row:v11 group:v15];
      break;
    default:
      v16 = HKErrorTableViewCell();
      break;
  }

LABEL_11:
  v18 = v16;

  return v18;
}

- (id)_readerSourceCellForTableView:(id)view sourceArray:(id)array row:(unint64_t)row group:(int64_t)group
{
  viewCopy = view;
  arrayCopy = array;
  if (!group)
  {
    v12 = @".ReaderApps";
    goto LABEL_5;
  }

  if (group == 1)
  {
    v12 = @".ResearchStudies";
LABEL_5:
    v13 = [@"Sources" stringByAppendingFormat:v12];
    goto LABEL_7;
  }

  v13 = @"Sources";
LABEL_7:
  if ([arrayCopy count])
  {
    v14 = [arrayCopy objectAtIndexedSubscript:row];
    v15 = [(NSMutableDictionary *)self->_authorizationRecordsBySource objectForKeyedSubscript:v14];
    v16 = [viewCopy dequeueReusableCellWithIdentifier:@"sharing"];
    if (!v16)
    {
      v16 = [objc_alloc(MEMORY[0x277D12AE8]) initWithStyle:0 reuseIdentifier:@"sharing"];
      [v16 setDelegate:self];
    }

    [v16 setSelectionStyle:0];
    source = [v14 source];
    name = [source name];

    [v16 setDisplayText:name];
    if ([(WDDisplayTypeDataSourcesTableViewController *)self isEditing])
    {
      v19 = 0.600000024;
    }

    else
    {
      v19 = 1.0;
    }

    contentView = [v16 contentView];
    [contentView setAlpha:v19];

    [v15 status];
    [v16 setOn:HKAuthorizationStatusAllowsReading()];
    healthStore = [(WDProfile *)self->_profile healthStore];
    profileIdentifier = [healthStore profileIdentifier];
    [v16 setEnabled:{objc_msgSend(profileIdentifier, "type") == 1}];

    v23 = [(__CFString *)v13 stringByAppendingFormat:@".%@", name];

    v24 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:0 suffix:v23];
    [v16 setAccessibilityIdentifier:v24];

    objc_initWeak(&location, self);
    mEMORY[0x277D127A8] = [MEMORY[0x277D127A8] sharedImageManager];
    source2 = [v14 source];
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
    v39 = viewCopy;
    [mEMORY[0x277D127A8] loadIconForSource:source2 syncHandler:v41 asyncHandler:v36];

    v30 = v39;
    _noneTableViewCell = v29;

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);

    v13 = v23;
  }

  else
  {
    _noneTableViewCell = [(WDDisplayTypeDataSourcesTableViewController *)self _noneTableViewCell];
    v32 = MEMORY[0x277CCACA8];
    v33 = [(__CFString *)v13 stringByAppendingString:@".None"];
    v34 = [v32 healthAccessibilityIdentifier:0 suffix:v33];
    [_noneTableViewCell setAccessibilityIdentifier:v34];
  }

  return _noneTableViewCell;
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

- (id)_dataSourceCellForTableView:(id)view row:(unint64_t)row
{
  viewCopy = view;
  v7 = [@"Sources" stringByAppendingString:@".DataSources"];
  if ([(NSMutableArray *)self->_orderedDataSources count])
  {
    v8 = [(NSMutableArray *)self->_orderedDataSources objectAtIndexedSubscript:row];
    v9 = [viewCopy dequeueReusableCellWithIdentifier:@"provider"];
    if (!v9)
    {
      v9 = [[WDDataProviderTableViewCell alloc] initWithStyle:3 reuseIdentifier:@"provider"];
      [(WDDataProviderTableViewCell *)v9 setShowsReorderControl:1];
      [(WDDataProviderTableViewCell *)v9 setShouldIndentWhileEditing:0];
      [(WDDataProviderTableViewCell *)v9 setAccessoryType:[(HKDisplayType *)self->_displayType isActivitySummary]^ 1];
    }

    source = [v8 source];
    name = [source name];

    [(WDDataProviderTableViewCell *)v9 setDisplayName:name];
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
    v15 = [v7 stringByAppendingFormat:@".%@", name];

    v16 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:0 suffix:v15];
    [(WDDataProviderTableViewCell *)v9 setAccessibilityIdentifier:v16];

    objc_initWeak(&location, self);
    mEMORY[0x277D127A8] = [MEMORY[0x277D127A8] sharedImageManager];
    source2 = [v8 source];
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
    v27 = viewCopy;
    [mEMORY[0x277D127A8] loadIconForSource:source2 syncHandler:v29 asyncHandler:v24];

    v22 = v27;
    _noneTableViewCell = v21;

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);

    v7 = v15;
  }

  else
  {
    _noneTableViewCell = [(WDDisplayTypeDataSourcesTableViewController *)self _noneTableViewCell];
    v14 = [v7 stringByAppendingString:@".None"];
    [(WDDataProviderTableViewCell *)_noneTableViewCell setAccessibilityIdentifier:v14];
  }

  return _noneTableViewCell;
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
  textLabel = [v2 textLabel];
  [textLabel setText:v4];

  v6 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  textLabel2 = [v2 textLabel];
  [textLabel2 setFont:v6];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  textLabel3 = [v2 textLabel];
  [textLabel3 setTextColor:secondaryLabelColor];

  [v2 setSelectionStyle:0];

  return v2;
}

- (void)_handleReturnedImage:(id)image forSource:(id)source cell:(id)cell tableView:(id)view fetchError:(id)error
{
  imageCopy = image;
  sourceCopy = source;
  cellCopy = cell;
  if (imageCopy && !error)
  {
    v15 = [view indexPathForCell:cellCopy];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 row];
      orderedDataSources = [(WDDisplayTypeDataSourcesTableViewController *)self orderedDataSources];
      v19 = [orderedDataSources count];

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

      orderedDataSources2 = [(WDDisplayTypeDataSourcesTableViewController *)self orderedDataSources];
      v21 = [orderedDataSources2 objectAtIndex:{objc_msgSend(v16, "row")}];
      source = [v21 source];

      if ([source isEqual:sourceCopy])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [cellCopy setIconImage:imageCopy];
        }

        else
        {
          imageView = [cellCopy imageView];
          [imageView setImage:imageCopy];
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      source = HKLogWellnessDashboard();
      if (os_log_type_enabled(source, OS_LOG_TYPE_ERROR))
      {
        [WDDisplayTypeDataSourcesTableViewController _handleReturnedImage:source forSource:? cell:? tableView:? fetchError:?];
      }
    }

LABEL_15:
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v5 = [(WDDisplayTypeDataSourcesTableViewController *)self sectionIdentifierForSection:section];
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
      isDocument = [(HKDisplayType *)self->_displayType isDocument];
      v7 = @"APPS_READ_ACCESS_HEADER";
      if (isDocument)
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

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = [(WDDisplayTypeDataSourcesTableViewController *)self sectionIdentifierForSection:section];
  switch(v5)
  {
    case 2:
      profileIdentifier = [(HKHealthStore *)self->_healthStore profileIdentifier];
      type = [profileIdentifier type];

      behavior = [(HKDisplayType *)self->_displayType behavior];
      allowsSourceReordering = [behavior allowsSourceReordering];

      v6 = MEMORY[0x277CCACA8];
      v7 = WDBundle();
      v8 = v7;
      if (type == 3)
      {
        if (allowsSourceReordering)
        {
          v18 = @"%1$@_DATA_TYPE_PROVIDERS_EXPLANATION_%2$@";
        }

        else
        {
          v18 = @"%1$@_DATA_TYPE_PROVIDERS_EXPLANATION_NO_REORDERING_%2$@";
        }

        v10 = [v7 localizedStringForKey:v18 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Tinker"];
        synchronouslyFetchFirstName = [(HKProfileStore *)self->_profileStore synchronouslyFetchFirstName];
        localization = [(HKDisplayType *)self->_displayType localization];
        embeddedDisplayName = [localization embeddedDisplayName];
        v13 = [v6 stringWithFormat:v10, synchronouslyFetchFirstName, embeddedDisplayName];

        goto LABEL_7;
      }

      if (allowsSourceReordering)
      {
        v9 = @"DATA_TYPE_PROVIDERS_EXPLANATION";
      }

      else
      {
        v9 = @"DATA_TYPE_PROVIDERS_EXPLANATION_NO_REORDERING";
      }

LABEL_6:
      v10 = [v7 localizedStringForKey:v9 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
      synchronouslyFetchFirstName = [(HKDisplayType *)self->_displayType localization];
      localization = [synchronouslyFetchFirstName embeddedDisplayName];
      v13 = [v6 stringWithFormat:v10, localization];
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

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  behavior = [(HKDisplayType *)self->_displayType behavior];
  allowEditView = [behavior allowEditView];

  v8 = allowEditView && -[WDDisplayTypeDataSourcesTableViewController sectionIdentifierForSection:](self, "sectionIdentifierForSection:", [pathCopy section]) == 2 && -[NSMutableArray count](self->_orderedDataSources, "count") != 0;
  return v8;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  if (-[WDDisplayTypeDataSourcesTableViewController sectionIdentifierForSection:](self, "sectionIdentifierForSection:", [path section]) != 2)
  {
    return 0;
  }

  behavior = [(HKDisplayType *)self->_displayType behavior];
  allowsSourceReordering = [behavior allowsSourceReordering];

  return allowsSourceReordering;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  orderedDataSources = self->_orderedDataSources;
  indexPathCopy = indexPath;
  v11 = -[NSMutableArray objectAtIndexedSubscript:](orderedDataSources, "objectAtIndexedSubscript:", [path row]);
  [(NSMutableArray *)self->_orderedDataSources removeObject:v11];
  v9 = self->_orderedDataSources;
  v10 = [indexPathCopy row];

  [(NSMutableArray *)v9 insertObject:v11 atIndex:v10];
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[WDDisplayTypeDataSourcesTableViewController sectionIdentifierForSection:](self, "sectionIdentifierForSection:", [pathCopy section]) == 2 && -[NSMutableArray count](self->_orderedDataSources, "count"))
  {
    v6 = pathCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v33[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  if (-[WDDisplayTypeDataSourcesTableViewController sectionIdentifierForSection:](self, "sectionIdentifierForSection:", [pathCopy section]) == 2 && -[NSMutableArray count](self->_orderedDataSources, "count"))
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_orderedDataSources, "objectAtIndexedSubscript:", [pathCopy row]);
    isEditing = [(WDDisplayTypeDataSourcesTableViewController *)self isEditing];
    source = [v8 source];
    v11 = source;
    if (isEditing)
    {
      _requiresAuthorization = [source _requiresAuthorization];

      if (_requiresAuthorization)
      {
        v13 = [viewCopy cellForRowAtIndexPath:pathCopy];
        isActive = [v13 isActive];
        v15 = [(NSMutableDictionary *)self->_authorizationRecordsBySource objectForKeyedSubscript:v8];
        if (v15)
        {
          if (isActive)
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

          v33[0] = pathCopy;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
          [viewCopy reloadRowsAtIndexPaths:v21 withRowAnimation:0];

          [v15 setStatus:v16];
          objc_initWeak(&location, self);
          v22 = [(WDDisplayTypeDataSourcesTableViewController *)self _authorizationStatusesWithAuth:v16];
          authorizationStore = self->_authorizationStore;
          source2 = [v8 source];
          bundleIdentifier = [source2 bundleIdentifier];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __81__WDDisplayTypeDataSourcesTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
          v27[3] = &unk_2796E7938;
          objc_copyWeak(&v31, &location);
          v28 = v8;
          v29 = viewCopy;
          v30 = pathCopy;
          [(HKAuthorizationStore *)authorizationStore setAuthorizationStatuses:v22 authorizationModes:MEMORY[0x277CBEC10] forBundleIdentifier:bundleIdentifier options:0 completion:v27];

          objc_destroyWeak(&v31);
          objc_destroyWeak(&location);
        }
      }
    }

    else
    {
      v17 = [(WDDisplayTypeDataSourcesTableViewController *)self _makeDataListViewControllerForSource:source];

      source3 = [v8 source];
      name = [source3 name];
      [v17 setTitle:name];

      navigationController = [(WDDisplayTypeDataSourcesTableViewController *)self navigationController];
      [navigationController pushViewController:v17 animated:1];
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

- (id)_authorizationStatusesWithAuth:(int64_t)auth
{
  v17[2] = *MEMORY[0x277D85DE8];
  objectType = [(HKDisplayType *)self->_displayType objectType];
  code = [objectType code];

  if (code == 80)
  {
    objectType2 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC978]];
    v8 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC980]];
    v16[0] = objectType2;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:auth];
    v16[1] = v8;
    v17[0] = v9;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:auth];
    v17[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    objectType2 = [(HKDisplayType *)self->_displayType objectType];
    v14 = objectType2;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:auth];
    v15 = v8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_makeDataListViewControllerForSource:(id)source
{
  v4 = [MEMORY[0x277CCD838] predicateForObjectsFromSource:source];
  healthStore = [(WDProfile *)self->_profile healthStore];
  v6 = [HBXHealthAppPluginFactory makeDataListViewControllerForHealthStore:healthStore displayType:self->_displayType predicate:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    displayType = self->_displayType;
    profile = self->_profile;
    unitController = [(WDProfile *)profile unitController];
    v11 = [(HKDisplayType *)displayType wd_listViewControllerDataProviderWithProfile:profile unitController:unitController];

    [v11 setDefaultQueryPredicate:v4];
    v7 = [[WDDataListViewController alloc] initWithDisplayType:self->_displayType profile:self->_profile dataProvider:v11 usingInsetStyling:1];
    if ([(WDDisplayTypeDataSourcesTableViewController *)self shouldInsetSectionContentForDataSourceDataList])
    {
      tableView = [(WDDataListViewController *)v7 tableView];
      [tableView _setSectionContentInsetFollowsLayoutMargins:1];

      v13 = *MEMORY[0x277D12798];
      tableView2 = [(WDDataListViewController *)v7 tableView];
      [tableView2 _setSectionCornerRadius:v13];
    }
  }

  return v7;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  if (-[WDDisplayTypeDataSourcesTableViewController sectionIdentifierForSection:](self, "sectionIdentifierForSection:", [indexPathCopy section]) == 2)
  {
    v9 = -[NSMutableArray objectAtIndexedSubscript:](self->_orderedDataSources, "objectAtIndexedSubscript:", [indexPathCopy row]);
    if ([(WDDisplayTypeDataSourcesTableViewController *)self _sourceIsEnabled:v9])
    {
      v10 = indexPathCopy;
    }

    else
    {
      v10 = pathCopy;
    }

    v11 = v10;
  }

  else
  {
    v11 = pathCopy;
  }

  return v11;
}

- (void)switchCellValueChanged:(id)changed value:(BOOL)value
{
  changedCopy = changed;
  tableView = [(WDDisplayTypeDataSourcesTableViewController *)self tableView];
  v16 = [tableView indexPathForCell:changedCopy];

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
  source = [v9 source];
  bundleIdentifier = [source bundleIdentifier];
  [(HKAuthorizationStore *)authorizationStore setAuthorizationStatuses:v12 authorizationModes:MEMORY[0x277CBEC10] forBundleIdentifier:bundleIdentifier options:0 completion:&__block_literal_global_458];
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

- (void)sourceListDataSourceDidUpdate:(id)update
{
  [(WDDisplayTypeDataSourcesTableViewController *)self _gatherDataFromDataSource:update];

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
    navigationItem = [(WDDisplayTypeDataSourcesTableViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v6];
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
    navigationItem = [(WDDisplayTypeDataSourcesTableViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:0];
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