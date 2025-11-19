@interface HKGraphZoomLevelConfiguration
+ (id)_axisSpanDateComponentsWithTimeScope:(int64_t)a3;
+ (id)_chartVisibleRangeForTimeScope:(int64_t)a3 anchorDate:(id)a4 alignment:(int64_t)a5 dataRange:(id)a6 calendar:(id)a7 firstWeekday:(int64_t)a8 cadence:(int64_t)a9 level:(int64_t)a10 anchorDateIsInclusive:(BOOL)a11;
+ (id)_dateOffsetByHalfCanonicalSizeOfDate:(id)a3 timeScope:(int64_t)a4;
+ (id)_findVisibleRangeForTimeScope:(int64_t)a3 anchorDate:(id)a4 alignment:(int64_t)a5 calendar:(id)a6 anchorDateIsInclusive:(BOOL)a7;
+ (id)_fitRange:(id)a3 toDateRange:(id)a4 timeScope:(int64_t)a5 alignment:(int64_t)a6 calendar:(id)a7 firstWeekday:(int64_t)a8 cadence:(int64_t)a9 level:(int64_t)a10;
+ (id)_generateConfigurationForZoomLevel:(int64_t)a3;
+ (id)_gregorianCalendarForCalendar:(id)a3;
+ (id)_snappingStartDateWithStartDate:(id)a3 velocity:(CGPoint)a4 calendar:(id)a5 timeScope:(int64_t)a6 options:(int64_t)a7 alignment:(int64_t)a8;
+ (id)_visibleRangeDateFromAnchor:(id)a3 timeScope:(int64_t)a4 calendar:(id)a5 offset:(int64_t)a6;
+ (id)_visibleRangeDateFromDate:(id)a3 timeScope:(int64_t)a4 calendar:(id)a5 offset:(int64_t)a6;
+ (id)activeRangeFromCadenceRange:(id)a3 timeScope:(int64_t)a4 axisRange:(id)a5 calendar:(id)a6;
+ (id)chartDataRangeForTimeScope:(int64_t)a3 dataRange:(id)a4 firstWeekday:(int64_t)a5 calendar:(id)a6 cadence:(int64_t)a7 alignment:(int64_t)a8;
+ (id)configurationForZoomLevel:(int64_t)a3;
+ (id)defaultCalendar;
+ (id)seriesPointIntervalUnitForTimeScope:(int64_t)a3 pointCount:(int64_t)a4;
+ (id)snappingRangeForRange:(id)a3 axisRange:(id)a4 timeScope:(int64_t)a5 velocity:(CGPoint)a6 calendar:(id)a7 options:(int64_t)a8 alignment:(int64_t)a9;
+ (int64_t)timeScopeForDateRange:(id)a3;
+ (int64_t)visibleSeriesPointCountForTimeScope:(int64_t)a3 resolution:(int64_t)a4;
- (double)approximateSeriesPointIntervalAtResolution:(int64_t)a3;
- (id)seriesPointIntervalComponentsAtResolution:(int64_t)a3;
- (int64_t)visibleSeriesPointCountAtResolution:(int64_t)a3;
@end

@implementation HKGraphZoomLevelConfiguration

