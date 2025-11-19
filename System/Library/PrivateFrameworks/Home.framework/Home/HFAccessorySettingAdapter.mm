@interface HFAccessorySettingAdapter
+ (id)createDefaultHomeSettingAdapterCollectionForProfile:(id)a3;
+ (id)createDefaultHomeSettingAdapterCollectionWithoutMobileTimerAdapterForProfile:(id)a3;
- (BOOL)_setupKeyPaths;
- (BOOL)_updateRootAccessorySettings;
- (BOOL)_updateRootAccessorySettingsIfNeeded;
- (HFAccessorySettingAdapter)init;
- (HFAccessorySettingAdapter)initWithHomeKitSettingsVendor:(id)a3 keyPaths:(id)a4 mode:(unint64_t)a5 updateHandler:(id)a6;
- (HFHomeKitSettingsValueManager)valueManager;
- (HMHome)home;
- (id)_missingKeyPaths;
- (id)settingForKeyPath:(id)a3;
- (id)settingWatchFutureForKeyPath:(id)a3;
- (id)updateSetting:(id)a3 value:(id)a4;
- (id)updateSettingWithKeyPath:(id)a3 value:(id)a4;
- (void)_reportUpdatedValueForSetting:(id)a3;
- (void)_setupMissingKeyPaths;
- (void)_tearDownKeyPaths;
- (void)_teardownSetting:(id)a3;
- (void)_watchSetting:(id)a3;
- (void)mediaObject:(id)a3 didUpdateSettings:(id)a4;
- (void)settings:(id)a3 didUpdateForIdentifier:(id)a4 keyPath:(id)a5;
- (void)settings:(id)a3 didWriteValueForSettings:(id)a4 failedSettings:(id)a5 homeKitObjectIdentifiers:(id)a6;
- (void)settings:(id)a3 willWriteValueForSettings:(id)a4;
- (void)settingsDidUpdate:(id)a3;
@end

@implementation HFAccessorySettingAdapter

- (HFAccessorySettingAdapter)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_keyPaths_mode_updateHandler_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingAdapter.m" lineNumber:93 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingAdapter init]", v5}];

  return 0;
}

- (HFAccessorySettingAdapter)initWithHomeKitSettingsVendor:(id)a3 keyPaths:(id)a4 mode:(unint64_t)a5 updateHandler:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingAdapter.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"homeKitSettingsVendor"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v31 = [MEMORY[0x277CCA890] currentHandler];
  [v31 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingAdapter.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"keyPaths"}];

LABEL_3:
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v32.receiver = self;
  v32.super_class = HFAccessorySettingAdapter;
  v15 = [(HFAccessorySettingAdapter *)&v32 init];
  v16 = v15;
  if (v15)
  {
    v15->_mode = a5;
    v17 = [v14 copy];
    updateHandler = v16->_updateHandler;
    v16->_updateHandler = v17;

    objc_storeStrong(&v16->_homeKitSettingsVendor, a3);
    v19 = [v12 hf_settingsValueManager];
    valueManager = v16->_valueManager;
    v16->_valueManager = v19;

    v21 = [v13 copy];
    keyPaths = v16->_keyPaths;
    v16->_keyPaths = v21;

    v23 = objc_opt_new();
    keyPathStringToFuture = v16->_keyPathStringToFuture;
    v16->_keyPathStringToFuture = v23;

    v25 = +[HFHomeKitDispatcher sharedDispatcher];
    dispatcher = v16->_dispatcher;
    v16->_dispatcher = v25;

    [(HFHomeKitDispatcher *)v16->_dispatcher addMediaObjectObserver:v16];
    [(HFHomeKitDispatcher *)v16->_dispatcher addHomeKitSettingsObserver:v16];
    [(HFAccessorySettingAdapter *)v16 _updateRootAccessorySettings];
    v27 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v13;
      _os_log_impl(&dword_20D9BF000, v27, OS_LOG_TYPE_DEFAULT, "init HFAccessorySettingAdapter with keyPaths: %@", buf, 0xCu);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)updateSettingWithKeyPath:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = [(HFAccessorySettingAdapter *)self settingWatchFutureForKeyPath:a3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__HFAccessorySettingAdapter_updateSettingWithKeyPath_value___block_invoke;
  v11[3] = &unk_277DF5740;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [v7 flatMap:v11];

  return v9;
}

