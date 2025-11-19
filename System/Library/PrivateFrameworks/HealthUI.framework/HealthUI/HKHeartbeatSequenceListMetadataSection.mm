@interface HKHeartbeatSequenceListMetadataSection
- (HKHeartbeatSequenceListMetadataSection)initWithEvent:(id)a3 healthStore:(id)a4 displayTypeController:(id)a5 unitController:(id)a6 delegate:(id)a7;
- (HKHeartbeatSequenceListMetadataSectionDelegate)delegate;
- (id)cellForIndex:(unint64_t)a3 tableView:(id)a4;
- (id)sectionTitle;
- (unint64_t)numberOfRowsInSection;
- (void)_startAssociatedSequenceQueryForEvent:(id)a3;
- (void)selectCellForIndex:(unint64_t)a3 navigationController:(id)a4 animated:(BOOL)a5;
@end

@implementation HKHeartbeatSequenceListMetadataSection

- (HKHeartbeatSequenceListMetadataSection)initWithEvent:(id)a3 healthStore:(id)a4 displayTypeController:(id)a5 unitController:(id)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = HKHeartbeatSequenceListMetadataSection;
  v17 = [(HKHeartbeatSequenceListMetadataSection *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, v16);
    objc_storeStrong(&v18->_displayTypeController, a5);
    objc_storeStrong(&v18->_unitController, a6);
    objc_storeStrong(&v18->_healthStore, a4);
    [(HKHeartbeatSequenceListMetadataSection *)v18 _startAssociatedSequenceQueryForEvent:v12];
  }

  return v18;
}

- (void)_startAssociatedSequenceQueryForEvent:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696C378] predicateForSamplesAssociatedWithSample:v4];
  v6 = objc_alloc(MEMORY[0x1E696AEB0]);
  v7 = [v6 initWithKey:*MEMORY[0x1E696BE30] ascending:1];
  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x1E696C3C8]);
  v9 = [MEMORY[0x1E696C3F8] heartbeatSeriesType];
  v16[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__HKHeartbeatSequenceListMetadataSection__startAssociatedSequenceQueryForEvent___block_invoke;
  v13[3] = &unk_1E81B6F50;
  v13[4] = self;
  objc_copyWeak(&v14, &location);
  v11 = [v8 initWithSampleType:v9 predicate:v5 limit:0 sortDescriptors:v10 resultsHandler:v13];

  v12 = [(HKHeartbeatSequenceListMetadataSection *)self healthStore];
  [v12 executeQuery:v11];

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
  v2 = [(HKHeartbeatSequenceListMetadataSection *)self sequencesSamples];
  v3 = [v2 count];

  return v3;
}

- (id)cellForIndex:(unint64_t)a3 tableView:(id)a4
{
  v6 = a4;
  v7 = [(HKHeartbeatSequenceListMetadataSection *)self sequencesSamples];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 endDate];

  v10 = HKLocalizedStringForDateAndTemplate(v9, 9);
  v11 = HKLocalizedStringForDateAndTemplate(v9, 27);
  v12 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:2 suffix:@"Details.AtrialFibrillation.EntireView"];
  [v6 setAccessibilityIdentifier:v12];

  v13 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"_CellReuseIdentifier"];
  v14 = [v13 textLabel];
  [v14 setText:v10];

  v15 = [v13 detailTextLabel];
  [v15 setText:v11];

  [v13 setAccessoryType:1];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Details.AtrialFibrillationMeasurements.%ld", a3];
  v17 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:2 suffix:v16];
  [v13 setAccessibilityIdentifier:v17];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Details.AtrialFibrillationMeasurements.%ld.Date", a3];
  v19 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:2 suffix:v18];
  v20 = [v13 textLabel];
  [v20 setAccessibilityIdentifier:v19];

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Details.AtrialFibrillationMeasurements.%ld.Time", a3];
  v22 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:2 suffix:v21];
  v23 = [v13 detailTextLabel];
  [v23 setAccessibilityIdentifier:v22];

  return v13;
}

- (void)selectCellForIndex:(unint64_t)a3 navigationController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [(HKHeartbeatSequenceListMetadataSection *)self sequencesSamples];
  v11 = [v9 objectAtIndexedSubscript:a3];

  v10 = [[HKBeatToBeatViewController alloc] initWithHeartbeatSeriesSample:v11 healthStore:self->_healthStore displayTypeController:self->_displayTypeController unitController:self->_unitController];
  [v8 pushViewController:v10 animated:v5];
}

- (HKHeartbeatSequenceListMetadataSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end