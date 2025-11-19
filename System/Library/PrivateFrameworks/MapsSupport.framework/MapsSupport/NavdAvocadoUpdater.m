@interface NavdAvocadoUpdater
- (NSString)uniqueName;
- (id)_hashForEntries:(id)a3;
- (id)initFromResourceDepot:(id)a3 sharedRegister:(id)a4;
- (void)_logStateForStep:(id)a3 stopReason:(id)a4;
- (void)_reloadTimelineWithReason:(id)a3;
- (void)engineRunner:(id)a3 startedBecauseOfTrigger:(id)a4;
- (void)engineRunner:(id)a3 step:(id)a4 jsonDict:(id)a5;
- (void)engineRunner:(id)a3 stoppedWithEntries:(id)a4;
- (void)triggerFired:(id)a3;
@end

@implementation NavdAvocadoUpdater

- (id)initFromResourceDepot:(id)a3 sharedRegister:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
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

    v76 = 0;
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
    v15 = [v14 withResourceDepot:v6];

    v16 = +[MapsSuggestionsNavdMapsAppLocationManager sharedLocationManager];
    v17 = [v15 withLocationUpdater:v16];

    v18 = [v17 withPreFilters:v13];

    v19 = [v18 withoutTracker];

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
    v39 = [v20 initWithEngineBuilder:v19 name:@"NavdAvocadoUpdaterRunner" minRunTime:GEOConfigGetInteger() maxRunTime:1 minSleepTime:v23 maxSleepTime:v26 runTimeLeeway:v29 sleepTimeLeeway:v32 maxEntries:v35 nilledWhenAsleep:v38];
    v40 = p_isa[1];
    p_isa[1] = v39;

    [p_isa[1] registerObserver:p_isa];
    v41 = p_isa[1];
    v42 = +[MapsSuggestionsDestinationdTrigger description];
    v43 = [v7 objectForKeyedSubscript:v42];
    [v41 addTrigger:v43];

    v44 = p_isa[1];
    v45 = +[MapsSuggestionsSiri isEnabledCondition];
    v46 = [v45 uniqueName];
    v47 = [v7 objectForKeyedSubscript:v46];
    [v44 addCondition:v47];

    v48 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_1000652D0];
    [p_isa[1] addPostFilter:v48];
    v49 = p_isa[1];
    v50 = +[MapsSuggestionsMapsInstalledTriggeringToggle description];
    v51 = [v7 objectForKeyedSubscript:v50];
    [v49 addTrigger:v51];

    v52 = p_isa[1];
    v53 = +[MapsSuggestionsMapsInstalledTriggeringToggle description];
    v54 = [v7 objectForKeyedSubscript:v53];
    [v52 addCondition:v54];

    v55 = p_isa[1];
    v56 = +[MapsSuggestionsFirstUnlockTrigger description];
    v57 = [v7 objectForKeyedSubscript:v56];
    [v55 addTrigger:v57];

    v58 = p_isa[1];
    v59 = +[MapsSuggestionsFirstUnlockTrigger description];
    v60 = [v7 objectForKeyedSubscript:v59];
    [v58 addCondition:v60];

    v61 = p_isa[1];
    v62 = +[MapsSuggestionsBluetoothVehicleConnectionTrigger description];
    v63 = [v7 objectForKeyedSubscript:v62];
    [v61 addTrigger:v63];

    v64 = p_isa[1];
    v65 = +[MapsSuggestionsEventKitChangedTrigger description];
    v66 = [v7 objectForKeyedSubscript:v65];
    [v64 addTrigger:v66];

    v67 = p_isa[1];
    v68 = +[MapsSuggestionsPreferredTransportTypeTrigger description];
    v69 = [v7 objectForKeyedSubscript:v68];
    [v67 addTrigger:v69];

    v70 = p_isa[1];
    v71 = +[MapsSuggestionsUserDeletedSuggestionTrigger description];
    v72 = [v7 objectForKeyedSubscript:v71];
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
  v76 = self;
LABEL_14:

  return v76;
}

- (void)_reloadTimelineWithReason:(id)a3
{
  v4 = a3;
  v5 = [[CHSTimelineController alloc] initWithExtensionBundleIdentifier:@"com.apple.Maps.GeneralMapsWidget" kind:@"com.apple.Maps"];
  v6 = [v5 reloadTimelineWithReason:v4];
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

- (id)_hashForEntries:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
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

  if ([v3 count])
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

- (void)engineRunner:(id)a3 stoppedWithEntries:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(NavdAvocadoUpdater *)v8 _hashForEntries:v7];
    v10 = [v9 isEqualToArray:v8->_previousEntryHashes];
    v11 = v10;
    if (v10)
    {
      [(NavdAvocadoUpdater *)v8 _logStateForStep:@"noChangeInEntries"];
    }

    else
    {
      v13 = [v9 copy];
      previousEntryHashes = v8->_previousEntryHashes;
      v8->_previousEntryHashes = v13;

      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412290;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Change detected! New hashes: %@", &v17, 0xCu);
      }
    }

    objc_sync_exit(v8);
    if ((v11 & 1) == 0)
    {
      [(NavdAvocadoUpdater *)v8 _logStateForStep:@"willUpdateAvocado"];
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "NavdAvocadoUpdater: will reload timeline for MapsSuggestions change", &v17, 2u);
      }

      [(NavdAvocadoUpdater *)v8 _reloadTimelineWithReason:@"Change detected in MSg Entries"];
      [(NavdAvocadoUpdater *)v8 _logStateForStep:@"didUpdateAvocado"];
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

- (void)engineRunner:(id)a3 startedBecauseOfTrigger:(id)a4
{
  v5 = a4;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v5 uniqueName];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Triggered by %@", &v8, 0xCu);
  }

  [(NavdAvocadoUpdater *)self _logStateForStep:@"didStart" stopReason:0];
}

- (void)engineRunner:(id)a3 step:(id)a4 jsonDict:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [v7 copy];
  lastEngineRunnerState = v8->_lastEngineRunnerState;
  v8->_lastEngineRunnerState = v9;

  objc_sync_exit(v8);
  [(NavdAvocadoUpdater *)v8 _logStateForStep:v11];
}

- (void)triggerFired:(id)a3
{
  if (self->_navSessionTrigger == a3)
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

- (void)_logStateForStep:(id)a3 stopReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v18[0] = @"step";
  v9 = MSg::jsonFor();
  v19[0] = v9;
  v18[1] = @"stopReason";
  v10 = MSg::jsonFor();
  v19[1] = v10;
  v18[2] = @"engineRunner";
  lastEngineRunnerState = v8->_lastEngineRunnerState;
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

  objc_sync_exit(v8);
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

@end