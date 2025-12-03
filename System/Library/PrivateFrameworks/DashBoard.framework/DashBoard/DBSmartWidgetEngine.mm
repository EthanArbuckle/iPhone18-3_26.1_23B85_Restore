@interface DBSmartWidgetEngine
- (BOOL)_useRangeEnd:(id)end refreshDate:(id)date;
- (BOOL)_useRangeStart:(id)start now:(id)now refreshDate:(id)date;
- (BOOL)active;
- (BOOL)hasHighPriorityPrediction;
- (DBEnvironment)environment;
- (DBSmartWidgetEngine)initWithEnvironment:(id)environment;
- (NSArray)currentPredictions;
- (NSString)description;
- (id)_limitPredictions:(id)predictions;
- (id)_sourceForPrediction:(id)prediction;
- (void)_handleAppLibraryRefresh;
- (void)_postUpdatedCurrentPredictionsIfNeeded;
- (void)_resetCurrentPredictions;
- (void)_start;
- (void)_stop;
- (void)_updatePredictionsFresh;
- (void)_updateWithDashboardStateProvider:(id)provider;
- (void)addObserver:(id)observer;
- (void)currentPredictions;
- (void)dashboardStateProvider:(id)provider didChangeActiveBundleIdentifier:(id)identifier;
- (void)dashboardStateProvider:(id)provider didChangeConnectionReady:(BOOL)ready;
- (void)dashboardStateProvider:(id)provider didChangeHomeScreenPageType:(unint64_t)type;
- (void)dashboardStateProvider:(id)provider didChangeLockoutState:(unint64_t)state;
- (void)dealloc;
- (void)handleEvent:(id)event;
- (void)invalidate;
- (void)refreshDisabled;
- (void)refreshGarageDoors;
- (void)refreshPredictions;
- (void)removeObserver:(id)observer;
- (void)sessionShouldHidePrediction:(id)prediction;
- (void)setNextRefresh:(id)refresh;
- (void)setPredictionsFresh:(BOOL)fresh;
- (void)sourceDidRefresh:(id)refresh predictionsUpdated:(BOOL)updated;
- (void)startIfNeeded;
- (void)stopIfNeeded;
@end

@implementation DBSmartWidgetEngine

- (void)stopIfNeeded
{
  v3 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(DBSmartWidgetEngine *)self stopIfNeeded];
  }

  if ([(DBSmartWidgetEngine *)self active])
  {
    stoppingTimer = [(DBSmartWidgetEngine *)self stoppingTimer];

    if (!stoppingTimer)
    {
      keyExistsAndHasValidFormat = 0;
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"SmartEngineStopDelay", @"com.apple.carplay.internal", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v6 = AppIntegerValue;
      }

      else
      {
        v6 = 480.0;
      }

      v7 = DBLogForCategory(9uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [DBSmartWidgetEngine stopIfNeeded];
      }

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __35__DBSmartWidgetEngine_stopIfNeeded__block_invoke;
      v9[3] = &unk_278F03A78;
      v9[4] = self;
      v8 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v9 block:v6];
      [(DBSmartWidgetEngine *)self setStoppingTimer:v8];
    }
  }
}

- (BOOL)active
{
  sources = [(DBSmartWidgetEngine *)self sources];
  v3 = [sources count] != 0;

  return v3;
}

- (BOOL)hasHighPriorityPrediction
{
  currentPredictions = [(DBSmartWidgetEngine *)self currentPredictions];
  firstObject = [currentPredictions firstObject];
  v4 = [firstObject score] > 19;

  return v4;
}