+ (id)_generateConfigurationForZoomLevel:(int64_t)a3
{
  if (a3 >= 8)
  {
    [(HKGraphZoomLevelConfiguration *)a2 _generateConfigurationForZoomLevel:a1];
  }

  v53 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v54 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v55 = objc_opt_new();
  v12 = 16;
  v52 = a3;
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        [(NSDateComponents *)v53 setMonth:1];
        [(NSDateComponents *)v9 setWeekOfYear:1];
        v14 = v6;
        [(NSDateComponents *)v6 setDay:1];
        [(NSDateComponents *)v7 setDay:1];
        [(NSDateComponents *)v54 setWeekOfYear:1];
        [v8 setDay:45];
        [v11 setMonth:1];
        [v10 setDay:8];
        v18 = v55;
        v19 = 4;
      }

      else
      {
        v13 = a3 == 5;
        v14 = v6;
        if (!v13)
        {
          goto LABEL_31;
        }

        [(NSDateComponents *)v53 setWeekOfYear:1];
        [(NSDateComponents *)v9 setDay:1];
        [(NSDateComponents *)v6 setDay:1];
        [(NSDateComponents *)v7 setHour:6];
        [(NSDateComponents *)v54 setDay:1];
        [v8 setDay:14];
        [v11 setWeekOfYear:1];
        [v10 setHour:84];
        v18 = v55;
        v19 = 1;
      }

      [v18 setDay:v19];
    }

    else
    {
      if (a3 == 6)
      {
        [(NSDateComponents *)v53 setDay:1];
        [(NSDateComponents *)v9 setHour:6];
        [(NSDateComponents *)v54 setHour:6];
        v14 = v6;
        [(NSDateComponents *)v6 setHour:1];
        [(NSDateComponents *)v7 setHour:1];
        [v8 setDay:4];
        [v11 setDay:1];
        [v10 setHour:12];
        [v55 setHour:2];
        v12 = 32;
        goto LABEL_31;
      }

      if (a3 == 7)
      {
        [(NSDateComponents *)v53 setHour:1];
        [(NSDateComponents *)v9 setMinute:15];
        [(NSDateComponents *)v54 setMinute:15];
        v14 = v6;
        [(NSDateComponents *)v6 setMinute:2];
        [(NSDateComponents *)v7 setMinute:2];
        [v8 setHour:12];
        [v11 setHour:1];
        [v10 setMinute:30];
        [v55 setMinute:15];
        v12 = 64;
        goto LABEL_31;
      }

      v13 = a3 == 8;
      v14 = v6;
      if (!v13)
      {
        goto LABEL_31;
      }

      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:a1 file:@"HKCoordinateTransform.m" lineNumber:330 description:{@"Invalid zoom level (%ld)", 8}];
    }

    v12 = 16;
    goto LABEL_31;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      v13 = a3 == 1;
      v14 = v6;
      if (!v13)
      {
        goto LABEL_31;
      }

      [(NSDateComponents *)v53 setYear:5];
      [(NSDateComponents *)v9 setYear:1];
      [(NSDateComponents *)v6 setYear:1];
      [(NSDateComponents *)v7 setYear:1];
      [(NSDateComponents *)v54 setYear:1];
      [v8 setYear:1];
      [v11 setYear:5];
      v16 = v10;
      v17 = 3;
    }

    else
    {
      [(NSDateComponents *)v53 setYear:10];
      [(NSDateComponents *)v9 setYear:1];
      v14 = v6;
      [(NSDateComponents *)v6 setYear:1];
      [(NSDateComponents *)v7 setYear:1];
      [(NSDateComponents *)v54 setYear:1];
      [v8 setYear:15];
      [v11 setYear:10];
      v16 = v10;
      v17 = 8;
    }

    [v16 setYear:v17];
    [v55 setYear:1];
    v12 = 4;
    goto LABEL_31;
  }

  if (a3 == 2)
  {
    [(NSDateComponents *)v53 setYear:1];
    [(NSDateComponents *)v9 setMonth:1];
    v14 = v6;
    [(NSDateComponents *)v6 setMonth:1];
    [(NSDateComponents *)v7 setMonth:1];
    [(NSDateComponents *)v54 setMonth:1];
    [v8 setMonth:12];
    [v11 setYear:1];
    v12 = 8;
    [v10 setMonth:8];
    [v55 setMonth:2];
  }

  else
  {
    v13 = a3 == 3;
    v14 = v6;
    if (v13)
    {
      [(NSDateComponents *)v53 setWeekOfYear:26];
      [(NSDateComponents *)v9 setMonth:1];
      [(NSDateComponents *)v6 setWeekOfYear:1];
      [(NSDateComponents *)v7 setWeekOfYear:1];
      [(NSDateComponents *)v54 setMonth:1];
      [v8 setWeekOfYear:39];
      [v11 setWeekOfYear:26];
      [v10 setWeekOfYear:20];
      [v55 setWeekOfYear:1];
      v12 = 0x2000;
    }
  }

LABEL_31:
  v41 = v12;
  v20 = [a1 defaultCalendar];
  v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v51 = v8;
  v48 = [v20 dateByAddingComponents:v8 toDate:v21 options:0];
  v50 = v10;
  v47 = [v20 dateByAddingComponents:v10 toDate:v21 options:0];
  v49 = v11;
  v46 = [v20 dateByAddingComponents:v11 toDate:v21 options:0];
  v45 = [v20 dateByAddingComponents:v14 toDate:v21 options:0];
  v44 = [v20 dateByAddingComponents:v7 toDate:v21 options:0];
  v43 = [v20 dateByAddingComponents:v55 toDate:v21 options:0];
  v42 = [v20 dateByAddingComponents:v9 toDate:v21 options:0];
  v22 = v9;
  v23 = objc_alloc_init(HKGraphZoomLevelConfiguration);
  referencePointIntervalComponents = v23->_referencePointIntervalComponents;
  v23->_referencePointIntervalComponents = v53;
  v25 = v53;

  seriesPointStandardIntervalComponents = v23->_seriesPointStandardIntervalComponents;
  v23->_seriesPointStandardIntervalComponents = v14;
  v27 = v14;

  seriesPointEnhancedIntervalComponents = v23->_seriesPointEnhancedIntervalComponents;
  v23->_seriesPointEnhancedIntervalComponents = v7;
  v29 = v7;

  axisLabelIntervalComponents = v23->_axisLabelIntervalComponents;
  v23->_axisLabelIntervalComponents = v22;
  v31 = v22;

  minorAxisIntervalComponents = v23->_minorAxisIntervalComponents;
  v23->_minorAxisIntervalComponents = v54;

  [v48 timeIntervalSinceReferenceDate];
  v23->_seriesBlockSize = v33;
  [v47 timeIntervalSinceReferenceDate];
  v23->_zoomLevelThreshold = v34;
  [v46 timeIntervalSinceReferenceDate];
  v23->_canonicalSize = v35;
  v23->_majorTickCalendarUnit = v41;
  [v45 timeIntervalSinceReferenceDate];
  v23->_approximateSeriesStandardPointInterval = v36;
  [v44 timeIntervalSinceReferenceDate];
  v23->_approximateSeriesEnhancedPointInterval = v37;
  [v43 timeIntervalSinceReferenceDate];
  v23->_todayOffsetSize = v38;
  [v42 timeIntervalSinceReferenceDate];
  v23->_approximateAxisLabelInterval = v39;
  v23->_intendedTimeScope = v52;

  return v23;
}

