@interface MapsSuggestionsEngineRunner
- (MapsSuggestionsEngineRunner)initWithEngineBuilder:(id)builder name:(id)name minRunTime:(double)time maxRunTime:(double)runTime minSleepTime:(double)sleepTime maxSleepTime:(double)maxSleepTime maxEntries:(unint64_t)entries;
- (MapsSuggestionsEngineRunner)initWithEngineBuilder:(id)builder name:(id)name minRunTime:(double)time maxRunTime:(double)runTime minSleepTime:(double)sleepTime maxSleepTime:(double)maxSleepTime runTimeLeeway:(double)leeway sleepTimeLeeway:(double)self0 maxEntries:(unint64_t)self1 nilledWhenAsleep:(BOOL)self2;
- (MapsSuggestionsEngineRunner)initWithEngineBuilder:(id)builder name:(id)name minRunTime:(double)time maxRunTime:(double)runTime minSleepTime:(double)sleepTime maxSleepTime:(double)maxSleepTime runTimeLeeway:(double)leeway sleepTimeLeeway:(double)self0 maxEntries:(unint64_t)self1 nilledWhenAsleep:(BOOL)self2 wakeUpTimerClass:(Class)self3;
- (MapsSuggestionsEngineRunner)initWithEngineBuilder:(id)builder name:(id)name minRunTime:(double)time maxRunTime:(double)runTime minSleepTime:(double)sleepTime maxSleepTime:(double)maxSleepTime runTimeLeeway:(double)leeway sleepTimeLeeway:(double)self0 maxEntries:(unint64_t)self1 nilledWhenAsleep:(BOOL)self2 wakeUpTimerClass:(Class)self3 stopRunTimerClass:(Class)self4;
- (MapsSuggestionsEngineRunner)initWithEngineBuilder:(id)builder name:(id)name minRunTime:(double)time maxRunTime:(double)runTime minSleepTime:(double)sleepTime runTimeLeeway:(double)leeway sleepTimeLeeway:(double)timeLeeway maxEntries:(unint64_t)self0 nilledWhenAsleep:(BOOL)self1;
- (id).cxx_construct;
- (id)objectForJSON;
- (uint64_t)_q_passedAllConditions;
- (uint64_t)_q_scheduleStopRun;
- (void)_q_fetchEntries;
- (void)_q_fetchLatestAutomobileOptions;
- (void)_q_passedAllConditions;
- (void)_q_runASAP;
- (void)_q_scheduleASAPWakeUp;
- (void)_q_scheduleStopRun;
- (void)_q_scheduleWakeUp;
- (void)_q_sendStateForStep:(uint64_t)step;
- (void)_q_startRunBecauseOfTrigger:(uint64_t)trigger;
- (void)_q_stopRun;
- (void)_q_triggerFired:(uint64_t)fired;
- (void)_q_updateMinSleep;
- (void)_q_wakeUp;
- (void)addCondition:(id)condition;
- (void)addConditions:(id)conditions;
- (void)addPostFilter:(id)filter;
- (void)addTrigger:(id)trigger;
- (void)addTriggers:(id)triggers;
- (void)invalidateForMapsSuggestionsManager:(id)manager;
- (void)registerObserver:(id)observer;
- (void)removeCondition:(id)condition;
- (void)removeConditions:(id)conditions;
- (void)removeTrigger:(id)trigger;
- (void)removeTriggers:(id)triggers;
- (void)runASAP;
- (void)scheduleNextRun;
- (void)triggerFired:(id)fired;
@end

@implementation MapsSuggestionsEngineRunner

- (uint64_t)_q_passedAllConditions
{
  v26 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x1E69A1B08];
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [v1 uniqueName];
      *buf = 138412546;
      v23 = uniqueName;
      v24 = 2080;
      v25 = "[MapsSuggestionsEngineRunner _q_passedAllConditions]";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{%@} %s", buf, 0x16u);
    }

    dispatch_assert_queue_V2(*(v1 + 8));
    v5 = *(v1 + 176);
    *(v1 + 176) = 0;

    [(MapsSuggestionsEngineRunner *)v1 _q_sendStateForStep:?];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Checking all Conditions...", buf, 2u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = *(v1 + 120);
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if (([v11 isTrue] & 1) == 0)
          {
            v12 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              uniqueName2 = [v11 uniqueName];
              *buf = 138412290;
              v23 = uniqueName2;
              _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "RUNCONDITION{%@} failed", buf, 0xCu);
            }

            uniqueName3 = [v11 uniqueName];
            v15 = [uniqueName3 copy];
            v16 = *(v1 + 176);
            *(v1 + 176) = v15;

            [(MapsSuggestionsEngineRunner *)v1 _q_sendStateForStep:?];
            return 0;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    [(MapsSuggestionsEngineRunner *)v7 _q_passedAllConditions];
    return 1;
  }

  return result;
}

- (void)_q_passedAllConditions
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Passed all Conditions!", v5, 2u);
  }

  [(MapsSuggestionsEngineRunner *)a3 _q_sendStateForStep:?];
}

- (void)_q_updateMinSleep
{
  OUTLINED_FUNCTION_1_4();
  v2 = *(v1 + 80);
  *v3 = 138412546;
  *(v3 + 4) = v4;
  *(v3 + 12) = 2048;
  *(v3 + 14) = v2;
  _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "{%@} sleeping for at least %.3f sec", v5, 0x16u);
}

- (void)_q_fetchLatestAutomobileOptions
{
  v5 = @"NO";
  if (self)
  {
    v5 = @"YES";
  }

  *a2 = 138412290;
  *(a2 + 4) = v5;
  OUTLINED_FUNCTION_0_8(&dword_1C5126000, a2, a3, "Avoid Highways:%@", a2);
}

- (uint64_t)_q_scheduleStopRun
{
  if (result)
  {
    v1 = result;
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      [v1 uniqueName];
      objc_claimAutoreleasedReturnValue();
      [MapsSuggestionsEngineRunner _q_scheduleStopRun];
    }

    return [(MapsSuggestionsEngineRunner *)v2 _q_scheduleStopRun];
  }

  return result;
}

