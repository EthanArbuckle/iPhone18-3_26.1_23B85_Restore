@interface HKDataMetadataOxygenSaturationSection
- (HKDataMetadataOxygenSaturationSection)initWithSample:(id)sample healthStore:(id)store displayTypeController:(id)controller unitController:(id)unitController subsampleDelegate:(id)delegate;
- (id)cellForIndex:(unint64_t)index tableView:(id)view;
- (id)displayNameForSampleType:(id)type displayTypeController:(id)controller;
- (id)formattedHeartRateFromSample:(id)sample;
- (id)heartRateFromSample:(id)sample;
- (id)sectionTitle;
- (void)queryForData;
- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated;
@end

@implementation HKDataMetadataOxygenSaturationSection

- (HKDataMetadataOxygenSaturationSection)initWithSample:(id)sample healthStore:(id)store displayTypeController:(id)controller unitController:(id)unitController subsampleDelegate:(id)delegate
{
  sampleCopy = sample;
  storeCopy = store;
  controllerCopy = controller;
  unitControllerCopy = unitController;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = HKDataMetadataOxygenSaturationSection;
  v17 = [(HKDataMetadataOxygenSaturationSection *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sample, sample);
    objc_storeStrong(&v18->_healthStore, store);
    objc_storeStrong(&v18->_displayTypeController, controller);
    objc_storeStrong(&v18->_unitController, unitController);
    objc_storeWeak(&v18->_subsampleDelegate, delegateCopy);
  }

  return v18;
}

- (id)sectionTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"RELATED_SAMPLES" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)cellForIndex:(unint64_t)index tableView:(id)view
{
  v5 = [view dequeueReusableCellWithIdentifier:@"heartRateCell"];
  cell = self->_cell;
  self->_cell = v5;

  if (!self->_cell)
  {
    v7 = [[HKDataMetadataSimpleTableViewCell alloc] initWithReuseIdentifier:@"heartRateCell"];
    v8 = self->_cell;
    self->_cell = v7;
  }

  v9 = [MEMORY[0x1E696C3D0] quantityTypeForIdentifier:*MEMORY[0x1E696BD30]];
  v10 = [(HKDataMetadataOxygenSaturationSection *)self displayNameForSampleType:v9 displayTypeController:self->_displayTypeController];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:@"SUBSAMPLE_TYPE_AVERAGE %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v14 = [v11 stringWithFormat:v13, v10];
  subtitleTextLabel = [(HKDataMetadataSimpleTableViewCell *)self->_cell subtitleTextLabel];
  [subtitleTextLabel setText:v14];

  if (self->_heartRateSample)
  {
    v16 = [(HKDataMetadataOxygenSaturationSection *)self formattedHeartRateFromSample:?];
    titleTextLabel = [(HKDataMetadataSimpleTableViewCell *)self->_cell titleTextLabel];
    [titleTextLabel setText:v16];

    [(HKDataMetadataSimpleTableViewCell *)self->_cell setAccessoryType:1];
  }

  else
  {
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:@"NO_AVERAGE_BEATS_PER_MINUTE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Scandium"];
    titleTextLabel2 = [(HKDataMetadataSimpleTableViewCell *)self->_cell titleTextLabel];
    [titleTextLabel2 setText:v19];

    [(HKDataMetadataSimpleTableViewCell *)self->_cell setAccessoryType:0];
    [(HKDataMetadataOxygenSaturationSection *)self queryForData];
  }

  v21 = self->_cell;
  v22 = v21;

  return v21;
}

- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (!index && self->_heartRateSample)
  {
    v14 = controllerCopy;
    v9 = [MEMORY[0x1E696C3D0] quantityTypeForIdentifier:*MEMORY[0x1E696BD30]];
    v10 = [MEMORY[0x1E696C378] predicateForSamplesAssociatedWithSample:self->_sample];
    v11 = [(HKDataMetadataOxygenSaturationSection *)self displayNameForSampleType:v9 displayTypeController:self->_displayTypeController];
    WeakRetained = objc_loadWeakRetained(&self->_subsampleDelegate);
    v13 = [WeakRetained viewControllerForSampleType:v9 subSamplePredicate:v10 title:v11];

    [v14 hk_showViewController:v13 animated:animatedCopy];
    controllerCopy = v14;
  }
}

