@interface HFHomeKitAccessorySettingsDataSource
- (HFHomeKitAccessorySettingsDataSource)initWithHomeManager:(id)a3;
- (id)hf_defaultSettingsWithHomeIdentifier:(id)a3 accessoryIdentifier:(id)a4 keyPaths:(id)a5;
- (id)hf_localizedTitleForKeyPath:(id)a3;
- (void)accessorySettingsDataSource:(id)a3 didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a4 settings:(id)a5;
- (void)addObserver:(id)a3;
- (void)hf_fetchAccessorySettingsWithHomeIdentifier:(id)a3 accessoryIdentifier:(id)a4 keyPaths:(id)a5 completionHandler:(id)a6;
- (void)hf_subscribeToAccessorySettingsWithHomeIdentifier:(id)a3 accessoryIdentifier:(id)a4 keyPaths:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7;
- (void)removeObserver:(id)a3;
- (void)updateSettingValue:(id)a3 forKeyPath:(id)a4 accessoryIdentifier:(id)a5;
@end

@implementation HFHomeKitAccessorySettingsDataSource

- (HFHomeKitAccessorySettingsDataSource)initWithHomeManager:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HFHomeKitAccessorySettingsDataSource;
  v5 = [(HFHomeKitAccessorySettingsDataSource *)&v11 init];
  if (v5)
  {
    v6 = [v4 hf_accessorySettingsDataSource];
    dataSource = v5->_dataSource;
    v5->_dataSource = v6;

    [(HMAccessorySettingsDataSource *)v5->_dataSource setDelegate:v5];
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = v8;
  }

  return v5;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitAccessorySettingsDataSource *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFHomeKitAccessorySettingsDataSource *)self observers];
  [v6 removeObject:v5];

  v7 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = [(HFHomeKitAccessorySettingsDataSource *)self observers];
    v11 = 138413058;
    v12 = self;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Removed observer = [%@]. Remaining observers = [%@]", &v11, 0x2Au);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateSettingValue:(id)a3 forKeyPath:(id)a4 accessoryIdentifier:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(HFHomeKitAccessorySettingsDataSource *)self observers];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 updateSettingValue:v8 forKeyPath:v9 accessoryIdentifier:v10];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)hf_localizedTitleForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeKitAccessorySettingsDataSource *)self dataSource];
  v6 = [v5 localizedTitleForKeyPath:v4];

  return v6;
}

- (void)hf_subscribeToAccessorySettingsWithHomeIdentifier:(id)a3 accessoryIdentifier:(id)a4 keyPaths:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7
{
  v31 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = NSStringFromSelector(a2);
    v21 = 138413314;
    v22 = self;
    v23 = 2112;
    v24 = v18;
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@ Subscribing to setting for homeIdentifier %@ accessoryIdentifier %@ keyPaths %@", &v21, 0x34u);
  }

  v19 = [(HFHomeKitAccessorySettingsDataSource *)self dataSource];
  [v19 subscribeToAccessorySettingsWithHomeIdentifier:v13 accessoryIdentifier:v14 keyPaths:v15 options:a6 completionHandler:v16];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)hf_fetchAccessorySettingsWithHomeIdentifier:(id)a3 accessoryIdentifier:(id)a4 keyPaths:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(HFHomeKitAccessorySettingsDataSource *)self dataSource];
  [v14 fetchAccessorySettingsWithHomeIdentifier:v13 accessoryIdentifier:v12 keyPaths:v11 completionHandler:v10];
}

- (id)hf_defaultSettingsWithHomeIdentifier:(id)a3 accessoryIdentifier:(id)a4 keyPaths:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HFHomeKitAccessorySettingsDataSource *)self dataSource];
  v12 = [v11 defaultSettingsWithHomeIdentifier:v10 accessoryIdentifier:v9 keyPaths:v8];

  return v12;
}

- (void)accessorySettingsDataSource:(id)a3 didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a4 settings:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(HFHomeKitAccessorySettingsDataSource *)self observers];
  v11 = [v10 copy];

  v12 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 138413314;
    v27 = self;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    v34 = 2112;
    v35 = v11;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@ Settings updated for accessoryIdentifier [%@] setting [%@]. Notifying observers [%@]", buf, 0x34u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * v18);
        if (objc_opt_respondsToSelector())
        {
          [v19 didReceiveSettingsUpdatesForAccessoryWithIdentifier:v8 settings:{v9, v21}];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end