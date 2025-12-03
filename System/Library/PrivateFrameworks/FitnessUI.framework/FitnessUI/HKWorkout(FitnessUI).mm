@interface HKWorkout(FitnessUI)
+ (double)fiui_weightedAverageHeartRateWithSamples:()FitnessUI startDate:endDate:;
+ (id)fiui_supportedGoalTypesForActivityType:()FitnessUI activityMoveMode:;
+ (id)fiui_supportedGoalTypesForWorkoutSettingsManager:()FitnessUI;
+ (id)fiui_supportedMetricsForActivityType:()FitnessUI activityMoveMode:;
+ (uint64_t)_isHeartRateSupportedInPrivacySettings;
+ (uint64_t)fiui_activitySupportsMetricType:()FitnessUI activityType:activityMoveMode:;
+ (uint64_t)fiui_associatedMetricForGoalType:()FitnessUI;
+ (uint64_t)fiui_isHeartRateSupportedForActivityType:()FitnessUI isIndoor:;
- (BOOL)fiui_hasAverageCadence;
- (BOOL)fiui_hasAveragePace;
- (BOOL)fiui_hasAveragePower;
- (BOOL)fiui_hasWeatherData;
- (double)fiui_averageCadence;
- (double)fiui_averagePace;
- (double)fiui_averagePower;
- (double)fiui_averageTimePerLap;
- (double)fiui_completionFactor;
- (double)fiui_duration;
- (double)fiui_totalStepCount;
- (id)_averagePowerQuantity;
- (id)_fiui_averagePaceQty;
- (id)fiui_connectedGymBrandName;
- (id)fiui_elevationGain;
- (id)fiui_eventsOfType:()FitnessUI;
- (id)fiui_finalWorkoutUUID;
- (id)fiui_keyValueSummary;
- (id)fiui_lapLength;
- (id)fiui_splitsFromDistanceSamples:()FitnessUI distanceInMetersPerSplit:workoutStartDate:;
- (id)fiui_totalDistance;
- (uint64_t)fiui_hasNonZeroElevationGain;
- (uint64_t)fiui_numberOfEventsOfType:()FitnessUI;
- (uint64_t)fiui_strokeStyle;
@end

@implementation HKWorkout(FitnessUI)

+ (uint64_t)_isHeartRateSupportedInPrivacySettings
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [standardUserDefaults persistentDomainForName:*MEMORY[0x1E696C8E0]];

  v2 = [v1 objectForKey:*MEMORY[0x1E696C8E8]];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (uint64_t)fiui_strokeStyle
{
  v54 = *MEMORY[0x1E69E9840];
  metadata = [self metadata];
  v3 = *MEMORY[0x1E696BB60];
  v4 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696BB60]];

  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v7 = [self fiui_eventsOfType:3];
    v8 = [v7 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v48;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v48 != v10)
          {
            objc_enumerationMutation(v7);
          }

          metadata2 = [*(*(&v47 + 1) + 8 * i) metadata];
          v13 = [metadata2 objectForKeyedSubscript:v3];

          if (v13)
          {
            v14 = [v6 objectForKeyedSubscript:v13];
            if (v14)
            {
              v15 = v14;
              integerValue2 = [v14 integerValue];
              v17 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue2 + 1];
            }

            else
            {
              v17 = &unk_1F5F9B610;
            }

            [v6 setObject:v17 forKeyedSubscript:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v9);
    }

    v18 = [v6 count];
    integerValue = v18;
    if (v18)
    {
      if (v18 == 1)
      {
        allKeys = [v6 allKeys];
        firstObject = [allKeys firstObject];
        integerValue = [firstObject integerValue];

        v4 = 0;
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        allValues = [v6 allValues];
        v22 = [allValues countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v44;
          v25 = 0.0;
          v4 = 0;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v44 != v24)
              {
                objc_enumerationMutation(allValues);
              }

              [*(*(&v43 + 1) + 8 * j) floatValue];
              v25 = v25 + v27;
            }

            v23 = [allValues countByEnumeratingWithState:&v43 objects:v52 count:16];
          }

          while (v23);
        }

        else
        {
          v25 = 0.0;
          v4 = 0;
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        allKeys = [v6 allKeys];
        v28 = [allKeys countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v40;
          if (v25 >= 10.9999999 || v25 <= 2.00000012)
          {
            v32 = v25;
          }

          else
          {
            v32 = v25 + -1.0;
          }

          integerValue = 1;
          while (2)
          {
            for (k = 0; k != v29; ++k)
            {
              if (*v40 != v30)
              {
                objc_enumerationMutation(allKeys);
              }

              v34 = *(*(&v39 + 1) + 8 * k);
              v35 = [v6 objectForKeyedSubscript:v34];
              [v35 floatValue];
              v37 = v36;

              if ((v37 / v32) > 0.9)
              {
                integerValue = [v34 integerValue];
                goto LABEL_45;
              }
            }

            v29 = [allKeys countByEnumeratingWithState:&v39 objects:v51 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          integerValue = 1;
        }
      }

LABEL_45:
    }

    else
    {
      v4 = 0;
    }
  }

  return integerValue;
}

