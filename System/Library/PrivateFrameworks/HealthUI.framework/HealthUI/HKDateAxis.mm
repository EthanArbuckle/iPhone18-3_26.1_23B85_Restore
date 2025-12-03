@interface HKDateAxis
- (HKDateAxis)initWithCurrentCalendar:(id)calendar axisStyle:(id)style;
- (id)_axisLabelsWithModelRange:(id)range zoom:(int64_t)zoom;
- (id)_dateRangeForChartRange:(HKRange)range zoomScale:(double)scale;
- (id)_firstDateAfter:(id)after matchingComponents:(id)components timeScope:(int64_t)scope calendar:(id)calendar;
- (id)_formattedStringForDate:(id)date zoom:(int64_t)zoom;
- (id)baseDateForDate:(id)date components:(id)components calendar:(id)calendar;
- (id)cacheKeysForModelRange:(id)range zoomScale:(double)scale;
- (id)extendModelRangeWithRange:(id)range zoomScale:(double)scale;
- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale;
- (id)nextDateForDate:(id)date components:(id)components timeScope:(int64_t)scope calendar:(id)calendar;
- (id)rangeForChartRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset;
- (id)stringForDate:(id)date zoom:(int64_t)zoom labelType:(int64_t)type;
- (int64_t)dateZoomForZoomScale:(double)scale;
- (unint64_t)_anchorUnitForZoom:(int64_t)zoom;
- (void)_enumerateCoordinatesInModelRange:(id)range timeScope:(int64_t)scope withHandler:(id)handler;
- (void)offsetForValueRange:(id)range chartRect:(CGRect)rect zoomScaleOut:(double *)out contentOffsetOut:(CGPoint *)offsetOut;
@end

@implementation HKDateAxis

- (HKDateAxis)initWithCurrentCalendar:(id)calendar axisStyle:(id)style
{
  calendarCopy = calendar;
  styleCopy = style;
  v9 = objc_alloc_init(HKAxisConfiguration);
  v10 = [[HKDateZoomScale alloc] initWithCurrentCalendar:calendarCopy];
  [(HKAxisConfiguration *)v9 setZoomScaleEngine:v10];

  v11 = [[HKDateCoordinateTransform alloc] initWithCurrentCalendar:calendarCopy];
  [(HKAxisConfiguration *)v9 setTransform:v11];

  [(HKAxisConfiguration *)v9 setPreferredStyle:styleCopy];
  v15.receiver = self;
  v15.super_class = HKDateAxis;
  v12 = [(HKAxis *)&v15 initWithConfiguration:v9];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_currentCalendar, calendar);
  }

  return v13;
}

