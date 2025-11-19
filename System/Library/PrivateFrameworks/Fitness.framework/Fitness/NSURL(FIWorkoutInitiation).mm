@interface NSURL(FIWorkoutInitiation)
+ (id)_launchURLWithHostname:()FIWorkoutInitiation workoutIdentifier:date:source:;
+ (id)fi_startBackdatedWorkoutURLWithDate:()FIWorkoutInitiation workoutIdentifier:workoutType:isIndoor:swimmingLocationType:showPicker:;
@end

@implementation NSURL(FIWorkoutInitiation)

+ (id)fi_startBackdatedWorkoutURLWithDate:()FIWorkoutInitiation workoutIdentifier:workoutType:isIndoor:swimmingLocationType:showPicker:
{
  v11 = MEMORY[0x277CCACE0];
  v47 = a4;
  v12 = a3;
  v13 = objc_alloc_init(v11);
  [v13 setScheme:@"SessionTrackerApp"];
  [v13 setHost:@"startbackdatedworkout"];
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = MEMORY[0x277CCAD18];
  v16 = MEMORY[0x277CCABB0];
  [v12 timeIntervalSinceReferenceDate];
  v18 = v17;

  v19 = [v16 numberWithDouble:v18];
  v20 = [v19 stringValue];
  v45 = [v15 queryItemWithName:@"overrideActivityBeginTime" value:v20];

  [v14 addObject:v45];
  v21 = MEMORY[0x277CCAD18];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v23 = [v22 stringValue];
  v43 = [v21 queryItemWithName:@"activityType" value:v23];

  [v14 addObject:v43];
  v24 = MEMORY[0x277CCAD18];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v26 = [v25 stringValue];
  v27 = [v24 queryItemWithName:@"auxiliaryActivityType" value:v26];

  [v14 addObject:v27];
  v28 = MEMORY[0x277CCAD18];
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
  v30 = [v29 stringValue];
  v31 = [v28 queryItemWithName:@"swimmingLocationType" value:v30];

  [v14 addObject:v31];
  v32 = MEMORY[0x277CCAD18];
  v33 = [MEMORY[0x277CCABB0] numberWithBool:a6];
  v34 = [v33 stringValue];
  v35 = [v32 queryItemWithName:@"location" value:v34];

  [v14 addObject:v35];
  v36 = MEMORY[0x277CCAD18];
  v37 = [MEMORY[0x277CCABB0] numberWithBool:a8];
  v38 = [v37 stringValue];
  v39 = [v36 queryItemWithName:@"presentpicker" value:v38];

  [v14 addObject:v39];
  v40 = [MEMORY[0x277CCAD18] queryItemWithName:@"workoutidentifier" value:v47];

  [v14 addObject:v40];
  [v13 setQueryItems:v14];
  v41 = [v13 URL];

  return v41;
}

+ (id)_launchURLWithHostname:()FIWorkoutInitiation workoutIdentifier:date:source:
{
  v9 = a5;
  v10 = a6;
  v11 = MEMORY[0x277CCACE0];
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v11);
  [v14 setScheme:@"SessionTrackerApp"];
  [v14 setHost:v13];

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = [MEMORY[0x277CCAD18] queryItemWithName:@"workoutidentifier" value:v12];

  [v15 addObject:v16];
  if (v9)
  {
    v17 = MEMORY[0x277CCACA8];
    [v9 timeIntervalSince1970];
    v19 = [v17 stringWithFormat:@"%f", v18];
    v20 = [MEMORY[0x277CCAD18] queryItemWithName:@"date" value:v19];
    [v15 addObject:v20];
  }

  if (v10)
  {
    v21 = [MEMORY[0x277CCAD18] queryItemWithName:@"source" value:v10];
    [v15 addObject:v21];
  }

  [v14 setQueryItems:v15];
  v22 = [v14 URL];

  return v22;
}

@end