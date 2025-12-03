@interface HFAccessorySettingAdapter
+ (id)createDefaultHomeSettingAdapterCollectionForProfile:(id)profile;
+ (id)createDefaultHomeSettingAdapterCollectionWithoutMobileTimerAdapterForProfile:(id)profile;
- (BOOL)_setupKeyPaths;
- (BOOL)_updateRootAccessorySettings;
- (BOOL)_updateRootAccessorySettingsIfNeeded;
- (HFAccessorySettingAdapter)init;
- (HFAccessorySettingAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths mode:(unint64_t)mode updateHandler:(id)handler;
- (HFHomeKitSettingsValueManager)valueManager;
- (HMHome)home;
- (id)_missingKeyPaths;
- (id)settingForKeyPath:(id)path;
- (id)settingWatchFutureForKeyPath:(id)path;
- (id)updateSetting:(id)setting value:(id)value;
- (id)updateSettingWithKeyPath:(id)path value:(id)value;
- (void)_reportUpdatedValueForSetting:(id)setting;
- (void)_setupMissingKeyPaths;
- (void)_tearDownKeyPaths;
- (void)_teardownSetting:(id)setting;
- (void)_watchSetting:(id)setting;
- (void)mediaObject:(id)object didUpdateSettings:(id)settings;
- (void)settings:(id)settings didUpdateForIdentifier:(id)identifier keyPath:(id)path;
- (void)settings:(id)settings didWriteValueForSettings:(id)forSettings failedSettings:(id)failedSettings homeKitObjectIdentifiers:(id)identifiers;
- (void)settings:(id)settings willWriteValueForSettings:(id)forSettings;
- (void)settingsDidUpdate:(id)update;
@end

@implementation HFAccessorySettingAdapter

- (HFAccessorySettingAdapter)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_keyPaths_mode_updateHandler_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingAdapter.m" lineNumber:93 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingAdapter init]", v5}];

  return 0;
}

- (HFAccessorySettingAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths mode:(unint64_t)mode updateHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  vendorCopy = vendor;
  pathsCopy = paths;
  handlerCopy = handler;
  if (vendorCopy)
  {
    if (pathsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingAdapter.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"homeKitSettingsVendor"}];

    if (pathsCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingAdapter.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"keyPaths"}];

LABEL_3:
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v32.receiver = self;
  v32.super_class = HFAccessorySettingAdapter;
  v15 = [(HFAccessorySettingAdapter *)&v32 init];
  v16 = v15;
  if (v15)
  {
    v15->_mode = mode;
    v17 = [handlerCopy copy];
    updateHandler = v16->_updateHandler;
    v16->_updateHandler = v17;

    objc_storeStrong(&v16->_homeKitSettingsVendor, vendor);
    hf_settingsValueManager = [vendorCopy hf_settingsValueManager];
    valueManager = v16->_valueManager;
    v16->_valueManager = hf_settingsValueManager;

    v21 = [pathsCopy copy];
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
      v34 = pathsCopy;
      _os_log_impl(&dword_20D9BF000, v27, OS_LOG_TYPE_DEFAULT, "init HFAccessorySettingAdapter with keyPaths: %@", buf, 0xCu);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)updateSettingWithKeyPath:(id)path value:(id)value
{
  valueCopy = value;
  v7 = [(HFAccessorySettingAdapter *)self settingWatchFutureForKeyPath:path];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__HFAccessorySettingAdapter_updateSettingWithKeyPath_value___block_invoke;
  v11[3] = &unk_277DF5740;
  v11[4] = self;
  v12 = valueCopy;
  v8 = valueCopy;
  v9 = [v7 flatMap:v11];

  return v9;
}

