@interface HKDataMetadataDetailSection
- (HKDataMetadataDetailSection)initWithMetadataObject:(id)object metadataDataSource:(id)source displayTypeController:(id)controller unitController:(id)unitController;
- (HKDataMetadataDetailSection)initWithSample:(id)sample displayTypeController:(id)controller unitController:(id)unitController;
- (HKDataMetadataDetailSection)initWithWorkoutActivity:(id)activity displayTypeController:(id)controller unitController:(id)unitController;
- (HKDataMetadataDetailSection)initWithWorkoutEvent:(id)event;
- (id)sectionFooter;
- (void)_addDetailValues;
@end

@implementation HKDataMetadataDetailSection

- (HKDataMetadataDetailSection)initWithMetadataObject:(id)object metadataDataSource:(id)source displayTypeController:(id)controller unitController:(id)unitController
{
  objectCopy = object;
  sourceCopy = source;
  controllerCopy = controller;
  unitControllerCopy = unitController;
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"SAMPLE_DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v21.receiver = self;
  v21.super_class = HKDataMetadataDetailSection;
  v16 = [(HKDataMetadataSimpleSection *)&v21 initWithTitle:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_object, object);
    objc_storeStrong(&v16->_displayTypeController, controller);
    objc_storeStrong(&v16->_unitController, unitController);
    objc_storeStrong(&v16->_metadataDataSource, source);
    v17 = objc_alloc_init(MEMORY[0x1E696BF70]);
    calendarCache = v16->_calendarCache;
    v16->_calendarCache = v17;

    [(HKDataMetadataDetailSection *)v16 _addDetailValues];
  }

  return v16;
}

- (HKDataMetadataDetailSection)initWithSample:(id)sample displayTypeController:(id)controller unitController:(id)unitController
{
  sampleCopy = sample;
  controllerCopy = controller;
  unitControllerCopy = unitController;
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:@"SAMPLE_DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v20.receiver = self;
  v20.super_class = HKDataMetadataDetailSection;
  v14 = [(HKDataMetadataSimpleSection *)&v20 initWithTitle:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_object, sample);
    objc_storeStrong(&v14->_displayTypeController, controller);
    objc_storeStrong(&v14->_unitController, unitController);
    v15 = [[HKDataMetadataDataSource alloc] initWithSample:sampleCopy unitPreferenceController:unitControllerCopy];
    metadataDataSource = v14->_metadataDataSource;
    v14->_metadataDataSource = v15;

    v17 = objc_alloc_init(MEMORY[0x1E696BF70]);
    calendarCache = v14->_calendarCache;
    v14->_calendarCache = v17;

    [(HKDataMetadataDetailSection *)v14 _addDetailValues];
  }

  return v14;
}

- (HKDataMetadataDetailSection)initWithWorkoutEvent:(id)event
{
  eventCopy = event;
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"EVENT_DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v10.receiver = self;
  v10.super_class = HKDataMetadataDetailSection;
  v8 = [(HKDataMetadataSimpleSection *)&v10 initWithTitle:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_object, event);
    [(HKDataMetadataDetailSection *)v8 _addDetailValues];
  }

  return v8;
}

- (HKDataMetadataDetailSection)initWithWorkoutActivity:(id)activity displayTypeController:(id)controller unitController:(id)unitController
{
  activityCopy = activity;
  controllerCopy = controller;
  unitControllerCopy = unitController;
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:@"WORKOUT_ACTIVITY_DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v16.receiver = self;
  v16.super_class = HKDataMetadataDetailSection;
  v14 = [(HKDataMetadataSimpleSection *)&v16 initWithTitle:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_object, activity);
    objc_storeStrong(&v14->_displayTypeController, controller);
    objc_storeStrong(&v14->_unitController, unitController);
    [(HKDataMetadataDetailSection *)v14 _addDetailValues];
  }

  return v14;
}

- (void)_addDetailValues
{
  [(HKDataMetadataDetailSection *)self addSampleDetailValues];

  [(HKDataMetadataDetailSection *)self _addMetadataDataSourceDetailValues];
}

- (id)sectionFooter
{
  v2 = self->_object;
  if (objc_opt_respondsToSelector())
  {
    detailFooter = [(HKDataMetadataObject *)v2 detailFooter];
  }

  else
  {
    detailFooter = 0;
  }

  return detailFooter;
}

@end