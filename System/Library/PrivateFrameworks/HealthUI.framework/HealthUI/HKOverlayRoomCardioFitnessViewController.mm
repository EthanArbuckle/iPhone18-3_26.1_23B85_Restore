@interface HKOverlayRoomCardioFitnessViewController
- (HKOverlayRoomCardioFitnessViewController)initWithDisplayDate:(id)date applicationItems:(id)items mode:(int64_t)mode preferredOverlay:(int64_t)overlay analyticsDelegate:(id)delegate interactiveChartOptions:(unint64_t)options trendModel:(id)model factorDisplayTypes:(id)self0;
- (HKOverlayRoomCardioFitnessViewControllerAnalyticsDelegate)analyticsDelegate;
- (id)_buildCardioFitnessLevelDataSourceWithUnitController:(id)controller displayType:(id)type healthStore:(id)store cardioFitnessLevel:(int64_t)level;
- (id)_buildTrendContextFromApplicationItems:(id)items overlayChartController:(id)controller overlayMode:(int64_t)mode;
- (id)_configureContextSectionsForFullMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller trendModel:(id)model;
- (id)_configureContextSectionsForSingleOverlayMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller trendModel:(id)model;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)infographicViewControllerForDisplayType:(id)type healthStore:(id)store;
- (id)initialSelectedContextForMode:(int64_t)mode containerIndex:(int64_t)index;
- (id)primaryDisplayTypeWithApplicationItems:(id)items;
- (id)showAllFiltersButtonTitle;
- (id)stringForValueRange:(id)range timeScope:(int64_t)scope;
- (int64_t)_cardioFitnessLevelForPreferredOverlay:(int64_t)overlay;
- (int64_t)_preferredOverlayForCardioFitnessLevel:(int64_t)level;
- (void)contextDidUpdate:(id)update withCardioFitnessLevelData:(id)data;
- (void)didChangeFromContextItem:(id)item toContextItem:(id)contextItem;
@end

@implementation HKOverlayRoomCardioFitnessViewController

- (HKOverlayRoomCardioFitnessViewController)initWithDisplayDate:(id)date applicationItems:(id)items mode:(int64_t)mode preferredOverlay:(int64_t)overlay analyticsDelegate:(id)delegate interactiveChartOptions:(unint64_t)options trendModel:(id)model factorDisplayTypes:(id)self0
{
  dateCopy = date;
  itemsCopy = items;
  delegateCopy = delegate;
  modelCopy = model;
  typesCopy = types;
  if (overlay > 0xB || ((1 << overlay) & 0x9E1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKOverlayRoomCardioFitnessViewController.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"_isPreferredOverlaySupported(preferredOverlay)"}];
  }

  v20 = [HKOverlayRoomTrendContext findInitialDateFromTrendModel:modelCopy];
  v21 = v20;
  v22 = dateCopy;
  if (v20)
  {
    v22 = v20;
  }

  v23 = v22;

  v36.receiver = self;
  v36.super_class = HKOverlayRoomCardioFitnessViewController;
  v24 = [(HKOverlayRoomViewController *)&v36 initWithDisplayDate:v23 applicationItems:itemsCopy factorDisplayTypes:typesCopy mode:mode];

  if (v24)
  {
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contextDelegates = v24->_contextDelegates;
    v24->_contextDelegates = v25;

    v24->_preferredOverlay = overlay;
    preferredContextLocation = v24->_preferredContextLocation;
    v24->_preferredContextLocation = 0;

    objc_storeWeak(&v24->_analyticsDelegate, delegateCopy);
    objc_storeStrong(&v24->_trendModel, model);
    if (mode == 3)
    {
      v28 = 0;
    }

    else
    {
      selectTrendInitially = [modelCopy selectTrendInitially];
      if (mode)
      {
        v30 = overlay == 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = !v30;
      v28 = v31 | selectTrendInitially;
    }

    [(HKOverlayRoomViewController *)v24 setShouldSelectInitialOverlay:v28 & 1];
    [(HKOverlayRoomViewController *)v24 setAdditionalChartOptions:options];
  }

  return v24;
}

