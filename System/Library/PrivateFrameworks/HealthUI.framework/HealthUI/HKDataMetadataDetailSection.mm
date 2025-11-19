@interface HKDataMetadataDetailSection
- (HKDataMetadataDetailSection)initWithMetadataObject:(id)a3 metadataDataSource:(id)a4 displayTypeController:(id)a5 unitController:(id)a6;
- (HKDataMetadataDetailSection)initWithSample:(id)a3 displayTypeController:(id)a4 unitController:(id)a5;
- (HKDataMetadataDetailSection)initWithWorkoutActivity:(id)a3 displayTypeController:(id)a4 unitController:(id)a5;
- (HKDataMetadataDetailSection)initWithWorkoutEvent:(id)a3;
- (id)sectionFooter;
- (void)_addDetailValues;
@end

@implementation HKDataMetadataDetailSection

- (HKDataMetadataDetailSection)initWithMetadataObject:(id)a3 metadataDataSource:(id)a4 displayTypeController:(id)a5 unitController:(id)a6
{
  v20 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"SAMPLE_DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v21.receiver = self;
  v21.super_class = HKDataMetadataDetailSection;
  v16 = [(HKDataMetadataSimpleSection *)&v21 initWithTitle:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_object, a3);
    objc_storeStrong(&v16->_displayTypeController, a5);
    objc_storeStrong(&v16->_unitController, a6);
    objc_storeStrong(&v16->_metadataDataSource, a4);
    v17 = objc_alloc_init(MEMORY[0x1E696BF70]);
    calendarCache = v16->_calendarCache;
    v16->_calendarCache = v17;

    [(HKDataMetadataDetailSection *)v16 _addDetailValues];
  }

  return v16;
}

- (HKDataMetadataDetailSection)initWithSample:(id)a3 displayTypeController:(id)a4 unitController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:@"SAMPLE_DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v20.receiver = self;
  v20.super_class = HKDataMetadataDetailSection;
  v14 = [(HKDataMetadataSimpleSection *)&v20 initWithTitle:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_object, a3);
    objc_storeStrong(&v14->_displayTypeController, a4);
    objc_storeStrong(&v14->_unitController, a5);
    v15 = [[HKDataMetadataDataSource alloc] initWithSample:v9 unitPreferenceController:v11];
    metadataDataSource = v14->_metadataDataSource;
    v14->_metadataDataSource = v15;

    v17 = objc_alloc_init(MEMORY[0x1E696BF70]);
    calendarCache = v14->_calendarCache;
    v14->_calendarCache = v17;

    [(HKDataMetadataDetailSection *)v14 _addDetailValues];
  }

  return v14;
}

- (HKDataMetadataDetailSection)initWithWorkoutEvent:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"EVENT_DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v10.receiver = self;
  v10.super_class = HKDataMetadataDetailSection;
  v8 = [(HKDataMetadataSimpleSection *)&v10 initWithTitle:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_object, a3);
    [(HKDataMetadataDetailSection *)v8 _addDetailValues];
  }

  return v8;
}

- (HKDataMetadataDetailSection)initWithWorkoutActivity:(id)a3 displayTypeController:(id)a4 unitController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:@"WORKOUT_ACTIVITY_DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v16.receiver = self;
  v16.super_class = HKDataMetadataDetailSection;
  v14 = [(HKDataMetadataSimpleSection *)&v16 initWithTitle:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_object, a3);
    objc_storeStrong(&v14->_displayTypeController, a4);
    objc_storeStrong(&v14->_unitController, a5);
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
    v3 = [(HKDataMetadataObject *)v2 detailFooter];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end