@interface FCActivityManager
+ (id)newActivityManagerWithIdentifier:(id)identifier;
+ (id)sharedActivityManager;
+ (void)initialize;
- (BOOL)_doesActivity:(id)activity identifySameModeAsActivity:(id)asActivity;
- (BOOL)_isSyncedAssertion:(id)assertion;
- (BOOL)isActivityLocalUserInitiated:(id)initiated;
- (BOOL)isDefaultConfiguration;
- (BOOL)shouldActivityShowStatusPill:(id)pill;
- (FCActivityDescribing)activeActivity;
- (FCActivityDescribing)defaultActivity;
- (NSArray)availableActivities;
- (NSString)localizedTerminationDescriptionForActiveActivity;
- (id)_activeActivity;
- (id)_activityForATXActivityOrSuggestion:(id)suggestion;
- (id)_activityForModeIdentifier:(id)identifier;
- (id)_activityForUniqueIdentifier:(id)identifier;
- (id)_activitySuggestionClient;
- (id)_availableActivities;
- (id)_carDNDStatus;
- (id)_initWithIdentifier:(id)identifier;
- (id)_lifetimeDetailsProvider;
- (id)_lifetimeForActiveActivity;
- (id)_lifetimeForLifetimeDetailsIdentifier:(id)identifier ofActivity:(id)activity;
- (id)_localizedAutomaticDrivingTriggerDescriptionForPreference:(unint64_t)preference;
- (id)_modeSelectionService;
- (id)_stateService;
- (id)activityWithIdentifier:(id)identifier;
- (id)lifetimeOfActivity:(id)activity;
- (id)promotedPlaceholderActivity:(id)activity;
- (id)suggestedActivityForLocation:(int64_t)location;
- (void)_availableActivities;
- (void)_deactivateActivity:(id)activity reason:(id)reason;
- (void)_drivingTriggerDidChange;
- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)_invalidateActiveModeAssertion;
- (void)_notifyObserversOfAvailableActivitiesChange;
- (void)_notifyObserversOfLifetimeChangeForActivity:(id)activity;
- (void)_setActiveActivity:(id)activity withLifetime:(id)lifetime reason:(id)reason;
- (void)_setAvailableActivities:(id)activities;
- (void)_setLifetimeForActiveActivity:(id)activity;
- (void)_updateActiveActivity:(id)activity;
- (void)_updateActiveModeAssertionIfNecessary;
- (void)_updateActivitiesWithModes:(id)modes;
- (void)_updateActivity:(id)activity withLifetimeDescriptions:(id)descriptions;
- (void)_updateActivity:(id)activity withLifetimeDetails:(id)details;
- (void)_updateActivity:(id)activity withLifetimeDetailsCollection:(id)collection;
- (void)_updateActivitySuggestion:(id)suggestion;
- (void)_updateCreationDateOfActivity:(id)activity;
- (void)_updateLifetimeForActiveActivity;
- (void)_updateLifetimeForActiveActivityIfNecessary;
- (void)_updateLifetimesAlternativeDescription:(id)description forActivity:(id)activity;
- (void)_updateLifetimesAlternativeDescriptionForActivity:(id)activity;
- (void)_updateLifetimesAlternativeDescriptionsForAvailableActivities;
- (void)_updateSuggestedActivity:(id)activity forLocation:(int64_t)location;
- (void)_updateSuggestedActivity:(id)activity forLocations:(unint64_t)locations;
- (void)_updateWithActiveModeAssertionIfNecessary:(id)necessary stateUpdate:(id)update;
- (void)activitySuggestionClient:(id)client didSuggestConfiguredActivity:(id)activity;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)didShowSuggestedActivity:(id)activity location:(int64_t)location;
- (void)lifetimeDetailsProvider:(id)provider didUpdateAvailableLifetimeDetails:(id)details;
- (void)modeSelectionService:(id)service didReceiveModesUpdate:(id)update;
- (void)modeSelectionService:(id)service didReceiveUpdatedActiveModeAssertion:(id)assertion stateUpdate:(id)update;
- (void)promotePlaceholderActivity:(id)activity;
- (void)removeObserver:(id)observer;
- (void)setActiveActivity:(id)activity reason:(id)reason;
- (void)setActiveActivity:(id)activity withLifetime:(id)lifetime reason:(id)reason;
- (void)setActivity:(id)activity active:(BOOL)active withLifetime:(id)lifetime reason:(id)reason;
- (void)setLifetimeDescriptionsUpdatingEnabled:(BOOL)enabled;
- (void)userDidAcceptSuggestedActivity:(id)activity location:(int64_t)location;
- (void)userDidRejectSuggestedActivity:(id)activity location:(int64_t)location;
- (void)userDidSeeSuggestedActivity:(id)activity location:(int64_t)location;
@end

@implementation FCActivityManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    FCRegisterLogging();
  }
}

- (id)_initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = FCActivityManager;
  v5 = [(FCActivityManager *)&v14 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v5->_observers;
    v5->_observers = v8;

    _modeSelectionService = [(FCActivityManager *)v5 _modeSelectionService];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__FCActivityManager__initWithIdentifier___block_invoke;
    v12[3] = &unk_279013C60;
    v13 = v5;
    [_modeSelectionService addListener:v13 withCompletionHandler:v12];
  }

  return v5;
}

void __41__FCActivityManager__initWithIdentifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = FCLogActivities;
  if (a2)
  {
    if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEBUG))
    {
      __41__FCActivityManager__initWithIdentifier___block_invoke_cold_2(a1, v6);
    }
  }

  else if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR))
  {
    __41__FCActivityManager__initWithIdentifier___block_invoke_cold_1(a1, v6);
  }
}

- (void)dealloc
{
  [(FCActivityManager *)self setLifetimeDescriptionsUpdatingEnabled:0];
  v3.receiver = self;
  v3.super_class = FCActivityManager;
  [(FCActivityManager *)&v3 dealloc];
}

+ (id)sharedActivityManager
{
  if (sharedActivityManager_onceToken != -1)
  {
    +[FCActivityManager sharedActivityManager];
  }

  v3 = sharedActivityManager___sharedActivityManager;

  return v3;
}

void __42__FCActivityManager_sharedActivityManager__block_invoke()
{
  v0 = [FCActivityManager alloc];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v4 bundleIdentifier];
  v2 = [(FCActivityManager *)v0 _initWithIdentifier:v1];
  v3 = sharedActivityManager___sharedActivityManager;
  sharedActivityManager___sharedActivityManager = v2;
}

- (NSArray)availableActivities
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  _availableActivities = [(FCActivityManager *)selfCopy _availableActivities];
  v5 = [v3 initWithArray:_availableActivities copyItems:1];

  objc_sync_exit(selfCopy);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  v7 = v6;

  return v7;
}

- (FCActivityDescribing)activeActivity
{
  _activeActivity = [(FCActivityManager *)self _activeActivity];
  v3 = [_activeActivity copyWithZone:0];

  return v3;
}

- (FCActivityDescribing)defaultActivity
{
  defaultActivity = self->_defaultActivity;
  if (!defaultActivity)
  {
    v4 = [(FCActivityManager *)self _activityForModeIdentifier:*MEMORY[0x277D05830]];
    v5 = self->_defaultActivity;
    self->_defaultActivity = v4;

    defaultActivity = self->_defaultActivity;
  }

  v6 = [(FCActivityDescribing *)defaultActivity copyWithZone:0];

  return v6;
}

- (BOOL)isDefaultConfiguration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _availableActivities = [(FCActivityManager *)selfCopy _availableActivities];
  v4 = [_availableActivities indexOfObjectPassingTest:&__block_literal_global_49];

  objc_sync_exit(selfCopy);
  return v4 == 0x7FFFFFFFFFFFFFFFLL;
}

BOOL __43__FCActivityManager_isDefaultConfiguration__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  if ([v5 isPlaceholder] & 1) != 0 || (objc_msgSend(v5, "activityIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = *MEMORY[0x277D05830], v8 = BSEqualStrings(), v6, (v8))
  {
    v9 = 0;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [v5 _dndMode];
      v9 = ([v10 semanticType] - 3) < 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      v9 = 1;
    }

    *a4 = v9;
  }

  return v9;
}

