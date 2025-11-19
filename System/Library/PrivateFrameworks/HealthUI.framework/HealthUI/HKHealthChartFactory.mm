@interface HKHealthChartFactory
- (BOOL)_factorDisplayType:(id)a3 availableForPrimaryDisplayType:(id)a4;
- (BOOL)_factorDisplayTypeHasData:(id)a3;
- (HKHealthChartFactory)init;
- (HKHealthChartFactory)initWithHealthStore:(id)a3;
- (id)CHRRoomApplicationItems;
- (id)_buildApplicationItems;
- (id)_buildBreathingDisturbancesRemoteChartViewControllerWithDisplayType:(id)a3 apneaDisplayType:(id)a4 timeScopeRanges:(id)a5 initialTimeScope:(int64_t)a6 firstWeekday:(int64_t)a7 displayDate:(id)a8;
- (id)_buildStandardRemoteChartViewControllerWithDisplayType:(id)a3 timeScopeRanges:(id)a4 initialTimeScope:(int64_t)a5 firstWeekday:(int64_t)a6 displayDate:(id)a7;
- (id)_buildTrendRemoteOverlayChartViewControllerWithDisplayType:(id)a3 timeScopeRanges:(id)a4 initialTimeScope:(int64_t)a5 chartSummaryTrendModel:(id)a6 firstWeekday:(int64_t)a7 displayDate:(id)a8;
- (id)_cardioFitnessDataSourcesForDisplayType:(id)a3 forTimeScopes:(id)a4;
- (id)_createSleepDisplayTypeForSeriesType:(int64_t)a3;
- (id)_defaultRemoteDataSourcesForDisplayType:(id)a3 forTimeScopes:(id)a4;
- (id)_displayTypeForTypeIdentifier:(id)a3;
- (id)_factorDisplayTypesForPrimaryDisplayType:(id)a3;
- (id)_factorDisplayTypesForPrimaryTypeIdentifier:(id)a3;
- (id)_remoteCalendarOverrideForDisplayType:(id)a3;
- (id)_remoteChartDisplayTypeForTypeIdentifier:(id)a3;
- (id)_remoteCustomFormatterForDisplayType:(id)a3;
- (id)_remoteDataSourcesForDisplayType:(id)a3 forTimeScopes:(id)a4 audience:(id)a5;
- (id)_remoteDisplayTypeConfigurationFromDataSources:(id)a3 model:(id)a4 originalDisplayType:(id)a5;
- (id)_remoteDisplayTypeConfigurationFromDataSources:(id)a3 model:(id)a4 queryData:(id)a5 originalDisplayType:(id)a6;
- (id)_remoteGraphSeriesForDisplayType:(id)a3 graphSeriesDataSource:(id)a4 timeScope:(int64_t)a5;
- (id)_remoteStatisticsIntervalForDisplayType:(id)a3 timeScope:(int64_t)a4;
- (id)_resolvedDisplayDateForDisplayType:(id)a3 displayDate:(id)a4 timeScope:(int64_t)a5 gregorianCalendar:(id)a6;
- (id)_sleepApneaGraphSeriesForDisplayType:(id)a3 graphSeriesDataSource:(id)a4 timeScope:(int64_t)a5;
- (id)_sleepApneaRemoteDataSourcesForDisplayType:(id)a3 forTimeScopes:(id)a4;
- (id)_sleepRemoteDataSourcesForDisplayType:(id)a3 forTimeScopes:(id)a4 audience:(id)a5;
- (id)_sleepRemoteGraphSeriesForDisplayType:(id)a3 graphSeriesDataSource:(id)a4 timeScope:(int64_t)a5;
- (id)_sleepingBreathingDisturbancesGraphSeriesForDisplayType:(id)a3 graphSeriesDataSource:(id)a4 timeScope:(int64_t)a5;
- (id)_sourceTimeZoneFromModel:(id)a3;
- (id)_standardRemoteGraphSeriesForDisplayType:(id)a3 graphSeriesDataSource:(id)a4 timeScope:(int64_t)a5;
- (id)activityChartForActivityMoveMode:(int64_t)a3 displayDate:(id)a4 activityOptions:(unint64_t)a5 chartSharableModel:(id)a6;
- (id)breathingDisturbancesRemoteInteractiveChartWithBreathingDisturbancesModel:(id)a3 sleepApneaEventModel:(id)a4 sleepApneaEventChartData:(id)a5 displayDate:(id)a6;
- (id)chartFactoryViewControllerProviderForType:(id)a3 standardProvider:(id)a4;
- (id)chartForTypeIdentifier:(id)a3 dateRange:(id)a4 minimumSize:(CGSize)a5;
- (id)chartForTypeIdentifier:(id)a3 dateRange:(id)a4 minimumSize:(CGSize)a5 disableXAxis:(BOOL)a6 currentCalendar:(id)a7;
- (id)createInteractiveChartForSimpleDisplayType:(id)a3 chartOptions:(unint64_t)a4;
- (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
- (id)interactiveChartForTypeIdentifier:(id)a3 preferredOverlay:(int64_t)a4 chartOptions:(unint64_t)a5 displayDateInterval:(id)a6 restorationUserActivity:(id)a7 chartSummaryTrendModel:(id)a8;
- (id)interactiveChartFromMeasureIdentifier:(id)a3 displayDateInterval:(id)a4;
- (id)remoteInteractiveChartForTypeIdentifier:(id)a3 model:(id)a4 chartSummaryTrendModel:(id)a5 displayDate:(id)a6;
- (id)staticAudiogramChartViewControllerWithAudiogramSample:(id)a3 hideEnhancedUI:(BOOL)a4;
- (int64_t)_resolvedTimeScopeForTypeIdentifier:(id)a3 displayDateInterval:(id)a4;
- (int64_t)_sourceFirstWeekdayFromModel:(id)a3;
- (unint64_t)_additionalChartOptionsForDisplayDate:(id)a3 displayDateInterval:(id)a4 timeScope:(int64_t)a5;
- (void)_executeFetchOrSkipForTimeScopes:(id)a3 timeScope:(int64_t)a4 audience:(unint64_t)a5 displayType:(id)a6 remoteDateIntervals:(id)a7 dataSources:(id)a8 gregorianCalendar:(id)a9 completion:(id)a10;
- (void)_logFactorsForTypeIdentifier:(id)a3 factorDisplayTypes:(id)a4;
- (void)encodeActivityChartDataForActivityMoveMode:(int64_t)a3 completion:(id)a4;
- (void)encodeChartQueryDataForTypeIdentifier:(id)a3 completionHandler:(id)a4;
- (void)encodeChartQueryDataForTypeIdentifier:(id)a3 forTimeScopes:(id)a4 timeScopeReferenceDate:(id)a5 audience:(unint64_t)a6 completionHandler:(id)a7;
- (void)updateChartSummaryTrendModel:(id)a3 viewController:(id)a4;
@end

@implementation HKHealthChartFactory

- (HKHealthChartFactory)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKHealthChartFactory)initWithHealthStore:(id)a3
{
  v5 = a3;
  v37.receiver = self;
  v37.super_class = HKHealthChartFactory;
  v6 = [(HKHealthChartFactory *)&v37 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
    v8 = [HKDisplayTypeController sharedInstanceForHealthStore:v5];
    displayTypeController = v7->_displayTypeController;
    v7->_displayTypeController = v8;

    v10 = [v5 profileIdentifier];
    if ([v10 type] == 2)
    {
    }

    else
    {
      v11 = [v5 profileIdentifier];
      v12 = [v11 type];

      if (v12 != 3)
      {
        v17 = [objc_alloc(MEMORY[0x1E696C518]) initWithHealthStore:v5];
        unitPreferenceController = v7->_unitPreferenceController;
        v7->_unitPreferenceController = v17;
        goto LABEL_7;
      }
    }

    v13 = objc_alloc(MEMORY[0x1E696C518]);
    unitPreferenceController = objc_alloc_init(MEMORY[0x1E696C1C0]);
    v15 = [v13 initWithHealthStore:unitPreferenceController];
    v16 = v7->_unitPreferenceController;
    v7->_unitPreferenceController = v15;

LABEL_7:
    v18 = [[HKSampleTypeUpdateController alloc] initWithHealthStore:v5];
    sampleTypeUpdateController = v7->_sampleTypeUpdateController;
    v7->_sampleTypeUpdateController = v18;

    v20 = [[HKChartDataCacheController alloc] initWithHealthStore:v5 unitController:v7->_unitPreferenceController updateController:v7->_sampleTypeUpdateController];
    chartDataCacheController = v7->_chartDataCacheController;
    v7->_chartDataCacheController = v20;

    v22 = [HKDateCache alloc];
    v23 = [MEMORY[0x1E695DEE8] currentCalendar];
    v24 = [(HKDateCache *)v22 initWithCalendar:v23];
    dateCache = v7->_dateCache;
    v7->_dateCache = v24;

    v26 = objc_alloc_init(HKSelectedTimeScopeController);
    selectedTimeScopeController = v7->_selectedTimeScopeController;
    v7->_selectedTimeScopeController = v26;

    v28 = [objc_alloc(MEMORY[0x1E696C678]) initWithHealthStore:v5];
    wheelchairUseCharacteristicCache = v7->_wheelchairUseCharacteristicCache;
    v7->_wheelchairUseCharacteristicCache = v28;

    v30 = [[HKSampleTypeDateRangeController alloc] initWithHealthStore:v5];
    sampleTypeDateRangeController = v7->_sampleTypeDateRangeController;
    v7->_sampleTypeDateRangeController = v30;

    sleepDataSourceProvider = v7->_sleepDataSourceProvider;
    v7->_sleepDataSourceProvider = 0;

    sleepChartFormatter = v7->_sleepChartFormatter;
    v7->_sleepChartFormatter = 0;

    v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
    customViewControllerProvidersByTypeIdentifier = v7->_customViewControllerProvidersByTypeIdentifier;
    v7->_customViewControllerProvidersByTypeIdentifier = v34;

    v7->_turnOffInitialSelectionForTesting = 0;
  }

  return v7;
}