- (id)settingWatchFutureForKeyPath:(id)path
{
  v45 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingAdapter.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  keyPaths = [(HFAccessorySettingAdapter *)self keyPaths];
  v7 = [keyPaths containsObject:pathCopy];

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
      v42 = pathCopy;
      _os_log_debug_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEBUG, "(%@/%@) Checking to see if we already have setting for keyPath '%@'...", buf, 0x20u);
    }

    watchedSettings = [(HFAccessorySettingAdapter *)self watchedSettings];
    pathCopy = [watchedSettings objectForKey:pathCopy];

    if (pathCopy && ([pathCopy setting], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v13 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = NSStringFromSelector(a2);
        setting = [pathCopy setting];
        *buf = 138413058;
        v38 = v33;
        v39 = 2112;
        v40 = v34;
        v41 = 2112;
        v42 = pathCopy;
        v43 = 2112;
        v44 = setting;
        _os_log_debug_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEBUG, "(%@/%@) Setting '%@' is something we're watching for already! Returning: '%@'", buf, 0x2Au);
      }

      v14 = MEMORY[0x277D2C900];
      setting2 = [pathCopy setting];
      v16 = [v14 futureWithResult:setting2];
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
        v42 = pathCopy;
        _os_log_debug_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEBUG, "(%@/%@) Setting '%@' is something we're watching for, but don't have a setting yet.  Returning a future.", buf, 0x20u);
      }

      setting2 = [(HFAccessorySettingAdapter *)self keyPathStringToFuture];
      v16 = [setting2 na_objectForKey:pathCopy withDefaultValue:&__block_literal_global_123];
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
      keyPaths2 = [(HFAccessorySettingAdapter *)self keyPaths];
      *buf = 138413058;
      v38 = v26;
      v39 = 2112;
      v40 = v27;
      v41 = 2112;
      v42 = pathCopy;
      v43 = 2112;
      v44 = keyPaths2;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "(%@/%@) Error; '%@' isn't part of watched keyPaths '%@'", buf, 0x2Au);
    }

    v17 = MEMORY[0x277D2C900];
    pathCopy = [MEMORY[0x277CCA9B8] hf_errorWithCode:7 descriptionFormat:@"Could not find accessory setting for keyPath: %@", pathCopy];
    v18 = [v17 futureWithError:pathCopy];
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
  homeKitSettingsVendor = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
  hf_home = [homeKitSettingsVendor hf_home];

  return hf_home;
}

- (HFHomeKitSettingsValueManager)valueManager
{
  valueManager = self->_valueManager;
  if (!valueManager)
  {
    homeKitSettingsVendor = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
    hf_settingsValueManager = [homeKitSettingsVendor hf_settingsValueManager];
    v6 = self->_valueManager;
    self->_valueManager = hf_settingsValueManager;

    valueManager = self->_valueManager;
  }

  v7 = valueManager;

  return v7;
}

- (id)updateSetting:(id)setting value:(id)value
{
  v27[3] = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  valueCopy = value;
  valueManager = [(HFAccessorySettingAdapter *)self valueManager];
  v9 = valueManager;
  if (valueManager)
  {
    v10 = [valueManager changeValueForSetting:settingCopy toValue:valueCopy];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __49__HFAccessorySettingAdapter_updateSetting_value___block_invoke;
    v23[3] = &unk_277DF5788;
    v24 = settingCopy;
    v25 = valueCopy;
    v11 = [v10 addCompletionBlock:v23];

    v12 = v24;
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    v14 = MEMORY[0x277CCA9B8];
    if (settingCopy)
    {
      v15 = settingCopy;
    }

    else
    {
      v15 = @"(null)";
    }

    v26[0] = @"setting";
    v26[1] = @"value";
    if (valueCopy)
    {
      v16 = valueCopy;
    }

    else
    {
      v16 = @"(null)";
    }

    v27[0] = v15;
    v27[1] = v16;
    v26[2] = @"settings";
    settings = [(HFAccessorySettingAdapter *)self settings];
    v12 = settings;
    if (settings)
    {
      v18 = settings;
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

- (id)settingForKeyPath:(id)path
{
  pathCopy = path;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(HFAccessorySettingAdapter *)self _updateRootAccessorySettingsIfNeeded];
  watchedSettings = [(HFAccessorySettingAdapter *)self watchedSettings];
  v6 = [watchedSettings objectForKeyedSubscript:pathCopy];

  setting = [v6 setting];

  return setting;
}

- (void)settings:(id)settings willWriteValueForSettings:(id)forSettings
{
  v26 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  forSettingsCopy = forSettings;
  v9 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 138413058;
    selfCopy = self;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = settingsCopy;
    v24 = 2112;
    v25 = forSettingsCopy;
    _os_log_debug_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEBUG, "%@:%@ settings %@, settingsSet %@", buf, 0x2Au);
  }

  [(HFAccessorySettingAdapter *)self _updateRootAccessorySettingsIfNeeded];
  keyPaths = [(HFAccessorySettingAdapter *)self keyPaths];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__HFAccessorySettingAdapter_settings_willWriteValueForSettings___block_invoke;
  v16[3] = &unk_277DF57B0;
  v17 = keyPaths;
  v11 = keyPaths;
  v12 = [forSettingsCopy na_filter:v16];

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

- (void)settings:(id)settings didWriteValueForSettings:(id)forSettings failedSettings:(id)failedSettings homeKitObjectIdentifiers:(id)identifiers
{
  v32 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  forSettingsCopy = forSettings;
  failedSettingsCopy = failedSettings;
  v13 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v18 = NSStringFromSelector(a2);
    *buf = 138413314;
    selfCopy = self;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = settingsCopy;
    v28 = 2112;
    v29 = forSettingsCopy;
    v30 = 2112;
    v31 = failedSettingsCopy;
    _os_log_debug_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEBUG, "%@:%@ settings %@, didWrite %@, failedWrite %@", buf, 0x34u);
  }

  [(HFAccessorySettingAdapter *)self _updateRootAccessorySettingsIfNeeded];
  keyPaths = [(HFAccessorySettingAdapter *)self keyPaths];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __103__HFAccessorySettingAdapter_settings_didWriteValueForSettings_failedSettings_homeKitObjectIdentifiers___block_invoke;
  v20[3] = &unk_277DF57B0;
  v21 = keyPaths;
  v15 = keyPaths;
  v16 = [failedSettingsCopy na_filter:v20];

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