- (id)_formattedStringForDate:(id)date zoom:(int64_t)zoom
{
  dateCopy = date;
  v8 = dateCopy;
  v9 = 0;
  if (zoom <= 3)
  {
    if (zoom > 1)
    {
      if (zoom == 2)
      {
        v11 = 4;
      }

      else
      {
        v11 = 3;
      }
    }

    else if (zoom)
    {
      if (zoom != 1)
      {
        goto LABEL_22;
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_21;
  }

  if (zoom <= 5)
  {
    if (zoom == 4)
    {
      v11 = 16;
    }

    else
    {
      v11 = 18;
    }

    goto LABEL_21;
  }

  switch(zoom)
  {
    case 6:
      currentCalendar = [(HKDateAxis *)self currentCalendar];
      v13 = [currentCalendar startOfDayForDate:v8];

      currentCalendar2 = [(HKDateAxis *)self currentCalendar];
      v15 = [currentCalendar2 dateBySettingUnit:32 value:12 ofDate:v13 options:0];

      if (!HKTimeFormatIsIn24HourMode() && (([v8 isEqual:v13] & 1) != 0 || objc_msgSend(v8, "isEqual:", v15)))
      {
        v9 = HKLocalizedStringForDateAndTemplate(v8, 24);
      }

      else
      {
        v16 = HKLocalizedStringForDateAndTemplate(v8, 25);
        whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v9 = [v16 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
      }

      break;
    case 7:
      v11 = 27;
LABEL_21:
      v9 = HKLocalizedStringForDateAndTemplate(dateCopy, v11);
      break;
    case 8:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HKDateAxis.m" lineNumber:91 description:{@"Invalid zoom specified (%ld)", 8}];

      v9 = 0;
      break;
  }

LABEL_22:

  return v9;
}

- (id)stringForDate:(id)date zoom:(int64_t)zoom labelType:(int64_t)type
{
  if (type == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(HKDateAxis *)self _formattedStringForDate:date zoom:zoom, v5];
  }

  return v7;
}

- (unint64_t)_anchorUnitForZoom:(int64_t)zoom
{
  if (zoom > 4)
  {
    if ((zoom - 5) < 2)
    {
      return 16;
    }

    else if (zoom == 8)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HKDateAxis.m" lineNumber:142 description:{@"Invalid zoom level (%ld)", 8}];

      return 0;
    }

    else if (zoom == 7)
    {
      return 32;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = 8;
    v4 = 0x2000;
    if (zoom != 4)
    {
      v4 = 0;
    }

    if (zoom != 3)
    {
      v3 = v4;
    }

    if (zoom >= 3)
    {
      return v3;
    }

    else
    {
      return 4;
    }
  }
}

- (int64_t)dateZoomForZoomScale:(double)scale
{
  zoomScaleEngine = [(HKAxis *)self zoomScaleEngine];
  v5 = [zoomScaleEngine zoomForZoomScale:scale];

  return v5;
}

- (id)_axisLabelsWithModelRange:(id)range zoom:(int64_t)zoom
{
  v6 = MEMORY[0x1E695DF70];
  rangeCopy = range;
  array = [v6 array];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__HKDateAxis__axisLabelsWithModelRange_zoom___block_invoke;
  v13[3] = &unk_1E81BA0F8;
  zoomCopy = zoom;
  v13[4] = self;
  v9 = array;
  v14 = v9;
  [(HKDateAxis *)self _enumerateCoordinatesInModelRange:rangeCopy timeScope:zoom withHandler:v13];

  v10 = v14;
  v11 = v9;

  return v9;
}

void __45__HKDateAxis__axisLabelsWithModelRange_zoom___block_invoke(uint64_t a1, void *a2, char a3)
{
  v12 = a2;
  v5 = objc_opt_new();
  v6 = 1;
  v7 = 2;
  if ((a3 & 4) == 0)
  {
    v7 = -1;
  }

  if ((a3 & 2) == 0)
  {
    v6 = v7;
  }

  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (*(a1 + 48) == 4)
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_16;
    }

    v9 = 4;
  }

  else
  {
    if (![*(a1 + 32) canAddLabelForAxisLabelType:v8])
    {
      goto LABEL_16;
    }

    v9 = *(a1 + 48);
  }

  v10 = [*(a1 + 32) stringForDate:v12 zoom:v9 labelType:v8];
  if ([v10 length])
  {
    [v5 setText:v10];
  }

LABEL_16:
  [v5 setLocation:v12];
  if (*(a1 + 48) == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8;
  }

  [v5 setLabelType:v11];
  if (*(a1 + 48) == 3)
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_23;
    }

    [v5 setLabelType:1];
  }

  [*(a1 + 40) addObject:v5];
LABEL_23:
}

- (id)rangeForChartRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset
{
  [(HKAxis *)self _chartRangeForChartRect:rect.origin.x zoomScale:rect.origin.y contentOffset:rect.size.width, rect.size.height, scale, offset.x, offset.y];

  return [HKDateAxis _dateRangeForChartRange:"_dateRangeForChartRange:zoomScale:" zoomScale:?];
}

- (void)offsetForValueRange:(id)range chartRect:(CGRect)rect zoomScaleOut:(double *)out contentOffsetOut:(CGPoint *)offsetOut
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rangeCopy = range;
  transform = [(HKAxis *)self transform];
  minValue = [rangeCopy minValue];
  [transform coordinateForValue:minValue];
  v17 = v16;

  transform2 = [(HKAxis *)self transform];
  maxValue = [rangeCopy maxValue];

  [transform2 coordinateForValue:maxValue];
  [(HKAxis *)self pointTransform];
  v22 = HKLinearTransformRange(v20, v21, v17);
  if (v23 > 0.0)
  {

    [(HKAxis *)self _offsetForChartRect:out chartRange:offsetOut zoomScaleOut:x contentOffsetOut:y, width, height, v22, v23];
  }
}

