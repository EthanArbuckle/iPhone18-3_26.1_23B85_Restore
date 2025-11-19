@interface HBXViewControllerFactory
+ (NSMutableDictionary)factories;
+ (id)sharedInstance;
+ (id)sharedInstanceForHealthStore:(id)a3;
+ (void)resetSharedInstances;
- (HBXViewControllerFactory)init;
- (HBXViewControllerFactory)initWithHealthStore:(id)a3;
- (HKApplicationProviding)applicationProvider;
- (id)createClinicalDocumentOverviewViewControllerWithSidebarIdentifier:(id)a3;
- (id)createDataSourcesTableViewController:(id)a3;
- (id)createDeletedSourceMessageViewControllerForSource:(id)a3;
- (id)createElectrocardiogramDataMetadataViewControllerWithElectrocardiogram:(id)a3 dataProvider:(id)a4;
- (id)createElectrocardiogramListDataProvider;
- (id)createHKUnitPreferenceController;
- (id)createInteractiveChartForType:(id)a3 preferredOverlay:(int64_t)a4 displayDate:(id)a5;
- (id)createInteractiveChartForType:(id)a3 preferredOverlay:(int64_t)a4 displayDateInterval:(id)a5;
- (id)createListViewController:(id)a3;
- (id)createUnitPreferencesController:(id)a3;
- (id)localizedDisplayNameForUnit:(id)a3;
- (id)localizedPreferredUnitDisplayNameForType:(id)a3 nameContext:(int64_t)a4;
- (id)localizedUnitDisplayNameForDisplayType:(id)a3 nameContext:(int64_t)a4;
- (id)preferredUnitForType:(id)a3;
- (void)createAndStartExportForViewController:(id)a3 shareSheetSourceView:(id)a4;
- (void)createDetailViewControllerForSourceModel:(id)a3 healthStore:(id)a4 completion:(id)a5;
- (void)fetchUserDefaultForKey:(id)a3 withCallback:(id)a4;
- (void)updatePreferredUnit:(id)a3 forType:(id)a4;
@end

@implementation HBXViewControllerFactory

+ (NSMutableDictionary)factories
{
  os_unfair_lock_assert_owner(&_factoriesLock);
  v2 = _factories;
  if (!_factories)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = _factories;
    _factories = v3;

    v2 = _factories;
  }

  return v2;
}

- (id)createHKUnitPreferenceController
{
  v2 = [(HBXViewControllerFactory *)self profile];
  v3 = [v2 unitController];

  return v3;
}

+ (id)sharedInstance
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [a1 factories];
  v4 = [v3 count];

  if (v4 >= 0xA)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_251E85000, v5, OS_LOG_TYPE_DEFAULT, "Shared factories reached more than 10, removing all cached factories", v14, 2u);
    }

    v6 = [a1 factories];
    [v6 removeAllObjects];
  }

  v7 = [a1 factories];
  v8 = [MEMORY[0x277CCD4E8] primaryStoreIdentifier];
  v9 = [v7 objectForKey:v8];

  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCD4D8]);
    v9 = [[HBXViewControllerFactory alloc] initWithHealthStore:v10];
    v11 = [a1 factories];
    v12 = [MEMORY[0x277CCD4E8] primaryStoreIdentifier];
    [v11 setObject:v9 forKey:v12];
  }

  os_unfair_recursive_lock_unlock();

  return v9;
}

+ (id)sharedInstanceForHealthStore:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [a1 factories];
  v6 = [v5 count];

  if (v6 >= 0xA)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_251E85000, v7, OS_LOG_TYPE_DEFAULT, "Shared factories reached more than 10, removing all cached factories", v15, 2u);
    }

    v8 = [a1 factories];
    [v8 removeAllObjects];
  }

  v9 = [a1 factories];
  v10 = [v4 identifier];
  v11 = [v9 objectForKey:v10];

  if (!v11)
  {
    v11 = [[HBXViewControllerFactory alloc] initWithHealthStore:v4];
    v12 = [a1 factories];
    v13 = [v4 identifier];
    [v12 setObject:v11 forKey:v13];
  }

  os_unfair_recursive_lock_unlock();

  return v11;
}

+ (void)resetSharedInstances
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [a1 factories];
  [v3 removeAllObjects];

  os_unfair_recursive_lock_unlock();
}

