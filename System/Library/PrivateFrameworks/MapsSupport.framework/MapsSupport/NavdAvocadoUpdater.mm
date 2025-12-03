@interface NavdAvocadoUpdater
- (NSString)uniqueName;
- (id)_hashForEntries:(id)entries;
- (id)initFromResourceDepot:(id)depot sharedRegister:(id)register;
- (void)_logStateForStep:(id)step stopReason:(id)reason;
- (void)_reloadTimelineWithReason:(id)reason;
- (void)engineRunner:(id)runner startedBecauseOfTrigger:(id)trigger;
- (void)engineRunner:(id)runner step:(id)step jsonDict:(id)dict;
- (void)engineRunner:(id)runner stoppedWithEntries:(id)entries;
- (void)triggerFired:(id)fired;
@end

@implementation NavdAvocadoUpdater

- (id)initFromResourceDepot:(id)depot sharedRegister:(id)register
{
  depotCopy = depot;
  registerCopy = register;
  if (!depotCopy)
  {
    v77 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v81 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/AvocadoUpdater/NavdAvocadoUpdater.mm";
      v82 = 1024;
      v83 = 119;
      v84 = 2082;
      v85 = "[NavdAvocadoUpdater initFromResourceDepot:sharedRegister:]";
      v86 = 2082;
      v87 = "nil == (resourceDepot)";
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot", buf, 0x26u);
    }

    goto LABEL_13;
  }

  v8 = GEOConfigNavdAvocadoUpdaterEnabled[1];
  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    v77 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, "NavdAvocadoUpdater is Disabled", buf, 2u);
    }

