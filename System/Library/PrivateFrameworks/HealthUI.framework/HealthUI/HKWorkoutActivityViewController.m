@interface HKWorkoutActivityViewController
- (HKWorkoutActivityViewController)initWithWorkout:(id)a3 activity:(id)a4 displayTypeController:(id)a5 unitController:(id)a6 healthStore:(id)a7;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)viewControllerForSampleSelected:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addSectionIfNotNil:(id)a3;
- (void)_loadSections;
- (void)finishedAggregateQuery;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation HKWorkoutActivityViewController

- (HKWorkoutActivityViewController)initWithWorkout:(id)a3 activity:(id)a4 displayTypeController:(id)a5 unitController:(id)a6 healthStore:(id)a7
{
  v27 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v28.receiver = self;
  v28.super_class = HKWorkoutActivityViewController;
  v17 = [(HKTableViewController *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_workout, a3);
    objc_storeStrong(&v18->_activity, a4);
    objc_storeStrong(&v18->_displayTypeController, a5);
    objc_storeStrong(&v18->_unitPreferenceController, a6);
    objc_storeStrong(&v18->_healthStore, a7);
    v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v20 = MEMORY[0x1E696C588];
    v21 = [v13 workoutConfiguration];
    v22 = [v20 _stringFromWorkoutActivityType:{objc_msgSend(v21, "activityType")}];
    v23 = [v19 localizedStringForKey:v22 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    [(HKWorkoutActivityViewController *)v18 setTitle:v23];
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sections = v18->_sections;
    v18->_sections = v24;

    [(HKWorkoutActivityViewController *)v18 _loadSections];
  }

  return v18;
}

- (void)_addSectionIfNotNil:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_sections addObject:?];
  }
}

- (void)finishedAggregateQuery
{
  v2 = [(HKWorkoutActivityViewController *)self tableView];
  [v2 reloadData];
}

- (id)viewControllerForSampleSelected:(id)a3
{
  v4 = a3;
  v5 = [[HKDataMetadataViewController alloc] initWithSample:v4 usingInsetStyling:1 profileName:0 delegate:self];

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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 sectionTitle];

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 numberOfRowsInSection];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v6 section]);
  v9 = [v6 row];

  v10 = [v8 cellForIndex:v9 tableView:v7];

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v9 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v6 section]);
  v7 = [v6 row];

  v8 = [(HKWorkoutActivityViewController *)self navigationController];
  [v9 selectCellForIndex:v7 navigationController:v8 animated:1];
}

@end