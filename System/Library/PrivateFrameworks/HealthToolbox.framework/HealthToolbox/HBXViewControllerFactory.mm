@interface HBXViewControllerFactory
+ (NSMutableDictionary)factories;
+ (id)sharedInstance;
+ (id)sharedInstanceForHealthStore:(id)store;
+ (void)resetSharedInstances;
- (HBXViewControllerFactory)init;
- (HBXViewControllerFactory)initWithHealthStore:(id)store;
- (HKApplicationProviding)applicationProvider;
- (id)createClinicalDocumentOverviewViewControllerWithSidebarIdentifier:(id)identifier;
- (id)createDataSourcesTableViewController:(id)controller;
- (id)createDeletedSourceMessageViewControllerForSource:(id)source;
- (id)createElectrocardiogramDataMetadataViewControllerWithElectrocardiogram:(id)electrocardiogram dataProvider:(id)provider;
- (id)createElectrocardiogramListDataProvider;
- (id)createHKUnitPreferenceController;
- (id)createInteractiveChartForType:(id)type preferredOverlay:(int64_t)overlay displayDate:(id)date;
- (id)createInteractiveChartForType:(id)type preferredOverlay:(int64_t)overlay displayDateInterval:(id)interval;
- (id)createListViewController:(id)controller;
- (id)createUnitPreferencesController:(id)controller;
- (id)localizedDisplayNameForUnit:(id)unit;
- (id)localizedPreferredUnitDisplayNameForType:(id)type nameContext:(int64_t)context;
- (id)localizedUnitDisplayNameForDisplayType:(id)type nameContext:(int64_t)context;
- (id)preferredUnitForType:(id)type;
- (void)createAndStartExportForViewController:(id)controller shareSheetSourceView:(id)view;
- (void)createDetailViewControllerForSourceModel:(id)model healthStore:(id)store completion:(id)completion;
- (void)fetchUserDefaultForKey:(id)key withCallback:(id)callback;
- (void)updatePreferredUnit:(id)unit forType:(id)type;
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
  profile = [(HBXViewControllerFactory *)self profile];
  unitController = [profile unitController];

  return unitController;
}

+ (id)sharedInstance
{
  os_unfair_recursive_lock_lock_with_options();
  factories = [self factories];
  v4 = [factories count];

  if (v4 >= 0xA)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_251E85000, v5, OS_LOG_TYPE_DEFAULT, "Shared factories reached more than 10, removing all cached factories", v14, 2u);
    }

    factories2 = [self factories];
    [factories2 removeAllObjects];
  }

  factories3 = [self factories];
  primaryStoreIdentifier = [MEMORY[0x277CCD4E8] primaryStoreIdentifier];
  v9 = [factories3 objectForKey:primaryStoreIdentifier];

  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCD4D8]);
    v9 = [[HBXViewControllerFactory alloc] initWithHealthStore:v10];
    factories4 = [self factories];
    primaryStoreIdentifier2 = [MEMORY[0x277CCD4E8] primaryStoreIdentifier];
    [factories4 setObject:v9 forKey:primaryStoreIdentifier2];
  }

  os_unfair_recursive_lock_unlock();

  return v9;
}

+ (id)sharedInstanceForHealthStore:(id)store
{
  storeCopy = store;
  os_unfair_recursive_lock_lock_with_options();
  factories = [self factories];
  v6 = [factories count];

  if (v6 >= 0xA)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_251E85000, v7, OS_LOG_TYPE_DEFAULT, "Shared factories reached more than 10, removing all cached factories", v15, 2u);
    }

    factories2 = [self factories];
    [factories2 removeAllObjects];
  }

  factories3 = [self factories];
  identifier = [storeCopy identifier];
  v11 = [factories3 objectForKey:identifier];

  if (!v11)
  {
    v11 = [[HBXViewControllerFactory alloc] initWithHealthStore:storeCopy];
    factories4 = [self factories];
    identifier2 = [storeCopy identifier];
    [factories4 setObject:v11 forKey:identifier2];
  }

  os_unfair_recursive_lock_unlock();

  return v11;
}

