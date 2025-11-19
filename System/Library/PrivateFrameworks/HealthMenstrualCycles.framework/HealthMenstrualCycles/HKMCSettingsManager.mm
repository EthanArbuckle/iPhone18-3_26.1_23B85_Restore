@interface HKMCSettingsManager
- (BOOL)algorithmVersionMismatchOnWatch;
- (BOOL)areAllFertileWindowPredictionAlgorithmAttributesSupported;
- (BOOL)areAllMenstruationPredictionAlgorithmAttributesSupported;
- (BOOL)deviationDetectionEnabledForType:(int64_t)a3;
- (BOOL)deviationDetectionEnabledSetExplicitlyForAnyType;
- (BOOL)fertileWindowProjectionNotificationsEnabledAndSupported;
- (BOOL)fertileWindowProjectionsEnabledAndSupported;
- (BOOL)heartRateBasedProjectionsEnabled;
- (BOOL)hiddenForDisplayTypeIdentifier:(id)a3;
- (BOOL)menstruationProjectionNotificationsEnabledAndSupported;
- (BOOL)menstruationProjectionsEnabledAndSupported;
- (BOOL)someNotificationsEnabled;
- (BOOL)someNotificationsEnabledAndSupported;
- (BOOL)wristTemperatureBasedProjectionsEnabled;
- (HKMCSettingsManager)init;
- (HKMCSettingsManager)initWithUserDefaults:(id)a3 observationEnabled:(BOOL)a4;
- (NSDate)cycleTrackingOnboardingTileDismissedDate;
- (NSDateComponents)fertileWindowNotificationTimeOfDay;
- (NSDateComponents)menstruationNotificationTimeOfDay;
- (NSString)localizedTextForVersionMismatchAndDisabledProjectionsFromAlgorithmAttributes;
- (id)_historicalAnalyzerNumericalOverrideAtIndex:(int64_t)a3 forCycleAtReverseChronologicalIndex:(int64_t)a4 description:(id)a5;
- (id)_localizedTextForVersionMismatchFromOngoingCycleFactors:(id)a3 menstruationProjectionsEnabled:(BOOL)a4 fertileWindowProjectionsEnabled:(BOOL)a5 useHeartRateInput:(BOOL)a6 useWristTemperatureInput:(BOOL)a7;
- (id)dayStreamProcessorPredictionPrimarySourceOverride;
- (id)historicalAnalyzerOverridesForCycleAtReverseChronologicalIndex:(int64_t)a3;
- (id)historicalAnalyzerOverridesForCycles;
- (int64_t)cycleLengthModificationDayIndexOverriding:(int64_t)a3;
- (int64_t)dayStreamProcessorAlgorithmVersion;
- (int64_t)periodLengthModificationDayIndexOverriding:(int64_t)a3;
- (unint64_t)fertileWindowProjectionsAlgorithmAttributesWatch;
- (unint64_t)menstruationProjectionsAlgorithmAttributesWatch;
- (void)_algorithmVersionMismatchSettingsDidUpdate;
- (void)_analysisSettingsDidUpdate;
- (void)_hiddenDisplayTypesDidUpdate;
- (void)_notificationSettingsDidUpdate;
- (void)_setFertileWindowProjectionsDisabledOnWatchForVersionMismatchFromAlgorithmAttributes:(unint64_t)a3;
- (void)_setMenstruationProjectionsDisabledOnWatchForVersionMismatchFromAlgorithmAttributes:(unint64_t)a3;
- (void)_setTestDefaults:(id)a3;
- (void)_startObservingDefaults;
- (void)_startObservingNPSNotifications;
- (void)_stopObservingAllDefaults;
- (void)_stopObservingNPSNotifications;
- (void)dealloc;
- (void)fertileWindowNotificationTimeOfDay;
- (void)heartRateBasedProjectionsEnabled;
- (void)menstruationNotificationTimeOfDay;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)resetAllSettings;
- (void)setCycleTrackingOnboardingTileDismissedDate:(id)a3;
- (void)setFertileWindowNotificationTimeOfDay:(id)a3;
- (void)setFertileWindowProjectionsAlgorithmAttributesPhone:(unint64_t)a3;
- (void)setFertileWindowProjectionsAlgorithmAttributesWatch:(unint64_t)a3;
- (void)setLocalizedTextForVersionMismatchAndDisabledProjections:(id)a3;
- (void)setMenstruationNotificationTimeOfDay:(id)a3;
- (void)setMenstruationProjectionsAlgorithmAttributesPhone:(unint64_t)a3;
- (void)setMenstruationProjectionsAlgorithmAttributesWatch:(unint64_t)a3;
- (void)setProjectionAttributesOnWatchFromUseHeartRateInput:(BOOL)a3 useWristTemperatureInput:(BOOL)a4;
- (void)updateUserDefaultIfNeededForInteger:(int64_t)a3 key:(id)a4 shouldSync:(BOOL)a5;
- (void)updateUserDefaultIfNeededForObject:(id)a3 key:(id)a4 shouldSync:(BOOL)a5 shouldRemoveIfNil:(BOOL)a6;
- (void)wristTemperatureBasedProjectionsEnabled;
@end

