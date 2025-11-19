@interface HKWorkout
@end

@implementation HKWorkout

void __97__HKWorkout_FitnessUI__fiui_splitsFromDistanceSamples_distanceInMetersPerSplit_workoutStartDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *(*(a1 + 48) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (!v10)
  {
    objc_storeStrong(v9, a2);
  }

  v11 = *(*(*(a1 + 56) + 8) + 24);
  if (v11 >= [*(a1 + 32) count])
  {
    [v7 timeIntervalSinceDate:v6];
    *(*(*(a1 + 64) + 8) + 24) = v12 + *(*(*(a1 + 64) + 8) + 24);
  }

  v13 = *(*(*(a1 + 56) + 8) + 24);
  if (v13 < [*(a1 + 32) count])
  {
    while (1)
    {
      v14 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
      v15 = *(*(*(a1 + 56) + 8) + 24);
      if (v15 == [*(a1 + 32) count] - 1)
      {
        v16 = 1;
      }

      else
      {
        v17 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24) + 1];
        v18 = [v17 startDate];
        [v18 timeIntervalSinceReferenceDate];
        v20 = v19;
        [v7 timeIntervalSinceReferenceDate];
        v16 = v20 > v21;
      }

      v22 = [v14 quantity];
      v23 = [MEMORY[0x1E696C510] meterUnit];
      [v22 doubleValueForUnit:v23];
      v25 = v24;

      v26 = [v14 endDate];
      v27 = [v14 startDate];
      [v26 timeIntervalSinceDate:v27];
      v29 = v28;

      v30 = [v14 startDate];
      v31 = [v30 compare:*(a1 + 40)];

      if (v31 == -1)
      {
        if (*(*(*(a1 + 56) + 8) + 24))
        {
          _HKInitializeLogging();
          v32 = *MEMORY[0x1E696B9A8];
          if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_ERROR))
          {
            __97__HKWorkout_FitnessUI__fiui_splitsFromDistanceSamples_distanceInMetersPerSplit_workoutStartDate___block_invoke_cold_1(&buf, v64, v32);
          }
        }

        v33 = *(a1 + 40);
        v34 = [v14 endDate];
        v35 = [v33 compare:v34];

        if (v35 == -1)
        {
          _HKInitializeLogging();
          v36 = *MEMORY[0x1E696B9A8];
          if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_ERROR))
          {
            __97__HKWorkout_FitnessUI__fiui_splitsFromDistanceSamples_distanceInMetersPerSplit_workoutStartDate___block_invoke_cold_2(&v61, v62, v36);
          }
        }

        v37 = [v14 endDate];
        [v37 timeIntervalSinceDate:*(a1 + 40)];
        v39 = v38;
        v40 = [v14 endDate];
        v41 = [v14 startDate];
        [v40 timeIntervalSinceDate:v41];
        v43 = v39 / v42;

        v25 = v25 * v43;
        v44 = [v14 endDate];
        [v44 timeIntervalSinceDate:*(a1 + 40)];
        v29 = v45;

        objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
      }

      *(*(*(a1 + 72) + 8) + 24) = v25 + *(*(*(a1 + 72) + 8) + 24);
      if (v16)
      {
        break;
      }

      v46 = *(*(*(a1 + 72) + 8) + 24);
      v47 = *(a1 + 88);
      if (v46 >= v47)
      {
        v48 = v46 - v47;
        v49 = v29 * ((v46 - v47) / v25);
        v50 = [v14 endDate];
        [v50 timeIntervalSinceDate:*(*(*(a1 + 48) + 8) + 40)];
        *(*(*(a1 + 64) + 8) + 24) = v51 - v49 + *(*(*(a1 + 64) + 8) + 24);

        v52 = [[FIUIWorkoutSplit alloc] initWithDistance:*(*(*(a1 + 72) + 8) + 24) - v48 duration:*(*(*(a1 + 64) + 8) + 24)];
        [*(*(*(a1 + 80) + 8) + 40) addObject:v52];
        *(*(*(a1 + 64) + 8) + 24) = v49;
        *(*(*(a1 + 72) + 8) + 24) = v48;
        v53 = [v14 endDate];
        v54 = [v53 dateByAddingTimeInterval:-v49];
        v55 = *(*(a1 + 48) + 8);
        v56 = *(v55 + 40);
        *(v55 + 40) = v54;
      }

      ++*(*(*(a1 + 56) + 8) + 24);

      v57 = *(*(*(a1 + 56) + 8) + 24);
      if (v57 >= [*(a1 + 32) count])
      {
        goto LABEL_23;
      }
    }

    [v7 timeIntervalSinceDate:*(*(*(a1 + 48) + 8) + 40)];
    *(*(*(a1 + 64) + 8) + 24) = v58 + *(*(*(a1 + 64) + 8) + 24);
    v59 = *(*(a1 + 48) + 8);
    v60 = *(v59 + 40);
    *(v59 + 40) = 0;
  }

