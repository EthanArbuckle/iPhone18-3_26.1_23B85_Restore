@interface HKOverlayRoomTrendContext
+ (id)findInitialDateFromTrendModel:(id)model;
+ (int64_t)findStartingTimeScopeFromTrendModel:(id)model;
- (BOOL)_timeScopeHasTrendSpans:(int64_t)spans;
- (BOOL)isEqual:(id)equal;
- (HKOverlayRoomTrendContext)initWithBaseDisplayType:(id)type trendModel:(id)model overlayChartController:(id)controller applicationItems:(id)items overlayMode:(int64_t)mode;
- (id)_adjustTrendValueRange:(id)range timescope:(int64_t)timescope calendar:(id)calendar;
- (id)_buildAnnotatedHorizontalLineSeriesUsingDisplayType:(id)type unitController:(id)controller;
- (id)_buildTrendDisplayTypeFromModel:(id)model baseDisplayType:(id)type unitController:(id)controller;
- (id)_buildTrendOverlayValueFormatterUsingDisplayType:(id)type unitController:(id)controller;
- (id)_buildTrendingLineSeriesStyleWithColor:(id)color formattingDisplayType:(id)type unitController:(id)controller annotationFormatter:(id)formatter;
- (id)_durationContextItemWithSummaryPhrase:(id)phrase timeScope:(int64_t)scope;
- (id)_representativeDisplayTypeFromDisplayType:(id)type;
- (id)_summaryGivenChartPoints:(id)points timeScope:(int64_t)scope;
- (id)_trendTitle;
- (id)_trendValueRangeForTimescope:(int64_t)timescope calendar:(id)calendar;
- (id)_unselectedMetricColorsUserInteractive:(BOOL)interactive;
- (void)overlayStateDidChange:(BOOL)change contextItem:(id)item chartController:(id)controller;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation HKOverlayRoomTrendContext

- (HKOverlayRoomTrendContext)initWithBaseDisplayType:(id)type trendModel:(id)model overlayChartController:(id)controller applicationItems:(id)items overlayMode:(int64_t)mode
{
  typeCopy = type;
  modelCopy = model;
  controllerCopy = controller;
  itemsCopy = items;
  v26.receiver = self;
  v26.super_class = HKOverlayRoomTrendContext;
  v16 = [(HKOverlayRoomTrendContext *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_trendModel, model);
    unitController = [itemsCopy unitController];
    v19 = [(HKOverlayRoomTrendContext *)v17 _buildTrendDisplayTypeFromModel:modelCopy baseDisplayType:typeCopy unitController:unitController];
    trendDisplayType = v17->_trendDisplayType;
    v17->_trendDisplayType = v19;

    objc_storeStrong(&v17->_overlayChartController, controller);
    v17->_categoryIdentifier = [typeCopy categoryIdentifier];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      baseDisplayType = [typeCopy baseDisplayType];
      v17->_categoryIdentifier = [baseDisplayType categoryIdentifier];
    }

    v17->_overlayMode = mode;
    v22 = [(HKOverlayRoomTrendContext *)v17 _durationContextItemWithSummaryPhrase:&stru_1F42FFBE0 timeScope:4];
    lastUpdatedItem = v17->_lastUpdatedItem;
    v17->_lastUpdatedItem = v22;

    seriesForSelectedTrend = v17->_seriesForSelectedTrend;
    v17->_seriesForSelectedTrend = 0;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (self == equalCopy);
}

