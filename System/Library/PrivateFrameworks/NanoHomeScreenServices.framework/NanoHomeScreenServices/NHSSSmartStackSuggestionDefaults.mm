@interface NHSSSmartStackSuggestionDefaults
+ (NHSSSmartStackSuggestionDefaults)sharedInstance;
- (BOOL)clearWidgetAlertAcknowledged;
- (BOOL)enabledDictionaryValueWithIdentifier:(id)identifier onDomainObjectWithKey:(id)key;
- (BOOL)globalSuggestionsEnabled;
- (BOOL)presentSmartStackFromHintAlertAcknowledged;
- (BOOL)soundDetectionButtonDismissedOnce;
- (BOOL)suggestionsShowHintEnabled;
- (BOOL)widgetSuggestionsEnabledForContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier kind:(id)kind;
- (NHSSSmartStackSuggestionDefaults)init;
- (double)defaultMuteForHourDuration;
- (double)defaultMuteForTodayDuration;
- (double)defaultMuteHintAfterIgnoredDuration;
- (double)defaultMuteHintForHourDuration;
- (double)defaultMuteHintForTodayDuration;
- (id)_compositeKeyWithContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier kind:(id)kind;
- (id)diagnosticDictionaryRepresentation;
- (id)domainAccessorForReads;
- (id)hintUnmuteDateForContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier kind:(id)kind;
- (id)widgetSuggestionsUnmuteDateForContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier kind:(id)kind;
- (void)_cleanUpExpiredMuteHintPreferences;
- (void)_cleanUpExpiredMutePreferences;
- (void)_mainQueue_notifyObserversDefaultsDidChange;
- (void)_mainQueue_notifyObserversDefaultsHintDidChange;
- (void)_observeChangesToUserDefaults;
- (void)_requestUserDefaultsSyncForKey:(id)key;
- (void)_scheduleTimerToUnmuteHintForKey:(id)key onDate:(id)date;
- (void)_scheduleTimerToUnmuteWidgetForKey:(id)key onDate:(id)date;
- (void)_scheduleTimersToUnmuteHints;
- (void)_scheduleTimersToUnmuteWidgets;
- (void)addHintObserver:(id)observer;
- (void)addObserver:(id)observer;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeHintObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)setHintUnmuteDate:(id)date forContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier kind:(id)kind;
- (void)setNPSSyncedBoolEnabledValue:(BOOL)value forDomainObjectKey:(id)key withDictionaryKeyIfDomainIsDictionary:(id)dictionary preferenceDeletedIfValueEnabled:(BOOL)enabled;
- (void)setWidgetSuggestionsUnmuteDate:(id)date forContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier kind:(id)kind;
- (void)smartStackNPSSuggestionsDefaultsDidChange;
@end

@implementation NHSSSmartStackSuggestionDefaults

+ (NHSSSmartStackSuggestionDefaults)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[NHSSSmartStackSuggestionDefaults sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_1;

  return v3;
}

uint64_t __50__NHSSSmartStackSuggestionDefaults_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_1 = objc_alloc_init(NHSSSmartStackSuggestionDefaults);

  return MEMORY[0x2821F96F8]();
}