- (id)chartForTypeIdentifier:(id)a3 dateRange:(id)a4 minimumSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = MEMORY[0x1E695DEE8];
  v10 = a4;
  v11 = a3;
  v12 = [v9 currentCalendar];
  v13 = [(HKHealthChartFactory *)self chartForTypeIdentifier:v11 dateRange:v10 minimumSize:0 disableXAxis:v12 currentCalendar:width, height];

  return v13;
}

- (id)chartForTypeIdentifier:(id)a3 dateRange:(id)a4 minimumSize:(CGSize)a5 disableXAxis:(BOOL)a6 currentCalendar:(id)a7
{
  v8 = a6;
  height = a5.height;
  width = a5.width;
  v34[1] = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a7;
  v15 = [(HKHealthChartFactory *)self standardChartDisplayTypeIdentifierForTypeIdentifier:a3];
  if (v15)
  {
    v16 = [(HKHealthChartFactory *)self displayTypeController];
    v17 = [v16 displayTypeWithIdentifier:v15];

    if (v17)
    {
      v32 = v8;
      v18 = [v14 firstWeekday];
      v33 = [MEMORY[0x1E695DF00] date];
      if (v13)
      {
        v19 = [v13 startDate];
        v20 = [v13 endDate];
        v21 = HKUIMidDate(v19, v20);

        v22 = [HKGraphZoomLevelConfiguration timeScopeForDateRange:v13];
        v23 = 1;
      }

      else
      {
        v22 = 6;
        v23 = 3;
        v21 = v33;
      }

      v25 = [HKGraphZoomLevelConfiguration chartVisibleRangeForTimeScope:v22 anchorDate:v21 alignment:v23 dataRange:0 calendar:v14 firstWeekday:v18 cadence:0 level:0];
      v26 = +[HKDisplayCategory categoryWithID:](HKDisplayCategory, "categoryWithID:", [v17 categoryIdentifier]);
      v27 = [(HKHealthChartFactory *)self unitPreferenceController];
      v28 = [(HKHealthChartFactory *)self chartDataCacheController];
      v29 = [v17 hk_standardSeriesForTimeScope:v22 displayCategory:v26 unitController:v27 dataCacheController:v28];

      v24 = [[_HKStaticDateGraphViewController alloc] initWithFixedRange:v25 currentCalendar:v14];
      [(HKDateGraphViewController *)v24 setMinimumSize:width, height];
      v34[0] = v29;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
      [(_HKStaticDateGraphViewController *)v24 addStackedSeries:v30];

      [(HKDateGraphViewController *)v24 setDisableXAxis:v32];
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)interactiveChartForTypeIdentifier:(id)a3 preferredOverlay:(int64_t)a4 chartOptions:(unint64_t)a5 displayDateInterval:(id)a6 restorationUserActivity:(id)a7 chartSummaryTrendModel:(id)a8
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v33 = a8;
  v15 = [v13 endDate];
  v16 = [(HKHealthChartFactory *)self _resolvedTimeScopeForTypeIdentifier:v12 displayDateInterval:v13];
  v17 = [(HKHealthChartFactory *)self selectedTimeScopeController];
  [v17 setSelectedTimeScope:v16];

  v18 = [(HKHealthChartFactory *)self _buildApplicationItems];
  v19 = [v14 userInfo];
  v20 = [v19 objectForKeyedSubscript:@"HKOverlayRoomViewControllerRestorationModeKey"];
  v34 = v15;
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v15;
  }

  v22 = v21;

  v23 = [(NSMutableDictionary *)self->_customViewControllerProvidersByTypeIdentifier objectForKeyedSubscript:v12];
  if (!v23)
  {
    v23 = [(HKHealthChartFactory *)self chartFactoryViewControllerProviderForType:v12 standardProvider:self];
  }

  v24 = [(HKHealthChartFactory *)self turnOffInitialSelectionForTesting];
  if (v24)
  {
    v25 = a5 | 0x2000;
  }

  else
  {
    v25 = a5;
  }

  if (a4 == 11 && v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = a4;
  }

  v27 = v25 | [(HKHealthChartFactory *)self _additionalChartOptionsForDisplayDate:v22 displayDateInterval:v13 timeScope:v16];
  v28 = [(HKHealthChartFactory *)self _factorDisplayTypesForPrimaryTypeIdentifier:v12];
  [(HKHealthChartFactory *)self _logFactorsForTypeIdentifier:v12 factorDisplayTypes:v28];
  v29 = [v23 createInteractiveChartViewControllerForTypeIdentifier:v12 chartFactory:self applicationItems:v18 displayDate:v22 preferredOverlay:v26 restorationUserActivity:v14 trendModel:v33 factorDisplayTypes:v28 additionalChartOptions:v27];

  return v29;
}

- (void)_logFactorsForTypeIdentifier:(id)a3 factorDisplayTypes:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 hk_map:&__block_literal_global_2];
  v7 = [v6 componentsJoinedByString:{@", "}];
  _HKInitializeLogging();
  v8 = HKLogWellnessDashboard();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

  if (v9)
  {
    v10 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1C3942000, v10, OS_LOG_TYPE_INFO, "Factors for %@: [%@]", &v11, 0x16u);
    }
  }
}

- (unint64_t)_additionalChartOptionsForDisplayDate:(id)a3 displayDateInterval:(id)a4 timeScope:(int64_t)a5
{
  v5 = 0;
  if (a3 && a5 == 4)
  {
    v7 = MEMORY[0x1E695DEE8];
    v8 = a4;
    v9 = a3;
    v10 = [v7 hk_gregorianCalendarWithLocalTimeZone];
    [v10 rangeOfUnit:16 inUnit:8 forDate:v9];
    v12 = v11;
    v13 = [v10 hk_startOfMonthForDate:v9];

    v14 = [v8 startDate];
    v15 = [v10 components:30 fromDate:v14];

    v16 = [v8 endDate];

    v17 = [v10 components:30 fromDate:v16];

    v18 = [v10 components:30 fromDate:v13];
    v19 = [v18 copy];
    [v19 setDay:v12];
    if ([v15 isEqual:v18])
    {
      if ([v17 isEqual:v19])
      {
        v5 = 0x100000;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_remoteChartDisplayTypeForTypeIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKHealthChartFactory *)self standardChartDisplayTypeIdentifierForTypeIdentifier:v4];
  if (v5)
  {
    v6 = [(HKHealthChartFactory *)self displayTypeController];
    v7 = [v6 displayTypeWithIdentifier:v5];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogWellnessDashboard();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v10 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v4;
        _os_log_impl(&dword_1C3942000, v10, OS_LOG_TYPE_INFO, "Falling back to default chart for %@", &v14, 0xCu);
      }
    }

    displayTypeController = self->_displayTypeController;
    v6 = [MEMORY[0x1E696C2E0] _typeWithIdentifier:v4];
    v7 = [(HKDisplayTypeController *)displayTypeController displayTypeForObjectType:v6];
  }

  v12 = v7;

  return v12;
}

- (id)_remoteDataSourcesForDisplayType:(id)a3 forTimeScopes:(id)a4 audience:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 displayTypeIdentifier];
  if (v11 == 276)
  {
    v12 = [(HKHealthChartFactory *)self _sleepApneaRemoteDataSourcesForDisplayType:v8 forTimeScopes:v9];
  }

  else if (v11 == 124)
  {
    v12 = [(HKHealthChartFactory *)self _cardioFitnessDataSourcesForDisplayType:v8 forTimeScopes:v9];
  }

  else
  {
    if (v11 == 63)
    {
      [(HKHealthChartFactory *)self _sleepRemoteDataSourcesForDisplayType:v8 forTimeScopes:v9 audience:v10];
    }

    else
    {
      [(HKHealthChartFactory *)self _defaultRemoteDataSourcesForDisplayType:v8 forTimeScopes:v9];
    }
    v12 = ;
  }

  v13 = v12;

  return v13;
}

- (id)_sleepRemoteDataSourcesForDisplayType:(id)a3 forTimeScopes:(id)a4 audience:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HKHealthChartFactory *)self sleepDataSourceProvider];

  if (!v11)
  {
    v16 = [[_HKRemoteDataSources alloc] initSupportsChartQueryDataGeneration:0];
    goto LABEL_23;
  }

  v26 = v8;
  if (!v10 || (v12 = [v10 integerValue], v12 == 1))
  {
    v13 = [(HKHealthChartFactory *)self sleepDataSourceProvider];
    v14 = [(HKHealthChartFactory *)self healthStore];
    v15 = [v13 makeSleepDataSourceFromHealthStore:v14 representativeDisplayType:v8];
  }

  else
  {
    if (v12)
    {
      v17 = 0;
      goto LABEL_10;
    }

    v13 = [(HKHealthChartFactory *)self sleepDataSourceProvider];
    v14 = [(HKHealthChartFactory *)self healthStore];
    v15 = [v13 makeSleepStagesDataSourceFromHealthStore:v14 representativeDisplayType:v8];
  }

  v17 = v15;

LABEL_10:
  v16 = [[_HKRemoteDataSources alloc] initSupportsChartQueryDataGeneration:1];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = v9;
  v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v29 + 1) + 8 * i);
        if ([v23 integerValue] > 7)
        {
          _HKInitializeLogging();
          v24 = HKLogWellnessDashboard();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [HKHealthChartFactory _sleepRemoteDataSourcesForDisplayType:v28 forTimeScopes:? audience:?];
          }
        }

        else
        {
          [v16 setDataSource:v17 forTimeScope:{objc_msgSend(v23, "integerValue")}];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v20);
  }

  v8 = v26;
LABEL_23:

  return v16;
}