- (void)settings:(id)settings didUpdateForIdentifier:(id)identifier keyPath:(id)path
{
  v16 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = pathCopy;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Got settings:didUpdateForIdentifier:keyPath: callback for keyPath '%@'", &v12, 0xCu);
  }

  v8 = [(HFAccessorySettingAdapter *)self settingForKeyPath:pathCopy];
  v9 = HFLogForCategory(0x3EuLL);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = pathCopy;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Found changed setting:%@ for keyPath: %@", &v12, 0x16u);
    }

    [(HFAccessorySettingAdapter *)self _reportUpdatedValueForSetting:v8];
  }

  else
  {
    if (v10)
    {
      v12 = 138412290;
      v13 = pathCopy;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Cannot find changed setting for keyPath: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)settingsDidUpdate:(id)update
{
  v46 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  homeKitSettingsVendor = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
  settings = [homeKitSettingsVendor settings];

  if (settings == updateCopy)
  {
    settings2 = [(HFAccessorySettingAdapter *)self settings];

    if (settings2 != updateCopy)
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
        v16 = [updateCopy hf_accessorySettingAtKeyPath:v13];

        v17 = HFLogForCategory(0x3EuLL);
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
        if (v16)
        {
          v19 = updateCopy;
          if (v18)
          {
            *buf = v33;
            v42 = v15;
            v43 = 2112;
            v44 = v13;
            _os_log_debug_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEBUG, "Found watched setting '%@' @ keyPath '%@'", buf, 0x16u);
          }

          settings3 = [(HFAccessorySettingAdapter *)self settings];
          v21 = [_HFObservedAccessorySettingState stateWithSettings:settings3 forSetting:v15];

          watchedSettings = [(HFAccessorySettingAdapter *)self watchedSettings];
          keyPath = [v15 keyPath];
          v24 = [watchedSettings objectForKeyedSubscript:keyPath];
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

            watchedSettings2 = [(HFAccessorySettingAdapter *)self watchedSettings];
            keyPath2 = [v15 keyPath];
            [watchedSettings2 setObject:v21 forKey:keyPath2];

            [(HFAccessorySettingAdapter *)self _reportUpdatedValueForSetting:v15];
          }

          updateCopy = v19;
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

        settings4 = [(HFAccessorySettingAdapter *)self settings];
        v15 = [settings4 hf_accessorySettingAtKeyPath:v13];

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

- (void)mediaObject:(id)object didUpdateSettings:(id)settings
{
  objectCopy = object;
  homeKitSettingsVendor = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
  v7 = [homeKitSettingsVendor isEqual:objectCopy];

  if (v7)
  {

    [(HFAccessorySettingAdapter *)self _updateRootAccessorySettingsIfNeeded];
  }
}

- (BOOL)_updateRootAccessorySettingsIfNeeded
{
  selfCopy = self;
  homeKitSettingsVendor = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
  settings = [homeKitSettingsVendor settings];

  if (settings)
  {
    v5 = objc_autoreleasePoolPush();
    settings2 = [(HFAccessorySettingAdapter *)selfCopy settings];
    v7 = [settings2 isEqual:settings];

    if (v7)
    {
      _missingKeyPaths = [(HFAccessorySettingAdapter *)selfCopy _missingKeyPaths];
      v9 = [_missingKeyPaths count];

      if (v9)
      {
        [(HFAccessorySettingAdapter *)selfCopy _setupMissingKeyPaths];
      }
    }

    else
    {
      LOBYTE(selfCopy) = [(HFAccessorySettingAdapter *)selfCopy _updateRootAccessorySettings];
    }

    objc_autoreleasePoolPop(v5);
    v11 = (v7 ^ 1) & selfCopy;
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
  homeKitSettingsVendor = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
  settings = [homeKitSettingsVendor settings];

  v5 = HFLogForCategory(0x3EuLL);
  v6 = v5;
  if (settings)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      homeKitSettingsVendor2 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
      settings2 = [(HFAccessorySettingAdapter *)self settings];
      v12 = 138413058;
      v13 = homeKitSettingsVendor2;
      v14 = 2112;
      selfCopy = self;
      v16 = 2112;
      v17 = settings;
      v18 = 2112;
      v19 = settings2;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Cycling settings object for homeKitSettingsVendor %@ / adapter %@ to settings '%@' from settings '%@'", &v12, 0x2Au);
    }

    [(HFAccessorySettingAdapter *)self _tearDownKeyPaths];
    objc_storeStrong(&self->_settings, settings);
    _setupKeyPaths = [(HFAccessorySettingAdapter *)self _setupKeyPaths];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Settings aren't setup yet; aborting cycling settings...", &v12, 2u);
    }

    _setupKeyPaths = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return _setupKeyPaths;
}

- (BOOL)_setupKeyPaths
{
  v28 = *MEMORY[0x277D85DE8];
  settings = [(HFAccessorySettingAdapter *)self settings];

  if (settings)
  {
    v4 = objc_opt_new();
    [(HFAccessorySettingAdapter *)self setWatchedSettings:v4];

    v5 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      keyPaths = [(HFAccessorySettingAdapter *)self keyPaths];
      *buf = 138412546;
      selfCopy2 = self;
      v26 = 2112;
      v27 = keyPaths;
      _os_log_debug_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEBUG, "Setting up adapter '%@' to watch keypaths '%@'", buf, 0x16u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    keyPaths2 = [(HFAccessorySettingAdapter *)self keyPaths];
    v7 = [keyPaths2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(keyPaths2);
          }

          v11 = *(*(&v19 + 1) + 8 * v10);
          settings2 = [(HFAccessorySettingAdapter *)self settings];
          v13 = [settings2 hf_accessorySettingAtKeyPath:v11];

          if (v13)
          {
            [(HFAccessorySettingAdapter *)self _watchSetting:v13];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [keyPaths2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    v14 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      watchedSettings = [(HFAccessorySettingAdapter *)self watchedSettings];
      *buf = 138412546;
      selfCopy2 = self;
      v26 = 2112;
      v27 = watchedSettings;
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
  return settings != 0;
}

- (id)_missingKeyPaths
{
  v3 = MEMORY[0x277CBEB98];
  watchedSettings = [(HFAccessorySettingAdapter *)self watchedSettings];
  allKeys = [watchedSettings allKeys];
  v6 = [v3 setWithArray:allKeys];

  keyPaths = [(HFAccessorySettingAdapter *)self keyPaths];
  v8 = [keyPaths na_setByRemovingObjectsFromSet:v6];

  return v8;
}

- (void)_setupMissingKeyPaths
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  settings = [(HFAccessorySettingAdapter *)self settings];

  if (!settings)
  {
    _missingKeyPaths = HFLogForCategory(0x3EuLL);
    if (!os_log_type_enabled(_missingKeyPaths, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    *buf = 0;
    v9 = "Cannot setup missing keypaths; there are no accessory settings yet!";
    goto LABEL_6;
  }

  settings2 = [(HFAccessorySettingAdapter *)self settings];
  rootGroup = [settings2 rootGroup];
  groups = [rootGroup groups];
  if (![groups count])
  {
    settings3 = [(HFAccessorySettingAdapter *)self settings];
    rootGroup2 = [settings3 rootGroup];
    settings4 = [rootGroup2 settings];
    v13 = [settings4 count];

    if (v13)
    {
      goto LABEL_8;
    }

    _missingKeyPaths = HFLogForCategory(0x3EuLL);
    if (!os_log_type_enabled(_missingKeyPaths, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    *buf = 0;
    v9 = "Cannot setup missing keypaths; Accessory Settings haven't finished populating yet!";
LABEL_6:
    _os_log_error_impl(&dword_20D9BF000, _missingKeyPaths, OS_LOG_TYPE_ERROR, v9, buf, 2u);
    goto LABEL_37;
  }

LABEL_8:
  _missingKeyPaths = [(HFAccessorySettingAdapter *)self _missingKeyPaths];
  v14 = [_missingKeyPaths count];
  v15 = HFLogForCategory(0x3EuLL);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    v36 = v3;
    if (v16)
    {
      *buf = 138412546;
      selfCopy6 = self;
      v43 = 2112;
      v44 = _missingKeyPaths;
      _os_log_debug_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEBUG, "Setting up adapter '%@' to watch any missing keypaths: '%@'", buf, 0x16u);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = _missingKeyPaths;
    v17 = _missingKeyPaths;
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
          settings5 = [(HFAccessorySettingAdapter *)self settings];
          v25 = [settings5 hf_accessorySettingAtKeyPath:v22];

          if (v25)
          {
            watchedSettings = [(HFAccessorySettingAdapter *)self watchedSettings];
            keyPath = [v25 keyPath];
            v28 = [watchedSettings objectForKey:keyPath];

            v29 = HFLogForCategory(0x3EuLL);
            v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
            if (v28)
            {
              if (v30)
              {
                *buf = 138412546;
                selfCopy6 = self;
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
                selfCopy6 = self;
                v43 = 2112;
                v44 = v25;
                _os_log_debug_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_DEBUG, "Adapter '%@' is setting up missed setting '%@'", buf, 0x16u);
              }

              [(HFAccessorySettingAdapter *)self _watchSetting:v25];
              v32 = HFLogForCategory(0x3EuLL);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                selfCopy6 = self;
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
              selfCopy6 = self;
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
      watchedSettings2 = [(HFAccessorySettingAdapter *)self watchedSettings];
      *buf = 138412802;
      selfCopy6 = self;
      v43 = 2112;
      v44 = v17;
      v45 = 2112;
      v46 = watchedSettings2;
      _os_log_debug_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEBUG, "Adapter '%@' setup missed keypaths '%@' with settings '%@'", buf, 0x20u);
    }

    _missingKeyPaths = v35;
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
  watchedSettings = [(HFAccessorySettingAdapter *)self watchedSettings];
  v4 = [watchedSettings copy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__HFAccessorySettingAdapter__tearDownKeyPaths__block_invoke;
  v8[3] = &unk_277DF5800;
  v8[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  watchedSettings2 = [(HFAccessorySettingAdapter *)self watchedSettings];
  v6 = [watchedSettings2 count];

  if (v6)
  {
    NSLog(&cfstr_AfterTeardownT.isa);
  }

  watchedSettings3 = [(HFAccessorySettingAdapter *)self watchedSettings];
  [watchedSettings3 removeAllObjects];
}

void __46__HFAccessorySettingAdapter__tearDownKeyPaths__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 setting];
  [v3 _teardownSetting:v4];
}

- (void)_watchSetting:(id)setting
{
  v27 = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  if (settingCopy)
  {
    v5 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v25 = 2112;
      v26 = settingCopy;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Adapter '%@' started watching for '%@'", buf, 0x16u);
    }

    keyPathStringToFuture = [(HFAccessorySettingAdapter *)self keyPathStringToFuture];
    keyPath = [settingCopy keyPath];
    v8 = [keyPathStringToFuture objectForKey:keyPath];

    settings = [(HFAccessorySettingAdapter *)self settings];
    v10 = [_HFObservedAccessorySettingState stateWithSettings:settings forSetting:settingCopy];

    watchedSettings = [(HFAccessorySettingAdapter *)self watchedSettings];
    keyPath2 = [settingCopy keyPath];
    [watchedSettings na_safeSetObject:v10 forKey:keyPath2];

    keyPathStringToFuture2 = [(HFAccessorySettingAdapter *)self keyPathStringToFuture];
    keyPath3 = [settingCopy keyPath];
    [keyPathStringToFuture2 removeObjectForKey:keyPath3];

    v15 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v25 = 2112;
      v26 = settingCopy;
      _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Adapter '%@' is setting up '%@' for first use...", buf, 0x16u);
    }

    v16 = [(HFAccessorySettingAdapter *)self _beginMonitoringSettingsKeyPath:settingCopy];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __43__HFAccessorySettingAdapter__watchSetting___block_invoke;
    v20[3] = &unk_277DF3180;
    v20[4] = self;
    v21 = settingCopy;
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

- (void)_teardownSetting:(id)setting
{
  v16 = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  if (settingCopy)
  {
    watchedSettings = [(HFAccessorySettingAdapter *)self watchedSettings];
    keyPath = [settingCopy keyPath];
    [watchedSettings removeObjectForKey:keyPath];

    keyPathStringToFuture = [(HFAccessorySettingAdapter *)self keyPathStringToFuture];
    keyPath2 = [settingCopy keyPath];
    [keyPathStringToFuture removeObjectForKey:keyPath2];

    v9 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      selfCopy = self;
      v14 = 2112;
      v15 = settingCopy;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Adapter '%@' stopped watching for '%@'", &v12, 0x16u);
    }

    v10 = [(HFAccessorySettingAdapter *)self _endMonitoringSettingsKeyPath:settingCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reportUpdatedValueForSetting:(id)setting
{
  v24 = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  keyPath = [settingCopy keyPath];
  keyPaths = [(HFAccessorySettingAdapter *)self keyPaths];
  if ([keyPaths containsObject:keyPath])
  {
    watchedSettings = [(HFAccessorySettingAdapter *)self watchedSettings];
    v8 = [watchedSettings objectForKeyedSubscript:keyPath];
    setting = [v8 setting];
    v10 = [setting isEqual:settingCopy];

    if (v10)
    {
      valueManager = [(HFAccessorySettingAdapter *)self valueManager];
      v12 = [valueManager valueForSetting:settingCopy];

      v13 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v18 = 138412802;
        selfCopy2 = self;
        v20 = 2112;
        v21 = settingCopy;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_INFO, "Adapter '%@' received update to setting '%@': %@", &v18, 0x20u);
      }

      [(HFAccessorySettingAdapter *)self homeKitSettingWasUpdated:settingCopy value:v12];
      updateHandler = [(HFAccessorySettingAdapter *)self updateHandler];

      if (updateHandler)
      {
        updateHandler2 = [(HFAccessorySettingAdapter *)self updateHandler];
        homeKitSettingsVendor = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
        (updateHandler2[2].isa)(updateHandler2, homeKitSettingsVendor, settingCopy, v12);

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
    updateHandler2 = [(HFAccessorySettingAdapter *)self keyPaths];
    v18 = 138412802;
    selfCopy2 = self;
    v20 = 2112;
    v21 = keyPath;
    v22 = 2112;
    v23 = updateHandler2;
    _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "Adapter %@ does not watch for keyPath '%@'; this is a bug!  This adapter watches keypaths: %@", &v18, 0x20u);
    goto LABEL_10;
  }

LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)createDefaultHomeSettingAdapterCollectionForProfile:(id)profile
{
  profileCopy = profile;
  v4 = &unk_282584A38;
  v5 = profileCopy;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v11 = NSStringFromProtocol(v4);
    [currentHandler handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v11}];

LABEL_7:
    v8 = 0;
  }

  accessory = [v6 accessory];
  isCurrentAccessory = [accessory isCurrentAccessory];

  if ((isCurrentAccessory & 1) == 0)
  {
    NSLog(&cfstr_Hfaccessoryset_24.isa);
  }

  accessory2 = [v6 accessory];
  category = [accessory2 category];
  categoryType = [category categoryType];
  v17 = [categoryType isEqual:*MEMORY[0x277CCE8B0]];

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

+ (id)createDefaultHomeSettingAdapterCollectionWithoutMobileTimerAdapterForProfile:(id)profile
{
  profileCopy = profile;
  v4 = &unk_282584A38;
  v5 = profileCopy;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v11 = NSStringFromProtocol(v4);
    [currentHandler handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v11}];

LABEL_7:
    v8 = 0;
  }

  accessory = [v6 accessory];
  isCurrentAccessory = [accessory isCurrentAccessory];

  if ((isCurrentAccessory & 1) == 0)
  {
    NSLog(&cfstr_SHfaccessoryse.isa, "+[HFAccessorySettingAdapter(SoundBoardAdditions) createDefaultHomeSettingAdapterCollectionWithoutMobileTimerAdapterForProfile:]");
  }

  accessory2 = [v6 accessory];
  category = [accessory2 category];
  categoryType = [category categoryType];
  v17 = [categoryType isEqual:*MEMORY[0x277CCE8B0]];

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