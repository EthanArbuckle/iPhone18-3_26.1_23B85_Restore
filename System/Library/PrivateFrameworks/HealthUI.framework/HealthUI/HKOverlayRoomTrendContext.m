@interface HKOverlayRoomTrendContext
+ (id)findInitialDateFromTrendModel:(id)a3;
+ (int64_t)findStartingTimeScopeFromTrendModel:(id)a3;
- (BOOL)_timeScopeHasTrendSpans:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HKOverlayRoomTrendContext)initWithBaseDisplayType:(id)a3 trendModel:(id)a4 overlayChartController:(id)a5 applicationItems:(id)a6 overlayMode:(int64_t)a7;
- (id)_adjustTrendValueRange:(id)a3 timescope:(int64_t)a4 calendar:(id)a5;
- (id)_buildAnnotatedHorizontalLineSeriesUsingDisplayType:(id)a3 unitController:(id)a4;
- (id)_buildTrendDisplayTypeFromModel:(id)a3 baseDisplayType:(id)a4 unitController:(id)a5;
- (id)_buildTrendOverlayValueFormatterUsingDisplayType:(id)a3 unitController:(id)a4;
- (id)_buildTrendingLineSeriesStyleWithColor:(id)a3 formattingDisplayType:(id)a4 unitController:(id)a5 annotationFormatter:(id)a6;
- (id)_durationContextItemWithSummaryPhrase:(id)a3 timeScope:(int64_t)a4;
- (id)_representativeDisplayTypeFromDisplayType:(id)a3;
- (id)_summaryGivenChartPoints:(id)a3 timeScope:(int64_t)a4;
- (id)_trendTitle;
- (id)_trendValueRangeForTimescope:(int64_t)a3 calendar:(id)a4;
- (id)_unselectedMetricColorsUserInteractive:(BOOL)a3;
- (void)overlayStateDidChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation HKOverlayRoomTrendContext

- (HKOverlayRoomTrendContext)initWithBaseDisplayType:(id)a3 trendModel:(id)a4 overlayChartController:(id)a5 applicationItems:(id)a6 overlayMode:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v26.receiver = self;
  v26.super_class = HKOverlayRoomTrendContext;
  v16 = [(HKOverlayRoomTrendContext *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_trendModel, a4);
    v18 = [v15 unitController];
    v19 = [(HKOverlayRoomTrendContext *)v17 _buildTrendDisplayTypeFromModel:v13 baseDisplayType:v12 unitController:v18];
    trendDisplayType = v17->_trendDisplayType;
    v17->_trendDisplayType = v19;

    objc_storeStrong(&v17->_overlayChartController, a5);
    v17->_categoryIdentifier = [v12 categoryIdentifier];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v12 baseDisplayType];
      v17->_categoryIdentifier = [v21 categoryIdentifier];
    }

    v17->_overlayMode = a7;
    v22 = [(HKOverlayRoomTrendContext *)v17 _durationContextItemWithSummaryPhrase:&stru_1F42FFBE0 timeScope:4];
    lastUpdatedItem = v17->_lastUpdatedItem;
    v17->_lastUpdatedItem = v22;

    seriesForSelectedTrend = v17->_seriesForSelectedTrend;
    v17->_seriesForSelectedTrend = 0;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (self == v4);
}

