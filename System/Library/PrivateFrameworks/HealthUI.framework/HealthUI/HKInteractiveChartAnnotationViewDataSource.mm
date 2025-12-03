@interface HKInteractiveChartAnnotationViewDataSource
- (BOOL)_isMultiSelectionDateRange;
- (HKCurrentValueViewDataSourceDelegate)currentValueViewDataSourceDelegate;
- (HKInteractiveChartAnnotationViewDataSource)initWithSelectedRangeFormatter:(id)formatter firstWeekday:(int64_t)weekday currentValueViewDataSourceDelegate:(id)delegate;
- (id)_dateRangeFromSelectionContext:(id)context timeScope:(int64_t)scope;
- (id)_weeksContainingDateRange:(id)range;
- (id)dateViewWithOrientation:(int64_t)orientation;
- (id)valueViewForColumnAtIndex:(int64_t)index orientation:(int64_t)orientation;
- (void)_buildDateLabels;
- (void)_updateDateTextWithTimeScope:(int64_t)scope resolution:(int64_t)resolution;
- (void)updateWithSelectionContext:(id)context displayType:(id)type timeScope:(int64_t)scope resolution:(int64_t)resolution healthStore:(id)store viewController:(id)controller;
@end

@implementation HKInteractiveChartAnnotationViewDataSource

- (HKInteractiveChartAnnotationViewDataSource)initWithSelectedRangeFormatter:(id)formatter firstWeekday:(int64_t)weekday currentValueViewDataSourceDelegate:(id)delegate
{
  formatterCopy = formatter;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = HKInteractiveChartAnnotationViewDataSource;
  v11 = [(HKInteractiveChartAnnotationViewDataSource *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_selectedRangeFormatter, formatter);
    v12->_firstWeekday = weekday;
    objc_storeWeak(&v12->_currentValueViewDataSourceDelegate, delegateCopy);
    hk_chartCurrentValueValueFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueValueFont];
    [(HKInteractiveChartAnnotationViewDataSource *)v12 setMajorFont:hk_chartCurrentValueValueFont];

    hk_chartCurrentValueUnitFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueUnitFont];
    [(HKInteractiveChartAnnotationViewDataSource *)v12 setMinorFont:hk_chartCurrentValueUnitFont];

    [(HKInteractiveChartAnnotationViewDataSource *)v12 _buildDateLabels];
  }

  return v12;
}

- (void)_buildDateLabels
{
  hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKInteractiveChartAnnotationViewDataSource *)self setMainDateLabel:v3];

  mainDateLabel = [(HKInteractiveChartAnnotationViewDataSource *)self mainDateLabel];
  [mainDateLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  hk_chartCurrentValueDateFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueDateFont];
  mainDateLabel2 = [(HKInteractiveChartAnnotationViewDataSource *)self mainDateLabel];
  [mainDateLabel2 setFont:hk_chartCurrentValueDateFont];

  v7 = hk_chartLollipopLabelColor;
  if (!hk_chartLollipopLabelColor)
  {
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.6];
  }

  mainDateLabel3 = [(HKInteractiveChartAnnotationViewDataSource *)self mainDateLabel];
  [mainDateLabel3 setTextColor:v7];

  if (!hk_chartLollipopLabelColor)
  {
  }

  mainDateLabel4 = [(HKInteractiveChartAnnotationViewDataSource *)self mainDateLabel];
  [mainDateLabel4 setBaselineAdjustment:1];
}

- (id)dateViewWithOrientation:(int64_t)orientation
{
  lastCombinedDateString = [(HKInteractiveChartAnnotationViewDataSource *)self lastCombinedDateString];
  mainDateLabel = [(HKInteractiveChartAnnotationViewDataSource *)self mainDateLabel];
  [mainDateLabel setText:lastCombinedDateString];

  if (!orientation)
  {
    _HKInitializeLogging();
    v7 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HKInteractiveChartAnnotationViewDataSource dateViewWithOrientation:v7];
    }
  }

  mainDateLabel2 = [(HKInteractiveChartAnnotationViewDataSource *)self mainDateLabel];

  return mainDateLabel2;
}

