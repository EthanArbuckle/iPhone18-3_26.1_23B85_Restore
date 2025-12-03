@interface HFAccessorySettingMobileTimerAdapter
- (BOOL)isAdapterReady;
- (HFAccessorySettingMobileTimerAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths mode:(unint64_t)mode updateHandler:(id)handler;
- (HFAccessorySettingMobileTimerAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths updateHandler:(id)handler;
- (HFAccessorySettingMobileTimerAdapter)initWithHomeKitSettingsVendor:(id)vendor mode:(unint64_t)mode;
- (NAFuture)alarmManagerForSynchronizationFuture;
- (NSSet)alarmsWithPendingEdits;
- (id)_beginMonitoringSettingsKeyPath:(id)path;
- (id)_synchronizeHomeKitToMobileTimer;
- (id)_synchronizeMobileTimerToHomeKitWithChangeType:(unint64_t)type;
- (id)addAlarm:(id)alarm;
- (id)alarmCollectionSettingFuture;
- (id)alarmManagerAlarms;
- (id)alarmSettingsCurrentItemsFuture;
- (id)allAlarms;
- (id)allAlarmsFuture;
- (id)removeAlarm:(id)alarm;
- (id)updateAlarm:(id)alarm;
- (void)_alarmWasAdded:(id)added;
- (void)_alarmWasDeleted:(id)deleted;
- (void)_alarmWasUpdated:(id)updated;
- (void)_notifyObserversOfUpdates;
- (void)_respondToAlarmManagerUpdate;
- (void)_setupDebugHandler;
- (void)addObserver:(id)observer;
- (void)homeKitSettingWasUpdated:(id)updated value:(id)value;
- (void)removeObserver:(id)observer;
@end

@implementation HFAccessorySettingMobileTimerAdapter

- (HFAccessorySettingMobileTimerAdapter)initWithHomeKitSettingsVendor:(id)vendor mode:(unint64_t)mode
{
  v43[1] = *MEMORY[0x277D85DE8];
  vendorCopy = vendor;
  if (!vendorCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingMobileTimerAdapter.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"homeKitSettingsVendor"}];
  }

  v43[0] = @"root.mobileTimer.alarms";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
  v8 = MEMORY[0x277CD1688];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v9 setWithObjects:{v10, v11, v12, v13, objc_opt_class(), 0}];
  v15 = v8;
  v16 = v7;
  [v15 setItemValueClasses:v14 forKeyPath:@"root.mobileTimer.alarms"];

  v17 = [MEMORY[0x277CBEB98] setWithArray:v7];
  v42.receiver = self;
  v42.super_class = HFAccessorySettingMobileTimerAdapter;
  v18 = [(HFAccessorySettingAdapter *)&v42 initWithHomeKitSettingsVendor:vendorCopy keyPaths:v17 mode:mode updateHandler:0];

  v19 = vendorCopy;
  if (v18)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v18->_observers;
    v18->_observers = weakObjectsHashTable;

    v22 = [MEMORY[0x277CBEB58] set];
    internalAlarmsBeingAdded = v18->_internalAlarmsBeingAdded;
    v18->_internalAlarmsBeingAdded = v22;

    v24 = [MEMORY[0x277CBEB58] set];
    internalAlarmsBeingRemoved = v18->_internalAlarmsBeingRemoved;
    v18->_internalAlarmsBeingRemoved = v24;

    v26 = [MEMORY[0x277CBEB58] set];
    internalAlarmsBeingUpdated = v18->_internalAlarmsBeingUpdated;
    v18->_internalAlarmsBeingUpdated = v26;

    [(HFAccessorySettingMobileTimerAdapter *)v18 _setupDebugHandler];
    v28 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.soundboard"];
    soundBoardPrefs = v18->_soundBoardPrefs;
    v18->_soundBoardPrefs = v28;

    if (_os_feature_enabled_impl())
    {
      v30 = vendorCopy;
      if ([v30 conformsToProtocol:&unk_282584A38])
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;

      accessories = [v32 accessories];

      v34 = MEMORY[0x277CFD070];
      anyObject = [accessories anyObject];
      v36 = [v34 hf_AlarmManagerForAccessory:anyObject];
      coordinationAlarmManager = v18->_coordinationAlarmManager;
      v18->_coordinationAlarmManager = v36;
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return v18;
}

- (HFAccessorySettingMobileTimerAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths mode:(unint64_t)mode updateHandler:(id)handler
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_mode_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingMobileTimerAdapter.m" lineNumber:124 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingMobileTimerAdapter initWithHomeKitSettingsVendor:keyPaths:mode:updateHandler:]", v9}];

  return 0;
}

- (HFAccessorySettingMobileTimerAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths updateHandler:(id)handler
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_mode_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingMobileTimerAdapter.m" lineNumber:129 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingMobileTimerAdapter initWithHomeKitSettingsVendor:keyPaths:updateHandler:]", v8}];

  return 0;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFAccessorySettingMobileTimerAdapter *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFAccessorySettingMobileTimerAdapter *)self observers];
  [observers removeObject:observerCopy];
}

- (NSSet)alarmsWithPendingEdits
{
  v3 = objc_opt_new();
  internalAlarmsBeingAdded = [(HFAccessorySettingMobileTimerAdapter *)self internalAlarmsBeingAdded];
  [v3 unionSet:internalAlarmsBeingAdded];

  internalAlarmsBeingUpdated = [(HFAccessorySettingMobileTimerAdapter *)self internalAlarmsBeingUpdated];
  [v3 unionSet:internalAlarmsBeingUpdated];

  internalAlarmsBeingRemoved = [(HFAccessorySettingMobileTimerAdapter *)self internalAlarmsBeingRemoved];
  [v3 unionSet:internalAlarmsBeingRemoved];

  return v3;
}

- (BOOL)isAdapterReady
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  alarmCollectionSetting = [(HFAccessorySettingMobileTimerAdapter *)self alarmCollectionSetting];
  v3 = alarmCollectionSetting != 0;

  return v3;
}

- (void)homeKitSettingWasUpdated:(id)updated value:(id)value
{
  v17 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valueCopy = value;
  v8 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412546;
    v14 = updatedCopy;
    v15 = 2112;
    v16 = valueCopy;
    _os_log_debug_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEBUG, "Setting '%@' was updated to: %@", &v13, 0x16u);
  }

  keyPath = [updatedCopy keyPath];
  v10 = [keyPath isEqual:@"root.mobileTimer.alarms"];

  if (v10)
  {
    [(HFAccessorySettingMobileTimerAdapter *)self _notifyObserversOfUpdates];
    _synchronizeHomeKitToMobileTimer = [(HFAccessorySettingMobileTimerAdapter *)self _synchronizeHomeKitToMobileTimer];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)allAlarms
{
  v2 = MEMORY[0x277D296D0];
  valueManager = [(HFAccessorySettingAdapter *)self valueManager];
  v4 = [valueManager valueForSettingAtKeyPath:@"root.mobileTimer.alarms"];
  v5 = [v2 hf_buildAlarmsFromCollectionSettingItems:v4];

  return v5;
}

- (id)allAlarmsFuture
{
  if (_os_feature_enabled_impl() && ([(HFAccessorySettingMobileTimerAdapter *)self coordinationAlarmManager], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    alarmSettingsCurrentItemsFuture = v3;
    alarms = [v3 alarms];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v7 = [alarms reschedule:mainThreadScheduler];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__HFAccessorySettingMobileTimerAdapter_allAlarmsFuture__block_invoke;
    v10[3] = &unk_277DF5938;
    v10[4] = self;
    v8 = [v7 flatMap:v10];
  }

  else
  {
    alarmSettingsCurrentItemsFuture = [(HFAccessorySettingMobileTimerAdapter *)self alarmSettingsCurrentItemsFuture];
    v8 = [alarmSettingsCurrentItemsFuture flatMap:&__block_literal_global_203];
  }

  return v8;
}

id __55__HFAccessorySettingMobileTimerAdapter_allAlarmsFuture__block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:a2];
  v4 = [*(a1 + 32) internalAlarmsBeingAdded];
  v5 = [v4 allObjects];
  [v3 addObjectsFromArray:v5];

  v6 = [*(a1 + 32) internalAlarmsBeingAdded];
  v7 = [v6 count];

  if (v7)
  {
    v8 = HFLogForCategory(4uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [v9 internalAlarmsBeingAdded];
      v14 = 136315650;
      v15 = "[HFAccessorySettingMobileTimerAdapter allAlarmsFuture]_block_invoke";
      v16 = 2112;
      v17 = v9;
      v18 = 2048;
      v19 = [v10 count];
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%s(%@): reporting %lu new-alarms-being-added to the offical Coordination set", &v14, 0x20u);
    }
  }

  v11 = [MEMORY[0x277D2C900] futureWithResult:v3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __55__HFAccessorySettingMobileTimerAdapter_allAlarmsFuture__block_invoke_292(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277D296D0] hf_buildAlarmsFromCollectionSettingItems:a2];
  v3 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v3;
}

