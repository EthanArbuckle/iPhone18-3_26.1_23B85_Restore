@interface HKDataMetadataWorkoutActivitySection
- (HKDataMetadataWorkoutActivitySection)initWithSample:(id)sample displayTypeController:(id)controller unitController:(id)unitController healthStore:(id)store;
- (id)cellForIndex:(unint64_t)index tableView:(id)view;
- (id)sectionTitle;
- (unint64_t)numberOfRowsInSection;
- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated;
@end

@implementation HKDataMetadataWorkoutActivitySection

- (HKDataMetadataWorkoutActivitySection)initWithSample:(id)sample displayTypeController:(id)controller unitController:(id)unitController healthStore:(id)store
{
  sampleCopy = sample;
  controllerCopy = controller;
  unitControllerCopy = unitController;
  storeCopy = store;
  v34.receiver = self;
  v34.super_class = HKDataMetadataWorkoutActivitySection;
  v15 = [(HKDataMetadataWorkoutActivitySection *)&v34 init];
  if (!v15)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_storeStrong(&v15->_workout, sample), [(HKWorkout *)v15->_workout workoutActivities], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v24 = 0;
    goto LABEL_13;
  }

  v17 = v16;
  v32 = unitControllerCopy;
  v33 = controllerCopy;
  workoutActivities = [(HKWorkout *)v15->_workout workoutActivities];
  v19 = [workoutActivities count];

  if (!v19)
  {
    v24 = 0;
    unitControllerCopy = v32;
    controllerCopy = v33;
    goto LABEL_13;
  }

  workoutActivities2 = [(HKWorkout *)v15->_workout workoutActivities];
  if ([workoutActivities2 count] != 1)
  {

    unitControllerCopy = v32;
    goto LABEL_11;
  }

  workoutActivities3 = [(HKWorkout *)v15->_workout workoutActivities];
  firstObject = [workoutActivities3 firstObject];
  uUID = [firstObject UUID];
  uUID2 = [(HKWorkout *)v15->_workout UUID];
  v23 = [uUID isEqual:uUID2];

  unitControllerCopy = v32;
  if ((v23 & 1) == 0)
  {
LABEL_11:
    objc_storeStrong(&v15->_displayTypeController, controller);
    objc_storeStrong(&v15->_unitPreferenceController, unitController);
    objc_storeStrong(&v15->_healthstore, store);
    v25 = objc_alloc_init(MEMORY[0x1E696AB70]);
    dateFormatter = v15->_dateFormatter;
    v15->_dateFormatter = v25;

    [(NSDateComponentsFormatter *)v15->_dateFormatter setZeroFormattingBehavior:0x10000];
    [(NSDateComponentsFormatter *)v15->_dateFormatter setAllowedUnits:224];
    v27 = objc_alloc_init(HKWorkoutDurationNumberFormatter);
    durationFormatter = v15->_durationFormatter;
    v15->_durationFormatter = v27;

    [(HKTimePeriodWithSecondsNumberFormatter *)v15->_durationFormatter setAllowMillisecondPrecision:1];
    controllerCopy = v33;
LABEL_12:
    v24 = v15;
    goto LABEL_13;
  }

  v24 = 0;
  controllerCopy = v33;
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
  workoutActivities = [(HKWorkout *)self->_workout workoutActivities];
  v3 = [workoutActivities count];

  return v3;
}

- (id)cellForIndex:(unint64_t)index tableView:(id)view
{
  v6 = [view dequeueReusableCellWithIdentifier:@"activitiesCell"];
  if (!v6)
  {
    v6 = [[HKDataMetadataSimpleTableViewCell alloc] initWithReuseIdentifier:@"activitiesCell"];
    [(HKDataMetadataSimpleTableViewCell *)v6 setAccessoryType:1];
  }

  workoutActivities = [(HKWorkout *)self->_workout workoutActivities];
  v8 = [workoutActivities objectAtIndexedSubscript:index];

  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = MEMORY[0x1E696C588];
  workoutConfiguration = [v8 workoutConfiguration];
  v12 = [v10 _stringFromWorkoutActivityType:{objc_msgSend(workoutConfiguration, "activityType")}];
  v13 = [v9 localizedStringForKey:v12 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  titleTextLabel = [(HKDataMetadataSimpleTableViewCell *)v6 titleTextLabel];
  [titleTextLabel setText:v13];

  return v6;
}

- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated
{
  workout = self->_workout;
  controllerCopy = controller;
  workoutActivities = [(HKWorkout *)workout workoutActivities];
  v16 = [workoutActivities objectAtIndexedSubscript:index];

  v10 = [HKWorkoutActivityViewController alloc];
  v11 = self->_workout;
  displayTypeController = self->_displayTypeController;
  unitPreferenceController = self->_unitPreferenceController;
  healthstore = [(HKDataMetadataWorkoutActivitySection *)self healthstore];
  v15 = [(HKWorkoutActivityViewController *)v10 initWithWorkout:v11 activity:v16 displayTypeController:displayTypeController unitController:unitPreferenceController healthStore:healthstore];
  [controllerCopy pushViewController:v15 animated:1];
}

@end