- (NHSSSmartStackSuggestionDefaults)init
{
  v19.receiver = self;
  v19.super_class = NHSSSmartStackSuggestionDefaults;
  v2 = [(NHSSSmartStackSuggestionDefaults *)&v19 init];
  if (v2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"NHSSSmartStackSuggestionDefaults is unsupported on companion"];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v2->_isClockFaceProcess = [bundleIdentifier isEqualToString:@"com.apple.clockface"];

    v2->_isInternalBuild = MGGetBoolAnswer();
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lock_observers = v2->_lock_observers;
    v2->_lock_observers = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lock_hintObservers = v2->_lock_hintObservers;
    v2->_lock_hintObservers = weakObjectsHashTable2;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    lock_scheduledTimers = v2->_lock_scheduledTimers;
    v2->_lock_scheduledTimers = strongToWeakObjectsMapTable;

    strongToWeakObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    lock_scheduledHintTimers = v2->_lock_scheduledHintTimers;
    v2->_lock_scheduledHintTimers = strongToWeakObjectsMapTable2;

    v13 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.NanoHomeScreen.SmartStackSuggestions"];
    lock_userDefaults = v2->_lock_userDefaults;
    v2->_lock_userDefaults = v13;

    v2->_lock._os_unfair_lock_opaque = 0;
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.NanoHomeScreen.SmartStackSuggestionDefaults.syncQueue", v15);
    queue = v2->_queue;
    v2->_queue = v16;

    [(NHSSSmartStackSuggestionDefaults *)v2 _cleanUpExpiredMutePreferences];
    [(NHSSSmartStackSuggestionDefaults *)v2 _cleanUpExpiredMuteHintPreferences];
    [(NHSSSmartStackSuggestionDefaults *)v2 _observeChangesToUserDefaults];
    [(NHSSSmartStackSuggestionDefaults *)v2 _scheduleTimersToUnmuteWidgets];
    [(NHSSSmartStackSuggestionDefaults *)v2 _scheduleTimersToUnmuteHints];
  }

  return v2;
}

- (BOOL)clearWidgetAlertAcknowledged
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSUserDefaults *)self->_lock_userDefaults objectForKey:@"clearWidgetAlertAcknowledged"];
  v4 = v3;
  v5 = MEMORY[0x277CBEC28];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  os_unfair_lock_unlock(&self->_lock);
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (BOOL)presentSmartStackFromHintAlertAcknowledged
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSUserDefaults *)self->_lock_userDefaults objectForKey:@"presentSmartStackFromHintAlertAcknowledged"];
  v4 = v3;
  v5 = MEMORY[0x277CBEC28];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  os_unfair_lock_unlock(&self->_lock);
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (BOOL)soundDetectionButtonDismissedOnce
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSUserDefaults *)self->_lock_userDefaults objectForKey:@"soundDetectionButtonDismissedOnce"];
  v4 = v3;
  v5 = MEMORY[0x277CBEC28];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  os_unfair_lock_unlock(&self->_lock);
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (double)defaultMuteForHourDuration
{
  if (!self->_isInternalBuild)
  {
    return 3600.0;
  }

  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSUserDefaults *)self->_lock_userDefaults objectForKey:@"defaultMuteForHourDuration"];
  os_unfair_lock_unlock(&self->_lock);
  if (!v3)
  {
    return 3600.0;
  }

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)defaultMuteForTodayDuration
{
  if (!self->_isInternalBuild)
  {
    return 86400.0;
  }

  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSUserDefaults *)self->_lock_userDefaults objectForKey:@"defaultMuteForTodayDuration"];
  os_unfair_lock_unlock(&self->_lock);
  if (!v3)
  {
    return 86400.0;
  }

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)defaultMuteHintForHourDuration
{
  if (!self->_isInternalBuild)
  {
    return 3600.0;
  }

  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSUserDefaults *)self->_lock_userDefaults objectForKey:@"defaultMuteHintForHourDuration"];
  os_unfair_lock_unlock(&self->_lock);
  if (!v3)
  {
    return 3600.0;
  }

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)defaultMuteHintForTodayDuration
{
  if (!self->_isInternalBuild)
  {
    return 86400.0;
  }

  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSUserDefaults *)self->_lock_userDefaults objectForKey:@"defaultMuteHintForTodayDuration"];
  os_unfair_lock_unlock(&self->_lock);
  if (!v3)
  {
    return 86400.0;
  }

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)defaultMuteHintAfterIgnoredDuration
{
  if (!self->_isInternalBuild)
  {
    return 480.0;
  }

  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSUserDefaults *)self->_lock_userDefaults objectForKey:@"defaultMuteHintAfterIgnoredDuration"];
  os_unfair_lock_unlock(&self->_lock);
  if (!v3)
  {
    return 480.0;
  }

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (id)domainAccessorForReads
{
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoHomeScreen.SmartStackSuggestions"];
  if (!v2)
  {
    v3 = NHSSLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(NHSSSmartStackSuggestionDefaults *)v3 domainAccessorForReads:v4];
    }
  }

  return v2;
}

