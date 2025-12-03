@interface HFStateRestorationSettings
+ (HFStateRestorationSettings)sharedInstance;
- (HFStateRestorationSettings)init;
- (NSString)selectedHomeAppTabIdentifier;
- (NSUUID)selectedHomeIdentifier;
- (NSUUID)selectedRoomIdentifierForSelectedHome;
- (id)_homeAppPreferencesValueForKey:(id)key ofClass:(Class)class;
- (id)_roomKeyForHomeIdentifier:(id)identifier;
- (id)selectedRoomIdentifierForHomeIdentifier:(id)identifier;
- (void)_reallySetSelectedHomeIdentifier:(id)identifier;
- (void)_selectedHomeDidChange;
- (void)_setHomeAppPreferencesValue:(id)value forKey:(id)key;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)saveSelectedRoomIdentifier:(id)identifier forHomeIdentifier:(id)homeIdentifier;
- (void)setSelectedHomeIdentifier:(id)identifier;
- (void)syncToNanoPrefs;
@end

@implementation HFStateRestorationSettings

+ (HFStateRestorationSettings)sharedInstance
{
  if (_MergedGlobals_259 != -1)
  {
    dispatch_once(&_MergedGlobals_259, &__block_literal_global_16_4);
  }

  v3 = qword_280E03038;

  return v3;
}

void __44__HFStateRestorationSettings_sharedInstance__block_invoke_2()
{
  v0 = objc_alloc_init(HFStateRestorationSettings);
  v1 = qword_280E03038;
  qword_280E03038 = v0;
}

- (HFStateRestorationSettings)init
{
  v14.receiver = self;
  v14.super_class = HFStateRestorationSettings;
  v2 = [(HFStateRestorationSettings *)&v14 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    objc_initWeak(&location, v2);
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __34__HFStateRestorationSettings_init__block_invoke;
    v11[3] = &unk_277DF3CC8;
    objc_copyWeak(&v12, &location);
    notify_register_dispatch("HFHomeSyncPreferencesDidChange", &v2->_notifyRegistrationToken, v5, v11);

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("HFStateRestorationSettings", v7);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v8;

    v2->_selectedHomeLock._os_unfair_lock_opaque = 0;
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __34__HFStateRestorationSettings_init__block_invoke(uint64_t a1)
{
  v2 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Received HFHomeSyncPreferencesDidChange notification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _selectedHomeDidChange];
}

- (void)dealloc
{
  notify_cancel([(HFStateRestorationSettings *)self notifyRegistrationToken]);
  v3.receiver = self;
  v3.super_class = HFStateRestorationSettings;
  [(HFStateRestorationSettings *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFStateRestorationSettings *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFStateRestorationSettings *)self observers];
  [observers removeObject:observerCopy];
}

- (NSUUID)selectedHomeIdentifier
{
  CFPreferencesAppSynchronize(@"com.apple.sync.NanoHome");
  v2 = CFPreferencesCopyAppValue(@"HFSelectedHomeKey", @"com.apple.sync.NanoHome");
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSelectedHomeIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (+[HFExecutionEnvironment isHomeApp](HFExecutionEnvironment, "isHomeApp") || +[HFExecutionEnvironment isWatchApp])
  {
    [(HFStateRestorationSettings *)self _reallySetSelectedHomeIdentifier:identifierCopy];
  }

  else
  {
    v5 = HFLogForCategory(0x2DuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v8 = 138412290;
      v9 = callStackSymbols;
      _os_log_fault_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_FAULT, "Error: non-Home process is trying set state restoration values %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_reallySetSelectedHomeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  serialQueue = [(HFStateRestorationSettings *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HFStateRestorationSettings__reallySetSelectedHomeIdentifier___block_invoke;
  block[3] = &unk_277DF3A68;
  objc_copyWeak(&v9, &location);
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __63__HFStateRestorationSettings__reallySetSelectedHomeIdentifier___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  os_unfair_lock_lock(WeakRetained + 3);
  v3 = [(os_unfair_lock_s *)WeakRetained cancelationToken];

  if (v3)
  {
    v4 = HFLogForCategory(0x2DuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      _os_log_debug_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEBUG, "Previous save existed - cancelling", &v15, 2u);
    }

    v5 = [(os_unfair_lock_s *)WeakRetained cancelationToken];
    [v5 cancel];

    [(os_unfair_lock_s *)WeakRetained setCancelationToken:0];
  }

  v6 = objc_alloc_init(MEMORY[0x277D2C8C8]);
  [(os_unfair_lock_s *)WeakRetained setCancelationToken:v6];

  v7 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) UUIDString];
    v15 = 138543362;
    v16 = v8;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFStateRestorationSettings Saving home identifier %{public}@", &v15, 0xCu);
  }

  v9 = [*(a1 + 32) UUIDString];
  CFPreferencesSetAppValue(@"HFSelectedHomeKey", v9, @"com.apple.sync.NanoHome");

  CFPreferencesAppSynchronize(@"com.apple.sync.NanoHome");
  v10 = [(os_unfair_lock_s *)WeakRetained cancelationToken];
  v11 = [v10 isCanceled];

  if ((v11 & 1) == 0)
  {
    v12 = HFLogForCategory(0x2DuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) UUIDString];
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "HFStateRestorationSettings Sending notification for home identifier %{public}@", &v15, 0xCu);
    }

    notify_post("HFHomeSyncPreferencesDidChange");
  }

  [(os_unfair_lock_s *)WeakRetained setCancelationToken:0];
  os_unfair_lock_unlock(WeakRetained + 3);

  v14 = *MEMORY[0x277D85DE8];
}