- (id)alarmSettingsCurrentItemsFuture
{
  valueManager = [(HFAccessorySettingAdapter *)self valueManager];
  v4 = [(HFAccessorySettingAdapter *)self settingWatchFutureForKeyPath:@"root.mobileTimer.alarms"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HFAccessorySettingMobileTimerAdapter_alarmSettingsCurrentItemsFuture__block_invoke;
  v8[3] = &unk_277E006E8;
  v9 = valueManager;
  v5 = valueManager;
  v6 = [v4 flatMap:v8];

  return v6;
}

id __71__HFAccessorySettingMobileTimerAdapter_alarmSettingsCurrentItemsFuture__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [*(a1 + 32) valueForSetting:a2];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (id)alarmManagerAlarms
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (_os_feature_enabled_impl() && ([(HFAccessorySettingMobileTimerAdapter *)self coordinationAlarmManager], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    alarmManagerForSynchronizationFuture = v3;
    alarms = [v3 alarms];
  }

  else
  {
    alarmManagerForSynchronizationFuture = [(HFAccessorySettingMobileTimerAdapter *)self alarmManagerForSynchronizationFuture];
    v6 = [alarmManagerForSynchronizationFuture flatMap:&__block_literal_global_296];
    v7 = [v6 flatMap:&__block_literal_global_298_0];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    alarms = [v7 reschedule:mainThreadScheduler];
  }

  return alarms;
}

id __58__HFAccessorySettingMobileTimerAdapter_alarmManagerAlarms__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 sortedArrayUsingSelector:sel_compare_];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (id)updateAlarm:(id)alarm
{
  v25 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  internalAlarmsBeingUpdated = [(HFAccessorySettingMobileTimerAdapter *)self internalAlarmsBeingUpdated];
  [internalAlarmsBeingUpdated addObject:alarmCopy];

  v6 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = alarmCopy;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Updating alarm %@", buf, 0xCu);
  }

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_6;
  }

  coordinationAlarmManager = [(HFAccessorySettingMobileTimerAdapter *)self coordinationAlarmManager];
  if (!coordinationAlarmManager || (v8 = coordinationAlarmManager, -[HFAccessorySettingMobileTimerAdapter coordinationAlarmManager](self, "coordinationAlarmManager"), v9 = objc_claimAutoreleasedReturnValue(), [v9 updateAlarm:alarmCopy], v10 = objc_claimAutoreleasedReturnValue(), v9, v8, !v10))
  {
LABEL_6:
    valueManager = [(HFAccessorySettingAdapter *)self valueManager];
    alarmCollectionSettingFuture = [(HFAccessorySettingMobileTimerAdapter *)self alarmCollectionSettingFuture];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __52__HFAccessorySettingMobileTimerAdapter_updateAlarm___block_invoke;
    v20[3] = &unk_277E00730;
    v21 = valueManager;
    v22 = alarmCopy;
    v13 = valueManager;
    v10 = [alarmCollectionSettingFuture flatMap:v20];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__HFAccessorySettingMobileTimerAdapter_updateAlarm___block_invoke_2;
  v18[3] = &unk_277DF50B0;
  v18[4] = self;
  v19 = alarmCopy;
  v14 = alarmCopy;
  v15 = [v10 addCompletionBlock:v18];

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

id __52__HFAccessorySettingMobileTimerAdapter_updateAlarm___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForSetting:v4];
  v6 = [v5 mutableCopy];

  v7 = MEMORY[0x277CD1690];
  v8 = [*(a1 + 40) alarmID];
  v9 = [v7 hf_alarmItemsMatchingAlarmId:v8 withinItemArray:v6];
  [v6 removeObjectsInArray:v9];

  v10 = [MEMORY[0x277CD1690] hf_collectionSettingItemForAlarm:*(a1 + 40)];
  [v6 addObject:v10];

  v11 = [*(a1 + 32) changeValueForSetting:v4 toValue:v6 changeType:1];

  return v11;
}