@implementation HKMCSettingsManager

- (int64_t)cycleLengthModificationDayIndexOverriding:(int64_t)a3
{
  v5 = [MEMORY[0x277CCDD30] sharedBehavior];
  v6 = [v5 isAppleInternalInstall];

  if (v6)
  {
    v7 = [(HKMCSettingsManager *)self userDefaults];
    a3 = [v7 hkmc_integerForKey:@"CycleLengthModificationDayOverride" defaultValue:a3];
  }

  return a3;
}

- (int64_t)periodLengthModificationDayIndexOverriding:(int64_t)a3
{
  v5 = [MEMORY[0x277CCDD30] sharedBehavior];
  v6 = [v5 isAppleInternalInstall];

  if (v6)
  {
    v7 = [(HKMCSettingsManager *)self userDefaults];
    a3 = [v7 hkmc_integerForKey:@"PeriodLengthModificationDayOverride" defaultValue:a3];
  }

  return a3;
}

- (id)historicalAnalyzerOverridesForCycles
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleInternalInstall];

  if (v4)
  {
    v5 = [(HKMCSettingsManager *)self userDefaults];
    v6 = [v5 hk_safeArrayIfExistsForKeyPath:@"HistoricalCyclesPredictionPrimarySource" error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)historicalAnalyzerOverridesForCycleAtReverseChronologicalIndex:(int64_t)a3
{
  v4 = [(HKMCSettingsManager *)self historicalAnalyzerOverridesForCycles];
  if ([v4 count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
    objc_opt_class();
    v6 = HKSafeObject();
  }

  return v6;
}

- (id)_historicalAnalyzerNumericalOverrideAtIndex:(int64_t)a3 forCycleAtReverseChronologicalIndex:(int64_t)a4 description:(id)a5
{
  v6 = [(HKMCSettingsManager *)self historicalAnalyzerOverridesForCycleAtReverseChronologicalIndex:a4];
  if ([v6 count] <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndexedSubscript:a3];
    if (objc_opt_respondsToSelector())
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "integerValue")}];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)dayStreamProcessorPredictionPrimarySourceOverride
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleInternalInstall];

  if (v4)
  {
    v5 = [(HKMCSettingsManager *)self userDefaults];
    v6 = [v5 hk_safeNumberIfExistsForKeyPath:@"OngoingCyclePredictionPrimarySource" error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)dayStreamProcessorAlgorithmVersion
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleInternalInstall];

  if (v4 && (-[HKMCSettingsManager userDefaults](self, "userDefaults"), v5 = objc_claimAutoreleasedReturnValue(), [v5 hk_safeNumberIfExistsForKeyPath:@"MenstrualAlgorithmsDayStreamProcessorAlgorithmVersion" error:0], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    v7 = [v6 integerValue];

    return v7;
  }

  else
  {

    return HKHAMenstrualAlgorithmsDayStreamProcessorAlgorithmVersion();
  }
}

- (BOOL)menstruationProjectionsEnabledAndSupported
{
  v3 = [(HKMCSettingsManager *)self menstruationProjectionsEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(HKMCSettingsManager *)self areAllMenstruationPredictionAlgorithmAttributesSupported];
  }

  return v3;
}

- (BOOL)fertileWindowProjectionsEnabledAndSupported
{
  v3 = [(HKMCSettingsManager *)self fertileWindowProjectionsEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(HKMCSettingsManager *)self areAllFertileWindowPredictionAlgorithmAttributesSupported];
  }

  return v3;
}

- (BOOL)someNotificationsEnabled
{
  if ([(HKMCSettingsManager *)self menstruationNotificationsEnabled])
  {
    return 1;
  }

  return [(HKMCSettingsManager *)self fertileWindowNotificationsEnabled];
}

- (BOOL)someNotificationsEnabledAndSupported
{
  if ([(HKMCSettingsManager *)self menstruationProjectionNotificationsEnabledAndSupported])
  {
    return 1;
  }

  return [(HKMCSettingsManager *)self fertileWindowProjectionNotificationsEnabledAndSupported];
}

- (BOOL)menstruationProjectionNotificationsEnabledAndSupported
{
  v3 = [(HKMCSettingsManager *)self menstruationNotificationsEnabled];
  if (v3)
  {
    v4 = [(HKMCSettingsManager *)self areAllMenstruationPredictionAlgorithmAttributesSupported];
    LOBYTE(v3) = v4 & ![(HKMCSettingsManager *)self algorithmVersionMismatchOnWatch];
  }

  return v3;
}