- (id)_dateRangeForChartRange:(HKRange)range zoomScale:(double)scale
{
  var0 = range.var0;
  [(HKAxis *)self pointTransform];
  v8 = HKLinearTransformInvert(v6, v7);
  v10 = HKLinearTransformRange(v8, v9, var0);
  v12 = v11;
  transform = [(HKAxis *)self transform];
  v14 = [transform valueForCoordinate:{HKRangeMin(v10, v12)}];

  transform2 = [(HKAxis *)self transform];
  v16 = [transform2 valueForCoordinate:{HKRangeMax(v10, v12)}];

  v17 = [HKValueRange valueRangeWithMinValue:v14 maxValue:v16];

  return v17;
}

- (id)cacheKeysForModelRange:(id)range zoomScale:(double)scale
{
  rangeCopy = range;
  v7 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:[(HKDateAxis *)self dateZoomForZoomScale:scale]];
  [v7 canonicalSize];
  v9 = v8 * 3.0;
  startDate = [rangeCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v12 = vcvtmd_s64_f64(v11 / v9);

  endDate = [rangeCopy endDate];
  [endDate timeIntervalSinceReferenceDate];
  v15 = v14 / v9;
  v16 = floor(v15);
  v17 = vcvtmd_s64_f64(v15);

  v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v9 * v16];
  endDate2 = [rangeCopy endDate];
  v20 = [v18 isEqualToDate:endDate2];

  v21 = v20 ^ 1u;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((v21 + v17) >= v12)
  {
    v28 = v7;
    v23 = 0;
    v24 = v17 + v21 + 1;
    do
    {
      v25 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v9 * v12];
      if (v23)
      {
        v26 = [HKValueRange valueRangeWithMinValue:v23 maxValue:v25];
        [v22 addObject:v26];
      }

      ++v12;
      v23 = v25;
    }

    while (v24 != v12);

    v7 = v28;
  }

  return v22;
}

- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale
{
  rangeCopy = range;
  v7 = [(HKDateAxis *)self _axisLabelsWithModelRange:rangeCopy zoom:[(HKDateAxis *)self dateZoomForZoomScale:scale]];

  if ([v7 count])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)extendModelRangeWithRange:(id)range zoomScale:(double)scale
{
  rangeCopy = range;
  startDate = [rangeCopy startDate];
  if (startDate && (v8 = startDate, [rangeCopy endDate], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [(HKDateAxis *)self _anchorUnitForZoom:[(HKDateAxis *)self dateZoomForZoomScale:scale]];
    currentCalendar = [(HKDateAxis *)self currentCalendar];
    v23 = 0;
    startDate2 = [rangeCopy startDate];
    [currentCalendar rangeOfUnit:v10 startDate:&v23 interval:0 forDate:startDate2];
    v13 = v23;

    currentCalendar2 = [(HKDateAxis *)self currentCalendar];
    v22 = 0;
    endDate = [rangeCopy endDate];
    [currentCalendar2 rangeOfUnit:v10 startDate:&v22 interval:0 forDate:endDate];
    v16 = v22;

    endDate2 = [rangeCopy endDate];
    LODWORD(endDate) = [v16 hk_isBeforeDate:endDate2];

    if (endDate)
    {
      currentCalendar3 = [(HKDateAxis *)self currentCalendar];
      v19 = [currentCalendar3 dateByAddingUnit:v10 value:1 toDate:v16 options:0];

      v16 = v19;
    }

    v20 = [HKValueRange valueRangeWithMinValue:v13 maxValue:v16];
  }

  else
  {
    v20 = rangeCopy;
  }

  return v20;
}

- (void)_enumerateCoordinatesInModelRange:(id)range timeScope:(int64_t)scope withHandler:(id)handler
{
  rangeCopy = range;
  handlerCopy = handler;
  v9 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:scope];
  v10 = [(HKDateAxis *)self axisLabelIntervalComponentsForZoomLevelConfiguration:v9];
  v11 = [(HKDateAxis *)self minorAxisIntervalComponentsForZoomLevelConfiguration:v9];
  v38 = v9;
  referencePointIntervalComponents = [v9 referencePointIntervalComponents];
  v41 = v10;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_38:
    [HKDateAxis _enumerateCoordinatesInModelRange:timeScope:withHandler:];
    if (referencePointIntervalComponents)
    {
      goto LABEL_4;
    }

LABEL_39:
    [HKDateAxis _enumerateCoordinatesInModelRange:timeScope:withHandler:];
    goto LABEL_4;
  }

  [HKDateAxis _enumerateCoordinatesInModelRange:timeScope:withHandler:];
  if (!v11)
  {
    goto LABEL_38;
  }