- (void)_q_fetchEntries
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [self uniqueName];
      *buf = 138412546;
      v9 = uniqueName;
      v10 = 2080;
      v11 = "[MapsSuggestionsEngineRunner _q_fetchEntries]";
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "{%@} %s", buf, 0x16u);
    }

    dispatch_assert_queue_V2(*(self + 8));
    objc_initWeak(buf, self);
    v4 = *(self + 24);
    v5 = *(self + 136);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__MapsSuggestionsEngineRunner__q_fetchEntries__block_invoke;
    v6[3] = &unk_1E81F8200;
    objc_copyWeak(&v7, buf);
    [v4 topSuggestionsForSink:self count:v5 transportType:4 callback:v6 onQueue:*(self + 8)];
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

void __46__MapsSuggestionsEngineRunner__q_fetchEntries__block_invoke(uint64_t a1, void *a2, void *a3)
{
  *&v21[13] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "MapsSuggestionsEngineRunner.mm";
      v20 = 1026;
      *v21 = 685;
      v21[2] = 2082;
      *&v21[3] = "[MapsSuggestionsEngineRunner _q_fetchEntries]_block_invoke";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    goto LABEL_12;
  }

  if (!v5 || v6)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [WeakRetained uniqueName];
      *buf = 138412546;
      v19 = v13;
      v20 = 2112;
      *v21 = v6;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%@: Error fetching Entries: %@", buf, 0x16u);
    }

LABEL_12:

    goto LABEL_17;
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [WeakRetained uniqueName];
    *buf = 138412546;
    v19 = v9;
    v20 = 1024;
    *v21 = [v5 count];
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "{%@} received %u Entries", buf, 0x12u);
  }

  v10 = [v5 copy];
  objc_storeStrong(WeakRetained + 25, v10);
  if (MapsSuggestionsIsInTheFuture(WeakRetained[19]))
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [WeakRetained uniqueName];
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "{%@} is not telling anyone what it knows yet...", buf, 0xCu);
    }
  }

  else
  {
    v14 = WeakRetained[6];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __46__MapsSuggestionsEngineRunner__q_fetchEntries__block_invoke_92;
    v16[3] = &unk_1E81F81D8;
    v16[4] = WeakRetained;
    v15 = v10;
    v17 = v15;
    [v14 callBlock:v16];

    v10 = v15;
  }

LABEL_17:
}

- (MapsSuggestionsEngineRunner)initWithEngineBuilder:(id)builder name:(id)name minRunTime:(double)time maxRunTime:(double)runTime minSleepTime:(double)sleepTime maxSleepTime:(double)maxSleepTime runTimeLeeway:(double)leeway sleepTimeLeeway:(double)self0 maxEntries:(unint64_t)self1 nilledWhenAsleep:(BOOL)self2 wakeUpTimerClass:(Class)self3 stopRunTimerClass:(Class)self4
{
  builderCopy = builder;
  nameCopy = name;
  v78.receiver = self;
  v78.super_class = MapsSuggestionsEngineRunner;
  v28 = [(MapsSuggestionsEngineRunner *)&v78 init];
  if (v28)
  {
    v71 = nameCopy;
    nameCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@Queue", nameCopy];
    entriesCopy = entries;
    asleepCopy = asleep;
    v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(&location, nameCopy, v30);
    v31 = location;
    location = 0;
    innerQueue = v28->_queue._innerQueue;
    v28->_queue._innerQueue = v31;

    v33 = v77;
    v77 = 0;
    name = v28->_queue._name;
    v28->_queue._name = v33;

    v35 = [nameCopy copy];
    timerClassCopy = timerClass;
    v36 = builderCopy;
    v37 = [MapsSuggestionsObservers alloc];
    v38 = v28->_queue._innerQueue;
    nameCopy2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@Observers", nameCopy];
    v40 = [(MapsSuggestionsObservers *)v37 initWithCallbackQueue:v38 name:nameCopy2];
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    classCopy = class;
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    circuits = v28->_config.circuits;
    v28->_config.circuits = v35;

    triggers = v28->_config.triggers;
    v28->_config.triggers = v36;

    conditions = v28->_config.conditions;
    v28->_config.conditions = v40;

    v47 = *v28->_anon_38;
    *v28->_anon_38 = 0;

    *&v28->_anon_38[8] = time;
    *&v28->_anon_38[16] = runTime;
    *&v28->_anon_38[24] = sleepTime;
    *&v28->_anon_38[32] = maxSleepTime;
    *&v28->_anon_38[40] = leeway;
    *&v28->_anon_38[48] = timeLeeway;
    v48 = *&v28->_anon_38[56];
    *&v28->_anon_38[56] = v41;

    v49 = *&v28->_anon_38[64];
    *&v28->_anon_38[64] = v42;

    v50 = *&v28->_anon_38[72];
    *&v28->_anon_38[72] = v43;

    *&v28->_anon_38[80] = entriesCopy;
    v28->_anon_38[88] = asleepCopy;

    objc_initWeak(&location, v28);
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    distantPast2 = [MEMORY[0x1E695DF00] distantPast];
    v53 = [timerClassCopy alloc];
    v54 = v28->_queue._innerQueue;
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __199__MapsSuggestionsEngineRunner_initWithEngineBuilder_name_minRunTime_maxRunTime_minSleepTime_maxSleepTime_runTimeLeeway_sleepTimeLeeway_maxEntries_nilledWhenAsleep_wakeUpTimerClass_stopRunTimerClass___block_invoke;
    v74[3] = &unk_1E81F5208;
    objc_copyWeak(&v75, &location);
    v55 = [v53 initWithName:@"MapsSuggestionsEngineRunnerRunTimer" queue:v54 block:v74];
    v56 = [classCopy alloc];
    v57 = v28->_queue._innerQueue;
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __199__MapsSuggestionsEngineRunner_initWithEngineBuilder_name_minRunTime_maxRunTime_minSleepTime_maxSleepTime_runTimeLeeway_sleepTimeLeeway_maxEntries_nilledWhenAsleep_wakeUpTimerClass_stopRunTimerClass___block_invoke_26;
    v72[3] = &unk_1E81F5208;
    objc_copyWeak(&v73, &location);
    v58 = [v56 initWithName:@"MapsSuggestionsEngineRunnerSleepTimer" queue:v57 block:v72];
    firedTriggerName = v28->_state.firedTriggerName;
    v28->_state.firedTriggerName = distantPast;

    failedConditionName = v28->_state.failedConditionName;
    v28->_state.failedConditionName = distantPast2;

    lastError = v28->_state.lastError;
    v28->_state.lastError = 0;

    v62 = *&v28->_state.active;
    *&v28->_state.active = 0;

    v63 = *v28->_anon_b8;
    *v28->_anon_b8 = v55;

    v64 = *&v28->_anon_b8[8];
    *&v28->_anon_b8[8] = v58;

    v65 = *&v28->_anon_b8[16];
    *&v28->_anon_b8[16] = 0;

    objc_destroyWeak(&v73);
    objc_destroyWeak(&v75);
    objc_destroyWeak(&location);
    nameCopy = v71;
  }

  return v28;
}

