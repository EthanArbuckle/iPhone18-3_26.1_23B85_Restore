@interface FIWorkoutStatistics
+ (id)_monthFormatter;
- (FIWorkoutStatistics)initWithWorkouts:(id)a3;
- (id)_formattedEnergyBurn:(id)a3 formattingManager:(id)a4;
- (id)formattedActiveEnergyBurnWithFormattingManager:(id)a3;
- (id)formattedDistanceWithFormattingManager:(id)a3 distanceType:(unint64_t)a4 amountType:(unint64_t)a5;
- (id)formattedMonth;
- (id)formattedPaceWithFormattingManager:(id)a3 distanceType:(unint64_t)a4;
- (id)formattedWorkoutDurationWithFormattingManager:(id)a3;
- (id)simpleWorkoutCount;
- (void)_calculateAverages;
- (void)_calculateStats;
@end

@implementation FIWorkoutStatistics

- (FIWorkoutStatistics)initWithWorkouts:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = FIWorkoutStatistics;
  v5 = [(FIWorkoutStatistics *)&v25 init];
  if (v5)
  {
    v6 = [v4 copy];
    workouts = v5->_workouts;
    v5->_workouts = v6;

    v5->_workoutsWithEnergyBurned = 0;
    v5->_workoutsWithDistance = 0;
    v8 = MEMORY[0x277CCD7E8];
    v9 = [MEMORY[0x277CCDAB0] meterUnit];
    v10 = [v8 quantityWithUnit:v9 doubleValue:0.0];
    totalDistance = v5->_totalDistance;
    v5->_totalDistance = v10;

    v12 = MEMORY[0x277CCD7E8];
    v13 = [MEMORY[0x277CCDAB0] meterUnit];
    v14 = [v12 quantityWithUnit:v13 doubleValue:0.0];
    averageDistance = v5->_averageDistance;
    v5->_averageDistance = v14;

    v16 = MEMORY[0x277CCD7E8];
    v17 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
    v18 = [v16 quantityWithUnit:v17 doubleValue:0.0];
    totalActiveEnergyBurn = v5->_totalActiveEnergyBurn;
    v5->_totalActiveEnergyBurn = v18;

    v20 = MEMORY[0x277CCD7E8];
    v21 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
    v22 = [v20 quantityWithUnit:v21 doubleValue:0.0];
    averageActiveEnergyBurn = v5->_averageActiveEnergyBurn;
    v5->_averageActiveEnergyBurn = v22;

    v5->_totalWorkoutDuration = 0.0;
    v5->_averageWorkoutDuration = 0.0;
    [(FIWorkoutStatistics *)v5 _calculateStats];
  }

  return v5;
}

