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
  metadata = [v5 metadata];
  v9 = *MEMORY[0x1E696BB00];
  v10 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696BB00]];
  bOOLValue = [v10 BOOLValue];

  v12 = MEMORY[0x1E696AF60];
  v13 = *MEMORY[0x1E699CA58];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
  stringValue = [v14 stringValue];
  v16 = [v12 queryItemWithName:v13 value:stringValue];

  v73 = v16;
  [v7 addObject:v16];
  v17 = [FIUIWorkoutActivityType alloc];
  workoutActivityType = [v5 workoutActivityType];
  metadata2 = [v5 metadata];
  v20 = [metadata2 objectForKeyedSubscript:v9];
  bOOLValue2 = [v20 BOOLValue];

  v22 = [(FIUIWorkoutActivityType *)v17 initWithActivityTypeIdentifier:workoutActivityType isIndoor:bOOLValue2];
  v23 = MEMORY[0x1E696AF60];
  v24 = *MEMORY[0x1E699CA30];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FIUIWorkoutActivityType identifier](v22, "identifier")}];
  stringValue2 = [v25 stringValue];
  v27 = [v23 queryItemWithName:v24 value:stringValue2];

  v70 = v27;
  [v7 addObject:v27];
  auxiliaryTypeIdentifier = [(FIUIWorkoutActivityType *)v22 auxiliaryTypeIdentifier];
  if (auxiliaryTypeIdentifier != *MEMORY[0x1E696C800])
  {
    v29 = MEMORY[0x1E696AF60];
    v30 = *MEMORY[0x1E699CA38];
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FIUIWorkoutActivityType auxiliaryTypeIdentifier](v22, "auxiliaryTypeIdentifier")}];
    stringValue3 = [v31 stringValue];
    v33 = [v29 queryItemWithName:v30 value:stringValue3];

    [v7 addObject:v33];
  }

  v71 = v22;
  _goalType = [v5 _goalType];
  v35 = MEMORY[0x1E696AF60];
  v36 = *MEMORY[0x1E699CA40];
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:_goalType];
  stringValue4 = [v37 stringValue];
  v39 = [v35 queryItemWithName:v36 value:stringValue4];

  v69 = v39;
  [v7 addObject:v39];
  switch(_goalType)
  {
    case 1:
      _goal = [v5 _goal];
      fiui_URLDistanceUnit = [MEMORY[0x1E695DFF8] fiui_URLDistanceUnit];
      break;
    case 3:
      _goal = [v5 _goal];
      fiui_URLDistanceUnit = [MEMORY[0x1E695DFF8] fiui_URLEnergyUnit];
      break;
    case 2:
      _goal = [v5 _goal];
      fiui_URLDistanceUnit = [MEMORY[0x1E695DFF8] fiui_URLTimeUnit];
      break;
    default:
      goto LABEL_11;
  }

  v42 = fiui_URLDistanceUnit;
  [_goal doubleValueForUnit:fiui_URLDistanceUnit];
  v44 = v43;

  v45 = MEMORY[0x1E696AF60];
  v46 = *MEMORY[0x1E699CA48];
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:v44];
  stringValue5 = [v47 stringValue];
  v49 = [v45 queryItemWithName:v46 value:stringValue5];

  if (v49)
  {
    [v7 addObject:v49];
  }

LABEL_11:
  v50 = MEMORY[0x1E696AF60];
  v51 = *MEMORY[0x1E699CA28];
  v52 = MEMORY[0x1E696AD98];
  startDate = [v5 startDate];
  [startDate timeIntervalSinceReferenceDate];
  v54 = [v52 numberWithDouble:?];
  stringValue6 = [v54 stringValue];
  v56 = [v50 queryItemWithName:v51 value:stringValue6];

  [v7 addObject:v56];
  if (a4)
  {
    v57 = MEMORY[0x1E696AF60];
    v58 = *MEMORY[0x1E699CA60];
    v59 = [MEMORY[0x1E696AD98] numberWithBool:1];
    stringValue7 = [v59 stringValue];
    v61 = [v57 queryItemWithName:v58 value:stringValue7];

    [v7 addObject:v61];
  }

  if (a5)
  {
    v62 = MEMORY[0x1E696AF60];
    v63 = *MEMORY[0x1E699CA78];
    v64 = [MEMORY[0x1E696AD98] numberWithBool:1];
    stringValue8 = [v64 stringValue];
    v66 = [v62 queryItemWithName:v63 value:stringValue8];

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
  fiui_workoutPickerURLComponents = [objc_opt_class() fiui_workoutPickerURLComponents];
  v1 = [fiui_workoutPickerURLComponents URL];

  return v1;
}

@end