void __199__MapsSuggestionsEngineRunner_initWithEngineBuilder_name_minRunTime_maxRunTime_minSleepTime_maxSleepTime_runTimeLeeway_sleepTimeLeeway_maxEntries_nilledWhenAsleep_wakeUpTimerClass_stopRunTimerClass___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsEngineRunner *)WeakRetained _q_stopRun];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsEngineRunner.mm";
      v6 = 1026;
      v7 = 188;
      v8 = 2082;
      v9 = "[MapsSuggestionsEngineRunner initWithEngineBuilder:name:minRunTime:maxRunTime:minSleepTime:maxSleepTime:runTimeLeeway:sleepTimeLeeway:maxEntries:nilledWhenAsleep:wakeUpTimerClass:stopRunTimerClass:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)_q_stopRun
{
  v23 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [self uniqueName];
      *buf = 138412546;
      v20 = uniqueName;
      v21 = 2080;
      v22 = "[MapsSuggestionsEngineRunner _q_stopRun]";
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "{%@} %s", buf, 0x16u);
    }

    dispatch_assert_queue_V2(*(self + 8));
    v4 = [*(self + 200) copy];
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      uniqueName2 = [self uniqueName];
      *buf = 138412290;
      v20 = uniqueName2;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{%@} detaching Engine", buf, 0xCu);
    }

    [*(self + 24) detachSink:self];
    [(MapsSuggestionsEngineRunner *)self _q_sendStateForStep:?];
    objc_initWeak(&location, self);
    v7 = *(self + 48);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __41__MapsSuggestionsEngineRunner__q_stopRun__block_invoke;
    v15[3] = &unk_1E81F8168;
    objc_copyWeak(&v17, &location);
    v8 = v4;
    v16 = v8;
    [v7 callBlock:v15];
    if (*(self + 144) == 1)
    {
      [(MapsSuggestionsEngineRunner *)self _q_sendStateForStep:?];
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        uniqueName3 = [self uniqueName];
        *buf = 138412290;
        v20 = uniqueName3;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "{%@} destroying Engine", buf, 0xCu);
      }

      v11 = *(self + 24);
      *(self + 24) = 0;
    }

    v12 = *(self + 200);
    *(self + 200) = 0;

    v13 = *(self + 168);
    *(self + 168) = 0;

    v14 = *(self + 176);
    *(self + 176) = 0;

    [(MapsSuggestionsEngineRunner *)self _q_scheduleWakeUp];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __199__MapsSuggestionsEngineRunner_initWithEngineBuilder_name_minRunTime_maxRunTime_minSleepTime_maxSleepTime_runTimeLeeway_sleepTimeLeeway_maxEntries_nilledWhenAsleep_wakeUpTimerClass_stopRunTimerClass___block_invoke_26(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsEngineRunner *)WeakRetained _q_wakeUp];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsEngineRunner.mm";
      v6 = 1026;
      v7 = 194;
      v8 = 2082;
      v9 = "[MapsSuggestionsEngineRunner initWithEngineBuilder:name:minRunTime:maxRunTime:minSleepTime:maxSleepTime:runTimeLeeway:sleepTimeLeeway:maxEntries:nilledWhenAsleep:wakeUpTimerClass:stopRunTimerClass:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)_q_wakeUp
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_2_7(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_8(&dword_1C5126000, v3, v4, "{%@} failed at least one Condition. Rescheduling.", v5);
}

- (MapsSuggestionsEngineRunner)initWithEngineBuilder:(id)builder name:(id)name minRunTime:(double)time maxRunTime:(double)runTime minSleepTime:(double)sleepTime runTimeLeeway:(double)leeway sleepTimeLeeway:(double)timeLeeway maxEntries:(unint64_t)self0 nilledWhenAsleep:(BOOL)self1
{
  asleepCopy = asleep;
  builderCopy = builder;
  nameCopy = name;
  GEOConfigGetDouble();
  v23 = v22;
  v24 = objc_opt_class();
  v25 = [(MapsSuggestionsEngineRunner *)self initWithEngineBuilder:builderCopy name:nameCopy minRunTime:entries maxRunTime:asleepCopy minSleepTime:v24 maxSleepTime:objc_opt_class() runTimeLeeway:time sleepTimeLeeway:runTime maxEntries:sleepTime nilledWhenAsleep:v23 wakeUpTimerClass:leeway stopRunTimerClass:timeLeeway];

  return v25;
}

