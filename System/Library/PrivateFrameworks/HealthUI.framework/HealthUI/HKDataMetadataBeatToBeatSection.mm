@interface HKDataMetadataBeatToBeatSection
- (HKDataMetadataBeatToBeatSection)initWithSample:(id)sample healthStore:(id)store displayTypeController:(id)controller unitController:(id)unitController;
- (id)cellForIndex:(unint64_t)index tableView:(id)view;
- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated;
@end

@implementation HKDataMetadataBeatToBeatSection

- (HKDataMetadataBeatToBeatSection)initWithSample:(id)sample healthStore:(id)store displayTypeController:(id)controller unitController:(id)unitController
{
  sampleCopy = sample;
  storeCopy = store;
  controllerCopy = controller;
  unitControllerCopy = unitController;
  v18.receiver = self;
  v18.super_class = HKDataMetadataBeatToBeatSection;
  v15 = [(HKDataMetadataBeatToBeatSection *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sample, sample);
    objc_storeStrong(&v16->_healthStore, store);
    objc_storeStrong(&v16->_displayTypeController, controller);
    objc_storeStrong(&v16->_unitController, unitController);
  }

  return v16;
}

- (id)cellForIndex:(unint64_t)index tableView:(id)view
{
  v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"BEAT_TO_BEAT_MEASUREMENTS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  textLabel = [v4 textLabel];
  [textLabel setText:v6];

  [v4 setAccessoryType:1];

  return v4;
}

- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[HKBeatToBeatViewController alloc] initWithHeartbeatSeriesSample:self->_sample healthStore:self->_healthStore displayTypeController:self->_displayTypeController unitController:self->_unitController];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v7 = [[HKBeatToBeatViewController alloc] initWithHRVSample:self->_sample healthStore:self->_healthStore displayTypeController:self->_displayTypeController unitController:self->_unitController];
  }

  v8 = v7;
  if (v7)
  {
    [controllerCopy pushViewController:v7 animated:animatedCopy];
  }

LABEL_7:
}

@end