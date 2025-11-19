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
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 persistentDomainForName:*MEMORY[0x1E696C8E0]];

  v2 = [v1 objectForKey:*MEMORY[0x1E696C8E8]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (uint64_t)fiui_strokeStyle
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = [a1 metadata];
  v3 = *MEMORY[0x1E696BB60];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696BB60]];

  if (v4)
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v7 = [a1 fiui_eventsOfType:3];
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

          v12 = [*(*(&v47 + 1) + 8 * i) metadata];
          v13 = [v12 objectForKeyedSubscript:v3];

          if (v13)
          {
            v14 = [v6 objectForKeyedSubscript:v13];
            if (v14)
            {
              v15 = v14;
              v16 = [v14 integerValue];
              v17 = [MEMORY[0x1E696AD98] numberWithInteger:v16 + 1];
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
    v5 = v18;
    if (v18)
    {
      if (v18 == 1)
      {
        v19 = [v6 allKeys];
        v20 = [v19 firstObject];
        v5 = [v20 integerValue];

        v4 = 0;
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v21 = [v6 allValues];
        v22 = [v21 countByEnumeratingWithState:&v43 objects:v52 count:16];
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
                objc_enumerationMutation(v21);
              }

              [*(*(&v43 + 1) + 8 * j) floatValue];
              v25 = v25 + v27;
            }

            v23 = [v21 countByEnumeratingWithState:&v43 objects:v52 count:16];
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
        v19 = [v6 allKeys];
        v28 = [v19 countByEnumeratingWithState:&v39 objects:v51 count:16];
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

          v5 = 1;
          while (2)
          {
            for (k = 0; k != v29; ++k)
            {
              if (*v40 != v30)
              {
                objc_enumerationMutation(v19);
              }

              v34 = *(*(&v39 + 1) + 8 * k);
              v35 = [v6 objectForKeyedSubscript:v34];
              [v35 floatValue];
              v37 = v36;

              if ((v37 / v32) > 0.9)
              {
                v5 = [v34 integerValue];
                goto LABEL_45;
              }
            }

            v29 = [v19 countByEnumeratingWithState:&v39 objects:v51 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v5 = 1;
        }
      }

LABEL_45:
    }

    else
    {
      v4 = 0;
    }
  }

  return v5;
}

- (double)fiui_completionFactor
{
  v2 = [a1 _goalType];
  v3 = 0.0;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 != 3)
      {
        return v3;
      }

      v10 = [a1 totalEnergyBurned];
      v11 = [MEMORY[0x1E696C510] jouleUnit];
      [v10 doubleValueForUnit:v11];
      v7 = v12;

      v8 = [a1 _goal];
      v9 = [MEMORY[0x1E696C510] jouleUnit];
      goto LABEL_8;
    }

    v16 = [a1 _goal];
    v17 = [MEMORY[0x1E696C510] secondUnit];
    [v16 doubleValueForUnit:v17];
    v19 = v18;

    if (v19 > 2.22044605e-16)
    {
      [a1 duration];
      return v20 / v19;
    }
  }

  else
  {
    if (!v2)
    {
      return 1.0;
    }

    if (v2 == 1)
    {
      v4 = [a1 totalDistance];
      v5 = [MEMORY[0x1E696C510] meterUnit];
      [v4 doubleValueForUnit:v5];
      v7 = v6;

      v8 = [a1 _goal];
      v9 = [MEMORY[0x1E696C510] meterUnit];
LABEL_8:
      v13 = v9;
      [v8 doubleValueForUnit:v9];
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
  v1 = [a1 _fiui_averagePaceQty];
  v2 = v1 != 0;

  return v2;
}

- (id)_fiui_averagePaceQty
{
  v1 = [a1 metadata];
  v2 = [v1 objectForKey:*MEMORY[0x1E696C798]];

  return v2;
}

- (id)fiui_eventsOfType:()FitnessUI
{
  v4 = [a1 workoutEvents];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__HKWorkout_FitnessUI__fiui_eventsOfType___block_invoke;
  v8[3] = &__block_descriptor_40_e41_B24__0__HKWorkoutEvent_8__NSDictionary_16l;
  v8[4] = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:v8];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  return v6;
}

- (uint64_t)fiui_numberOfEventsOfType:()FitnessUI
{
  v1 = [a1 fiui_eventsOfType:?];
  v2 = [v1 count];

  return v2;
}