- (BOOL)fertileWindowProjectionNotificationsEnabledAndSupported
{
  v3 = [(HKMCSettingsManager *)self fertileWindowNotificationsEnabled];
  if (v3)
  {
    v4 = [(HKMCSettingsManager *)self areAllFertileWindowPredictionAlgorithmAttributesSupported];
    LOBYTE(v3) = v4 & ![(HKMCSettingsManager *)self algorithmVersionMismatchOnWatch];
  }

  return v3;
}

- (BOOL)areAllMenstruationPredictionAlgorithmAttributesSupported
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleWatch];

  if (v4)
  {
    return ![(HKMCSettingsManager *)self _areAlgorithmAttributesOnPhone:[(HKMCSettingsManager *)self menstruationProjectionsAlgorithmAttributesPhone] aheadOfAlgorithmAttributesOnWatch:[(HKMCSettingsManager *)self menstruationProjectionsAlgorithmAttributesWatch]];
  }

  else
  {
    return 1;
  }
}

- (BOOL)areAllFertileWindowPredictionAlgorithmAttributesSupported
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleWatch];

  if (v4)
  {
    return ![(HKMCSettingsManager *)self _areAlgorithmAttributesOnPhone:[(HKMCSettingsManager *)self fertileWindowProjectionsAlgorithmAttributesPhone] aheadOfAlgorithmAttributesOnWatch:[(HKMCSettingsManager *)self fertileWindowProjectionsAlgorithmAttributesWatch]];
  }

  else
  {
    return 1;
  }
}

- (NSString)localizedTextForVersionMismatchAndDisabledProjectionsFromAlgorithmAttributes
{
  if ([(HKMCSettingsManager *)self areAllMenstruationPredictionAlgorithmAttributesSupported]&& [(HKMCSettingsManager *)self areAllFertileWindowPredictionAlgorithmAttributesSupported])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(HKMCSettingsManager *)self localizedTextForVersionMismatchAndDisabledProjections];
  }

  return v3;
}

- (void)setProjectionAttributesOnWatchFromUseHeartRateInput:(BOOL)a3 useWristTemperatureInput:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = [v7 isAppleWatch];

  if (v8)
  {
    v9 = 3;
    if (!v5)
    {
      v9 = 1;
    }

    if (v4)
    {
      v10 = v9 | 4;
    }

    else
    {
      v10 = v9;
    }

    [(HKMCSettingsManager *)self setFertileWindowProjectionsAlgorithmAttributesWatch:v10];

    [(HKMCSettingsManager *)self setMenstruationProjectionsAlgorithmAttributesWatch:v10];
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_FAULT))
    {
      [HKMCSettingsManager(Support) setProjectionAttributesOnWatchFromUseHeartRateInput:v11 useWristTemperatureInput:?];
    }
  }
}

- (void)_setMenstruationProjectionsDisabledOnWatchForVersionMismatchFromAlgorithmAttributes:(unint64_t)a3
{
  [(HKMCSettingsManager *)self setMenstruationProjectionsDisabledOnWatchForVersionMismatch:a3 != 0];

  [(HKMCSettingsManager *)self setMenstruationProjectionsAlgorithmAttributesPhone:a3];
}

- (void)_setFertileWindowProjectionsDisabledOnWatchForVersionMismatchFromAlgorithmAttributes:(unint64_t)a3
{
  [(HKMCSettingsManager *)self setFertileWindowProjectionsDisabledOnWatchForVersionMismatch:a3 != 0];

  [(HKMCSettingsManager *)self setFertileWindowProjectionsAlgorithmAttributesPhone:a3];
}

- (id)_localizedTextForVersionMismatchFromOngoingCycleFactors:(id)a3 menstruationProjectionsEnabled:(BOOL)a4 fertileWindowProjectionsEnabled:(BOOL)a5 useHeartRateInput:(BOOL)a6 useWristTemperatureInput:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v10 = a4;
  v11 = a3;
  v12 = HKMCAlgorithmSuppressPeriodPredictionsFromCycleFactorSamples(v11);
  v13 = HKMCForceDisableFertileWindowProjectionsFromCycleFactorSamples(v11);
  v14 = HKMCForceDisablePeriodProjectionsFromCycleFactorSamples(v11);

  if (!v10 || v12)
  {
    v15 = !a5 | v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0;
  if ((v15 & 1) == 0 && (v8 || v7) | v14 & (v12 ^ 1))
  {
    v16 = HKMCLocalizedString(@"PROJECTIONS_DISABLED_FOR_VERSION_MISMATCH");
  }

  return v16;
}

