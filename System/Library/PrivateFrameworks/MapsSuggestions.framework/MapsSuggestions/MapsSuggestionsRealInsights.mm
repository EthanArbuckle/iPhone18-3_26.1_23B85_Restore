@interface MapsSuggestionsRealInsights
- (BOOL)_openConnectionIfNecessary;
- (BOOL)isTransitUser;
- (BOOL)isTransitUserHere;
- (BOOL)userHasAPaymentCard;
- (BOOL)userHasATransitCard;
- (BOOL)userHasAnExpressPaymentCard;
- (BOOL)userHasAnUpcomingTrip;
- (BOOL)userIsCurrentlyInATrip;
- (MapsSuggestionsInsightsUpdates)insightUpdatesDelegate;
- (NSString)uniqueName;
- (char)signalPackForDestinationEntry:(id)a3 originCoordinate:(CLLocationCoordinate2D)a4 handler:(id)a5;
- (char)signalPackForDestinationMapItem:(id)a3 originCoordinate:(CLLocationCoordinate2D)a4 handler:(id)a5;
- (char)signalPackForHereWithHandler:(id)a3;
- (double)isTouristHere;
- (id).cxx_construct;
- (id)initFromResourceDepot:(id)a3;
- (id)signalPackForDestinationEntry:(id)a3 originCoordinate:(CLLocationCoordinate2D)a4;
- (id)signalPackForDestinationMapItem:(id)a3 originCoordinate:(CLLocationCoordinate2D)a4;
- (id)signalPackForHere;
- (void)_closeConnection;
- (void)_initCloseTimerIfNecessary;
- (void)_scheduleCloseConnection;
- (void)_unscheduleCloseConnection;
- (void)dealloc;
- (void)signalPackUpdated:(id)a3;
@end

@implementation MapsSuggestionsRealInsights

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (double)isTouristHere
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A22C8] sharedManager];
  v4 = [v3 isEnabledForSubTestWithName:@"MSGPPTTest_Insights_ACRanking_Tourist"];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"MSGPPTTest_Insights_ACRanking_TouristBEGIN" object:0];
  }

  if (MapsSuggestionsLoggingIsVerbose())
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315138;
      v19 = "[MapsSuggestionsRealInsights isTouristHere]";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "%s", &v18, 0xCu);
    }
  }

  v7 = [(MapsSuggestionsRealInsights *)self signalPackForHere];
  if (v7)
  {
    v8 = [[MapsSuggestionsSignalPackEvaluator alloc] initWithSignalPack:v7];
    if ([(MapsSuggestionsSignalPackEvaluator *)v8 hasTouristInfo])
    {
      if ([(MapsSuggestionsSignalPackEvaluator *)v8 isTouristHere])
      {
        v9 = MapsSuggestionsConfidenceDefinitelyTrue();
      }

      else
      {
        v9 = MapsSuggestionsConfidenceDefinitelyFalse();
      }

      v11 = v9;
      if (MapsSuggestionsLoggingIsVerbose())
      {
        v13 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v18 = 134217984;
          v19 = *&v11;
          _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "isTouristHere: %f", &v18, 0xCu);
        }
      }

      v14 = [MEMORY[0x1E69A22C8] sharedManager];
      v15 = [v14 isEnabledForSubTestWithName:@"MSGPPTTest_Insights_ACRanking_Tourist"];

      if (v15)
      {
        v16 = [MEMORY[0x1E696AD88] defaultCenter];
        [v16 postNotificationName:@"MSGPPTTest_Insights_ACRanking_TouristEND" object:0];
      }
    }

    else
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "Couldn't get TouristInfo from Evaluator. Cannot predict confidence", &v18, 2u);
      }

      v11 = MapsSuggestionsConfidenceDontKnow();
    }
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "Couldn't get SignalPack. Cannot predict confidence", &v18, 2u);
    }

    v11 = MapsSuggestionsConfidenceDontKnow();
  }

  return v11;
}

- (BOOL)_openConnectionIfNecessary
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    if (!*(a1 + 24))
    {
      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = [a1 uniqueName];
        *buf = 138412546;
        v22 = v3;
        v23 = 2080;
        v24 = "openingConnectionForRealInsights";
        _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
      }

      v4 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v4))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "openingConnectionForRealInsights", "", buf, 2u);
      }

      v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.maps.destinationd.signalPipeline" options:0];
      v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F448E4F8];
      [v5 setRemoteObjectInterface:v6];

      v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4477A90];
      v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      [v7 setClasses:v8 forSelector:sel_signalPackUpdated_ argumentIndex:0 ofReply:0];

      [v5 setExportedInterface:v7];
      [v5 setExportedObject:a1];
      objc_initWeak(&location, a1);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __57__MapsSuggestionsRealInsights__openConnectionIfNecessary__block_invoke;
      v18[3] = &unk_1E81F5208;
      objc_copyWeak(&v19, &location);
      [v5 setInvalidationHandler:v18];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __57__MapsSuggestionsRealInsights__openConnectionIfNecessary__block_invoke_174;
      v16[3] = &unk_1E81F5208;
      objc_copyWeak(&v17, &location);
      [v5 setInterruptionHandler:v16];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __57__MapsSuggestionsRealInsights__openConnectionIfNecessary__block_invoke_176;
      v14[3] = &unk_1E81F69A0;
      objc_copyWeak(&v15, &location);
      v9 = [v5 remoteObjectProxyWithErrorHandler:v14];
      objc_storeStrong((a1 + 24), v5);
      [v5 resume];
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [a1 uniqueName];
        *buf = 138412546;
        v22 = v11;
        v23 = 2080;
        v24 = "openingConnectionForRealInsights";
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
      }

      v12 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "openingConnectionForRealInsights", "", buf, 2u);
      }

      objc_destroyWeak(&v15);
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  return a1 != 0;
}

