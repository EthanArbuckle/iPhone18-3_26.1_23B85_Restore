@interface HKOverlayRoomAFibBurdenViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
- (BOOL)supportsShowAllFilters;
- (HKOverlayRoomAFibBurdenViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode sleepDataSourceProvider:(id)provider sleepChartFormatter:(id)formatter preferredOverlay:(int64_t)overlay addDataViewControllerProvider:(id)self0;
- (id)_aFibBurdenSeriesForTimeScope:(int64_t)scope displayType:(id)type mode:(int64_t)mode applicationItems:(id)items;
- (id)_displayTypeForOverlayContextItem:(unint64_t)item;
- (id)_generateAFibBurdenDisplayTypeWithApplicationItems:(id)items mode:(int64_t)mode;
- (id)_generateOverlayContextsWithPrimaryDisplayType:(id)type sleepDataSourceProvider:(id)provider sleepChartFormatter:(id)formatter overlayChartController:(id)controller applicationItems:(id)items;
- (id)_infographicViewControllerForDisplayType:(id)type secondaryDisplayType:(id)displayType addDataViewControllerProvider:(id)provider healthStore:(id)store;
- (id)_lifeFactorViewControllerForKey:(id)key logButtonAction:(id)action;
- (id)_overlayContextForOverlayContextItem:(unint64_t)item sleepDataSourceProvider:(id)provider sleepChartFormatter:(id)formatter overlayChartController:(id)controller applicationItems:(id)items;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)showAllFiltersButtonTitle;
- (id)stringForValueRange:(id)range timeScope:(int64_t)scope;
- (void)contextView:(id)view didTapOnInfoButtonAtIndex:(int64_t)index;
- (void)didChangeFromContextItem:(id)item toContextItem:(id)contextItem;
- (void)processSelectedRangeData:(id)data displayType:(id)type;
- (void)viewDidLoad;
@end

@implementation HKOverlayRoomAFibBurdenViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1
{
  factoryCopy = factory;
  itemsCopy = items;
  dateCopy = date;
  modelCopy = model;
  typesCopy = types;
  activityCopy = activity;
  sleepDataSourceProvider = [factoryCopy sleepDataSourceProvider];

  if (!sleepDataSourceProvider)
  {
    +[HKOverlayRoomAFibBurdenViewController createInteractiveChartViewControllerForTypeIdentifier:chartFactory:applicationItems:displayDate:preferredOverlay:restorationUserActivity:trendModel:factorDisplayTypes:additionalChartOptions:];
  }

  sleepChartFormatter = [factoryCopy sleepChartFormatter];

  if (!sleepChartFormatter)
  {
    +[HKOverlayRoomAFibBurdenViewController createInteractiveChartViewControllerForTypeIdentifier:chartFactory:applicationItems:displayDate:preferredOverlay:restorationUserActivity:trendModel:factorDisplayTypes:additionalChartOptions:];
  }

  v21 = [HKOverlayRoomAFibBurdenViewController alloc];
  sleepDataSourceProvider2 = [factoryCopy sleepDataSourceProvider];
  sleepChartFormatter2 = [factoryCopy sleepChartFormatter];
  addDataViewControllerProvider = [factoryCopy addDataViewControllerProvider];
  v25 = v21;
  v26 = dateCopy;
  v27 = [(HKOverlayRoomAFibBurdenViewController *)v25 initWithDisplayDate:dateCopy applicationItems:itemsCopy factorDisplayTypes:typesCopy mode:0 sleepDataSourceProvider:sleepDataSourceProvider2 sleepChartFormatter:sleepChartFormatter2 preferredOverlay:overlay addDataViewControllerProvider:addDataViewControllerProvider];

  [(HKOverlayRoomViewController *)v27 setRestorationUserActivity:activityCopy];
  [(HKOverlayRoomViewController *)v27 setAdditionalChartOptions:options];
  if (modelCopy)
  {
    v28 = [(HKOverlayRoomAFibBurdenViewController *)v27 primaryDisplayTypeWithApplicationItems:itemsCopy];
    v29 = [[HKOverlayRoomFactorAndTrendViewController alloc] initWithBaseChartDisplayType:v28 trendModel:modelCopy factorDisplayTypes:typesCopy displayDate:v26 applicationItems:itemsCopy mode:1 timeScopeRanges:0 initialTimeScope:8 wrappedOverlay:v27 overrideFirstWeekday:-1 overrideCalendar:0 additionalChartOptions:options];
  }

  else
  {
    v29 = v27;
  }

  return v29;
}

- (HKOverlayRoomAFibBurdenViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode sleepDataSourceProvider:(id)provider sleepChartFormatter:(id)formatter preferredOverlay:(int64_t)overlay addDataViewControllerProvider:(id)self0
{
  itemsCopy = items;
  providerCopy = provider;
  formatterCopy = formatter;
  controllerProviderCopy = controllerProvider;
  v37.receiver = self;
  v37.super_class = HKOverlayRoomAFibBurdenViewController;
  v19 = [(HKOverlayRoomViewController *)&v37 initWithDisplayDate:date applicationItems:itemsCopy factorDisplayTypes:types mode:mode];
  v20 = v19;
  if (v19)
  {
    preferredOverlayIndex = v19->_preferredOverlayIndex;
    v19->_preferredOverlayIndex = 0;

    v20->_preferredOverlay = overlay;
    objc_storeStrong(&v20->_sleepDataSourceProvider, provider);
    objc_storeStrong(&v20->_sleepChartFormatter, formatter);
    hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    [(NSCalendar *)hk_gregorianCalendar setFirstWeekday:2];
    currentCalendar = v20->_currentCalendar;
    v20->_currentCalendar = hk_gregorianCalendar;
    v24 = hk_gregorianCalendar;

    [(HKOverlayRoomViewController *)v20 setShouldSelectInitialOverlay:mode == 3];
    v25 = [(HKOverlayRoomAFibBurdenViewController *)v20 _generateAFibBurdenDisplayTypeWithApplicationItems:itemsCopy mode:mode];
    afibBurdenDisplayType = v20->_afibBurdenDisplayType;
    v20->_afibBurdenDisplayType = v25;
    v27 = v25;

    objc_storeStrong(&v20->_addDataViewControllerProvider, controllerProvider);
    v28 = HKCreateSerialDispatchQueue();
    analyticsSubmissionQueue = v20->_analyticsSubmissionQueue;
    v20->_analyticsSubmissionQueue = v28;

    v30 = objc_alloc(MEMORY[0x1E696BF00]);
    v31 = HKLogAFibBurden();
    healthStore = [itemsCopy healthStore];
    v33 = [v30 initWithLoggingCategory:v31 healthDataSource:healthStore];
    analyticsEventSubmissionManager = v20->_analyticsEventSubmissionManager;
    v20->_analyticsEventSubmissionManager = v33;
  }

  return v20;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HKOverlayRoomAFibBurdenViewController;
  [(HKOverlayRoomViewController *)&v2 viewDidLoad];
}

- (id)_generateAFibBurdenDisplayTypeWithApplicationItems:(id)items mode:(int64_t)mode
{
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696C370];
  itemsCopy = items;
  v8 = [v6 _quantityTypeWithCode:248];
  displayTypeController = [itemsCopy displayTypeController];
  v10 = [displayTypeController displayTypeForObjectType:v8];

  v11 = objc_alloc_init(HKInteractiveChartAFibBurdenFormatter);
  v12 = [(HKOverlayRoomAFibBurdenViewController *)self _aFibBurdenSeriesForTimeScope:4 displayType:v10 mode:mode applicationItems:itemsCopy];
  v13 = [(HKOverlayRoomAFibBurdenViewController *)self _aFibBurdenSeriesForTimeScope:3 displayType:v10 mode:mode applicationItems:itemsCopy];

  v17[0] = &unk_1F4382050;
  v17[1] = &unk_1F4382068;
  v18[0] = v12;
  v18[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15 = [[HKInteractiveChartDisplayType alloc] initWithBaseDisplayType:v10 valueFormatter:v11 dataTypeCode:248 seriesForTimeScopeMapping:v14];

  return v15;
}

- (id)_aFibBurdenSeriesForTimeScope:(int64_t)scope displayType:(id)type mode:(int64_t)mode applicationItems:(id)items
{
  v40[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if (mode == 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 5;
  }

  itemsCopy = items;
  v13 = objc_alloc_init(HKNumericAxisConfiguration);
  [(HKAxisConfiguration *)v13 setMinLabels:v11];
  [(HKAxisConfiguration *)v13 setMaxLabels:v11];
  if ([(HKOverlayRoomViewController *)self controllerMode]== 3)
  {
    [(HKNumericAxisConfiguration *)v13 setTopVerticalLabelPadding:4.0];
    [(HKNumericAxisConfiguration *)v13 setBottomVerticalLabelPadding:2.0];
  }

  displayCategory = [typeCopy displayCategory];
  unitController = [itemsCopy unitController];
  chartDataCacheController = [itemsCopy chartDataCacheController];

  v17 = [typeCopy hk_standardSeriesForTimeScope:scope displayCategory:displayCategory unitController:unitController dataCacheController:chartDataCacheController numericAxisConfigurationOverrides:v13];

  percentUnit = [MEMORY[0x1E696C510] percentUnit];
  v19 = 50.0;
  if (mode != 3)
  {
    v19 = 100.0;
  }

  v20 = [MEMORY[0x1E696C348] quantityWithUnit:percentUnit doubleValue:v19];
  v21 = [MEMORY[0x1E696C348] quantityWithUnit:percentUnit doubleValue:0.0];
  v22 = [MEMORY[0x1E696C348] quantityWithUnit:percentUnit doubleValue:100.0];
  v23 = [HKValueRange valueRangeWithMinValue:v21 maxValue:v22];
  v24 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v20 minimumValue:v21 maximumValue:v22 axisRangeOverrides:0];
  v39 = v23;
  [v24 setNoDataAxisBounds:v23];
  [v24 setUnit:percentUnit];
  [v17 setAxisScalingRule:v24];
  yAxis = [v17 yAxis];
  if (!yAxis)
  {
    v36 = v20;
    v38 = v17;
    mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
    showSensitiveLogItems = [mEMORY[0x1E696C608] showSensitiveLogItems];

    if (showSensitiveLogItems)
    {
      _HKInitializeLogging();
      v29 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v29 = os_log_create("com.apple.Health.AFibBurden", "default");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
LABEL_15:
        [HKOverlayRoomAFibBurdenViewController _aFibBurdenSeriesForTimeScope:v29 displayType:? mode:? applicationItems:?];
      }
    }

    v20 = v36;
    v17 = v38;
    goto LABEL_17;
  }

  if ([(HKOverlayRoomViewController *)self controllerMode]!= 3)
  {
    goto LABEL_18;
  }

  [typeCopy localization];
  v26 = v35 = v20;
  [v26 shortenedDisplayName];
  v27 = v34 = typeCopy;
  [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  v28 = v37 = v17;
  v29 = [HKLegendEntry legendEntryWithTitle:v27 labelColor:v28];

  typeCopy = v34;
  v20 = v35;
  v40[0] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  [v37 setTitleLegendEntries:v30];

  v17 = v37;
LABEL_17:

LABEL_18:

  return v17;
}

- (id)_overlayContextForOverlayContextItem:(unint64_t)item sleepDataSourceProvider:(id)provider sleepChartFormatter:(id)formatter overlayChartController:(id)controller applicationItems:(id)items
{
  formatterCopy = formatter;
  controllerCopy = controller;
  itemsCopy = items;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __162__HKOverlayRoomAFibBurdenViewController__overlayContextForOverlayContextItem_sleepDataSourceProvider_sleepChartFormatter_overlayChartController_applicationItems___block_invoke;
  aBlock[3] = &unk_1E81B5948;
  aBlock[4] = self;
  v15 = controllerCopy;
  v33 = v15;
  v16 = itemsCopy;
  v34 = v16;
  v17 = _Block_copy(aBlock);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __162__HKOverlayRoomAFibBurdenViewController__overlayContextForOverlayContextItem_sleepDataSourceProvider_sleepChartFormatter_overlayChartController_applicationItems___block_invoke_2;
  v27[3] = &unk_1E81B5970;
  v18 = v16;
  v28 = v18;
  v19 = v15;
  v29 = v19;
  v20 = formatterCopy;
  v30 = v20;
  selfCopy = self;
  v21 = _Block_copy(v27);
  v22 = v21;
  if (item > 1)
  {
    switch(item)
    {
      case 2uLL:
        v23 = MEMORY[0x1E696C3D0];
        v24 = 75;
        break;
      case 3uLL:
        v23 = MEMORY[0x1E696C3D0];
        v24 = 99;
        break;
      case 4uLL:
        v23 = MEMORY[0x1E696C3D0];
        v24 = 3;
        break;
      default:
        goto LABEL_12;
    }

LABEL_11:
    v25 = [v23 dataTypeWithCode:v24];
    v7 = v17[2](v17, v25);

    goto LABEL_12;
  }

  if (item)
  {
    if (item != 1)
    {
      goto LABEL_12;
    }

    v23 = MEMORY[0x1E696C3D0];
    v24 = 251;
    goto LABEL_11;
  }

  v7 = (*(v21 + 2))(v21);
LABEL_12:

  return v7;
}

HKOverlayRoomStackedContext *__162__HKOverlayRoomAFibBurdenViewController__overlayContextForOverlayContextItem_sleepDataSourceProvider_sleepChartFormatter_overlayChartController_applicationItems___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  LOBYTE(v6) = 0;
  v4 = [[HKOverlayRoomStackedContext alloc] initWithDisplayType:*(a1[4] + 1352) overlayDisplayType:0 stackedSampleType:v3 overlayChartController:a1[5] currentCalendarOverride:*(a1[4] + 1400) applicationItems:a1[6] isInfoButtonHidden:v6];

  return v4;
}