+ (int64_t)findStartingTimeScopeFromTrendModel:(id)a3
{
  v3 = a3;
  if ([v3 selectTrendInitially] && (objc_msgSend(v3, "timeScopeTrends"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "firstObject"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [v3 timeScopeTrends];
    v7 = [v6 firstObject];
    v8 = [v7 timeScope];
  }

  else
  {
    v8 = 8;
  }

  return v8;
}

+ (id)findInitialDateFromTrendModel:(id)a3
{
  v3 = a3;
  v4 = [v3 timeScopeTrends];
  v5 = [v4 firstObject];
  v6 = [v5 trendSpans];
  v7 = [v6 firstObject];
  v8 = [v7 trendDateInterval];

  LODWORD(v4) = [v3 selectTrendInitially];
  v9 = 0;
  if (v4 && v8)
  {
    v9 = [v8 endDate];
  }

  return v9;
}

- (id)_buildTrendDisplayTypeFromModel:(id)a3 baseDisplayType:(id)a4 unitController:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(HKOverlayRoomTrendContext *)self _representativeDisplayTypeFromDisplayType:a4];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__HKOverlayRoomTrendContext__buildTrendDisplayTypeFromModel_baseDisplayType_unitController___block_invoke;
  aBlock[3] = &unk_1E81B6DF8;
  v26 = v8;
  v11 = v10;
  v27 = v11;
  v12 = v8;
  v13 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __92__HKOverlayRoomTrendContext__buildTrendDisplayTypeFromModel_baseDisplayType_unitController___block_invoke_2;
  v23[3] = &unk_1E81B6E20;
  v24 = v11;
  v14 = v11;
  v15 = _Block_copy(v23);
  v16 = [[HKFixedValueDateSpanDataSource alloc] initWithTrendModel:v9 preferredUnitBlock:v13 fixedValueScalingBlock:v15];

  v17 = [(HKOverlayRoomTrendContext *)self _buildAnnotatedHorizontalLineSeriesUsingDisplayType:v14 unitController:v12];
  [v17 setDataSource:v16];
  v18 = [(HKOverlayRoomTrendContext *)self _buildTrendOverlayValueFormatterUsingDisplayType:v14 unitController:v12];
  v19 = [HKInteractiveChartDisplayType alloc];
  v20 = [v14 objectType];
  v21 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:](v19, "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", v17, v14, v18, [v20 code]);

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

- (id)_representativeDisplayTypeFromDisplayType:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v3;
  v6 = v5;
  v7 = v5;
  if (isKindOfClass)
  {
    v8 = [v5 baseDisplayType];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }

    v7 = v10;
  }

  return v7;
}

- (id)_buildTrendOverlayValueFormatterUsingDisplayType:(id)a3 unitController:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HKInteractiveChartTrendOverlayFormatter);
  v8 = [MEMORY[0x1E69DB878] hk_chartLollipopValueFont];
  [(HKInteractiveChartDataFormatter *)v7 setMajorFont:v8];

  v9 = [MEMORY[0x1E69DB878] hk_chartLollipopKeyFont];
  [(HKInteractiveChartDataFormatter *)v7 setMinorFont:v9];

  [(HKInteractiveChartDataFormatter *)v7 setUnitController:v5];
  [(HKInteractiveChartDataFormatter *)v7 setDisplayType:v6];

  return v7;
}

