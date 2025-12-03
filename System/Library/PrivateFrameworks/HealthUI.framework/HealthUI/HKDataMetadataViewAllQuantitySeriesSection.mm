@interface HKDataMetadataViewAllQuantitySeriesSection
- (HKDataMetadataViewAllQuantitySeriesSection)initWithSample:(id)sample delegate:(id)delegate;
- (HKDataMetadataViewControllerDelegate)delegate;
- (id)cellForIndex:(unint64_t)index tableView:(id)view;
- (void)reloadSampleData;
- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated;
@end

@implementation HKDataMetadataViewAllQuantitySeriesSection

- (HKDataMetadataViewAllQuantitySeriesSection)initWithSample:(id)sample delegate:(id)delegate
{
  sampleCopy = sample;
  delegateCopy = delegate;
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"QUANTITY_SERIES_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v13.receiver = self;
  v13.super_class = HKDataMetadataViewAllQuantitySeriesSection;
  v10 = [(HKDataMetadataSimpleSection *)&v13 initWithTitle:v9];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[HKDataMetadataViewAllQuantitySeriesSection setSample:](v10, "setSample:", sampleCopy), -[HKDataMetadataViewAllQuantitySeriesSection setDelegate:](v10, "setDelegate:", delegateCopy), [sampleCopy count] >= 2))
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)cellForIndex:(unint64_t)index tableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"viewAllQuantityCell"];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"viewAllQuantityCell"];
  }

  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"VIEW_ALL_QUANTITY_SERIES_BUTTON" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  textLabel = [v4 textLabel];
  [textLabel setText:v6];

  [v4 setAccessoryType:1];
  [v4 setSelectionStyle:3];

  return v4;
}

- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  v16 = objc_alloc_init(HKQuantitySeriesViewController);
  v7 = [HKQuantitySeriesDataProvider alloc];
  sample = [(HKDataMetadataViewAllQuantitySeriesSection *)self sample];
  delegate = [(HKDataMetadataViewAllQuantitySeriesSection *)self delegate];
  healthStore = [delegate healthStore];
  v11 = [(HKQuantitySeriesDataProvider *)v7 initWithSample:sample healthStore:healthStore];

  delegate2 = [(HKDataMetadataViewAllQuantitySeriesSection *)self delegate];
  unitController = [delegate2 unitController];
  [(HKQuantitySeriesDataProvider *)v11 setUnitController:unitController];

  delegate3 = [(HKDataMetadataViewAllQuantitySeriesSection *)self delegate];
  displayTypeController = [delegate3 displayTypeController];
  [(HKQuantitySeriesDataProvider *)v11 setDisplayTypeController:displayTypeController];

  [(HKQuantitySeriesDataProvider *)v11 setDelegate:self];
  [(HKQuantitySeriesViewController *)v16 setDataProvider:v11];
  [controllerCopy pushViewController:v16 animated:1];
}

- (void)reloadSampleData
{
  reloadMetaDataVC = [(HKDataMetadataViewAllQuantitySeriesSection *)self reloadMetaDataVC];
  sample = [(HKDataMetadataViewAllQuantitySeriesSection *)self sample];
  reloadMetaDataVC[2](reloadMetaDataVC, sample);
}

- (HKDataMetadataViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end