- (MapsSuggestionsEngineRunner)initWithEngineBuilder:(id)builder name:(id)name minRunTime:(double)time maxRunTime:(double)runTime minSleepTime:(double)sleepTime maxSleepTime:(double)maxSleepTime runTimeLeeway:(double)leeway sleepTimeLeeway:(double)self0 maxEntries:(unint64_t)self1 nilledWhenAsleep:(BOOL)self2 wakeUpTimerClass:(Class)self3
{
  asleepCopy = asleep;
  builderCopy = builder;
  nameCopy = name;
  v26 = [(MapsSuggestionsEngineRunner *)self initWithEngineBuilder:builderCopy name:nameCopy minRunTime:entries maxRunTime:asleepCopy minSleepTime:class maxSleepTime:objc_opt_class() runTimeLeeway:time sleepTimeLeeway:runTime maxEntries:sleepTime nilledWhenAsleep:maxSleepTime wakeUpTimerClass:leeway stopRunTimerClass:timeLeeway];

  return v26;
}

- (MapsSuggestionsEngineRunner)initWithEngineBuilder:(id)builder name:(id)name minRunTime:(double)time maxRunTime:(double)runTime minSleepTime:(double)sleepTime maxSleepTime:(double)maxSleepTime runTimeLeeway:(double)leeway sleepTimeLeeway:(double)self0 maxEntries:(unint64_t)self1 nilledWhenAsleep:(BOOL)self2
{
  asleepCopy = asleep;
  builderCopy = builder;
  nameCopy = name;
  v24 = [(MapsSuggestionsEngineRunner *)self initWithEngineBuilder:builderCopy name:nameCopy minRunTime:entries maxRunTime:asleepCopy minSleepTime:objc_opt_class() maxSleepTime:time runTimeLeeway:runTime sleepTimeLeeway:sleepTime maxEntries:maxSleepTime nilledWhenAsleep:leeway wakeUpTimerClass:timeLeeway];

  return v24;
}

- (MapsSuggestionsEngineRunner)initWithEngineBuilder:(id)builder name:(id)name minRunTime:(double)time maxRunTime:(double)runTime minSleepTime:(double)sleepTime maxSleepTime:(double)maxSleepTime maxEntries:(unint64_t)entries
{
  builderCopy = builder;
  nameCopy = name;
  v18 = [(MapsSuggestionsEngineRunner *)self initWithEngineBuilder:builderCopy name:nameCopy minRunTime:entries maxRunTime:1 minSleepTime:objc_opt_class() maxSleepTime:time runTimeLeeway:runTime sleepTimeLeeway:sleepTime maxEntries:maxSleepTime nilledWhenAsleep:1.0 wakeUpTimerClass:1.0];

  return v18;
}

- (void)registerObserver:(id)observer
{
  v19 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsEngineRunner *)self uniqueName];
    uniqueName2 = [observerCopy uniqueName];
    *buf = 138412802;
    v14 = uniqueName;
    v15 = 2080;
    v16 = "[MapsSuggestionsEngineRunner registerObserver:]";
    v17 = 2112;
    v18 = uniqueName2;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{%@} %s %@", buf, 0x20u);
  }

  [(NSArray *)self->_config.conditions registerObserver:observerCopy handler:0];
  objc_initWeak(buf, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__MapsSuggestionsEngineRunner_registerObserver___block_invoke;
  v10[3] = &unk_1E81F5970;
  objc_copyWeak(&v12, buf);
  v11 = observerCopy;
  innerQueue = self->_queue._innerQueue;
  v9 = observerCopy;
  dispatch_async(innerQueue, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __48__MapsSuggestionsEngineRunner_registerObserver___block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v44 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = *(a1 + 32);
    v57[0] = @"now";
    v32 = MapsSuggestionsNow();
    v58 = MSg::jsonFor(v32, v5);
    v57[1] = @"location";
    v33 = v58;
    v34 = MapsSuggestionsCurrentBestLocation();
    MSg::jsonFor(v34, v6);
    v59 = v31 = v4;
    v57[2] = @"minSilenceDate";
    v29 = v45;
    v35 = v59;
    v60 = MSg::jsonFor(v45, v7);
    v57[3] = @"earliestRunDate";
    v28 = v46;
    v36 = v60;
    v9 = MSg::jsonFor(v46, v8);
    v61 = v9;
    v57[4] = @"stopRunTimer";
    v10 = v49;
    v37 = v9;
    v41 = v10;
    if (v10)
    {
      [v10 objectForJSON];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v42 = ;

    v62 = v42;
    v57[5] = @"wakeUpTimer";
    v12 = v50;
    v13 = v12;
    if (v12)
    {
      [v12 objectForJSON];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v43 = ;

    v63 = v43;
    v57[6] = @"entries";
    v30 = v51;
    v38 = MSg::jsonFor(v51);
    v64 = v38;
    v57[7] = @"firedTriggerName";
    v27 = v47;
    v39 = MSg::jsonFor(v47);
    v65 = v39;
    v57[8] = @"failedConditionName";
    v26 = v48;
    v40 = MSg::jsonFor(v48);
    v66 = v40;
    v57[9] = @"conditions";
    v14 = v52[11];
    if (v14)
    {
      v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v14, "count")}];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v53 objects:buf count:16];
      if (v17)
      {
        v18 = *v54;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v54 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v53 + 1) + 8 * i);
            v21 = v20;
            if (v20)
            {
              [v20 objectForJSON];
            }

            else
            {
              [MEMORY[0x1E695DFB0] null];
            }
            v22 = ;

            v23 = [v21 nameForJSON];
            [v15 setObject:v22 forKeyedSubscript:v23];
          }

          v17 = [v16 countByEnumeratingWithState:&v53 objects:buf count:16];
        }

        while (v17);
      }

      v24 = [v15 copy];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
    }

    v67 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:v57 count:10];

    [v31 engineRunner:v44 step:@"observing" jsonDict:v25];
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v69 = "MapsSuggestionsEngineRunner.mm";
      v70 = 1026;
      v71 = 321;
      v72 = 2082;
      v73 = "[MapsSuggestionsEngineRunner registerObserver:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (void)addTrigger:(id)trigger
{
  v16 = *MEMORY[0x1E69E9840];
  triggerCopy = trigger;
  v5 = triggerCopy;
  if (triggerCopy)
  {
    v7 = triggerCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
    [(MapsSuggestionsEngineRunner *)self addTriggers:v6];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngineRunner.mm";
      v10 = 1024;
      v11 = 331;
      v12 = 2082;
      v13 = "[MapsSuggestionsEngineRunner addTrigger:]";
      v14 = 2082;
      v15 = "nil == (trigger)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Trigger cannot be nil", buf, 0x26u);
    }
  }
}

