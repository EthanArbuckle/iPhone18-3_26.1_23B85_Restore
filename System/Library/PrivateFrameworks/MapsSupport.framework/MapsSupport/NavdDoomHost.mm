@interface NavdDoomHost
- (NSString)uniqueName;
- (id)_conditionsForDoomUsingRegister:(id)register;
- (id)initFromResourceDepot:(id)depot sharedRegister:(id)register engine:(id)engine;
- (void)commuteWindowUpdated;
- (void)doomNotificationReceivedWithDetails:(id)details forLOI:(id)i;
@end

@implementation NavdDoomHost

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (id)initFromResourceDepot:(id)depot sharedRegister:(id)register engine:(id)engine
{
  depotCopy = depot;
  registerCopy = register;
  engineCopy = engine;
  if (depotCopy)
  {
    v24.receiver = self;
    v24.super_class = NavdDoomHost;
    v11 = [(NavdDoomHost *)&v24 init];
    if (v11)
    {
      v12 = [MapsSuggestionsDOoMWrapper alloc];
      v13 = +[MapsSuggestionsFirstUnlockTrigger description];
      v14 = [registerCopy objectForKeyedSubscript:v13];
      v25 = v14;
      v15 = [NSArray arrayWithObjects:&v25 count:1];
      v16 = [(NavdDoomHost *)v11 _conditionsForDoomUsingRegister:registerCopy];
      v17 = [v12 initWithResourceDepot:depotCopy triggers:v15 conditions:v16 engine:engineCopy];
      doom = v11->_doom;
      v11->_doom = v17;

      [(MapsSuggestionsDOoMWrapper *)v11->_doom setNotificationDelegate:v11];
      v19 = GEOConfigMapsSuggestionsDurationBetweenDOoMWidgetNudges[1];
      GEOConfigGetDouble();
      v11->_minDurationBetweenWidgetNudges = v20;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v27 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/NavdDoomHost.mm";
      v28 = 1024;
      v29 = 57;
      v30 = 2082;
      v31 = "[NavdDoomHost initFromResourceDepot:sharedRegister:engine:]";
      v32 = 2082;
      v33 = "nil == (resourceDepot)";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. We need a resource depot to build from!", buf, 0x26u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)doomNotificationReceivedWithDetails:(id)details forLOI:(id)i
{
  detailsCopy = details;
  v6 = [MapsSuggestionsEntry entryFromLOI:i];
  if (v6)
  {
    +[MapsSuggestionsEntry removeStaleArchivedDestinations];
    [v6 archiveDestination];
    v7 = objc_alloc_init(NavdNotificationManager);
    [(NavdNotificationManager *)v7 showPredictedRouteTrafficIncidentBulletinForCommuteDetails:detailsCopy];
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = 136446978;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/NavdDoomHost.mm";
      v11 = 1024;
      v12 = 76;
      v13 = 2082;
      v14 = "[NavdDoomHost doomNotificationReceivedWithDetails:forLOI:]";
      v15 = 2082;
      v16 = "nil == (entryFromLOI)";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. EntryFromLOI returned nil. This cannot happen.", &v9, 0x26u);
    }
  }
}

- (id)_conditionsForDoomUsingRegister:(id)register
{
  registerCopy = register;
  v28 = +[NavdMapsSuggestionsLBALocationAccessAllowedCondition description];
  v27 = [registerCopy objectForKeyedSubscript:?];
  v31[0] = v27;
  v26 = +[MapsSuggestionsTransportTypePreferenceCondition description];
  v25 = [registerCopy objectForKeyedSubscript:?];
  v31[1] = v25;
  v24 = +[MapsSuggestionsSiri isEnabledCondition];
  uniqueName = [v24 uniqueName];
  v22 = [registerCopy objectForKeyedSubscript:?];
  v31[2] = v22;
  v21 = +[MapsSuggestionsFirstUnlockTrigger description];
  v20 = [registerCopy objectForKeyedSubscript:?];
  v31[3] = v20;
  v19 = +[MapsSuggestionsMapsInstalledTriggeringToggle description];
  v4 = [registerCopy objectForKeyedSubscript:?];
  v31[4] = v4;
  v5 = +[MapsSuggestionsNavigationStartedTrigger description];
  v6 = [registerCopy objectForKeyedSubscript:v5];
  v7 = [NSString alloc];
  uniqueName2 = [v6 uniqueName];
  capitalizedString = [uniqueName2 capitalizedString];
  v10 = [v7 initWithFormat:@"negated%@", capitalizedString];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10002016C;
  v29[3] = &unk_100065BC8;
  v11 = v6;
  v30 = v11;
  v12 = v10;
  v13 = v29;
  v14 = [[MapsSuggestionsBlockCondition alloc] initWithName:v12 block:v13];

  v31[5] = v14;
  v15 = +[MapsSuggestionsCurrentLocationCondition description];
  v16 = [registerCopy objectForKeyedSubscript:v15];
  v31[6] = v16;
  v17 = [NSArray arrayWithObjects:v31 count:7];

  return v17;
}

- (void)commuteWindowUpdated
{
  if (self->_lastNudge && (+[NSDate now](NSDate, "now"), v3 = objc_claimAutoreleasedReturnValue(), [v3 timeIntervalSinceDate:self->_lastNudge], v5 = v4, minDurationBetweenWidgetNudges = self->_minDurationBetweenWidgetNudges, v3, v5 < minDurationBetweenWidgetNudges))
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = self->_minDurationBetweenWidgetNudges * 0.0166666667;
      v14 = 134217984;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%.0f mins has not passed since the last widget nudge. Ignoring request for a Widget refresh", &v14, 0xCu);
    }
  }

  else
  {
    v9 = +[NSDate now];
    lastNudge = self->_lastNudge;
    self->_lastNudge = v9;

    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "NavdDoomHost: will reload timeline for DOoM commute window update", &v14, 2u);
    }

    v7 = [[CHSTimelineController alloc] initWithExtensionBundleIdentifier:@"com.apple.Maps.GeneralMapsWidget" kind:@"com.apple.Maps"];
    v12 = [v7 reloadTimelineWithReason:@"Got a commute window update while running DOoM"];
    if (v12)
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 138543362;
        v15 = *&v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not reload timeline: %{public}@", &v14, 0xCu);
      }
    }
  }
}

@end