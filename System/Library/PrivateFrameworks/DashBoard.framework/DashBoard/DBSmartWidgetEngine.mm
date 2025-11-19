@interface DBSmartWidgetEngine
- (BOOL)_useRangeEnd:(id)a3 refreshDate:(id)a4;
- (BOOL)_useRangeStart:(id)a3 now:(id)a4 refreshDate:(id)a5;
- (BOOL)active;
- (BOOL)hasHighPriorityPrediction;
- (DBEnvironment)environment;
- (DBSmartWidgetEngine)initWithEnvironment:(id)a3;
- (NSArray)currentPredictions;
- (NSString)description;
- (id)_limitPredictions:(id)a3;
- (id)_sourceForPrediction:(id)a3;
- (void)_handleAppLibraryRefresh;
- (void)_postUpdatedCurrentPredictionsIfNeeded;
- (void)_resetCurrentPredictions;
- (void)_start;
- (void)_stop;
- (void)_updatePredictionsFresh;
- (void)_updateWithDashboardStateProvider:(id)a3;
- (void)addObserver:(id)a3;
- (void)currentPredictions;
- (void)dashboardStateProvider:(id)a3 didChangeActiveBundleIdentifier:(id)a4;
- (void)dashboardStateProvider:(id)a3 didChangeConnectionReady:(BOOL)a4;
- (void)dashboardStateProvider:(id)a3 didChangeHomeScreenPageType:(unint64_t)a4;
- (void)dashboardStateProvider:(id)a3 didChangeLockoutState:(unint64_t)a4;
- (void)dealloc;
- (void)handleEvent:(id)a3;
- (void)invalidate;
- (void)refreshDisabled;
- (void)refreshGarageDoors;
- (void)refreshPredictions;
- (void)removeObserver:(id)a3;
- (void)sessionShouldHidePrediction:(id)a3;
- (void)setNextRefresh:(id)a3;
- (void)setPredictionsFresh:(BOOL)a3;
- (void)sourceDidRefresh:(id)a3 predictionsUpdated:(BOOL)a4;
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
    v4 = [(DBSmartWidgetEngine *)self stoppingTimer];

    if (!v4)
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
  v2 = [(DBSmartWidgetEngine *)self sources];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)hasHighPriorityPrediction
{
  v2 = [(DBSmartWidgetEngine *)self currentPredictions];
  v3 = [v2 firstObject];
  v4 = [v3 score] > 19;

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
    v6 = [(DBSmartWidgetEngine *)self sources];
    v7 = [v6 countByEnumeratingWithState:&v55 objects:v66 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v55 + 1) + 8 * i) predictions];
          [v5 addObjectsFromArray:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v55 objects:v66 count:16];
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
    v18 = [MEMORY[0x277CBEAA8] distantFuture];
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
          v21 = [v20 validRanges];
          v22 = [v21 count] == 0;

          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v45 = v20;
          v23 = [v20 validRanges];
          v24 = [v23 countByEnumeratingWithState:&v46 objects:v63 count:16];
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
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v46 + 1) + 8 * j);
                if (![v28 containsDate:v17])
                {
                  if (![(DBSmartWidgetEngine *)self _useRangeStart:v28 now:v17 refreshDate:v18])
                  {
                    continue;
                  }

                  v29 = [v28 start];
                  goto LABEL_26;
                }

                if ([(DBSmartWidgetEngine *)self _useRangeEnd:v28 refreshDate:v18])
                {
                  v29 = [v28 end];
                  v22 = 1;
LABEL_26:

                  v18 = v29;
                  continue;
                }

                v22 = 1;
              }

              v25 = [v23 countByEnumeratingWithState:&v46 objects:v63 count:16];
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
    [(DBSmartWidgetEngine *)self setNextRefresh:v18];
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
  v2 = [a2 lastRefreshRequest];
  v8 = [DBDateFormatter formattedDateTimeStamp:v2];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_postUpdatedCurrentPredictionsIfNeeded
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (DBSmartWidgetEngine)initWithEnvironment:(id)a3
{
  v4 = a3;
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

    objc_storeWeak(&v5->_environment, v4);
    v7 = objc_alloc_init(DBHomeManager);
    homeManager = v5->_homeManager;
    v5->_homeManager = v7;

    v9 = [v4 environmentConfiguration];
    v10 = [v9 liveActivityMonitor];
    liveActivityMonitor = v5->_liveActivityMonitor;
    v5->_liveActivityMonitor = v10;

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
      v22 = [v21 dashboardStateProvider];
      [(DBSmartWidgetEngine *)v5 _updateWithDashboardStateProvider:v22];

      v23 = [v21 dashboardStateProvider];
      [v23 addObserver:v5];
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
  v1 = [a1 stoppingTimer];
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

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBSmartWidgetEngine *)self observers];
  [v5 addObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBSmartWidgetEngine *)self observers];
  [v5 removeObserver:v4];
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