- (double)fiui_completionFactor
{
  _goalType = [self _goalType];
  v3 = 0.0;
  if (_goalType > 1)
  {
    if (_goalType != 2)
    {
      if (_goalType != 3)
      {
        return v3;
      }

      totalEnergyBurned = [self totalEnergyBurned];
      jouleUnit = [MEMORY[0x1E696C510] jouleUnit];
      [totalEnergyBurned doubleValueForUnit:jouleUnit];
      v7 = v12;

      _goal = [self _goal];
      jouleUnit2 = [MEMORY[0x1E696C510] jouleUnit];
      goto LABEL_8;
    }

    _goal2 = [self _goal];
    secondUnit = [MEMORY[0x1E696C510] secondUnit];
    [_goal2 doubleValueForUnit:secondUnit];
    v19 = v18;

    if (v19 > 2.22044605e-16)
    {
      [self duration];
      return v20 / v19;
    }
  }

  else
  {
    if (!_goalType)
    {
      return 1.0;
    }

    if (_goalType == 1)
    {
      totalDistance = [self totalDistance];
      meterUnit = [MEMORY[0x1E696C510] meterUnit];
      [totalDistance doubleValueForUnit:meterUnit];
      v7 = v6;

      _goal = [self _goal];
      jouleUnit2 = [MEMORY[0x1E696C510] meterUnit];
LABEL_8:
      v13 = jouleUnit2;
      [_goal doubleValueForUnit:jouleUnit2];
      v15 = v14;

      if (v15 <= 2.22044605e-16)
      {
        return 0.0;
      }

      else
      {
        return v7 / v15;
      }
    }
  }

  return v3;
}

- (BOOL)fiui_hasAveragePace
{
  _fiui_averagePaceQty = [self _fiui_averagePaceQty];
  v2 = _fiui_averagePaceQty != 0;

  return v2;
}

- (id)_fiui_averagePaceQty
{
  metadata = [self metadata];
  v2 = [metadata objectForKey:*MEMORY[0x1E696C798]];

  return v2;
}

- (id)fiui_eventsOfType:()FitnessUI
{
  workoutEvents = [self workoutEvents];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__HKWorkout_FitnessUI__fiui_eventsOfType___block_invoke;
  v8[3] = &__block_descriptor_40_e41_B24__0__HKWorkoutEvent_8__NSDictionary_16l;
  v8[4] = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:v8];
  v6 = [workoutEvents filteredArrayUsingPredicate:v5];

  return v6;
}

- (uint64_t)fiui_numberOfEventsOfType:()FitnessUI
{
  v1 = [self fiui_eventsOfType:?];
  v2 = [v1 count];

  return v2;
}

