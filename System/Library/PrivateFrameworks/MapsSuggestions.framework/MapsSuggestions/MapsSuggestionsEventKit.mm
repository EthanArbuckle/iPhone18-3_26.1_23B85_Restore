@interface MapsSuggestionsEventKit
- (BOOL)_addHotelFieldsToEntry:(void *)entry fromSchemaOrgDictionary:(void *)dictionary event:;
- (BOOL)_addRestaurantReservationFieldsToEntry:(void *)entry fromSchemaOrgDictionary:(void *)dictionary event:;
- (BOOL)deleteOrDeclineEntry:(id)entry handler:(id)handler;
- (BOOL)entriesForEventsAtLocation:(id)location period:(id)period fetchMapItems:(BOOL)items handler:(id)handler;
- (BOOL)hasVisibleCalendars;
- (MapsSuggestionsEventKit)initWithConnector:(id)connector network:(id)network;
- (NSString)uniqueName;
- (id)_allowedCalendars;
- (id)_predicateForPeriod:(uint64_t)period;
- (id)initFromResourceDepot:(id)depot;
- (uint64_t)_addCalendarEventFieldsToEntry:(void *)entry event:;
- (uint64_t)_addCarRentalFieldsToEntry:(void *)entry event:;
- (uint64_t)_addTicketedEventFieldsToEntry:(void *)entry fromSchemaOrgDictionary:(void *)dictionary event:;
- (uint64_t)_addTravelFlightFieldsToEntry:(void *)entry fromSchemaOrgDictionary:(void *)dictionary event:;
- (uint64_t)_entryTypeFromSchema:(uint64_t)schema;
- (uint64_t)_q_createEntriesWithinPeriod:(void *)period location:(char)location fetchMapItems:(void *)items handler:;
- (void)_q_deleteOrDeclineEntry:(void *)entry handler:;
- (void)eventKitDidChange:(id)change;
- (void)interestingFlightEventsFrom:(id)from to:(id)to handler:(id)handler;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation MapsSuggestionsEventKit

- (BOOL)hasVisibleCalendars
{
  visibleCalendars = [(MapsSuggestionsEventKitConnector *)self->_connector visibleCalendars];
  v3 = visibleCalendars;
  if (visibleCalendars)
  {
    v4 = [visibleCalendars count] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_allowedCalendars
{
  selfCopy = self;
  if (self)
  {
    visibleCalendars = [self[2] visibleCalendars];
    v3 = visibleCalendars;
    if (visibleCalendars)
    {
      selfCopy = visibleCalendars;
    }

    else
    {
      v4 = [selfCopy[2] calendarsForEntityType:0];
      v5 = v4;
      v6 = MEMORY[0x1E695E0F0];
      if (v4)
      {
        v6 = v4;
      }

      selfCopy = v6;
    }
  }

  return selfCopy;
}

- (MapsSuggestionsEventKit)initWithConnector:(id)connector network:(id)network
{
  v41 = *MEMORY[0x1E69E9840];
  connectorCopy = connector;
  networkCopy = network;
  v9 = networkCopy;
  if (!connectorCopy)
  {
    v29 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventKit.m";
      v35 = 1024;
      v36 = 113;
      v37 = 2082;
      v38 = "[MapsSuggestionsEventKit initWithConnector:network:]";
      v39 = 2082;
      v40 = "nil == (connector)";
      _os_log_impl(&dword_1C5126000, v29, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an EventKitConnector", location, 0x26u);
    }

    goto LABEL_11;
  }

  if (!networkCopy)
  {
    v29 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventKit.m";
      v35 = 1024;
      v36 = 114;
      v37 = 2082;
      v38 = "[MapsSuggestionsEventKit initWithConnector:network:]";
      v39 = 2082;
      v40 = "nil == (network)";
      _os_log_impl(&dword_1C5126000, v29, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a NetworkRequester", location, 0x26u);
    }

LABEL_11:

    selfCopy = 0;
    goto LABEL_12;
  }

  v33.receiver = self;
  v33.super_class = MapsSuggestionsEventKit;
  v10 = [(MapsSuggestionsEventKit *)&v33 init];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("MapsSuggestionsEventKitQueue", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    objc_storeStrong(&v10->_connector, connector);
    [(MapsSuggestionsEventKitConnector *)v10->_connector setDelegate:v10];
    objc_storeStrong(&v10->_network, network);
    v14 = [[MapsSuggestionsObservers alloc] initWithCallbackQueue:v10->_queue name:@"MapsSuggestionsEventKitObservers"];
    observers = v10->_observers;
    v10->_observers = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    handleToMapItemMapping = v10->_handleToMapItemMapping;
    v10->_handleToMapItemMapping = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    handleToMapItemOriginMapping = v10->_handleToMapItemOriginMapping;
    v10->_handleToMapItemOriginMapping = v18;

    v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"http://schema.org/Event", @"http://schema.org/SocialEvent", @"http://schema.org/MovieShowing", 0}];
    setOfEventReservationSubtypes = v10->_setOfEventReservationSubtypes;
    v10->_setOfEventReservationSubtypes = v20;

    objc_initWeak(location, v10);
    v22 = [MapsSuggestionsCanKicker alloc];
    GEOConfigGetDouble();
    v24 = v23;
    v25 = v10->_queue;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __53__MapsSuggestionsEventKit_initWithConnector_network___block_invoke;
    v31[3] = &unk_1E81F53E8;
    objc_copyWeak(&v32, location);
    v26 = [(MapsSuggestionsCanKicker *)v22 initWithName:@"MapsSuggestionsEventKitChangedNotificationCanKicker" time:v25 queue:v31 block:v24];
    changedNotificationCanKicker = v10->_changedNotificationCanKicker;
    v10->_changedNotificationCanKicker = v26;

    objc_destroyWeak(&v32);
    objc_destroyWeak(location);
  }

  self = v10;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

void __53__MapsSuggestionsEventKit_initWithConnector_network___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Acting on one or more change notifications from EventStore", buf, 2u);
    }

    v5 = WeakRetained[4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__MapsSuggestionsEventKit_initWithConnector_network___block_invoke_339;
    v7[3] = &unk_1E81F5EA0;
    objc_copyWeak(&v8, (a1 + 32));
    [v5 callBlock:v7];
    objc_destroyWeak(&v8);
  }

  else
  {
    v6 = v3;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v10 = "MapsSuggestionsEventKit.m";
      v11 = 1026;
      v12 = 133;
      v13 = 2082;
      v14 = "[MapsSuggestionsEventKit initWithConnector:network:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __53__MapsSuggestionsEventKit_initWithConnector_network___block_invoke_339(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v3 eventKitDidChange:WeakRetained];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsEventKit.m";
      v8 = 1026;
      v9 = 136;
      v10 = 2082;
      v11 = "[MapsSuggestionsEventKit initWithConnector:network:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelfCall went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (id)initFromResourceDepot:(id)depot
{
  v22 = *MEMORY[0x1E69E9840];
  depotCopy = depot;
  v5 = depotCopy;
  if (!depotCopy)
  {
    v11 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = 136446978;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventKit.m";
    v16 = 1024;
    v17 = 146;
    v18 = 2082;
    v19 = "[MapsSuggestionsEventKit initFromResourceDepot:]";
    v20 = 2082;
    v21 = "nil == (resourceDepot)";
    v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to build from!";
LABEL_11:
    _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, v12, &v14, 0x26u);
    goto LABEL_12;
  }

  oneEventKitConnector = [depotCopy oneEventKitConnector];

  if (!oneEventKitConnector)
  {
    v11 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = 136446978;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventKit.m";
    v16 = 1024;
    v17 = 147;
    v18 = 2082;
    v19 = "[MapsSuggestionsEventKit initFromResourceDepot:]";
    v20 = 2082;
    v21 = "nil == (resourceDepot.oneEventKitConnector)";
    v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires One EventKitConnector!";
    goto LABEL_11;
  }

  oneNetworkRequester = [v5 oneNetworkRequester];

  if (!oneNetworkRequester)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventKit.m";
      v16 = 1024;
      v17 = 148;
      v18 = 2082;
      v19 = "[MapsSuggestionsEventKit initFromResourceDepot:]";
      v20 = 2082;
      v21 = "nil == (resourceDepot.oneNetworkRequester)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires One Network!";
      goto LABEL_11;
    }

LABEL_12:

    selfCopy = 0;
    goto LABEL_13;
  }

  oneEventKitConnector2 = [v5 oneEventKitConnector];
  oneNetworkRequester2 = [v5 oneNetworkRequester];
  self = [(MapsSuggestionsEventKit *)self initWithConnector:oneEventKitConnector2 network:oneNetworkRequester2];

  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (BOOL)entriesForEventsAtLocation:(id)location period:(id)period fetchMapItems:(BOOL)items handler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  periodCopy = period;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v15 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *location = 136446978;
    *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventKit.m";
    v25 = 1024;
    v26 = 180;
    v27 = 2082;
    v28 = "[MapsSuggestionsEventKit entriesForEventsAtLocation:period:fetchMapItems:handler:]";
    v29 = 2082;
    v30 = "nil == (handler)";
    v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_11:
    _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, v16, location, 0x26u);
    goto LABEL_12;
  }

  if (!locationCopy)
  {
    v15 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *location = 136446978;
    *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventKit.m";
    v25 = 1024;
    v26 = 181;
    v27 = 2082;
    v28 = "[MapsSuggestionsEventKit entriesForEventsAtLocation:period:fetchMapItems:handler:]";
    v29 = 2082;
    v30 = "nil == (location)";
    v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location";
    goto LABEL_11;
  }

  if (!periodCopy)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventKit.m";
      v25 = 1024;
      v26 = 182;
      v27 = 2082;
      v28 = "[MapsSuggestionsEventKit entriesForEventsAtLocation:period:fetchMapItems:handler:]";
      v29 = 2082;
      v30 = "nil == (period)";
      v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a time period";
      goto LABEL_11;
    }

LABEL_12:

    v14 = 0;
    goto LABEL_13;
  }

  objc_initWeak(location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__MapsSuggestionsEventKit_entriesForEventsAtLocation_period_fetchMapItems_handler___block_invoke;
  block[3] = &unk_1E81F5EC8;
  objc_copyWeak(&v22, location);
  v19 = periodCopy;
  v20 = locationCopy;
  itemsCopy = items;
  v21 = handlerCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v22);
  objc_destroyWeak(location);
  v14 = 1;
LABEL_13:

  return v14;
}

