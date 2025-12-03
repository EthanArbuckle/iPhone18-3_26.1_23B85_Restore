@interface HKGraphZoomLevelConfiguration
+ (id)_axisSpanDateComponentsWithTimeScope:(int64_t)scope;
+ (id)_chartVisibleRangeForTimeScope:(int64_t)scope anchorDate:(id)date alignment:(int64_t)alignment dataRange:(id)range calendar:(id)calendar firstWeekday:(int64_t)weekday cadence:(int64_t)cadence level:(int64_t)self0 anchorDateIsInclusive:(BOOL)self1;
+ (id)_dateOffsetByHalfCanonicalSizeOfDate:(id)date timeScope:(int64_t)scope;
+ (id)_findVisibleRangeForTimeScope:(int64_t)scope anchorDate:(id)date alignment:(int64_t)alignment calendar:(id)calendar anchorDateIsInclusive:(BOOL)inclusive;
+ (id)_fitRange:(id)range toDateRange:(id)dateRange timeScope:(int64_t)scope alignment:(int64_t)alignment calendar:(id)calendar firstWeekday:(int64_t)weekday cadence:(int64_t)cadence level:(int64_t)self0;
+ (id)_generateConfigurationForZoomLevel:(int64_t)level;
+ (id)_gregorianCalendarForCalendar:(id)calendar;
+ (id)_snappingStartDateWithStartDate:(id)date velocity:(CGPoint)velocity calendar:(id)calendar timeScope:(int64_t)scope options:(int64_t)options alignment:(int64_t)alignment;
+ (id)_visibleRangeDateFromAnchor:(id)anchor timeScope:(int64_t)scope calendar:(id)calendar offset:(int64_t)offset;
+ (id)_visibleRangeDateFromDate:(id)date timeScope:(int64_t)scope calendar:(id)calendar offset:(int64_t)offset;
+ (id)activeRangeFromCadenceRange:(id)range timeScope:(int64_t)scope axisRange:(id)axisRange calendar:(id)calendar;
+ (id)chartDataRangeForTimeScope:(int64_t)scope dataRange:(id)range firstWeekday:(int64_t)weekday calendar:(id)calendar cadence:(int64_t)cadence alignment:(int64_t)alignment;
+ (id)configurationForZoomLevel:(int64_t)level;
+ (id)defaultCalendar;
+ (id)seriesPointIntervalUnitForTimeScope:(int64_t)scope pointCount:(int64_t)count;
+ (id)snappingRangeForRange:(id)range axisRange:(id)axisRange timeScope:(int64_t)scope velocity:(CGPoint)velocity calendar:(id)calendar options:(int64_t)options alignment:(int64_t)alignment;
+ (int64_t)timeScopeForDateRange:(id)range;
+ (int64_t)visibleSeriesPointCountForTimeScope:(int64_t)scope resolution:(int64_t)resolution;
- (double)approximateSeriesPointIntervalAtResolution:(int64_t)resolution;
- (id)seriesPointIntervalComponentsAtResolution:(int64_t)resolution;
- (int64_t)visibleSeriesPointCountAtResolution:(int64_t)resolution;
@end

@implementation HKGraphZoomLevelConfiguration

