@interface HMAccessorySettingsController
@end

@implementation HMAccessorySettingsController

void __131__HMAccessorySettingsController_HFAdditions__hf_updateAccessorySettingWithHomeIdentifier_accessoryIdentifier_keyPath_settingValue___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v13 = 138413058;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Error updating setting [%@] for accessoryID: [%@] with value [%@] with error: [%@]", &v13, 0x2Au);
    }

    [*(a1 + 56) finishWithError:v3];
  }

  else
  {
    [*(a1 + 56) finishWithNoResult];
  }

  v8 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_debug_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEBUG, "Finished update for setting [%@] for accessoryID: [%@] with value [%@]", &v13, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end