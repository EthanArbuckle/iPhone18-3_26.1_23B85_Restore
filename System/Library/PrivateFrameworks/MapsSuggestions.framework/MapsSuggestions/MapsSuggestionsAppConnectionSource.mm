@interface MapsSuggestionsAppConnectionSource
- (MapsSuggestionsAppConnectionSource)initWithPortrait:(id)portrait delegate:(id)delegate guardian:(id)guardian name:(id)name;
- (double)updateSuggestionEntriesWithHandler:(id)handler;
- (id)initFromResourceDepot:(id)depot name:(id)name;
- (void)feedbackForEntry:(id)entry action:(int64_t)action;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsAppConnectionSource

- (void)start
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Start AppConnectionSource", v3, 2u);
  }
}

- (MapsSuggestionsAppConnectionSource)initWithPortrait:(id)portrait delegate:(id)delegate guardian:(id)guardian name:(id)name
{
  portraitCopy = portrait;
  delegateCopy = delegate;
  guardianCopy = guardian;
  nameCopy = name;
  v15 = nameCopy;
  if (!portraitCopy)
  {
    v21 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_14;
    }

    *buf = 136446978;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsAppConnectionSource.m";
    v27 = 1024;
    v28 = 54;
    v29 = 2082;
    v30 = "[MapsSuggestionsAppConnectionSource initWithPortrait:delegate:guardian:name:]";
    v31 = 2082;
    v32 = "nil == (portrait)";
    v22 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a Portrait";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, v22, buf, 0x26u);
    goto LABEL_14;
  }

  if (!delegateCopy)
  {
    v21 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_14;
    }

    *buf = 136446978;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsAppConnectionSource.m";
    v27 = 1024;
    v28 = 55;
    v29 = 2082;
    v30 = "[MapsSuggestionsAppConnectionSource initWithPortrait:delegate:guardian:name:]";
    v31 = 2082;
    v32 = "nil == (delegate)";
    v22 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a delegate";
    goto LABEL_13;
  }

  if (!nameCopy)
  {
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsAppConnectionSource.m";
      v27 = 1024;
      v28 = 56;
      v29 = 2082;
      v30 = "[MapsSuggestionsAppConnectionSource initWithPortrait:delegate:guardian:name:]";
      v31 = 2082;
      v32 = "nil == (name)";
      v22 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a name";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v24.receiver = self;
  v24.super_class = MapsSuggestionsAppConnectionSource;
  v16 = [(MapsSuggestionsAppConnectionSource *)&v24 initWithDelegate:delegateCopy name:nameCopy];
  if (v16)
  {
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("MapsSuggestionsAppConnectionSourceQueue", v17);
    appConnectionUpdateQueue = v16->_appConnectionUpdateQueue;
    v16->_appConnectionUpdateQueue = v18;

    objc_storeStrong(&v16->_portrait, portrait);
    objc_storeStrong(&v16->_guardian, guardian);
  }

  self = v16;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (id)initFromResourceDepot:(id)depot name:(id)name
{
  depotCopy = depot;
  nameCopy = name;
  if (!depotCopy)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    v17 = 136446978;
    v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsAppConnectionSource.m";
    v19 = 1024;
    v20 = 71;
    v21 = 2082;
    v22 = "[MapsSuggestionsAppConnectionSource initFromResourceDepot:name:]";
    v23 = 2082;
    v24 = "nil == (resourceDepot)";
    v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to buid!";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v15, &v17, 0x26u);
    goto LABEL_12;
  }

  oneSourceDelegate = [depotCopy oneSourceDelegate];

  if (!oneSourceDelegate)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    v17 = 136446978;
    v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsAppConnectionSource.m";
    v19 = 1024;
    v20 = 72;
    v21 = 2082;
    v22 = "[MapsSuggestionsAppConnectionSource initFromResourceDepot:name:]";
    v23 = 2082;
    v24 = "nil == (resourceDepot.oneSourceDelegate)";
    v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one SourceDelegate!";
    goto LABEL_11;
  }

  onePortrait = [depotCopy onePortrait];

  if (!onePortrait)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v17 = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsAppConnectionSource.m";
      v19 = 1024;
      v20 = 73;
      v21 = 2082;
      v22 = "[MapsSuggestionsAppConnectionSource initFromResourceDepot:name:]";
      v23 = 2082;
      v24 = "nil == (resourceDepot.onePortrait)";
      v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one Portrait!";
      goto LABEL_11;
    }