HKOverlayRoomSleepDurationStackedContext *__162__HKOverlayRoomAFibBurdenViewController__overlayContextForOverlayContextItem_sleepDataSourceProvider_sleepChartFormatter_overlayChartController_applicationItems___block_invoke_2(void *a1)
{
  LOBYTE(v3) = 0;
  v1 = [[HKOverlayRoomSleepDurationStackedContext alloc] initWithApplicationItems:a1[4] overlayChartController:a1[5] sleepChartFormatter:a1[6] primaryDisplayType:*(a1[7] + 1352) uniqueIdentifier:@"AFibBurden" firstWeekdayOverride:&unk_1F43820F8 currentCalendarOverride:*(a1[7] + 1400) isInfoButtonHidden:v3];

  return v1;
}

- (id)_displayTypeForOverlayContextItem:(unint64_t)item
{
  if (item <= 4)
  {
    v4 = qword_1E81B5A30[item];
    applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
    healthStore = [applicationItems healthStore];
    v7 = [HKDisplayTypeController sharedInstanceForHealthStore:healthStore];
    v3 = [v7 displayTypeWithIdentifier:v4];
  }

  return v3;
}

- (id)_generateOverlayContextsWithPrimaryDisplayType:(id)type sleepDataSourceProvider:(id)provider sleepChartFormatter:(id)formatter overlayChartController:(id)controller applicationItems:(id)items
{
  providerCopy = provider;
  formatterCopy = formatter;
  controllerCopy = controller;
  itemsCopy = items;
  _contextItemOrder = [(HKOverlayRoomAFibBurdenViewController *)self _contextItemOrder];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __172__HKOverlayRoomAFibBurdenViewController__generateOverlayContextsWithPrimaryDisplayType_sleepDataSourceProvider_sleepChartFormatter_overlayChartController_applicationItems___block_invoke;
  v22[3] = &unk_1E81B5998;
  v22[4] = self;
  v23 = providerCopy;
  v24 = formatterCopy;
  v25 = controllerCopy;
  v26 = itemsCopy;
  v16 = itemsCopy;
  v17 = controllerCopy;
  v18 = formatterCopy;
  v19 = providerCopy;
  v20 = [_contextItemOrder hk_map:v22];

  return v20;
}