- (id)createChartOverlayViewController
{
  if ([(HKOverlayRoomViewController *)self controllerMode]!= 3)
  {
    trendModel = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
    v4 = [HKOverlayRoomTrendContext findStartingTimeScopeFromTrendModel:trendModel];

    if (v4 != 8)
    {
      applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
      timeScopeController = [applicationItems timeScopeController];
      [timeScopeController setSelectedTimeScope:v4];
    }
  }

  trendModel2 = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
  if (trendModel2)
  {
    trendModel3 = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
    selectTrendInitially = [trendModel3 selectTrendInitially];

    if (selectTrendInitially)
    {
      v10 = 73728;
    }

    else
    {
      v10 = 0x10000;
    }
  }

  else
  {
    v10 = 0x10000;
  }

  primaryDisplayType = [(HKOverlayRoomViewController *)self primaryDisplayType];
  hk_interactiveChartOptions = [primaryDisplayType hk_interactiveChartOptions];
  v27 = v10 | [(HKOverlayRoomViewController *)self additionalChartOptions]| hk_interactiveChartOptions;

  v26 = [HKInteractiveChartOverlayViewController alloc];
  applicationItems2 = [(HKOverlayRoomViewController *)self applicationItems];
  healthStore = [applicationItems2 healthStore];
  primaryDisplayType2 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  applicationItems3 = [(HKOverlayRoomViewController *)self applicationItems];
  unitController = [applicationItems3 unitController];
  applicationItems4 = [(HKOverlayRoomViewController *)self applicationItems];
  dateCache = [applicationItems4 dateCache];
  applicationItems5 = [(HKOverlayRoomViewController *)self applicationItems];
  chartDataCacheController = [applicationItems5 chartDataCacheController];
  applicationItems6 = [(HKOverlayRoomViewController *)self applicationItems];
  timeScopeController2 = [applicationItems6 timeScopeController];
  applicationItems7 = [(HKOverlayRoomViewController *)self applicationItems];
  sampleDateRangeController = [applicationItems7 sampleDateRangeController];
  displayDate = [(HKOverlayRoomViewController *)self displayDate];
  v21 = dateCache;
  v22 = [(HKInteractiveChartOverlayViewController *)v26 initWithHealthStore:healthStore primaryDisplayType:primaryDisplayType2 unitPreferenceController:unitController dateCache:dateCache chartDataCacheController:chartDataCacheController selectedTimeScopeController:timeScopeController2 sampleTypeDateRangeController:sampleDateRangeController initialXValue:displayDate currentCalendarOverride:0 options:v27];

  [(HKInteractiveChartViewController *)v22 setCurrentValueViewDataSourceDelegate:self];

  return v22;
}

- (id)infographicViewControllerForDisplayType:(id)type healthStore:(id)store
{
  storeCopy = store;
  typeCopy = type;
  v7 = [[HKPopulationNormsChartViewController alloc] initWithDisplayType:typeCopy healthStore:storeCopy];

  if (v7)
  {
    v8 = [[HKModalNavigationController alloc] initWithRootViewController:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)stringForValueRange:(id)range timeScope:(int64_t)scope
{
  rangeCopy = range;
  chartController = [(HKOverlayRoomViewController *)self chartController];
  v8 = [chartController stringForValueRange:rangeCopy timeScope:scope];

  return v8;
}

- (id)controllerTitleWithApplicationItems:(id)items
{
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"CARDIO_FITNESS" value:&stru_1F42FFBE0 table:@"Localizable-CardioFitness"];

  return v4;
}

- (id)showAllFiltersButtonTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"SHOW_ALL_CARDIO_FITNESS_LEVELS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];

  return v3;
}

