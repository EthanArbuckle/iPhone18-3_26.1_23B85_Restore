@interface CSLPRFPerApplicationSettingsModel
- (CSLPRFPerApplicationSettingsCustomizationDelegate)customizationDelegate;
- (CSLPRFPerApplicationSettingsModel)initWithApplicationLibrary:(id)a3 perApplicationSettingsClass:(Class)a4;
- (NSArray)allApplicationSettings;
- (id)_globalSettingsForCustomizedSettings:(id)a3;
- (id)_lock_customizedSettingsForBundleIdentifier:(id)a3;
- (id)bundleIdentifiersWithSettings;
- (id)globalSettings;
- (id)resolvedSettingsForApplication:(id)a3;
- (id)resolvedSettingsForBundleIdentifier:(id)a3;
- (id)settingsForApplication:(id)a3;
- (id)settingsForBundleIdentifier:(id)a3;
- (id)settingsObjectForBundleId:(id)a3 customizedSettings:(id)a4 existingSettings:(id)a5;
- (void)_processAddedOrUpdatedApplications:(id)a3;
- (void)applicationLibrary:(id)a3 didRemoveApplications:(id)a4;
- (void)didUpdateSettings:(id)a3;
- (void)twoWaySyncSettingDidUpdate:(id)a3;
@end

@implementation CSLPRFPerApplicationSettingsModel

- (CSLPRFPerApplicationSettingsCustomizationDelegate)customizationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_customizationDelegate);

  return WeakRetained;
}

- (void)didUpdateSettings:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CSLPRFTwoWaySyncSetting *)self->_syncedSettings safeValueOfType:objc_opt_class()];
  v6 = v5;
  v7 = MEMORY[0x277CBEC10];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v4 identifier];
  v10 = [v8 bs_safeObjectForKey:v9 ofType:{-[objc_class serializationClass](self->_perApplicationSettingsClass, "serializationClass")}];
  if ([v4 hasCustomSetting])
  {
    v11 = [v4 serialize];
  }

  else
  {
    v11 = 0;
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    v12 = [v8 mutableCopy];
    v13 = v12;
    if (v11)
    {
      [v12 setValue:v11 forKey:v9];
    }

    else
    {
      [v12 removeObjectForKey:v9];
    }

    syncedSettings = self->_syncedSettings;
    v15 = [v13 copy];
    [(CSLPRFTwoWaySyncSetting *)syncedSettings setValue:v15];

    if ([v4 isGlobalDefault])
    {
      observationHelper = self->_observationHelper;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __55__CSLPRFPerApplicationSettingsModel_didUpdateSettings___block_invoke;
      v23[3] = &unk_278744D08;
      v23[4] = self;
      v24 = v4;
      [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v23];
    }

    else
    {
      v25[0] = v4;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      v18 = self->_observationHelper;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __55__CSLPRFPerApplicationSettingsModel_didUpdateSettings___block_invoke_2;
      v21[3] = &unk_278744D08;
      v21[4] = self;
      v22 = v17;
      v19 = v17;
      [(CSLPRFObservationHelper *)v18 notifyObserversWithBlock:v21];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_globalSettingsForCustomizedSettings:(id)a3
{
  perApplicationSettingsClass = self->_perApplicationSettingsClass;
  v5 = a3;
  v6 = [(objc_class *)perApplicationSettingsClass globalDefaultIdentifer];
  v7 = [v5 bs_safeObjectForKey:v6 ofType:{-[objc_class serializationClass](self->_perApplicationSettingsClass, "serializationClass")}];

  v8 = [(objc_class *)self->_perApplicationSettingsClass globalSettingsWithSerialization:v7 delegate:self];

  return v8;
}

- (void)twoWaySyncSettingDidUpdate:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = [(CSLPRFTwoWaySyncSetting *)self->_syncedSettings safeValueOfType:objc_opt_class()];
  os_unfair_lock_lock(&self->_lock);
  v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_lock_settings, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v46 + 1) + 8 * i);
        v11 = [(objc_class *)self->_perApplicationSettingsClass globalDefaultIdentifer];
        v12 = [v10 isEqualToString:v11];

        if ((v12 & 1) == 0)
        {
          v13 = [(NSMutableDictionary *)self->_lock_settings objectForKey:v10];
          if (!v13)
          {
            v14 = [(CSLPRFPerApplicationSettingsModel *)self settingsObjectForBundleId:v10 customizedSettings:v4 existingSettings:0];
            if (([0 isEqual:v14] & 1) == 0)
            {
              [v37 addObject:v14];
            }

            lock_settings = self->_lock_settings;
            v16 = [v14 identifier];
            [(NSMutableDictionary *)lock_settings setObject:v14 forKey:v16];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v7);
  }

  v17 = [(NSMutableDictionary *)self->_lock_settings allValues];
  v18 = [v17 copy];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v42 + 1) + 8 * j);
        v25 = [v24 identifier];
        v26 = [v4 bs_safeObjectForKey:v25 ofType:{-[objc_class serializationClass](self->_perApplicationSettingsClass, "serializationClass")}];

        perApplicationSettingsClass = self->_perApplicationSettingsClass;
        v28 = [v24 application];
        v29 = [(objc_class *)perApplicationSettingsClass settingsForApplication:v28 withSerialization:v26 delegate:self];

        if (([v29 isEqual:v24] & 1) == 0)
        {
          [v37 addObject:v29];
        }

        v30 = self->_lock_settings;
        v31 = [v29 identifier];
        [(NSMutableDictionary *)v30 setObject:v29 forKey:v31];
      }

      v21 = [v19 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v21);
  }

  v32 = self->_lock_globalSettings;
  v33 = [(CSLPRFPerApplicationSettingsModel *)self _globalSettingsForCustomizedSettings:v4];
  objc_storeStrong(&self->_lock_globalSettings, v33);
  os_unfair_lock_unlock(&self->_lock);
  if ([v37 count])
  {
    observationHelper = self->_observationHelper;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __64__CSLPRFPerApplicationSettingsModel_twoWaySyncSettingDidUpdate___block_invoke;
    v40[3] = &unk_278744D08;
    v40[4] = self;
    v41 = v37;
    [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v40];
  }

  if (([v33 isEqual:v32] & 1) == 0)
  {
    v35 = self->_observationHelper;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __64__CSLPRFPerApplicationSettingsModel_twoWaySyncSettingDidUpdate___block_invoke_2;
    v38[3] = &unk_278744D08;
    v38[4] = self;
    v39 = v33;
    [(CSLPRFObservationHelper *)v35 notifyObserversWithBlock:v38];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)settingsObjectForBundleId:(id)a3 customizedSettings:(id)a4 existingSettings:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 application];
  if (!v10)
  {
    v10 = [CSLPRFPerApplicationSettings fakeApplicationWithIdentifier:v8];
  }

  v11 = [v9 bs_safeObjectForKey:v8 ofType:{-[objc_class serializationClass](self->_perApplicationSettingsClass, "serializationClass")}];

  v12 = [(objc_class *)self->_perApplicationSettingsClass settingsForApplication:v10 withSerialization:v11 delegate:self];

  return v12;
}

