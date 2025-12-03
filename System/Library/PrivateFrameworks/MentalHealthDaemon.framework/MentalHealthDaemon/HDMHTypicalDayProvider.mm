@interface HDMHTypicalDayProvider
- (BOOL)enumerateActivitySummariesFromDateComponents:(id)components toDateComponents:(id)dateComponents error:(id *)error handler:(id)handler;
- (HDMHTypicalDayProvider)initWithProfile:(id)profile userDefaults:(id)defaults fitnessActivityModel:(id)model;
- (id)_defaultEndOfDayDateComponents;
- (id)_defaultStartOfDayDateComponents;
- (id)_typicalDayIntervalFromToday;
- (id)clientProvidedDefaultEndOfDay;
- (id)userEndOfDay;
- (id)userStartOfDay;
- (void)_updateObservers;
- (void)_updateTypicalDayMarkers;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
- (void)rebuildTypicalDayProviderForCurrentDate;
- (void)registerObserver:(id)observer queue:(id)queue;
- (void)setupCachedTypicalDayMarkers;
- (void)typicalDayActivityModelDidUpdate;
@end

@implementation HDMHTypicalDayProvider

- (HDMHTypicalDayProvider)initWithProfile:(id)profile userDefaults:(id)defaults fitnessActivityModel:(id)model
{
  profileCopy = profile;
  defaultsCopy = defaults;
  modelCopy = model;
  v23.receiver = self;
  v23.super_class = HDMHTypicalDayProvider;
  v11 = [(HDMHTypicalDayProvider *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    if (defaultsCopy)
    {
      hkmh_mentalHealthDefaults = defaultsCopy;
    }

    else
    {
      hkmh_mentalHealthDefaults = [MEMORY[0x277CBEBD0] hkmh_mentalHealthDefaults];
    }

    userDefaults = v12->_userDefaults;
    v12->_userDefaults = hkmh_mentalHealthDefaults;

    objc_storeStrong(&v12->_lock_typicalDayModel, model);
    [(HDMHTypicalDayProvider *)v12 setupCachedTypicalDayMarkers];
    v12->_lock._os_unfair_lock_opaque = 0;
    v15 = objc_alloc(MEMORY[0x277D10800]);
    WeakRetained = objc_loadWeakRetained(&v12->_profile);
    v17 = [v15 initWithProfile:WeakRetained debugIdentifier:@"FITypicalDayActivityModelOperation" delegate:v12];
    operation = v12->_operation;
    v12->_operation = v17;

    v19 = objc_alloc(MEMORY[0x277CCD738]);
    v20 = [v19 initWithName:@"HKMHTypicalDayProviderObservers" loggingCategory:*MEMORY[0x277CCC2F0]];
    observers = v12->_observers;
    v12->_observers = v20;
  }

  return v12;
}

- (id)_typicalDayIntervalFromToday
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  currentDate = [(HDMHTypicalDayProvider *)self currentDate];
  v5 = [currentCalendar startOfDayForDate:currentDate];

  v6 = [currentCalendar hk_startOfDateBySubtractingDays:*MEMORY[0x277D09570] fromDate:v5];
  v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v6 endDate:v5];

  return v7;
}