- (HBXViewControllerFactory)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HBXViewControllerFactory)initWithHealthStore:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HBXViewControllerFactory;
  v5 = [(HBXViewControllerFactory *)&v18 init];
  if (v5)
  {
    v6 = [[HBXShimWDProfile alloc] initWithHealthStore:v4];
    [(HBXViewControllerFactory *)v5 setProfile:v6];

    v7 = [HBXUnitSupport alloc];
    v8 = [(HBXViewControllerFactory *)v5 profile];
    v9 = [v8 unitController];
    v10 = [(HBXViewControllerFactory *)v5 profile];
    v11 = [v10 displayTypeController];
    v12 = [(HBXUnitSupport *)v7 initWithUnitPreferenceController:v9 displayTypeController:v11];
    [(HBXViewControllerFactory *)v5 setUnitSupport:v12];

    v13 = objc_alloc(MEMORY[0x277D128C0]);
    v14 = [(HBXViewControllerFactory *)v5 profile];
    v15 = [v14 healthStore];
    v16 = [v13 initWithHealthStore:v15];
    [(HBXViewControllerFactory *)v5 setChartFactory:v16];
  }

  return v5;
}

- (void)createDetailViewControllerForSourceModel:(id)a3 healthStore:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HBXShimWDProfile alloc] initWithHealthStore:v8];

  [objc_opt_class() createDetailViewControllerForSourceModel:v9 profile:v10 completion:v7];
}

- (id)createDeletedSourceMessageViewControllerForSource:(id)a3
{
  v3 = a3;
  v4 = [[WDSourceMessageViewController alloc] initWithStyle:1 source:v3];

  return v4;
}

- (id)createInteractiveChartForType:(id)a3 preferredOverlay:(int64_t)a4 displayDate:(id)a5
{
  v8 = MEMORY[0x277CCA970];
  v9 = a3;
  v10 = [v8 hk_instantaneousDateIntervalWithDate:a5];
  v11 = [(HBXViewControllerFactory *)self createInteractiveChartForType:v9 preferredOverlay:a4 displayDateInterval:v10];

  return v11;
}

- (id)createInteractiveChartForType:(id)a3 preferredOverlay:(int64_t)a4 displayDateInterval:(id)a5
{
  chartFactory = self->_chartFactory;
  v8 = a5;
  v9 = [a3 identifier];
  v10 = [(HKHealthChartFactory *)chartFactory interactiveChartForTypeIdentifier:v9 preferredOverlay:a4 displayDateInterval:v8 restorationUserActivity:0 chartSummaryTrendModel:0];

  return v10;
}

- (id)createClinicalDocumentOverviewViewControllerWithSidebarIdentifier:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D12828];
  v5 = a3;
  v6 = [v4 categoryWithID:9];
  v7 = [(WDProfile *)self->_profile displayTypeController];
  v8 = [v7 displayTypeWithIdentifier:&unk_28642DAB0];

  v9 = HKHealthKitFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"CLINICAL_DOCUMENTS" value:&stru_28641D9B8 table:*MEMORY[0x277CCC1B0]];

  v11 = [WDDocumentOverviewViewController alloc];
  v16[0] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [(WDDocumentOverviewViewController *)v11 initWithDisplayTypes:v12 profile:self->_profile title:v10 category:v6 sidebarIdentifier:v5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)createUnitPreferencesController:(id)a3
{
  profile = self->_profile;
  v5 = a3;
  v6 = [(WDProfile *)profile displayTypeController];
  v7 = [v6 displayTypeForObjectType:v5];

  v8 = HKUnitPreferenceControllerAvailableUnitsForDisplayType();
  v9 = [WDUnitPreferenceViewController alloc];
  v10 = [(WDProfile *)self->_profile unitController];
  v11 = [(WDUnitPreferenceViewController *)v9 initWithUnits:v8 displayType:v7 unitController:v10];

  return v11;
}

- (id)createElectrocardiogramListDataProvider
{
  v3 = [(WDProfile *)self->_profile displayTypeController];
  v4 = [MEMORY[0x277CCD3A8] electrocardiogramType];
  v5 = [v3 displayTypeForObjectType:v4];

  v6 = [[WDElectrocardiogramListDataProvider alloc] initWithDisplayType:v5 profile:self->_profile];

  return v6;
}

- (id)createElectrocardiogramDataMetadataViewControllerWithElectrocardiogram:(id)a3 dataProvider:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[WDElectrocardiogramDataMetadataViewController alloc] initWithSample:v6 delegate:v5 mode:0 activeAlgorithmVersion:0];

  return v7;
}