- (id)signalPackForHere
{
  v25 = *MEMORY[0x1E69E9840];
  v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v4 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__MapsSuggestionsRealInsights_signalPackForHere__block_invoke;
  v14[3] = &unk_1E81F6978;
  v16 = &v17;
  v5 = v4;
  v15 = v5;
  if ([(MapsSuggestionsRealInsights *)self signalPackForHereWithHandler:v14])
  {
    GEOConfigGetDouble();
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    if (dispatch_semaphore_wait(v5, v7))
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "Timeout on signalPackForHere", buf, 2u);
      }
    }

    v9.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v24 = (v9.__d_.__rep_ - v3.__d_.__rep_) / 1000;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "signalPackForHere took %lu usec", buf, 0xCu);
    }

    v11 = v18[5];
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "No callback on signalPackForHere", buf, 2u);
    }

    v11 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (void)_scheduleCloseConnection
{
  if (a1)
  {
    dispatch_assert_queue_V2(a1[1]);
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      OUTLINED_FUNCTION_7(&dword_1C5126000, v3, v4, "_scheduleCloseConnection", v11);
    }

    [(MapsSuggestionsRealInsights *)a1 _initCloseTimerIfNecessary];
    GEOConfigGetDouble();
    v6 = v5;
    GEOConfigGetDouble();
    v8 = v7;
    v9 = a1[4];
    v10 = dispatch_time(0, (v6 * 1000000000.0));
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, (v8 * 1000000000.0));
  }
}

- (void)_initCloseTimerIfNecessary
{
  if (a1)
  {
    dispatch_assert_queue_V2(a1[1]);
    if (!a1[4])
    {
      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(location[0]) = 0;
        OUTLINED_FUNCTION_7(&dword_1C5126000, v3, v4, "Re-initializing the _closeTimer", location);
      }

      objc_initWeak(location, a1);
      v5 = a1[1];
      v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v5);
      v7 = a1[4];
      a1[4] = v6;

      dispatch_source_set_timer(a1[4], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      v8 = a1[4];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __57__MapsSuggestionsRealInsights__initCloseTimerIfNecessary__block_invoke;
      handler[3] = &unk_1E81F5208;
      objc_copyWeak(&v10, location);
      dispatch_source_set_event_handler(v8, handler);
      dispatch_resume(a1[4]);
      objc_destroyWeak(&v10);
      objc_destroyWeak(location);
    }
  }
}

- (MapsSuggestionsInsightsUpdates)insightUpdatesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_insightUpdatesDelegate);

  return WeakRetained;
}

void __48__MapsSuggestionsRealInsights_signalPackForHere__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Error on signalPackForHere, error:%@", &v11, 0xCu);
    }
  }

  v8 = [v5 copy];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)isTransitUserHere
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[MapsSuggestionsRealInsights isTransitUserHere]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v13, 0xCu);
  }

  v4 = [(MapsSuggestionsRealInsights *)self signalPackForHere];
  if (v4)
  {
    v5 = [[MapsSuggestionsSignalPackEvaluator alloc] initWithSignalPack:v4];
    [(MapsSuggestionsSignalPackEvaluator *)v5 isTransitUserHereConfidence];
    v7 = v6;
    v8 = MapsSuggestionsConfidenceDontKnow();
    v9 = v7 > v8;
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"NO";
      if (v7 > v8)
      {
        v11 = @"YES";
      }

      v13 = 134218242;
      v14 = *&v7;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "isTransitUserHere: %f = %@", &v13, 0x16u);
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1C5126000, &v5->super, OS_LOG_TYPE_ERROR, "Couldn't get SignalPack. Cannot predict isTransitUserHere, so we say NO", &v13, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)initFromResourceDepot:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRealInsights.mm";
      *&buf[12] = 1024;
      *&buf[14] = 73;
      v24 = 2082;
      v25 = "[MapsSuggestionsRealInsights initFromResourceDepot:]";
      v26 = 2082;
      v27 = "nil == (resourceDepot)";
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to buid!", buf, 0x26u);
    }

    goto LABEL_19;
  }

  v6 = [v4 oneRoutine];

  if (!v6)
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRealInsights.mm";
      *&buf[12] = 1024;
      *&buf[14] = 74;
      v24 = 2082;
      v25 = "[MapsSuggestionsRealInsights initFromResourceDepot:]";
      v26 = 2082;
      v27 = "nil == (resourceDepot.oneRoutine)";
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one Routine!", buf, 0x26u);
    }

    goto LABEL_19;
  }

  v7 = [v5 oneNetworkRequester];

  if (!v7)
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRealInsights.mm";
      *&buf[12] = 1024;
      *&buf[14] = 75;
      v24 = 2082;
      v25 = "[MapsSuggestionsRealInsights initFromResourceDepot:]";
      v26 = 2082;
      v27 = "nil == (resourceDepot.oneNetworkRequester)";
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one Network!", buf, 0x26u);
    }

    goto LABEL_19;
  }

  v8 = [v5 onePortrait];

  if (!v8)
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRealInsights.mm";
      *&buf[12] = 1024;
      *&buf[14] = 77;
      v24 = 2082;
      v25 = "[MapsSuggestionsRealInsights initFromResourceDepot:]";
      v26 = 2082;
      v27 = "nil == (resourceDepot.onePortrait)";
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one Portrait!", buf, 0x26u);
    }

