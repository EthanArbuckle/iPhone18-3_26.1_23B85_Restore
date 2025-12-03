@interface CUIKCalendarModel
+ (id)eventStoreAppropriateForDataPath:(id)path;
+ (id)sortedEnabledDelegateSourcesFromStore:(id)store;
+ (unint64_t)errorForSource:(id)source;
+ (unint64_t)errorForSubscribedCalendarChildrenOfSource:(id)source;
+ (void)temporarilyIgnoreInsecureConnectionErrorsForCalendars:(id)calendars;
+ (void)temporarilyIgnoreInvalidCredentialsErrorForSource:(id)source;
- (BOOL)_checkIfTodayChanged;
- (BOOL)_eventBelongsToCurrentIdentity:(id)identity;
- (BOOL)_selectOccurrence:(id)occurrence notify:(BOOL)notify;
- (BOOL)_setSelectedCalendars:(id)calendars;
- (BOOL)_shouldShowNotification:(id)notification;
- (BOOL)cachedOccurrencesAreLoaded;
- (BOOL)countSourcesWithErrors;
- (BOOL)invitationBearingStoresExistForEvents;
- (BOOL)isCalendarVisibleWithID:(id)d;
- (BOOL)removeEvent:(id)event withSpan:(int64_t)span error:(id *)error;
- (BOOL)searchingOccurrences;
- (BOOL)selectedOccurrenceIsSearchMatch;
- (BOOL)showDayAsList;
- (BOOL)showMonthAsDivided;
- (CUIKCalendarModel)initWithDataPath:(id)path pasteboardManager:(id)manager;
- (CUIKCalendarModel)initWithEventStore:(id)store pasteboardManager:(id)manager;
- (EKCalendarDate)selectedDate;
- (EKCalendarDate)selectedDay;
- (EKEvent)selectedOccurrence;
- (NSArray)pointerTargetedOccurrences;
- (NSSet)selectedCalendars;
- (NSSet)selectedCalendarsIgnoringFocus;
- (NSSet)unselectedCalendarsForFocusMode;
- (NSSet)unselectedCalendarsIgnoringFocus;
- (NSString)searchString;
- (double)_tomorrow;
- (id)_calendarsEnabledInFocus:(id)focus;
- (id)_calendarsExcludingBlockedShared:(id)shared;
- (id)_calendarsExcludingLockedReminder:(id)reminder;
- (id)_calendarsForCurrentIdentityFromCalendars:(id)calendars lock:(BOOL)lock;
- (id)_dataSourceUsingFilter:(BOOL)filter;
- (id)_reminderCalendar;
- (id)_unselectedCalendarsForFocusMode;
- (id)allCalendarsForCurrentIdentity;
- (id)allEventNotificationReferences;
- (id)cachedOccurrenceAtIndexPath:(id)path usingFilter:(BOOL)filter;
- (id)cachedOccurrencesForSection:(int64_t)section;
- (id)cachedSpecialDayDataForSection:(int64_t)section;
- (id)closestOccurrenceToTomorrowForEventObjectID:(id)d;
- (id)dateForCachedOccurrencesInSection:(int64_t)section usingFilter:(BOOL)filter holdingCachedFakeTodayIndexLock:(BOOL)lock;
- (id)defaultCalendarForNewEvents;
- (id)eventNotificationReferencesForIdentity:(id)identity ignoringFilter:(BOOL)filter;
- (id)indexPathsForOccurrence:(id)occurrence usingFilter:(BOOL)filter;
- (id)monitorPredicate:(id)predicate options:(unint64_t)options resultsBlock:(id)block;
- (id)occurrencesForDay:(id)day waitForLoad:(BOOL)load;
- (id)occurrencesForStartDay:(id)day endDay:(id)endDay preSorted:(BOOL)sorted waitForLoad:(BOOL)load;
- (id)persistedSceneState;
- (id)reminderCalendar;
- (id)selectedDateOccurrences:(BOOL)occurrences loadIsComplete:(BOOL *)complete;
- (id)selectedOccurrencesForSelectionSource:(unint64_t)source;
- (int64_t)_cachedFakeTodayIndexLocked;
- (int64_t)_sectionForCachedOccurrencesOnDate:(id)date sectionExistsForDay:(BOOL *)day usingFilter:(BOOL)filter;
- (int64_t)accountsInInitialSyncCount;
- (int64_t)countAccountsInInitialSync;
- (int64_t)displayableAccountErrorsForSource:(id)source;
- (int64_t)numDaysToShow;
- (int64_t)numberOfCachedOccurrencesInSection:(int64_t)section usingFilter:(BOOL)filter;
- (int64_t)numberOfDaysWithCachedOccurrencesUsingFilter:(BOOL)filter;
- (unint64_t)_eventNotificationCountForCurrentIdentityIgnoringFilter:(BOOL)filter;
- (unint64_t)allEventNotificationsCount;
- (unint64_t)focusFilterMode;
- (void)_checkSources;
- (void)_createOccurrenceCacheDataSources;
- (void)_deselectOccurrence:(id)occurrence notify:(BOOL)notify;
- (void)_deselectOccurrences:(id)occurrences notify:(BOOL)notify;
- (void)_eventStoreChanged:(id)changed;
- (void)_executeBlockWithOccurrenceCacheDataSources:(id)sources;
- (void)_finishedFirstLoad;
- (void)_focusModeConfigurationChanged:(id)changed;
- (void)_ignoredErrorsChanged;
- (void)_invalidateCachedOccurrences;
- (void)_loadVisibleCalendarsIfNeeded;
- (void)_localeChanged:(id)changed;
- (void)_notificationBlacklisted;
- (void)_notificationsExpired:(id)expired;
- (void)_notificationsLoaded:(id)loaded;
- (void)_occurrenceCacheChangedNotificationHandler;
- (void)_performCommonInitializationWithPasteboardManager:(id)manager;
- (void)_processReloadForCacheOnly:(BOOL)only includingCalendars:(BOOL)calendars checkCalendarsValid:(BOOL)valid checkSources:(BOOL)sources;
- (void)_recreateOccurrenceCacheDataSources;
- (void)_reloadEventsOnDateChange;
- (void)_sceneEnteredBackground:(id)background;
- (void)_sceneEnteredForeground:(id)foreground;
- (void)_searchResultsAvailable:(id)available;
- (void)_setFocusFilterMode:(unint64_t)mode force:(BOOL)force;
- (void)_setupUndoManager;
- (void)_significantTimeChange;
- (void)_timeZoneChanged:(id)changed;
- (void)_tzSupportTodayRolledOver;
- (void)addRespondedNotificationObjectID:(id)d;
- (void)blockedUserChanged;
- (void)calendarEventLoader:(id)loader occurrencesDidUpdateBetweenStart:(double)start end:(double)end generation:(int)generation wasEmptyLoad:(BOOL)load;
- (void)checkLocationAuthorizationAndAllowEventLocationPrediction;
- (void)dealloc;
- (void)deselectOccurrence:(id)occurrence;
- (void)ensureCalendarVisibleWithId:(id)id;
- (void)fetchCachedDaysInBackgroundStartingFromSection:(int64_t)section usingFilter:(BOOL)filter;
- (void)fetchDaysStartingFromSection:(int64_t)section sectionsToLoadInBothDirections:(int64_t)directions;
- (void)handleEventLoaderOccurrencesDidUpdateBetweenStart:(double)start end:(double)end generation:(int)generation wasEmptyLoad:(BOOL)load;
- (void)locationPrecisionDeterminedNotification:(id)notification;
- (void)postSelectedCalendarsChanged;
- (void)selectOccurrences:(id)occurrences;
- (void)setCollapsedSectionIdentifiers:(id)identifiers;
- (void)setDisableFocusFiltering:(BOOL)filtering;
- (void)setFocusFilterMode:(unint64_t)mode force:(BOOL)force;
- (void)setMaxCachedDays:(unsigned int)days;
- (void)setNumDaysToShow:(int64_t)show;
- (void)setSearchString:(id)string;
- (void)setSelectedCalendars:(id)calendars;
- (void)setSelectedCalendarsAndRequestPreferenceSave:(id)save reason:(id)reason;
- (void)setSelectedDate:(id)date;
- (void)setSelectedDateChangesDelayedUntilAfterTransition:(BOOL)transition;
- (void)setSelectedOccurrence:(id)occurrence forceChange:(BOOL)change;
- (void)setSelectedOccurrences:(id)occurrences source:(unint64_t)source forceChange:(BOOL)change;
- (void)setShowDayAsList:(BOOL)list;
- (void)setShowMonthAsDivided:(BOOL)divided;
- (void)setSourceForSelectedIdentity:(id)identity;
- (void)setUnselectedCalendars:(id)calendars;
- (void)simulateFirstLoadFinished;
- (void)startNotificationMonitor;
- (void)updateAfterAppResume;
- (void)updateSelectedDateTimeZone;
- (void)updateSourceForSelectedIdentity:(id)identity selectedCalendars:(id)calendars;
@end

@implementation CUIKCalendarModel

- (void)_createOccurrenceCacheDataSources
{
  selectedCalendars = [(CUIKCalendarModel *)self selectedCalendars];
  v10 = [(CUIKCalendarModel *)self calendarsForCurrentIdentityFromCalendars:selectedCalendars];

  os_unfair_lock_lock(&self->_dataSourceLock);
  v4 = [[CUIKOccurrenceCacheDataSource alloc] initWithEventStore:self->_eventStore calendars:v10];
  occurrenceCacheDataSource = self->_occurrenceCacheDataSource;
  self->_occurrenceCacheDataSource = v4;

  v6 = [[CUIKOccurrenceCacheSearchDataSource alloc] initWithEventStore:self->_eventStore calendars:v10];
  occurrenceCacheFilteredDataSource = self->_occurrenceCacheFilteredDataSource;
  self->_occurrenceCacheFilteredDataSource = v6;

  v8 = self->_occurrenceCacheFilteredDataSource;
  os_unfair_lock_unlock(&self->_dataSourceLock);
  if ([(CUIKCalendarModel *)self searchingOccurrences])
  {
    searchString = [(CUIKCalendarModel *)self searchString];
    [(CUIKOccurrenceCacheDataSourceProtocol *)v8 searchWithTerm:searchString];
  }
}

- (NSSet)selectedCalendars
{
  [(NSLock *)self->_filterLock lock];
  v3 = self->_selectedCalendars;
  v4 = [(CUIKCalendarModel *)self _calendarsEnabledInFocus:v3];
  v5 = [(CUIKCalendarModel *)self _calendarsExcludingLockedReminder:v4];
  v6 = [(CUIKCalendarModel *)self _calendarsExcludingBlockedShared:v5];
  [(NSLock *)self->_filterLock unlock];

  return v6;
}

- (BOOL)searchingOccurrences
{
  searchString = [(CUIKCalendarModel *)self searchString];
  v3 = searchString != 0;

  return v3;
}

- (NSString)searchString
{
  [(NSLock *)self->_filterLock lock];
  v3 = [(NSString *)self->_searchString copy];
  [(NSLock *)self->_filterLock unlock];

  return v3;
}