- (id)fiui_keyValueSummary
{
  v40[8] = *MEMORY[0x1E69E9840];
  v39[0] = @"activityType";
  [self workoutActivityType];
  v38 = _HKWorkoutActivityNameForActivityType();
  v40[0] = v38;
  v39[1] = @"duration";
  v2 = MEMORY[0x1E696AEC0];
  [self duration];
  v37 = [v2 stringWithFormat:@"%f", v3];
  v40[1] = v37;
  v39[2] = @"distance";
  totalDistance = [self totalDistance];
  meterUnit = [MEMORY[0x1E696C510] meterUnit];
  v4 = MEMORY[0x1E696AEC0];
  [totalDistance doubleValueForUnit:meterUnit];
  v34 = [v4 stringWithFormat:@"%f", v5];
  v40[2] = v34;
  v39[3] = @"activeCalories";
  totalEnergyBurned = [self totalEnergyBurned];
  kilocalorieUnit = [MEMORY[0x1E696C510] kilocalorieUnit];
  v6 = MEMORY[0x1E696AEC0];
  [totalEnergyBurned doubleValueForUnit:kilocalorieUnit];
  v31 = [v6 stringWithFormat:@"%f", v7];
  v40[3] = v31;
  v39[4] = @"basalCalories";
  _totalBasalEnergyBurned = [self _totalBasalEnergyBurned];
  kilocalorieUnit2 = [MEMORY[0x1E696C510] kilocalorieUnit];
  v8 = MEMORY[0x1E696AEC0];
  [_totalBasalEnergyBurned doubleValueForUnit:kilocalorieUnit2];
  v10 = [v8 stringWithFormat:@"%f", v9];
  v40[4] = v10;
  v39[5] = @"flightsClimbed";
  totalFlightsClimbed = [self totalFlightsClimbed];
  countUnit = [MEMORY[0x1E696C510] countUnit];
  v13 = MEMORY[0x1E696AEC0];
  [totalFlightsClimbed doubleValueForUnit:countUnit];
  v15 = [v13 stringWithFormat:@"%f", v14];
  v40[5] = v15;
  v39[6] = @"strokeCount";
  totalSwimmingStrokeCount = [self totalSwimmingStrokeCount];
  countUnit2 = [MEMORY[0x1E696C510] countUnit];
  v18 = MEMORY[0x1E696AEC0];
  [totalSwimmingStrokeCount doubleValueForUnit:countUnit2];
  v20 = [v18 stringWithFormat:@"%f", v19];
  v40[6] = v20;
  v39[7] = @"uuid";
  uUID = [self UUID];
  v40[7] = uUID;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:8];

  v23 = MEMORY[0x1E696AEC0];
  v24 = _KeyValueStringFromDictionary(v22);
  metadata = [self metadata];
  v26 = _KeyValueStringFromDictionary(metadata);
  v27 = [v23 stringWithFormat:@"%@ metadata={ %@ }", v24, v26];

  return v27;
}

- (BOOL)fiui_hasWeatherData
{
  metadata = [self metadata];
  v3 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696C780]];
  if (v3)
  {
    metadata2 = [self metadata];
    v5 = [metadata2 objectForKeyedSubscript:*MEMORY[0x1E696BBC0]];
    if (v5)
    {
      metadata3 = [self metadata];
      v7 = [metadata3 objectForKeyedSubscript:*MEMORY[0x1E696BBB8]];
      v8 = v7 != 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)fiui_hasNonZeroElevationGain
{
  fiui_elevationGain = [self fiui_elevationGain];
  v2 = fiui_elevationGain;
  if (fiui_elevationGain)
  {
    fiui_isNonzero = [fiui_elevationGain fiui_isNonzero];
  }

  else
  {
    fiui_isNonzero = 0;
  }

  return fiui_isNonzero;
}

- (id)fiui_elevationGain
{
  metadata = [self metadata];
  v3 = [metadata objectForKey:*MEMORY[0x1E696BA98]];

  if (!v3)
  {
    metadata2 = [self metadata];
    v3 = [metadata2 objectForKey:*MEMORY[0x1E696C7A8]];
  }

  return v3;
}

- (double)fiui_duration
{
  metadata = [self metadata];
  v3 = [metadata objectForKey:*MEMORY[0x1E696BAA8]];

  if (v3)
  {
    secondUnit = [MEMORY[0x1E696C510] secondUnit];
    [v3 doubleValueForUnit:secondUnit];
    v6 = v5;
  }

  else
  {
    [self duration];
    v6 = v7;
  }

  return v6;
}

- (id)fiui_totalDistance
{
  metadata = [self metadata];
  v3 = [metadata objectForKey:*MEMORY[0x1E696BAF8]];

  metadata2 = [self metadata];
  v5 = [metadata2 objectForKey:*MEMORY[0x1E696BA70]];

  if (v3)
  {
    totalDistance = v3;
  }

  else if (v5)
  {
    totalDistance = v5;
  }

  else
  {
    totalDistance = [self totalDistance];
  }

  v7 = totalDistance;

  return v7;
}

- (double)fiui_totalStepCount
{
  metadata = [self metadata];
  v2 = [metadata objectForKey:*MEMORY[0x1E696C7C0]];
  countUnit = [MEMORY[0x1E696C510] countUnit];
  [v2 doubleValueForUnit:countUnit];
  v5 = v4;

  return v5;
}

- (BOOL)fiui_hasAverageCadence
{
  if (![self supportsMetric:16])
  {
    return 0;
  }

  v2 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BDC8]];
  v3 = [self statisticsForType:v2];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BCA8]];
    v6 = [self statisticsForType:v5];
    if (v6)
    {
      v4 = 1;
    }

    else
    {
      metadata = [self metadata];
      v8 = [metadata objectForKey:*MEMORY[0x1E696C790]];
      v4 = v8 != 0;
    }
  }

  return v4;
}