- (HKMCSettingsManager)init
{
  v3 = [MEMORY[0x277CBEBD0] hkmc_menstrualCyclesDefaults];
  v4 = [(HKMCSettingsManager *)self initWithUserDefaults:v3 observationEnabled:1];

  return v4;
}

- (HKMCSettingsManager)initWithUserDefaults:(id)a3 observationEnabled:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v22.receiver = self;
  v22.super_class = HKMCSettingsManager;
  v8 = [(HKMCSettingsManager *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userDefaults, a3);
    v9->_observationEnabled = v4;
    v10 = objc_alloc(MEMORY[0x277CCD738]);
    v11 = [v10 initWithName:@"HKMCSettingsManagerObservers" loggingCategory:*MEMORY[0x277CCC2E8]];
    observers = v9->_observers;
    v9->_observers = v11;

    v13 = _AnalysisSettingKeys();
    v14 = _NotificationSettingKeys();
    v15 = [v13 arrayByAddingObjectsFromArray:v14];
    v16 = _HiddenDisplayTypeSettingKeys();
    v17 = [v15 arrayByAddingObjectsFromArray:v16];
    v18 = _AlgorithmVersionMismatchSettingKeys();
    v19 = [v17 arrayByAddingObjectsFromArray:v18];
    allSettingsToObserve = v9->_allSettingsToObserve;
    v9->_allSettingsToObserve = v19;

    if (v4)
    {
      [(HKMCSettingsManager *)v9 _startObservingDefaults];
      [(HKMCSettingsManager *)v9 _startObservingNPSNotifications];
    }
  }

  return v9;
}

- (void)dealloc
{
  if (self->_observationEnabled)
  {
    [(HKMCSettingsManager *)self _stopObservingAllDefaults];
    [(HKMCSettingsManager *)self _stopObservingNPSNotifications];
  }

  v3.receiver = self;
  v3.super_class = HKMCSettingsManager;
  [(HKMCSettingsManager *)&v3 dealloc];
}

- (void)_hiddenDisplayTypesDidUpdate
{
  observers = self->_observers;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__HKMCSettingsManager__hiddenDisplayTypesDidUpdate__block_invoke;
  v3[3] = &unk_2796D5258;
  v3[4] = self;
  [(HKObserverSet *)observers notifyObservers:v3];
}

void __51__HKMCSettingsManager__hiddenDisplayTypesDidUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 settingsManagerDidUpdateHiddenDisplayTypes:*(a1 + 32)];
  }
}

- (void)_analysisSettingsDidUpdate
{
  observers = self->_observers;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__HKMCSettingsManager__analysisSettingsDidUpdate__block_invoke;
  v3[3] = &unk_2796D5258;
  v3[4] = self;
  [(HKObserverSet *)observers notifyObservers:v3];
}

void __49__HKMCSettingsManager__analysisSettingsDidUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 settingsManagerDidUpdateAnalysisSettings:*(a1 + 32)];
  }
}

- (void)_notificationSettingsDidUpdate
{
  observers = self->_observers;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__HKMCSettingsManager__notificationSettingsDidUpdate__block_invoke;
  v3[3] = &unk_2796D5258;
  v3[4] = self;
  [(HKObserverSet *)observers notifyObservers:v3];
}

void __53__HKMCSettingsManager__notificationSettingsDidUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 settingsManagerDidUpdateNotificationSettings:*(a1 + 32)];
  }
}

- (void)_algorithmVersionMismatchSettingsDidUpdate
{
  observers = self->_observers;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__HKMCSettingsManager__algorithmVersionMismatchSettingsDidUpdate__block_invoke;
  v3[3] = &unk_2796D5258;
  v3[4] = self;
  [(HKObserverSet *)observers notifyObservers:v3];
}

void __65__HKMCSettingsManager__algorithmVersionMismatchSettingsDidUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 settingsManagerDidUpdateAlgorithmVersionMismatchSettings:*(a1 + 32)];
  }
}