- (void)_setupUndoManager
{
  v3 = [[CUIKEditingManager alloc] initWithEventStore:self->_eventStore];
  v4 = objc_alloc_init(CUIKUndoManager);
  undoManager = self->_undoManager;
  self->_undoManager = v4;

  [(CUIKUndoManager *)self->_undoManager setDisableUndoForOrganizerScheduling:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__CUIKCalendarModel__setupUndoManager__block_invoke;
  v9[3] = &unk_1E8399D78;
  v10 = v3;
  v6 = self->_undoManager;
  v7 = v3;
  [(CUIKUndoManager *)v6 setEditingManagerProvider:v9];
  v8 = [[CUIKUndoableEditor alloc] initWithEditingManager:v7];
  [(CUIKUndoableEditor *)v8 setUndoDelegate:self->_undoManager];
  [(CUIKUndoManager *)self->_undoManager setUndoableEditor:v8];
}

- (void)_loadVisibleCalendarsIfNeeded
{
  if (!self->_visibleCalendars)
  {
    v6 = [(EKEventStore *)self->_eventStore calendarsForEntityType:0];
    v4 = [v6 copy];
    visibleCalendars = self->_visibleCalendars;
    self->_visibleCalendars = v4;
  }
}

- (EKEvent)selectedOccurrence
{
  if ([(NSMutableArray *)self->_selectedOccurrences count]== 1)
  {
    firstObject = [(NSMutableArray *)self->_selectedOccurrences firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)_recreateOccurrenceCacheDataSources
{
  [(CUIKCalendarModel *)self _invalidateOccurrenceCacheDataSources];

  [(CUIKCalendarModel *)self _createOccurrenceCacheDataSources];
}

- (void)postSelectedCalendarsChanged
{
  selectedCalendars = [(CUIKCalendarModel *)self selectedCalendars];
  selectedOccurrence = [(CUIKCalendarModel *)self selectedOccurrence];
  calendar = [selectedOccurrence calendar];
  v6 = [selectedCalendars containsObject:calendar];

  if ((v6 & 1) == 0)
  {
    [(CUIKCalendarModel *)self setSelectedOccurrence:0];
  }

  [(CUIKCalendarModel *)self _recreateOccurrenceCacheDataSources];
  [(CUIKCalendarModel *)self _processReloadForCacheOnly:0 includingCalendars:1 checkCalendarsValid:0 checkSources:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CalendarModelFilterChangedNotification" object:self];
}

void __58__CUIKCalendarModel__invalidateOccurrenceCacheDataSources__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 invalidate];
  [v4 invalidate];
}

- (void)_invalidateCachedOccurrences
{
  [(CUIKCalendarModel *)self _executeBlockWithOccurrenceCacheDataSources:&__block_literal_global_276];
  os_unfair_lock_lock(&self->_cachedFakeTodayIndexLock);
  self->_cachedFakeTodayIndex = -2;

  os_unfair_lock_unlock(&self->_cachedFakeTodayIndexLock);
}

- (EKCalendarDate)selectedDate
{
  os_unfair_lock_lock(&self->_selectedDateLock);
  v3 = [(EKCalendarDate *)self->_selectedDate copy];
  os_unfair_lock_unlock(&self->_selectedDateLock);

  return v3;
}

- (id)allEventNotificationReferences
{
  _notificationMonitor = [(CUIKCalendarModel *)self _notificationMonitor];
  notificationReferences = [_notificationMonitor notificationReferences];

  return notificationReferences;
}

- (unint64_t)focusFilterMode
{
  if (!_os_feature_enabled_impl() || [(CUIKCalendarModel *)self disableFocusFiltering])
  {
    return 0;
  }

  [(NSLock *)self->_filterLock lock];
  focusFilterMode = self->_focusFilterMode;
  [(NSLock *)self->_filterLock unlock];
  return focusFilterMode;
}

- (BOOL)showMonthAsDivided
{
  if (CUIKShouldSaveStateInPreferences())
  {
    persistedSceneState = +[CUIKPreferences sharedPreferences];
    showMonthDividedListView = [persistedSceneState showMonthDividedListView];
  }

  else
  {
    persistedSceneState = [(CUIKCalendarModel *)self persistedSceneState];
    showMonthDividedListView = [persistedSceneState showMonthAsDivided];
  }

  v5 = showMonthDividedListView;

  return v5;
}

- (BOOL)showDayAsList
{
  if (CUIKShouldSaveStateInPreferences())
  {
    persistedSceneState = +[CUIKPreferences sharedPreferences];
    showListView = [persistedSceneState showListView];
  }

  else
  {
    persistedSceneState = [(CUIKCalendarModel *)self persistedSceneState];
    showListView = [persistedSceneState showDayAsList];
  }

  v5 = showListView;

  return v5;
}

- (int64_t)numDaysToShow
{
  if (CUIKShouldSaveStateInPreferences())
  {
    +[CUIKPreferences sharedPreferences];
  }

  else
  {
    [(CUIKCalendarModel *)self persistedSceneState];
  }
  v3 = ;
  numDaysToShow = [v3 numDaysToShow];

  return numDaysToShow;
}

- (id)persistedSceneState
{
  if (CUIKShouldSaveStateInPreferences())
  {
    v3 = 0;
  }

  else
  {
    persistedSceneState = self->_persistedSceneState;
    if (!persistedSceneState)
    {
      v5 = objc_alloc_init(CUIKCalendarModelSceneState);
      v6 = self->_persistedSceneState;
      self->_persistedSceneState = v5;

      persistedSceneState = self->_persistedSceneState;
    }

    v3 = persistedSceneState;
  }

  return v3;
}

- (BOOL)cachedOccurrencesAreLoaded
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__CUIKCalendarModel_cachedOccurrencesAreLoaded__block_invoke;
  v4[3] = &unk_1E8399E10;
  v4[4] = &v5;
  [(CUIKCalendarModel *)self _executeBlockWithOccurrenceCacheDataSources:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __47__CUIKCalendarModel_cachedOccurrencesAreLoaded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if ([a2 cachedOccurrencesAreLoaded])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v6 cachedOccurrencesAreLoaded];
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
}

- (id)defaultCalendarForNewEvents
{
  selectedCalendars = [(CUIKCalendarModel *)self selectedCalendars];
  v4 = [(CUIKCalendarModel *)self calendarsForCurrentIdentityFromCalendars:selectedCalendars];

  if ([v4 count] == 1)
  {
    anyObject = [v4 anyObject];
    if ([anyObject allowsContentModifications])
    {
      if (anyObject)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  eventStore = self->_eventStore;
  sourceForSelectedIdentity = [(CUIKCalendarModel *)self sourceForSelectedIdentity];
  anyObject = [(EKEventStore *)eventStore defaultCalendarForNewEventsInDelegateSource:sourceForSelectedIdentity];

LABEL_7:

  return anyObject;
}

- (int64_t)accountsInInitialSyncCount
{
  result = self->_initialAccountSyncCount;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [(CUIKCalendarModel *)self countAccountsInInitialSync];
    self->_initialAccountSyncCount = result;
  }

  return result;
}

- (int64_t)countAccountsInInitialSync
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sources = [(EKEventStore *)self->_eventStore sources];
  v3 = [sources countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(sources);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isSyncing])
        {
          lastSyncEndDate = [v8 lastSyncEndDate];

          if (!lastSyncEndDate)
          {
            ++v5;
          }
        }
      }

      v4 = [sources countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)countSourcesWithErrors
{
  v39 = *MEMORY[0x1E69E9840];
  v28 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  selfCopy = self;
  eventSources = [(EKEventStore *)self->_eventStore eventSources];
  v4 = [eventSources countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    v7 = 0x1E8397000uLL;
    v8 = 0x1E6992000uLL;
    v27 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(eventSources);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        if (([*(v8 + 3824) severityForError:{objc_msgSend(*(v7 + 3728), "errorForSource:", v10)}] - 1) <= 1)
        {
          if ([v10 sourceType] == 4)
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            allCalendars = [v10 allCalendars];
            v12 = [allCalendars countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v12)
            {
              v13 = v8;
              v14 = eventSources;
              v15 = v7;
              v16 = *v30;
              while (2)
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v30 != v16)
                  {
                    objc_enumerationMutation(allCalendars);
                  }

                  if (![*(*(&v29 + 1) + 8 * j) isSubscribedHolidayCalendar])
                  {
                    LODWORD(v12) = 1;
                    goto LABEL_19;
                  }
                }

                v12 = [allCalendars countByEnumeratingWithState:&v29 objects:v37 count:16];
                if (v12)
                {
                  continue;
                }

                break;
              }

LABEL_19:
              v7 = v15;
              eventSources = v14;
              v8 = v13;
              v6 = v27;
            }
          }

          else
          {
            LODWORD(v12) = 1;
          }

          externalID = [v10 externalID];
          if (externalID)
          {
          }

          else if ([v10 sourceType] == 5)
          {
            LODWORD(v12) = 0;
          }

          if ([v10 isEnabled] && v12)
          {
            sourceIdentifier = &stru_1F4AA8958;
            if ([v10 isDelegate])
            {
              sourceIdentifier = [v10 sourceIdentifier];
            }

            v20 = [(NSMutableDictionary *)v28 objectForKeyedSubscript:sourceIdentifier];
            integerValue = [v20 integerValue];

            v22 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + 1];
            [(NSMutableDictionary *)v28 setObject:v22 forKeyedSubscript:sourceIdentifier];
          }
        }
      }

      v5 = [eventSources countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v5);
  }

  v23 = [(NSMutableDictionary *)selfCopy->_displayableAccountErrorCounts isEqualToDictionary:v28];
  displayableAccountErrorCounts = selfCopy->_displayableAccountErrorCounts;
  selfCopy->_displayableAccountErrorCounts = v28;

  return v23 ^ 1;
}

- (int64_t)_cachedFakeTodayIndexLocked
{
  os_unfair_lock_lock(&self->_cachedFakeTodayIndexLock);
  cachedFakeTodayIndex = self->_cachedFakeTodayIndex;
  os_unfair_lock_unlock(&self->_cachedFakeTodayIndexLock);
  return cachedFakeTodayIndex;
}

- (void)_finishedFirstLoad
{
  if ((_finishedFirstLoad___finishedFirstLoad & 1) == 0)
  {
    _finishedFirstLoad___finishedFirstLoad = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CalendarModelDisplayedOccurrencesChangedForTheFirstTimeNotification" object:self];
  }
}

- (void)startNotificationMonitor
{
  if (!self->_notificationMonitorSetUp)
  {
    block[7] = v2;
    block[8] = v3;
    self->_notificationMonitorSetUp = 1;
    v5 = dispatch_get_global_queue(-2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__CUIKCalendarModel_startNotificationMonitor__block_invoke;
    block[3] = &unk_1E8399BD8;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

- (void)checkLocationAuthorizationAndAllowEventLocationPrediction
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E6992EB8];
  [defaultCenter addObserver:self selector:sel_locationPrecisionDeterminedNotification_ name:*MEMORY[0x1E6992EB8] object:0];

  v5 = *MEMORY[0x1E69930E8];
  if ([MEMORY[0x1E6992FE0] locationPrecisionForBundleIdentifier:*MEMORY[0x1E69930E8]])
  {
    v6 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CAB19000, v6, OS_LOG_TYPE_INFO, "Location precision already known; allowing event location prediction", buf, 2u);
    }

    [(CUIKCalendarModel *)self setAllowEventLocationPrediction:1];
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self name:v4 object:0];
  }

  else
  {
    [MEMORY[0x1E6992FE0] authorizationStatusForBundleIdentifier:v5 completion:&__block_literal_global_5];
    defaultCenter2 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(defaultCenter2, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1CAB19000, defaultCenter2, OS_LOG_TYPE_INFO, "Waiting for precision to allow event location prediction", v8, 2u);
    }
  }
}

- (CUIKCalendarModel)initWithEventStore:(id)store pasteboardManager:(id)manager
{
  storeCopy = store;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = CUIKCalendarModel;
  v9 = [(CUIKCalendarModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventStore, store);
    [(CUIKCalendarModel *)v10 _performCommonInitializationWithPasteboardManager:managerCopy];
  }

  return v10;
}

+ (id)eventStoreAppropriateForDataPath:(id)path
{
  v3 = MEMORY[0x1E6966A18];
  pathCopy = path;
  v5 = [[v3 alloc] initWithEKOptions:8256 path:pathCopy changeTrackingClientId:0 enablePropertyModificationLogging:1 allowDelegateSources:1];

  calendarTimeZone = [MEMORY[0x1E695DFE8] calendarTimeZone];
  [v5 setTimeZone:calendarTimeZone];

  return v5;
}

- (CUIKCalendarModel)initWithDataPath:(id)path pasteboardManager:(id)manager
{
  pathCopy = path;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = CUIKCalendarModel;
  v8 = [(CUIKCalendarModel *)&v13 init];
  if (v8)
  {
    v9 = [objc_opt_class() eventStoreAppropriateForDataPath:pathCopy];
    eventStore = v8->_eventStore;
    v8->_eventStore = v9;

    if ([MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp])
    {
      calendarTimeZone = [MEMORY[0x1E695DFE8] calendarTimeZone];
      [MEMORY[0x1E695DFE8] setDefaultTimeZone:calendarTimeZone];
    }

    [(CUIKCalendarModel *)v8 _performCommonInitializationWithPasteboardManager:managerCopy];
  }

  return v8;
}

- (void)_performCommonInitializationWithPasteboardManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_alloc(MEMORY[0x1E695DEE8]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  calendar = self->_calendar;
  self->_calendar = v6;

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  [(NSCalendar *)self->_calendar setLocale:currentLocale];

  calendarTimeZone = [MEMORY[0x1E695DFE8] calendarTimeZone];
  [(NSCalendar *)self->_calendar setTimeZone:calendarTimeZone];

  self->_selectedDateLock._os_unfair_lock_opaque = 0;
  v10 = MEMORY[0x1E69930C8];
  v11 = CUIKNowDate();
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  v13 = [v10 calendarDateWithDate:v11 timeZone:timeZone];
  selectedDate = self->_selectedDate;
  self->_selectedDate = v13;

  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_create("com.apple.calendaruikit.cuikpredicatemonitor", v15);
  predicateMonitorCallbackQueue = self->_predicateMonitorCallbackQueue;
  self->_predicateMonitorCallbackQueue = v16;

  v18 = objc_alloc_init(CUIKEventLoader);
  eventLoader = self->_eventLoader;
  self->_eventLoader = v18;

  v20 = self->_eventLoader;
  calendarTimeZone2 = [MEMORY[0x1E695DFE8] calendarTimeZone];
  [(CUIKEventLoader *)v20 setTimeZone:calendarTimeZone2];

  [(CUIKEventLoader *)self->_eventLoader setDelegate:self];
  self->_invitationBearingStoresExist = 0x7FFFFFFFFFFFFFFFLL;
  self->_cachedFakeTodayIndexLock._os_unfair_lock_opaque = 0;
  os_unfair_lock_lock(&self->_cachedFakeTodayIndexLock);
  self->_cachedFakeTodayIndex = -2;
  os_unfair_lock_unlock(&self->_cachedFakeTodayIndexLock);
  v22 = objc_alloc_init(MEMORY[0x1E696AD10]);
  filterLock = self->_filterLock;
  self->_filterLock = v22;

  self->_readWriteCalendarCount = 0x7FFFFFFFFFFFFFFFLL;
  self->_initialAccountSyncCount = 0x7FFFFFFFFFFFFFFFLL;
  self->_autoStartNotificationMonitor = 1;
  v24 = [CUIKCalendarModel sortedEnabledDelegateSourcesFromStore:self->_eventStore];
  delegateSources = self->_delegateSources;
  self->_delegateSources = v24;

  self->_dataSourceLock._os_unfair_lock_opaque = 0;
  [(CUIKCalendarModel *)self _createOccurrenceCacheDataSources];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__eventStoreChanged_ name:*MEMORY[0x1E6966928] object:self->_eventStore];
  [defaultCenter addObserver:self selector:sel__notificationBlacklisted name:@"CalendarModelBlacklistedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__tzSupportTodayRolledOver name:@"CalTodayChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__timeZoneChanged_ name:*MEMORY[0x1E6993138] object:0];
  [defaultCenter addObserver:self selector:sel__localeChanged_ name:*MEMORY[0x1E695D8F0] object:0];
  [defaultCenter addObserver:self selector:sel__searchResultsAvailable_ name:@"CalendarDataSourceSearchResultsAvailable" object:0];
  [defaultCenter addObserver:self selector:sel__ignoredErrorsChanged name:@"CalendarModelIgnoredErrorsChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__focusModeConfigurationChanged_ name:*MEMORY[0x1E6966940] object:0];
  [defaultCenter addObserver:self selector:sel__sceneEnteredBackground_ name:*MEMORY[0x1E69DE348] object:0];
  [defaultCenter addObserver:self selector:sel__sceneEnteredForeground_ name:*MEMORY[0x1E69DE360] object:0];
  [MEMORY[0x1E6992F98] addObserver:self selector:sel__significantTimeChange name:*MEMORY[0x1E6993128]];
  [MEMORY[0x1E6992F98] addObserver:self selector:sel__occurrenceCacheChangedNotificationHandler name:*MEMORY[0x1E6992E48]];
  [MEMORY[0x1E6992F98] addObserver:self selector:sel__systemWake name:@"SBWake"];
  v27 = *MEMORY[0x1E698B090];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __71__CUIKCalendarModel__performCommonInitializationWithPasteboardManager___block_invoke;
  handler[3] = &unk_1E8399D50;
  handler[4] = self;
  v28 = MEMORY[0x1E69E96A0];
  notify_register_dispatch(v27, &self->_apHiddenNotificationToken, MEMORY[0x1E69E96A0], handler);
  v29 = *MEMORY[0x1E698B0A0];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __71__CUIKCalendarModel__performCommonInitializationWithPasteboardManager___block_invoke_2;
  v35[3] = &unk_1E8399D50;
  v35[4] = self;
  notify_register_dispatch(v29, &self->_apLockedNotificationToken, v28, v35);

  if (!managerCopy)
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    managerCopy = [[CUIKPasteboardManager alloc] initWithEventStoreProvider:self pasteboard:generalPasteboard calendarProvider:self];
  }

  pasteboardManager = self->_pasteboardManager;
  self->_pasteboardManager = managerCopy;
  v32 = managerCopy;

  [(CUIKCalendarModel *)self _setupUndoManager];
  v33 = CUIKTodayDate();
  lastKnownToday = self->_lastKnownToday;
  self->_lastKnownToday = v33;

  self->_selectedOccurrenceSelectionSource = 0;
}

void __71__CUIKCalendarModel__performCommonInitializationWithPasteboardManager___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"CalendarModelDisplayedOccurrencesChangedNotification" object:*(a1 + 32) userInfo:0];
}

void __71__CUIKCalendarModel__performCommonInitializationWithPasteboardManager___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 selectedCalendarsIgnoringFocus];
  [v1 setSelectedCalendars:v2];
}

- (void)dealloc
{
  [(_EKNotificationMonitor *)self->_notificationMonitor stop];
  [(CUIKCalendarModel *)self _invalidateOccurrenceCacheDataSources];
  notify_cancel(self->_apHiddenNotificationToken);
  self->_apHiddenNotificationToken = -1;
  notify_cancel(self->_apLockedNotificationToken);
  self->_apLockedNotificationToken = -1;
  v3.receiver = self;
  v3.super_class = CUIKCalendarModel;
  [(CUIKCalendarModel *)&v3 dealloc];
}

- (NSSet)selectedCalendarsIgnoringFocus
{
  [(NSLock *)self->_filterLock lock];
  v3 = self->_selectedCalendars;
  [(NSLock *)self->_filterLock unlock];

  return v3;
}

- (id)allCalendarsForCurrentIdentity
{
  sourceForSelectedIdentity = [(CUIKCalendarModel *)self sourceForSelectedIdentity];
  if (sourceForSelectedIdentity)
  {
    sourceForSelectedIdentity2 = [(CUIKCalendarModel *)self sourceForSelectedIdentity];
    v5 = [sourceForSelectedIdentity2 calendarsForEntityType:0];
  }

  else
  {
    [(NSLock *)self->_filterLock lock];
    [(CUIKCalendarModel *)self _loadVisibleCalendarsIfNeeded];
    sourceForSelectedIdentity2 = [MEMORY[0x1E695DFD8] setWithArray:self->_visibleCalendars];
    v5 = [(CUIKCalendarModel *)self _calendarsForCurrentIdentityFromCalendars:sourceForSelectedIdentity2 lock:0];
    [(NSLock *)self->_filterLock unlock];
  }

  return v5;
}

- (id)_calendarsExcludingBlockedShared:(id)shared
{
  v25 = *MEMORY[0x1E69E9840];
  sharedCopy = shared;
  blockList = [(EKEventStore *)self->_eventStore blockList];
  if ([blockList isEmpty])
  {
    v18 = sharedCopy;
    goto LABEL_23;
  }

  v17 = sharedCopy;
  v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:sharedCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = sharedCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = v7;
  v9 = *v21;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v20 + 1) + 8 * i);
      if ([v11 sharingStatus] == 2)
      {
        sharedOwnerEmail = [v11 sharedOwnerEmail];
        if (sharedOwnerEmail)
        {
          sharedOwnerEmail2 = [v11 sharedOwnerEmail];
          if ([blockList isBlockedWithEmail:sharedOwnerEmail2])
          {

LABEL_19:
            [v18 removeObject:v11];
            continue;
          }
        }

        sharedOwnerPhoneNumber = [v11 sharedOwnerPhoneNumber];
        if (sharedOwnerPhoneNumber)
        {
          sharedOwnerPhoneNumber2 = [v11 sharedOwnerPhoneNumber];
          v15 = [blockList isBlockedWithPhoneNumber:sharedOwnerPhoneNumber2];

          if (!sharedOwnerEmail)
          {
            if (!v15)
            {
              continue;
            }

            goto LABEL_19;
          }

          if (v15)
          {
            goto LABEL_19;
          }
        }

        else
        {

          if (sharedOwnerEmail)
          {
          }
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v8);
LABEL_22:

  sharedCopy = v17;
LABEL_23:

  return v18;
}

- (id)_calendarsExcludingLockedReminder:(id)reminder
{
  v17 = *MEMORY[0x1E69E9840];
  reminderCopy = reminder;
  if ([MEMORY[0x1E6966958] isReminderAppLocked])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:reminderCopy];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = reminderCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 type] == 6)
          {
            [v4 removeObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = reminderCopy;
  }

  return v4;
}

- (id)_reminderCalendar
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_visibleCalendars;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 type] == 6)
        {
          v9 = v8;

          v5 = v9;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_calendarsEnabledInFocus:(id)focus
{
  focusCopy = focus;
  if ([focusCopy count] && self->_focusFilterMode == 1)
  {
    _unselectedCalendarsForFocusMode = [(CUIKCalendarModel *)self _unselectedCalendarsForFocusMode];
    if ([_unselectedCalendarsForFocusMode count])
    {
      v6 = [focusCopy mutableCopy];
      [v6 minusSet:_unselectedCalendarsForFocusMode];
      v7 = [v6 copy];
    }

    else
    {
      v7 = focusCopy;
    }
  }

  else
  {
    v7 = focusCopy;
  }

  return v7;
}

- (NSSet)unselectedCalendarsIgnoringFocus
{
  [(NSLock *)self->_filterLock lock];
  [(CUIKCalendarModel *)self _loadVisibleCalendarsIfNeeded];
  v3 = [MEMORY[0x1E695DFA8] setWithArray:self->_visibleCalendars];
  [v3 minusSet:self->_selectedCalendars];
  [(NSLock *)self->_filterLock unlock];

  return v3;
}

- (void)setUnselectedCalendars:(id)calendars
{
  filterLock = self->_filterLock;
  calendarsCopy = calendars;
  [(NSLock *)filterLock lock];
  [(CUIKCalendarModel *)self _loadVisibleCalendarsIfNeeded];
  v6 = [MEMORY[0x1E695DFA8] setWithArray:self->_visibleCalendars];
  [v6 minusSet:calendarsCopy];

  LODWORD(filterLock) = [(CUIKCalendarModel *)self _setSelectedCalendars:v6];
  [(NSLock *)self->_filterLock unlock];
  if (filterLock)
  {
    [(CUIKCalendarModel *)self postSelectedCalendarsChanged];
  }
}

- (id)_calendarsForCurrentIdentityFromCalendars:(id)calendars lock:(BOOL)lock
{
  lockCopy = lock;
  v28 = *MEMORY[0x1E69E9840];
  calendarsCopy = calendars;
  v7 = objc_opt_new();
  if (lockCopy)
  {
    [(NSLock *)self->_filterLock lock];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = calendarsCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        sourceForSelectedIdentity = self->_sourceForSelectedIdentity;
        source = [v13 source];
        v16 = source;
        if (sourceForSelectedIdentity)
        {
          v17 = [(EKSource *)sourceForSelectedIdentity isEqual:source];

          if ((v17 & 1) == 0)
          {
            goto LABEL_11;
          }

LABEL_10:
          [v7 addObject:v13];
          goto LABEL_11;
        }

        isDelegate = [source isDelegate];

        if ((isDelegate & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_11:
        ++v12;
      }

      while (v10 != v12);
      v19 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v10 = v19;
    }

    while (v19);
  }

  if (lockCopy)
  {
    [(NSLock *)self->_filterLock unlock];
  }

  v20 = [(CUIKCalendarModel *)self _calendarsExcludingLockedReminder:v7, v23];
  v21 = [(CUIKCalendarModel *)self _calendarsExcludingBlockedShared:v20];

  return v21;
}

- (void)setDisableFocusFiltering:(BOOL)filtering
{
  if (self->_disableFocusFiltering != filtering)
  {
    self->_disableFocusFiltering = filtering;
    if (filtering)
    {
      [(CUIKCalendarModel *)self _setFocusFilterMode:0 force:0];
    }
  }
}

- (void)setFocusFilterMode:(unint64_t)mode force:(BOOL)force
{
  forceCopy = force;
  if (_os_feature_enabled_impl() && ![(CUIKCalendarModel *)self disableFocusFiltering])
  {

    [(CUIKCalendarModel *)self _setFocusFilterMode:mode force:forceCopy];
  }
}

- (void)_setFocusFilterMode:(unint64_t)mode force:(BOOL)force
{
  [(NSLock *)self->_filterLock lock];
  if (force || self->_focusFilterMode != mode)
  {
    self->_focusFilterMode = mode;
    v8 = [(CUIKCalendarModel *)self _setSelectedCalendars:self->_selectedCalendars];
    [(NSLock *)self->_filterLock unlock];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CalendarModelFocusModeConfigurationChangedNotification" object:self];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"CalendarModelNotificationCountsChangedNotification" object:self];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 postNotificationName:@"CalendarModelNotificationsChangedNotification" object:self];

    if (v8)
    {

      [(CUIKCalendarModel *)self postSelectedCalendarsChanged];
    }
  }

  else
  {
    filterLock = self->_filterLock;

    [(NSLock *)filterLock unlock];
  }
}

- (void)setSelectedCalendars:(id)calendars
{
  filterLock = self->_filterLock;
  calendarsCopy = calendars;
  [(NSLock *)filterLock lock];
  LODWORD(filterLock) = [(CUIKCalendarModel *)self _setSelectedCalendars:calendarsCopy];

  [(NSLock *)self->_filterLock unlock];
  if (filterLock)
  {

    [(CUIKCalendarModel *)self postSelectedCalendarsChanged];
  }
}

- (BOOL)_setSelectedCalendars:(id)calendars
{
  calendarsCopy = calendars;
  if (![(NSSet *)self->_selectedCalendars isEqualToSet:calendarsCopy])
  {
    v5 = [calendarsCopy copy];
    selectedCalendars = self->_selectedCalendars;
    self->_selectedCalendars = v5;
  }

  v7 = calendarsCopy;
  v8 = v7;
  if (self->_focusFilterMode == 1)
  {
    v8 = [(CUIKCalendarModel *)self _calendarsEnabledInFocus:v7];
  }

  eventLoader = self->_eventLoader;
  v10 = [(CUIKCalendarModel *)self _calendarsForCurrentIdentityFromCalendars:v8 lock:0];
  LOBYTE(eventLoader) = [(CUIKEventLoader *)eventLoader setSelectedCalendars:v10];

  [(CUIKCalendarModel *)self _loadVisibleCalendarsIfNeeded];
  return eventLoader;
}

- (void)_focusModeConfigurationChanged:(id)changed
{
  [(NSLock *)self->_filterLock lock];
  self->_hasLoadedUnselectedCalendarsForFocusMode = 0;
  unselectedCalendarsForFocusMode = self->_unselectedCalendarsForFocusMode;
  self->_unselectedCalendarsForFocusMode = 0;

  _unselectedCalendarsForFocusMode = [(CUIKCalendarModel *)self _unselectedCalendarsForFocusMode];
  v6 = _unselectedCalendarsForFocusMode != 0;

  [(NSLock *)self->_filterLock unlock];

  [(CUIKCalendarModel *)self setFocusFilterMode:v6 force:1];
}

- (void)setSelectedCalendarsAndRequestPreferenceSave:(id)save reason:(id)reason
{
  v10[1] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  [(CUIKCalendarModel *)self setSelectedCalendars:save];
  v9 = @"CalendarModelVisibleCalendarPreferenceRequiresSavingNotificationReasonKey";
  v10[0] = reasonCopy;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"CalendarModelVisibleCalendarPreferenceRequiresSavingNotification" object:self userInfo:v7];
}

