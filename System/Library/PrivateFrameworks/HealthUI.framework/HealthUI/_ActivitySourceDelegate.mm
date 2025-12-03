@interface _ActivitySourceDelegate
- (_ActivitySourceDelegate)initWithActivityValue:(int64_t)value displayTypeController:(id)controller unitPreferenceController:(id)preferenceController;
- (double)_intervalSpanForTimeScope:(int64_t)scope startDate:(id)date calendar:(id)calendar;
- (id)_chartPointForActivityValue:(int64_t)value summary:(id)summary timeScope:(int64_t)scope;
- (id)_healthChartPointForQuantity:(id)quantity quantityType:(id)type activityValue:(int64_t)value referenceDisplayType:(id)displayType activitySummaryData:(id)data preferredUnit:(id)unit date:(id)date createBarValue:(BOOL)self0;
- (id)_quantityForActivityValue:(int64_t)value summary:(id)summary;
- (id)activitySummariesForDateRange:(id)range timeScope:(int64_t)scope;
- (id)dataForDateRange:(id)range timeScope:(int64_t)scope;
- (void)setUpdateDelegate:(id)delegate;
@end

@implementation _ActivitySourceDelegate

- (_ActivitySourceDelegate)initWithActivityValue:(int64_t)value displayTypeController:(id)controller unitPreferenceController:(id)preferenceController
{
  controllerCopy = controller;
  preferenceControllerCopy = preferenceController;
  v16.receiver = self;
  v16.super_class = _ActivitySourceDelegate;
  v11 = [(_ActivitySourceDelegate *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_activityValue = value;
    objc_storeStrong(&v11->_displayTypeController, controller);
    objc_storeStrong(&v12->_unitPreferenceController, preferenceController);
    hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    currentCalendar = v12->_currentCalendar;
    v12->_currentCalendar = hk_gregorianCalendar;
  }

  return v12;
}

- (double)_intervalSpanForTimeScope:(int64_t)scope startDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v9 = 0.0;
  if (scope <= 6)
  {
    v10 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:scope];
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E695DF10] hk_dateComponentsForCalendarUnit:{objc_msgSend(v10, "majorTickCalendarUnit")}];
      v13 = [calendarCopy dateByAddingComponents:v12 toDate:dateCopy options:0];

      [v13 timeIntervalSinceDate:dateCopy];
      v9 = v14;
    }
  }

  return v9;
}

- (id)dataForDateRange:(id)range timeScope:(int64_t)scope
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [(_ActivitySourceDelegate *)self activitySummariesForDateRange:range timeScope:?];
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

        v13 = [(_ActivitySourceDelegate *)self _chartPointForActivityValue:[(_ActivitySourceDelegate *)self activityValue] summary:*(*(&v15 + 1) + 8 * i) timeScope:scope];
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

- (id)activitySummariesForDateRange:(id)range timeScope:(int64_t)scope
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKInteractiveChartActivityController.m" lineNumber:1474 description:@"Subclass must provide an implementation for activitySummariesForDateRange:timeScope:"];

  return MEMORY[0x1E695E0F0];
}

- (void)setUpdateDelegate:(id)delegate
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKInteractiveChartActivityController.m" lineNumber:1479 description:@"Subclass must provide an implementationfor setUpdateDelegate:"];
}