- (NSString)localizedTerminationDescriptionForActiveActivity
{
  if (self->_activeModeAssertion)
  {
    activeStateUpdate = self->_activeStateUpdate;
    if (activeStateUpdate)
    {
      state = [(DNDStateUpdate *)activeStateUpdate state];
    }

    else
    {
      _stateService = [(FCActivityManager *)self _stateService];
      state = [_stateService queryCurrentStateWithError:0];
    }

    userVisibleTransitionDate = [state userVisibleTransitionDate];
    if ([state userVisibleTransitionLifetimeType] == 3)
    {
      v8 = 0;
      v9 = @"FOCUS_STATUS_DND_ON_UNTIL_LOCATION";
    }

    else if (userVisibleTransitionDate && ([MEMORY[0x277CBEAA8] distantFuture], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(userVisibleTransitionDate, "isEqualToDate:", v10), v10, (v11 & 1) == 0))
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v13 = [currentCalendar isDateInToday:userVisibleTransitionDate];

      if (v13)
      {
        mEMORY[0x277CF0BF0] = [MEMORY[0x277CF0BF0] sharedInstance];
        v8 = [mEMORY[0x277CF0BF0] formatDateAsTimeStyle:userVisibleTransitionDate];
        v9 = @"FOCUS_STATUS_DND_ON_UNTIL_TODAY_TIME";
      }

      else
      {
        currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
        v16 = [currentCalendar2 isDateInTomorrow:userVisibleTransitionDate];

        mEMORY[0x277CF0BF0]2 = [MEMORY[0x277CF0BF0] sharedInstance];
        mEMORY[0x277CF0BF0] = mEMORY[0x277CF0BF0]2;
        if (v16)
        {
          v8 = [mEMORY[0x277CF0BF0]2 formatDateAsTimeStyle:userVisibleTransitionDate];
          v9 = @"FOCUS_STATUS_DND_ON_UNTIL_TOMORROW_TIME";
        }

        else
        {
          v8 = [mEMORY[0x277CF0BF0]2 formatDateAsAbbreviatedDayMonthWithTimeStyle:userVisibleTransitionDate];
          v9 = @"FOCUS_STATUS_DND_ON_UNTIL_DATE_TIME";
        }
      }
    }

    else
    {
      v8 = 0;
      v9 = @"FOCUS_STATUS_DND_ON";
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:v9 value:&stru_285EB06A0 table:@"Focus"];
    v5 = [v18 stringWithFormat:v20, v8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setLifetimeDescriptionsUpdatingEnabled:(BOOL)enabled
{
  if (self->_lifetimeDescriptionsUpdatingEnabled != enabled)
  {
    self->_lifetimeDescriptionsUpdatingEnabled = enabled;
    _lifetimeDetailsProvider = [(FCActivityManager *)self _lifetimeDetailsProvider];
    if (self->_lifetimeDescriptionsUpdatingEnabled)
    {
      [_lifetimeDetailsProvider startUpdatingLifetimeDetails];
      [_lifetimeDetailsProvider startUpdatingLifetimeDetailMetadata];
      [(FCActivityManager *)self _updateLifetimesAlternativeDescriptionsForAvailableActivities];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, FCDrivingTriggerObserverCallback, *MEMORY[0x277CF8900], 0, CFNotificationSuspensionBehaviorCoalesce);
    }

    else
    {
      [_lifetimeDetailsProvider stopUpdatingLifetimeDetails];
      [_lifetimeDetailsProvider stopUpdatingLifetimeDetailMetadata];
      [_lifetimeDetailsProvider resetLifetimeDetails];
      v6 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterRemoveObserver(v6, self, *MEMORY[0x277CF8900], 0);
    }
  }
}

- (id)lifetimeOfActivity:(id)activity
{
  activityUniqueIdentifier = [activity activityUniqueIdentifier];
  v5 = [(FCActivityManager *)self _activityForUniqueIdentifier:activityUniqueIdentifier];

  if (v5 && ([(FCActivityManager *)self _activeActivity], v6 = objc_claimAutoreleasedReturnValue(), v7 = BSEqualObjects(), v6, v7))
  {
    _lifetimeForActiveActivity = [(FCActivityManager *)self _lifetimeForActiveActivity];
  }

  else
  {
    _lifetimeForActiveActivity = 0;
  }

  return _lifetimeForActiveActivity;
}

- (void)setActivity:(id)activity active:(BOOL)active withLifetime:(id)lifetime reason:(id)reason
{
  activeCopy = active;
  activityCopy = activity;
  lifetimeCopy = lifetime;
  reasonCopy = reason;
  if (activityCopy || !activeCopy)
  {
    activityUniqueIdentifier = [activityCopy activityUniqueIdentifier];
    v15 = [(FCActivityManager *)self _activityForUniqueIdentifier:activityUniqueIdentifier];

    if (!v15 || activeCopy)
    {
      lifetimeIdentifier = [lifetimeCopy lifetimeIdentifier];
      v17 = [(FCActivityManager *)self _lifetimeForLifetimeDetailsIdentifier:lifetimeIdentifier ofActivity:v15];

      [(FCActivityManager *)self _setActiveActivity:v15 withLifetime:v17 reason:reasonCopy];
    }

    else
    {
      [(FCActivityManager *)self _deactivateActivity:v15 reason:reasonCopy];
    }
  }

  else
  {
    v13 = FCLogActivities;
    if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR))
    {
      [FCActivityManager setActivity:v13 active:self withLifetime:? reason:?];
    }
  }
}

- (BOOL)isActivityLocalUserInitiated:(id)initiated
{
  initiatedCopy = initiated;
  activityUniqueIdentifier = [initiatedCopy activityUniqueIdentifier];
  v6 = [(FCActivityManager *)self _activityForUniqueIdentifier:activityUniqueIdentifier];

  _activeActivity = [(FCActivityManager *)self _activeActivity];
  if (v6 | _activeActivity && !BSEqualObjects())
  {
    v10 = 0;
    goto LABEL_11;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeStateUpdate = selfCopy->_activeStateUpdate;
  if (!activeStateUpdate)
  {
    if (selfCopy->_activeModeAssertion && ![(FCActivityManager *)selfCopy _isSyncedAssertion:?])
    {
      details = [(DNDModeAssertion *)selfCopy->_activeModeAssertion details];
      v10 = [details reason] == 1;

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ([(DNDStateUpdate *)activeStateUpdate source]!= 1)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = [(DNDStateUpdate *)selfCopy->_activeStateUpdate reason]== 1;
LABEL_9:
  objc_sync_exit(selfCopy);

LABEL_11:
  return v10;
}

- (BOOL)shouldActivityShowStatusPill:(id)pill
{
  pillCopy = pill;
  activityUniqueIdentifier = [pillCopy activityUniqueIdentifier];
  v6 = [(FCActivityManager *)self _activityForUniqueIdentifier:activityUniqueIdentifier];

  _activeActivity = [(FCActivityManager *)self _activeActivity];
  if (v6 | _activeActivity && !BSEqualObjects())
  {
    v12 = 1;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    activeStateUpdate = selfCopy->_activeStateUpdate;
    if (activeStateUpdate)
    {
      v10 = [(DNDStateUpdate *)activeStateUpdate source]== 1 && [(DNDStateUpdate *)selfCopy->_activeStateUpdate reason]== 1;
      details = ([(DNDStateUpdate *)selfCopy->_activeStateUpdate options]>> 1) & 1;
    }

    else if (selfCopy->_activeModeAssertion && ![(FCActivityManager *)selfCopy _isSyncedAssertion:?])
    {
      details = [(DNDModeAssertion *)selfCopy->_activeModeAssertion details];
      v10 = [details reason] == 1;

      LOBYTE(details) = 0;
    }

    else
    {
      LOBYTE(details) = 0;
      v10 = 0;
    }

    objc_sync_exit(selfCopy);

    v12 = !v10 | details;
  }

  return v12 & 1;
}

- (id)promotedPlaceholderActivity:(id)activity
{
  modeSelectionService = self->_modeSelectionService;
  activityIdentifier = [activity activityIdentifier];
  v9 = 0;
  v5 = [(DNDModeSelectionService *)modeSelectionService promotedPlaceholderWithModeIdentifier:activityIdentifier error:&v9];
  mode = [v5 mode];

  if (mode)
  {
    v7 = [[_FCActivity alloc] initWithMode:mode];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)suggestedActivityForLocation:(int64_t)location
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  locationsToSuggestedActivitiesOrNull = selfCopy->_locationsToSuggestedActivitiesOrNull;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:location];
  v7 = [(NSMapTable *)locationsToSuggestedActivitiesOrNull objectForKey:v6];

  if (!v7)
  {
    _activitySuggestionClient = [(FCActivityManager *)selfCopy _activitySuggestionClient];
    currentSuggestion = [_activitySuggestionClient currentSuggestion];

    [(FCActivityManager *)selfCopy _updateActivitySuggestion:currentSuggestion];
    v10 = selfCopy->_locationsToSuggestedActivitiesOrNull;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:location];
    v7 = [(NSMapTable *)v10 objectForKey:v11];
  }

  null = [MEMORY[0x277CBEB68] null];
  if (BSEqualObjects())
  {
    v13 = 0;
  }

  else
  {
    v13 = [v7 copyWithZone:0];
  }

  objc_sync_exit(selfCopy);

  return v13;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v6 = observerCopy;
    v5 = self->_observers;
    objc_sync_enter(v5);
    [(NSHashTable *)self->_observers addObject:v6];
    objc_sync_exit(v5);

    observerCopy = v6;
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v6 = observerCopy;
    v5 = self->_observers;
    objc_sync_enter(v5);
    [(NSHashTable *)self->_observers removeObject:v6];
    objc_sync_exit(v5);

    observerCopy = v6;
  }
}