+ (int64_t)findStartingTimeScopeFromTrendModel:(id)model
{
  modelCopy = model;
  if ([modelCopy selectTrendInitially] && (objc_msgSend(modelCopy, "timeScopeTrends"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "firstObject"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    timeScopeTrends = [modelCopy timeScopeTrends];
    firstObject = [timeScopeTrends firstObject];
    timeScope = [firstObject timeScope];
  }

  else
  {
    timeScope = 8;
  }

  return timeScope;
}

+ (id)findInitialDateFromTrendModel:(id)model
{
  modelCopy = model;
  timeScopeTrends = [modelCopy timeScopeTrends];
  firstObject = [timeScopeTrends firstObject];
  trendSpans = [firstObject trendSpans];
  firstObject2 = [trendSpans firstObject];
  trendDateInterval = [firstObject2 trendDateInterval];

  LODWORD(timeScopeTrends) = [modelCopy selectTrendInitially];
  endDate = 0;
  if (timeScopeTrends && trendDateInterval)
  {
    endDate = [trendDateInterval endDate];
  }

  return endDate;
}

- (id)_buildTrendDisplayTypeFromModel:(id)model baseDisplayType:(id)type unitController:(id)controller
{
  controllerCopy = controller;
  modelCopy = model;
  v10 = [(HKOverlayRoomTrendContext *)self _representativeDisplayTypeFromDisplayType:type];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__HKOverlayRoomTrendContext__buildTrendDisplayTypeFromModel_baseDisplayType_unitController___block_invoke;
  aBlock[3] = &unk_1E81B6DF8;
  v26 = controllerCopy;
  v11 = v10;
  v27 = v11;
  v12 = controllerCopy;
  v13 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __92__HKOverlayRoomTrendContext__buildTrendDisplayTypeFromModel_baseDisplayType_unitController___block_invoke_2;
  v23[3] = &unk_1E81B6E20;
  v24 = v11;
  v14 = v11;
  v15 = _Block_copy(v23);
  v16 = [[HKFixedValueDateSpanDataSource alloc] initWithTrendModel:modelCopy preferredUnitBlock:v13 fixedValueScalingBlock:v15];

  v17 = [(HKOverlayRoomTrendContext *)self _buildAnnotatedHorizontalLineSeriesUsingDisplayType:v14 unitController:v12];
  [v17 setDataSource:v16];
  v18 = [(HKOverlayRoomTrendContext *)self _buildTrendOverlayValueFormatterUsingDisplayType:v14 unitController:v12];
  v19 = [HKInteractiveChartDisplayType alloc];
  objectType = [v14 objectType];
  v21 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:](v19, "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", v17, v14, v18, [objectType code]);

  return v21;
}

id __92__HKOverlayRoomTrendContext__buildTrendDisplayTypeFromModel_baseDisplayType_unitController___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 presentation];
  v5 = [v4 adjustedValueForDaemonValue:v3];

  return v5;
}

- (id)_representativeDisplayTypeFromDisplayType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = typeCopy;
  v6 = v5;
  v7 = v5;
  if (isKindOfClass)
  {
    baseDisplayType = [v5 baseDisplayType];
    v9 = baseDisplayType;
    if (baseDisplayType)
    {
      v10 = baseDisplayType;
    }

    else
    {
      v10 = v6;
    }

    v7 = v10;
  }

  return v7;
}

- (id)_buildTrendOverlayValueFormatterUsingDisplayType:(id)type unitController:(id)controller
{
  controllerCopy = controller;
  typeCopy = type;
  v7 = objc_alloc_init(HKInteractiveChartTrendOverlayFormatter);
  hk_chartLollipopValueFont = [MEMORY[0x1E69DB878] hk_chartLollipopValueFont];
  [(HKInteractiveChartDataFormatter *)v7 setMajorFont:hk_chartLollipopValueFont];

  hk_chartLollipopKeyFont = [MEMORY[0x1E69DB878] hk_chartLollipopKeyFont];
  [(HKInteractiveChartDataFormatter *)v7 setMinorFont:hk_chartLollipopKeyFont];

  [(HKInteractiveChartDataFormatter *)v7 setUnitController:controllerCopy];
  [(HKInteractiveChartDataFormatter *)v7 setDisplayType:typeCopy];

  return v7;
}

- (id)_buildAnnotatedHorizontalLineSeriesUsingDisplayType:(id)type unitController:(id)controller
{
  v28[3] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  controllerCopy = controller;
  v26 = objc_alloc_init(HKAnnotatedHorizontalLineSeries);
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  hk_appKeyColor = [MEMORY[0x1E69DC888] hk_appKeyColor];
  v25 = [(HKOverlayRoomTrendContext *)self _representativeDisplayTypeFromDisplayType:typeCopy];
  v10 = +[HKDisplayCategory categoryWithID:](HKDisplayCategory, "categoryWithID:", [v25 categoryIdentifier]);
  v24 = v10;
  if (v10)
  {
    color = [v10 color];

    hk_appKeyColor = color;
  }

  v12 = typeCopy;
  objc_opt_class();
  baseDisplayType2 = v12;
  if (objc_opt_isKindOfClass())
  {
    v14 = v12;
    baseDisplayType = [v14 baseDisplayType];

    baseDisplayType2 = v14;
    if (baseDisplayType)
    {
      baseDisplayType2 = [v14 baseDisplayType];
    }
  }

  v16 = [[HKDisplayTypeNumberFormatter alloc] initWithDisplayType:baseDisplayType2 unitController:controllerCopy];
  v17 = [[HKUnitlessNumberFormatter alloc] initWithDisplayType:baseDisplayType2 unitPreferenceController:controllerCopy];
  [(HKOverlayRoomTrendContext *)self _buildTrendingLineSeriesStyleWithColor:hk_appKeyColor formattingDisplayType:baseDisplayType2 unitController:controllerCopy annotationFormatter:v17];
  v18 = v23 = v12;
  v19 = [(HKOverlayRoomTrendContext *)self _buildTrendingLineSeriesStyleWithColor:systemGrayColor formattingDisplayType:baseDisplayType2 unitController:controllerCopy annotationFormatter:v16];
  v20 = [(HKOverlayRoomTrendContext *)self _buildTrendingLineSeriesStyleWithColor:hk_appKeyColor formattingDisplayType:baseDisplayType2 unitController:controllerCopy annotationFormatter:v16];

  v27[0] = &unk_1F43823C8;
  v27[1] = &unk_1F43823E0;
  v28[0] = v20;
  v28[1] = v18;
  v27[2] = &unk_1F43823F8;
  v28[2] = v19;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
  [(HKAnnotatedHorizontalLineSeries *)v26 setHorizontalLineStyles:v21];

  [(HKAnnotatedHorizontalLineSeries *)v26 setValueOutlineWidth:0.0];

  return v26;
}

