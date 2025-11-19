@interface HKDateAxis
- (HKDateAxis)initWithCurrentCalendar:(id)a3 axisStyle:(id)a4;
- (id)_axisLabelsWithModelRange:(id)a3 zoom:(int64_t)a4;
- (id)_dateRangeForChartRange:(HKRange)a3 zoomScale:(double)a4;
- (id)_firstDateAfter:(id)a3 matchingComponents:(id)a4 timeScope:(int64_t)a5 calendar:(id)a6;
- (id)_formattedStringForDate:(id)a3 zoom:(int64_t)a4;
- (id)baseDateForDate:(id)a3 components:(id)a4 calendar:(id)a5;
- (id)cacheKeysForModelRange:(id)a3 zoomScale:(double)a4;
- (id)extendModelRangeWithRange:(id)a3 zoomScale:(double)a4;
- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4;
- (id)nextDateForDate:(id)a3 components:(id)a4 timeScope:(int64_t)a5 calendar:(id)a6;
- (id)rangeForChartRect:(CGRect)a3 zoomScale:(double)a4 contentOffset:(CGPoint)a5;
- (id)stringForDate:(id)a3 zoom:(int64_t)a4 labelType:(int64_t)a5;
- (int64_t)dateZoomForZoomScale:(double)a3;
- (unint64_t)_anchorUnitForZoom:(int64_t)a3;
- (void)_enumerateCoordinatesInModelRange:(id)a3 timeScope:(int64_t)a4 withHandler:(id)a5;
- (void)offsetForValueRange:(id)a3 chartRect:(CGRect)a4 zoomScaleOut:(double *)a5 contentOffsetOut:(CGPoint *)a6;
@end

@implementation HKDateAxis

- (HKDateAxis)initWithCurrentCalendar:(id)a3 axisStyle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(HKAxisConfiguration);
  v10 = [[HKDateZoomScale alloc] initWithCurrentCalendar:v7];
  [(HKAxisConfiguration *)v9 setZoomScaleEngine:v10];

  v11 = [[HKDateCoordinateTransform alloc] initWithCurrentCalendar:v7];
  [(HKAxisConfiguration *)v9 setTransform:v11];

  [(HKAxisConfiguration *)v9 setPreferredStyle:v8];
  v15.receiver = self;
  v15.super_class = HKDateAxis;
  v12 = [(HKAxis *)&v15 initWithConfiguration:v9];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_currentCalendar, a3);
  }

  return v13;
}

- (id)_formattedStringForDate:(id)a3 zoom:(int64_t)a4
{
  v7 = a3;
  v8 = v7;
  v9 = 0;
  if (a4 <= 3)
  {
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        v11 = 4;
      }

      else
      {
        v11 = 3;
      }
    }

    else if (a4)
    {
      if (a4 != 1)
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

  if (a4 <= 5)
  {
    if (a4 == 4)
    {
      v11 = 16;
    }

    else
    {
      v11 = 18;
    }

    goto LABEL_21;
  }

  switch(a4)
  {
    case 6:
      v12 = [(HKDateAxis *)self currentCalendar];
      v13 = [v12 startOfDayForDate:v8];

      v14 = [(HKDateAxis *)self currentCalendar];
      v15 = [v14 dateBySettingUnit:32 value:12 ofDate:v13 options:0];

      if (!HKTimeFormatIsIn24HourMode() && (([v8 isEqual:v13] & 1) != 0 || objc_msgSend(v8, "isEqual:", v15)))
      {
        v9 = HKLocalizedStringForDateAndTemplate(v8, 24);
      }

      else
      {
        v16 = HKLocalizedStringForDateAndTemplate(v8, 25);
        v17 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v9 = [v16 stringByTrimmingCharactersInSet:v17];
      }

      break;
    case 7:
      v11 = 27;
LABEL_21:
      v9 = HKLocalizedStringForDateAndTemplate(v7, v11);
      break;
    case 8:
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"HKDateAxis.m" lineNumber:91 description:{@"Invalid zoom specified (%ld)", 8}];

      v9 = 0;
      break;
  }