- (void)addTriggers:(id)triggers
{
  v18 = *MEMORY[0x1E69E9840];
  triggersCopy = triggers;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsEngineRunner *)self uniqueName];
    *buf = 138412802;
    v13 = uniqueName;
    v14 = 2080;
    v15 = "[MapsSuggestionsEngineRunner addTriggers:]";
    v16 = 2112;
    v17 = triggersCopy;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{%@} %s %@", buf, 0x20u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__MapsSuggestionsEngineRunner_addTriggers___block_invoke;
  v9[3] = &unk_1E81F69F0;
  v10 = triggersCopy;
  selfCopy = self;
  innerQueue = self->_queue._innerQueue;
  v8 = triggersCopy;
  dispatch_async(innerQueue, v9);
}

void __43__MapsSuggestionsEngineRunner_addTriggers___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        [*(*(a1 + 40) + 112) addObject:{v6, v7}];
        [v6 registerObserver:*(a1 + 40)];
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)removeTrigger:(id)trigger
{
  v6[1] = *MEMORY[0x1E69E9840];
  triggerCopy = trigger;
  v6[0] = triggerCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(MapsSuggestionsEngineRunner *)self removeTriggers:v5];
}

- (void)removeTriggers:(id)triggers
{
  v18 = *MEMORY[0x1E69E9840];
  triggersCopy = triggers;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsEngineRunner *)self uniqueName];
    *buf = 138412802;
    v13 = uniqueName;
    v14 = 2080;
    v15 = "[MapsSuggestionsEngineRunner removeTriggers:]";
    v16 = 2112;
    v17 = triggersCopy;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{%@} %s %@", buf, 0x20u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__MapsSuggestionsEngineRunner_removeTriggers___block_invoke;
  v9[3] = &unk_1E81F69F0;
  v10 = triggersCopy;
  selfCopy = self;
  innerQueue = self->_queue._innerQueue;
  v8 = triggersCopy;
  dispatch_async(innerQueue, v9);
}

void __46__MapsSuggestionsEngineRunner_removeTriggers___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        [v6 unregisterObserver:{*(a1 + 40), v7}];
        [*(*(a1 + 40) + 112) removeObject:v6];
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)addCondition:(id)condition
{
  v16 = *MEMORY[0x1E69E9840];
  conditionCopy = condition;
  v5 = conditionCopy;
  if (conditionCopy)
  {
    v7 = conditionCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
    [(MapsSuggestionsEngineRunner *)self addConditions:v6];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngineRunner.mm";
      v10 = 1024;
      v11 = 364;
      v12 = 2082;
      v13 = "[MapsSuggestionsEngineRunner addCondition:]";
      v14 = 2082;
      v15 = "nil == (condition)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Condition cannot be nil", buf, 0x26u);
    }
  }
}

- (void)addConditions:(id)conditions
{
  v18 = *MEMORY[0x1E69E9840];
  conditionsCopy = conditions;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsEngineRunner *)self uniqueName];
    *buf = 138412802;
    v13 = uniqueName;
    v14 = 2080;
    v15 = "[MapsSuggestionsEngineRunner addConditions:]";
    v16 = 2112;
    v17 = conditionsCopy;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{%@} %s %@", buf, 0x20u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__MapsSuggestionsEngineRunner_addConditions___block_invoke;
  v9[3] = &unk_1E81F69F0;
  v10 = conditionsCopy;
  selfCopy = self;
  innerQueue = self->_queue._innerQueue;
  v8 = conditionsCopy;
  dispatch_async(innerQueue, v9);
}

void __45__MapsSuggestionsEngineRunner_addConditions___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 120) addObject:{*(*(&v6 + 1) + 8 * v5++), v6}];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)addPostFilter:(id)filter
{
  v18 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsEngineRunner *)self uniqueName];
    uniqueName2 = [filterCopy uniqueName];
    *buf = 138412802;
    v13 = uniqueName;
    v14 = 2080;
    v15 = "[MapsSuggestionsEngineRunner addPostFilter:]";
    v16 = 2112;
    v17 = uniqueName2;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{%@} %s %@", buf, 0x20u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__MapsSuggestionsEngineRunner_addPostFilter___block_invoke;
  v10[3] = &unk_1E81F69F0;
  v10[4] = self;
  v11 = filterCopy;
  innerQueue = self->_queue._innerQueue;
  v9 = filterCopy;
  dispatch_async(innerQueue, v10);
}

void *__45__MapsSuggestionsEngineRunner_addPostFilter___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 128) addObject:*(a1 + 40)];
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    v3 = *(a1 + 40);

    return [result addAdditionalFilter:v3 forSink:?];
  }

  return result;
}

- (void)removeCondition:(id)condition
{
  v16 = *MEMORY[0x1E69E9840];
  conditionCopy = condition;
  v5 = conditionCopy;
  if (conditionCopy)
  {
    v7 = conditionCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
    [(MapsSuggestionsEngineRunner *)self removeConditions:v6];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngineRunner.mm";
      v10 = 1024;
      v11 = 391;
      v12 = 2082;
      v13 = "[MapsSuggestionsEngineRunner removeCondition:]";
      v14 = 2082;
      v15 = "nil == (condition)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Condition cannot be nil", buf, 0x26u);
    }
  }
}