- (void)modeSelectionService:(id)service didReceiveUpdatedActiveModeAssertion:(id)assertion stateUpdate:(id)update
{
  v21 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  assertionCopy = assertion;
  updateCopy = update;
  v11 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(FCActivityManager *)self description];
    v17 = 138543618;
    v18 = v13;
    v19 = 2114;
    v20 = assertionCopy;
    _os_log_impl(&dword_24B876000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did receive updated active mode assertion: %{public}@", &v17, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeModeAssertion = selfCopy->_activeModeAssertion;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(FCActivityManager *)selfCopy _invalidateActiveModeAssertion];
  }

  [(FCActivityManager *)selfCopy _updateWithActiveModeAssertionIfNecessary:assertionCopy stateUpdate:updateCopy];
  objc_sync_exit(selfCopy);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)modeSelectionService:(id)service didReceiveModesUpdate:(id)update
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  updateCopy = update;
  v8 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(FCActivityManager *)self description];
    v14 = 138543874;
    v15 = v10;
    v16 = 2050;
    v17 = [updateCopy count];
    v18 = 2114;
    v19 = updateCopy;
    _os_log_impl(&dword_24B876000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did receive all modes [%{public}lu] update: %{public}@", &v14, 0x20u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(FCActivityManager *)selfCopy _invalidateActiveModeAssertion];
  defaultActivity = selfCopy->_defaultActivity;
  selfCopy->_defaultActivity = 0;

  [(FCActivityManager *)selfCopy _updateActivitiesWithModes:updateCopy];
  objc_sync_exit(selfCopy);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)lifetimeDetailsProvider:(id)provider didUpdateAvailableLifetimeDetails:(id)details
{
  v27 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  detailsCopy = details;
  v8 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(FCActivityManager *)self description];
    *buf = 138543618;
    v24 = v10;
    v25 = 2114;
    v26 = detailsCopy;
    _os_log_impl(&dword_24B876000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did receive updated available lifetime details: %{public}@", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_activeLifetimeDetailsCollection, details);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  _availableActivities = [(FCActivityManager *)selfCopy _availableActivities];
  v13 = [_availableActivities countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(_availableActivities);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v16 supportsDiscreteLifetimes])
        {
          [(FCActivityManager *)selfCopy _updateActivity:v16 withLifetimeDetailsCollection:selfCopy->_activeLifetimeDetailsCollection];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [_availableActivities countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  objc_sync_exit(selfCopy);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)activitySuggestionClient:(id)client didSuggestConfiguredActivity:(id)activity
{
  v14 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v6 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(FCActivityManager *)self description];
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = activityCopy;
    _os_log_impl(&dword_24B876000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did receive updated activity suggestion: %{public}@", &v10, 0x16u);
  }

  [(FCActivityManager *)self _updateActivitySuggestion:activityCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didShowSuggestedActivity:(id)activity location:(int64_t)location
{
  activityUniqueIdentifier = [activity activityUniqueIdentifier];
  v10 = [(FCActivityManager *)self _activityForUniqueIdentifier:activityUniqueIdentifier];

  if (v10)
  {
    _activitySuggestionClient = [(FCActivityManager *)self _activitySuggestionClient];
    activityUniqueIdentifier2 = [v10 activityUniqueIdentifier];
    uUIDString = [activityUniqueIdentifier2 UUIDString];
    [_activitySuggestionClient didShowConfiguredActivitySuggestionWithSuggestionUUID:uUIDString location:location == 1];
  }
}

- (void)userDidSeeSuggestedActivity:(id)activity location:(int64_t)location
{
  activityUniqueIdentifier = [activity activityUniqueIdentifier];
  v10 = [(FCActivityManager *)self _activityForUniqueIdentifier:activityUniqueIdentifier];

  if (v10)
  {
    _activitySuggestionClient = [(FCActivityManager *)self _activitySuggestionClient];
    activityUniqueIdentifier2 = [v10 activityUniqueIdentifier];
    uUIDString = [activityUniqueIdentifier2 UUIDString];
    [_activitySuggestionClient userDidSeeConfiguredActivitySuggestionWithSuggestionUUID:uUIDString location:location == 1];
  }
}

- (void)userDidAcceptSuggestedActivity:(id)activity location:(int64_t)location
{
  activityUniqueIdentifier = [activity activityUniqueIdentifier];
  v10 = [(FCActivityManager *)self _activityForUniqueIdentifier:activityUniqueIdentifier];

  if (v10)
  {
    _activitySuggestionClient = [(FCActivityManager *)self _activitySuggestionClient];
    activityUniqueIdentifier2 = [v10 activityUniqueIdentifier];
    uUIDString = [activityUniqueIdentifier2 UUIDString];
    [_activitySuggestionClient userDidAcceptConfiguredActivitySuggestionWithSuggestionUUID:uUIDString location:location == 1];
  }
}

- (void)userDidRejectSuggestedActivity:(id)activity location:(int64_t)location
{
  activityUniqueIdentifier = [activity activityUniqueIdentifier];
  v10 = [(FCActivityManager *)self _activityForUniqueIdentifier:activityUniqueIdentifier];

  if (v10)
  {
    _activitySuggestionClient = [(FCActivityManager *)self _activitySuggestionClient];
    activityUniqueIdentifier2 = [v10 activityUniqueIdentifier];
    uUIDString = [activityUniqueIdentifier2 UUIDString];
    [_activitySuggestionClient userDidRejectConfiguredActivitySuggestionWithSuggestionUUID:uUIDString location:location == 1];
  }
}

- (id)_modeSelectionService
{
  modeSelectionService = self->_modeSelectionService;
  if (!modeSelectionService)
  {
    v4 = [MEMORY[0x277D059F0] serviceForClientIdentifier:@"com.apple.focus.activity-manager"];
    v5 = self->_modeSelectionService;
    self->_modeSelectionService = v4;

    modeSelectionService = self->_modeSelectionService;
  }

  return modeSelectionService;
}

- (id)_lifetimeDetailsProvider
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_lifetimeDescriptionsUpdatingEnabled && !selfCopy->_lifetimeDetailsProvider)
  {
    v3 = objc_alloc_init(MEMORY[0x277D05AE0]);
    lifetimeDetailsProvider = selfCopy->_lifetimeDetailsProvider;
    selfCopy->_lifetimeDetailsProvider = v3;

    [(DNDLifetimeDetailsProvider *)selfCopy->_lifetimeDetailsProvider setDelegate:selfCopy];
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_lifetimeDetailsProvider;

  return v5;
}

- (id)_stateService
{
  stateService = self->_stateService;
  if (!stateService)
  {
    v4 = [MEMORY[0x277D05AB0] serviceForClientIdentifier:@"com.apple.focus.activity-manager"];
    v5 = self->_stateService;
    self->_stateService = v4;

    stateService = self->_stateService;
  }

  return stateService;
}

- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v6 = self->_observers;
    objc_sync_enter(v6);
    v7 = [(NSHashTable *)self->_observers copy];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            blockCopy[2](blockCopy, v12);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    objc_sync_exit(v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateCreationDateOfActivity:(id)activity
{
  v24 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  if (activityCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      activityIdentifier = [activityCopy activityIdentifier];
      v6 = *MEMORY[0x277D05830];
      v7 = BSEqualStrings();

      if ((v7 & 1) == 0)
      {
        _modeSelectionService = [(FCActivityManager *)self _modeSelectionService];
        activityIdentifier2 = [activityCopy activityIdentifier];
        v17 = 0;
        v10 = [_modeSelectionService modeConfigurationForModeIdentifier:activityIdentifier2 error:&v17];
        v11 = v17;

        if (v10)
        {
          created = [v10 created];
          [activityCopy _setActivityCreationDate:created];
        }

        else
        {
          v13 = FCLogActivities;
          if (v11)
          {
            if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR))
            {
              v14 = v13;
              v15 = [(FCActivityManager *)self description];
              *buf = 138543874;
              v19 = v15;
              v20 = 2114;
              v21 = activityCopy;
              v22 = 2114;
              v23 = v11;
              _os_log_error_impl(&dword_24B876000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Encountered error requesting mode configuration: activity: %{public}@; error: %{public}@", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEBUG))
          {
            [FCActivityManager _updateCreationDateOfActivity:];
          }
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfAvailableActivitiesChange
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __64__FCActivityManager__notifyObserversOfAvailableActivitiesChange__block_invoke;
  v2[3] = &unk_279013CA8;
  v2[4] = self;
  [(FCActivityManager *)self _enumerateObserversRespondingToSelector:sel_availableActivitiesDidChangeForManager_ usingBlock:v2];
}

void __64__FCActivityManager__notifyObserversOfAvailableActivitiesChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEBUG))
  {
    __64__FCActivityManager__notifyObserversOfAvailableActivitiesChange__block_invoke_cold_1(a1, v4, v3);
  }

  [v3 availableActivitiesDidChangeForManager:*(a1 + 32)];
}

- (void)_updateActivitiesWithModes:(id)modes
{
  v54 = *MEMORY[0x277D85DE8];
  modesCopy = modes;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  allValues = [(NSMutableDictionary *)selfCopy->_allActivitiesByIdentifier allValues];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = modesCopy;
  v6 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (!v6)
  {

    goto LABEL_29;
  }

  v7 = 0;
  v8 = *v45;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v45 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v44 + 1) + 8 * i);
      visibility = [v10 visibility];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __48__FCActivityManager__updateActivitiesWithModes___block_invoke;
      v43[3] = &unk_279013CD0;
      v43[4] = v10;
      v12 = [allValues bs_firstObjectPassingTest:v43];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
        if (objc_opt_respondsToSelector())
        {
          v15 = [(_FCActivity *)v14 _updateMode:v10];
        }

        else
        {
          v15 = 0;
        }

        v7 |= (visibility != 1) & v15;
        goto LABEL_18;
      }

      v14 = [[_FCActivity alloc] initWithMode:v10];
      [(FCActivityManager *)selfCopy _updateCreationDateOfActivity:v14];
      if (objc_opt_respondsToSelector())
      {
        if ([(_FCActivity *)v14 supportsDiscreteLifetimes])
        {
          if (selfCopy->_activeLifetimeDetailsCollection)
          {
            [(FCActivityManager *)selfCopy _updateActivity:v14 withLifetimeDetailsCollection:?];
          }
        }

        else
        {
          [(FCActivityManager *)selfCopy _updateLifetimesAlternativeDescriptionForActivity:v14];
        }
      }

      v7 |= visibility != 1;
      if (v14)
      {
        v15 = 1;
LABEL_18:
        if (visibility != 1)
        {
          [v34 addObject:v14];
        }

        activityIdentifier = [(_FCActivity *)v14 activityIdentifier];
        [v36 setObject:v14 forKey:activityIdentifier];

        if ((v15 & 1) == 0)
        {
          v17 = FCLogActivities;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = [(FCActivityManager *)selfCopy description];
            *buf = 138543618;
            v50 = v18;
            v51 = 2114;
            v52 = v13;
            _os_log_debug_impl(&dword_24B876000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@] Activity didn't change from cached value: %{public}@", buf, 0x16u);
          }
        }
      }
    }

    v6 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  }

  while (v6);

  if (v7)
  {
    v19 = 1;
    goto LABEL_30;
  }

