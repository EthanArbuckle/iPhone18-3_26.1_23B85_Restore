@interface HROverlayRoomViewController
+ (void)determineChartabilityOfOntologyConcept:(id)concept withApplicationItems:(id)items completion:(id)completion;
+ (void)determineChartabilityOfUserConcept:(id)concept records:(id)records withApplicationItems:(id)items completion:(id)completion;
- (BOOL)supportsShowAllFilters;
- (HROverlayRoomViewController)initWithOntologyConcept:(id)concept configuration:(id)configuration displayDate:(id)date masterDataSource:(id)source seriesDataSources:(id)sources outOfRangeDataSource:(id)dataSource noRangeDataSource:(id)rangeDataSource overlayMode:(int64_t)self0 applicationItems:(id)self1;
- (HROverlayRoomViewController)initWithUserConcept:(id)concept configuration:(id)configuration displayDate:(id)date masterDataSource:(id)source seriesDataSources:(id)sources outOfRangeDataSource:(id)dataSource noRangeDataSource:(id)rangeDataSource overlayMode:(int64_t)self0 applicationItems:(id)self1;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
@end

@implementation HROverlayRoomViewController

- (HROverlayRoomViewController)initWithOntologyConcept:(id)concept configuration:(id)configuration displayDate:(id)date masterDataSource:(id)source seriesDataSources:(id)sources outOfRangeDataSource:(id)dataSource noRangeDataSource:(id)rangeDataSource overlayMode:(int64_t)self0 applicationItems:(id)self1
{
  v35[1] = *MEMORY[0x1E69E9840];
  conceptCopy = concept;
  configurationCopy = configuration;
  obj = source;
  sourceCopy = source;
  sourcesCopy = sources;
  dataSourceCopy = dataSource;
  rangeDataSourceCopy = rangeDataSource;
  v34.receiver = self;
  v34.super_class = HROverlayRoomViewController;
  v20 = [(HKOverlayRoomViewController *)&v34 initWithDisplayDate:date applicationItems:items factorDisplayTypes:0 mode:mode];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_ontologyConcept, concept);
    objc_storeStrong(&v21->_configuration, configuration);
    objc_storeStrong(&v21->_masterDataSource, obj);
    v22 = [sourcesCopy copy];
    seriesDataSources = v21->_seriesDataSources;
    v21->_seriesDataSources = v22;

    objc_storeStrong(&v21->_outOfRangeDataSource, dataSource);
    objc_storeStrong(&v21->_noRangeDataSource, rangeDataSource);
    _verticalAxis = [objc_opt_class() _verticalAxis];
    v25 = [sourceCopy chartDisplayTypeWithVerticalAxis:_verticalAxis];
    v35[0] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    displayTypes = v21->_displayTypes;
    v21->_displayTypes = v26;
  }

  return v21;
}

- (HROverlayRoomViewController)initWithUserConcept:(id)concept configuration:(id)configuration displayDate:(id)date masterDataSource:(id)source seriesDataSources:(id)sources outOfRangeDataSource:(id)dataSource noRangeDataSource:(id)rangeDataSource overlayMode:(int64_t)self0 applicationItems:(id)self1
{
  v35[1] = *MEMORY[0x1E69E9840];
  conceptCopy = concept;
  configurationCopy = configuration;
  obj = source;
  sourceCopy = source;
  sourcesCopy = sources;
  dataSourceCopy = dataSource;
  rangeDataSourceCopy = rangeDataSource;
  v34.receiver = self;
  v34.super_class = HROverlayRoomViewController;
  v20 = [(HKOverlayRoomViewController *)&v34 initWithDisplayDate:date applicationItems:items factorDisplayTypes:0 mode:mode];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_userConcept, concept);
    objc_storeStrong(&v21->_configuration, configuration);
    objc_storeStrong(&v21->_masterDataSource, obj);
    v22 = [sourcesCopy copy];
    seriesDataSources = v21->_seriesDataSources;
    v21->_seriesDataSources = v22;

    objc_storeStrong(&v21->_outOfRangeDataSource, dataSource);
    objc_storeStrong(&v21->_noRangeDataSource, rangeDataSource);
    _verticalAxis = [objc_opt_class() _verticalAxis];
    v25 = [sourceCopy chartDisplayTypeWithVerticalAxis:_verticalAxis];
    v35[0] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    displayTypes = v21->_displayTypes;
    v21->_displayTypes = v26;
  }

  return v21;
}

+ (void)determineChartabilityOfOntologyConcept:(id)concept withApplicationItems:(id)items completion:(id)completion
{
  conceptCopy = concept;
  itemsCopy = items;
  completionCopy = completion;
  healthStore = [itemsCopy healthStore];
  identifier = [conceptCopy identifier];
  v12 = *MEMORY[0x1E696B718];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __102__HROverlayRoomViewController_determineChartabilityOfOntologyConcept_withApplicationItems_completion___block_invoke;
  v16[3] = &unk_1E83DCD08;
  v18 = itemsCopy;
  v19 = completionCopy;
  v17 = conceptCopy;
  v13 = itemsCopy;
  v14 = completionCopy;
  v15 = conceptCopy;
  [healthStore fetchRecordsForConceptId:identifier keyPath:v12 completion:v16];
}