- (void)removeConditions:(id)conditions
{
  v18 = *MEMORY[0x1E69E9840];
  conditionsCopy = conditions;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsEngineRunner *)self uniqueName];
    *buf = 138412802;
    v13 = uniqueName;
    v14 = 2080;
    v15 = "[MapsSuggestionsEngineRunner removeConditions:]";
    v16 = 2112;
    v17 = conditionsCopy;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{%@} %s %@", buf, 0x20u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__MapsSuggestionsEngineRunner_removeConditions___block_invoke;
  v9[3] = &unk_1E81F69F0;
  v10 = conditionsCopy;
  selfCopy = self;
  innerQueue = self->_queue._innerQueue;
  v8 = conditionsCopy;
  dispatch_async(innerQueue, v9);
}

void __48__MapsSuggestionsEngineRunner_removeConditions___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 120) removeObject:{*(*(&v6 + 1) + 8 * v5++), v6}];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_q_sendStateForStep:(uint64_t)step
{
  location[16] = *MEMORY[0x1E69E9840];
  v56 = a2;
  if (step)
  {
    dispatch_assert_queue_V2(*(step + 8));
    val = step;
    v75[0] = @"now";
    v39 = MapsSuggestionsNow();
    v76 = MSg::jsonFor(v39, v3);
    v75[1] = @"location";
    v37 = v76;
    v41 = MapsSuggestionsCurrentBestLocation();
    v77 = MSg::jsonFor(v41, v4);
    v75[2] = @"minSilenceDate";
    v5 = v63;
    v43 = v77;
    v78 = MSg::jsonFor(v63, v6);
    v75[3] = @"earliestRunDate";
    v33 = v64;
    v45 = v78;
    v8 = MSg::jsonFor(v64, v7);
    v79 = v8;
    v75[4] = @"stopRunTimer";
    v9 = v67;
    v57 = v9;
    if (v9)
    {
      [v9 objectForJSON];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v10 = ;

    v80 = v10;
    v75[5] = @"wakeUpTimer";
    v11 = v68;
    v12 = v11;
    if (v11)
    {
      [v11 objectForJSON];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v58 = ;

    v81 = v58;
    v75[6] = @"entries";
    v35 = v69;
    v49 = MSg::jsonFor(v69);
    v82 = v49;
    v75[7] = @"firedTriggerName";
    v31 = v65;
    v51 = MSg::jsonFor(v65);
    v83 = v51;
    v75[8] = @"failedConditionName";
    v27 = v5;
    v29 = v66;
    v53 = MSg::jsonFor(v66);
    v84 = v53;
    v75[9] = @"conditions";
    v13 = v70[11];
    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v13, "count", v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v8, v10, v49, v51, v53)}];
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v71 objects:location count:16];
      if (v16)
      {
        v17 = *v72;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v72 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v71 + 1) + 8 * i);
            v20 = v19;
            if (v19)
            {
              [v19 objectForJSON];
            }

            else
            {
              [MEMORY[0x1E695DFB0] null];
            }
            v21 = ;

            nameForJSON = [v20 nameForJSON];
            [v14 setObject:v21 forKeyedSubscript:nameForJSON];
          }

          v16 = [v15 countByEnumeratingWithState:&v71 objects:location count:16];
        }

        while (v16);
      }

      null = [v14 copy];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v85 = null;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:v75 count:10];

    objc_initWeak(location, val);
    v25 = val[6];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __51__MapsSuggestionsEngineRunner__q_sendStateForStep___block_invoke;
    v59[3] = &unk_1E81F8228;
    objc_copyWeak(&v62, location);
    v60 = v56;
    v61 = v24;
    v26 = v24;
    [v25 callBlock:v59];

    objc_destroyWeak(&v62);
    objc_destroyWeak(location);
  }
}

- (void)_q_startRunBecauseOfTrigger:(uint64_t)trigger
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (trigger)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [trigger uniqueName];
      uniqueName2 = [v3 uniqueName];
      *buf = 138412802;
      v35 = uniqueName;
      v36 = 2080;
      v37 = "[MapsSuggestionsEngineRunner _q_startRunBecauseOfTrigger:]";
      v38 = 2112;
      v39 = uniqueName2;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{%@} %s %@", buf, 0x20u);
    }

    dispatch_assert_queue_V2(*(trigger + 8));
    uniqueName3 = [v3 uniqueName];
    v8 = [uniqueName3 copy];
    v9 = *(trigger + 168);
    *(trigger + 168) = v8;

    [(MapsSuggestionsEngineRunner *)trigger _q_sendStateForStep:?];
    if (!*(trigger + 24))
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        uniqueName4 = [trigger uniqueName];
        *buf = 138412290;
        v35 = uniqueName4;
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "{%@} Building Engine", buf, 0xCu);
      }

      [(MapsSuggestionsEngineRunner *)trigger _q_sendStateForStep:?];
      build = [*(trigger + 40) build];
      v13 = *(trigger + 24);
      *(trigger + 24) = build;

      [(MapsSuggestionsEngineRunner *)trigger _q_fetchLatestAutomobileOptions];
      [*(trigger + 24) setAutomobileOptions:*(trigger + 56)];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v14 = *(trigger + 128);
      v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v15)
      {
        v16 = *v30;
        do
        {
          v17 = 0;
          do
          {
            if (*v30 != v16)
            {
              objc_enumerationMutation(v14);
            }

            [*(trigger + 24) addAdditionalFilter:*(*(&v29 + 1) + 8 * v17++) forSink:trigger];
          }

          while (v15 != v17);
          v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v15);
      }

      [(MapsSuggestionsEngineRunner *)trigger _q_sendStateForStep:?];
    }

    v18 = MapsSuggestionsNowWithOffset(*(trigger + 64));
    v19 = *(trigger + 152);
    *(trigger + 152) = v18;

    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      uniqueName5 = [trigger uniqueName];
      v22 = *(trigger + 152);
      *buf = 138412546;
      v35 = uniqueName5;
      v36 = 2112;
      v37 = v22;
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "{%@} will be silent until %@", buf, 0x16u);
    }

    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      uniqueName6 = [trigger uniqueName];
      *buf = 138412290;
      v35 = uniqueName6;
      _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_DEBUG, "{%@} attaching Engine", buf, 0xCu);
    }

    [(MapsSuggestionsEngineRunner *)trigger _q_scheduleStopRun];
    [(MapsSuggestionsEngineRunner *)trigger _q_sendStateForStep:?];
    [*(trigger + 24) attachSink:trigger];
    [(MapsSuggestionsEngineRunner *)trigger _q_fetchEntries];
    objc_initWeak(buf, trigger);
    v25 = *(trigger + 48);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __59__MapsSuggestionsEngineRunner__q_startRunBecauseOfTrigger___block_invoke;
    v26[3] = &unk_1E81F8168;
    objc_copyWeak(&v28, buf);
    v27 = v3;
    [v25 callBlock:v26];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }
}