LABEL_3:
  if (!referencePointIntervalComponents)
  {
    goto LABEL_39;
  }

LABEL_4:
  currentCalendar = [(HKDateAxis *)self currentCalendar];
  minValue = [rangeCopy minValue];
  v40 = referencePointIntervalComponents;
  v15 = [(HKDateAxis *)self _firstDateAfter:minValue matchingComponents:referencePointIntervalComponents timeScope:scope calendar:currentCalendar];

  minValue2 = [rangeCopy minValue];
  v17 = [(HKDateAxis *)self _firstDateAfter:minValue2 matchingComponents:v10 timeScope:scope calendar:currentCalendar];

  minValue3 = [rangeCopy minValue];
  v45 = v11;
  v19 = [(HKDateAxis *)self _firstDateAfter:minValue3 matchingComponents:v11 timeScope:scope calendar:currentCalendar];

  if (!v19)
  {
    [HKDateAxis _enumerateCoordinatesInModelRange:timeScope:withHandler:];
  }

  v20 = v19;
  v39 = rangeCopy;
  maxValue = [rangeCopy maxValue];
  if (HKUIObjectIsLarger(v20, maxValue))
  {
    v21 = v20;
    goto LABEL_36;
  }

  v43 = 0;
  v22 = v20;
  while (1)
  {
    if (v15 && [v22 isEqualToDate:v15])
    {
      v23 = v22;
      v24 = [(HKDateAxis *)self nextDateForDate:v15 components:v40 timeScope:scope calendar:currentCalendar];

      v25 = 1;
      v15 = v24;
      if (!v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v23 = 0;
      v25 = 0;
      if (!v17)
      {
        goto LABEL_18;
      }
    }

    if ([v22 isEqualToDate:v17])
    {
      if (!v23)
      {
        v23 = v22;
      }

      v25 |= 2uLL;
      v26 = [(HKDateAxis *)self nextDateForDate:v17 components:v41 timeScope:scope calendar:currentCalendar];

      v17 = v26;
    }

LABEL_18:
    if (v20 && [v22 isEqualToDate:v20])
    {
      if (!v23)
      {
        v23 = v22;
      }

      v25 |= 4uLL;
      v27 = [(HKDateAxis *)self nextDateForDate:v20 components:v45 timeScope:scope calendar:currentCalendar];

      v20 = v27;
    }

    if (v23)
    {
      v46 = 0;
      [(HKAxis *)self pointTransform];
      v29 = v28;
      v31 = v30;
      transform = [(HKAxis *)self transform];
      [transform coordinateForValue:v22];
      v34 = HKLinearTransformValue(v29, v31, v33);

      handlerCopy[2](handlerCopy, v23, v25, &v46, v34);
      if (v46 == 1)
      {
        break;
      }
    }

    v21 = [(HKDateAxis *)self nextDateForDate:v22 components:v45 timeScope:scope calendar:currentCalendar];

    if (scope == 4)
    {
      if (v15 && [v21 hk_isAfterDate:v15])
      {
        v35 = v21;

        v36 = v15;
      }

      else
      {
        v35 = 0;
        v36 = v43;
        if (!v43)
        {
LABEL_31:
          v43 = v35;
          goto LABEL_32;
        }
      }

      v37 = v36;

      v21 = v37;
      goto LABEL_31;
    }

LABEL_32:

    v22 = v21;
    if (HKUIObjectIsLarger(v21, maxValue))
    {
      goto LABEL_35;
    }
  }

  v21 = v22;
LABEL_35:

LABEL_36:
}

