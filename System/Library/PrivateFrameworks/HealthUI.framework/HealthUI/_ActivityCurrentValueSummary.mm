@interface _ActivityCurrentValueSummary
- (_ActivityCurrentValueSummary)initWithTimeScope:(int64_t)scope;
- (id)_addQuantity:(id)quantity toQuantity:(id)toQuantity;
- (id)_divideQuantity:(id)quantity divisor:(double)divisor;
- (id)_maxQuantity:(id)quantity otherQuantity:(id)otherQuantity;
- (id)dateComponentsForCalendar:(id)calendar;
- (void)combineWithActivitySummary:(id)summary;
- (void)finishCollatingSummaryWithGraphView:(id)view;
@end

@implementation _ActivityCurrentValueSummary

- (_ActivityCurrentValueSummary)initWithTimeScope:(int64_t)scope
{
  v5.receiver = self;
  v5.super_class = _ActivityCurrentValueSummary;
  result = [(_ActivityCurrentValueSummary *)&v5 init];
  if (result)
  {
    result->_timeScope = scope;
    result->_collatedSummaryCount = 0.0;
    result->_pausedSummaryCount = 0.0;
  }

  return result;
}

- (void)combineWithActivitySummary:(id)summary
{
  summaryCopy = summary;
  if ([summaryCopy isPaused])
  {
    self->_pausedSummaryCount = self->_pausedSummaryCount + 1.0;
  }

  else
  {
    [(_ActivityCurrentValueSummary *)self collatedSummaryCount];
    if (v4 == 0.0)
    {
      _startDate = [summaryCopy _startDate];
      [(_ActivityCurrentValueSummary *)self _setStartDate:_startDate];

      _endDate = [summaryCopy _endDate];
      [(_ActivityCurrentValueSummary *)self _setEndDate:_endDate];

      _gregorianDateComponents = [summaryCopy _gregorianDateComponents];
      [(_ActivityCurrentValueSummary *)self setCollationDateComponents:_gregorianDateComponents];

      -[_ActivityCurrentValueSummary setActivityMoveMode:](self, "setActivityMoveMode:", [summaryCopy activityMoveMode]);
      activeEnergyBurned = [summaryCopy activeEnergyBurned];
      [(_ActivityCurrentValueSummary *)self setActiveEnergyBurned:activeEnergyBurned];

      appleMoveTime = [summaryCopy appleMoveTime];
      [(_ActivityCurrentValueSummary *)self setAppleMoveTime:appleMoveTime];

      appleExerciseTime = [summaryCopy appleExerciseTime];
      [(_ActivityCurrentValueSummary *)self setAppleExerciseTime:appleExerciseTime];

      appleStandHours = [summaryCopy appleStandHours];
      [(_ActivityCurrentValueSummary *)self setAppleStandHours:appleStandHours];

      activeEnergyBurnedGoal = [summaryCopy activeEnergyBurnedGoal];
      [(_ActivityCurrentValueSummary *)self setActiveEnergyBurnedGoal:activeEnergyBurnedGoal];

      appleMoveTimeGoal = [summaryCopy appleMoveTimeGoal];
      [(_ActivityCurrentValueSummary *)self setAppleMoveTimeGoal:appleMoveTimeGoal];

      appleExerciseTimeGoal = [summaryCopy appleExerciseTimeGoal];
      [(_ActivityCurrentValueSummary *)self setAppleExerciseTimeGoal:appleExerciseTimeGoal];

      appleStandHoursGoal = [summaryCopy appleStandHoursGoal];
      [(_ActivityCurrentValueSummary *)self setAppleStandHoursGoal:appleStandHoursGoal];

      exerciseTimeGoal = [summaryCopy exerciseTimeGoal];
      [(_ActivityCurrentValueSummary *)self setExerciseTimeGoal:exerciseTimeGoal];

      standHoursGoal = [summaryCopy standHoursGoal];
      [(_ActivityCurrentValueSummary *)self setStandHoursGoal:standHoursGoal];
    }

    else
    {
      _endDate2 = [summaryCopy _endDate];
      [(_ActivityCurrentValueSummary *)self _setEndDate:_endDate2];

      -[_ActivityCurrentValueSummary setActivityMoveMode:](self, "setActivityMoveMode:", [summaryCopy activityMoveMode]);
      activeEnergyBurned2 = [(_ActivityCurrentValueSummary *)self activeEnergyBurned];
      activeEnergyBurned3 = [summaryCopy activeEnergyBurned];
      v21 = [(_ActivityCurrentValueSummary *)self _addQuantity:activeEnergyBurned2 toQuantity:activeEnergyBurned3];
      [(_ActivityCurrentValueSummary *)self setActiveEnergyBurned:v21];

      appleMoveTime2 = [(_ActivityCurrentValueSummary *)self appleMoveTime];
      appleMoveTime3 = [summaryCopy appleMoveTime];
      v24 = [(_ActivityCurrentValueSummary *)self _addQuantity:appleMoveTime2 toQuantity:appleMoveTime3];
      [(_ActivityCurrentValueSummary *)self setAppleMoveTime:v24];

      appleExerciseTime2 = [(_ActivityCurrentValueSummary *)self appleExerciseTime];
      appleExerciseTime3 = [summaryCopy appleExerciseTime];
      v27 = [(_ActivityCurrentValueSummary *)self _addQuantity:appleExerciseTime2 toQuantity:appleExerciseTime3];
      [(_ActivityCurrentValueSummary *)self setAppleExerciseTime:v27];

      appleStandHours2 = [(_ActivityCurrentValueSummary *)self appleStandHours];
      appleStandHours3 = [summaryCopy appleStandHours];
      v30 = [(_ActivityCurrentValueSummary *)self _addQuantity:appleStandHours2 toQuantity:appleStandHours3];
      [(_ActivityCurrentValueSummary *)self setAppleStandHours:v30];

      activeEnergyBurnedGoal2 = [(_ActivityCurrentValueSummary *)self activeEnergyBurnedGoal];
      activeEnergyBurnedGoal3 = [summaryCopy activeEnergyBurnedGoal];
      v33 = [(_ActivityCurrentValueSummary *)self _maxQuantity:activeEnergyBurnedGoal2 otherQuantity:activeEnergyBurnedGoal3];
      [(_ActivityCurrentValueSummary *)self setActiveEnergyBurnedGoal:v33];

      appleMoveTimeGoal2 = [(_ActivityCurrentValueSummary *)self appleMoveTimeGoal];
      appleMoveTimeGoal3 = [summaryCopy appleMoveTimeGoal];
      v36 = [(_ActivityCurrentValueSummary *)self _maxQuantity:appleMoveTimeGoal2 otherQuantity:appleMoveTimeGoal3];
      [(_ActivityCurrentValueSummary *)self setAppleMoveTimeGoal:v36];

      appleExerciseTimeGoal2 = [(_ActivityCurrentValueSummary *)self appleExerciseTimeGoal];
      appleExerciseTimeGoal3 = [summaryCopy appleExerciseTimeGoal];
      v39 = [(_ActivityCurrentValueSummary *)self _maxQuantity:appleExerciseTimeGoal2 otherQuantity:appleExerciseTimeGoal3];
      [(_ActivityCurrentValueSummary *)self setAppleExerciseTimeGoal:v39];

      appleStandHoursGoal2 = [(_ActivityCurrentValueSummary *)self appleStandHoursGoal];
      appleStandHoursGoal3 = [summaryCopy appleStandHoursGoal];
      v42 = [(_ActivityCurrentValueSummary *)self _maxQuantity:appleStandHoursGoal2 otherQuantity:appleStandHoursGoal3];
      [(_ActivityCurrentValueSummary *)self setAppleStandHoursGoal:v42];

      exerciseTimeGoal2 = [(_ActivityCurrentValueSummary *)self exerciseTimeGoal];
      exerciseTimeGoal3 = [summaryCopy exerciseTimeGoal];
      v45 = [(_ActivityCurrentValueSummary *)self _maxQuantity:exerciseTimeGoal2 otherQuantity:exerciseTimeGoal3];
      [(_ActivityCurrentValueSummary *)self setExerciseTimeGoal:v45];

      standHoursGoal = [(_ActivityCurrentValueSummary *)self standHoursGoal];
      standHoursGoal2 = [summaryCopy standHoursGoal];
      v47 = [(_ActivityCurrentValueSummary *)self _maxQuantity:standHoursGoal otherQuantity:standHoursGoal2];
      [(_ActivityCurrentValueSummary *)self setStandHoursGoal:v47];
    }

    [(_ActivityCurrentValueSummary *)self collatedSummaryCount];
    [(_ActivityCurrentValueSummary *)self setCollatedSummaryCount:v48 + 1.0];
  }
}

