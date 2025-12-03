@interface HKHealthChartFactory
- (BOOL)_factorDisplayType:(id)type availableForPrimaryDisplayType:(id)displayType;
- (BOOL)_factorDisplayTypeHasData:(id)data;
- (HKHealthChartFactory)init;
- (HKHealthChartFactory)initWithHealthStore:(id)store;
- (id)CHRRoomApplicationItems;
- (id)_buildApplicationItems;
- (id)_buildBreathingDisturbancesRemoteChartViewControllerWithDisplayType:(id)type apneaDisplayType:(id)displayType timeScopeRanges:(id)ranges initialTimeScope:(int64_t)scope firstWeekday:(int64_t)weekday displayDate:(id)date;
- (id)_buildStandardRemoteChartViewControllerWithDisplayType:(id)type timeScopeRanges:(id)ranges initialTimeScope:(int64_t)scope firstWeekday:(int64_t)weekday displayDate:(id)date;
- (id)_buildTrendRemoteOverlayChartViewControllerWithDisplayType:(id)type timeScopeRanges:(id)ranges initialTimeScope:(int64_t)scope chartSummaryTrendModel:(id)model firstWeekday:(int64_t)weekday displayDate:(id)date;
- (id)_cardioFitnessDataSourcesForDisplayType:(id)type forTimeScopes:(id)scopes;
- (id)_createSleepDisplayTypeForSeriesType:(int64_t)type;
- (id)_defaultRemoteDataSourcesForDisplayType:(id)type forTimeScopes:(id)scopes;
- (id)_displayTypeForTypeIdentifier:(id)identifier;
- (id)_factorDisplayTypesForPrimaryDisplayType:(id)type;
- (id)_factorDisplayTypesForPrimaryTypeIdentifier:(id)identifier;
- (id)_remoteCalendarOverrideForDisplayType:(id)type;
- (id)_remoteChartDisplayTypeForTypeIdentifier:(id)identifier;
- (id)_remoteCustomFormatterForDisplayType:(id)type;
- (id)_remoteDataSourcesForDisplayType:(id)type forTimeScopes:(id)scopes audience:(id)audience;
- (id)_remoteDisplayTypeConfigurationFromDataSources:(id)sources model:(id)model originalDisplayType:(id)type;
- (id)_remoteDisplayTypeConfigurationFromDataSources:(id)sources model:(id)model queryData:(id)data originalDisplayType:(id)type;
- (id)_remoteGraphSeriesForDisplayType:(id)type graphSeriesDataSource:(id)source timeScope:(int64_t)scope;
- (id)_remoteStatisticsIntervalForDisplayType:(id)type timeScope:(int64_t)scope;
- (id)_resolvedDisplayDateForDisplayType:(id)type displayDate:(id)date timeScope:(int64_t)scope gregorianCalendar:(id)calendar;
- (id)_sleepApneaGraphSeriesForDisplayType:(id)type graphSeriesDataSource:(id)source timeScope:(int64_t)scope;
- (id)_sleepApneaRemoteDataSourcesForDisplayType:(id)type forTimeScopes:(id)scopes;
- (id)_sleepRemoteDataSourcesForDisplayType:(id)type forTimeScopes:(id)scopes audience:(id)audience;
- (id)_sleepRemoteGraphSeriesForDisplayType:(id)type graphSeriesDataSource:(id)source timeScope:(int64_t)scope;
- (id)_sleepingBreathingDisturbancesGraphSeriesForDisplayType:(id)type graphSeriesDataSource:(id)source timeScope:(int64_t)scope;
- (id)_sourceTimeZoneFromModel:(id)model;
- (id)_standardRemoteGraphSeriesForDisplayType:(id)type graphSeriesDataSource:(id)source timeScope:(int64_t)scope;
- (id)activityChartForActivityMoveMode:(int64_t)mode displayDate:(id)date activityOptions:(unint64_t)options chartSharableModel:(id)model;
- (id)breathingDisturbancesRemoteInteractiveChartWithBreathingDisturbancesModel:(id)model sleepApneaEventModel:(id)eventModel sleepApneaEventChartData:(id)data displayDate:(id)date;
- (id)chartFactoryViewControllerProviderForType:(id)type standardProvider:(id)provider;
- (id)chartForTypeIdentifier:(id)identifier dateRange:(id)range minimumSize:(CGSize)size;
- (id)chartForTypeIdentifier:(id)identifier dateRange:(id)range minimumSize:(CGSize)size disableXAxis:(BOOL)axis currentCalendar:(id)calendar;
- (id)createInteractiveChartForSimpleDisplayType:(id)type chartOptions:(unint64_t)options;
- (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
- (id)interactiveChartForTypeIdentifier:(id)identifier preferredOverlay:(int64_t)overlay chartOptions:(unint64_t)options displayDateInterval:(id)interval restorationUserActivity:(id)activity chartSummaryTrendModel:(id)model;
- (id)interactiveChartFromMeasureIdentifier:(id)identifier displayDateInterval:(id)interval;
- (id)remoteInteractiveChartForTypeIdentifier:(id)identifier model:(id)model chartSummaryTrendModel:(id)trendModel displayDate:(id)date;
- (id)staticAudiogramChartViewControllerWithAudiogramSample:(id)sample hideEnhancedUI:(BOOL)i;
- (int64_t)_resolvedTimeScopeForTypeIdentifier:(id)identifier displayDateInterval:(id)interval;
- (int64_t)_sourceFirstWeekdayFromModel:(id)model;
- (unint64_t)_additionalChartOptionsForDisplayDate:(id)date displayDateInterval:(id)interval timeScope:(int64_t)scope;
- (void)_executeFetchOrSkipForTimeScopes:(id)scopes timeScope:(int64_t)scope audience:(unint64_t)audience displayType:(id)type remoteDateIntervals:(id)intervals dataSources:(id)sources gregorianCalendar:(id)calendar completion:(id)self0;
- (void)_logFactorsForTypeIdentifier:(id)identifier factorDisplayTypes:(id)types;
- (void)encodeActivityChartDataForActivityMoveMode:(int64_t)mode completion:(id)completion;
- (void)encodeChartQueryDataForTypeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)encodeChartQueryDataForTypeIdentifier:(id)identifier forTimeScopes:(id)scopes timeScopeReferenceDate:(id)date audience:(unint64_t)audience completionHandler:(id)handler;
- (void)updateChartSummaryTrendModel:(id)model viewController:(id)controller;
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