LABEL_29:
  v20 = [(NSArray *)selfCopy->_availableActivities count];
  v19 = v20 != [v34 count];
LABEL_30:
  objc_storeStrong(&selfCopy->_allActivitiesByIdentifier, v36);
  [v34 sortUsingFunction:_FCSortRealizedAndPlaceholderActivities context:0];
  [(FCActivityManager *)selfCopy _setAvailableActivities:v34];
  activityUniqueIdentifier = [(FCActivityDescribing *)selfCopy->_activeActivity activityUniqueIdentifier];
  v22 = [(FCActivityManager *)selfCopy _activityForUniqueIdentifier:activityUniqueIdentifier];
  [(FCActivityManager *)selfCopy _updateActiveActivity:v22];

  if (v19)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__FCActivityManager__updateActivitiesWithModes___block_invoke_100;
    block[3] = &unk_279013CF8;
    block[4] = selfCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v23 = FCLogActivities;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = [(FCActivityManager *)selfCopy description];
      [(FCActivityManager *)v24 _updateActivitiesWithModes:buf, v23];
    }
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = [(NSMapTable *)selfCopy->_locationsToSuggestedActivitiesOrNull copy];
  v26 = [v25 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v26)
  {
    v27 = *v39;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v38 + 1) + 8 * j);
        v30 = [(NSMapTable *)selfCopy->_locationsToSuggestedActivitiesOrNull objectForKey:v29];
        if (objc_opt_respondsToSelector())
        {
          activityUniqueIdentifier2 = [v30 activityUniqueIdentifier];
          v32 = [(FCActivityManager *)selfCopy _activityForUniqueIdentifier:activityUniqueIdentifier2];

          -[FCActivityManager _updateSuggestedActivity:forLocation:](selfCopy, "_updateSuggestedActivity:forLocation:", v32, [v29 integerValue]);
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v26);
  }

  objc_sync_exit(selfCopy);
  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __48__FCActivityManager__updateActivitiesWithModes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 activityUniqueIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = BSEqualObjects();

  return v5;
}

- (id)_availableActivities
{
  v10[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_availableActivities)
  {
    _modeSelectionService = [(FCActivityManager *)selfCopy _modeSelectionService];
    v10[0] = 0;
    v4 = [_modeSelectionService allModesWithError:v10];
    v5 = v10[0];
    if (v5)
    {
      allObjects = FCLogActivities;
      if (os_log_type_enabled(allObjects, OS_LOG_TYPE_ERROR))
      {
        [(FCActivityManager *)selfCopy description];
        objc_claimAutoreleasedReturnValue();
        [FCActivityManager _availableActivities];
      }
    }

    else
    {
      allObjects = [v4 allObjects];
      [(FCActivityManager *)selfCopy _updateActivitiesWithModes:allObjects];
    }
  }

  objc_sync_exit(selfCopy);

  availableActivities = selfCopy->_availableActivities;
  v8 = *MEMORY[0x277D85DE8];

  return availableActivities;
}

- (void)_setAvailableActivities:(id)activities
{
  activitiesCopy = activities;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_availableActivities != activitiesCopy)
  {
    objc_storeStrong(&selfCopy->_availableActivities, activities);
  }

  objc_sync_exit(selfCopy);
}

- (void)_invalidateActiveModeAssertion
{
  obj = self;
  objc_sync_enter(obj);
  activeModeAssertion = obj->_activeModeAssertion;
  obj->_activeModeAssertion = 0;

  obj->_activeModeAssertionIsValid = 0;
  objc_sync_exit(obj);
}

