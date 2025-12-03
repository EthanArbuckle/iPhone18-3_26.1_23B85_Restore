@interface HKInteractiveChartOverlaySleepViewController
- (BOOL)_isSleepSeries:(id)series;
- (id)_customDateAxisForTimeScope:(int64_t)scope segmentIndex:(int64_t)index sectionIndex:(int64_t)sectionIndex currentCalendar:(id)calendar;
- (id)_dayTimeScopeDateAxisStyleWithTextAlignment:(int64_t)alignment hyphenationFactor:(id)factor;
- (id)_sleepAnalysisDayAxisWithCalendar:(id)calendar;
- (id)_sleepComparisonDayAxisWithCalendar:(id)calendar;
- (id)_sleepStageDayAxisWithCalendar:(id)calendar;
- (id)_sleepStageDurationDayAxisWithCalendar:(id)calendar;
- (id)addNoDataEntries:(id)entries timeScope:(int64_t)scope targetSeries:(id)series;
- (id)dateRangeFromSelectionContext:(id)context timeScope:(int64_t)scope;
- (id)descriptionForStartX:(double)x endX:(double)endX chartData:(id)data timeScope:(int64_t)scope resolution:(int64_t)resolution graphView:(id)view;
- (id)makePrimaryGraphViewControllerWithDateZoom:(int64_t)zoom previousDateZoom:(int64_t)dateZoom previousXAxisSpace:(double)space currentCalendar:(id)calendar;
- (id)sleepDaySummaryForDate:(id)date;
- (id)stringForValueRange:(id)range timeScope:(int64_t)scope;
- (int64_t)defaultAlignmentForTimeScope:(int64_t)scope;
- (int64_t)effectiveAnnotationTimeScopeForTimeScope:(int64_t)scope displayType:(id)type segmentIndex:(int64_t)index sectionIndex:(int64_t)sectionIndex;
- (void)configureDisplayTypes:(id)types timeScope:(int64_t)scope stackOffset:(int64_t)offset;
- (void)graphView:(id)view didUpdateSeries:(id)series newDataArrived:(BOOL)arrived changeContext:(int64_t)context;
- (void)updateSelectionAnnotationDataSourceForContext:(id)context displayType:(id)type timeScope:(int64_t)scope resolution:(int64_t)resolution;
@end

@implementation HKInteractiveChartOverlaySleepViewController

- (void)configureDisplayTypes:(id)types timeScope:(int64_t)scope stackOffset:(int64_t)offset
{
  v8.receiver = self;
  v8.super_class = HKInteractiveChartOverlaySleepViewController;
  [(HKInteractiveChartOverlayViewController *)&v8 configureDisplayTypes:types timeScope:scope stackOffset:offset];
  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];

  [graphView setScrollingOptions:1];
}

- (int64_t)defaultAlignmentForTimeScope:(int64_t)scope
{
  if (scope == 6)
  {
    currentOverlayLocationProvider = [(HKInteractiveChartViewController *)self currentOverlayLocationProvider];
    segmentedControlSelectedIndex = [currentOverlayLocationProvider segmentedControlSelectedIndex];
    v7 = HKIndexForOverlaySleepRoomSegment(2);

    if (segmentedControlSelectedIndex == v7)
    {
      return 4;
    }
  }

  v9.receiver = self;
  v9.super_class = HKInteractiveChartOverlaySleepViewController;
  return [(HKInteractiveChartViewController *)&v9 defaultAlignmentForTimeScope:scope];
}

- (id)makePrimaryGraphViewControllerWithDateZoom:(int64_t)zoom previousDateZoom:(int64_t)dateZoom previousXAxisSpace:(double)space currentCalendar:(id)calendar
{
  calendarCopy = calendar;
  currentOverlayLocationProvider = [(HKInteractiveChartViewController *)self currentOverlayLocationProvider];
  segmentedControlSelectedIndex = [currentOverlayLocationProvider segmentedControlSelectedIndex];
  currentOverlayLocationProvider2 = [(HKInteractiveChartViewController *)self currentOverlayLocationProvider];
  selectedContextLocation = [currentOverlayLocationProvider2 selectedContextLocation];
  v15 = -[HKInteractiveChartOverlaySleepViewController _customDateAxisForTimeScope:segmentIndex:sectionIndex:currentCalendar:](self, "_customDateAxisForTimeScope:segmentIndex:sectionIndex:currentCalendar:", zoom, segmentedControlSelectedIndex, [selectedContextLocation sectionIndex], calendarCopy);

  v16 = [[HKDateGraphViewController alloc] initWithDateZoom:zoom previousDateZoom:dateZoom previousXAxisSpace:calendarCopy currentCalendar:v15 customDateAxis:space];

  return v16;
}