+ (id)_generateConfigurationForZoomLevel:(int64_t)level
{
  if (level >= 8)
  {
    [(HKGraphZoomLevelConfiguration *)a2 _generateConfigurationForZoomLevel:self];
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
  levelCopy = level;
  if (level > 3)
  {
    if (level <= 5)
    {
      if (level == 4)
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
        v13 = level == 5;
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
      if (level == 6)
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

      if (level == 7)
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

      v13 = level == 8;
      v14 = v6;
      if (!v13)
      {
        goto LABEL_31;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HKCoordinateTransform.m" lineNumber:330 description:{@"Invalid zoom level (%ld)", 8}];
    }

    v12 = 16;
    goto LABEL_31;
  }

  if (level <= 1)
  {
    if (level)
    {
      v13 = level == 1;
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

  if (level == 2)
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
    v13 = level == 3;
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
  defaultCalendar = [self defaultCalendar];
  v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v51 = v8;
  v48 = [defaultCalendar dateByAddingComponents:v8 toDate:v21 options:0];
  v50 = v10;
  v47 = [defaultCalendar dateByAddingComponents:v10 toDate:v21 options:0];
  v49 = v11;
  v46 = [defaultCalendar dateByAddingComponents:v11 toDate:v21 options:0];
  v45 = [defaultCalendar dateByAddingComponents:v14 toDate:v21 options:0];
  v44 = [defaultCalendar dateByAddingComponents:v7 toDate:v21 options:0];
  v43 = [defaultCalendar dateByAddingComponents:v55 toDate:v21 options:0];
  v42 = [defaultCalendar dateByAddingComponents:v9 toDate:v21 options:0];
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
  v23->_intendedTimeScope = levelCopy;

  return v23;
}

+ (id)configurationForZoomLevel:(int64_t)level
{
  if (configurationForZoomLevel__onceToken != -1)
  {
    +[HKGraphZoomLevelConfiguration configurationForZoomLevel:];
  }

  os_unfair_lock_lock(&configurationForZoomLevel__configurationLock);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:level];
  v6 = [configurationForZoomLevel____configurations objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [self _generateConfigurationForZoomLevel:level];
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

+ (int64_t)timeScopeForDateRange:(id)range
{
  rangeCopy = range;
  endDate = [rangeCopy endDate];
  [endDate timeIntervalSinceReferenceDate];
  v7 = v6;
  startDate = [rangeCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
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
    defaultCalendar = [self defaultCalendar];
    endDate2 = [rangeCopy endDate];
    v14 = [defaultCalendar dateByAddingComponents:v11 toDate:endDate2 options:0];

    startDate2 = [rangeCopy startDate];
    LOBYTE(endDate2) = [v14 hk_isBeforeOrEqualToDate:startDate2];

    if (endDate2)
    {
      v16 = 4;
    }

    else
    {
      [v11 setMonth:-6];
      defaultCalendar2 = [self defaultCalendar];
      endDate3 = [rangeCopy endDate];
      v19 = [defaultCalendar2 dateByAddingComponents:v11 toDate:endDate3 options:0];

      startDate3 = [rangeCopy startDate];
      v21 = [v19 hk_isBeforeOrEqualToDate:startDate3];

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

+ (id)_gregorianCalendarForCalendar:(id)calendar
{
  calendarCopy = calendar;
  calendarIdentifier = [calendarCopy calendarIdentifier];
  if ([calendarIdentifier isEqualToString:*MEMORY[0x1E695D850]])
  {
    defaultCalendar = calendarCopy;
  }

  else
  {
    defaultCalendar = [self defaultCalendar];
  }

  v7 = defaultCalendar;

  return v7;
}

+ (id)chartDataRangeForTimeScope:(int64_t)scope dataRange:(id)range firstWeekday:(int64_t)weekday calendar:(id)calendar cadence:(int64_t)cadence alignment:(int64_t)alignment
{
  calendarCopy = calendar;
  rangeCopy = range;
  minValue = [rangeCopy minValue];
  maxValue = [rangeCopy maxValue];

  v19 = minValue;
  v20 = maxValue;
  v21 = v20;
  if (scope <= 3)
  {
    if (scope > 1)
    {
      if (scope != 2)
      {
        v24 = [calendarCopy hk_sixMonthPeriodContaining:v19 dateBefore:1];

        v29 = [calendarCopy hk_sixMonthPeriodContaining:v21 dateBefore:0];
LABEL_25:
        v23 = v29;
        currentHandler = v21;
        goto LABEL_26;
      }

      v26 = calendarCopy;
      v27 = v19;
      v28 = 0;
    }

    else if (scope)
    {
      v23 = v20;
      v24 = v19;
      if (scope != 1)
      {
        goto LABEL_27;
      }

      v26 = calendarCopy;
      v27 = v19;
      v28 = -4;
    }

    else
    {
      v26 = calendarCopy;
      v27 = v19;
      v28 = -9;
    }

    v24 = [v26 hk_startOfYearForDate:v27 addingYears:v28];

    v29 = [calendarCopy hk_startOfYearForDate:v21 addingYears:1];
    goto LABEL_25;
  }

  if (scope > 5)
  {
    if (scope == 6)
    {
      selfCopy = self;
      v24 = [calendarCopy hk_startOfDateByAddingDays:0 toDate:v19];

      v23 = [calendarCopy hk_startOfDateByAddingDays:1 toDate:v21];

      if (alignment != 4)
      {
        goto LABEL_27;
      }

      currentHandler = [selfCopy _gregorianCalendarForCalendar:calendarCopy];
      v31 = [v24 hk_sleepDayStartWithCalendar:currentHandler];

      v32 = [v23 hk_sleepDayStartWithCalendar:currentHandler];

      v23 = v32;
      v24 = v31;
      goto LABEL_26;
    }

    if (scope != 7)
    {
      selfCopy2 = self;
      v23 = v20;
      v24 = v19;
      if (scope != 8)
      {
        goto LABEL_27;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy2 file:@"HKCoordinateTransform.m" lineNumber:523 description:{@"Invalid zoom level (%ld)", 8}];
      v23 = v21;
      v24 = v19;
      goto LABEL_26;
    }

    v24 = [calendarCopy hk_startOfHourForDate:v19 addingHours:0];

    v29 = [calendarCopy hk_startOfHourForDate:v21 addingHours:1];
    goto LABEL_25;
  }

  if (scope != 4)
  {
    v24 = [calendarCopy hk_startOfWeekWithFirstWeekday:weekday beforeDate:v19 addingWeeks:0];

    v29 = [calendarCopy hk_startOfWeekWithFirstWeekday:weekday beforeDate:v21 addingWeeks:1];
    goto LABEL_25;
  }

  if (cadence == 1)
  {
    v24 = [calendarCopy hk_startOfMonthForDate:v19 addingMonths:0];

    v29 = [calendarCopy hk_startOfMonthForDate:v21 addingMonths:1];
    goto LABEL_25;
  }

  v23 = v20;
  v24 = v19;
  if (cadence)
  {
    goto LABEL_27;
  }

  v24 = [calendarCopy hk_startOfMonthForDate:v19 addingMonths:0];

  v33 = [calendarCopy hk_startOfMonthForDate:v21 addingMonths:0];

  currentHandler = objc_alloc_init(MEMORY[0x1E695DF10]);
  [currentHandler setCalendar:calendarCopy];
  [currentHandler setDay:1];
  v23 = [currentHandler hk_dateByAddingInterval:31 toDate:v33];

LABEL_26:
LABEL_27:
  v34 = [HKValueRange valueRangeWithMinValue:v24 maxValue:v23];

  return v34;
}

+ (id)_findVisibleRangeForTimeScope:(int64_t)scope anchorDate:(id)date alignment:(int64_t)alignment calendar:(id)calendar anchorDateIsInclusive:(BOOL)inclusive
{
  inclusiveCopy = inclusive;
  dateCopy = date;
  calendarCopy = calendar;
  v14 = 0;
  if (alignment <= 1)
  {
    if (alignment)
    {
      v15 = 0;
      if (alignment != 1)
      {
        goto LABEL_21;
      }

      v16 = [self _dateOffsetByHalfCanonicalSizeOfDate:dateCopy timeScope:scope];
      v15 = [self _visibleRangeDateFromAnchor:v16 timeScope:scope calendar:calendarCopy offset:0];

      goto LABEL_10;
    }

LABEL_9:
    v15 = [self _visibleRangeDateFromAnchor:dateCopy timeScope:scope calendar:calendarCopy offset:0];
LABEL_10:
    v14 = [self _visibleRangeDateFromDate:v15 timeScope:scope calendar:calendarCopy offset:1];
    goto LABEL_21;
  }

  if (alignment == 2)
  {
    v14 = [self _visibleRangeDateFromAnchor:dateCopy timeScope:scope calendar:calendarCopy offset:0];
    if (([v14 hk_isBeforeDate:dateCopy] & 1) != 0 || inclusiveCopy && objc_msgSend(v14, "hk_isBeforeOrEqualToDate:", dateCopy))
    {
      if (scope == 3)
      {
        [calendarCopy hk_startOfWeekWithFirstWeekday:objc_msgSend(calendarCopy beforeDate:"firstWeekday") addingWeeks:{dateCopy, 1}];
      }

      else
      {
        [self _visibleRangeDateFromAnchor:dateCopy timeScope:scope calendar:calendarCopy offset:1];
      }
      v20 = ;

      v14 = v20;
    }

    v15 = [self _visibleRangeDateFromDate:v14 timeScope:scope calendar:calendarCopy offset:-1];
    goto LABEL_21;
  }

  if (alignment == 4)
  {
    v17 = [self _visibleRangeDateFromAnchor:dateCopy timeScope:scope calendar:calendarCopy offset:0];
    v18 = [self _visibleRangeDateFromDate:v17 timeScope:scope calendar:calendarCopy offset:1];
    v19 = [self _gregorianCalendarForCalendar:calendarCopy];
    v15 = [v17 hk_sleepDayStartWithCalendar:v19];

    v14 = [v18 hk_sleepDayStartWithCalendar:v19];

    goto LABEL_21;
  }

  v15 = 0;
  if (alignment == 3)
  {
    goto LABEL_9;
  }

LABEL_21:
  v21 = [HKValueRange valueRangeWithMinValue:v15 maxValue:v14];

  return v21;
}

+ (id)_visibleRangeDateFromAnchor:(id)anchor timeScope:(int64_t)scope calendar:(id)calendar offset:(int64_t)offset
{
  anchorCopy = anchor;
  calendarCopy = calendar;
  v13 = calendarCopy;
  v14 = 0;
  if (scope <= 4)
  {
    if (scope <= 2)
    {
      if (scope >= 2)
      {
        if (scope != 2)
        {
          goto LABEL_18;
        }

        v15 = [calendarCopy hk_startOfMonthForDate:anchorCopy addingMonths:offset];
      }

      else
      {
        v15 = [calendarCopy hk_startOfYearForDate:anchorCopy addingYears:offset];
      }

      goto LABEL_17;
    }

    if (scope == 3)
    {
      v15 = [calendarCopy hk_startOfWeekWithFirstWeekday:objc_msgSend(calendarCopy beforeDate:"firstWeekday") addingWeeks:{anchorCopy, 26 * offset}];
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (scope <= 6)
  {
    if (scope != 5)
    {
      v15 = [calendarCopy hk_startOfHourForDate:anchorCopy addingHours:offset];
LABEL_17:
      v14 = v15;
      goto LABEL_18;
    }

LABEL_12:
    v15 = [calendarCopy hk_startOfDateByAddingDays:offset toDate:anchorCopy];
    goto LABEL_17;
  }

  if (scope == 7)
  {
    v17 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:7];
    axisLabelIntervalComponents = [v17 axisLabelIntervalComponents];
    minute = [axisLabelIntervalComponents minute];

    v14 = [v13 hk_startOfMinuteForDate:anchorCopy moduloMinutes:minute addingModuloCount:offset];
  }

  else if (scope == 8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKCoordinateTransform.m" lineNumber:616 description:{@"Invalid zoom level (%ld)", 8}];

    v14 = 0;
  }

LABEL_18:

  return v14;
}

+ (id)_visibleRangeDateFromDate:(id)date timeScope:(int64_t)scope calendar:(id)calendar offset:(int64_t)offset
{
  calendarCopy = calendar;
  dateCopy = date;
  v12 = [self _axisSpanDateComponentsWithTimeScope:scope];
  [v12 setCalendar:calendarCopy];

  v13 = [v12 hk_dateByAddingInterval:offset toDate:dateCopy];

  return v13;
}

+ (id)_dateOffsetByHalfCanonicalSizeOfDate:(id)date timeScope:(int64_t)scope
{
  dateCopy = date;
  v6 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:scope];
  [v6 canonicalSize];
  v8 = [dateCopy dateByAddingTimeInterval:v7 * -0.5];

  return v8;
}

+ (id)_fitRange:(id)range toDateRange:(id)dateRange timeScope:(int64_t)scope alignment:(int64_t)alignment calendar:(id)calendar firstWeekday:(int64_t)weekday cadence:(int64_t)cadence level:(int64_t)self0
{
  v84 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  dateRangeCopy = dateRange;
  calendarCopy = calendar;
  startDate = [rangeCopy startDate];
  v18 = rangeCopy;
  endDate = [rangeCopy endDate];
  startDate2 = [dateRangeCopy startDate];
  v67 = dateRangeCopy;
  endDate2 = [dateRangeCopy endDate];
  v23 = scope == 6 && alignment == 4;
  v69 = startDate;
  v70 = startDate2;
  v24 = startDate2;
  v25 = endDate2;
  v26 = [startDate compare:v24];
  v68 = endDate;
  v27 = [endDate compare:v25];
  if (v26 == -1)
  {
    if (v27 == 1)
    {
      v37 = HKStringForHKTimeScope(scope, 0);
      v34 = v18;
      if ((alignment - 1) > 3)
      {
        v38 = @"left";
      }

      else
      {
        v38 = off_1E81B9DE8[alignment - 1];
      }

      v29 = calendarCopy;
      v36 = v67;
      v32 = v70;
      _HKInitializeLogging();
      v48 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        startDate3 = [v34 startDate];
        endDate3 = [v34 endDate];
        startDate4 = [v67 startDate];
        [v67 endDate];
        v54 = v62 = v25;
        *buf = 138544642;
        v73 = startDate3;
        v74 = 2114;
        v75 = endDate3;
        v76 = 2114;
        v77 = startDate4;
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
      v29 = calendarCopy;
      v40 = [HKGraphZoomLevelConfiguration _chartVisibleRangeForTimeScope:scope anchorDate:v70 alignment:v39 dataRange:0 calendar:calendarCopy firstWeekday:weekday cadence:cadence level:level + 1 anchorDateIsInclusive:v59];
      endDate4 = [v40 endDate];
      v42 = v25;
      v43 = [endDate4 compare:v25];

      v34 = v18;
      if (v43 == 1)
      {
        v44 = HKStringForHKTimeScope(scope, 0);
        v36 = v67;
        if ((alignment - 1) > 3)
        {
          v45 = @"left";
        }

        else
        {
          v45 = off_1E81B9DE8[alignment - 1];
        }

        v25 = v42;
        _HKInitializeLogging();
        v50 = HKLogWellnessDashboard();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          startDate5 = [v34 startDate];
          endDate5 = [v34 endDate];
          startDate6 = [v67 startDate];
          [v67 endDate];
          *buf = 138544642;
          v73 = startDate5;
          v74 = 2114;
          v75 = endDate5;
          v76 = 2114;
          v77 = startDate6;
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
    v29 = calendarCopy;
    v30 = [HKGraphZoomLevelConfiguration _chartVisibleRangeForTimeScope:scope anchorDate:v25 alignment:v28 dataRange:0 calendar:calendarCopy firstWeekday:weekday cadence:cadence level:level + 1 anchorDateIsInclusive:v59];
    startDate7 = [v30 startDate];
    v32 = v70;
    v33 = [startDate7 compare:v70];

    v34 = v18;
    if (v33 == -1)
    {
      v46 = HKStringForHKTimeScope(scope, 0);
      v36 = v67;
      if ((alignment - 1) > 3)
      {
        v47 = @"left";
      }

      else
      {
        v47 = off_1E81B9DE8[alignment - 1];
      }

      _HKInitializeLogging();
      v49 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        startDate8 = [v34 startDate];
        endDate6 = [v34 endDate];
        startDate9 = [v67 startDate];
        [v67 endDate];
        *buf = 138544642;
        v73 = startDate8;
        v74 = 2114;
        v75 = endDate6;
        v76 = 2114;
        v77 = startDate9;
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
    v29 = calendarCopy;
    v36 = v67;
    v32 = v70;
  }

  return v35;
}

+ (id)_chartVisibleRangeForTimeScope:(int64_t)scope anchorDate:(id)date alignment:(int64_t)alignment dataRange:(id)range calendar:(id)calendar firstWeekday:(int64_t)weekday cadence:(int64_t)cadence level:(int64_t)self0 anchorDateIsInclusive:(BOOL)self1
{
  v42 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  rangeCopy = range;
  calendarCopy = calendar;
  if (dateCopy)
  {
    date = dateCopy;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v20 = date;
  if ((alignment - 3) <= 1)
  {
    v21 = [HKValueRange valueRangeWithMinValue:date maxValue:date];
    v22 = [HKGraphZoomLevelConfiguration chartDataRangeForTimeScope:scope dataRange:v21 firstWeekday:weekday calendar:calendarCopy cadence:cadence alignment:alignment];

    if (rangeCopy)
    {
      goto LABEL_6;
    }

LABEL_9:
    v23 = v22;
    goto LABEL_10;
  }

  v22 = [self _findVisibleRangeForTimeScope:scope anchorDate:date alignment:alignment calendar:calendarCopy anchorDateIsInclusive:inclusive];
  if (!rangeCopy)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (level <= 2)
  {
    v23 = [HKGraphZoomLevelConfiguration _fitRange:v22 toDateRange:rangeCopy timeScope:scope alignment:alignment calendar:calendarCopy firstWeekday:weekday cadence:cadence level:level];
LABEL_10:
    v24 = v23;
    goto LABEL_17;
  }

  v25 = HKStringForHKTimeScope(scope, 0);
  if ((alignment - 1) > 3)
  {
    v26 = @"left";
  }

  else
  {
    v26 = off_1E81B9DE8[alignment - 1];
  }

  _HKInitializeLogging();
  v27 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    startDate = [rangeCopy startDate];
    endDate = [rangeCopy endDate];
    *buf = 138544386;
    v33 = v20;
    v34 = 2114;
    v35 = startDate;
    v36 = 2114;
    v37 = endDate;
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

+ (id)snappingRangeForRange:(id)range axisRange:(id)axisRange timeScope:(int64_t)scope velocity:(CGPoint)velocity calendar:(id)calendar options:(int64_t)options alignment:(int64_t)alignment
{
  y = velocity.y;
  x = velocity.x;
  axisRangeCopy = axisRange;
  calendarCopy = calendar;
  startDate = [range startDate];
  v20 = [self _snappingStartDateWithStartDate:startDate velocity:calendarCopy calendar:scope timeScope:options options:alignment alignment:{x, y}];

  startDate2 = [axisRangeCopy startDate];
  LODWORD(startDate) = HKUIObjectIsSmaller(v20, startDate2);

  if (startDate)
  {
    startDate3 = [axisRangeCopy startDate];

    v20 = startDate3;
  }

  v23 = [self _axisSpanDateComponentsWithTimeScope:scope];
  [v23 setCalendar:calendarCopy];
  v24 = [v23 hk_dateByAddingInterval:1 toDate:v20];
  endDate = [axisRangeCopy endDate];
  IsSmaller = HKUIObjectIsSmaller(endDate, v24);

  if (IsSmaller)
  {
    endDate2 = [axisRangeCopy endDate];

    v28 = [v23 hk_dateByAddingInterval:-1 toDate:endDate2];
    startDate4 = [axisRangeCopy startDate];
    v30 = HKUIObjectMax(v28, startDate4);

    v20 = v30;
    v24 = endDate2;
  }

  v31 = [HKValueRange valueRangeWithMinValue:v20 maxValue:v24];

  return v31;
}

+ (id)activeRangeFromCadenceRange:(id)range timeScope:(int64_t)scope axisRange:(id)axisRange calendar:(id)calendar
{
  rangeCopy = range;
  calendarCopy = calendar;
  axisRangeCopy = axisRange;
  startDate = [rangeCopy startDate];
  v13 = +[HKGraphZoomLevelConfiguration chartVisibleRangeForTimeScope:anchorDate:alignment:dataRange:calendar:firstWeekday:cadence:level:](HKGraphZoomLevelConfiguration, "chartVisibleRangeForTimeScope:anchorDate:alignment:dataRange:calendar:firstWeekday:cadence:level:", scope, startDate, 3, axisRangeCopy, calendarCopy, [calendarCopy firstWeekday], 1, 0);

  startDate2 = [rangeCopy startDate];
  startDate3 = [v13 startDate];
  v16 = [startDate2 compare:startDate3];

  if (v16)
  {
    v17 = rangeCopy;
  }

  else
  {
    v17 = v13;
  }

  v18 = v17;

  return v17;
}

+ (id)_snappingStartDateWithStartDate:(id)date velocity:(CGPoint)velocity calendar:(id)calendar timeScope:(int64_t)scope options:(int64_t)options alignment:(int64_t)alignment
{
  optionsCopy = options;
  x = velocity.x;
  dateCopy = date;
  calendarCopy = calendar;
  v16 = fabs(x);
  v17 = x > 0.0;
  v18 = dateCopy;
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

    if (scope > 3)
    {
      if (scope > 5)
      {
        if (scope == 6)
        {
          v21 = [calendarCopy hk_startOfDateByAddingDays:v26 toDate:v18];

          v45 = calendarCopy;
          v46 = v27;
          goto LABEL_47;
        }

        v20 = v18;
        v21 = v18;
        if (scope != 7)
        {
          goto LABEL_55;
        }

        v21 = [calendarCopy hk_startOfHourForDate:v18 addingHours:v26];

        v35 = calendarCopy;
        v36 = v19;
        v37 = v27;
LABEL_52:
        v31 = [v35 hk_startOfHourForDate:v36 addingHours:v37];
        goto LABEL_53;
      }

      if (scope == 4)
      {
        v21 = [calendarCopy hk_startOfMonthForDate:v18 addingMonths:v26];

        v42 = calendarCopy;
        v43 = v19;
        v44 = v27;
        goto LABEL_50;
      }
    }

    else
    {
      if (scope <= 1)
      {
        if (scope)
        {
          v20 = v18;
          v21 = v18;
          if (scope != 1)
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

          v21 = [calendarCopy hk_startOfYearForDate:v18 addingYears:v29];

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

          v21 = [calendarCopy hk_startOfYearForDate:v18 addingYears:v41];

          v30 = 10;
        }

        v40 = v30 << v28;
        v38 = calendarCopy;
        v39 = v19;
        goto LABEL_43;
      }

      if (scope == 2)
      {
        v21 = [calendarCopy hk_startOfYearForDate:v18 addingYears:v26];

        v38 = calendarCopy;
        v39 = v19;
        v40 = v27;
        goto LABEL_43;
      }
    }

    v21 = [calendarCopy hk_startOfWeekWithFirstWeekday:objc_msgSend(calendarCopy beforeDate:"firstWeekday") addingWeeks:{v18, v26}];

    firstWeekday = [calendarCopy firstWeekday];
    v23 = calendarCopy;
    v24 = v19;
    v25 = v27;
LABEL_28:
    v31 = [v23 hk_startOfWeekWithFirstWeekday:firstWeekday beforeDate:v24 addingWeeks:v25];
    goto LABEL_53;
  }

  if (scope <= 3)
  {
    if (scope >= 2)
    {
      if (scope != 2)
      {
        v20 = v18;
        v21 = v18;
        if (scope != 3)
        {
          goto LABEL_55;
        }

        v21 = [calendarCopy hk_startOfWeekWithFirstWeekday:objc_msgSend(calendarCopy beforeDate:"firstWeekday") addingWeeks:{v18, 0}];

        firstWeekday = [calendarCopy firstWeekday];
        v23 = calendarCopy;
        v24 = v19;
        v25 = 1;
        goto LABEL_28;
      }

      v21 = [calendarCopy hk_startOfMonthForDate:v18 addingMonths:0];

      v42 = calendarCopy;
      v43 = v19;
      v44 = 1;
LABEL_50:
      v31 = [v42 hk_startOfMonthForDate:v43 addingMonths:v44];
      goto LABEL_53;
    }

    v21 = [calendarCopy hk_startOfYearForDate:v18 addingYears:0];

    v38 = calendarCopy;
    v39 = v19;
    v40 = 1;
LABEL_43:
    v31 = [v38 hk_startOfYearForDate:v39 addingYears:v40];
    goto LABEL_53;
  }

  if (scope <= 5)
  {
    v21 = [calendarCopy hk_startOfDateByAddingDays:0 toDate:v18];

    v31 = [calendarCopy hk_startOfDateByAddingDays:1 toDate:v19];
LABEL_53:
    v20 = v31;
    v32 = v19;
    goto LABEL_54;
  }

  if (scope != 6)
  {
    v20 = v18;
    v21 = v18;
    if (scope != 7)
    {
      goto LABEL_55;
    }

    v32 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:7];
    axisLabelIntervalComponents = [v32 axisLabelIntervalComponents];
    minute = [axisLabelIntervalComponents minute];

    v21 = [calendarCopy hk_startOfMinuteForDate:v19 moduloMinutes:minute addingModuloCount:0];

    v20 = [calendarCopy hk_startOfMinuteForDate:v19 moduloMinutes:minute addingModuloCount:1];

    goto LABEL_54;
  }

  if ((optionsCopy & 1) == 0)
  {
    v21 = [calendarCopy hk_startOfHourForDate:v18 addingHours:0];

    v35 = calendarCopy;
    v36 = v19;
    v37 = 1;
    goto LABEL_52;
  }

  v21 = [calendarCopy hk_startOfDateByAddingDays:0 toDate:v18];

  v45 = calendarCopy;
  v46 = 1;
LABEL_47:
  v20 = [v45 hk_startOfDateByAddingDays:v46 toDate:v19];

  if (alignment != 4)
  {
    goto LABEL_55;
  }

  v32 = [self _gregorianCalendarForCalendar:calendarCopy];
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

+ (id)_axisSpanDateComponentsWithTimeScope:(int64_t)scope
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v5 = v4;
  if (scope <= 3)
  {
    if (scope <= 1)
    {
      if (scope)
      {
        if (scope != 1)
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

    if (scope == 2)
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

  if (scope <= 5)
  {
    if (scope != 4)
    {
      v7 = 1;
      goto LABEL_11;
    }

    v8 = 31;
    goto LABEL_20;
  }

  if (scope == 6)
  {
    v8 = 1;
LABEL_20:
    [v4 setDay:v8];
    goto LABEL_21;
  }

  if (scope == 7)
  {
    [v4 setHour:1];
  }

LABEL_21:

  return v5;
}

+ (id)seriesPointIntervalUnitForTimeScope:(int64_t)scope pointCount:(int64_t)count
{
  if (scope <= 3)
  {
    v7 = @"MONTHS_NUMBERED_UNIT";
    v8 = @"WEEKS_NUMBERED_UNIT";
    if (scope != 3)
    {
      v8 = 0;
    }

    if (scope != 2)
    {
      v7 = v8;
    }

    if (scope >= 2)
    {
      v6 = v7;
    }

    else
    {
      v6 = @"YEARS_NUMBERED_UNIT";
    }

    goto LABEL_15;
  }

  if (scope <= 6)
  {
    v5 = @"HOURS_NUMBERED_UNIT";
    if (scope != 6)
    {
      v5 = 0;
    }

    if ((scope - 4) >= 2)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"DAYS_NUMBERED_UNIT";
    }

    goto LABEL_15;
  }

  if (scope == 7)
  {
    v6 = @"MINUTES_NUMBERED_UNIT";
LABEL_15:
    v9 = MEMORY[0x1E696AEC0];
    v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v11 = [v10 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v12 = [v9 localizedStringWithFormat:v11, count];

    goto LABEL_16;
  }

  if (scope != 8)
  {
    v6 = 0;
    goto LABEL_15;
  }

  v12 = &stru_1F42FFBE0;
LABEL_16:

  return v12;
}

+ (int64_t)visibleSeriesPointCountForTimeScope:(int64_t)scope resolution:(int64_t)resolution
{
  v5 = [self configurationForZoomLevel:scope];
  v6 = [v5 visibleSeriesPointCountAtResolution:resolution];

  return v6;
}

- (int64_t)visibleSeriesPointCountAtResolution:(int64_t)resolution
{
  [(HKGraphZoomLevelConfiguration *)self canonicalSize];
  v6 = v5;
  v7 = [(HKGraphZoomLevelConfiguration *)self seriesPointIntervalComponentsAtResolution:resolution];
  [v7 hk_approximateDuration];
  v9 = vcvtmd_s64_f64(v6 / fmax(v8, 1.0));

  return v9;
}

- (id)seriesPointIntervalComponentsAtResolution:(int64_t)resolution
{
  if (resolution <= 2)
  {
    a2 = *(&self->super.isa + qword_1C3D5D890[resolution]);
  }

  return a2;
}

- (double)approximateSeriesPointIntervalAtResolution:(int64_t)resolution
{
  if (resolution <= 2)
  {
    return *(&self->super.isa + qword_1C3D5D8A8[resolution]);
  }

  return result;
}

+ (void)_generateConfigurationForZoomLevel:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCoordinateTransform.m" lineNumber:214 description:{@"Invalid parameter not satisfying: %@", @"(zoom >= 0) && (zoom < HKTimeScopeCount)"}];
}

@end