- (BOOL)_doesActivity:(id)activity identifySameModeAsActivity:(id)asActivity
{
  activityCopy = activity;
  asActivityCopy = asActivity;
  if (activityCopy == asActivityCopy)
  {
    v9 = 1;
  }

  else if (activityCopy)
  {
    activityIdentifier = [activityCopy activityIdentifier];
    activityIdentifier2 = [asActivityCopy activityIdentifier];
    v9 = [activityIdentifier isEqual:activityIdentifier2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateWithActiveModeAssertionIfNecessary:(id)necessary stateUpdate:(id)update
{
  v20 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  updateCopy = update;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_activeModeAssertionIsValid)
  {
    selfCopy->_activeModeAssertionIsValid = 1;
    v10 = FCLogActivities;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(FCActivityManager *)selfCopy description];
      v16 = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = necessaryCopy;
      _os_log_impl(&dword_24B876000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating active mode assertion: %{public}@", &v16, 0x16u);
    }

    objc_storeStrong(&selfCopy->_activeModeAssertion, necessary);
    objc_storeStrong(&selfCopy->_activeStateUpdate, update);
    if (necessaryCopy)
    {
      details = [necessaryCopy details];
      modeIdentifier = [details modeIdentifier];
      v14 = [(FCActivityManager *)selfCopy _activityForModeIdentifier:modeIdentifier];
    }

    else
    {
      v14 = 0;
    }

    [(FCActivityManager *)selfCopy _updateActiveActivity:v14];
    [(FCActivityManager *)selfCopy _updateLifetimeForActiveActivity];
  }

  objc_sync_exit(selfCopy);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updateActiveModeAssertionIfNecessary
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_8(&dword_24B876000, v6, v4, "[%{public}@] Encountered error requesting active activity: %{public}@", v5);
}

- (void)_updateLifetimeForActiveActivity
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activeModeAssertion)
  {
    _lifetimeDetailsProvider = [(FCActivityManager *)selfCopy _lifetimeDetailsProvider];
    details = [(DNDModeAssertion *)selfCopy->_activeModeAssertion details];
    v14 = 0;
    v5 = [_lifetimeDetailsProvider lifetimeDetailsForAssertionDetails:details error:&v14];
    v6 = v14;

    if (v5)
    {
      identifier = [v5 identifier];
      v8 = [(FCActivityManager *)selfCopy _lifetimeForLifetimeDetailsIdentifier:identifier ofActivity:selfCopy->_activeActivity];
    }

    else
    {
      if (!v6)
      {
        v8 = 0;
        goto LABEL_10;
      }

      identifier = FCLogActivities;
      if (os_log_type_enabled(identifier, OS_LOG_TYPE_ERROR))
      {
        v12 = [(FCActivityManager *)selfCopy description];
        activeModeAssertion = selfCopy->_activeModeAssertion;
        *buf = 138543874;
        v16 = v12;
        v17 = 2114;
        v18 = activeModeAssertion;
        v19 = 2114;
        v20 = v6;
        _os_log_error_impl(&dword_24B876000, identifier, OS_LOG_TYPE_ERROR, "[%{public}@] Encountered error requesting lifetime details for active mode assertion: activeModeAssertion: %{public}@; error: %{public}@", buf, 0x20u);
      }

      v8 = 0;
    }

LABEL_10:
    goto LABEL_11;
  }

  v5 = 0;
  v8 = 0;
LABEL_11:
  [(FCActivityManager *)selfCopy _setLifetimeForActiveActivity:v8];
  activeActivity = selfCopy->_activeActivity;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(FCActivityDescribing *)selfCopy->_activeActivity supportsDiscreteLifetimes])
  {
    v10 = selfCopy->_activeActivity;
    if (selfCopy->_activeLifetimeDetailsCollection)
    {
      [(FCActivityManager *)selfCopy _updateActivity:v10 withLifetimeDetailsCollection:?];
    }

    else
    {
      [(FCActivityManager *)selfCopy _updateActivity:v10 withLifetimeDetails:v5];
    }
  }

  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateLifetimeForActiveActivityIfNecessary
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_lifetimeOfActiveActivity)
  {
    [(FCActivityManager *)obj _updateLifetimeForActiveActivity];
  }

  objc_sync_exit(obj);
}

- (id)_lifetimeForActiveActivity
{
  [(FCActivityManager *)self _updateActiveModeAssertionIfNecessary];
  [(FCActivityManager *)self _updateLifetimeForActiveActivityIfNecessary];
  lifetimeOfActiveActivity = self->_lifetimeOfActiveActivity;

  return lifetimeOfActiveActivity;
}

- (id)_activityForATXActivityOrSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = objc_opt_class();
  v6 = suggestionCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  modeUUID = [v8 modeUUID];
  v10 = modeUUID;
  if (modeUUID)
  {
    uuidString = modeUUID;
  }

  else
  {
    v12 = objc_opt_class();
    v13 = v6;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    uuidString = [v15 uuidString];
  }

  if ([uuidString length])
  {
    v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:uuidString];
    if (v16)
    {
      v17 = [(FCActivityManager *)self _activityForUniqueIdentifier:v16];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_activityForModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    _availableActivities = [(FCActivityManager *)selfCopy _availableActivities];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__FCActivityManager__activityForModeIdentifier___block_invoke;
    v9[3] = &unk_279013CD0;
    v10 = identifierCopy;
    v7 = [_availableActivities bs_firstObjectPassingTest:v9];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __48__FCActivityManager__activityForModeIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 activityIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_activityForUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    _availableActivities = [(FCActivityManager *)selfCopy _availableActivities];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__FCActivityManager__activityForUniqueIdentifier___block_invoke;
    v9[3] = &unk_279013CD0;
    v10 = identifierCopy;
    v7 = [_availableActivities bs_firstObjectPassingTest:v9];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __50__FCActivityManager__activityForUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 activityUniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_lifetimeForLifetimeDetailsIdentifier:(id)identifier ofActivity:(id)activity
{
  identifierCopy = identifier;
  v6 = 0;
  if (identifierCopy && activity)
  {
    activityLifetimeDescriptions = [activity activityLifetimeDescriptions];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__FCActivityManager__lifetimeForLifetimeDetailsIdentifier_ofActivity___block_invoke;
    v9[3] = &unk_279013D20;
    v10 = identifierCopy;
    v6 = [activityLifetimeDescriptions bs_firstObjectPassingTest:v9];
  }

  return v6;
}

uint64_t __70__FCActivityManager__lifetimeForLifetimeDetailsIdentifier_ofActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lifetimeIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_updateActiveActivity:(id)activity
{
  v16 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activeActivity != activityCopy)
  {
    v7 = FCLogActivities;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(FCActivityManager *)selfCopy description];
      *buf = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = activityCopy;
      _os_log_impl(&dword_24B876000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating active activity: %{public}@", buf, 0x16u);
    }

    v9 = selfCopy->_activeActivity;
    objc_storeStrong(&selfCopy->_activeActivity, activity);
    if (![(FCActivityManager *)selfCopy _doesActivity:selfCopy->_activeActivity identifySameModeAsActivity:v9])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__FCActivityManager__updateActiveActivity___block_invoke;
      block[3] = &unk_279013CF8;
      block[4] = selfCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  objc_sync_exit(selfCopy);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __43__FCActivityManager__updateActiveActivity___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__FCActivityManager__updateActiveActivity___block_invoke_2;
  v6[3] = &unk_279013CA8;
  v6[4] = v2;
  [v2 _enumerateObserversRespondingToSelector:sel_activeActivityDidChangeForManager_ usingBlock:v6];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__FCActivityManager__updateActiveActivity___block_invoke_111;
  v5[3] = &unk_279013CA8;
  v5[4] = v3;
  return [v3 _enumerateObserversRespondingToSelector:sel_activeModeDidChangeForManager_ usingBlock:v5];
}

void __43__FCActivityManager__updateActiveActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEBUG))
  {
    __43__FCActivityManager__updateActiveActivity___block_invoke_2_cold_1(a1, v4, v3);
  }

  [v3 activeActivityDidChangeForManager:*(a1 + 32)];
}

void __43__FCActivityManager__updateActiveActivity___block_invoke_111(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEBUG))
  {
    __43__FCActivityManager__updateActiveActivity___block_invoke_111_cold_1(a1, v4, v3);
  }

  [v3 activeModeDidChangeForManager:*(a1 + 32)];
}

- (id)_activeActivity
{
  [(FCActivityManager *)self _updateActiveModeAssertionIfNecessary];
  activeActivity = self->_activeActivity;

  return activeActivity;
}

- (void)_setLifetimeForActiveActivity:(id)activity
{
  v16 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lifetimeOfActiveActivity = selfCopy->_lifetimeOfActiveActivity;
  if ((BSEqualObjects() & 1) == 0)
  {
    v8 = FCLogActivities;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(FCActivityManager *)selfCopy description];
      *buf = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = activityCopy;
      _os_log_impl(&dword_24B876000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating lifetime of active activity: %{public}@", buf, 0x16u);
    }

    objc_storeStrong(&selfCopy->_lifetimeOfActiveActivity, activity);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__FCActivityManager__setLifetimeForActiveActivity___block_invoke;
    block[3] = &unk_279013CF8;
    block[4] = selfCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  objc_sync_exit(selfCopy);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __51__FCActivityManager__setLifetimeForActiveActivity___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__FCActivityManager__setLifetimeForActiveActivity___block_invoke_2;
  v3[3] = &unk_279013CA8;
  v3[4] = v1;
  return [v1 _enumerateObserversRespondingToSelector:sel_activeActivityLifetimeDidChangeForManager_ usingBlock:v3];
}