- (id)_cardioFitnessDataSourcesForDisplayType:(id)a3 forTimeScopes:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [HKRemoteCardioFitnessDataSource alloc];
  v9 = [(HKHealthChartFactory *)self unitPreferenceController];
  v10 = [(HKHealthChartFactory *)self healthStore];
  v11 = [(HKRemoteCardioFitnessDataSource *)v8 initWithUnitController:v9 displayType:v6 healthStore:v10];

  v12 = [[_HKRemoteDataSources alloc] initSupportsChartQueryDataGeneration:1];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        if ([v18 integerValue] > 7)
        {
          _HKInitializeLogging();
          v19 = HKLogWellnessDashboard();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [HKHealthChartFactory _cardioFitnessDataSourcesForDisplayType:v22 forTimeScopes:?];
          }
        }

        else
        {
          [v12 setDataSource:v11 forTimeScope:{objc_msgSend(v18, "integerValue")}];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  return v12;
}

- (id)_sleepApneaRemoteDataSourcesForDisplayType:(id)a3 forTimeScopes:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [HKRemoteNotificationLevelCategoryDataSource alloc];
  v9 = [(HKHealthChartFactory *)self healthStore];
  v10 = [(HKRemoteNotificationLevelCategoryDataSource *)v8 initWithDisplayType:v6 healthStore:v9];

  v11 = [[_HKRemoteDataSources alloc] initSupportsChartQueryDataGeneration:1];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        if ([v17 integerValue] > 7)
        {
          _HKInitializeLogging();
          v18 = HKLogWellnessDashboard();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [HKHealthChartFactory _sleepApneaRemoteDataSourcesForDisplayType:v21 forTimeScopes:?];
          }
        }

        else
        {
          [v11 setDataSource:v10 forTimeScope:{objc_msgSend(v17, "integerValue")}];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  return v11;
}

- (id)_defaultRemoteDataSourcesForDisplayType:(id)a3 forTimeScopes:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_HKRemoteDataSources);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if ([v13 integerValue] > 7)
        {
          _HKInitializeLogging();
          v17 = HKLogWellnessDashboard();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [(HKHealthChartFactory *)v25 _defaultRemoteDataSourcesForDisplayType:v20 forTimeScopes:&v26, v17];
          }
        }

        else
        {
          v14 = [v13 integerValue];
          v15 = [(HKHealthChartFactory *)self healthStore];
          v16 = [(HKHealthChartFactory *)self unitPreferenceController];
          v17 = [v20 hk_healthQueryChartCacheDataSourceForTimeScope:v14 healthStore:v15 unitController:v16];

          -[_HKRemoteDataSources setDataSource:forTimeScope:](v7, "setDataSource:forTimeScope:", v17, [v13 integerValue]);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v10);
  }

  v18 = [(_HKRemoteDataSources *)v7 allDataSources];
  if ([v18 count])
  {
    -[_HKRemoteDataSources setSupportsChartQueryDataGeneration:](v7, "setSupportsChartQueryDataGeneration:", [v18 hk_allObjectsPassTest:&__block_literal_global_321]);
  }

  return v7;
}

- (id)_remoteStatisticsIntervalForDisplayType:(id)a3 timeScope:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 chartingRules];
  v7 = [v6 remoteChartConfiguration];

  if (!v7 || ([v5 chartingRules], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "remoteChartConfiguration"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "statisticIntervalComponentsForTimeScope:", a4), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, !v10))
  {
    v11 = [v5 hk_customSeriesPointIntervalComponentsForTimeScope:a4 resolution:0];
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      v12 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:a4];
      v10 = [v12 seriesPointIntervalComponentsAtResolution:0];
    }
  }

  return v10;
}

- (void)encodeChartQueryDataForTypeIdentifier:(id)a3 forTimeScopes:(id)a4 timeScopeReferenceDate:(id)a5 audience:(unint64_t)a6 completionHandler:(id)a7
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = v13;
  v17 = [v13 allObjects];
  v18 = [v17 hk_map:&__block_literal_global_324];
  v34 = [v18 componentsJoinedByString:{@", "}];

  _HKInitializeLogging();
  v19 = HKLogWellnessDashboard();
  LODWORD(v18) = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);

  if (v18)
  {
    v20 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HKStringForChartDataSourceQueryRequestAudience(a6);
      *buf = 138412802;
      v47 = v21;
      v48 = 2112;
      v49 = v12;
      v50 = 2112;
      v51 = v34;
      _os_log_impl(&dword_1C3942000, v20, OS_LOG_TYPE_INFO, "[RemoteCharting]_%@_%@: Starting query for timeScopes: %@", buf, 0x20u);
    }
  }

  v22 = [(HKHealthChartFactory *)self _remoteChartDisplayTypeForTypeIdentifier:v12];
  if (v22)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
    v24 = [(HKHealthChartFactory *)self _remoteDataSourcesForDisplayType:v22 forTimeScopes:v13 audience:v23];

    v25 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v26 = [[HKRemoteDateIntervals alloc] initWithDisplayType:v22 fromEndDate:v14];
    v32 = v22;
    v33 = v24;
    if ([v24 supportsChartQueryDataGeneration])
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_332;
      v35[3] = &unk_1E81B5810;
      v45 = a6;
      v36 = v12;
      v37 = self;
      v38 = v16;
      v39 = v22;
      v40 = v26;
      v41 = v24;
      v42 = v25;
      v43 = v34;
      v44 = v15;
      [(HKHealthChartFactory *)self _executeFetchOrSkipForTimeScopes:v38 timeScope:6 audience:a6 displayType:v39 remoteDateIntervals:v40 dataSources:v41 gregorianCalendar:v42 completion:v35];

      v27 = v36;
    }

    else
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Type %@ does not support chart query data generation", v12];
      _HKInitializeLogging();
      v29 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v31 = HKStringForChartDataSourceQueryRequestAudience(a6);
        *buf = 138412802;
        v47 = v31;
        v48 = 2112;
        v49 = v12;
        v50 = 2112;
        v51 = v27;
        _os_log_error_impl(&dword_1C3942000, v29, OS_LOG_TYPE_ERROR, "[RemoteCharting]_%@_%@: %@", buf, 0x20u);
      }

      v30 = [MEMORY[0x1E696ABC0] hk_error:11 description:v27];
      (*(v15 + 2))(v15, 0, v30);
    }

    v22 = v32;
    v28 = v33;
  }

  else
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Type %@ does not have a valid display type.", v12];
    v25 = [MEMORY[0x1E696ABC0] hk_error:11 description:v28];
    (*(v15 + 2))(v15, 0, v25);
  }
}

id __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 intValue];

  return HKStringForHKTimeScope(v2, 0);
}

void __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_332(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(HKCodableChartSharableModel);
  if (v9)
  {
    _HKInitializeLogging();
    v11 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_332_cold_1();
    }
  }

  v33 = v9;
  if (v7 && v8)
  {
    v12 = [v7 hk_codableDateInterval];
    [(HKCodableChartSharableModel *)v10 setDayDateInterval:v12];

    [(HKCodableChartSharableModel *)v10 setDayData:v8];
  }

  v14 = *(a1 + 40);
  v13 = *(a1 + 48);
  v15 = *(a1 + 104);
  v30 = *(a1 + 64);
  v31 = *(a1 + 56);
  v16 = *(a1 + 80);
  v29 = *(a1 + 72);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_334;
  v34[3] = &unk_1E81B57E8;
  v41 = v15;
  v35 = *(a1 + 32);
  v36 = v10;
  v28 = *(a1 + 40);
  v17 = *(&v28 + 1);
  v32 = v8;
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  *&v20 = v18;
  *(&v20 + 1) = v19;
  v37 = v28;
  v38 = v20;
  v21 = *(a1 + 72);
  *&v28 = v7;
  v22 = *(a1 + 80);
  v23 = *(a1 + 88);
  v24 = *(a1 + 96);
  *&v25 = v23;
  *(&v25 + 1) = v24;
  *&v26 = v21;
  *(&v26 + 1) = v22;
  v39 = v26;
  v40 = v25;
  v27 = v10;
  [v14 _executeFetchOrSkipForTimeScopes:v13 timeScope:5 audience:v15 displayType:v31 remoteDateIntervals:v30 dataSources:v29 gregorianCalendar:v16 completion:v34];
}

void __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_334(uint64_t a1, void *a2, void *a3, void *a4)
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
      __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_334_cold_1();
    }
  }

  v31 = v9;
  if (v7 && v8)
  {
    v11 = [v7 hk_codableDateInterval];
    [*(a1 + 40) setWeekDateInterval:v11];

    [*(a1 + 40) setWeekData:v8];
  }

  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 112);
  v28 = *(a1 + 72);
  v29 = *(a1 + 64);
  v15 = *(a1 + 88);
  v27 = *(a1 + 80);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_335;
  v32[3] = &unk_1E81B57E8;
  v39 = v14;
  v16 = *(a1 + 32);
  v30 = v8;
  v17 = *(a1 + 40);
  v26 = *(a1 + 48);
  v18 = *(&v26 + 1);
  *&v19 = v16;
  *(&v19 + 1) = v17;
  v33 = v19;
  v34 = v26;
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  v23 = *(a1 + 88);
  *&v24 = v22;
  *(&v24 + 1) = v23;
  *&v25 = v20;
  *(&v25 + 1) = v21;
  v35 = v25;
  v36 = v24;
  v37 = *(a1 + 96);
  v38 = *(a1 + 104);
  [v12 _executeFetchOrSkipForTimeScopes:v13 timeScope:4 audience:v14 displayType:v29 remoteDateIntervals:v28 dataSources:v27 gregorianCalendar:v15 completion:v32];
}

void __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_335(uint64_t a1, void *a2, void *a3, void *a4)
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
      __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_335_cold_1();
    }
  }

  v25 = v9;
  if (v7 && v8)
  {
    v11 = [v7 hk_codableDateInterval];
    [*(a1 + 40) setMonthDateInterval:v11];

    [*(a1 + 40) setMonthData:v8];
  }

  v12 = *(a1 + 56);
  v13 = *(a1 + 112);
  v23 = *(a1 + 72);
  v24 = *(a1 + 64);
  v14 = *(a1 + 88);
  v21 = *(a1 + 48);
  v22 = *(a1 + 80);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_336;
  v26[3] = &unk_1E81B57C0;
  v29 = v13;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  *&v20 = v15;
  *(&v20 + 1) = v16;
  v27 = v20;
  v28 = v19;
  [v21 _executeFetchOrSkipForTimeScopes:v12 timeScope:3 audience:v13 displayType:v24 remoteDateIntervals:v23 dataSources:v22 gregorianCalendar:v14 completion:v26];
}

