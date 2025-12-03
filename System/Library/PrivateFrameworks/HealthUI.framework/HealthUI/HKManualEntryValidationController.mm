@interface HKManualEntryValidationController
- (unint64_t)_validateQuantity:(id)quantity withAbsoluteRange:(id)range confirmRange:(id)confirmRange;
- (unint64_t)validateMaximumAllowedDuration:(double)duration ofType:(id)type;
- (unint64_t)validateMinimumAllowedDuration:(double)duration ofType:(id)type;
- (unint64_t)validateWorkoutDistance:(id)distance;
- (unint64_t)validateWorkoutEnergyBurned:(id)burned;
@end

@implementation HKManualEntryValidationController

- (unint64_t)validateWorkoutDistance:(id)distance
{
  distanceCopy = distance;
  v5 = _workoutValidationRanges();
  v6 = [v5 objectForKeyedSubscript:@"_HKManualEntryWorkoutDistanceKey"];
  v7 = [v6 objectForKeyedSubscript:@"_HKManualEntryAbsoluteRangeKey"];

  v8 = _workoutValidationRanges();
  v9 = [v8 objectForKeyedSubscript:@"_HKManualEntryWorkoutDistanceKey"];
  v10 = [v9 objectForKeyedSubscript:@"_HKManualEntryConfirmRangeKey"];

  v11 = [(HKManualEntryValidationController *)self _validateQuantity:distanceCopy withAbsoluteRange:v7 confirmRange:v10];
  return v11;
}

- (unint64_t)validateWorkoutEnergyBurned:(id)burned
{
  burnedCopy = burned;
  v5 = _workoutValidationRanges();
  v6 = [v5 objectForKeyedSubscript:@"_HKManualEntryWorkoutEnergyBurnedKey"];
  v7 = [v6 objectForKeyedSubscript:@"_HKManualEntryAbsoluteRangeKey"];

  v8 = _workoutValidationRanges();
  v9 = [v8 objectForKeyedSubscript:@"_HKManualEntryWorkoutEnergyBurnedKey"];
  v10 = [v9 objectForKeyedSubscript:@"_HKManualEntryConfirmRangeKey"];

  v11 = [(HKManualEntryValidationController *)self _validateQuantity:burnedCopy withAbsoluteRange:v7 confirmRange:v10];
  return v11;
}

- (unint64_t)validateMaximumAllowedDuration:(double)duration ofType:(id)type
{
  typeCopy = type;
  if ([typeCopy isMaximumDurationRestricted] && (objc_msgSend(typeCopy, "maximumAllowedDuration"), v6 < duration))
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)validateMinimumAllowedDuration:(double)duration ofType:(id)type
{
  typeCopy = type;
  if ([typeCopy isMinimumDurationRestricted] && (objc_msgSend(typeCopy, "minimumAllowedDuration"), v6 > duration))
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)_validateQuantity:(id)quantity withAbsoluteRange:(id)range confirmRange:(id)confirmRange
{
  quantityCopy = quantity;
  confirmRangeCopy = confirmRange;
  if ([range containsQuantity:quantityCopy])
  {
    v9 = [confirmRangeCopy containsQuantity:quantityCopy] ^ 1;
  }

  else
  {
    v9 = 2;
  }

  return v9;
}

@end