- (id)settingWatchFutureForKeyPath:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v36 = [MEMORY[0x277CCA890] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingAdapter.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = [(HFAccessorySettingAdapter *)self keyPaths];
  v7 = [v6 containsObject:v5];

  v8 = HFLogForCategory(0x3EuLL);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = NSStringFromSelector(a2);
      *buf = 138412802;
      v38 = v23;
      v39 = 2112;
      v40 = v24;
      v41 = 2112;
      v42 = v5;
      _os_log_debug_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEBUG, "(%@/%@) Checking to see if we already have setting for keyPath '%@'...", buf, 0x20u);
    }

    v10 = [(HFAccessorySettingAdapter *)self watchedSettings];
    v11 = [v10 objectForKey:v5];

    if (v11 && ([v11 setting], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v13 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = NSStringFromSelector(a2);
        v35 = [v11 setting];
        *buf = 138413058;
        v38 = v33;
        v39 = 2112;
        v40 = v34;
        v41 = 2112;
        v42 = v5;
        v43 = 2112;
        v44 = v35;
        _os_log_debug_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEBUG, "(%@/%@) Setting '%@' is something we're watching for already! Returning: '%@'", buf, 0x2Au);
      }

      v14 = MEMORY[0x277D2C900];
      v15 = [v11 setting];
      v16 = [v14 futureWithResult:v15];
    }

    else
    {
      v19 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = NSStringFromSelector(a2);
        *buf = 138412802;
        v38 = v30;
        v39 = 2112;
        v40 = v31;
        v41 = 2112;
        v42 = v5;
        _os_log_debug_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEBUG, "(%@/%@) Setting '%@' is something we're watching for, but don't have a setting yet.  Returning a future.", buf, 0x20u);
      }

      v15 = [(HFAccessorySettingAdapter *)self keyPathStringToFuture];
      v16 = [v15 na_objectForKey:v5 withDefaultValue:&__block_literal_global_123];
    }

    v18 = v16;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      v28 = [(HFAccessorySettingAdapter *)self keyPaths];
      *buf = 138413058;
      v38 = v26;
      v39 = 2112;
      v40 = v27;
      v41 = 2112;
      v42 = v5;
      v43 = 2112;
      v44 = v28;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "(%@/%@) Error; '%@' isn't part of watched keyPaths '%@'", buf, 0x2Au);
    }

    v17 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hf_errorWithCode:7 descriptionFormat:@"Could not find accessory setting for keyPath: %@", v5];
    v18 = [v17 futureWithError:v11];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

id __58__HFAccessorySettingAdapter_settingWatchFutureForKeyPath___block_invoke()
{
  v0 = objc_opt_new();

  return v0;
}

- (HMHome)home
{
  v2 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
  v3 = [v2 hf_home];

  return v3;
}

- (HFHomeKitSettingsValueManager)valueManager
{
  valueManager = self->_valueManager;
  if (!valueManager)
  {
    v4 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
    v5 = [v4 hf_settingsValueManager];
    v6 = self->_valueManager;
    self->_valueManager = v5;

    valueManager = self->_valueManager;
  }

  v7 = valueManager;

  return v7;
}