uint64_t __172__HKOverlayRoomAFibBurdenViewController__generateOverlayContextsWithPrimaryDisplayType_sleepDataSourceProvider_sleepChartFormatter_overlayChartController_applicationItems___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = [a2 intValue];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];

  return [v3 _overlayContextForOverlayContextItem:v4 sleepDataSourceProvider:v5 sleepChartFormatter:v6 overlayChartController:v7 applicationItems:v8];
}

- (id)_lifeFactorViewControllerForKey:(id)key logButtonAction:(id)action
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  actionCopy = action;
  keyCopy = key;
  v23 = [v5 stringWithFormat:@"%@%@", keyCopy, @"_AND_AFIB_TITLE"];
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v21 = [v8 localizedStringForKey:v23 value:&stru_1F42FFBE0 table:?];

  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", keyCopy, @"_AND_AFIB_BODY"];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:v22 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", keyCopy, @"_AND_AFIB_LOGGING"];

  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:v11 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];

  v14 = [[HKInfographicTitleDetailOptionalButtonItem alloc] initWithTitle:v21 detail:v10 buttonTextString:v13 buttonAction:actionCopy];
  v15 = [HKInfographicViewController alloc];
  v24[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v17 = [(HKInfographicViewController *)v15 initWithItems:v16];

  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v19 = [v18 localizedStringForKey:@"LIFE_FACTOR" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];
  [(HKInfographicViewController *)v17 setTitle:v19];

  return v17;
}

