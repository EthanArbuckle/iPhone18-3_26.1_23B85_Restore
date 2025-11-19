@interface FCActivityManager
+ (id)newActivityManagerWithIdentifier:(id)a3;
+ (id)sharedActivityManager;
+ (void)initialize;
- (BOOL)_doesActivity:(id)a3 identifySameModeAsActivity:(id)a4;
- (BOOL)_isSyncedAssertion:(id)a3;
- (BOOL)isActivityLocalUserInitiated:(id)a3;
- (BOOL)isDefaultConfiguration;
- (BOOL)shouldActivityShowStatusPill:(id)a3;
- (FCActivityDescribing)activeActivity;
- (FCActivityDescribing)defaultActivity;
- (NSArray)availableActivities;
- (NSString)localizedTerminationDescriptionForActiveActivity;
- (id)_activeActivity;
- (id)_activityForATXActivityOrSuggestion:(id)a3;
- (id)_activityForModeIdentifier:(id)a3;
- (id)_activityForUniqueIdentifier:(id)a3;
- (id)_activitySuggestionClient;
- (id)_availableActivities;
- (id)_carDNDStatus;
- (id)_initWithIdentifier:(id)a3;
- (id)_lifetimeDetailsProvider;
- (id)_lifetimeForActiveActivity;
- (id)_lifetimeForLifetimeDetailsIdentifier:(id)a3 ofActivity:(id)a4;
- (id)_localizedAutomaticDrivingTriggerDescriptionForPreference:(unint64_t)a3;
- (id)_modeSelectionService;
- (id)_stateService;
- (id)activityWithIdentifier:(id)a3;
- (id)lifetimeOfActivity:(id)a3;
- (id)promotedPlaceholderActivity:(id)a3;
- (id)suggestedActivityForLocation:(int64_t)a3;
- (void)_availableActivities;
- (void)_deactivateActivity:(id)a3 reason:(id)a4;
- (void)_drivingTriggerDidChange;
- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4;
- (void)_invalidateActiveModeAssertion;
- (void)_notifyObserversOfAvailableActivitiesChange;
- (void)_notifyObserversOfLifetimeChangeForActivity:(id)a3;
- (void)_setActiveActivity:(id)a3 withLifetime:(id)a4 reason:(id)a5;
- (void)_setAvailableActivities:(id)a3;
- (void)_setLifetimeForActiveActivity:(id)a3;
- (void)_updateActiveActivity:(id)a3;
- (void)_updateActiveModeAssertionIfNecessary;
- (void)_updateActivitiesWithModes:(id)a3;
- (void)_updateActivity:(id)a3 withLifetimeDescriptions:(id)a4;
- (void)_updateActivity:(id)a3 withLifetimeDetails:(id)a4;
- (void)_updateActivity:(id)a3 withLifetimeDetailsCollection:(id)a4;
- (void)_updateActivitySuggestion:(id)a3;
- (void)_updateCreationDateOfActivity:(id)a3;
- (void)_updateLifetimeForActiveActivity;
- (void)_updateLifetimeForActiveActivityIfNecessary;
- (void)_updateLifetimesAlternativeDescription:(id)a3 forActivity:(id)a4;
- (void)_updateLifetimesAlternativeDescriptionForActivity:(id)a3;
- (void)_updateLifetimesAlternativeDescriptionsForAvailableActivities;
- (void)_updateSuggestedActivity:(id)a3 forLocation:(int64_t)a4;
- (void)_updateSuggestedActivity:(id)a3 forLocations:(unint64_t)a4;
- (void)_updateWithActiveModeAssertionIfNecessary:(id)a3 stateUpdate:(id)a4;
- (void)activitySuggestionClient:(id)a3 didSuggestConfiguredActivity:(id)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)didShowSuggestedActivity:(id)a3 location:(int64_t)a4;
- (void)lifetimeDetailsProvider:(id)a3 didUpdateAvailableLifetimeDetails:(id)a4;
- (void)modeSelectionService:(id)a3 didReceiveModesUpdate:(id)a4;
- (void)modeSelectionService:(id)a3 didReceiveUpdatedActiveModeAssertion:(id)a4 stateUpdate:(id)a5;
- (void)promotePlaceholderActivity:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setActiveActivity:(id)a3 reason:(id)a4;
- (void)setActiveActivity:(id)a3 withLifetime:(id)a4 reason:(id)a5;
- (void)setActivity:(id)a3 active:(BOOL)a4 withLifetime:(id)a5 reason:(id)a6;
- (void)setLifetimeDescriptionsUpdatingEnabled:(BOOL)a3;
- (void)userDidAcceptSuggestedActivity:(id)a3 location:(int64_t)a4;
- (void)userDidRejectSuggestedActivity:(id)a3 location:(int64_t)a4;
- (void)userDidSeeSuggestedActivity:(id)a3 location:(int64_t)a4;
@end

@implementation FCActivityManager

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    FCRegisterLogging();
  }
}