void __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_336(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    _HKInitializeLogging();
    v10 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_336_cold_1();
    }
  }

  if (v7 && v8)
  {
    v11 = [v7 hk_codableDateInterval];
    [*(a1 + 40) setSixMonthDateInterval:v11];

    [*(a1 + 40) setSixMonthData:v8];
  }

  _HKInitializeLogging();
  v12 = HKLogWellnessDashboard();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

  if (v13)
  {
    v14 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HKStringForChartDataSourceQueryRequestAudience(*(a1 + 64));
      v16 = *(a1 + 32);
      v17 = *(a1 + 48);
      v18 = 138412802;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_1C3942000, v14, OS_LOG_TYPE_INFO, "[RemoteCharting]_%@_%@: Returning chart model for timeScopes: %@", &v18, 0x20u);
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (void)_executeFetchOrSkipForTimeScopes:(id)a3 timeScope:(int64_t)a4 audience:(unint64_t)a5 displayType:(id)a6 remoteDateIntervals:(id)a7 dataSources:(id)a8 gregorianCalendar:(id)a9 completion:(id)a10
{
  v63 = *MEMORY[0x1E69E9840];
  v50 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = MEMORY[0x1E696AD98];
  v21 = a3;
  v22 = [v20 numberWithInteger:a4];
  v23 = [v21 member:v22];

  v49 = v17;
  if (v23)
  {
    v47 = a5;
    v24 = [(HKHealthChartFactory *)self _remoteStatisticsIntervalForDisplayType:v50 timeScope:a4];
    v25 = [v17 dataSourceForTimeScope:a4];
    v56 = 0;
    v26 = [v16 dateIntervalForTimeScope:a4 withGregorianCalendar:v18 error:&v56];
    v27 = v56;
    v28 = v16;
    if (!v27 || v26)
    {
      v45 = v27;
      v30 = [HKHealthQueryChartCacheQueryRequest alloc];
      [v26 startDate];
      v31 = self;
      v32 = v19;
      v33 = v25;
      v34 = v18;
      v36 = v35 = v24;
      [v26 endDate];
      v38 = v37 = v28;
      v39 = [(HKHealthQueryChartCacheQueryRequest *)v30 initWithStartDate:v36 endDate:v38 statisticsInterval:v35 audience:v47];

      v28 = v37;
      v24 = v35;
      v18 = v34;
      v25 = v33;
      v19 = v32;
      v40 = [(HKHealthChartFactory *)v31 healthStore];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __149__HKHealthChartFactory__executeFetchOrSkipForTimeScopes_timeScope_audience_displayType_remoteDateIntervals_dataSources_gregorianCalendar_completion___block_invoke;
      v51[3] = &unk_1E81B5838;
      v52 = v26;
      v53 = v50;
      v54 = v18;
      v55 = v19;
      v41 = [v25 generateSharableQueryDataForRequest:v39 healthStore:v40 completionHandler:v51];

      v27 = v45;
    }

    else
    {
      _HKInitializeLogging();
      v29 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v42 = HKStringForChartDataSourceQueryRequestAudience(v47);
        v48 = [v50 objectType];
        v43 = [v48 identifier];
        [v27 description];
        v44 = v46 = v27;
        *buf = 138412802;
        v58 = v42;
        v59 = 2112;
        v60 = v43;
        v61 = 2112;
        v62 = v44;
        _os_log_error_impl(&dword_1C3942000, v29, OS_LOG_TYPE_ERROR, "[RemoteCharting]_%@_%@ Error: %@", buf, 0x20u);

        v27 = v46;
      }

      (*(v19 + 2))(v19, 0, 0, v27);
    }
  }

  else
  {
    (*(v19 + 2))(v19, 0, 0, 0);
    v28 = v16;
  }
}

void __149__HKHealthChartFactory__executeFetchOrSkipForTimeScopes_timeScope_audience_displayType_remoteDateIntervals_dataSources_gregorianCalendar_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a3;
  v8 = a2;
  v9 = [v6 behavior];
  v10 = [v5 hk_dateIntervalUnshiftedFromQueryAlignment:objc_msgSend(v9 calendar:{"preferredCalendarDayAlignment"), a1[6]}];

  (*(a1[7] + 16))();
}

- (void)encodeChartQueryDataForTypeIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = a3;
  v10 = [v6 setWithObjects:{&unk_1F4381F48, &unk_1F4381F60, 0}];
  v9 = [MEMORY[0x1E695DF00] now];
  [(HKHealthChartFactory *)self encodeChartQueryDataForTypeIdentifier:v8 forTimeScopes:v10 timeScopeReferenceDate:v9 audience:0 completionHandler:v7];
}

- (id)remoteInteractiveChartForTypeIdentifier:(id)a3 model:(id)a4 chartSummaryTrendModel:(id)a5 displayDate:(id)a6
{
  v48[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(HKHealthChartFactory *)self _remoteChartDisplayTypeForTypeIdentifier:v11];
  if (v15)
  {
    v16 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F4381F48, &unk_1F4381F60, 0}];
    v17 = [(HKHealthChartFactory *)self _remoteDataSourcesForDisplayType:v15 forTimeScopes:v16];

    if ([v17 supportsChartQueryDataGeneration])
    {
      v46 = v14;
      v42 = v17;
      v39 = [(HKHealthChartFactory *)self _remoteDisplayTypeConfigurationFromDataSources:v17 model:v12 originalDisplayType:v15];
      v18 = [(HKHealthChartFactory *)self _sourceTimeZoneFromModel:v12];
      v41 = [(HKHealthChartFactory *)self _sourceFirstWeekdayFromModel:v12];
      v45 = v13;
      v19 = MEMORY[0x1E696AB80];
      v20 = [v12 monthDateInterval];
      v21 = [v19 hk_dateIntervalWithCodableDateInterval:v20 sourceTimeZone:v18];

      v22 = MEMORY[0x1E696AB80];
      v23 = [v12 sixMonthDateInterval];
      v44 = v18;
      v24 = [v22 hk_dateIntervalWithCodableDateInterval:v23 sourceTimeZone:v18];

      v25 = [v21 startDate];
      v43 = v21;
      v26 = [v21 endDate];
      v27 = [HKValueRange valueRangeWithMinValue:v25 maxValue:v26];

      v28 = [v24 startDate];
      v40 = v24;
      v29 = [v24 endDate];
      v30 = [HKValueRange valueRangeWithMinValue:v28 maxValue:v29];

      v13 = v45;
      v47[0] = &unk_1F4381F48;
      v47[1] = &unk_1F4381F60;
      v31 = v27;
      v48[0] = v27;
      v48[1] = v30;
      v32 = v39;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
      v34 = [v39 remoteDisplayType];
      v35 = [v39 initialTimeScope];
      if (v45)
      {
        [(HKHealthChartFactory *)self _buildTrendRemoteOverlayChartViewControllerWithDisplayType:v34 timeScopeRanges:v33 initialTimeScope:v35 chartSummaryTrendModel:v45 firstWeekday:v41 displayDate:v46];
      }

      else
      {
        [(HKHealthChartFactory *)self _buildStandardRemoteChartViewControllerWithDisplayType:v34 timeScopeRanges:v33 initialTimeScope:v35 firstWeekday:v41 displayDate:v46];
      }
      v37 = ;

      v14 = v46;
      v17 = v42;
    }

    else
    {
      _HKInitializeLogging();
      v32 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [HKHealthChartFactory remoteInteractiveChartForTypeIdentifier:v11 model:v32 chartSummaryTrendModel:? displayDate:?];
      }

      v37 = 0;
    }
  }

  else
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"HKHealthChartFactory.m" lineNumber:624 description:{@"Type %@ does not have a valid display type.", v11}];

    v37 = 0;
  }

  return v37;
}

- (id)breathingDisturbancesRemoteInteractiveChartWithBreathingDisturbancesModel:(id)a3 sleepApneaEventModel:(id)a4 sleepApneaEventChartData:(id)a5 displayDate:(id)a6
{
  v55[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = *MEMORY[0x1E696BC50];
  v16 = [(HKHealthChartFactory *)self _remoteChartDisplayTypeForTypeIdentifier:v15];
  if (v16)
  {
    v17 = *MEMORY[0x1E696B6A0];
    v53 = [(HKHealthChartFactory *)self _remoteChartDisplayTypeForTypeIdentifier:v17];
    if (v53)
    {
      v50 = v14;
      v47 = v15;
      v18 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F4381F48, &unk_1F4381F60, 0}];
      v48 = [(HKHealthChartFactory *)self _remoteDataSourcesForDisplayType:v16 forTimeScopes:v18];

      v43 = [(HKHealthChartFactory *)self _remoteDisplayTypeConfigurationFromDataSources:v48 model:v11 originalDisplayType:v16];
      v19 = [(HKHealthChartFactory *)self _sourceTimeZoneFromModel:v11];
      v45 = [(HKHealthChartFactory *)self _sourceFirstWeekdayFromModel:v11];
      v20 = MEMORY[0x1E696AB80];
      [v11 monthDateInterval];
      v21 = v51 = v13;
      v46 = v19;
      v22 = [v20 hk_dateIntervalWithCodableDateInterval:v21 sourceTimeZone:v19];

      v23 = MEMORY[0x1E696AB80];
      [v11 sixMonthDateInterval];
      v24 = v52 = v12;
      v25 = [v23 hk_dateIntervalWithCodableDateInterval:v24 sourceTimeZone:v19];

      v44 = v22;
      v26 = [v22 startDate];
      [v22 endDate];
      v27 = v49 = v17;
      v41 = [HKValueRange valueRangeWithMinValue:v26 maxValue:v27];

      v42 = v25;
      v28 = [v25 startDate];
      v29 = [v25 endDate];
      v30 = [HKValueRange valueRangeWithMinValue:v28 maxValue:v29];

      v54[0] = &unk_1F4381F48;
      v54[1] = &unk_1F4381F60;
      v55[0] = v41;
      v55[1] = v30;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
      v32 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F4381F48, &unk_1F4381F60, 0}];
      v33 = [(HKHealthChartFactory *)self _remoteDataSourcesForDisplayType:v53 forTimeScopes:v32];

      v34 = [(HKHealthChartFactory *)self _remoteDisplayTypeConfigurationFromDataSources:v33 model:v52 queryData:v51 originalDisplayType:v53];
      v35 = [v43 remoteDisplayType];
      v36 = [v34 remoteDisplayType];
      v37 = -[HKHealthChartFactory _buildBreathingDisturbancesRemoteChartViewControllerWithDisplayType:apneaDisplayType:timeScopeRanges:initialTimeScope:firstWeekday:displayDate:](self, "_buildBreathingDisturbancesRemoteChartViewControllerWithDisplayType:apneaDisplayType:timeScopeRanges:initialTimeScope:firstWeekday:displayDate:", v35, v36, v31, [v43 initialTimeScope], v45, v50);

      v13 = v51;
      v15 = v47;
      v14 = v50;

      v12 = v52;
      v17 = v49;
    }

    else
    {
      v39 = [MEMORY[0x1E696AAA8] currentHandler];
      [v39 handleFailureInMethod:a2 object:self file:@"HKHealthChartFactory.m" lineNumber:686 description:{@"Type %@ does not have a valid display type.", v17}];

      v37 = 0;
    }
  }

  else
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"HKHealthChartFactory.m" lineNumber:678 description:{@"Type %@ does not have a valid display type.", v15}];

    v37 = 0;
  }

  return v37;
}