- (BOOL)_eventBelongsToCurrentIdentity:(id)identity
{
  identityCopy = identity;
  sourceForSelectedIdentity = [(CUIKCalendarModel *)self sourceForSelectedIdentity];
  calendar = [identityCopy calendar];

  source = [calendar source];
  v8 = source;
  if (sourceForSelectedIdentity)
  {
    sourceIdentifier = [source sourceIdentifier];
    sourceIdentifier2 = [sourceForSelectedIdentity sourceIdentifier];
    LOBYTE(v11) = [sourceIdentifier isEqualToString:sourceIdentifier2];
  }

  else
  {
    v11 = [source isDelegate] ^ 1;
  }

  return v11;
}

- (void)updateSourceForSelectedIdentity:(id)identity selectedCalendars:(id)calendars
{
  identityCopy = identity;
  calendarsCopy = calendars;
  if (([identityCopy isDelegate] & 1) == 0)
  {

    identityCopy = 0;
  }

  [(CUIKCalendarModel *)self setSourceForSelectedIdentity:identityCopy];
  selectedCalendarsIgnoringFocus = [(CUIKCalendarModel *)self selectedCalendarsIgnoringFocus];
  if (calendarsCopy)
  {
    v9 = MEMORY[0x1E696AE18];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__CUIKCalendarModel_updateSourceForSelectedIdentity_selectedCalendars___block_invoke;
    v13[3] = &unk_1E8399DA0;
    v14 = identityCopy;
    v10 = [v9 predicateWithBlock:v13];
    v11 = [selectedCalendarsIgnoringFocus filteredSetUsingPredicate:v10];

    v12 = [calendarsCopy setByAddingObjectsFromSet:v11];

    selectedCalendarsIgnoringFocus = v12;
  }

  [(CUIKCalendarModel *)self setSelectedCalendars:selectedCalendarsIgnoringFocus];
}

uint64_t __71__CUIKCalendarModel_updateSourceForSelectedIdentity_selectedCalendars___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 source];
  v5 = v4;
  if (*(a1 + 32))
  {
    v6 = [v3 source];
    v7 = [v6 isEqual:*(a1 + 32)] ^ 1;
  }

  else
  {
    v7 = [v4 isDelegate];
  }

  return v7;
}

- (void)setSearchString:(id)string
{
  stringCopy = string;
  [(NSLock *)self->_filterLock lock];
  if (CalEqualStrings())
  {
    [(NSLock *)self->_filterLock unlock];
  }

  else
  {
    objc_storeStrong(&self->_searchString, string);
    [(NSLock *)self->_filterLock unlock];
    os_unfair_lock_lock(&self->_cachedFakeTodayIndexLock);
    v6 = -2;
    if (self->_searchString)
    {
      v6 = -1;
    }

    self->_cachedFakeTodayIndex = v6;
    os_unfair_lock_unlock(&self->_cachedFakeTodayIndexLock);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__CUIKCalendarModel_setSearchString___block_invoke;
    v7[3] = &unk_1E8399DC8;
    v8 = stringCopy;
    [(CUIKCalendarModel *)self _executeBlockWithOccurrenceCacheDataSources:v7];
  }
}

void __37__CUIKCalendarModel_setSearchString___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  if ([v4 length])
  {
    [v5 searchWithTerm:*(a1 + 32)];
  }

  else
  {
    [v5 invalidate];
  }
}

- (BOOL)selectedOccurrenceIsSearchMatch
{
  searchString = [(CUIKCalendarModel *)self searchString];
  v3 = searchString != 0;

  return v3;
}

- (void)setSourceForSelectedIdentity:(id)identity
{
  identityCopy = identity;
  [(NSLock *)self->_filterLock lock];
  sourceForSelectedIdentity = self->_sourceForSelectedIdentity;
  if (sourceForSelectedIdentity != identityCopy)
  {
    objc_storeStrong(&self->_sourceForSelectedIdentity, identity);
  }

  [(NSLock *)self->_filterLock unlock];
  selectedOccurrence = [(CUIKCalendarModel *)self selectedOccurrence];
  v7 = [(CUIKCalendarModel *)self _eventBelongsToCurrentIdentity:selectedOccurrence];

  if (!v7)
  {
    [(CUIKCalendarModel *)self setSelectedOccurrence:0];
  }

  if (sourceForSelectedIdentity != identityCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CalendarModelIdentityChangedNotification" object:self];
  }
}

- (void)locationPrecisionDeterminedNotification:(id)notification
{
  if ([MEMORY[0x1E6992FE0] locationPrecisionForBundleIdentifier:*MEMORY[0x1E69930E8]])
  {
    v4 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CAB19000, v4, OS_LOG_TYPE_INFO, "Location precision determined; allowing event location prediction", buf, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__CUIKCalendarModel_locationPrecisionDeterminedNotification___block_invoke;
    block[3] = &unk_1E8399BD8;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E6992EB8] object:0];
  }
}

- (id)_unselectedCalendarsForFocusMode
{
  if (_os_feature_enabled_impl())
  {
    if (!self->_hasLoadedUnselectedCalendarsForFocusMode)
    {
      v3 = MEMORY[0x1E69669B8];
      eventStore = [(CUIKCalendarModel *)self eventStore];
      v5 = [v3 unselectedCalendarsForFocusModeInEventStore:eventStore];
      unselectedCalendarsForFocusMode = self->_unselectedCalendarsForFocusMode;
      self->_unselectedCalendarsForFocusMode = v5;

      self->_hasLoadedUnselectedCalendarsForFocusMode = 1;
    }

    v7 = self->_unselectedCalendarsForFocusMode;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSSet)unselectedCalendarsForFocusMode
{
  [(NSLock *)self->_filterLock lock];
  _unselectedCalendarsForFocusMode = [(CUIKCalendarModel *)self _unselectedCalendarsForFocusMode];
  [(NSLock *)self->_filterLock unlock];

  return _unselectedCalendarsForFocusMode;
}

- (void)ensureCalendarVisibleWithId:(id)id
{
  v20 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v5 = [(EKEventStore *)self->_eventStore calendarWithID:idCopy];
  if (v5)
  {
    selectedCalendars = [(CUIKCalendarModel *)self selectedCalendars];
    v7 = [selectedCalendars containsObject:v5];

    if ((v7 & 1) == 0)
    {
      idCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"ensuring a certain calendar %@ is visible", idCopy];
      v9 = [(NSSet *)self->_selectedCalendars setByAddingObject:v5];
      [(CUIKCalendarModel *)self setSelectedCalendarsAndRequestPreferenceSave:v9 reason:idCopy];
    }

    source = [v5 source];
    [(CUIKCalendarModel *)self updateSourceForSelectedIdentity:source selectedCalendars:0];

    if ([(CUIKCalendarModel *)self focusFilterMode]== 1)
    {
      unselectedCalendarsForFocusMode = [(CUIKCalendarModel *)self unselectedCalendarsForFocusMode];
      v12 = [unselectedCalendarsForFocusMode containsObject:v5];

      if (v12)
      {
        v13 = +[CUIKLogSubsystem defaultCategory];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          title = [v5 title];
          calendarIdentifier = [v5 calendarIdentifier];
          *buf = 138412546;
          v17 = title;
          v18 = 2114;
          v19 = calendarIdentifier;
          _os_log_impl(&dword_1CAB19000, v13, OS_LOG_TYPE_INFO, "Disabling focus filter to ensure that calendar %@ (%{public}@) is visible", buf, 0x16u);
        }

        [(CUIKCalendarModel *)self setFocusFilterMode:2];
      }
    }
  }
}

- (BOOL)isCalendarVisibleWithID:(id)d
{
  v4 = [(EKEventStore *)self->_eventStore calendarWithID:d];
  selectedCalendars = [(CUIKCalendarModel *)self selectedCalendars];
  v6 = [selectedCalendars containsObject:v4];

  return v6;
}

- (id)reminderCalendar
{
  sourceForSelectedIdentity = [(CUIKCalendarModel *)self sourceForSelectedIdentity];

  if (sourceForSelectedIdentity)
  {
    reminderIntegrationCalendar = 0;
  }

  else
  {
    reminderIntegrationCalendar = [(EKEventStore *)self->_eventStore reminderIntegrationCalendar];
  }

  return reminderIntegrationCalendar;
}

- (void)blockedUserChanged
{
  if ([(CUIKCalendarModel *)self _setSelectedCalendars:self->_selectedCalendars])
  {

    [(CUIKCalendarModel *)self postSelectedCalendarsChanged];
  }
}

- (void)setCollapsedSectionIdentifiers:(id)identifiers
{
  objc_storeStrong(&self->_collapsedSectionIdentifiers, identifiers);
  identifiersCopy = identifiers;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"CalendarModelCollapsedSectionIdentifiersPreferenceRequiresSavingNotification" object:self userInfo:0];
}

- (void)setSelectedDate:(id)date
{
  dateCopy = date;
  if (!self->_modelLocked)
  {
    if (self->_suspendSelectedDateChanges)
    {
      objc_storeStrong(&self->_suspendedSelectedDate, date);
    }

    else
    {
      os_unfair_lock_lock(&self->_selectedDateLock);
      if ([dateCopy isEqual:self->_selectedDate])
      {
        os_unfair_lock_unlock(&self->_selectedDateLock);
      }

      else
      {
        v6 = [dateCopy copy];
        timeZone = [v6 timeZone];
        timeZone2 = [(NSCalendar *)self->_calendar timeZone];
        v9 = [timeZone isEqualToTimeZone:timeZone2];

        if ((v9 & 1) == 0)
        {
          v10 = MEMORY[0x1E69930C8];
          date = [v6 date];
          timeZone3 = [(NSCalendar *)self->_calendar timeZone];
          v13 = [v10 calendarDateWithDate:date timeZone:timeZone3];

          v6 = v13;
        }

        v14 = [v6 copy];
        selectedDate = self->_selectedDate;
        self->_selectedDate = v14;

        pasteboardManager = self->_pasteboardManager;
        date2 = [(EKCalendarDate *)self->_selectedDate date];
        [(CUIKPasteboardManager *)pasteboardManager setDateForPaste:date2];

        v18 = +[CUIKLogSubsystem defaultCategory];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [(CUIKCalendarModel *)&self->_selectedDate setSelectedDate:v18];
        }

        os_unfair_lock_unlock(&self->_selectedDateLock);
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"CalendarModelSelectedDateChangedNotification" object:self];
      }
    }
  }
}

- (void)setSelectedDateChangesDelayedUntilAfterTransition:(BOOL)transition
{
  if (self->_suspendSelectedDateChanges != transition)
  {
    self->_suspendSelectedDateChanges = transition;
    if (!transition && self->_suspendedSelectedDate)
    {
      [(CUIKCalendarModel *)self setSelectedDate:?];
    }

    suspendedSelectedDate = self->_suspendedSelectedDate;
    self->_suspendedSelectedDate = 0;
  }
}

- (EKCalendarDate)selectedDay
{
  os_unfair_lock_lock(&self->_selectedDateLock);
  calendarDateForDay = [(EKCalendarDate *)self->_selectedDate calendarDateForDay];
  os_unfair_lock_unlock(&self->_selectedDateLock);

  return calendarDateForDay;
}