LABEL_19:

    v19 = 0;
    goto LABEL_20;
  }

  v22.receiver = self;
  v22.super_class = MapsSuggestionsRealInsights;
  v9 = [(MapsSuggestionsRealInsights *)&v22 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(buf, @"MapsSuggestionsInsightsQueue", v10);
    v11 = *buf;
    *buf = 0;
    innerQueue = v9->_queue._innerQueue;
    v9->_queue._innerQueue = v11;

    v13 = *&buf[8];
    *&buf[8] = 0;
    name = v9->_queue._name;
    v9->_queue._name = v13;

    closeTimer = v9->_closeTimer;
    v9->_closeTimer = 0;

    connection = v9->_connection;
    v9->_connection = 0;

    v17 = [v5 onePortrait];
    portrait = v9->_portrait;
    v9->_portrait = v17;
  }

  self = v9;
  v19 = self;
LABEL_20:

  return v19;
}

- (void)dealloc
{
  [(MapsSuggestionsRealInsights *)self _unscheduleCloseConnection];
  [(MapsSuggestionsRealInsights *)self _closeConnection];
  v3.receiver = self;
  v3.super_class = MapsSuggestionsRealInsights;
  [(MapsSuggestionsRealInsights *)&v3 dealloc];
}

- (void)_closeConnection
{
  v2 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_closeConnection", "", v3, 2u);
  }
}