- (id)_buildBreathingDisturbancesRemoteChartViewControllerWithDisplayType:(id)a3 apneaDisplayType:(id)a4 timeScopeRanges:(id)a5 initialTimeScope:(int64_t)a6 firstWeekday:(int64_t)a7 displayDate:(id)a8
{
  v40[2] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v32 = a5;
  v37 = a8;
  v15 = [(HKHealthChartFactory *)self selectedTimeScopeController];
  [v15 setSelectedTimeScope:a6];

  v30 = [v13 hk_interactiveChartOptions] | 0xA0000;
  v33 = [(HKHealthChartFactory *)self _remoteCalendarOverrideForDisplayType:v13];
  v29 = [HKInteractiveChartOverlayViewController alloc];
  v34 = v14;
  v39 = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v40[0] = v16;
  v35 = v13;
  v38 = v13;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v40[1] = v31;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v17 = [HKInteractiveChartStackHeight percentStackHeights:&unk_1F4381000];
  v18 = [(HKHealthChartFactory *)self healthStore];
  v19 = [(HKHealthChartFactory *)self unitPreferenceController];
  v20 = [(HKHealthChartFactory *)self dateCache];
  v21 = [(HKHealthChartFactory *)self chartDataCacheController];
  v22 = [(HKHealthChartFactory *)self selectedTimeScopeController];
  v23 = [(HKHealthChartFactory *)self sampleTypeDateRangeController];
  if (v37)
  {
    v24 = v32;
    v25 = [(HKInteractiveChartOverlayViewController *)v29 initWithStackedDisplayTypes:v36 primaryDisplayTypeStackIndex:&unk_1F4381F78 stackedDisplayTypeHeights:v17 healthStore:v18 unitPreferenceController:v19 dateCache:v20 chartDataCacheController:v21 selectedTimeScopeController:v22 sampleTypeDateRangeController:v23 initialXValue:v37 currentCalendarOverride:0 options:v30 timeScopeRanges:v32];
  }

  else
  {
    v26 = [MEMORY[0x1E695DF00] now];
    v25 = [(HKInteractiveChartOverlayViewController *)v29 initWithStackedDisplayTypes:v36 primaryDisplayTypeStackIndex:&unk_1F4381F78 stackedDisplayTypeHeights:v17 healthStore:v18 unitPreferenceController:v19 dateCache:v20 chartDataCacheController:v21 selectedTimeScopeController:v22 sampleTypeDateRangeController:v23 initialXValue:v26 currentCalendarOverride:0 options:v30 timeScopeRanges:v32];

    v24 = v32;
  }

  if (!v33)
  {
    [(HKInteractiveChartViewController *)v25 setAnnotationDataSourceFirstWeekday:a7];
  }

  return v25;
}

- (id)_sourceTimeZoneFromModel:(id)a3
{
  v3 = a3;
  if ([v3 hasMonthData])
  {
    v4 = [v3 monthData];
    v5 = [v4 hasTimeZoneName];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E695DFE8]);
      v7 = [v3 monthData];
LABEL_7:
      v10 = v7;
      v11 = [v7 timeZoneName];
      v12 = [v6 initWithName:v11];

      goto LABEL_9;
    }
  }

  if ([v3 hasSixMonthData])
  {
    v8 = [v3 sixMonthData];
    v9 = [v8 hasTimeZoneName];

    if (v9)
    {
      v6 = objc_alloc(MEMORY[0x1E695DFE8]);
      v7 = [v3 sixMonthData];
      goto LABEL_7;
    }
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (int64_t)_sourceFirstWeekdayFromModel:(id)a3
{
  v3 = a3;
  if ([v3 hasMonthData] && (objc_msgSend(v3, "monthData"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "hasFirstWeekday"), v4, v5))
  {
    v6 = [v3 monthData];
  }

  else
  {
    if (![v3 hasSixMonthData] || (objc_msgSend(v3, "sixMonthData"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasFirstWeekday"), v7, !v8))
    {
      v10 = -1;
      goto LABEL_9;
    }

    v6 = [v3 sixMonthData];
  }

  v9 = v6;
  v10 = [v6 firstWeekday];

LABEL_9:
  return v10;
}

- (id)_remoteDisplayTypeConfigurationFromDataSources:(id)a3 model:(id)a4 originalDisplayType:(id)a5
{
  v47[2] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 monthData];
  v12 = [v9 sixMonthData];

  v13 = [v10 dataSourceForTimeScope:4];
  v14 = [v10 dataSourceForTimeScope:3];

  v44 = v11;
  v15 = [v13 chartPointsFromQueryData:v11 dataIsFromRemoteSource:1];
  v45 = v14;
  v43 = v12;
  v16 = v12;
  v17 = v15;
  v18 = [v14 chartPointsFromQueryData:v16 dataIsFromRemoteSource:1];
  v19 = [v17 chartPoints];
  if (v19 && (v20 = v19, [v17 chartPoints], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v20, v22))
  {
    v23 = 4;
  }

  else
  {
    v23 = 3;
  }

  v42 = v23;
  v24 = objc_alloc_init(HKRemoteChartDataSource);
  v25 = objc_alloc_init(HKRemoteChartDataSource);
  v41 = v24;
  v26 = [(HKHealthChartFactory *)self _remoteGraphSeriesForDisplayType:v8 graphSeriesDataSource:v24 timeScope:4];
  v27 = [(HKHealthChartFactory *)self _remoteGraphSeriesForDisplayType:v8 graphSeriesDataSource:v25 timeScope:3];
  v28 = [v26 seriesDataSourceContext];
  [(HKRemoteChartDataSource *)v24 setDataForTimeScope:4 seriesData:v17 dataSourceForMapping:v13 seriesDataSourceContext:v28];

  v29 = [v27 seriesDataSourceContext];
  v30 = v18;
  [(HKRemoteChartDataSource *)v25 setDataForTimeScope:3 seriesData:v18 dataSourceForMapping:v45 seriesDataSourceContext:v29];

  v31 = [(HKHealthChartFactory *)self _remoteCustomFormatterForDisplayType:v8];
  v32 = [HKInteractiveChartDisplayType alloc];
  v33 = [v8 objectType];
  v40 = v17;
  v34 = [v33 code];
  v46[0] = &unk_1F4381F48;
  v46[1] = &unk_1F4381F60;
  v47[0] = v26;
  v47[1] = v27;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v35 = v39 = v13;
  v36 = [(HKInteractiveChartDisplayType *)v32 initWithBaseDisplayType:v8 valueFormatter:v31 dataTypeCode:v34 seriesForTimeScopeMapping:v35];

  v37 = [[_HKRemoteDisplayTypeConfiguration alloc] initWithInitialTimeScope:v42 remoteDisplayType:v36];

  return v37;
}

- (id)_remoteDisplayTypeConfigurationFromDataSources:(id)a3 model:(id)a4 queryData:(id)a5 originalDisplayType:(id)a6
{
  v47[2] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v13 dataSourceForTimeScope:4];
  v15 = [v13 dataSourceForTimeScope:3];

  v16 = [(HKHealthChartFactory *)self _sourceTimeZoneFromModel:v12];
  v17 = [v14 chartPointsFromNotificationQueryData:v11 sourceTimeZoneFromModel:v16];

  v18 = [(HKHealthChartFactory *)self _sourceTimeZoneFromModel:v12];

  v45 = v15;
  v19 = [v15 chartPointsFromNotificationQueryData:v11 sourceTimeZoneFromModel:v18];

  v20 = [v17 chartPoints];
  if (v20 && (v21 = v20, [v17 chartPoints], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "count"), v22, v21, v23))
  {
    v24 = 4;
  }

  else
  {
    v24 = 3;
  }

  v44 = v24;
  v25 = objc_alloc_init(HKRemoteChartDataSource);
  v26 = objc_alloc_init(HKRemoteChartDataSource);
  v27 = v25;
  v42 = v25;
  v28 = [(HKHealthChartFactory *)self _remoteGraphSeriesForDisplayType:v10 graphSeriesDataSource:v25 timeScope:4];
  v29 = [(HKHealthChartFactory *)self _remoteGraphSeriesForDisplayType:v10 graphSeriesDataSource:v26 timeScope:3];
  v30 = [v28 seriesDataSourceContext];
  v43 = v17;
  [(HKRemoteChartDataSource *)v27 setDataForTimeScope:4 seriesData:v17 dataSourceForMapping:v14 seriesDataSourceContext:v30];

  v31 = [v29 seriesDataSourceContext];
  v32 = v19;
  [(HKRemoteChartDataSource *)v26 setDataForTimeScope:3 seriesData:v19 dataSourceForMapping:v45 seriesDataSourceContext:v31];

  v33 = [HKInteractiveChartDisplayType alloc];
  v34 = [(HKHealthChartFactory *)self _remoteCustomFormatterForDisplayType:v10];
  v35 = [v10 objectType];
  v41 = v14;
  v36 = [v35 code];
  v46[0] = &unk_1F4381F48;
  v46[1] = &unk_1F4381F60;
  v47[0] = v28;
  v47[1] = v29;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v38 = [(HKInteractiveChartDisplayType *)v33 initWithBaseDisplayType:v10 valueFormatter:v34 dataTypeCode:v36 seriesForTimeScopeMapping:v37];

  v39 = [[_HKRemoteDisplayTypeConfiguration alloc] initWithInitialTimeScope:v44 remoteDisplayType:v38];

  return v39;
}

- (id)_remoteGraphSeriesForDisplayType:(id)a3 graphSeriesDataSource:(id)a4 timeScope:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 displayTypeIdentifier];
  if (v10 == 276)
  {
    v11 = [(HKHealthChartFactory *)self _sleepApneaGraphSeriesForDisplayType:v8 graphSeriesDataSource:v9 timeScope:a5];
  }

  else if (v10 == 275)
  {
    v11 = [(HKHealthChartFactory *)self _sleepingBreathingDisturbancesGraphSeriesForDisplayType:v8 graphSeriesDataSource:v9 timeScope:a5];
  }

  else
  {
    if (v10 == 63)
    {
      [(HKHealthChartFactory *)self _sleepRemoteGraphSeriesForDisplayType:v8 graphSeriesDataSource:v9 timeScope:a5];
    }

    else
    {
      [(HKHealthChartFactory *)self _standardRemoteGraphSeriesForDisplayType:v8 graphSeriesDataSource:v9 timeScope:a5];
    }
    v11 = ;
  }

  v12 = v11;

  return v12;
}