- (id)_infographicViewControllerForDisplayType:(id)type secondaryDisplayType:(id)displayType addDataViewControllerProvider:(id)provider healthStore:(id)store
{
  typeCopy = type;
  displayTypeCopy = displayType;
  providerCopy = provider;
  storeCopy = store;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  v40 = 0;
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __145__HKOverlayRoomAFibBurdenViewController__infographicViewControllerForDisplayType_secondaryDisplayType_addDataViewControllerProvider_healthStore___block_invoke;
  v30 = &unk_1E81B59E8;
  v14 = storeCopy;
  v31 = v14;
  v15 = displayTypeCopy;
  v32 = v15;
  v16 = providerCopy;
  v33 = v16;
  v34 = &v35;
  v17 = _Block_copy(&v27);
  if ([typeCopy displayTypeIdentifier] == 248)
  {
    if ([v15 displayTypeIdentifier] == 63)
    {
      v18 = [(HKOverlayRoomAFibBurdenViewController *)self _lifeFactorViewControllerForKey:@"SLEEP" logButtonAction:v17];
    }

    else
    {
      v18 = 0;
    }

    if ([v15 displayTypeIdentifier] == 251)
    {
      v19 = [(HKOverlayRoomAFibBurdenViewController *)self _lifeFactorViewControllerForKey:@"ALCOHOL" logButtonAction:v17];

      v18 = v19;
    }

    if ([v15 displayTypeIdentifier] == 75)
    {
      v20 = [(HKOverlayRoomAFibBurdenViewController *)self _lifeFactorViewControllerForKey:@"EXERCISE" logButtonAction:0];

      v18 = v20;
    }

    if ([v15 displayTypeIdentifier] == 99)
    {
      v21 = [(HKOverlayRoomAFibBurdenViewController *)self _lifeFactorViewControllerForKey:@"MINDFUL_SESSION" logButtonAction:v17];

      v18 = v21;
    }

    if ([v15 displayTypeIdentifier] == 3)
    {
      v22 = [(HKOverlayRoomAFibBurdenViewController *)self _lifeFactorViewControllerForKey:@"BODY_MASS" logButtonAction:v17];

      v18 = v22;
    }

    if (v18)
    {
      v23 = [[HKModalNavigationController alloc] initWithRootViewController:v18];
      v24 = v36[5];
      v36[5] = v23;

      v25 = v36[5];
      goto LABEL_17;
    }
  }

  else
  {
    v18 = 0;
  }

  v25 = 0;
LABEL_17:

  _Block_object_dispose(&v35, 8);

  return v25;
}

void __145__HKOverlayRoomAFibBurdenViewController__infographicViewControllerForDisplayType_secondaryDisplayType_addDataViewControllerProvider_healthStore___block_invoke(uint64_t a1)
{
  v2 = HKLogAFibBurden();
  v3 = [objc_alloc(MEMORY[0x1E696BF00]) initWithLoggingCategory:v2 healthDataSource:*(a1 + 32)];
  v4 = [HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent alloc];
  v5 = [*(a1 + 40) sampleType];
  v6 = [(HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent *)v4 initWithSampleType:v5 context:0];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __145__HKOverlayRoomAFibBurdenViewController__infographicViewControllerForDisplayType_secondaryDisplayType_addDataViewControllerProvider_healthStore___block_invoke_2;
  v11[3] = &unk_1E81B59C0;
  v12 = v2;
  v7 = v2;
  [v3 submitEvent:v6 completion:v11];
  v8 = objc_alloc(MEMORY[0x1E69DCCD8]);
  v9 = [*(a1 + 48) addDataViewControllerForDisplayType:*(a1 + 40)];
  v10 = [v8 initWithRootViewController:v9];

  [*(*(*(a1 + 56) + 8) + 40) hk_presentModalCardViewController:v10 fullScreen:0 animated:1 completion:0];
}

void __145__HKOverlayRoomAFibBurdenViewController__infographicViewControllerForDisplayType_secondaryDisplayType_addDataViewControllerProvider_healthStore___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __145__HKOverlayRoomAFibBurdenViewController__infographicViewControllerForDisplayType_secondaryDisplayType_addDataViewControllerProvider_healthStore___block_invoke_2_cold_1(v4, v5);
    }
  }
}

- (id)controllerTitleWithApplicationItems:(id)items
{
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"ATRIAL_FIBRILLATION_BURDEN" value:&stru_1F42FFBE0 table:@"Localizable-AFibBurden"];

  return v4;
}