- (void)setNPSSyncedBoolEnabledValue:(BOOL)value forDomainObjectKey:(id)key withDictionaryKeyIfDomainIsDictionary:(id)dictionary preferenceDeletedIfValueEnabled:(BOOL)enabled
{
  keyCopy = key;
  dictionaryCopy = dictionary;
  if (keyCopy && [keyCopy length])
  {
    queue = self->_queue;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __154__NHSSSmartStackSuggestionDefaults_setNPSSyncedBoolEnabledValue_forDomainObjectKey_withDictionaryKeyIfDomainIsDictionary_preferenceDeletedIfValueEnabled___block_invoke;
    v21[3] = &unk_279932EB8;
    v22 = dictionaryCopy;
    enabledCopy = enabled;
    valueCopy = value;
    v23 = keyCopy;
    selfCopy = self;
    dispatch_async(queue, v21);

    v13 = v22;
  }

  else
  {
    v13 = NHSSLogDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(NHSSSmartStackSuggestionDefaults *)v13 setNPSSyncedBoolEnabledValue:v14 forDomainObjectKey:v15 withDictionaryKeyIfDomainIsDictionary:v16 preferenceDeletedIfValueEnabled:v17, v18, v19, v20];
    }
  }
}

void __154__NHSSSmartStackSuggestionDefaults_setNPSSyncedBoolEnabledValue_forDomainObjectKey_withDictionaryKeyIfDomainIsDictionary_preferenceDeletedIfValueEnabled___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoHomeScreen.SmartStackSuggestions"];
  v3 = v2;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v4 = [v2 objectForKey:*(a1 + 40)];
      v5 = v4;
      if (!v4)
      {
        v4 = MEMORY[0x277CBEC10];
      }

      v6 = [v4 mutableCopy];

      v7 = *(a1 + 56);
      v8 = *(a1 + 57);
      if (v7 == 1 && (v8 & 1) != 0)
      {
        [v6 removeObjectForKey:*(a1 + 32)];
      }

      else
      {
        v19 = [MEMORY[0x277CCABB0] numberWithBool:(v7 ^ 1) & v8];
        [v6 setObject:v19 forKey:*(a1 + 32)];
      }

      v20 = [v6 count];
      v21 = *(a1 + 40);
      if (!v20)
      {
        [v3 removeObjectForKey:*(a1 + 40)];
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 57);
      if (v17 == 1 && (v18 & 1) != 0)
      {
        [v2 removeObjectForKey:*(a1 + 40)];
LABEL_20:
        v22 = [v3 synchronize];
        v23 = objc_alloc_init(MEMORY[0x277D2BA60]);
        v24 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
        [v23 synchronizeNanoDomain:@"com.apple.NanoHomeScreen.SmartStackSuggestions" keys:v24];
        [*(a1 + 48) smartStackNPSSuggestionsDefaultsDidChange];

        goto LABEL_21;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithBool:(v17 ^ 1) & v18];
      v21 = *(a1 + 40);
    }

    [v3 setObject:v6 forKey:v21];
    goto LABEL_19;
  }

  v9 = NHSSLogDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __154__NHSSSmartStackSuggestionDefaults_setNPSSyncedBoolEnabledValue_forDomainObjectKey_withDictionaryKeyIfDomainIsDictionary_preferenceDeletedIfValueEnabled___block_invoke_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
  }

LABEL_21:
}