- (id)_dayTimeScopeDateAxisStyleWithTextAlignment:(int64_t)alignment hyphenationFactor:(id)factor
{
  factorCopy = factor;
  v6 = objc_opt_new();
  hk_chartAxisLabelColor = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
  v8 = [HKStrokeStyle strokeStyleWithColor:hk_chartAxisLabelColor lineWidth:1.0];
  [v6 setAxisLineStyle:v8];

  hk_chartAxisLabelFont = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
  v10 = [HKAxisLabelStyle labelStyleWithColor:hk_chartAxisLabelColor font:hk_chartAxisLabelFont horizontalAlignment:alignment verticalAlignment:3 hyphenationFactor:factorCopy];

  [v6 setLabelStyle:v10];
  [v6 setTickPositions:0];
  [v6 setAxisLabelPosition:1];
  [v6 setShowGridLines:1];
  [v6 setLocation:2];
  [v6 setFillInnerPadding:3.0];
  hk_chartGrayGraphColor = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  hk_chartAxisMajorGridColor = [MEMORY[0x1E69DC888] hk_chartAxisMajorGridColor];
  v13 = [HKStrokeStyle strokeStyleWithColor:hk_chartAxisMajorGridColor lineWidth:0.5];
  [v13 setDashStyle:1];
  [v6 setGridLineStyle:v13];
  v14 = [HKStrokeStyle strokeStyleWithColor:hk_chartGrayGraphColor lineWidth:0.5];
  [v14 setDashStyle:0];
  [v6 setReferenceGridLineStyle:v14];

  return v6;
}

- (id)addNoDataEntries:(id)entries timeScope:(int64_t)scope targetSeries:(id)series
{
  v36[1] = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  seriesCopy = series;
  if (![(HKInteractiveChartOverlaySleepViewController *)self _isSleepSeries:seriesCopy]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v35.receiver = self;
    v35.super_class = HKInteractiveChartOverlaySleepViewController;
    v10 = [(HKInteractiveChartViewController *)&v35 addNoDataEntries:entriesCopy timeScope:scope targetSeries:seriesCopy];
LABEL_7:
    v11 = v10;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [entriesCopy count])
  {
    v10 = entriesCopy;
    goto LABEL_7;
  }

  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];
  xAxis = [graphView xAxis];

  primaryGraphViewController2 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  graphView2 = [primaryGraphViewController2 graphView];
  effectiveVisibleRangeActive = [graphView2 effectiveVisibleRangeActive];
  startDate = [effectiveVisibleRangeActive startDate];

  primaryGraphViewController3 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  graphView3 = [primaryGraphViewController3 graphView];
  effectiveVisibleRangeActive2 = [graphView3 effectiveVisibleRangeActive];
  endDate = [effectiveVisibleRangeActive2 endDate];

  transform = [xAxis transform];
  [transform coordinateForValue:startDate];
  v26 = v25;

  [xAxis pointTransform];
  v29 = HKLinearTransformValue(v27, v28, v26);
  v30 = [HKValueRange valueRangeWithMinValue:startDate maxValue:endDate];
  v31 = [(HKInteractiveChartOverlaySleepViewController *)self stringForValueRange:v30 timeScope:5];

  v32 = [HKAccessibilityPointData alloc];
  v33 = HKUIMidDate(startDate, endDate);
  v34 = [(HKAccessibilityPointData *)v32 initWithHorizontalScreenCoordinate:v31 horizontalTimeCoordinate:v33 horizontalDate:0 values:v29];

  v36[0] = v34;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];

LABEL_8:

  return v11;
}

