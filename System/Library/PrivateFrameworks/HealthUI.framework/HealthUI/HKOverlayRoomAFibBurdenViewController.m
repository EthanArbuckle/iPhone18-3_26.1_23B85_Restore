@interface HKOverlayRoomAFibBurdenViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
- (BOOL)supportsShowAllFilters;
- (HKOverlayRoomAFibBurdenViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6 sleepDataSourceProvider:(id)a7 sleepChartFormatter:(id)a8 preferredOverlay:(int64_t)a9 addDataViewControllerProvider:(id)a10;
- (id)_aFibBurdenSeriesForTimeScope:(int64_t)a3 displayType:(id)a4 mode:(int64_t)a5 applicationItems:(id)a6;
- (id)_displayTypeForOverlayContextItem:(unint64_t)a3;
- (id)_generateAFibBurdenDisplayTypeWithApplicationItems:(id)a3 mode:(int64_t)a4;
- (id)_generateOverlayContextsWithPrimaryDisplayType:(id)a3 sleepDataSourceProvider:(id)a4 sleepChartFormatter:(id)a5 overlayChartController:(id)a6 applicationItems:(id)a7;
- (id)_infographicViewControllerForDisplayType:(id)a3 secondaryDisplayType:(id)a4 addDataViewControllerProvider:(id)a5 healthStore:(id)a6;
- (id)_lifeFactorViewControllerForKey:(id)a3 logButtonAction:(id)a4;
- (id)_overlayContextForOverlayContextItem:(unint64_t)a3 sleepDataSourceProvider:(id)a4 sleepChartFormatter:(id)a5 overlayChartController:(id)a6 applicationItems:(id)a7;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)showAllFiltersButtonTitle;
- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4;
- (void)contextView:(id)a3 didTapOnInfoButtonAtIndex:(int64_t)a4;
- (void)didChangeFromContextItem:(id)a3 toContextItem:(id)a4;
- (void)processSelectedRangeData:(id)a3 displayType:(id)a4;
- (void)viewDidLoad;
@end

@implementation HKOverlayRoomAFibBurdenViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v32 = a9;
  v17 = a10;
  v18 = a8;
  v19 = [v14 sleepDataSourceProvider];

  if (!v19)
  {
    +[HKOverlayRoomAFibBurdenViewController createInteractiveChartViewControllerForTypeIdentifier:chartFactory:applicationItems:displayDate:preferredOverlay:restorationUserActivity:trendModel:factorDisplayTypes:additionalChartOptions:];
  }

  v20 = [v14 sleepChartFormatter];

  if (!v20)
  {
    +[HKOverlayRoomAFibBurdenViewController createInteractiveChartViewControllerForTypeIdentifier:chartFactory:applicationItems:displayDate:preferredOverlay:restorationUserActivity:trendModel:factorDisplayTypes:additionalChartOptions:];
  }

  v21 = [HKOverlayRoomAFibBurdenViewController alloc];
  v22 = [v14 sleepDataSourceProvider];
  v23 = [v14 sleepChartFormatter];
  v24 = [v14 addDataViewControllerProvider];
  v25 = v21;
  v26 = v16;
  v27 = [(HKOverlayRoomAFibBurdenViewController *)v25 initWithDisplayDate:v16 applicationItems:v15 factorDisplayTypes:v17 mode:0 sleepDataSourceProvider:v22 sleepChartFormatter:v23 preferredOverlay:a7 addDataViewControllerProvider:v24];

  [(HKOverlayRoomViewController *)v27 setRestorationUserActivity:v18];
  [(HKOverlayRoomViewController *)v27 setAdditionalChartOptions:a11];
  if (v32)
  {
    v28 = [(HKOverlayRoomAFibBurdenViewController *)v27 primaryDisplayTypeWithApplicationItems:v15];
    v29 = [[HKOverlayRoomFactorAndTrendViewController alloc] initWithBaseChartDisplayType:v28 trendModel:v32 factorDisplayTypes:v17 displayDate:v26 applicationItems:v15 mode:1 timeScopeRanges:0 initialTimeScope:8 wrappedOverlay:v27 overrideFirstWeekday:-1 overrideCalendar:0 additionalChartOptions:a11];
  }

  else
  {
    v29 = v27;
  }

  return v29;
}

- (HKOverlayRoomAFibBurdenViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6 sleepDataSourceProvider:(id)a7 sleepChartFormatter:(id)a8 preferredOverlay:(int64_t)a9 addDataViewControllerProvider:(id)a10
{
  v16 = a4;
  v36 = a7;
  v17 = a8;
  v18 = a10;
  v37.receiver = self;
  v37.super_class = HKOverlayRoomAFibBurdenViewController;
  v19 = [(HKOverlayRoomViewController *)&v37 initWithDisplayDate:a3 applicationItems:v16 factorDisplayTypes:a5 mode:a6];
  v20 = v19;
  if (v19)
  {
    preferredOverlayIndex = v19->_preferredOverlayIndex;
    v19->_preferredOverlayIndex = 0;

    v20->_preferredOverlay = a9;
    objc_storeStrong(&v20->_sleepDataSourceProvider, a7);
    objc_storeStrong(&v20->_sleepChartFormatter, a8);
    v22 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    [(NSCalendar *)v22 setFirstWeekday:2];
    currentCalendar = v20->_currentCalendar;
    v20->_currentCalendar = v22;
    v24 = v22;

    [(HKOverlayRoomViewController *)v20 setShouldSelectInitialOverlay:a6 == 3];
    v25 = [(HKOverlayRoomAFibBurdenViewController *)v20 _generateAFibBurdenDisplayTypeWithApplicationItems:v16 mode:a6];
    afibBurdenDisplayType = v20->_afibBurdenDisplayType;
    v20->_afibBurdenDisplayType = v25;
    v27 = v25;

    objc_storeStrong(&v20->_addDataViewControllerProvider, a10);
    v28 = HKCreateSerialDispatchQueue();
    analyticsSubmissionQueue = v20->_analyticsSubmissionQueue;
    v20->_analyticsSubmissionQueue = v28;

    v30 = objc_alloc(MEMORY[0x1E696BF00]);
    v31 = HKLogAFibBurden();
    v32 = [v16 healthStore];
    v33 = [v30 initWithLoggingCategory:v31 healthDataSource:v32];
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

- (id)_generateAFibBurdenDisplayTypeWithApplicationItems:(id)a3 mode:(int64_t)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696C370];
  v7 = a3;
  v8 = [v6 _quantityTypeWithCode:248];
  v9 = [v7 displayTypeController];
  v10 = [v9 displayTypeForObjectType:v8];

  v11 = objc_alloc_init(HKInteractiveChartAFibBurdenFormatter);
  v12 = [(HKOverlayRoomAFibBurdenViewController *)self _aFibBurdenSeriesForTimeScope:4 displayType:v10 mode:a4 applicationItems:v7];
  v13 = [(HKOverlayRoomAFibBurdenViewController *)self _aFibBurdenSeriesForTimeScope:3 displayType:v10 mode:a4 applicationItems:v7];

  v17[0] = &unk_1F4382050;
  v17[1] = &unk_1F4382068;
  v18[0] = v12;
  v18[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15 = [[HKInteractiveChartDisplayType alloc] initWithBaseDisplayType:v10 valueFormatter:v11 dataTypeCode:248 seriesForTimeScopeMapping:v14];

  return v15;
}

- (id)_aFibBurdenSeriesForTimeScope:(int64_t)a3 displayType:(id)a4 mode:(int64_t)a5 applicationItems:(id)a6
{
  v40[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  if (a5 == 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 5;
  }

  v12 = a6;
  v13 = objc_alloc_init(HKNumericAxisConfiguration);
  [(HKAxisConfiguration *)v13 setMinLabels:v11];
  [(HKAxisConfiguration *)v13 setMaxLabels:v11];
  if ([(HKOverlayRoomViewController *)self controllerMode]== 3)
  {
    [(HKNumericAxisConfiguration *)v13 setTopVerticalLabelPadding:4.0];
    [(HKNumericAxisConfiguration *)v13 setBottomVerticalLabelPadding:2.0];
  }

  v14 = [v10 displayCategory];
  v15 = [v12 unitController];
  v16 = [v12 chartDataCacheController];

  v17 = [v10 hk_standardSeriesForTimeScope:a3 displayCategory:v14 unitController:v15 dataCacheController:v16 numericAxisConfigurationOverrides:v13];

  v18 = [MEMORY[0x1E696C510] percentUnit];
  v19 = 50.0;
  if (a5 != 3)
  {
    v19 = 100.0;
  }

  v20 = [MEMORY[0x1E696C348] quantityWithUnit:v18 doubleValue:v19];
  v21 = [MEMORY[0x1E696C348] quantityWithUnit:v18 doubleValue:0.0];
  v22 = [MEMORY[0x1E696C348] quantityWithUnit:v18 doubleValue:100.0];
  v23 = [HKValueRange valueRangeWithMinValue:v21 maxValue:v22];
  v24 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v20 minimumValue:v21 maximumValue:v22 axisRangeOverrides:0];
  v39 = v23;
  [v24 setNoDataAxisBounds:v23];
  [v24 setUnit:v18];
  [v17 setAxisScalingRule:v24];
  v25 = [v17 yAxis];
  if (!v25)
  {
    v36 = v20;
    v38 = v17;
    v31 = [MEMORY[0x1E696C608] sharedBehavior];
    v32 = [v31 showSensitiveLogItems];

    if (v32)
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

  [v10 localization];
  v26 = v35 = v20;
  [v26 shortenedDisplayName];
  v27 = v34 = v10;
  [MEMORY[0x1E69DC888] hk_defaultSecondaryTextColor];
  v28 = v37 = v17;
  v29 = [HKLegendEntry legendEntryWithTitle:v27 labelColor:v28];

  v10 = v34;
  v20 = v35;
  v40[0] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  [v37 setTitleLegendEntries:v30];

  v17 = v37;
LABEL_17:

LABEL_18:

  return v17;
}

- (id)_overlayContextForOverlayContextItem:(unint64_t)a3 sleepDataSourceProvider:(id)a4 sleepChartFormatter:(id)a5 overlayChartController:(id)a6 applicationItems:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __162__HKOverlayRoomAFibBurdenViewController__overlayContextForOverlayContextItem_sleepDataSourceProvider_sleepChartFormatter_overlayChartController_applicationItems___block_invoke;
  aBlock[3] = &unk_1E81B5948;
  aBlock[4] = self;
  v15 = v13;
  v33 = v15;
  v16 = v14;
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
  v20 = v12;
  v30 = v20;
  v31 = self;
  v21 = _Block_copy(v27);
  v22 = v21;
  if (a3 > 1)
  {
    switch(a3)
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

  if (a3)
  {
    if (a3 != 1)
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

- (id)_displayTypeForOverlayContextItem:(unint64_t)a3
{
  if (a3 <= 4)
  {
    v4 = qword_1E81B5A30[a3];
    v5 = [(HKOverlayRoomViewController *)self applicationItems];
    v6 = [v5 healthStore];
    v7 = [HKDisplayTypeController sharedInstanceForHealthStore:v6];
    v3 = [v7 displayTypeWithIdentifier:v4];
  }

  return v3;
}

- (id)_generateOverlayContextsWithPrimaryDisplayType:(id)a3 sleepDataSourceProvider:(id)a4 sleepChartFormatter:(id)a5 overlayChartController:(id)a6 applicationItems:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(HKOverlayRoomAFibBurdenViewController *)self _contextItemOrder];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __172__HKOverlayRoomAFibBurdenViewController__generateOverlayContextsWithPrimaryDisplayType_sleepDataSourceProvider_sleepChartFormatter_overlayChartController_applicationItems___block_invoke;
  v22[3] = &unk_1E81B5998;
  v22[4] = self;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = [v15 hk_map:v22];

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

- (id)_lifeFactorViewControllerForKey:(id)a3 logButtonAction:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = a3;
  v23 = [v5 stringWithFormat:@"%@%@", v7, @"_AND_AFIB_TITLE"];
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v21 = [v8 localizedStringForKey:v23 value:&stru_1F42FFBE0 table:?];

  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v7, @"_AND_AFIB_BODY"];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:v22 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v7, @"_AND_AFIB_LOGGING"];

  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:v11 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];

  v14 = [[HKInfographicTitleDetailOptionalButtonItem alloc] initWithTitle:v21 detail:v10 buttonTextString:v13 buttonAction:v6];
  v15 = [HKInfographicViewController alloc];
  v24[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v17 = [(HKInfographicViewController *)v15 initWithItems:v16];

  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v19 = [v18 localizedStringForKey:@"LIFE_FACTOR" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];
  [(HKInfographicViewController *)v17 setTitle:v19];

  return v17;
}

- (id)_infographicViewControllerForDisplayType:(id)a3 secondaryDisplayType:(id)a4 addDataViewControllerProvider:(id)a5 healthStore:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
  v14 = v13;
  v31 = v14;
  v15 = v11;
  v32 = v15;
  v16 = v12;
  v33 = v16;
  v34 = &v35;
  v17 = _Block_copy(&v27);
  if ([v10 displayTypeIdentifier] == 248)
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

- (id)controllerTitleWithApplicationItems:(id)a3
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

- (void)didChangeFromContextItem:(id)a3 toContextItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 | v7)
  {
    v8 = [v6 analyticsIdentifier];
    v9 = [v7 analyticsIdentifier];
    v10 = [v8 isEqualToString:v9];

    if ((v10 & 1) == 0)
    {
      analyticsSubmissionQueue = self->_analyticsSubmissionQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__HKOverlayRoomAFibBurdenViewController_didChangeFromContextItem_toContextItem___block_invoke;
      block[3] = &unk_1E81B5A10;
      v13 = v6;
      v14 = v7;
      v15 = self;
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
  v3 = [(HKInteractiveChartDisplayType *)self->_afibBurdenDisplayType baseDisplayType];
  v4 = [v3 hk_interactiveChartOptions];

  if ([(HKOverlayRoomViewController *)self controllerMode]== 3)
  {
    v5 = v4 | 0x2020;
  }

  else
  {
    v5 = v4;
  }

  v20 = v5 | [(HKOverlayRoomViewController *)self additionalChartOptions];
  v19 = [HKInteractiveChartOverlayViewController alloc];
  v23 = [(HKOverlayRoomViewController *)self applicationItems];
  v24 = [v23 healthStore];
  v17 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v22 = [(HKOverlayRoomViewController *)self applicationItems];
  v6 = [v22 unitController];
  v21 = [(HKOverlayRoomViewController *)self applicationItems];
  v7 = [v21 dateCache];
  v18 = [(HKOverlayRoomViewController *)self applicationItems];
  v8 = [v18 chartDataCacheController];
  v9 = [(HKOverlayRoomViewController *)self applicationItems];
  v10 = [v9 timeScopeController];
  v11 = [(HKOverlayRoomViewController *)self applicationItems];
  v12 = [v11 sampleDateRangeController];
  v13 = [(HKOverlayRoomViewController *)self displayDate];
  v14 = v7;
  v15 = [(HKInteractiveChartOverlayViewController *)v19 initWithHealthStore:v24 primaryDisplayType:v17 unitPreferenceController:v6 dateCache:v7 chartDataCacheController:v8 selectedTimeScopeController:v10 sampleTypeDateRangeController:v12 initialXValue:v13 currentCalendarOverride:self->_currentCalendar options:v20];

  [(HKInteractiveChartViewController *)v15 setCurrentValueViewDataSourceDelegate:self];

  return v15;
}

- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = [(HKOverlayRoomAFibBurdenViewController *)self afibBurdenDisplayType];
  v11 = [(HKOverlayRoomAFibBurdenViewController *)self sleepDataSourceProvider];
  v12 = [(HKOverlayRoomAFibBurdenViewController *)self sleepChartFormatter];
  v13 = [(HKOverlayRoomAFibBurdenViewController *)self _generateOverlayContextsWithPrimaryDisplayType:v10 sleepDataSourceProvider:v11 sleepChartFormatter:v12 overlayChartController:v8 applicationItems:v9];

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

  if (a3 == 3)
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

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3 == 3)
  {
    v11 = [v9 timeScopeController];
    [v11 setSelectedTimeScope:3];
  }

  v12 = [HKOverlayRoomAFibBurdenViewController alloc];
  v13 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v14 = [(HKOverlayRoomAFibBurdenViewController *)v12 initWithDisplayDate:v8 applicationItems:v10 factorDisplayTypes:v13 mode:a3 sleepDataSourceProvider:self->_sleepDataSourceProvider sleepChartFormatter:self->_sleepChartFormatter preferredOverlay:self->_preferredOverlay addDataViewControllerProvider:self->_addDataViewControllerProvider];

  [(HKOverlayRoomViewController *)v14 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:a3]];

  return v14;
}