- (void)applicationLibrary:(id)a3 didRemoveApplications:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NSMutableDictionary *)self->_lock_settings removeObjectForKey:*(*(&v16 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_lock);
  observationHelper = self->_observationHelper;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__CSLPRFPerApplicationSettingsModel_applicationLibrary_didRemoveApplications___block_invoke;
  v14[3] = &unk_278744D08;
  v14[4] = self;
  v15 = v6;
  v12 = v6;
  [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_processAddedOrUpdatedApplications:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CSLPRFTwoWaySyncSetting *)self->_syncedSettings safeValueOfType:objc_opt_class()];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __72__CSLPRFPerApplicationSettingsModel__processAddedOrUpdatedApplications___block_invoke;
  v52[3] = &unk_278744CE0;
  v6 = v5;
  v53 = v6;
  v54 = self;
  v38 = v4;
  v7 = [v4 bs_mapNoNulls:v52];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v36 = v7;
  v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  os_unfair_lock_lock(&self->_lock);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v39 = v6;
  v9 = [v6 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v49;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v48 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)self->_lock_settings objectForKey:v14];
        v16 = [(objc_class *)self->_perApplicationSettingsClass globalDefaultIdentifer];
        v17 = [v14 isEqualToString:v16];

        if ((v17 & 1) == 0 && !v15)
        {
          v18 = [(CSLPRFPerApplicationSettingsModel *)self settingsObjectForBundleId:v14 customizedSettings:v39 existingSettings:0];
          [v8 addObject:v18];
          lock_settings = self->_lock_settings;
          v20 = [v18 identifier];
          [(NSMutableDictionary *)lock_settings setObject:v18 forKey:v20];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v11);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v21 = v36;
  v22 = [v21 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v45;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v45 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v44 + 1) + 8 * j);
        v27 = self->_lock_settings;
        v28 = [v26 identifier];
        v29 = [(NSMutableDictionary *)v27 objectForKey:v28];

        if (v29)
        {
          v30 = v37;
        }

        else
        {
          v30 = v8;
        }

        [v30 addObject:v26];
        v31 = self->_lock_settings;
        v32 = [v26 identifier];
        [(NSMutableDictionary *)v31 setObject:v26 forKey:v32];
      }

      v23 = [v21 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v23);
  }

  os_unfair_lock_unlock(&self->_lock);
  if ([v8 count])
  {
    observationHelper = self->_observationHelper;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __72__CSLPRFPerApplicationSettingsModel__processAddedOrUpdatedApplications___block_invoke_2;
    v42[3] = &unk_278744D08;
    v42[4] = self;
    v43 = v8;
    [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v42];
  }

  if ([v37 count])
  {
    v34 = self->_observationHelper;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __72__CSLPRFPerApplicationSettingsModel__processAddedOrUpdatedApplications___block_invoke_3;
    v40[3] = &unk_278744D08;
    v40[4] = self;
    v41 = v37;
    [(CSLPRFObservationHelper *)v34 notifyObserversWithBlock:v40];
  }

  v35 = *MEMORY[0x277D85DE8];
}