- (id)_buildTrendingLineSeriesStyleWithColor:(id)color formattingDisplayType:(id)type unitController:(id)controller annotationFormatter:(id)formatter
{
  colorCopy = color;
  formatterCopy = formatter;
  v9 = objc_alloc_init(HKStrokeStyle);
  [(HKStrokeStyle *)v9 setStrokeColor:colorCopy];
  [(HKStrokeStyle *)v9 setLineWidth:4.0];
  [(HKStrokeStyle *)v9 setLineCap:1];
  [(HKStrokeStyle *)v9 setLineJoin:1];
  [(HKStrokeStyle *)v9 setDashStyle:0];
  currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  userInterfaceStyle = [currentTraitCollection userInterfaceStyle];
  if (userInterfaceStyle <= 2)
  {
    [(HKStrokeStyle *)v9 setBlendMode:dword_1C3D5D300[userInterfaceStyle]];
  }

  v12 = [MEMORY[0x1E69DB878] hk_preferredRoundedFontForTextStyle:*MEMORY[0x1E69DDD28] additionalSymbolicTraits:2];
  v13 = [HKAxisLabelStyle labelStyleWithColor:colorCopy font:v12 horizontalAlignment:0 verticalAlignment:2 numberFormatter:formatterCopy];

  v14 = objc_alloc_init(HKAnnotationHorizontalLineSeriesStyle);
  [(HKAnnotationHorizontalLineSeriesStyle *)v14 setLineStrokeStyle:v9];
  [(HKAnnotationHorizontalLineSeriesStyle *)v14 setValueStyle:v13];

  return v14;
}

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  intervalCopy = interval;
  completionCopy = completion;
  trendDisplayType = [(HKOverlayRoomTrendContext *)self trendDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    trendDisplayType2 = [(HKOverlayRoomTrendContext *)self trendDisplayType];
    overlayChartController = [(HKOverlayRoomTrendContext *)self overlayChartController];
    v16 = [trendDisplayType2 graphSeriesForTimeScope:scope];
    startDate = [intervalCopy startDate];
    endDate = [intervalCopy endDate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __112__HKOverlayRoomTrendContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
    v19[3] = &unk_1E81B6E70;
    v19[4] = self;
    scopeCopy = scope;
    v20 = completionCopy;
    [overlayChartController cachedDataForCustomGraphSeries:v16 timeScope:scope resolution:0 startDate:startDate endDate:endDate completion:v19];
  }
}

void __112__HKOverlayRoomTrendContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke(void *a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __112__HKOverlayRoomTrendContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_2;
  v12[3] = &unk_1E81B6E48;
  v17 = a3;
  v9 = a1[5];
  v12[4] = a1[4];
  v13 = v7;
  v16 = a1[6];
  v14 = v8;
  v15 = v9;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __112__HKOverlayRoomTrendContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v4 = [*(a1 + 32) _summaryGivenChartPoints:*(a1 + 40) timeScope:*(a1 + 64)];
    v2 = [*(a1 + 32) _durationContextItemWithSummaryPhrase:v4 timeScope:*(a1 + 64)];
    [*(a1 + 32) setLastUpdatedItem:v2];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }
}