- (BOOL)_useRangeEnd:(id)a3 refreshDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 hasEnd];
  v8 = [v6 end];

  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;
  [v5 timeIntervalSinceReferenceDate];
  v12 = v11;

  return (v10 <= v12) & v7;
}

- (BOOL)_useRangeStart:(id)a3 now:(id)a4 refreshDate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 hasStart];
  v11 = [v9 start];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;
  [v7 timeIntervalSinceReferenceDate];
  v15 = v14;

  v16 = [v9 start];

  [v16 timeIntervalSinceReferenceDate];
  v18 = v17;
  [v8 timeIntervalSinceReferenceDate];
  v20 = v19;

  v21 = v13 <= v15 && v18 >= v20;
  return v21 & v10;
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

- (id)_limitPredictions:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

  if ([v4 count] <= v6)
  {
    v8 = v4;
  }

  else
  {
    v7 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [DBSmartWidgetEngine _limitPredictions:v4];
    }

    v36 = v4;

    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v10 = objc_opt_new();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v11 = [(DBSmartWidgetEngine *)self sources];
    v12 = [v11 countByEnumeratingWithState:&v42 objects:v51 count:16];
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
            objc_enumerationMutation(v11);
          }

          [v9 addObject:objc_opt_class()];
        }

        v13 = [v11 countByEnumeratingWithState:&v42 objects:v51 count:16];
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
              v28 = [objc_opt_class() sourceClass];
              *keyExistsAndHasValidFormat = 138543618;
              v47 = v28;
              v48 = 2114;
              v49 = v21;
              v29 = v28;
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

      v31 = [v10 firstObject];
      [v10 removeObjectAtIndex:0];
      v32 = DBLogForCategory(9uLL);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *keyExistsAndHasValidFormat = 138543362;
        v47 = v31;
        _os_log_debug_impl(&dword_248146000, v32, OS_LOG_TYPE_DEBUG, "[limitPredictions] Adding back %{public}@", keyExistsAndHasValidFormat, 0xCu);
      }

      [v8 addObject:v31];
    }

    [v8 sortUsingComparator:&__block_literal_global_301];
    v33 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [(DBSmartWidgetEngine *)v8 _limitPredictions:v10];
    }

    v4 = v36;
  }

  return v8;
}

- (void)sessionShouldHidePrediction:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(DBSmartWidgetEngine *)self clearedPredictionsForSession];
  [v5 addObject:v4];

  [(DBSmartWidgetEngine *)self setUpdatesPending:1];

  [(DBSmartWidgetEngine *)self _postUpdatedCurrentPredictionsIfNeeded];
}

- (void)setPredictionsFresh:(BOOL)a3
{
  if (self->_predictionsFresh != a3)
  {
    self->_predictionsFresh = a3;
    v5 = [(DBSmartWidgetEngine *)self observers];
    [v5 smartWidgetEngineDidUpdatePredictionsFresh:self];
  }
}