- (id)_initWithIdentifier:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = FCActivityManager;
  v5 = [(FCActivityManager *)&v14 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v5->_observers;
    v5->_observers = v8;

    v10 = [(FCActivityManager *)v5 _modeSelectionService];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__FCActivityManager__initWithIdentifier___block_invoke;
    v12[3] = &unk_279013C60;
    v13 = v5;
    [v10 addListener:v13 withCompletionHandler:v12];
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = [(FCActivityManager *)v2 _availableActivities];
  v5 = [v3 initWithArray:v4 copyItems:1];

  objc_sync_exit(v2);
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
  v2 = [(FCActivityManager *)self _activeActivity];
  v3 = [v2 copyWithZone:0];

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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FCActivityManager *)v2 _availableActivities];
  v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_49];

  objc_sync_exit(v2);
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
      v4 = [(DNDStateUpdate *)activeStateUpdate state];
    }

    else
    {
      v6 = [(FCActivityManager *)self _stateService];
      v4 = [v6 queryCurrentStateWithError:0];
    }

    v7 = [v4 userVisibleTransitionDate];
    if ([v4 userVisibleTransitionLifetimeType] == 3)
    {
      v8 = 0;
      v9 = @"FOCUS_STATUS_DND_ON_UNTIL_LOCATION";
    }

    else if (v7 && ([MEMORY[0x277CBEAA8] distantFuture], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v7, "isEqualToDate:", v10), v10, (v11 & 1) == 0))
    {
      v12 = [MEMORY[0x277CBEA80] currentCalendar];
      v13 = [v12 isDateInToday:v7];

      if (v13)
      {
        v14 = [MEMORY[0x277CF0BF0] sharedInstance];
        v8 = [v14 formatDateAsTimeStyle:v7];
        v9 = @"FOCUS_STATUS_DND_ON_UNTIL_TODAY_TIME";
      }

      else
      {
        v15 = [MEMORY[0x277CBEA80] currentCalendar];
        v16 = [v15 isDateInTomorrow:v7];

        v17 = [MEMORY[0x277CF0BF0] sharedInstance];
        v14 = v17;
        if (v16)
        {
          v8 = [v17 formatDateAsTimeStyle:v7];
          v9 = @"FOCUS_STATUS_DND_ON_UNTIL_TOMORROW_TIME";
        }

        else
        {
          v8 = [v17 formatDateAsAbbreviatedDayMonthWithTimeStyle:v7];
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

- (void)setLifetimeDescriptionsUpdatingEnabled:(BOOL)a3
{
  if (self->_lifetimeDescriptionsUpdatingEnabled != a3)
  {
    self->_lifetimeDescriptionsUpdatingEnabled = a3;
    v7 = [(FCActivityManager *)self _lifetimeDetailsProvider];
    if (self->_lifetimeDescriptionsUpdatingEnabled)
    {
      [v7 startUpdatingLifetimeDetails];
      [v7 startUpdatingLifetimeDetailMetadata];
      [(FCActivityManager *)self _updateLifetimesAlternativeDescriptionsForAvailableActivities];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, FCDrivingTriggerObserverCallback, *MEMORY[0x277CF8900], 0, CFNotificationSuspensionBehaviorCoalesce);
    }

    else
    {
      [v7 stopUpdatingLifetimeDetails];
      [v7 stopUpdatingLifetimeDetailMetadata];
      [v7 resetLifetimeDetails];
      v6 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterRemoveObserver(v6, self, *MEMORY[0x277CF8900], 0);
    }
  }
}

- (id)lifetimeOfActivity:(id)a3
{
  v4 = [a3 activityUniqueIdentifier];
  v5 = [(FCActivityManager *)self _activityForUniqueIdentifier:v4];

  if (v5 && ([(FCActivityManager *)self _activeActivity], v6 = objc_claimAutoreleasedReturnValue(), v7 = BSEqualObjects(), v6, v7))
  {
    v8 = [(FCActivityManager *)self _lifetimeForActiveActivity];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setActivity:(id)a3 active:(BOOL)a4 withLifetime:(id)a5 reason:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v10 || !v8)
  {
    v14 = [v10 activityUniqueIdentifier];
    v15 = [(FCActivityManager *)self _activityForUniqueIdentifier:v14];

    if (!v15 || v8)
    {
      v16 = [v11 lifetimeIdentifier];
      v17 = [(FCActivityManager *)self _lifetimeForLifetimeDetailsIdentifier:v16 ofActivity:v15];

      [(FCActivityManager *)self _setActiveActivity:v15 withLifetime:v17 reason:v12];
    }

    else
    {
      [(FCActivityManager *)self _deactivateActivity:v15 reason:v12];
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

- (BOOL)isActivityLocalUserInitiated:(id)a3
{
  v4 = a3;
  v5 = [v4 activityUniqueIdentifier];
  v6 = [(FCActivityManager *)self _activityForUniqueIdentifier:v5];

  v7 = [(FCActivityManager *)self _activeActivity];
  if (v6 | v7 && !BSEqualObjects())
  {
    v10 = 0;
    goto LABEL_11;
  }

  v8 = self;
  objc_sync_enter(v8);
  activeStateUpdate = v8->_activeStateUpdate;
  if (!activeStateUpdate)
  {
    if (v8->_activeModeAssertion && ![(FCActivityManager *)v8 _isSyncedAssertion:?])
    {
      v12 = [(DNDModeAssertion *)v8->_activeModeAssertion details];
      v10 = [v12 reason] == 1;

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

  v10 = [(DNDStateUpdate *)v8->_activeStateUpdate reason]== 1;
LABEL_9:
  objc_sync_exit(v8);

LABEL_11:
  return v10;
}

- (BOOL)shouldActivityShowStatusPill:(id)a3
{
  v4 = a3;
  v5 = [v4 activityUniqueIdentifier];
  v6 = [(FCActivityManager *)self _activityForUniqueIdentifier:v5];

  v7 = [(FCActivityManager *)self _activeActivity];
  if (v6 | v7 && !BSEqualObjects())
  {
    v12 = 1;
  }

  else
  {
    v8 = self;
    objc_sync_enter(v8);
    activeStateUpdate = v8->_activeStateUpdate;
    if (activeStateUpdate)
    {
      v10 = [(DNDStateUpdate *)activeStateUpdate source]== 1 && [(DNDStateUpdate *)v8->_activeStateUpdate reason]== 1;
      v11 = ([(DNDStateUpdate *)v8->_activeStateUpdate options]>> 1) & 1;
    }

    else if (v8->_activeModeAssertion && ![(FCActivityManager *)v8 _isSyncedAssertion:?])
    {
      v11 = [(DNDModeAssertion *)v8->_activeModeAssertion details];
      v10 = [v11 reason] == 1;

      LOBYTE(v11) = 0;
    }

    else
    {
      LOBYTE(v11) = 0;
      v10 = 0;
    }

    objc_sync_exit(v8);

    v12 = !v10 | v11;
  }

  return v12 & 1;
}

- (id)promotedPlaceholderActivity:(id)a3
{
  modeSelectionService = self->_modeSelectionService;
  v4 = [a3 activityIdentifier];
  v9 = 0;
  v5 = [(DNDModeSelectionService *)modeSelectionService promotedPlaceholderWithModeIdentifier:v4 error:&v9];
  v6 = [v5 mode];

  if (v6)
  {
    v7 = [[_FCActivity alloc] initWithMode:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)suggestedActivityForLocation:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  locationsToSuggestedActivitiesOrNull = v4->_locationsToSuggestedActivitiesOrNull;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [(NSMapTable *)locationsToSuggestedActivitiesOrNull objectForKey:v6];

  if (!v7)
  {
    v8 = [(FCActivityManager *)v4 _activitySuggestionClient];
    v9 = [v8 currentSuggestion];

    [(FCActivityManager *)v4 _updateActivitySuggestion:v9];
    v10 = v4->_locationsToSuggestedActivitiesOrNull;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v7 = [(NSMapTable *)v10 objectForKey:v11];
  }

  v12 = [MEMORY[0x277CBEB68] null];
  if (BSEqualObjects())
  {
    v13 = 0;
  }

  else
  {
    v13 = [v7 copyWithZone:0];
  }

  objc_sync_exit(v4);

  return v13;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self->_observers;
    objc_sync_enter(v5);
    [(NSHashTable *)self->_observers addObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self->_observers;
    objc_sync_enter(v5);
    [(NSHashTable *)self->_observers removeObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)modeSelectionService:(id)a3 didReceiveUpdatedActiveModeAssertion:(id)a4 stateUpdate:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(FCActivityManager *)self description];
    v17 = 138543618;
    v18 = v13;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&dword_24B876000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did receive updated active mode assertion: %{public}@", &v17, 0x16u);
  }

  v14 = self;
  objc_sync_enter(v14);
  activeModeAssertion = v14->_activeModeAssertion;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(FCActivityManager *)v14 _invalidateActiveModeAssertion];
  }

  [(FCActivityManager *)v14 _updateWithActiveModeAssertionIfNecessary:v9 stateUpdate:v10];
  objc_sync_exit(v14);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)modeSelectionService:(id)a3 didReceiveModesUpdate:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(FCActivityManager *)self description];
    v14 = 138543874;
    v15 = v10;
    v16 = 2050;
    v17 = [v7 count];
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_24B876000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did receive all modes [%{public}lu] update: %{public}@", &v14, 0x20u);
  }

  v11 = self;
  objc_sync_enter(v11);
  [(FCActivityManager *)v11 _invalidateActiveModeAssertion];
  defaultActivity = v11->_defaultActivity;
  v11->_defaultActivity = 0;

  [(FCActivityManager *)v11 _updateActivitiesWithModes:v7];
  objc_sync_exit(v11);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)lifetimeDetailsProvider:(id)a3 didUpdateAvailableLifetimeDetails:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(FCActivityManager *)self description];
    *buf = 138543618;
    v24 = v10;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_24B876000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did receive updated available lifetime details: %{public}@", buf, 0x16u);
  }

  v11 = self;
  objc_sync_enter(v11);
  objc_storeStrong(&v11->_activeLifetimeDetailsCollection, a4);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [(FCActivityManager *)v11 _availableActivities];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v16 supportsDiscreteLifetimes])
        {
          [(FCActivityManager *)v11 _updateActivity:v16 withLifetimeDetailsCollection:v11->_activeLifetimeDetailsCollection];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  objc_sync_exit(v11);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)activitySuggestionClient:(id)a3 didSuggestConfiguredActivity:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(FCActivityManager *)self description];
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_24B876000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did receive updated activity suggestion: %{public}@", &v10, 0x16u);
  }

  [(FCActivityManager *)self _updateActivitySuggestion:v5];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didShowSuggestedActivity:(id)a3 location:(int64_t)a4
{
  v6 = [a3 activityUniqueIdentifier];
  v10 = [(FCActivityManager *)self _activityForUniqueIdentifier:v6];

  if (v10)
  {
    v7 = [(FCActivityManager *)self _activitySuggestionClient];
    v8 = [v10 activityUniqueIdentifier];
    v9 = [v8 UUIDString];
    [v7 didShowConfiguredActivitySuggestionWithSuggestionUUID:v9 location:a4 == 1];
  }
}