- (void)_startObservingDefaults
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_allSettingsToObserve;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NSUserDefaults *)self->_userDefaults addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) options:3 context:0, v9];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingAllDefaults
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_allSettingsToObserve;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = objc_opt_class();
    v13 = *MEMORY[0x277CCA300];
    v14 = v12;
    v15 = [v9 objectForKeyedSubscript:v13];
    v16 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v26 = 138544130;
    v27 = v12;
    v28 = 2114;
    v29 = v8;
    v30 = 2114;
    v31 = v15;
    v32 = 2114;
    v33 = v16;
    _os_log_impl(&dword_2518FC000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ changed: %{public}@ -> %{public}@", &v26, 0x2Au);
  }

  v17 = _AnalysisSettingKeys();
  v18 = [v17 containsObject:v8];

  if (v18)
  {
    [(HKMCSettingsManager *)self _analysisSettingsDidUpdate];
  }

  v19 = _NotificationSettingKeys();
  v20 = [v19 containsObject:v8];

  if (v20)
  {
    [(HKMCSettingsManager *)self _notificationSettingsDidUpdate];
  }

  v21 = _HiddenDisplayTypeSettingKeys();
  v22 = [v21 containsObject:v8];

  if (v22)
  {
    [(HKMCSettingsManager *)self _hiddenDisplayTypesDidUpdate];
  }

  v23 = _AlgorithmVersionMismatchSettingKeys();
  v24 = [v23 containsObject:v8];

  if (v24)
  {
    [(HKMCSettingsManager *)self _algorithmVersionMismatchSettingsDidUpdate];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_startObservingNPSNotifications
{
  objc_initWeak(&location, self);
  self->_notificationSettingsNotifyToken = -1;
  v3 = [@"HKMCNotificationSettingsDidUpdate" UTF8String];
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54__HKMCSettingsManager__startObservingNPSNotifications__block_invoke;
  handler[3] = &unk_2796D5280;
  objc_copyWeak(&v10, &location);
  notify_register_dispatch(v3, &self->_notificationSettingsNotifyToken, v4, handler);

  self->_algorithmVersionMismatchSettingsNotifyToken = -1;
  v6 = [@"HKMCAlgorithmVersionMismatchSettingsDidUpdate" UTF8String];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HKMCSettingsManager__startObservingNPSNotifications__block_invoke_2;
  v7[3] = &unk_2796D5280;
  objc_copyWeak(&v8, &location);
  notify_register_dispatch(v6, &self->_algorithmVersionMismatchSettingsNotifyToken, MEMORY[0x277D85CD0], v7);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __54__HKMCSettingsManager__startObservingNPSNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notificationSettingsDidUpdate];
}

void __54__HKMCSettingsManager__startObservingNPSNotifications__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _algorithmVersionMismatchSettingsDidUpdate];
}

- (void)_stopObservingNPSNotifications
{
  notificationSettingsNotifyToken = self->_notificationSettingsNotifyToken;
  if (notificationSettingsNotifyToken != -1)
  {
    notify_cancel(notificationSettingsNotifyToken);
  }

  algorithmVersionMismatchSettingsNotifyToken = self->_algorithmVersionMismatchSettingsNotifyToken;
  if (algorithmVersionMismatchSettingsNotifyToken != -1)
  {

    notify_cancel(algorithmVersionMismatchSettingsNotifyToken);
  }
}

- (void)_setTestDefaults:(id)a3
{
  v4 = a3;
  [(HKMCSettingsManager *)self _stopObservingAllDefaults];
  userDefaults = self->_userDefaults;
  self->_userDefaults = v4;

  [(HKMCSettingsManager *)self _startObservingDefaults];
}

- (unint64_t)menstruationProjectionsAlgorithmAttributesWatch
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_unitTest_watchMenstruationPredictionAlgorithmAttributesSupported)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      *v8 = 138543362;
      *&v8[4] = objc_opt_class();
      v5 = *&v8[4];
      _os_log_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Overriding -watchMenstruationPredictionWatchAlgorithmAttributesSupported", v8, 0xCu);
    }

    result = [(NSNumber *)self->_unitTest_watchMenstruationPredictionAlgorithmAttributesSupported unsignedIntegerValue];
  }

  else
  {
    result = [(NSUserDefaults *)self->_userDefaults integerForKey:@"MenstruationProjectionsAlgorithmAttributesWatch"];
    if (!result)
    {
      result = 7;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setMenstruationProjectionsAlgorithmAttributesWatch:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = MEMORY[0x277CCABB0];
    v9 = v7;
    v10 = [v8 numberWithUnsignedInteger:a3];
    v12 = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_2518FC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set menstruation projections algorithm attributes on watch: %{public}@", &v12, 0x16u);
  }

  [(NSUserDefaults *)self->_userDefaults setInteger:a3 forKey:@"MenstruationProjectionsAlgorithmAttributesWatch"];
  v11 = *MEMORY[0x277D85DE8];
}