- (void)overlayStateDidChange:(BOOL)change contextItem:(id)item chartController:(id)controller
{
  changeCopy = change;
  controllerCopy = controller;
  selectedTimeScopeController = [controllerCopy selectedTimeScopeController];
  selectedTimeScope = [selectedTimeScopeController selectedTimeScope];

  if (changeCopy)
  {
    v9 = [controllerCopy fixedRangeForTimeScope:selectedTimeScope];

    if (!v9)
    {
      currentCalendar = [controllerCopy currentCalendar];
      v11 = [(HKOverlayRoomTrendContext *)self _trendValueRangeForTimescope:selectedTimeScope calendar:currentCalendar];

      if (v11)
      {
        [controllerCopy scrollToRange:v11 withVisibleAlignment:1];
      }
    }

    trendDisplayType = [(HKOverlayRoomTrendContext *)self trendDisplayType];
    v13 = [trendDisplayType graphSeriesForTimeScope:selectedTimeScope];
    [(HKOverlayRoomTrendContext *)self setSeriesForSelectedTrend:v13];
  }

  else
  {
    [(HKOverlayRoomTrendContext *)self setSeriesForSelectedTrend:0];
  }
}

- (id)_trendValueRangeForTimescope:(int64_t)timescope calendar:(id)calendar
{
  v43 = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  trendModel = [(HKOverlayRoomTrendContext *)self trendModel];
  timeScopeTrends = [trendModel timeScopeTrends];

  obj = timeScopeTrends;
  v6 = [timeScopeTrends countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v38;
    v25 = *v38;
    do
    {
      v10 = 0;
      v26 = v7;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        if ([v11 timeScope] == timescope)
        {
          v28 = v10;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          trendSpans = [v11 trendSpans];
          v12 = [trendSpans countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v34;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v34 != v14)
                {
                  objc_enumerationMutation(trendSpans);
                }

                v16 = *(*(&v33 + 1) + 8 * i);
                trendDateInterval = [v16 trendDateInterval];
                startDate = [trendDateInterval startDate];
                trendDateInterval2 = [v16 trendDateInterval];
                endDate = [trendDateInterval2 endDate];
                v21 = [HKValueRange valueRangeWithMinValue:startDate maxValue:endDate];

                v22 = [(HKOverlayRoomTrendContext *)self _adjustTrendValueRange:v21 timescope:timescope calendar:calendarCopy];
                v23 = v22;
                if (v8)
                {
                  [v8 unionRange:v22];
                }

                else
                {
                  v8 = v22;
                }
              }

              v13 = [trendSpans countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v13);
          }

          v9 = v25;
          v7 = v26;
          v10 = v28;
        }

        ++v10;
      }

      while (v10 != v7);
      v7 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_adjustTrendValueRange:(id)range timescope:(int64_t)timescope calendar:(id)calendar
{
  rangeCopy = range;
  calendarCopy = calendar;
  v11 = calendarCopy;
  if (timescope == 4)
  {
    endDate = [rangeCopy endDate];
    v21 = [v11 hk_startOfDateByAddingDays:0 toDate:endDate];

    endDate2 = [rangeCopy endDate];
    v23 = [v21 hk_isBeforeDate:endDate2];

    if (v23)
    {
      endDate3 = [rangeCopy endDate];
      v18 = [v11 hk_startOfDateByAddingDays:1 toDate:endDate3];

      endDate4 = [rangeCopy endDate];
      LODWORD(endDate3) = [v18 hk_isBeforeDate:endDate4];

      if (endDate3)
      {
        [HKOverlayRoomTrendContext _adjustTrendValueRange:a2 timescope:self calendar:?];
      }
    }

    else
    {
      v18 = v21;
    }

    v27 = [v11 hk_startOfDateByAddingDays:-31 toDate:v18];
    startDate = [rangeCopy startDate];
    v30 = [v11 hk_startOfDateByAddingDays:0 toDate:startDate];
  }

  else
  {
    if (timescope != 3)
    {
      v26 = 0;
      goto LABEL_17;
    }

    firstWeekday = [calendarCopy firstWeekday];
    endDate5 = [rangeCopy endDate];
    v14 = [v11 hk_startOfWeekWithFirstWeekday:firstWeekday beforeDate:endDate5 addingWeeks:0];

    endDate6 = [rangeCopy endDate];
    LODWORD(endDate5) = [v14 hk_isBeforeDate:endDate6];

    if (endDate5)
    {
      firstWeekday2 = [v11 firstWeekday];
      endDate7 = [rangeCopy endDate];
      v18 = [v11 hk_startOfWeekWithFirstWeekday:firstWeekday2 beforeDate:endDate7 addingWeeks:1];

      endDate8 = [rangeCopy endDate];
      LODWORD(endDate7) = [v18 hk_isBeforeDate:endDate8];

      if (endDate7)
      {
        [HKOverlayRoomTrendContext _adjustTrendValueRange:a2 timescope:self calendar:?];
      }
    }

    else
    {
      v18 = v14;
    }

    v27 = [v11 hk_startOfWeekWithFirstWeekday:objc_msgSend(v11 beforeDate:"firstWeekday") addingWeeks:{v18, -26}];
    firstWeekday3 = [v11 firstWeekday];
    startDate = [rangeCopy startDate];
    v30 = [v11 hk_startOfWeekWithFirstWeekday:firstWeekday3 beforeDate:startDate addingWeeks:0];
  }

  v31 = v30;

  if ([v31 hk_isBeforeDate:v27])
  {
    v32 = v27;

    v31 = v32;
  }

  v26 = [HKValueRange valueRangeWithMinValue:v31 maxValue:v18];

LABEL_17:

  return v26;
}