void __83__MapsSuggestionsEventKit_entriesForEventsAtLocation_period_fetchMapItems_handler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsEventKit *)WeakRetained _q_createEntriesWithinPeriod:*(a1 + 40) location:*(a1 + 64) fetchMapItems:*(a1 + 48) handler:?];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsEventKit.m";
      v7 = 1026;
      v8 = 186;
      v9 = 2082;
      v10 = "[MapsSuggestionsEventKit entriesForEventsAtLocation:period:fetchMapItems:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (uint64_t)_q_createEntriesWithinPeriod:(void *)period location:(char)location fetchMapItems:(void *)items handler:
{
  v222 = *MEMORY[0x1E69E9840];
  v9 = a2;
  periodCopy = period;
  itemsCopy = items;
  val = self;
  v180 = v9;
  v182 = itemsCopy;
  if (!self)
  {
    goto LABEL_191;
  }

  if (!v9)
  {
    [MapsSuggestionsEventKit _q_createEntriesWithinPeriod:location:fetchMapItems:handler:];
LABEL_191:
    v172 = 0;
    goto LABEL_200;
  }

  if (!periodCopy)
  {
    [MapsSuggestionsEventKit _q_createEntriesWithinPeriod:location:fetchMapItems:handler:];
    goto LABEL_191;
  }

  if (!itemsCopy)
  {
    [MapsSuggestionsEventKit _q_createEntriesWithinPeriod:location:fetchMapItems:handler:];
    goto LABEL_191;
  }

  locationCopy = location;
  dispatch_assert_queue_V2(*(self + 8));
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [self uniqueName];
    *buf = 138412546;
    *&buf[4] = uniqueName;
    *&buf[12] = 2080;
    *&buf[14] = "_q_createEntriesWithinPeriod";
    _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v13 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_q_createEntriesWithinPeriod", "", buf, 2u);
  }

  objc_initWeak(&location, self);
  if (([self hasVisibleCalendars] & 1) == 0)
  {
    v167 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v167, OS_LOG_TYPE_DEBUG, "Returning because all the calendars are invisible", buf, 2u);
    }

    v168 = *(self + 8);
    v212[0] = MEMORY[0x1E69E9820];
    v212[1] = 3221225472;
    v212[2] = __87__MapsSuggestionsEventKit__q_createEntriesWithinPeriod_location_fetchMapItems_handler___block_invoke;
    v212[3] = &unk_1E81F5CB0;
    objc_copyWeak(&v214, &location);
    v213 = v182;
    dispatch_async(v168, v212);

    objc_destroyWeak(&v214);
    v172 = 1;
    goto LABEL_199;
  }

  v14 = *(self + 16);
  v15 = [(MapsSuggestionsEventKit *)self _predicateForPeriod:v9];
  v174 = [v14 eventsMatchingPredicate:v15];

  if (MapsSuggestionsLoggingIsVerbose())
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v174 count];
      *buf = 134217984;
      *&buf[4] = v17;
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "Received %lu records from EKEventStore", buf, 0xCu);
    }
  }

  if (![v174 count])
  {
    v169 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v169, OS_LOG_TYPE_DEBUG, "Number of events are zero. Returning.", buf, 2u);
    }

    v170 = *(self + 8);
    v209[0] = MEMORY[0x1E69E9820];
    v209[1] = 3221225472;
    v209[2] = __87__MapsSuggestionsEventKit__q_createEntriesWithinPeriod_location_fetchMapItems_handler___block_invoke_398;
    v209[3] = &unk_1E81F5CB0;
    objc_copyWeak(&v211, &location);
    v210 = v182;
    dispatch_async(v170, v209);

    objc_destroyWeak(&v211);
    v172 = 1;
    goto LABEL_198;
  }

  v18 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    uniqueName2 = [self uniqueName];
    *buf = 138412546;
    *&buf[4] = uniqueName2;
    *&buf[12] = 2080;
    *&buf[14] = "_q_createEntriesWithinPeriod_Entries";
    _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v20 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v20, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_q_createEntriesWithinPeriod_Entries", "", buf, 2u);
  }

  v176 = objc_alloc_init(MEMORY[0x1E695DF70]);
  allKeys = [*(self + 56) allKeys];
  v173 = [allKeys mutableCopy];

  group = dispatch_group_create();
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  obj = v174;
  v22 = [obj countByEnumeratingWithState:&v205 objects:v219 count:16];
  if (!v22)
  {
    goto LABEL_182;
  }

  v190 = *v206;
  do
  {
    v23 = 0;
    do
    {
      if (*v206 != v190)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v205 + 1) + 8 * v23);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          title = [v24 title];
          v31 = @"~~~";
          if ([title length] >= 3)
          {
            v32 = objc_alloc(MEMORY[0x1E696AEC0]);
            v33 = [title substringToIndex:3];
            v31 = [v32 initWithFormat:@"{%@...}", v33];
          }

          *buf = 138412290;
          *&buf[4] = v31;
          _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_DEBUG, "Skipping event %@ because event is not of type EKCalenderItem", buf, 0xCu);
        }

LABEL_34:
        v34 = v25;
LABEL_35:

        goto LABEL_36;
      }

      if ([v24 status] == 3)
      {
        v25 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          title2 = [v24 title];
          v27 = @"~~~";
          if ([title2 length] >= 3)
          {
            v28 = objc_alloc(MEMORY[0x1E696AEC0]);
            v29 = [title2 substringToIndex:3];
            v27 = [v28 initWithFormat:@"{%@...}", v29];
          }

          *buf = 138412290;
          *&buf[4] = v27;
          _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_DEBUG, "Skipping event %@ because the event is canceled", buf, 0xCu);
        }

        goto LABEL_34;
      }

      selfAttendee = [v24 selfAttendee];
      v36 = selfAttendee == 0;

      if (!v36)
      {
        selfAttendee2 = [v24 selfAttendee];
        v38 = [selfAttendee2 participantStatus] == 3;

        if (v38)
        {
          v25 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            title3 = [v24 title];
            v40 = @"~~~";
            if ([title3 length] >= 3)
            {
              v41 = objc_alloc(MEMORY[0x1E696AEC0]);
              v42 = [title3 substringToIndex:3];
              v40 = [v41 initWithFormat:@"{%@...}", v42];
            }

            *buf = 138412290;
            *&buf[4] = v40;
            _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_DEBUG, "Skipping event %@ because the participant declined the event", buf, 0xCu);
          }

          goto LABEL_34;
        }
      }

      v43 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        title4 = [v24 title];
        v45 = @"~~~";
        if ([title4 length] >= 3)
        {
          v46 = objc_alloc(MEMORY[0x1E696AEC0]);
          v47 = [title4 substringToIndex:3];
          v45 = [v46 initWithFormat:@"{%@...}", v47];
        }

        v48 = v45;
        *buf = 138412290;
        *&buf[4] = v48;
        _os_log_impl(&dword_1C5126000, v43, OS_LOG_TYPE_DEBUG, "Treating event %@", buf, 0xCu);
      }

      v34 = v24;
      v25 = [v34 customObjectForKey:@"SuggestionsSchemaOrg"];
      uniqueId = [v34 uniqueId];
      v50 = uniqueId == 0;

      if (v50)
      {
        goto LABEL_35;
      }

      if (!v25 && (GEOConfigGetBOOL() & 1) == 0)
      {
        v65 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          title5 = [v34 title];
          v67 = @"~~~";
          if ([title5 length] >= 3)
          {
            v68 = objc_alloc(MEMORY[0x1E696AEC0]);
            v69 = [title5 substringToIndex:3];
            v67 = [v68 initWithFormat:@"{%@...}", v69];
          }

          *buf = 138412290;
          *&buf[4] = v67;
          _os_log_impl(&dword_1C5126000, v65, OS_LOG_TYPE_DEBUG, "RoutineSource will process the calendar item %@ because it does not have the schema.org blob and the MapsSuggestionsCalendarEventsFromCalendarSource server default is NO", buf, 0xCu);
        }

        goto LABEL_35;
      }

      v51 = v34;
      v34 = v51;
      if (!v51)
      {
        structuredLocation = GEOFindOrCreateLog();
        if (os_log_type_enabled(structuredLocation, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5126000, structuredLocation, OS_LOG_TYPE_DEBUG, "No Event", buf, 2u);
        }

LABEL_77:
LABEL_78:
        preferredLocationWithoutPrediction3 = 0;
        goto LABEL_79;
      }

      preferredLocationWithoutPrediction = [v51 preferredLocationWithoutPrediction];
      geoLocation = [preferredLocationWithoutPrediction geoLocation];
      if (geoLocation)
      {
        preferredLocationWithoutPrediction2 = [v34 preferredLocationWithoutPrediction];
        geoLocation2 = [preferredLocationWithoutPrediction2 geoLocation];
        [geoLocation2 coordinate];
        v56 = CLLocationCoordinate2DIsValid(v223);

        if (v56)
        {
          v57 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C5126000, v57, OS_LOG_TYPE_DEBUG, "Using Event's preferredLocationWithoutPrediction", buf, 2u);
          }

          preferredLocationWithoutPrediction3 = [v34 preferredLocationWithoutPrediction];
          goto LABEL_79;
        }
      }

      else
      {
      }

      preferredLocation = [v34 preferredLocation];
      geoLocation3 = [preferredLocation geoLocation];
      if (geoLocation3)
      {
        preferredLocation2 = [v34 preferredLocation];
        geoLocation4 = [preferredLocation2 geoLocation];
        [geoLocation4 coordinate];
        v63 = CLLocationCoordinate2DIsValid(v224);

        if (v63)
        {
          v64 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C5126000, v64, OS_LOG_TYPE_DEBUG, "Using Event's preferredLocation", buf, 2u);
          }

          preferredLocationWithoutPrediction3 = [v34 preferredLocation];
          goto LABEL_79;
        }
      }

      else
      {
      }

      structuredLocation = [v34 structuredLocation];
      geoLocation5 = [structuredLocation geoLocation];
      if (!geoLocation5)
      {
        goto LABEL_77;
      }

      structuredLocation2 = [v34 structuredLocation];
      geoLocation6 = [structuredLocation2 geoLocation];
      [geoLocation6 coordinate];
      v73 = CLLocationCoordinate2DIsValid(v225);

      if (!v73)
      {
        goto LABEL_78;
      }

      v74 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v74, OS_LOG_TYPE_DEBUG, "Using Event's structuredLocation", buf, 2u);
      }

      preferredLocationWithoutPrediction3 = [v34 structuredLocation];