- (id)_standardRemoteGraphSeriesForDisplayType:(id)a3 graphSeriesDataSource:(id)a4 timeScope:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v9 displayCategory];
  v11 = [(HKHealthChartFactory *)self unitPreferenceController];
  v12 = [(HKHealthChartFactory *)self chartDataCacheController];
  v13 = [v9 hk_standardSeriesForTimeScope:a5 graphSeriesDataSource:v8 displayCategory:v10 unitController:v11 dataCacheController:v12];

  return v13;
}

- (id)_sleepRemoteGraphSeriesForDisplayType:(id)a3 graphSeriesDataSource:(id)a4 timeScope:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(HKHealthChartFactory *)self unitPreferenceController];
  v11 = [HKSleepUtilities buildSleepGraphSeriesForSleepSeriesType:0 sleepDisplayType:v9 unitController:v10 numericAxisConfigurationOverrides:0 timeScope:a5];

  [v11 setDataSource:v8];

  return v11;
}

- (id)_sleepingBreathingDisturbancesGraphSeriesForDisplayType:(id)a3 graphSeriesDataSource:(id)a4 timeScope:(int64_t)a5
{
  v8 = a3;
  v9 = [(HKHealthChartFactory *)self _standardRemoteGraphSeriesForDisplayType:v8 graphSeriesDataSource:a4 timeScope:a5];
  v10 = [[HKBreathingDisturbancesAxis alloc] initWithDisplayType:v8];

  [v9 setYAxis:v10];

  return v9;
}

- (id)_sleepApneaGraphSeriesForDisplayType:(id)a3 graphSeriesDataSource:(id)a4 timeScope:(int64_t)a5
{
  v8 = a3;
  v9 = [(HKHealthChartFactory *)self _standardRemoteGraphSeriesForDisplayType:v8 graphSeriesDataSource:a4 timeScope:a5];
  v10 = [[HKSleepApneaEventAxis alloc] initWithDisplayType:v8];

  [v9 setYAxis:v10];

  return v9;
}

- (id)_remoteCustomFormatterForDisplayType:(id)a3
{
  v4 = [a3 displayTypeIdentifier];
  v5 = 0;
  if (v4 <= 274)
  {
    if (v4 == 63)
    {
      v10 = [(HKHealthChartFactory *)self sleepChartFormatter];
LABEL_11:
      v5 = v10;
      goto LABEL_12;
    }

    if (v4 != 124)
    {
      goto LABEL_12;
    }

    v6 = HKInteractiveChartCardioFitnessFormatter;
LABEL_10:
    v10 = objc_alloc_init(v6);
    goto LABEL_11;
  }

  if (v4 == 275)
  {
    v6 = HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter;
    goto LABEL_10;
  }

  if (v4 == 276)
  {
    v7 = [HKSleepApneaEventInteractiveChartFormatter alloc];
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:@"SLEEP_APNEA_ALERTS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Nebula"];
    v5 = [(HKSleepApneaEventInteractiveChartFormatter *)v7 initWithLocalizedCategoryName:v9];
  }

LABEL_12:

  return v5;
}

- (id)_buildStandardRemoteChartViewControllerWithDisplayType:(id)a3 timeScopeRanges:(id)a4 initialTimeScope:(int64_t)a5 firstWeekday:(int64_t)a6 displayDate:(id)a7
{
  v33[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v28 = a4;
  v31 = a7;
  v12 = [(HKHealthChartFactory *)self selectedTimeScopeController];
  [v12 setSelectedTimeScope:a5];

  v26 = [v11 hk_interactiveChartOptions] | 0xA0000;
  v13 = [(HKHealthChartFactory *)self _remoteCalendarOverrideForDisplayType:v11];
  v27 = [HKInteractiveChartViewController alloc];
  v29 = v11;
  v32 = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v33[0] = v14;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v15 = [(HKHealthChartFactory *)self healthStore];
  v16 = [(HKHealthChartFactory *)self unitPreferenceController];
  v17 = [(HKHealthChartFactory *)self dateCache];
  v18 = [(HKHealthChartFactory *)self chartDataCacheController];
  v19 = [(HKHealthChartFactory *)self selectedTimeScopeController];
  v20 = [(HKHealthChartFactory *)self sampleTypeDateRangeController];
  if (v31)
  {
    v21 = v28;
    v22 = [(HKInteractiveChartViewController *)v27 initWithStackedDisplayTypes:v30 primaryDisplayTypeStackIndex:0 stackedDisplayTypeHeights:0 healthStore:v15 unitPreferenceController:v16 dateCache:v17 chartDataCacheController:v18 selectedTimeScopeController:v19 sampleTypeDateRangeController:v20 initialXValue:v31 currentCalendarOverride:v13 options:v26 timeScopeRanges:v28];
  }

  else
  {
    v23 = [MEMORY[0x1E695DF00] now];
    v22 = [(HKInteractiveChartViewController *)v27 initWithStackedDisplayTypes:v30 primaryDisplayTypeStackIndex:0 stackedDisplayTypeHeights:0 healthStore:v15 unitPreferenceController:v16 dateCache:v17 chartDataCacheController:v18 selectedTimeScopeController:v19 sampleTypeDateRangeController:v20 initialXValue:v23 currentCalendarOverride:v13 options:v26 timeScopeRanges:v28];

    v21 = v28;
  }

  if (!v13)
  {
    [(HKInteractiveChartViewController *)v22 setAnnotationDataSourceFirstWeekday:a6];
  }

  return v22;
}

- (id)_buildTrendRemoteOverlayChartViewControllerWithDisplayType:(id)a3 timeScopeRanges:(id)a4 initialTimeScope:(int64_t)a5 chartSummaryTrendModel:(id)a6 firstWeekday:(int64_t)a7 displayDate:(id)a8
{
  v14 = a8;
  v15 = a6;
  v16 = a4;
  v17 = a3;
  v18 = [(HKHealthChartFactory *)self _buildApplicationItems];
  v19 = [(HKHealthChartFactory *)self _remoteCalendarOverrideForDisplayType:v17];
  v20 = [[HKOverlayRoomFactorAndTrendViewController alloc] initWithBaseChartDisplayType:v17 trendModel:v15 factorDisplayTypes:0 displayDate:v14 applicationItems:v18 mode:1 timeScopeRanges:v16 initialTimeScope:a5 wrappedOverlay:0 overrideFirstWeekday:a7 overrideCalendar:v19 additionalChartOptions:0];

  return v20;
}

- (id)_remoteCalendarOverrideForDisplayType:(id)a3
{
  v3 = a3;
  v4 = [v3 displayTypeIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 baseDisplayType];
    v4 = [v5 displayTypeIdentifier];
  }

  if (v4 == 248)
  {
    v6 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    [v6 setFirstWeekday:2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_createSleepDisplayTypeForSeriesType:(int64_t)a3
{
  v5 = [(HKHealthChartFactory *)self displayTypeController];
  v6 = [v5 displayTypeWithIdentifier:&unk_1F4381F90];

  v7 = [(HKHealthChartFactory *)self sleepDataSourceProvider];
  v8 = [(HKHealthChartFactory *)self chartDataCacheController];
  v9 = [(HKHealthChartFactory *)self healthStore];
  v10 = [HKSleepUtilities buildSleepChartCachesWithDisplayType:v6 dataSourceProvider:v7 cacheController:v8 healthStore:v9];

  v11 = [(HKHealthChartFactory *)self healthStore];
  v12 = [(HKHealthChartFactory *)self unitPreferenceController];
  v13 = [(HKHealthChartFactory *)self displayTypeController];
  v14 = [(HKHealthChartFactory *)self chartDataCacheController];
  v15 = [(HKHealthChartFactory *)self sleepChartFormatter];
  LOBYTE(v19) = 0;
  v16 = [HKSleepUtilities sleepDisplayTypesWithHealthStore:v11 sleepDisplayType:v6 unitController:v12 displayTypeController:v13 chartCacheController:v14 sleepChartFormatter:v15 sleepSeriesType:a3 sleepChartCaches:v10 customSleepSeries:0 isStackedChart:v19];

  v17 = [v16 firstObject];

  return v17;
}

- (id)createInteractiveChartForSimpleDisplayType:(id)a3 chartOptions:(unint64_t)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [HKInteractiveChartViewController alloc];
  v17[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

  v9 = [(HKHealthChartFactory *)self healthStore];
  v10 = [(HKHealthChartFactory *)self unitPreferenceController];
  v11 = [(HKHealthChartFactory *)self dateCache];
  v12 = [(HKHealthChartFactory *)self chartDataCacheController];
  v13 = [(HKHealthChartFactory *)self selectedTimeScopeController];
  v14 = [(HKHealthChartFactory *)self sampleTypeDateRangeController];
  v15 = [(HKInteractiveChartViewController *)v7 initWithDisplayTypes:v8 healthStore:v9 unitPreferenceController:v10 dateCache:v11 chartDataCacheController:v12 selectedTimeScopeController:v13 sampleTypeDateRangeController:v14 initialXValue:0 currentCalendarOverride:0 options:a4];

  return v15;
}

- (id)activityChartForActivityMoveMode:(int64_t)a3 displayDate:(id)a4 activityOptions:(unint64_t)a5 chartSharableModel:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [(HKHealthChartFactory *)self selectedTimeScopeController];
  [v12 setSelectedTimeScope:6];

  v13 = *MEMORY[0x1E696B498];
  v14 = [(HKHealthChartFactory *)self _factorDisplayTypesForPrimaryTypeIdentifier:*MEMORY[0x1E696B498]];
  [(HKHealthChartFactory *)self _logFactorsForTypeIdentifier:v13 factorDisplayTypes:v14];
  v15 = [v14 count];
  if (v10 || !v15)
  {
    v33 = [HKInteractiveChartActivityController alloc];
    v32 = [(HKHealthChartFactory *)self healthStore];
    v20 = [(HKHealthChartFactory *)self unitPreferenceController];
    v31 = [(HKHealthChartFactory *)self dateCache];
    v23 = [(HKHealthChartFactory *)self chartDataCacheController];
    [(HKHealthChartFactory *)self selectedTimeScopeController];
    v25 = v24 = v10;
    v26 = [(HKHealthChartFactory *)self sampleTypeDateRangeController];
    v27 = [(HKHealthChartFactory *)self wheelchairUseCharacteristicCache];
    v29 = a5;
    v21 = v32;
    v22 = [(HKInteractiveChartActivityController *)v33 initWithHealthStore:v32 unitPreferenceController:v20 dateCache:v31 chartDataCacheController:v23 selectedTimeScopeController:v25 sampleTypeDateRangeController:v26 wheelchairUseCharacteristicCache:v27 initialXValue:v11 activityMoveMode:a3 activityOptions:v29 chartSharableModel:v24];

    v10 = v24;
    v11 = v31;
  }

  else
  {
    v16 = [(HKHealthChartFactory *)self displayTypeController];
    v17 = [MEMORY[0x1E696C2E0] _typeWithIdentifier:v13];
    v18 = [v16 displayTypeForObjectType:v17];

    v19 = [HKOverlayRoomFactorAndTrendViewController alloc];
    v20 = [(HKHealthChartFactory *)self _buildApplicationItems];
    v30 = a5;
    v21 = v18;
    v22 = [(HKOverlayRoomFactorAndTrendViewController *)v19 initWithBaseChartDisplayType:v18 trendModel:0 factorDisplayTypes:v14 displayDate:v11 applicationItems:v20 mode:1 timeScopeRanges:0 initialTimeScope:8 wrappedOverlay:0 overrideFirstWeekday:-1 overrideCalendar:0 additionalChartOptions:0 activityMoveMode:a3 activityOptions:v30];
  }

  return v22;
}

- (id)staticAudiogramChartViewControllerWithAudiogramSample:(id)a3 hideEnhancedUI:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E696C2E0];
  v7 = a3;
  v8 = [v6 audiogramSampleType];
  v9 = [v8 identifier];

  v10 = [HKSingleAudiogramChartViewController alloc];
  v11 = [(HKHealthChartFactory *)self _buildApplicationItems];
  v12 = [(HKHealthChartFactory *)self _factorDisplayTypesForPrimaryTypeIdentifier:v9];
  v13 = [(HKSingleAudiogramChartViewController *)v10 initWithApplicationItems:v11 staticAudiogram:v7 factorDisplayTypes:v12 hideEnhancedUI:v4];

  return v13;
}