- (id)descriptionForStartX:(double)x endX:(double)endX chartData:(id)data timeScope:(int64_t)scope resolution:(int64_t)resolution graphView:(id)view
{
  dataCopy = data;
  viewCopy = view;
  if (scope == 6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = dataCopy;
    seriesType = [v16 seriesType];
    if (seriesType == 4)
    {
      annotationOverrideDateRange = [v16 annotationOverrideDateRange];
      if (annotationOverrideDateRange)
      {
        v20 = [(HKInteractiveChartOverlaySleepViewController *)self stringForValueRange:annotationOverrideDateRange timeScope:6];
        v22.receiver = self;
        v22.super_class = HKInteractiveChartOverlaySleepViewController;
        v18 = [(HKInteractiveChartViewController *)&v22 replaceRangeClause:v20];
      }

      else
      {
        v18 = &stru_1F42FFBE0;
      }
    }

    else if (seriesType == 6)
    {
      v23.receiver = self;
      v23.super_class = HKInteractiveChartOverlaySleepViewController;
      v18 = [(HKInteractiveChartViewController *)&v23 descriptionForStartX:v16 endX:6 chartData:resolution timeScope:viewCopy resolution:x graphView:endX];
    }

    else
    {
      v18 = &stru_1F42FFBE0;
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = HKInteractiveChartOverlaySleepViewController;
    v18 = [(HKInteractiveChartViewController *)&v24 descriptionForStartX:dataCopy endX:scope chartData:resolution timeScope:viewCopy resolution:x graphView:endX];
  }

  return v18;
}

- (BOOL)_isSleepSeries:(id)series
{
  v10[4] = *MEMORY[0x1E69E9840];
  seriesCopy = series;
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v10[2] = objc_opt_class();
  v10[3] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__HKInteractiveChartOverlaySleepViewController__isSleepSeries___block_invoke;
  v8[3] = &unk_1E81B8D50;
  v9 = seriesCopy;
  v5 = seriesCopy;
  v6 = [v4 hk_filter:v8];
  LOBYTE(seriesCopy) = v6 != 0;

  return seriesCopy;
}

- (void)graphView:(id)view didUpdateSeries:(id)series newDataArrived:(BOOL)arrived changeContext:(int64_t)context
{
  arrivedCopy = arrived;
  v21 = *MEMORY[0x1E69E9840];
  seriesCopy = series;
  v18.receiver = self;
  v18.super_class = HKInteractiveChartOverlaySleepViewController;
  [(HKInteractiveChartViewController *)&v18 graphView:view didUpdateSeries:seriesCopy newDataArrived:arrivedCopy changeContext:context];
  if (arrivedCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x1E696B998];
      if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = objc_opt_class();
        *buf = 138543362;
        v20 = v13;
        v14 = v13;
        _os_log_impl(&dword_1C3942000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating x axis labels for the stage day series", buf, 0xCu);
      }

      primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
      graphView = [primaryGraphViewController graphView];
      xAxis = [graphView xAxis];
      [xAxis invalidateAxisLabelCache];
    }
  }
}

- (id)dateRangeFromSelectionContext:(id)context timeScope:(int64_t)scope
{
  userInfo = [context userInfo];
  lastObject = [userInfo lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    annotationOverrideDateRange = [lastObject annotationOverrideDateRange];
  }

  else
  {
    annotationOverrideDateRange = 0;
  }

  return annotationOverrideDateRange;
}

- (void)updateSelectionAnnotationDataSourceForContext:(id)context displayType:(id)type timeScope:(int64_t)scope resolution:(int64_t)resolution
{
  contextCopy = context;
  typeCopy = type;
  currentOverlayLocationProvider = [(HKInteractiveChartViewController *)self currentOverlayLocationProvider];
  segmentedControlSelectedIndex = [currentOverlayLocationProvider segmentedControlSelectedIndex];
  currentOverlayLocationProvider2 = [(HKInteractiveChartViewController *)self currentOverlayLocationProvider];
  selectedContextLocation = [currentOverlayLocationProvider2 selectedContextLocation];
  v15 = -[HKInteractiveChartOverlaySleepViewController effectiveAnnotationTimeScopeForTimeScope:displayType:segmentIndex:sectionIndex:](self, "effectiveAnnotationTimeScopeForTimeScope:displayType:segmentIndex:sectionIndex:", scope, typeCopy, segmentedControlSelectedIndex, [selectedContextLocation sectionIndex]);

  annotationDataSource = [(HKInteractiveChartViewController *)self annotationDataSource];
  objc_opt_class();
  LOBYTE(segmentedControlSelectedIndex) = objc_opt_isKindOfClass();

  if (segmentedControlSelectedIndex)
  {
    annotationDataSource2 = [(HKInteractiveChartViewController *)self annotationDataSource];
    healthStore = [(HKInteractiveChartViewController *)self healthStore];
    [annotationDataSource2 updateWithSelectionContext:contextCopy displayType:typeCopy timeScope:v15 resolution:resolution healthStore:healthStore viewController:self];
  }
}

- (id)stringForValueRange:(id)range timeScope:(int64_t)scope
{
  rangeCopy = range;
  endDate = [rangeCopy endDate];
  startDate = [rangeCopy startDate];
  [endDate timeIntervalSinceDate:startDate];
  v10 = v9;

  if (v10 >= 86400.0 && scope == 6)
  {
    scopeCopy = 5;
  }

  else
  {
    scopeCopy = scope;
  }

  v15.receiver = self;
  v15.super_class = HKInteractiveChartOverlaySleepViewController;
  v13 = [(HKInteractiveChartViewController *)&v15 stringForValueRange:rangeCopy timeScope:scopeCopy];

  return v13;
}