void __59__MapsSuggestionsEngineRunner__q_startRunBecauseOfTrigger___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [v3 engineRunner:WeakRetained startedBecauseOfTrigger:*(a1 + 32)];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsEngineRunner.mm";
      v8 = 1026;
      v9 = 484;
      v10 = 2082;
      v11 = "[MapsSuggestionsEngineRunner _q_startRunBecauseOfTrigger:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void __41__MapsSuggestionsEngineRunner__q_stopRun__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v5 = *(a1 + 32);
    }

    else
    {
      v5 = MEMORY[0x1E695E0F0];
    }

    [v3 engineRunner:WeakRetained stoppedWithEntries:v5];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsEngineRunner.mm";
      v9 = 1026;
      v10 = 504;
      v11 = 2082;
      v12 = "[MapsSuggestionsEngineRunner _q_stopRun]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

- (void)_q_scheduleWakeUp
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    if (*(self + 88) != 0.0)
    {
      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        uniqueName = [self uniqueName];
        v4 = *(self + 88);
        v5 = *(self + 104);
        v6 = 138412802;
        v7 = uniqueName;
        v8 = 2048;
        v9 = v4;
        v10 = 2048;
        v11 = v5;
        _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "{%@} scheduling _q_wakeUp in %.3f sec (+ %.3f sec)", &v6, 0x20u);
      }

      [(MapsSuggestionsEngineRunner *)v2 _q_scheduleWakeUp];
    }
  }
}

- (void)_q_scheduleASAPWakeUp
{
  v13 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    if (*(self + 80) != 0.0)
    {
      v2 = MapsSuggestionsIsInTheFuture(*(self + 160));
      GEOFindOrCreateLog();
      v4 = v3 = v2;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        uniqueName = [self uniqueName];
        v6 = *(self + 104);
        v7 = 138412802;
        v8 = uniqueName;
        v9 = 2048;
        v10 = v3;
        v11 = 2048;
        v12 = v6;
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{%@} scheduling _q_scheduleASAPWakeUp in %.3f sec (+ %.3f sec)", &v7, 0x20u);
      }

      [(MapsSuggestionsEngineRunner *)v4 _q_scheduleASAPWakeUp];
    }
  }
}

- (void)_q_runASAP
{
  OUTLINED_FUNCTION_1_4();
  v2 = *v1;
  *v3 = 138412546;
  *(v3 + 4) = v4;
  *(v3 + 12) = 2112;
  *(v3 + 14) = v2;
  _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "{%@} needs to sleep until at least %@. Ignoring runASAP.", v5, 0x16u);
}

- (void)scheduleNextRun
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsEngineRunner *)self uniqueName];
    v5 = 138412546;
    v6 = uniqueName;
    v7 = 2080;
    v8 = "[MapsSuggestionsEngineRunner scheduleNextRun]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{%@} %s", &v5, 0x16u);
  }

  MSg::Queue::async<MapsSuggestionsEngineRunner>(&self->_queue, self, &__block_literal_global_33);
}

- (void)runASAP
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsEngineRunner *)self uniqueName];
    v5 = 138412546;
    v6 = uniqueName;
    v7 = 2080;
    v8 = "[MapsSuggestionsEngineRunner runASAP]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{%@} %s", &v5, 0x16u);
  }

  MSg::Queue::async<MapsSuggestionsEngineRunner>(&self->_queue, self, &__block_literal_global_88_0);
}

- (void)_q_triggerFired:(uint64_t)fired
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (fired)
  {
    dispatch_assert_queue_V2(*(fired + 8));
    uniqueName = [v3 uniqueName];
    v5 = [uniqueName copy];
    v6 = *(fired + 168);
    *(fired + 168) = v5;

    if (MapsSuggestionsIsInTheFuture(*(fired + 160)))
    {
      if (GEOConfigGetBOOL())
      {
        [(MapsSuggestionsEngineRunner *)fired _q_scheduleASAPWakeUp];
        v7 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          uniqueName2 = [fired uniqueName];
          v9 = *(fired + 160);
          uniqueName3 = [v3 uniqueName];
          v16 = 138412802;
          v17 = uniqueName2;
          v18 = 2112;
          v19 = v9;
          v20 = 2112;
          v21 = uniqueName3;
          _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{%@} is within the minSleepTime window. Will run after %@. Ignoring Trigger: %@", &v16, 0x20u);
        }
      }

      [(MapsSuggestionsEngineRunner *)fired _q_sendStateForStep:?];
LABEL_15:
      v14 = *(fired + 168);
      *(fired + 168) = 0;

      v15 = *(fired + 176);
      *(fired + 176) = 0;

      goto LABEL_16;
    }

    if (([(MapsSuggestionsEngineRunner *)fired _q_passedAllConditions]& 1) == 0)
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [fired uniqueName];
        objc_claimAutoreleasedReturnValue();
        [MapsSuggestionsEngineRunner _q_triggerFired:];
      }

      goto LABEL_15;
    }

    [(MapsSuggestionsEngineRunner *)fired _q_updateMinSleep];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      uniqueName4 = [fired uniqueName];
      v16 = 138412290;
      v17 = uniqueName4;
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "{%@} is allowed to run!", &v16, 0xCu);
    }

    [(MapsSuggestionsEngineRunner *)fired _q_startRunBecauseOfTrigger:v3];
  }