- (id)updateSetting:(id)a3 value:(id)a4
{
  v27[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HFAccessorySettingAdapter *)self valueManager];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 changeValueForSetting:v6 toValue:v7];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __49__HFAccessorySettingAdapter_updateSetting_value___block_invoke;
    v23[3] = &unk_277DF5788;
    v24 = v6;
    v25 = v7;
    v11 = [v10 addCompletionBlock:v23];

    v12 = v24;
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    v14 = MEMORY[0x277CCA9B8];
    if (v6)
    {
      v15 = v6;
    }

    else
    {
      v15 = @"(null)";
    }

    v26[0] = @"setting";
    v26[1] = @"value";
    if (v7)
    {
      v16 = v7;
    }

    else
    {
      v16 = @"(null)";
    }

    v27[0] = v15;
    v27[1] = v16;
    v26[2] = @"settings";
    v17 = [(HFAccessorySettingAdapter *)self settings];
    v12 = v17;
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = @"(null)";
    }

    v27[2] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v20 = [v14 hf_errorWithCode:25 operation:@"updateSetting:value: failed because value manager is nil!" options:v19];
    v10 = [v13 futureWithError:v20];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v10;
}

void __49__HFAccessorySettingAdapter_updateSetting_value___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x3EuLL);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v12 = 138412802;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v4;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Attempting to update '%@' with value '%@' failed: %@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_debug_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEBUG, "Updated '%@' with value '%@'", &v12, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)settingForKeyPath:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(HFAccessorySettingAdapter *)self _updateRootAccessorySettingsIfNeeded];
  v5 = [(HFAccessorySettingAdapter *)self watchedSettings];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 setting];

  return v7;
}