LABEL_79:

      geoLocation7 = [preferredLocationWithoutPrediction3 geoLocation];
      if (!geoLocation7)
      {
        if (!MapsSuggestionsLoggingIsVerbose())
        {
LABEL_91:

          goto LABEL_35;
        }

        v76 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          title6 = [v34 title];
          v82 = @"~~~";
          if ([title6 length] >= 3)
          {
            v83 = objc_alloc(MEMORY[0x1E696AEC0]);
            v84 = [title6 substringToIndex:3];
            v82 = [v83 initWithFormat:@"{%@...}", v84];
          }

          *buf = 138412290;
          *&buf[4] = v82;
          _os_log_impl(&dword_1C5126000, v76, OS_LOG_TYPE_DEBUG, "Skipping event %@ because it lacks a location", buf, 0xCu);
        }

LABEL_90:

        goto LABEL_91;
      }

      if ([v34 hasPredictedLocation])
      {
        v76 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          title7 = [v34 title];
          v78 = @"~~~";
          if ([title7 length] >= 3)
          {
            v79 = objc_alloc(MEMORY[0x1E696AEC0]);
            v80 = [title7 substringToIndex:3];
            v78 = [v79 initWithFormat:@"{%@...}", v80];
          }

          *buf = 138412290;
          *&buf[4] = v78;
          _os_log_impl(&dword_1C5126000, v76, OS_LOG_TYPE_DEBUG, "Skipping event %@ because the location is a suggested location", buf, 0xCu);
        }

        goto LABEL_90;
      }

      if (v25)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firstObject = [v25 firstObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v87 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *&buf[4] = v25;
              _os_log_impl(&dword_1C5126000, v87, OS_LOG_TYPE_DEBUG, "Received CustomObject:%@", buf, 0xCu);
            }
          }
        }
      }

      v25 = v25;
      firstObject2 = [v25 firstObject];
      v88 = [(MapsSuggestionsEventKit *)val _entryTypeFromSchema:firstObject2];
      [geoLocation7 distanceFromLocation:periodCopy];
      v90 = v89;
      if (v88 != 15)
      {
        GEOConfigGetDouble();
        if (v91 < v90)
        {
          v92 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            title8 = [v34 title];
            v94 = @"~~~";
            if ([title8 length] >= 3)
            {
              v95 = objc_alloc(MEMORY[0x1E696AEC0]);
              v96 = [title8 substringToIndex:3];
              v94 = [v95 initWithFormat:@"{%@...}", v96];
            }

            *buf = 138412546;
            *&buf[4] = v94;
            *&buf[12] = 2048;
            *&buf[14] = v90;
            _os_log_impl(&dword_1C5126000, v92, OS_LOG_TYPE_DEBUG, "Skipping event %@ because it is too far away (%.2f m).", buf, 0x16u);
          }

          goto LABEL_35;
        }
      }

      GEOConfigGetDouble();
      if (v88 == 15 || v88 == 13)
      {
        GEOConfigGetDouble();
      }

      v98 = v97;
      v99 = [MapsSuggestionsEntry alloc];
      title9 = [v34 title];
      v101 = [(MapsSuggestionsEntry *)v99 initWithType:v88 title:title9];

      [geoLocation7 coordinate];
      v103 = v102;
      v105 = v104;
      uniqueId2 = [v34 uniqueId];
      [(MapsSuggestionsEntry *)v101 setString:uniqueId2 forKey:@"MapsSuggestionsCalendarPK"];

      [(MapsSuggestionsEntry *)v101 setString:@"MapsSuggestionsCalendarPK" forKey:@"MapsSuggestionsPrimaryKey"];
      v107 = [MEMORY[0x1E696AD98] numberWithDouble:v103];
      [(MapsSuggestionsEntry *)v101 setNumber:v107 forKey:@"MapsSuggestionsLatitudeKey"];

      v108 = [MEMORY[0x1E696AD98] numberWithDouble:v105];
      [(MapsSuggestionsEntry *)v101 setNumber:v108 forKey:@"MapsSuggestionsLongitudeKey"];

      -[MapsSuggestionsEntry setBoolean:forKey:](v101, "setBoolean:forKey:", [geoLocation7 referenceFrame] != 2, @"MapsSuggestionsShiftCoordinateIfNeededKey");
      location = [v34 location];
      v110 = location;
      if (!location)
      {
        locationWithoutPrediction = [v34 locationWithoutPrediction];
        v110 = locationWithoutPrediction;
      }

      [(MapsSuggestionsEntry *)v101 setString:v110 forKey:@"MapsSuggestionsDestinationAddressKey"];
      if (!location)
      {
      }

      startDate = [v34 startDate];
      [(MapsSuggestionsEntry *)v101 setDate:startDate forKey:@"MapsSuggestionsScheduledTimeKey"];

      endDate = [v34 endDate];
      [(MapsSuggestionsEntry *)v101 setDate:endDate forKey:@"MapsSuggestionsScheduledEndTimeKey"];

      [(MapsSuggestionsEntry *)v101 setBoolean:1 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
      suggestionInfo = [v34 suggestionInfo];
      opaqueKey = [suggestionInfo opaqueKey];
      [(MapsSuggestionsEntry *)v101 setString:opaqueKey forKey:@"MapsSuggestionsCoreSuggestionsOpaqueKey"];

      suggestionInfo2 = [v34 suggestionInfo];
      uniqueKey = [suggestionInfo2 uniqueKey];
      [(MapsSuggestionsEntry *)v101 setString:uniqueKey forKey:@"MapsSuggestionsCoreSuggestionsUniqueKey"];

      eventIdentifier = [v34 eventIdentifier];
      [(MapsSuggestionsEntry *)v101 setString:eventIdentifier forKey:@"MapsSuggestionsEventIDKey"];

      endDate2 = [v34 endDate];
      [(MapsSuggestionsEntry *)v101 setExpires:endDate2];

      timeZone = [v34 timeZone];
      name = [timeZone name];
      [(MapsSuggestionsEntry *)v101 setString:name forKey:@"MapsSuggestionsEventTimeZoneKey"];

      [(MapsSuggestionsEntry *)v101 setBoolean:v98 > v90 forKey:@"MapsSuggestionsAlreadyThereKey"];
      v187 = v34;
      organizer = [v187 organizer];
      if (organizer)
      {
        organizer2 = [v187 organizer];
        isCurrentUser = [organizer2 isCurrentUser];

        v124 = isCurrentUser ^ 1u;
      }

      else
      {
        v124 = 0;
      }

      [(MapsSuggestionsEntry *)v101 setBoolean:v124 forKey:@"MapsSuggestionsCalendarIsInvitationKey"];
      v125 = objc_alloc(MEMORY[0x1E695DFD8]);
      v218 = MapsSuggestionsCalendarAppBundleID;
      v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v218 count:1];
      v181 = [v125 initWithArray:v126];

      [(MapsSuggestionsEntry *)v101 setSet:v181 forKey:@"MapsSuggestionsAssociatedBundleIDsKey"];
      [(MapsSuggestionsEntry *)v101 setBoolean:[v187 hasRecurrenceRules] forKey:@"MapsSuggestionsCalendarEventIsRecurringKey"];
      calendar = [v187 calendar];
      LODWORD(v126) = [calendar sharingStatus] == 2;

      if (v126)
      {
        [(MapsSuggestionsEntry *)v101 setBoolean:1 forKey:@"MapsSuggestionsCalendarIsSharedToMeKey"];
      }

      title10 = [preferredLocationWithoutPrediction3 title];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [title10 length])
      {
        v128 = title10;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *&buf[24] = __Block_byref_object_copy__3;
        *&buf[32] = __Block_byref_object_dispose__3;
        v221 = 0;
        v217[0] = MEMORY[0x1E69E9820];
        v217[1] = 3221225472;
        v217[2] = ___firstLineOfString_block_invoke;
        v217[3] = &unk_1E81F6000;
        v217[4] = buf;
        [v128 enumerateLinesUsingBlock:v217];
        v129 = *(*&buf[8] + 40);
        _Block_object_dispose(buf, 8);

        [(MapsSuggestionsEntry *)v101 setString:v129 forKey:@"MapsSuggestionsEntryTitleNameKey"];
        v130 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v128;
          _os_log_impl(&dword_1C5126000, v130, OS_LOG_TYPE_DEBUG, "About to process entry with name %@.", buf, 0xCu);
        }
      }

      type = [(MapsSuggestionsEntry *)v101 type];
      if (type > 13)
      {
        switch(type)
        {
          case 14:
            v132 = [(MapsSuggestionsEventKit *)val _addCarRentalFieldsToEntry:v101 event:v187];
            break;
          case 15:
            v132 = [(MapsSuggestionsEventKit *)val _addTravelFlightFieldsToEntry:v101 fromSchemaOrgDictionary:firstObject2 event:v187];
            break;
          case 16:
            v132 = [(MapsSuggestionsEventKit *)val _addTicketedEventFieldsToEntry:v101 fromSchemaOrgDictionary:firstObject2 event:v187];
            break;
          default:
LABEL_133:
            if ([(MapsSuggestionsEntry *)v101 type]!= -1000000)
            {
              v133 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446978;
                *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventKit.m";
                *&buf[12] = 1024;
                *&buf[14] = 946;
                *&buf[18] = 2082;
                *&buf[20] = "[MapsSuggestionsEventKit _q_createEntriesWithinPeriod:location:fetchMapItems:handler:]";
                *&buf[28] = 2082;
                *&buf[30] = "entry.type + 1000000L";
                _os_log_impl(&dword_1C5126000, v133, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. How can we get here? That's not a type MSgEventKit can produce!", buf, 0x26u);
              }

              v216 = 0;
              v134 = 1;
              goto LABEL_178;
            }

LABEL_140:
            v135 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_1C5126000, v135, OS_LOG_TYPE_DEBUG, "Changing type of the entry to MapsSuggestionsEntryTypeCalendarEvent", buf, 2u);
            }

            v136 = [MapsSuggestionsEntry alloc];
            title11 = [(MapsSuggestionsEntry *)v101 title];
            v138 = [(MapsSuggestionsEntry *)v136 initWithType:3 title:title11];

            [v138 mergeFromSuggestionEntry:v101 behavior:0];
            v139 = v138;

            LOBYTE(v138) = [(MapsSuggestionsEventKit *)val _addCalendarEventFieldsToEntry:v139 event:v187];
            if ((v138 & 1) == 0)
            {
              v152 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = firstObject2;
                _os_log_impl(&dword_1C5126000, v152, OS_LOG_TYPE_ERROR, "This should never happen. Continue - unusable Schema.org dictionary %@ AND bad event data to construct a sensible Calendar Event entry", buf, 0xCu);
              }

              v134 = 35;
              v101 = v139;
              goto LABEL_178;
            }

            v101 = v139;
            goto LABEL_144;
        }
      }

      else
      {
        switch(type)
        {
          case 3:
            v132 = [(MapsSuggestionsEventKit *)val _addCalendarEventFieldsToEntry:v101 event:v187];
            break;
          case 8:
            v132 = [(MapsSuggestionsEventKit *)val _addRestaurantReservationFieldsToEntry:v101 fromSchemaOrgDictionary:firstObject2 event:v187];
            break;
          case 13:
            v132 = [(MapsSuggestionsEventKit *)val _addHotelFieldsToEntry:v101 fromSchemaOrgDictionary:firstObject2 event:v187];
            break;
          default:
            goto LABEL_133;
        }
      }

      if ((v132 & 1) == 0)
      {
        goto LABEL_140;
      }