uint64_t __52__HFAccessorySettingMobileTimerAdapter_updateAlarm___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = a3;
    v6 = +[HFErrorHandler sharedHandler];
    [v6 logError:v5 operationDescription:@"updateAlarm:"];
  }

  [*(a1 + 32) _submitAnalyticsForUpdatedAlarm:*(a1 + 40) success:a3 == 0];
  v7 = [*(a1 + 32) internalAlarmsBeingUpdated];
  [v7 removeObject:*(a1 + 40)];

  v8 = *(a1 + 32);

  return [v8 _notifyObserversOfUpdates];
}

- (id)removeAlarm:(id)alarm
{
  v30 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  if (alarmCopy)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    internalAlarmsBeingRemoved = [(HFAccessorySettingMobileTimerAdapter *)self internalAlarmsBeingRemoved];
    [internalAlarmsBeingRemoved addObject:alarmCopy];

    v7 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = alarmCopy;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Remove alarm %@", buf, 0xCu);
    }

    if (!_os_feature_enabled_impl())
    {
      goto LABEL_14;
    }

    coordinationAlarmManager = [(HFAccessorySettingMobileTimerAdapter *)self coordinationAlarmManager];
    if (coordinationAlarmManager)
    {
      coordinationAlarmManager2 = [(HFAccessorySettingMobileTimerAdapter *)self coordinationAlarmManager];
      futureWithNoResult = [coordinationAlarmManager2 removeAlarm:alarmCopy];
    }

    else
    {
      futureWithNoResult = 0;
    }

    [(HFAccessorySettingMobileTimerAdapter *)self _notifyObserversOfUpdates];

    if (!futureWithNoResult)
    {
LABEL_14:
      valueManager = [(HFAccessorySettingAdapter *)self valueManager];
      alarmCollectionSettingFuture = [(HFAccessorySettingMobileTimerAdapter *)self alarmCollectionSettingFuture];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __52__HFAccessorySettingMobileTimerAdapter_removeAlarm___block_invoke;
      v23[3] = &unk_277E00730;
      v24 = valueManager;
      v25 = alarmCopy;
      v16 = valueManager;
      futureWithNoResult = [alarmCollectionSettingFuture flatMap:v23];
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __52__HFAccessorySettingMobileTimerAdapter_removeAlarm___block_invoke_2;
    v21[3] = &unk_277DF50B0;
    v21[4] = self;
    v22 = alarmCopy;
    v17 = [futureWithNoResult addCompletionBlock:v21];
  }

  else
  {
    v11 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v28 = 2112;
      v29 = v20;
      _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "%@:%@ nil alarm. If you can reproduce this, please file a radar!", buf, 0x16u);
    }

    if (+[HFUtilities isInternalInstall])
    {
      v12 = [MEMORY[0x277CCA9B8] hf_errorWithCode:-1];
      v13 = +[HFErrorHandler sharedHandler];
      [v13 handleError:v12 operationType:@"HFOperationRemoveHomePodAlarm" options:0 retryBlock:0 cancelBlock:0];
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v18 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

id __52__HFAccessorySettingMobileTimerAdapter_removeAlarm___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForSetting:v4];
  v6 = [v5 mutableCopy];

  v7 = MEMORY[0x277CD1690];
  v8 = [*(a1 + 40) alarmID];
  v9 = [v7 hf_alarmItemsMatchingAlarmId:v8 withinItemArray:v6];
  [v6 removeObjectsInArray:v9];

  v10 = [*(a1 + 32) changeValueForSetting:v4 toValue:v6 changeType:1];

  return v10;
}

void __52__HFAccessorySettingMobileTimerAdapter_removeAlarm___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = +[HFErrorHandler sharedHandler];
    [v6 logError:v5 operationDescription:@"removeAlarm:"];
  }

  [*(a1 + 32) _submitAnalyticsForDeletedAlarm:*(a1 + 40) success:v5 == 0];
  v7 = [*(a1 + 32) internalAlarmsBeingRemoved];
  [v7 removeObject:*(a1 + 40)];

  if (!v5)
  {
    [*(a1 + 32) _notifyObserversOfUpdates];
  }
}