- (id)fiui_keyValueSummary
{
  v40[8] = *MEMORY[0x1E69E9840];
  v39[0] = @"activityType";
  [a1 workoutActivityType];
  v38 = _HKWorkoutActivityNameForActivityType();
  v40[0] = v38;
  v39[1] = @"duration";
  v2 = MEMORY[0x1E696AEC0];
  [a1 duration];
  v37 = [v2 stringWithFormat:@"%f", v3];
  v40[1] = v37;
  v39[2] = @"distance";
  v36 = [a1 totalDistance];
  v35 = [MEMORY[0x1E696C510] meterUnit];
  v4 = MEMORY[0x1E696AEC0];
  [v36 doubleValueForUnit:v35];
  v34 = [v4 stringWithFormat:@"%f", v5];
  v40[2] = v34;
  v39[3] = @"activeCalories";
  v33 = [a1 totalEnergyBurned];
  v32 = [MEMORY[0x1E696C510] kilocalorieUnit];
  v6 = MEMORY[0x1E696AEC0];
  [v33 doubleValueForUnit:v32];
  v31 = [v6 stringWithFormat:@"%f", v7];
  v40[3] = v31;
  v39[4] = @"basalCalories";
  v30 = [a1 _totalBasalEnergyBurned];
  v29 = [MEMORY[0x1E696C510] kilocalorieUnit];
  v8 = MEMORY[0x1E696AEC0];
  [v30 doubleValueForUnit:v29];
  v10 = [v8 stringWithFormat:@"%f", v9];
  v40[4] = v10;
  v39[5] = @"flightsClimbed";
  v11 = [a1 totalFlightsClimbed];
  v12 = [MEMORY[0x1E696C510] countUnit];
  v13 = MEMORY[0x1E696AEC0];
  [v11 doubleValueForUnit:v12];
  v15 = [v13 stringWithFormat:@"%f", v14];
  v40[5] = v15;
  v39[6] = @"strokeCount";
  v16 = [a1 totalSwimmingStrokeCount];
  v17 = [MEMORY[0x1E696C510] countUnit];
  v18 = MEMORY[0x1E696AEC0];
  [v16 doubleValueForUnit:v17];
  v20 = [v18 stringWithFormat:@"%f", v19];
  v40[6] = v20;
  v39[7] = @"uuid";
  v21 = [a1 UUID];
  v40[7] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:8];

  v23 = MEMORY[0x1E696AEC0];
  v24 = _KeyValueStringFromDictionary(v22);
  v25 = [a1 metadata];
  v26 = _KeyValueStringFromDictionary(v25);
  v27 = [v23 stringWithFormat:@"%@ metadata={ %@ }", v24, v26];

  return v27;
}

- (BOOL)fiui_hasWeatherData
{
  v2 = [a1 metadata];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696C780]];
  if (v3)
  {
    v4 = [a1 metadata];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696BBC0]];
    if (v5)
    {
      v6 = [a1 metadata];
      v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696BBB8]];
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
  v1 = [a1 fiui_elevationGain];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 fiui_isNonzero];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)fiui_elevationGain
{
  v2 = [a1 metadata];
  v3 = [v2 objectForKey:*MEMORY[0x1E696BA98]];

  if (!v3)
  {
    v4 = [a1 metadata];
    v3 = [v4 objectForKey:*MEMORY[0x1E696C7A8]];
  }

  return v3;
}

- (double)fiui_duration
{
  v2 = [a1 metadata];
  v3 = [v2 objectForKey:*MEMORY[0x1E696BAA8]];

  if (v3)
  {
    v4 = [MEMORY[0x1E696C510] secondUnit];
    [v3 doubleValueForUnit:v4];
    v6 = v5;
  }

  else
  {
    [a1 duration];
    v6 = v7;
  }

  return v6;
}

- (id)fiui_totalDistance
{
  v2 = [a1 metadata];
  v3 = [v2 objectForKey:*MEMORY[0x1E696BAF8]];

  v4 = [a1 metadata];
  v5 = [v4 objectForKey:*MEMORY[0x1E696BA70]];

  if (v3)
  {
    v6 = v3;
  }

  else if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [a1 totalDistance];
  }

  v7 = v6;

  return v7;
}

- (double)fiui_totalStepCount
{
  v1 = [a1 metadata];
  v2 = [v1 objectForKey:*MEMORY[0x1E696C7C0]];
  v3 = [MEMORY[0x1E696C510] countUnit];
  [v2 doubleValueForUnit:v3];
  v5 = v4;

  return v5;
}

- (BOOL)fiui_hasAverageCadence
{
  if (![a1 supportsMetric:16])
  {
    return 0;
  }

  v2 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BDC8]];
  v3 = [a1 statisticsForType:v2];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BCA8]];
    v6 = [a1 statisticsForType:v5];
    if (v6)
    {
      v4 = 1;
    }

    else
    {
      v7 = [a1 metadata];
      v8 = [v7 objectForKey:*MEMORY[0x1E696C790]];
      v4 = v8 != 0;
    }
  }

  return v4;
}