- (double)fiui_averageCadence
{
  v2 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BCA8]];
  v3 = [self statisticsForType:v2];
  averageQuantity = [v3 averageQuantity];

  if (averageQuantity)
  {
    _countPerMinuteUnit = [MEMORY[0x1E696C510] _countPerMinuteUnit];
    [averageQuantity doubleValueForUnit:_countPerMinuteUnit];
    v7 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BDC8]];
    v9 = [self statisticsForType:v8];
    _countPerMinuteUnit = [v9 sumQuantity];

    if (_countPerMinuteUnit && ([self duration], v10 > 0.0))
    {
      countUnit = [MEMORY[0x1E696C510] countUnit];
      [_countPerMinuteUnit doubleValueForUnit:countUnit];
      v13 = v12;

      [self duration];
      v7 = v13 / (v14 / 60.0);
    }

    else
    {
      metadata = [self metadata];
      v16 = [metadata objectForKey:*MEMORY[0x1E696C790]];

      if (v16)
      {
        _countPerMinuteUnit2 = [MEMORY[0x1E696C510] _countPerMinuteUnit];
        [v16 doubleValueForUnit:_countPerMinuteUnit2];
        v7 = v18;
      }

      else
      {
        v7 = 0.0;
      }
    }
  }

  return v7;
}

- (BOOL)fiui_hasAveragePower
{
  _averagePowerQuantity = [self _averagePowerQuantity];
  v2 = _averagePowerQuantity != 0;

  return v2;
}

- (double)fiui_averagePower
{
  _averagePowerQuantity = [self _averagePowerQuantity];
  wattUnit = [MEMORY[0x1E696C510] wattUnit];
  v3 = [_averagePowerQuantity isCompatibleWithUnit:wattUnit];

  if (v3)
  {
    [MEMORY[0x1E696C510] wattUnit];
  }

  else
  {
    [MEMORY[0x1E696C510] unitFromString:@"J/s"];
  }
  v4 = ;
  [_averagePowerQuantity doubleValueForUnit:v4];
  v6 = v5;

  return v6;
}

- (id)_averagePowerQuantity
{
  v2 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BD90]];
  v3 = [self statisticsForType:v2];
  averageQuantity = [v3 averageQuantity];
  v5 = averageQuantity;
  if (averageQuantity)
  {
    v6 = averageQuantity;
  }

  else
  {
    v7 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BCB0]];
    v8 = [self statisticsForType:v7];
    averageQuantity2 = [v8 averageQuantity];
    v10 = averageQuantity2;
    if (averageQuantity2)
    {
      v6 = averageQuantity2;
    }

    else
    {
      metadata = [self metadata];
      v6 = [metadata objectForKey:*MEMORY[0x1E696C7A0]];
    }
  }

  return v6;
}

- (double)fiui_averagePace
{
  _fiui_averagePaceQty = [self _fiui_averagePaceQty];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  [_fiui_averagePaceQty doubleValueForUnit:v2];
  v4 = v3;

  return v4;
}

- (id)fiui_finalWorkoutUUID
{
  metadata = [self metadata];
  v3 = [metadata objectForKey:*MEMORY[0x1E696C7D8]];

  if (v3)
  {
    uUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3];
  }

  else
  {
    uUID = [self UUID];
  }

  v5 = uUID;

  return v5;
}