+ (id)configurationForZoomLevel:(int64_t)a3
{
  if (configurationForZoomLevel__onceToken != -1)
  {
    +[HKGraphZoomLevelConfiguration configurationForZoomLevel:];
  }

  os_unfair_lock_lock(&configurationForZoomLevel__configurationLock);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [configurationForZoomLevel____configurations objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [a1 _generateConfigurationForZoomLevel:a3];
    [configurationForZoomLevel____configurations setObject:v6 forKeyedSubscript:v5];
  }

  os_unfair_lock_unlock(&configurationForZoomLevel__configurationLock);

  return v6;
}

uint64_t __59__HKGraphZoomLevelConfiguration_configurationForZoomLevel___block_invoke()
{
  v0 = objc_opt_new();
  v1 = configurationForZoomLevel____configurations;
  configurationForZoomLevel____configurations = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)defaultCalendar
{
  if (defaultCalendar_onceToken != -1)
  {
    +[HKGraphZoomLevelConfiguration defaultCalendar];
  }

  v3 = defaultCalendar___calendar;

  return v3;
}

uint64_t __48__HKGraphZoomLevelConfiguration_defaultCalendar__block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v1 = defaultCalendar___calendar;
  defaultCalendar___calendar = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (int64_t)timeScopeForDateRange:(id)a3
{
  v4 = a3;
  v5 = [v4 endDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [v4 startDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v7 - v9;

  if (v10 <= 3600.0)
  {
    v16 = 7;
  }

  else if (v10 <= 86400.0)
  {
    v16 = 6;
  }

  else if (v10 <= 604800.0)
  {
    v16 = 5;
  }

  else
  {
    v11 = objc_opt_new();
    [v11 setMonth:-1];
    v12 = [a1 defaultCalendar];
    v13 = [v4 endDate];
    v14 = [v12 dateByAddingComponents:v11 toDate:v13 options:0];

    v15 = [v4 startDate];
    LOBYTE(v13) = [v14 hk_isBeforeOrEqualToDate:v15];

    if (v13)
    {
      v16 = 4;
    }

    else
    {
      [v11 setMonth:-6];
      v17 = [a1 defaultCalendar];
      v18 = [v4 endDate];
      v19 = [v17 dateByAddingComponents:v11 toDate:v18 options:0];

      v20 = [v4 startDate];
      v21 = [v19 hk_isBeforeOrEqualToDate:v20];

      if (v21)
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v14 = v19;
    }
  }

  return v16;
}

+ (id)_gregorianCalendarForCalendar:(id)a3
{
  v4 = a3;
  v5 = [v4 calendarIdentifier];
  if ([v5 isEqualToString:*MEMORY[0x1E695D850]])
  {
    v6 = v4;
  }

  else
  {
    v6 = [a1 defaultCalendar];
  }

  v7 = v6;

  return v7;
}

+ (id)chartDataRangeForTimeScope:(int64_t)a3 dataRange:(id)a4 firstWeekday:(int64_t)a5 calendar:(id)a6 cadence:(int64_t)a7 alignment:(int64_t)a8
{
  v15 = a6;
  v16 = a4;
  v17 = [v16 minValue];
  v18 = [v16 maxValue];

  v19 = v17;
  v20 = v18;
  v21 = v20;
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        v24 = [v15 hk_sixMonthPeriodContaining:v19 dateBefore:1];

        v29 = [v15 hk_sixMonthPeriodContaining:v21 dateBefore:0];
LABEL_25:
        v23 = v29;
        v25 = v21;
        goto LABEL_26;
      }

      v26 = v15;
      v27 = v19;
      v28 = 0;
    }

    else if (a3)
    {
      v23 = v20;
      v24 = v19;
      if (a3 != 1)
      {
        goto LABEL_27;
      }

      v26 = v15;
      v27 = v19;
      v28 = -4;
    }

    else
    {
      v26 = v15;
      v27 = v19;
      v28 = -9;
    }

    v24 = [v26 hk_startOfYearForDate:v27 addingYears:v28];

    v29 = [v15 hk_startOfYearForDate:v21 addingYears:1];
    goto LABEL_25;
  }

  if (a3 > 5)
  {
    if (a3 == 6)
    {
      v30 = a1;
      v24 = [v15 hk_startOfDateByAddingDays:0 toDate:v19];

      v23 = [v15 hk_startOfDateByAddingDays:1 toDate:v21];

      if (a8 != 4)
      {
        goto LABEL_27;
      }

      v25 = [v30 _gregorianCalendarForCalendar:v15];
      v31 = [v24 hk_sleepDayStartWithCalendar:v25];

      v32 = [v23 hk_sleepDayStartWithCalendar:v25];

      v23 = v32;
      v24 = v31;
      goto LABEL_26;
    }

    if (a3 != 7)
    {
      v22 = a1;
      v23 = v20;
      v24 = v19;
      if (a3 != 8)
      {
        goto LABEL_27;
      }

      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:a2 object:v22 file:@"HKCoordinateTransform.m" lineNumber:523 description:{@"Invalid zoom level (%ld)", 8}];
      v23 = v21;
      v24 = v19;
      goto LABEL_26;
    }

    v24 = [v15 hk_startOfHourForDate:v19 addingHours:0];

    v29 = [v15 hk_startOfHourForDate:v21 addingHours:1];
    goto LABEL_25;
  }

  if (a3 != 4)
  {
    v24 = [v15 hk_startOfWeekWithFirstWeekday:a5 beforeDate:v19 addingWeeks:0];

    v29 = [v15 hk_startOfWeekWithFirstWeekday:a5 beforeDate:v21 addingWeeks:1];
    goto LABEL_25;
  }

  if (a7 == 1)
  {
    v24 = [v15 hk_startOfMonthForDate:v19 addingMonths:0];

    v29 = [v15 hk_startOfMonthForDate:v21 addingMonths:1];
    goto LABEL_25;
  }

  v23 = v20;
  v24 = v19;
  if (a7)
  {
    goto LABEL_27;
  }

  v24 = [v15 hk_startOfMonthForDate:v19 addingMonths:0];

  v33 = [v15 hk_startOfMonthForDate:v21 addingMonths:0];

  v25 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v25 setCalendar:v15];
  [v25 setDay:1];
  v23 = [v25 hk_dateByAddingInterval:31 toDate:v33];