void __51__FCActivityManager__setLifetimeForActiveActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEBUG))
  {
    __51__FCActivityManager__setLifetimeForActiveActivity___block_invoke_2_cold_1(a1, v4, v3);
  }

  [v3 activeActivityLifetimeDidChangeForManager:*(a1 + 32)];
}

- (void)_setActiveActivity:(id)activity withLifetime:(id)lifetime reason:(id)reason
{
  v45 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  lifetimeCopy = lifetime;
  reasonCopy = reason;
  _activeActivity = [(FCActivityManager *)self _activeActivity];
  v12 = _activeActivity;
  if (_activeActivity == activityCopy)
  {
    v13 = [(FCActivityManager *)self lifetimeOfActivity:activityCopy];

    if (v13 == lifetimeCopy)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __60__FCActivityManager__setActiveActivity_withLifetime_reason___block_invoke;
  v35[3] = &unk_279013D48;
  v35[4] = self;
  v14 = lifetimeCopy;
  v36 = v14;
  v15 = MEMORY[0x24C24D280](v35);
  if (activityCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    _availableActivities = [(FCActivityManager *)selfCopy _availableActivities];
    v18 = [_availableActivities containsObject:activityCopy];

    v19 = FCLogActivities;
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(FCActivityManager *)selfCopy description];
        *buf = 138544130;
        v38 = v21;
        v39 = 2114;
        v40 = activityCopy;
        v41 = 2114;
        v42 = v14;
        v43 = 2114;
        v44 = reasonCopy;
        _os_log_impl(&dword_24B876000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Activating activity: activity: %{public}@; lifetime: %{public}@; reason: %{public}@", buf, 0x2Au);
      }

      v34 = 0;
      v22 = (v15)[2](v15, activityCopy, v14, &v34);
      v20 = v34;
      if ((v22 & 1) == 0)
      {
        v23 = FCLogActivities;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v32 = [(FCActivityManager *)selfCopy description];
          *buf = 138544130;
          v38 = v32;
          v39 = 2114;
          v40 = activityCopy;
          v41 = 2114;
          v42 = v14;
          v43 = 2114;
          v44 = v20;
          _os_log_error_impl(&dword_24B876000, v23, OS_LOG_TYPE_ERROR, "[%{public}@] Encountered error activating activity: activity: %{public}@; lifetime: %{public}@; error: %{public}@", buf, 0x2Au);
        }
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v30 = [(FCActivityManager *)selfCopy description];
      availableActivities = selfCopy->_availableActivities;
      *buf = 138543874;
      v38 = v30;
      v39 = 2114;
      v40 = activityCopy;
      v41 = 2114;
      v42 = availableActivities;
      _os_log_error_impl(&dword_24B876000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Attempt to activate activity not in collection: activity: %{public}@; availableActivities: %{public}@", buf, 0x20u);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v24 = FCLogActivities;
    if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      v26 = [(FCActivityManager *)self description];
      *buf = 138543618;
      v38 = v26;
      v39 = 2114;
      v40 = reasonCopy;
      _os_log_impl(&dword_24B876000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deactivating all activities: reason: %{public}@", buf, 0x16u);
    }

    v33 = 0;
    v27 = (v15)[2](v15, 0, v14, &v33);
    selfCopy = v33;
    if ((v27 & 1) == 0)
    {
      v28 = FCLogActivities;
      if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR))
      {
        [FCActivityManager _setActiveActivity:v28 withLifetime:self reason:selfCopy];
      }
    }
  }

LABEL_21:
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __60__FCActivityManager__setActiveActivity_withLifetime_reason___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) _modeSelectionService];
  if (v7)
  {
    v10 = objc_alloc_init(MEMORY[0x277D05A40]);
    v11 = v10;
    if (v8)
    {
      v12 = [v8 lifetimeIdentifier];
      [v11 setIdentifier:v12];

      v13 = [v7 activityIdentifier];
      [v11 setModeIdentifier:v13];

      [v11 setReason:1];
      if (objc_opt_respondsToSelector())
      {
        v14 = [v8 _dndLifetimeDetails];
        if (v14)
        {
          v15 = v14;
          v16 = [*(a1 + 32) _lifetimeDetailsProvider];
          v25 = 0;
          v17 = [v16 lifetimeForLifetimeDetails:v15 error:&v25];
          v18 = v25;

          if (!v17)
          {
LABEL_14:

            if (v18)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }

LABEL_13:
          [v11 setLifetime:v17];
          goto LABEL_14;
        }
      }

      v19 = FCLogActivities;
      if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR))
      {
        __60__FCActivityManager__setActiveActivity_withLifetime_reason___block_invoke_cold_1((a1 + 32), v19, a1);
      }

      v17 = 0;
    }

    else
    {
      [v10 setIdentifier:@"com.apple.focus.activity-manager"];
      v20 = [v7 activityIdentifier];
      [v11 setModeIdentifier:v20];

      [v11 setReason:1];
      v17 = [MEMORY[0x277D05970] lifetimeUntilEndOfScheduleWithIdentifier:*MEMORY[0x277D05838]];
    }

    v18 = 0;
    if (!v17)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v11 = 0;
LABEL_15:
  v24 = 0;
  [v9 activateModeWithDetails:v11 error:&v24];
  v18 = v24;
  if (!v18)
  {
    v22 = 1;
    goto LABEL_20;
  }

LABEL_16:
  if (a4)
  {
    v21 = v18;
    v22 = 0;
    *a4 = v18;
  }

  else
  {
    v22 = 0;
  }

LABEL_20:

  return v22;
}

- (void)_deactivateActivity:(id)activity reason:(id)reason
{
  v26 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  reasonCopy = reason;
  _activeActivity = [(FCActivityManager *)self _activeActivity];
  if (_activeActivity != activityCopy)
  {

    goto LABEL_3;
  }

  activeModeAssertion = self->_activeModeAssertion;

  if (!activeModeAssertion)
  {
LABEL_3:
    _activeActivity2 = [(FCActivityManager *)self _activeActivity];

    v10 = FCLogActivities;
    v11 = os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR);
    if (_activeActivity2 == activityCopy)
    {
      if (v11)
      {
        [FCActivityManager _deactivateActivity:v10 reason:self];
      }
    }

    else if (v11)
    {
      [FCActivityManager _deactivateActivity:reason:];
    }

    goto LABEL_15;
  }

  _modeSelectionService = [(FCActivityManager *)self _modeSelectionService];
  v14 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [(FCActivityManager *)self description];
    *buf = 138543618;
    v23 = v16;
    v24 = 2114;
    v25 = reasonCopy;
    _os_log_impl(&dword_24B876000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deactivating active activity: reason: %{public}@", buf, 0x16u);
  }

  uUID = [(DNDModeAssertion *)self->_activeModeAssertion UUID];
  v21 = 0;
  v18 = [_modeSelectionService invalidateModeAssertionWithUUID:uUID error:&v21];
  v19 = v21;

  if ((v18 & 1) == 0 && os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR))
  {
    [FCActivityManager _deactivateActivity:reason:];
  }

LABEL_15:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfLifetimeChangeForActivity:(id)activity
{
  activityCopy = activity;
  v5 = activityCopy;
  if (activityCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__FCActivityManager__notifyObserversOfLifetimeChangeForActivity___block_invoke;
    v6[3] = &unk_279013D70;
    v6[4] = self;
    v7 = activityCopy;
    [(FCActivityManager *)self _enumerateObserversRespondingToSelector:sel_activityManager_lifetimeDescriptionsDidChangeForActivity_ usingBlock:v6];
  }
}

void __65__FCActivityManager__notifyObserversOfLifetimeChangeForActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEBUG))
  {
    __65__FCActivityManager__notifyObserversOfLifetimeChangeForActivity___block_invoke_cold_1(a1, v4, v3);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) copyWithZone:0];
  [v3 activityManager:v5 lifetimeDescriptionsDidChangeForActivity:v6];
}

