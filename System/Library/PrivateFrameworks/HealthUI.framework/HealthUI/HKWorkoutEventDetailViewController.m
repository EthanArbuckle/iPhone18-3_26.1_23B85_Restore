@interface HKWorkoutEventDetailViewController
- (HKWorkoutEventDetailViewController)initWithEvent:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addSectionIfNotNil:(id)a3;
- (void)_loadSections;
@end

@implementation HKWorkoutEventDetailViewController

- (HKWorkoutEventDetailViewController)initWithEvent:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = HKWorkoutEventDetailViewController;
  v6 = [(HKTableViewController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, a3);
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    [(HKWorkoutEvent *)v7->_event type];
    v9 = _HKWorkoutEventTypeName();
    v10 = [v8 localizedStringForKey:v9 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(HKWorkoutEventDetailViewController *)v7 setTitle:v10];

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sections = v7->_sections;
    v7->_sections = v11;

    [(HKWorkoutEventDetailViewController *)v7 _loadSections];
  }

  return v7;
}

- (void)_addSectionIfNotNil:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_sections addObject:?];
  }
}

- (void)_loadSections
{
  [(NSMutableArray *)self->_sections removeAllObjects];
  v3 = [[HKDataMetadataDetailSection alloc] initWithWorkoutEvent:self->_event];
  [(HKWorkoutEventDetailViewController *)self _addSectionIfNotNil:v3];
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

@end