LABEL_13:

    selfCopy = 0;
    goto LABEL_14;
  }

  v79.receiver = self;
  v79.super_class = NavdAvocadoUpdater;
  v9 = [(NavdAvocadoUpdater *)&v79 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    previousEntryHashes = v9->_previousEntryHashes;
    v9->_previousEntryHashes = &__NSArray0__struct;

    v12 = objc_alloc_init(MapsSuggestionsShortcutFilter);
    v13 = [NSSet setWithObjects:v12, 0];

    v14 = +[MapsSuggestionsEngineBuilder forDevice];
    v15 = [v14 withResourceDepot:depotCopy];

    v16 = +[MapsSuggestionsNavdMapsAppLocationManager sharedLocationManager];
    v17 = [v15 withLocationUpdater:v16];

    v18 = [v17 withPreFilters:v13];

    withoutTracker = [v18 withoutTracker];

    v20 = [MapsSuggestionsEngineRunner alloc];
    v21 = GEOConfigNavdAvocadoUpdaterMinRunTime[1];
    GEOConfigGetDouble();
    v23 = v22;
    v24 = GEOConfigNavdAvocadoUpdaterMaxRunTime[1];
    GEOConfigGetDouble();
    v26 = v25;
    v27 = GEOConfigNavdAvocadoUpdaterMinSleepTime[1];
    GEOConfigGetDouble();
    v29 = v28;
    v30 = GEOConfigNavdAvocadoUpdaterMaxSleepTime[1];
    GEOConfigGetDouble();
    v32 = v31;
    v33 = GEOConfigNavdAvocadoUpdaterRunTimeLeeway[1];
    GEOConfigGetDouble();
    v35 = v34;
    v36 = GEOConfigNavdAvocadoUpdaterSleepTimeLeeway[1];
    GEOConfigGetDouble();
    v37 = GEOConfigNavdAvocadoUpdaterEngineRunnerMaxEntries[1];
    v39 = [v20 initWithEngineBuilder:withoutTracker name:@"NavdAvocadoUpdaterRunner" minRunTime:GEOConfigGetInteger() maxRunTime:1 minSleepTime:v23 maxSleepTime:v26 runTimeLeeway:v29 sleepTimeLeeway:v32 maxEntries:v35 nilledWhenAsleep:v38];
    v40 = p_isa[1];
    p_isa[1] = v39;

    [p_isa[1] registerObserver:p_isa];
    v41 = p_isa[1];
    v42 = +[MapsSuggestionsDestinationdTrigger description];
    v43 = [registerCopy objectForKeyedSubscript:v42];
    [v41 addTrigger:v43];

    v44 = p_isa[1];
    v45 = +[MapsSuggestionsSiri isEnabledCondition];
    uniqueName = [v45 uniqueName];
    v47 = [registerCopy objectForKeyedSubscript:uniqueName];
    [v44 addCondition:v47];

    v48 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_1000652D0];
    [p_isa[1] addPostFilter:v48];
    v49 = p_isa[1];
    v50 = +[MapsSuggestionsMapsInstalledTriggeringToggle description];
    v51 = [registerCopy objectForKeyedSubscript:v50];
    [v49 addTrigger:v51];

    v52 = p_isa[1];
    v53 = +[MapsSuggestionsMapsInstalledTriggeringToggle description];
    v54 = [registerCopy objectForKeyedSubscript:v53];
    [v52 addCondition:v54];

    v55 = p_isa[1];
    v56 = +[MapsSuggestionsFirstUnlockTrigger description];
    v57 = [registerCopy objectForKeyedSubscript:v56];
    [v55 addTrigger:v57];

    v58 = p_isa[1];
    v59 = +[MapsSuggestionsFirstUnlockTrigger description];
    v60 = [registerCopy objectForKeyedSubscript:v59];
    [v58 addCondition:v60];

    v61 = p_isa[1];
    v62 = +[MapsSuggestionsBluetoothVehicleConnectionTrigger description];
    v63 = [registerCopy objectForKeyedSubscript:v62];
    [v61 addTrigger:v63];

    v64 = p_isa[1];
    v65 = +[MapsSuggestionsEventKitChangedTrigger description];
    v66 = [registerCopy objectForKeyedSubscript:v65];
    [v64 addTrigger:v66];

    v67 = p_isa[1];
    v68 = +[MapsSuggestionsPreferredTransportTypeTrigger description];
    v69 = [registerCopy objectForKeyedSubscript:v68];
    [v67 addTrigger:v69];

    v70 = p_isa[1];
    v71 = +[MapsSuggestionsUserDeletedSuggestionTrigger description];
    v72 = [registerCopy objectForKeyedSubscript:v71];
    [v70 addTrigger:v72];

    v73 = objc_alloc_init(NavdAvocadoNavigationSessionTrigger);
    v74 = p_isa[3];
    p_isa[3] = v73;

    [p_isa[3] registerObserver:p_isa];
    [p_isa[1] addTrigger:p_isa[3]];
    [p_isa[1] addCondition:p_isa[3]];
    [p_isa[1] runASAP];
    v75 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "initialized", buf, 2u);
    }

    [p_isa _logStateForStep:@"featureInitialized"];
  }

  self = p_isa;
  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (void)_reloadTimelineWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = [[CHSTimelineController alloc] initWithExtensionBundleIdentifier:@"com.apple.Maps.GeneralMapsWidget" kind:@"com.apple.Maps"];
  v6 = [v5 reloadTimelineWithReason:reasonCopy];
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "NavdAvocadoUpdater: could not reload timeline: %{public}@", buf, 0xCu);
    }

    v8 = [[NSString alloc] initWithFormat:@"Could not reload Timeline: %@", v6];
    [(NavdAvocadoUpdater *)self _logStateForStep:@"errorReloadingTimeline" stopReason:v8];
  }
}

- (id)_hashForEntries:(id)entries
{
  entriesCopy = entries;
  v4 = entriesCopy;
  if (!entriesCopy)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/AvocadoUpdater/NavdAvocadoUpdater.mm";
      v12 = 1024;
      v13 = 212;
      v14 = 2082;
      v15 = "[NavdAvocadoUpdater _hashForEntries:]";
      v16 = 2082;
      v17 = "nil == (entries)";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires zero or more Entries. @[] is ok.", buf, 0x26u);
    }

    v6 = 0;
    goto LABEL_7;
  }

  if ([entriesCopy count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000D250;
    v8[3] = &unk_1000652F8;
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v9 = v5;
    [v4 enumerateObjectsUsingBlock:v8];
    v6 = [v5 copy];

LABEL_7:
    goto LABEL_9;
  }

  v6 = &__NSArray0__struct;
LABEL_9:

  return v6;
}