- (NSArray)currentPredictions
{
  v67 = *MEMORY[0x277D85DE8];
  currentPredictions = self->_currentPredictions;
  if (!currentPredictions)
  {
    v4 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [DBSmartWidgetEngine currentPredictions];
    }

    v5 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    sources = [(DBSmartWidgetEngine *)self sources];
    v7 = [sources countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v56;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v56 != v9)
          {
            objc_enumerationMutation(sources);
          }

          predictions = [*(*(&v55 + 1) + 8 * i) predictions];
          [v5 addObjectsFromArray:predictions];
        }

        v8 = [sources countByEnumeratingWithState:&v55 objects:v66 count:16];
      }

      while (v8);
    }

    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.predictionScore >= %@", &unk_285AA4790];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __41__DBSmartWidgetEngine_currentPredictions__block_invoke;
    v54[3] = &unk_278F03AA0;
    v54[4] = self;
    v13 = [MEMORY[0x277CCAC30] predicateWithBlock:v54];
    v14 = MEMORY[0x277CCA920];
    v39 = v13;
    v40 = v12;
    v65[0] = v12;
    v65[1] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
    v16 = [v14 andPredicateWithSubpredicates:v15];
    [v5 filterUsingPredicate:v16];

    v17 = [MEMORY[0x277CBEAA8] now];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v41 = objc_opt_new();
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v5;
    v44 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
    if (v44)
    {
      v43 = *v51;
      do
      {
        v19 = 0;
        do
        {
          if (*v51 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v50 + 1) + 8 * v19);
          validRanges = [v20 validRanges];
          v22 = [validRanges count] == 0;

          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v45 = v20;
          validRanges2 = [v20 validRanges];
          v24 = [validRanges2 countByEnumeratingWithState:&v46 objects:v63 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v47;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v47 != v26)
                {
                  objc_enumerationMutation(validRanges2);
                }

                v28 = *(*(&v46 + 1) + 8 * j);
                if (![v28 containsDate:v17])
                {
                  if (![(DBSmartWidgetEngine *)self _useRangeStart:v28 now:v17 refreshDate:distantFuture])
                  {
                    continue;
                  }

                  start = [v28 start];
                  goto LABEL_26;
                }

                if ([(DBSmartWidgetEngine *)self _useRangeEnd:v28 refreshDate:distantFuture])
                {
                  start = [v28 end];
                  v22 = 1;
LABEL_26:

                  distantFuture = start;
                  continue;
                }

                v22 = 1;
              }

              v25 = [validRanges2 countByEnumeratingWithState:&v46 objects:v63 count:16];
            }

            while (v25);
          }

          v30 = [(DBSmartWidgetEngine *)self _sourceForPrediction:v45];
          v31 = v30;
          if (v30)
          {
            v22 |= [v30 shouldKeepPrediction:v45];
          }

          v32 = DBLogForCategory(9uLL);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543618;
            v33 = @"NO";
            if (v22)
            {
              v33 = @"YES";
            }

            v60 = v33;
            v61 = 2114;
            v62 = v45;
            _os_log_debug_impl(&dword_248146000, v32, OS_LOG_TYPE_DEBUG, "keep=%{public}@ prediction=%{public}@", buf, 0x16u);
          }

          if (v22)
          {
            [v41 addObject:v45];
          }

          ++v19;
        }

        while (v19 != v44);
        v34 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
        v44 = v34;
      }

      while (v34);
    }

    v35 = v41;
    [(DBSmartWidgetEngine *)self setNextRefresh:distantFuture];
    [v35 sortUsingComparator:&__block_literal_global_30];
    v36 = [(DBSmartWidgetEngine *)self _limitPredictions:v35];

    v37 = self->_currentPredictions;
    self->_currentPredictions = v36;

    currentPredictions = self->_currentPredictions;
  }

  return currentPredictions;
}