- (void)userDidSeeSuggestedActivity:(id)a3 location:(int64_t)a4
{
  v6 = [a3 activityUniqueIdentifier];
  v10 = [(FCActivityManager *)self _activityForUniqueIdentifier:v6];

  if (v10)
  {
    v7 = [(FCActivityManager *)self _activitySuggestionClient];
    v8 = [v10 activityUniqueIdentifier];
    v9 = [v8 UUIDString];
    [v7 userDidSeeConfiguredActivitySuggestionWithSuggestionUUID:v9 location:a4 == 1];
  }
}

- (void)userDidAcceptSuggestedActivity:(id)a3 location:(int64_t)a4
{
  v6 = [a3 activityUniqueIdentifier];
  v10 = [(FCActivityManager *)self _activityForUniqueIdentifier:v6];

  if (v10)
  {
    v7 = [(FCActivityManager *)self _activitySuggestionClient];
    v8 = [v10 activityUniqueIdentifier];
    v9 = [v8 UUIDString];
    [v7 userDidAcceptConfiguredActivitySuggestionWithSuggestionUUID:v9 location:a4 == 1];
  }
}

- (void)userDidRejectSuggestedActivity:(id)a3 location:(int64_t)a4
{
  v6 = [a3 activityUniqueIdentifier];
  v10 = [(FCActivityManager *)self _activityForUniqueIdentifier:v6];

  if (v10)
  {
    v7 = [(FCActivityManager *)self _activitySuggestionClient];
    v8 = [v10 activityUniqueIdentifier];
    v9 = [v8 UUIDString];
    [v7 userDidRejectConfiguredActivitySuggestionWithSuggestionUUID:v9 location:a4 == 1];
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
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_lifetimeDescriptionsUpdatingEnabled && !v2->_lifetimeDetailsProvider)
  {
    v3 = objc_alloc_init(MEMORY[0x277D05AE0]);
    lifetimeDetailsProvider = v2->_lifetimeDetailsProvider;
    v2->_lifetimeDetailsProvider = v3;

    [(DNDLifetimeDetailsProvider *)v2->_lifetimeDetailsProvider setDelegate:v2];
  }

  objc_sync_exit(v2);

  v5 = v2->_lifetimeDetailsProvider;

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

- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5)
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
            v5[2](v5, v12);
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