LABEL_144:
      if (locationCopy)
      {
        mapKitHandle = [preferredLocationWithoutPrediction3 mapKitHandle];
        GEOFindOrCreateLog();
        v141 = v179 = mapKitHandle;
        if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
        {
          uniqueName3 = [val uniqueName];
          *buf = 138412546;
          *&buf[4] = uniqueName3;
          *&buf[12] = 2080;
          *&buf[14] = "_q_createEntriesWithinPeriod_MapItem";
          _os_log_impl(&dword_1C5126000, v141, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
        }

        v143 = GEOFindOrCreateLog();
        if (os_signpost_enabled(v143))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C5126000, v143, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_q_createEntriesWithinPeriod_MapItem", "", buf, 2u);
        }

        if (v179)
        {
          v144 = [(objc_class *)val[7].isa objectForKeyedSubscript:?];
          v145 = [(objc_class *)val[8].isa objectForKeyedSubscript:v179];
          integerValue = [v145 integerValue];

          if (v144)
          {
            v147 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
            [(MapsSuggestionsEntry *)v101 setNumber:v147 forKey:@"MapsSuggestionsGEOMapItemOriginKey"];

            [(MapsSuggestionsEntry *)v101 setGeoMapItem:v144];
            [v176 addObject:v101];
            [v173 removeObject:v179];
            v148 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
            {
              uniqueName4 = [val uniqueName];
              *buf = 138412546;
              *&buf[4] = uniqueName4;
              *&buf[12] = 2080;
              *&buf[14] = "_q_createEntriesWithinPeriod_MapItem";
              _os_log_impl(&dword_1C5126000, v148, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
            }

            v150 = GEOFindOrCreateLog();
            if (os_signpost_enabled(v150))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C5126000, v150, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_q_createEntriesWithinPeriod_MapItem", "", buf, 2u);
            }

            v134 = 35;
LABEL_177:

            goto LABEL_178;
          }

          v156 = 0;
          v154 = v179;
        }

        else
        {
          v153 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C5126000, v153, OS_LOG_TYPE_DEBUG, "We have no MapItemHandle for this Event", buf, 2u);
          }

          v154 = 0;
          if ([(MapsSuggestionsEntry *)v101 containsKey:@"MapsSuggestionsDestinationAddressKey"]&& [(MapsSuggestionsEntry *)v101 containsKey:@"MapsSuggestionsLatitudeKey"]&& [(MapsSuggestionsEntry *)v101 containsKey:@"MapsSuggestionsLongitudeKey"])
          {
            v155 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_1C5126000, v155, OS_LOG_TYPE_DEBUG, "Entry has address, removing lat/long", buf, 2u);
            }

            [(MapsSuggestionsEntry *)v101 numberForKey:@"MapsSuggestionsLatitudeKey"];
            v144 = v154 = 0;
            v156 = [(MapsSuggestionsEntry *)v101 numberForKey:@"MapsSuggestionsLongitudeKey"];
          }

          else
          {
            v156 = 0;
            v144 = 0;
          }
        }

        [(MapsSuggestionsEntry *)v101 setMapItemHandleData:v154];
        v157 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
        {
          uniqueName5 = [val uniqueName];
          *buf = 138412546;
          *&buf[4] = uniqueName5;
          *&buf[12] = 2080;
          *&buf[14] = "_q_createEntriesWithinPeriod_MapItem_Download";
          _os_log_impl(&dword_1C5126000, v157, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
        }

        v159 = GEOFindOrCreateLog();
        if (os_signpost_enabled(v159))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C5126000, v159, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_q_createEntriesWithinPeriod_MapItem_Download", "", buf, 2u);
        }

        dispatch_group_enter(group);
        isa = val[1].isa;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __87__MapsSuggestionsEventKit__q_createEntriesWithinPeriod_location_fetchMapItems_handler___block_invoke_413;
        block[3] = &unk_1E81F5F90;
        objc_copyWeak(&v204, &location);
        v197 = v101;
        v198 = v187;
        v199 = group;
        v144 = v144;
        v200 = v144;
        v150 = v156;
        v201 = v150;
        v202 = v176;
        v203 = v179;
        dispatch_async(isa, block);

        objc_destroyWeak(&v204);
        v134 = 0;
        goto LABEL_177;
      }

      [v176 addObject:v101];
      v151 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v151, OS_LOG_TYPE_INFO, "Skipping fetching the mapItems because fetchMapItems == NO", buf, 2u);
      }

      v134 = 35;
LABEL_178:

      if (v134 && v134 != 35)
      {

        v172 = v216;
        goto LABEL_187;
      }

LABEL_36:
      ++v23;
    }

    while (v22 != v23);
    v161 = [obj countByEnumeratingWithState:&v205 objects:v219 count:16];
    v22 = v161;
  }

  while (v161);
LABEL_182:

  v162 = val[1].isa;
  v191[0] = MEMORY[0x1E69E9820];
  v191[1] = 3221225472;
  v191[2] = __87__MapsSuggestionsEventKit__q_createEntriesWithinPeriod_location_fetchMapItems_handler___block_invoke_418;
  v191[3] = &unk_1E81F5FD8;
  objc_copyWeak(&v195, &location);
  v163 = v176;
  v192 = v163;
  v164 = v182;
  v194 = v164;
  v193 = v173;
  dispatch_group_notify(group, v162, v191);
  if ((locationCopy & 1) == 0)
  {
    v165 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
    {
      v166 = NSStringFromMapsSuggestionsEntries(v163);
      *buf = 138412290;
      *&buf[4] = v166;
      _os_log_impl(&dword_1C5126000, v165, OS_LOG_TYPE_DEBUG, "fetchMapItems == NO. Sending %@", buf, 0xCu);
    }

    (*(v164 + 2))(v164, v163, 0);
  }

  objc_destroyWeak(&v195);
  v172 = 1;
LABEL_187:

LABEL_198:
LABEL_199:
  objc_destroyWeak(&location);
LABEL_200:

  return v172;
}

- (BOOL)deleteOrDeclineEntry:(id)entry handler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v10 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *location = 136446978;
    *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventKit.m";
    v21 = 1024;
    v22 = 223;
    v23 = 2082;
    v24 = "[MapsSuggestionsEventKit deleteOrDeclineEntry:handler:]";
    v25 = 2082;
    v26 = "nil == (handler)";
    v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. handler cannot be nil";
LABEL_9:
    v12 = v10;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 38;
LABEL_12:
    _os_log_impl(&dword_1C5126000, v12, v13, v11, location, v14);
    goto LABEL_13;
  }

  if (!entryCopy)
  {
    v10 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *location = 136446978;
    *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventKit.m";
    v21 = 1024;
    v22 = 224;
    v23 = 2082;
    v24 = "[MapsSuggestionsEventKit deleteOrDeclineEntry:handler:]";
    v25 = 2082;
    v26 = "nil == (entry)";
    v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry";
    goto LABEL_9;
  }

  if (([entryCopy containsKey:@"MapsSuggestionsEventIDKey"] & 1) == 0)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *location = 138412290;
      *&location[4] = entryCopy;
      v11 = "Could not remove Entry without EventIDKey: %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEBUG;
      v14 = 12;
      goto LABEL_12;
    }

LABEL_13:

    v9 = 0;
    goto LABEL_14;
  }

  objc_initWeak(location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MapsSuggestionsEventKit_deleteOrDeclineEntry_handler___block_invoke;
  block[3] = &unk_1E81F5DB0;
  objc_copyWeak(&v19, location);
  v17 = entryCopy;
  v18 = handlerCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(location);
  v9 = 1;
LABEL_14:

  return v9;
}

void __56__MapsSuggestionsEventKit_deleteOrDeclineEntry_handler___block_invoke(void **a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsEventKit *)WeakRetained _q_deleteOrDeclineEntry:a1[5] handler:?];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsEventKit.m";
      v7 = 1026;
      v8 = 233;
      v9 = 2082;
      v10 = "[MapsSuggestionsEventKit deleteOrDeclineEntry:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  observers = self->_observers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__MapsSuggestionsEventKit_registerObserver___block_invoke;
  v6[3] = &unk_1E81F5EF0;
  objc_copyWeak(&v7, &location);
  [(MapsSuggestionsObservers *)observers registerObserver:observerCopy handler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __44__MapsSuggestionsEventKit_registerObserver___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained[2] startListeningForChanges];
    }

    else
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136446722;
        v6 = "MapsSuggestionsEventKit.m";
        v7 = 1026;
        v8 = 245;
        v9 = 2082;
        v10 = "[MapsSuggestionsEventKit registerObserver:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
      }
    }
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  observers = self->_observers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__MapsSuggestionsEventKit_unregisterObserver___block_invoke;
  v6[3] = &unk_1E81F5EF0;
  objc_copyWeak(&v7, &location);
  [(MapsSuggestionsObservers *)observers unregisterObserver:observerCopy handler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __46__MapsSuggestionsEventKit_unregisterObserver___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained[2] stopListeningForChanges];
    }

    else
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136446722;
        v6 = "MapsSuggestionsEventKit.m";
        v7 = 1026;
        v8 = 256;
        v9 = 2082;
        v10 = "[MapsSuggestionsEventKit unregisterObserver:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
      }
    }
  }
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)eventKitDidChange:(id)change
{
  v9 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [changeCopy uniqueName];
    v7 = 138412290;
    v8 = uniqueName;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Received eventKitDidChange:%@", &v7, 0xCu);
  }

  [(MapsSuggestionsCanKicker *)self->_changedNotificationCanKicker kickCanBySameTime];
}