- (unint64_t)fertileWindowProjectionsAlgorithmAttributesWatch
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_unitTest_watchFertileWindowPredictionAlgorithmAttributesSupported)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      *v8 = 138543362;
      *&v8[4] = objc_opt_class();
      v5 = *&v8[4];
      _os_log_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Overriding -watchFertileWindowPredictionAlgorithmAttributesSupported", v8, 0xCu);
    }

    result = [(NSNumber *)self->_unitTest_watchFertileWindowPredictionAlgorithmAttributesSupported unsignedIntegerValue];
  }

  else
  {
    result = [(NSUserDefaults *)self->_userDefaults integerForKey:@"FertileWindowProjectionsAlgorithmAttributesWatch"];
    if (!result)
    {
      result = 7;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setFertileWindowProjectionsAlgorithmAttributesWatch:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = MEMORY[0x277CCABB0];
    v9 = v7;
    v10 = [v8 numberWithUnsignedInteger:a3];
    v12 = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_2518FC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set fertile window projections algorithm attributes on watch: %{public}@", &v12, 0x16u);
  }

  [(NSUserDefaults *)self->_userDefaults setInteger:a3 forKey:@"FertileWindowProjectionsAlgorithmAttributesWatch"];
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)algorithmVersionMismatchOnWatch
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_unitTest_algorithmVersionMismatchOnWatch)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      *v18 = 138543362;
      *&v18[4] = objc_opt_class();
      v5 = *&v18[4];
      _os_log_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Overriding -algorithmVersionMismatchOnWatch", v18, 0xCu);
    }

    result = [(NSNumber *)self->_unitTest_algorithmVersionMismatchOnWatch BOOLValue];
  }

  else
  {
    v7 = [MEMORY[0x277CCDD30] sharedBehavior];
    v8 = [v7 isAppleWatch];

    if (v8)
    {
      v9 = [MEMORY[0x277D2BCF8] sharedInstance];
      v10 = [v9 getActivePairedDevice];
      v11 = HKMCIsAlgorithmsVersionSameOnPairedDevice(v10);

      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = objc_opt_class();
        v15 = @"NO";
        if (v11)
        {
          v15 = @"YES";
        }

        *v18 = 138543618;
        *&v18[4] = v14;
        *&v18[12] = 2114;
        *&v18[14] = v15;
        v16 = v14;
        _os_log_impl(&dword_2518FC000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Algorithm version same on paired device: %{public}@", v18, 0x16u);
      }

      result = v11 ^ 1;
    }

    else
    {
      result = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setLocalizedTextForVersionMismatchAndDisabledProjections:(id)a3
{
  v4 = MEMORY[0x277CCDD30];
  v7 = a3;
  v5 = [v4 sharedBehavior];
  v6 = [v5 isAppleWatch];

  [(HKMCSettingsManager *)self updateUserDefaultIfNeededForObject:v7 key:@"LocalizedTextForVersionMismatchAndDisabledProjections" shouldSync:v6 ^ 1u shouldRemoveIfNil:0];
}

- (BOOL)heartRateBasedProjectionsEnabled
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
  {
    [(HKMCSettingsManager *)v3 heartRateBasedProjectionsEnabled];
  }

  return [(NSUserDefaults *)self->_userDefaults hk_BOOLForKey:@"SensorBasedProjectionsEnabled" defaultValue:1];
}

- (BOOL)wristTemperatureBasedProjectionsEnabled
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
  {
    [(HKMCSettingsManager *)v3 wristTemperatureBasedProjectionsEnabled];
  }

  return [(NSUserDefaults *)self->_userDefaults hk_BOOLForKey:@"WristTemperatureBasedProjectionsEnabled" defaultValue:1];
}