- (void)_updateCreationDateOfActivity:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 activityIdentifier];
      v6 = *MEMORY[0x277D05830];
      v7 = BSEqualStrings();

      if ((v7 & 1) == 0)
      {
        v8 = [(FCActivityManager *)self _modeSelectionService];
        v9 = [v4 activityIdentifier];
        v17 = 0;
        v10 = [v8 modeConfigurationForModeIdentifier:v9 error:&v17];
        v11 = v17;

        if (v10)
        {
          v12 = [v10 created];
          [v4 _setActivityCreationDate:v12];
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
              v21 = v4;
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

- (void)_updateActivitiesWithModes:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = [(NSMutableDictionary *)v5->_allActivitiesByIdentifier allValues];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v4;
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
      v11 = [v10 visibility];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __48__FCActivityManager__updateActivitiesWithModes___block_invoke;
      v43[3] = &unk_279013CD0;
      v43[4] = v10;
      v12 = [v37 bs_firstObjectPassingTest:v43];
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

        v7 |= (v11 != 1) & v15;
        goto LABEL_18;
      }

      v14 = [[_FCActivity alloc] initWithMode:v10];
      [(FCActivityManager *)v5 _updateCreationDateOfActivity:v14];
      if (objc_opt_respondsToSelector())
      {
        if ([(_FCActivity *)v14 supportsDiscreteLifetimes])
        {
          if (v5->_activeLifetimeDetailsCollection)
          {
            [(FCActivityManager *)v5 _updateActivity:v14 withLifetimeDetailsCollection:?];
          }
        }

        else
        {
          [(FCActivityManager *)v5 _updateLifetimesAlternativeDescriptionForActivity:v14];
        }
      }

      v7 |= v11 != 1;
      if (v14)
      {
        v15 = 1;
LABEL_18:
        if (v11 != 1)
        {
          [v34 addObject:v14];
        }

        v16 = [(_FCActivity *)v14 activityIdentifier];
        [v36 setObject:v14 forKey:v16];

        if ((v15 & 1) == 0)
        {
          v17 = FCLogActivities;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = [(FCActivityManager *)v5 description];
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
  v20 = [(NSArray *)v5->_availableActivities count];
  v19 = v20 != [v34 count];
LABEL_30:
  objc_storeStrong(&v5->_allActivitiesByIdentifier, v36);
  [v34 sortUsingFunction:_FCSortRealizedAndPlaceholderActivities context:0];
  [(FCActivityManager *)v5 _setAvailableActivities:v34];
  v21 = [(FCActivityDescribing *)v5->_activeActivity activityUniqueIdentifier];
  v22 = [(FCActivityManager *)v5 _activityForUniqueIdentifier:v21];
  [(FCActivityManager *)v5 _updateActiveActivity:v22];

  if (v19)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__FCActivityManager__updateActivitiesWithModes___block_invoke_100;
    block[3] = &unk_279013CF8;
    block[4] = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v23 = FCLogActivities;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = [(FCActivityManager *)v5 description];
      [(FCActivityManager *)v24 _updateActivitiesWithModes:buf, v23];
    }
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = [(NSMapTable *)v5->_locationsToSuggestedActivitiesOrNull copy];
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
        v30 = [(NSMapTable *)v5->_locationsToSuggestedActivitiesOrNull objectForKey:v29];
        if (objc_opt_respondsToSelector())
        {
          v31 = [v30 activityUniqueIdentifier];
          v32 = [(FCActivityManager *)v5 _activityForUniqueIdentifier:v31];

          -[FCActivityManager _updateSuggestedActivity:forLocation:](v5, "_updateSuggestedActivity:forLocation:", v32, [v29 integerValue]);
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v26);
  }

  objc_sync_exit(v5);
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
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_availableActivities)
  {
    v3 = [(FCActivityManager *)v2 _modeSelectionService];
    v10[0] = 0;
    v4 = [v3 allModesWithError:v10];
    v5 = v10[0];
    if (v5)
    {
      v6 = FCLogActivities;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(FCActivityManager *)v2 description];
        objc_claimAutoreleasedReturnValue();
        [FCActivityManager _availableActivities];
      }
    }

    else
    {
      v6 = [v4 allObjects];
      [(FCActivityManager *)v2 _updateActivitiesWithModes:v6];
    }
  }

  objc_sync_exit(v2);

  availableActivities = v2->_availableActivities;
  v8 = *MEMORY[0x277D85DE8];

  return availableActivities;
}