- (void)updateSelectedDateTimeZone
{
  os_unfair_lock_lock(&self->_selectedDateLock);
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  timeZone2 = [(EKCalendarDate *)self->_selectedDate timeZone];
  v5 = [timeZone isEqualToTimeZone:timeZone2];

  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E69930C8];
    date = [(EKCalendarDate *)self->_selectedDate date];
    timeZone3 = [(NSCalendar *)self->_calendar timeZone];
    v9 = [v6 calendarDateWithDate:date timeZone:timeZone3];
    selectedDate = self->_selectedDate;
    self->_selectedDate = v9;
  }

  os_unfair_lock_unlock(&self->_selectedDateLock);
}

- (id)selectedDateOccurrences:(BOOL)occurrences loadIsComplete:(BOOL *)complete
{
  occurrencesCopy = occurrences;
  os_unfair_lock_lock(&self->_selectedDateLock);
  dayComponents = [(EKCalendarDate *)self->_selectedDate dayComponents];
  os_unfair_lock_unlock(&self->_selectedDateLock);
  calDateComponentsForDateOnly = [dayComponents CalDateComponentsForDateOnly];

  calDateComponentsForEndOfDay = [calDateComponentsForDateOnly CalDateComponentsForEndOfDay];
  v10 = [(NSCalendar *)self->_calendar dateFromComponents:calDateComponentsForDateOnly];
  v11 = [(NSCalendar *)self->_calendar dateFromComponents:calDateComponentsForEndOfDay];
  v12 = [(CUIKEventLoader *)self->_eventLoader occurrencesForStartDate:v10 endDate:v11 preSorted:1 waitForLoad:occurrencesCopy isComplete:complete];
  occurrences = [v12 occurrences];

  return occurrences;
}

- (id)occurrencesForStartDay:(id)day endDay:(id)endDay preSorted:(BOOL)sorted waitForLoad:(BOOL)load
{
  loadCopy = load;
  sortedCopy = sorted;
  endDayCopy = endDay;
  calDateComponentsForDateOnly = [day CalDateComponentsForDateOnly];
  calDateComponentsForEndOfDay = [endDayCopy CalDateComponentsForEndOfDay];

  timeZone = [(EKEventStore *)self->_eventStore timeZone];
  v14 = EKDateComponentsGetDate();

  timeZone2 = [(EKEventStore *)self->_eventStore timeZone];
  v16 = EKDateComponentsGetDate();

  v17 = [(CUIKCalendarModel *)self occurrencesForStartDate:v14 endDate:v16 preSorted:sortedCopy waitForLoad:loadCopy];

  return v17;
}

- (id)occurrencesForDay:(id)day waitForLoad:(BOOL)load
{
  loadCopy = load;
  calDateComponentsForDateOnly = [day CalDateComponentsForDateOnly];
  calDateComponentsForEndOfDay = [calDateComponentsForDateOnly CalDateComponentsForEndOfDay];
  v8 = [(NSCalendar *)self->_calendar dateFromComponents:calDateComponentsForDateOnly];
  v9 = [(NSCalendar *)self->_calendar dateFromComponents:calDateComponentsForEndOfDay];
  v10 = [(CUIKCalendarModel *)self occurrencesForStartDate:v8 endDate:v9 preSorted:1 waitForLoad:loadCopy];

  return v10;
}

- (double)_tomorrow
{
  calendar = self->_calendar;
  v4 = CUIKTodayDate();
  v5 = [(NSCalendar *)calendar components:30 fromDate:v4];

  v6 = [(NSCalendar *)self->_calendar dateFromComponents:v5];
  v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v7 setDay:1];
  v8 = [(NSCalendar *)self->_calendar dateByAddingComponents:v7 toDate:v6 options:0];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  return v10;
}

- (id)closestOccurrenceToTomorrowForEventObjectID:(id)d
{
  eventStore = self->_eventStore;
  dCopy = d;
  [(CUIKCalendarModel *)self _tomorrow];
  v6 = [(EKEventStore *)eventStore closestCachedOccurrenceToDate:dCopy forEventObjectID:1 prefersForwardSearch:?];

  return v6;
}

- (void)setMaxCachedDays:(unsigned int)days
{
  v3 = *&days;
  v5 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CUIKCalendarModel *)v3 setMaxCachedDays:v5];
  }

  [(CUIKEventLoader *)self->_eventLoader setCacheLimit:v3];
}

- (void)_occurrenceCacheChangedNotificationHandler
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(CUIKCalendarModel *)self _occurrenceCacheChanged];
  }

  else
  {

    [(CUIKCalendarModel *)self performSelectorOnMainThread:sel__occurrenceCacheChanged withObject:0 waitUntilDone:0];
  }
}

- (id)_dataSourceUsingFilter:(BOOL)filter
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__CUIKCalendarModel__dataSourceUsingFilter___block_invoke;
  v5[3] = &unk_1E8399E38;
  v5[4] = &v7;
  filterCopy = filter;
  [(CUIKCalendarModel *)self _executeBlockWithOccurrenceCacheDataSources:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __44__CUIKCalendarModel__dataSourceUsingFilter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 40))
  {
    a2 = a3;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
}

- (int64_t)numberOfDaysWithCachedOccurrencesUsingFilter:(BOOL)filter
{
  v4 = [(CUIKCalendarModel *)self _dataSourceUsingFilter:filter];
  cachedDayCount = [v4 cachedDayCount];
  if ([v4 supportsFakeTodaySection])
  {
    os_unfair_lock_lock(&self->_cachedFakeTodayIndexLock);
    cachedFakeTodayIndex = self->_cachedFakeTodayIndex;
    if (cachedFakeTodayIndex == -2)
    {
      if (!cachedDayCount)
      {
        self->_cachedFakeTodayIndex = -1;
LABEL_13:
        os_unfair_lock_unlock(&self->_cachedFakeTodayIndexLock);
        goto LABEL_14;
      }

      v7 = CUIKTodayDate();
      v8 = [v4 sectionForCachedOccurrencesOnDate:v7];
      v9 = [(CUIKCalendarModel *)self dateForCachedOccurrencesInSection:v8 usingFilter:0 holdingCachedFakeTodayIndexLock:1];
      if ([v9 isEqualToDate:v7])
      {
        v8 = -1;
      }

      else if (v8 == cachedDayCount - 1 && [v7 compare:v9] != -1)
      {
        v8 = cachedDayCount;
      }

      self->_cachedFakeTodayIndex = v8;

      cachedFakeTodayIndex = self->_cachedFakeTodayIndex;
    }

    if (cachedFakeTodayIndex != -1)
    {
      ++cachedDayCount;
    }

    goto LABEL_13;
  }

LABEL_14:

  return cachedDayCount;
}

- (int64_t)numberOfCachedOccurrencesInSection:(int64_t)section usingFilter:(BOOL)filter
{
  v6 = [(CUIKCalendarModel *)self _dataSourceUsingFilter:filter];
  _cachedFakeTodayIndexLocked = [(CUIKCalendarModel *)self _cachedFakeTodayIndexLocked];
  v8 = 0;
  if ((section & 0x8000000000000000) == 0 && _cachedFakeTodayIndexLocked != section)
  {
    v8 = [v6 countOfOccurrencesAtDayIndex:{((__PAIR128__(section, _cachedFakeTodayIndexLocked) - section) >> 64)}];
  }

  return v8;
}

- (id)dateForCachedOccurrencesInSection:(int64_t)section usingFilter:(BOOL)filter holdingCachedFakeTodayIndexLock:(BOOL)lock
{
  v8 = [(CUIKCalendarModel *)self _dataSourceUsingFilter:filter];
  p_cachedFakeTodayIndexLock = &self->_cachedFakeTodayIndexLock;
  if (lock)
  {
    os_unfair_lock_assert_owner(p_cachedFakeTodayIndexLock);
    cachedFakeTodayIndex = self->_cachedFakeTodayIndex;
  }

  else
  {
    os_unfair_lock_assert_not_owner(p_cachedFakeTodayIndexLock);
    cachedFakeTodayIndex = [(CUIKCalendarModel *)self _cachedFakeTodayIndexLocked];
  }

  if (cachedFakeTodayIndex == section)
  {
    v11 = CUIKTodayDate();
  }

  else
  {
    v13 = cachedFakeTodayIndex >= 0 && cachedFakeTodayIndex < section;
    v11 = [v8 dateAtDayIndex:section - v13];
  }

  v14 = v11;

  return v14;
}

- (id)cachedOccurrenceAtIndexPath:(id)path usingFilter:(BOOL)filter
{
  filterCopy = filter;
  v15[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([pathCopy length] != 2)
  {
    [(CUIKCalendarModel *)a2 cachedOccurrenceAtIndexPath:pathCopy usingFilter:?];
  }

  v8 = [pathCopy indexAtPosition:0];
  v9 = [pathCopy indexAtPosition:1];
  _cachedFakeTodayIndexLocked = [(CUIKCalendarModel *)self _cachedFakeTodayIndexLocked];
  v11 = [(CUIKCalendarModel *)self _dataSourceUsingFilter:filterCopy];
  if (pathCopy)
  {
    if ((_cachedFakeTodayIndexLocked & 0x8000000000000000) == 0 && v8 > _cachedFakeTodayIndexLocked)
    {
      v15[0] = v8 - 1;
      v15[1] = v9;
      v12 = [MEMORY[0x1E696AC88] indexPathWithIndexes:v15 length:2];

      pathCopy = v12;
    }

    v13 = [v11 cachedOccurrenceAtIndexPath:pathCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)_sectionForCachedOccurrencesOnDate:(id)date sectionExistsForDay:(BOOL *)day usingFilter:(BOOL)filter
{
  filterCopy = filter;
  dateCopy = date;
  v9 = [(CUIKCalendarModel *)self _dataSourceUsingFilter:filterCopy];
  v10 = CUIKTodayDate();
  _cachedFakeTodayIndexLocked = [(CUIKCalendarModel *)self _cachedFakeTodayIndexLocked];
  if (_cachedFakeTodayIndexLocked < 0)
  {
    [v10 compare:dateCopy];
    goto LABEL_13;
  }

  cachedDayCount = [v9 cachedDayCount];
  v13 = [v10 compare:dateCopy];
  if (filterCopy || ((v14 = v13, v15 = [v10 isEqualToDate:dateCopy], cachedDayCount <= _cachedFakeTodayIndexLocked) ? (v16 = v14 == -1) : (v16 = 0), !v16 ? (v17 = 0) : (v17 = 1), (v15 & 1) == 0 && (v17 & 1) == 0))
  {
LABEL_13:
    v18 = [v9 sectionForCachedOccurrencesOnDate:dateCopy];
    if (_cachedFakeTodayIndexLocked < 0 || v18 < _cachedFakeTodayIndexLocked)
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 + 1;
    }

    if (day)
    {
      if (v20 == _cachedFakeTodayIndexLocked)
      {
        *day = 0;
        goto LABEL_24;
      }

      v21 = [(CUIKCalendarModel *)self dateForCachedOccurrencesInSection:v20];
      *day = [v21 isEqualToDate:dateCopy];
    }

    _cachedFakeTodayIndexLocked = v20;
  }

LABEL_24:

  return _cachedFakeTodayIndexLocked;
}

- (id)indexPathsForOccurrence:(id)occurrence usingFilter:(BOOL)filter
{
  filterCopy = filter;
  v30 = *MEMORY[0x1E69E9840];
  occurrenceCopy = occurrence;
  v23 = [(CUIKCalendarModel *)self _dataSourceUsingFilter:filterCopy];
  v7 = [v23 indexPathsForOccurrence:occurrenceCopy];
  _cachedFakeTodayIndexLocked = [(CUIKCalendarModel *)self _cachedFakeTodayIndexLocked];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if ([v15 length] != 2)
        {
          [(CUIKCalendarModel *)a2 indexPathsForOccurrence:v15 usingFilter:?];
        }

        v16 = [v15 indexAtPosition:0];
        v17 = [v15 indexAtPosition:1];
        if (_cachedFakeTodayIndexLocked < 0 || v16 < _cachedFakeTodayIndexLocked)
        {
          v19 = v16;
        }

        else
        {
          v19 = v16 + 1;
        }

        v28[0] = v19;
        v28[1] = v17;
        v20 = [MEMORY[0x1E696AC88] indexPathWithIndexes:v28 length:2];
        [v9 addObject:v20];
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v12);
  }

  return v9;
}

- (void)fetchCachedDaysInBackgroundStartingFromSection:(int64_t)section usingFilter:(BOOL)filter
{
  v5 = [(CUIKCalendarModel *)self _dataSourceUsingFilter:filter];
  [v5 fetchDaysInBackgroundStartingFromSection:section];
}

- (void)fetchDaysStartingFromSection:(int64_t)section sectionsToLoadInBothDirections:(int64_t)directions
{
  v6 = [(CUIKCalendarModel *)self _dataSourceUsingFilter:0];
  [v6 fetchDaysStartingFromSection:section sectionsToLoadInBothDirections:directions];
}