- (void)_updatePredictionsFresh
{
  lastRefreshRequest = [a2 lastRefreshRequest];
  v8 = [DBDateFormatter formattedDateTimeStamp:lastRefreshRequest];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_postUpdatedCurrentPredictionsIfNeeded
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (DBSmartWidgetEngine)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v25.receiver = self;
  v25.super_class = DBSmartWidgetEngine;
  v5 = [(DBSmartWidgetEngine *)&v25 init];
  if (v5)
  {
    v6 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [DBSmartWidgetEngine initWithEnvironment:];
    }

    objc_storeWeak(&v5->_environment, environmentCopy);
    v7 = objc_alloc_init(DBHomeManager);
    homeManager = v5->_homeManager;
    v5->_homeManager = v7;

    environmentConfiguration = [environmentCopy environmentConfiguration];
    liveActivityMonitor = [environmentConfiguration liveActivityMonitor];
    liveActivityMonitor = v5->_liveActivityMonitor;
    v5->_liveActivityMonitor = liveActivityMonitor;

    v12 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285AE7A98];
    observers = v5->_observers;
    v5->_observers = v12;

    v14 = objc_opt_new();
    clearedPredictionsForSession = v5->_clearedPredictionsForSession;
    v5->_clearedPredictionsForSession = v14;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, DebugRefreshPredictions, @"com.apple.CarPlay.SmartWidget.refreshPredictions", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v17 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v17, v5, DebugRefreshDisabled, @"com.apple.CarPlay.SmartWidget.refreshDisabled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v18 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v18, v5, DebugRefreshGarageDoors, @"com.apple.CarPlay.SmartWidget.refreshGarageDoors", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v19 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v19, v5, _appLibraryRefreshCallback, @"com.apple.CarPlay.internal.refreshApps", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    objc_opt_class();
    v20 = objc_loadWeakRetained(&v5->_environment);
    if (v20 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      dashboardStateProvider = [v21 dashboardStateProvider];
      [(DBSmartWidgetEngine *)v5 _updateWithDashboardStateProvider:dashboardStateProvider];

      dashboardStateProvider2 = [v21 dashboardStateProvider];
      [dashboardStateProvider2 addObserver:v5];
    }
  }

  return v5;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)startIfNeeded
{
  stoppingTimer = [self stoppingTimer];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)refreshPredictions
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)refreshDisabled
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)refreshGarageDoors
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBSmartWidgetEngine *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBSmartWidgetEngine *)self observers];
  [observers removeObserver:observerCopy];
}

- (void)_resetCurrentPredictions
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_start
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_stop
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)_useRangeEnd:(id)end refreshDate:(id)date
{
  dateCopy = date;
  endCopy = end;
  hasEnd = [endCopy hasEnd];
  v8 = [endCopy end];

  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;
  [dateCopy timeIntervalSinceReferenceDate];
  v12 = v11;

  return (v10 <= v12) & hasEnd;
}

- (BOOL)_useRangeStart:(id)start now:(id)now refreshDate:(id)date
{
  dateCopy = date;
  nowCopy = now;
  startCopy = start;
  hasStart = [startCopy hasStart];
  start = [startCopy start];
  [start timeIntervalSinceReferenceDate];
  v13 = v12;
  [dateCopy timeIntervalSinceReferenceDate];
  v15 = v14;

  start2 = [startCopy start];

  [start2 timeIntervalSinceReferenceDate];
  v18 = v17;
  [nowCopy timeIntervalSinceReferenceDate];
  v20 = v19;

  v21 = v13 <= v15 && v18 >= v20;
  return v21 & hasStart;
}

uint64_t __41__DBSmartWidgetEngine_currentPredictions__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 clearedPredictionsForSession];
  v5 = [v3 uniqueIdentifier];

  LODWORD(v3) = [v4 containsObject:v5];
  return v3 ^ 1;
}