- (uint64_t)_addTravelFlightFieldsToEntry:(void *)entry fromSchemaOrgDictionary:(void *)dictionary event:
{
  v7 = a2;
  entryCopy = entry;
  dictionaryCopy = dictionary;
  if (!self)
  {
    goto LABEL_32;
  }

  if ([v7 type] != 15)
  {
    [MapsSuggestionsEventKit _addTravelFlightFieldsToEntry:fromSchemaOrgDictionary:event:];
LABEL_32:
    v47 = 0;
    goto LABEL_30;
  }

  selfCopy = self;
  startDate = [dictionaryCopy startDate];
  GEOConfigGetDouble();
  v11 = [startDate dateByAddingTimeInterval:?];
  [v7 setExpires:v11];

  GEOConfigGetDouble();
  [v7 setWeight:?];
  v53 = dictionaryCopy;
  startDate2 = [dictionaryCopy startDate];
  [v7 setDate:startDate2 forKey:@"MapsSuggestionsFlightDepartureTimeKey"];

  v13 = [entryCopy objectForKeyedSubscript:@"reservationFor"];
  v14 = [v13 objectForKeyedSubscript:@"flightNumber"];
  v15 = MEMORY[0x1E696AB08];
  v16 = v14;
  letterCharacterSet = [v15 letterCharacterSet];
  v18 = [v16 rangeOfCharacterFromSet:letterCharacterSet];

  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [v13 objectForKeyedSubscript:@"airlineCode"];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      [v13 objectForKeyedSubscript:@"airline"];
      v23 = v22 = entryCopy;
      v21 = [v23 objectForKeyedSubscript:@"iataCode"];

      entryCopy = v22;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v21 length])
    {
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", v21, v16];

      v16 = v24;
    }
  }

  [v7 setString:v16 forKey:@"MapsSuggestionsFullFlightNumberKey"];
  v25 = [v13 objectForKey:@"departureAirportCode"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 length])
  {
    v49 = v25;
    v26 = v25;
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__3;
    v66 = __Block_byref_object_dispose__3;
    v67 = 0;
    v57 = MEMORY[0x1E69E9820];
    v58 = 3221225472;
    v59 = ___firstLineOfString_block_invoke;
    v60 = &unk_1E81F6000;
    v61 = &v62;
    [v26 enumerateLinesUsingBlock:&v57];
    v27 = v63[5];
    _Block_object_dispose(&v62, 8);

    [v7 setString:v27 forKey:@"MapsSuggestionsEntryTitleNameKey"];
    v28 = v26;
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__3;
    v66 = __Block_byref_object_dispose__3;
    v67 = 0;
    v57 = MEMORY[0x1E69E9820];
    v58 = 3221225472;
    v59 = ___firstLineOfString_block_invoke;
    v60 = &unk_1E81F6000;
    v61 = &v62;
    [v28 enumerateLinesUsingBlock:&v57];
    v29 = v63[5];
    _Block_object_dispose(&v62, 8);

    [v7 setString:v29 forKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
    v25 = v49;
  }

  v30 = [v13 objectForKey:@"arrivalAirportCode"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v30 length])
  {
    v31 = v25;
    v32 = v30;
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__3;
    v66 = __Block_byref_object_dispose__3;
    v67 = 0;
    v57 = MEMORY[0x1E69E9820];
    v58 = 3221225472;
    v59 = ___firstLineOfString_block_invoke;
    v60 = &unk_1E81F6000;
    v61 = &v62;
    [v32 enumerateLinesUsingBlock:&v57];
    v33 = v63[5];
    _Block_object_dispose(&v62, 8);

    [v7 setString:v33 forKey:@"MapsSuggestionsFlightArrivalAirportCodeKey"];
    v25 = v31;
  }

  v34 = [v13 objectForKey:@"departureAirport"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = [v34 objectForKey:@"iataCode"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v35 length])
    {
      v50 = v25;
      v36 = v35;
      v62 = 0;
      v63 = &v62;
      v64 = 0x3032000000;
      v65 = __Block_byref_object_copy__3;
      v66 = __Block_byref_object_dispose__3;
      v67 = 0;
      v57 = MEMORY[0x1E69E9820];
      v58 = 3221225472;
      v59 = ___firstLineOfString_block_invoke;
      v60 = &unk_1E81F6000;
      v61 = &v62;
      [v36 enumerateLinesUsingBlock:&v57];
      v37 = v63[5];
      _Block_object_dispose(&v62, 8);

      [v7 setString:v37 forKey:@"MapsSuggestionsEntryTitleNameKey"];
      v38 = v36;
      v62 = 0;
      v63 = &v62;
      v64 = 0x3032000000;
      v65 = __Block_byref_object_copy__3;
      v66 = __Block_byref_object_dispose__3;
      v67 = 0;
      v57 = MEMORY[0x1E69E9820];
      v58 = 3221225472;
      v59 = ___firstLineOfString_block_invoke;
      v60 = &unk_1E81F6000;
      v61 = &v62;
      [v38 enumerateLinesUsingBlock:&v57];
      v39 = v63[5];
      _Block_object_dispose(&v62, 8);

      [v7 setString:v39 forKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
      v25 = v50;
    }
  }

  v40 = [v13 objectForKey:@"arrivalAirport"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = [v40 objectForKeyedSubscript:@"iataCode"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v41 length])
    {
      v51 = v25;
      v42 = v41;
      v62 = 0;
      v63 = &v62;
      v64 = 0x3032000000;
      v65 = __Block_byref_object_copy__3;
      v66 = __Block_byref_object_dispose__3;
      v67 = 0;
      v57 = MEMORY[0x1E69E9820];
      v58 = 3221225472;
      v59 = ___firstLineOfString_block_invoke;
      v60 = &unk_1E81F6000;
      v61 = &v62;
      [v42 enumerateLinesUsingBlock:&v57];
      v43 = v63[5];
      _Block_object_dispose(&v62, 8);

      [v7 setString:v43 forKey:@"MapsSuggestionsFlightArrivalAirportCodeKey"];
      v25 = v51;
    }
  }

  if ([v7 containsKey:@"MapsSuggestionsFlightArrivalAirportCodeKey"])
  {
    v44 = dispatch_group_create();
    dispatch_group_enter(v44);
    v45 = *(selfCopy + 24);
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __87__MapsSuggestionsEventKit__addTravelFlightFieldsToEntry_fromSchemaOrgDictionary_event___block_invoke;
    v54[3] = &unk_1E81F5F18;
    v55 = v44;
    v46 = v44;
    MapsSuggestionsSetArrivalAirportFieldsForEntry(v7, v45, v54);
    dispatch_group_wait(v46, 0xFFFFFFFFFFFFFFFFLL);
    v56 = 1;
  }

  else
  {
    [MapsSuggestionsEventKit _addTravelFlightFieldsToEntry:? fromSchemaOrgDictionary:? event:?];
  }

  v47 = v56;
  dictionaryCopy = v53;
LABEL_30:

  return v47;
}

void __48__MapsSuggestionsEventKit__entryTypeFromSchema___block_invoke()
{
  v0 = qword_1EDC51EB0;
  qword_1EDC51EB0 = &unk_1F4471590;
}

- (void)interestingFlightEventsFrom:(id)from to:(id)to handler:(id)handler
{
  fromCopy = from;
  toCopy = to;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v11 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:fromCopy endDate:toCopy];
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__MapsSuggestionsEventKit_interestingFlightEventsFrom_to_handler___block_invoke;
  v15[3] = &unk_1E81F5DB0;
  objc_copyWeak(&v18, &location);
  v16 = v11;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = v11;
  dispatch_async(queue, v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __66__MapsSuggestionsEventKit_interestingFlightEventsFrom_to_handler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = MapsSuggestionsCurrentBestLocation();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__MapsSuggestionsEventKit_interestingFlightEventsFrom_to_handler___block_invoke_391;
    v6[3] = &unk_1E81F5230;
    v7 = *(a1 + 40);
    [(MapsSuggestionsEventKit *)WeakRetained _q_createEntriesWithinPeriod:v3 location:v4 fetchMapItems:0 handler:v6];

    v5 = v7;
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "MapsSuggestionsEventKit.m";
      v10 = 1026;
      v11 = 721;
      v12 = 2082;
      v13 = "[MapsSuggestionsEventKit interestingFlightEventsFrom:to:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __66__MapsSuggestionsEventKit_interestingFlightEventsFrom_to_handler___block_invoke_391(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 type] == 15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v8 count];
    v16 = [v7 count];
    *buf = 134218240;
    v22 = v15;
    v23 = 2048;
    v24 = v16;
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Filtered flight entries: Before: %lu, After: %lu", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __87__MapsSuggestionsEventKit__q_createEntriesWithinPeriod_location_fetchMapItems_handler___block_invoke(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-8 reason:@"All Calendars are invisible"];
    (*(v3 + 16))(v3, MEMORY[0x1E695E0F0], v4);

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [WeakRetained uniqueName];
      v8 = 138412546;
      v9 = v6;
      v10 = 2080;
      *v11 = "_q_createEntriesWithinPeriod";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_q_createEntriesWithinPeriod", "", &v8, 2u);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsEventKit.m";
      v10 = 1026;
      *v11 = 774;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsEventKit _q_createEntriesWithinPeriod:location:fetchMapItems:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void __87__MapsSuggestionsEventKit__q_createEntriesWithinPeriod_location_fetchMapItems_handler___block_invoke_398(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-8 reason:@"No events available"];
    (*(v3 + 16))(v3, MEMORY[0x1E695E0F0], v4);

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [WeakRetained uniqueName];
      v8 = 138412546;
      v9 = v6;
      v10 = 2080;
      *v11 = "_q_createEntriesWithinPeriod";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_q_createEntriesWithinPeriod", "", &v8, 2u);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsEventKit.m";
      v10 = 1026;
      *v11 = 787;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsEventKit _q_createEntriesWithinPeriod:location:fetchMapItems:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void __87__MapsSuggestionsEventKit__q_createEntriesWithinPeriod_location_fetchMapItems_handler___block_invoke_413(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = *(WeakRetained + 3);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __87__MapsSuggestionsEventKit__q_createEntriesWithinPeriod_location_fetchMapItems_handler___block_invoke_414;
    v14[3] = &unk_1E81F5F68;
    v15 = v4;
    objc_copyWeak(&v20, (a1 + 88));
    v6 = *(a1 + 48);
    v16 = *(a1 + 40);
    v7 = v6;
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    v17 = v12;
    v18 = v11;
    v19 = *(a1 + 80);
    GEOMapItemFromMapsSuggestionsEntry(v15, v5, 1, v14);

    objc_destroyWeak(&v20);
    v13 = v15;
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v22 = "MapsSuggestionsEventKit.m";
      v23 = 1026;
      v24 = 1018;
      v25 = 2082;
      v26 = "[MapsSuggestionsEventKit _q_createEntriesWithinPeriod:location:fetchMapItems:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __87__MapsSuggestionsEventKit__q_createEntriesWithinPeriod_location_fetchMapItems_handler___block_invoke_414(id *a1, void *a2, void *a3)
{
  *&v32[13] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([a1[4] containsKey:@"MapsSuggestionsGEOMapItemOriginKey"])
  {
    v7 = [a1[4] integerForKey:@"MapsSuggestionsGEOMapItemOriginKey"];
    WeakRetained = objc_loadWeakRetained(a1 + 11);
    if (WeakRetained)
    {
      v9 = WeakRetained;
      if (v7)
      {
        v10 = *(WeakRetained + 1);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __87__MapsSuggestionsEventKit__q_createEntriesWithinPeriod_location_fetchMapItems_handler___block_invoke_415;
        v19[3] = &unk_1E81F5F40;
        objc_copyWeak(v28, a1 + 11);
        v20 = v5;
        v21 = a1[4];
        v22 = a1[7];
        v23 = a1[8];
        v24 = a1[9];
        v25 = a1[10];
        v28[1] = v7;
        v26 = a1[6];
        v27 = v6;
        dispatch_async(v10, v19);

        objc_destroyWeak(v28);
        goto LABEL_20;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v9 = objc_loadWeakRetained(a1 + 11);
    if (v9)
    {
LABEL_6:
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [a1[5] title];
        *buf = 138412290;
        v30 = v12;
        _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "Could not get MapItem for event {%@}", buf, 0xCu);
      }

      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v9 uniqueName];
        *buf = 138412546;
        v30 = v14;
        v31 = 2080;
        *v32 = "_q_createEntriesWithinPeriod_MapItem_Download";
        _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
      }

      v15 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_q_createEntriesWithinPeriod_MapItem_Download", "", buf, 2u);
      }

      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = [v9 uniqueName];
        *buf = 138412546;
        v30 = v17;
        v31 = 2080;
        *v32 = "_q_createEntriesWithinPeriod_MapItem";
        _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
      }

      v18 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_q_createEntriesWithinPeriod_MapItem", "", buf, 2u);
      }

      dispatch_group_leave(a1[6]);
      goto LABEL_20;
    }
  }

  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v30 = "MapsSuggestionsEventKit.m";
    v31 = 1026;
    *v32 = 1029;
    v32[2] = 2082;
    *&v32[3] = "[MapsSuggestionsEventKit _q_createEntriesWithinPeriod:location:fetchMapItems:handler:]_block_invoke";
    _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
  }