- (BOOL)isTransitUser
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[MapsSuggestionsRealInsights isTransitUser]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v13, 0xCu);
  }

  v4 = [(MapsSuggestionsRealInsights *)self signalPackForHere];
  if (v4)
  {
    v5 = [[MapsSuggestionsSignalPackEvaluator alloc] initWithSignalPack:v4];
    [(MapsSuggestionsSignalPackEvaluator *)v5 isTransitUserConfidence];
    v7 = v6;
    v8 = MapsSuggestionsConfidenceDontKnow();
    v9 = v7 > v8;
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"NO";
      if (v7 > v8)
      {
        v11 = @"YES";
      }

      v13 = 134218242;
      v14 = *&v7;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "isTransitUserHere: %f = %@", &v13, 0x16u);
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1C5126000, &v5->super, OS_LOG_TYPE_ERROR, "Couldn't get SignalPack. Cannot predict isTransitUser, so we say NO", &v13, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)userHasAnExpressPaymentCard
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[MapsSuggestionsRealInsights userHasAnExpressPaymentCard]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v13, 0xCu);
  }

  v4 = [(MapsSuggestionsRealInsights *)self signalPackForHere];
  if (v4)
  {
    v5 = [[MapsSuggestionsSignalPackEvaluator alloc] initWithSignalPack:v4];
    v6 = MapsSuggestionsConfidenceDontKnow();
    if ([(MapsSuggestionsSignalPackEvaluator *)v5 hasSignalForExpressPaymentCard])
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "hasSignalForExpressPaymentCard", &v13, 2u);
      }

      v6 = [(MapsSuggestionsSignalPackEvaluator *)v5 userHasAnExpressPaymentCard];
    }

    v8 = MapsSuggestionsConfidenceDontKnow();
    v9 = v6 > v8;
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"NO";
      if (v6 > v8)
      {
        v11 = @"YES";
      }

      v13 = 134218242;
      v14 = *&v6;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "userHasAnExpressPaymentCard: %f = %@", &v13, 0x16u);
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1C5126000, &v5->super, OS_LOG_TYPE_ERROR, "Couldn't get SignalPack. Cannot predict if userHasAnExpressPaymentCard, so we say NO", &v13, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)userHasAPaymentCard
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[MapsSuggestionsRealInsights userHasAPaymentCard]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v13, 0xCu);
  }

  v4 = [(MapsSuggestionsRealInsights *)self signalPackForHere];
  if (v4)
  {
    v5 = [[MapsSuggestionsSignalPackEvaluator alloc] initWithSignalPack:v4];
    v6 = MapsSuggestionsConfidenceDontKnow();
    if ([(MapsSuggestionsSignalPackEvaluator *)v5 hasSignalForPaymentCard])
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "hasSignalForPaymentCard", &v13, 2u);
      }

      v6 = [(MapsSuggestionsSignalPackEvaluator *)v5 userHasAPaymentCard];
    }

    v8 = MapsSuggestionsConfidenceDontKnow();
    v9 = v6 > v8;
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"NO";
      if (v6 > v8)
      {
        v11 = @"YES";
      }

      v13 = 134218242;
      v14 = *&v6;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "userHasAPaymentCard: %f = %@", &v13, 0x16u);
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1C5126000, &v5->super, OS_LOG_TYPE_ERROR, "Couldn't get SignalPack. Cannot predict if userHasAPaymentCard, so we say NO", &v13, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)userHasATransitCard
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[MapsSuggestionsRealInsights userHasATransitCard]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v13, 0xCu);
  }

  v4 = [(MapsSuggestionsRealInsights *)self signalPackForHere];
  if (v4)
  {
    v5 = [[MapsSuggestionsSignalPackEvaluator alloc] initWithSignalPack:v4];
    v6 = MapsSuggestionsConfidenceDontKnow();
    if ([(MapsSuggestionsSignalPackEvaluator *)v5 hasSignalForHasATransitCard])
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "userHasATransitCard", &v13, 2u);
      }

      v6 = [(MapsSuggestionsSignalPackEvaluator *)v5 userHasATransitCard];
    }

    v8 = MapsSuggestionsConfidenceDontKnow();
    v9 = v6 > v8;
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"NO";
      if (v6 > v8)
      {
        v11 = @"YES";
      }

      v13 = 134218242;
      v14 = *&v6;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "userHasATransitCard: %f = %@", &v13, 0x16u);
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1C5126000, &v5->super, OS_LOG_TYPE_ERROR, "Couldn't get SignalPack. Cannot predict if userHasATransitCard, so we say NO", &v13, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (char)signalPackForDestinationMapItem:(id)a3 originCoordinate:(CLLocationCoordinate2D)a4 handler:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v35 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (!v10)
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRealInsights.mm";
      v31 = 1024;
      *v32 = 256;
      *&v32[4] = 2082;
      *&v32[6] = "[MapsSuggestionsRealInsights signalPackForDestinationMapItem:originCoordinate:handler:]";
      v33 = 2082;
      v34 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler block", buf, 0x26u);
    }

    goto LABEL_15;
  }

  if (!v9)
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRealInsights.mm";
      v31 = 1024;
      *v32 = 257;
      *&v32[4] = 2082;
      *&v32[6] = "[MapsSuggestionsRealInsights signalPackForDestinationMapItem:originCoordinate:handler:]";
      v33 = 2082;
      v34 = "nil == (mapItem)";
      _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem", buf, 0x26u);
    }

LABEL_15:

    v21 = 0;
    goto LABEL_16;
  }

  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(MapsSuggestionsRealInsights *)self uniqueName];
    *buf = 138412546;
    v30 = v12;
    v31 = 2080;
    *v32 = "signalPackForDestinationMapItem";
    _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v13 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "signalPackForDestinationMapItem", "", buf, 2u);
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v9 _muid];
    *buf = 134217984;
    v30 = v15;
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Getting SignalPack for MapItem with MUID %llu", buf, 0xCu);
  }

  v16 = [v9 data];
  v17 = NSDataFromCLLocationCoordinate(latitude, longitude);
  objc_initWeak(buf, self);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __88__MapsSuggestionsRealInsights_signalPackForDestinationMapItem_originCoordinate_handler___block_invoke;
  v24[3] = &unk_1E81F5B78;
  objc_copyWeak(&v28, buf);
  v25 = v16;
  v26 = v17;
  v27 = v10;
  innerQueue = self->_queue._innerQueue;
  v19 = v17;
  v20 = v16;
  dispatch_async(innerQueue, v24);

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
  v21 = 1;
LABEL_16:

  return v21;
}