- (id)primaryDisplayTypeWithApplicationItems:(id)items
{
  v4 = MEMORY[0x1E696C2E0];
  v5 = *MEMORY[0x1E696BDF0];
  itemsCopy = items;
  v7 = [v4 quantityTypeForIdentifier:v5];
  displayTypeController = [itemsCopy displayTypeController];
  v9 = [displayTypeController displayTypeForObjectType:v7];

  [(HKOverlayRoomCardioFitnessViewController *)self setRepresentativeDisplayType:v9];
  displayCategory = [v9 displayCategory];
  unitController = [itemsCopy unitController];
  chartDataCacheController = [itemsCopy chartDataCacheController];
  v13 = [v9 hk_standardSeriesForTimeScope:5 displayCategory:displayCategory unitController:unitController dataCacheController:chartDataCacheController];

  v14 = objc_alloc_init(HKChartCache);
  unitController2 = [itemsCopy unitController];
  healthStore = [itemsCopy healthStore];
  v17 = [v9 cardioFitnessDataSourceWithUnitController:unitController2 healthStore:healthStore];
  [(HKChartCache *)v14 setDataSource:v17];

  v18 = +[HKOutstandingFetchOperationManager sharedOperationManager];
  [(HKChartCache *)v14 setOperationManager:v18];

  chartDataCacheController2 = [itemsCopy chartDataCacheController];

  [chartDataCacheController2 addCustomChartCache:v14 forDisplayType:v9];
  v20 = objc_alloc_init(HKCacheBackedChartSeriesDataSource);
  [(HKCacheBackedChartSeriesDataSource *)v20 setChartCache:v14];
  [v13 setDataSource:v20];
  v21 = objc_alloc_init(HKInteractiveChartCardioFitnessFormatter);
  v22 = [HKInteractiveChartDisplayType alloc];
  objectType = [v9 objectType];
  v24 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:](v22, "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", v13, v9, v21, [objectType code]);

  return v24;
}

- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  v20[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  contextDelegates = [(HKOverlayRoomCardioFitnessViewController *)self contextDelegates];
  [contextDelegates removeAllObjects];

  if ((mode - 1) < 2)
  {
    v11 = [HKOverlayContextSectionContainer alloc];
    trendModel = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
    v13 = [(HKOverlayRoomCardioFitnessViewController *)self _configureContextSectionsForSingleOverlayMode:mode applicationItems:itemsCopy overlayChartController:controllerCopy trendModel:trendModel];
    v14 = [(HKOverlayContextSectionContainer *)v11 initWithContainerTitle:0 overlayContextSections:v13];
    v20[0] = v14;
    v15 = v20;
LABEL_5:
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

    goto LABEL_7;
  }

  if (mode == 3)
  {
    v16 = [HKOverlayContextSectionContainer alloc];
    trendModel = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
    v13 = [(HKOverlayRoomCardioFitnessViewController *)self _configureContextSectionsForFullMode:3 applicationItems:itemsCopy overlayChartController:controllerCopy trendModel:trendModel];
    v14 = [(HKOverlayContextSectionContainer *)v16 initWithContainerTitle:0 overlayContextSections:v13];
    v19 = v14;
    v15 = &v19;
    goto LABEL_5;
  }

  v17 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v17;
}