- (void)_updateActivity:(id)activity withLifetimeDescriptions:(id)descriptions
{
  v22 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  descriptionsCopy = descriptions;
  if (objc_opt_respondsToSelector())
  {
    activityLifetimeDescriptions = [activityCopy activityLifetimeDescriptions];
    v9 = BSEqualArrays();

    if ((v9 & 1) == 0)
    {
      v10 = FCLogActivities;
      if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [(FCActivityManager *)self description];
        *buf = 138543874;
        v17 = v12;
        v18 = 2114;
        v19 = activityCopy;
        v20 = 2114;
        v21 = descriptionsCopy;
        _os_log_impl(&dword_24B876000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating lifetime descriptions for activity: activity: %{public}@; lifetime descriptions: %{public}@", buf, 0x20u);
      }

      [activityCopy _setActivityLifetimeDescriptions:descriptionsCopy];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __62__FCActivityManager__updateActivity_withLifetimeDescriptions___block_invoke;
      v14[3] = &unk_279013D98;
      v14[4] = self;
      v15 = activityCopy;
      dispatch_async(MEMORY[0x277D85CD0], v14);
    }
  }

  else if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR))
  {
    [FCActivityManager _updateActivity:withLifetimeDescriptions:];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateActivity:(id)activity withLifetimeDetails:(id)details
{
  activityCopy = activity;
  detailsCopy = details;
  v8 = detailsCopy;
  if (activityCopy && detailsCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      activityLifetimeDescriptions = [activityCopy activityLifetimeDescriptions];
      v10 = [activityLifetimeDescriptions mutableCopy];
      v11 = v10;
      selfCopy = self;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v13 = v12;

      v14 = [[_FCActivityLifetime alloc] initWithLifetimeDetails:v8];
      if ([activityLifetimeDescriptions count])
      {
        v15 = 0;
        while (1)
        {
          v16 = [activityLifetimeDescriptions objectAtIndexedSubscript:v15];
          lifetimeIdentifier = [v16 lifetimeIdentifier];
          identifier = [v8 identifier];
          v19 = [lifetimeIdentifier isEqualToString:identifier];

          if (v19)
          {
            break;
          }

          if (++v15 >= [activityLifetimeDescriptions count])
          {
            goto LABEL_13;
          }
        }

        [v13 setObject:v14 atIndexedSubscript:v15];
      }

      else
      {
LABEL_13:
        [v13 addObject:v14];
      }

      [(FCActivityManager *)selfCopy _updateActivity:activityCopy withLifetimeDescriptions:v13];
    }

    else if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR))
    {
      [FCActivityManager _updateActivity:withLifetimeDescriptions:];
    }
  }
}

- (void)_updateActivity:(id)activity withLifetimeDetailsCollection:(id)collection
{
  v23 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  collectionCopy = collection;
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = collectionCopy;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          v15 = [_FCActivityLifetime alloc];
          v16 = [(_FCActivityLifetime *)v15 initWithLifetimeDetails:v14, v18];
          [v8 addObject:v16];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [(FCActivityManager *)self _updateActivity:activityCopy withLifetimeDescriptions:v8];
  }

  else if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR))
  {
    [FCActivityManager _updateActivity:withLifetimeDescriptions:];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateLifetimesAlternativeDescription:(id)description forActivity:(id)activity
{
  descriptionCopy = description;
  activityCopy = activity;
  if (objc_opt_respondsToSelector())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = objc_opt_class();
    v10 = activityCopy;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    activityLifetimesAlternativeDescription = [v12 activityLifetimesAlternativeDescription];
    v14 = BSEqualStrings();

    if ((v14 & 1) == 0)
    {
      [v10 _setActivityLifetimesAlternativeDescription:descriptionCopy];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __72__FCActivityManager__updateLifetimesAlternativeDescription_forActivity___block_invoke;
      v15[3] = &unk_279013D98;
      v15[4] = selfCopy;
      v16 = v10;
      dispatch_async(MEMORY[0x277D85CD0], v15);
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)_updateLifetimesAlternativeDescriptionForActivity:(id)activity
{
  activityCopy = activity;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [activityCopy isSleepActivity])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"SLEEP_ACTIVATE_ON_SCHEDULE" value:&stru_285EB06A0 table:@"Focus"];
    [(FCActivityManager *)self _updateLifetimesAlternativeDescription:v6 forActivity:activityCopy];
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && [activityCopy isDrivingActivity])
  {
    _carDNDStatus = [(FCActivityManager *)self _carDNDStatus];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__FCActivityManager__updateLifetimesAlternativeDescriptionForActivity___block_invoke;
    v8[3] = &unk_279013DC0;
    v8[4] = self;
    v9 = activityCopy;
    [_carDNDStatus fetchAutomaticDNDTriggerPreferenceWithReply:v8];
  }
}

void __71__FCActivityManager__updateLifetimesAlternativeDescriptionForActivity___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = FCLogActivities;
    if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR))
    {
      __71__FCActivityManager__updateLifetimesAlternativeDescriptionForActivity___block_invoke_cold_1(a1, v6, v5);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v7 _localizedAutomaticDrivingTriggerDescriptionForPreference:a2];
    [v7 _updateLifetimesAlternativeDescription:v8 forActivity:*(a1 + 40)];
  }
}

- (void)_updateLifetimesAlternativeDescriptionsForAvailableActivities
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  _availableActivities = [(FCActivityManager *)selfCopy _availableActivities];
  v4 = [_availableActivities countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(_availableActivities);
        }

        [(FCActivityManager *)selfCopy _updateLifetimesAlternativeDescriptionForActivity:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [_availableActivities countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isSyncedAssertion:(id)assertion
{
  source = [assertion source];
  deviceIdentifier = [source deviceIdentifier];
  v5 = deviceIdentifier != 0;

  return v5;
}

- (id)_activitySuggestionClient
{
  activitySuggestionClient = self->_activitySuggestionClient;
  if (!activitySuggestionClient)
  {
    mEMORY[0x277CEB318] = [MEMORY[0x277CEB318] sharedInstance];
    v5 = self->_activitySuggestionClient;
    self->_activitySuggestionClient = mEMORY[0x277CEB318];

    [(ATXActivitySuggestionClient *)self->_activitySuggestionClient registerObserver:self sendingInitialChangeNotification:1];
    activitySuggestionClient = self->_activitySuggestionClient;
  }

  return activitySuggestionClient;
}

- (void)_updateSuggestedActivity:(id)activity forLocation:(int64_t)location
{
  v32 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  locationsToSuggestedActivitiesOrNull = selfCopy->_locationsToSuggestedActivitiesOrNull;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:location];
  v10 = [(NSMapTable *)locationsToSuggestedActivitiesOrNull objectForKey:v9];

  null = [MEMORY[0x277CBEB68] null];
  if (BSEqualObjects())
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;

  if ((BSEqualObjects() & 1) == 0)
  {
    if (activityCopy && !selfCopy->_locationsToSuggestedActivitiesOrNull)
    {
      strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      v15 = selfCopy->_locationsToSuggestedActivitiesOrNull;
      selfCopy->_locationsToSuggestedActivitiesOrNull = strongToWeakObjectsMapTable;
    }

    v16 = FCLogActivities;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(FCActivityManager *)selfCopy description];
      v18 = @"[unknown]";
      if (location == 1)
      {
        v18 = @"prominent";
      }

      if (!location)
      {
        v18 = @"unobtrusive";
      }

      v19 = v18;
      *buf = 138543874;
      v27 = v17;
      v28 = 2114;
      v29 = activityCopy;
      v30 = 2114;
      v31 = v19;
      _os_log_impl(&dword_24B876000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating suggested activity: %{public}@ (%{public}@)", buf, 0x20u);
    }

    if (activityCopy)
    {
      null2 = activityCopy;
    }

    else
    {
      null2 = [MEMORY[0x277CBEB68] null];
    }

    v21 = null2;
    v22 = selfCopy->_locationsToSuggestedActivitiesOrNull;
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:location];
    [(NSMapTable *)v22 setObject:v21 forKey:v23];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __58__FCActivityManager__updateSuggestedActivity_forLocation___block_invoke;
    v25[3] = &unk_279013E10;
    v25[4] = selfCopy;
    v25[5] = location;
    dispatch_async(MEMORY[0x277D85CD0], v25);
  }

  objc_sync_exit(selfCopy);
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __58__FCActivityManager__updateSuggestedActivity_forLocation___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__FCActivityManager__updateSuggestedActivity_forLocation___block_invoke_2;
  v3[3] = &unk_279013DE8;
  v1 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v1;
  return [v4 _enumerateObserversRespondingToSelector:sel_activityManager_suggestedActivityDidChangeForLocation_ usingBlock:v3];
}

void __58__FCActivityManager__updateSuggestedActivity_forLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEBUG))
  {
    __58__FCActivityManager__updateSuggestedActivity_forLocation___block_invoke_2_cold_1(a1, v4);
  }

  [v3 activityManager:*(a1 + 32) suggestedActivityDidChangeForLocation:*(a1 + 40)];
}