LABEL_26:
LABEL_27:
  v34 = [HKValueRange valueRangeWithMinValue:v24 maxValue:v23];

  return v34;
}

+ (id)_findVisibleRangeForTimeScope:(int64_t)a3 anchorDate:(id)a4 alignment:(int64_t)a5 calendar:(id)a6 anchorDateIsInclusive:(BOOL)a7
{
  v7 = a7;
  v12 = a4;
  v13 = a6;
  v14 = 0;
  if (a5 <= 1)
  {
    if (a5)
    {
      v15 = 0;
      if (a5 != 1)
      {
        goto LABEL_21;
      }

      v16 = [a1 _dateOffsetByHalfCanonicalSizeOfDate:v12 timeScope:a3];
      v15 = [a1 _visibleRangeDateFromAnchor:v16 timeScope:a3 calendar:v13 offset:0];

      goto LABEL_10;
    }

LABEL_9:
    v15 = [a1 _visibleRangeDateFromAnchor:v12 timeScope:a3 calendar:v13 offset:0];
LABEL_10:
    v14 = [a1 _visibleRangeDateFromDate:v15 timeScope:a3 calendar:v13 offset:1];
    goto LABEL_21;
  }

  if (a5 == 2)
  {
    v14 = [a1 _visibleRangeDateFromAnchor:v12 timeScope:a3 calendar:v13 offset:0];
    if (([v14 hk_isBeforeDate:v12] & 1) != 0 || v7 && objc_msgSend(v14, "hk_isBeforeOrEqualToDate:", v12))
    {
      if (a3 == 3)
      {
        [v13 hk_startOfWeekWithFirstWeekday:objc_msgSend(v13 beforeDate:"firstWeekday") addingWeeks:{v12, 1}];
      }

      else
      {
        [a1 _visibleRangeDateFromAnchor:v12 timeScope:a3 calendar:v13 offset:1];
      }
      v20 = ;

      v14 = v20;
    }

    v15 = [a1 _visibleRangeDateFromDate:v14 timeScope:a3 calendar:v13 offset:-1];
    goto LABEL_21;
  }

  if (a5 == 4)
  {
    v17 = [a1 _visibleRangeDateFromAnchor:v12 timeScope:a3 calendar:v13 offset:0];
    v18 = [a1 _visibleRangeDateFromDate:v17 timeScope:a3 calendar:v13 offset:1];
    v19 = [a1 _gregorianCalendarForCalendar:v13];
    v15 = [v17 hk_sleepDayStartWithCalendar:v19];

    v14 = [v18 hk_sleepDayStartWithCalendar:v19];

    goto LABEL_21;
  }

  v15 = 0;
  if (a5 == 3)
  {
    goto LABEL_9;
  }

LABEL_21:
  v21 = [HKValueRange valueRangeWithMinValue:v15 maxValue:v14];

  return v21;
}

+ (id)_visibleRangeDateFromAnchor:(id)a3 timeScope:(int64_t)a4 calendar:(id)a5 offset:(int64_t)a6
{
  v11 = a3;
  v12 = a5;
  v13 = v12;
  v14 = 0;
  if (a4 <= 4)
  {
    if (a4 <= 2)
    {
      if (a4 >= 2)
      {
        if (a4 != 2)
        {
          goto LABEL_18;
        }

        v15 = [v12 hk_startOfMonthForDate:v11 addingMonths:a6];
      }

      else
      {
        v15 = [v12 hk_startOfYearForDate:v11 addingYears:a6];
      }

      goto LABEL_17;
    }

    if (a4 == 3)
    {
      v15 = [v12 hk_startOfWeekWithFirstWeekday:objc_msgSend(v12 beforeDate:"firstWeekday") addingWeeks:{v11, 26 * a6}];
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (a4 <= 6)
  {
    if (a4 != 5)
    {
      v15 = [v12 hk_startOfHourForDate:v11 addingHours:a6];
LABEL_17:
      v14 = v15;
      goto LABEL_18;
    }

LABEL_12:
    v15 = [v12 hk_startOfDateByAddingDays:a6 toDate:v11];
    goto LABEL_17;
  }

  if (a4 == 7)
  {
    v17 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:7];
    v18 = [v17 axisLabelIntervalComponents];
    v19 = [v18 minute];

    v14 = [v13 hk_startOfMinuteForDate:v11 moduloMinutes:v19 addingModuloCount:a6];
  }

  else if (a4 == 8)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"HKCoordinateTransform.m" lineNumber:616 description:{@"Invalid zoom level (%ld)", 8}];

    v14 = 0;
  }