- (void)rebuildTypicalDayProviderForCurrentDate
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a3;
  v5 = v8;
  _os_log_error_impl(&dword_258977000, selfCopy, OS_LOG_TYPE_ERROR, "[%{public}@] Error requesting protected data operation work: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setupCachedTypicalDayMarkers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"TypicalDayProviderCacheLastUpdatedDate"];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] now];
    [v4 timeIntervalSinceDate:v3];
    v6 = v5;

    if (v6 > 604800.0 || v6 < 0.0)
    {
      [(NSUserDefaults *)self->_userDefaults setObject:0 forKey:@"TypicalDayProviderUserStartOfDayCache"];
      [(NSUserDefaults *)self->_userDefaults setObject:0 forKey:@"TypicalDayProviderUserEndOfDayCache"];
      [(NSUserDefaults *)self->_userDefaults setObject:0 forKey:@"TypicalDayProviderCacheLastUpdatedDate"];
    }

    else
    {
      os_unfair_lock_lock(&self->_lock);
      v7 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"TypicalDayProviderUserStartOfDayCache"];
      lock_cachedTypicalStartOfDay = self->_lock_cachedTypicalStartOfDay;
      self->_lock_cachedTypicalStartOfDay = v7;

      v9 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"TypicalDayProviderUserEndOfDayCache"];
      lock_cachedTypicalEndOfDay = self->_lock_cachedTypicalEndOfDay;
      self->_lock_cachedTypicalEndOfDay = v9;

      os_unfair_lock_unlock(&self->_lock);
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v15 = 138543362;
      v16 = objc_opt_class();
      v13 = v16;
      _os_log_impl(&dword_258977000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got nil date from user defaults for _TypicalDayProviderCacheLastUpdatedDate. Not updating day markers.", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateTypicalDayMarkers
{
  v32 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_typicalDayModel;
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    _HKInitializeLogging();
    v4 = MEMORY[0x277CCC2F0];
    v5 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      *v31 = 138543362;
      *&v31[4] = objc_opt_class();
      v7 = *&v31[4];
      _os_log_impl(&dword_258977000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating cached start and end of day.", v31, 0xCu);
    }

    userStartOfDay = [(HDMHActivityModelProviding *)v3 userStartOfDay];
    _HKInitializeLogging();
    v9 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = objc_opt_class();
      v12 = MEMORY[0x277CBEAF8];
      v13 = v11;
      currentLocale = [v12 currentLocale];
      v15 = [(NSDate *)userStartOfDay descriptionWithLocale:currentLocale];
      *v31 = 138543618;
      *&v31[4] = v11;
      *&v31[12] = 2112;
      *&v31[14] = v15;
      _os_log_impl(&dword_258977000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Start of day :%@", v31, 0x16u);
    }

    userEndOfDay = [(HDMHActivityModelProviding *)v3 userEndOfDay];
    _HKInitializeLogging();
    v17 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = objc_opt_class();
      v20 = MEMORY[0x277CBEAF8];
      v21 = v19;
      currentLocale2 = [v20 currentLocale];
      v23 = [(NSDate *)userEndOfDay descriptionWithLocale:currentLocale2];
      *v31 = 138543618;
      *&v31[4] = v19;
      *&v31[12] = 2112;
      *&v31[14] = v23;
      _os_log_impl(&dword_258977000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] End of day :%@", v31, 0x16u);
    }

    os_unfair_lock_lock(&self->_lock);
    userDefaults = self->_userDefaults;
    v25 = [MEMORY[0x277CBEAA8] now];
    [(NSUserDefaults *)userDefaults setObject:v25 forKey:@"TypicalDayProviderCacheLastUpdatedDate"];

    lock_cachedTypicalStartOfDay = self->_lock_cachedTypicalStartOfDay;
    self->_lock_cachedTypicalStartOfDay = userStartOfDay;
    v27 = userStartOfDay;

    [(NSUserDefaults *)self->_userDefaults setObject:v27 forKey:@"TypicalDayProviderUserStartOfDayCache"];
    lock_cachedTypicalEndOfDay = self->_lock_cachedTypicalEndOfDay;
    self->_lock_cachedTypicalEndOfDay = userEndOfDay;
    v29 = userEndOfDay;

    [(NSUserDefaults *)self->_userDefaults setObject:v29 forKey:@"TypicalDayProviderUserEndOfDayCache"];
    os_unfair_lock_unlock(&self->_lock);
    [(HDMHTypicalDayProvider *)self _updateObservers];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)userStartOfDay
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_cachedTypicalStartOfDay;
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    currentCalendar = [(HDMHTypicalDayProvider *)self currentCalendar];
    currentDate = [(HDMHTypicalDayProvider *)self currentDate];
    v7 = [currentCalendar startOfDayForDate:currentDate];

    currentCalendar2 = [(HDMHTypicalDayProvider *)self currentCalendar];
    _defaultStartOfDayDateComponents = [(HDMHTypicalDayProvider *)self _defaultStartOfDayDateComponents];
    v4 = [currentCalendar2 dateByAddingComponents:_defaultStartOfDayDateComponents toDate:v7 options:0];
  }

  return v4;
}

- (id)userEndOfDay
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_cachedTypicalEndOfDay;
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    currentCalendar = [(HDMHTypicalDayProvider *)self currentCalendar];
    currentDate = [(HDMHTypicalDayProvider *)self currentDate];
    v7 = [currentCalendar startOfDayForDate:currentDate];

    currentCalendar2 = [(HDMHTypicalDayProvider *)self currentCalendar];
    _defaultEndOfDayDateComponents = [(HDMHTypicalDayProvider *)self _defaultEndOfDayDateComponents];
    v4 = [currentCalendar2 dateByAddingComponents:_defaultEndOfDayDateComponents toDate:v7 options:0];
  }

  return v4;
}

- (id)_defaultStartOfDayDateComponents
{
  if (_defaultStartOfDayDateComponents_onceToken[0] != -1)
  {
    [HDMHTypicalDayProvider _defaultStartOfDayDateComponents];
  }

  v3 = _defaultStartOfDayDateComponents_middayDateComponents;

  return v3;
}