- (void)settings:(id)a3 willWriteValueForSettings:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 138413058;
    v19 = self;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    _os_log_debug_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEBUG, "%@:%@ settings %@, settingsSet %@", buf, 0x2Au);
  }

  [(HFAccessorySettingAdapter *)self _updateRootAccessorySettingsIfNeeded];
  v10 = [(HFAccessorySettingAdapter *)self keyPaths];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__HFAccessorySettingAdapter_settings_willWriteValueForSettings___block_invoke;
  v16[3] = &unk_277DF57B0;
  v17 = v10;
  v11 = v10;
  v12 = [v8 na_filter:v16];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__HFAccessorySettingAdapter_settings_willWriteValueForSettings___block_invoke_2;
  v15[3] = &unk_277DF57D8;
  v15[4] = self;
  [v12 na_each:v15];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __64__HFAccessorySettingAdapter_settings_willWriteValueForSettings___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 keyPath];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)settings:(id)a3 didWriteValueForSettings:(id)a4 failedSettings:(id)a5 homeKitObjectIdentifiers:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v18 = NSStringFromSelector(a2);
    *buf = 138413314;
    v23 = self;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    _os_log_debug_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEBUG, "%@:%@ settings %@, didWrite %@, failedWrite %@", buf, 0x34u);
  }

  [(HFAccessorySettingAdapter *)self _updateRootAccessorySettingsIfNeeded];
  v14 = [(HFAccessorySettingAdapter *)self keyPaths];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __103__HFAccessorySettingAdapter_settings_didWriteValueForSettings_failedSettings_homeKitObjectIdentifiers___block_invoke;
  v20[3] = &unk_277DF57B0;
  v21 = v14;
  v15 = v14;
  v16 = [v12 na_filter:v20];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__HFAccessorySettingAdapter_settings_didWriteValueForSettings_failedSettings_homeKitObjectIdentifiers___block_invoke_2;
  v19[3] = &unk_277DF57D8;
  v19[4] = self;
  [v16 na_each:v19];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __103__HFAccessorySettingAdapter_settings_didWriteValueForSettings_failedSettings_homeKitObjectIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 keyPath];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)settings:(id)a3 didUpdateForIdentifier:(id)a4 keyPath:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Got settings:didUpdateForIdentifier:keyPath: callback for keyPath '%@'", &v12, 0xCu);
  }

  v8 = [(HFAccessorySettingAdapter *)self settingForKeyPath:v6];
  v9 = HFLogForCategory(0x3EuLL);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Found changed setting:%@ for keyPath: %@", &v12, 0x16u);
    }

    [(HFAccessorySettingAdapter *)self _reportUpdatedValueForSetting:v8];
  }

  else
  {
    if (v10)
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Cannot find changed setting for keyPath: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)settingsDidUpdate:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
  v6 = [v5 settings];

  if (v6 == v4)
  {
    v7 = [(HFAccessorySettingAdapter *)self settings];

    if (v7 != v4)
    {
      [(HFAccessorySettingAdapter *)self _updateRootAccessorySettings];
      goto LABEL_31;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [(HFAccessorySettingAdapter *)self keyPaths];
    v8 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (!v8)
    {
      goto LABEL_30;
    }

    v10 = v8;
    v11 = *v38;
    *&v9 = 138412546;
    v33 = v9;
    v34 = *v38;
LABEL_6:
    v12 = 0;
    v35 = v10;
    while (1)
    {
      if (*v38 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v37 + 1) + 8 * v12);
      v14 = [(HFAccessorySettingAdapter *)self settingForKeyPath:v13, v33];
      if (v14)
      {
        v15 = v14;
        v16 = [v4 hf_accessorySettingAtKeyPath:v13];

        v17 = HFLogForCategory(0x3EuLL);
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
        if (v16)
        {
          v19 = v4;
          if (v18)
          {
            *buf = v33;
            v42 = v15;
            v43 = 2112;
            v44 = v13;
            _os_log_debug_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEBUG, "Found watched setting '%@' @ keyPath '%@'", buf, 0x16u);
          }

          v20 = [(HFAccessorySettingAdapter *)self settings];
          v21 = [_HFObservedAccessorySettingState stateWithSettings:v20 forSetting:v15];

          v22 = [(HFAccessorySettingAdapter *)self watchedSettings];
          v23 = [v15 keyPath];
          v24 = [v22 objectForKeyedSubscript:v23];
          v25 = [v21 isEqual:v24];

          if ((v25 & 1) == 0)
          {
            v26 = HFLogForCategory(0x3EuLL);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v33;
              v42 = v15;
              v43 = 2112;
              v44 = v13;
              _os_log_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_DEFAULT, "Found metadata for setting '%@' @ keyPath '%@' has changed; notifying delegate", buf, 0x16u);
            }

            v27 = [(HFAccessorySettingAdapter *)self watchedSettings];
            v28 = [v15 keyPath];
            [v27 setObject:v21 forKey:v28];

            [(HFAccessorySettingAdapter *)self _reportUpdatedValueForSetting:v15];
          }

          v4 = v19;
          v11 = v34;
          v10 = v35;
        }

        else
        {
          if (v18)
          {
            *buf = v33;
            v42 = v15;
            v43 = 2112;
            v44 = v13;
            _os_log_debug_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEBUG, "Setting '%@' @ keyPath '%@' was deleted.", buf, 0x16u);
          }

          [(HFAccessorySettingAdapter *)self _teardownSetting:v15];
        }
      }

      else
      {
        v29 = HFLogForCategory(0x3EuLL);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = v33;
          v42 = 0;
          v43 = 2112;
          v44 = v13;
          _os_log_debug_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_DEBUG, "Unable to find watched setting '%@' @ keyPath '%@'", buf, 0x16u);
        }

        v30 = [(HFAccessorySettingAdapter *)self settings];
        v15 = [v30 hf_accessorySettingAtKeyPath:v13];

        if (!v15)
        {
          goto LABEL_28;
        }

        [(HFAccessorySettingAdapter *)self _watchSetting:v15];
        v31 = HFLogForCategory(0x3EuLL);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = v33;
          v42 = v15;
          v43 = 2112;
          v44 = v13;
          _os_log_debug_impl(&dword_20D9BF000, v31, OS_LOG_TYPE_DEBUG, "Built setting '%@' @ keyPath '%@'", buf, 0x16u);
        }

        [(HFAccessorySettingAdapter *)self _reportUpdatedValueForSetting:v15];
      }