void __88__MapsSuggestionsRealInsights_signalPackForDestinationMapItem_originCoordinate_handler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsRealInsights *)WeakRetained _openConnectionIfNecessary];
    v4 = [v3[3] remoteObjectProxy];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __88__MapsSuggestionsRealInsights_signalPackForDestinationMapItem_originCoordinate_handler___block_invoke_107;
    v8[3] = &unk_1E81F6950;
    objc_copyWeak(&v10, (a1 + 56));
    v9 = *(a1 + 48);
    [v4 signalPackForDestinationMapItemData:v5 originCoordinateData:v6 handler:v8];

    [(MapsSuggestionsRealInsights *)v3 _scheduleCloseConnection];
    objc_destroyWeak(&v10);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "MapsSuggestionsRealInsights.mm";
      v13 = 1026;
      v14 = 267;
      v15 = 2082;
      v16 = "[MapsSuggestionsRealInsights signalPackForDestinationMapItem:originCoordinate:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __88__MapsSuggestionsRealInsights_signalPackForDestinationMapItem_originCoordinate_handler___block_invoke_107(uint64_t a1, void *a2, void *a3)
{
  *&v19[13] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446722;
      v17 = "MapsSuggestionsRealInsights.mm";
      v18 = 1026;
      *v19 = 270;
      v19[2] = 2082;
      *&v19[3] = "[MapsSuggestionsRealInsights signalPackForDestinationMapItem:originCoordinate:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v16, 0x1Cu);
    }

    v8 = v11;
    goto LABEL_11;
  }

  if (v5 && !v6)
  {
    v8 = [MapsSuggestionsSignalPack signalPackFromData:v5];
    (*(*(a1 + 32) + 16))();
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      v16 = 138412546;
      v17 = v10;
      v18 = 2080;
      *v19 = "signalPackForDestinationMapItem";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v16, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "signalPackForDestinationMapItem", "", &v16, 2u);
    }

LABEL_11:

    goto LABEL_19;
  }

  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "Failed with error: %@", &v16, 0xCu);
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [WeakRetained uniqueName];
    v16 = 138412546;
    v17 = v14;
    v18 = 2080;
    *v19 = "signalPackForDestinationMapItem";
    _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v16, 0x16u);
  }

  v15 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v15))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "signalPackForDestinationMapItem", "", &v16, 2u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_19:
}

- (char)signalPackForDestinationEntry:(id)a3 originCoordinate:(CLLocationCoordinate2D)a4 handler:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (!v10)
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v28 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRealInsights.mm";
      v29 = 1024;
      *v30 = 291;
      *&v30[4] = 2082;
      *&v30[6] = "[MapsSuggestionsRealInsights signalPackForDestinationEntry:originCoordinate:handler:]";
      v31 = 2082;
      v32 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler block", buf, 0x26u);
    }

    goto LABEL_15;
  }

  if (!v9)
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v28 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRealInsights.mm";
      v29 = 1024;
      *v30 = 292;
      *&v30[4] = 2082;
      *&v30[6] = "[MapsSuggestionsRealInsights signalPackForDestinationEntry:originCoordinate:handler:]";
      v31 = 2082;
      v32 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", buf, 0x26u);
    }

LABEL_15:

    v19 = 0;
    goto LABEL_16;
  }

  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(MapsSuggestionsRealInsights *)self uniqueName];
    *buf = 138412546;
    v28 = v12;
    v29 = 2080;
    *v30 = "signalPackForDestinationEntry";
    _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v13 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "signalPackForDestinationEntry", "", buf, 2u);
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v9 uniqueIdentifier];
    *buf = 138412290;
    v28 = v15;
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Getting SignalPack for Entry %@", buf, 0xCu);
  }

  v16 = NSDataFromCLLocationCoordinate(latitude, longitude);
  objc_initWeak(buf, self);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__MapsSuggestionsRealInsights_signalPackForDestinationEntry_originCoordinate_handler___block_invoke;
  v22[3] = &unk_1E81F5B78;
  objc_copyWeak(&v26, buf);
  v23 = v9;
  v24 = v16;
  v25 = v10;
  innerQueue = self->_queue._innerQueue;
  v18 = v16;
  dispatch_async(innerQueue, v22);

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
  v19 = 1;
LABEL_16:

  return v19;
}

void __86__MapsSuggestionsRealInsights_signalPackForDestinationEntry_originCoordinate_handler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsRealInsights *)WeakRetained _openConnectionIfNecessary];
    v4 = [v3[3] remoteObjectProxy];
    v5 = [*(a1 + 32) data];
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__MapsSuggestionsRealInsights_signalPackForDestinationEntry_originCoordinate_handler___block_invoke_113;
    v8[3] = &unk_1E81F6950;
    objc_copyWeak(&v10, (a1 + 56));
    v9 = *(a1 + 48);
    [v4 signalPackForDestinationEntryData:v5 originCoordinateData:v6 handler:v8];

    [(MapsSuggestionsRealInsights *)v3 _scheduleCloseConnection];
    objc_destroyWeak(&v10);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "MapsSuggestionsRealInsights.mm";
      v13 = 1026;
      v14 = 301;
      v15 = 2082;
      v16 = "[MapsSuggestionsRealInsights signalPackForDestinationEntry:originCoordinate:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __86__MapsSuggestionsRealInsights_signalPackForDestinationEntry_originCoordinate_handler___block_invoke_113(uint64_t a1, void *a2, void *a3)
{
  *&v19[13] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446722;
      v17 = "MapsSuggestionsRealInsights.mm";
      v18 = 1026;
      *v19 = 304;
      v19[2] = 2082;
      *&v19[3] = "[MapsSuggestionsRealInsights signalPackForDestinationEntry:originCoordinate:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v16, 0x1Cu);
    }

    v8 = v11;
    goto LABEL_11;
  }

  if (v5 && !v6)
  {
    v8 = [MapsSuggestionsSignalPack signalPackFromData:v5];
    (*(*(a1 + 32) + 16))();
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      v16 = 138412546;
      v17 = v10;
      v18 = 2080;
      *v19 = "signalPackForDestinationEntry";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v16, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "signalPackForDestinationEntry", "", &v16, 2u);
    }