- (int64_t)effectiveAnnotationTimeScopeForTimeScope:(int64_t)scope displayType:(id)type segmentIndex:(int64_t)index sectionIndex:(int64_t)sectionIndex
{
  typeCopy = type;
  v10 = typeCopy;
  if (typeCopy)
  {
    sampleType = [typeCopy sampleType];
    if ([sampleType code] == 5)
    {

      goto LABEL_9;
    }

    sampleType2 = [v10 sampleType];
    code = [sampleType2 code];

    if (code == 61)
    {
      goto LABEL_9;
    }
  }

  if (scope == 6 && (HKIndexForOverlaySleepRoomSegment(0) == index || HKIndexForOverlaySleepRoomSegment(2) == index || sectionIndex == 1 && HKIndexForOverlaySleepRoomSegment(1) == index))
  {
    scope = 5;
  }

LABEL_9:

  return scope;
}

- (id)_customDateAxisForTimeScope:(int64_t)scope segmentIndex:(int64_t)index sectionIndex:(int64_t)sectionIndex currentCalendar:(id)calendar
{
  v25 = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  _HKInitializeLogging();
  v11 = *MEMORY[0x1E696B998];
  if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v17 = 138544130;
    v18 = objc_opt_class();
    v19 = 2048;
    scopeCopy = scope;
    v21 = 2048;
    indexCopy = index;
    v23 = 2048;
    sectionIndexCopy = sectionIndex;
    v13 = v18;
    _os_log_impl(&dword_1C3942000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating date axis for timeScope: %ld segmentIndex: %ld sectionIndex: %ld", &v17, 0x2Au);
  }

  if (scope == 6)
  {
    if (HKIndexForOverlaySleepRoomSegment(0) == index)
    {
      v14 = [(HKInteractiveChartOverlaySleepViewController *)self _sleepAnalysisDayAxisWithCalendar:calendarCopy];
LABEL_13:
      v15 = v14;
      goto LABEL_15;
    }

    if (HKIndexForOverlaySleepRoomSegment(2) == index)
    {
      v14 = [(HKInteractiveChartOverlaySleepViewController *)self _sleepComparisonDayAxisWithCalendar:calendarCopy];
      goto LABEL_13;
    }

    if (sectionIndex == 1 && HKIndexForOverlaySleepRoomSegment(1) == index)
    {
      v14 = [(HKInteractiveChartOverlaySleepViewController *)self _sleepStageDurationDayAxisWithCalendar:calendarCopy];
      goto LABEL_13;
    }

    if (HKIndexForOverlaySleepRoomSegment(1) == index)
    {
      v14 = [(HKInteractiveChartOverlaySleepViewController *)self _sleepStageDayAxisWithCalendar:calendarCopy];
      goto LABEL_13;
    }
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (id)_sleepAnalysisDayAxisWithCalendar:(id)calendar
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AAE8];
  calendarCopy = calendar;
  v6 = [v4 bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"TIME_IN_BED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v14[0] = v7;
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"TIME_ASLEEP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v14[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  v11 = [(HKInteractiveChartOverlaySleepViewController *)self _dayTimeScopeDateAxisStyleWithTextAlignment:1 hyphenationFactor:&unk_1F4384960];
  v12 = [[HKCategoricalDateAxis alloc] initWithCurrentCalendar:calendarCopy axisStyle:v11 categoryTitles:v10];

  return v12;
}

- (id)_sleepComparisonDayAxisWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  v5 = [(HKInteractiveChartOverlaySleepViewController *)self _dayTimeScopeDateAxisStyleWithTextAlignment:0 hyphenationFactor:0];
  v6 = [(HKDateAxis *)[_HKSleepComparisonDayAxis alloc] initWithCurrentCalendar:calendarCopy axisStyle:v5];

  return v6;
}

- (id)_sleepStageDurationDayAxisWithCalendar:(id)calendar
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AAE8];
  calendarCopy = calendar;
  v4 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"STAGES_DURATION_DAY_AXIS_LABEL_AWAKE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
  v18[0] = v5;
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"STAGES_DURATION_DAY_AXIS_LABEL_REM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
  v18[1] = v7;
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"STAGES_DURATION_DAY_AXIS_LABEL_CORE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
  v18[2] = v9;
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"STAGES_DURATION_DAY_AXIS_LABEL_DEEP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
  v18[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];

  v13 = [(HKInteractiveChartOverlaySleepViewController *)self _dayTimeScopeDateAxisStyleWithTextAlignment:1 hyphenationFactor:&unk_1F4384960];
  v14 = [[HKCategoricalDateAxis alloc] initWithCurrentCalendar:calendarCopy axisStyle:v13 categoryTitles:v12];

  return v14;
}