LABEL_20:
}

void __87__MapsSuggestionsEventKit__q_createEntriesWithinPeriod_location_fetchMapItems_handler___block_invoke_415(uint64_t a1)
{
  *&v38[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v5 = [*(a1 + 40) stringForKey:@"MapsSuggestionsEntryTitleNameKey"];
      if ([v5 length])
      {
        v6 = [v4 place];
        [v6 setName:v5];

        v7 = objc_alloc_init(MEMORY[0x1E69A21E8]);
        [v7 setName:v5];
        [v4 setUserValues:v7];
        if (MapsSuggestionsLoggingIsVerbose())
        {
          v8 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v35 = 138412290;
            v36 = v4;
            _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Separately adding name to the GeoMapItem %@", &v35, 0xCu);
          }
        }
      }

      [*(a1 + 40) setGeoMapItem:v4];
      v9 = *(a1 + 40);
      v10 = MEMORY[0x1E696AD98];
      [v4 coordinate];
      v11 = [v10 numberWithDouble:?];
      [v9 setNumber:v11 forKey:@"MapsSuggestionsLatitudeKey"];

      v12 = *(a1 + 40);
      v13 = MEMORY[0x1E696AD98];
      [v4 coordinate];
      v15 = [v13 numberWithDouble:v14];
      [v12 setNumber:v15 forKey:@"MapsSuggestionsLongitudeKey"];

      [v4 coordinate];
      if ((fabs(v17) > 180.0 || fabs(v16) > 90.0) && *(a1 + 48) && *(a1 + 56))
      {
        [*(a1 + 40) setNumber:? forKey:?];
        [*(a1 + 40) setNumber:*(a1 + 56) forKey:@"MapsSuggestionsLongitudeKey"];
      }

      [*(a1 + 64) addObject:*(a1 + 40)];
      if (*(a1 + 72))
      {
        [WeakRetained[7] setObject:v4 forKeyedSubscript:?];
        v18 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 104)];
        [WeakRetained[8] setObject:v18 forKeyedSubscript:*(a1 + 72)];
      }

      v19 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = [WeakRetained uniqueName];
        v35 = 138412546;
        v36 = v20;
        v37 = 2080;
        *v38 = "_q_createEntriesWithinPeriod_MapItem_Download";
        _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v35, 0x16u);
      }

      v21 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v21))
      {
        LOWORD(v35) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_q_createEntriesWithinPeriod_MapItem_Download", "", &v35, 2u);
      }

      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = [WeakRetained uniqueName];
        v35 = 138412546;
        v36 = v23;
        v37 = 2080;
        *v38 = "_q_createEntriesWithinPeriod_MapItem";
        _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v35, 0x16u);
      }

      v24 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v24))
      {
        LOWORD(v35) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_q_createEntriesWithinPeriod_MapItem", "", &v35, 2u);
      }

      dispatch_group_leave(*(a1 + 80));
    }

    else
    {
      v26 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [*(a1 + 40) uniqueIdentifier];
        v28 = [*(a1 + 88) localizedDescription];
        v35 = 138412546;
        v36 = v27;
        v37 = 2112;
        *v38 = v28;
        _os_log_impl(&dword_1C5126000, v26, OS_LOG_TYPE_DEBUG, "Error forming geoMapItem for entry %@. Error is %@", &v35, 0x16u);
      }

      v29 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = [WeakRetained uniqueName];
        v35 = 138412546;
        v36 = v30;
        v37 = 2080;
        *v38 = "_q_createEntriesWithinPeriod_MapItem_Download";
        _os_log_impl(&dword_1C5126000, v29, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v35, 0x16u);
      }

      v31 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v31))
      {
        LOWORD(v35) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_q_createEntriesWithinPeriod_MapItem_Download", "", &v35, 2u);
      }

      v32 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = [WeakRetained uniqueName];
        v35 = 138412546;
        v36 = v33;
        v37 = 2080;
        *v38 = "_q_createEntriesWithinPeriod_MapItem";
        _os_log_impl(&dword_1C5126000, v32, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v35, 0x16u);
      }

      v34 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v34))
      {
        LOWORD(v35) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v34, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_q_createEntriesWithinPeriod_MapItem", "", &v35, 2u);
      }

      dispatch_group_leave(*(a1 + 80));
    }
  }

  else
  {
    v25 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v35 = 136446722;
      v36 = "MapsSuggestionsEventKit.m";
      v37 = 1026;
      *v38 = 1039;
      v38[2] = 2082;
      *&v38[3] = "[MapsSuggestionsEventKit _q_createEntriesWithinPeriod:location:fetchMapItems:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf3 went away in %{public}s", &v35, 0x1Cu);
    }
  }
}

void __87__MapsSuggestionsEventKit__q_createEntriesWithinPeriod_location_fetchMapItems_handler___block_invoke_418(uint64_t a1)
{
  *&v15[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) MSg_copyIf:&__block_literal_global_422];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = NSStringFromMapsSuggestionsEntries(v3);
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Sending %@", &v12, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
    [WeakRetained[7] removeObjectsForKeys:*(a1 + 40)];
    [WeakRetained[8] removeObjectsForKeys:*(a1 + 40)];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [WeakRetained uniqueName];
      v12 = 138412546;
      v13 = v7;
      v14 = 2080;
      *v15 = "_q_createEntriesWithinPeriod_Entries";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v12, 0x16u);
    }

    v8 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v8))
    {
      LOWORD(v12) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_q_createEntriesWithinPeriod_Entries", "", &v12, 2u);
    }

    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [WeakRetained uniqueName];
      v12 = 138412546;
      v13 = v10;
      v14 = 2080;
      *v15 = "_q_createEntriesWithinPeriod";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v12, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      LOWORD(v12) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_q_createEntriesWithinPeriod", "", &v12, 2u);
    }
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446722;
      v13 = "MapsSuggestionsEventKit.m";
      v14 = 1026;
      *v15 = 1090;
      v15[2] = 2082;
      *&v15[3] = "[MapsSuggestionsEventKit _q_createEntriesWithinPeriod:location:fetchMapItems:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v12, 0x1Cu);
    }

    v3 = v11;
  }
}

BOOL __87__MapsSuggestionsEventKit__q_createEntriesWithinPeriod_location_fetchMapItems_handler___block_invoke_419(uint64_t a1, void *a2)
{
  v2 = [a2 geoMapItem];
  v3 = v2 != 0;

  return v3;
}

- (void)_q_deleteOrDeclineEntry:(void *)entry handler:
{
  v32 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = *(self + 8);
    entryCopy = entry;
    v7 = a2;
    dispatch_assert_queue_V2(v5);
    v8 = [v7 stringForKey:@"MapsSuggestionsEventIDKey"];

    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v28 = 138412290;
      v29 = v8;
      OUTLINED_FUNCTION_10_0();
      _os_log_impl(v10, v11, v12, v13, v14, v15);
    }

    v16 = [*(self + 16) eventWithIdentifier:v8];
    v17 = *(self + 16);
    v27 = 0;
    [v17 removeEvent:v16 span:0 error:&v27];
    v18 = v27;
    entryCopy[2](entryCopy);

    v19 = GEOFindOrCreateLog();
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v28 = 138412546;
        v29 = v8;
        v30 = 2112;
        v31 = v18;
        v21 = &dword_1C5126000;
        v22 = "Error during deletion of '%@': %@";
        v23 = &v28;
        v24 = v20;
        v25 = OS_LOG_TYPE_ERROR;
        v26 = 22;
LABEL_9:
        _os_log_impl(v21, v24, v25, v22, v23, v26);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v28 = 138412290;
      v29 = v8;
      OUTLINED_FUNCTION_10_0();
      goto LABEL_9;
    }
  }
}