- (id)cachedSpecialDayDataForSection:(int64_t)section
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl() && (v5 = [(CUIKCalendarModel *)self numberOfCachedOccurrencesInSection:section usingFilter:0], v5 >= 1))
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v17[0] = section;
      v17[1] = v7;
      v8 = [MEMORY[0x1E696AC88] indexPathWithIndexes:v17 length:2];
      v9 = [(CUIKCalendarModel *)self cachedOccurrenceAtIndexPath:v8 usingFilter:0];
      specialDayType = [v9 specialDayType];
      if ((specialDayType & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_6;
      }
    }

    v13 = specialDayType;
    v11 = objc_alloc_init(CUIKCalendarSpecialDayData);
    [(CUIKCalendarSpecialDayData *)v11 setDayType:v13];
    calendar = [v9 calendar];
    -[CUIKCalendarSpecialDayData setCgColor:](v11, "setCgColor:", [calendar CGColor]);

    calendar2 = [v9 calendar];
    locale = [calendar2 locale];
    [(CUIKCalendarSpecialDayData *)v11 setLocale:locale];
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  return v11;
}

- (id)cachedOccurrencesForSection:(int64_t)section
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = [(CUIKCalendarModel *)self numberOfCachedOccurrencesInSection:section usingFilter:0];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v12[0] = section;
      v12[1] = i;
      v8 = [MEMORY[0x1E696AC88] indexPathWithIndexes:v12 length:2];
      v9 = [(CUIKCalendarModel *)self cachedOccurrenceAtIndexPath:v8 usingFilter:0];
      if (v9)
      {
        [v6 addObject:v9];
      }
    }
  }

  if ([v6 count])
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_searchResultsAvailable:(id)available
{
  v4 = MEMORY[0x1E696AD88];
  availableCopy = available;
  defaultCenter = [v4 defaultCenter];
  userInfo = [availableCopy userInfo];

  [defaultCenter postNotificationName:@"CalendarModelSearchResultsAvailable" object:self userInfo:userInfo];
}

- (void)_executeBlockWithOccurrenceCacheDataSources:(id)sources
{
  sourcesCopy = sources;
  os_unfair_lock_lock(&self->_dataSourceLock);
  occurrenceCacheDataSource = self->_occurrenceCacheDataSource;
  v6 = self->_occurrenceCacheFilteredDataSource;
  v7 = occurrenceCacheDataSource;
  os_unfair_lock_unlock(&self->_dataSourceLock);
  sourcesCopy[2](sourcesCopy, v7, v6);
}

- (void)_processReloadForCacheOnly:(BOOL)only includingCalendars:(BOOL)calendars checkCalendarsValid:(BOOL)valid checkSources:(BOOL)sources
{
  sourcesCopy = sources;
  validCopy = valid;
  calendarsCopy = calendars;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [(CUIKCalendarModel *)self _invalidateCachedOccurrences];
  [defaultCenter postNotificationName:@"CalendarModelCachedOccurrencesChangedNotification" object:self];
  if (calendarsCopy)
  {
    self->_readWriteCalendarCount = 0x7FFFFFFFFFFFFFFFLL;
    self->_invitationBearingStoresExist = 0x7FFFFFFFFFFFFFFFLL;
    if (validCopy)
    {
      [(NSLock *)self->_filterLock lock];
      visibleCalendars = self->_visibleCalendars;
      if (visibleCalendars)
      {
        v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:self->_visibleCalendars];
        visibleCalendars = self->_visibleCalendars;
      }

      else
      {
        v12 = 0;
      }

      self->_visibleCalendars = 0;

      [(CUIKCalendarModel *)self _loadVisibleCalendarsIfNeeded];
      v13 = objc_opt_new();
      selectedCalendars = self->_selectedCalendars;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __100__CUIKCalendarModel__processReloadForCacheOnly_includingCalendars_checkCalendarsValid_checkSources___block_invoke;
      v24[3] = &unk_1E8399E80;
      v15 = v13;
      v25 = v15;
      [(NSSet *)selectedCalendars enumerateObjectsUsingBlock:v24];
      if (v12)
      {
        v16 = self->_visibleCalendars;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __100__CUIKCalendarModel__processReloadForCacheOnly_includingCalendars_checkCalendarsValid_checkSources___block_invoke_2;
        v21[3] = &unk_1E8399EA8;
        v22 = v12;
        v23 = v15;
        [(NSArray *)v16 enumerateObjectsUsingBlock:v21];
      }

      v17 = self->_sourceForSelectedIdentity;
      eventStore = [(EKSource *)v17 eventStore];

      if (!eventStore)
      {
        sourceForSelectedIdentity = self->_sourceForSelectedIdentity;
        self->_sourceForSelectedIdentity = 0;
      }

      [(NSLock *)self->_filterLock unlock];
      if (([v15 isEqualToSet:self->_selectedCalendars] & 1) == 0)
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"processing reloads in calendar model, old selected count %lu", -[NSSet count](self->_selectedCalendars, "count")];
        [(CUIKCalendarModel *)self setSelectedCalendarsAndRequestPreferenceSave:v15 reason:v20];
      }
    }

    [defaultCenter postNotificationName:@"CalendarModelCalendarsChangedNotification" object:self];
  }

  if (sourcesCopy)
  {
    [(CUIKCalendarModel *)self _checkSources];
  }
}

void __100__CUIKCalendarModel__processReloadForCacheOnly_includingCalendars_checkCalendarsValid_checkSources___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 eventStore];

  if (v3)
  {
    [*(a1 + 32) addObject:v4];
  }
}

void __100__CUIKCalendarModel__processReloadForCacheOnly_includingCalendars_checkCalendarsValid_checkSources___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 eventStore];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) containsObject:v10];

    if ((v5 & 1) == 0)
    {
      v6 = [MEMORY[0x1E6966A98] shared];
      v7 = [v6 deselectedCalendarIdentifiers];
      v8 = [v10 calendarIdentifier];
      v9 = [v7 containsObject:v8];

      if ((v9 & 1) == 0)
      {
        [*(a1 + 40) addObject:v10];
      }
    }
  }
}

- (void)_checkSources
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  if ([(CUIKCalendarModel *)self countSourcesWithErrors])
  {
    [defaultCenter postNotificationName:@"CalendarModelAccountErrorCountChangedNotification" object:self];
  }

  countAccountsInInitialSync = [(CUIKCalendarModel *)self countAccountsInInitialSync];
  if (self->_initialAccountSyncCount != countAccountsInInitialSync)
  {
    self->_initialAccountSyncCount = countAccountsInInitialSync;
    [defaultCenter postNotificationName:@"CalendarModelAccountsInInitialSyncCountChangedNotification" object:self];
  }

  v4 = [objc_opt_class() sortedEnabledDelegateSourcesFromStore:self->_eventStore];
  if (([v4 isEqualToArray:self->_delegateSources] & 1) == 0)
  {
    objc_storeStrong(&self->_delegateSources, v4);
    [defaultCenter postNotificationName:@"CalendarModelDelegatesChangedNotification" object:self];
  }
}

+ (id)sortedEnabledDelegateSourcesFromStore:(id)store
{
  delegateSources = [store delegateSources];
  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_287];
  v5 = [delegateSources filteredArrayUsingPredicate:v4];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_290];

  return v6;
}

uint64_t __59__CUIKCalendarModel_sortedEnabledDelegateSourcesFromStore___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = CUIKDisplayedTitleForSource(a2, 1);
  v6 = CUIKDisplayedTitleForSource(v4, 1);

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (int64_t)displayableAccountErrorsForSource:(id)source
{
  sourceCopy = source;
  if (!self->_displayableAccountErrorCounts)
  {
    [(CUIKCalendarModel *)self countSourcesWithErrors];
  }

  sourceIdentifier = [sourceCopy sourceIdentifier];
  if (sourceIdentifier)
  {
    v6 = sourceIdentifier;
  }

  else
  {
    v6 = &stru_1F4AA8958;
  }

  v7 = [(NSMutableDictionary *)self->_displayableAccountErrorCounts objectForKeyedSubscript:v6];
  integerValue = [v7 integerValue];

  return integerValue;
}

- (void)simulateFirstLoadFinished
{
  if (![(CUIKEventLoader *)self->_eventLoader firstLoadBegan])
  {

    [(CUIKCalendarModel *)self _finishedFirstLoad];
  }
}

- (void)calendarEventLoader:(id)loader occurrencesDidUpdateBetweenStart:(double)start end:(double)end generation:(int)generation wasEmptyLoad:(BOOL)load
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __102__CUIKCalendarModel_calendarEventLoader_occurrencesDidUpdateBetweenStart_end_generation_wasEmptyLoad___block_invoke;
  v7[3] = &unk_1E8399F10;
  v7[4] = self;
  *&v7[5] = start;
  *&v7[6] = end;
  generationCopy = generation;
  loadCopy = load;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)handleEventLoaderOccurrencesDidUpdateBetweenStart:(double)start end:(double)end generation:(int)generation wasEmptyLoad:(BOOL)load
{
  loadCopy = load;
  v42 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  selectedOccurrences = [(CUIKCalendarModel *)self selectedOccurrences];
  v11 = [selectedOccurrences countByEnumeratingWithState:&v37 objects:v41 count:16];
  v12 = 0x1E696A000;
  if (!v11)
  {
    goto LABEL_25;
  }

  v13 = v11;
  v14 = 0;
  v15 = *v38;
  do
  {
    v16 = 0;
    do
    {
      if (*v38 != v15)
      {
        objc_enumerationMutation(selectedOccurrences);
      }

      v17 = *(*(&v37 + 1) + 8 * v16);
      startDate = [v17 startDate];
      [startDate timeIntervalSinceReferenceDate];
      v20 = v19;

      endDateUnadjustedForLegacyClients = [v17 endDateUnadjustedForLegacyClients];
      [endDateUnadjustedForLegacyClients timeIntervalSinceReferenceDate];
      v23 = v22;

      if ([v17 isBirthday])
      {
        [v17 isNew];
      }

      else
      {
        v25 = (v20 < start || v20 > end) && (v23 > end || v23 < start);
        if (([v17 isNew] & 1) == 0 && !v25)
        {
          v26 = [v17 copy];
          v27 = [v26 refreshIfRefreshableAndNotify:0];

          if ((v27 & 1) == 0)
          {
            [(CUIKCalendarModel *)self _deselectOccurrence:v17 notify:0];
            v14 = 1;
          }
        }
      }

      ++v16;
    }

    while (v13 != v16);
    v28 = [selectedOccurrences countByEnumeratingWithState:&v37 objects:v41 count:16];
    v13 = v28;
  }

  while (v28);

  v12 = 0x1E696A000uLL;
  if (v14)
  {
    selectedOccurrences = [MEMORY[0x1E696AD88] defaultCenter];
    [selectedOccurrences postNotificationName:@"CalendarModelSelectedOccurrencesChangedNotification" object:self];
LABEL_25:
  }

  v29 = MEMORY[0x1E695DF20];
  v30 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:start];
  v31 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:end];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:loadCopy];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:generation];
  v34 = [v29 dictionaryWithObjectsAndKeys:{v30, @"CalendarModelDisplayedOccurrencesChangedRangeStartKey", v31, @"CalendarModelDisplayedOccurrencesChangedRangeEndKey", v32, @"CalendarModelDisplayedOccurrencesChangedFilteredAllKey", v33, @"CalendarModelDisplayedOccurrencesChangedGenerationKey", 0}];

  [(CUIKCalendarModel *)self _finishedFirstLoad];
  defaultCenter = [*(v12 + 3464) defaultCenter];
  [defaultCenter postNotificationName:@"CalendarModelDisplayedOccurrencesChangedNotification" object:self userInfo:v34];

  if (!loadCopy && self->_autoStartNotificationMonitor)
  {
    [(CUIKCalendarModel *)self startNotificationMonitor];
  }
}

- (id)monitorPredicate:(id)predicate options:(unint64_t)options resultsBlock:(id)block
{
  v8 = MEMORY[0x1E6966A90];
  blockCopy = block;
  predicateCopy = predicate;
  v11 = [[v8 alloc] initWithEventStore:self->_eventStore predicate:predicateCopy filterChanges:0x3FFFLL options:options queue:self->_predicateMonitorCallbackQueue resultsBlock:blockCopy];

  return v11;
}

- (void)_notificationBlacklisted
{
  _notificationMonitor = [(CUIKCalendarModel *)self _notificationMonitor];
  [_notificationMonitor attemptReloadSynchronously:1];
}

- (void)_eventStoreChanged:(id)changed
{
  v22 = *MEMORY[0x1E69E9840];
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E6966920]];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (unsignedIntegerValue == 2)
  {
    [(CUIKCalendarModel *)self _checkSources];
  }

  else
  {
    v7 = [userInfo objectForKey:*MEMORY[0x1E6966930]];
    if ([v7 count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = 0;
        v13 = *v18;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v8);
            }

            entityType = [*(*(&v17 + 1) + 8 * i) entityType];
            if (entityType == 1)
            {
              v12 = 1;
            }

            else if (entityType == 6)
            {
              v11 = 1;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }
    }

    else
    {
      v11 = 1;
      v12 = 1;
    }

    [(CUIKCalendarModel *)self _processReloadForCacheOnly:0 includingCalendars:v12 & 1 checkCalendarsValid:v12 & 1 checkSources:v11 & 1, v17];
    _notificationMonitor = [(CUIKCalendarModel *)self _notificationMonitor];
    [_notificationMonitor attemptReload];
  }
}