- (id)addAlarm:(id)alarm
{
  v26 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  internalAlarmsBeingAdded = [(HFAccessorySettingMobileTimerAdapter *)self internalAlarmsBeingAdded];
  [internalAlarmsBeingAdded addObject:alarmCopy];

  v6 = HFLogForCategory(4uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = alarmCopy;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Adding alarm %@", buf, 0xCu);
  }

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_8;
  }

  coordinationAlarmManager = [(HFAccessorySettingMobileTimerAdapter *)self coordinationAlarmManager];
  if (coordinationAlarmManager)
  {
    coordinationAlarmManager2 = [(HFAccessorySettingMobileTimerAdapter *)self coordinationAlarmManager];
    v9 = [coordinationAlarmManager2 addAlarm:alarmCopy];
  }

  else
  {
    v9 = 0;
  }

  [(HFAccessorySettingMobileTimerAdapter *)self _notifyObserversOfUpdates];

  if (!v9)
  {
LABEL_8:
    valueManager = [(HFAccessorySettingAdapter *)self valueManager];
    v11 = [MEMORY[0x277CD1690] hf_collectionSettingItemForAlarm:alarmCopy];
    alarmCollectionSettingFuture = [(HFAccessorySettingMobileTimerAdapter *)self alarmCollectionSettingFuture];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __49__HFAccessorySettingMobileTimerAdapter_addAlarm___block_invoke;
    v21[3] = &unk_277E00730;
    v22 = valueManager;
    v23 = v11;
    v13 = v11;
    v14 = valueManager;
    v9 = [alarmCollectionSettingFuture flatMap:v21];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __49__HFAccessorySettingMobileTimerAdapter_addAlarm___block_invoke_2;
  v19[3] = &unk_277DF50B0;
  v19[4] = self;
  v20 = alarmCopy;
  v15 = alarmCopy;
  v16 = [v9 addCompletionBlock:v19];

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

id __49__HFAccessorySettingMobileTimerAdapter_addAlarm___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForSetting:v4];
  v6 = [v5 arrayByAddingObject:*(a1 + 40)];
  v7 = [*(a1 + 32) changeValueForSetting:v4 toValue:v6 changeType:1];

  return v7;
}

void __49__HFAccessorySettingMobileTimerAdapter_addAlarm___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(4uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v10 = 136315650;
    v11 = "[HFAccessorySettingMobileTimerAdapter addAlarm:]_block_invoke_2";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%s(%@): alarm added with %@ result ", &v10, 0x20u);
  }

  if (v4)
  {
    v7 = +[HFErrorHandler sharedHandler];
    [v7 logError:v4 operationDescription:@"addAlarm:"];
  }

  [*(a1 + 32) _submitAnalyticsForAddedAlarm:*(a1 + 40) success:v4 == 0];
  v8 = [*(a1 + 32) internalAlarmsBeingAdded];
  [v8 removeObject:*(a1 + 40)];

  [*(a1 + 32) _notifyObserversOfUpdates];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)alarmCollectionSettingFuture
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(HFAccessorySettingAdapter *)self settingWatchFutureForKeyPath:@"root.mobileTimer.alarms"];
  v4 = [v3 flatMap:&__block_literal_global_317_0];

  return v4;
}

id __68__HFAccessorySettingMobileTimerAdapter_alarmCollectionSettingFuture__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277D2C900];
  v4 = objc_opt_class();
  v5 = v2;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v5;
    if (v6)
    {
      goto LABEL_8;
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v8 handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];
  }

  v7 = 0;
LABEL_8:

  v10 = [v3 futureWithResult:v7];

  return v10;
}

- (id)_synchronizeHomeKitToMobileTimer
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(HFAccessorySettingAdapter *)self mode])
  {
    objc_initWeak(&location, self);
    alarmManagerForSynchronizationFuture = [(HFAccessorySettingMobileTimerAdapter *)self alarmManagerForSynchronizationFuture];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __72__HFAccessorySettingMobileTimerAdapter__synchronizeHomeKitToMobileTimer__block_invoke;
    v11 = &unk_277E00758;
    objc_copyWeak(&v12, &location);
    v4 = [alarmManagerForSynchronizationFuture flatMap:&v8];
    v5 = [v4 addSuccessBlock:{&__block_literal_global_322, v8, v9, v10, v11}];
    futureWithNoResult = [v5 addFailureBlock:&__block_literal_global_326_0];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

id __72__HFAccessorySettingMobileTimerAdapter__synchronizeHomeKitToMobileTimer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained alarmManagerAlarms];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__HFAccessorySettingMobileTimerAdapter__synchronizeHomeKitToMobileTimer__block_invoke_2;
  v9[3] = &unk_277DFED88;
  objc_copyWeak(&v11, (a1 + 32));
  v6 = v3;
  v10 = v6;
  v7 = [v5 flatMap:v9];

  objc_destroyWeak(&v11);

  return v7;
}