- (void)_setAvailableActivities:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_availableActivities != v6)
  {
    objc_storeStrong(&v5->_availableActivities, a3);
  }

  objc_sync_exit(v5);
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

- (BOOL)_doesActivity:(id)a3 identifySameModeAsActivity:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 == v6)
  {
    v9 = 1;
  }

  else if (v5)
  {
    v7 = [v5 activityIdentifier];
    v8 = [v6 activityIdentifier];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateWithActiveModeAssertionIfNecessary:(id)a3 stateUpdate:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  if (!v9->_activeModeAssertionIsValid)
  {
    v9->_activeModeAssertionIsValid = 1;
    v10 = FCLogActivities;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(FCActivityManager *)v9 description];
      v16 = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_24B876000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating active mode assertion: %{public}@", &v16, 0x16u);
    }

    objc_storeStrong(&v9->_activeModeAssertion, a3);
    objc_storeStrong(&v9->_activeStateUpdate, a4);
    if (v7)
    {
      v12 = [v7 details];
      v13 = [v12 modeIdentifier];
      v14 = [(FCActivityManager *)v9 _activityForModeIdentifier:v13];
    }

    else
    {
      v14 = 0;
    }

    [(FCActivityManager *)v9 _updateActiveActivity:v14];
    [(FCActivityManager *)v9 _updateLifetimeForActiveActivity];
  }

  objc_sync_exit(v9);

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
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_activeModeAssertion)
  {
    v3 = [(FCActivityManager *)v2 _lifetimeDetailsProvider];
    v4 = [(DNDModeAssertion *)v2->_activeModeAssertion details];
    v14 = 0;
    v5 = [v3 lifetimeDetailsForAssertionDetails:v4 error:&v14];
    v6 = v14;

    if (v5)
    {
      v7 = [v5 identifier];
      v8 = [(FCActivityManager *)v2 _lifetimeForLifetimeDetailsIdentifier:v7 ofActivity:v2->_activeActivity];
    }

    else
    {
      if (!v6)
      {
        v8 = 0;
        goto LABEL_10;
      }

      v7 = FCLogActivities;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v12 = [(FCActivityManager *)v2 description];
        activeModeAssertion = v2->_activeModeAssertion;
        *buf = 138543874;
        v16 = v12;
        v17 = 2114;
        v18 = activeModeAssertion;
        v19 = 2114;
        v20 = v6;
        _os_log_error_impl(&dword_24B876000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Encountered error requesting lifetime details for active mode assertion: activeModeAssertion: %{public}@; error: %{public}@", buf, 0x20u);
      }

      v8 = 0;
    }

LABEL_10:
    goto LABEL_11;
  }

  v5 = 0;
  v8 = 0;
LABEL_11:
  [(FCActivityManager *)v2 _setLifetimeForActiveActivity:v8];
  activeActivity = v2->_activeActivity;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(FCActivityDescribing *)v2->_activeActivity supportsDiscreteLifetimes])
  {
    v10 = v2->_activeActivity;
    if (v2->_activeLifetimeDetailsCollection)
    {
      [(FCActivityManager *)v2 _updateActivity:v10 withLifetimeDetailsCollection:?];
    }

    else
    {
      [(FCActivityManager *)v2 _updateActivity:v10 withLifetimeDetails:v5];
    }
  }

  objc_sync_exit(v2);

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