- (id)_buildAnnotatedHorizontalLineSeriesUsingDisplayType:(id)a3 unitController:(id)a4
{
  v28[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v26 = objc_alloc_init(HKAnnotatedHorizontalLineSeries);
  v8 = [MEMORY[0x1E69DC888] systemGrayColor];
  v9 = [MEMORY[0x1E69DC888] hk_appKeyColor];
  v25 = [(HKOverlayRoomTrendContext *)self _representativeDisplayTypeFromDisplayType:v6];
  v10 = +[HKDisplayCategory categoryWithID:](HKDisplayCategory, "categoryWithID:", [v25 categoryIdentifier]);
  v24 = v10;
  if (v10)
  {
    v11 = [v10 color];

    v9 = v11;
  }

  v12 = v6;
  objc_opt_class();
  v13 = v12;
  if (objc_opt_isKindOfClass())
  {
    v14 = v12;
    v15 = [v14 baseDisplayType];

    v13 = v14;
    if (v15)
    {
      v13 = [v14 baseDisplayType];
    }
  }

  v16 = [[HKDisplayTypeNumberFormatter alloc] initWithDisplayType:v13 unitController:v7];
  v17 = [[HKUnitlessNumberFormatter alloc] initWithDisplayType:v13 unitPreferenceController:v7];
  [(HKOverlayRoomTrendContext *)self _buildTrendingLineSeriesStyleWithColor:v9 formattingDisplayType:v13 unitController:v7 annotationFormatter:v17];
  v18 = v23 = v12;
  v19 = [(HKOverlayRoomTrendContext *)self _buildTrendingLineSeriesStyleWithColor:v8 formattingDisplayType:v13 unitController:v7 annotationFormatter:v16];
  v20 = [(HKOverlayRoomTrendContext *)self _buildTrendingLineSeriesStyleWithColor:v9 formattingDisplayType:v13 unitController:v7 annotationFormatter:v16];

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

- (id)_buildTrendingLineSeriesStyleWithColor:(id)a3 formattingDisplayType:(id)a4 unitController:(id)a5 annotationFormatter:(id)a6
{
  v7 = a3;
  v8 = a6;
  v9 = objc_alloc_init(HKStrokeStyle);
  [(HKStrokeStyle *)v9 setStrokeColor:v7];
  [(HKStrokeStyle *)v9 setLineWidth:4.0];
  [(HKStrokeStyle *)v9 setLineCap:1];
  [(HKStrokeStyle *)v9 setLineJoin:1];
  [(HKStrokeStyle *)v9 setDashStyle:0];
  v10 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v11 = [v10 userInterfaceStyle];
  if (v11 <= 2)
  {
    [(HKStrokeStyle *)v9 setBlendMode:dword_1C3D5D300[v11]];
  }

  v12 = [MEMORY[0x1E69DB878] hk_preferredRoundedFontForTextStyle:*MEMORY[0x1E69DDD28] additionalSymbolicTraits:2];
  v13 = [HKAxisLabelStyle labelStyleWithColor:v7 font:v12 horizontalAlignment:0 verticalAlignment:2 numberFormatter:v8];

  v14 = objc_alloc_init(HKAnnotationHorizontalLineSeriesStyle);
  [(HKAnnotationHorizontalLineSeriesStyle *)v14 setLineStrokeStyle:v9];
  [(HKAnnotationHorizontalLineSeriesStyle *)v14 setValueStyle:v13];

  return v14;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v10 = a3;
  v11 = a7;
  v12 = [(HKOverlayRoomTrendContext *)self trendDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [(HKOverlayRoomTrendContext *)self trendDisplayType];
    v15 = [(HKOverlayRoomTrendContext *)self overlayChartController];
    v16 = [v14 graphSeriesForTimeScope:a5];
    v17 = [v10 startDate];
    v18 = [v10 endDate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __112__HKOverlayRoomTrendContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
    v19[3] = &unk_1E81B6E70;
    v19[4] = self;
    v21 = a5;
    v20 = v11;
    [v15 cachedDataForCustomGraphSeries:v16 timeScope:a5 resolution:0 startDate:v17 endDate:v18 completion:v19];
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

- (void)overlayStateDidChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5
{
  v5 = a3;
  v14 = a5;
  v7 = [v14 selectedTimeScopeController];
  v8 = [v7 selectedTimeScope];

  if (v5)
  {
    v9 = [v14 fixedRangeForTimeScope:v8];

    if (!v9)
    {
      v10 = [v14 currentCalendar];
      v11 = [(HKOverlayRoomTrendContext *)self _trendValueRangeForTimescope:v8 calendar:v10];

      if (v11)
      {
        [v14 scrollToRange:v11 withVisibleAlignment:1];
      }
    }

    v12 = [(HKOverlayRoomTrendContext *)self trendDisplayType];
    v13 = [v12 graphSeriesForTimeScope:v8];
    [(HKOverlayRoomTrendContext *)self setSeriesForSelectedTrend:v13];
  }

  else
  {
    [(HKOverlayRoomTrendContext *)self setSeriesForSelectedTrend:0];
  }
}

- (id)_trendValueRangeForTimescope:(int64_t)a3 calendar:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v31 = a4;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = [(HKOverlayRoomTrendContext *)self trendModel];
  v5 = [v4 timeScopeTrends];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
        if ([v11 timeScope] == a3)
        {
          v28 = v10;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v29 = [v11 trendSpans];
          v12 = [v29 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
                  objc_enumerationMutation(v29);
                }

                v16 = *(*(&v33 + 1) + 8 * i);
                v17 = [v16 trendDateInterval];
                v18 = [v17 startDate];
                v19 = [v16 trendDateInterval];
                v20 = [v19 endDate];
                v21 = [HKValueRange valueRangeWithMinValue:v18 maxValue:v20];

                v22 = [(HKOverlayRoomTrendContext *)self _adjustTrendValueRange:v21 timescope:a3 calendar:v31];
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

              v13 = [v29 countByEnumeratingWithState:&v33 objects:v41 count:16];
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

- (id)_adjustTrendValueRange:(id)a3 timescope:(int64_t)a4 calendar:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (a4 == 4)
  {
    v20 = [v9 endDate];
    v21 = [v11 hk_startOfDateByAddingDays:0 toDate:v20];

    v22 = [v9 endDate];
    v23 = [v21 hk_isBeforeDate:v22];

    if (v23)
    {
      v24 = [v9 endDate];
      v18 = [v11 hk_startOfDateByAddingDays:1 toDate:v24];

      v25 = [v9 endDate];
      LODWORD(v24) = [v18 hk_isBeforeDate:v25];

      if (v24)
      {
        [HKOverlayRoomTrendContext _adjustTrendValueRange:a2 timescope:self calendar:?];
      }
    }

    else
    {
      v18 = v21;
    }

    v27 = [v11 hk_startOfDateByAddingDays:-31 toDate:v18];
    v29 = [v9 startDate];
    v30 = [v11 hk_startOfDateByAddingDays:0 toDate:v29];
  }

  else
  {
    if (a4 != 3)
    {
      v26 = 0;
      goto LABEL_17;
    }

    v12 = [v10 firstWeekday];
    v13 = [v9 endDate];
    v14 = [v11 hk_startOfWeekWithFirstWeekday:v12 beforeDate:v13 addingWeeks:0];

    v15 = [v9 endDate];
    LODWORD(v13) = [v14 hk_isBeforeDate:v15];

    if (v13)
    {
      v16 = [v11 firstWeekday];
      v17 = [v9 endDate];
      v18 = [v11 hk_startOfWeekWithFirstWeekday:v16 beforeDate:v17 addingWeeks:1];

      v19 = [v9 endDate];
      LODWORD(v17) = [v18 hk_isBeforeDate:v19];

      if (v17)
      {
        [HKOverlayRoomTrendContext _adjustTrendValueRange:a2 timescope:self calendar:?];
      }
    }

    else
    {
      v18 = v14;
    }

    v27 = [v11 hk_startOfWeekWithFirstWeekday:objc_msgSend(v11 beforeDate:"firstWeekday") addingWeeks:{v18, -26}];
    v28 = [v11 firstWeekday];
    v29 = [v9 startDate];
    v30 = [v11 hk_startOfWeekWithFirstWeekday:v28 beforeDate:v29 addingWeeks:0];
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

- (id)_summaryGivenChartPoints:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  if ([(HKOverlayRoomTrendContext *)self _timeScopeMayHaveTrends:a4])
  {
    v7 = [v6 firstObject];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = MEMORY[0x1E696AAE8];
      v9 = v7;
      v10 = [v8 bundleWithIdentifier:@"com.apple.HealthUI"];
      v11 = [v9 localizableTrendDescription];

      v12 = [v10 localizedStringForKey:v11 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    }

    else
    {
      v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v12 = [v10 localizedStringForKey:@"TREND_UNAVAILABLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = [v7 localizedStringForKey:@"TREND_NOT_COMPUTED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  return v12;
}

- (id)_durationContextItemWithSummaryPhrase:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(HKDisplayTypeContextItem);
  v8 = [(HKOverlayRoomTrendContext *)self _trendTitle];
  [(HKDisplayTypeContextItem *)v7 setTitle:v8];

  v9 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:@"Trend"];
  [(HKDisplayTypeContextItem *)v7 setAccessibilityIdentifier:v9];

  [(HKDisplayTypeContextItem *)v7 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v7 setUnit:&stru_1F42FFBE0];
  [(HKDisplayTypeContextItem *)v7 setValue:v6];

  [(HKDisplayTypeContextItem *)v7 setUserInteractive:[(HKOverlayRoomTrendContext *)self _timeScopeMayHaveTrends:a4]];
  v10 = [(HKOverlayRoomTrendContext *)self _unselectedMetricColorsUserInteractive:[(HKDisplayTypeContextItem *)v7 userInteractive]];
  [(HKDisplayTypeContextItem *)v7 setMetricColors:v10];

  v11 = [HKOverlayContextUtilities selectedMetricColorsForCategory:[(HKOverlayRoomTrendContext *)self categoryIdentifier]];
  [(HKDisplayTypeContextItem *)v7 setSelectedMetricColors:v11];

  return v7;
}

- (id)_unselectedMetricColorsUserInteractive:(BOOL)a3
{
  v5 = [(HKOverlayRoomTrendContext *)self overlayMode];
  if (v5 >= 3)
  {
    if (v5 != 3)
    {
      goto LABEL_9;
    }

    if (a3)
    {
      v6 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
      goto LABEL_7;
    }
  }

  else if (a3)
  {
    v6 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
LABEL_7:
    v7 = v6;
    v3 = [HKUIMetricColors defaultContextViewColorsUsingColor:v6];

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

- (BOOL)_timeScopeHasTrendSpans:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(HKOverlayRoomTrendContext *)self trendModel];
  v5 = [v4 timeScopeTrends];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 timeScope] == a3)
        {
          v11 = [v10 trendSpans];
          v12 = [v11 count];

          if (v12)
          {
            v13 = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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