LABEL_22:

  return v9;
}

- (id)stringForDate:(id)a3 zoom:(int64_t)a4 labelType:(int64_t)a5
{
  if (a5 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(HKDateAxis *)self _formattedStringForDate:a3 zoom:a4, v5];
  }

  return v7;
}

- (unint64_t)_anchorUnitForZoom:(int64_t)a3
{
  if (a3 > 4)
  {
    if ((a3 - 5) < 2)
    {
      return 16;
    }

    else if (a3 == 8)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"HKDateAxis.m" lineNumber:142 description:{@"Invalid zoom level (%ld)", 8}];

      return 0;
    }

    else if (a3 == 7)
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
    if (a3 != 4)
    {
      v4 = 0;
    }

    if (a3 != 3)
    {
      v3 = v4;
    }

    if (a3 >= 3)
    {
      return v3;
    }

    else
    {
      return 4;
    }
  }
}

- (int64_t)dateZoomForZoomScale:(double)a3
{
  v4 = [(HKAxis *)self zoomScaleEngine];
  v5 = [v4 zoomForZoomScale:a3];

  return v5;
}

- (id)_axisLabelsWithModelRange:(id)a3 zoom:(int64_t)a4
{
  v6 = MEMORY[0x1E695DF70];
  v7 = a3;
  v8 = [v6 array];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__HKDateAxis__axisLabelsWithModelRange_zoom___block_invoke;
  v13[3] = &unk_1E81BA0F8;
  v15 = a4;
  v13[4] = self;
  v9 = v8;
  v14 = v9;
  [(HKDateAxis *)self _enumerateCoordinatesInModelRange:v7 timeScope:a4 withHandler:v13];

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

- (id)rangeForChartRect:(CGRect)a3 zoomScale:(double)a4 contentOffset:(CGPoint)a5
{
  [(HKAxis *)self _chartRangeForChartRect:a3.origin.x zoomScale:a3.origin.y contentOffset:a3.size.width, a3.size.height, a4, a5.x, a5.y];

  return [HKDateAxis _dateRangeForChartRange:"_dateRangeForChartRange:zoomScale:" zoomScale:?];
}

- (void)offsetForValueRange:(id)a3 chartRect:(CGRect)a4 zoomScaleOut:(double *)a5 contentOffsetOut:(CGPoint *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = [(HKAxis *)self transform];
  v15 = [v13 minValue];
  [v14 coordinateForValue:v15];
  v17 = v16;

  v18 = [(HKAxis *)self transform];
  v19 = [v13 maxValue];

  [v18 coordinateForValue:v19];
  [(HKAxis *)self pointTransform];
  v22 = HKLinearTransformRange(v20, v21, v17);
  if (v23 > 0.0)
  {

    [(HKAxis *)self _offsetForChartRect:a5 chartRange:a6 zoomScaleOut:x contentOffsetOut:y, width, height, v22, v23];
  }
}

- (id)_dateRangeForChartRange:(HKRange)a3 zoomScale:(double)a4
{
  var0 = a3.var0;
  [(HKAxis *)self pointTransform];
  v8 = HKLinearTransformInvert(v6, v7);
  v10 = HKLinearTransformRange(v8, v9, var0);
  v12 = v11;
  v13 = [(HKAxis *)self transform];
  v14 = [v13 valueForCoordinate:{HKRangeMin(v10, v12)}];

  v15 = [(HKAxis *)self transform];
  v16 = [v15 valueForCoordinate:{HKRangeMax(v10, v12)}];

  v17 = [HKValueRange valueRangeWithMinValue:v14 maxValue:v16];

  return v17;
}

- (id)cacheKeysForModelRange:(id)a3 zoomScale:(double)a4
{
  v6 = a3;
  v7 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:[(HKDateAxis *)self dateZoomForZoomScale:a4]];
  [v7 canonicalSize];
  v9 = v8 * 3.0;
  v10 = [v6 startDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = vcvtmd_s64_f64(v11 / v9);

  v13 = [v6 endDate];
  [v13 timeIntervalSinceReferenceDate];
  v15 = v14 / v9;
  v16 = floor(v15);
  v17 = vcvtmd_s64_f64(v15);

  v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v9 * v16];
  v19 = [v6 endDate];
  v20 = [v18 isEqualToDate:v19];

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

- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4
{
  v6 = a3;
  v7 = [(HKDateAxis *)self _axisLabelsWithModelRange:v6 zoom:[(HKDateAxis *)self dateZoomForZoomScale:a4]];

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

- (id)extendModelRangeWithRange:(id)a3 zoomScale:(double)a4
{
  v6 = a3;
  v7 = [v6 startDate];
  if (v7 && (v8 = v7, [v6 endDate], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [(HKDateAxis *)self _anchorUnitForZoom:[(HKDateAxis *)self dateZoomForZoomScale:a4]];
    v11 = [(HKDateAxis *)self currentCalendar];
    v23 = 0;
    v12 = [v6 startDate];
    [v11 rangeOfUnit:v10 startDate:&v23 interval:0 forDate:v12];
    v13 = v23;

    v14 = [(HKDateAxis *)self currentCalendar];
    v22 = 0;
    v15 = [v6 endDate];
    [v14 rangeOfUnit:v10 startDate:&v22 interval:0 forDate:v15];
    v16 = v22;

    v17 = [v6 endDate];
    LODWORD(v15) = [v16 hk_isBeforeDate:v17];

    if (v15)
    {
      v18 = [(HKDateAxis *)self currentCalendar];
      v19 = [v18 dateByAddingUnit:v10 value:1 toDate:v16 options:0];

      v16 = v19;
    }

    v20 = [HKValueRange valueRangeWithMinValue:v13 maxValue:v16];
  }

  else
  {
    v20 = v6;
  }

  return v20;
}

- (void)_enumerateCoordinatesInModelRange:(id)a3 timeScope:(int64_t)a4 withHandler:(id)a5
{
  v8 = a3;
  v42 = a5;
  v9 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:a4];
  v10 = [(HKDateAxis *)self axisLabelIntervalComponentsForZoomLevelConfiguration:v9];
  v11 = [(HKDateAxis *)self minorAxisIntervalComponentsForZoomLevelConfiguration:v9];
  v38 = v9;
  v12 = [v9 referencePointIntervalComponents];
  v41 = v10;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_38:
    [HKDateAxis _enumerateCoordinatesInModelRange:timeScope:withHandler:];
    if (v12)
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
  if (!v12)
  {
    goto LABEL_39;
  }

LABEL_4:
  v13 = [(HKDateAxis *)self currentCalendar];
  v14 = [v8 minValue];
  v40 = v12;
  v15 = [(HKDateAxis *)self _firstDateAfter:v14 matchingComponents:v12 timeScope:a4 calendar:v13];

  v16 = [v8 minValue];
  v17 = [(HKDateAxis *)self _firstDateAfter:v16 matchingComponents:v10 timeScope:a4 calendar:v13];

  v18 = [v8 minValue];
  v45 = v11;
  v19 = [(HKDateAxis *)self _firstDateAfter:v18 matchingComponents:v11 timeScope:a4 calendar:v13];

  if (!v19)
  {
    [HKDateAxis _enumerateCoordinatesInModelRange:timeScope:withHandler:];
  }

  v20 = v19;
  v39 = v8;
  v44 = [v8 maxValue];
  if (HKUIObjectIsLarger(v20, v44))
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
      v24 = [(HKDateAxis *)self nextDateForDate:v15 components:v40 timeScope:a4 calendar:v13];

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
      v26 = [(HKDateAxis *)self nextDateForDate:v17 components:v41 timeScope:a4 calendar:v13];

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
      v27 = [(HKDateAxis *)self nextDateForDate:v20 components:v45 timeScope:a4 calendar:v13];

      v20 = v27;
    }

    if (v23)
    {
      v46 = 0;
      [(HKAxis *)self pointTransform];
      v29 = v28;
      v31 = v30;
      v32 = [(HKAxis *)self transform];
      [v32 coordinateForValue:v22];
      v34 = HKLinearTransformValue(v29, v31, v33);

      v42[2](v42, v23, v25, &v46, v34);
      if (v46 == 1)
      {
        break;
      }
    }

    v21 = [(HKDateAxis *)self nextDateForDate:v22 components:v45 timeScope:a4 calendar:v13];

    if (a4 == 4)
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
    if (HKUIObjectIsLarger(v21, v44))
    {
      goto LABEL_35;
    }
  }

  v21 = v22;
LABEL_35:

LABEL_36:
}