LABEL_23:
  ++*(*(*(a1 + 56) + 8) + 24);
}

FIUIWorkoutSplit *__81__HKWorkout_FIUISplitsAdditions__fiui_workoutSplitsForUserPreferredDistanceUnit___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 metadata];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E699C988]];

  v5 = [v2 metadata];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E699C998]];

  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x1E696B9A8];
    if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_ERROR))
    {
      __81__HKWorkout_FIUISplitsAdditions__fiui_workoutSplitsForUserPreferredDistanceUnit___block_invoke_cold_1(v2, v8);
    }

    v17 = 0;
  }

  else
  {
    v9 = [FIUIWorkoutSplit alloc];
    v10 = [MEMORY[0x1E696C510] meterUnit];
    [v6 doubleValueForUnit:v10];
    v12 = v11;
    v13 = [MEMORY[0x1E696C510] secondUnit];
    [v4 doubleValueForUnit:v13];
    v15 = v14;
    v16 = [v2 dateInterval];
    v17 = [(FIUIWorkoutSplit *)v9 initWithDistance:v16 duration:v12 dateInterval:v15];
  }

  return v17;
}

FIUIWorkoutSplit *__58__HKWorkout_FIUISplitsAdditions__fiui_workoutCustomSplits__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 metadata];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E699C988]];

  v5 = [v2 metadata];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E699C998]];

  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x1E696B9A8];
    if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_ERROR))
    {
      __81__HKWorkout_FIUISplitsAdditions__fiui_workoutSplitsForUserPreferredDistanceUnit___block_invoke_cold_1(v2, v8);
    }

    v17 = 0;
  }

  else
  {
    v9 = [FIUIWorkoutSplit alloc];
    v10 = [MEMORY[0x1E696C510] meterUnit];
    [v6 doubleValueForUnit:v10];
    v12 = v11;
    v13 = [MEMORY[0x1E696C510] secondUnit];
    [v4 doubleValueForUnit:v13];
    v15 = v14;
    v16 = [v2 dateInterval];
    v17 = [(FIUIWorkoutSplit *)v9 initWithDistance:v16 duration:v12 dateInterval:v15];
  }

  return v17;
}

void __97__HKWorkout_FitnessUI__fiui_splitsFromDistanceSamples_distanceInMetersPerSplit_workoutStartDate___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1E5D0F000, log, OS_LOG_TYPE_ERROR, "[FIUI] Sample cannot have an earlier start date than workout's start date if it's not the first sample", buf, 2u);
}

void __97__HKWorkout_FitnessUI__fiui_splitsFromDistanceSamples_distanceInMetersPerSplit_workoutStartDate___block_invoke_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1E5D0F000, log, OS_LOG_TYPE_ERROR, "[FIUI] Sample cannot have end date and start date earlier than workout's start date", buf, 2u);
}

void __81__HKWorkout_FIUISplitsAdditions__fiui_workoutSplitsForUserPreferredDistanceUnit___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E5D0F000, a2, OS_LOG_TYPE_ERROR, "Skipping split event %@ because it's missing duration or distance", &v2, 0xCu);
}

@end