- (id)showAllFiltersButtonTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"SHOW_LIFE_FACTORS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];

  return v3;
}

- (BOOL)supportsShowAllFilters
{
  if (![(HKOverlayRoomViewController *)self controllerMode])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = HKOverlayRoomAFibBurdenViewController;
  return [(HKOverlayRoomViewController *)&v4 supportsShowAllFilters];
}

- (void)didChangeFromContextItem:(id)item toContextItem:(id)contextItem
{
  itemCopy = item;
  contextItemCopy = contextItem;
  if (itemCopy | contextItemCopy)
  {
    analyticsIdentifier = [itemCopy analyticsIdentifier];
    analyticsIdentifier2 = [contextItemCopy analyticsIdentifier];
    v10 = [analyticsIdentifier isEqualToString:analyticsIdentifier2];

    if ((v10 & 1) == 0)
    {
      analyticsSubmissionQueue = self->_analyticsSubmissionQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__HKOverlayRoomAFibBurdenViewController_didChangeFromContextItem_toContextItem___block_invoke;
      block[3] = &unk_1E81B5A10;
      v13 = itemCopy;
      v14 = contextItemCopy;
      selfCopy = self;
      dispatch_async(analyticsSubmissionQueue, block);
    }
  }
}

void __80__HKOverlayRoomAFibBurdenViewController_didChangeFromContextItem_toContextItem___block_invoke(void *a1)
{
  v4 = [[HKChartOverlaySelectedAnalyticsEventConfiguration alloc] initWithEventName:@"com.apple.health.burden.chart.overlay.selected" previousContextItemPropertyName:@"previousLifeFactor" currentContextItemPropertyName:@"currentLifeFactor"];
  [(HKChartOverlaySelectedAnalyticsEventConfiguration *)v4 setFeatureIdentifier:*MEMORY[0x1E696B878]];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*MEMORY[0x1E696C808]];
  [(HKChartOverlaySelectedAnalyticsEventConfiguration *)v4 setMinimumAge:v2];

  v3 = [[HKChartOverlaySelectedAnalyticsEvent alloc] initWithConfiguration:v4 previousItem:a1[4] currentItem:a1[5]];
  [*(a1[6] + 1416) submitEvent:v3 error:0];
}

- (id)createChartOverlayViewController
{
  baseDisplayType = [(HKInteractiveChartDisplayType *)self->_afibBurdenDisplayType baseDisplayType];
  hk_interactiveChartOptions = [baseDisplayType hk_interactiveChartOptions];

  if ([(HKOverlayRoomViewController *)self controllerMode]== 3)
  {
    v5 = hk_interactiveChartOptions | 0x2020;
  }

  else
  {
    v5 = hk_interactiveChartOptions;
  }

  v20 = v5 | [(HKOverlayRoomViewController *)self additionalChartOptions];
  v19 = [HKInteractiveChartOverlayViewController alloc];
  applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
  healthStore = [applicationItems healthStore];
  primaryDisplayType = [(HKOverlayRoomViewController *)self primaryDisplayType];
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
  v14 = dateCache;
  v15 = [(HKInteractiveChartOverlayViewController *)v19 initWithHealthStore:healthStore primaryDisplayType:primaryDisplayType unitPreferenceController:unitController dateCache:dateCache chartDataCacheController:chartDataCacheController selectedTimeScopeController:timeScopeController sampleTypeDateRangeController:sampleDateRangeController initialXValue:displayDate currentCalendarOverride:self->_currentCalendar options:v20];

  [(HKInteractiveChartViewController *)v15 setCurrentValueViewDataSourceDelegate:self];

  return v15;
}

- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  v29[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  itemsCopy = items;
  afibBurdenDisplayType = [(HKOverlayRoomAFibBurdenViewController *)self afibBurdenDisplayType];
  sleepDataSourceProvider = [(HKOverlayRoomAFibBurdenViewController *)self sleepDataSourceProvider];
  sleepChartFormatter = [(HKOverlayRoomAFibBurdenViewController *)self sleepChartFormatter];
  v13 = [(HKOverlayRoomAFibBurdenViewController *)self _generateOverlayContextsWithPrimaryDisplayType:afibBurdenDisplayType sleepDataSourceProvider:sleepDataSourceProvider sleepChartFormatter:sleepChartFormatter overlayChartController:controllerCopy applicationItems:itemsCopy];

  v14 = [(HKOverlayRoomViewController *)self buildFactorContextsAllowingDeselection:0];
  if (v14)
  {
    v15 = [(HKOverlayRoomViewController *)self combineFactors:v14 standardFactors:v13];

    v13 = v15;
  }

  v16 = [HKOverlayContextSection alloc];
  v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v18 = [v17 localizedStringForKey:@"LIFE_FACTORS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];
  v19 = [(HKOverlayContextSection *)v16 initWithSectionTitle:v18 overlayContextItems:v13];

  if (mode == 3)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
    preferredOverlayIndex = self->_preferredOverlayIndex;
    self->_preferredOverlayIndex = v20;

    v22 = [HKOverlayContextSectionContainer alloc];
    v28 = v19;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    v24 = [(HKOverlayContextSectionContainer *)v22 initWithContainerTitle:0 overlayContextSections:v23];
    v29[0] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  }

  else
  {
    v26 = self->_preferredOverlayIndex;
    self->_preferredOverlayIndex = 0;

    v25 = MEMORY[0x1E695E0F0];
  }

  return v25;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  dateCopy = date;
  itemsCopy = items;
  v10 = itemsCopy;
  if (mode == 3)
  {
    timeScopeController = [itemsCopy timeScopeController];
    [timeScopeController setSelectedTimeScope:3];
  }

  v12 = [HKOverlayRoomAFibBurdenViewController alloc];
  factorDisplayTypes = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v14 = [(HKOverlayRoomAFibBurdenViewController *)v12 initWithDisplayDate:dateCopy applicationItems:v10 factorDisplayTypes:factorDisplayTypes mode:mode sleepDataSourceProvider:self->_sleepDataSourceProvider sleepChartFormatter:self->_sleepChartFormatter preferredOverlay:self->_preferredOverlay addDataViewControllerProvider:self->_addDataViewControllerProvider];

  [(HKOverlayRoomViewController *)v14 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:mode]];

  return v14;
}

- (void)contextView:(id)view didTapOnInfoButtonAtIndex:(int64_t)index
{
  applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
  healthStore = [applicationItems healthStore];
  v8 = [HKDisplayTypeController sharedInstanceForHealthStore:healthStore];
  v29 = [v8 displayTypeWithIdentifier:&unk_1F4382170];

  _contextItemOrder = [(HKOverlayRoomAFibBurdenViewController *)self _contextItemOrder];
  v10 = [(HKOverlayRoomViewController *)self buildFactorContextsAllowingDeselection:0];
  activeFactorContexts = [v10 activeFactorContexts];
  v12 = [activeFactorContexts count];

  v13 = [_contextItemOrder count];
  inactiveFactorContexts = [v10 inactiveFactorContexts];
  v15 = [inactiveFactorContexts count];

  v16 = index - v12;
  if (index < v12)
  {
    activeFactorContexts2 = [v10 activeFactorContexts];
    v18 = [activeFactorContexts2 objectAtIndexedSubscript:index];

LABEL_3:
    stackedBaseDisplayType = [v18 stackedBaseDisplayType];
    applicationItems2 = [(HKOverlayRoomViewController *)self applicationItems];
    healthStore2 = [applicationItems2 healthStore];
    v22 = [HKInteractiveChartInfographicFactory infographicViewControllerForDisplayType:v29 factorDisplayType:stackedBaseDisplayType healthStore:healthStore2];

    goto LABEL_7;
  }

  v23 = v13 + v12;
  v24 = __OFSUB__(index, v13 + v12);
  v25 = index - (v13 + v12);
  if (v25 < 0 == v24)
  {
    if (v15 + v23 <= index)
    {
      goto LABEL_9;
    }

    inactiveFactorContexts2 = [v10 inactiveFactorContexts];
    v18 = [inactiveFactorContexts2 objectAtIndexedSubscript:v25];

    goto LABEL_3;
  }

  v26 = [_contextItemOrder objectAtIndex:v16];
  v18 = -[HKOverlayRoomAFibBurdenViewController _displayTypeForOverlayContextItem:](self, "_displayTypeForOverlayContextItem:", [v26 intValue]);

  addDataViewControllerProvider = self->_addDataViewControllerProvider;
  stackedBaseDisplayType = [(HKOverlayRoomViewController *)self applicationItems];
  applicationItems2 = [stackedBaseDisplayType healthStore];
  v22 = [(HKOverlayRoomAFibBurdenViewController *)self _infographicViewControllerForDisplayType:v29 secondaryDisplayType:v18 addDataViewControllerProvider:addDataViewControllerProvider healthStore:applicationItems2];
LABEL_7:

  if (v22)
  {
    [(UIViewController *)self hk_presentModalCardViewController:v22 fullScreen:0 animated:1 completion:0];
  }

LABEL_9:
}