- (BOOL)_addHotelFieldsToEntry:(void *)entry fromSchemaOrgDictionary:(void *)dictionary event:
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a2;
  entryCopy = entry;
  dictionaryCopy = dictionary;
  if (self)
  {
    type = [v7 type];
    v11 = type == 13;
    if (type == 13)
    {
      GEOConfigGetDouble();
      [v7 setWeight:?];
      v12 = v7;
      v13 = entryCopy;
      v14 = [v13 objectForKeyedSubscript:@"checkinTime"];
      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = MapsSuggestionsDateFromString(v14);
          v16 = GEOFindOrCreateLog();
          v17 = v16;
          if (v15)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              [v13 objectForKeyedSubscript:@"checkinTime"];
              v45 = 138412546;
              v46 = @"checkinTime";
              v48 = v47 = 2112;
              OUTLINED_FUNCTION_9_1();
              _os_log_impl(v18, v19, OS_LOG_TYPE_DEBUG, v20, v21, 0x16u);
            }

            [v12 setDate:v15 forKey:@"MapsSuggestionsScheduledTimeKey"];
          }

          else
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v45 = 138412290;
              v46 = @"checkinTime";
              OUTLINED_FUNCTION_9_1();
              _os_log_impl(v25, v26, OS_LOG_TYPE_ERROR, v27, v28, 0xCu);
            }

            v15 = v17;
          }
        }
      }

      v29 = v12;
      v30 = v13;
      v31 = [v30 objectForKeyedSubscript:@"checkoutTime"];
      if (v31)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = MapsSuggestionsDateFromString(v31);
          v33 = GEOFindOrCreateLog();
          v34 = v33;
          if (v32)
          {
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              [v30 objectForKeyedSubscript:@"checkoutTime"];
              v45 = 138412546;
              v46 = @"checkoutTime";
              v48 = v47 = 2112;
              OUTLINED_FUNCTION_9_1();
              _os_log_impl(v35, v36, OS_LOG_TYPE_DEBUG, v37, v38, 0x16u);
            }

            [v29 setDate:v32 forKey:@"MapsSuggestionsScheduledEndTimeKey"];
          }

          else
          {
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v45 = 138412290;
              v46 = @"checkoutTime";
              OUTLINED_FUNCTION_9_1();
              _os_log_impl(v39, v40, OS_LOG_TYPE_ERROR, v41, v42, 0xCu);
            }

            v32 = v34;
          }
        }
      }

      if ([v29 containsKey:@"MapsSuggestionsScheduledEndTimeKey"])
      {
        endDate = [v29 dateForKey:@"MapsSuggestionsScheduledEndTimeKey"];
        [v29 setExpires:endDate];
      }

      else
      {
        endDate = [dictionaryCopy endDate];
        GEOConfigGetDouble();
        v43 = [endDate dateByAddingTimeInterval:?];
        [v29 setExpires:v43];
      }
    }

    else
    {
      endDate = GEOFindOrCreateLog();
      if (os_log_type_enabled(endDate, OS_LOG_TYPE_ERROR))
      {
        v45 = 136446978;
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_3();
        v49 = "entry.type != MapsSuggestionsEntryTypeHotel";
        OUTLINED_FUNCTION_6(&dword_1C5126000, endDate, v24, "At %{public}s:%d, %{public}s forbids: %{public}s. Entry needs to be of type MapsSuggestionsEntryTypeHotel", &v45);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)_addCarRentalFieldsToEntry:(void *)entry event:
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a2;
  entryCopy = entry;
  if (!self)
  {
    v12 = 0;
    goto LABEL_18;
  }

  if ([v6 type] != 14)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v23 = 136446978;
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_3();
      v24 = "entry.type != MapsSuggestionsEntryTypeCarRental";
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_6(v13, v14, v15, v16, v17);
    }

    v12 = 0;
    goto LABEL_17;
  }

  v8 = [entryCopy customObjectForKey:@"SGEventMetadataKey"];
  if (!v8)
  {
    v18 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_7_2(v18))
    {
      *v23 = 0;
      v19 = "Suggestions custom object is nil. Returning.";
LABEL_14:
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, v19, v23, 2u);
    }

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_7_2(v20))
    {
      *v23 = 0;
      v19 = "Suggestions custom object is not an NSDictionary. Returning.";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v3 = [v8 objectForKeyedSubscript:@"SGEventMetadataCategoryDescriptionKey"];
  GEOConfigGetDouble();
  [v6 setWeight:?];
  startDate = [entryCopy startDate];
  [OUTLINED_FUNCTION_5_1() setDate:? forKey:?];

  endDate = [entryCopy endDate];
  [OUTLINED_FUNCTION_5_1() setDate:? forKey:?];

  endDate2 = [entryCopy endDate];
  [OUTLINED_FUNCTION_5_1() setExpires:?];

  if (![v3 isEqualToString:@"CarRentalPickup"])
  {
    if ([v3 isEqualToString:@"CarRentalDropoff"])
    {
      [v6 setBoolean:0 forKey:@"MapsSuggestionsCalendarCarRentalIsPickupDayKey"];
      v12 = 1;
      goto LABEL_16;
    }

    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *v23 = 0;
      _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_DEBUG, "Neither pickup nor drop off, not processing as a Car Rental entry. Returning NO.", v23, 2u);
    }

    goto LABEL_15;
  }

  v12 = 1;
  [v6 setBoolean:1 forKey:@"MapsSuggestionsCalendarCarRentalIsPickupDayKey"];
LABEL_16:

LABEL_17:
LABEL_18:

  return v12;
}

- (uint64_t)_addTicketedEventFieldsToEntry:(void *)entry fromSchemaOrgDictionary:(void *)dictionary event:
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a2;
  entryCopy = entry;
  dictionaryCopy = dictionary;
  if (!self)
  {
    goto LABEL_17;
  }

  if ([v7 type] != 16)
  {
    v27 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_7_2(v27))
    {
      v32[0] = 136446978;
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_3();
      v33 = "entry.type != MapsSuggestionsEntryTypeTicketedEvent";
      v29 = "At %{public}s:%d, %{public}s forbids: %{public}s. Entry needs to be of type MapsSuggestionsEntryTypeTicketedEvent";
LABEL_15:
      OUTLINED_FUNCTION_6(&dword_1C5126000, self, v28, v29, v32);
    }

LABEL_16:

    self = 0;
    goto LABEL_17;
  }

  if (!entryCopy)
  {
    v30 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_7_2(v30))
    {
      v32[0] = 136446978;
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_3();
      v33 = "schema == nil";
      v29 = "At %{public}s:%d, %{public}s forbids: %{public}s. Schema dictionary cannot be nil";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  endDate = [dictionaryCopy endDate];
  GEOConfigGetDouble();
  v11 = [endDate dateByAddingTimeInterval:?];
  [OUTLINED_FUNCTION_5_1() setExpires:?];

  GEOConfigGetDouble();
  [v7 setWeight:?];
  startDate = [dictionaryCopy startDate];
  [v7 setDate:startDate forKey:@"MapsSuggestionsCalendarTicketedEventShowTimeKey"];

  title = [dictionaryCopy title];
  [v7 setString:title forKey:@"MapsSuggestionsCalendarTicketedEventNameKey"];

  v14 = objc_opt_new();
  v15 = [entryCopy objectForKeyedSubscript:@"reservedTicket"];
  v16 = [v15 objectForKeyedSubscript:@"ticketedSeat"];

  v17 = [v16 objectForKeyedSubscript:@"seatSection"];
  v18 = v17;
  if (v17)
  {
    v19 = MapsSuggestionsLocalizedTicketedEvent_SectionString(v17);
    [v14 addObject:v19];
  }

  v20 = [v16 objectForKeyedSubscript:@"seatRow"];
  v21 = v20;
  if (v20)
  {
    v22 = MapsSuggestionsLocalizedTicketedEvent_SeatRowString(v20);
    [v14 addObject:v22];
  }

  v23 = [v16 objectForKeyedSubscript:@"seatNumber"];
  v24 = v23;
  if (v23)
  {
    v25 = MapsSuggestionsLocalizedTicketedEvent_SeatNumberString(v23);
    [v14 addObject:v25];
  }

  v26 = [v14 componentsJoinedByString:{@", "}];
  [v7 setString:v26 forKey:@"MapsSuggestionsCalendarTicketedEventSeatDetailsKey"];

  self = 1;
LABEL_17:

  return self;
}

- (id)_predicateForPeriod:(uint64_t)period
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (period)
  {
    if (v3)
    {
      _allowedCalendars = [(MapsSuggestionsEventKit *)period _allowedCalendars];
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(_allowedCalendars, "count")}];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v5 = _allowedCalendars;
      v10 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v5);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            if (![v14 isSuggestedEventCalendar] || GEOConfigGetBOOL())
            {
              [v9 addObject:v14];
            }
          }

          v11 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }

      v15 = *(period + 16);
      startDate = [v4 startDate];
      endDate = [v4 endDate];
      v18 = [v9 copy];
      period = [v15 predicateForEventsWithStartDate:startDate endDate:endDate calendars:v18];
    }

    else
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v24 = 136446978;
        v25 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventKit.m";
        v26 = 1024;
        v27 = 495;
        v28 = 2082;
        v29 = "[MapsSuggestionsEventKit _predicateForPeriod:]";
        v30 = 2082;
        v31 = "nil == (period)";
        OUTLINED_FUNCTION_6(&dword_1C5126000, v5, v6, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a period", &v24);
      }

      period = 0;
    }
  }

  return period;
}

- (uint64_t)_entryTypeFromSchema:(uint64_t)schema
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!schema)
  {
    integerValue = 0;
    goto LABEL_20;
  }

  v5 = [v3 objectForKeyedSubscript:@"@type"];
  v6 = v5;
  if (v5 && [v5 length])
  {
    if ([v6 containsString:@"http://schema.org/"])
    {
      v7 = [v6 stringByReplacingOccurrencesOfString:@"http://schema.org/" withString:&stru_1F444C108];

      v6 = v7;
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v40 = 138412290;
      *&v40[4] = v6;
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_10_0();
      _os_log_impl(v9, v10, v11, v12, v13, v14);
    }

    if (![v6 isEqualToString:@"EventReservation"])
    {
      if (_MergedGlobals_0 != -1)
      {
        dispatch_once(&_MergedGlobals_0, &__block_literal_global_6);
      }

      v39 = [qword_1EDC51EB0 objectForKeyedSubscript:{v6, *v40}];
      v16 = v39;
      if (v39)
      {
        integerValue = [v39 integerValue];
      }

      else
      {
        integerValue = 0;
      }

      goto LABEL_19;
    }

    v15 = [v4 objectForKeyedSubscript:@"reservationFor"];
    v16 = [v15 objectForKeyedSubscript:@"@type"];

    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *v40 = 138412290;
      *&v40[4] = v16;
      OUTLINED_FUNCTION_10_0();
      _os_log_impl(v18, v19, v20, v21, v22, v23);
    }

    if ([*(schema + 48) containsObject:v16])
    {
      v24 = [v4 objectForKeyedSubscript:@"reservedTicket"];
      v25 = [v24 objectForKeyedSubscript:@"ticketedSeat"];

      v26 = [v25 objectForKeyedSubscript:@"seatSection"];
      v27 = [v25 objectForKeyedSubscript:@"seatRow"];
      v28 = [v25 objectForKeyedSubscript:@"seatNumber"];
      v29 = [v26 length];
      v30 = [v27 length] + v29;
      v31 = [v28 length];

      if (v30 + v31)
      {
        integerValue = 16;
        goto LABEL_19;
      }
    }

    v32 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *v40 = 0;
      _os_log_impl(&dword_1C5126000, v32, OS_LOG_TYPE_DEBUG, "No subtype available or no seat information available. Changing type to CalendarEvent.", v40, 2u);
    }
  }

  else
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *v40 = 0;
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v33, v34, OS_LOG_TYPE_DEBUG, v35, v36, 2u);
    }
  }

  integerValue = 3;