- (void)setMenstruationProjectionsAlgorithmAttributesPhone:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = MEMORY[0x277CCABB0];
    v9 = v7;
    v10 = [v8 numberWithUnsignedInteger:a3];
    v14 = 138543618;
    v15 = v7;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_2518FC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set menstruation projections algorithm attributes: %{public}@", &v14, 0x16u);
  }

  v11 = [MEMORY[0x277CCDD30] sharedBehavior];
  v12 = [v11 isAppleWatch];

  [(HKMCSettingsManager *)self updateUserDefaultIfNeededForInteger:a3 key:@"MenstruationProjectionsAlgorithmAttributesPhone" shouldSync:v12 ^ 1u];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setFertileWindowProjectionsAlgorithmAttributesPhone:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = MEMORY[0x277CCABB0];
    v9 = v7;
    v10 = [v8 numberWithUnsignedInteger:a3];
    v14 = 138543618;
    v15 = v7;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_2518FC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set fertile window projections algorithm attributes: %{public}@", &v14, 0x16u);
  }

  v11 = [MEMORY[0x277CCDD30] sharedBehavior];
  v12 = [v11 isAppleWatch];

  [(HKMCSettingsManager *)self updateUserDefaultIfNeededForInteger:a3 key:@"FertileWindowProjectionsAlgorithmAttributesPhone" shouldSync:v12 ^ 1u];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateUserDefaultIfNeededForObject:(id)a3 key:(id)a4 shouldSync:(BOOL)a5 shouldRemoveIfNil:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [(NSUserDefaults *)self->_userDefaults objectForKey:v11];
  if (v12 == v10)
  {
    goto LABEL_14;
  }

  _HKInitializeLogging();
  v13 = MEMORY[0x277CCC2E8];
  v14 = *MEMORY[0x277CCC2E8];
  v15 = os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT);
  if (!v10 && v6)
  {
    if (v15)
    {
      v16 = v14;
      *v26 = 138543618;
      *&v26[4] = objc_opt_class();
      *&v26[12] = 2114;
      *&v26[14] = v11;
      v17 = *&v26[4];
      _os_log_impl(&dword_2518FC000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing user default key: %{public}@", v26, 0x16u);
    }

    [(NSUserDefaults *)self->_userDefaults removeObjectForKey:v11, *v26, *&v26[16]];
    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_11:
    _HKInitializeLogging();
    v20 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = objc_opt_class();
      *v26 = 138543618;
      *&v26[4] = v22;
      *&v26[12] = 2114;
      *&v26[14] = v11;
      v23 = v22;
      _os_log_impl(&dword_2518FC000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting sync of nano preferences for key: %{public}@", v26, 0x16u);
    }

    v24 = [MEMORY[0x277CBEB98] setWithObject:v11];
    HKSynchronizeNanoPreferencesUserDefaults();

    goto LABEL_14;
  }

  if (v15)
  {
    v18 = v14;
    *v26 = 138543874;
    *&v26[4] = objc_opt_class();
    *&v26[12] = 2114;
    *&v26[14] = v11;
    *&v26[22] = 2114;
    v27 = v10;
    v19 = *&v26[4];
    _os_log_impl(&dword_2518FC000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating user default for key: %{public}@ with value %{public}@", v26, 0x20u);
  }

  [(NSUserDefaults *)self->_userDefaults setObject:v10 forKey:v11, *v26, *&v26[8], v27];
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_14:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)updateUserDefaultIfNeededForInteger:(int64_t)a3 key:(id)a4 shouldSync:(BOOL)a5
{
  v5 = a5;
  v21 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if ([(NSUserDefaults *)self->_userDefaults integerForKey:v8]!= a3)
  {
    _HKInitializeLogging();
    v9 = MEMORY[0x277CCC2E8];
    v10 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      *v19 = 138543874;
      *&v19[4] = objc_opt_class();
      *&v19[12] = 2114;
      *&v19[14] = v8;
      *&v19[22] = 2048;
      v20 = a3;
      v12 = *&v19[4];
      _os_log_impl(&dword_2518FC000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating user default for key: %{public}@ with value %ld@", v19, 0x20u);
    }

    [(NSUserDefaults *)self->_userDefaults setInteger:a3 forKey:v8, *v19, *&v19[16], v20];
    if (v5)
    {
      _HKInitializeLogging();
      v13 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = objc_opt_class();
        *v19 = 138543618;
        *&v19[4] = v15;
        *&v19[12] = 2114;
        *&v19[14] = v8;
        v16 = v15;
        _os_log_impl(&dword_2518FC000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting sync of nano preferences for key: %{public}@", v19, 0x16u);
      }

      v17 = [MEMORY[0x277CBEB98] setWithObject:v8];
      HKSynchronizeNanoPreferencesUserDefaults();
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (NSDateComponents)menstruationNotificationTimeOfDay
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleInternalInstall];

  if (v4 && (v5 = MEMORY[0x277CCAAC8], v6 = objc_opt_class(), -[NSUserDefaults dataForKey:](self->_userDefaults, "dataForKey:", @"MenstruationNotificationTimeOfDay"), v7 = objc_claimAutoreleasedReturnValue(), [v5 unarchivedObjectOfClass:v6 fromData:v7 error:0], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [(HKMCSettingsManager *)v9 menstruationNotificationTimeOfDay];
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v10 = [MEMORY[0x277CBEA80] currentCalendar];
    [v8 setCalendar:v10];

    [v8 setHour:20];
  }

  return v8;
}

- (void)setMenstruationNotificationTimeOfDay:(id)a3
{
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [NSUserDefaults setObject:"setObject:forKey:" forKey:?];
  v4 = [MEMORY[0x277CCDD30] sharedBehavior];
  v5 = [v4 isAppleWatch];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:@"MenstruationNotificationTimeOfDay"];
    HKSynchronizeNanoPreferencesUserDefaults();
  }
}

- (NSDateComponents)fertileWindowNotificationTimeOfDay
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleInternalInstall];

  if (v4 && (v5 = MEMORY[0x277CCAAC8], v6 = objc_opt_class(), -[NSUserDefaults dataForKey:](self->_userDefaults, "dataForKey:", @"FertileWindowNotificationTimeOfDay"), v7 = objc_claimAutoreleasedReturnValue(), [v5 unarchivedObjectOfClass:v6 fromData:v7 error:0], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [(HKMCSettingsManager *)v9 fertileWindowNotificationTimeOfDay];
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v10 = [MEMORY[0x277CBEA80] currentCalendar];
    [v8 setCalendar:v10];

    [v8 setHour:20];
  }

  return v8;
}