LABEL_18:

  return v14;
}

+ (id)_visibleRangeDateFromDate:(id)a3 timeScope:(int64_t)a4 calendar:(id)a5 offset:(int64_t)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [a1 _axisSpanDateComponentsWithTimeScope:a4];
  [v12 setCalendar:v10];

  v13 = [v12 hk_dateByAddingInterval:a6 toDate:v11];

  return v13;
}

+ (id)_dateOffsetByHalfCanonicalSizeOfDate:(id)a3 timeScope:(int64_t)a4
{
  v5 = a3;
  v6 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:a4];
  [v6 canonicalSize];
  v8 = [v5 dateByAddingTimeInterval:v7 * -0.5];

  return v8;
}

+ (id)_fitRange:(id)a3 toDateRange:(id)a4 timeScope:(int64_t)a5 alignment:(int64_t)a6 calendar:(id)a7 firstWeekday:(int64_t)a8 cadence:(int64_t)a9 level:(int64_t)a10
{
  v84 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = [v14 startDate];
  v18 = v14;
  v19 = [v14 endDate];
  v20 = [v15 startDate];
  v67 = v15;
  v21 = [v15 endDate];
  v23 = a5 == 6 && a6 == 4;
  v69 = v17;
  v70 = v20;
  v24 = v20;
  v25 = v21;
  v26 = [v17 compare:v24];
  v68 = v19;
  v27 = [v19 compare:v25];
  if (v26 == -1)
  {
    if (v27 == 1)
    {
      v37 = HKStringForHKTimeScope(a5, 0);
      v34 = v18;
      if ((a6 - 1) > 3)
      {
        v38 = @"left";
      }

      else
      {
        v38 = off_1E81B9DE8[a6 - 1];
      }

      v29 = v16;
      v36 = v67;
      v32 = v70;
      _HKInitializeLogging();
      v48 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        v71 = [v34 startDate];
        v52 = [v34 endDate];
        v53 = [v67 startDate];
        [v67 endDate];
        v54 = v62 = v25;
        *buf = 138544642;
        v73 = v71;
        v74 = 2114;
        v75 = v52;
        v76 = 2114;
        v77 = v53;
        v78 = 2114;
        v79 = v54;
        v80 = 2114;
        v81 = v37;
        v82 = 2114;
        v83 = v38;
        _os_log_fault_impl(&dword_1C3942000, v48, OS_LOG_TYPE_FAULT, "charting: _fitRange span too large: fit range %{public}@ to %{public}@ into %{public}@ to %{public}@ time scope %{public}@ alignment %{public}@", buf, 0x3Eu);

        v25 = v62;
      }

      v35 = v67;
    }

    else
    {
      if (v23)
      {
        v39 = 4;
      }

      else
      {
        v39 = 0;
      }

      LOBYTE(v59) = 1;
      v32 = v70;
      v29 = v16;
      v40 = [HKGraphZoomLevelConfiguration _chartVisibleRangeForTimeScope:a5 anchorDate:v70 alignment:v39 dataRange:0 calendar:v16 firstWeekday:a8 cadence:a9 level:a10 + 1 anchorDateIsInclusive:v59];
      v41 = [v40 endDate];
      v42 = v25;
      v43 = [v41 compare:v25];

      v34 = v18;
      if (v43 == 1)
      {
        v44 = HKStringForHKTimeScope(a5, 0);
        v36 = v67;
        if ((a6 - 1) > 3)
        {
          v45 = @"left";
        }

        else
        {
          v45 = off_1E81B9DE8[a6 - 1];
        }

        v25 = v42;
        _HKInitializeLogging();
        v50 = HKLogWellnessDashboard();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v66 = [v34 startDate];
          v63 = [v34 endDate];
          v60 = [v67 startDate];
          [v67 endDate];
          *buf = 138544642;
          v73 = v66;
          v74 = 2114;
          v75 = v63;
          v76 = 2114;
          v77 = v60;
          v79 = v78 = 2114;
          v58 = v79;
          v80 = 2114;
          v81 = v44;
          v82 = 2114;
          v83 = v45;
          _os_log_error_impl(&dword_1C3942000, v50, OS_LOG_TYPE_ERROR, "charting: _fitRange jitter detected: fit range %{public}@ to %{public}@ into %{public}@ to %{public}@ time scope %{public}@ alignment %{public}@", buf, 0x3Eu);

          v25 = v42;
        }

        v35 = v67;
      }

      else
      {
        v35 = v40;
        v36 = v67;
        v25 = v42;
      }
    }
  }

  else if (v27 == 1)
  {
    if (v23)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    LOBYTE(v59) = 0;
    v61 = v25;
    v29 = v16;
    v30 = [HKGraphZoomLevelConfiguration _chartVisibleRangeForTimeScope:a5 anchorDate:v25 alignment:v28 dataRange:0 calendar:v16 firstWeekday:a8 cadence:a9 level:a10 + 1 anchorDateIsInclusive:v59];
    v31 = [v30 startDate];
    v32 = v70;
    v33 = [v31 compare:v70];

    v34 = v18;
    if (v33 == -1)
    {
      v46 = HKStringForHKTimeScope(a5, 0);
      v36 = v67;
      if ((a6 - 1) > 3)
      {
        v47 = @"left";
      }

      else
      {
        v47 = off_1E81B9DE8[a6 - 1];
      }

      _HKInitializeLogging();
      v49 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v65 = [v34 startDate];
        v55 = [v34 endDate];
        v56 = [v67 startDate];
        [v67 endDate];
        *buf = 138544642;
        v73 = v65;
        v74 = 2114;
        v75 = v55;
        v76 = 2114;
        v77 = v56;
        v79 = v78 = 2114;
        v57 = v79;
        v80 = 2114;
        v81 = v46;
        v82 = 2114;
        v83 = v47;
        _os_log_error_impl(&dword_1C3942000, v49, OS_LOG_TYPE_ERROR, "charting: _fitRange jitter detected: fit range %{public}@ to %{public}@ into %{public}@ to %{public}@ time scope %{public}@ alignment %{public}@", buf, 0x3Eu);
      }

      v35 = v67;
      v32 = v70;
    }

    else
    {
      v35 = v30;
      v36 = v67;
    }

    v25 = v61;
  }

  else
  {
    v34 = v18;
    v35 = v18;
    v29 = v16;
    v36 = v67;
    v32 = v70;
  }

  return v35;
}