LABEL_16:
}

- (void)triggerFired:(id)fired
{
  v15 = *MEMORY[0x1E69E9840];
  firedCopy = fired;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsEngineRunner *)self uniqueName];
    uniqueName2 = [firedCopy uniqueName];
    *buf = 138412546;
    v12 = uniqueName;
    v13 = 2112;
    v14 = uniqueName2;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{%@} fired TRIGGER{%@}!", buf, 0x16u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__MapsSuggestionsEngineRunner_triggerFired___block_invoke;
  v9[3] = &unk_1E81F81B0;
  v8 = firedCopy;
  v10 = v8;
  MSg::Queue::async<MapsSuggestionsEngineRunner>(&self->_queue, self, v9);
}

- (void)invalidateForMapsSuggestionsManager:(id)manager
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsEngineRunner *)self uniqueName];
    v6 = 138412546;
    v7 = uniqueName;
    v8 = 2080;
    v9 = "[MapsSuggestionsEngineRunner invalidateForMapsSuggestionsManager:]";
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{%@} %s", &v6, 0x16u);
  }

  MSg::Queue::async<MapsSuggestionsEngineRunner>(&self->_queue, self, &__block_literal_global_95);
}

void __51__MapsSuggestionsEngineRunner__q_sendStateForStep___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [v3 engineRunner:WeakRetained step:*(a1 + 32) jsonDict:*(a1 + 40)];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsEngineRunner.mm";
      v8 = 1026;
      v9 = 754;
      v10 = 2082;
      v11 = "[MapsSuggestionsEngineRunner _q_sendStateForStep:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (id)objectForJSON
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__18;
  v9 = __Block_byref_object_dispose__18;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__MapsSuggestionsEngineRunner_objectForJSON__block_invoke;
  v4[3] = &unk_1E81F5BC8;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(self->_queue._innerQueue, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __44__MapsSuggestionsEngineRunner_objectForJSON__block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v1 = a1 + 32;
  v58[0] = @"now";
  v35 = MapsSuggestionsNow();
  v59 = MSg::jsonFor(v35, v2);
  v58[1] = @"location";
  v34 = v59;
  v36 = MapsSuggestionsCurrentBestLocation();
  v60 = MSg::jsonFor(v36, v3);
  v58[2] = @"minSilenceDate";
  v29 = v46;
  v37 = v60;
  v38 = MSg::jsonFor(v46, v4);
  v61 = v38;
  v58[3] = @"earliestRunDate";
  v27 = v47;
  v39 = MSg::jsonFor(v47, v5);
  v62 = v39;
  v58[4] = @"stopRunTimer";
  v6 = v50;
  v43 = v6;
  if (v6)
  {
    [v6 objectForJSON];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v44 = ;

  v63 = v44;
  v58[5] = @"wakeUpTimer";
  v7 = v51;
  v8 = v7;
  if (v7)
  {
    [v7 objectForJSON];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v45 = ;

  v64 = v45;
  v58[6] = @"entries";
  v31 = v52;
  v40 = MSg::jsonFor(v52);
  v65 = v40;
  v58[7] = @"firedTriggerName";
  v25 = v48;
  v41 = MSg::jsonFor(v48);
  v66 = v41;
  v58[8] = @"failedConditionName";
  v23 = v49;
  v42 = MSg::jsonFor(v49);
  v67 = v42;
  v58[9] = @"conditions";
  v9 = v53[11];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count", v23, v25, v27, v29, v31)}];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v54 objects:v69 count:16];
    if (v12)
    {
      v13 = *v55;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v55 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v54 + 1) + 8 * i);
          v16 = v15;
          if (v15)
          {
            [v15 objectForJSON];
          }

          else
          {
            [MEMORY[0x1E695DFB0] null];
          }
          v17 = ;

          v18 = [v16 nameForJSON];
          [v10 setObject:v17 forKeyedSubscript:v18];
        }

        v12 = [v11 countByEnumeratingWithState:&v54 objects:v69 count:16];
      }

      while (v12);
    }

    v19 = [v10 copy];
  }

  else
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:v58 count:10];

  v21 = *(*(a1 + 40) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;
}

- (id).cxx_construct
{
  self->_queue._innerQueue = 0;
  self->_queue._name = 0;
  *&self->_config.circuits = 0u;
  *&self->_config.conditions = 0u;
  *&self->_anon_38[64] = 0;
  *&self->_anon_38[72] = 0;
  *&self->_anon_38[56] = 0;
  self->_state.firedTriggerName = [MEMORY[0x1E695DF00] distantPast];
  self->_state.failedConditionName = [MEMORY[0x1E695DF00] distantPast];
  *&self->_state.lastError = 0u;
  *self->_anon_b8 = 0u;
  *&self->_anon_b8[16] = 0;
  return self;
}

- (void)_q_scheduleStopRun
{
  OUTLINED_FUNCTION_1_4();
  v2 = *(v1 + 72);
  v3 = *(v1 + 96);
  *v4 = 138412802;
  *(v4 + 4) = v5;
  *(v4 + 12) = 2048;
  *(v4 + 14) = v2;
  *(v4 + 22) = 2048;
  *(v4 + 24) = v3;
  _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{%@} scheduling _q_stopRun in %.3f sec (+ %.3f sec)", v6, 0x20u);
}

- (void)_q_triggerFired:.cold.1()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_2_7(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_8(&dword_1C5126000, v3, v4, "{%@} failed at least one Condition. Continuing sleep.", v5);
}

@end