- (void)contextView:(id)a3 didTapOnInfoButtonAtIndex:(int64_t)a4
{
  v6 = [(HKOverlayRoomViewController *)self applicationItems];
  v7 = [v6 healthStore];
  v8 = [HKDisplayTypeController sharedInstanceForHealthStore:v7];
  v29 = [v8 displayTypeWithIdentifier:&unk_1F4382170];

  v9 = [(HKOverlayRoomAFibBurdenViewController *)self _contextItemOrder];
  v10 = [(HKOverlayRoomViewController *)self buildFactorContextsAllowingDeselection:0];
  v11 = [v10 activeFactorContexts];
  v12 = [v11 count];

  v13 = [v9 count];
  v14 = [v10 inactiveFactorContexts];
  v15 = [v14 count];

  v16 = a4 - v12;
  if (a4 < v12)
  {
    v17 = [v10 activeFactorContexts];
    v18 = [v17 objectAtIndexedSubscript:a4];

LABEL_3:
    v19 = [v18 stackedBaseDisplayType];
    v20 = [(HKOverlayRoomViewController *)self applicationItems];
    v21 = [v20 healthStore];
    v22 = [HKInteractiveChartInfographicFactory infographicViewControllerForDisplayType:v29 factorDisplayType:v19 healthStore:v21];

    goto LABEL_7;
  }

  v23 = v13 + v12;
  v24 = __OFSUB__(a4, v13 + v12);
  v25 = a4 - (v13 + v12);
  if (v25 < 0 == v24)
  {
    if (v15 + v23 <= a4)
    {
      goto LABEL_9;
    }

    v28 = [v10 inactiveFactorContexts];
    v18 = [v28 objectAtIndexedSubscript:v25];

    goto LABEL_3;
  }

  v26 = [v9 objectAtIndex:v16];
  v18 = -[HKOverlayRoomAFibBurdenViewController _displayTypeForOverlayContextItem:](self, "_displayTypeForOverlayContextItem:", [v26 intValue]);

  addDataViewControllerProvider = self->_addDataViewControllerProvider;
  v19 = [(HKOverlayRoomViewController *)self applicationItems];
  v20 = [v19 healthStore];
  v22 = [(HKOverlayRoomAFibBurdenViewController *)self _infographicViewControllerForDisplayType:v29 secondaryDisplayType:v18 addDataViewControllerProvider:addDataViewControllerProvider healthStore:v20];
LABEL_7:

  if (v22)
  {
    [(UIViewController *)self hk_presentModalCardViewController:v22 fullScreen:0 animated:1 completion:0];
  }

LABEL_9:
}

- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKOverlayRoomViewController *)self chartController];
  v8 = [v7 stringForValueRange:v6 timeScope:a4];

  return v8;
}

- (void)processSelectedRangeData:(id)a3 displayType:(id)a4
{
  v18 = a3;
  v7 = a4;
  v8 = [v18 statisticsType];
  v9 = [v7 sampleType];

  v10 = [v9 code];
  if (v10 <= 98)
  {
    if (v10 == 3)
    {
      if ([v18 statisticsType] != 3 && v8)
      {
        [HKOverlayRoomAFibBurdenViewController processSelectedRangeData:displayType:];
      }

      v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v13 = v12;
      v14 = @"BODY_MASS_LOLLIPOP_TITLE";
    }

    else
    {
      v11 = v18;
      if (v10 == 63)
      {
        if ([v18 dataType] == 9)
        {
          v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v13 = v12;
          v14 = @"SLEEP_INBED_LOLLIPOP_TITLE";
        }

        else
        {
          if ([v18 dataType] != 10)
          {
            v13 = [MEMORY[0x1E696AAA8] currentHandler];
            [v13 handleFailureInMethod:a2 object:self file:@"HKOverlayRoomAFibBurdenViewController.m" lineNumber:612 description:{@"Sleep should only contain InBed or Asleep data types. Unrecognized: %ld", objc_msgSend(v18, "dataType")}];
            goto LABEL_32;
          }

          v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v13 = v12;
          v14 = @"SLEEP_ASLEEP_LOLLIPOP_TITLE";
        }
      }

      else
      {
        if (v10 != 75)
        {
          goto LABEL_33;
        }

        if ([v18 statisticsType] != 8 && v8)
        {
          [HKOverlayRoomAFibBurdenViewController processSelectedRangeData:displayType:];
        }

        v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v13 = v12;
        v14 = @"EXERCISE_MINUTES_LOLLIPOP_TITLE";
      }
    }

LABEL_31:
    v16 = [v12 localizedStringForKey:v14 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-AFibBurden"];
    v17 = [v16 localizedUppercaseString];
    [v18 setTitleOverride:v17];

LABEL_32:
    v11 = v18;
    goto LABEL_33;
  }

  if (v10 == 99)
  {
    if ([v18 statisticsType] != 8 && v8)
    {
      [HKOverlayRoomAFibBurdenViewController processSelectedRangeData:displayType:];
    }

    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = v12;
    v14 = @"MINDFUL_MINUTES_LOLLIPOP_TITLE";
    goto LABEL_31;
  }

  v11 = v18;
  if (v10 != 248)
  {
    if (v10 != 251)
    {
      goto LABEL_33;
    }

    if ([v18 statisticsType] != 8 && v8)
    {
      [HKOverlayRoomAFibBurdenViewController processSelectedRangeData:displayType:];
    }

    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = v12;
    v14 = @"ALCOHOL_LOLLIPOP_TITLE";
    goto LABEL_31;
  }

  v15 = [(HKOverlayRoomViewController *)self controllerMode]== 3;
  v11 = v18;
  if (v15)
  {
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = v12;
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