- (HKHealthChartFactory)initWithHealthStore:(id)store
{
  storeCopy = store;
  v37.receiver = self;
  v37.super_class = HKHealthChartFactory;
  v6 = [(HKHealthChartFactory *)&v37 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = [HKDisplayTypeController sharedInstanceForHealthStore:storeCopy];
    displayTypeController = v7->_displayTypeController;
    v7->_displayTypeController = v8;

    profileIdentifier = [storeCopy profileIdentifier];
    if ([profileIdentifier type] == 2)
    {
    }

    else
    {
      profileIdentifier2 = [storeCopy profileIdentifier];
      type = [profileIdentifier2 type];

      if (type != 3)
      {
        v17 = [objc_alloc(MEMORY[0x1E696C518]) initWithHealthStore:storeCopy];
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
    v18 = [[HKSampleTypeUpdateController alloc] initWithHealthStore:storeCopy];
    sampleTypeUpdateController = v7->_sampleTypeUpdateController;
    v7->_sampleTypeUpdateController = v18;

    v20 = [[HKChartDataCacheController alloc] initWithHealthStore:storeCopy unitController:v7->_unitPreferenceController updateController:v7->_sampleTypeUpdateController];
    chartDataCacheController = v7->_chartDataCacheController;
    v7->_chartDataCacheController = v20;

    v22 = [HKDateCache alloc];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v24 = [(HKDateCache *)v22 initWithCalendar:currentCalendar];
    dateCache = v7->_dateCache;
    v7->_dateCache = v24;

    v26 = objc_alloc_init(HKSelectedTimeScopeController);
    selectedTimeScopeController = v7->_selectedTimeScopeController;
    v7->_selectedTimeScopeController = v26;

    v28 = [objc_alloc(MEMORY[0x1E696C678]) initWithHealthStore:storeCopy];
    wheelchairUseCharacteristicCache = v7->_wheelchairUseCharacteristicCache;
    v7->_wheelchairUseCharacteristicCache = v28;

    v30 = [[HKSampleTypeDateRangeController alloc] initWithHealthStore:storeCopy];
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

- (id)chartForTypeIdentifier:(id)identifier dateRange:(id)range minimumSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9 = MEMORY[0x1E695DEE8];
  rangeCopy = range;
  identifierCopy = identifier;
  currentCalendar = [v9 currentCalendar];
  height = [(HKHealthChartFactory *)self chartForTypeIdentifier:identifierCopy dateRange:rangeCopy minimumSize:0 disableXAxis:currentCalendar currentCalendar:width, height];

  return height;
}

- (id)chartForTypeIdentifier:(id)identifier dateRange:(id)range minimumSize:(CGSize)size disableXAxis:(BOOL)axis currentCalendar:(id)calendar
{
  axisCopy = axis;
  height = size.height;
  width = size.width;
  v34[1] = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  calendarCopy = calendar;
  v15 = [(HKHealthChartFactory *)self standardChartDisplayTypeIdentifierForTypeIdentifier:identifier];
  if (v15)
  {
    displayTypeController = [(HKHealthChartFactory *)self displayTypeController];
    v17 = [displayTypeController displayTypeWithIdentifier:v15];

    if (v17)
    {
      v32 = axisCopy;
      firstWeekday = [calendarCopy firstWeekday];
      date = [MEMORY[0x1E695DF00] date];
      if (rangeCopy)
      {
        startDate = [rangeCopy startDate];
        endDate = [rangeCopy endDate];
        v21 = HKUIMidDate(startDate, endDate);

        v22 = [HKGraphZoomLevelConfiguration timeScopeForDateRange:rangeCopy];
        v23 = 1;
      }

      else
      {
        v22 = 6;
        v23 = 3;
        v21 = date;
      }

      v25 = [HKGraphZoomLevelConfiguration chartVisibleRangeForTimeScope:v22 anchorDate:v21 alignment:v23 dataRange:0 calendar:calendarCopy firstWeekday:firstWeekday cadence:0 level:0];
      v26 = +[HKDisplayCategory categoryWithID:](HKDisplayCategory, "categoryWithID:", [v17 categoryIdentifier]);
      unitPreferenceController = [(HKHealthChartFactory *)self unitPreferenceController];
      chartDataCacheController = [(HKHealthChartFactory *)self chartDataCacheController];
      v29 = [v17 hk_standardSeriesForTimeScope:v22 displayCategory:v26 unitController:unitPreferenceController dataCacheController:chartDataCacheController];

      v24 = [[_HKStaticDateGraphViewController alloc] initWithFixedRange:v25 currentCalendar:calendarCopy];
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

- (id)interactiveChartForTypeIdentifier:(id)identifier preferredOverlay:(int64_t)overlay chartOptions:(unint64_t)options displayDateInterval:(id)interval restorationUserActivity:(id)activity chartSummaryTrendModel:(id)model
{
  identifierCopy = identifier;
  intervalCopy = interval;
  activityCopy = activity;
  modelCopy = model;
  endDate = [intervalCopy endDate];
  v16 = [(HKHealthChartFactory *)self _resolvedTimeScopeForTypeIdentifier:identifierCopy displayDateInterval:intervalCopy];
  selectedTimeScopeController = [(HKHealthChartFactory *)self selectedTimeScopeController];
  [selectedTimeScopeController setSelectedTimeScope:v16];

  _buildApplicationItems = [(HKHealthChartFactory *)self _buildApplicationItems];
  userInfo = [activityCopy userInfo];
  v20 = [userInfo objectForKeyedSubscript:@"HKOverlayRoomViewControllerRestorationModeKey"];
  v34 = endDate;
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = endDate;
  }

  v22 = v21;

  v23 = [(NSMutableDictionary *)self->_customViewControllerProvidersByTypeIdentifier objectForKeyedSubscript:identifierCopy];
  if (!v23)
  {
    v23 = [(HKHealthChartFactory *)self chartFactoryViewControllerProviderForType:identifierCopy standardProvider:self];
  }

  turnOffInitialSelectionForTesting = [(HKHealthChartFactory *)self turnOffInitialSelectionForTesting];
  if (turnOffInitialSelectionForTesting)
  {
    optionsCopy = options | 0x2000;
  }

  else
  {
    optionsCopy = options;
  }

  if (overlay == 11 && turnOffInitialSelectionForTesting)
  {
    overlayCopy = 0;
  }

  else
  {
    overlayCopy = overlay;
  }

  v27 = optionsCopy | [(HKHealthChartFactory *)self _additionalChartOptionsForDisplayDate:v22 displayDateInterval:intervalCopy timeScope:v16];
  v28 = [(HKHealthChartFactory *)self _factorDisplayTypesForPrimaryTypeIdentifier:identifierCopy];
  [(HKHealthChartFactory *)self _logFactorsForTypeIdentifier:identifierCopy factorDisplayTypes:v28];
  v29 = [v23 createInteractiveChartViewControllerForTypeIdentifier:identifierCopy chartFactory:self applicationItems:_buildApplicationItems displayDate:v22 preferredOverlay:overlayCopy restorationUserActivity:activityCopy trendModel:modelCopy factorDisplayTypes:v28 additionalChartOptions:v27];

  return v29;
}

- (void)_logFactorsForTypeIdentifier:(id)identifier factorDisplayTypes:(id)types
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = [types hk_map:&__block_literal_global_2];
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
      v12 = identifierCopy;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1C3942000, v10, OS_LOG_TYPE_INFO, "Factors for %@: [%@]", &v11, 0x16u);
    }
  }
}

- (unint64_t)_additionalChartOptionsForDisplayDate:(id)date displayDateInterval:(id)interval timeScope:(int64_t)scope
{
  v5 = 0;
  if (date && scope == 4)
  {
    v7 = MEMORY[0x1E695DEE8];
    intervalCopy = interval;
    dateCopy = date;
    hk_gregorianCalendarWithLocalTimeZone = [v7 hk_gregorianCalendarWithLocalTimeZone];
    [hk_gregorianCalendarWithLocalTimeZone rangeOfUnit:16 inUnit:8 forDate:dateCopy];
    v12 = v11;
    v13 = [hk_gregorianCalendarWithLocalTimeZone hk_startOfMonthForDate:dateCopy];

    startDate = [intervalCopy startDate];
    v15 = [hk_gregorianCalendarWithLocalTimeZone components:30 fromDate:startDate];

    endDate = [intervalCopy endDate];

    v17 = [hk_gregorianCalendarWithLocalTimeZone components:30 fromDate:endDate];

    v18 = [hk_gregorianCalendarWithLocalTimeZone components:30 fromDate:v13];
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

- (id)_remoteChartDisplayTypeForTypeIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(HKHealthChartFactory *)self standardChartDisplayTypeIdentifierForTypeIdentifier:identifierCopy];
  if (v5)
  {
    displayTypeController = [(HKHealthChartFactory *)self displayTypeController];
    v7 = [displayTypeController displayTypeWithIdentifier:v5];
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
        v15 = identifierCopy;
        _os_log_impl(&dword_1C3942000, v10, OS_LOG_TYPE_INFO, "Falling back to default chart for %@", &v14, 0xCu);
      }
    }

    displayTypeController = self->_displayTypeController;
    displayTypeController = [MEMORY[0x1E696C2E0] _typeWithIdentifier:identifierCopy];
    v7 = [(HKDisplayTypeController *)displayTypeController displayTypeForObjectType:displayTypeController];
  }

  v12 = v7;

  return v12;
}

- (id)_remoteDataSourcesForDisplayType:(id)type forTimeScopes:(id)scopes audience:(id)audience
{
  typeCopy = type;
  scopesCopy = scopes;
  audienceCopy = audience;
  displayTypeIdentifier = [typeCopy displayTypeIdentifier];
  if (displayTypeIdentifier == 276)
  {
    v12 = [(HKHealthChartFactory *)self _sleepApneaRemoteDataSourcesForDisplayType:typeCopy forTimeScopes:scopesCopy];
  }

  else if (displayTypeIdentifier == 124)
  {
    v12 = [(HKHealthChartFactory *)self _cardioFitnessDataSourcesForDisplayType:typeCopy forTimeScopes:scopesCopy];
  }

  else
  {
    if (displayTypeIdentifier == 63)
    {
      [(HKHealthChartFactory *)self _sleepRemoteDataSourcesForDisplayType:typeCopy forTimeScopes:scopesCopy audience:audienceCopy];
    }

    else
    {
      [(HKHealthChartFactory *)self _defaultRemoteDataSourcesForDisplayType:typeCopy forTimeScopes:scopesCopy];
    }
    v12 = ;
  }

  v13 = v12;

  return v13;
}

- (id)_sleepRemoteDataSourcesForDisplayType:(id)type forTimeScopes:(id)scopes audience:(id)audience
{
  v34 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  scopesCopy = scopes;
  audienceCopy = audience;
  sleepDataSourceProvider = [(HKHealthChartFactory *)self sleepDataSourceProvider];

  if (!sleepDataSourceProvider)
  {
    v16 = [[_HKRemoteDataSources alloc] initSupportsChartQueryDataGeneration:0];
    goto LABEL_23;
  }

  v26 = typeCopy;
  if (!audienceCopy || (v12 = [audienceCopy integerValue], v12 == 1))
  {
    sleepDataSourceProvider2 = [(HKHealthChartFactory *)self sleepDataSourceProvider];
    healthStore = [(HKHealthChartFactory *)self healthStore];
    v15 = [sleepDataSourceProvider2 makeSleepDataSourceFromHealthStore:healthStore representativeDisplayType:typeCopy];
  }

  else
  {
    if (v12)
    {
      v17 = 0;
      goto LABEL_10;
    }

    sleepDataSourceProvider2 = [(HKHealthChartFactory *)self sleepDataSourceProvider];
    healthStore = [(HKHealthChartFactory *)self healthStore];
    v15 = [sleepDataSourceProvider2 makeSleepStagesDataSourceFromHealthStore:healthStore representativeDisplayType:typeCopy];
  }

  v17 = v15;

LABEL_10:
  v16 = [[_HKRemoteDataSources alloc] initSupportsChartQueryDataGeneration:1];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = scopesCopy;
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

  typeCopy = v26;
LABEL_23:

  return v16;
}