+ (void)resetSharedInstances
{
  os_unfair_recursive_lock_lock_with_options();
  factories = [self factories];
  [factories removeAllObjects];

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

- (HBXViewControllerFactory)initWithHealthStore:(id)store
{
  storeCopy = store;
  v18.receiver = self;
  v18.super_class = HBXViewControllerFactory;
  v5 = [(HBXViewControllerFactory *)&v18 init];
  if (v5)
  {
    v6 = [[HBXShimWDProfile alloc] initWithHealthStore:storeCopy];
    [(HBXViewControllerFactory *)v5 setProfile:v6];

    v7 = [HBXUnitSupport alloc];
    profile = [(HBXViewControllerFactory *)v5 profile];
    unitController = [profile unitController];
    profile2 = [(HBXViewControllerFactory *)v5 profile];
    displayTypeController = [profile2 displayTypeController];
    v12 = [(HBXUnitSupport *)v7 initWithUnitPreferenceController:unitController displayTypeController:displayTypeController];
    [(HBXViewControllerFactory *)v5 setUnitSupport:v12];

    v13 = objc_alloc(MEMORY[0x277D128C0]);
    profile3 = [(HBXViewControllerFactory *)v5 profile];
    healthStore = [profile3 healthStore];
    v16 = [v13 initWithHealthStore:healthStore];
    [(HBXViewControllerFactory *)v5 setChartFactory:v16];
  }

  return v5;
}

- (void)createDetailViewControllerForSourceModel:(id)model healthStore:(id)store completion:(id)completion
{
  completionCopy = completion;
  storeCopy = store;
  modelCopy = model;
  v10 = [[HBXShimWDProfile alloc] initWithHealthStore:storeCopy];

  [objc_opt_class() createDetailViewControllerForSourceModel:modelCopy profile:v10 completion:completionCopy];
}

- (id)createDeletedSourceMessageViewControllerForSource:(id)source
{
  sourceCopy = source;
  v4 = [[WDSourceMessageViewController alloc] initWithStyle:1 source:sourceCopy];

  return v4;
}

- (id)createInteractiveChartForType:(id)type preferredOverlay:(int64_t)overlay displayDate:(id)date
{
  v8 = MEMORY[0x277CCA970];
  typeCopy = type;
  v10 = [v8 hk_instantaneousDateIntervalWithDate:date];
  v11 = [(HBXViewControllerFactory *)self createInteractiveChartForType:typeCopy preferredOverlay:overlay displayDateInterval:v10];

  return v11;
}

- (id)createInteractiveChartForType:(id)type preferredOverlay:(int64_t)overlay displayDateInterval:(id)interval
{
  chartFactory = self->_chartFactory;
  intervalCopy = interval;
  identifier = [type identifier];
  v10 = [(HKHealthChartFactory *)chartFactory interactiveChartForTypeIdentifier:identifier preferredOverlay:overlay displayDateInterval:intervalCopy restorationUserActivity:0 chartSummaryTrendModel:0];

  return v10;
}

- (id)createClinicalDocumentOverviewViewControllerWithSidebarIdentifier:(id)identifier
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D12828];
  identifierCopy = identifier;
  v6 = [v4 categoryWithID:9];
  displayTypeController = [(WDProfile *)self->_profile displayTypeController];
  v8 = [displayTypeController displayTypeWithIdentifier:&unk_28642DAB0];

  v9 = HKHealthKitFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"CLINICAL_DOCUMENTS" value:&stru_28641D9B8 table:*MEMORY[0x277CCC1B0]];

  v11 = [WDDocumentOverviewViewController alloc];
  v16[0] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [(WDDocumentOverviewViewController *)v11 initWithDisplayTypes:v12 profile:self->_profile title:v10 category:v6 sidebarIdentifier:identifierCopy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)createUnitPreferencesController:(id)controller
{
  profile = self->_profile;
  controllerCopy = controller;
  displayTypeController = [(WDProfile *)profile displayTypeController];
  v7 = [displayTypeController displayTypeForObjectType:controllerCopy];

  v8 = HKUnitPreferenceControllerAvailableUnitsForDisplayType();
  v9 = [WDUnitPreferenceViewController alloc];
  unitController = [(WDProfile *)self->_profile unitController];
  v11 = [(WDUnitPreferenceViewController *)v9 initWithUnits:v8 displayType:v7 unitController:unitController];

  return v11;
}