- (id)createListViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [MEMORY[0x277CCD920] workoutRouteType];
  v7 = [v6 identifier];

  if (v5 == v7)
  {
    v12 = [MEMORY[0x277D12830] displayTypeWithIdentifier:102];
    v16 = WDWorkoutRouteListDataProvider;
  }

  else
  {
    v8 = [v4 identifier];
    v9 = [MEMORY[0x277CCD920] heartbeatSeriesType];
    v10 = [v9 identifier];

    if (v8 != v10)
    {
      v11 = [(WDProfile *)self->_profile displayTypeController];
      v12 = [v11 displayTypeForObjectType:v4];

      profile = self->_profile;
      v14 = [(WDProfile *)profile unitController];
      v15 = [v12 wd_dataListViewControllerWithProfile:profile unitController:v14];
      goto LABEL_7;
    }

    v12 = [MEMORY[0x277D12830] displayTypeWithIdentifier:119];
    v16 = WDHeartbeatSequenceListDataProvider;
  }

  v17 = [v16 alloc];
  v18 = [(HBXViewControllerFactory *)self profile];
  v14 = [v17 initWithDisplayType:v12 profile:v18];

  v19 = [WDDataListViewController alloc];
  v20 = [(HBXViewControllerFactory *)self profile];
  v15 = [(WDDataListViewController *)v19 initWithDisplayType:v12 profile:v20 dataProvider:v14 usingInsetStyling:1];

LABEL_7:

  return v15;
}

- (id)createDataSourcesTableViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [MEMORY[0x277CCD920] workoutRouteType];
  v7 = [v6 identifier];

  if (v5 == v7)
  {
    v17 = MEMORY[0x277D12830];
    v18 = 102;
  }

  else
  {
    v8 = [v4 identifier];
    v9 = [MEMORY[0x277CCD920] heartbeatSeriesType];
    v10 = [v9 identifier];

    if (v8 != v10)
    {
      v11 = [(WDProfile *)self->_profile displayTypeController];
      v12 = [v11 displayTypeForObjectType:v4];

      v13 = [WDDisplayTypeDataSourcesTableViewController alloc];
      v14 = [v12 displayCategory];
      v15 = [(WDProfile *)self->_profile sourceOrderController];
      v16 = [(WDDisplayTypeDataSourcesTableViewController *)v13 initWithDisplayType:v12 displayCategory:v14 sourceOrderController:v15 profile:self->_profile];
      goto LABEL_7;
    }

    v17 = MEMORY[0x277D12830];
    v18 = 119;
  }

  v12 = [v17 displayTypeWithIdentifier:v18];
  v14 = [MEMORY[0x277D12828] categoryWithID:{objc_msgSend(v12, "categoryIdentifier")}];
  v19 = [WDDisplayTypeDataSourcesTableViewController alloc];
  v15 = [(HBXViewControllerFactory *)self profile];
  v20 = [v15 sourceOrderController];
  v21 = [(HBXViewControllerFactory *)self profile];
  v16 = [(WDDisplayTypeDataSourcesTableViewController *)v19 initWithDisplayType:v12 displayCategory:v14 sourceOrderController:v20 profile:v21];

LABEL_7:

  return v16;
}

- (void)createAndStartExportForViewController:(id)a3 shareSheetSourceView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[WDExportController alloc] initWithProfile:self->_profile];
  v8 = [(HBXViewControllerFactory *)self applicationProvider];
  [(WDExportController *)v9 setApplicationProvider:v8];

  [(WDExportController *)v9 verifyExportWithPresentingViewController:v7 shareSheetSourceView:v6];
}

- (id)localizedDisplayNameForUnit:(id)a3
{
  v4 = a3;
  v5 = [(HBXViewControllerFactory *)self unitSupport];
  v6 = [v5 localizedDisplayNameForUnit:v4 nameContext:1];

  return v6;
}

- (id)localizedPreferredUnitDisplayNameForType:(id)a3 nameContext:(int64_t)a4
{
  v6 = a3;
  v7 = [(HBXViewControllerFactory *)self unitSupport];
  v8 = [v7 localizedPreferredUnitDisplayNameForType:v6 nameContext:a4];

  return v8;
}

- (id)preferredUnitForType:(id)a3
{
  v4 = a3;
  v5 = [(HBXViewControllerFactory *)self unitSupport];
  v6 = [v5 preferredUnitForType:v4];

  return v6;
}

- (void)updatePreferredUnit:(id)a3 forType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HBXViewControllerFactory *)self unitSupport];
  [v8 updatePreferredUnit:v7 forType:v6];
}

- (id)localizedUnitDisplayNameForDisplayType:(id)a3 nameContext:(int64_t)a4
{
  v6 = a3;
  v7 = [(HBXViewControllerFactory *)self profile];
  v8 = [v7 unitController];
  v9 = [v8 localizedDisplayNameForDisplayType:v6 value:0 nameContext:a4];

  return v9;
}

- (void)fetchUserDefaultForKey:(id)a3 withCallback:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(HBXViewControllerFactory *)self profile];
  v8 = [v9 userDefaults];
  [v8 valueForKey:v7 callback:v6];
}

- (HKApplicationProviding)applicationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationProvider);

  return WeakRetained;
}

@end