LABEL_11:

    goto LABEL_19;
  }

  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "Failed with error: %@", &v16, 0xCu);
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [WeakRetained uniqueName];
    v16 = 138412546;
    v17 = v14;
    v18 = 2080;
    *v19 = "signalPackForDestinationEntry";
    _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v16, 0x16u);
  }

  v15 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v15))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "signalPackForDestinationEntry", "", &v16, 2u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_19:
}

- (char)signalPackForHereWithHandler:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(MapsSuggestionsRealInsights *)self uniqueName];
      *buf = 138412546;
      v16 = v6;
      v17 = 2080;
      *v18 = "signalPackForHereWithHandler";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "signalPackForHereWithHandler", "", buf, 2u);
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Getting SignalPack for here", buf, 2u);
    }

    objc_initWeak(buf, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__MapsSuggestionsRealInsights_signalPackForHereWithHandler___block_invoke;
    v12[3] = &unk_1E81F5190;
    objc_copyWeak(&v14, buf);
    v13 = v4;
    dispatch_async(self->_queue._innerQueue, v12);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
    v9 = 1;
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRealInsights.mm";
      v17 = 1024;
      *v18 = 323;
      *&v18[4] = 2082;
      *&v18[6] = "[MapsSuggestionsRealInsights signalPackForHereWithHandler:]";
      v19 = 2082;
      v20 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler block", buf, 0x26u);
    }

    v9 = 0;
  }

  return v9;
}

void __60__MapsSuggestionsRealInsights_signalPackForHereWithHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsRealInsights *)WeakRetained _openConnectionIfNecessary];
    v4 = [v3[3] remoteObjectProxy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__MapsSuggestionsRealInsights_signalPackForHereWithHandler___block_invoke_115;
    v6[3] = &unk_1E81F6950;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [v4 signalPackForLocation:0 handler:v6];

    [(MapsSuggestionsRealInsights *)v3 _scheduleCloseConnection];
    objc_destroyWeak(&v8);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v10 = "MapsSuggestionsRealInsights.mm";
      v11 = 1026;
      v12 = 331;
      v13 = 2082;
      v14 = "[MapsSuggestionsRealInsights signalPackForHereWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __60__MapsSuggestionsRealInsights_signalPackForHereWithHandler___block_invoke_115(uint64_t a1, void *a2, void *a3)
{
  *&v19[13] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446722;
      v17 = "MapsSuggestionsRealInsights.mm";
      v18 = 1026;
      *v19 = 334;
      v19[2] = 2082;
      *&v19[3] = "[MapsSuggestionsRealInsights signalPackForHereWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v16, 0x1Cu);
    }

    v8 = v11;
    goto LABEL_11;
  }

  if (v5 && !v6)
  {
    v8 = [MapsSuggestionsSignalPack signalPackFromData:v5];
    (*(*(a1 + 32) + 16))();
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      v16 = 138412546;
      v17 = v10;
      v18 = 2080;
      *v19 = "signalPackForHereWithHandler";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v16, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "signalPackForHereWithHandler", "", &v16, 2u);
    }

LABEL_11:

    goto LABEL_19;
  }

  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "Failed with error: %@", &v16, 0xCu);
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [WeakRetained uniqueName];
    v16 = 138412546;
    v17 = v14;
    v18 = 2080;
    *v19 = "signalPackForHereWithHandler";
    _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v16, 0x16u);
  }

  v15 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v15))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "signalPackForHereWithHandler", "", &v16, 2u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_19:
}

- (id)signalPackForDestinationMapItem:(id)a3 originCoordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__7;
    *&buf[32] = __Block_byref_object_dispose__7;
    v22 = 0;
    v8 = dispatch_semaphore_create(0);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __80__MapsSuggestionsRealInsights_signalPackForDestinationMapItem_originCoordinate___block_invoke;
    v18[3] = &unk_1E81F6978;
    v20 = buf;
    v9 = v8;
    v19 = v9;
    if ([(MapsSuggestionsRealInsights *)self signalPackForDestinationMapItem:v7 originCoordinate:v18 handler:latitude, longitude])
    {
      GEOConfigGetDouble();
      v11 = dispatch_time(0, (v10 * 1000000000.0));
      if (dispatch_semaphore_wait(v9, v11))
      {
        v12 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v17 = 0;
          _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "Timeout on signalPackForDestinationMapItem:", v17, 2u);
        }
      }

      v13 = *(*&buf[8] + 40);
    }

    else
    {
      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "No callback on signalPackForDestinationMapItem:", v17, 2u);
      }

      v13 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRealInsights.mm";
      *&buf[12] = 1024;
      *&buf[14] = 358;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsRealInsights signalPackForDestinationMapItem:originCoordinate:]";
      *&buf[28] = 2082;
      *&buf[30] = "nil == (mapItem)";
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem", buf, 0x26u);
    }

    v13 = 0;
  }

  return v13;
}