- (BOOL)globalSuggestionsEnabled
{
  domainAccessorForReads = [(NHSSSmartStackSuggestionDefaults *)self domainAccessorForReads];
  v3 = [domainAccessorForReads objectForKey:@"global"];
  v4 = v3;
  v5 = MEMORY[0x277CBEC38];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  bOOLValue = [v6 BOOLValue];
  return bOOLValue;
}

- (BOOL)suggestionsShowHintEnabled
{
  domainAccessorForReads = [(NHSSSmartStackSuggestionDefaults *)self domainAccessorForReads];
  v3 = [domainAccessorForReads objectForKey:@"showHint"];
  v4 = v3;
  v5 = MEMORY[0x277CBEC38];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  bOOLValue = [v6 BOOLValue];
  return bOOLValue;
}

- (BOOL)enabledDictionaryValueWithIdentifier:(id)identifier onDomainObjectWithKey:(id)key
{
  keyCopy = key;
  identifierCopy = identifier;
  domainAccessorForReads = [(NHSSSmartStackSuggestionDefaults *)self domainAccessorForReads];
  v9 = [domainAccessorForReads objectForKey:keyCopy];

  v10 = [v9 objectForKey:identifierCopy];

  v11 = MEMORY[0x277CBEC38];
  if (v10)
  {
    v11 = v10;
  }

  v12 = v11;

  bOOLValue = [v12 BOOLValue];
  return bOOLValue;
}

- (BOOL)widgetSuggestionsEnabledForContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier kind:(id)kind
{
  selfCopy = self;
  v6 = [(NHSSSmartStackSuggestionDefaults *)self _compositeKeyWithContainerBundleIdentifier:identifier extensionBundleIdentifier:bundleIdentifier kind:kind];
  LOBYTE(selfCopy) = [(NHSSSmartStackSuggestionDefaults *)selfCopy enabledDictionaryValueWithIdentifier:v6 onDomainObjectWithKey:@"widget"];

  return selfCopy;
}

- (id)widgetSuggestionsUnmuteDateForContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier kind:(id)kind
{
  kindCopy = kind;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSUserDefaults *)self->_lock_userDefaults objectForKey:@"mute"];
  v12 = v11;
  v13 = MEMORY[0x277CBEC10];
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  os_unfair_lock_unlock(&self->_lock);
  v15 = [(NHSSSmartStackSuggestionDefaults *)self _compositeKeyWithContainerBundleIdentifier:identifierCopy extensionBundleIdentifier:bundleIdentifierCopy kind:kindCopy];

  v16 = [v14 objectForKey:v15];

  return v16;
}