- (id)dateComponentsForCalendar:(id)calendar
{
  calendarCopy = calendar;
  collationDateComponents = [(_ActivityCurrentValueSummary *)self collationDateComponents];

  if (collationDateComponents)
  {
    calendarIdentifier = [calendarCopy calendarIdentifier];
    v7 = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D850]];

    collationDateComponents2 = [(_ActivityCurrentValueSummary *)self collationDateComponents];
    v9 = collationDateComponents2;
    if ((v7 & 1) == 0)
    {
      v10 = [collationDateComponents2 hk_translateDateComponentsToCalendar:calendarCopy calendarUnits:*MEMORY[0x1E696C7E8]];

      v9 = v10;
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
  }

  return v9;
}

- (void)finishCollatingSummaryWithGraphView:(id)view
{
  viewCopy = view;
  if ([(_ActivityCurrentValueSummary *)self timeScope]!= 6 && [(_ActivityCurrentValueSummary *)self timeScope]!= 7)
  {
    [(_ActivityCurrentValueSummary *)self collatedSummaryCount];
    if (v4 > 0.0)
    {
      activeEnergyBurned = [(_ActivityCurrentValueSummary *)self activeEnergyBurned];
      [(_ActivityCurrentValueSummary *)self collatedSummaryCount];
      v6 = [(_ActivityCurrentValueSummary *)self _divideQuantity:activeEnergyBurned divisor:?];
      [(_ActivityCurrentValueSummary *)self setActiveEnergyBurned:v6];

      appleMoveTime = [(_ActivityCurrentValueSummary *)self appleMoveTime];
      [(_ActivityCurrentValueSummary *)self collatedSummaryCount];
      v8 = [(_ActivityCurrentValueSummary *)self _divideQuantity:appleMoveTime divisor:?];
      [(_ActivityCurrentValueSummary *)self setAppleMoveTime:v8];

      appleExerciseTime = [(_ActivityCurrentValueSummary *)self appleExerciseTime];
      [(_ActivityCurrentValueSummary *)self collatedSummaryCount];
      v10 = [(_ActivityCurrentValueSummary *)self _divideQuantity:appleExerciseTime divisor:?];
      [(_ActivityCurrentValueSummary *)self setAppleExerciseTime:v10];

      appleStandHours = [(_ActivityCurrentValueSummary *)self appleStandHours];
      [(_ActivityCurrentValueSummary *)self collatedSummaryCount];
      v12 = [(_ActivityCurrentValueSummary *)self _divideQuantity:appleStandHours divisor:?];
      [(_ActivityCurrentValueSummary *)self setAppleStandHours:v12];
    }
  }

  [(_ActivityCurrentValueSummary *)self collatedSummaryCount];
  if (v13 == 0.0)
  {
    [(_ActivityCurrentValueSummary *)self pausedSummaryCount];
    if (v14 > 0.0)
    {
      [(_ActivityCurrentValueSummary *)self setPaused:1];
    }
  }

  effectiveVisibleRangeCadence = [viewCopy effectiveVisibleRangeCadence];
  startDate = [effectiveVisibleRangeCadence startDate];
  [(_ActivityCurrentValueSummary *)self _setStartDate:startDate];

  endDate = [effectiveVisibleRangeCadence endDate];
  [(_ActivityCurrentValueSummary *)self _setEndDate:endDate];
}