- (void)encodeActivityChartDataForActivityMoveMode:(int64_t)a3 completion:(id)a4
{
  v19 = a4;
  context = objc_autoreleasePoolPush();
  v5 = [(HKHealthChartFactory *)self displayTypeController];
  v6 = [v5 displayTypeWithIdentifier:&unk_1F4381FA8];

  v7 = [HKRemoteDateIntervals alloc];
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [(HKRemoteDateIntervals *)v7 initWithDisplayType:v6 fromEndDate:v8];

  v10 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
  v11 = [(HKRemoteDateIntervals *)v9 dateIntervalForTimeScope:4 withGregorianCalendar:v10 error:0];
  v12 = [(HKRemoteDateIntervals *)v9 dateIntervalForTimeScope:3 withGregorianCalendar:v10 error:0];
  v13 = [(HKHealthChartFactory *)self healthStore];
  v14 = [(HKHealthChartFactory *)self dateCache];
  v15 = [(HKHealthChartFactory *)self displayTypeController];
  v16 = [(HKHealthChartFactory *)self unitPreferenceController];
  [HKInteractiveChartActivityController encodeChartDataWithHealthStore:v13 dateCache:v14 displayTypeController:v15 unitController:v16 activityMoveMode:a3 monthDateInterval:v11 sixMonthDateInterval:v12 completion:v19];

  objc_autoreleasePoolPop(context);
}

- (void)updateChartSummaryTrendModel:(id)a3 viewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 conformsToProtocol:&unk_1F43B2A78])
  {
    v7 = [v6 getChartSummaryTrendModelToModify];
    v8 = v7;
    if (v7)
    {
      [v7 updateChartSummaryTrendModel:v5];
    }
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HKHealthChartFactory updateChartSummaryTrendModel:v6 viewController:v8];
    }
  }
}

- (int64_t)_resolvedTimeScopeForTypeIdentifier:(id)a3 displayDateInterval:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(HKHealthChartFactory *)self _displayTypeForTypeIdentifier:v7];
  if (v9)
  {
    [v8 duration];
    if (v10 >= 2.22507386e-308)
    {
      v13 = [v8 startDate];
      v14 = [v8 endDate];
      v11 = [HKValueRange valueRangeWithMinValue:v13 maxValue:v14];

      v12 = [HKGraphZoomLevelConfiguration timeScopeForDateRange:v11];
      if (([v9 hk_isSupportedTimeScope:v12] & 1) == 0)
      {
        v15 = [v9 chartingRules];
        v12 = [v15 preferredTimeScope];
      }
    }

    else
    {
      v11 = [v9 chartingRules];
      v12 = [v11 preferredTimeScope];
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HKHealthChartFactory.m" lineNumber:1185 description:{@"Type %@ does not have a valid display type.", v7}];
    v12 = 8;
  }

  return v12;
}

- (id)_resolvedDisplayDateForDisplayType:(id)a3 displayDate:(id)a4 timeScope:(int64_t)a5 gregorianCalendar:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = [a3 behavior];
  v12 = [v11 preferredCalendarDayAlignment];

  if (v12 != 1 || (a5 & 0xFFFFFFFFFFFFFFFELL) == 6 || (v13 = [v9 hk_dayIndexWithCalendar:v10], v14 = objc_msgSend(v9, "hk_morningIndexWithCalendar:", v10), v13 == v14))
  {
    v15 = v9;
  }

  else
  {
    v15 = [MEMORY[0x1E695DF00] hk_dateOnDayIndex:v14 atHour:6 calendar:v10];
  }

  v16 = v15;

  return v16;
}

- (id)_displayTypeForTypeIdentifier:(id)a3
{
  v4 = [MEMORY[0x1E696C2E0] _typeWithIdentifier:a3];
  if (v4)
  {
    v5 = [(HKHealthChartFactory *)self displayTypeController];
    v6 = [v5 displayTypeForObjectType:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)CHRRoomApplicationItems
{
  v3 = objc_alloc_init(HKSelectedTimeScopeController);
  [(HKSelectedTimeScopeController *)v3 setSelectedTimeScope:1];
  v4 = objc_alloc_init(HKOverlayRoomApplicationItems);
  v5 = [(HKHealthChartFactory *)self healthStore];
  [(HKOverlayRoomApplicationItems *)v4 setHealthStore:v5];

  [(HKOverlayRoomApplicationItems *)v4 setTimeScopeController:v3];
  v6 = [(HKHealthChartFactory *)self dateCache];
  [(HKOverlayRoomApplicationItems *)v4 setDateCache:v6];

  v7 = [(HKHealthChartFactory *)self unitPreferenceController];
  [(HKOverlayRoomApplicationItems *)v4 setUnitController:v7];

  v8 = [(HKHealthChartFactory *)self chartDataCacheController];
  [(HKOverlayRoomApplicationItems *)v4 setChartDataCacheController:v8];

  v9 = [(HKHealthChartFactory *)self sampleTypeUpdateController];
  [(HKOverlayRoomApplicationItems *)v4 setSampleTypeUpdateController:v9];

  v10 = [(HKHealthChartFactory *)self sampleTypeDateRangeController];
  [(HKOverlayRoomApplicationItems *)v4 setSampleDateRangeController:v10];

  v11 = [(HKHealthChartFactory *)self displayTypeController];
  [(HKOverlayRoomApplicationItems *)v4 setDisplayTypeController:v11];

  return v4;
}

- (id)_buildApplicationItems
{
  v3 = objc_alloc_init(HKOverlayRoomApplicationItems);
  v4 = [(HKHealthChartFactory *)self healthStore];
  [(HKOverlayRoomApplicationItems *)v3 setHealthStore:v4];

  v5 = [(HKHealthChartFactory *)self selectedTimeScopeController];
  [(HKOverlayRoomApplicationItems *)v3 setTimeScopeController:v5];

  v6 = [(HKHealthChartFactory *)self dateCache];
  [(HKOverlayRoomApplicationItems *)v3 setDateCache:v6];

  v7 = [(HKHealthChartFactory *)self unitPreferenceController];
  [(HKOverlayRoomApplicationItems *)v3 setUnitController:v7];

  v8 = [(HKHealthChartFactory *)self chartDataCacheController];
  [(HKOverlayRoomApplicationItems *)v3 setChartDataCacheController:v8];

  v9 = [(HKHealthChartFactory *)self sampleTypeUpdateController];
  [(HKOverlayRoomApplicationItems *)v3 setSampleTypeUpdateController:v9];

  v10 = [(HKHealthChartFactory *)self sampleTypeDateRangeController];
  [(HKOverlayRoomApplicationItems *)v3 setSampleDateRangeController:v10];

  v11 = [(HKHealthChartFactory *)self displayTypeController];
  [(HKOverlayRoomApplicationItems *)v3 setDisplayTypeController:v11];

  return v3;
}

- (id)_factorDisplayTypesForPrimaryTypeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthChartFactory *)self displayTypeController];
  v6 = [MEMORY[0x1E696C2E0] _typeWithIdentifier:v4];

  v7 = [v5 displayTypeForObjectType:v6];

  v8 = [(HKHealthChartFactory *)self _factorDisplayTypesForPrimaryDisplayType:v7];

  return v8;
}