- (void)setWidgetSuggestionsUnmuteDate:(id)date forContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier kind:(id)kind
{
  dateCopy = date;
  v10 = [(NHSSSmartStackSuggestionDefaults *)self _compositeKeyWithContainerBundleIdentifier:identifier extensionBundleIdentifier:bundleIdentifier kind:kind];
  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSUserDefaults *)self->_lock_userDefaults objectForKey:@"mute"];
  v12 = v11;
  if (!v11)
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v13 = [v11 mutableCopy];

  if (dateCopy)
  {
    [v13 setObject:dateCopy forKey:v10];
  }

  else
  {
    [v13 removeObjectForKey:v10];
  }

  [(NSUserDefaults *)self->_lock_userDefaults setObject:v13 forKey:@"mute"];
  os_unfair_lock_unlock(&self->_lock);
  [(NHSSSmartStackSuggestionDefaults *)self _scheduleTimerToUnmuteWidgetForKey:v10 onDate:dateCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addHintObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_hintObservers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeHintObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_hintObservers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (_Context == context)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __83__NHSSSmartStackSuggestionDefaults_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v17[3] = &unk_279932E40;
    v17[4] = self;
    v13 = MEMORY[0x277D85CD0];
    v14 = v17;
LABEL_6:
    dispatch_async(v13, v14);
    goto LABEL_7;
  }

  if (_HintContext == context)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__NHSSSmartStackSuggestionDefaults_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    block[3] = &unk_279932E40;
    block[4] = self;
    v13 = MEMORY[0x277D85CD0];
    v14 = block;
    goto LABEL_6;
  }

  v15.receiver = self;
  v15.super_class = NHSSSmartStackSuggestionDefaults;
  [(NHSSSmartStackSuggestionDefaults *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_7:
}

- (void)_cleanUpExpiredMutePreferences
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_isClockFaceProcess)
  {
    v3 = [MEMORY[0x277CBEAA8] now];
    os_unfair_lock_lock(&self->_lock);
    v4 = [(NSUserDefaults *)self->_lock_userDefaults objectForKey:@"mute"];
    v5 = v4;
    if (!v4)
    {
      v4 = MEMORY[0x277CBEC10];
    }

    v6 = [v4 mutableCopy];

    allKeys = [v6 allKeys];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = [v6 objectForKey:v13];
          if ([v14 compare:v3] == -1)
          {
            [v6 removeObjectForKey:v13];
            v10 = 1;
          }
        }

        v9 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
      if (v10)
      {
        [(NSUserDefaults *)self->_lock_userDefaults setObject:v6 forKey:@"mute"];
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_requestUserDefaultsSyncForKey:(id)key
{
  v3 = MEMORY[0x277D2BA60];
  keyCopy = key;
  v6 = objc_alloc_init(v3);
  v5 = [MEMORY[0x277CBEB98] setWithObject:keyCopy];

  [v6 synchronizeUserDefaultsDomain:@"com.apple.NanoHomeScreen.SmartStackSuggestions" keys:v5];
}

- (void)_scheduleTimersToUnmuteWidgets
{
  if (self->_isClockFaceProcess)
  {
    v8[9] = v2;
    v8[10] = v3;
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSUserDefaults *)self->_lock_userDefaults objectForKey:@"mute"];
    v6 = v5;
    if (!v5)
    {
      v5 = MEMORY[0x277CBEC10];
    }

    v7 = [v5 copy];

    os_unfair_lock_unlock(&self->_lock);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__NHSSSmartStackSuggestionDefaults__scheduleTimersToUnmuteWidgets__block_invoke;
    v8[3] = &unk_279932EE0;
    v8[4] = self;
    [v7 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

- (void)_scheduleTimerToUnmuteWidgetForKey:(id)key onDate:(id)date
{
  keyCopy = key;
  dateCopy = date;
  v8 = dateCopy;
  if (self->_isClockFaceProcess)
  {
    if (dateCopy)
    {
      objc_initWeak(&location, self);
      v9 = objc_alloc(MEMORY[0x277CBEBB8]);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __78__NHSSSmartStackSuggestionDefaults__scheduleTimerToUnmuteWidgetForKey_onDate___block_invoke;
      v15[3] = &unk_279932F08;
      objc_copyWeak(&v17, &location);
      v10 = keyCopy;
      v16 = v10;
      v11 = [v9 initWithFireDate:v8 interval:0 repeats:v15 block:0.0];
      os_unfair_lock_lock(&self->_lock);
      v12 = [(NSMapTable *)self->_lock_scheduledTimers objectForKey:v10];
      [(NSMapTable *)self->_lock_scheduledTimers setObject:v11 forKey:v10];
      os_unfair_lock_unlock(&self->_lock);
      [v12 invalidate];
      mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
      [mainRunLoop addTimer:v11 forMode:*MEMORY[0x277CBE640]];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else
    {
      os_unfair_lock_lock(&self->_lock);
      v14 = [(NSMapTable *)self->_lock_scheduledTimers objectForKey:keyCopy];
      [(NSMapTable *)self->_lock_scheduledTimers removeObjectForKey:keyCopy];
      os_unfair_lock_unlock(&self->_lock);
      [v14 invalidate];
    }
  }
}

void __78__NHSSSmartStackSuggestionDefaults__scheduleTimerToUnmuteWidgetForKey_onDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 14);
    v3 = [*&v6[12]._os_unfair_lock_opaque objectForKey:@"mute"];
    v4 = v3;
    if (!v3)
    {
      v3 = MEMORY[0x277CBEC10];
    }

    v5 = [v3 mutableCopy];

    [v5 removeObjectForKey:*(a1 + 32)];
    [*&v6[12]._os_unfair_lock_opaque setObject:v5 forKey:@"mute"];
    os_unfair_lock_unlock(v6 + 14);

    WeakRetained = v6;
  }
}