- (id)_addQuantity:(id)quantity toQuantity:(id)toQuantity
{
  toQuantityCopy = toQuantity;
  quantityCopy = quantity;
  _unit = [quantityCopy _unit];
  [quantityCopy doubleValueForUnit:_unit];
  v9 = v8;

  [toQuantityCopy doubleValueForUnit:_unit];
  v11 = v10;

  v12 = [MEMORY[0x1E696C348] quantityWithUnit:_unit doubleValue:v9 + v11];

  return v12;
}

- (id)_divideQuantity:(id)quantity divisor:(double)divisor
{
  quantityCopy = quantity;
  _unit = [quantityCopy _unit];
  [quantityCopy doubleValueForUnit:_unit];
  v8 = v7;

  if (divisor == 0.0)
  {
    divisor = quantityCopy;
  }

  else
  {
    v9 = MEMORY[0x1E696C348];
    _unit2 = [quantityCopy _unit];
    divisor = [v9 quantityWithUnit:_unit2 doubleValue:v8 / divisor];
  }

  return divisor;
}

- (id)_maxQuantity:(id)quantity otherQuantity:(id)otherQuantity
{
  otherQuantityCopy = otherQuantity;
  quantityCopy = quantity;
  _unit = [quantityCopy _unit];
  [quantityCopy doubleValueForUnit:_unit];
  v9 = v8;

  [otherQuantityCopy doubleValueForUnit:_unit];
  v11 = v10;

  if (v9 >= v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  v13 = [MEMORY[0x1E696C348] quantityWithUnit:_unit doubleValue:v12];

  return v13;
}

@end