+ (id)_chartVisibleRangeForTimeScope:(int64_t)a3 anchorDate:(id)a4 alignment:(int64_t)a5 dataRange:(id)a6 calendar:(id)a7 firstWeekday:(int64_t)a8 cadence:(int64_t)a9 level:(int64_t)a10 anchorDateIsInclusive:(BOOL)a11
{
  v42 = *MEMORY[0x1E69E9840];
  v16 = a4;
  v17 = a6;
  v18 = a7;
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = [MEMORY[0x1E695DF00] date];
  }

  v20 = v19;
  if ((a5 - 3) <= 1)
  {
    v21 = [HKValueRange valueRangeWithMinValue:v19 maxValue:v19];
    v22 = [HKGraphZoomLevelConfiguration chartDataRangeForTimeScope:a3 dataRange:v21 firstWeekday:a8 calendar:v18 cadence:a9 alignment:a5];

    if (v17)
    {
      goto LABEL_6;
    }

LABEL_9:
    v23 = v22;
    goto LABEL_10;
  }

  v22 = [a1 _findVisibleRangeForTimeScope:a3 anchorDate:v19 alignment:a5 calendar:v18 anchorDateIsInclusive:a11];
  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (a10 <= 2)
  {
    v23 = [HKGraphZoomLevelConfiguration _fitRange:v22 toDateRange:v17 timeScope:a3 alignment:a5 calendar:v18 firstWeekday:a8 cadence:a9 level:a10];
LABEL_10:
    v24 = v23;
    goto LABEL_17;
  }

  v25 = HKStringForHKTimeScope(a3, 0);
  if ((a5 - 1) > 3)
  {
    v26 = @"left";
  }

  else
  {
    v26 = off_1E81B9DE8[a5 - 1];
  }

  _HKInitializeLogging();
  v27 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    v29 = [v17 startDate];
    v30 = [v17 endDate];
    *buf = 138544386;
    v33 = v20;
    v34 = 2114;
    v35 = v29;
    v36 = 2114;
    v37 = v30;
    v38 = 2114;
    v39 = v25;
    v40 = 2114;
    v41 = v26;
    _os_log_fault_impl(&dword_1C3942000, v27, OS_LOG_TYPE_FAULT, "chartVisibleRangeError: unable to fit anchor %{public}@ into data range %{public}@ to %{public}@ with time scope %{public}@ and alignment %{public}@", buf, 0x34u);
  }

  v24 = v22;
LABEL_17:

  return v24;
}

+ (id)snappingRangeForRange:(id)a3 axisRange:(id)a4 timeScope:(int64_t)a5 velocity:(CGPoint)a6 calendar:(id)a7 options:(int64_t)a8 alignment:(int64_t)a9
{
  y = a6.y;
  x = a6.x;
  v17 = a4;
  v18 = a7;
  v19 = [a3 startDate];
  v20 = [a1 _snappingStartDateWithStartDate:v19 velocity:v18 calendar:a5 timeScope:a8 options:a9 alignment:{x, y}];

  v21 = [v17 startDate];
  LODWORD(v19) = HKUIObjectIsSmaller(v20, v21);

  if (v19)
  {
    v22 = [v17 startDate];

    v20 = v22;
  }

  v23 = [a1 _axisSpanDateComponentsWithTimeScope:a5];
  [v23 setCalendar:v18];
  v24 = [v23 hk_dateByAddingInterval:1 toDate:v20];
  v25 = [v17 endDate];
  IsSmaller = HKUIObjectIsSmaller(v25, v24);

  if (IsSmaller)
  {
    v27 = [v17 endDate];

    v28 = [v23 hk_dateByAddingInterval:-1 toDate:v27];
    v29 = [v17 startDate];
    v30 = HKUIObjectMax(v28, v29);

    v20 = v30;
    v24 = v27;
  }

  v31 = [HKValueRange valueRangeWithMinValue:v20 maxValue:v24];

  return v31;
}

