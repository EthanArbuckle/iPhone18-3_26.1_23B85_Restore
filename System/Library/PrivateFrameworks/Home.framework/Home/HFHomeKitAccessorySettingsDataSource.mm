@interface HFHomeKitAccessorySettingsDataSource
- (HFHomeKitAccessorySettingsDataSource)initWithHomeManager:(id)manager;
- (id)hf_defaultSettingsWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPaths:(id)paths;
- (id)hf_localizedTitleForKeyPath:(id)path;
- (void)accessorySettingsDataSource:(id)source didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings;
- (void)addObserver:(id)observer;
- (void)hf_fetchAccessorySettingsWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPaths:(id)paths completionHandler:(id)handler;
- (void)hf_subscribeToAccessorySettingsWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPaths:(id)paths options:(unint64_t)options completionHandler:(id)handler;
- (void)removeObserver:(id)observer;
- (void)updateSettingValue:(id)value forKeyPath:(id)path accessoryIdentifier:(id)identifier;
@end

@implementation HFHomeKitAccessorySettingsDataSource

- (HFHomeKitAccessorySettingsDataSource)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = HFHomeKitAccessorySettingsDataSource;
  v5 = [(HFHomeKitAccessorySettingsDataSource *)&v11 init];
  if (v5)
  {
    hf_accessorySettingsDataSource = [managerCopy hf_accessorySettingsDataSource];
    dataSource = v5->_dataSource;
    v5->_dataSource = hf_accessorySettingsDataSource;

    [(HMAccessorySettingsDataSource *)v5->_dataSource setDelegate:v5];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = weakObjectsHashTable;
  }

  return v5;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFHomeKitAccessorySettingsDataSource *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  v19 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  observers = [(HFHomeKitAccessorySettingsDataSource *)self observers];
  [observers removeObject:observerCopy];

  v7 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    observers2 = [(HFHomeKitAccessorySettingsDataSource *)self observers];
    v11 = 138413058;
    selfCopy = self;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = observerCopy;
    v17 = 2112;
    v18 = observers2;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Removed observer = [%@]. Remaining observers = [%@]", &v11, 0x2Au);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateSettingValue:(id)value forKeyPath:(id)path accessoryIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  pathCopy = path;
  identifierCopy = identifier;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  observers = [(HFHomeKitAccessorySettingsDataSource *)self observers];
  v12 = [observers countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(observers);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 updateSettingValue:valueCopy forKeyPath:pathCopy accessoryIdentifier:identifierCopy];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [observers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)hf_localizedTitleForKeyPath:(id)path
{
  pathCopy = path;
  dataSource = [(HFHomeKitAccessorySettingsDataSource *)self dataSource];
  v6 = [dataSource localizedTitleForKeyPath:pathCopy];

  return v6;
}

- (void)hf_subscribeToAccessorySettingsWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPaths:(id)paths options:(unint64_t)options completionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  accessoryIdentifierCopy = accessoryIdentifier;
  pathsCopy = paths;
  handlerCopy = handler;
  v17 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = NSStringFromSelector(a2);
    v21 = 138413314;
    selfCopy = self;
    v23 = 2112;
    v24 = v18;
    v25 = 2112;
    v26 = identifierCopy;
    v27 = 2112;
    v28 = accessoryIdentifierCopy;
    v29 = 2112;
    v30 = pathsCopy;
    _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@ Subscribing to setting for homeIdentifier %@ accessoryIdentifier %@ keyPaths %@", &v21, 0x34u);
  }

  dataSource = [(HFHomeKitAccessorySettingsDataSource *)self dataSource];
  [dataSource subscribeToAccessorySettingsWithHomeIdentifier:identifierCopy accessoryIdentifier:accessoryIdentifierCopy keyPaths:pathsCopy options:options completionHandler:handlerCopy];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)hf_fetchAccessorySettingsWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPaths:(id)paths completionHandler:(id)handler
{
  handlerCopy = handler;
  pathsCopy = paths;
  accessoryIdentifierCopy = accessoryIdentifier;
  identifierCopy = identifier;
  dataSource = [(HFHomeKitAccessorySettingsDataSource *)self dataSource];
  [dataSource fetchAccessorySettingsWithHomeIdentifier:identifierCopy accessoryIdentifier:accessoryIdentifierCopy keyPaths:pathsCopy completionHandler:handlerCopy];
}

- (id)hf_defaultSettingsWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPaths:(id)paths
{
  pathsCopy = paths;
  accessoryIdentifierCopy = accessoryIdentifier;
  identifierCopy = identifier;
  dataSource = [(HFHomeKitAccessorySettingsDataSource *)self dataSource];
  v12 = [dataSource defaultSettingsWithHomeIdentifier:identifierCopy accessoryIdentifier:accessoryIdentifierCopy keyPaths:pathsCopy];

  return v12;
}

- (void)accessorySettingsDataSource:(id)source didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings
{
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  settingsCopy = settings;
  observers = [(HFHomeKitAccessorySettingsDataSource *)self observers];
  v11 = [observers copy];

  v12 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 138413314;
    selfCopy = self;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = identifierCopy;
    v32 = 2112;
    v33 = settingsCopy;
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
          [v19 didReceiveSettingsUpdatesForAccessoryWithIdentifier:identifierCopy settings:{settingsCopy, v21}];
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