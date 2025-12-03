@interface HKWorkoutActivityViewController
- (HKWorkoutActivityViewController)initWithWorkout:(id)workout activity:(id)activity displayTypeController:(id)controller unitController:(id)unitController healthStore:(id)store;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)viewControllerForSampleSelected:(id)selected;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addSectionIfNotNil:(id)nil;
- (void)_loadSections;
- (void)finishedAggregateQuery;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation HKWorkoutActivityViewController

- (HKWorkoutActivityViewController)initWithWorkout:(id)workout activity:(id)activity displayTypeController:(id)controller unitController:(id)unitController healthStore:(id)store
{
  workoutCopy = workout;
  activityCopy = activity;
  controllerCopy = controller;
  unitControllerCopy = unitController;
  storeCopy = store;
  v28.receiver = self;
  v28.super_class = HKWorkoutActivityViewController;
  v17 = [(HKTableViewController *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_workout, workout);
    objc_storeStrong(&v18->_activity, activity);
    objc_storeStrong(&v18->_displayTypeController, controller);
    objc_storeStrong(&v18->_unitPreferenceController, unitController);
    objc_storeStrong(&v18->_healthStore, store);
    v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v20 = MEMORY[0x1E696C588];
    workoutConfiguration = [activityCopy workoutConfiguration];
    v22 = [v20 _stringFromWorkoutActivityType:{objc_msgSend(workoutConfiguration, "activityType")}];
    v23 = [v19 localizedStringForKey:v22 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    [(HKWorkoutActivityViewController *)v18 setTitle:v23];
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sections = v18->_sections;
    v18->_sections = v24;

    [(HKWorkoutActivityViewController *)v18 _loadSections];
  }

  return v18;
}

- (void)_addSectionIfNotNil:(id)nil
{
  if (nil)
  {
    [(NSMutableArray *)self->_sections addObject:?];
  }
}

- (void)finishedAggregateQuery
{
  tableView = [(HKWorkoutActivityViewController *)self tableView];
  [tableView reloadData];
}

- (id)viewControllerForSampleSelected:(id)selected
{
  selectedCopy = selected;
  v5 = [[HKDataMetadataViewController alloc] initWithSample:selectedCopy usingInsetStyling:1 profileName:0 delegate:self];

  return v5;
}

- (void)_loadSections
{
  [(NSMutableArray *)self->_sections removeAllObjects];
  v3 = [[HKDataMetadataDetailSection alloc] initWithWorkoutActivity:self->_activity displayTypeController:self->_displayTypeController unitController:self->_unitPreferenceController];
  [(HKWorkoutActivityViewController *)self _addSectionIfNotNil:v3];

  v4 = [HKDataMetadataSubsampleSection alloc];
  v5 = [(HKDataMetadataSubsampleSection *)v4 initWithSample:self->_workout workoutActivity:self->_activity subSampleTypes:MEMORY[0x1E695E0F0] showOnlyExertion:1 healthStore:self->_healthStore displayTypeController:self->_displayTypeController unitController:self->_unitPreferenceController subsampleDelegate:self];
  [(HKWorkoutActivityViewController *)self _addSectionIfNotNil:v5];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndex:section];
  sectionTitle = [v4 sectionTitle];

  return sectionTitle;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndex:section];
  numberOfRowsInSection = [v4 numberOfRowsInSection];

  return numberOfRowsInSection;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [pathCopy section]);
  v9 = [pathCopy row];

  v10 = [v8 cellForIndex:v9 tableView:viewCopy];

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v9 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [pathCopy section]);
  v7 = [pathCopy row];

  navigationController = [(HKWorkoutActivityViewController *)self navigationController];
  [v9 selectCellForIndex:v7 navigationController:navigationController animated:1];
}

@end