uint64_t __58__HDMHTypicalDayProvider__defaultStartOfDayDateComponents__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v1 = _defaultStartOfDayDateComponents_middayDateComponents;
  _defaultStartOfDayDateComponents_middayDateComponents = v0;

  [_defaultStartOfDayDateComponents_middayDateComponents setHour:8];
  v2 = _defaultStartOfDayDateComponents_middayDateComponents;

  return [v2 setMinute:0];
}

- (id)_defaultEndOfDayDateComponents
{
  if (_defaultEndOfDayDateComponents_onceToken != -1)
  {
    [HDMHTypicalDayProvider _defaultEndOfDayDateComponents];
  }

  v3 = _defaultEndOfDayDateComponents_middayDateComponents;

  return v3;
}

uint64_t __56__HDMHTypicalDayProvider__defaultEndOfDayDateComponents__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v1 = _defaultEndOfDayDateComponents_middayDateComponents;
  _defaultEndOfDayDateComponents_middayDateComponents = v0;

  [_defaultEndOfDayDateComponents_middayDateComponents setHour:22];
  v2 = _defaultEndOfDayDateComponents_middayDateComponents;

  return [v2 setMinute:30];
}

- (void)registerObserver:(id)observer queue:(id)queue
{
  observers = self->_observers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HDMHTypicalDayProvider_registerObserver_queue___block_invoke;
  v5[3] = &unk_2798AAB58;
  v5[4] = self;
  [(HKObserverSet *)observers registerObserver:observer queue:queue runIfFirstObserver:v5];
}

- (void)_updateObservers
{
  observers = self->_observers;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__HDMHTypicalDayProvider__updateObservers__block_invoke;
  v3[3] = &unk_2798AAE30;
  v3[4] = self;
  [(HKObserverSet *)observers notifyObservers:v3];
}

- (BOOL)enumerateActivitySummariesFromDateComponents:(id)components toDateComponents:(id)dateComponents error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v11 = MEMORY[0x277D10588];
  dateComponentsCopy = dateComponents;
  componentsCopy = components;
  v14 = [v11 alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [v14 initWithProfile:WeakRetained];

  [v16 setShouldIncludePrivateProperties:1];
  [v16 setShouldIncludeStatistics:1];
  v17 = HDActivityCacheEntityPredicateForCachesInDateComponentsRange();

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __102__HDMHTypicalDayProvider_enumerateActivitySummariesFromDateComponents_toDateComponents_error_handler___block_invoke;
  v20[3] = &unk_2798AAE58;
  v21 = handlerCopy;
  v18 = handlerCopy;
  LOBYTE(error) = [v16 enumerateActivitySummariesWithPredicate:v17 error:error handler:v20];

  return error;
}

- (void)typicalDayActivityModelDidUpdate
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v7 = 138543362;
    *&v7[4] = objc_opt_class();
    v5 = *&v7[4];
    _os_log_impl(&dword_258977000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Typical Day Model did update; notifying observers.", v7, 0xCu);
  }

  [(HDMHTypicalDayProvider *)self _updateTypicalDayMarkers];
  [(HDMHTypicalDayProvider *)self _updateObservers];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)clientProvidedDefaultEndOfDay
{
  currentCalendar = [(HDMHTypicalDayProvider *)self currentCalendar];
  currentDate = [(HDMHTypicalDayProvider *)self currentDate];
  v5 = [currentCalendar startOfDayForDate:currentDate];

  currentCalendar2 = [(HDMHTypicalDayProvider *)self currentCalendar];
  _defaultEndOfDayDateComponents = [(HDMHTypicalDayProvider *)self _defaultEndOfDayDateComponents];
  v8 = [currentCalendar2 dateByAddingComponents:_defaultEndOfDayDateComponents toDate:v5 options:0];

  return v8;
}

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v7 = self->_lock_typicalDayModel;
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    _typicalDayIntervalFromToday = [(HDMHTypicalDayProvider *)self _typicalDayIntervalFromToday];
    [(HDMHActivityModelProviding *)v7 rebuildWithInterval:_typicalDayIntervalFromToday];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277D095D0]);
    _typicalDayIntervalFromToday = [(HDMHTypicalDayProvider *)self _typicalDayIntervalFromToday];
    v7 = [v9 initForDateInterval:_typicalDayIntervalFromToday delegate:self];
  }

  os_unfair_lock_lock(&self->_lock);
  lock_typicalDayModel = self->_lock_typicalDayModel;
  self->_lock_typicalDayModel = v7;
  v11 = v7;

  os_unfair_lock_unlock(&self->_lock);
  [(HDMHTypicalDayProvider *)self _updateTypicalDayMarkers];

  completionCopy[2]();
}

@end