- (id)fiui_connectedGymBrandName
{
  device = [self device];
  _isConnectedGymDevice = [device _isConnectedGymDevice];

  if (_isConnectedGymDevice)
  {
    device2 = [self device];
    manufacturer = [device2 manufacturer];
LABEL_5:
    v9 = manufacturer;

    goto LABEL_6;
  }

  metadata = [self metadata];
  v7 = *MEMORY[0x1E696C7B8];
  v8 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696C7B8]];

  if (v8)
  {
    device2 = [self metadata];
    manufacturer = [device2 objectForKeyedSubscript:v7];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (double)fiui_averageTimePerLap
{
  v2 = [self fiui_numberOfEventsOfType:3];
  if (v2 < 1)
  {
    return 0.0;
  }

  v3 = v2;
  [self duration];
  return v4 / v3;
}

- (id)fiui_lapLength
{
  if ([self workoutActivityType] == 46)
  {
    metadata = [self metadata];
    v3 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696BB10]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)fiui_splitsFromDistanceSamples:()FitnessUI distanceInMetersPerSplit:workoutStartDate:
{
  v8 = a4;
  v9 = a5;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__0;
  v35[4] = __Block_byref_object_dispose__0;
  v36 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  array = [MEMORY[0x1E695DF70] array];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __97__HKWorkout_FitnessUI__fiui_splitsFromDistanceSamples_distanceInMetersPerSplit_workoutStartDate___block_invoke;
  v19 = &unk_1E878C638;
  v22 = v35;
  v23 = v34;
  v10 = v8;
  v20 = v10;
  v24 = &v37;
  v11 = v9;
  v21 = v11;
  v25 = &v41;
  v26 = &v28;
  v27 = a2;
  [self _enumerateActiveTimePeriods:&v16];
  if (v42[3] != 0.0)
  {
    v12 = [FIUIWorkoutSplit alloc];
    v13 = [(FIUIWorkoutSplit *)v12 initWithDistance:v42[3] duration:v38[3], v16, v17, v18, v19, v20];
    [v29[5] addObject:v13];
  }

  v14 = v29[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v35, 8);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  return v14;
}

+ (double)fiui_weightedAverageHeartRateWithSamples:()FitnessUI startDate:endDate:
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v24 = a4;
  v8 = a5;
  data = [MEMORY[0x1E695DF88] data];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        startDate = [v15 startDate];
        quantity = [v15 quantity];
        _countPerMinuteUnit = [MEMORY[0x1E696C510] _countPerMinuteUnit];
        [quantity doubleValueForUnit:_countPerMinuteUnit];
        v20 = v19;

        [data fiui_appendHeartRate:startDate date:v20];
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  [data fiui_weightedAverageHeartRateWithStartDate:v24 endDate:v8];
  v22 = v21;

  return v22;
}

+ (id)fiui_supportedMetricsForActivityType:()FitnessUI activityMoveMode:
{
  v5 = a3;
  v6 = [[FIUIWorkoutSettingsManager alloc] initWithWorkoutActivityType:v5 activityMoveMode:a4];

  orderedSupportedMetrics = [(FIUIWorkoutSettingsManager *)v6 orderedSupportedMetrics];

  return orderedSupportedMetrics;
}

+ (id)fiui_supportedGoalTypesForActivityType:()FitnessUI activityMoveMode:
{
  v6 = a3;
  v7 = [[FIUIWorkoutSettingsManager alloc] initWithWorkoutActivityType:v6 activityMoveMode:a4];

  v8 = [self fiui_supportedGoalTypesForWorkoutSettingsManager:v7];

  return v8;
}

+ (id)fiui_supportedGoalTypesForWorkoutSettingsManager:()FitnessUI
{
  orderedSupportedMetrics = [a3 orderedSupportedMetrics];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x1E696C588], "fiui_associatedMetricForGoalType:", 3)}];
  v6 = [orderedSupportedMetrics containsObject:v5];

  if (v6)
  {
    [v4 addObject:&unk_1F5F9B628];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x1E696C588], "fiui_associatedMetricForGoalType:", 2)}];
  v8 = [orderedSupportedMetrics containsObject:v7];

  if (v8)
  {
    [v4 addObject:&unk_1F5F9B640];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x1E696C588], "fiui_associatedMetricForGoalType:", 1)}];
  v10 = [orderedSupportedMetrics containsObject:v9];

  if (v10)
  {
    [v4 addObject:&unk_1F5F9B658];
  }

  [v4 addObject:&unk_1F5F9B670];

  return v4;
}

+ (uint64_t)fiui_isHeartRateSupportedForActivityType:()FitnessUI isIndoor:
{
  if ([MEMORY[0x1E69DC668] isRunningInStoreDemoMode])
  {
    return 1;
  }

  v6 = [self _isHeartRateSupportedInPowerSettingsForActivityType:a3];
  return v6 & [self _isHeartRateSupportedInPrivacySettings];
}

+ (uint64_t)fiui_associatedMetricForGoalType:()FitnessUI
{
  if (a3 > 2)
  {
    return 2;
  }

  else
  {
    return qword_1E5DB1E18[a3];
  }
}

+ (uint64_t)fiui_activitySupportsMetricType:()FitnessUI activityType:activityMoveMode:
{
  v6 = [MEMORY[0x1E696C588] fiui_supportedMetricsForActivityType:a4 activityMoveMode:a5];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [v6 containsObject:v7];

  return v8;
}

@end