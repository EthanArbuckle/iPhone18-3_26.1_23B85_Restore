@interface HKHeartbeatSequenceListMetadataSection
- (HKHeartbeatSequenceListMetadataSection)initWithEvent:(id)event healthStore:(id)store displayTypeController:(id)controller unitController:(id)unitController delegate:(id)delegate;
- (HKHeartbeatSequenceListMetadataSectionDelegate)delegate;
- (id)cellForIndex:(unint64_t)index tableView:(id)view;
- (id)sectionTitle;
- (unint64_t)numberOfRowsInSection;
- (void)_startAssociatedSequenceQueryForEvent:(id)event;
- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated;
@end

@implementation HKHeartbeatSequenceListMetadataSection

- (HKHeartbeatSequenceListMetadataSection)initWithEvent:(id)event healthStore:(id)store displayTypeController:(id)controller unitController:(id)unitController delegate:(id)delegate
{
  eventCopy = event;
  storeCopy = store;
  controllerCopy = controller;
  unitControllerCopy = unitController;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = HKHeartbeatSequenceListMetadataSection;
  v17 = [(HKHeartbeatSequenceListMetadataSection *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, delegateCopy);
    objc_storeStrong(&v18->_displayTypeController, controller);
    objc_storeStrong(&v18->_unitController, unitController);
    objc_storeStrong(&v18->_healthStore, store);
    [(HKHeartbeatSequenceListMetadataSection *)v18 _startAssociatedSequenceQueryForEvent:eventCopy];
  }

  return v18;
}

- (void)_startAssociatedSequenceQueryForEvent:(id)event
{
  v16[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = [MEMORY[0x1E696C378] predicateForSamplesAssociatedWithSample:eventCopy];
  v6 = objc_alloc(MEMORY[0x1E696AEB0]);
  v7 = [v6 initWithKey:*MEMORY[0x1E696BE30] ascending:1];
  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x1E696C3C8]);
  heartbeatSeriesType = [MEMORY[0x1E696C3F8] heartbeatSeriesType];
  v16[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__HKHeartbeatSequenceListMetadataSection__startAssociatedSequenceQueryForEvent___block_invoke;
  v13[3] = &unk_1E81B6F50;
  v13[4] = self;
  objc_copyWeak(&v14, &location);
  v11 = [v8 initWithSampleType:heartbeatSeriesType predicate:v5 limit:0 sortDescriptors:v10 resultsHandler:v13];

  healthStore = [(HKHeartbeatSequenceListMetadataSection *)self healthStore];
  [healthStore executeQuery:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __80__HKHeartbeatSequenceListMetadataSection__startAssociatedSequenceQueryForEvent___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setSequencesSamples:v6];
    v10 = [WeakRetained delegate];
    [v10 heartbeatSequecesListQueryComplete:WeakRetained];
  }

  else
  {
    v11 = [v7 hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    v12 = *MEMORY[0x1E696B960];
    v13 = *MEMORY[0x1E696B960];
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __53__HKDataMetadataOxygenSaturationSection_queryForData__block_invoke_cold_2(a1, v12);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __53__HKDataMetadataOxygenSaturationSection_queryForData__block_invoke_cold_1(a1, v12);
    }
  }
}

- (id)sectionTitle
{
  if ([(HKHeartbeatSequenceListMetadataSection *)self numberOfRowsInSection])
  {
    v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_ASSOCIATED_SEQUENCE_SECTION_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Antimony"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)numberOfRowsInSection
{
  sequencesSamples = [(HKHeartbeatSequenceListMetadataSection *)self sequencesSamples];
  v3 = [sequencesSamples count];

  return v3;
}

- (id)cellForIndex:(unint64_t)index tableView:(id)view
{
  viewCopy = view;
  sequencesSamples = [(HKHeartbeatSequenceListMetadataSection *)self sequencesSamples];
  v8 = [sequencesSamples objectAtIndexedSubscript:index];
  endDate = [v8 endDate];

  v10 = HKLocalizedStringForDateAndTemplate(endDate, 9);
  v11 = HKLocalizedStringForDateAndTemplate(endDate, 27);
  v12 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:2 suffix:@"Details.AtrialFibrillation.EntireView"];
  [viewCopy setAccessibilityIdentifier:v12];

  v13 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"_CellReuseIdentifier"];
  textLabel = [v13 textLabel];
  [textLabel setText:v10];

  detailTextLabel = [v13 detailTextLabel];
  [detailTextLabel setText:v11];

  [v13 setAccessoryType:1];
  index = [MEMORY[0x1E696AEC0] stringWithFormat:@"Details.AtrialFibrillationMeasurements.%ld", index];
  v17 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:2 suffix:index];
  [v13 setAccessibilityIdentifier:v17];

  index2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Details.AtrialFibrillationMeasurements.%ld.Date", index];
  v19 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:2 suffix:index2];
  textLabel2 = [v13 textLabel];
  [textLabel2 setAccessibilityIdentifier:v19];

  index3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Details.AtrialFibrillationMeasurements.%ld.Time", index];
  v22 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:2 suffix:index3];
  detailTextLabel2 = [v13 detailTextLabel];
  [detailTextLabel2 setAccessibilityIdentifier:v22];

  return v13;
}

- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  sequencesSamples = [(HKHeartbeatSequenceListMetadataSection *)self sequencesSamples];
  v11 = [sequencesSamples objectAtIndexedSubscript:index];

  v10 = [[HKBeatToBeatViewController alloc] initWithHeartbeatSeriesSample:v11 healthStore:self->_healthStore displayTypeController:self->_displayTypeController unitController:self->_unitController];
  [controllerCopy pushViewController:v10 animated:animatedCopy];
}

- (HKHeartbeatSequenceListMetadataSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end