- (id)_limitPredictions:(id)predictions
{
  v52 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  keyExistsAndHasValidFormat[0] = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"SmartEngine_MaxPredictions", @"com.apple.carplay.internal", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    v6 = AppIntegerValue;
  }

  else
  {
    v6 = 6;
  }

  if ([predictionsCopy count] <= v6)
  {
    v8 = predictionsCopy;
  }

  else
  {
    v7 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [DBSmartWidgetEngine _limitPredictions:predictionsCopy];
    }

    v36 = predictionsCopy;

    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v10 = objc_opt_new();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    sources = [(DBSmartWidgetEngine *)self sources];
    v12 = [sources countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v43;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(sources);
          }

          [v9 addObject:objc_opt_class()];
        }

        v13 = [sources countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v13);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v36;
    v16 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v16)
    {
      v18 = v16;
      v19 = *v39;
      *&v17 = 138543362;
      v35 = v17;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v38 + 1) + 8 * j);
          if ([v8 count] >= v6)
          {
            v30 = DBLogForCategory(9uLL);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              [DBSmartWidgetEngine _limitPredictions:];
            }

            goto LABEL_39;
          }

          if ([v9 containsObject:{objc_msgSend(objc_opt_class(), "sourceClass")}])
          {
            v22 = DBLogForCategory(9uLL);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              sourceClass = [objc_opt_class() sourceClass];
              *keyExistsAndHasValidFormat = 138543618;
              v47 = sourceClass;
              v48 = 2114;
              v49 = v21;
              v29 = sourceClass;
              _os_log_debug_impl(&dword_248146000, v22, OS_LOG_TYPE_DEBUG, "[limitPredictions] first from %{public}@ %{public}@", keyExistsAndHasValidFormat, 0x16u);
            }

            [v8 addObject:v21];
            [v9 removeObject:{objc_msgSend(objc_opt_class(), "sourceClass")}];
          }

          else
          {
            v23 = [v8 count];
            v24 = [v9 count] + v23;
            v25 = DBLogForCategory(9uLL);
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
            if (v24 >= v6)
            {
              if (v26)
              {
                *keyExistsAndHasValidFormat = v35;
                v47 = v21;
                _os_log_debug_impl(&dword_248146000, v25, OS_LOG_TYPE_DEBUG, "[limitPredictions] Dropping %{public}@", keyExistsAndHasValidFormat, 0xCu);
              }

              v27 = v10;
            }

            else
            {
              if (v26)
              {
                *keyExistsAndHasValidFormat = v35;
                v47 = v21;
                _os_log_debug_impl(&dword_248146000, v25, OS_LOG_TYPE_DEBUG, "[limitPredictions] Keeping %{public}@", keyExistsAndHasValidFormat, 0xCu);
              }

              v27 = v8;
            }

            [v27 addObject:v21];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_39:

    while ([v8 count] < v6)
    {
      if (![v10 count])
      {
        break;
      }

      firstObject = [v10 firstObject];
      [v10 removeObjectAtIndex:0];
      v32 = DBLogForCategory(9uLL);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *keyExistsAndHasValidFormat = 138543362;
        v47 = firstObject;
        _os_log_debug_impl(&dword_248146000, v32, OS_LOG_TYPE_DEBUG, "[limitPredictions] Adding back %{public}@", keyExistsAndHasValidFormat, 0xCu);
      }

      [v8 addObject:firstObject];
    }

    [v8 sortUsingComparator:&__block_literal_global_301];
    v33 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [(DBSmartWidgetEngine *)v8 _limitPredictions:v10];
    }

    predictionsCopy = v36;
  }

  return v8;
}

- (void)sessionShouldHidePrediction:(id)prediction
{
  predictionCopy = prediction;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  clearedPredictionsForSession = [(DBSmartWidgetEngine *)self clearedPredictionsForSession];
  [clearedPredictionsForSession addObject:predictionCopy];

  [(DBSmartWidgetEngine *)self setUpdatesPending:1];

  [(DBSmartWidgetEngine *)self _postUpdatedCurrentPredictionsIfNeeded];
}

- (void)setPredictionsFresh:(BOOL)fresh
{
  if (self->_predictionsFresh != fresh)
  {
    self->_predictionsFresh = fresh;
    observers = [(DBSmartWidgetEngine *)self observers];
    [observers smartWidgetEngineDidUpdatePredictionsFresh:self];
  }
}