- (id)_factorDisplayTypesForPrimaryDisplayType:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = +[HKDisplayType hk_chartFactorDisplayTypes];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([(HKHealthChartFactory *)self _factorDisplayType:v11 availableForPrimaryDisplayType:v4]&& [(HKHealthChartFactory *)self _factorDisplayTypeHasData:v11])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)_factorDisplayType:(id)a3 availableForPrimaryDisplayType:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 hk_chartExcludedFactorDisplayTypes];
  v8 = [v7 containsObject:v6];
  v9 = [v6 isEqual:v5];

  return ((v8 | v9) & 1) == 0;
}

- (BOOL)_factorDisplayTypeHasData:(id)a3
{
  v4 = [a3 sampleType];
  v5 = [(HKHealthChartFactory *)self sampleTypeDateRangeController];
  v6 = [v5 dateRangeForSampleType:v4];

  v7 = [v6 minValue];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v6 maxValue];
    v8 = v9 != 0;
  }

  return v8;
}

- (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11
{
  v43[1] = *MEMORY[0x1E69E9840];
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a3;
  v21 = [(HKHealthChartFactory *)self displayTypeController];
  v22 = [MEMORY[0x1E696C2E0] _typeWithIdentifier:v20];

  v23 = [v21 displayTypeForObjectType:v22];

  if (v23)
  {
    v42 = v15;
    v24 = v19;
    v25 = [v23 hk_interactiveChartOptions];
    if (v16)
    {
      v26 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
      v27 = [(HKHealthChartFactory *)self selectedTimeScopeController];
      -[HKHealthChartFactory _resolvedDisplayDateForDisplayType:displayDate:timeScope:gregorianCalendar:](self, "_resolvedDisplayDateForDisplayType:displayDate:timeScope:gregorianCalendar:", v23, v16, [v27 selectedTimeScope], v26);
      v29 = v28 = v17;

      v16 = v29;
      v17 = v28;
    }

    if (v17)
    {

      v16 = 0;
    }

    v19 = v24;
    v30 = v25 | a11;
    v15 = v42;
    if (v18 || [v19 count])
    {
      v31 = [[HKOverlayRoomFactorAndTrendViewController alloc] initWithBaseChartDisplayType:v23 trendModel:v18 factorDisplayTypes:v19 displayDate:v16 applicationItems:v42 mode:1 timeScopeRanges:0 initialTimeScope:8 wrappedOverlay:0 overrideFirstWeekday:-1 overrideCalendar:0 additionalChartOptions:v30];
    }

    else
    {
      v38 = [HKInteractiveChartViewController alloc];
      v43[0] = v23;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
      v40 = [(HKHealthChartFactory *)self healthStore];
      v37 = [(HKHealthChartFactory *)self unitPreferenceController];
      [(HKHealthChartFactory *)self dateCache];
      v33 = v39 = v17;
      v34 = [(HKHealthChartFactory *)self chartDataCacheController];
      v35 = [(HKHealthChartFactory *)self selectedTimeScopeController];
      v36 = [(HKHealthChartFactory *)self sampleTypeDateRangeController];
      v31 = [(HKInteractiveChartViewController *)v38 initWithDisplayTypes:v41 healthStore:v40 unitPreferenceController:v37 dateCache:v33 chartDataCacheController:v34 selectedTimeScopeController:v35 sampleTypeDateRangeController:v36 initialXValue:v16 currentCalendarOverride:0 options:v30];

      v15 = v42;
      v17 = v39;

      [(HKOverlayRoomViewController *)v31 setRestorationUserActivity:v39];
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)chartFactoryViewControllerProviderForType:(id)a3 standardProvider:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E696C2E0] _typeWithIdentifier:a3];
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    switch([v6 code])
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 7:
      case 8:
      case 9:
      case 10:
      case 12:
      case 13:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 60:
      case 62:
      case 70:
      case 71:
      case 72:
      case 73:
      case 75:
      case 78:
      case 79:
      case 83:
      case 87:
      case 89:
      case 90:
      case 91:
      case 92:
      case 95:
      case 96:
      case 97:
      case 99:
      case 101:
      case 110:
      case 111:
      case 113:
      case 114:
      case 118:
      case 125:
      case 137:
      case 138:
      case 139:
      case 140:
      case 147:
      case 156:
      case 157:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 168:
      case 169:
      case 170:
      case 171:
      case 178:
      case 179:
      case 183:
      case 186:
      case 189:
      case 191:
      case 192:
      case 193:
      case 194:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 240:
      case 241:
      case 242:
      case 243:
      case 244:
      case 249:
      case 250:
      case 251:
      case 254:
      case 256:
      case 258:
      case 259:
      case 260:
      case 262:
      case 263:
      case 264:
      case 265:
      case 266:
      case 269:
      case 270:
      case 274:
      case 276:
      case 277:
      case 279:
      case 280:
      case 281:
      case 282:
      case 283:
      case 284:
      case 285:
      case 287:
      case 288:
      case 294:
      case 295:
      case 296:
      case 297:
      case 298:
      case 301:
      case 302:
      case 303:
      case 304:
      case 313:
      case 314:
      case 341:
        v9 = v5;
        goto LABEL_4;
      case 5:
      case 14:
      case 15:
      case 61:
      case 63:
      case 80:
      case 124:
      case 145:
      case 172:
      case 173:
      case 182:
      case 187:
      case 188:
      case 195:
      case 196:
      case 237:
      case 248:
      case 272:
      case 275:
      case 286:
      case 305:
        v9 = [[HKHealthChartFactoryViewControllerProviderClassAdaptor alloc] initWithProviderClass:objc_opt_class()];
LABEL_4:
        v8 = v9;
        break;
      default:
        break;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)interactiveChartFromMeasureIdentifier:(id)a3 displayDateInterval:(id)a4
{
  sub_1C3CFC180(0, &qword_1EC087558, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_1C3D20104();
  v11 = v10;
  if (a4)
  {
    sub_1C3D1DC04();
    v12 = sub_1C3D1DC54();
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  }

  else
  {
    v13 = sub_1C3D1DC54();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  v14 = self;
  v15 = HKHealthChartFactory.interactiveChart(from:displayDateInterval:)(v9, v11, v8);

  sub_1C3CFCA8C(v8, &qword_1EC087558, MEMORY[0x1E6968130]);

  return v15;
}

- (void)_defaultRemoteDataSourcesForDisplayType:(void *)a3 forTimeScopes:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 localization];
  v8 = [v7 displayName];
  *a1 = 138412290;
  *a3 = v8;
  _os_log_error_impl(&dword_1C3942000, a4, OS_LOG_TYPE_ERROR, "Unsupported time scope requested for %@", a1, 0xCu);
}

void __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_332_cold_1()
{
  OUTLINED_FUNCTION_2();
  HKStringForChartDataSourceQueryRequestAudience(*(v1 + 104));
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() localizedDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1C3942000, v3, v4, "[RemoteCharting]_%@_%@: Error encoding day time scope chart. %@", v5, v6, v7, v8, v9);
}

void __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_334_cold_1()
{
  OUTLINED_FUNCTION_2();
  HKStringForChartDataSourceQueryRequestAudience(*(v1 + 112));
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() localizedDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1C3942000, v3, v4, "[RemoteCharting]_%@_%@: Error encoding week time scope chart. %@", v5, v6, v7, v8, v9);
}

void __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_335_cold_1()
{
  OUTLINED_FUNCTION_2();
  HKStringForChartDataSourceQueryRequestAudience(*(v1 + 112));
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() localizedDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1C3942000, v3, v4, "[RemoteCharting]_%@_%@: Error encoding month time scope chart. %@", v5, v6, v7, v8, v9);
}

void __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_336_cold_1()
{
  OUTLINED_FUNCTION_2();
  HKStringForChartDataSourceQueryRequestAudience(*(v1 + 64));
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() localizedDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1C3942000, v3, v4, "[RemoteCharting]_%@_%@: Error encoding six months time scope chart. %@", v5, v6, v7, v8, v9);
}

- (void)remoteInteractiveChartForTypeIdentifier:(uint64_t)a1 model:(NSObject *)a2 chartSummaryTrendModel:displayDate:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Type %@ does not support chart query data generation", &v2, 0xCu);
}

- (void)updateChartSummaryTrendModel:(uint64_t)a1 viewController:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "HKHealthChartFactory: called updateChartSummaryTrendModel on object that does not conform to HKOverlayRoomTrendModelProviding.  ViewController %@", &v2, 0xCu);
}

@end