+ (id)activeRangeFromCadenceRange:(id)a3 timeScope:(int64_t)a4 axisRange:(id)a5 calendar:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = [v9 startDate];
  v13 = +[HKGraphZoomLevelConfiguration chartVisibleRangeForTimeScope:anchorDate:alignment:dataRange:calendar:firstWeekday:cadence:level:](HKGraphZoomLevelConfiguration, "chartVisibleRangeForTimeScope:anchorDate:alignment:dataRange:calendar:firstWeekday:cadence:level:", a4, v12, 3, v11, v10, [v10 firstWeekday], 1, 0);

  v14 = [v9 startDate];
  v15 = [v13 startDate];
  v16 = [v14 compare:v15];

  if (v16)
  {
    v17 = v9;
  }

  else
  {
    v17 = v13;
  }

  v18 = v17;

  return v17;
}

+ (id)_snappingStartDateWithStartDate:(id)a3 velocity:(CGPoint)a4 calendar:(id)a5 timeScope:(int64_t)a6 options:(int64_t)a7 alignment:(int64_t)a8
{
  v9 = a7;
  x = a4.x;
  v14 = a3;
  v15 = a5;
  v16 = fabs(x);
  v17 = x > 0.0;
  v18 = v14;
  v19 = v18;
  if (v16 >= 0.3)
  {
    if (v16 <= 3.2)
    {
      v26 = 0;
    }

    else
    {
      v26 = -1;
    }

    if (v16 <= 3.2)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (a6 > 3)
    {
      if (a6 > 5)
      {
        if (a6 == 6)
        {
          v21 = [v15 hk_startOfDateByAddingDays:v26 toDate:v18];

          v45 = v15;
          v46 = v27;
          goto LABEL_47;
        }

        v20 = v18;
        v21 = v18;
        if (a6 != 7)
        {
          goto LABEL_55;
        }

        v21 = [v15 hk_startOfHourForDate:v18 addingHours:v26];

        v35 = v15;
        v36 = v19;
        v37 = v27;
LABEL_52:
        v31 = [v35 hk_startOfHourForDate:v36 addingHours:v37];
        goto LABEL_53;
      }

      if (a6 == 4)
      {
        v21 = [v15 hk_startOfMonthForDate:v18 addingMonths:v26];

        v42 = v15;
        v43 = v19;
        v44 = v27;
        goto LABEL_50;
      }
    }

    else
    {
      if (a6 <= 1)
      {
        if (a6)
        {
          v20 = v18;
          v21 = v18;
          if (a6 != 1)
          {
            goto LABEL_55;
          }

          v28 = v16 > 3.2;
          if (v16 <= 3.2)
          {
            v29 = 0;
          }

          else
          {
            v29 = -5;
          }

          v21 = [v15 hk_startOfYearForDate:v18 addingYears:v29];

          v30 = 5;
        }

        else
        {
          v28 = v16 > 3.2;
          if (v16 <= 3.2)
          {
            v41 = 0;
          }

          else
          {
            v41 = -10;
          }

          v21 = [v15 hk_startOfYearForDate:v18 addingYears:v41];

          v30 = 10;
        }

        v40 = v30 << v28;
        v38 = v15;
        v39 = v19;
        goto LABEL_43;
      }

      if (a6 == 2)
      {
        v21 = [v15 hk_startOfYearForDate:v18 addingYears:v26];

        v38 = v15;
        v39 = v19;
        v40 = v27;
        goto LABEL_43;
      }
    }

    v21 = [v15 hk_startOfWeekWithFirstWeekday:objc_msgSend(v15 beforeDate:"firstWeekday") addingWeeks:{v18, v26}];

    v22 = [v15 firstWeekday];
    v23 = v15;
    v24 = v19;
    v25 = v27;
LABEL_28:
    v31 = [v23 hk_startOfWeekWithFirstWeekday:v22 beforeDate:v24 addingWeeks:v25];
    goto LABEL_53;
  }

  if (a6 <= 3)
  {
    if (a6 >= 2)
    {
      if (a6 != 2)
      {
        v20 = v18;
        v21 = v18;
        if (a6 != 3)
        {
          goto LABEL_55;
        }

        v21 = [v15 hk_startOfWeekWithFirstWeekday:objc_msgSend(v15 beforeDate:"firstWeekday") addingWeeks:{v18, 0}];

        v22 = [v15 firstWeekday];
        v23 = v15;
        v24 = v19;
        v25 = 1;
        goto LABEL_28;
      }

      v21 = [v15 hk_startOfMonthForDate:v18 addingMonths:0];

      v42 = v15;
      v43 = v19;
      v44 = 1;
LABEL_50:
      v31 = [v42 hk_startOfMonthForDate:v43 addingMonths:v44];
      goto LABEL_53;
    }

    v21 = [v15 hk_startOfYearForDate:v18 addingYears:0];

    v38 = v15;
    v39 = v19;
    v40 = 1;
LABEL_43:
    v31 = [v38 hk_startOfYearForDate:v39 addingYears:v40];
    goto LABEL_53;
  }

  if (a6 <= 5)
  {
    v21 = [v15 hk_startOfDateByAddingDays:0 toDate:v18];

    v31 = [v15 hk_startOfDateByAddingDays:1 toDate:v19];
LABEL_53:
    v20 = v31;
    v32 = v19;
    goto LABEL_54;
  }

  if (a6 != 6)
  {
    v20 = v18;
    v21 = v18;
    if (a6 != 7)
    {
      goto LABEL_55;
    }

    v32 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:7];
    v33 = [v32 axisLabelIntervalComponents];
    v34 = [v33 minute];

    v21 = [v15 hk_startOfMinuteForDate:v19 moduloMinutes:v34 addingModuloCount:0];

    v20 = [v15 hk_startOfMinuteForDate:v19 moduloMinutes:v34 addingModuloCount:1];

    goto LABEL_54;
  }

  if ((v9 & 1) == 0)
  {
    v21 = [v15 hk_startOfHourForDate:v18 addingHours:0];

    v35 = v15;
    v36 = v19;
    v37 = 1;
    goto LABEL_52;
  }

  v21 = [v15 hk_startOfDateByAddingDays:0 toDate:v18];

  v45 = v15;
  v46 = 1;