- (id)_firstDateAfter:(id)after matchingComponents:(id)components timeScope:(int64_t)scope calendar:(id)calendar
{
  afterCopy = after;
  componentsCopy = components;
  calendarCopy = calendar;
  if (componentsCopy)
  {
    v13 = [(HKDateAxis *)self baseDateForDate:afterCopy components:componentsCopy calendar:calendarCopy];
    if ([v13 hk_isBeforeDate:afterCopy])
    {
      do
      {
        v14 = [(HKDateAxis *)self nextDateForDate:v13 components:componentsCopy timeScope:scope calendar:calendarCopy];

        v13 = v14;
      }

      while (([v14 hk_isBeforeDate:afterCopy] & 1) != 0);
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)baseDateForDate:(id)date components:(id)components calendar:(id)calendar
{
  dateCopy = date;
  componentsCopy = components;
  calendarCopy = calendar;
  if ([componentsCopy minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([componentsCopy minute] < 2)
    {
      v14 = [calendarCopy hk_startOfMinuteForDate:dateCopy moduloMinutes:0 addingModuloCount:0];
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if ([componentsCopy hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([componentsCopy hour] >= 2)
    {
LABEL_14:
      v14 = [calendarCopy hk_startOfDateByAddingDays:0 toDate:dateCopy];
      goto LABEL_15;
    }

LABEL_11:
    v14 = [calendarCopy hk_startOfHourForDate:dateCopy addingHours:0];
    goto LABEL_15;
  }

  if ([componentsCopy day] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([componentsCopy day] != 1)
    {
      [HKDateAxis baseDateForDate:components:calendar:];
    }

    goto LABEL_14;
  }

  if ([componentsCopy weekOfYear] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([componentsCopy weekOfYear] < 2)
    {
      [calendarCopy hk_startOfWeekWithFirstWeekday:objc_msgSend(calendarCopy beforeDate:"firstWeekday") addingWeeks:{dateCopy, 0}];
    }

    else
    {
      [calendarCopy hk_sixMonthPeriodContaining:dateCopy dateBefore:1];
    }
    v14 = ;
    goto LABEL_15;
  }

  if ([componentsCopy month] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([componentsCopy year] == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HKDateAxis.m" lineNumber:397 description:{@"_baseDateForDate: No support for datecomponents: %@", componentsCopy}];

      v13 = 0;
      goto LABEL_16;
    }
  }

  else if ([componentsCopy month] < 2)
  {
    v14 = [calendarCopy hk_startOfMonthForDate:dateCopy];
    goto LABEL_15;
  }

  v14 = [calendarCopy hk_startOfYearForDate:dateCopy addingYears:0];
LABEL_15:
  v13 = v14;
LABEL_16:

  return v13;
}

- (id)nextDateForDate:(id)date components:(id)components timeScope:(int64_t)scope calendar:(id)calendar
{
  dateCopy = date;
  componentsCopy = components;
  calendarCopy = calendar;
  v13 = [calendarCopy dateByAddingComponents:componentsCopy toDate:dateCopy options:0];
  if (-[HKDateAxis _anchorUnitForZoom:](self, "_anchorUnitForZoom:", scope) == 16 && [componentsCopy hour] >= 2)
  {
    v14 = [calendarCopy components:62 fromDate:v13];
    hour = [v14 hour];
    if (hour % [componentsCopy hour])
    {
      [v14 setHour:{objc_msgSend(componentsCopy, "hour") * (objc_msgSend(v14, "hour") / objc_msgSend(componentsCopy, "hour"))}];
      v16 = [calendarCopy dateFromComponents:v14];

      if ([v16 hk_isBeforeOrEqualToDate:dateCopy])
      {
        [v14 setHour:{objc_msgSend(v14, "hour") + objc_msgSend(componentsCopy, "hour")}];
        v13 = [calendarCopy dateFromComponents:v14];
      }

      else
      {
        v13 = v16;
      }
    }
  }

  return v13;
}

- (void)_enumerateCoordinatesInModelRange:timeScope:withHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_enumerateCoordinatesInModelRange:timeScope:withHandler:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_enumerateCoordinatesInModelRange:timeScope:withHandler:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_enumerateCoordinatesInModelRange:timeScope:withHandler:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)baseDateForDate:components:calendar:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end