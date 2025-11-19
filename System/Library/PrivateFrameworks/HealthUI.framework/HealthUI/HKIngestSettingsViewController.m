@interface HKIngestSettingsViewController
@end

@implementation HKIngestSettingsViewController

void __66___HKIngestSettingsViewController_fetchEnabledStatusForPeripheral__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      __66___HKIngestSettingsViewController_fetchEnabledStatusForPeripheral__block_invoke_cold_1(v5, v6);
    }
  }

  if (v5)
  {
    v7 = a2;
  }

  else
  {
    v7 = 1;
  }

  *(*(a1 + 32) + 1073) = v7;
  *(*(a1 + 32) + 1072) = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66___HKIngestSettingsViewController_fetchEnabledStatusForPeripheral__block_invoke_293;
  block[3] = &unk_1E81B55A8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __66___HKIngestSettingsViewController_fetchEnabledStatusForPeripheral__block_invoke_293(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

void __46___HKIngestSettingsViewController_reloadData___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

void __64___HKIngestSettingsViewController_switchCellValueChanged_value___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      *(WeakRetained + 1072) = *(a1 + 40);
    }

    else
    {
      _HKInitializeLogging();
      v6 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __64___HKIngestSettingsViewController_switchCellValueChanged_value___block_invoke_cold_1(v5, a1, v6);
      }
    }
  }
}

uint64_t __72___HKIngestSettingsViewController__displayGuestModeAlertWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __66___HKIngestSettingsViewController_fetchEnabledStatusForPeripheral__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "fetchEnabledStatusForPeripheral getEnabledStatusForPeripheral failed: %{public}@", &v2, 0xCu);
}

void __64___HKIngestSettingsViewController_switchCellValueChanged_value___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = [a1 deviceIdentifier];
  v7 = [a1 title];
  v8 = v7;
  v9 = *(a2 + 40);
  v11 = 138543874;
  v12 = v6;
  if (v9)
  {
    v10 = @"ON";
  }

  else
  {
    v10 = @"OFF";
  }

  v13 = 2114;
  v14 = v7;
  v15 = 2114;
  v16 = v10;
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "Could not set the enabled status of device %{public}@, '%{public}@', to %{public}@", &v11, 0x20u);
}

@end