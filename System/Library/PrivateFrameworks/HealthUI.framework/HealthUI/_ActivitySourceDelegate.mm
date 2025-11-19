@interface _ActivitySourceDelegate
- (_ActivitySourceDelegate)initWithActivityValue:(int64_t)a3 displayTypeController:(id)a4 unitPreferenceController:(id)a5;
- (double)_intervalSpanForTimeScope:(int64_t)a3 startDate:(id)a4 calendar:(id)a5;
- (id)_chartPointForActivityValue:(int64_t)a3 summary:(id)a4 timeScope:(int64_t)a5;
- (id)_healthChartPointForQuantity:(id)a3 quantityType:(id)a4 activityValue:(int64_t)a5 referenceDisplayType:(id)a6 activitySummaryData:(id)a7 preferredUnit:(id)a8 date:(id)a9 createBarValue:(BOOL)a10;
- (id)_quantityForActivityValue:(int64_t)a3 summary:(id)a4;
- (id)activitySummariesForDateRange:(id)a3 timeScope:(int64_t)a4;
- (id)dataForDateRange:(id)a3 timeScope:(int64_t)a4;
- (void)setUpdateDelegate:(id)a3;
@end

@implementation _ActivitySourceDelegate

- (_ActivitySourceDelegate)initWithActivityValue:(int64_t)a3 displayTypeController:(id)a4 unitPreferenceController:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = _ActivitySourceDelegate;
  v11 = [(_ActivitySourceDelegate *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_activityValue = a3;
    objc_storeStrong(&v11->_displayTypeController, a4);
    objc_storeStrong(&v12->_unitPreferenceController, a5);
    v13 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    currentCalendar = v12->_currentCalendar;
    v12->_currentCalendar = v13;
  }

  return v12;
}

- (double)_intervalSpanForTimeScope:(int64_t)a3 startDate:(id)a4 calendar:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = 0.0;
  if (a3 <= 6)
  {
    v10 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:a3];
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E695DF10] hk_dateComponentsForCalendarUnit:{objc_msgSend(v10, "majorTickCalendarUnit")}];
      v13 = [v8 dateByAddingComponents:v12 toDate:v7 options:0];

      [v13 timeIntervalSinceDate:v7];
      v9 = v14;
    }
  }

  return v9;
}

- (id)dataForDateRange:(id)a3 timeScope:(int64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [(_ActivitySourceDelegate *)self activitySummariesForDateRange:a3 timeScope:?];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(_ActivitySourceDelegate *)self _chartPointForActivityValue:[(_ActivitySourceDelegate *)self activityValue] summary:*(*(&v15 + 1) + 8 * i) timeScope:a4];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)activitySummariesForDateRange:(id)a3 timeScope:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"HKInteractiveChartActivityController.m" lineNumber:1474 description:@"Subclass must provide an implementation for activitySummariesForDateRange:timeScope:"];

  return MEMORY[0x1E695E0F0];
}

- (void)setUpdateDelegate:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HKInteractiveChartActivityController.m" lineNumber:1479 description:@"Subclass must provide an implementationfor setUpdateDelegate:"];
}

