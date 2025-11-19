@interface MapsSuggestionsPortraitSource
- (MapsSuggestionsPortraitSource)initWithPortrait:(id)a3 delegate:(id)a4 name:(id)a5;
- (double)updateSuggestionEntriesWithHandler:(id)a3;
- (id)initFromResourceDepot:(id)a3 name:(id)a4;
- (void)feedbackForContact:(id)a3 action:(int64_t)a4;
- (void)feedbackForEntry:(id)a3 action:(int64_t)a4;
- (void)feedbackForMapItem:(id)a3 action:(int64_t)a4;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsPortraitSource

- (MapsSuggestionsPortraitSource)initWithPortrait:(id)a3 delegate:(id)a4 name:(id)a5
{
  v9 = a3;
  v15.receiver = self;
  v15.super_class = MapsSuggestionsPortraitSource;
  v10 = [(MapsSuggestionsPortraitSource *)&v15 initWithDelegate:a4 name:a5];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("MapsSuggestionsPortraitSourceQueue", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    objc_storeStrong(&v10->_portrait, a3);
  }

  return v10;
}

- (id)initFromResourceDepot:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    v16 = 136446978;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitSource.m";
    v18 = 1024;
    v19 = 66;
    v20 = 2082;
    v21 = "[MapsSuggestionsPortraitSource initFromResourceDepot:name:]";
    v22 = 2082;
    v23 = "nil == (resourceDepot)";
    v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to buid!";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, v14, &v16, 0x26u);
    goto LABEL_12;
  }

  v8 = [v6 oneSourceDelegate];

  if (!v8)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    v16 = 136446978;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitSource.m";
    v18 = 1024;
    v19 = 67;
    v20 = 2082;
    v21 = "[MapsSuggestionsPortraitSource initFromResourceDepot:name:]";
    v22 = 2082;
    v23 = "nil == (resourceDepot.oneSourceDelegate)";
    v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one SourceDelegate!";
    goto LABEL_11;
  }

  v9 = [v6 onePortrait];

  if (!v9)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitSource.m";
      v18 = 1024;
      v19 = 68;
      v20 = 2082;
      v21 = "[MapsSuggestionsPortraitSource initFromResourceDepot:name:]";
      v22 = 2082;
      v23 = "nil == (resourceDepot.onePortrait)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one Portrait!";
      goto LABEL_11;
    }

LABEL_12:

    v12 = 0;
    goto LABEL_13;
  }

  v10 = [v6 onePortrait];
  v11 = [v6 oneSourceDelegate];
  self = [(MapsSuggestionsPortraitSource *)self initWithPortrait:v10 delegate:v11 name:v7];

  v12 = self;
LABEL_13:

  return v12;
}

- (void)start
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "start", v3, 2u);
  }
}

- (void)stop
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "stop", v3, 2u);
  }
}

- (double)updateSuggestionEntriesWithHandler:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(MapsSuggestionsPortraitSource *)self uniqueName];
    *buf = 138412546;
    v23 = v6;
    v24 = 2080;
    v25 = "updateSuggestionEntriesWithHandler";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v7 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", buf, 2u);
  }

  v8 = MapsSuggestionsCurrentBestLocation();
  if (v8)
  {
    objc_initWeak(buf, self);
    queue = self->_queue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100014284;
    v17[3] = &unk_1000755B0;
    objc_copyWeak(&v21, buf);
    v18 = v8;
    v19 = self;
    v20 = v4;
    dispatch_async(queue, v17);
    GEOConfigGetDouble();
    v11 = v10;

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v4)
    {
      v4[2](v4);
    }

    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(MapsSuggestionsPortraitSource *)self uniqueName];
      *buf = 138412546;
      v23 = v13;
      v24 = 2080;
      v25 = "updateSuggestionEntriesWithHandler";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
    }

    v14 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", buf, 2u);
    }

    GEOConfigGetDouble();
    v11 = v15;
  }

  return v11;
}

