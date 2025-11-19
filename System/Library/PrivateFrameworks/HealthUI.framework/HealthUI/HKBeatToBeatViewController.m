@interface HKBeatToBeatViewController
- (HKBeatToBeatViewController)initWithHRVSample:(id)a3 healthStore:(id)a4 displayTypeController:(id)a5 unitController:(id)a6;
- (HKBeatToBeatViewController)initWithHeartbeatSeriesSample:(id)a3 healthStore:(id)a4 displayTypeController:(id)a5 unitController:(id)a6;
- (id)_displayStringForInstantaneousBPM:(double)a3;
- (id)_displayStringForTime:(double)a3;
- (id)_initWithHealthStore:(id)a3 displayTypeController:(id)a4 unitController:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)_addHeartbeatSeriesSample:(id)a3;
- (void)viewDidLoad;
@end

@implementation HKBeatToBeatViewController

- (id)_initWithHealthStore:(id)a3 displayTypeController:(id)a4 unitController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HKBeatToBeatViewController;
  v12 = [(HKTableViewController *)&v17 initWithUsingInsetStyling:1];
  p_isa = &v12->super.super.super.super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_healthStore, a3);
    objc_storeStrong(p_isa + 132, a4);
    objc_storeStrong(p_isa + 133, a5);
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v15 = [v14 localizedStringForKey:@"BEAT_TO_BEAT_MEASUREMENTS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [p_isa setTitle:v15];
  }

  return p_isa;
}

- (HKBeatToBeatViewController)initWithHeartbeatSeriesSample:(id)a3 healthStore:(id)a4 displayTypeController:(id)a5 unitController:(id)a6
{
  v10 = a3;
  v11 = [(HKBeatToBeatViewController *)self _initWithHealthStore:a4 displayTypeController:a5 unitController:a6];
  if (v11)
  {
    v12 = [MEMORY[0x1E696C1E0] instantaneousBPMsForHeartbeatSeriesSample:v10];
    bpmPoints = v11->_bpmPoints;
    v11->_bpmPoints = v12;
  }

  return v11;
}

- (HKBeatToBeatViewController)initWithHRVSample:(id)a3 healthStore:(id)a4 displayTypeController:(id)a5 unitController:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(HKBeatToBeatViewController *)self _initWithHealthStore:v11 displayTypeController:a5 unitController:a6];
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x1E696C1E0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __97__HKBeatToBeatViewController_initWithHRVSample_healthStore_displayTypeController_unitController___block_invoke;
    v16[3] = &unk_1E81B82C0;
    v17 = v12;
    [v14 queryForParentSequenceOfHRV:v10 healthStore:v11 completion:v16];
  }

  return v13;
}

void __97__HKBeatToBeatViewController_initWithHRVSample_healthStore_displayTypeController_unitController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __97__HKBeatToBeatViewController_initWithHRVSample_healthStore_displayTypeController_unitController___block_invoke_305;
    v11[3] = &unk_1E81B5AD0;
    v12 = *(a1 + 32);
    v13 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }

  else
  {
    v8 = [v6 hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    v9 = *MEMORY[0x1E696B958];
    v10 = *MEMORY[0x1E696B958];
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __97__HKBeatToBeatViewController_initWithHRVSample_healthStore_displayTypeController_unitController___block_invoke_cold_2(a1, v9);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __97__HKBeatToBeatViewController_initWithHRVSample_healthStore_displayTypeController_unitController___block_invoke_cold_1(a1, v9);
    }
  }
}

- (void)_addHeartbeatSeriesSample:(id)a3
{
  v4 = [MEMORY[0x1E696C1E0] instantaneousBPMsForHeartbeatSeriesSample:a3];
  bpmPoints = self->_bpmPoints;
  self->_bpmPoints = v4;

  v6 = [(HKBeatToBeatViewController *)self tableView];
  [v6 reloadData];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HKBeatToBeatViewController;
  [(HKTableViewController *)&v6 viewDidLoad];
  v3 = [(HKBeatToBeatViewController *)self tableView];
  [v3 setAllowsSelection:0];

  v4 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:3 suffix:@"BeatToBeat.EntireView"];
  v5 = [(HKBeatToBeatViewController *)self tableView];
  [v5 setAccessibilityIdentifier:v4];
}

- (id)_displayStringForInstantaneousBPM:(double)a3
{
  v5 = [(HKDisplayTypeController *)self->_displayTypeController displayTypeWithIdentifier:&unk_1F4382890];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v7 = HKFormattedStringFromValueForContext(v6, v5, self->_unitController, 0, 0, 1);

  return v7;
}

- (id)_displayStringForTime:(double)a3
{
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
  v4 = HKLocalizedStringForDateAndTemplate(v3, 29);

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"CellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"CellIdentifier"];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_bpmPoints, "objectAtIndexedSubscript:", [v6 row]);
  [v8 bpm];
  v9 = [(HKBeatToBeatViewController *)self _displayStringForInstantaneousBPM:?];
  v10 = [v7 textLabel];
  [v10 setText:v9];

  [v8 time];
  v11 = [(HKBeatToBeatViewController *)self _displayStringForTime:?];
  v12 = [v7 detailTextLabel];
  [v12 setText:v11];

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BeatToBeat.%ld", objc_msgSend(v6, "item")];
  v14 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:3 suffix:v13];
  [v7 setAccessibilityIdentifier:v14];

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BeatToBeat.%ld.BPM", objc_msgSend(v6, "item")];
  v16 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:3 suffix:v15];
  v17 = [v7 textLabel];
  [v17 setAccessibilityIdentifier:v16];

  v18 = MEMORY[0x1E696AEC0];
  v19 = [v6 item];

  v20 = [v18 stringWithFormat:@"BeatToBeat.%ld.Timestamp", v19];
  v21 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:3 suffix:v20];
  v22 = [v7 detailTextLabel];
  [v22 setAccessibilityIdentifier:v21];

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.HealthUI", a4}];
  v5 = [v4 localizedStringForKey:@"BEATS_PER_MINUTE_NUMBERLESS_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v5;
}

void __97__HKBeatToBeatViewController_initWithHRVSample_healthStore_displayTypeController_unitController___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_6(v3);
  _os_log_error_impl(&dword_1C3942000, v2, OS_LOG_TYPE_ERROR, "%@ HRV parent sample query returned error: %@", v5, 0x16u);
}

void __97__HKBeatToBeatViewController_initWithHRVSample_healthStore_displayTypeController_unitController___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_6(v3);
  _os_log_debug_impl(&dword_1C3942000, v2, OS_LOG_TYPE_DEBUG, "%@ HRV parent sample query returned error: %@", v5, 0x16u);
}

@end