id __72__HFAccessorySettingMobileTimerAdapter__synchronizeHomeKitToMobileTimer__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained allAlarmsFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__HFAccessorySettingMobileTimerAdapter__synchronizeHomeKitToMobileTimer__block_invoke_3;
  v9[3] = &unk_277DFCDF8;
  v10 = v3;
  v11 = *(a1 + 32);
  v6 = v3;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __72__HFAccessorySettingMobileTimerAdapter__synchronizeHomeKitToMobileTimer__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB98] setWithArray:a2];
  v4 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
  v5 = [HFAlarmDiff generateAlarmDiffFromSet:v3 toSet:v4];

  v6 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = v5;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Synchronizing HomeKit->MobileTimer: %@", buf, 0xCu);
  }

  if ([v5 inputWasEqual])
  {
    v7 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v8 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = [v5 addedAlarms];
    v10 = [v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(a1 + 40) addAlarm:*(*(&v39 + 1) + 8 * i)];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v11);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = [v5 updatedAlarms];
    v16 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(a1 + 40) updateAlarm:*(*(&v35 + 1) + 8 * j)];
          [v8 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v17);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = [v5 deletedAlarms];
    v22 = [v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(a1 + 40) removeAlarm:*(*(&v31 + 1) + 8 * k)];
          [v8 addObject:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v23);
    }

    v27 = MEMORY[0x277D2C900];
    v28 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v7 = [v27 combineAllFutures:v8 ignoringErrors:0 scheduler:v28];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v7;
}

void __72__HFAccessorySettingMobileTimerAdapter__synchronizeHomeKitToMobileTimer__block_invoke_319()
{
  v0 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_20D9BF000, v0, OS_LOG_TYPE_DEFAULT, "Synchronized Alarms to MTAlarmManager!", v1, 2u);
  }
}

void __72__HFAccessorySettingMobileTimerAdapter__synchronizeHomeKitToMobileTimer__block_invoke_323(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "FAILED to Synchronize Alarms to MTAlarmManager: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_synchronizeMobileTimerToHomeKitWithChangeType:(unint64_t)type
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(HFAccessorySettingAdapter *)self mode])
  {
    valueManager = [(HFAccessorySettingAdapter *)self valueManager];
    objc_initWeak(&location, self);
    alarmManagerAlarms = [(HFAccessorySettingMobileTimerAdapter *)self alarmManagerAlarms];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __87__HFAccessorySettingMobileTimerAdapter__synchronizeMobileTimerToHomeKitWithChangeType___block_invoke;
    v10[3] = &unk_277DF8750;
    objc_copyWeak(v12, &location);
    v12[1] = type;
    v7 = valueManager;
    v11 = v7;
    futureWithNoResult = [alarmManagerAlarms flatMap:v10];

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

id __87__HFAccessorySettingMobileTimerAdapter__synchronizeMobileTimerToHomeKitWithChangeType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained alarmSettingsCurrentItemsFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__HFAccessorySettingMobileTimerAdapter__synchronizeMobileTimerToHomeKitWithChangeType___block_invoke_2;
  v9[3] = &unk_277E007E8;
  v13 = *(a1 + 48);
  v10 = v3;
  v11 = WeakRetained;
  v12 = *(a1 + 32);
  v6 = v3;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __87__HFAccessorySettingMobileTimerAdapter__synchronizeMobileTimerToHomeKitWithChangeType___block_invoke_2(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
  v5 = MEMORY[0x277CBEB98];
  v6 = [v3 na_map:&__block_literal_global_329];
  v7 = [v5 setWithArray:v6];

  v8 = *(a1 + 56);
  if (v8 == 1)
  {
    v51 = v3;
    v13 = [v3 mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_opt_new();
    }

    v16 = v15;

    v49 = v7;
    v50 = v4;
    v17 = [HFAlarmDiff generateAlarmDiffFromSet:v4 toSet:v7];
    v18 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v72 = v17;
      _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Atomic Synchronization of Alarms Settings: %@", buf, 0xCu);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v19 = [v17 addedAlarms];
    v20 = [v19 countByEnumeratingWithState:&v64 objects:v70 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v65;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v65 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [MEMORY[0x277CD1690] hf_collectionSettingItemForAlarm:*(*(&v64 + 1) + 8 * i)];
          [v16 addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v64 objects:v70 count:16];
      }

      while (v21);
    }

    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v60 = 0u;
    v48 = v17;
    v25 = [v17 updatedAlarms];
    v26 = [v25 countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v61;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v61 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v60 + 1) + 8 * j);
          v31 = [MEMORY[0x277CD1690] hf_collectionSettingItemForAlarm:v30];
          v32 = MEMORY[0x277CD1690];
          v33 = [v30 alarmID];
          v34 = [v32 hf_alarmItemsMatchingAlarmId:v33 withinItemArray:v16];
          [v16 removeObjectsInArray:v34];

          [v16 addObject:v31];
        }

        v27 = [v25 countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v27);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v35 = [v48 deletedAlarms];
    v36 = [v35 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v57;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v57 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = MEMORY[0x277CD1690];
          v41 = [*(*(&v56 + 1) + 8 * k) alarmID];
          v42 = [v40 hf_alarmItemsMatchingAlarmId:v41 withinItemArray:v16];
          [v16 removeObjectsInArray:v42];
        }

        v37 = [v35 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v37);
    }

    v12 = [v16 copy];
    v4 = v50;
    v3 = v51;
    v7 = v49;
  }

  else if (v8)
  {
    v12 = 0;
  }

  else
  {
    v9 = [*(a1 + 32) na_map:&__block_literal_global_332];
    v10 = v9;
    v11 = MEMORY[0x277CBEBF8];
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;
  }

  v43 = [*(a1 + 40) alarmCollectionSettingFuture];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __87__HFAccessorySettingMobileTimerAdapter__synchronizeMobileTimerToHomeKitWithChangeType___block_invoke_333;
  v52[3] = &unk_277E007C0;
  v53 = *(a1 + 48);
  v54 = v12;
  v55 = *(a1 + 56);
  v44 = v12;
  v45 = [v43 flatMap:v52];

  v46 = *MEMORY[0x277D85DE8];

  return v45;
}