- (void)_updateDateTextWithTimeScope:(int64_t)scope resolution:(int64_t)resolution
{
  if ([(HKInteractiveChartAnnotationViewDataSource *)self _isMultiSelectionDateRange])
  {
    currentValueViewDataSourceDelegate = [(HKInteractiveChartAnnotationViewDataSource *)self currentValueViewDataSourceDelegate];
    lastDateRange = [(HKInteractiveChartAnnotationViewDataSource *)self lastDateRange];
    v18 = [currentValueViewDataSourceDelegate stringForValueRange:lastDateRange timeScope:scope];

    [(HKInteractiveChartAnnotationViewDataSource *)self setLastUpperDateString:v18];
    [(HKInteractiveChartAnnotationViewDataSource *)self setLastLowerDateString:0];
    [(HKInteractiveChartAnnotationViewDataSource *)self setLastCombinedDateString:v18];
  }

  else
  {
    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    lastDateRange2 = [(HKInteractiveChartAnnotationViewDataSource *)self lastDateRange];
    startDate = [lastDateRange2 startDate];
    v18 = [hk_gregorianCalendarWithLocalTimeZone components:126 fromDate:startDate];

    hk_gregorianCalendarWithLocalTimeZone2 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v13 = HKUpperStringForAnnotationDateWithTimeScope(v18, hk_gregorianCalendarWithLocalTimeZone2, scope);
    [(HKInteractiveChartAnnotationViewDataSource *)self setLastUpperDateString:v13];

    hk_gregorianCalendarWithLocalTimeZone3 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v15 = HKLowerStringForAnnotationDateWithTimeScope(v18, hk_gregorianCalendarWithLocalTimeZone3, scope);
    [(HKInteractiveChartAnnotationViewDataSource *)self setLastLowerDateString:v15];

    hk_gregorianCalendarWithLocalTimeZone4 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v17 = HKCombinedStringForAnnotationDateWithTimeScope(v18, hk_gregorianCalendarWithLocalTimeZone4, scope, resolution);
    [(HKInteractiveChartAnnotationViewDataSource *)self setLastCombinedDateString:v17];
  }
}