- (void)_ignoredErrorsChanged
{
  if ([(CUIKCalendarModel *)self countSourcesWithErrors])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CalendarModelAccountErrorCountChangedNotification" object:self];
  }
}

- (void)updateAfterAppResume
{
  v8[1] = *MEMORY[0x1E69E9840];
  CUIKInvalidateToday();
  _checkIfTodayChanged = [(CUIKCalendarModel *)self _checkIfTodayChanged];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = @"CalendarModelSignificantTimeChangeNotificationDayChangedKey";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:_checkIfTodayChanged];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [defaultCenter postNotificationName:@"CalendarModelSignificantTimeChangeNotification" object:self userInfo:v6];

  if (_checkIfTodayChanged)
  {
    [(CUIKCalendarModel *)self _reloadEventsOnDateChange];
  }

  else
  {
    [(CUIKEventLoader *)self->_eventLoader loadIfNeeded];
  }
}

- (void)_tzSupportTodayRolledOver
{
  v8[1] = *MEMORY[0x1E69E9840];
  _checkIfTodayChanged = [(CUIKCalendarModel *)self _checkIfTodayChanged];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = @"CalendarModelSignificantTimeChangeNotificationDayChangedKey";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:_checkIfTodayChanged];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [defaultCenter postNotificationName:@"CalendarModelSignificantTimeChangeNotification" object:self userInfo:v6];

  if (_checkIfTodayChanged)
  {
    [(CUIKCalendarModel *)self _reloadEventsOnDateChange];
  }
}

- (void)_significantTimeChange
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = CFTimeZoneCopySystem();
  CalSetSystemTimeZone();
  CFRelease(v3);
  CUIKInvalidateToday();
  _checkIfTodayChanged = [(CUIKCalendarModel *)self _checkIfTodayChanged];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"CalendarModelSignificantTimeChangeNotificationDayChangedKey";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:_checkIfTodayChanged];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [defaultCenter postNotificationName:@"CalendarModelSignificantTimeChangeNotification" object:self userInfo:v7];

  if (_checkIfTodayChanged)
  {
    [(CUIKCalendarModel *)self _reloadEventsOnDateChange];
  }
}

- (BOOL)_checkIfTodayChanged
{
  v3 = CUIKTodayDate();
  lastKnownToday = self->_lastKnownToday;
  p_lastKnownToday = &self->_lastKnownToday;
  v4 = lastKnownToday;
  if (lastKnownToday && [(NSDate *)v4 isEqualToDate:v3])
  {
    v7 = 0;
  }

  else
  {
    objc_storeStrong(p_lastKnownToday, v3);
    v7 = 1;
  }

  return v7;
}

- (void)_reloadEventsOnDateChange
{
  [(CUIKEventLoader *)self->_eventLoader dateChanged];

  [(CUIKCalendarModel *)self _occurrenceCacheChanged];
}

- (void)_sceneEnteredBackground:(id)background
{
  object = [background object];
  _sceneIdentifier = [object _sceneIdentifier];
  sceneIdentifier = [(CUIKCalendarModel *)self sceneIdentifier];
  v6 = [_sceneIdentifier isEqualToString:sceneIdentifier];

  if (v6)
  {
    self->_modelLocked = 1;
  }
}

- (void)_sceneEnteredForeground:(id)foreground
{
  object = [foreground object];
  _sceneIdentifier = [object _sceneIdentifier];
  sceneIdentifier = [(CUIKCalendarModel *)self sceneIdentifier];
  v6 = [_sceneIdentifier isEqualToString:sceneIdentifier];

  if (v6)
  {
    self->_modelLocked = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CalendarModelDidUnlockNotification" object:self];
  }
}

- (void)_localeChanged:(id)changed
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  calendar = [(CUIKCalendarModel *)self calendar];
  [calendar setLocale:currentLocale];
}

- (void)_timeZoneChanged:(id)changed
{
  calendarTimeZone = [MEMORY[0x1E695DFE8] calendarTimeZone];
  [(EKEventStore *)self->_eventStore setTimeZone:calendarTimeZone];

  calendarTimeZone2 = [MEMORY[0x1E695DFE8] calendarTimeZone];
  [(NSCalendar *)self->_calendar setTimeZone:calendarTimeZone2];

  if ([MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp])
  {
    calendarTimeZone3 = [MEMORY[0x1E695DFE8] calendarTimeZone];
    [MEMORY[0x1E695DFE8] setDefaultTimeZone:calendarTimeZone3];
  }

  eventLoader = self->_eventLoader;
  calendarTimeZone4 = [MEMORY[0x1E695DFE8] calendarTimeZone];
  [(CUIKEventLoader *)eventLoader setTimeZone:calendarTimeZone4];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CalendarModelTimeZoneChangedNotification" object:self];

  [(CUIKCalendarModel *)self _processReloadForCacheOnly:0 includingCalendars:0 checkCalendarsValid:0 checkSources:0];
}

- (void)setSelectedOccurrence:(id)occurrence forceChange:(BOOL)change
{
  changeCopy = change;
  v9[1] = *MEMORY[0x1E69E9840];
  occurrenceCopy = occurrence;
  v7 = occurrenceCopy;
  if (occurrenceCopy)
  {
    v9[0] = occurrenceCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [(CUIKCalendarModel *)self setSelectedOccurrences:v8 forceChange:changeCopy];
  }

  else
  {
    [(CUIKCalendarModel *)self setSelectedOccurrences:MEMORY[0x1E695E0F0] forceChange:changeCopy];
  }
}

- (id)selectedOccurrencesForSelectionSource:(unint64_t)source
{
  if (self->_selectedOccurrenceSelectionSource == source)
  {
    selectedOccurrences = [(CUIKCalendarModel *)self selectedOccurrences];
  }

  else
  {
    selectedOccurrences = 0;
  }

  return selectedOccurrences;
}

- (void)setSelectedOccurrences:(id)occurrences source:(unint64_t)source forceChange:(BOOL)change
{
  occurrencesCopy = occurrences;
  v9 = occurrencesCopy;
  if (!self->_modelLocked)
  {
    v19 = occurrencesCopy;
    v10 = [occurrencesCopy count];
    v9 = v19;
    if (v10 || (occurrencesCopy = [(NSMutableArray *)self->_selectedOccurrences count], v9 = v19, occurrencesCopy))
    {
      if (change || (occurrencesCopy = [v9 isEqualToArray:self->_selectedOccurrences], v9 = v19, !occurrencesCopy) || self->_selectedOccurrenceSelectionSource != source)
      {
        v11 = [MEMORY[0x1E695DF70] arrayWithArray:v9];
        selectedOccurrences = self->_selectedOccurrences;
        self->_selectedOccurrences = v11;

        self->_selectedOccurrenceSelectionSource = source;
        if ([(NSMutableArray *)self->_selectedOccurrences count]== 1)
        {
          firstObject = [(NSMutableArray *)self->_selectedOccurrences firstObject];
          calendar = [firstObject calendar];

          if (calendar)
          {
            firstObject2 = [(NSMutableArray *)self->_selectedOccurrences firstObject];
            if (([firstObject2 isNew] & 1) == 0)
            {
              pasteboardManager = self->_pasteboardManager;
              calendar2 = [firstObject2 calendar];
              [(CUIKPasteboardManager *)pasteboardManager setCalendarForPaste:calendar2];
            }
          }
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"CalendarModelSelectedOccurrencesChangedNotification" object:self];

        v9 = v19;
      }
    }
  }

  MEMORY[0x1EEE66BB8](occurrencesCopy, v9);
}

- (void)selectOccurrences:(id)occurrences
{
  v16 = *MEMORY[0x1E69E9840];
  occurrencesCopy = occurrences;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [occurrencesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(occurrencesCopy);
        }

        v7 |= [(CUIKCalendarModel *)self _selectOccurrence:*(*(&v11 + 1) + 8 * i) notify:0];
      }

      v6 = [occurrencesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
    if (v7)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"CalendarModelSelectedOccurrencesChangedNotification" object:self];
    }
  }
}

- (BOOL)_selectOccurrence:(id)occurrence notify:(BOOL)notify
{
  notifyCopy = notify;
  occurrenceCopy = occurrence;
  if (self->_modelLocked)
  {
    v7 = 0;
    goto LABEL_9;
  }

  v8 = [(NSMutableArray *)self->_selectedOccurrences containsObject:occurrenceCopy];
  if ((v8 & 1) == 0)
  {
    selectedOccurrences = self->_selectedOccurrences;
    if (selectedOccurrences)
    {
      [(NSMutableArray *)selectedOccurrences addObject:occurrenceCopy];
      if (!notifyCopy)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v15 = [MEMORY[0x1E695DF70] arrayWithObject:occurrenceCopy];
    v16 = self->_selectedOccurrences;
    self->_selectedOccurrences = v15;

    if (notifyCopy)
    {
LABEL_6:
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"CalendarModelSelectedOccurrencesChangedNotification" object:self];
    }
  }

LABEL_7:
  v7 = v8 ^ 1;
  self->_selectedOccurrenceSelectionSource = 0;
  calendar = [occurrenceCopy calendar];

  if (calendar)
  {
    pasteboardManager = self->_pasteboardManager;
    calendar2 = [occurrenceCopy calendar];
    [(CUIKPasteboardManager *)pasteboardManager setCalendarForPaste:calendar2];
  }

LABEL_9:

  return v7;
}

- (void)deselectOccurrence:(id)occurrence
{
  v8 = *MEMORY[0x1E69E9840];
  occurrenceCopy = occurrence;
  v4 = MEMORY[0x1E695DEC8];
  occurrenceCopy2 = occurrence;
  v6 = [v4 arrayWithObjects:&occurrenceCopy count:1];

  [(CUIKCalendarModel *)self deselectOccurrences:v6, occurrenceCopy, v8];
}

- (void)_deselectOccurrence:(id)occurrence notify:(BOOL)notify
{
  notifyCopy = notify;
  v10 = *MEMORY[0x1E69E9840];
  occurrenceCopy = occurrence;
  v6 = MEMORY[0x1E695DEC8];
  occurrenceCopy2 = occurrence;
  v8 = [v6 arrayWithObjects:&occurrenceCopy count:1];

  [(CUIKCalendarModel *)self _deselectOccurrences:v8 notify:notifyCopy, occurrenceCopy, v10];
}

- (void)_deselectOccurrences:(id)occurrences notify:(BOOL)notify
{
  notifyCopy = notify;
  v20 = *MEMORY[0x1E69E9840];
  occurrencesCopy = occurrences;
  v7 = occurrencesCopy;
  if (!self->_modelLocked)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [occurrencesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([(NSMutableArray *)self->_selectedOccurrences containsObject:v13])
          {
            [(NSMutableArray *)self->_selectedOccurrences removeObject:v13];
            v10 = 1;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
      self->_selectedOccurrenceSelectionSource = 0;
      if ((notifyCopy & v10) == 1)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"CalendarModelSelectedOccurrencesChangedNotification" object:self];
      }
    }

    else
    {
      self->_selectedOccurrenceSelectionSource = 0;
    }
  }
}

- (NSArray)pointerTargetedOccurrences
{
  if (self->_selectedOccurrenceSelectionSource == 1)
  {
    [MEMORY[0x1E695DEC8] arrayWithArray:self->_selectedOccurrences];
  }

  else
  {
    [MEMORY[0x1E695DEC8] array];
  }
  v2 = ;

  return v2;
}

- (void)setShowDayAsList:(BOOL)list
{
  listCopy = list;
  if (CUIKShouldSaveStateInPreferences())
  {
    defaultCenter = +[CUIKPreferences sharedPreferences];
    [defaultCenter setShowListView:listCopy];
  }

  else
  {
    persistedSceneState = [(CUIKCalendarModel *)self persistedSceneState];
    showDayAsList = [persistedSceneState showDayAsList];

    if (showDayAsList == listCopy)
    {
      return;
    }

    persistedSceneState2 = [(CUIKCalendarModel *)self persistedSceneState];
    [persistedSceneState2 setShowDayAsList:listCopy];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CalendarModelDayListDisplaySettingChangedNotification" object:self];
  }
}

- (void)setNumDaysToShow:(int64_t)show
{
  if (CUIKShouldSaveStateInPreferences())
  {
    defaultCenter = +[CUIKPreferences sharedPreferences];
    [defaultCenter setNumDaysToShow:show];
  }

  else
  {
    persistedSceneState = [(CUIKCalendarModel *)self persistedSceneState];
    numDaysToShow = [persistedSceneState numDaysToShow];

    if (numDaysToShow == show)
    {
      return;
    }

    persistedSceneState2 = [(CUIKCalendarModel *)self persistedSceneState];
    [persistedSceneState2 setNumDaysToShow:show];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CalendarModelTwoDayDisplaySettingChangedNotification" object:self];
  }
}