- (id)_sleepStageDayAxisWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  v5 = [(HKInteractiveChartOverlaySleepViewController *)self _dayTimeScopeDateAxisStyleWithTextAlignment:0 hyphenationFactor:0];
  v6 = [(HKDateAxis *)[HKSleepStageDayAxis alloc] initWithCurrentCalendar:calendarCopy axisStyle:v5];

  [(HKSleepStageDayAxis *)v6 setDelegate:self];

  return v6;
}

- (id)sleepDaySummaryForDate:(id)date
{
  v38 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  _HKInitializeLogging();
  v5 = MEMORY[0x1E696B998];
  v6 = *MEMORY[0x1E696B998];
  if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEBUG))
  {
    [(HKInteractiveChartOverlaySleepViewController(HKSleepStageDayAxisDelegate) *)v6 sleepDaySummaryForDate:dateCopy];
  }

  primaryDisplayType = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    primaryDisplayType2 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
    v10 = [primaryDisplayType2 graphSeriesForTimeScope:6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      currentCalendar = [(HKInteractiveChartViewController *)self currentCalendar];
      v26 = [currentCalendar startOfDayForDate:dateCopy];

      v27 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v26 duration:86400.0];
      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__11;
      v35 = __Block_byref_object_dispose__11;
      v36 = 0;
      v13 = dispatch_semaphore_create(0);
      startDate = [v27 startDate];
      endDate = [v27 endDate];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __100__HKInteractiveChartOverlaySleepViewController_HKSleepStageDayAxisDelegate__sleepDaySummaryForDate___block_invoke;
      v28[3] = &unk_1E81B8D78;
      v30 = &v31;
      v28[4] = self;
      v16 = v13;
      v29 = v16;
      [(HKInteractiveChartOverlayViewController *)self cachedDataForCustomGraphSeries:v11 timeScope:6 resolution:0 startDate:startDate endDate:endDate queryIfNeeded:0 completion:v28];

      v17 = dispatch_time(0, 250000000);
      dispatch_semaphore_wait(v16, v17);
      _HKInitializeLogging();
      v18 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        v19 = v18;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = objc_opt_class();
          v21 = [dateCopy description];
          [(HKInteractiveChartOverlaySleepViewController(HKSleepStageDayAxisDelegate) *)v20 sleepDaySummaryForDate:v21, buf, v19];
        }
      }

      v22 = v32[5];

      _Block_object_dispose(&v31, 8);
    }

    else
    {
      _HKInitializeLogging();
      v24 = *v5;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(HKInteractiveChartOverlaySleepViewController(HKSleepStageDayAxisDelegate) *)v24 sleepDaySummaryForDate:v10];
      }

      v22 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v23 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      [HKInteractiveChartOverlaySleepViewController(HKSleepStageDayAxisDelegate) sleepDaySummaryForDate:v23];
    }

    v22 = 0;
  }

  return v22;
}

void __100__HKInteractiveChartOverlaySleepViewController_HKSleepStageDayAxisDelegate__sleepDaySummaryForDate___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a4;
  if (a3)
  {
    v8 = [a2 firstObject];
    v9 = [v8 userInfo];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 chartPointInfoProvider];
      v11 = [v10 sleepDaySummaries];
      v12 = [v11 firstObject];
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    else if (v9)
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x1E696B998];
      if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_ERROR))
      {
        __100__HKInteractiveChartOverlaySleepViewController_HKSleepStageDayAxisDelegate__sleepDaySummaryForDate___block_invoke_cold_2(a1, v16);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x1E696B998];
    if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_ERROR))
    {
      __100__HKInteractiveChartOverlaySleepViewController_HKSleepStageDayAxisDelegate__sleepDaySummaryForDate___block_invoke_cold_1(a1, v15, v7);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __100__HKInteractiveChartOverlaySleepViewController_HKSleepStageDayAxisDelegate__sleepDaySummaryForDate___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a3;
  v5 = v7;
  _os_log_error_impl(&dword_1C3942000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error fetching cached data for sleep stage day axis %{public}@", &v6, 0x16u);
}

void __100__HKInteractiveChartOverlaySleepViewController_HKSleepStageDayAxisDelegate__sleepDaySummaryForDate___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&dword_1C3942000, v2, OS_LOG_TYPE_ERROR, "[%{public}@] Fetched user info was of wrong type, expected HKSleepChartPointUserInfo", &v4, 0xCu);
}

@end