- (void)setNextRefresh:(id)refresh
{
  refreshCopy = refresh;
  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetEngine setNextRefresh:refreshCopy];
  }

  if (![DBComparison isValue:self->_nextRefresh equalTo:refreshCopy])
  {
    objc_storeStrong(&self->_nextRefresh, refresh);
    refreshTimer = [(DBSmartWidgetEngine *)self refreshTimer];
    [refreshTimer invalidate];

    [(DBSmartWidgetEngine *)self setRefreshTimer:0];
    if (refreshCopy && ([MEMORY[0x277CBEAA8] distantFuture], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(refreshCopy, "isEqualToDate:", v8), v8, (v9 & 1) == 0))
    {
      [refreshCopy timeIntervalSinceReferenceDate];
      v12 = v11;
      v13 = [MEMORY[0x277CBEAA8] now];
      [v13 timeIntervalSinceReferenceDate];
      v15 = v12 - v14;

      if (v15 < 0.0)
      {
        v16 = DBLogForCategory(9uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [DBSmartWidgetEngine setNextRefresh:];
        }

        v15 = 60.0;
      }

      v17 = v15 + 1.0;
      v18 = DBLogForCategory(9uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [DBSmartWidgetEngine setNextRefresh:];
      }

      objc_initWeak(&location, self);
      v19 = MEMORY[0x277CBEBB8];
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __38__DBSmartWidgetEngine_setNextRefresh___block_invoke;
      v24 = &unk_278F02770;
      objc_copyWeak(&v25, &location);
      v20 = [v19 scheduledTimerWithTimeInterval:0 repeats:&v21 block:v17];
      [(DBSmartWidgetEngine *)self setRefreshTimer:v20, v21, v22, v23, v24];

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }

    else
    {
      v10 = DBLogForCategory(9uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [DBSmartWidgetEngine setNextRefresh:];
      }
    }
  }
}

void __38__DBSmartWidgetEngine_setNextRefresh___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __38__DBSmartWidgetEngine_setNextRefresh___block_invoke_cold_1();
  }

  if ([WeakRetained active])
  {
    [WeakRetained setUpdatesPending:1];
    [WeakRetained _postUpdatedCurrentPredictionsIfNeeded];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(DBSmartWidgetEngine *)self updatesPending])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(DBSmartWidgetEngine *)self predictionsFresh])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  lastRefreshRequest = [(DBSmartWidgetEngine *)self lastRefreshRequest];
  v9 = [DBDateFormatter formattedDateTimeStamp:lastRefreshRequest];
  sources = [(DBSmartWidgetEngine *)self sources];
  v11 = [v3 stringWithFormat:@"<%@: %p updatesPending=%@ predictionsFresh=%@ lastRefreshRequest=%@ sources=%@>", v5, self, v6, v7, v9, sources];

  return v11;
}

- (id)_sourceForPrediction:(id)prediction
{
  v18 = *MEMORY[0x277D85DE8];
  predictionCopy = prediction;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sources = [(DBSmartWidgetEngine *)self sources];
  v6 = [sources countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(sources);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        predictionClasses = [objc_opt_class() predictionClasses];
        v11 = [predictionClasses containsObject:objc_opt_class()];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [sources countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_handleAppLibraryRefresh
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)invalidate
{
  stoppingTimer = [(DBSmartWidgetEngine *)self stoppingTimer];
  [stoppingTimer invalidate];

  [(DBSmartWidgetEngine *)self _stop];
}

- (void)sourceDidRefresh:(id)refresh predictionsUpdated:(BOOL)updated
{
  updatedCopy = updated;
  refreshCopy = refresh;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetEngine sourceDidRefresh:predictionsUpdated:];
  }

  if (updatedCopy)
  {
    [(DBSmartWidgetEngine *)self setUpdatesPending:1];
  }

  [(DBSmartWidgetEngine *)self _updatePredictionsFresh];
  [(DBSmartWidgetEngine *)self _postUpdatedCurrentPredictionsIfNeeded];
}