- (NSUUID)selectedRoomIdentifierForSelectedHome
{
  selectedHomeIdentifier = [(HFStateRestorationSettings *)self selectedHomeIdentifier];
  v4 = [(HFStateRestorationSettings *)self selectedRoomIdentifierForHomeIdentifier:selectedHomeIdentifier];

  return v4;
}

- (id)selectedRoomIdentifierForHomeIdentifier:(id)identifier
{
  v4 = [(HFStateRestorationSettings *)self _roomKeyForHomeIdentifier:identifier];
  v5 = [(HFStateRestorationSettings *)self _homeAppPreferencesValueForKey:v4 ofClass:objc_opt_class()];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)saveSelectedRoomIdentifier:(id)identifier forHomeIdentifier:(id)homeIdentifier
{
  identifierCopy = identifier;
  v8 = [(HFStateRestorationSettings *)self _roomKeyForHomeIdentifier:homeIdentifier];
  uUIDString = [identifierCopy UUIDString];

  [(HFStateRestorationSettings *)self _setHomeAppPreferencesValue:uUIDString forKey:v8];
}

- (id)_roomKeyForHomeIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCACA8];
  uUIDString = [identifier UUIDString];
  v5 = [v3 stringWithFormat:@"%@%@", uUIDString, @"-selectedRoom"];

  return v5;
}

- (NSString)selectedHomeAppTabIdentifier
{
  v3 = objc_opt_class();

  return [(HFStateRestorationSettings *)self _homeAppPreferencesValueForKey:@"HOLastSelectedTab" ofClass:v3];
}

- (void)syncToNanoPrefs
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    selectedHomeIdentifier = [(HFStateRestorationSettings *)self selectedHomeIdentifier];
    uUIDString = [selectedHomeIdentifier UUIDString];
    *buf = 138543362;
    v13 = uUIDString;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFStateRestorationSettings Synchronizing prefs with selected home %{public}@", buf, 0xCu);
  }

  v6 = objc_opt_new();
  v7 = MEMORY[0x277CBEB98];
  v11 = @"HFSelectedHomeKey";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v9 = [v7 setWithArray:v8];
  [v6 synchronizeUserDefaultsDomain:@"com.apple.sync.NanoHome" keys:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_homeAppPreferencesValueForKey:(id)key ofClass:(Class)class
{
  v4 = CFPreferencesCopyAppValue(key, @"com.apple.Home");
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)_setHomeAppPreferencesValue:(id)value forKey:(id)key
{
  v13 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = keyCopy;
    v11 = 2114;
    v12 = valueCopy;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Updating value for Home.app preference %{public}@ to: %{public}@", &v9, 0x16u);
  }

  CFPreferencesSetAppValue(keyCopy, valueCopy, @"com.apple.Home");
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_selectedHomeDidChange
{
  v19 = *MEMORY[0x277D85DE8];
  selectedHomeIdentifier = [(HFStateRestorationSettings *)self selectedHomeIdentifier];
  v4 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = selectedHomeIdentifier;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFStateRestorationSettings selectedHomeDidChange Notifying observers of new home ID %{public}@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = [(HFStateRestorationSettings *)self observers];
  v6 = [observers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(observers);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 stateRestorationSettings:self selectedHomeIdentifierDidUpdateExternally:selectedHomeIdentifier];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [observers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end