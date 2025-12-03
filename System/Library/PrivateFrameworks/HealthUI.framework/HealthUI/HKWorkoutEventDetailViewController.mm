@interface HKWorkoutEventDetailViewController
- (HKWorkoutEventDetailViewController)initWithEvent:(id)event;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addSectionIfNotNil:(id)nil;
- (void)_loadSections;
@end

@implementation HKWorkoutEventDetailViewController

- (HKWorkoutEventDetailViewController)initWithEvent:(id)event
{
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = HKWorkoutEventDetailViewController;
  v6 = [(HKTableViewController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, event);
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

- (void)_addSectionIfNotNil:(id)nil
{
  if (nil)
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

@end