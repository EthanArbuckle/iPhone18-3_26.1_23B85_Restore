@interface NSURL(NLWorkoutInitiation)
+ (id)_launchURLWithHostname:()NLWorkoutInitiation workoutIdentifier:;
+ (id)fiui_workoutInitiationURLWithWorkout:()NLWorkoutInitiation presentConfiguration:skipCountdown:;
+ (id)fiui_workoutPickerURL;
+ (id)fiui_workoutPickerURLComponents;
@end

@implementation NSURL(NLWorkoutInitiation)

+ (id)fiui_workoutInitiationURLWithWorkout:()NLWorkoutInitiation presentConfiguration:skipCountdown:
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v6 setScheme:*MEMORY[0x1E699CA70]];
  [v6 setHost:*MEMORY[0x1E699CA50]];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [v5 metadata];
  v9 = *MEMORY[0x1E696BB00];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696BB00]];
  v11 = [v10 BOOLValue];

  v12 = MEMORY[0x1E696AF60];
  v13 = *MEMORY[0x1E699CA58];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:v11];
  v15 = [v14 stringValue];
  v16 = [v12 queryItemWithName:v13 value:v15];

  v73 = v16;
  [v7 addObject:v16];
  v17 = [FIUIWorkoutActivityType alloc];
  v18 = [v5 workoutActivityType];
  v19 = [v5 metadata];
  v20 = [v19 objectForKeyedSubscript:v9];
  v21 = [v20 BOOLValue];

  v22 = [(FIUIWorkoutActivityType *)v17 initWithActivityTypeIdentifier:v18 isIndoor:v21];
  v23 = MEMORY[0x1E696AF60];
  v24 = *MEMORY[0x1E699CA30];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FIUIWorkoutActivityType identifier](v22, "identifier")}];
  v26 = [v25 stringValue];
  v27 = [v23 queryItemWithName:v24 value:v26];

  v70 = v27;
  [v7 addObject:v27];
  v28 = [(FIUIWorkoutActivityType *)v22 auxiliaryTypeIdentifier];
  if (v28 != *MEMORY[0x1E696C800])
  {
    v29 = MEMORY[0x1E696AF60];
    v30 = *MEMORY[0x1E699CA38];
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FIUIWorkoutActivityType auxiliaryTypeIdentifier](v22, "auxiliaryTypeIdentifier")}];
    v32 = [v31 stringValue];
    v33 = [v29 queryItemWithName:v30 value:v32];

    [v7 addObject:v33];
  }

  v71 = v22;
  v34 = [v5 _goalType];
  v35 = MEMORY[0x1E696AF60];
  v36 = *MEMORY[0x1E699CA40];
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34];
  v38 = [v37 stringValue];
  v39 = [v35 queryItemWithName:v36 value:v38];

  v69 = v39;
  [v7 addObject:v39];
  switch(v34)
  {
    case 1:
      v40 = [v5 _goal];
      v41 = [MEMORY[0x1E695DFF8] fiui_URLDistanceUnit];
      break;
    case 3:
      v40 = [v5 _goal];
      v41 = [MEMORY[0x1E695DFF8] fiui_URLEnergyUnit];
      break;
    case 2:
      v40 = [v5 _goal];
      v41 = [MEMORY[0x1E695DFF8] fiui_URLTimeUnit];
      break;
    default:
      goto LABEL_11;
  }

  v42 = v41;
  [v40 doubleValueForUnit:v41];
  v44 = v43;

  v45 = MEMORY[0x1E696AF60];
  v46 = *MEMORY[0x1E699CA48];
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:v44];
  v48 = [v47 stringValue];
  v49 = [v45 queryItemWithName:v46 value:v48];

  if (v49)
  {
    [v7 addObject:v49];
  }

LABEL_11:
  v50 = MEMORY[0x1E696AF60];
  v51 = *MEMORY[0x1E699CA28];
  v52 = MEMORY[0x1E696AD98];
  v53 = [v5 startDate];
  [v53 timeIntervalSinceReferenceDate];
  v54 = [v52 numberWithDouble:?];
  v55 = [v54 stringValue];
  v56 = [v50 queryItemWithName:v51 value:v55];

  [v7 addObject:v56];
  if (a4)
  {
    v57 = MEMORY[0x1E696AF60];
    v58 = *MEMORY[0x1E699CA60];
    v59 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v60 = [v59 stringValue];
    v61 = [v57 queryItemWithName:v58 value:v60];

    [v7 addObject:v61];
  }

  if (a5)
  {
    v62 = MEMORY[0x1E696AF60];
    v63 = *MEMORY[0x1E699CA78];
    v64 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v65 = [v64 stringValue];
    v66 = [v62 queryItemWithName:v63 value:v65];

    [v7 addObject:v66];
  }

  [v6 setQueryItems:v7];
  v67 = [v6 URL];

  return v67;
}

+ (id)_launchURLWithHostname:()NLWorkoutInitiation workoutIdentifier:
{
  v5 = MEMORY[0x1E696AF20];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setScheme:*MEMORY[0x1E699CA70]];
  [v8 setHost:v7];

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [MEMORY[0x1E696AF60] queryItemWithName:*MEMORY[0x1E699CA80] value:v6];

  [v9 addObject:v10];
  [v8 setQueryItems:v9];
  v11 = [v8 URL];

  return v11;
}

+ (id)fiui_workoutPickerURLComponents
{
  v0 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v0 setScheme:*MEMORY[0x1E699CA70]];
  [v0 setHost:*MEMORY[0x1E699CA68]];

  return v0;
}

+ (id)fiui_workoutPickerURL
{
  v0 = [objc_opt_class() fiui_workoutPickerURLComponents];
  v1 = [v0 URL];

  return v1;
}

@end