void __102__HROverlayRoomViewController_determineChartabilityOfOntologyConcept_withApplicationItems_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(_TtC15HealthRecordsUI35MedicalRecordChartabilityDeterminer);
  v5 = a1[4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __102__HROverlayRoomViewController_determineChartabilityOfOntologyConcept_withApplicationItems_completion___block_invoke_2;
  v6[3] = &unk_1E83DCCE0;
  v9 = a1[6];
  v7 = a1[4];
  v8 = a1[5];
  [(MedicalRecordChartabilityDeterminer *)v4 determineChartabilityForConcept:v5 records:v3 completion:v6];
}

void __102__HROverlayRoomViewController_determineChartabilityOfOntologyConcept_withApplicationItems_completion___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __102__HROverlayRoomViewController_determineChartabilityOfOntologyConcept_withApplicationItems_completion___block_invoke_3;
  v5[3] = &unk_1E83DCCB8;
  v6 = v3;
  v9 = a1[6];
  v7 = a1[4];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __102__HROverlayRoomViewController_determineChartabilityOfOntologyConcept_withApplicationItems_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 shouldProduceAtLeastOneOverlay];
    v4 = [HROverlayRoomViewController alloc];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) configuration];
    v7 = [*(a1 + 32) latestChartableDate];
    v8 = [*(a1 + 32) masterDataSource];
    v9 = [*(a1 + 32) seriesDataSources];
    v10 = [*(a1 + 32) outOfRangeDataSource];
    v11 = [*(a1 + 32) noRangeDataSource];
    v13 = [(HROverlayRoomViewController *)v4 initWithOntologyConcept:v5 configuration:v6 displayDate:v7 masterDataSource:v8 seriesDataSources:v9 outOfRangeDataSource:v10 noRangeDataSource:v11 overlayMode:v3 applicationItems:*(a1 + 48)];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v12 = *(*(a1 + 56) + 16);

    v12();
  }
}

+ (void)determineChartabilityOfUserConcept:(id)concept records:(id)records withApplicationItems:(id)items completion:(id)completion
{
  conceptCopy = concept;
  itemsCopy = items;
  completionCopy = completion;
  recordsCopy = records;
  v13 = objc_alloc_init(_TtC15HealthRecordsUI35MedicalRecordChartabilityDeterminer);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __106__HROverlayRoomViewController_determineChartabilityOfUserConcept_records_withApplicationItems_completion___block_invoke;
  v17[3] = &unk_1E83DCCE0;
  v19 = itemsCopy;
  v20 = completionCopy;
  v18 = conceptCopy;
  v14 = itemsCopy;
  v15 = conceptCopy;
  v16 = completionCopy;
  [(MedicalRecordChartabilityDeterminer *)v13 determineChartabilityForUserConcept:v15 records:recordsCopy completion:v17];
}

void __106__HROverlayRoomViewController_determineChartabilityOfUserConcept_records_withApplicationItems_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __106__HROverlayRoomViewController_determineChartabilityOfUserConcept_records_withApplicationItems_completion___block_invoke_2;
  v5[3] = &unk_1E83DCCB8;
  v6 = v3;
  v9 = a1[6];
  v7 = a1[4];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __106__HROverlayRoomViewController_determineChartabilityOfUserConcept_records_withApplicationItems_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 shouldProduceAtLeastOneOverlay];
    v4 = [HROverlayRoomViewController alloc];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) configuration];
    v7 = [*(a1 + 32) latestChartableDate];
    v8 = [*(a1 + 32) masterDataSource];
    v9 = [*(a1 + 32) seriesDataSources];
    v10 = [*(a1 + 32) outOfRangeDataSource];
    v11 = [*(a1 + 32) noRangeDataSource];
    v13 = [(HROverlayRoomViewController *)v4 initWithUserConcept:v5 configuration:v6 displayDate:v7 masterDataSource:v8 seriesDataSources:v9 outOfRangeDataSource:v10 noRangeDataSource:v11 overlayMode:v3 applicationItems:*(a1 + 48)];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v12 = *(*(a1 + 56) + 16);

    v12();
  }
}

- (BOOL)supportsShowAllFilters
{
  if ([(HKOverlayRoomViewController *)self controllerMode]== 3)
  {
    return 0;
  }

  if ([(NSArray *)self->_seriesDataSources count]> 1)
  {
    return 1;
  }

  if (!self->_outOfRangeDataSource)
  {
    return 0;
  }

  return self->_noRangeDataSource != 0;
}