LABEL_47:
  v20 = [v45 hk_startOfDateByAddingDays:v46 toDate:v19];

  if (a8 != 4)
  {
    goto LABEL_55;
  }

  v32 = [a1 _gregorianCalendarForCalendar:v15];
  v47 = [v21 hk_sleepDayStartWithCalendar:v32];

  v48 = [v20 hk_sleepDayStartWithCalendar:v32];

  v20 = v48;
  v21 = v47;
LABEL_54:

LABEL_55:
  if (v16 < 2.22044605e-16)
  {
    [v19 timeIntervalSinceDate:v21];
    v50 = v49;
    [v20 timeIntervalSinceDate:v19];
    v17 = v51 < v50;
  }

  if (v17)
  {
    v52 = v20;
  }

  else
  {
    v52 = v21;
  }

  v53 = v52;

  return v52;
}

+ (id)_axisSpanDateComponentsWithTimeScope:(int64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v5 = v4;
  if (a3 <= 3)
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_21;
        }

        v6 = 5;
      }

      else
      {
        v6 = 10;
      }

      goto LABEL_18;
    }

    if (a3 == 2)
    {
      v6 = 1;
LABEL_18:
      [v4 setYear:v6];
      goto LABEL_21;
    }

    v7 = 26;
LABEL_11:
    [v4 setWeekOfYear:v7];
    goto LABEL_21;
  }

  if (a3 <= 5)
  {
    if (a3 != 4)
    {
      v7 = 1;
      goto LABEL_11;
    }

    v8 = 31;
    goto LABEL_20;
  }

  if (a3 == 6)
  {
    v8 = 1;
LABEL_20:
    [v4 setDay:v8];
    goto LABEL_21;
  }

  if (a3 == 7)
  {
    [v4 setHour:1];
  }

LABEL_21:

  return v5;
}

+ (id)seriesPointIntervalUnitForTimeScope:(int64_t)a3 pointCount:(int64_t)a4
{
  if (a3 <= 3)
  {
    v7 = @"MONTHS_NUMBERED_UNIT";
    v8 = @"WEEKS_NUMBERED_UNIT";
    if (a3 != 3)
    {
      v8 = 0;
    }

    if (a3 != 2)
    {
      v7 = v8;
    }

    if (a3 >= 2)
    {
      v6 = v7;
    }

    else
    {
      v6 = @"YEARS_NUMBERED_UNIT";
    }

    goto LABEL_15;
  }

  if (a3 <= 6)
  {
    v5 = @"HOURS_NUMBERED_UNIT";
    if (a3 != 6)
    {
      v5 = 0;
    }

    if ((a3 - 4) >= 2)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"DAYS_NUMBERED_UNIT";
    }

    goto LABEL_15;
  }

  if (a3 == 7)
  {
    v6 = @"MINUTES_NUMBERED_UNIT";
LABEL_15:
    v9 = MEMORY[0x1E696AEC0];
    v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v11 = [v10 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v12 = [v9 localizedStringWithFormat:v11, a4];

    goto LABEL_16;
  }

  if (a3 != 8)
  {
    v6 = 0;
    goto LABEL_15;
  }

  v12 = &stru_1F42FFBE0;
LABEL_16:

  return v12;
}

+ (int64_t)visibleSeriesPointCountForTimeScope:(int64_t)a3 resolution:(int64_t)a4
{
  v5 = [a1 configurationForZoomLevel:a3];
  v6 = [v5 visibleSeriesPointCountAtResolution:a4];

  return v6;
}

- (int64_t)visibleSeriesPointCountAtResolution:(int64_t)a3
{
  [(HKGraphZoomLevelConfiguration *)self canonicalSize];
  v6 = v5;
  v7 = [(HKGraphZoomLevelConfiguration *)self seriesPointIntervalComponentsAtResolution:a3];
  [v7 hk_approximateDuration];
  v9 = vcvtmd_s64_f64(v6 / fmax(v8, 1.0));

  return v9;
}

- (id)seriesPointIntervalComponentsAtResolution:(int64_t)a3
{
  if (a3 <= 2)
  {
    a2 = *(&self->super.isa + qword_1C3D5D890[a3]);
  }

  return a2;
}

- (double)approximateSeriesPointIntervalAtResolution:(int64_t)a3
{
  if (a3 <= 2)
  {
    return *(&self->super.isa + qword_1C3D5D8A8[a3]);
  }

  return result;
}

+ (void)_generateConfigurationForZoomLevel:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCoordinateTransform.m" lineNumber:214 description:{@"Invalid parameter not satisfying: %@", @"(zoom >= 0) && (zoom < HKTimeScopeCount)"}];
}

@end