- (void)setShowMonthAsDivided:(BOOL)divided
{
  dividedCopy = divided;
  if (CUIKShouldSaveStateInPreferences())
  {
    defaultCenter = +[CUIKPreferences sharedPreferences];
    [defaultCenter setShowMonthDividedListView:dividedCopy];
  }

  else
  {
    persistedSceneState = [(CUIKCalendarModel *)self persistedSceneState];
    showMonthAsDivided = [persistedSceneState showMonthAsDivided];

    if (showMonthAsDivided == dividedCopy)
    {
      return;
    }

    persistedSceneState2 = [(CUIKCalendarModel *)self persistedSceneState];
    [persistedSceneState2 setShowMonthAsDivided:dividedCopy];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CalendarModelMonthDividedDisplaySettingChangedNotification" object:self];
  }
}

- (BOOL)removeEvent:(id)event withSpan:(int64_t)span error:(id *)error
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    undoableEditor = [(CUIKUndoManager *)self->_undoManager undoableEditor];
    v10 = [undoableEditor deleteEvent:eventCopy span:span error:error];

    if (v10)
    {
      LOBYTE(v10) = 1;
      if (!*error)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v11 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [CUIKCalendarModel removeEvent:error withSpan:v11 error:?];
  }

LABEL_9:
  return v10;
}

void __45__CUIKCalendarModel_startNotificationMonitor__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E6966B58]) initWithOptions:72 eventStore:*(*(a1 + 32) + 16)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;

  [*(*(a1 + 32) + 112) start];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel__notificationsExpired_ name:*MEMORY[0x1E6966B60] object:*(*(a1 + 32) + 112)];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:sel__notificationsLoaded_ name:*MEMORY[0x1E6966B68] object:*(*(a1 + 32) + 112)];
}

- (BOOL)invitationBearingStoresExistForEvents
{
  v29 = *MEMORY[0x1E69E9840];
  invitationBearingStoresExist = self->_invitationBearingStoresExist;
  if (invitationBearingStoresExist == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_invitationBearingStoresExist = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    eventSources = [(EKEventStore *)self->_eventStore eventSources];
    v5 = [eventSources countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (!v5)
    {
      goto LABEL_24;
    }

    v6 = v5;
    v7 = *v24;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(eventSources);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if ([v9 isEnabled])
        {
          constraints = [v9 constraints];
          if ([constraints allowsEvents])
          {
            constraints2 = [v9 constraints];
            supportsIncomingInvitations = [constraints2 supportsIncomingInvitations];

            if (!supportsIncomingInvitations)
            {
              continue;
            }

            v21 = 0u;
            v22 = 0u;
            v19 = 0u;
            v20 = 0u;
            constraints = [v9 calendarsForEntityType:{0, 0}];
            v13 = [constraints countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v20;
              while (2)
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v20 != v15)
                  {
                    objc_enumerationMutation(constraints);
                  }

                  v17 = *(*(&v19 + 1) + 8 * j);
                  if (([v17 allowedEntityTypes] & 1) != 0 && (objc_msgSend(v17, "isHidden") & 1) == 0)
                  {
                    self->_invitationBearingStoresExist = 1;
                    goto LABEL_21;
                  }
                }

                v14 = [constraints countByEnumeratingWithState:&v19 objects:v27 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }
          }

LABEL_21:
        }
      }

      v6 = [eventSources countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (!v6)
      {
LABEL_24:

        invitationBearingStoresExist = self->_invitationBearingStoresExist;
        return invitationBearingStoresExist != 0;
      }
    }
  }

  return invitationBearingStoresExist != 0;
}

- (void)_notificationsExpired:(id)expired
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CalendarModelNotificationsChangedNotification" object:self];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"CalendarModelNotificationCountsChangedNotification" object:self];
}

- (void)_notificationsLoaded:(id)loaded
{
  if ([(_EKNotificationMonitor *)self->_notificationMonitor notificationCount])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CalendarModelNotificationCountsChangedNotification" object:self];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"CalendarModelNotificationsChangedNotification" object:self];
  }
}

- (BOOL)_shouldShowNotification:(id)notification
{
  notificationCopy = notification;
  if ([(CUIKCalendarModel *)self focusFilterMode]== 1)
  {
    unselectedCalendarsForFocusMode = [(CUIKCalendarModel *)self unselectedCalendarsForFocusMode];
    v6 = [notificationCopy cuik_shouldShowNotificationWithUnselectedCalendarsForFocus:unselectedCalendarsForFocusMode];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (unint64_t)allEventNotificationsCount
{
  _notificationMonitor = [(CUIKCalendarModel *)self _notificationMonitor];
  notificationCount = [_notificationMonitor notificationCount];

  return notificationCount;
}

- (unint64_t)_eventNotificationCountForCurrentIdentityIgnoringFilter:(BOOL)filter
{
  v3 = [(CUIKCalendarModel *)self _eventNotificationsForCurrentIdentityIgnoringFilter:filter];
  v4 = [v3 count];

  return v4;
}

- (id)eventNotificationReferencesForIdentity:(id)identity ignoringFilter:(BOOL)filter
{
  identityCopy = identity;
  allEventNotificationReferences = [(CUIKCalendarModel *)self allEventNotificationReferences];
  v8 = [MEMORY[0x1E69669A8] batchLoadNotifications:allEventNotificationReferences];
  v9 = MEMORY[0x1E696AE18];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__CUIKCalendarModel_eventNotificationReferencesForIdentity_ignoringFilter___block_invoke;
  v14[3] = &unk_1E8399F38;
  filterCopy = filter;
  v14[4] = self;
  v15 = identityCopy;
  v10 = identityCopy;
  v11 = [v9 predicateWithBlock:v14];
  v12 = [allEventNotificationReferences filteredArrayUsingPredicate:v11];

  return v12;
}

uint64_t __75__CUIKCalendarModel_eventNotificationReferencesForIdentity_ignoringFilter___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 notification];
  if ((*(a1 + 48) & 1) != 0 || [*(a1 + 32) _shouldShowNotification:v3])
  {
    v4 = *(a1 + 40);
    v5 = [v3 source];
    v6 = v5;
    if (v4)
    {
      v7 = [v5 externalID];
      v8 = [*(a1 + 40) externalID];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = [v5 isDelegate] ^ 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)temporarilyIgnoreInvalidCredentialsErrorForSource:(id)source
{
  v17 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if ([sourceCopy lastSyncError] == 2)
  {
    objectID = [sourceCopy objectID];
    lastSyncEndDate = [sourceCopy lastSyncEndDate];
    v6 = lastSyncEndDate;
    if (objectID && lastSyncEndDate)
    {
      os_unfair_lock_lock(&_objectsWithIgnoredErrorsLock);
      v7 = _objectsWithIgnoredErrors;
      if (!_objectsWithIgnoredErrors)
      {
        v8 = objc_opt_new();
        v9 = _objectsWithIgnoredErrors;
        _objectsWithIgnoredErrors = v8;

        v7 = _objectsWithIgnoredErrors;
      }

      [v7 setObject:v6 forKeyedSubscript:objectID];
      os_unfair_lock_unlock(&_objectsWithIgnoredErrorsLock);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"CalendarModelIgnoredErrorsChangedNotification" object:0];
    }

    else
    {
      defaultCenter = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412802;
        v12 = sourceCopy;
        v13 = 2112;
        v14 = objectID;
        v15 = 2112;
        v16 = v6;
        _os_log_error_impl(&dword_1CAB19000, defaultCenter, OS_LOG_TYPE_ERROR, "Can't ignore invalid error for source (%@) because it either has no object ID (%@) or no sync end date (%@)", &v11, 0x20u);
      }
    }
  }
}

+ (void)temporarilyIgnoreInsecureConnectionErrorsForCalendars:(id)calendars
{
  v29 = *MEMORY[0x1E69E9840];
  calendarsCopy = calendars;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [calendarsCopy countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v19;
    *&v5 = 138412802;
    v17 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(calendarsCopy);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 lastSyncError] == 7)
        {
          objectID = [v10 objectID];
          lastSyncEndDate = [v10 lastSyncEndDate];
          v13 = lastSyncEndDate;
          if (objectID)
          {
            v14 = lastSyncEndDate == 0;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {
            v15 = +[CUIKLogSubsystem defaultCategory];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v17;
              v23 = v10;
              v24 = 2112;
              v25 = objectID;
              v26 = 2112;
              v27 = v13;
              _os_log_error_impl(&dword_1CAB19000, v15, OS_LOG_TYPE_ERROR, "Can't ignore error for calendar (%@) because it either has no object ID (%@) or no sync end date (%@)", buf, 0x20u);
            }
          }

          else
          {
            if (!v7)
            {
              v7 = objc_opt_new();
            }

            [v7 setObject:v13 forKeyedSubscript:objectID];
          }
        }
      }

      v6 = [calendarsCopy countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v6);
    if (v7)
    {
      os_unfair_lock_lock(&_objectsWithIgnoredErrorsLock);
      if (_objectsWithIgnoredErrors)
      {
        [_objectsWithIgnoredErrors addEntriesFromDictionary:v7];
      }

      else
      {
        objc_storeStrong(&_objectsWithIgnoredErrors, v7);
      }

      os_unfair_lock_unlock(&_objectsWithIgnoredErrorsLock);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"CalendarModelIgnoredErrorsChangedNotification" object:0];
    }
  }
}

- (void)addRespondedNotificationObjectID:(id)d
{
  [MEMORY[0x1E6966B58] addBlacklistedNotificationObjectID:d];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CalendarModelBlacklistedNotification" object:self];
}

+ (unint64_t)errorForSource:(id)source
{
  sourceCopy = source;
  lastSyncError = [sourceCopy lastSyncError];
  os_unfair_lock_lock(&_objectsWithIgnoredErrorsLock);
  if (_objectsWithIgnoredErrors)
  {
    objectID = [sourceCopy objectID];
    if (objectID)
    {
      v7 = [_objectsWithIgnoredErrors objectForKeyedSubscript:objectID];
    }

    else
    {
      v7 = 0;
    }

    os_unfair_lock_unlock(&_objectsWithIgnoredErrorsLock);
    if (v7)
    {
      lastSyncEndDate = [sourceCopy lastSyncEndDate];
      if (lastSyncEndDate && [v7 isEqualToDate:lastSyncEndDate] && objc_msgSend(sourceCopy, "lastSyncError") == 2)
      {
        lastSyncError = 0;
      }
    }
  }

  else
  {
    os_unfair_lock_unlock(&_objectsWithIgnoredErrorsLock);
  }

  if (!lastSyncError)
  {
    lastSyncError = [self errorForSubscribedCalendarChildrenOfSource:sourceCopy];
  }

  return lastSyncError;
}

+ (unint64_t)errorForSubscribedCalendarChildrenOfSource:(id)source
{
  v23 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  sourceType = [sourceCopy sourceType];
  if (sourceType != 4 && sourceType != 2)
  {
    v16 = 0;
    goto LABEL_28;
  }

  [sourceCopy calendarsForEntityType:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
LABEL_8:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      os_unfair_lock_lock(&_objectsWithIgnoredErrorsLock);
      if (!_objectsWithIgnoredErrors)
      {
        break;
      }

      objectID = [v11 objectID];
      if (objectID)
      {
        v13 = [_objectsWithIgnoredErrors objectForKeyedSubscript:objectID];
      }

      else
      {
        v13 = 0;
      }

      os_unfair_lock_unlock(&_objectsWithIgnoredErrorsLock);
      if (!v13)
      {
        goto LABEL_21;
      }

      lastSyncEndDate = [v11 lastSyncEndDate];
      if (!lastSyncEndDate || ([v13 isEqualToDate:lastSyncEndDate] & 1) == 0)
      {

        goto LABEL_21;
      }

LABEL_23:
      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          goto LABEL_8;
        }

        goto LABEL_25;
      }
    }

    os_unfair_lock_unlock(&_objectsWithIgnoredErrorsLock);
    v13 = 0;
LABEL_21:
    if ([v11 lastSyncError] == 7)
    {
      lastSyncStartDate = [v11 lastSyncStartDate];

      if (lastSyncStartDate)
      {

        v16 = 7;
        goto LABEL_27;
      }
    }

    goto LABEL_23;
  }

LABEL_25:
  v16 = 0;
LABEL_27:

LABEL_28:
  return v16;
}

- (void)setSelectedDate:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_DEBUG, "Set selected date to: [%@]", &v3, 0xCu);
}

- (void)setMaxCachedDays:(unsigned int)a1 .cold.1(unsigned int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_DEBUG, "Setting max cached days to: [%lu]", &v2, 0xCu);
}

- (void)cachedOccurrenceAtIndexPath:(uint64_t)a3 usingFilter:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CUIKCalendarModel.m" lineNumber:1215 description:{@"Invalid index path passed to -[CUIKCalendarModel cachedOccurrenceAtIndexPath:usingFilter:]: %@", a3}];
}

- (void)indexPathsForOccurrence:(uint64_t)a3 usingFilter:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CUIKCalendarModel.m" lineNumber:1279 description:{@"Invalid index path passed to -[CUIKCalendarModel cachedOccurrenceAtIndexPath:usingFilter:]: %@", a3}];
}

- (void)removeEvent:(uint64_t *)a1 withSpan:(NSObject *)a2 error:.cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_ERROR, "Remove failed: %@", &v3, 0xCu);
}

@end