@interface HKInteractiveChartAnnotationViewDataSource
- (BOOL)_isMultiSelectionDateRange;
- (HKCurrentValueViewDataSourceDelegate)currentValueViewDataSourceDelegate;
- (HKInteractiveChartAnnotationViewDataSource)initWithSelectedRangeFormatter:(id)a3 firstWeekday:(int64_t)a4 currentValueViewDataSourceDelegate:(id)a5;
- (id)_dateRangeFromSelectionContext:(id)a3 timeScope:(int64_t)a4;
- (id)_weeksContainingDateRange:(id)a3;
- (id)dateViewWithOrientation:(int64_t)a3;
- (id)valueViewForColumnAtIndex:(int64_t)a3 orientation:(int64_t)a4;
- (void)_buildDateLabels;
- (void)_updateDateTextWithTimeScope:(int64_t)a3 resolution:(int64_t)a4;
- (void)updateWithSelectionContext:(id)a3 displayType:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 healthStore:(id)a7 viewController:(id)a8;
@end

@implementation HKInteractiveChartAnnotationViewDataSource

- (HKInteractiveChartAnnotationViewDataSource)initWithSelectedRangeFormatter:(id)a3 firstWeekday:(int64_t)a4 currentValueViewDataSourceDelegate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HKInteractiveChartAnnotationViewDataSource;
  v11 = [(HKInteractiveChartAnnotationViewDataSource *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_selectedRangeFormatter, a3);
    v12->_firstWeekday = a4;
    objc_storeWeak(&v12->_currentValueViewDataSourceDelegate, v10);
    v13 = [MEMORY[0x1E69DB878] hk_chartCurrentValueValueFont];
    [(HKInteractiveChartAnnotationViewDataSource *)v12 setMajorFont:v13];

    v14 = [MEMORY[0x1E69DB878] hk_chartCurrentValueUnitFont];
    [(HKInteractiveChartAnnotationViewDataSource *)v12 setMinorFont:v14];

    [(HKInteractiveChartAnnotationViewDataSource *)v12 _buildDateLabels];
  }

  return v12;
}

- (void)_buildDateLabels
{
  v10 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKInteractiveChartAnnotationViewDataSource *)self setMainDateLabel:v3];

  v4 = [(HKInteractiveChartAnnotationViewDataSource *)self mainDateLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [MEMORY[0x1E69DB878] hk_chartCurrentValueDateFont];
  v6 = [(HKInteractiveChartAnnotationViewDataSource *)self mainDateLabel];
  [v6 setFont:v5];

  v7 = v10;
  if (!v10)
  {
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.6];
  }

  v8 = [(HKInteractiveChartAnnotationViewDataSource *)self mainDateLabel];
  [v8 setTextColor:v7];

  if (!v10)
  {
  }

  v9 = [(HKInteractiveChartAnnotationViewDataSource *)self mainDateLabel];
  [v9 setBaselineAdjustment:1];
}

- (id)dateViewWithOrientation:(int64_t)a3
{
  v5 = [(HKInteractiveChartAnnotationViewDataSource *)self lastCombinedDateString];
  v6 = [(HKInteractiveChartAnnotationViewDataSource *)self mainDateLabel];
  [v6 setText:v5];

  if (!a3)
  {
    _HKInitializeLogging();
    v7 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HKInteractiveChartAnnotationViewDataSource dateViewWithOrientation:v7];
    }
  }

  v8 = [(HKInteractiveChartAnnotationViewDataSource *)self mainDateLabel];

  return v8;
}

- (void)_updateDateTextWithTimeScope:(int64_t)a3 resolution:(int64_t)a4
{
  if ([(HKInteractiveChartAnnotationViewDataSource *)self _isMultiSelectionDateRange])
  {
    v7 = [(HKInteractiveChartAnnotationViewDataSource *)self currentValueViewDataSourceDelegate];
    v8 = [(HKInteractiveChartAnnotationViewDataSource *)self lastDateRange];
    v18 = [v7 stringForValueRange:v8 timeScope:a3];

    [(HKInteractiveChartAnnotationViewDataSource *)self setLastUpperDateString:v18];
    [(HKInteractiveChartAnnotationViewDataSource *)self setLastLowerDateString:0];
    [(HKInteractiveChartAnnotationViewDataSource *)self setLastCombinedDateString:v18];
  }

  else
  {
    v9 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v10 = [(HKInteractiveChartAnnotationViewDataSource *)self lastDateRange];
    v11 = [v10 startDate];
    v18 = [v9 components:126 fromDate:v11];

    v12 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v13 = HKUpperStringForAnnotationDateWithTimeScope(v18, v12, a3);
    [(HKInteractiveChartAnnotationViewDataSource *)self setLastUpperDateString:v13];

    v14 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v15 = HKLowerStringForAnnotationDateWithTimeScope(v18, v14, a3);
    [(HKInteractiveChartAnnotationViewDataSource *)self setLastLowerDateString:v15];

    v16 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v17 = HKCombinedStringForAnnotationDateWithTimeScope(v18, v16, a3, a4);
    [(HKInteractiveChartAnnotationViewDataSource *)self setLastCombinedDateString:v17];
  }
}