- (id)createChartOverlayViewController
{
  v3 = objc_alloc([(MedicalRecordChartConfiguration *)self->_configuration chartControllerClass]);
  displayTypes = self->_displayTypes;
  v17 = v3;
  applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
  healthStore = [applicationItems healthStore];
  applicationItems2 = [(HKOverlayRoomViewController *)self applicationItems];
  unitController = [applicationItems2 unitController];
  applicationItems3 = [(HKOverlayRoomViewController *)self applicationItems];
  dateCache = [applicationItems3 dateCache];
  applicationItems4 = [(HKOverlayRoomViewController *)self applicationItems];
  chartDataCacheController = [applicationItems4 chartDataCacheController];
  applicationItems5 = [(HKOverlayRoomViewController *)self applicationItems];
  timeScopeController = [applicationItems5 timeScopeController];
  applicationItems6 = [(HKOverlayRoomViewController *)self applicationItems];
  sampleDateRangeController = [applicationItems6 sampleDateRangeController];
  displayDate = [(HKOverlayRoomViewController *)self displayDate];
  v13 = [v17 initWithDisplayTypes:displayTypes healthStore:healthStore unitPreferenceController:unitController dateCache:dateCache chartDataCacheController:chartDataCacheController selectedTimeScopeController:timeScopeController sampleTypeDateRangeController:sampleDateRangeController initialXValue:displayDate currentCalendarOverride:0 options:1280];

  [v13 addChartViewObserver:v13];

  return v13;
}

- (id)controllerTitleWithApplicationItems:(id)items
{
  localizedPreferredName = [(HKConcept *)self->_ontologyConcept localizedPreferredName];
  v5 = localizedPreferredName;
  if (localizedPreferredName)
  {
    title = localizedPreferredName;
  }

  else
  {
    title = [(HROverlayRoomViewController *)self title];
  }

  v7 = title;

  return v7;
}

- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  v31[1] = *MEMORY[0x1E69E9840];
  _verticalAxis = [objc_opt_class() _verticalAxis];
  if (mode == 1)
  {
    chartFilterDefaultForSingle = [MEMORY[0x1E69A4518] chartFilterDefaultForSingle];
    v9 = 1;
  }

  else
  {
    chartFilterDefaultForSingle = [MEMORY[0x1E69A4518] chartFilterDefaultForMultiple];
    v9 = -1;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v10 count] < v9 && self->_outOfRangeDataSource)
  {
    v11 = [_TtC15HealthRecordsUI32MedicalRecordChartOverlayContext alloc];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:@"RECORDS_OUT_OF_RANGE" value:&stru_1F4D16E38 table:@"HealthUI-Localizable"];
    v14 = [(MedicalRecordChartOverlayContext *)v11 initWithTitle:v13 dataSource:self->_outOfRangeDataSource defaultColors:chartFilterDefaultForSingle selectedColors:0 verticalAxis:_verticalAxis];

    [v10 addObject:v14];
  }

  if ([v10 count] < v9 && self->_noRangeDataSource)
  {
    v15 = [_TtC15HealthRecordsUI32MedicalRecordChartOverlayContext alloc];
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v16 localizedStringForKey:@"RECORDS_NO_RANGE" value:&stru_1F4D16E38 table:@"HealthUI-Localizable"];
    v18 = [(MedicalRecordChartOverlayContext *)v15 initWithTitle:v17 dataSource:self->_noRangeDataSource defaultColors:chartFilterDefaultForSingle selectedColors:0 verticalAxis:_verticalAxis];

    [v10 addObject:v18];
  }

  if ([v10 count] < v9 && -[NSArray count](self->_seriesDataSources, "count") >= 2)
  {
    seriesDataSources = self->_seriesDataSources;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __103__HROverlayRoomViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke;
    v27[3] = &unk_1E83DCD30;
    v28 = chartFilterDefaultForSingle;
    v29 = _verticalAxis;
    v20 = [(NSArray *)seriesDataSources hk_map:v27];
    [v10 addObjectsFromArray:v20];
  }

  v21 = [objc_alloc(MEMORY[0x1E69A4458]) initWithSectionTitle:0 overlayContextItems:v10];
  v22 = objc_alloc(MEMORY[0x1E69A4460]);
  v30 = v21;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v24 = [v22 initWithContainerTitle:0 overlayContextSections:v23];
  v31[0] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

  return v25;
}

_TtC15HealthRecordsUI32MedicalRecordChartOverlayContext *__103__HROverlayRoomViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_TtC15HealthRecordsUI32MedicalRecordChartOverlayContext alloc];
  v5 = [v3 displayName];
  v6 = [(MedicalRecordChartOverlayContext *)v4 initWithTitle:v5 dataSource:v3 defaultColors:*(a1 + 32) selectedColors:0 verticalAxis:*(a1 + 40)];

  return v6;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  itemsCopy = items;
  dateCopy = date;
  v10 = [objc_alloc(objc_opt_class()) initWithOntologyConcept:self->_ontologyConcept configuration:self->_configuration displayDate:dateCopy masterDataSource:self->_masterDataSource seriesDataSources:self->_seriesDataSources outOfRangeDataSource:self->_outOfRangeDataSource noRangeDataSource:self->_noRangeDataSource overlayMode:mode applicationItems:itemsCopy];

  return v10;
}

@end