- (void)_calculateStats
{
  v38 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = self->_workouts;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    v32 = *MEMORY[0x277CCC918];
    do
    {
      v7 = 0;
      do
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v33 + 1) + 8 * v7);
        v9 = [(NSArray *)self->_workouts firstObject];

        if (v8 == v9)
        {
          v10 = _CachedCurrentCalendar();
          v11 = [v8 startDate];
          v12 = [v10 components:14 fromDate:v11];

          v13 = _CachedCurrentCalendar();
          v14 = [v13 dateFromComponents:v12];
          startOfMonth = self->_startOfMonth;
          self->_startOfMonth = v14;
        }

        [v8 duration];
        self->_totalWorkoutDuration = v16 + self->_totalWorkoutDuration;
        if ([v8 _activityMoveMode] != 2)
        {
          ++self->_workoutsWithEnergyBurned;
          v17 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v32];
          v18 = [v8 statisticsForType:v17];
          totalActiveEnergyBurn = self->_totalActiveEnergyBurn;
          v20 = [v18 sumQuantity];
          v21 = [(HKQuantity *)totalActiveEnergyBurn _quantityByAddingQuantity:v20];
          v22 = self->_totalActiveEnergyBurn;
          self->_totalActiveEnergyBurn = v21;
        }

        v23 = [v8 fi_activityType];
        v24 = FIDistanceTypeForActivityType(v23);
        if (v24)
        {
          ++self->_workoutsWithDistance;
          v25 = [FIUnitManager quantityTypeForDistanceType:v24];
          v26 = [v8 statisticsForType:v25];
          totalDistance = self->_totalDistance;
          v28 = [v26 sumQuantity];
          v29 = [(HKQuantity *)totalDistance _quantityByAddingQuantity:v28];
          v30 = self->_totalDistance;
          self->_totalDistance = v29;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v5);
  }

  [(FIWorkoutStatistics *)self _calculateAverages];
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_calculateAverages
{
  if ([(NSArray *)self->_workouts count])
  {
    self->_averageWorkoutDuration = self->_totalWorkoutDuration / [(NSArray *)self->_workouts count];
    totalActiveEnergyBurn = self->_totalActiveEnergyBurn;
    if (_InternalEnergyUnit_onceToken != -1)
    {
      [FIWorkoutStatistics _calculateAverages];
    }

    [(HKQuantity *)totalActiveEnergyBurn doubleValueForUnit:_InternalEnergyUnit___unit];
    if (v4 > 2.22044605e-16)
    {
      workoutsWithEnergyBurned = self->_workoutsWithEnergyBurned;
      if (workoutsWithEnergyBurned)
      {
        v6 = v4 / workoutsWithEnergyBurned;
        v7 = MEMORY[0x277CCD7E8];
        if (_InternalEnergyUnit_onceToken != -1)
        {
          [FIWorkoutStatistics _calculateAverages];
        }

        v8 = _InternalEnergyUnit___unit;
        v9 = [v7 quantityWithUnit:v8 doubleValue:v6];
        averageActiveEnergyBurn = self->_averageActiveEnergyBurn;
        self->_averageActiveEnergyBurn = v9;
      }
    }

    totalDistance = self->_totalDistance;
    if (_InternalDistanceUnit_onceToken != -1)
    {
      [FIWorkoutStatistics _calculateAverages];
    }

    [(HKQuantity *)totalDistance doubleValueForUnit:_InternalDistanceUnit___unit];
    if (v12 > 2.22044605e-16)
    {
      workoutsWithDistance = self->_workoutsWithDistance;
      if (workoutsWithDistance)
      {
        v14 = v12 / workoutsWithDistance;
        v15 = MEMORY[0x277CCD7E8];
        if (_InternalDistanceUnit_onceToken != -1)
        {
          [FIWorkoutStatistics _calculateAverages];
        }

        v18 = _InternalDistanceUnit___unit;
        v16 = [v15 quantityWithUnit:v18 doubleValue:v14];
        averageDistance = self->_averageDistance;
        self->_averageDistance = v16;
      }
    }
  }
}

+ (id)_monthFormatter
{
  if (_monthFormatter_onceToken != -1)
  {
    +[FIWorkoutStatistics(ViewModel) _monthFormatter];
  }

  v3 = _monthFormatter___formatter;

  return v3;
}

void __49__FIWorkoutStatistics_ViewModel___monthFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _monthFormatter___formatter;
  _monthFormatter___formatter = v0;

  [_monthFormatter___formatter setFormattingContext:2];
  v2 = MEMORY[0x277CCA968];
  v4 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 dateFormatFromTemplate:@"MMMM" options:0 locale:v4];
  [_monthFormatter___formatter setDateFormat:v3];
}

- (id)formattedMonth
{
  v3 = [objc_opt_class() _monthFormatter];
  v4 = [v3 stringFromDate:self->_startOfMonth];

  return v4;
}