- (id)_chartPointForActivityValue:(int64_t)value summary:(id)summary timeScope:(int64_t)scope
{
  summaryCopy = summary;
  currentCalendar = [(_ActivitySourceDelegate *)self currentCalendar];
  v10 = [summaryCopy dateComponentsForCalendar:currentCalendar];

  v11 = value & 0xFFFFFFFFFFFFFFFCLL;
  v12 = [(_ActivitySourceDelegate *)self _quantityForActivityValue:value summary:summaryCopy];
  hour = [v10 hour];
  if ((value & 0xFFFFFFFFFFFFFFFCLL) != 4 || hour == 0x7FFFFFFFFFFFFFFFLL)
  {
    scopeCopy = scope;
    displayTypeController = [(_ActivitySourceDelegate *)self displayTypeController];
    v16 = _DisplayTypeForActivityValue(value, displayTypeController);

    if (value <= 6 && ((0x77u >> value) & 1) != 0)
    {
      v35 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:**(&unk_1E81BA718 + value)];
    }

    else
    {
      v35 = 0;
    }

    unitPreferenceController = [(_ActivitySourceDelegate *)self unitPreferenceController];
    v36 = v16;
    v18 = [unitPreferenceController unitForDisplayType:v16];
    currentCalendar2 = [(_ActivitySourceDelegate *)self currentCalendar];
    v20 = [currentCalendar2 dateFromComponents:v10];

    if (value == 3 && ([v12 doubleValueForUnit:v18], v21 == 0.0))
    {
      v14 = 0;
      v23 = v35;
      v22 = v36;
    }

    else
    {
      currentCalendar3 = [(_ActivitySourceDelegate *)self currentCalendar];
      [(_ActivitySourceDelegate *)self _intervalSpanForTimeScope:scopeCopy startDate:v20 calendar:currentCalendar3];
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
      selfCopy = self;
      v23 = v35;
      v22 = v36;
      v14 = [(_ActivitySourceDelegate *)selfCopy _healthChartPointForQuantity:v12 quantityType:v35 activityValue:value referenceDisplayType:v36 activitySummaryData:summaryCopy preferredUnit:v18 date:v30 createBarValue:v33];
      v20 = v30;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_quantityForActivityValue:(int64_t)value summary:(id)summary
{
  summaryCopy = summary;
  v7 = summaryCopy;
  if (value > 3)
  {
    if (value <= 5)
    {
      if (value == 4)
      {
        [summaryCopy activeEnergyBurnedGoal];
      }

      else
      {
        [summaryCopy appleMoveTimeGoal];
      }
      exerciseTimeGoal = ;
      goto LABEL_20;
    }

    if (value == 6)
    {
      exerciseTimeGoal = [summaryCopy exerciseTimeGoal];
      goto LABEL_20;
    }

    if (value != 7)
    {
      goto LABEL_21;
    }

LABEL_15:
    exerciseTimeGoal = [v7 standHoursGoal];
    goto LABEL_20;
  }

  if (value <= 1)
  {
    if (value)
    {
      if (value != 1)
      {
        goto LABEL_21;
      }

      exerciseTimeGoal = [summaryCopy appleMoveTime];
    }

    else
    {
      exerciseTimeGoal = [summaryCopy activeEnergyBurned];
    }

    goto LABEL_20;
  }

  if (value == 2)
  {
    exerciseTimeGoal = [summaryCopy appleExerciseTime];
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_15;
  }

  exerciseTimeGoal = [v7 appleStandHours];
LABEL_20:
  v4 = exerciseTimeGoal;
LABEL_21:

  return v4;
}

- (id)_healthChartPointForQuantity:(id)quantity quantityType:(id)type activityValue:(int64_t)value referenceDisplayType:(id)displayType activitySummaryData:(id)data preferredUnit:(id)unit date:(id)date createBarValue:(BOOL)self0
{
  dateCopy = date;
  unitCopy = unit;
  dataCopy = data;
  displayTypeCopy = displayType;
  typeCopy = type;
  quantityCopy = quantity;
  v21 = objc_alloc_init(HKQuantityTypeDataSourceValue);
  [(HKQuantityTypeDataSourceValue *)v21 setQuantityType:typeCopy];

  [(HKQuantityTypeDataSourceValue *)v21 setStartDate:dateCopy];
  [(HKQuantityTypeDataSourceValue *)v21 setEndDate:dateCopy];

  if (barValue)
  {
    _unit = [quantityCopy _unit];
    v23 = [MEMORY[0x1E696C348] quantityWithUnit:_unit doubleValue:0.0];
    [(HKQuantityTypeDataSourceValue *)v21 setMaxQuantity:quantityCopy];

    [(HKQuantityTypeDataSourceValue *)v21 setMinQuantity:v23];
    quantityCopy = _unit;
  }

  else
  {
    [(HKQuantityTypeDataSourceValue *)v21 setMinQuantity:quantityCopy];
    [(HKQuantityTypeDataSourceValue *)v21 setMaxQuantity:quantityCopy];
  }

  v24 = [[HKHealthChartPoint alloc] initWithDataSourceValue:v21 options:12 unit:unitCopy displayType:displayTypeCopy];
  v25 = objc_alloc_init(HKInteractiveChartActivityData);
  [(HKInteractiveChartActivityData *)v25 setActivitySummaryData:dataCopy];

  [(HKInteractiveChartActivityData *)v25 setActivityValue:value];
  [(HKHealthChartPoint *)v24 setUserInfo:v25];

  return v24;
}

@end