void __80__MapsSuggestionsRealInsights_signalPackForDestinationMapItem_originCoordinate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Error on signalPackForDestinationMapItem: %@", &v11, 0xCu);
    }
  }

  v8 = [v5 copy];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)signalPackForDestinationEntry:(id)a3 originCoordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__7;
    *&buf[32] = __Block_byref_object_dispose__7;
    v22 = 0;
    v8 = dispatch_semaphore_create(0);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __78__MapsSuggestionsRealInsights_signalPackForDestinationEntry_originCoordinate___block_invoke;
    v18[3] = &unk_1E81F6978;
    v20 = buf;
    v9 = v8;
    v19 = v9;
    if ([(MapsSuggestionsRealInsights *)self signalPackForDestinationEntry:v7 originCoordinate:v18 handler:latitude, longitude])
    {
      GEOConfigGetDouble();
      v11 = dispatch_time(0, (v10 * 1000000000.0));
      if (dispatch_semaphore_wait(v9, v11))
      {
        v12 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v17 = 0;
          _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "Timeout on signalPackForDestinationEntry:", v17, 2u);
        }
      }

      v13 = *(*&buf[8] + 40);
    }

    else
    {
      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "No callback on signalPackForDestinationEntry:", v17, 2u);
      }

      v13 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRealInsights.mm";
      *&buf[12] = 1024;
      *&buf[14] = 387;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsRealInsights signalPackForDestinationEntry:originCoordinate:]";
      *&buf[28] = 2082;
      *&buf[30] = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", buf, 0x26u);
    }

    v13 = 0;
  }

  return v13;
}

void __78__MapsSuggestionsRealInsights_signalPackForDestinationEntry_originCoordinate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Error on signalPackForDestinationEntry: %@", &v11, 0xCu);
    }
  }

  v8 = [v5 copy];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)userHasAnUpcomingTrip
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[MapsSuggestionsRealInsights userHasAnUpcomingTrip]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v13, 0xCu);
  }

  v4 = [(MapsSuggestionsRealInsights *)self signalPackForHere];
  if (v4)
  {
    v5 = [[MapsSuggestionsSignalPackEvaluator alloc] initWithSignalPack:v4];
    v6 = MapsSuggestionsConfidenceDontKnow();
    if ([(MapsSuggestionsSignalPackEvaluator *)v5 hasSignalForUpcomingTrip])
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "MSg has a signal for upcoming trip.", &v13, 2u);
      }

      v6 = [(MapsSuggestionsSignalPackEvaluator *)v5 userHasAnUpcomingTrip];
    }

    v8 = MapsSuggestionsConfidenceDontKnow();
    v9 = v6 > v8;
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"NO";
      if (v6 > v8)
      {
        v11 = @"YES";
      }

      v13 = 134218242;
      v14 = *&v6;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "userHasAnUpcomingTrip: %f = %@", &v13, 0x16u);
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1C5126000, &v5->super, OS_LOG_TYPE_ERROR, "Couldn't get SignalPack. Cannot predict if userHasAnUpcomingTrip, so we say NO", &v13, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)userIsCurrentlyInATrip
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[MapsSuggestionsRealInsights userIsCurrentlyInATrip]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v13, 0xCu);
  }

  v4 = [(MapsSuggestionsRealInsights *)self signalPackForHere];
  if (v4)
  {
    v5 = [[MapsSuggestionsSignalPackEvaluator alloc] initWithSignalPack:v4];
    v6 = MapsSuggestionsConfidenceDontKnow();
    if ([(MapsSuggestionsSignalPackEvaluator *)v5 hasSignalForIsCurrentlyInATrip])
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "MSg has a signal for a current trip.", &v13, 2u);
      }

      v6 = [(MapsSuggestionsSignalPackEvaluator *)v5 userIsCurrentlyInATrip];
    }

    v8 = MapsSuggestionsConfidenceDontKnow();
    v9 = v6 > v8;
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"NO";
      if (v6 > v8)
      {
        v11 = @"YES";
      }

      v13 = 134218242;
      v14 = *&v6;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "userIsCurrenltyInATrip: %f = %@", &v13, 0x16u);
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1C5126000, &v5->super, OS_LOG_TYPE_ERROR, "Couldn't get SignalPack. Cannot predict if userIsCurrentlyInATrip, so we say NO", &v13, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)signalPackUpdated:(id)a3
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MapsSuggestionsRealInsights *)self insightUpdatesDelegate];
  if (!v5)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsRealInsights.mm";
      v10 = 1026;
      *v11 = 512;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsRealInsights signalPackUpdated:]";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongDelegate went away in %{public}s", &v8, 0x1Cu);
    }

    v6 = v7;
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = MapsSuggestionsSignalPackFromData(v4);
    [v5 insightsUpdated:v6];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      *v11 = v5;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "Received a SignalPack update %@ and delivered to %@", &v8, 0x16u);
    }