- (void)engineRunner:(id)runner stoppedWithEntries:(id)entries
{
  runnerCopy = runner;
  entriesCopy = entries;
  if (entriesCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = [(NavdAvocadoUpdater *)selfCopy _hashForEntries:entriesCopy];
    v10 = [v9 isEqualToArray:selfCopy->_previousEntryHashes];
    v11 = v10;
    if (v10)
    {
      [(NavdAvocadoUpdater *)selfCopy _logStateForStep:@"noChangeInEntries"];
    }

    else
    {
      v13 = [v9 copy];
      previousEntryHashes = selfCopy->_previousEntryHashes;
      selfCopy->_previousEntryHashes = v13;

      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412290;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Change detected! New hashes: %@", &v17, 0xCu);
      }
    }

    objc_sync_exit(selfCopy);
    if ((v11 & 1) == 0)
    {
      [(NavdAvocadoUpdater *)selfCopy _logStateForStep:@"willUpdateAvocado"];
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "NavdAvocadoUpdater: will reload timeline for MapsSuggestions change", &v17, 2u);
      }

      [(NavdAvocadoUpdater *)selfCopy _reloadTimelineWithReason:@"Change detected in MSg Entries"];
      [(NavdAvocadoUpdater *)selfCopy _logStateForStep:@"didUpdateAvocado"];
    }
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v17 = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/AvocadoUpdater/NavdAvocadoUpdater.mm";
      v19 = 1024;
      v20 = 229;
      v21 = 2082;
      v22 = "[NavdAvocadoUpdater engineRunner:stoppedWithEntries:]";
      v23 = 2082;
      v24 = "nil == (entries)";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires zero or more Entries. @[] is ok.", &v17, 0x26u);
    }
  }
}

- (void)engineRunner:(id)runner startedBecauseOfTrigger:(id)trigger
{
  triggerCopy = trigger;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [triggerCopy uniqueName];
    v8 = 138412290;
    v9 = uniqueName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Triggered by %@", &v8, 0xCu);
  }

  [(NavdAvocadoUpdater *)self _logStateForStep:@"didStart" stopReason:0];
}

- (void)engineRunner:(id)runner step:(id)step jsonDict:(id)dict
{
  stepCopy = step;
  dictCopy = dict;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [dictCopy copy];
  lastEngineRunnerState = selfCopy->_lastEngineRunnerState;
  selfCopy->_lastEngineRunnerState = v9;

  objc_sync_exit(selfCopy);
  [(NavdAvocadoUpdater *)selfCopy _logStateForStep:stepCopy];
}

- (void)triggerFired:(id)fired
{
  if (self->_navSessionTrigger == fired)
  {
    v8 = v3;
    v9 = v4;
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "NavdAvocadoUpdater: will reload timeline for Navigation state change", v7, 2u);
    }

    [(NavdAvocadoUpdater *)self _reloadTimelineWithReason:@"Navigation state change"];
  }
}

- (void)_logStateForStep:(id)step stopReason:(id)reason
{
  stepCopy = step;
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18[0] = @"step";
  v9 = MSg::jsonFor();
  v19[0] = v9;
  v18[1] = @"stopReason";
  v10 = MSg::jsonFor();
  v19[1] = v10;
  v18[2] = @"engineRunner";
  lastEngineRunnerState = selfCopy->_lastEngineRunnerState;
  v12 = MSg::jsonFor();
  v19[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = NSStringFromMapsSuggestionsJSON();
    v16 = 138412290;
    v17 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "EVAL{AvocadoUpdater}=%@", &v16, 0xCu);
  }

  objc_sync_exit(selfCopy);
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

@end