- (id)stringForValueRange:(id)range timeScope:(int64_t)scope
{
  rangeCopy = range;
  chartController = [(HKOverlayRoomViewController *)self chartController];
  v8 = [chartController stringForValueRange:rangeCopy timeScope:scope];

  return v8;
}

- (void)processSelectedRangeData:(id)data displayType:(id)type
{
  dataCopy = data;
  typeCopy = type;
  statisticsType = [dataCopy statisticsType];
  sampleType = [typeCopy sampleType];

  code = [sampleType code];
  if (code <= 98)
  {
    if (code == 3)
    {
      if ([dataCopy statisticsType] != 3 && statisticsType)
      {
        [HKOverlayRoomAFibBurdenViewController processSelectedRangeData:displayType:];
      }

      v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      currentHandler = v12;
      v14 = @"BODY_MASS_LOLLIPOP_TITLE";
    }

    else
    {
      v11 = dataCopy;
      if (code == 63)
      {
        if ([dataCopy dataType] == 9)
        {
          v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          currentHandler = v12;
          v14 = @"SLEEP_INBED_LOLLIPOP_TITLE";
        }

        else
        {
          if ([dataCopy dataType] != 10)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"HKOverlayRoomAFibBurdenViewController.m" lineNumber:612 description:{@"Sleep should only contain InBed or Asleep data types. Unrecognized: %ld", objc_msgSend(dataCopy, "dataType")}];
            goto LABEL_32;
          }

          v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          currentHandler = v12;
          v14 = @"SLEEP_ASLEEP_LOLLIPOP_TITLE";
        }
      }

      else
      {
        if (code != 75)
        {
          goto LABEL_33;
        }

        if ([dataCopy statisticsType] != 8 && statisticsType)
        {
          [HKOverlayRoomAFibBurdenViewController processSelectedRangeData:displayType:];
        }

        v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        currentHandler = v12;
        v14 = @"EXERCISE_MINUTES_LOLLIPOP_TITLE";
      }
    }

LABEL_31:
    v16 = [v12 localizedStringForKey:v14 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];
    localizedUppercaseString = [v16 localizedUppercaseString];
    [dataCopy setTitleOverride:localizedUppercaseString];

LABEL_32:
    v11 = dataCopy;
    goto LABEL_33;
  }

  if (code == 99)
  {
    if ([dataCopy statisticsType] != 8 && statisticsType)
    {
      [HKOverlayRoomAFibBurdenViewController processSelectedRangeData:displayType:];
    }

    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    currentHandler = v12;
    v14 = @"MINDFUL_MINUTES_LOLLIPOP_TITLE";
    goto LABEL_31;
  }

  v11 = dataCopy;
  if (code != 248)
  {
    if (code != 251)
    {
      goto LABEL_33;
    }

    if ([dataCopy statisticsType] != 8 && statisticsType)
    {
      [HKOverlayRoomAFibBurdenViewController processSelectedRangeData:displayType:];
    }

    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    currentHandler = v12;
    v14 = @"ALCOHOL_LOLLIPOP_TITLE";
    goto LABEL_31;
  }

  v15 = [(HKOverlayRoomViewController *)self controllerMode]== 3;
  v11 = dataCopy;
  if (v15)
  {
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    currentHandler = v12;
    v14 = @"AFIB_BURDEN_LOLLIPOP_TITLE";
    goto LABEL_31;
  }

LABEL_33:
}

+ (void)createInteractiveChartViewControllerForTypeIdentifier:chartFactory:applicationItems:displayDate:preferredOverlay:restorationUserActivity:trendModel:factorDisplayTypes:additionalChartOptions:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)createInteractiveChartViewControllerForTypeIdentifier:chartFactory:applicationItems:displayDate:preferredOverlay:restorationUserActivity:trendModel:factorDisplayTypes:additionalChartOptions:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __145__HKOverlayRoomAFibBurdenViewController__infographicViewControllerForDisplayType_secondaryDisplayType_addDataViewControllerProvider_healthStore___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "[HKInteractiveChartInfographicFactory] Error sending life factor logging initiated analytics event: %{public}@", &v2, 0xCu);
}

- (void)processSelectedRangeData:displayType:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)processSelectedRangeData:displayType:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)processSelectedRangeData:displayType:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)processSelectedRangeData:displayType:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end