- (id)_activityForATXActivityOrSuggestion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
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

  v9 = [v8 modeUUID];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
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

    v11 = [v15 uuidString];
  }

  if ([v11 length])
  {
    v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
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

- (id)_activityForModeIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(FCActivityManager *)v5 _availableActivities];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__FCActivityManager__activityForModeIdentifier___block_invoke;
    v9[3] = &unk_279013CD0;
    v10 = v4;
    v7 = [v6 bs_firstObjectPassingTest:v9];

    objc_sync_exit(v5);
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

- (id)_activityForUniqueIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(FCActivityManager *)v5 _availableActivities];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__FCActivityManager__activityForUniqueIdentifier___block_invoke;
    v9[3] = &unk_279013CD0;
    v10 = v4;
    v7 = [v6 bs_firstObjectPassingTest:v9];

    objc_sync_exit(v5);
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

- (id)_lifetimeForLifetimeDetailsIdentifier:(id)a3 ofActivity:(id)a4
{
  v5 = a3;
  v6 = 0;
  if (v5 && a4)
  {
    v7 = [a4 activityLifetimeDescriptions];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__FCActivityManager__lifetimeForLifetimeDetailsIdentifier_ofActivity___block_invoke;
    v9[3] = &unk_279013D20;
    v10 = v5;
    v6 = [v7 bs_firstObjectPassingTest:v9];
  }

  return v6;
}

uint64_t __70__FCActivityManager__lifetimeForLifetimeDetailsIdentifier_ofActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lifetimeIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_updateActiveActivity:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if (v6->_activeActivity != v5)
  {
    v7 = FCLogActivities;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(FCActivityManager *)v6 description];
      *buf = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_24B876000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating active activity: %{public}@", buf, 0x16u);
    }

    v9 = v6->_activeActivity;
    objc_storeStrong(&v6->_activeActivity, a3);
    if (![(FCActivityManager *)v6 _doesActivity:v6->_activeActivity identifySameModeAsActivity:v9])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__FCActivityManager__updateActiveActivity___block_invoke;
      block[3] = &unk_279013CF8;
      block[4] = v6;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  objc_sync_exit(v6);

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

- (void)_setLifetimeForActiveActivity:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  lifetimeOfActiveActivity = v6->_lifetimeOfActiveActivity;
  if ((BSEqualObjects() & 1) == 0)
  {
    v8 = FCLogActivities;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(FCActivityManager *)v6 description];
      *buf = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_24B876000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating lifetime of active activity: %{public}@", buf, 0x16u);
    }

    objc_storeStrong(&v6->_lifetimeOfActiveActivity, a3);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__FCActivityManager__setLifetimeForActiveActivity___block_invoke;
    block[3] = &unk_279013CF8;
    block[4] = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  objc_sync_exit(v6);

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

- (void)_setActiveActivity:(id)a3 withLifetime:(id)a4 reason:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FCActivityManager *)self _activeActivity];
  v12 = v11;
  if (v11 == v8)
  {
    v13 = [(FCActivityManager *)self lifetimeOfActivity:v8];

    if (v13 == v9)
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
  v14 = v9;
  v36 = v14;
  v15 = MEMORY[0x24C24D280](v35);
  if (v8)
  {
    v16 = self;
    objc_sync_enter(v16);
    v17 = [(FCActivityManager *)v16 _availableActivities];
    v18 = [v17 containsObject:v8];

    v19 = FCLogActivities;
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(FCActivityManager *)v16 description];
        *buf = 138544130;
        v38 = v21;
        v39 = 2114;
        v40 = v8;
        v41 = 2114;
        v42 = v14;
        v43 = 2114;
        v44 = v10;
        _os_log_impl(&dword_24B876000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Activating activity: activity: %{public}@; lifetime: %{public}@; reason: %{public}@", buf, 0x2Au);
      }

      v34 = 0;
      v22 = (v15)[2](v15, v8, v14, &v34);
      v20 = v34;
      if ((v22 & 1) == 0)
      {
        v23 = FCLogActivities;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v32 = [(FCActivityManager *)v16 description];
          *buf = 138544130;
          v38 = v32;
          v39 = 2114;
          v40 = v8;
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
      v30 = [(FCActivityManager *)v16 description];
      availableActivities = v16->_availableActivities;
      *buf = 138543874;
      v38 = v30;
      v39 = 2114;
      v40 = v8;
      v41 = 2114;
      v42 = availableActivities;
      _os_log_error_impl(&dword_24B876000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Attempt to activate activity not in collection: activity: %{public}@; availableActivities: %{public}@", buf, 0x20u);
    }

    objc_sync_exit(v16);
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
      v40 = v10;
      _os_log_impl(&dword_24B876000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deactivating all activities: reason: %{public}@", buf, 0x16u);
    }

    v33 = 0;
    v27 = (v15)[2](v15, 0, v14, &v33);
    v16 = v33;
    if ((v27 & 1) == 0)
    {
      v28 = FCLogActivities;
      if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR))
      {
        [FCActivityManager _setActiveActivity:v28 withLifetime:self reason:v16];
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

- (void)_deactivateActivity:(id)a3 reason:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(FCActivityManager *)self _activeActivity];
  if (v8 != v6)
  {

    goto LABEL_3;
  }

  activeModeAssertion = self->_activeModeAssertion;

  if (!activeModeAssertion)
  {
LABEL_3:
    v9 = [(FCActivityManager *)self _activeActivity];

    v10 = FCLogActivities;
    v11 = os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR);
    if (v9 == v6)
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

  v13 = [(FCActivityManager *)self _modeSelectionService];
  v14 = FCLogActivities;
  if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [(FCActivityManager *)self description];
    *buf = 138543618;
    v23 = v16;
    v24 = 2114;
    v25 = v7;
    _os_log_impl(&dword_24B876000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deactivating active activity: reason: %{public}@", buf, 0x16u);
  }

  v17 = [(DNDModeAssertion *)self->_activeModeAssertion UUID];
  v21 = 0;
  v18 = [v13 invalidateModeAssertionWithUUID:v17 error:&v21];
  v19 = v21;

  if ((v18 & 1) == 0 && os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR))
  {
    [FCActivityManager _deactivateActivity:reason:];
  }