id __72__CSLPRFPerApplicationSettingsModel__processAddedOrUpdatedApplications___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 bundleIdentifier];
  v6 = [v3 bs_safeObjectForKey:v5 ofType:{objc_msgSend(*(*(a1 + 40) + 16), "serializationClass")}];

  v7 = [*(*(a1 + 40) + 16) settingsForApplication:v4 withSerialization:v6 delegate:?];

  return v7;
}

- (id)bundleIdentifiersWithSettings
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_lock_settings allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)settingsForBundleIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_lock);
    v5 = [(CSLPRFPerApplicationSettingsModel *)self _lock_customizedSettingsForBundleIdentifier:v4];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)globalSettings
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v4 = self->_lock_globalSettings;
  if (!v4)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"globalSettings != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      v16 = 2048;
      v17 = self;
      v18 = 2114;
      v19 = @"CSLPRFPerApplicationSettingsModel.m";
      v20 = 1024;
      v21 = 107;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x22CEAE7E0);
  }

  v5 = v4;
  os_unfair_lock_unlock(&self->_lock);
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)settingsForApplication:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 bundleIdentifier];
  v6 = [(CSLPRFPerApplicationSettingsModel *)self _lock_customizedSettingsForBundleIdentifier:v5];

  if (!v6)
  {
    v6 = [(objc_class *)self->_perApplicationSettingsClass settingsForApplication:v4 withSerialization:0 delegate:self];
    lock_settings = self->_lock_settings;
    v8 = [v6 identifier];
    [(NSMutableDictionary *)lock_settings setObject:v6 forKey:v8];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)_lock_customizedSettingsForBundleIdentifier:(id)a3
{
  v4 = a3;
  v10 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_customizationDelegate);

  if (!WeakRetained || (v6 = objc_loadWeakRetained(&self->_customizationDelegate), v7 = -[NSMutableDictionary copy](self->_lock_settings, "copy"), [v6 settingsForBundleIdentifier:v4 fromAllSettings:v7 handled:&v10], WeakRetained = objc_claimAutoreleasedReturnValue(), v7, v6, (v10 & 1) == 0))
  {
    v8 = [(NSMutableDictionary *)self->_lock_settings objectForKey:v4];

    WeakRetained = v8;
  }

  return WeakRetained;
}

- (id)resolvedSettingsForBundleIdentifier:(id)a3
{
  v4 = [(CSLPRFPerApplicationSettingsModel *)self settingsForBundleIdentifier:a3];
  v5 = [(CSLPRFPerApplicationSettingsModel *)self globalSettings];
  if (v4)
  {
    v6 = [v4 resolvedSettingWithGlobalSettings:v5];

    v5 = v6;
  }

  return v5;
}

- (id)resolvedSettingsForApplication:(id)a3
{
  v4 = [(CSLPRFPerApplicationSettingsModel *)self settingsForApplication:a3];
  v5 = [(CSLPRFPerApplicationSettingsModel *)self globalSettings];
  if (v4)
  {
    v6 = [v4 resolvedSettingWithGlobalSettings:v5];

    v5 = v6;
  }

  return v5;
}

- (NSArray)allApplicationSettings
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_lock_settings allValues];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (CSLPRFPerApplicationSettingsModel)initWithApplicationLibrary:(id)a3 perApplicationSettingsClass:(Class)a4
{
  v7 = a3;
  v22.receiver = self;
  v22.super_class = CSLPRFPerApplicationSettingsModel;
  v8 = [(CSLPRFPerApplicationSettingsModel *)&v22 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = [MEMORY[0x277CBEB38] dictionary];
    lock_settings = v9->_lock_settings;
    v9->_lock_settings = v10;

    objc_storeStrong(&v9->_applicationLibrary, a3);
    v9->_perApplicationSettingsClass = a4;
    v12 = objc_alloc_init(CSLPRFObservationHelper);
    observationHelper = v9->_observationHelper;
    v9->_observationHelper = v12;

    v14 = [CSLPRFTwoWaySyncSetting alloc];
    v15 = [(objc_class *)a4 settingsKey];
    v16 = [(CSLPRFTwoWaySyncSetting *)v14 initWithKey:v15 defaultValue:0 notification:[(objc_class *)a4 notificationName]];
    syncedSettings = v9->_syncedSettings;
    v9->_syncedSettings = v16;

    v18 = [(CSLPRFTwoWaySyncSetting *)v9->_syncedSettings safeValueOfType:objc_opt_class()];
    v19 = [(CSLPRFPerApplicationSettingsModel *)v9 _globalSettingsForCustomizedSettings:v18];
    lock_globalSettings = v9->_lock_globalSettings;
    v9->_lock_globalSettings = v19;

    [(CSLPRFTwoWaySyncSetting *)v9->_syncedSettings setDelegate:v9];
    [(CSLPRFApplicationLibrary *)v9->_applicationLibrary addObserver:v9];
  }

  return v9;
}

@end