- (id)_summaryGivenChartPoints:(id)points timeScope:(int64_t)scope
{
  pointsCopy = points;
  if ([(HKOverlayRoomTrendContext *)self _timeScopeMayHaveTrends:scope])
  {
    firstObject = [pointsCopy firstObject];
    if (firstObject && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = MEMORY[0x1E696AAE8];
      v9 = firstObject;
      v10 = [v8 bundleWithIdentifier:@"com.apple.HealthUI"];
      localizableTrendDescription = [v9 localizableTrendDescription];

      v12 = [v10 localizedStringForKey:localizableTrendDescription value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    }

    else
    {
      v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v12 = [v10 localizedStringForKey:@"TREND_UNAVAILABLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    }
  }

  else
  {
    firstObject = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = [firstObject localizedStringForKey:@"TREND_NOT_COMPUTED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  return v12;
}

- (id)_durationContextItemWithSummaryPhrase:(id)phrase timeScope:(int64_t)scope
{
  phraseCopy = phrase;
  v7 = objc_alloc_init(HKDisplayTypeContextItem);
  _trendTitle = [(HKOverlayRoomTrendContext *)self _trendTitle];
  [(HKDisplayTypeContextItem *)v7 setTitle:_trendTitle];

  v9 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:@"Trend"];
  [(HKDisplayTypeContextItem *)v7 setAccessibilityIdentifier:v9];

  [(HKDisplayTypeContextItem *)v7 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v7 setUnit:&stru_1F42FFBE0];
  [(HKDisplayTypeContextItem *)v7 setValue:phraseCopy];

  [(HKDisplayTypeContextItem *)v7 setUserInteractive:[(HKOverlayRoomTrendContext *)self _timeScopeMayHaveTrends:scope]];
  v10 = [(HKOverlayRoomTrendContext *)self _unselectedMetricColorsUserInteractive:[(HKDisplayTypeContextItem *)v7 userInteractive]];
  [(HKDisplayTypeContextItem *)v7 setMetricColors:v10];

  v11 = [HKOverlayContextUtilities selectedMetricColorsForCategory:[(HKOverlayRoomTrendContext *)self categoryIdentifier]];
  [(HKDisplayTypeContextItem *)v7 setSelectedMetricColors:v11];

  return v7;
}

- (id)_unselectedMetricColorsUserInteractive:(BOOL)interactive
{
  overlayMode = [(HKOverlayRoomTrendContext *)self overlayMode];
  if (overlayMode >= 3)
  {
    if (overlayMode != 3)
    {
      goto LABEL_9;
    }

    if (interactive)
    {
      tertiarySystemBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
      goto LABEL_7;
    }
  }

  else if (interactive)
  {
    tertiarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
LABEL_7:
    v7 = tertiarySystemBackgroundColor;
    v3 = [HKUIMetricColors defaultContextViewColorsUsingColor:tertiarySystemBackgroundColor];

    goto LABEL_9;
  }

  v3 = +[HKUIMetricColors disabledContextViewColor];
LABEL_9:

  return v3;
}

- (id)_trendTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"TREND_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (BOOL)_timeScopeHasTrendSpans:(int64_t)spans
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  trendModel = [(HKOverlayRoomTrendContext *)self trendModel];
  timeScopeTrends = [trendModel timeScopeTrends];

  v6 = [timeScopeTrends countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(timeScopeTrends);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 timeScope] == spans)
        {
          trendSpans = [v10 trendSpans];
          v12 = [trendSpans count];

          if (v12)
          {
            v13 = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [timeScopeTrends countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (void)_adjustTrendValueRange:(uint64_t)a1 timescope:(uint64_t)a2 calendar:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOverlayRoomTrendContext.m" lineNumber:358 description:@"Trend end date computation failure"];
}

- (void)_adjustTrendValueRange:(uint64_t)a1 timescope:(uint64_t)a2 calendar:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOverlayRoomTrendContext.m" lineNumber:372 description:@"Trend end date computation failure"];
}

@end