- (void)handleEvent:(id)event
{
  eventCopy = event;
  environment = [(DBSmartWidgetEngine *)self environment];
  [environment handleEvent:eventCopy];
}

- (void)dashboardStateProvider:(id)provider didChangeConnectionReady:(BOOL)ready
{
  providerCopy = provider;
  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetEngine dashboardStateProvider:didChangeConnectionReady:];
  }

  [(DBSmartWidgetEngine *)self _updateWithDashboardStateProvider:providerCopy];
}

- (void)dashboardStateProvider:(id)provider didChangeLockoutState:(unint64_t)state
{
  providerCopy = provider;
  v7 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetEngine dashboardStateProvider:state didChangeLockoutState:?];
  }

  [(DBSmartWidgetEngine *)self _updateWithDashboardStateProvider:providerCopy];
}

- (void)dashboardStateProvider:(id)provider didChangeHomeScreenPageType:(unint64_t)type
{
  providerCopy = provider;
  v7 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetEngine dashboardStateProvider:type didChangeHomeScreenPageType:?];
  }

  [(DBSmartWidgetEngine *)self _updateWithDashboardStateProvider:providerCopy];
}

- (void)dashboardStateProvider:(id)provider didChangeActiveBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  providerCopy = provider;
  v8 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetEngine dashboardStateProvider:didChangeActiveBundleIdentifier:];
  }

  [(DBSmartWidgetEngine *)self _updateWithDashboardStateProvider:providerCopy];
}

- (void)_updateWithDashboardStateProvider:(id)provider
{
  providerCopy = provider;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetEngine _updateWithDashboardStateProvider:providerCopy];
  }

  if (![providerCopy connectionReady] || objc_msgSend(providerCopy, "lockoutState") != 2)
  {
    goto LABEL_9;
  }

  activeBundleIdentifier = [providerCopy activeBundleIdentifier];
  if (![activeBundleIdentifier isEqualToString:@"com.apple.CarPlay.dashboard"])
  {

    goto LABEL_9;
  }

  pageType = [providerCopy pageType];

  if (pageType != 1)
  {
LABEL_9:
    [(DBSmartWidgetEngine *)self stopIfNeeded];
    goto LABEL_10;
  }

  [(DBSmartWidgetEngine *)self startIfNeeded];
LABEL_10:
}

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (void)initWithEnvironment:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)currentPredictions
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_limitPredictions:(void *)a1 .cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_limitPredictions:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_limitPredictions:(void *)a1 .cold.3(void *a1, void *a2)
{
  [a1 count];
  [a2 count];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)setNextRefresh:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = [DBDateFormatter formattedTimeStamp:a1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setNextRefresh:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__DBSmartWidgetEngine_setNextRefresh___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sourceDidRefresh:predictionsUpdated:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&dword_248146000, v1, OS_LOG_TYPE_DEBUG, "source=%{public}@ updated=%{public}@", v2, 0x16u);
}

- (void)dashboardStateProvider:(uint64_t)a1 didChangeLockoutState:.cold.1(uint64_t a1)
{
  v1 = NSStringFromLockoutState(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)dashboardStateProvider:(uint64_t)a1 didChangeHomeScreenPageType:.cold.1(uint64_t a1)
{
  v1 = NSStringFromHomeScreenPageType(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)dashboardStateProvider:didChangeActiveBundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_updateWithDashboardStateProvider:(void *)a1 .cold.1(void *a1)
{
  [a1 connectionReady];
  v2 = NSStringFromLockoutState([a1 lockoutState]);
  v3 = [a1 activeBundleIdentifier];
  v9 = NSStringFromHomeScreenPageType([a1 pageType]);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);
}

@end