- (NAFuture)alarmManagerForSynchronizationFuture
{
  alarmManagerForSynchronizationFuture = self->_alarmManagerForSynchronizationFuture;
  if (alarmManagerForSynchronizationFuture)
  {
    v3 = alarmManagerForSynchronizationFuture;
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x277D2C900];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __76__HFAccessorySettingMobileTimerAdapter_alarmManagerForSynchronizationFuture__block_invoke;
    v14 = &unk_277DF4F68;
    objc_copyWeak(&v15, &location);
    v6 = [v5 futureWithBlock:&v11];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v8 = [v6 reschedule:mainThreadScheduler];
    v9 = self->_alarmManagerForSynchronizationFuture;
    self->_alarmManagerForSynchronizationFuture = v8;

    v3 = self->_alarmManagerForSynchronizationFuture;
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __76__HFAccessorySettingMobileTimerAdapter_alarmManagerForSynchronizationFuture__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained mode] == 1)
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:WeakRetained selector:sel__alarmWasAdded_ name:*MEMORY[0x277D29590] object:v4];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:WeakRetained selector:sel__alarmWasDeleted_ name:*MEMORY[0x277D295A8] object:v4];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:WeakRetained selector:sel__alarmWasUpdated_ name:*MEMORY[0x277D295B0] object:v4];

    [v8 finishWithResult:v4];
  }

  else
  {
    [v8 finishWithNoResult];
  }
}

- (void)_alarmWasAdded:(id)added
{
  v4 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Alarm was added; synchronizing MTAlarmManager -> HomeKit", v5, 2u);
  }

  [(HFAccessorySettingMobileTimerAdapter *)self _respondToAlarmManagerUpdate];
}

- (void)_alarmWasDeleted:(id)deleted
{
  v4 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Alarm was deleted; synchronizing MTAlarmManager -> HomeKit", v5, 2u);
  }

  [(HFAccessorySettingMobileTimerAdapter *)self _respondToAlarmManagerUpdate];
}

- (void)_alarmWasUpdated:(id)updated
{
  v4 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Alarm was updated; synchronizing MTAlarmManager -> HomeKit", v5, 2u);
  }

  [(HFAccessorySettingMobileTimerAdapter *)self _respondToAlarmManagerUpdate];
}