- (id)createElectrocardiogramListDataProvider
{
  displayTypeController = [(WDProfile *)self->_profile displayTypeController];
  electrocardiogramType = [MEMORY[0x277CCD3A8] electrocardiogramType];
  v5 = [displayTypeController displayTypeForObjectType:electrocardiogramType];

  v6 = [[WDElectrocardiogramListDataProvider alloc] initWithDisplayType:v5 profile:self->_profile];

  return v6;
}

- (id)createElectrocardiogramDataMetadataViewControllerWithElectrocardiogram:(id)electrocardiogram dataProvider:(id)provider
{
  providerCopy = provider;
  electrocardiogramCopy = electrocardiogram;
  v7 = [[WDElectrocardiogramDataMetadataViewController alloc] initWithSample:electrocardiogramCopy delegate:providerCopy mode:0 activeAlgorithmVersion:0];

  return v7;
}

- (id)createListViewController:(id)controller
{
  controllerCopy = controller;
  identifier = [controllerCopy identifier];
  workoutRouteType = [MEMORY[0x277CCD920] workoutRouteType];
  identifier2 = [workoutRouteType identifier];

  if (identifier == identifier2)
  {
    v12 = [MEMORY[0x277D12830] displayTypeWithIdentifier:102];
    v16 = WDWorkoutRouteListDataProvider;
  }

  else
  {
    identifier3 = [controllerCopy identifier];
    heartbeatSeriesType = [MEMORY[0x277CCD920] heartbeatSeriesType];
    identifier4 = [heartbeatSeriesType identifier];

    if (identifier3 != identifier4)
    {
      displayTypeController = [(WDProfile *)self->_profile displayTypeController];
      v12 = [displayTypeController displayTypeForObjectType:controllerCopy];

      profile = self->_profile;
      unitController = [(WDProfile *)profile unitController];
      v15 = [v12 wd_dataListViewControllerWithProfile:profile unitController:unitController];
      goto LABEL_7;
    }

    v12 = [MEMORY[0x277D12830] displayTypeWithIdentifier:119];
    v16 = WDHeartbeatSequenceListDataProvider;
  }

  v17 = [v16 alloc];
  profile = [(HBXViewControllerFactory *)self profile];
  unitController = [v17 initWithDisplayType:v12 profile:profile];

  v19 = [WDDataListViewController alloc];
  profile2 = [(HBXViewControllerFactory *)self profile];
  v15 = [(WDDataListViewController *)v19 initWithDisplayType:v12 profile:profile2 dataProvider:unitController usingInsetStyling:1];

LABEL_7:

  return v15;
}