LABEL_15:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfLifetimeChangeForActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__FCActivityManager__notifyObserversOfLifetimeChangeForActivity___block_invoke;
    v6[3] = &unk_279013D70;
    v6[4] = self;
    v7 = v4;
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

- (void)_updateActivity:(id)a3 withLifetimeDescriptions:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 activityLifetimeDescriptions];
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
        v19 = v6;
        v20 = 2114;
        v21 = v7;
        _os_log_impl(&dword_24B876000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating lifetime descriptions for activity: activity: %{public}@; lifetime descriptions: %{public}@", buf, 0x20u);
      }

      [v6 _setActivityLifetimeDescriptions:v7];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __62__FCActivityManager__updateActivity_withLifetimeDescriptions___block_invoke;
      v14[3] = &unk_279013D98;
      v14[4] = self;
      v15 = v6;
      dispatch_async(MEMORY[0x277D85CD0], v14);
    }
  }

  else if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR))
  {
    [FCActivityManager _updateActivity:withLifetimeDescriptions:];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateActivity:(id)a3 withLifetimeDetails:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 activityLifetimeDescriptions];
      v10 = [v9 mutableCopy];
      v11 = v10;
      v20 = self;
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
      if ([v9 count])
      {
        v15 = 0;
        while (1)
        {
          v16 = [v9 objectAtIndexedSubscript:v15];
          v17 = [v16 lifetimeIdentifier];
          v18 = [v8 identifier];
          v19 = [v17 isEqualToString:v18];

          if (v19)
          {
            break;
          }

          if (++v15 >= [v9 count])
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

      [(FCActivityManager *)v20 _updateActivity:v6 withLifetimeDescriptions:v13];
    }

    else if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR))
    {
      [FCActivityManager _updateActivity:withLifetimeDescriptions:];
    }
  }
}

- (void)_updateActivity:(id)a3 withLifetimeDetailsCollection:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
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

    [(FCActivityManager *)self _updateActivity:v6 withLifetimeDescriptions:v8];
  }

  else if (os_log_type_enabled(FCLogActivities, OS_LOG_TYPE_ERROR))
  {
    [FCActivityManager _updateActivity:withLifetimeDescriptions:];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateLifetimesAlternativeDescription:(id)a3 forActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = objc_opt_class();
    v10 = v7;
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

    v13 = [v12 activityLifetimesAlternativeDescription];
    v14 = BSEqualStrings();

    if ((v14 & 1) == 0)
    {
      [v10 _setActivityLifetimesAlternativeDescription:v6];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __72__FCActivityManager__updateLifetimesAlternativeDescription_forActivity___block_invoke;
      v15[3] = &unk_279013D98;
      v15[4] = v8;
      v16 = v10;
      dispatch_async(MEMORY[0x277D85CD0], v15);
    }

    objc_sync_exit(v8);
  }
}