- (BOOL)_isMultiSelectionDateRange
{
  lastDateRange = [(HKInteractiveChartAnnotationViewDataSource *)self lastDateRange];
  if (lastDateRange)
  {
    lastDateRange2 = [(HKInteractiveChartAnnotationViewDataSource *)self lastDateRange];
    startDate = [lastDateRange2 startDate];
    lastDateRange3 = [(HKInteractiveChartAnnotationViewDataSource *)self lastDateRange];
    endDate = [lastDateRange3 endDate];
    v8 = [startDate hk_isBeforeDate:endDate];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)valueViewForColumnAtIndex:(int64_t)index orientation:(int64_t)orientation
{
  v5 = [(NSArray *)self->_annotationLabels objectAtIndexedSubscript:index];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = v6;
    if (orientation)
    {
      if (orientation != 1)
      {
LABEL_7:

        goto LABEL_8;
      }

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    [v6 setAxis:v8];
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (void)updateWithSelectionContext:(id)context displayType:(id)type timeScope:(int64_t)scope resolution:(int64_t)resolution healthStore:(id)store viewController:(id)controller
{
  v54 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  typeCopy = type;
  storeCopy = store;
  controllerCopy = controller;
  v15 = [(HKInteractiveChartAnnotationViewDataSource *)self _dateRangeFromSelectionContext:contextCopy timeScope:scope];
  [(HKInteractiveChartAnnotationViewDataSource *)self setLastDateRange:v15];

  selectedRangeFormatter = [(HKInteractiveChartAnnotationViewDataSource *)self selectedRangeFormatter];
  v41 = contextCopy;
  userInfo = [contextCopy userInfo];
  majorFont = [(HKInteractiveChartAnnotationViewDataSource *)self majorFont];
  minorFont = [(HKInteractiveChartAnnotationViewDataSource *)self minorFont];
  v42 = typeCopy;
  scopeCopy = scope;
  v20 = [selectedRangeFormatter selectedRangeDataWithCoordinateInfo:userInfo majorFont:majorFont minorFont:minorFont displayType:typeCopy timeScope:scope context:0];

  array = [MEMORY[0x1E695DF70] array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v20;
  v22 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v50;
    v25 = *MEMORY[0x1E695F058];
    v26 = *(MEMORY[0x1E695F058] + 8);
    v27 = *(MEMORY[0x1E695F058] + 16);
    v28 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v29 = 0;
      do
      {
        if (*v50 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v49 + 1) + 8 * v29);
        currentValueViewDataSourceDelegate = [(HKInteractiveChartAnnotationViewDataSource *)self currentValueViewDataSourceDelegate];
        v32 = objc_opt_respondsToSelector();

        if (v32)
        {
          currentValueViewDataSourceDelegate2 = [(HKInteractiveChartAnnotationViewDataSource *)self currentValueViewDataSourceDelegate];
          [currentValueViewDataSourceDelegate2 processSelectedRangeData:v30 displayType:v42];
        }

        v34 = [[HKInteractiveChartAnnotationViewKeyValueLabel alloc] initWithFrame:v25, v26, v27, v28];
        keyLabel = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v34 keyLabel];
        [keyLabel setSelectedRangeData:v30];

        titleTapOutBlock = [v30 titleTapOutBlock];

        if (titleTapOutBlock)
        {
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __133__HKInteractiveChartAnnotationViewDataSource_updateWithSelectionContext_displayType_timeScope_resolution_healthStore_viewController___block_invoke;
          v46[3] = &unk_1E81B5A10;
          v46[4] = v30;
          v47 = storeCopy;
          v48 = controllerCopy;
          [(HKInteractiveChartAnnotationViewKeyValueLabel *)v34 setTapOutBlock:v46];
        }

        valueLabel = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v34 valueLabel];
        attributedString = [v30 attributedString];
        [valueLabel setAttributedText:attributedString];

        [array addObject:v34];
        ++v29;
      }

      while (v23 != v29);
      v23 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v23);
  }

  [(HKInteractiveChartAnnotationViewDataSource *)self setAnnotationLabels:array];
  [(HKInteractiveChartAnnotationViewDataSource *)self _updateDateTextWithTimeScope:scopeCopy resolution:resolution];
}

void __133__HKInteractiveChartAnnotationViewDataSource_updateWithSelectionContext_displayType_timeScope_resolution_healthStore_viewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) titleTapOutBlock];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

- (id)_dateRangeFromSelectionContext:(id)context timeScope:(int64_t)scope
{
  contextCopy = context;
  currentValueViewDataSourceDelegate = [(HKInteractiveChartAnnotationViewDataSource *)self currentValueViewDataSourceDelegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0 || (-[HKInteractiveChartAnnotationViewDataSource currentValueViewDataSourceDelegate](self, "currentValueViewDataSourceDelegate"), v9 = objc_claimAutoreleasedReturnValue(), [v9 dateRangeFromSelectionContext:contextCopy timeScope:scope], v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    if (scope > 8)
    {
      v10 = 0;
    }

    else
    {
      [contextCopy selectedPointValueRange];
      if (scope == 3)
        v12 = {;
        v10 = [(HKInteractiveChartAnnotationViewDataSource *)self _weeksContainingDateRange:v12];
      }

      else
        v10 = {;
      }
    }
  }

  return v10;
}

- (id)_weeksContainingDateRange:(id)range
{
  v4 = MEMORY[0x1E695DEE8];
  rangeCopy = range;
  hk_gregorianCalendarWithLocalTimeZone = [v4 hk_gregorianCalendarWithLocalTimeZone];
  v7 = [MEMORY[0x1E696AB80] hk_dateIntervalWithValueRange:rangeCopy];

  v8 = [hk_gregorianCalendarWithLocalTimeZone hk_weeksContainingInterval:v7 firstWeekday:{-[HKInteractiveChartAnnotationViewDataSource firstWeekday](self, "firstWeekday")}];

  startDate = [v8 startDate];
  endDate = [v8 endDate];
  v11 = [HKValueRange valueRangeWithMinValue:startDate maxValue:endDate];

  return v11;
}

- (HKCurrentValueViewDataSourceDelegate)currentValueViewDataSourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_currentValueViewDataSourceDelegate);

  return WeakRetained;
}

@end