LABEL_12:

    selfCopy = 0;
    goto LABEL_13;
  }

  onePortrait2 = [depotCopy onePortrait];
  oneSourceDelegate2 = [depotCopy oneSourceDelegate];
  oneAppGuardian = [depotCopy oneAppGuardian];
  self = [(MapsSuggestionsAppConnectionSource *)self initWithPortrait:onePortrait2 delegate:oneSourceDelegate2 guardian:oneAppGuardian name:nameCopy];

  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (void)stop
{
  [(MapsSuggestionsAppGuardian *)self->_guardian unregisterAllBundleIDsForSource:self];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Stop", v3, 2u);
  }
}

- (double)updateSuggestionEntriesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsAppConnectionSource *)self uniqueName];
    *buf = 138412546;
    v17 = uniqueName;
    v18 = 2080;
    v19 = "updateSuggestionEntriesWithHandler";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v7 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  appConnectionUpdateQueue = self->_appConnectionUpdateQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100040480;
  v13[3] = &unk_100075B88;
  objc_copyWeak(&v15, buf);
  v9 = handlerCopy;
  v14 = v9;
  dispatch_async(appConnectionUpdateQueue, v13);
  GEOConfigGetDouble();
  v11 = v10;

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  return v11;
}

- (void)feedbackForEntry:(id)entry action:(int64_t)action
{
  entryCopy = entry;
  if (!entryCopy)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsAppConnectionSource.m";
      v27 = 1024;
      v28 = 158;
      v29 = 2082;
      v30 = "[MapsSuggestionsAppConnectionSource feedbackForEntry:action:]";
      v31 = 2082;
      v32 = "nil == (entry)";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Entry cannot be nil", buf, 0x26u);
    }

    goto LABEL_23;
  }

  if (+[MapsSuggestionsSiri isEnabled])
  {
    v7 = [entryCopy stringForKey:@"MapsSuggestionsAppConnectionIdentifierKey"];
    v8 = v7;
    if (v7)
    {
      if (action > 1)
      {
        if ((action - 2) < 3)
        {
          portrait = self->_portrait;
          v24 = v7;
          v10 = [NSArray arrayWithObjects:&v24 count:1];
          v11 = portrait;
          v12 = v10;
          v13 = 0;
LABEL_21:
          v20 = 0;
          goto LABEL_22;
        }

        if (action == 5)
        {
          v21 = self->_portrait;
          v23 = v7;
          v10 = [NSArray arrayWithObjects:&v23 count:1];
          v11 = v21;
          v12 = 0;
          v13 = v10;
          goto LABEL_21;
        }

        if (action != 6)
        {
          goto LABEL_19;
        }

LABEL_23:

        goto LABEL_24;
      }

      if (action)
      {
        if (action == 1)
        {
          v19 = self->_portrait;
          v22 = v7;
          v10 = [NSArray arrayWithObjects:&v22 count:1];
          v11 = v19;
          v12 = 0;
          v13 = 0;
          v20 = v10;
LABEL_22:
          [(MapsSuggestionsPortrait *)v11 sendFeedbackforClientID:@"maps" storeType:2 explicitlyEngagedStrings:v12 explicitlyRejectedStrings:v13 implicitlyEngagedStrings:v20 implicitlyRejectedStrings:0];

          goto LABEL_23;
        }

LABEL_19:
        [(MapsSuggestionsPortrait *)self->_portrait sendFeedbackforClientID:@"maps" storeType:2 explicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:0 implicitlyRejectedStrings:0];
        goto LABEL_23;
      }

      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446978;
        v26 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsAppConnectionSource.m";
        v27 = 1024;
        v28 = 178;
        v29 = 2082;
        v30 = "[MapsSuggestionsAppConnectionSource feedbackForEntry:action:]";
        v31 = 2082;
        v32 = "YES";
        v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. EntryEngagementNone not allowed";
        v16 = v14;
        v17 = OS_LOG_TYPE_FAULT;
        v18 = 38;
        goto LABEL_11;
      }
    }

    else
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v15 = "Cannot pass feedback to Portrait. Feedback string was nil";
        v16 = v14;
        v17 = OS_LOG_TYPE_ERROR;
        v18 = 2;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v16, v17, v15, buf, v18);
      }
    }

    goto LABEL_23;
  }

LABEL_24:
}

@end