- (void)_updateSuggestedActivity:(id)activity forLocations:(unint64_t)locations
{
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v8;
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    if ((v10 & locations) != 0)
    {
      [(FCActivityManager *)self _updateSuggestedActivity:activity forLocation:v7];
    }

    v8 = 0;
    v7 = 1;
  }

  while ((v9 & 1) != 0);
}

- (void)_updateActivitySuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if (!suggestionCopy)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = [(FCActivityManager *)self _activityForATXActivityOrSuggestion:suggestionCopy];
  if (!v5)
  {
    if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR))
    {
      [FCActivityManager _updateActivitySuggestion:];
    }

    goto LABEL_7;
  }

  v6 = v5;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_8:
    location = 3;
    goto LABEL_9;
  }

  location = [suggestionCopy location];
LABEL_9:
  [(FCActivityManager *)self _updateSuggestedActivity:v6 forLocations:location];
}

- (id)_localizedAutomaticDrivingTriggerDescriptionForPreference:(unint64_t)preference
{
  if (preference > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279013E50[preference];
  }

  if ([(__CFString *)v3 length])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_285EB06A0 table:@"Focus"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_drivingTriggerDidChange
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(FCActivityManager *)self description];
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_24B876000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Driving trigger did change", &v10, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  _availableActivities = [(FCActivityManager *)selfCopy _availableActivities];
  v8 = [_availableActivities bs_firstObjectPassingTest:&__block_literal_global_150];
  [(FCActivityManager *)selfCopy _updateLifetimesAlternativeDescriptionForActivity:v8];

  objc_sync_exit(selfCopy);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __45__FCActivityManager__drivingTriggerDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 isDrivingActivity];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_carDNDStatus
{
  if (self->_lifetimeDescriptionsUpdatingEnabled && !self->_carDNDStatus)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF8988]);
    carDNDStatus = self->_carDNDStatus;
    self->_carDNDStatus = v3;
  }

  v5 = self->_carDNDStatus;

  return v5;
}

- (id)activityWithIdentifier:(id)identifier
{
  v14[4] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    allActivitiesByIdentifier = selfCopy->_allActivitiesByIdentifier;
    if (!allActivitiesByIdentifier)
    {
      _modeSelectionService = [(FCActivityManager *)selfCopy _modeSelectionService];
      v14[0] = 0;
      v8 = [_modeSelectionService allModesWithError:v14];
      v9 = v14[0];
      if (v9)
      {
        allObjects = FCLogActivities;
        if (os_log_type_enabled(allObjects, OS_LOG_TYPE_ERROR))
        {
          [(FCActivityManager *)selfCopy description];
          objc_claimAutoreleasedReturnValue();
          [FCActivityManager _availableActivities];
        }
      }

      else
      {
        allObjects = [v8 allObjects];
        [(FCActivityManager *)selfCopy _updateActivitiesWithModes:allObjects];
      }

      allActivitiesByIdentifier = selfCopy->_allActivitiesByIdentifier;
    }

    v11 = [(NSMutableDictionary *)allActivitiesByIdentifier objectForKey:identifierCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)newActivityManagerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] _initWithIdentifier:identifierCopy];

  return v5;
}

- (void)setActiveActivity:(id)activity reason:(id)reason
{
  reasonCopy = reason;
  activityUniqueIdentifier = [activity activityUniqueIdentifier];
  v8 = [(FCActivityManager *)self _activityForUniqueIdentifier:activityUniqueIdentifier];

  [(FCActivityManager *)self _setActiveActivity:v8 withLifetime:0 reason:reasonCopy];
}

- (void)setActiveActivity:(id)activity withLifetime:(id)lifetime reason:(id)reason
{
  reasonCopy = reason;
  lifetimeCopy = lifetime;
  activityUniqueIdentifier = [activity activityUniqueIdentifier];
  v13 = [(FCActivityManager *)self _activityForUniqueIdentifier:activityUniqueIdentifier];

  lifetimeIdentifier = [lifetimeCopy lifetimeIdentifier];

  v12 = [(FCActivityManager *)self _lifetimeForLifetimeDetailsIdentifier:lifetimeIdentifier ofActivity:v13];

  [(FCActivityManager *)self _setActiveActivity:v13 withLifetime:v12 reason:reasonCopy];
}

- (void)promotePlaceholderActivity:(id)activity
{
  modeSelectionService = self->_modeSelectionService;
  activityIdentifier = [activity activityIdentifier];
  v5 = 0;
  [(DNDModeSelectionService *)modeSelectionService promotePlaceholderWithModeIdentifier:activityIdentifier error:&v5];
}

void __41__FCActivityManager__initWithIdentifier___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_6() description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24B876000, v6, v7, "[%{public}@] Error adding selection update listener: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __41__FCActivityManager__initWithIdentifier___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 description];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_24B876000, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Added selection update listener", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setActivity:(void *)a1 active:(void *)a2 withLifetime:reason:.cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12(&dword_24B876000, v5, v6, "[%{public}@] Activating a nil activity isn't permitted – ignoring", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateCreationDateOfActivity:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_6() description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_24B876000, v4, v5, "[%{public}@] Failed to obtain mode configuration for activity: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __64__FCActivityManager__notifyObserversOfAvailableActivitiesChange__block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 description];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %p", objc_opt_class(), a3];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x16u);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateActivitiesWithModes:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_24B876000, log, OS_LOG_TYPE_DEBUG, "[%{public}@] Available activities didn't change from cached value", buf, 0xCu);
}

- (void)_availableActivities
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_8(&dword_24B876000, v6, v4, "[%{public}@] Encountered error requesting available activities: %{public}@", v5);
}

void __43__FCActivityManager__updateActiveActivity___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 description];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %p", objc_opt_class(), a3];
  v9 = *(*(a1 + 32) + 120);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v10, v11, v12, v13, v14, 0x20u);

  v15 = *MEMORY[0x277D85DE8];
}

void __43__FCActivityManager__updateActiveActivity___block_invoke_111_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 description];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %p", objc_opt_class(), a3];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x16u);

  v13 = *MEMORY[0x277D85DE8];
}

void __51__FCActivityManager__setLifetimeForActiveActivity___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 description];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %p", objc_opt_class(), a3];
  v9 = *(*(a1 + 32) + 72);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v10, v11, v12, v13, v14, 0x20u);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_setActiveActivity:(void *)a1 withLifetime:(void *)a2 reason:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 description];
  OUTLINED_FUNCTION_3();
  v10 = 2114;
  v11 = a3;
  OUTLINED_FUNCTION_8(&dword_24B876000, v5, v7, "[%{public}@] Encountered error deactivating all activites: %{public}@", v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __60__FCActivityManager__setActiveActivity_withLifetime_reason___block_invoke_cold_1(uint64_t *a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a2;
  v7 = [OUTLINED_FUNCTION_6() description];
  v8 = *(a3 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_24B876000, v9, v10, "[%{public}@] Failed to retrieve dndLifetimeDetails from provided lifetime: %{public}@", v11, v12, v13, v14, v16);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_deactivateActivity:reason:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_6() description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24B876000, v4, v5, "[%{public}@] Encountered error deactivating activity: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_deactivateActivity:reason:.cold.2()
{
  OUTLINED_FUNCTION_7();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_6() description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24B876000, v4, v5, "[%{public}@] Encountered error deactivating activity: '%{public}@' isn't the active activity", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_deactivateActivity:(void *)a1 reason:(void *)a2 .cold.3(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12(&dword_24B876000, v5, v6, "[%{public}@] Encountered error deactivating activity: no active mode assertion", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __65__FCActivityManager__notifyObserversOfLifetimeChangeForActivity___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 description];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %p", objc_opt_class(), a3];
  v9 = *(a1 + 40);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v10, v11, v12, v13, v14, 0x20u);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updateActivity:withLifetimeDescriptions:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_6() description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24B876000, v4, v5, "[%{public}@] Lifetime descriptions can't be updated for activity: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __71__FCActivityManager__updateLifetimesAlternativeDescriptionForActivity___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 description];
  v8 = *(a1 + 40);
  OUTLINED_FUNCTION_3();
  v12 = 2114;
  v13 = v9;
  v14 = 2114;
  v15 = a3;
  _os_log_error_impl(&dword_24B876000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Encountered error fetching car automatic DND preference: activity: %{public}@; error: %{public}@", v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void __58__FCActivityManager__updateSuggestedActivity_forLocation___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_6() description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11(&dword_24B876000, v6, v7, "[%{public}@] Notifying observer of suggested activity change: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateActivitySuggestion:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_6() description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24B876000, v4, v5, "[%{public}@] Failed to find activity for suggestion: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end