- (id)formattedWorkoutDurationWithFormattingManager:(id)a3
{
  v4 = a3;
  v5 = [(FIWorkoutStatistics *)self formattedTotalWorkoutDurationWithFormattingManager:v4];
  v6 = [(FIWorkoutStatistics *)self formattedAverageWorkoutDurationWithFormattingManager:v4];

  v7 = MEMORY[0x277CCACA8];
  v8 = FIFitnessUIBundle();
  v9 = [v8 localizedStringForKey:@"WORKOUT_STATISTICS_FORMAT_%@_%@" value:&stru_285E60370 table:@"Localizable"];
  v10 = [v7 stringWithFormat:v9, v5, v6];

  return v10;
}

- (id)formattedActiveEnergyBurnWithFormattingManager:(id)a3
{
  v4 = a3;
  v5 = [(FIWorkoutStatistics *)self formattedTotalActiveEnergyBurnWithFormattingManager:v4];
  v6 = [(FIWorkoutStatistics *)self formattedAverageActiveEnergyBurnWithFormattingManager:v4];

  v7 = MEMORY[0x277CCACA8];
  v8 = FIFitnessUIBundle();
  v9 = [v8 localizedStringForKey:@"WORKOUT_STATISTICS_FORMAT_%@_%@" value:&stru_285E60370 table:@"Localizable"];
  v10 = [v7 stringWithFormat:v9, v5, v6];

  return v10;
}

- (id)formattedPaceWithFormattingManager:(id)a3 distanceType:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 localizedPaceAndUnitWithDistance:self->_totalDistance overDuration:FIPaceFormatForDistanceType(a4) paceFormat:a4 distanceType:1 unitStyle:2 decimalTrimmingMode:self->_totalWorkoutDuration];

  v8 = [v7 localizedUppercaseString];

  return v8;
}

- (id)_formattedEnergyBurn:(id)a3 formattingManager:(id)a4
{
  v5 = a4;
  v6 = [v5 localizedStringWithActiveEnergy:a3 unitStyle:0];
  v7 = MEMORY[0x277CCACA8];
  v8 = FIFitnessUIBundle();
  v9 = [v8 localizedStringForKey:@"WORKOUT_STATISTICS_UNIT_FORMAT" value:&stru_285E60370 table:@"Localizable"];
  v10 = [v5 localizedShortActiveEnergyUnitString];

  v11 = [v7 stringWithFormat:v9, v6, v10];

  v12 = [v11 localizedUppercaseString];

  return v12;
}

- (id)formattedDistanceWithFormattingManager:(id)a3 distanceType:(unint64_t)a4 amountType:(unint64_t)a5
{
  if (!a5)
  {
    v7 = 48;
    goto LABEL_5;
  }

  if (a5 == 1)
  {
    v7 = 56;
LABEL_5:
    v8 = *(&self->super.isa + v7);
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v9 = MEMORY[0x277CCDAB0];
  v10 = a3;
  v11 = [v9 meterUnit];
  [v8 doubleValueForUnit:v11];
  v12 = [v10 localizedStringWithDistanceInMeters:a4 distanceType:1 unitStyle:?];

  v13 = [MEMORY[0x277CCDAB0] meterUnit];
  [v8 doubleValueForUnit:v13];
  v14 = [v10 localizedStringWithDistanceInMeters:a4 distanceType:0 unitStyle:?];

  v15 = [v12 stringByReplacingOccurrencesOfString:v14 withString:&stru_285E60370];
  v16 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v17 = [v15 stringByTrimmingCharactersInSet:v16];

  v18 = MEMORY[0x277CCACA8];
  v19 = FIFitnessUIBundle();
  v20 = [v19 localizedStringForKey:@"WORKOUT_STATISTICS_UNIT_FORMAT" value:&stru_285E60370 table:@"Localizable"];
  v21 = [v18 stringWithFormat:v20, v14, v17];

  v22 = [v21 localizedUppercaseString];

  return v22;
}

- (id)simpleWorkoutCount
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[FIWorkoutStatistics workoutCount](self, "workoutCount")}];
  v3 = [FIFormattingManager stringWithNumber:v2 decimalPrecision:1];

  return v3;
}

@end