LABEL_28:
      if (v10 == ++v12)
      {
        v10 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (!v10)
        {
LABEL_30:

          break;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_31:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)mediaObject:(id)a3 didUpdateSettings:(id)a4
{
  v5 = a3;
  v6 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
  v7 = [v6 isEqual:v5];

  if (v7)
  {

    [(HFAccessorySettingAdapter *)self _updateRootAccessorySettingsIfNeeded];
  }
}

- (BOOL)_updateRootAccessorySettingsIfNeeded
{
  v2 = self;
  v3 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
  v4 = [v3 settings];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(HFAccessorySettingAdapter *)v2 settings];
    v7 = [v6 isEqual:v4];

    if (v7)
    {
      v8 = [(HFAccessorySettingAdapter *)v2 _missingKeyPaths];
      v9 = [v8 count];

      if (v9)
      {
        [(HFAccessorySettingAdapter *)v2 _setupMissingKeyPaths];
      }
    }

    else
    {
      LOBYTE(v2) = [(HFAccessorySettingAdapter *)v2 _updateRootAccessorySettings];
    }

    objc_autoreleasePoolPop(v5);
    v11 = (v7 ^ 1) & v2;
  }

  else
  {
    v10 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Settings aren't setup yet; aborting cycling settings...", v13, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)_updateRootAccessorySettings
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
  v4 = [v3 settings];

  v5 = HFLogForCategory(0x3EuLL);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
      v8 = [(HFAccessorySettingAdapter *)self settings];
      v12 = 138413058;
      v13 = v7;
      v14 = 2112;
      v15 = self;
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Cycling settings object for homeKitSettingsVendor %@ / adapter %@ to settings '%@' from settings '%@'", &v12, 0x2Au);
    }

    [(HFAccessorySettingAdapter *)self _tearDownKeyPaths];
    objc_storeStrong(&self->_settings, v4);
    v9 = [(HFAccessorySettingAdapter *)self _setupKeyPaths];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Settings aren't setup yet; aborting cycling settings...", &v12, 2u);
    }

    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_setupKeyPaths
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HFAccessorySettingAdapter *)self settings];

  if (v3)
  {
    v4 = objc_opt_new();
    [(HFAccessorySettingAdapter *)self setWatchedSettings:v4];

    v5 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(HFAccessorySettingAdapter *)self keyPaths];
      *buf = 138412546;
      v25 = self;
      v26 = 2112;
      v27 = v18;
      _os_log_debug_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEBUG, "Setting up adapter '%@' to watch keypaths '%@'", buf, 0x16u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(HFAccessorySettingAdapter *)self keyPaths];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * v10);
          v12 = [(HFAccessorySettingAdapter *)self settings];
          v13 = [v12 hf_accessorySettingAtKeyPath:v11];

          if (v13)
          {
            [(HFAccessorySettingAdapter *)self _watchSetting:v13];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    v14 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [(HFAccessorySettingAdapter *)self watchedSettings];
      *buf = 138412546;
      v25 = self;
      v26 = 2112;
      v27 = v15;
      _os_log_debug_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEBUG, "Adapter '%@' setup with settings '%@'", buf, 0x16u);
    }
  }

  else
  {
    v14 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "Cannot setup keypaths; there are no accessory settings yet!", buf, 2u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v3 != 0;
}

- (id)_missingKeyPaths
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(HFAccessorySettingAdapter *)self watchedSettings];
  v5 = [v4 allKeys];
  v6 = [v3 setWithArray:v5];

  v7 = [(HFAccessorySettingAdapter *)self keyPaths];
  v8 = [v7 na_setByRemovingObjectsFromSet:v6];

  return v8;
}