LABEL_8:
  }
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

void __57__MapsSuggestionsRealInsights__openConnectionIfNecessary__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__MapsSuggestionsRealInsights__openConnectionIfNecessary__block_invoke_173;
    block[3] = &unk_1E81F5208;
    objc_copyWeak(&v5, (a1 + 32));
    dispatch_async(WeakRetained[1], block);
    objc_destroyWeak(&v5);
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v7 = "MapsSuggestionsRealInsights.mm";
      v8 = 1026;
      v9 = 549;
      v10 = 2082;
      v11 = "[MapsSuggestionsRealInsights _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __57__MapsSuggestionsRealInsights__openConnectionIfNecessary__block_invoke_173(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = GEOFindOrCreateLog();
    __57__MapsSuggestionsRealInsights__openConnectionIfNecessary__block_invoke_173_cold_1(v2, WeakRetained);

    v3 = WeakRetained[3];
    WeakRetained[3] = 0;

    [(MapsSuggestionsRealInsights *)WeakRetained _unscheduleCloseConnection];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsRealInsights.mm";
      v7 = 1026;
      v8 = 551;
      v9 = 2082;
      v10 = "[MapsSuggestionsRealInsights _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void __57__MapsSuggestionsRealInsights__openConnectionIfNecessary__block_invoke_174(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__MapsSuggestionsRealInsights__openConnectionIfNecessary__block_invoke_175;
    block[3] = &unk_1E81F5208;
    objc_copyWeak(&v5, (a1 + 32));
    dispatch_async(WeakRetained[1], block);
    objc_destroyWeak(&v5);
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v7 = "MapsSuggestionsRealInsights.mm";
      v8 = 1026;
      v9 = 559;
      v10 = 2082;
      v11 = "[MapsSuggestionsRealInsights _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __57__MapsSuggestionsRealInsights__openConnectionIfNecessary__block_invoke_175(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = WeakRetained[3];
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "XPC connection {%@} got interrupted", &v5, 0xCu);
    }

    [(MapsSuggestionsRealInsights *)WeakRetained _closeConnection];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsRealInsights.mm";
      v7 = 1026;
      v8 = 561;
      v9 = 2082;
      v10 = "[MapsSuggestionsRealInsights _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void __57__MapsSuggestionsRealInsights__openConnectionIfNecessary__block_invoke_176(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__MapsSuggestionsRealInsights__openConnectionIfNecessary__block_invoke_177;
    v6[3] = &unk_1E81F5970;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v3;
    dispatch_async(WeakRetained[1], v6);

    objc_destroyWeak(&v8);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v10 = "MapsSuggestionsRealInsights.mm";
      v11 = 1026;
      v12 = 568;
      v13 = 2082;
      v14 = "[MapsSuggestionsRealInsights _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __57__MapsSuggestionsRealInsights__openConnectionIfNecessary__block_invoke_177(uint64_t a1)
{
  *&v10[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = WeakRetained[3];
      v5 = *(a1 + 32);
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      *v10 = v5;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "XPC connection {%@} got error: %@", &v7, 0x16u);
    }

    [(MapsSuggestionsRealInsights *)WeakRetained _closeConnection];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsRealInsights.mm";
      v9 = 1026;
      *v10 = 570;
      v10[2] = 2082;
      *&v10[3] = "[MapsSuggestionsRealInsights _openConnectionIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void __57__MapsSuggestionsRealInsights__initCloseTimerIfNecessary__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsRealInsights *)WeakRetained _closeConnection];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsRealInsights.mm";
      v6 = 1026;
      v7 = 623;
      v8 = 2082;
      v9 = "[MapsSuggestionsRealInsights _initCloseTimerIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)_unscheduleCloseConnection
{
  if (a1)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      OUTLINED_FUNCTION_7(&dword_1C5126000, v3, v4, "_unscheduleCloseConnection", v7);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      dispatch_source_set_timer(v5, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_source_cancel(*(a1 + 32));
      v6 = *(a1 + 32);
      *(a1 + 32) = 0;
    }
  }
}

void __57__MapsSuggestionsRealInsights__openConnectionIfNecessary__block_invoke_173_cold_1(NSObject *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a2 + 24);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_DEBUG, "XPC connection {%@} became invalid", &v5, 0xCu);
  }
}

@end