- (void)feedbackForEntry:(id)a3 action:(int64_t)a4
{
  v6 = a3;
  if (+[MapsSuggestionsSiri isEnabled])
  {
    if ([v6 containsKey:@"MapsSuggestionsPortraitClientIdentifier"])
    {
      v7 = [v6 stringForKey:@"MapsSuggestionsPortraitClientIdentifier"];
    }

    else
    {
      v7 = @"maps";
    }

    v8 = [v6 undecoratedTitle];
    if ([v6 containsKey:@"MapsSuggestionsEntryTitleNameKey"])
    {
      v9 = [v6 stringForKey:@"MapsSuggestionsEntryTitleNameKey"];

      v8 = v9;
    }

    if (v8)
    {
      if (a4 > 1)
      {
        if ((a4 - 2) < 3)
        {
          portrait = self->_portrait;
          v25 = v8;
          v11 = v8;
          v12 = [NSArray arrayWithObjects:&v25 count:1];
          v13 = portrait;
          v14 = v7;
          v15 = v12;
          v16 = 0;
LABEL_23:
          v20 = 0;
          goto LABEL_24;
        }

        if (a4 == 5)
        {
          v21 = self->_portrait;
          v24 = v8;
          v11 = v8;
          v12 = [NSArray arrayWithObjects:&v24 count:1];
          v13 = v21;
          v14 = v7;
          v15 = 0;
          v16 = v12;
          goto LABEL_23;
        }

        if (a4 != 6)
        {
          goto LABEL_21;
        }

LABEL_25:

        goto LABEL_26;
      }

      if (a4)
      {
        if (a4 == 1)
        {
          v19 = self->_portrait;
          v23 = v8;
          v11 = v8;
          v12 = [NSArray arrayWithObjects:&v23 count:1];
          v13 = v19;
          v14 = v7;
          v15 = 0;
          v16 = 0;
          v20 = v12;
LABEL_24:
          [(MapsSuggestionsPortrait *)v13 sendFeedbackforClientID:v14 storeType:1 explicitlyEngagedStrings:v15 explicitlyRejectedStrings:v16 implicitlyEngagedStrings:v20 implicitlyRejectedStrings:0];

          goto LABEL_25;
        }

LABEL_21:
        [(MapsSuggestionsPortrait *)self->_portrait sendFeedbackforClientID:v7 storeType:1 explicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:0 implicitlyRejectedStrings:0];
        goto LABEL_25;
      }

      v17 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v22 = 0;
        v18 = "EntryEngagementNone not allowed";
        goto LABEL_13;
      }
    }

    else
    {
      v17 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v22 = 0;
        v18 = "Cannot pass feedback to Portrait. Feedback string was nil";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v18, v22, 2u);
      }
    }

    goto LABEL_25;
  }

LABEL_26:
}

- (void)feedbackForMapItem:(id)a3 action:(int64_t)a4
{
  v6 = a3;
  v7 = +[MapsSuggestionsSiri isEnabled];
  if ((a4 - 1) <= 3 && v7)
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:2];
    v9 = [v6 name];

    if (v9)
    {
      v10 = [v6 name];
      [v8 addObject:v10];
    }

    v11 = [v6 shortAddress];

    if (v11)
    {
      v12 = [v6 shortAddress];
      [v8 addObject:v12];
    }

    if ([v8 count])
    {
      [(MapsSuggestionsPortrait *)self->_portrait sendFeedbackforClientID:@"mapssearch" storeType:0 explicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:v8 implicitlyRejectedStrings:0];
    }

    else
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "No feedback to send", v14, 2u);
      }
    }
  }
}

- (void)feedbackForContact:(id)a3 action:(int64_t)a4
{
  v6 = a3;
  v7 = +[MapsSuggestionsSiri isEnabled];
  if ((a4 - 1) <= 3 && v7)
  {
    portrait = self->_portrait;
    v9 = [v6 identifier];
    v11 = v9;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [(MapsSuggestionsPortrait *)portrait sendFeedbackforClientID:@"mapssearch" storeType:0 explicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:v10 implicitlyRejectedStrings:0];
  }
}

@end