- (id)initialSelectedContextForMode:(int64_t)mode containerIndex:(int64_t)index
{
  if ([(HKOverlayRoomViewController *)self containerIndexForHealthFactors]== index)
  {
    preferredContextLocation = 0;
  }

  else
  {
    preferredContextLocation = [(HKOverlayRoomCardioFitnessViewController *)self preferredContextLocation];
  }

  return preferredContextLocation;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  dateCopy = date;
  itemsCopy = items;
  preferredOverlay = self->_preferredOverlay;
  if (preferredOverlay == 11 || preferredOverlay == 0)
  {
    preferredOverlay = [(HKOverlayRoomCardioFitnessViewController *)self _preferredOverlayForCardioFitnessLevel:[(HKCardioFitnessLevelData *)self->_initialCardioFitnessLevelData cardioFitnessLevel]];
  }

  v12 = [(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:mode];
  v13 = [HKOverlayRoomCardioFitnessViewController alloc];
  analyticsDelegate = [(HKOverlayRoomCardioFitnessViewController *)self analyticsDelegate];
  trendModel = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
  factorDisplayTypes = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v17 = [(HKOverlayRoomCardioFitnessViewController *)v13 initWithDisplayDate:dateCopy applicationItems:itemsCopy mode:mode preferredOverlay:preferredOverlay analyticsDelegate:analyticsDelegate interactiveChartOptions:v12 trendModel:trendModel factorDisplayTypes:factorDisplayTypes];

  return v17;
}

- (void)didChangeFromContextItem:(id)item toContextItem:(id)contextItem
{
  itemCopy = item;
  contextItemCopy = contextItem;
  if (itemCopy | contextItemCopy)
  {
    analyticsIdentifier = [itemCopy analyticsIdentifier];
    analyticsIdentifier2 = [contextItemCopy analyticsIdentifier];
    v9 = [analyticsIdentifier isEqualToString:analyticsIdentifier2];

    if ((v9 & 1) == 0)
    {
      analyticsDelegate = [(HKOverlayRoomCardioFitnessViewController *)self analyticsDelegate];
      analyticsIdentifier3 = [itemCopy analyticsIdentifier];
      analyticsIdentifier4 = [contextItemCopy analyticsIdentifier];
      [analyticsDelegate didChangeFromOverlayWithIdentifier:analyticsIdentifier3 toOverlayWithIdentifier:analyticsIdentifier4];
    }
  }
}

- (void)contextDidUpdate:(id)update withCardioFitnessLevelData:(id)data
{
  dataCopy = data;
  initialCardioFitnessLevelData = [(HKOverlayRoomCardioFitnessViewController *)self initialCardioFitnessLevelData];

  if (!initialCardioFitnessLevelData)
  {
    [(HKOverlayRoomCardioFitnessViewController *)self setInitialCardioFitnessLevelData:dataCopy];
    [(HKOverlayRoomViewController *)self setShouldSelectInitialOverlay:1];
    [(HKOverlayRoomViewController *)self reloadOverlayContextItems];
  }
}

- (id)_configureContextSectionsForSingleOverlayMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller trendModel:(id)model
{
  v30[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  trendModel = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
  if (trendModel)
  {
    v12 = trendModel;
    trendModel2 = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
    selectTrendInitially = [trendModel2 selectTrendInitially];

    if (selectTrendInitially)
    {
      v15 = [(HKOverlayRoomCardioFitnessViewController *)self _buildTrendContextFromApplicationItems:itemsCopy overlayChartController:controllerCopy overlayMode:mode];
LABEL_11:
      v22 = v15;
      goto LABEL_12;
    }
  }

  preferredOverlay = [(HKOverlayRoomCardioFitnessViewController *)self preferredOverlay];
  if (preferredOverlay == 11 || !preferredOverlay)
  {
    initialCardioFitnessLevelData = [(HKOverlayRoomCardioFitnessViewController *)self initialCardioFitnessLevelData];

    if (!initialCardioFitnessLevelData)
    {
      v15 = [[_HKCardioFitnessClassificationContext alloc] initWithMode:mode applicationItems:itemsCopy overlayChartController:controllerCopy delegate:self];
      goto LABEL_11;
    }
  }

  cardioFitnessLevel = [(HKOverlayRoomCardioFitnessViewController *)self _cardioFitnessLevelForPreferredOverlay:[(HKOverlayRoomCardioFitnessViewController *)self preferredOverlay]];
  if (cardioFitnessLevel == -1)
  {
    initialCardioFitnessLevelData2 = [(HKOverlayRoomCardioFitnessViewController *)self initialCardioFitnessLevelData];
    cardioFitnessLevel = [initialCardioFitnessLevelData2 cardioFitnessLevel];
  }

  v20 = [_HKCardioFitnessLevelContext alloc];
  representativeDisplayType = [(HKOverlayRoomCardioFitnessViewController *)self representativeDisplayType];
  v22 = [(_HKCardioFitnessLevelContext *)v20 initWithMode:mode applicationItems:itemsCopy overlayChartController:controllerCopy baseDisplayType:representativeDisplayType cardioFitnessLevel:cardioFitnessLevel];

LABEL_12:
  v23 = [[HKOverlayContextLocation alloc] initWithContainerIndex:0 sectionIndex:0 itemIndex:0];
  [(HKOverlayRoomCardioFitnessViewController *)self setPreferredContextLocation:v23];

  v24 = [HKOverlayContextSection alloc];
  v30[0] = v22;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v26 = [(HKOverlayContextSection *)v24 initWithSectionTitle:0 overlayContextItems:v25];

  v29 = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];

  return v27;
}

- (id)_configureContextSectionsForFullMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller trendModel:(id)model
{
  v40[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  modelCopy = model;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [(HKOverlayRoomCardioFitnessViewController *)self _cardioFitnessLevelForPreferredOverlay:[(HKOverlayRoomCardioFitnessViewController *)self preferredOverlay]];
  v13 = 0;
  for (i = 3; i != -1; --i)
  {
    v15 = [_HKCardioFitnessLevelContext alloc];
    representativeDisplayType = [(HKOverlayRoomCardioFitnessViewController *)self representativeDisplayType];
    v17 = [(_HKCardioFitnessLevelContext *)v15 initWithMode:mode applicationItems:itemsCopy overlayChartController:controllerCopy baseDisplayType:representativeDisplayType cardioFitnessLevel:i];

    [v11 addObject:v17];
    if (v12 == i)
    {
      v18 = v17;

      v13 = v18;
    }
  }

  if (modelCopy)
  {
    v19 = [(HKOverlayRoomCardioFitnessViewController *)self _buildTrendContextFromApplicationItems:itemsCopy overlayChartController:controllerCopy overlayMode:mode];
    v20 = [HKOverlayContextSection alloc];
    v40[0] = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v22 = [(HKOverlayContextSection *)v20 initWithSectionTitle:0 overlayContextItems:v21];

    v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v24 = [v23 localizedStringForKey:@"CARDIO_FITNESS_LEVELS_VIEW_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];
  }

  else
  {
    v24 = 0;
    v22 = 0;
  }

  v25 = [[HKOverlayContextSection alloc] initWithSectionTitle:v24 overlayContextItems:v11];
  if (v13)
  {
    if (modelCopy && [modelCopy selectTrendInitially])
    {
      v26 = [HKOverlayContextLocation alloc];
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v29 = [v11 indexOfObject:v13];
      v26 = [HKOverlayContextLocation alloc];
      v27 = v22 != 0;
      v28 = v29;
    }

    v30 = [(HKOverlayContextLocation *)v26 initWithContainerIndex:0 sectionIndex:v27 itemIndex:v28];
    [(HKOverlayRoomCardioFitnessViewController *)self setPreferredContextLocation:v30];
  }

  if (v22)
  {
    v39[0] = v22;
    v39[1] = v25;
    v31 = MEMORY[0x1E695DEC8];
    v32 = v39;
    v33 = 2;
  }

  else
  {
    v38 = v25;
    v31 = MEMORY[0x1E695DEC8];
    v32 = &v38;
    v33 = 1;
  }

  v34 = [v31 arrayWithObjects:v32 count:v33];

  return v34;
}

- (id)_buildTrendContextFromApplicationItems:(id)items overlayChartController:(id)controller overlayMode:(int64_t)mode
{
  controllerCopy = controller;
  itemsCopy = items;
  v10 = [(HKOverlayRoomCardioFitnessViewController *)self primaryDisplayTypeWithApplicationItems:itemsCopy];
  v11 = [HKOverlayRoomTrendContext alloc];
  trendModel = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
  v13 = [(HKOverlayRoomTrendContext *)v11 initWithBaseDisplayType:v10 trendModel:trendModel overlayChartController:controllerCopy applicationItems:itemsCopy overlayMode:mode];

  chartController = [(HKOverlayRoomViewController *)self chartController];
  [chartController setTrendAccessibilityDelegate:v13];

  return v13;
}

- (id)_buildCardioFitnessLevelDataSourceWithUnitController:(id)controller displayType:(id)type healthStore:(id)store cardioFitnessLevel:(int64_t)level
{
  v7 = [type cardioFitnessDataSourceWithUnitController:controller healthStore:store];
  v8 = [HKInteractiveChartOverlayNamedDataSource alloc];
  level = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKCardioFitnessLevel_%ld", level];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __140__HKOverlayRoomCardioFitnessViewController__buildCardioFitnessLevelDataSourceWithUnitController_displayType_healthStore_cardioFitnessLevel___block_invoke;
  v12[3] = &__block_descriptor_40_e18___NSString_16__0q8l;
  v12[4] = level;
  v10 = [(HKInteractiveChartOverlayNamedDataSource *)v8 initWithDataSource:v7 named:level withContextTitleForTimeScope:v12];

  return v10;
}

- (int64_t)_cardioFitnessLevelForPreferredOverlay:(int64_t)overlay
{
  if ((overlay - 5) >= 4)
  {
    return -1;
  }

  else
  {
    return 8 - overlay;
  }
}

- (int64_t)_preferredOverlayForCardioFitnessLevel:(int64_t)level
{
  if (level >= 4)
  {
    return 0;
  }

  else
  {
    return 8 - level;
  }
}

- (HKOverlayRoomCardioFitnessViewControllerAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

@end