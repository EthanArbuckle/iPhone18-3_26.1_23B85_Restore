@interface HKManualEntryValidationController
- (unint64_t)_validateQuantity:(id)a3 withAbsoluteRange:(id)a4 confirmRange:(id)a5;
- (unint64_t)validateMaximumAllowedDuration:(double)a3 ofType:(id)a4;
- (unint64_t)validateMinimumAllowedDuration:(double)a3 ofType:(id)a4;
- (unint64_t)validateWorkoutDistance:(id)a3;
- (unint64_t)validateWorkoutEnergyBurned:(id)a3;
@end

@implementation HKManualEntryValidationController

- (unint64_t)validateWorkoutDistance:(id)a3
{
  v4 = a3;
  v5 = _workoutValidationRanges();
  v6 = [v5 objectForKeyedSubscript:@"_HKManualEntryWorkoutDistanceKey"];
  v7 = [v6 objectForKeyedSubscript:@"_HKManualEntryAbsoluteRangeKey"];

  v8 = _workoutValidationRanges();
  v9 = [v8 objectForKeyedSubscript:@"_HKManualEntryWorkoutDistanceKey"];
  v10 = [v9 objectForKeyedSubscript:@"_HKManualEntryConfirmRangeKey"];

  v11 = [(HKManualEntryValidationController *)self _validateQuantity:v4 withAbsoluteRange:v7 confirmRange:v10];
  return v11;
}

- (unint64_t)validateWorkoutEnergyBurned:(id)a3
{
  v4 = a3;
  v5 = _workoutValidationRanges();
  v6 = [v5 objectForKeyedSubscript:@"_HKManualEntryWorkoutEnergyBurnedKey"];
  v7 = [v6 objectForKeyedSubscript:@"_HKManualEntryAbsoluteRangeKey"];

  v8 = _workoutValidationRanges();
  v9 = [v8 objectForKeyedSubscript:@"_HKManualEntryWorkoutEnergyBurnedKey"];
  v10 = [v9 objectForKeyedSubscript:@"_HKManualEntryConfirmRangeKey"];

  v11 = [(HKManualEntryValidationController *)self _validateQuantity:v4 withAbsoluteRange:v7 confirmRange:v10];
  return v11;
}

- (unint64_t)validateMaximumAllowedDuration:(double)a3 ofType:(id)a4
{
  v5 = a4;
  if ([v5 isMaximumDurationRestricted] && (objc_msgSend(v5, "maximumAllowedDuration"), v6 < a3))
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)validateMinimumAllowedDuration:(double)a3 ofType:(id)a4
{
  v5 = a4;
  if ([v5 isMinimumDurationRestricted] && (objc_msgSend(v5, "minimumAllowedDuration"), v6 > a3))
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)_validateQuantity:(id)a3 withAbsoluteRange:(id)a4 confirmRange:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([a4 containsQuantity:v7])
  {
    v9 = [v8 containsQuantity:v7] ^ 1;
  }

  else
  {
    v9 = 2;
  }

  return v9;
}

@end