- (id)formattedHeartRateFromSample:(id)sample
{
  sampleCopy = sample;
  if (sampleCopy)
  {
    v5 = [MEMORY[0x1E696C3D0] quantityTypeForIdentifier:*MEMORY[0x1E696BD30]];
    v6 = [(HKDataMetadataOxygenSaturationSection *)self heartRateFromSample:sampleCopy];
    v7 = [(HKDisplayTypeController *)self->_displayTypeController displayTypeForObjectType:v5];
    v8 = HKFormattedStringFromValue(v6, v7, self->_unitController, 0, 0);
    v9 = [(HKUnitPreferenceController *)self->_unitController localizedDisplayNameForDisplayType:v7 value:v6];
    v10 = HKFormatValueAndUnit(v8, v9);
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v10 = [v5 localizedStringForKey:@"NO_AVERAGE_BEATS_PER_MINUTE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Scandium"];
  }

  return v10;
}

- (void)queryForData
{
  v3 = [MEMORY[0x1E696C3D0] quantityTypeForIdentifier:*MEMORY[0x1E696BD30]];
  v4 = [MEMORY[0x1E696C378] predicateForSamplesAssociatedWithSample:self->_sample];
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E696C3C8]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__HKDataMetadataOxygenSaturationSection_queryForData__block_invoke;
  v7[3] = &unk_1E81B6F50;
  v7[4] = self;
  objc_copyWeak(&v8, &location);
  v6 = [v5 initWithSampleType:v3 predicate:v4 limit:1 sortDescriptors:0 resultsHandler:v7];
  [(HKHealthStore *)self->_healthStore executeQuery:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __53__HKDataMetadataOxygenSaturationSection_queryForData__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if ([v8 count])
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __53__HKDataMetadataOxygenSaturationSection_queryForData__block_invoke_321;
      v14[3] = &unk_1E81B6F28;
      objc_copyWeak(&v16, (a1 + 40));
      v15 = v8;
      dispatch_async(MEMORY[0x1E69E96A0], v14);

      objc_destroyWeak(&v16);
    }
  }

  else
  {
    v11 = [v9 hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    v12 = *MEMORY[0x1E696B958];
    v13 = *MEMORY[0x1E696B958];
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

void __53__HKDataMetadataOxygenSaturationSection_queryForData__block_invoke_321(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) objectAtIndexedSubscript:0];
  v3 = *(WeakRetained + 7);
  *(WeakRetained + 7) = v2;
  v4 = v2;

  v5 = [WeakRetained formattedHeartRateFromSample:v4];
  v6 = [*(WeakRetained + 6) titleTextLabel];
  [v6 setText:v5];

  v7 = [*(WeakRetained + 6) titleTextLabel];
  [v7 sizeToFit];

  [*(WeakRetained + 6) setAccessoryType:1];
}

- (id)displayNameForSampleType:(id)type displayTypeController:(id)controller
{
  v4 = [controller displayTypeForObjectType:type];
  v5 = v4;
  if (v4)
  {
    localization = [v4 localization];
    displayName = [localization displayName];
  }

  else
  {
    displayName = 0;
  }

  return displayName;
}

- (id)heartRateFromSample:(id)sample
{
  v3 = MEMORY[0x1E696AD98];
  quantity = [sample quantity];
  _countPerMinuteUnit = [MEMORY[0x1E696C510] _countPerMinuteUnit];
  [quantity doubleValueForUnit:_countPerMinuteUnit];
  v6 = [v3 numberWithDouble:?];

  return v6;
}

void __53__HKDataMetadataOxygenSaturationSection_queryForData__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_6(v3);
  _os_log_error_impl(&dword_1C3942000, v2, OS_LOG_TYPE_ERROR, "%@ associated sample query returned error: %@", v5, 0x16u);
}

void __53__HKDataMetadataOxygenSaturationSection_queryForData__block_invoke_cold_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_6(v3);
  _os_log_debug_impl(&dword_1C3942000, v2, OS_LOG_TYPE_DEBUG, "%@ associated sample query returned error: %@", v5, 0x16u);
}

@end