- (BOOL)_isMultiSelectionDateRange
{
  v3 = [(HKInteractiveChartAnnotationViewDataSource *)self lastDateRange];
  if (v3)
  {
    v4 = [(HKInteractiveChartAnnotationViewDataSource *)self lastDateRange];
    v5 = [v4 startDate];
    v6 = [(HKInteractiveChartAnnotationViewDataSource *)self lastDateRange];
    v7 = [v6 endDate];
    v8 = [v5 hk_isBeforeDate:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)valueViewForColumnAtIndex:(int64_t)a3 orientation:(int64_t)a4
{
  v5 = [(NSArray *)self->_annotationLabels objectAtIndexedSubscript:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = v6;
    if (a4)
    {
      if (a4 != 1)
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

- (void)updateWithSelectionContext:(id)a3 displayType:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 healthStore:(id)a7 viewController:(id)a8
{
  v54 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v45 = a7;
  v44 = a8;
  v15 = [(HKInteractiveChartAnnotationViewDataSource *)self _dateRangeFromSelectionContext:v13 timeScope:a5];
  [(HKInteractiveChartAnnotationViewDataSource *)self setLastDateRange:v15];

  v16 = [(HKInteractiveChartAnnotationViewDataSource *)self selectedRangeFormatter];
  v41 = v13;
  v17 = [v13 userInfo];
  v18 = [(HKInteractiveChartAnnotationViewDataSource *)self majorFont];
  v19 = [(HKInteractiveChartAnnotationViewDataSource *)self minorFont];
  v42 = v14;
  v39 = a5;
  v20 = [v16 selectedRangeDataWithCoordinateInfo:v17 majorFont:v18 minorFont:v19 displayType:v14 timeScope:a5 context:0];

  v21 = [MEMORY[0x1E695DF70] array];
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
        v31 = [(HKInteractiveChartAnnotationViewDataSource *)self currentValueViewDataSourceDelegate];
        v32 = objc_opt_respondsToSelector();

        if (v32)
        {
          v33 = [(HKInteractiveChartAnnotationViewDataSource *)self currentValueViewDataSourceDelegate];
          [v33 processSelectedRangeData:v30 displayType:v42];
        }

        v34 = [[HKInteractiveChartAnnotationViewKeyValueLabel alloc] initWithFrame:v25, v26, v27, v28];
        v35 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v34 keyLabel];
        [v35 setSelectedRangeData:v30];

        v36 = [v30 titleTapOutBlock];

        if (v36)
        {
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __133__HKInteractiveChartAnnotationViewDataSource_updateWithSelectionContext_displayType_timeScope_resolution_healthStore_viewController___block_invoke;
          v46[3] = &unk_1E81B5A10;
          v46[4] = v30;
          v47 = v45;
          v48 = v44;
          [(HKInteractiveChartAnnotationViewKeyValueLabel *)v34 setTapOutBlock:v46];
        }

        v37 = [(HKInteractiveChartAnnotationViewKeyValueLabel *)v34 valueLabel];
        v38 = [v30 attributedString];
        [v37 setAttributedText:v38];

        [v21 addObject:v34];
        ++v29;
      }

      while (v23 != v29);
      v23 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v23);
  }

  [(HKInteractiveChartAnnotationViewDataSource *)self setAnnotationLabels:v21];
  [(HKInteractiveChartAnnotationViewDataSource *)self _updateDateTextWithTimeScope:v39 resolution:a6];
}

void __133__HKInteractiveChartAnnotationViewDataSource_updateWithSelectionContext_displayType_timeScope_resolution_healthStore_viewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) titleTapOutBlock];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

- (id)_dateRangeFromSelectionContext:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKInteractiveChartAnnotationViewDataSource *)self currentValueViewDataSourceDelegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0 || (-[HKInteractiveChartAnnotationViewDataSource currentValueViewDataSourceDelegate](self, "currentValueViewDataSourceDelegate"), v9 = objc_claimAutoreleasedReturnValue(), [v9 dateRangeFromSelectionContext:v6 timeScope:a4], v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    if (a4 > 8)
    {
      v10 = 0;
    }

    else
    {
      [v6 selectedPointValueRange];
      if (a4 == 3)
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

- (id)_weeksContainingDateRange:(id)a3
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 hk_gregorianCalendarWithLocalTimeZone];
  v7 = [MEMORY[0x1E696AB80] hk_dateIntervalWithValueRange:v5];

  v8 = [v6 hk_weeksContainingInterval:v7 firstWeekday:{-[HKInteractiveChartAnnotationViewDataSource firstWeekday](self, "firstWeekday")}];

  v9 = [v8 startDate];
  v10 = [v8 endDate];
  v11 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v10];

  return v11;
}

- (HKCurrentValueViewDataSourceDelegate)currentValueViewDataSourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_currentValueViewDataSourceDelegate);

  return WeakRetained;
}

@end