- (void)setFertileWindowNotificationTimeOfDay:(id)a3
{
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [NSUserDefaults setObject:"setObject:forKey:" forKey:?];
  v4 = [MEMORY[0x277CCDD30] sharedBehavior];
  v5 = [v4 isAppleWatch];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:@"FertileWindowNotificationTimeOfDay"];
    HKSynchronizeNanoPreferencesUserDefaults();
  }
}

- (BOOL)deviationDetectionEnabledSetExplicitlyForAnyType
{
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"IrregularDeviationDetectionEnabled"];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"InfrequentDeviationDetectionEnabled"];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ProlongedDeviationDetectionEnabled"];
      if (v6)
      {
        v4 = 1;
      }

      else
      {
        v7 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"SpottingDeviationDetectionEnabled"];
        v4 = v7 != 0;
      }
    }
  }

  return v4;
}

- (BOOL)deviationDetectionEnabledForType:(int64_t)a3
{
  userDefaults = self->_userDefaults;
  if ((a3 - 1) > 2)
  {
    v4 = @"ProlongedDeviationDetectionEnabled";
  }

  else
  {
    v4 = off_2796D52A0[a3 - 1];
  }

  return [(NSUserDefaults *)userDefaults hk_BOOLForKey:v4 defaultValue:1];
}

- (NSDate)cycleTrackingOnboardingTileDismissedDate
{
  if ([(NSUserDefaults *)self->_userDefaults hk_keyExists:@"CycleTrackingOnboardingTileDismissedDate"])
  {
    v3 = MEMORY[0x277CBEAA8];
    [(NSUserDefaults *)self->_userDefaults doubleForKey:@"CycleTrackingOnboardingTileDismissedDate"];
    v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCycleTrackingOnboardingTileDismissedDate:(id)a3
{
  userDefaults = self->_userDefaults;
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];

    [(NSUserDefaults *)userDefaults setDouble:@"CycleTrackingOnboardingTileDismissedDate" forKey:?];
  }

  else
  {
    v4 = self->_userDefaults;

    [(NSUserDefaults *)v4 removeObjectForKey:@"CycleTrackingOnboardingTileDismissedDate"];
  }
}

- (BOOL)hiddenForDisplayTypeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSUserDefaults *)self->_userDefaults dictionaryForKey:@"ShouldHideByDisplayTypeIdentifier"];
  v6 = v5;
  if (@"DisplayTypeIdentifierMenstrualFlow" == v4)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:v4];

    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:v4];
      LOBYTE(v7) = [v8 BOOLValue];
    }
  }

  return v7;
}

- (void)resetAllSettings
{
  v25 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543362;
    v24 = objc_opt_class();
    v5 = v24;
    _os_log_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Reset all settings", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_allSettingsToObserve;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [MEMORY[0x277CBEBD0] hkmc_menstrualCyclesDefaults];
        [v12 removeObjectForKey:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v13 = [MEMORY[0x277CBEBD0] hkmc_menstrualCyclesDefaults];
  [v13 removeObjectForKey:@"CycleTrackingOnboardingTileDismissedDate"];

  v14 = [MEMORY[0x277CCDD30] sharedBehavior];
  v15 = [v14 isAppleWatch];

  if ((v15 & 1) == 0)
  {
    v16 = [MEMORY[0x277CBEB98] setWithArray:self->_allSettingsToObserve];
    HKSynchronizeNanoPreferencesUserDefaults();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)heartRateBasedProjectionsEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  OUTLINED_FUNCTION_0_3(&dword_2518FC000, v5, v6, "[%{public}@] -heartRateBasedProjectionsEnabled is deprecated. Please move to using HKFeatureSettingsKeyEnabled for HKFeatureIdentifierMenstrualCyclesHeartRateInput", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)wristTemperatureBasedProjectionsEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  OUTLINED_FUNCTION_0_3(&dword_2518FC000, v5, v6, "[%{public}@] -wristTemperatureBasedProjectionsEnabled is deprecated. Please move to using HKFeatureSettingsKeyEnabled for HKFeatureIdentifierMenstrualCyclesWristTemperatureInput", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)menstruationNotificationTimeOfDay
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  OUTLINED_FUNCTION_1_2();
  v3 = v2;
  OUTLINED_FUNCTION_1(&dword_2518FC000, v4, v5, "[%{public}@] Using overridden menstruation notification time: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fertileWindowNotificationTimeOfDay
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  OUTLINED_FUNCTION_1_2();
  v3 = v2;
  OUTLINED_FUNCTION_1(&dword_2518FC000, v4, v5, "[%{public}@] Using overridden fertile window notification time: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end