- (void)_observeChangesToUserDefaults
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _NHSSmartStackSuggestionsDefaultsChangeHandler, @"com.apple.NanoHomeScreen.SmartStackSuggestionsChanged", self, CFNotificationSuspensionBehaviorDeliverImmediately);
  [(NSUserDefaults *)self->_lock_userDefaults addObserver:self forKeyPath:@"mute" options:0 context:_Context];
  lock_userDefaults = self->_lock_userDefaults;
  v5 = _HintContext;

  [(NSUserDefaults *)lock_userDefaults addObserver:self forKeyPath:@"muteHint" options:0 context:v5];
}

- (id)_compositeKeyWithContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier kind:(id)kind
{
  v16 = 0;
  identifierCopy = identifier;
  kindCopy = kind;
  bundleIdentifierCopy = bundleIdentifier;
  uTF8String = [identifier UTF8String];
  uTF8String2 = [bundleIdentifierCopy UTF8String];

  uTF8String3 = [kindCopy UTF8String];
  asprintf(&v16, "%s-%s-%s", uTF8String, uTF8String2, uTF8String3);
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16];
  free(v16);

  return v14;
}

- (void)smartStackNPSSuggestionsDefaultsDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__NHSSSmartStackSuggestionDefaults_smartStackNPSSuggestionsDefaultsDidChange__block_invoke;
  block[3] = &unk_279932E40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_mainQueue_notifyObserversDefaultsDidChange
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_lock_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = allObjects;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) smartStackSuggestionDefaultsDidChange];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)hintUnmuteDateForContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier kind:(id)kind
{
  kindCopy = kind;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSUserDefaults *)self->_lock_userDefaults objectForKey:@"muteHint"];
  v12 = v11;
  v13 = MEMORY[0x277CBEC10];
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  os_unfair_lock_unlock(&self->_lock);
  v15 = [(NHSSSmartStackSuggestionDefaults *)self _compositeKeyWithContainerBundleIdentifier:identifierCopy extensionBundleIdentifier:bundleIdentifierCopy kind:kindCopy];

  v16 = [v14 objectForKey:v15];

  return v16;
}

- (void)setHintUnmuteDate:(id)date forContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier kind:(id)kind
{
  dateCopy = date;
  v10 = [(NHSSSmartStackSuggestionDefaults *)self _compositeKeyWithContainerBundleIdentifier:identifier extensionBundleIdentifier:bundleIdentifier kind:kind];
  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSUserDefaults *)self->_lock_userDefaults objectForKey:@"muteHint"];
  v12 = v11;
  if (!v11)
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v13 = [v11 mutableCopy];

  if (dateCopy)
  {
    [v13 setObject:dateCopy forKey:v10];
  }

  else
  {
    [v13 removeObjectForKey:v10];
  }

  [(NSUserDefaults *)self->_lock_userDefaults setObject:v13 forKey:@"muteHint"];
  os_unfair_lock_unlock(&self->_lock);
  [(NHSSSmartStackSuggestionDefaults *)self _scheduleTimerToUnmuteHintForKey:v10 onDate:dateCopy];
}