- (void)_respondToAlarmManagerUpdate
{
  if ([(HFAccessorySettingAdapter *)self mode]!= 1)
  {
    NSLog(&cfstr_ShouldNotGetHe.isa);
  }

  if ([(HFAccessorySettingMobileTimerAdapter *)self shouldSynchronizeMobileTimerToHomeKit])
  {
    v5 = [(HFAccessorySettingMobileTimerAdapter *)self _synchronizeMobileTimerToHomeKitWithChangeType:1];
    v3 = [v5 addCompletionBlock:&__block_literal_global_348_0];
  }

  else
  {
    v4 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "We should not _synchronizeMobileTimerToHomeKitWithChangeType", buf, 2u);
    }
  }
}

void __68__HFAccessorySettingMobileTimerAdapter__respondToAlarmManagerUpdate__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = HFLogForCategory(0x3EuLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Error updating MTAlarmManager -> HomeKit: %@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Finished synchronizing MTAlarmManager -> HomeKit", &v7, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfUpdates
{
  allAlarmsFuture = [(HFAccessorySettingMobileTimerAdapter *)self allAlarmsFuture];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__HFAccessorySettingMobileTimerAdapter__notifyObserversOfUpdates__block_invoke;
  v5[3] = &unk_277DF9508;
  v5[4] = self;
  v4 = [allAlarmsFuture addSuccessBlock:v5];
}

void __65__HFAccessorySettingMobileTimerAdapter__notifyObserversOfUpdates__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [*(a1 + 32) observers];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 mobileTimerAdapter:*(a1 + 32) didUpdateAlarms:v3];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_beginMonitoringSettingsKeyPath:(id)path
{
  if ([(HFAccessorySettingAdapter *)self mode]== 1)
  {
    futureWithNoResult = [(HFAccessorySettingMobileTimerAdapter *)self _synchronizeMobileTimerToHomeKitWithChangeType:0];
LABEL_5:
    v5 = futureWithNoResult;
    goto LABEL_6;
  }

  if ([(HFAccessorySettingAdapter *)self mode])
  {
    NSLog(&cfstr_InvalidModeSpe.isa, 0);
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_5;
  }

  alarmCollectionSettingFuture = [(HFAccessorySettingMobileTimerAdapter *)self alarmCollectionSettingFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HFAccessorySettingMobileTimerAdapter__beginMonitoringSettingsKeyPath___block_invoke;
  v8[3] = &unk_277E00810;
  v8[4] = self;
  v5 = [alarmCollectionSettingFuture addSuccessBlock:v8];

LABEL_6:

  return v5;
}

void __72__HFAccessorySettingMobileTimerAdapter__beginMonitoringSettingsKeyPath___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 mobileTimerAdapterDidUpdateReadiness:*(a1 + 32)];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setupDebugHandler
{
  objc_initWeak(&location, self);
  v2 = +[HFDebugStateDumpManager sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HFAccessorySettingMobileTimerAdapter__setupDebugHandler__block_invoke;
  v6[3] = &unk_277DF2B00;
  objc_copyWeak(&v7, &location);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 registerStateDumpHandler:v6 withName:v4];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

id __58__HFAccessorySettingMobileTimerAdapter__setupDebugHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [HFStateDumpBuilderContext contextWithDetailLevel:2];
  v3 = [HFStateDumpBuilder builderWithObject:WeakRetained context:v2];

  v4 = [WeakRetained internalAlarmsBeingAdded];
  [v3 appendObject:v4 withName:@"alarmsBeingAdded" options:1];

  v5 = [WeakRetained internalAlarmsBeingRemoved];
  [v3 appendObject:v5 withName:@"alarmsBeingRemoved" options:1];

  v6 = [WeakRetained internalAlarmsBeingUpdated];
  [v3 appendObject:v6 withName:@"alarmsBeingUpdated" options:1];

  if ([WeakRetained mode] == 1)
  {
    v7 = @"Accessory";
  }

  else
  {
    v7 = @"Controller";
  }

  [v3 setObject:v7 forKeyedSubscript:@"adapterMode"];
  v8 = objc_opt_new();
  v9 = [v8 alarmsSync];
  [v3 setObject:v9 forKeyedSubscript:@"MTAlarms"];

  v10 = [WeakRetained settingForKeyPath:@"root.mobileTimer.alarms"];
  v11 = [v10 value];
  [v3 setObject:v11 forKeyedSubscript:@"HKAlarms"];

  v12 = [v3 buildPropertyListRepresentation];

  return v12;
}

@end