- (id)_cardioFitnessDataSourcesForDisplayType:(id)type forTimeScopes:(id)scopes
{
  v28 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  scopesCopy = scopes;
  v8 = [HKRemoteCardioFitnessDataSource alloc];
  unitPreferenceController = [(HKHealthChartFactory *)self unitPreferenceController];
  healthStore = [(HKHealthChartFactory *)self healthStore];
  v11 = [(HKRemoteCardioFitnessDataSource *)v8 initWithUnitController:unitPreferenceController displayType:typeCopy healthStore:healthStore];

  v12 = [[_HKRemoteDataSources alloc] initSupportsChartQueryDataGeneration:1];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = scopesCopy;
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

- (id)_sleepApneaRemoteDataSourcesForDisplayType:(id)type forTimeScopes:(id)scopes
{
  v27 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  scopesCopy = scopes;
  v8 = [HKRemoteNotificationLevelCategoryDataSource alloc];
  healthStore = [(HKHealthChartFactory *)self healthStore];
  v10 = [(HKRemoteNotificationLevelCategoryDataSource *)v8 initWithDisplayType:typeCopy healthStore:healthStore];

  v11 = [[_HKRemoteDataSources alloc] initSupportsChartQueryDataGeneration:1];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = scopesCopy;
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

- (id)_defaultRemoteDataSourcesForDisplayType:(id)type forTimeScopes:(id)scopes
{
  v28 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  scopesCopy = scopes;
  v7 = objc_alloc_init(_HKRemoteDataSources);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = scopesCopy;
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
            [(HKHealthChartFactory *)v25 _defaultRemoteDataSourcesForDisplayType:typeCopy forTimeScopes:&v26, v17];
          }
        }

        else
        {
          integerValue = [v13 integerValue];
          healthStore = [(HKHealthChartFactory *)self healthStore];
          unitPreferenceController = [(HKHealthChartFactory *)self unitPreferenceController];
          v17 = [typeCopy hk_healthQueryChartCacheDataSourceForTimeScope:integerValue healthStore:healthStore unitController:unitPreferenceController];

          -[_HKRemoteDataSources setDataSource:forTimeScope:](v7, "setDataSource:forTimeScope:", v17, [v13 integerValue]);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v10);
  }

  allDataSources = [(_HKRemoteDataSources *)v7 allDataSources];
  if ([allDataSources count])
  {
    -[_HKRemoteDataSources setSupportsChartQueryDataGeneration:](v7, "setSupportsChartQueryDataGeneration:", [allDataSources hk_allObjectsPassTest:&__block_literal_global_321]);
  }

  return v7;
}

- (id)_remoteStatisticsIntervalForDisplayType:(id)type timeScope:(int64_t)scope
{
  typeCopy = type;
  chartingRules = [typeCopy chartingRules];
  remoteChartConfiguration = [chartingRules remoteChartConfiguration];

  if (!remoteChartConfiguration || ([typeCopy chartingRules], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "remoteChartConfiguration"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "statisticIntervalComponentsForTimeScope:", scope), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, !v10))
  {
    v11 = [typeCopy hk_customSeriesPointIntervalComponentsForTimeScope:scope resolution:0];
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      v12 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:scope];
      v10 = [v12 seriesPointIntervalComponentsAtResolution:0];
    }
  }

  return v10;
}

- (void)encodeChartQueryDataForTypeIdentifier:(id)identifier forTimeScopes:(id)scopes timeScopeReferenceDate:(id)date audience:(unint64_t)audience completionHandler:(id)handler
{
  v52 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  scopesCopy = scopes;
  dateCopy = date;
  handlerCopy = handler;
  v16 = scopesCopy;
  allObjects = [scopesCopy allObjects];
  v18 = [allObjects hk_map:&__block_literal_global_324];
  v34 = [v18 componentsJoinedByString:{@", "}];

  _HKInitializeLogging();
  v19 = HKLogWellnessDashboard();
  LODWORD(v18) = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);

  if (v18)
  {
    v20 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HKStringForChartDataSourceQueryRequestAudience(audience);
      *buf = 138412802;
      v47 = v21;
      v48 = 2112;
      v49 = identifierCopy;
      v50 = 2112;
      v51 = v34;
      _os_log_impl(&dword_1C3942000, v20, OS_LOG_TYPE_INFO, "[RemoteCharting]_%@_%@: Starting query for timeScopes: %@", buf, 0x20u);
    }
  }

  v22 = [(HKHealthChartFactory *)self _remoteChartDisplayTypeForTypeIdentifier:identifierCopy];
  if (v22)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:audience];
    v24 = [(HKHealthChartFactory *)self _remoteDataSourcesForDisplayType:v22 forTimeScopes:scopesCopy audience:v23];

    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v26 = [[HKRemoteDateIntervals alloc] initWithDisplayType:v22 fromEndDate:dateCopy];
    v32 = v22;
    v33 = v24;
    if ([v24 supportsChartQueryDataGeneration])
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __126__HKHealthChartFactory_encodeChartQueryDataForTypeIdentifier_forTimeScopes_timeScopeReferenceDate_audience_completionHandler___block_invoke_332;
      v35[3] = &unk_1E81B5810;
      audienceCopy = audience;
      v36 = identifierCopy;
      selfCopy = self;
      v38 = v16;
      v39 = v22;
      v40 = v26;
      v41 = v24;
      v42 = hk_gregorianCalendarWithLocalTimeZone;
      v43 = v34;
      v44 = handlerCopy;
      [(HKHealthChartFactory *)self _executeFetchOrSkipForTimeScopes:v38 timeScope:6 audience:audience displayType:v39 remoteDateIntervals:v40 dataSources:v41 gregorianCalendar:v42 completion:v35];

      identifierCopy = v36;
    }

    else
    {
      identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Type %@ does not support chart query data generation", identifierCopy];
      _HKInitializeLogging();
      v29 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v31 = HKStringForChartDataSourceQueryRequestAudience(audience);
        *buf = 138412802;
        v47 = v31;
        v48 = 2112;
        v49 = identifierCopy;
        v50 = 2112;
        v51 = identifierCopy;
        _os_log_error_impl(&dword_1C3942000, v29, OS_LOG_TYPE_ERROR, "[RemoteCharting]_%@_%@: %@", buf, 0x20u);
      }

      v30 = [MEMORY[0x1E696ABC0] hk_error:11 description:identifierCopy];
      (*(handlerCopy + 2))(handlerCopy, 0, v30);
    }

    v22 = v32;
    identifierCopy2 = v33;
  }

  else
  {
    identifierCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Type %@ does not have a valid display type.", identifierCopy];
    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x1E696ABC0] hk_error:11 description:identifierCopy2];
    (*(handlerCopy + 2))(handlerCopy, 0, hk_gregorianCalendarWithLocalTimeZone);
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