- (void)setNextRefresh:(id)a3
{
  v5 = a3;
  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetEngine setNextRefresh:v5];
  }

  if (![DBComparison isValue:self->_nextRefresh equalTo:v5])
  {
    objc_storeStrong(&self->_nextRefresh, a3);
    v7 = [(DBSmartWidgetEngine *)self refreshTimer];
    [v7 invalidate];

    [(DBSmartWidgetEngine *)self setRefreshTimer:0];
    if (v5 && ([MEMORY[0x277CBEAA8] distantFuture], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v5, "isEqualToDate:", v8), v8, (v9 & 1) == 0))
    {
      [v5 timeIntervalSinceReferenceDate];
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

  v8 = [(DBSmartWidgetEngine *)self lastRefreshRequest];
  v9 = [DBDateFormatter formattedDateTimeStamp:v8];
  v10 = [(DBSmartWidgetEngine *)self sources];
  v11 = [v3 stringWithFormat:@"<%@: %p updatesPending=%@ predictionsFresh=%@ lastRefreshRequest=%@ sources=%@>", v5, self, v6, v7, v9, v10];

  return v11;
}

- (id)_sourceForPrediction:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(DBSmartWidgetEngine *)self sources];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [objc_opt_class() predictionClasses];
        v11 = [v10 containsObject:objc_opt_class()];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(DBSmartWidgetEngine *)self stoppingTimer];
  [v3 invalidate];

  [(DBSmartWidgetEngine *)self _stop];
}

- (void)sourceDidRefresh:(id)a3 predictionsUpdated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetEngine sourceDidRefresh:predictionsUpdated:];
  }

  if (v4)
  {
    [(DBSmartWidgetEngine *)self setUpdatesPending:1];
  }

  [(DBSmartWidgetEngine *)self _updatePredictionsFresh];
  [(DBSmartWidgetEngine *)self _postUpdatedCurrentPredictionsIfNeeded];
}

- (void)handleEvent:(id)a3
{
  v4 = a3;
  v5 = [(DBSmartWidgetEngine *)self environment];
  [v5 handleEvent:v4];
}

- (void)dashboardStateProvider:(id)a3 didChangeConnectionReady:(BOOL)a4
{
  v5 = a3;
  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetEngine dashboardStateProvider:didChangeConnectionReady:];
  }

  [(DBSmartWidgetEngine *)self _updateWithDashboardStateProvider:v5];
}

- (void)dashboardStateProvider:(id)a3 didChangeLockoutState:(unint64_t)a4
{
  v6 = a3;
  v7 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetEngine dashboardStateProvider:a4 didChangeLockoutState:?];
  }

  [(DBSmartWidgetEngine *)self _updateWithDashboardStateProvider:v6];
}

- (void)dashboardStateProvider:(id)a3 didChangeHomeScreenPageType:(unint64_t)a4
{
  v6 = a3;
  v7 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetEngine dashboardStateProvider:a4 didChangeHomeScreenPageType:?];
  }

  [(DBSmartWidgetEngine *)self _updateWithDashboardStateProvider:v6];
}

- (void)dashboardStateProvider:(id)a3 didChangeActiveBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetEngine dashboardStateProvider:didChangeActiveBundleIdentifier:];
  }

  [(DBSmartWidgetEngine *)self _updateWithDashboardStateProvider:v7];
}

- (void)_updateWithDashboardStateProvider:(id)a3
{
  v4 = a3;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetEngine _updateWithDashboardStateProvider:v4];
  }

  if (![v4 connectionReady] || objc_msgSend(v4, "lockoutState") != 2)
  {
    goto LABEL_9;
  }

  v6 = [v4 activeBundleIdentifier];
  if (![v6 isEqualToString:@"com.apple.CarPlay.dashboard"])
  {

    goto LABEL_9;
  }

  v7 = [v4 pageType];

  if (v7 != 1)
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