- (double)fiui_averageCadence
{
  v2 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BCA8]];
  v3 = [a1 statisticsForType:v2];
  v4 = [v3 averageQuantity];

  if (v4)
  {
    v5 = [MEMORY[0x1E696C510] _countPerMinuteUnit];
    [v4 doubleValueForUnit:v5];
    v7 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BDC8]];
    v9 = [a1 statisticsForType:v8];
    v5 = [v9 sumQuantity];

    if (v5 && ([a1 duration], v10 > 0.0))
    {
      v11 = [MEMORY[0x1E696C510] countUnit];
      [v5 doubleValueForUnit:v11];
      v13 = v12;

      [a1 duration];
      v7 = v13 / (v14 / 60.0);
    }

    else
    {
      v15 = [a1 metadata];
      v16 = [v15 objectForKey:*MEMORY[0x1E696C790]];

      if (v16)
      {
        v17 = [MEMORY[0x1E696C510] _countPerMinuteUnit];
        [v16 doubleValueForUnit:v17];
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
  v1 = [a1 _averagePowerQuantity];
  v2 = v1 != 0;

  return v2;
}

- (double)fiui_averagePower
{
  v1 = [a1 _averagePowerQuantity];
  v2 = [MEMORY[0x1E696C510] wattUnit];
  v3 = [v1 isCompatibleWithUnit:v2];

  if (v3)
  {
    [MEMORY[0x1E696C510] wattUnit];
  }

  else
  {
    [MEMORY[0x1E696C510] unitFromString:@"J/s"];
  }
  v4 = ;
  [v1 doubleValueForUnit:v4];
  v6 = v5;

  return v6;
}

- (id)_averagePowerQuantity
{
  v2 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BD90]];
  v3 = [a1 statisticsForType:v2];
  v4 = [v3 averageQuantity];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BCB0]];
    v8 = [a1 statisticsForType:v7];
    v9 = [v8 averageQuantity];
    v10 = v9;
    if (v9)
    {
      v6 = v9;
    }

    else
    {
      v11 = [a1 metadata];
      v6 = [v11 objectForKey:*MEMORY[0x1E696C7A0]];
    }
  }

  return v6;
}

- (double)fiui_averagePace
{
  v1 = [a1 _fiui_averagePaceQty];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  [v1 doubleValueForUnit:v2];
  v4 = v3;

  return v4;
}

- (id)fiui_finalWorkoutUUID
{
  v2 = [a1 metadata];
  v3 = [v2 objectForKey:*MEMORY[0x1E696C7D8]];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3];
  }

  else
  {
    v4 = [a1 UUID];
  }

  v5 = v4;

  return v5;
}

- (id)fiui_connectedGymBrandName
{
  v2 = [a1 device];
  v3 = [v2 _isConnectedGymDevice];

  if (v3)
  {
    v4 = [a1 device];
    v5 = [v4 manufacturer];
LABEL_5:
    v9 = v5;

    goto LABEL_6;
  }

  v6 = [a1 metadata];
  v7 = *MEMORY[0x1E696C7B8];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696C7B8]];

  if (v8)
  {
    v4 = [a1 metadata];
    v5 = [v4 objectForKeyedSubscript:v7];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (double)fiui_averageTimePerLap
{
  v2 = [a1 fiui_numberOfEventsOfType:3];
  if (v2 < 1)
  {
    return 0.0;
  }

  v3 = v2;
  [a1 duration];
  return v4 / v3;
}

- (id)fiui_lapLength
{
  if ([a1 workoutActivityType] == 46)
  {
    v2 = [a1 metadata];
    v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696BB10]];
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
  v33 = [MEMORY[0x1E695DF70] array];
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
  [a1 _enumerateActiveTimePeriods:&v16];
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
  v9 = [MEMORY[0x1E695DF88] data];
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
        v16 = [v15 startDate];
        v17 = [v15 quantity];
        v18 = [MEMORY[0x1E696C510] _countPerMinuteUnit];
        [v17 doubleValueForUnit:v18];
        v20 = v19;

        [v9 fiui_appendHeartRate:v16 date:v20];
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  [v9 fiui_weightedAverageHeartRateWithStartDate:v24 endDate:v8];
  v22 = v21;

  return v22;
}

+ (id)fiui_supportedMetricsForActivityType:()FitnessUI activityMoveMode:
{
  v5 = a3;
  v6 = [[FIUIWorkoutSettingsManager alloc] initWithWorkoutActivityType:v5 activityMoveMode:a4];

  v7 = [(FIUIWorkoutSettingsManager *)v6 orderedSupportedMetrics];

  return v7;
}

+ (id)fiui_supportedGoalTypesForActivityType:()FitnessUI activityMoveMode:
{
  v6 = a3;
  v7 = [[FIUIWorkoutSettingsManager alloc] initWithWorkoutActivityType:v6 activityMoveMode:a4];

  v8 = [a1 fiui_supportedGoalTypesForWorkoutSettingsManager:v7];

  return v8;
}

+ (id)fiui_supportedGoalTypesForWorkoutSettingsManager:()FitnessUI
{
  v3 = [a3 orderedSupportedMetrics];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x1E696C588], "fiui_associatedMetricForGoalType:", 3)}];
  v6 = [v3 containsObject:v5];

  if (v6)
  {
    [v4 addObject:&unk_1F5F9B628];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x1E696C588], "fiui_associatedMetricForGoalType:", 2)}];
  v8 = [v3 containsObject:v7];

  if (v8)
  {
    [v4 addObject:&unk_1F5F9B640];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x1E696C588], "fiui_associatedMetricForGoalType:", 1)}];
  v10 = [v3 containsObject:v9];

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

  v6 = [a1 _isHeartRateSupportedInPowerSettingsForActivityType:a3];
  return v6 & [a1 _isHeartRateSupportedInPrivacySettings];
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