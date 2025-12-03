@interface HKDataMetadataWorkoutEventSection
- (HKDataMetadataWorkoutEventSection)initWithSample:(id)sample;
- (id)cellForIndex:(unint64_t)index tableView:(id)view;
- (id)sectionTitle;
- (unint64_t)numberOfRowsInSection;
- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated;
@end

@implementation HKDataMetadataWorkoutEventSection

- (HKDataMetadataWorkoutEventSection)initWithSample:(id)sample
{
  sampleCopy = sample;
  v15.receiver = self;
  v15.super_class = HKDataMetadataWorkoutEventSection;
  v6 = [(HKDataMetadataWorkoutEventSection *)&v15 init];
  if (!v6)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    workoutEvents = 0;
    goto LABEL_8;
  }

  objc_storeStrong(&v6->_workout, sample);
  workoutEvents = [(HKWorkout *)v6->_workout workoutEvents];
  if (workoutEvents)
  {
    workoutEvents2 = [(HKWorkout *)v6->_workout workoutEvents];
    v9 = [workoutEvents2 count];

    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x1E696AB70]);
      dateFormatter = v6->_dateFormatter;
      v6->_dateFormatter = v10;

      [(NSDateComponentsFormatter *)v6->_dateFormatter setZeroFormattingBehavior:0x10000];
      [(NSDateComponentsFormatter *)v6->_dateFormatter setAllowedUnits:224];
      v12 = objc_alloc_init(HKWorkoutDurationNumberFormatter);
      durationFormatter = v6->_durationFormatter;
      v6->_durationFormatter = v12;

      [(HKTimePeriodWithSecondsNumberFormatter *)v6->_durationFormatter setAllowMillisecondPrecision:1];
LABEL_6:
      workoutEvents = v6;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_8:

  return workoutEvents;
}

- (id)sectionTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"WORKOUT_EVENTS_NUMBERLESS_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (unint64_t)numberOfRowsInSection
{
  workoutEvents = [(HKWorkout *)self->_workout workoutEvents];
  v3 = [workoutEvents count];

  return v3;
}

- (id)cellForIndex:(unint64_t)index tableView:(id)view
{
  v6 = [view dequeueReusableCellWithIdentifier:@"eventCell"];
  if (!v6)
  {
    v6 = [[HKDataMetadataSimpleTableViewCell alloc] initWithReuseIdentifier:@"eventCell"];
    [(HKDataMetadataSimpleTableViewCell *)v6 setAccessoryType:1];
  }

  workoutEvents = [(HKWorkout *)self->_workout workoutEvents];
  v8 = [workoutEvents objectAtIndexedSubscript:index];

  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  [v8 type];
  v10 = _HKWorkoutEventTypeName();
  v11 = [v9 localizedStringForKey:v10 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  dateInterval = [v8 dateInterval];
  [dateInterval duration];
  v14 = v13;

  if (v14 > 0.0)
  {
    durationFormatter = self->_durationFormatter;
    v16 = MEMORY[0x1E696AD98];
    dateInterval2 = [v8 dateInterval];
    [dateInterval2 duration];
    v18 = [v16 numberWithDouble:?];
    v19 = [(HKTimePeriodWithSecondsNumberFormatter *)durationFormatter stringFromNumber:v18 displayType:0 unitController:0];

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v11, v19];

    v11 = v20;
  }

  dateInterval3 = [v8 dateInterval];
  startDate = [dateInterval3 startDate];
  startDate2 = [(HKWorkout *)self->_workout startDate];
  [startDate timeIntervalSinceDate:startDate2];
  v25 = v24;

  titleTextLabel = [(HKDataMetadataSimpleTableViewCell *)v6 titleTextLabel];
  [titleTextLabel setText:v11];

  subtitleTextLabel = [(HKDataMetadataSimpleTableViewCell *)v6 subtitleTextLabel];
  v28 = [(NSDateComponentsFormatter *)self->_dateFormatter stringFromTimeInterval:v25];
  [subtitleTextLabel setText:v28];

  return v6;
}

- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated
{
  workout = self->_workout;
  controllerCopy = controller;
  workoutEvents = [(HKWorkout *)workout workoutEvents];
  v10 = [workoutEvents objectAtIndexedSubscript:index];

  v9 = [[HKWorkoutEventDetailViewController alloc] initWithEvent:v10];
  [controllerCopy pushViewController:v9 animated:1];
}

@end