- (void)_cleanUpExpiredMuteHintPreferences
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_isClockFaceProcess)
  {
    v3 = [MEMORY[0x277CBEAA8] now];
    os_unfair_lock_lock(&self->_lock);
    v4 = [(NSUserDefaults *)self->_lock_userDefaults objectForKey:@"muteHint"];
    v5 = v4;
    if (!v4)
    {
      v4 = MEMORY[0x277CBEC10];
    }

    v6 = [v4 mutableCopy];

    allKeys = [v6 allKeys];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = [v6 objectForKey:v13];
          if ([v14 compare:v3] == -1)
          {
            [v6 removeObjectForKey:v13];
            v10 = 1;
          }
        }

        v9 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
      if (v10)
      {
        [(NSUserDefaults *)self->_lock_userDefaults setObject:v6 forKey:@"muteHint"];
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleTimersToUnmuteHints
{
  if (self->_isClockFaceProcess)
  {
    v8[9] = v2;
    v8[10] = v3;
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSUserDefaults *)self->_lock_userDefaults objectForKey:@"muteHint"];
    v6 = v5;
    if (!v5)
    {
      v5 = MEMORY[0x277CBEC10];
    }

    v7 = [v5 copy];

    os_unfair_lock_unlock(&self->_lock);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__NHSSSmartStackSuggestionDefaults__scheduleTimersToUnmuteHints__block_invoke;
    v8[3] = &unk_279932EE0;
    v8[4] = self;
    [v7 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

- (void)_scheduleTimerToUnmuteHintForKey:(id)key onDate:(id)date
{
  keyCopy = key;
  dateCopy = date;
  v8 = dateCopy;
  if (self->_isClockFaceProcess)
  {
    if (dateCopy)
    {
      objc_initWeak(&location, self);
      v9 = objc_alloc(MEMORY[0x277CBEBB8]);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __76__NHSSSmartStackSuggestionDefaults__scheduleTimerToUnmuteHintForKey_onDate___block_invoke;
      v15[3] = &unk_279932F08;
      objc_copyWeak(&v17, &location);
      v10 = keyCopy;
      v16 = v10;
      v11 = [v9 initWithFireDate:v8 interval:0 repeats:v15 block:0.0];
      os_unfair_lock_lock(&self->_lock);
      v12 = [(NSMapTable *)self->_lock_scheduledHintTimers objectForKey:v10];
      [(NSMapTable *)self->_lock_scheduledHintTimers setObject:v11 forKey:v10];
      os_unfair_lock_unlock(&self->_lock);
      [v12 invalidate];
      mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
      [mainRunLoop addTimer:v11 forMode:*MEMORY[0x277CBE640]];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else
    {
      os_unfair_lock_lock(&self->_lock);
      v14 = [(NSMapTable *)self->_lock_scheduledHintTimers objectForKey:keyCopy];
      [(NSMapTable *)self->_lock_scheduledHintTimers removeObjectForKey:keyCopy];
      os_unfair_lock_unlock(&self->_lock);
      [v14 invalidate];
    }
  }
}

void __76__NHSSSmartStackSuggestionDefaults__scheduleTimerToUnmuteHintForKey_onDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 14);
    v3 = [*&v6[12]._os_unfair_lock_opaque objectForKey:@"muteHint"];
    v4 = v3;
    if (!v3)
    {
      v3 = MEMORY[0x277CBEC10];
    }

    v5 = [v3 mutableCopy];

    [v5 removeObjectForKey:*(a1 + 32)];
    [*&v6[12]._os_unfair_lock_opaque setObject:v5 forKey:@"muteHint"];
    os_unfair_lock_unlock(v6 + 14);

    WeakRetained = v6;
  }
}

- (void)_mainQueue_notifyObserversDefaultsHintDidChange
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_lock_hintObservers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = allObjects;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) smartStackSuggestionDefaultsHintDidChange];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)diagnosticDictionaryRepresentation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSUserDefaults *)self->_lock_userDefaults persistentDomainForName:@"com.apple.NanoHomeScreen.SmartStackSuggestions"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

@end