- (void)_executeFetchOrSkipForTimeScopes:(id)scopes timeScope:(int64_t)scope audience:(unint64_t)audience displayType:(id)type remoteDateIntervals:(id)intervals dataSources:(id)sources gregorianCalendar:(id)calendar completion:(id)self0
{
  v63 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  intervalsCopy = intervals;
  sourcesCopy = sources;
  calendarCopy = calendar;
  completionCopy = completion;
  v20 = MEMORY[0x1E696AD98];
  scopesCopy = scopes;
  v22 = [v20 numberWithInteger:scope];
  v23 = [scopesCopy member:v22];

  v49 = sourcesCopy;
  if (v23)
  {
    audienceCopy = audience;
    v24 = [(HKHealthChartFactory *)self _remoteStatisticsIntervalForDisplayType:typeCopy timeScope:scope];
    v25 = [sourcesCopy dataSourceForTimeScope:scope];
    v56 = 0;
    v26 = [intervalsCopy dateIntervalForTimeScope:scope withGregorianCalendar:calendarCopy error:&v56];
    v27 = v56;
    v28 = intervalsCopy;
    if (!v27 || v26)
    {
      v45 = v27;
      v30 = [HKHealthQueryChartCacheQueryRequest alloc];
      [v26 startDate];
      selfCopy = self;
      v32 = completionCopy;
      v33 = v25;
      v34 = calendarCopy;
      v36 = v35 = v24;
      [v26 endDate];
      v38 = v37 = v28;
      v39 = [(HKHealthQueryChartCacheQueryRequest *)v30 initWithStartDate:v36 endDate:v38 statisticsInterval:v35 audience:audienceCopy];

      v28 = v37;
      v24 = v35;
      calendarCopy = v34;
      v25 = v33;
      completionCopy = v32;
      healthStore = [(HKHealthChartFactory *)selfCopy healthStore];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __149__HKHealthChartFactory__executeFetchOrSkipForTimeScopes_timeScope_audience_displayType_remoteDateIntervals_dataSources_gregorianCalendar_completion___block_invoke;
      v51[3] = &unk_1E81B5838;
      v52 = v26;
      v53 = typeCopy;
      v54 = calendarCopy;
      v55 = completionCopy;
      v41 = [v25 generateSharableQueryDataForRequest:v39 healthStore:healthStore completionHandler:v51];

      v27 = v45;
    }

    else
    {
      _HKInitializeLogging();
      v29 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v42 = HKStringForChartDataSourceQueryRequestAudience(audienceCopy);
        objectType = [typeCopy objectType];
        identifier = [objectType identifier];
        [v27 description];
        v44 = v46 = v27;
        *buf = 138412802;
        v58 = v42;
        v59 = 2112;
        v60 = identifier;
        v61 = 2112;
        v62 = v44;
        _os_log_error_impl(&dword_1C3942000, v29, OS_LOG_TYPE_ERROR, "[RemoteCharting]_%@_%@ Error: %@", buf, 0x20u);

        v27 = v46;
      }

      (*(completionCopy + 2))(completionCopy, 0, 0, v27);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
    v28 = intervalsCopy;
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

- (void)encodeChartQueryDataForTypeIdentifier:(id)identifier completionHandler:(id)handler
{
  v6 = MEMORY[0x1E695DFD8];
  handlerCopy = handler;
  identifierCopy = identifier;
  v10 = [v6 setWithObjects:{&unk_1F4381F48, &unk_1F4381F60, 0}];
  v9 = [MEMORY[0x1E695DF00] now];
  [(HKHealthChartFactory *)self encodeChartQueryDataForTypeIdentifier:identifierCopy forTimeScopes:v10 timeScopeReferenceDate:v9 audience:0 completionHandler:handlerCopy];
}

- (id)remoteInteractiveChartForTypeIdentifier:(id)identifier model:(id)model chartSummaryTrendModel:(id)trendModel displayDate:(id)date
{
  v48[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  modelCopy = model;
  trendModelCopy = trendModel;
  dateCopy = date;
  v15 = [(HKHealthChartFactory *)self _remoteChartDisplayTypeForTypeIdentifier:identifierCopy];
  if (v15)
  {
    v16 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F4381F48, &unk_1F4381F60, 0}];
    v17 = [(HKHealthChartFactory *)self _remoteDataSourcesForDisplayType:v15 forTimeScopes:v16];

    if ([v17 supportsChartQueryDataGeneration])
    {
      v46 = dateCopy;
      v42 = v17;
      v39 = [(HKHealthChartFactory *)self _remoteDisplayTypeConfigurationFromDataSources:v17 model:modelCopy originalDisplayType:v15];
      v18 = [(HKHealthChartFactory *)self _sourceTimeZoneFromModel:modelCopy];
      v41 = [(HKHealthChartFactory *)self _sourceFirstWeekdayFromModel:modelCopy];
      v45 = trendModelCopy;
      v19 = MEMORY[0x1E696AB80];
      monthDateInterval = [modelCopy monthDateInterval];
      v21 = [v19 hk_dateIntervalWithCodableDateInterval:monthDateInterval sourceTimeZone:v18];

      v22 = MEMORY[0x1E696AB80];
      sixMonthDateInterval = [modelCopy sixMonthDateInterval];
      v44 = v18;
      v24 = [v22 hk_dateIntervalWithCodableDateInterval:sixMonthDateInterval sourceTimeZone:v18];

      startDate = [v21 startDate];
      v43 = v21;
      endDate = [v21 endDate];
      v27 = [HKValueRange valueRangeWithMinValue:startDate maxValue:endDate];

      startDate2 = [v24 startDate];
      v40 = v24;
      endDate2 = [v24 endDate];
      v30 = [HKValueRange valueRangeWithMinValue:startDate2 maxValue:endDate2];

      trendModelCopy = v45;
      v47[0] = &unk_1F4381F48;
      v47[1] = &unk_1F4381F60;
      v31 = v27;
      v48[0] = v27;
      v48[1] = v30;
      v32 = v39;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
      remoteDisplayType = [v39 remoteDisplayType];
      initialTimeScope = [v39 initialTimeScope];
      if (v45)
      {
        [(HKHealthChartFactory *)self _buildTrendRemoteOverlayChartViewControllerWithDisplayType:remoteDisplayType timeScopeRanges:v33 initialTimeScope:initialTimeScope chartSummaryTrendModel:v45 firstWeekday:v41 displayDate:v46];
      }

      else
      {
        [(HKHealthChartFactory *)self _buildStandardRemoteChartViewControllerWithDisplayType:remoteDisplayType timeScopeRanges:v33 initialTimeScope:initialTimeScope firstWeekday:v41 displayDate:v46];
      }
      v37 = ;

      dateCopy = v46;
      v17 = v42;
    }

    else
    {
      _HKInitializeLogging();
      v32 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [HKHealthChartFactory remoteInteractiveChartForTypeIdentifier:identifierCopy model:v32 chartSummaryTrendModel:? displayDate:?];
      }

      v37 = 0;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKHealthChartFactory.m" lineNumber:624 description:{@"Type %@ does not have a valid display type.", identifierCopy}];

    v37 = 0;
  }

  return v37;
}

- (id)breathingDisturbancesRemoteInteractiveChartWithBreathingDisturbancesModel:(id)model sleepApneaEventModel:(id)eventModel sleepApneaEventChartData:(id)data displayDate:(id)date
{
  v55[2] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  eventModelCopy = eventModel;
  dataCopy = data;
  dateCopy = date;
  v15 = *MEMORY[0x1E696BC50];
  v16 = [(HKHealthChartFactory *)self _remoteChartDisplayTypeForTypeIdentifier:v15];
  if (v16)
  {
    v17 = *MEMORY[0x1E696B6A0];
    v53 = [(HKHealthChartFactory *)self _remoteChartDisplayTypeForTypeIdentifier:v17];
    if (v53)
    {
      v50 = dateCopy;
      v47 = v15;
      v18 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F4381F48, &unk_1F4381F60, 0}];
      v48 = [(HKHealthChartFactory *)self _remoteDataSourcesForDisplayType:v16 forTimeScopes:v18];

      v43 = [(HKHealthChartFactory *)self _remoteDisplayTypeConfigurationFromDataSources:v48 model:modelCopy originalDisplayType:v16];
      v19 = [(HKHealthChartFactory *)self _sourceTimeZoneFromModel:modelCopy];
      v45 = [(HKHealthChartFactory *)self _sourceFirstWeekdayFromModel:modelCopy];
      v20 = MEMORY[0x1E696AB80];
      [modelCopy monthDateInterval];
      v21 = v51 = dataCopy;
      v46 = v19;
      v22 = [v20 hk_dateIntervalWithCodableDateInterval:v21 sourceTimeZone:v19];

      v23 = MEMORY[0x1E696AB80];
      [modelCopy sixMonthDateInterval];
      v24 = v52 = eventModelCopy;
      v25 = [v23 hk_dateIntervalWithCodableDateInterval:v24 sourceTimeZone:v19];

      v44 = v22;
      startDate = [v22 startDate];
      [v22 endDate];
      v27 = v49 = v17;
      v41 = [HKValueRange valueRangeWithMinValue:startDate maxValue:v27];

      v42 = v25;
      startDate2 = [v25 startDate];
      endDate = [v25 endDate];
      v30 = [HKValueRange valueRangeWithMinValue:startDate2 maxValue:endDate];

      v54[0] = &unk_1F4381F48;
      v54[1] = &unk_1F4381F60;
      v55[0] = v41;
      v55[1] = v30;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
      v32 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F4381F48, &unk_1F4381F60, 0}];
      v33 = [(HKHealthChartFactory *)self _remoteDataSourcesForDisplayType:v53 forTimeScopes:v32];

      v34 = [(HKHealthChartFactory *)self _remoteDisplayTypeConfigurationFromDataSources:v33 model:v52 queryData:v51 originalDisplayType:v53];
      remoteDisplayType = [v43 remoteDisplayType];
      remoteDisplayType2 = [v34 remoteDisplayType];
      v37 = -[HKHealthChartFactory _buildBreathingDisturbancesRemoteChartViewControllerWithDisplayType:apneaDisplayType:timeScopeRanges:initialTimeScope:firstWeekday:displayDate:](self, "_buildBreathingDisturbancesRemoteChartViewControllerWithDisplayType:apneaDisplayType:timeScopeRanges:initialTimeScope:firstWeekday:displayDate:", remoteDisplayType, remoteDisplayType2, v31, [v43 initialTimeScope], v45, v50);

      dataCopy = v51;
      v15 = v47;
      dateCopy = v50;

      eventModelCopy = v52;
      v17 = v49;
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HKHealthChartFactory.m" lineNumber:686 description:{@"Type %@ does not have a valid display type.", v17}];

      v37 = 0;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HKHealthChartFactory.m" lineNumber:678 description:{@"Type %@ does not have a valid display type.", v15}];

    v37 = 0;
  }

  return v37;
}