- (void)_updateLifetimesAlternativeDescriptionForActivity:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 isSleepActivity])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"SLEEP_ACTIVATE_ON_SCHEDULE" value:&stru_285EB06A0 table:@"Focus"];
    [(FCActivityManager *)self _updateLifetimesAlternativeDescription:v6 forActivity:v4];
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 isDrivingActivity])
  {
    v7 = [(FCActivityManager *)self _carDNDStatus];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__FCActivityManager__updateLifetimesAlternativeDescriptionForActivity___block_invoke;
    v8[3] = &unk_279013DC0;
    v8[4] = self;
    v9 = v4;
    [v7 fetchAutomaticDNDTriggerPreferenceWithReply:v8];
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
  v2 = self;
  objc_sync_enter(v2);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(FCActivityManager *)v2 _availableActivities];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [(FCActivityManager *)v2 _updateLifetimesAlternativeDescriptionForActivity:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isSyncedAssertion:(id)a3
{
  v3 = [a3 source];
  v4 = [v3 deviceIdentifier];
  v5 = v4 != 0;

  return v5;
}

- (id)_activitySuggestionClient
{
  activitySuggestionClient = self->_activitySuggestionClient;
  if (!activitySuggestionClient)
  {
    v4 = [MEMORY[0x277CEB318] sharedInstance];
    v5 = self->_activitySuggestionClient;
    self->_activitySuggestionClient = v4;

    [(ATXActivitySuggestionClient *)self->_activitySuggestionClient registerObserver:self sendingInitialChangeNotification:1];
    activitySuggestionClient = self->_activitySuggestionClient;
  }

  return activitySuggestionClient;
}

- (void)_updateSuggestedActivity:(id)a3 forLocation:(int64_t)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  locationsToSuggestedActivitiesOrNull = v7->_locationsToSuggestedActivitiesOrNull;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v10 = [(NSMapTable *)locationsToSuggestedActivitiesOrNull objectForKey:v9];

  v11 = [MEMORY[0x277CBEB68] null];
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
    if (v6 && !v7->_locationsToSuggestedActivitiesOrNull)
    {
      v14 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      v15 = v7->_locationsToSuggestedActivitiesOrNull;
      v7->_locationsToSuggestedActivitiesOrNull = v14;
    }

    v16 = FCLogActivities;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(FCActivityManager *)v7 description];
      v18 = @"[unknown]";
      if (a4 == 1)
      {
        v18 = @"prominent";
      }

      if (!a4)
      {
        v18 = @"unobtrusive";
      }

      v19 = v18;
      *buf = 138543874;
      v27 = v17;
      v28 = 2114;
      v29 = v6;
      v30 = 2114;
      v31 = v19;
      _os_log_impl(&dword_24B876000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating suggested activity: %{public}@ (%{public}@)", buf, 0x20u);
    }

    if (v6)
    {
      v20 = v6;
    }

    else
    {
      v20 = [MEMORY[0x277CBEB68] null];
    }

    v21 = v20;
    v22 = v7->_locationsToSuggestedActivitiesOrNull;
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [(NSMapTable *)v22 setObject:v21 forKey:v23];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __58__FCActivityManager__updateSuggestedActivity_forLocation___block_invoke;
    v25[3] = &unk_279013E10;
    v25[4] = v7;
    v25[5] = a4;
    dispatch_async(MEMORY[0x277D85CD0], v25);
  }

  objc_sync_exit(v7);
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

- (void)_updateSuggestedActivity:(id)a3 forLocations:(unint64_t)a4
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

    if ((v10 & a4) != 0)
    {
      [(FCActivityManager *)self _updateSuggestedActivity:a3 forLocation:v7];
    }

    v8 = 0;
    v7 = 1;
  }

  while ((v9 & 1) != 0);
}

- (void)_updateActivitySuggestion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = [(FCActivityManager *)self _activityForATXActivityOrSuggestion:v4];
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
    v7 = 3;
    goto LABEL_9;
  }

  v7 = [v4 location];
LABEL_9:
  [(FCActivityManager *)self _updateSuggestedActivity:v6 forLocations:v7];
}

- (id)_localizedAutomaticDrivingTriggerDescriptionForPreference:(unint64_t)a3
{
  if (a3 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279013E50[a3];
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

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(FCActivityManager *)v6 _availableActivities];
  v8 = [v7 bs_firstObjectPassingTest:&__block_literal_global_150];
  [(FCActivityManager *)v6 _updateLifetimesAlternativeDescriptionForActivity:v8];

  objc_sync_exit(v6);
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

- (id)activityWithIdentifier:(id)a3
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = self;
    objc_sync_enter(v5);
    allActivitiesByIdentifier = v5->_allActivitiesByIdentifier;
    if (!allActivitiesByIdentifier)
    {
      v7 = [(FCActivityManager *)v5 _modeSelectionService];
      v14[0] = 0;
      v8 = [v7 allModesWithError:v14];
      v9 = v14[0];
      if (v9)
      {
        v10 = FCLogActivities;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(FCActivityManager *)v5 description];
          objc_claimAutoreleasedReturnValue();
          [FCActivityManager _availableActivities];
        }
      }

      else
      {
        v10 = [v8 allObjects];
        [(FCActivityManager *)v5 _updateActivitiesWithModes:v10];
      }

      allActivitiesByIdentifier = v5->_allActivitiesByIdentifier;
    }

    v11 = [(NSMutableDictionary *)allActivitiesByIdentifier objectForKey:v4];
    objc_sync_exit(v5);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)newActivityManagerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithIdentifier:v4];

  return v5;
}

- (void)setActiveActivity:(id)a3 reason:(id)a4
{
  v6 = a4;
  v7 = [a3 activityUniqueIdentifier];
  v8 = [(FCActivityManager *)self _activityForUniqueIdentifier:v7];

  [(FCActivityManager *)self _setActiveActivity:v8 withLifetime:0 reason:v6];
}

- (void)setActiveActivity:(id)a3 withLifetime:(id)a4 reason:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 activityUniqueIdentifier];
  v13 = [(FCActivityManager *)self _activityForUniqueIdentifier:v10];

  v11 = [v9 lifetimeIdentifier];

  v12 = [(FCActivityManager *)self _lifetimeForLifetimeDetailsIdentifier:v11 ofActivity:v13];

  [(FCActivityManager *)self _setActiveActivity:v13 withLifetime:v12 reason:v8];
}

- (void)promotePlaceholderActivity:(id)a3
{
  modeSelectionService = self->_modeSelectionService;
  v4 = [a3 activityIdentifier];
  v5 = 0;
  [(DNDModeSelectionService *)modeSelectionService promotePlaceholderWithModeIdentifier:v4 error:&v5];
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