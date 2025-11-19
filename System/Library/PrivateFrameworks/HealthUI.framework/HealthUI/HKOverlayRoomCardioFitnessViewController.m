@interface HKOverlayRoomCardioFitnessViewController
- (HKOverlayRoomCardioFitnessViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5 preferredOverlay:(int64_t)a6 analyticsDelegate:(id)a7 interactiveChartOptions:(unint64_t)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10;
- (HKOverlayRoomCardioFitnessViewControllerAnalyticsDelegate)analyticsDelegate;
- (id)_buildCardioFitnessLevelDataSourceWithUnitController:(id)a3 displayType:(id)a4 healthStore:(id)a5 cardioFitnessLevel:(int64_t)a6;
- (id)_buildTrendContextFromApplicationItems:(id)a3 overlayChartController:(id)a4 overlayMode:(int64_t)a5;
- (id)_configureContextSectionsForFullMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 trendModel:(id)a6;
- (id)_configureContextSectionsForSingleOverlayMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 trendModel:(id)a6;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)infographicViewControllerForDisplayType:(id)a3 healthStore:(id)a4;
- (id)initialSelectedContextForMode:(int64_t)a3 containerIndex:(int64_t)a4;
- (id)primaryDisplayTypeWithApplicationItems:(id)a3;
- (id)showAllFiltersButtonTitle;
- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4;
- (int64_t)_cardioFitnessLevelForPreferredOverlay:(int64_t)a3;
- (int64_t)_preferredOverlayForCardioFitnessLevel:(int64_t)a3;
- (void)contextDidUpdate:(id)a3 withCardioFitnessLevelData:(id)a4;
- (void)didChangeFromContextItem:(id)a3 toContextItem:(id)a4;
@end

@implementation HKOverlayRoomCardioFitnessViewController

- (HKOverlayRoomCardioFitnessViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5 preferredOverlay:(int64_t)a6 analyticsDelegate:(id)a7 interactiveChartOptions:(unint64_t)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10
{
  v35 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a9;
  v19 = a10;
  if (a6 > 0xB || ((1 << a6) & 0x9E1) == 0)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"HKOverlayRoomCardioFitnessViewController.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"_isPreferredOverlaySupported(preferredOverlay)"}];
  }

  v20 = [HKOverlayRoomTrendContext findInitialDateFromTrendModel:v18];
  v21 = v20;
  v22 = v35;
  if (v20)
  {
    v22 = v20;
  }

  v23 = v22;

  v36.receiver = self;
  v36.super_class = HKOverlayRoomCardioFitnessViewController;
  v24 = [(HKOverlayRoomViewController *)&v36 initWithDisplayDate:v23 applicationItems:v16 factorDisplayTypes:v19 mode:a5];

  if (v24)
  {
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contextDelegates = v24->_contextDelegates;
    v24->_contextDelegates = v25;

    v24->_preferredOverlay = a6;
    preferredContextLocation = v24->_preferredContextLocation;
    v24->_preferredContextLocation = 0;

    objc_storeWeak(&v24->_analyticsDelegate, v17);
    objc_storeStrong(&v24->_trendModel, a9);
    if (a5 == 3)
    {
      v28 = 0;
    }

    else
    {
      v29 = [v18 selectTrendInitially];
      if (a5)
      {
        v30 = a6 == 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = !v30;
      v28 = v31 | v29;
    }

    [(HKOverlayRoomViewController *)v24 setShouldSelectInitialOverlay:v28 & 1];
    [(HKOverlayRoomViewController *)v24 setAdditionalChartOptions:a8];
  }

  return v24;
}

- (id)createChartOverlayViewController
{
  if ([(HKOverlayRoomViewController *)self controllerMode]!= 3)
  {
    v3 = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
    v4 = [HKOverlayRoomTrendContext findStartingTimeScopeFromTrendModel:v3];

    if (v4 != 8)
    {
      v5 = [(HKOverlayRoomViewController *)self applicationItems];
      v6 = [v5 timeScopeController];
      [v6 setSelectedTimeScope:v4];
    }
  }

  v7 = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
  if (v7)
  {
    v8 = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
    v9 = [v8 selectTrendInitially];

    if (v9)
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

  v11 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v12 = [v11 hk_interactiveChartOptions];
  v27 = v10 | [(HKOverlayRoomViewController *)self additionalChartOptions]| v12;

  v26 = [HKInteractiveChartOverlayViewController alloc];
  v30 = [(HKOverlayRoomViewController *)self applicationItems];
  v31 = [v30 healthStore];
  v24 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v29 = [(HKOverlayRoomViewController *)self applicationItems];
  v13 = [v29 unitController];
  v28 = [(HKOverlayRoomViewController *)self applicationItems];
  v14 = [v28 dateCache];
  v25 = [(HKOverlayRoomViewController *)self applicationItems];
  v15 = [v25 chartDataCacheController];
  v16 = [(HKOverlayRoomViewController *)self applicationItems];
  v17 = [v16 timeScopeController];
  v18 = [(HKOverlayRoomViewController *)self applicationItems];
  v19 = [v18 sampleDateRangeController];
  v20 = [(HKOverlayRoomViewController *)self displayDate];
  v21 = v14;
  v22 = [(HKInteractiveChartOverlayViewController *)v26 initWithHealthStore:v31 primaryDisplayType:v24 unitPreferenceController:v13 dateCache:v14 chartDataCacheController:v15 selectedTimeScopeController:v17 sampleTypeDateRangeController:v19 initialXValue:v20 currentCalendarOverride:0 options:v27];

  [(HKInteractiveChartViewController *)v22 setCurrentValueViewDataSourceDelegate:self];

  return v22;
}

- (id)infographicViewControllerForDisplayType:(id)a3 healthStore:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HKPopulationNormsChartViewController alloc] initWithDisplayType:v6 healthStore:v5];

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

- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKOverlayRoomViewController *)self chartController];
  v8 = [v7 stringForValueRange:v6 timeScope:a4];

  return v8;
}

- (id)controllerTitleWithApplicationItems:(id)a3
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

- (id)primaryDisplayTypeWithApplicationItems:(id)a3
{
  v4 = MEMORY[0x1E696C2E0];
  v5 = *MEMORY[0x1E696BDF0];
  v6 = a3;
  v7 = [v4 quantityTypeForIdentifier:v5];
  v8 = [v6 displayTypeController];
  v9 = [v8 displayTypeForObjectType:v7];

  [(HKOverlayRoomCardioFitnessViewController *)self setRepresentativeDisplayType:v9];
  v10 = [v9 displayCategory];
  v11 = [v6 unitController];
  v12 = [v6 chartDataCacheController];
  v13 = [v9 hk_standardSeriesForTimeScope:5 displayCategory:v10 unitController:v11 dataCacheController:v12];

  v14 = objc_alloc_init(HKChartCache);
  v15 = [v6 unitController];
  v16 = [v6 healthStore];
  v17 = [v9 cardioFitnessDataSourceWithUnitController:v15 healthStore:v16];
  [(HKChartCache *)v14 setDataSource:v17];

  v18 = +[HKOutstandingFetchOperationManager sharedOperationManager];
  [(HKChartCache *)v14 setOperationManager:v18];

  v19 = [v6 chartDataCacheController];

  [v19 addCustomChartCache:v14 forDisplayType:v9];
  v20 = objc_alloc_init(HKCacheBackedChartSeriesDataSource);
  [(HKCacheBackedChartSeriesDataSource *)v20 setChartCache:v14];
  [v13 setDataSource:v20];
  v21 = objc_alloc_init(HKInteractiveChartCardioFitnessFormatter);
  v22 = [HKInteractiveChartDisplayType alloc];
  v23 = [v9 objectType];
  v24 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:](v22, "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", v13, v9, v21, [v23 code]);

  return v24;
}

- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(HKOverlayRoomCardioFitnessViewController *)self contextDelegates];
  [v10 removeAllObjects];

  if ((a3 - 1) < 2)
  {
    v11 = [HKOverlayContextSectionContainer alloc];
    v12 = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
    v13 = [(HKOverlayRoomCardioFitnessViewController *)self _configureContextSectionsForSingleOverlayMode:a3 applicationItems:v8 overlayChartController:v9 trendModel:v12];
    v14 = [(HKOverlayContextSectionContainer *)v11 initWithContainerTitle:0 overlayContextSections:v13];
    v20[0] = v14;
    v15 = v20;
LABEL_5:
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

    goto LABEL_7;
  }

  if (a3 == 3)
  {
    v16 = [HKOverlayContextSectionContainer alloc];
    v12 = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
    v13 = [(HKOverlayRoomCardioFitnessViewController *)self _configureContextSectionsForFullMode:3 applicationItems:v8 overlayChartController:v9 trendModel:v12];
    v14 = [(HKOverlayContextSectionContainer *)v16 initWithContainerTitle:0 overlayContextSections:v13];
    v19 = v14;
    v15 = &v19;
    goto LABEL_5;
  }

  v17 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v17;
}

- (id)initialSelectedContextForMode:(int64_t)a3 containerIndex:(int64_t)a4
{
  if ([(HKOverlayRoomViewController *)self containerIndexForHealthFactors]== a4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(HKOverlayRoomCardioFitnessViewController *)self preferredContextLocation];
  }

  return v5;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  v8 = a4;
  v9 = a5;
  preferredOverlay = self->_preferredOverlay;
  if (preferredOverlay == 11 || preferredOverlay == 0)
  {
    preferredOverlay = [(HKOverlayRoomCardioFitnessViewController *)self _preferredOverlayForCardioFitnessLevel:[(HKCardioFitnessLevelData *)self->_initialCardioFitnessLevelData cardioFitnessLevel]];
  }

  v12 = [(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:a3];
  v13 = [HKOverlayRoomCardioFitnessViewController alloc];
  v14 = [(HKOverlayRoomCardioFitnessViewController *)self analyticsDelegate];
  v15 = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
  v16 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v17 = [(HKOverlayRoomCardioFitnessViewController *)v13 initWithDisplayDate:v8 applicationItems:v9 mode:a3 preferredOverlay:preferredOverlay analyticsDelegate:v14 interactiveChartOptions:v12 trendModel:v15 factorDisplayTypes:v16];

  return v17;
}

- (void)didChangeFromContextItem:(id)a3 toContextItem:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v13 | v6)
  {
    v7 = [v13 analyticsIdentifier];
    v8 = [v6 analyticsIdentifier];
    v9 = [v7 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [(HKOverlayRoomCardioFitnessViewController *)self analyticsDelegate];
      v11 = [v13 analyticsIdentifier];
      v12 = [v6 analyticsIdentifier];
      [v10 didChangeFromOverlayWithIdentifier:v11 toOverlayWithIdentifier:v12];
    }
  }
}

- (void)contextDidUpdate:(id)a3 withCardioFitnessLevelData:(id)a4
{
  v6 = a4;
  v5 = [(HKOverlayRoomCardioFitnessViewController *)self initialCardioFitnessLevelData];

  if (!v5)
  {
    [(HKOverlayRoomCardioFitnessViewController *)self setInitialCardioFitnessLevelData:v6];
    [(HKOverlayRoomViewController *)self setShouldSelectInitialOverlay:1];
    [(HKOverlayRoomViewController *)self reloadOverlayContextItems];
  }
}