- (void)_setupMissingKeyPaths
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [(HFAccessorySettingAdapter *)self settings];

  if (!v4)
  {
    v8 = HFLogForCategory(0x3EuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    *buf = 0;
    v9 = "Cannot setup missing keypaths; there are no accessory settings yet!";
    goto LABEL_6;
  }

  v5 = [(HFAccessorySettingAdapter *)self settings];
  v6 = [v5 rootGroup];
  v7 = [v6 groups];
  if (![v7 count])
  {
    v10 = [(HFAccessorySettingAdapter *)self settings];
    v11 = [v10 rootGroup];
    v12 = [v11 settings];
    v13 = [v12 count];

    if (v13)
    {
      goto LABEL_8;
    }

    v8 = HFLogForCategory(0x3EuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    *buf = 0;
    v9 = "Cannot setup missing keypaths; Accessory Settings haven't finished populating yet!";
LABEL_6:
    _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, v9, buf, 2u);
    goto LABEL_37;
  }

LABEL_8:
  v8 = [(HFAccessorySettingAdapter *)self _missingKeyPaths];
  v14 = [v8 count];
  v15 = HFLogForCategory(0x3EuLL);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    v36 = v3;
    if (v16)
    {
      *buf = 138412546;
      v42 = self;
      v43 = 2112;
      v44 = v8;
      _os_log_debug_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEBUG, "Setting up adapter '%@' to watch any missing keypaths: '%@'", buf, 0x16u);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = v8;
    v17 = v8;
    v18 = [v17 countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v38;
      do
      {
        v21 = 0;
        do
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v37 + 1) + 8 * v21);
          v23 = objc_autoreleasePoolPush();
          v24 = [(HFAccessorySettingAdapter *)self settings];
          v25 = [v24 hf_accessorySettingAtKeyPath:v22];

          if (v25)
          {
            v26 = [(HFAccessorySettingAdapter *)self watchedSettings];
            v27 = [v25 keyPath];
            v28 = [v26 objectForKey:v27];

            v29 = HFLogForCategory(0x3EuLL);
            v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
            if (v28)
            {
              if (v30)
              {
                *buf = 138412546;
                v42 = self;
                v43 = 2112;
                v44 = v25;
                _os_log_debug_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_DEBUG, "Adapter '%@' is already watching '%@'", buf, 0x16u);
              }
            }

            else
            {
              if (v30)
              {
                *buf = 138412546;
                v42 = self;
                v43 = 2112;
                v44 = v25;
                _os_log_debug_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_DEBUG, "Adapter '%@' is setting up missed setting '%@'", buf, 0x16u);
              }

              [(HFAccessorySettingAdapter *)self _watchSetting:v25];
              v32 = HFLogForCategory(0x3EuLL);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v42 = self;
                v43 = 2112;
                v44 = v25;
                _os_log_debug_impl(&dword_20D9BF000, v32, OS_LOG_TYPE_DEBUG, "Adapter '%@' is setting up missed setting '%@'", buf, 0x16u);
              }

              [(HFAccessorySettingAdapter *)self _reportUpdatedValueForSetting:v25];
            }
          }

          else
          {
            v31 = HFLogForCategory(0x3EuLL);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v42 = self;
              v43 = 2112;
              v44 = v22;
              _os_log_debug_impl(&dword_20D9BF000, v31, OS_LOG_TYPE_DEBUG, "Adapter '%@' cannot watch keypath '%@' -- doesn't exist in HomeKit?  Please file a radar if you're seeing this a lot.", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v23);
          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v19);
    }

    v15 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v34 = [(HFAccessorySettingAdapter *)self watchedSettings];
      *buf = 138412802;
      v42 = self;
      v43 = 2112;
      v44 = v17;
      v45 = 2112;
      v46 = v34;
      _os_log_debug_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEBUG, "Adapter '%@' setup missed keypaths '%@' with settings '%@'", buf, 0x20u);
    }

    v8 = v35;
    v3 = v36;
  }

  else if (v16)
  {
    *buf = 0;
    _os_log_debug_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEBUG, "All keypaths accounted for!", buf, 2u);
  }

LABEL_37:
  objc_autoreleasePoolPop(v3);
  v33 = *MEMORY[0x277D85DE8];
}