- (id)_firstDateAfter:(id)a3 matchingComponents:(id)a4 timeScope:(int64_t)a5 calendar:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v11)
  {
    v13 = [(HKDateAxis *)self baseDateForDate:v10 components:v11 calendar:v12];
    if ([v13 hk_isBeforeDate:v10])
    {
      do
      {
        v14 = [(HKDateAxis *)self nextDateForDate:v13 components:v11 timeScope:a5 calendar:v12];

        v13 = v14;
      }

      while (([v14 hk_isBeforeDate:v10] & 1) != 0);
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

- (id)baseDateForDate:(id)a3 components:(id)a4 calendar:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v10 minute] < 2)
    {
      v14 = [v11 hk_startOfMinuteForDate:v9 moduloMinutes:0 addingModuloCount:0];
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if ([v10 hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v10 hour] >= 2)
    {
LABEL_14:
      v14 = [v11 hk_startOfDateByAddingDays:0 toDate:v9];
      goto LABEL_15;
    }

LABEL_11:
    v14 = [v11 hk_startOfHourForDate:v9 addingHours:0];
    goto LABEL_15;
  }

  if ([v10 day] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v10 day] != 1)
    {
      [HKDateAxis baseDateForDate:components:calendar:];
    }

    goto LABEL_14;
  }

  if ([v10 weekOfYear] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v10 weekOfYear] < 2)
    {
      [v11 hk_startOfWeekWithFirstWeekday:objc_msgSend(v11 beforeDate:"firstWeekday") addingWeeks:{v9, 0}];
    }

    else
    {
      [v11 hk_sixMonthPeriodContaining:v9 dateBefore:1];
    }
    v14 = ;
    goto LABEL_15;
  }

  if ([v10 month] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v10 year] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"HKDateAxis.m" lineNumber:397 description:{@"_baseDateForDate: No support for datecomponents: %@", v10}];

      v13 = 0;
      goto LABEL_16;
    }
  }

  else if ([v10 month] < 2)
  {
    v14 = [v11 hk_startOfMonthForDate:v9];
    goto LABEL_15;
  }

  v14 = [v11 hk_startOfYearForDate:v9 addingYears:0];
LABEL_15:
  v13 = v14;
LABEL_16:

  return v13;
}

- (id)nextDateForDate:(id)a3 components:(id)a4 timeScope:(int64_t)a5 calendar:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v12 dateByAddingComponents:v11 toDate:v10 options:0];
  if (-[HKDateAxis _anchorUnitForZoom:](self, "_anchorUnitForZoom:", a5) == 16 && [v11 hour] >= 2)
  {
    v14 = [v12 components:62 fromDate:v13];
    v15 = [v14 hour];
    if (v15 % [v11 hour])
    {
      [v14 setHour:{objc_msgSend(v11, "hour") * (objc_msgSend(v14, "hour") / objc_msgSend(v11, "hour"))}];
      v16 = [v12 dateFromComponents:v14];

      if ([v16 hk_isBeforeOrEqualToDate:v10])
      {
        [v14 setHour:{objc_msgSend(v14, "hour") + objc_msgSend(v11, "hour")}];
        v13 = [v12 dateFromComponents:v14];
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