- (id)_configureContextSectionsForSingleOverlayMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 trendModel:(id)a6
{
  v30[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
  if (v11)
  {
    v12 = v11;
    v13 = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
    v14 = [v13 selectTrendInitially];

    if (v14)
    {
      v15 = [(HKOverlayRoomCardioFitnessViewController *)self _buildTrendContextFromApplicationItems:v9 overlayChartController:v10 overlayMode:a3];
LABEL_11:
      v22 = v15;
      goto LABEL_12;
    }
  }

  v16 = [(HKOverlayRoomCardioFitnessViewController *)self preferredOverlay];
  if (v16 == 11 || !v16)
  {
    v17 = [(HKOverlayRoomCardioFitnessViewController *)self initialCardioFitnessLevelData];

    if (!v17)
    {
      v15 = [[_HKCardioFitnessClassificationContext alloc] initWithMode:a3 applicationItems:v9 overlayChartController:v10 delegate:self];
      goto LABEL_11;
    }
  }

  v18 = [(HKOverlayRoomCardioFitnessViewController *)self _cardioFitnessLevelForPreferredOverlay:[(HKOverlayRoomCardioFitnessViewController *)self preferredOverlay]];
  if (v18 == -1)
  {
    v19 = [(HKOverlayRoomCardioFitnessViewController *)self initialCardioFitnessLevelData];
    v18 = [v19 cardioFitnessLevel];
  }

  v20 = [_HKCardioFitnessLevelContext alloc];
  v21 = [(HKOverlayRoomCardioFitnessViewController *)self representativeDisplayType];
  v22 = [(_HKCardioFitnessLevelContext *)v20 initWithMode:a3 applicationItems:v9 overlayChartController:v10 baseDisplayType:v21 cardioFitnessLevel:v18];

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

- (id)_configureContextSectionsForFullMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 trendModel:(id)a6
{
  v40[1] = *MEMORY[0x1E69E9840];
  v37 = a4;
  v10 = a5;
  v36 = a6;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [(HKOverlayRoomCardioFitnessViewController *)self _cardioFitnessLevelForPreferredOverlay:[(HKOverlayRoomCardioFitnessViewController *)self preferredOverlay]];
  v13 = 0;
  for (i = 3; i != -1; --i)
  {
    v15 = [_HKCardioFitnessLevelContext alloc];
    v16 = [(HKOverlayRoomCardioFitnessViewController *)self representativeDisplayType];
    v17 = [(_HKCardioFitnessLevelContext *)v15 initWithMode:a3 applicationItems:v37 overlayChartController:v10 baseDisplayType:v16 cardioFitnessLevel:i];

    [v11 addObject:v17];
    if (v12 == i)
    {
      v18 = v17;

      v13 = v18;
    }
  }

  if (v36)
  {
    v19 = [(HKOverlayRoomCardioFitnessViewController *)self _buildTrendContextFromApplicationItems:v37 overlayChartController:v10 overlayMode:a3];
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
    if (v36 && [v36 selectTrendInitially])
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

- (id)_buildTrendContextFromApplicationItems:(id)a3 overlayChartController:(id)a4 overlayMode:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(HKOverlayRoomCardioFitnessViewController *)self primaryDisplayTypeWithApplicationItems:v9];
  v11 = [HKOverlayRoomTrendContext alloc];
  v12 = [(HKOverlayRoomCardioFitnessViewController *)self trendModel];
  v13 = [(HKOverlayRoomTrendContext *)v11 initWithBaseDisplayType:v10 trendModel:v12 overlayChartController:v8 applicationItems:v9 overlayMode:a5];

  v14 = [(HKOverlayRoomViewController *)self chartController];
  [v14 setTrendAccessibilityDelegate:v13];

  return v13;
}

- (id)_buildCardioFitnessLevelDataSourceWithUnitController:(id)a3 displayType:(id)a4 healthStore:(id)a5 cardioFitnessLevel:(int64_t)a6
{
  v7 = [a4 cardioFitnessDataSourceWithUnitController:a3 healthStore:a5];
  v8 = [HKInteractiveChartOverlayNamedDataSource alloc];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKCardioFitnessLevel_%ld", a6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __140__HKOverlayRoomCardioFitnessViewController__buildCardioFitnessLevelDataSourceWithUnitController_displayType_healthStore_cardioFitnessLevel___block_invoke;
  v12[3] = &__block_descriptor_40_e18___NSString_16__0q8l;
  v12[4] = a6;
  v10 = [(HKInteractiveChartOverlayNamedDataSource *)v8 initWithDataSource:v7 named:v9 withContextTitleForTimeScope:v12];

  return v10;
}

- (int64_t)_cardioFitnessLevelForPreferredOverlay:(int64_t)a3
{
  if ((a3 - 5) >= 4)
  {
    return -1;
  }

  else
  {
    return 8 - a3;
  }
}

- (int64_t)_preferredOverlayForCardioFitnessLevel:(int64_t)a3
{
  if (a3 >= 4)
  {
    return 0;
  }

  else
  {
    return 8 - a3;
  }
}

- (HKOverlayRoomCardioFitnessViewControllerAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

@end