- (void)_tearDownKeyPaths
{
  v3 = [(HFAccessorySettingAdapter *)self watchedSettings];
  v4 = [v3 copy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__HFAccessorySettingAdapter__tearDownKeyPaths__block_invoke;
  v8[3] = &unk_277DF5800;
  v8[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  v5 = [(HFAccessorySettingAdapter *)self watchedSettings];
  v6 = [v5 count];

  if (v6)
  {
    NSLog(&cfstr_AfterTeardownT.isa);
  }

  v7 = [(HFAccessorySettingAdapter *)self watchedSettings];
  [v7 removeAllObjects];
}

void __46__HFAccessorySettingAdapter__tearDownKeyPaths__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 setting];
  [v3 _teardownSetting:v4];
}

- (void)_watchSetting:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = self;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Adapter '%@' started watching for '%@'", buf, 0x16u);
    }

    v6 = [(HFAccessorySettingAdapter *)self keyPathStringToFuture];
    v7 = [v4 keyPath];
    v8 = [v6 objectForKey:v7];

    v9 = [(HFAccessorySettingAdapter *)self settings];
    v10 = [_HFObservedAccessorySettingState stateWithSettings:v9 forSetting:v4];

    v11 = [(HFAccessorySettingAdapter *)self watchedSettings];
    v12 = [v4 keyPath];
    [v11 na_safeSetObject:v10 forKey:v12];

    v13 = [(HFAccessorySettingAdapter *)self keyPathStringToFuture];
    v14 = [v4 keyPath];
    [v13 removeObjectForKey:v14];

    v15 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = self;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Adapter '%@' is setting up '%@' for first use...", buf, 0x16u);
    }

    v16 = [(HFAccessorySettingAdapter *)self _beginMonitoringSettingsKeyPath:v4];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __43__HFAccessorySettingAdapter__watchSetting___block_invoke;
    v20[3] = &unk_277DF3180;
    v20[4] = self;
    v21 = v4;
    v22 = v8;
    v17 = v8;
    v18 = [v16 addCompletionBlock:v20];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __43__HFAccessorySettingAdapter__watchSetting___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 2112;
      v23 = v6;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Adapter '%@' failed to setup setting '%@' for initial state with error '%@'", &v18, 0x20u);
    }
  }

  v8 = *(a1 + 48);
  v9 = HFLogForCategory(0x3EuLL);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v18 = 138412546;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Adapter '%@' is done setting up '%@'; firing watchFuture", &v18, 0x16u);
    }

    [*(a1 + 48) finishWithResult:*(a1 + 40)];
  }

  else
  {
    if (v10)
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v18 = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Adapter '%@' is done setting up '%@'!", &v18, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_teardownSetting:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(HFAccessorySettingAdapter *)self watchedSettings];
    v6 = [v4 keyPath];
    [v5 removeObjectForKey:v6];

    v7 = [(HFAccessorySettingAdapter *)self keyPathStringToFuture];
    v8 = [v4 keyPath];
    [v7 removeObjectForKey:v8];

    v9 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Adapter '%@' stopped watching for '%@'", &v12, 0x16u);
    }

    v10 = [(HFAccessorySettingAdapter *)self _endMonitoringSettingsKeyPath:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reportUpdatedValueForSetting:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 keyPath];
  v6 = [(HFAccessorySettingAdapter *)self keyPaths];
  if ([v6 containsObject:v5])
  {
    v7 = [(HFAccessorySettingAdapter *)self watchedSettings];
    v8 = [v7 objectForKeyedSubscript:v5];
    v9 = [v8 setting];
    v10 = [v9 isEqual:v4];

    if (v10)
    {
      v11 = [(HFAccessorySettingAdapter *)self valueManager];
      v12 = [v11 valueForSetting:v4];

      v13 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v18 = 138412802;
        v19 = self;
        v20 = 2112;
        v21 = v4;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_INFO, "Adapter '%@' received update to setting '%@': %@", &v18, 0x20u);
      }

      [(HFAccessorySettingAdapter *)self homeKitSettingWasUpdated:v4 value:v12];
      v14 = [(HFAccessorySettingAdapter *)self updateHandler];

      if (v14)
      {
        v15 = [(HFAccessorySettingAdapter *)self updateHandler];
        v16 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
        (v15[2].isa)(v15, v16, v4, v12);

LABEL_10:
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v12 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = [(HFAccessorySettingAdapter *)self keyPaths];
    v18 = 138412802;
    v19 = self;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v15;
    _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "Adapter %@ does not watch for keyPath '%@'; this is a bug!  This adapter watches keypaths: %@", &v18, 0x20u);
    goto LABEL_10;
  }

LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)createDefaultHomeSettingAdapterCollectionForProfile:(id)a3
{
  v3 = a3;
  v4 = &unk_282584A38;
  v5 = v3;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  if ([v5 conformsToProtocol:v4])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6;
  if (!v7)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v11 = NSStringFromProtocol(v4);
    [v9 handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v11}];

LABEL_7:
    v8 = 0;
  }

  v12 = [v6 accessory];
  v13 = [v12 isCurrentAccessory];

  if ((v13 & 1) == 0)
  {
    NSLog(&cfstr_Hfaccessoryset_24.isa);
  }

  v14 = [v6 accessory];
  v15 = [v14 category];
  v16 = [v15 categoryType];
  v17 = [v16 isEqual:*MEMORY[0x277CCE8B0]];

  if ((v17 & 1) == 0)
  {
    NSLog(&cfstr_Hfaccessoryset_25.isa);
  }

  v18 = objc_alloc_init(HFAccessorySettingDefaultAdapterCollection);
  v19 = [[HFAccessorySettingManagedConfigurationAdapter alloc] initWithHomeKitSettingsVendor:v6 mode:1];
  [(HFAccessorySettingDefaultAdapterCollection *)v18 setManagedConfigurationAdapter:v19];

  v20 = [[HFAccessorySettingSiriLanguageAdapter alloc] initWithHomeKitSettingsVendor:v6 mode:1];
  [(HFAccessorySettingDefaultAdapterCollection *)v18 setSiriLanguageAdapter:v20];

  return v18;
}

+ (id)createDefaultHomeSettingAdapterCollectionWithoutMobileTimerAdapterForProfile:(id)a3
{
  v3 = a3;
  v4 = &unk_282584A38;
  v5 = v3;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  if ([v5 conformsToProtocol:v4])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6;
  if (!v7)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v11 = NSStringFromProtocol(v4);
    [v9 handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v11}];

LABEL_7:
    v8 = 0;
  }

  v12 = [v6 accessory];
  v13 = [v12 isCurrentAccessory];

  if ((v13 & 1) == 0)
  {
    NSLog(&cfstr_SHfaccessoryse.isa, "+[HFAccessorySettingAdapter(SoundBoardAdditions) createDefaultHomeSettingAdapterCollectionWithoutMobileTimerAdapterForProfile:]");
  }

  v14 = [v6 accessory];
  v15 = [v14 category];
  v16 = [v15 categoryType];
  v17 = [v16 isEqual:*MEMORY[0x277CCE8B0]];

  if ((v17 & 1) == 0)
  {
    NSLog(&cfstr_SHfaccessoryse_0.isa, "+[HFAccessorySettingAdapter(SoundBoardAdditions) createDefaultHomeSettingAdapterCollectionWithoutMobileTimerAdapterForProfile:]");
  }

  v18 = objc_alloc_init(HFAccessorySettingDefaultAdapterCollection);
  v19 = [[HFAccessorySettingManagedConfigurationAdapter alloc] initWithHomeKitSettingsVendor:v6 mode:1];
  [(HFAccessorySettingDefaultAdapterCollection *)v18 setManagedConfigurationAdapter:v19];

  v20 = [[HFAccessorySettingSiriLanguageAdapter alloc] initWithHomeKitSettingsVendor:v6 mode:1];
  [(HFAccessorySettingDefaultAdapterCollection *)v18 setSiriLanguageAdapter:v20];

  return v18;
}

@end