LABEL_19:

LABEL_20:
  return integerValue;
}

- (uint64_t)_addCalendarEventFieldsToEntry:(void *)entry event:
{
  v5 = a2;
  entryCopy = entry;
  if (self)
  {
    if ([v5 type] == 3)
    {
      v7 = [entryCopy status] == 2;
      [entryCopy isAllDay];
      GEOConfigGetDouble();
      [v5 setWeight:?];
      endDate = [entryCopy endDate];
      GEOConfigGetDouble();
      v9 = [endDate dateByAddingTimeInterval:?];
      [OUTLINED_FUNCTION_5_1() setExpires:?];

      [v5 setBoolean:objc_msgSend(entryCopy forKey:{"isAllDay"), @"MapsSuggestionsCalendarAllDayEventKey"}];
      [v5 setBoolean:v7 forKey:@"MapsSuggestionsCalendarTentativeEventKey"];
      self = 1;
    }

    else
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_6(v11, v12, v13, v14, v15);
      }

      self = 0;
    }
  }

  return self;
}

- (BOOL)_addRestaurantReservationFieldsToEntry:(void *)entry fromSchemaOrgDictionary:(void *)dictionary event:
{
  v96 = *MEMORY[0x1E69E9840];
  v8 = a2;
  entryCopy = entry;
  dictionaryCopy = dictionary;
  if (!self)
  {
    v17 = 0;
    goto LABEL_52;
  }

  if ([v8 type] != 8)
  {
    v15 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_7_2(v15))
    {
      *buf = 136446978;
      v89 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventKit.m";
      v90 = 1024;
      v91 = 628;
      v92 = 2082;
      v93 = "[MapsSuggestionsEventKit _addRestaurantReservationFieldsToEntry:fromSchemaOrgDictionary:event:]";
      v94 = 2082;
      v95 = "entry.type != MapsSuggestionsEntryTypeRestaurantReservation";
      OUTLINED_FUNCTION_6(&dword_1C5126000, self, v16, "At %{public}s:%d, %{public}s forbids: %{public}s. Entry needs to be of type MapsSuggestionsEntryTypeRestaurantReservation", buf);
    }

    v17 = 0;
    goto LABEL_51;
  }

  GEOConfigGetDouble();
  [v8 setWeight:?];
  endDate = [dictionaryCopy endDate];
  GEOConfigGetDouble();
  v12 = [endDate dateByAddingTimeInterval:?];
  [OUTLINED_FUNCTION_5_1() setExpires:?];

  v13 = [entryCopy objectForKeyedSubscript:@"reservationId"];
  v14 = v13;
  if (v13)
  {
    self = v13;
  }

  else
  {
    suggestionInfo = [dictionaryCopy suggestionInfo];
    self = [suggestionInfo uniqueKey];
  }

  [v8 setString:self forKey:@"MapsSuggestionsReservationsBookingIDKey"];
  if (self)
  {
    [v8 setString:@"MapsSuggestionsReservationsBookingIDKey" forKey:@"MapsSuggestionsPrimaryKey"];
  }

  v19 = [entryCopy objectForKeyedSubscript:@"partySize"];
  [OUTLINED_FUNCTION_5_1() setNumber:? forKey:?];

  v20 = [entryCopy objectForKeyedSubscript:@"reservationStatus"];
  v21 = [entryCopy objectForKeyedSubscript:@"reservationFor"];
  v22 = [v21 objectForKeyedSubscript:@"name"];

  if (![v22 length])
  {
    v23 = dictionaryCopy;
    v24 = v23;
    if (!v23)
    {
      v40 = GEOFindOrCreateLog();
      if (OUTLINED_FUNCTION_11_1(v40))
      {
        OUTLINED_FUNCTION_3_0(&dword_1C5126000, v41, v42, "No Event", v43, v44, v45, v46, v81, v82, v84, v86, 0);
      }

      preferredLocationWithoutPrediction3 = 0;
      goto LABEL_37;
    }

    v85 = dictionaryCopy;
    v87 = v20;
    preferredLocationWithoutPrediction = [v23 preferredLocationWithoutPrediction];
    geoLocation = [preferredLocationWithoutPrediction geoLocation];
    if (geoLocation)
    {
      v27 = geoLocation;
      preferredLocationWithoutPrediction2 = [v24 preferredLocationWithoutPrediction];
      [preferredLocationWithoutPrediction2 geoLocation];
      v30 = v29 = v24;
      [v30 coordinate];
      v31 = CLLocationCoordinate2DIsValid(v97);

      v24 = v29;
      if (v31)
      {
        v32 = GEOFindOrCreateLog();
        if (OUTLINED_FUNCTION_11_1(v32))
        {
          OUTLINED_FUNCTION_3_0(&dword_1C5126000, v33, v34, "Using Event's preferredLocationWithoutPrediction", v35, v36, v37, v38, v81, v82, v85, v87, 0);
        }

        preferredLocationWithoutPrediction3 = [v29 preferredLocationWithoutPrediction];
        dictionaryCopy = v85;
        v20 = v87;
        goto LABEL_37;
      }
    }

    else
    {
    }

    preferredLocation = [v24 preferredLocation];
    geoLocation2 = [preferredLocation geoLocation];
    v83 = v24;
    if (geoLocation2)
    {
      v49 = geoLocation2;
      preferredLocation2 = [v24 preferredLocation];
      geoLocation3 = [preferredLocation2 geoLocation];
      [geoLocation3 coordinate];
      v52 = CLLocationCoordinate2DIsValid(v98);

      v24 = v83;
      dictionaryCopy = v85;
      if (v52)
      {
        v53 = GEOFindOrCreateLog();
        if (OUTLINED_FUNCTION_11_1(v53))
        {
          OUTLINED_FUNCTION_3_0(&dword_1C5126000, v54, v55, "Using Event's preferredLocation", v56, v57, v58, v59, v81, v83, v85, v87, 0);
        }

        preferredLocation3 = [v24 preferredLocation];
        goto LABEL_33;
      }
    }

    else
    {

      dictionaryCopy = v85;
    }

    structuredLocation = [v24 structuredLocation];
    geoLocation4 = [structuredLocation geoLocation];
    if (!geoLocation4)
    {

      preferredLocationWithoutPrediction3 = 0;
      goto LABEL_35;
    }

    v63 = geoLocation4;
    structuredLocation2 = [v24 structuredLocation];
    geoLocation5 = [structuredLocation2 geoLocation];
    [geoLocation5 coordinate];
    v66 = CLLocationCoordinate2DIsValid(v99);

    if (!v66)
    {
      preferredLocationWithoutPrediction3 = 0;
      v20 = v87;
      v24 = v83;
      goto LABEL_37;
    }

    v67 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_11_1(v67))
    {
      OUTLINED_FUNCTION_3_0(&dword_1C5126000, v68, v69, "Using Event's structuredLocation", v70, v71, v72, v73, v81, v83, v85, v87, 0);
    }

    v24 = v83;
    preferredLocation3 = [v83 structuredLocation];
LABEL_33:
    preferredLocationWithoutPrediction3 = preferredLocation3;
LABEL_35:
    v20 = v87;
LABEL_37:

    title = [preferredLocationWithoutPrediction3 title];

    v22 = title;
  }

  v75 = [v22 length];
  v17 = v75 != 0;
  if (v75)
  {
    [v8 setTitle:v22];
    v76 = v20;
    if ([v76 isEqualToString:@"http://schema.org/ReservationConfirmed"])
    {
      v77 = 1;
    }

    else if ([v76 isEqualToString:@"http://schema.org/ReservationCancelled"])
    {
      v77 = 2;
    }

    else if ([v76 isEqualToString:@"http://schema.org/ReservationPending"])
    {
      v77 = 3;
    }

    else
    {
      v77 = 0;
    }

    [v8 setInteger:v77 forKey:@"MapsSuggestionsReservationsStatusKey"];
  }

  else
  {
    v78 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v89 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventKit.m";
      v90 = 1024;
      v91 = 651;
      v92 = 2082;
      v93 = "[MapsSuggestionsEventKit _addRestaurantReservationFieldsToEntry:fromSchemaOrgDictionary:event:]";
      v94 = 2082;
      v95 = "name.length == 0u";
      OUTLINED_FUNCTION_6(&dword_1C5126000, v78, v79, "At %{public}s:%d, %{public}s forbids: %{public}s. Entry does not have name in either schema.org dictionary or in the event object", buf);
    }
  }

LABEL_51:
LABEL_52:

  return v17;
}

- (void)_q_createEntriesWithinPeriod:location:fetchMapItems:handler:.cold.1()
{
  v1 = GEOFindOrCreateLog();
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler", v4, v5, v6, v7, 2u);
  }
}

- (void)_q_createEntriesWithinPeriod:location:fetchMapItems:handler:.cold.2()
{
  v1 = GEOFindOrCreateLog();
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location", v4, v5, v6, v7, 2u);
  }
}

- (void)_q_createEntriesWithinPeriod:location:fetchMapItems:handler:.cold.3()
{
  v1 = GEOFindOrCreateLog();
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a period", v4, v5, v6, v7, 2u);
  }
}

- (void)_addTravelFlightFieldsToEntry:(_BYTE *)a1 fromSchemaOrgDictionary:event:.cold.1(_BYTE *a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_INFO, "Did not find arrival airport information in flight schema. Returning what we have.", v3, 2u);
  }

  *a1 = 1;
}

- (void)_addTravelFlightFieldsToEntry:fromSchemaOrgDictionary:event:.cold.2()
{
  v1 = GEOFindOrCreateLog();
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Entry needs to be of type MapsSuggestionsEntryTypeTravelFlight", v4, v5, v6, v7, 2u);
  }
}

@end