- (id)_buildBreathingDisturbancesRemoteChartViewControllerWithDisplayType:(id)type apneaDisplayType:(id)displayType timeScopeRanges:(id)ranges initialTimeScope:(int64_t)scope firstWeekday:(int64_t)weekday displayDate:(id)date
{
  v40[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  displayTypeCopy = displayType;
  rangesCopy = ranges;
  dateCopy = date;
  selectedTimeScopeController = [(HKHealthChartFactory *)self selectedTimeScopeController];
  [selectedTimeScopeController setSelectedTimeScope:scope];

  v30 = [typeCopy hk_interactiveChartOptions] | 0xA0000;
  v33 = [(HKHealthChartFactory *)self _remoteCalendarOverrideForDisplayType:typeCopy];
  v29 = [HKInteractiveChartOverlayViewController alloc];
  v34 = displayTypeCopy;
  v39 = displayTypeCopy;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v40[0] = v16;
  v35 = typeCopy;
  v38 = typeCopy;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v40[1] = v31;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v17 = [HKInteractiveChartStackHeight percentStackHeights:&unk_1F4381000];
  healthStore = [(HKHealthChartFactory *)self healthStore];
  unitPreferenceController = [(HKHealthChartFactory *)self unitPreferenceController];
  dateCache = [(HKHealthChartFactory *)self dateCache];
  chartDataCacheController = [(HKHealthChartFactory *)self chartDataCacheController];
  selectedTimeScopeController2 = [(HKHealthChartFactory *)self selectedTimeScopeController];
  sampleTypeDateRangeController = [(HKHealthChartFactory *)self sampleTypeDateRangeController];
  if (dateCopy)
  {
    v24 = rangesCopy;
    v25 = [(HKInteractiveChartOverlayViewController *)v29 initWithStackedDisplayTypes:v36 primaryDisplayTypeStackIndex:&unk_1F4381F78 stackedDisplayTypeHeights:v17 healthStore:healthStore unitPreferenceController:unitPreferenceController dateCache:dateCache chartDataCacheController:chartDataCacheController selectedTimeScopeController:selectedTimeScopeController2 sampleTypeDateRangeController:sampleTypeDateRangeController initialXValue:dateCopy currentCalendarOverride:0 options:v30 timeScopeRanges:rangesCopy];
  }

  else
  {
    v26 = [MEMORY[0x1E695DF00] now];
    v25 = [(HKInteractiveChartOverlayViewController *)v29 initWithStackedDisplayTypes:v36 primaryDisplayTypeStackIndex:&unk_1F4381F78 stackedDisplayTypeHeights:v17 healthStore:healthStore unitPreferenceController:unitPreferenceController dateCache:dateCache chartDataCacheController:chartDataCacheController selectedTimeScopeController:selectedTimeScopeController2 sampleTypeDateRangeController:sampleTypeDateRangeController initialXValue:v26 currentCalendarOverride:0 options:v30 timeScopeRanges:rangesCopy];

    v24 = rangesCopy;
  }

  if (!v33)
  {
    [(HKInteractiveChartViewController *)v25 setAnnotationDataSourceFirstWeekday:weekday];
  }

  return v25;
}

- (id)_sourceTimeZoneFromModel:(id)model
{
  modelCopy = model;
  if ([modelCopy hasMonthData])
  {
    monthData = [modelCopy monthData];
    hasTimeZoneName = [monthData hasTimeZoneName];

    if (hasTimeZoneName)
    {
      v6 = objc_alloc(MEMORY[0x1E695DFE8]);
      monthData2 = [modelCopy monthData];
LABEL_7:
      v10 = monthData2;
      timeZoneName = [monthData2 timeZoneName];
      v12 = [v6 initWithName:timeZoneName];

      goto LABEL_9;
    }
  }

  if ([modelCopy hasSixMonthData])
  {
    sixMonthData = [modelCopy sixMonthData];
    hasTimeZoneName2 = [sixMonthData hasTimeZoneName];

    if (hasTimeZoneName2)
    {
      v6 = objc_alloc(MEMORY[0x1E695DFE8]);
      monthData2 = [modelCopy sixMonthData];
      goto LABEL_7;
    }
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (int64_t)_sourceFirstWeekdayFromModel:(id)model
{
  modelCopy = model;
  if ([modelCopy hasMonthData] && (objc_msgSend(modelCopy, "monthData"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "hasFirstWeekday"), v4, v5))
  {
    monthData = [modelCopy monthData];
  }

  else
  {
    if (![modelCopy hasSixMonthData] || (objc_msgSend(modelCopy, "sixMonthData"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasFirstWeekday"), v7, !v8))
    {
      firstWeekday = -1;
      goto LABEL_9;
    }

    monthData = [modelCopy sixMonthData];
  }

  v9 = monthData;
  firstWeekday = [monthData firstWeekday];

LABEL_9:
  return firstWeekday;
}

- (id)_remoteDisplayTypeConfigurationFromDataSources:(id)sources model:(id)model originalDisplayType:(id)type
{
  v47[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  modelCopy = model;
  sourcesCopy = sources;
  monthData = [modelCopy monthData];
  sixMonthData = [modelCopy sixMonthData];

  v13 = [sourcesCopy dataSourceForTimeScope:4];
  v14 = [sourcesCopy dataSourceForTimeScope:3];

  v44 = monthData;
  v15 = [v13 chartPointsFromQueryData:monthData dataIsFromRemoteSource:1];
  v45 = v14;
  v43 = sixMonthData;
  v16 = sixMonthData;
  v17 = v15;
  v18 = [v14 chartPointsFromQueryData:v16 dataIsFromRemoteSource:1];
  chartPoints = [v17 chartPoints];
  if (chartPoints && (v20 = chartPoints, [v17 chartPoints], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v20, v22))
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
  v26 = [(HKHealthChartFactory *)self _remoteGraphSeriesForDisplayType:typeCopy graphSeriesDataSource:v24 timeScope:4];
  v27 = [(HKHealthChartFactory *)self _remoteGraphSeriesForDisplayType:typeCopy graphSeriesDataSource:v25 timeScope:3];
  seriesDataSourceContext = [v26 seriesDataSourceContext];
  [(HKRemoteChartDataSource *)v24 setDataForTimeScope:4 seriesData:v17 dataSourceForMapping:v13 seriesDataSourceContext:seriesDataSourceContext];

  seriesDataSourceContext2 = [v27 seriesDataSourceContext];
  v30 = v18;
  [(HKRemoteChartDataSource *)v25 setDataForTimeScope:3 seriesData:v18 dataSourceForMapping:v45 seriesDataSourceContext:seriesDataSourceContext2];

  v31 = [(HKHealthChartFactory *)self _remoteCustomFormatterForDisplayType:typeCopy];
  v32 = [HKInteractiveChartDisplayType alloc];
  objectType = [typeCopy objectType];
  v40 = v17;
  code = [objectType code];
  v46[0] = &unk_1F4381F48;
  v46[1] = &unk_1F4381F60;
  v47[0] = v26;
  v47[1] = v27;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v35 = v39 = v13;
  v36 = [(HKInteractiveChartDisplayType *)v32 initWithBaseDisplayType:typeCopy valueFormatter:v31 dataTypeCode:code seriesForTimeScopeMapping:v35];

  v37 = [[_HKRemoteDisplayTypeConfiguration alloc] initWithInitialTimeScope:v42 remoteDisplayType:v36];

  return v37;
}

- (id)_remoteDisplayTypeConfigurationFromDataSources:(id)sources model:(id)model queryData:(id)data originalDisplayType:(id)type
{
  v47[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dataCopy = data;
  modelCopy = model;
  sourcesCopy = sources;
  v14 = [sourcesCopy dataSourceForTimeScope:4];
  v15 = [sourcesCopy dataSourceForTimeScope:3];

  v16 = [(HKHealthChartFactory *)self _sourceTimeZoneFromModel:modelCopy];
  v17 = [v14 chartPointsFromNotificationQueryData:dataCopy sourceTimeZoneFromModel:v16];

  v18 = [(HKHealthChartFactory *)self _sourceTimeZoneFromModel:modelCopy];

  v45 = v15;
  v19 = [v15 chartPointsFromNotificationQueryData:dataCopy sourceTimeZoneFromModel:v18];

  chartPoints = [v17 chartPoints];
  if (chartPoints && (v21 = chartPoints, [v17 chartPoints], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "count"), v22, v21, v23))
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
  v28 = [(HKHealthChartFactory *)self _remoteGraphSeriesForDisplayType:typeCopy graphSeriesDataSource:v25 timeScope:4];
  v29 = [(HKHealthChartFactory *)self _remoteGraphSeriesForDisplayType:typeCopy graphSeriesDataSource:v26 timeScope:3];
  seriesDataSourceContext = [v28 seriesDataSourceContext];
  v43 = v17;
  [(HKRemoteChartDataSource *)v27 setDataForTimeScope:4 seriesData:v17 dataSourceForMapping:v14 seriesDataSourceContext:seriesDataSourceContext];

  seriesDataSourceContext2 = [v29 seriesDataSourceContext];
  v32 = v19;
  [(HKRemoteChartDataSource *)v26 setDataForTimeScope:3 seriesData:v19 dataSourceForMapping:v45 seriesDataSourceContext:seriesDataSourceContext2];

  v33 = [HKInteractiveChartDisplayType alloc];
  v34 = [(HKHealthChartFactory *)self _remoteCustomFormatterForDisplayType:typeCopy];
  objectType = [typeCopy objectType];
  v41 = v14;
  code = [objectType code];
  v46[0] = &unk_1F4381F48;
  v46[1] = &unk_1F4381F60;
  v47[0] = v28;
  v47[1] = v29;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v38 = [(HKInteractiveChartDisplayType *)v33 initWithBaseDisplayType:typeCopy valueFormatter:v34 dataTypeCode:code seriesForTimeScopeMapping:v37];

  v39 = [[_HKRemoteDisplayTypeConfiguration alloc] initWithInitialTimeScope:v44 remoteDisplayType:v38];

  return v39;
}

- (id)_remoteGraphSeriesForDisplayType:(id)type graphSeriesDataSource:(id)source timeScope:(int64_t)scope
{
  typeCopy = type;
  sourceCopy = source;
  displayTypeIdentifier = [typeCopy displayTypeIdentifier];
  if (displayTypeIdentifier == 276)
  {
    v11 = [(HKHealthChartFactory *)self _sleepApneaGraphSeriesForDisplayType:typeCopy graphSeriesDataSource:sourceCopy timeScope:scope];
  }

  else if (displayTypeIdentifier == 275)
  {
    v11 = [(HKHealthChartFactory *)self _sleepingBreathingDisturbancesGraphSeriesForDisplayType:typeCopy graphSeriesDataSource:sourceCopy timeScope:scope];
  }

  else
  {
    if (displayTypeIdentifier == 63)
    {
      [(HKHealthChartFactory *)self _sleepRemoteGraphSeriesForDisplayType:typeCopy graphSeriesDataSource:sourceCopy timeScope:scope];
    }

    else
    {
      [(HKHealthChartFactory *)self _standardRemoteGraphSeriesForDisplayType:typeCopy graphSeriesDataSource:sourceCopy timeScope:scope];
    }
    v11 = ;
  }

  v12 = v11;

  return v12;
}

- (id)_standardRemoteGraphSeriesForDisplayType:(id)type graphSeriesDataSource:(id)source timeScope:(int64_t)scope
{
  sourceCopy = source;
  typeCopy = type;
  displayCategory = [typeCopy displayCategory];
  unitPreferenceController = [(HKHealthChartFactory *)self unitPreferenceController];
  chartDataCacheController = [(HKHealthChartFactory *)self chartDataCacheController];
  v13 = [typeCopy hk_standardSeriesForTimeScope:scope graphSeriesDataSource:sourceCopy displayCategory:displayCategory unitController:unitPreferenceController dataCacheController:chartDataCacheController];

  return v13;
}

- (id)_sleepRemoteGraphSeriesForDisplayType:(id)type graphSeriesDataSource:(id)source timeScope:(int64_t)scope
{
  sourceCopy = source;
  typeCopy = type;
  unitPreferenceController = [(HKHealthChartFactory *)self unitPreferenceController];
  v11 = [HKSleepUtilities buildSleepGraphSeriesForSleepSeriesType:0 sleepDisplayType:typeCopy unitController:unitPreferenceController numericAxisConfigurationOverrides:0 timeScope:scope];

  [v11 setDataSource:sourceCopy];

  return v11;
}

- (id)_sleepingBreathingDisturbancesGraphSeriesForDisplayType:(id)type graphSeriesDataSource:(id)source timeScope:(int64_t)scope
{
  typeCopy = type;
  v9 = [(HKHealthChartFactory *)self _standardRemoteGraphSeriesForDisplayType:typeCopy graphSeriesDataSource:source timeScope:scope];
  v10 = [[HKBreathingDisturbancesAxis alloc] initWithDisplayType:typeCopy];

  [v9 setYAxis:v10];

  return v9;
}

- (id)_sleepApneaGraphSeriesForDisplayType:(id)type graphSeriesDataSource:(id)source timeScope:(int64_t)scope
{
  typeCopy = type;
  v9 = [(HKHealthChartFactory *)self _standardRemoteGraphSeriesForDisplayType:typeCopy graphSeriesDataSource:source timeScope:scope];
  v10 = [[HKSleepApneaEventAxis alloc] initWithDisplayType:typeCopy];

  [v9 setYAxis:v10];

  return v9;
}

- (id)_remoteCustomFormatterForDisplayType:(id)type
{
  displayTypeIdentifier = [type displayTypeIdentifier];
  v5 = 0;
  if (displayTypeIdentifier <= 274)
  {
    if (displayTypeIdentifier == 63)
    {
      sleepChartFormatter = [(HKHealthChartFactory *)self sleepChartFormatter];
LABEL_11:
      v5 = sleepChartFormatter;
      goto LABEL_12;
    }

    if (displayTypeIdentifier != 124)
    {
      goto LABEL_12;
    }

    v6 = HKInteractiveChartCardioFitnessFormatter;
LABEL_10:
    sleepChartFormatter = objc_alloc_init(v6);
    goto LABEL_11;
  }

  if (displayTypeIdentifier == 275)
  {
    v6 = HKAppleSleepingBreathingDisturbancesInteractiveChartFormatter;
    goto LABEL_10;
  }

  if (displayTypeIdentifier == 276)
  {
    v7 = [HKSleepApneaEventInteractiveChartFormatter alloc];
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:@"SLEEP_APNEA_ALERTS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Nebula"];
    v5 = [(HKSleepApneaEventInteractiveChartFormatter *)v7 initWithLocalizedCategoryName:v9];
  }

LABEL_12:

  return v5;
}

- (id)_buildStandardRemoteChartViewControllerWithDisplayType:(id)type timeScopeRanges:(id)ranges initialTimeScope:(int64_t)scope firstWeekday:(int64_t)weekday displayDate:(id)date
{
  v33[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  rangesCopy = ranges;
  dateCopy = date;
  selectedTimeScopeController = [(HKHealthChartFactory *)self selectedTimeScopeController];
  [selectedTimeScopeController setSelectedTimeScope:scope];

  v26 = [typeCopy hk_interactiveChartOptions] | 0xA0000;
  v13 = [(HKHealthChartFactory *)self _remoteCalendarOverrideForDisplayType:typeCopy];
  v27 = [HKInteractiveChartViewController alloc];
  v29 = typeCopy;
  v32 = typeCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v33[0] = v14;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  healthStore = [(HKHealthChartFactory *)self healthStore];
  unitPreferenceController = [(HKHealthChartFactory *)self unitPreferenceController];
  dateCache = [(HKHealthChartFactory *)self dateCache];
  chartDataCacheController = [(HKHealthChartFactory *)self chartDataCacheController];
  selectedTimeScopeController2 = [(HKHealthChartFactory *)self selectedTimeScopeController];
  sampleTypeDateRangeController = [(HKHealthChartFactory *)self sampleTypeDateRangeController];
  if (dateCopy)
  {
    v21 = rangesCopy;
    v22 = [(HKInteractiveChartViewController *)v27 initWithStackedDisplayTypes:v30 primaryDisplayTypeStackIndex:0 stackedDisplayTypeHeights:0 healthStore:healthStore unitPreferenceController:unitPreferenceController dateCache:dateCache chartDataCacheController:chartDataCacheController selectedTimeScopeController:selectedTimeScopeController2 sampleTypeDateRangeController:sampleTypeDateRangeController initialXValue:dateCopy currentCalendarOverride:v13 options:v26 timeScopeRanges:rangesCopy];
  }

  else
  {
    v23 = [MEMORY[0x1E695DF00] now];
    v22 = [(HKInteractiveChartViewController *)v27 initWithStackedDisplayTypes:v30 primaryDisplayTypeStackIndex:0 stackedDisplayTypeHeights:0 healthStore:healthStore unitPreferenceController:unitPreferenceController dateCache:dateCache chartDataCacheController:chartDataCacheController selectedTimeScopeController:selectedTimeScopeController2 sampleTypeDateRangeController:sampleTypeDateRangeController initialXValue:v23 currentCalendarOverride:v13 options:v26 timeScopeRanges:rangesCopy];

    v21 = rangesCopy;
  }

  if (!v13)
  {
    [(HKInteractiveChartViewController *)v22 setAnnotationDataSourceFirstWeekday:weekday];
  }

  return v22;
}

- (id)_buildTrendRemoteOverlayChartViewControllerWithDisplayType:(id)type timeScopeRanges:(id)ranges initialTimeScope:(int64_t)scope chartSummaryTrendModel:(id)model firstWeekday:(int64_t)weekday displayDate:(id)date
{
  dateCopy = date;
  modelCopy = model;
  rangesCopy = ranges;
  typeCopy = type;
  _buildApplicationItems = [(HKHealthChartFactory *)self _buildApplicationItems];
  v19 = [(HKHealthChartFactory *)self _remoteCalendarOverrideForDisplayType:typeCopy];
  v20 = [[HKOverlayRoomFactorAndTrendViewController alloc] initWithBaseChartDisplayType:typeCopy trendModel:modelCopy factorDisplayTypes:0 displayDate:dateCopy applicationItems:_buildApplicationItems mode:1 timeScopeRanges:rangesCopy initialTimeScope:scope wrappedOverlay:0 overrideFirstWeekday:weekday overrideCalendar:v19 additionalChartOptions:0];

  return v20;
}

- (id)_remoteCalendarOverrideForDisplayType:(id)type
{
  typeCopy = type;
  displayTypeIdentifier = [typeCopy displayTypeIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    baseDisplayType = [typeCopy baseDisplayType];
    displayTypeIdentifier = [baseDisplayType displayTypeIdentifier];
  }

  if (displayTypeIdentifier == 248)
  {
    hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    [hk_gregorianCalendar setFirstWeekday:2];
  }

  else
  {
    hk_gregorianCalendar = 0;
  }

  return hk_gregorianCalendar;
}

- (id)_createSleepDisplayTypeForSeriesType:(int64_t)type
{
  displayTypeController = [(HKHealthChartFactory *)self displayTypeController];
  v6 = [displayTypeController displayTypeWithIdentifier:&unk_1F4381F90];

  sleepDataSourceProvider = [(HKHealthChartFactory *)self sleepDataSourceProvider];
  chartDataCacheController = [(HKHealthChartFactory *)self chartDataCacheController];
  healthStore = [(HKHealthChartFactory *)self healthStore];
  v10 = [HKSleepUtilities buildSleepChartCachesWithDisplayType:v6 dataSourceProvider:sleepDataSourceProvider cacheController:chartDataCacheController healthStore:healthStore];

  healthStore2 = [(HKHealthChartFactory *)self healthStore];
  unitPreferenceController = [(HKHealthChartFactory *)self unitPreferenceController];
  displayTypeController2 = [(HKHealthChartFactory *)self displayTypeController];
  chartDataCacheController2 = [(HKHealthChartFactory *)self chartDataCacheController];
  sleepChartFormatter = [(HKHealthChartFactory *)self sleepChartFormatter];
  LOBYTE(v19) = 0;
  v16 = [HKSleepUtilities sleepDisplayTypesWithHealthStore:healthStore2 sleepDisplayType:v6 unitController:unitPreferenceController displayTypeController:displayTypeController2 chartCacheController:chartDataCacheController2 sleepChartFormatter:sleepChartFormatter sleepSeriesType:type sleepChartCaches:v10 customSleepSeries:0 isStackedChart:v19];

  firstObject = [v16 firstObject];

  return firstObject;
}

- (id)createInteractiveChartForSimpleDisplayType:(id)type chartOptions:(unint64_t)options
{
  v17[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v7 = [HKInteractiveChartViewController alloc];
  v17[0] = typeCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

  healthStore = [(HKHealthChartFactory *)self healthStore];
  unitPreferenceController = [(HKHealthChartFactory *)self unitPreferenceController];
  dateCache = [(HKHealthChartFactory *)self dateCache];
  chartDataCacheController = [(HKHealthChartFactory *)self chartDataCacheController];
  selectedTimeScopeController = [(HKHealthChartFactory *)self selectedTimeScopeController];
  sampleTypeDateRangeController = [(HKHealthChartFactory *)self sampleTypeDateRangeController];
  v15 = [(HKInteractiveChartViewController *)v7 initWithDisplayTypes:v8 healthStore:healthStore unitPreferenceController:unitPreferenceController dateCache:dateCache chartDataCacheController:chartDataCacheController selectedTimeScopeController:selectedTimeScopeController sampleTypeDateRangeController:sampleTypeDateRangeController initialXValue:0 currentCalendarOverride:0 options:options];

  return v15;
}

- (id)activityChartForActivityMoveMode:(int64_t)mode displayDate:(id)date activityOptions:(unint64_t)options chartSharableModel:(id)model
{
  modelCopy = model;
  dateCopy = date;
  selectedTimeScopeController = [(HKHealthChartFactory *)self selectedTimeScopeController];
  [selectedTimeScopeController setSelectedTimeScope:6];

  v13 = *MEMORY[0x1E696B498];
  v14 = [(HKHealthChartFactory *)self _factorDisplayTypesForPrimaryTypeIdentifier:*MEMORY[0x1E696B498]];
  [(HKHealthChartFactory *)self _logFactorsForTypeIdentifier:v13 factorDisplayTypes:v14];
  v15 = [v14 count];
  if (modelCopy || !v15)
  {
    v33 = [HKInteractiveChartActivityController alloc];
    healthStore = [(HKHealthChartFactory *)self healthStore];
    unitPreferenceController = [(HKHealthChartFactory *)self unitPreferenceController];
    dateCache = [(HKHealthChartFactory *)self dateCache];
    chartDataCacheController = [(HKHealthChartFactory *)self chartDataCacheController];
    [(HKHealthChartFactory *)self selectedTimeScopeController];
    v25 = v24 = modelCopy;
    sampleTypeDateRangeController = [(HKHealthChartFactory *)self sampleTypeDateRangeController];
    wheelchairUseCharacteristicCache = [(HKHealthChartFactory *)self wheelchairUseCharacteristicCache];
    optionsCopy = options;
    v21 = healthStore;
    v22 = [(HKInteractiveChartActivityController *)v33 initWithHealthStore:healthStore unitPreferenceController:unitPreferenceController dateCache:dateCache chartDataCacheController:chartDataCacheController selectedTimeScopeController:v25 sampleTypeDateRangeController:sampleTypeDateRangeController wheelchairUseCharacteristicCache:wheelchairUseCharacteristicCache initialXValue:dateCopy activityMoveMode:mode activityOptions:optionsCopy chartSharableModel:v24];

    modelCopy = v24;
    dateCopy = dateCache;
  }

  else
  {
    displayTypeController = [(HKHealthChartFactory *)self displayTypeController];
    v17 = [MEMORY[0x1E696C2E0] _typeWithIdentifier:v13];
    v18 = [displayTypeController displayTypeForObjectType:v17];

    v19 = [HKOverlayRoomFactorAndTrendViewController alloc];
    unitPreferenceController = [(HKHealthChartFactory *)self _buildApplicationItems];
    optionsCopy2 = options;
    v21 = v18;
    v22 = [(HKOverlayRoomFactorAndTrendViewController *)v19 initWithBaseChartDisplayType:v18 trendModel:0 factorDisplayTypes:v14 displayDate:dateCopy applicationItems:unitPreferenceController mode:1 timeScopeRanges:0 initialTimeScope:8 wrappedOverlay:0 overrideFirstWeekday:-1 overrideCalendar:0 additionalChartOptions:0 activityMoveMode:mode activityOptions:optionsCopy2];
  }

  return v22;
}

- (id)staticAudiogramChartViewControllerWithAudiogramSample:(id)sample hideEnhancedUI:(BOOL)i
{
  iCopy = i;
  v6 = MEMORY[0x1E696C2E0];
  sampleCopy = sample;
  audiogramSampleType = [v6 audiogramSampleType];
  identifier = [audiogramSampleType identifier];

  v10 = [HKSingleAudiogramChartViewController alloc];
  _buildApplicationItems = [(HKHealthChartFactory *)self _buildApplicationItems];
  v12 = [(HKHealthChartFactory *)self _factorDisplayTypesForPrimaryTypeIdentifier:identifier];
  v13 = [(HKSingleAudiogramChartViewController *)v10 initWithApplicationItems:_buildApplicationItems staticAudiogram:sampleCopy factorDisplayTypes:v12 hideEnhancedUI:iCopy];

  return v13;
}

- (void)encodeActivityChartDataForActivityMoveMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  context = objc_autoreleasePoolPush();
  displayTypeController = [(HKHealthChartFactory *)self displayTypeController];
  v6 = [displayTypeController displayTypeWithIdentifier:&unk_1F4381FA8];

  v7 = [HKRemoteDateIntervals alloc];
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [(HKRemoteDateIntervals *)v7 initWithDisplayType:v6 fromEndDate:v8];

  hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
  v11 = [(HKRemoteDateIntervals *)v9 dateIntervalForTimeScope:4 withGregorianCalendar:hk_gregorianCalendarWithLocalTimeZone error:0];
  v12 = [(HKRemoteDateIntervals *)v9 dateIntervalForTimeScope:3 withGregorianCalendar:hk_gregorianCalendarWithLocalTimeZone error:0];
  healthStore = [(HKHealthChartFactory *)self healthStore];
  dateCache = [(HKHealthChartFactory *)self dateCache];
  displayTypeController2 = [(HKHealthChartFactory *)self displayTypeController];
  unitPreferenceController = [(HKHealthChartFactory *)self unitPreferenceController];
  [HKInteractiveChartActivityController encodeChartDataWithHealthStore:healthStore dateCache:dateCache displayTypeController:displayTypeController2 unitController:unitPreferenceController activityMoveMode:mode monthDateInterval:v11 sixMonthDateInterval:v12 completion:completionCopy];

  objc_autoreleasePoolPop(context);
}

- (void)updateChartSummaryTrendModel:(id)model viewController:(id)controller
{
  modelCopy = model;
  controllerCopy = controller;
  if ([controllerCopy conformsToProtocol:&unk_1F43B2A78])
  {
    getChartSummaryTrendModelToModify = [controllerCopy getChartSummaryTrendModelToModify];
    v8 = getChartSummaryTrendModelToModify;
    if (getChartSummaryTrendModelToModify)
    {
      [getChartSummaryTrendModelToModify updateChartSummaryTrendModel:modelCopy];
    }
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HKHealthChartFactory updateChartSummaryTrendModel:controllerCopy viewController:v8];
    }
  }
}

- (int64_t)_resolvedTimeScopeForTypeIdentifier:(id)identifier displayDateInterval:(id)interval
{
  identifierCopy = identifier;
  intervalCopy = interval;
  v9 = [(HKHealthChartFactory *)self _displayTypeForTypeIdentifier:identifierCopy];
  if (v9)
  {
    [intervalCopy duration];
    if (v10 >= 2.22507386e-308)
    {
      startDate = [intervalCopy startDate];
      endDate = [intervalCopy endDate];
      chartingRules2 = [HKValueRange valueRangeWithMinValue:startDate maxValue:endDate];

      preferredTimeScope = [HKGraphZoomLevelConfiguration timeScopeForDateRange:chartingRules2];
      if (([v9 hk_isSupportedTimeScope:preferredTimeScope] & 1) == 0)
      {
        chartingRules = [v9 chartingRules];
        preferredTimeScope = [chartingRules preferredTimeScope];
      }
    }

    else
    {
      chartingRules2 = [v9 chartingRules];
      preferredTimeScope = [chartingRules2 preferredTimeScope];
    }
  }

  else
  {
    chartingRules2 = [MEMORY[0x1E696AAA8] currentHandler];
    [chartingRules2 handleFailureInMethod:a2 object:self file:@"HKHealthChartFactory.m" lineNumber:1185 description:{@"Type %@ does not have a valid display type.", identifierCopy}];
    preferredTimeScope = 8;
  }

  return preferredTimeScope;
}

- (id)_resolvedDisplayDateForDisplayType:(id)type displayDate:(id)date timeScope:(int64_t)scope gregorianCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  behavior = [type behavior];
  preferredCalendarDayAlignment = [behavior preferredCalendarDayAlignment];

  if (preferredCalendarDayAlignment != 1 || (scope & 0xFFFFFFFFFFFFFFFELL) == 6 || (v13 = [dateCopy hk_dayIndexWithCalendar:calendarCopy], v14 = objc_msgSend(dateCopy, "hk_morningIndexWithCalendar:", calendarCopy), v13 == v14))
  {
    v15 = dateCopy;
  }

  else
  {
    v15 = [MEMORY[0x1E695DF00] hk_dateOnDayIndex:v14 atHour:6 calendar:calendarCopy];
  }

  v16 = v15;

  return v16;
}

- (id)_displayTypeForTypeIdentifier:(id)identifier
{
  v4 = [MEMORY[0x1E696C2E0] _typeWithIdentifier:identifier];
  if (v4)
  {
    displayTypeController = [(HKHealthChartFactory *)self displayTypeController];
    v6 = [displayTypeController displayTypeForObjectType:v4];
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
  healthStore = [(HKHealthChartFactory *)self healthStore];
  [(HKOverlayRoomApplicationItems *)v4 setHealthStore:healthStore];

  [(HKOverlayRoomApplicationItems *)v4 setTimeScopeController:v3];
  dateCache = [(HKHealthChartFactory *)self dateCache];
  [(HKOverlayRoomApplicationItems *)v4 setDateCache:dateCache];

  unitPreferenceController = [(HKHealthChartFactory *)self unitPreferenceController];
  [(HKOverlayRoomApplicationItems *)v4 setUnitController:unitPreferenceController];

  chartDataCacheController = [(HKHealthChartFactory *)self chartDataCacheController];
  [(HKOverlayRoomApplicationItems *)v4 setChartDataCacheController:chartDataCacheController];

  sampleTypeUpdateController = [(HKHealthChartFactory *)self sampleTypeUpdateController];
  [(HKOverlayRoomApplicationItems *)v4 setSampleTypeUpdateController:sampleTypeUpdateController];

  sampleTypeDateRangeController = [(HKHealthChartFactory *)self sampleTypeDateRangeController];
  [(HKOverlayRoomApplicationItems *)v4 setSampleDateRangeController:sampleTypeDateRangeController];

  displayTypeController = [(HKHealthChartFactory *)self displayTypeController];
  [(HKOverlayRoomApplicationItems *)v4 setDisplayTypeController:displayTypeController];

  return v4;
}

- (id)_buildApplicationItems
{
  v3 = objc_alloc_init(HKOverlayRoomApplicationItems);
  healthStore = [(HKHealthChartFactory *)self healthStore];
  [(HKOverlayRoomApplicationItems *)v3 setHealthStore:healthStore];

  selectedTimeScopeController = [(HKHealthChartFactory *)self selectedTimeScopeController];
  [(HKOverlayRoomApplicationItems *)v3 setTimeScopeController:selectedTimeScopeController];

  dateCache = [(HKHealthChartFactory *)self dateCache];
  [(HKOverlayRoomApplicationItems *)v3 setDateCache:dateCache];

  unitPreferenceController = [(HKHealthChartFactory *)self unitPreferenceController];
  [(HKOverlayRoomApplicationItems *)v3 setUnitController:unitPreferenceController];

  chartDataCacheController = [(HKHealthChartFactory *)self chartDataCacheController];
  [(HKOverlayRoomApplicationItems *)v3 setChartDataCacheController:chartDataCacheController];

  sampleTypeUpdateController = [(HKHealthChartFactory *)self sampleTypeUpdateController];
  [(HKOverlayRoomApplicationItems *)v3 setSampleTypeUpdateController:sampleTypeUpdateController];

  sampleTypeDateRangeController = [(HKHealthChartFactory *)self sampleTypeDateRangeController];
  [(HKOverlayRoomApplicationItems *)v3 setSampleDateRangeController:sampleTypeDateRangeController];

  displayTypeController = [(HKHealthChartFactory *)self displayTypeController];
  [(HKOverlayRoomApplicationItems *)v3 setDisplayTypeController:displayTypeController];

  return v3;
}

- (id)_factorDisplayTypesForPrimaryTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  displayTypeController = [(HKHealthChartFactory *)self displayTypeController];
  v6 = [MEMORY[0x1E696C2E0] _typeWithIdentifier:identifierCopy];

  v7 = [displayTypeController displayTypeForObjectType:v6];

  v8 = [(HKHealthChartFactory *)self _factorDisplayTypesForPrimaryDisplayType:v7];

  return v8;
}

- (id)_factorDisplayTypesForPrimaryDisplayType:(id)type
{
  v18 = *MEMORY[0x1E69E9840];
  typeCopy = type;
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
        if ([(HKHealthChartFactory *)self _factorDisplayType:v11 availableForPrimaryDisplayType:typeCopy]&& [(HKHealthChartFactory *)self _factorDisplayTypeHasData:v11])
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

- (BOOL)_factorDisplayType:(id)type availableForPrimaryDisplayType:(id)displayType
{
  displayTypeCopy = displayType;
  typeCopy = type;
  hk_chartExcludedFactorDisplayTypes = [displayTypeCopy hk_chartExcludedFactorDisplayTypes];
  v8 = [hk_chartExcludedFactorDisplayTypes containsObject:typeCopy];
  v9 = [typeCopy isEqual:displayTypeCopy];

  return ((v8 | v9) & 1) == 0;
}

- (BOOL)_factorDisplayTypeHasData:(id)data
{
  sampleType = [data sampleType];
  sampleTypeDateRangeController = [(HKHealthChartFactory *)self sampleTypeDateRangeController];
  v6 = [sampleTypeDateRangeController dateRangeForSampleType:sampleType];

  minValue = [v6 minValue];
  if (minValue)
  {
    v8 = 1;
  }

  else
  {
    maxValue = [v6 maxValue];
    v8 = maxValue != 0;
  }

  return v8;
}

- (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1
{
  v43[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dateCopy = date;
  activityCopy = activity;
  modelCopy = model;
  typesCopy = types;
  identifierCopy = identifier;
  displayTypeController = [(HKHealthChartFactory *)self displayTypeController];
  v22 = [MEMORY[0x1E696C2E0] _typeWithIdentifier:identifierCopy];

  v23 = [displayTypeController displayTypeForObjectType:v22];

  if (v23)
  {
    v42 = itemsCopy;
    v24 = typesCopy;
    hk_interactiveChartOptions = [v23 hk_interactiveChartOptions];
    if (dateCopy)
    {
      hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
      selectedTimeScopeController = [(HKHealthChartFactory *)self selectedTimeScopeController];
      -[HKHealthChartFactory _resolvedDisplayDateForDisplayType:displayDate:timeScope:gregorianCalendar:](self, "_resolvedDisplayDateForDisplayType:displayDate:timeScope:gregorianCalendar:", v23, dateCopy, [selectedTimeScopeController selectedTimeScope], hk_gregorianCalendarWithLocalTimeZone);
      v29 = v28 = activityCopy;

      dateCopy = v29;
      activityCopy = v28;
    }

    if (activityCopy)
    {

      dateCopy = 0;
    }

    typesCopy = v24;
    v30 = hk_interactiveChartOptions | options;
    itemsCopy = v42;
    if (modelCopy || [typesCopy count])
    {
      v31 = [[HKOverlayRoomFactorAndTrendViewController alloc] initWithBaseChartDisplayType:v23 trendModel:modelCopy factorDisplayTypes:typesCopy displayDate:dateCopy applicationItems:v42 mode:1 timeScopeRanges:0 initialTimeScope:8 wrappedOverlay:0 overrideFirstWeekday:-1 overrideCalendar:0 additionalChartOptions:v30];
    }

    else
    {
      v38 = [HKInteractiveChartViewController alloc];
      v43[0] = v23;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
      healthStore = [(HKHealthChartFactory *)self healthStore];
      unitPreferenceController = [(HKHealthChartFactory *)self unitPreferenceController];
      [(HKHealthChartFactory *)self dateCache];
      v33 = v39 = activityCopy;
      chartDataCacheController = [(HKHealthChartFactory *)self chartDataCacheController];
      selectedTimeScopeController2 = [(HKHealthChartFactory *)self selectedTimeScopeController];
      sampleTypeDateRangeController = [(HKHealthChartFactory *)self sampleTypeDateRangeController];
      v31 = [(HKInteractiveChartViewController *)v38 initWithDisplayTypes:v41 healthStore:healthStore unitPreferenceController:unitPreferenceController dateCache:v33 chartDataCacheController:chartDataCacheController selectedTimeScopeController:selectedTimeScopeController2 sampleTypeDateRangeController:sampleTypeDateRangeController initialXValue:dateCopy currentCalendarOverride:0 options:v30];

      itemsCopy = v42;
      activityCopy = v39;

      [(HKOverlayRoomViewController *)v31 setRestorationUserActivity:v39];
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)chartFactoryViewControllerProviderForType:(id)type standardProvider:(id)provider
{
  providerCopy = provider;
  v6 = [MEMORY[0x1E696C2E0] _typeWithIdentifier:type];
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
        v9 = providerCopy;
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

- (id)interactiveChartFromMeasureIdentifier:(id)identifier displayDateInterval:(id)interval
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
  if (interval)
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

  selfCopy = self;
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