- (id)createDataSourcesTableViewController:(id)controller
{
  controllerCopy = controller;
  identifier = [controllerCopy identifier];
  workoutRouteType = [MEMORY[0x277CCD920] workoutRouteType];
  identifier2 = [workoutRouteType identifier];

  if (identifier == identifier2)
  {
    v17 = MEMORY[0x277D12830];
    v18 = 102;
  }

  else
  {
    identifier3 = [controllerCopy identifier];
    heartbeatSeriesType = [MEMORY[0x277CCD920] heartbeatSeriesType];
    identifier4 = [heartbeatSeriesType identifier];

    if (identifier3 != identifier4)
    {
      displayTypeController = [(WDProfile *)self->_profile displayTypeController];
      v12 = [displayTypeController displayTypeForObjectType:controllerCopy];

      v13 = [WDDisplayTypeDataSourcesTableViewController alloc];
      displayCategory = [v12 displayCategory];
      sourceOrderController = [(WDProfile *)self->_profile sourceOrderController];
      v16 = [(WDDisplayTypeDataSourcesTableViewController *)v13 initWithDisplayType:v12 displayCategory:displayCategory sourceOrderController:sourceOrderController profile:self->_profile];
      goto LABEL_7;
    }

    v17 = MEMORY[0x277D12830];
    v18 = 119;
  }

  v12 = [v17 displayTypeWithIdentifier:v18];
  displayCategory = [MEMORY[0x277D12828] categoryWithID:{objc_msgSend(v12, "categoryIdentifier")}];
  v19 = [WDDisplayTypeDataSourcesTableViewController alloc];
  sourceOrderController = [(HBXViewControllerFactory *)self profile];
  v15SourceOrderController = [sourceOrderController sourceOrderController];
  profile = [(HBXViewControllerFactory *)self profile];
  v16 = [(WDDisplayTypeDataSourcesTableViewController *)v19 initWithDisplayType:v12 displayCategory:displayCategory sourceOrderController:v15SourceOrderController profile:profile];

LABEL_7:

  return v16;
}

- (void)createAndStartExportForViewController:(id)controller shareSheetSourceView:(id)view
{
  viewCopy = view;
  controllerCopy = controller;
  v9 = [[WDExportController alloc] initWithProfile:self->_profile];
  applicationProvider = [(HBXViewControllerFactory *)self applicationProvider];
  [(WDExportController *)v9 setApplicationProvider:applicationProvider];

  [(WDExportController *)v9 verifyExportWithPresentingViewController:controllerCopy shareSheetSourceView:viewCopy];
}

- (id)localizedDisplayNameForUnit:(id)unit
{
  unitCopy = unit;
  unitSupport = [(HBXViewControllerFactory *)self unitSupport];
  v6 = [unitSupport localizedDisplayNameForUnit:unitCopy nameContext:1];

  return v6;
}

- (id)localizedPreferredUnitDisplayNameForType:(id)type nameContext:(int64_t)context
{
  typeCopy = type;
  unitSupport = [(HBXViewControllerFactory *)self unitSupport];
  v8 = [unitSupport localizedPreferredUnitDisplayNameForType:typeCopy nameContext:context];

  return v8;
}

- (id)preferredUnitForType:(id)type
{
  typeCopy = type;
  unitSupport = [(HBXViewControllerFactory *)self unitSupport];
  v6 = [unitSupport preferredUnitForType:typeCopy];

  return v6;
}

- (void)updatePreferredUnit:(id)unit forType:(id)type
{
  typeCopy = type;
  unitCopy = unit;
  unitSupport = [(HBXViewControllerFactory *)self unitSupport];
  [unitSupport updatePreferredUnit:unitCopy forType:typeCopy];
}

- (id)localizedUnitDisplayNameForDisplayType:(id)type nameContext:(int64_t)context
{
  typeCopy = type;
  profile = [(HBXViewControllerFactory *)self profile];
  unitController = [profile unitController];
  v9 = [unitController localizedDisplayNameForDisplayType:typeCopy value:0 nameContext:context];

  return v9;
}

- (void)fetchUserDefaultForKey:(id)key withCallback:(id)callback
{
  callbackCopy = callback;
  keyCopy = key;
  profile = [(HBXViewControllerFactory *)self profile];
  userDefaults = [profile userDefaults];
  [userDefaults valueForKey:keyCopy callback:callbackCopy];
}

- (HKApplicationProviding)applicationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationProvider);

  return WeakRetained;
}

@end