- (id)_chartPointForActivityValue:(int64_t)a3 summary:(id)a4 timeScope:(int64_t)a5
{
  v8 = a4;
  v9 = [(_ActivitySourceDelegate *)self currentCalendar];
  v10 = [v8 dateComponentsForCalendar:v9];

  v11 = a3 & 0xFFFFFFFFFFFFFFFCLL;
  v12 = [(_ActivitySourceDelegate *)self _quantityForActivityValue:a3 summary:v8];
  v13 = [v10 hour];
  if ((a3 & 0xFFFFFFFFFFFFFFFCLL) != 4 || v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v34 = a5;
    v15 = [(_ActivitySourceDelegate *)self displayTypeController];
    v16 = _DisplayTypeForActivityValue(a3, v15);

    if (a3 <= 6 && ((0x77u >> a3) & 1) != 0)
    {
      v35 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:**(&unk_1E81BA718 + a3)];
    }

    else
    {
      v35 = 0;
    }

    v17 = [(_ActivitySourceDelegate *)self unitPreferenceController];
    v36 = v16;
    v18 = [v17 unitForDisplayType:v16];
    v19 = [(_ActivitySourceDelegate *)self currentCalendar];
    v20 = [v19 dateFromComponents:v10];

    if (a3 == 3 && ([v12 doubleValueForUnit:v18], v21 == 0.0))
    {
      v14 = 0;
      v23 = v35;
      v22 = v36;
    }

    else
    {
      v24 = [(_ActivitySourceDelegate *)self currentCalendar];
      [(_ActivitySourceDelegate *)self _intervalSpanForTimeScope:v34 startDate:v20 calendar:v24];
      v26 = v25;

      v27 = v11 == 4;
      v28 = v11 != 4;
      v29 = v26 * 0.5;
      if (v27)
      {
        v29 = v26;
      }

      v30 = [v20 dateByAddingTimeInterval:v29];

      LOBYTE(v33) = v28;
      v31 = self;
      v23 = v35;
      v22 = v36;
      v14 = [(_ActivitySourceDelegate *)v31 _healthChartPointForQuantity:v12 quantityType:v35 activityValue:a3 referenceDisplayType:v36 activitySummaryData:v8 preferredUnit:v18 date:v30 createBarValue:v33];
      v20 = v30;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_quantityForActivityValue:(int64_t)a3 summary:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        [v6 activeEnergyBurnedGoal];
      }

      else
      {
        [v6 appleMoveTimeGoal];
      }
      v8 = ;
      goto LABEL_20;
    }

    if (a3 == 6)
    {
      v8 = [v6 exerciseTimeGoal];
      goto LABEL_20;
    }

    if (a3 != 7)
    {
      goto LABEL_21;
    }

LABEL_15:
    v8 = [v7 standHoursGoal];
    goto LABEL_20;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_21;
      }

      v8 = [v6 appleMoveTime];
    }

    else
    {
      v8 = [v6 activeEnergyBurned];
    }

    goto LABEL_20;
  }

  if (a3 == 2)
  {
    v8 = [v6 appleExerciseTime];
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_15;
  }

  v8 = [v7 appleStandHours];
LABEL_20:
  v4 = v8;
LABEL_21:

  return v4;
}

- (id)_healthChartPointForQuantity:(id)a3 quantityType:(id)a4 activityValue:(int64_t)a5 referenceDisplayType:(id)a6 activitySummaryData:(id)a7 preferredUnit:(id)a8 date:(id)a9 createBarValue:(BOOL)a10
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a4;
  v20 = a3;
  v21 = objc_alloc_init(HKQuantityTypeDataSourceValue);
  [(HKQuantityTypeDataSourceValue *)v21 setQuantityType:v19];

  [(HKQuantityTypeDataSourceValue *)v21 setStartDate:v15];
  [(HKQuantityTypeDataSourceValue *)v21 setEndDate:v15];

  if (a10)
  {
    v22 = [v20 _unit];
    v23 = [MEMORY[0x1E696C348] quantityWithUnit:v22 doubleValue:0.0];
    [(HKQuantityTypeDataSourceValue *)v21 setMaxQuantity:v20];

    [(HKQuantityTypeDataSourceValue *)v21 setMinQuantity:v23];
    v20 = v22;
  }

  else
  {
    [(HKQuantityTypeDataSourceValue *)v21 setMinQuantity:v20];
    [(HKQuantityTypeDataSourceValue *)v21 setMaxQuantity:v20];
  }

  v24 = [[HKHealthChartPoint alloc] initWithDataSourceValue:v21 options:12 unit:v16 displayType:v18];
  v25 = objc_alloc_init(HKInteractiveChartActivityData);
  [(HKInteractiveChartActivityData *)v25 setActivitySummaryData:v17];

  [(HKInteractiveChartActivityData *)v25 setActivityValue:a5];
  [(HKHealthChartPoint *)v24 setUserInfo:v25];

  return v24;
}

@end