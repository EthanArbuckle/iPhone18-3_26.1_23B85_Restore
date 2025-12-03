@interface HKBeatToBeatViewController
- (HKBeatToBeatViewController)initWithHRVSample:(id)sample healthStore:(id)store displayTypeController:(id)controller unitController:(id)unitController;
- (HKBeatToBeatViewController)initWithHeartbeatSeriesSample:(id)sample healthStore:(id)store displayTypeController:(id)controller unitController:(id)unitController;
- (id)_displayStringForInstantaneousBPM:(double)m;
- (id)_displayStringForTime:(double)time;
- (id)_initWithHealthStore:(id)store displayTypeController:(id)controller unitController:(id)unitController;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)_addHeartbeatSeriesSample:(id)sample;
- (void)viewDidLoad;
@end

@implementation HKBeatToBeatViewController

- (id)_initWithHealthStore:(id)store displayTypeController:(id)controller unitController:(id)unitController
{
  storeCopy = store;
  controllerCopy = controller;
  unitControllerCopy = unitController;
  v17.receiver = self;
  v17.super_class = HKBeatToBeatViewController;
  v12 = [(HKTableViewController *)&v17 initWithUsingInsetStyling:1];
  p_isa = &v12->super.super.super.super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_healthStore, store);
    objc_storeStrong(p_isa + 132, controller);
    objc_storeStrong(p_isa + 133, unitController);
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v15 = [v14 localizedStringForKey:@"BEAT_TO_BEAT_MEASUREMENTS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [p_isa setTitle:v15];
  }

  return p_isa;
}

- (HKBeatToBeatViewController)initWithHeartbeatSeriesSample:(id)sample healthStore:(id)store displayTypeController:(id)controller unitController:(id)unitController
{
  sampleCopy = sample;
  v11 = [(HKBeatToBeatViewController *)self _initWithHealthStore:store displayTypeController:controller unitController:unitController];
  if (v11)
  {
    v12 = [MEMORY[0x1E696C1E0] instantaneousBPMsForHeartbeatSeriesSample:sampleCopy];
    bpmPoints = v11->_bpmPoints;
    v11->_bpmPoints = v12;
  }

  return v11;
}

- (HKBeatToBeatViewController)initWithHRVSample:(id)sample healthStore:(id)store displayTypeController:(id)controller unitController:(id)unitController
{
  sampleCopy = sample;
  storeCopy = store;
  v12 = [(HKBeatToBeatViewController *)self _initWithHealthStore:storeCopy displayTypeController:controller unitController:unitController];
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x1E696C1E0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __97__HKBeatToBeatViewController_initWithHRVSample_healthStore_displayTypeController_unitController___block_invoke;
    v16[3] = &unk_1E81B82C0;
    v17 = v12;
    [v14 queryForParentSequenceOfHRV:sampleCopy healthStore:storeCopy completion:v16];
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

- (void)_addHeartbeatSeriesSample:(id)sample
{
  v4 = [MEMORY[0x1E696C1E0] instantaneousBPMsForHeartbeatSeriesSample:sample];
  bpmPoints = self->_bpmPoints;
  self->_bpmPoints = v4;

  tableView = [(HKBeatToBeatViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HKBeatToBeatViewController;
  [(HKTableViewController *)&v6 viewDidLoad];
  tableView = [(HKBeatToBeatViewController *)self tableView];
  [tableView setAllowsSelection:0];

  v4 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:3 suffix:@"BeatToBeat.EntireView"];
  tableView2 = [(HKBeatToBeatViewController *)self tableView];
  [tableView2 setAccessibilityIdentifier:v4];
}

- (id)_displayStringForInstantaneousBPM:(double)m
{
  v5 = [(HKDisplayTypeController *)self->_displayTypeController displayTypeWithIdentifier:&unk_1F4382890];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:m];
  v7 = HKFormattedStringFromValueForContext(v6, v5, self->_unitController, 0, 0, 1);

  return v7;
}

- (id)_displayStringForTime:(double)time
{
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:time];
  v4 = HKLocalizedStringForDateAndTemplate(v3, 29);

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"CellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"CellIdentifier"];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_bpmPoints, "objectAtIndexedSubscript:", [pathCopy row]);
  [v8 bpm];
  v9 = [(HKBeatToBeatViewController *)self _displayStringForInstantaneousBPM:?];
  textLabel = [v7 textLabel];
  [textLabel setText:v9];

  [v8 time];
  v11 = [(HKBeatToBeatViewController *)self _displayStringForTime:?];
  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setText:v11];

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BeatToBeat.%ld", objc_msgSend(pathCopy, "item")];
  v14 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:3 suffix:v13];
  [v7 setAccessibilityIdentifier:v14];

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BeatToBeat.%ld.BPM", objc_msgSend(pathCopy, "item")];
  v16 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:3 suffix:v15];
  textLabel2 = [v7 textLabel];
  [textLabel2 setAccessibilityIdentifier:v16];

  v18 = MEMORY[0x1E696AEC0];
  item = [pathCopy item];

  v20 = [v18 stringWithFormat:@"BeatToBeat.%ld.Timestamp", item];
  v21 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:3 suffix:v20];
  detailTextLabel2 = [v7 detailTextLabel];
  [detailTextLabel2 setAccessibilityIdentifier:v21];

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.HealthUI", section}];
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