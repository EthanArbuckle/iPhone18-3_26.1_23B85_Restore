@interface HKDataMetadataWorkoutActivitySection
- (HKDataMetadataWorkoutActivitySection)initWithSample:(id)a3 displayTypeController:(id)a4 unitController:(id)a5 healthStore:(id)a6;
- (id)cellForIndex:(unint64_t)a3 tableView:(id)a4;
- (id)sectionTitle;
- (unint64_t)numberOfRowsInSection;
- (void)selectCellForIndex:(unint64_t)a3 navigationController:(id)a4 animated:(BOOL)a5;
@end

@implementation HKDataMetadataWorkoutActivitySection

- (HKDataMetadataWorkoutActivitySection)initWithSample:(id)a3 displayTypeController:(id)a4 unitController:(id)a5 healthStore:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v34.receiver = self;
  v34.super_class = HKDataMetadataWorkoutActivitySection;
  v15 = [(HKDataMetadataWorkoutActivitySection *)&v34 init];
  if (!v15)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_storeStrong(&v15->_workout, a3), [(HKWorkout *)v15->_workout workoutActivities], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v24 = 0;
    goto LABEL_13;
  }

  v17 = v16;
  v32 = v13;
  v33 = v12;
  v18 = [(HKWorkout *)v15->_workout workoutActivities];
  v19 = [v18 count];

  if (!v19)
  {
    v24 = 0;
    v13 = v32;
    v12 = v33;
    goto LABEL_13;
  }

  v20 = [(HKWorkout *)v15->_workout workoutActivities];
  if ([v20 count] != 1)
  {

    v13 = v32;
    goto LABEL_11;
  }

  v31 = [(HKWorkout *)v15->_workout workoutActivities];
  v30 = [v31 firstObject];
  v21 = [v30 UUID];
  v22 = [(HKWorkout *)v15->_workout UUID];
  v23 = [v21 isEqual:v22];

  v13 = v32;
  if ((v23 & 1) == 0)
  {
LABEL_11:
    objc_storeStrong(&v15->_displayTypeController, a4);
    objc_storeStrong(&v15->_unitPreferenceController, a5);
    objc_storeStrong(&v15->_healthstore, a6);
    v25 = objc_alloc_init(MEMORY[0x1E696AB70]);
    dateFormatter = v15->_dateFormatter;
    v15->_dateFormatter = v25;

    [(NSDateComponentsFormatter *)v15->_dateFormatter setZeroFormattingBehavior:0x10000];
    [(NSDateComponentsFormatter *)v15->_dateFormatter setAllowedUnits:224];
    v27 = objc_alloc_init(HKWorkoutDurationNumberFormatter);
    durationFormatter = v15->_durationFormatter;
    v15->_durationFormatter = v27;

    [(HKTimePeriodWithSecondsNumberFormatter *)v15->_durationFormatter setAllowMillisecondPrecision:1];
    v12 = v33;
LABEL_12:
    v24 = v15;
    goto LABEL_13;
  }

  v24 = 0;
  v12 = v33;
LABEL_13:

  return v24;
}

- (id)sectionTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"WORKOUT_ACTIVITIES_NUMBERLESS_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (unint64_t)numberOfRowsInSection
{
  v2 = [(HKWorkout *)self->_workout workoutActivities];
  v3 = [v2 count];

  return v3;
}

- (id)cellForIndex:(unint64_t)a3 tableView:(id)a4
{
  v6 = [a4 dequeueReusableCellWithIdentifier:@"activitiesCell"];
  if (!v6)
  {
    v6 = [[HKDataMetadataSimpleTableViewCell alloc] initWithReuseIdentifier:@"activitiesCell"];
    [(HKDataMetadataSimpleTableViewCell *)v6 setAccessoryType:1];
  }

  v7 = [(HKWorkout *)self->_workout workoutActivities];
  v8 = [v7 objectAtIndexedSubscript:a3];

  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = MEMORY[0x1E696C588];
  v11 = [v8 workoutConfiguration];
  v12 = [v10 _stringFromWorkoutActivityType:{objc_msgSend(v11, "activityType")}];
  v13 = [v9 localizedStringForKey:v12 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v14 = [(HKDataMetadataSimpleTableViewCell *)v6 titleTextLabel];
  [v14 setText:v13];

  return v6;
}

- (void)selectCellForIndex:(unint64_t)a3 navigationController:(id)a4 animated:(BOOL)a5
{
  workout = self->_workout;
  v8 = a4;
  v9 = [(HKWorkout *)workout workoutActivities];
  v16 = [v9 objectAtIndexedSubscript:a3];

  v10 = [HKWorkoutActivityViewController alloc];
  v11 = self->_workout;
  displayTypeController = self->_displayTypeController;
  unitPreferenceController = self->_unitPreferenceController;
  v14 = [(HKDataMetadataWorkoutActivitySection *)self healthstore];
  v15 = [(HKWorkoutActivityViewController *)v10 initWithWorkout:v11 activity:v16 displayTypeController:displayTypeController unitController:unitPreferenceController healthStore:v14];
  [v8 pushViewController:v15 animated:1];
}

@end