@interface MapsSuggestionsPortrait
- (BOOL)currentTripsWithHandler:(id)handler;
- (BOOL)fetchConnectionEntriesWithHandler:(id)handler;
- (BOOL)fetchLocationEntriesForTray:(BOOL)tray currentLocation:(id)location queue:(id)queue handler:(id)handler;
- (BOOL)futureTripsWithHandler:(id)handler;
- (MapsSuggestionsPortrait)initWithPortraitConnector:(id)connector networkRequester:(id)requester contacts:(id)contacts;
- (NSString)uniqueName;
- (id)_appConnectionEntryFromLocation:(uint64_t)location;
- (id)_entryFromLocationValue:(uint64_t)value;
- (id)fetchNamedEntitiesFromDate:(id)date;
- (id)initFromResourceDepot:(id)depot;
- (void)_geoMapItemsFromMapsSuggestionsEntry:(void *)entry handle:;
- (void)_populateFutureAndCurrentTrips;
- (void)sendFeedbackforClientID:(id)d storeType:(int64_t)type explicitlyEngagedStrings:(id)strings explicitlyRejectedStrings:(id)rejectedStrings implicitlyEngagedStrings:(id)engagedStrings implicitlyRejectedStrings:(id)implicitlyRejectedStrings;
@end

@implementation MapsSuggestionsPortrait

- (void)_populateFutureAndCurrentTrips
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_opt_new();
    v3 = MapsSuggestionsNowWithOffset(-604800.0);
    [v2 setFromDate:v3];

    v4 = MapsSuggestionsNowWithOffset(259200.0);
    [v2 setToDate:v4];

    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__6;
    v24 = __Block_byref_object_dispose__6;
    v25 = objc_opt_new();
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__6;
    v18 = __Block_byref_object_dispose__6;
    v19 = objc_opt_new();
    v5 = selfCopy[1];
    v12[5] = &v14;
    v13 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__MapsSuggestionsPortrait__populateFutureAndCurrentTrips__block_invoke;
    v12[3] = &unk_1E81F65E8;
    v12[4] = &v20;
    [v5 iterScoredEventsWithQuery:v2 error:&v13 block:v12];
    v6 = v13;
    v7 = [v21[5] copy];
    v8 = selfCopy[8];
    selfCopy[8] = v7;

    v9 = [v15[5] copy];
    v10 = selfCopy[9];
    selfCopy[9] = v9;

    selfCopy = v6;
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return selfCopy;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (id)initFromResourceDepot:(id)depot
{
  v24 = *MEMORY[0x1E69E9840];
  depotCopy = depot;
  v5 = depotCopy;
  if (!depotCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v16 = 136446978;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortrait.m";
    v18 = 1024;
    v19 = 83;
    v20 = 2082;
    v21 = "[MapsSuggestionsPortrait initFromResourceDepot:]";
    v22 = 2082;
    v23 = "nil == (resourceDepot)";
    v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to build from!";
LABEL_14:
    _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, v14, &v16, 0x26u);
    goto LABEL_15;
  }

  onePortraitConnector = [depotCopy onePortraitConnector];

  if (!onePortraitConnector)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v16 = 136446978;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortrait.m";
    v18 = 1024;
    v19 = 84;
    v20 = 2082;
    v21 = "[MapsSuggestionsPortrait initFromResourceDepot:]";
    v22 = 2082;
    v23 = "nil == (resourceDepot.onePortraitConnector)";
    v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires One PortraitConnector!";
    goto LABEL_14;
  }

  oneNetworkRequester = [v5 oneNetworkRequester];

  if (!oneNetworkRequester)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v16 = 136446978;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortrait.m";
    v18 = 1024;
    v19 = 85;
    v20 = 2082;
    v21 = "[MapsSuggestionsPortrait initFromResourceDepot:]";
    v22 = 2082;
    v23 = "nil == (resourceDepot.oneNetworkRequester)";
    v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires One Network!";
    goto LABEL_14;
  }

  oneContacts = [v5 oneContacts];

  if (!oneContacts)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortrait.m";
      v18 = 1024;
      v19 = 86;
      v20 = 2082;
      v21 = "[MapsSuggestionsPortrait initFromResourceDepot:]";
      v22 = 2082;
      v23 = "nil == (resourceDepot.oneContacts)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires One Contacts!";
      goto LABEL_14;
    }

LABEL_15:

    selfCopy = 0;
    goto LABEL_16;
  }

  onePortraitConnector2 = [v5 onePortraitConnector];
  oneNetworkRequester2 = [v5 oneNetworkRequester];
  oneContacts2 = [v5 oneContacts];
  self = [(MapsSuggestionsPortrait *)self initWithPortraitConnector:onePortraitConnector2 networkRequester:oneNetworkRequester2 contacts:oneContacts2];

  selfCopy = self;
LABEL_16:

  return selfCopy;
}

- (MapsSuggestionsPortrait)initWithPortraitConnector:(id)connector networkRequester:(id)requester contacts:(id)contacts
{
  v37 = *MEMORY[0x1E69E9840];
  connectorCopy = connector;
  requesterCopy = requester;
  contactsCopy = contacts;
  if (!connectorCopy)
  {
    v25 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortrait.m";
      v31 = 1024;
      v32 = 100;
      v33 = 2082;
      v34 = "[MapsSuggestionsPortrait initWithPortraitConnector:networkRequester:contacts:]";
      v35 = 2082;
      v36 = "nil == (portraitConnector)";
      v26 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a RoutineInterface";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_ERROR, v26, buf, 0x26u);
    }

LABEL_11:

    selfCopy = 0;
    goto LABEL_12;
  }

  if (!requesterCopy)
  {
    v25 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortrait.m";
      v31 = 1024;
      v32 = 101;
      v33 = 2082;
      v34 = "[MapsSuggestionsPortrait initWithPortraitConnector:networkRequester:contacts:]";
      v35 = 2082;
      v36 = "nil == (networkRequester)";
      v26 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a NetworkRequester";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v28.receiver = self;
  v28.super_class = MapsSuggestionsPortrait;
  v12 = [(MapsSuggestionsPortrait *)&v28 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("MapsSuggestionsPortraitQueue", v13);
    queue = v12->_queue;
    v12->_queue = v14;

    objc_storeStrong(&v12->_connector, connector);
    objc_storeStrong(&v12->_networkRequester, requester);
    v16 = objc_alloc(MEMORY[0x1E69BDC60]);
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v19 = [v16 initWithLocationField:1 bundleIdentifier:bundleIdentifier];
    criteria = v12->_criteria;
    v12->_criteria = v19;

    cachedKey = v12->_cachedKey;
    v12->_cachedKey = 0;

    cachedMapItem = v12->_cachedMapItem;
    v12->_cachedMapItem = 0;

    cachedMapItemOrigin = v12->_cachedMapItemOrigin;
    v12->_cachedMapItemOrigin = 0;

    objc_storeStrong(&v12->_contacts, contacts);
  }

  self = v12;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (BOOL)fetchLocationEntriesForTray:(BOOL)tray currentLocation:(id)location queue:(id)queue handler:(id)handler
{
  trayCopy = tray;
  v46 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  queueCopy = queue;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (+[MapsSuggestionsSiri isEnabled])
    {
      GEOConfigGetDouble();
      v14 = MapsSuggestionsNowWithOffset(-v13);
      if (trayCopy)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      v27 = [(MapsSuggestionsPortraitConnector *)self->_connector locationQuery:GEOConfigGetInteger() fromDate:v14 consumerType:v15];
      v16 = dispatch_group_create();
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *v43 = 0;
      *&v43[8] = v43;
      *&v43[16] = 0x2020000000;
      *&v43[24] = 0;
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_DEBUG, "Locations from Portrait:", &buf, 2u);
      }

      objc_initWeak(&buf, self);
      connector = self->_connector;
      v39 = 0;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __85__MapsSuggestionsPortrait_fetchLocationEntriesForTray_currentLocation_queue_handler___block_invoke_243;
      v32[3] = &unk_1E81F6598;
      v36 = v43;
      v20 = v17;
      v33 = v20;
      objc_copyWeak(&v37, &buf);
      v21 = v16;
      v34 = v21;
      v35 = locationCopy;
      v38 = trayCopy;
      [(MapsSuggestionsPortraitConnector *)connector iterRankedLocationsWithQuery:v27 error:&v39 block:v32];
      v22 = v39;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __85__MapsSuggestionsPortrait_fetchLocationEntriesForTray_currentLocation_queue_handler___block_invoke_253;
      block[3] = &unk_1E81F65C0;
      v30 = v22;
      v31 = handlerCopy;
      v29 = v20;
      v23 = v22;
      v24 = v20;
      dispatch_group_notify(v21, queueCopy, block);

      objc_destroyWeak(&v37);
      objc_destroyWeak(&buf);
      _Block_object_dispose(v43, 8);
    }

    else
    {
      v25 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *v43 = 0;
        _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_DEBUG, "User turned off Siri Suggestions for maps", v43, 2u);
      }

      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __85__MapsSuggestionsPortrait_fetchLocationEntriesForTray_currentLocation_queue_handler___block_invoke;
      v41[3] = &unk_1E81F5C38;
      v42 = handlerCopy;
      dispatch_async(queueCopy, v41);
      v14 = v42;
    }
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v43 = 136446978;
      *&v43[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortrait.m";
      *&v43[12] = 1024;
      *&v43[14] = 124;
      *&v43[18] = 2082;
      *&v43[20] = "[MapsSuggestionsPortrait fetchLocationEntriesForTray:currentLocation:queue:handler:]";
      v44 = 2082;
      v45 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. handler cannot be nil", v43, 0x26u);
    }
  }

  return handlerCopy != 0;
}

void __85__MapsSuggestionsPortrait_fetchLocationEntriesForTray_currentLocation_queue_handler___block_invoke_243(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 24) + 1;
    *(v5 + 24) = v6;
    v7 = [v3 location];
    v8 = [v7 placemark];
    v9 = [v3 location];
    v10 = NSStringFromPPLocationCategory([v9 category]);
    *buf = 67109634;
    *&buf[4] = v6;
    *&buf[8] = 2112;
    *&buf[10] = v8;
    v68 = 2112;
    v69 = v10;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "%d. %@, Category: %@", buf, 0x1Cu);
  }

  v11 = v3;
  v12 = [v11 location];
  v13 = [v12 placemark];
  v14 = [v13 location];
  if (!v14)
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v53 = [v13 name];
      *buf = 138412290;
      *&buf[4] = v53;
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "%@ did not have placemark location. Dropping it.", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v15 = [v13 name];

  if (!v15)
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "Portrait entry did not have placemark name. Dropping it.", buf, 2u);
    }

LABEL_20:
    v18 = 0;
    goto LABEL_24;
  }

  v59 = a1;
  v16 = [MapsSuggestionsEntry alloc];
  v17 = [v13 name];
  v18 = [(MapsSuggestionsEntry *)v16 initWithType:17 title:v17];

  v19 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v20 = [v19 objectForKey:*MEMORY[0x1E695D9B0]];

  v21 = objc_alloc(MEMORY[0x1E69A1B40]);
  v22 = [v13 postalAddress];
  v23 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  v24 = [v23 countryCode];
  v25 = [v21 initWithCNPostalAddress:v22 language:v20 country:v24 phoneticLocale:v20];

  v58 = v25;
  v26 = [v25 shortAddress];
  if (v26 && MapsSuggestionsLoggingIsVerbose())
  {
    v27 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v26;
      _os_log_impl(&dword_1C5126000, v27, OS_LOG_TYPE_DEBUG, "Converted Address: %@", buf, 0xCu);
    }
  }

  v57 = v26;
  [(MapsSuggestionsEntry *)v18 setString:v26 forKey:@"MapsSuggestionsDestinationAddressKey"];
  v28 = [v13 name];
  [(MapsSuggestionsEntry *)v18 setString:v28 forKey:@"MapsSuggestionsSearchStringKey"];

  v29 = [v13 _geoMapItem];

  if (v29)
  {
    v30 = [v13 _geoMapItem];
    v31 = MapsSuggestionsMapItemConvertIfNeeded(v30);
    [(MapsSuggestionsEntry *)v18 setGeoMapItem:v31];

    [(MapsSuggestionsEntry *)v18 setNumber:&unk_1F4470F30 forKey:@"MapsSuggestionsGEOMapItemOriginKey"];
  }

  v32 = objc_alloc(MEMORY[0x1E696AEC0]);
  v33 = [(MapsSuggestionsEntry *)v18 title];
  v34 = [v32 initWithFormat:@"Portrait %@", v33];
  [(MapsSuggestionsEntry *)v18 setString:v34 forKey:@"MapsSuggestionsPortraitPK"];

  [(MapsSuggestionsEntry *)v18 setString:@"MapsSuggestionsPortraitPK" forKey:@"MapsSuggestionsPrimaryKey"];
  GEOConfigGetDouble();
  v36 = MapsSuggestionsNowWithOffset(v35);
  [(MapsSuggestionsEntry *)v18 setExpires:v36];

  GEOConfigGetDouble();
  v38 = v37;
  [v11 score];
  [(MapsSuggestionsEntry *)v18 setWeight:v38 * v39];
  if (MapsSuggestionsIsValidLocation(v14))
  {
    v40 = MEMORY[0x1E696AD98];
    [v14 coordinate];
    v41 = [v40 numberWithDouble:?];
    [(MapsSuggestionsEntry *)v18 setNumber:v41 forKey:@"MapsSuggestionsLatitudeKey"];

    v42 = MEMORY[0x1E696AD98];
    [v14 coordinate];
    v44 = [v42 numberWithDouble:v43];
    [(MapsSuggestionsEntry *)v18 setNumber:v44 forKey:@"MapsSuggestionsLongitudeKey"];
  }

  v45 = [v12 mostRelevantRecord];
  v46 = [v45 source];
  v47 = [v46 bundleId];

  if (v47)
  {
    [(MapsSuggestionsEntry *)v18 setString:v47 forKey:@"MapsSuggestionsOriginBundleIDKey"];
    v48 = MEMORY[0x1E69635F8];
    v49 = v47;
    v50 = [v48 alloc];
    *buf = 0;
    v51 = [v50 initWithBundleIdentifier:v49 allowPlaceholder:0 error:buf];

    v52 = [v51 localizedName];

    [(MapsSuggestionsEntry *)v18 setString:v52 forKey:@"MapsSuggestionsOriginatingAppName"];
  }

  else
  {
    v52 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v52, OS_LOG_TYPE_ERROR, "nil originatingBundleID", buf, 2u);
    }
  }

  a1 = v59;
LABEL_24:

  if (v18)
  {
    if ([(MapsSuggestionsEntry *)v18 containsKey:@"MapsSuggestionsGEOMapItemOriginKey"])
    {
      [*(a1 + 32) addObject:v18];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 64));
      if (WeakRetained)
      {
        dispatch_group_enter(*(a1 + 40));
        v55 = WeakRetained[2];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __85__MapsSuggestionsPortrait_fetchLocationEntriesForTray_currentLocation_queue_handler___block_invoke_244;
        v60[3] = &unk_1E81F6570;
        v61 = *(a1 + 40);
        v62 = v18;
        v63 = v11;
        v64 = *(a1 + 48);
        v66 = *(a1 + 72);
        v65 = *(a1 + 32);
        if ((GEOMapItemsFromMapsSuggestionsEntry(v62, v55, 1, v60) & 1) == 0)
        {
          dispatch_group_leave(*(a1 + 40));
        }

        v56 = v61;
      }

      else
      {
        v56 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "MapsSuggestionsPortrait.m";
          *&buf[12] = 1026;
          *&buf[14] = 167;
          v68 = 2082;
          v69 = "[MapsSuggestionsPortrait fetchLocationEntriesForTray:currentLocation:queue:handler:]_block_invoke";
          _os_log_impl(&dword_1C5126000, v56, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
        }
      }
    }
  }
}

void __85__MapsSuggestionsPortrait_fetchLocationEntriesForTray_currentLocation_queue_handler___block_invoke_244(uint64_t a1, void *a2, void *a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      goto LABEL_71;
    }

    v8 = [v6 localizedDescription];
    *buf = 138412290;
    v82 = v8;
    v9 = "Error while creating mapItem from MSgEntry: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
LABEL_4:
    _os_log_impl(&dword_1C5126000, v10, v11, v9, buf, 0xCu);

    goto LABEL_5;
  }

  v60 = a1;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = v5;
  v61 = v12;
  v15 = v13;
  v16 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v82 = "MapsSuggestionsMapItem *_relevantGEOMapItem(NSArray<MapsSuggestionsMapItem *> *__strong, PPScoredLocation *__strong, CLLocation *__strong)";
    _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v17 = [v61 location];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v14;
  v18 = [obj countByEnumeratingWithState:&v69 objects:buf count:16];
  if (!v18)
  {
    v47 = v17;

    v6 = 0;
    a1 = v60;
    goto LABEL_46;
  }

  v19 = v18;
  v59 = v5;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v20 = *v70;
  v64 = v15;
  v63 = v17;
  v62 = *v70;
  while (2)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v70 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v69 + 1) + 8 * i);
      if (MapsSuggestionsLoggingIsVerbose())
      {
        v23 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = [v22 name];
          *v73 = 138412290;
          v74 = v24;
          _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_DEBUG, "Processing mapItem: %@", v73, 0xCu);
        }
      }

      if (v15)
      {
        v25 = objc_alloc(MEMORY[0x1E6985C40]);
        [v22 coordinate];
        v27 = v26;
        [v22 coordinate];
        v28 = [v25 initWithLatitude:v27 longitude:?];
        GEOConfigGetDouble();
        v30 = v29;
        [v15 distanceFromLocation:v28];
        if (v30 < v31)
        {
          v32 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v33 = [v22 name];
            *v73 = 138412290;
            v74 = v33;
            v34 = v32;
            v35 = "Retrieved GEOMapItem (%@) is not within PortraitMaxValidDistance. Moving on to the next GEOMapItem";
LABEL_24:
            _os_log_impl(&dword_1C5126000, v34, OS_LOG_TYPE_DEBUG, v35, v73, 0xCu);

            goto LABEL_25;
          }

          goto LABEL_25;
        }

        GEOConfigGetDouble();
        v37 = v36;
        [v15 distanceFromLocation:v28];
        if (v37 > v38)
        {
          v32 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v33 = [v22 name];
            *v73 = 138412290;
            v74 = v33;
            v34 = v32;
            v35 = "Retrieved GEOMapItem (%@) is within PortraitMinValidDistance. Moving on to the next GEOMapItem";
            goto LABEL_24;
          }

LABEL_25:

          goto LABEL_40;
        }
      }

      if (GEOConfigGetBOOL())
      {
        v47 = v17;
        v5 = v59;
        v6 = 0;
        a1 = v60;
        if (MapsSuggestionsLoggingIsVerbose())
        {
          v50 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            *v73 = 0;
            _os_log_impl(&dword_1C5126000, v50, OS_LOG_TYPE_DEBUG, "MapsSuggestionsDisableGEOMapItemCategoryChecker turned on. Skipping matching on geoMapItem.", v73, 2u);
          }
        }

        v49 = v22;
        goto LABEL_65;
      }

      v39 = [v22 _placeType];
      if (MapsSuggestionsLoggingIsVerbose())
      {
        v40 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v41 = [v17 placemark];
          v42 = [v41 name];
          v43 = NSStringFromPPLocationCategory([v17 category]);
          NSStringFromGEOMapItemPlaceType(v39);
          v45 = v44 = v19;
          *v73 = 138413058;
          v74 = v42;
          v75 = 2112;
          v76 = v43;
          v77 = 1024;
          v78 = v65;
          v79 = 2112;
          v80 = v45;
          _os_log_impl(&dword_1C5126000, v40, OS_LOG_TYPE_DEBUG, "Name: %@; Portrait Category: %@; %d GEOMapItem Category: %@", v73, 0x26u);

          v20 = v62;
          v15 = v64;

          v19 = v44;
          v17 = v63;
          ++v65;
        }
      }

      v46 = [v17 category];
      if ((v46 - 1) < 2)
      {
        if (v39 != 10)
        {
          continue;
        }

        if (v66)
        {
          v53 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_62;
          }

          goto LABEL_63;
        }
      }

      else
      {
        if ((v46 - 3) >= 2)
        {
          v47 = v17;
          if (!v46)
          {
            goto LABEL_64;
          }

          v51 = GEOFindOrCreateLog();
          v5 = v59;
          v6 = 0;
          a1 = v60;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = [v47 category];
            *v73 = 67109120;
            LODWORD(v74) = v52;
            _os_log_impl(&dword_1C5126000, v51, OS_LOG_TYPE_ERROR, "Location Category %d not in our switch!", v73, 8u);
          }

          v49 = 0;
LABEL_65:

          goto LABEL_66;
        }

        if ((v39 & 0xFFFFFFFD) != 8)
        {
          continue;
        }

        if (v66)
        {
          v53 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
LABEL_62:
            v55 = [v17 placemark];
            v56 = [v55 name];
            *v73 = 138412290;
            v74 = v56;
            _os_log_impl(&dword_1C5126000, v53, OS_LOG_TYPE_DEBUG, "Dropping Portrait Entry %@. More than 1 matching GEOMapItem's found", v73, 0xCu);
          }

LABEL_63:
          v47 = v17;

LABEL_64:
          v49 = 0;
          v5 = v59;
          v6 = 0;
          a1 = v60;
          goto LABEL_65;
        }
      }

      v28 = v67;
      v66 = 1;
      v67 = v22;
LABEL_40:
    }

    v19 = [obj countByEnumeratingWithState:&v69 objects:buf count:16];
    if (v19)
    {
      continue;
    }

    break;
  }

  v47 = v17;

  v5 = v59;
  v6 = 0;
  a1 = v60;
  if (!v67)
  {
LABEL_46:
    v48 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      *v73 = 0;
      _os_log_impl(&dword_1C5126000, v48, OS_LOG_TYPE_DEBUG, "No matching category mapItem found", v73, 2u);
    }

    v67 = 0;
  }

  v49 = [v67 copy];
LABEL_66:

  [*(a1 + 40) setGeoMapItem:v49];
  v57 = [*(a1 + 40) geoMapItem];

  if (!v57)
  {
    v7 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    v8 = [*(a1 + 40) title];
    *buf = 138412290;
    v82 = v8;
    v9 = "nil mapItem. Dropping entry %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEBUG;
    goto LABEL_4;
  }

  if (*(a1 + 72))
  {
    v58 = @"mapstray";
  }

  else
  {
    v58 = @"mapspoi";
  }

  [*(a1 + 40) setString:v58 forKey:{@"MapsSuggestionsPortraitClientIdentifier", v59}];
  [*(a1 + 64) addObject:*(a1 + 40)];
LABEL_71:
  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)currentTripsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_currentTrips;
  objc_sync_enter(v5);
  currentTrips = self->_currentTrips;
  if (currentTrips)
  {
    _populateFutureAndCurrentTrips = 0;
  }

  else
  {
    _populateFutureAndCurrentTrips = [(MapsSuggestionsPortrait *)self _populateFutureAndCurrentTrips];
    currentTrips = self->_currentTrips;
  }

  v8 = [(NSArray *)currentTrips copy];
  handlerCopy[2](handlerCopy, v8, _populateFutureAndCurrentTrips);

  objc_sync_exit(v5);
  return 1;
}

- (BOOL)futureTripsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_futureTrips;
  objc_sync_enter(v5);
  futureTrips = self->_futureTrips;
  if (futureTrips)
  {
    _populateFutureAndCurrentTrips = 0;
  }

  else
  {
    _populateFutureAndCurrentTrips = [(MapsSuggestionsPortrait *)self _populateFutureAndCurrentTrips];
    futureTrips = self->_futureTrips;
  }

  v8 = [(NSArray *)futureTrips copy];
  handlerCopy[2](handlerCopy, v8, _populateFutureAndCurrentTrips);

  objc_sync_exit(v5);
  return 1;
}

void __57__MapsSuggestionsPortrait__populateFutureAndCurrentTrips__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v30 = 138412290;
    *&v30[4] = v3;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_INFO, "Treating potential trip event: %@", v30, 0xCu);
  }

  v5 = v3;
  v6 = [v5 startDate];
  if (!v6 || (v7 = v6, [v5 endDate], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v12 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
LABEL_12:
      v21 = 0;
      goto LABEL_17;
    }

    *v30 = 138412290;
    *&v30[4] = v5;
    v22 = "Trip event is missing both start and end date: %@";
LABEL_11:
    _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_INFO, v22, v30, 0xCu);
    goto LABEL_12;
  }

  v9 = [v5 tripParts];
  v10 = [v9 count];

  if (!v10)
  {
    v12 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *v30 = 138412290;
    *&v30[4] = v5;
    v22 = "Trip event %@ has no parts";
    goto LABEL_11;
  }

  v11 = [v5 tripParts];
  v12 = [v11 firstObject];

  v13 = [v12 mainLocation];
  if (v13 && (v14 = v13, -[NSObject mainLocation](v12, "mainLocation"), v15 = objc_claimAutoreleasedReturnValue(), [v15 location], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v16))
  {
    v17 = [MapsSuggestionsTrip alloc];
    v18 = [v12 mainLocation];
    v19 = [v5 startDate];
    v20 = [v5 endDate];
    v21 = [(MapsSuggestionsTrip *)v17 initWithPlacemark:v18 startDate:v19 endDate:v20];
  }

  else
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v30 = 138412290;
      *&v30[4] = v5;
      _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_INFO, "Trip event %@ does not have a valid location", v30, 0xCu);
    }

    v21 = 0;
  }

LABEL_17:
  if (v21)
  {
    v23 = [(MapsSuggestionsTrip *)v21 startDate];
    if (MapsSuggestionsIsInThePast(v23))
    {
      v24 = [(MapsSuggestionsTrip *)v21 endDate];
      v25 = MapsSuggestionsIsInTheFuture(v24);

      if (v25)
      {
        v26 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *v30 = 138412290;
          *&v30[4] = v21;
          _os_log_impl(&dword_1C5126000, v26, OS_LOG_TYPE_INFO, "Trip event started before current time and ends after: %@", v30, 0xCu);
        }

        v27 = 32;
LABEL_28:

        [*(*(*(a1 + v27) + 8) + 40) addObject:v21];
        goto LABEL_29;
      }
    }

    else
    {
    }

    v28 = [(MapsSuggestionsTrip *)v21 startDate];
    v29 = MapsSuggestionsIsInTheFuture(v28);

    if (v29)
    {
      v26 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *v30 = 138412290;
        *&v30[4] = v21;
        _os_log_impl(&dword_1C5126000, v26, OS_LOG_TYPE_INFO, "Trip event will start in future: %@", v30, 0xCu);
      }

      v27 = 40;
      goto LABEL_28;
    }
  }

LABEL_29:
}

- (void)sendFeedbackforClientID:(id)d storeType:(int64_t)type explicitlyEngagedStrings:(id)strings explicitlyRejectedStrings:(id)rejectedStrings implicitlyEngagedStrings:(id)engagedStrings implicitlyRejectedStrings:(id)implicitlyRejectedStrings
{
  dCopy = d;
  v14 = MEMORY[0x1E69BDC88];
  implicitlyRejectedStringsCopy = implicitlyRejectedStrings;
  engagedStringsCopy = engagedStrings;
  rejectedStringsCopy = rejectedStrings;
  stringsCopy = strings;
  v19 = [[v14 alloc] initWithExplicitlyEngagedStrings:stringsCopy explicitlyRejectedStrings:rejectedStringsCopy implicitlyEngagedStrings:engagedStringsCopy implicitlyRejectedStrings:implicitlyRejectedStringsCopy];

  if (type)
  {
    if (type == 2)
    {
      [(MapsSuggestionsPortraitConnector *)self->_connector connectionsStore_registerFeedback:v19 clientIdentifier:dCopy completion:&__block_literal_global_260];
    }

    else if (type == 1)
    {
      [(MapsSuggestionsPortraitConnector *)self->_connector locationStore_registerFeedback:v19 clientIdentifier:dCopy completion:&__block_literal_global_12];
    }
  }

  else
  {
    [(MapsSuggestionsPortraitConnector *)self->_connector namedEntityStore_registerFeedback:v19 clientIdentifier:dCopy completion:&__block_literal_global_263];
  }
}

void __163__MapsSuggestionsPortrait_sendFeedbackforClientID_storeType_explicitlyEngagedStrings_explicitlyRejectedStrings_implicitlyEngagedStrings_implicitlyRejectedStrings___block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 || (a2 & 1) == 0)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "received error in sending feedback to Location Store %@", &v6, 0xCu);
    }
  }
}

void __163__MapsSuggestionsPortrait_sendFeedbackforClientID_storeType_explicitlyEngagedStrings_explicitlyRejectedStrings_implicitlyEngagedStrings_implicitlyRejectedStrings___block_invoke_258(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 || (a2 & 1) == 0)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "received error in sending feedback to Connections store %@", &v6, 0xCu);
    }
  }
}

void __163__MapsSuggestionsPortrait_sendFeedbackforClientID_storeType_explicitlyEngagedStrings_explicitlyRejectedStrings_implicitlyEngagedStrings_implicitlyRejectedStrings___block_invoke_261(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 || (a2 & 1) == 0)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "received error in sending feedback to Named Entity store %@", &v6, 0xCu);
    }
  }
}

- (BOOL)fetchConnectionEntriesWithHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsPortrait *)self uniqueName];
    *buf = 138412546;
    v24 = uniqueName;
    v25 = 2080;
    v26 = "fetchConnectionEntriesWithHandler";
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v7 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "fetchConnectionEntriesWithHandler", "", buf, 2u);
  }

  if (+[MapsSuggestionsSiri isEnabled])
  {
    queue = self->_queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __61__MapsSuggestionsPortrait_fetchConnectionEntriesWithHandler___block_invoke_352;
    v16[3] = &unk_1E81F5CB0;
    v9 = &v18;
    objc_copyWeak(&v18, &location);
    v10 = &v17;
    v17 = handlerCopy;
    v11 = handlerCopy;
    v12 = v16;
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "User turned off Siri: we're not using our suggestions", buf, 2u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__MapsSuggestionsPortrait_fetchConnectionEntriesWithHandler___block_invoke;
    block[3] = &unk_1E81F5CB0;
    v9 = &v21;
    objc_copyWeak(&v21, &location);
    v10 = &v20;
    v20 = handlerCopy;
    v14 = handlerCopy;
    v12 = block;
  }

  dispatch_async(queue, v12);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
  return 1;
}

void __61__MapsSuggestionsPortrait_fetchConnectionEntriesWithHandler___block_invoke(uint64_t a1)
{
  *&v10[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "BUGHUNT 0x", &v7, 2u);
    }

    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [WeakRetained uniqueName];
      v7 = 138412546;
      v8 = v5;
      v9 = 2080;
      *v10 = "fetchConnectionEntriesWithHandler";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v7, 0x16u);
    }

    v6 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v7) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "fetchConnectionEntriesWithHandler", "", &v7, 2u);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsPortrait.m";
      v9 = 1026;
      *v10 = 557;
      v10[2] = 2082;
      *&v10[3] = "[MapsSuggestionsPortrait fetchConnectionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void __61__MapsSuggestionsPortrait_fetchConnectionEntriesWithHandler___block_invoke_352(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *v64 = 0;
    *&v64[8] = v64;
    *&v64[16] = 0x3032000000;
    *&v64[24] = __Block_byref_object_copy__6;
    v65 = __Block_byref_object_dispose__6;
    v66 = 0;
    v3 = MapsSuggestionsNow();
    v4 = WeakRetained[1];
    v5 = WeakRetained[3];
    Integer = GEOConfigGetInteger();
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __61__MapsSuggestionsPortrait_fetchConnectionEntriesWithHandler___block_invoke_356;
    v57[3] = &unk_1E81F6630;
    v57[5] = v64;
    v58 = 0;
    v57[4] = WeakRetained;
    v7 = [v4 iterRecentLocationsForConsumer:2 criteria:v5 limit:Integer client:@"MapsSuggestions" error:&v58 block:v57];
    v8 = v58;
    v9 = MapsSuggestionsSecondsSince(v3);
    GEOConfigGetDouble();
    if (v9 > v10)
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        *&buf[4] = v9;
        _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_FAULT, "AppConnection SPI took too long to call back %.3f", buf, 0xCu);
      }
    }

    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "BUGHUNT 1", buf, 2u);
    }

    if (v8)
    {
      v13 = 0;
    }

    else
    {
      v13 = v7;
    }

    if (v13)
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "BUGHUNT 2", buf, 2u);
      }

      if (*(*&v64[8] + 40))
      {
        v15 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_DEBUG, "BUGHUNT 3", buf, 2u);
        }

        v16 = [*(*&v64[8] + 40) stringForKey:@"MapsSuggestionsAppConnectionOriginatingURLString"];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = [*(*&v64[8] + 40) uniqueIdentifier];
        }

        v23 = v18;

        if (WeakRetained[4] && WeakRetained[5])
        {
          v28 = [v23 isEqualToString:?];
        }

        else
        {
          v28 = 0;
        }

        v29 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5126000, v29, OS_LOG_TYPE_DEBUG, "BUGHUNT 4", buf, 2u);
        }

        if (!v28)
        {
          v42 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C5126000, v42, OS_LOG_TYPE_DEBUG, "BUGHUNT 5", buf, 2u);
          }

          v43 = *(*&v64[8] + 40);
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __61__MapsSuggestionsPortrait_fetchConnectionEntriesWithHandler___block_invoke_362;
          v54[3] = &unk_1E81F6658;
          objc_copyWeak(&v56, (a1 + 40));
          v55 = *(a1 + 32);
          [(MapsSuggestionsPortrait *)WeakRetained _geoMapItemsFromMapsSuggestionsEntry:v43 handle:v54];
          v44 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C5126000, v44, OS_LOG_TYPE_DEBUG, "BUGHUNT 6", buf, 2u);
          }

          objc_destroyWeak(&v56);
          goto LABEL_77;
        }

        v30 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5126000, v30, OS_LOG_TYPE_DEBUG, "Using cached MapItem", buf, 2u);
        }

        [*(*&v64[8] + 40) setGeoMapItem:WeakRetained[5]];
        v31 = [*(*&v64[8] + 40) stringForKey:@"MapsSuggestionsAppConnectionValueKey"];
        v32 = [v31 isEqualToString:&stru_1F444C108];

        if (v32)
        {
          v33 = *(*&v64[8] + 40);
          v34 = [v33 geoMapItem];
          v35 = [v34 name];
          [v33 setString:v35 forKey:@"MapsSuggestionsAppConnectionValueKey"];
        }

        [*(*&v64[8] + 40) setNumber:WeakRetained[6] forKey:@"MapsSuggestionsGEOMapItemOriginKey"];
        v36 = *(a1 + 32);
        v37 = *(*&v64[8] + 40);
        if (!v37)
        {
          goto LABEL_67;
        }

        v38 = v37;
        *buf = 0;
        if (MapsSuggestionsDistanceFromHereToEntry(v37, buf))
        {
          GEOConfigGetDouble();
          if (v39 >= *buf)
          {
            GEOConfigGetDouble();
            if (v47 <= *buf)
            {

              v60 = *(*&v64[8] + 40);
              v48 = 1;
              v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
              goto LABEL_68;
            }

            v40 = GEOFindOrCreateLog();
            if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_66;
            }

            *v59 = 0;
            v41 = "Entry is within AppConnectionMinValidDistance. Moving on to the next GEOMapItem";
            goto LABEL_64;
          }

          v40 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *v59 = 0;
            v41 = "Entry is not within AppConnectionMaxValidDistance. Moving on to the next GEOMapItem";
LABEL_64:
            v45 = v40;
            v46 = OS_LOG_TYPE_DEBUG;
            goto LABEL_65;
          }
        }

        else
        {
          v40 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *v59 = 0;
            v41 = "Entry has no distance available";
            v45 = v40;
            v46 = OS_LOG_TYPE_ERROR;
LABEL_65:
            _os_log_impl(&dword_1C5126000, v45, v46, v41, v59, 2u);
          }
        }

LABEL_66:

LABEL_67:
        v48 = 0;
        v49 = MEMORY[0x1E695E0F0];
LABEL_68:
        (*(v36 + 16))(v36, v49, 0);
        if (v48)
        {
        }

        v50 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5126000, v50, OS_LOG_TYPE_DEBUG, "BUGHUNT 4x", buf, 2u);
        }

        v51 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          v52 = [WeakRetained uniqueName];
          *buf = 138412546;
          *&buf[4] = v52;
          v62 = 2080;
          v63 = "fetchConnectionEntriesWithHandler";
          _os_log_impl(&dword_1C5126000, v51, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
        }

        v53 = GEOFindOrCreateLog();
        if (os_signpost_enabled(v53))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C5126000, v53, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "fetchConnectionEntriesWithHandler", "", buf, 2u);
        }

        goto LABEL_77;
      }

      v24 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v24, OS_LOG_TYPE_DEBUG, "No entries to make out of AppConnection.", buf, 2u);
      }

      (*(*(a1 + 32) + 16))();
      v25 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_DEBUG, "BUGHUNT 2x", buf, 2u);
      }

      v26 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [WeakRetained uniqueName];
        *buf = 138412546;
        *&buf[4] = v27;
        v62 = 2080;
        v63 = "fetchConnectionEntriesWithHandler";
        _os_log_impl(&dword_1C5126000, v26, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
      }

      v23 = GEOFindOrCreateLog();
      if (!os_signpost_enabled(v23))
      {
        goto LABEL_77;
      }

      *buf = 0;
    }

    else
    {
      v20 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "Error receiving locations from AppConnection %@.", buf, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
      v21 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = [WeakRetained uniqueName];
        *buf = 138412546;
        *&buf[4] = v22;
        v62 = 2080;
        v63 = "fetchConnectionEntriesWithHandler";
        _os_log_impl(&dword_1C5126000, v21, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
      }

      v23 = GEOFindOrCreateLog();
      if (!os_signpost_enabled(v23))
      {
        goto LABEL_77;
      }

      *buf = 0;
    }

    _os_signpost_emit_with_name_impl(&dword_1C5126000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "fetchConnectionEntriesWithHandler", "", buf, 2u);
LABEL_77:

    _Block_object_dispose(v64, 8);
    goto LABEL_78;
  }

  v19 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *v64 = 136446722;
    *&v64[4] = "MapsSuggestionsPortrait.m";
    *&v64[12] = 1026;
    *&v64[14] = 566;
    *&v64[18] = 2082;
    *&v64[20] = "[MapsSuggestionsPortrait fetchConnectionEntriesWithHandler:]_block_invoke";
    _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", v64, 0x1Cu);
  }

LABEL_78:
}

void __61__MapsSuggestionsPortrait_fetchConnectionEntriesWithHandler___block_invoke_356(uint64_t a1, void *a2, _BYTE *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v5 name];
    v8 = [v5 value];
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Received a new Location from AppConnection: Name %@, Value:%@", &v12, 0x16u);
  }

  v9 = [(MapsSuggestionsPortrait *)*(a1 + 32) _appConnectionEntryFromLocation:v5];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a3 = 1;
}

void __61__MapsSuggestionsPortrait_fetchConnectionEntriesWithHandler___block_invoke_362(uint64_t a1, void *a2, void *a3)
{
  *&v19[13] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v6;
        _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "Error getting MapItem for Entry: %@", buf, 0xCu);
      }
    }

    v9 = *(a1 + 32);
    if (v5)
    {
      v15 = v5;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      (*(v9 + 16))(v9, v10, 0);
    }

    else
    {
      (*(v9 + 16))(v9, MEMORY[0x1E695E0F0], 0);
    }

    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "BUGHUNT 5x", buf, 2u);
    }

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [WeakRetained uniqueName];
      *buf = 138412546;
      v17 = v14;
      v18 = 2080;
      *v19 = "fetchConnectionEntriesWithHandler";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "fetchConnectionEntriesWithHandler", "", buf, 2u);
    }
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "MapsSuggestionsPortrait.m";
      v18 = 1026;
      *v19 = 636;
      v19[2] = 2082;
      *&v19[3] = "[MapsSuggestionsPortrait fetchConnectionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelfEnd went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (void)_geoMapItemsFromMapsSuggestionsEntry:(void *)entry handle:
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  entryCopy = entry;
  v7 = entryCopy;
  if (self)
  {
    v8 = entryCopy == 0;
    v9 = GEOFindOrCreateLog();
    v10 = v9;
    if (v8)
    {
      [MapsSuggestionsPortrait _geoMapItemsFromMapsSuggestionsEntry:v9 handle:?];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        uniqueName = [self uniqueName];
        *buf = 138412546;
        v31 = uniqueName;
        v32 = 2080;
        v33 = "_geoMapItemsFromMapsSuggestionsEntry";
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
      }

      v12 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_geoMapItemsFromMapsSuggestionsEntry", "", buf, 2u);
      }

      objc_initWeak(&location, self);
      v13 = self[2];
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __71__MapsSuggestionsPortrait__geoMapItemsFromMapsSuggestionsEntry_handle___block_invoke;
      v25 = &unk_1E81F66A8;
      objc_copyWeak(&v28, &location);
      v26 = v5;
      v14 = v7;
      v27 = v14;
      if ((GEOMapItemsFromMapsSuggestionsEntry(v26, v13, 1, &v22) & 1) == 0)
      {
        v15 = self[5];
        self[5] = 0;

        v16 = self[4];
        self[4] = 0;

        v17 = self[6];
        self[6] = 0;

        v18 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-12 reason:{@"The input was wrong", v22, v23, v24, v25, v26}];
        (*(v14 + 2))(v14, 0, v18);

        v19 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          uniqueName2 = [self uniqueName];
          *buf = 138412546;
          v31 = uniqueName2;
          v32 = 2080;
          v33 = "_geoMapItemsFromMapsSuggestionsEntry";
          _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
        }

        v21 = GEOFindOrCreateLog();
        [MapsSuggestionsPortrait _geoMapItemsFromMapsSuggestionsEntry:v21 handle:?];
      }

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }
  }
}

void __71__MapsSuggestionsPortrait__geoMapItemsFromMapsSuggestionsEntry_handle___block_invoke(id *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[10];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__MapsSuggestionsPortrait__geoMapItemsFromMapsSuggestionsEntry_handle___block_invoke_372;
    v11[3] = &unk_1E81F6680;
    objc_copyWeak(&v15, a1 + 6);
    v12 = v6;
    v13 = a1[4];
    v14 = a1[5];
    dispatch_async(v9, v11);

    objc_destroyWeak(&v15);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "MapsSuggestionsPortrait.m";
      v18 = 1026;
      v19 = 803;
      v20 = 2082;
      v21 = "[MapsSuggestionsPortrait _geoMapItemsFromMapsSuggestionsEntry:handle:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __71__MapsSuggestionsPortrait__geoMapItemsFromMapsSuggestionsEntry_handle___block_invoke_372(uint64_t a1)
{
  *&v54[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (!*(a1 + 32))
    {
      v8 = [*(a1 + 40) geoMapItem];

      if (v8)
      {
        v9 = [*(a1 + 40) integerForKey:@"MapsSuggestionsGEOMapItemOriginKey"];
        v7 = [*(a1 + 40) geoMapItem];
        v10 = [v7 _muid];
        v11 = [*(a1 + 40) stringForKey:@"MapsSuggestionsAppConnectionValueKey"];
        v12 = [v11 isEqualToString:&stru_1F444C108];

        if (v12)
        {
          v13 = *(a1 + 40);
          v14 = [v7 name];
          [v13 setString:v14 forKey:@"MapsSuggestionsAppConnectionValueKey"];
        }

        v15 = [v7 _firstRelatedPlaceListForType:2];
        v16 = v15;
        if (v10 || ([v15 mapIdentifiers], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "count"), v20, v21 == 1) && (objc_msgSend(v16, "mapIdentifiers"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "firstObject"), v23 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v23, "muid"), v23, v22, v10))
        {
          if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            v17 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "Trying second pass at getting a better MapItem", buf, 2u);
            }

            [*(a1 + 40) setInteger:0 forKey:@"MapsSuggestionsGEOMapItemOriginKey"];
            v18 = *(a1 + 40);
            v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
            [v18 setNumber:v19 forKey:@"MapsSuggestionsMUIDKey"];

            [(MapsSuggestionsPortrait *)WeakRetained _geoMapItemsFromMapsSuggestionsEntry:*(a1 + 48) handle:?];
LABEL_42:

            goto LABEL_43;
          }
        }

        v24 = [*(a1 + 40) stringForKey:@"MapsSuggestionsAppConnectionOriginatingURLString"];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = [*(a1 + 40) uniqueIdentifier];
        }

        v27 = WeakRetained[4];
        WeakRetained[4] = v26;

        v28 = [*(a1 + 40) geoMapItem];
        v29 = WeakRetained[5];
        WeakRetained[5] = v28;

        v30 = [*(a1 + 40) numberForKey:@"MapsSuggestionsGEOMapItemOriginKey"];
        v31 = WeakRetained[6];
        WeakRetained[6] = v30;

        v32 = *(a1 + 40);
        if (!v32)
        {
LABEL_37:
          v40 = objc_alloc(MEMORY[0x1E696AEC0]);
          v41 = MapsSuggestionsCurrentBestLocation();
          v42 = [v40 initWithFormat:@"The MapItem is not relevant for location %@", v41];

          v43 = *(a1 + 48);
          v44 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-8 reason:v42];
          (*(v43 + 16))(v43, 0, v44);

          v45 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            v46 = [WeakRetained uniqueName];
            *buf = 138412546;
            *&buf[4] = v46;
            v53 = 2080;
            *v54 = "_geoMapItemsFromMapsSuggestionsEntry";
            _os_log_impl(&dword_1C5126000, v45, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
          }

          v47 = GEOFindOrCreateLog();
          if (os_signpost_enabled(v47))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C5126000, v47, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_geoMapItemsFromMapsSuggestionsEntry", "", buf, 2u);
          }

          goto LABEL_42;
        }

        v33 = v32;
        *buf = 0;
        if (MapsSuggestionsDistanceFromHereToEntry(v32, buf))
        {
          GEOConfigGetDouble();
          if (v34 >= *buf)
          {
            GEOConfigGetDouble();
            if (v39 <= *buf)
            {

              (*(*(a1 + 48) + 16))();
              v48 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                v49 = [WeakRetained uniqueName];
                *buf = 138412546;
                *&buf[4] = v49;
                v53 = 2080;
                *v54 = "_geoMapItemsFromMapsSuggestionsEntry";
                _os_log_impl(&dword_1C5126000, v48, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
              }

              v50 = GEOFindOrCreateLog();
              if (os_signpost_enabled(v50))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_1C5126000, v50, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_geoMapItemsFromMapsSuggestionsEntry", "", buf, 2u);
              }

              goto LABEL_42;
            }

            v35 = GEOFindOrCreateLog();
            if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_36;
            }

            *v51 = 0;
            v36 = "Entry is within AppConnectionMinValidDistance. Moving on to the next GEOMapItem";
            goto LABEL_34;
          }

          v35 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            *v51 = 0;
            v36 = "Entry is not within AppConnectionMaxValidDistance. Moving on to the next GEOMapItem";
LABEL_34:
            v37 = v35;
            v38 = OS_LOG_TYPE_DEBUG;
            goto LABEL_35;
          }
        }

        else
        {
          v35 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *v51 = 0;
            v36 = "Entry has no distance available";
            v37 = v35;
            v38 = OS_LOG_TYPE_ERROR;
LABEL_35:
            _os_log_impl(&dword_1C5126000, v37, v38, v36, v51, 2u);
          }
        }

LABEL_36:

        goto LABEL_37;
      }
    }

    v3 = WeakRetained[5];
    WeakRetained[5] = 0;

    v4 = WeakRetained[4];
    WeakRetained[4] = 0;

    (*(*(a1 + 48) + 16))();
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [WeakRetained uniqueName];
      *buf = 138412546;
      *&buf[4] = v6;
      v53 = 2080;
      *v54 = "_geoMapItemsFromMapsSuggestionsEntry";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_geoMapItemsFromMapsSuggestionsEntry", "", buf, 2u);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "MapsSuggestionsPortrait.m";
      v53 = 1026;
      *v54 = 805;
      v54[2] = 2082;
      *&v54[3] = "[MapsSuggestionsPortrait _geoMapItemsFromMapsSuggestionsEntry:handle:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }

LABEL_43:
}

- (id)fetchNamedEntitiesFromDate:(id)date
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = [(MapsSuggestionsPortraitConnector *)self->_connector namedEntityQuery:0x7FFFFFFFFFFFFFFFLL fromDate:date consumerType:3];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Calling Portrait SPI", buf, 2u);
  }

  mEMORY[0x1E69A22C8] = [MEMORY[0x1E69A22C8] sharedManager];
  v7 = [mEMORY[0x1E69A22C8] isEnabledForSubTestWithName:@"MSGPPTTest_Insights_ACRanking_PortraitCall"];

  if (v7)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MSGPPTTest_Insights_ACRanking_PortraitCallBEGIN" object:0];
  }

  connector = self->_connector;
  v48 = 0;
  v10 = [(MapsSuggestionsPortraitConnector *)connector rankedNamedEntitiesWihQuery:v4 error:&v48];
  v11 = v48;
  mEMORY[0x1E69A22C8]2 = [MEMORY[0x1E69A22C8] sharedManager];
  v13 = [mEMORY[0x1E69A22C8]2 isEnabledForSubTestWithName:@"MSGPPTTest_Insights_ACRanking_PortraitCall"];

  if (v13)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"MSGPPTTest_Insights_ACRanking_PortraitCallEND" object:0];
  }

  if (v11)
  {
    v15 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      v20 = MEMORY[0x1E695E0F0];
      goto LABEL_31;
    }

    *buf = 138412290;
    v50 = v11;
    v16 = "Iterator over EntityRecords for Siri Portrait returned error:%@";
    v17 = v15;
    v18 = OS_LOG_TYPE_ERROR;
    v19 = 12;
LABEL_10:
    _os_log_impl(&dword_1C5126000, v17, v18, v16, buf, v19);
    goto LABEL_11;
  }

  if (![v10 count])
  {
    v15 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v16 = "Portrait returned no entries";
    v17 = v15;
    v18 = OS_LOG_TYPE_DEBUG;
    v19 = 2;
    goto LABEL_10;
  }

  v42 = v4;
  if (MapsSuggestionsLoggingIsVerbose())
  {
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v21, OS_LOG_TYPE_DEBUG, "Received portrait named entities are:", buf, 2u);
    }
  }

  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v41 = v10;
  obj = v10;
  v22 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v45;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v45 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v44 + 1) + 8 * i);
        item = [v26 item];
        mostRelevantRecord = [item mostRelevantRecord];
        source = [mostRelevantRecord source];
        date = [source date];

        if (MapsSuggestionsLoggingIsVerbose())
        {
          v31 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            item2 = [v26 item];
            name = [item2 name];
            *buf = 138412546;
            v50 = name;
            v51 = 2112;
            v52 = date;
            _os_log_impl(&dword_1C5126000, v31, OS_LOG_TYPE_DEBUG, "Name & Date: %@ %@", buf, 0x16u);
          }
        }

        v34 = [MapsSuggestionsPortraitData alloc];
        item3 = [v26 item];
        name2 = [item3 name];
        v37 = [(MapsSuggestionsPortraitData *)v34 initWithName:name2 lastInteractionTime:date];

        [v15 addObject:v37];
      }

      v23 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v23);
  }

  v38 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v39 = [v15 count];
    *buf = 67109120;
    LODWORD(v50) = v39;
    _os_log_impl(&dword_1C5126000, v38, OS_LOG_TYPE_DEBUG, "We got %u items from Portrait", buf, 8u);
  }

  v20 = [v15 copy];
  v10 = v41;
  v4 = v42;
LABEL_31:

  return v20;
}

- (id)_appConnectionEntryFromLocation:(uint64_t)location
{
  v161 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (location)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [(MapsSuggestionsPortrait *)location _entryFromLocationValue:v3];
    if (v5)
    {
LABEL_26:
      objc_autoreleasePoolPop(v4);
      goto LABEL_27;
    }

    mapItemURL = [v3 mapItemURL];

    v7 = MEMORY[0x1E69A1B08];
    if (!mapItemURL)
    {
      mapItemURL2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(mapItemURL2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        OUTLINED_FUNCTION_5_2(&dword_1C5126000, mapItemURL2, v18, "Missing mapItemURL in PPConnectionsLocation, returning nil.", buf);
      }

      v5 = 0;
      goto LABEL_25;
    }

    mapItemURL2 = [v3 mapItemURL];
    v9 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_2_4(v9))
    {
      [mapItemURL2 absoluteString];
      *&buf[4] = *buf = 138412290;
      OUTLINED_FUNCTION_0_1();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    }

    originatingBundleID = [v3 originatingBundleID];
    if ([originatingBundleID caseInsensitiveCompare:MapsSuggestionsMessagesAppBundleID])
    {
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        OUTLINED_FUNCTION_5_2(&dword_1C5126000, v16, v17, "App Connection URL's originating Bundle ID was NOT MobileSMS, so kicking it out", buf);
      }

      goto LABEL_23;
    }

    originatingBundleID2 = [v3 originatingBundleID];
    v16 = originatingBundleID2;
    if (originatingBundleID2)
    {
      if ([originatingBundleID2 caseInsensitiveCompare:@"com.apple.Maps"])
      {
        v147 = originatingBundleID;

        v16 = [objc_alloc(MEMORY[0x1E69A2220]) initWithURL:mapItemURL2];
        [v16 parseIncludingCustomParameters:1];
        v20 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          transportType = [v16 transportType];
          if (transportType >= 7)
          {
            v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", transportType];
          }

          else
          {
            v22 = off_1E81F67B0[transportType];
          }

          *buf = 138412290;
          *&buf[4] = v22;
          _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "urlParser.transportType:%@", buf, 0xCu);
        }

        v154[0] = @"MapsSuggestionsPrimaryKey";
        v154[1] = @"MapsSuggestionsAppConnectionValueKey";
        v155[0] = @"MapsSuggestionsAppConnectionValueKey";
        v155[1] = &stru_1F444C108;
        v154[2] = @"MapsSuggestionsAppConnectionOriginatingURLString";
        absoluteString = [mapItemURL2 absoluteString];
        v155[2] = absoluteString;
        v154[3] = @"MapsSuggestionsOriginBundleIDKey";
        originatingBundleID3 = [v3 originatingBundleID];
        v145 = originatingBundleID3;
        if (originatingBundleID3)
        {
          v28 = originatingBundleID3;
        }

        else
        {
          v28 = &stru_1F444C108;
        }

        v155[3] = v28;
        v154[4] = @"MapsSuggestionsAppConnectionIdentifierKey";
        identifier = [v3 identifier];
        v155[4] = identifier;
        v154[5] = @"MapsSuggestionsAppConnectionOriginatingWebsiteName";
        originatingWebsiteURL = [v3 originatingWebsiteURL];
        v30 = originatingWebsiteURL;
        v148 = mapItemURL2;
        if (originatingWebsiteURL)
        {
          host = [originatingWebsiteURL host];
          v32 = host;
          if (host)
          {
            v33 = host;
            v149 = 0u;
            v150 = 0u;
            v151 = 0u;
            v152 = 0u;
            v34 = [&unk_1F4471608 countByEnumeratingWithState:&v149 objects:buf count:16];
            if (v34)
            {
              v35 = v34;
              v142 = v32;
              v143 = v30;
              v36 = *v150;
              while (2)
              {
                for (i = 0; i != v35; ++i)
                {
                  if (*v150 != v36)
                  {
                    objc_enumerationMutation(&unk_1F4471608);
                  }

                  v38 = *(*(&v149 + 1) + 8 * i);
                  if ([(__CFString *)v33 hasPrefix:v38])
                  {
                    v39 = -[__CFString substringFromIndex:](v33, "substringFromIndex:", [v38 length]);

                    v33 = v39;
                    goto LABEL_48;
                  }
                }

                v35 = [&unk_1F4471608 countByEnumeratingWithState:&v149 objects:buf count:16];
                if (v35)
                {
                  continue;
                }

                break;
              }

LABEL_48:
              v32 = v142;
              v30 = v143;
            }
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          v33 = 0;
        }

        if (v33)
        {
          v40 = v33;
        }

        else
        {
          v40 = &stru_1F444C108;
        }

        v155[5] = v40;
        v154[6] = @"MapsSuggestionsOriginatingAppName";
        originatingBundleID4 = [v3 originatingBundleID];
        if (originatingBundleID4)
        {
          v42 = objc_alloc(MEMORY[0x1E69635F8]);
          *buf = 0;
          v43 = [v42 initWithBundleIdentifier:originatingBundleID4 allowPlaceholder:0 error:buf];
          v44 = *buf;
          localizedName = [v43 localizedName];
        }

        else
        {
          v43 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortrait.m";
            v157 = 1024;
            *v158 = 974;
            *&v158[4] = 2082;
            *&v158[6] = "NSString *_appName(NSString *__strong)";
            v159 = 2082;
            v160 = "nil == (appId)";
            _os_log_impl(&dword_1C5126000, v43, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an appId", buf, 0x26u);
          }

          localizedName = 0;
        }

        if (localizedName)
        {
          v46 = localizedName;
        }

        else
        {
          v46 = &stru_1F444C108;
        }

        v155[6] = v46;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v155 forKeys:v154 count:7];
        v48 = [v47 mutableCopy];

        originatingBundleID5 = [v3 originatingBundleID];

        if (originatingBundleID5)
        {
          v50 = objc_alloc(MEMORY[0x1E695DFD8]);
          originatingBundleID6 = [v3 originatingBundleID];
          v153 = originatingBundleID6;
          v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v153 count:1];
          originatingBundleID5 = [v50 initWithArray:v52];

          [0 setSet:originatingBundleID5 forKey:@"MapsSuggestionsAssociatedBundleIDsKey"];
        }

        v53 = [originatingBundleID5 numberWithInt:{objc_msgSend(OUTLINED_FUNCTION_4_1(), "transportType")}];
        v54 = v48;
        [v48 setObject:v53 forKey:@"MapsSuggestionsTransportTypeKey"];

        addressString = [v16 addressString];
        v56 = addressString != 0;

        mapItemURL2 = v148;
        if (addressString)
        {
          addressString2 = [v16 addressString];
          OUTLINED_FUNCTION_3_1();

          v58 = GEOFindOrCreateLog();
          if (OUTLINED_FUNCTION_2_4(v58))
          {
            addressString3 = [v16 addressString];
            OUTLINED_FUNCTION_1_1(addressString3, 5.7779e-34);
            OUTLINED_FUNCTION_0_1();
            _os_log_impl(v60, v61, v62, v63, v64, 0xCu);
          }
        }

        directionsDestinationAddressString = [v16 directionsDestinationAddressString];

        if (directionsDestinationAddressString)
        {
          directionsDestinationAddressString = [v16 directionsDestinationAddressString];
          OUTLINED_FUNCTION_3_1();

          v66 = GEOFindOrCreateLog();
          if (OUTLINED_FUNCTION_2_4(v66))
          {
            directionsDestinationAddressString2 = [v16 directionsDestinationAddressString];
            OUTLINED_FUNCTION_1_1(directionsDestinationAddressString2, 5.7779e-34);
            OUTLINED_FUNCTION_0_1();
            _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
          }

          v56 = 1;
        }

        [v16 centerCoordinate];
        if (fabs(v74) <= 180.0 && fabs(v73) <= 90.0)
        {
          [OUTLINED_FUNCTION_4_1() centerCoordinate];
          v75 = [directionsDestinationAddressString numberWithDouble:?];
          OUTLINED_FUNCTION_3_1();

          [OUTLINED_FUNCTION_4_1() centerCoordinate];
          directionsDestinationAddressString = [v75 numberWithDouble:v76];
          OUTLINED_FUNCTION_3_1();

          v77 = GEOFindOrCreateLog();
          if (OUTLINED_FUNCTION_2_4(v77))
          {
            [v16 centerCoordinate];
            v79 = v78;
            [v16 centerCoordinate];
            *buf = 134218240;
            *&buf[4] = v79;
            v157 = 2048;
            *v158 = v80;
            OUTLINED_FUNCTION_0_1();
            _os_log_impl(v81, v82, v83, v84, v85, 0x16u);
          }

          if (!v56)
          {
            [v54 setObject:MEMORY[0x1E695E118] forKey:@"MapsSuggestionsAppConnectionIsCoordinateOnlyURL"];
            contactHandles = [v3 contactHandles];
            if ([contactHandles count] == 1)
            {
              v87 = GEOFindOrCreateLog();
              if (OUTLINED_FUNCTION_2_4(v87))
              {
                *buf = 138412290;
                *&buf[4] = contactHandles;
                OUTLINED_FUNCTION_0_1();
                _os_log_impl(v88, v89, v90, v91, v92, 0xCu);
              }

              v93 = *(location + 56);
              v94 = [contactHandles objectAtIndexedSubscript:0];
              directionsDestinationAddressString = [v93 contactNameForIdentifier:v94];

              if (directionsDestinationAddressString)
              {
                OUTLINED_FUNCTION_3_1();
              }
            }
          }

          v56 = 1;
        }

        if ([v16 searchUID])
        {
          v95 = [directionsDestinationAddressString numberWithUnsignedLongLong:{objc_msgSend(OUTLINED_FUNCTION_4_1(), "searchUID")}];
          OUTLINED_FUNCTION_3_1();

          v96 = GEOFindOrCreateLog();
          if (OUTLINED_FUNCTION_2_4(v96))
          {
            OUTLINED_FUNCTION_1_1([v16 searchUID], 3.852e-34);
            OUTLINED_FUNCTION_0_1();
            _os_log_impl(v97, v98, v99, v100, v101, 0xCu);
          }

          v102 = [v95 numberWithInt:{objc_msgSend(OUTLINED_FUNCTION_4_1(), "searchProviderID")}];
          OUTLINED_FUNCTION_3_1();

          v103 = GEOFindOrCreateLog();
          if (OUTLINED_FUNCTION_2_4(v103))
          {
            searchProviderID = [v16 searchProviderID];
            *buf = 67109120;
            *&buf[4] = searchProviderID;
            OUTLINED_FUNCTION_0_1();
            _os_log_impl(v105, v106, v107, v108, v109, 8u);
          }

          searchQuery = [v16 searchQuery];

          if (searchQuery)
          {
            searchQuery2 = [v16 searchQuery];
            OUTLINED_FUNCTION_3_1();

            v112 = GEOFindOrCreateLog();
            if (OUTLINED_FUNCTION_2_4(v112))
            {
              searchQuery3 = [v16 searchQuery];
              OUTLINED_FUNCTION_1_1(searchQuery3, 5.7779e-34);
              OUTLINED_FUNCTION_0_1();
              _os_log_impl(v114, v115, v116, v117, v118, 0xCu);
            }
          }
        }

        else if (!v56)
        {
          v141 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v148;
            _os_log_impl(&dword_1C5126000, v141, OS_LOG_TYPE_ERROR, "Could not process URL: %@", buf, 0xCu);
          }

          v5 = 0;
          goto LABEL_106;
        }

        createdAt = [v3 createdAt];
        v120 = createdAt;
        if (createdAt)
        {
          v121 = createdAt;
        }

        else
        {
          v121 = MapsSuggestionsNow();
        }

        v122 = v121;

        lifetime = [v3 lifetime];
        [lifetime doubleValue];
        v125 = v124;

        if (v125 == 0.0)
        {
          GEOConfigGetDouble();
          v125 = v126;
        }

        v127 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v122 sinceDate:v125];
        v128 = GEOFindOrCreateLog();
        if (OUTLINED_FUNCTION_2_4(v128))
        {
          *buf = 138412290;
          *&buf[4] = v127;
          OUTLINED_FUNCTION_0_1();
          _os_log_impl(v129, v130, v131, v132, v133, 0xCu);
        }

        GEOConfigGetDouble();
        v135 = v134;
        v136 = [MapsSuggestionsEntry alloc];
        searchQuery4 = [v16 searchQuery];
        v138 = searchQuery4;
        if (searchQuery4)
        {
          v139 = searchQuery4;
        }

        else
        {
          v139 = &stru_1F444C108;
        }

        v140 = [(MapsSuggestionsEntry *)v136 initWithType:12 title:v139 subtitle:0 weight:v127 expires:0 geoMapItem:v54 sourceSpecificInfo:v135];

        v141 = v140;
        v5 = v141;
LABEL_106:
        originatingBundleID = v147;

        goto LABEL_24;
      }

      v23 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v25 = "App Connection originating Bundle ID was Maps, so kicking it out";
        goto LABEL_21;
      }
    }

    else
    {
      v23 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v25 = "App Connection originating bundle ID is nil, so kicking it out";
LABEL_21:
        OUTLINED_FUNCTION_5_2(&dword_1C5126000, v23, v24, v25, buf);
      }
    }

LABEL_23:
    v5 = 0;
LABEL_24:

LABEL_25:
    goto LABEL_26;
  }

  v5 = 0;
LABEL_27:

  return v5;
}

- (id)_entryFromLocationValue:(uint64_t)value
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (value)
  {
    name = [v3 name];
    if (!name)
    {
      v30 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        OUTLINED_FUNCTION_5_2(&dword_1C5126000, v30, v31, "App Connection location has no title", buf);
      }

      v32 = 0;
      goto LABEL_63;
    }

    GEOConfigGetDouble();
    v7 = v6;
    createdAt = [v4 createdAt];
    lifetime = [v4 lifetime];
    [lifetime doubleValue];
    v11 = v10;

    if (v11 == 0.0)
    {
      GEOConfigGetDouble();
      v11 = v12;
    }

    v61 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:createdAt sinceDate:v11];
    v67[0] = @"MapsSuggestionsOriginBundleIDKey";
    originatingBundleID = [v4 originatingBundleID];
    v60 = originatingBundleID;
    if (originatingBundleID)
    {
      v14 = originatingBundleID;
    }

    else
    {
      v14 = &stru_1F444C108;
    }

    v68[0] = v14;
    v67[1] = @"MapsSuggestionsAppConnectionValueKey";
    value = [v4 value];
    v16 = value;
    if (!value)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      value = [uUID UUIDString];
    }

    v62 = createdAt;
    v57 = value;
    v68[1] = value;
    v67[2] = @"MapsSuggestionsDestinationAddressKey";
    value2 = [v4 value];
    v18 = value2;
    if (value2)
    {
      v19 = value2;
    }

    else
    {
      v19 = &stru_1F444C108;
    }

    v68[2] = v19;
    v68[3] = @"MapsSuggestionsAppConnectionValueKey";
    v67[3] = @"MapsSuggestionsPrimaryKey";
    v67[4] = @"MapsSuggestionsAppConnectionIdentifierKey";
    identifier = [v4 identifier];
    v68[4] = identifier;
    v67[5] = @"MapsSuggestionsAppConnectionOriginatingWebsiteName";
    originatingWebsiteURL = [v4 originatingWebsiteURL];
    v21 = originatingWebsiteURL;
    v59 = v18;
    if (originatingWebsiteURL)
    {
      host = [originatingWebsiteURL host];
      v23 = host;
      if (host)
      {
        v24 = host;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v25 = [&unk_1F4471608 countByEnumeratingWithState:&v63 objects:buf count:16];
        if (v25)
        {
          v26 = v25;
          valueCopy = value;
          v55 = name;
          v27 = *v64;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v64 != v27)
              {
                objc_enumerationMutation(&unk_1F4471608);
              }

              v29 = *(*(&v63 + 1) + 8 * i);
              if ([(__CFString *)v24 hasPrefix:v29])
              {
                v33 = -[__CFString substringFromIndex:](v24, "substringFromIndex:", [v29 length]);

                v24 = v33;
                goto LABEL_29;
              }
            }

            v26 = [&unk_1F4471608 countByEnumeratingWithState:&v63 objects:buf count:16];
            if (v26)
            {
              continue;
            }

            break;
          }

LABEL_29:
          value = valueCopy;
          name = v55;
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      v34 = v24;
    }

    else
    {
      v34 = &stru_1F444C108;
    }

    v68[5] = v34;
    v67[6] = @"MapsSuggestionsOriginatingAppName";
    originatingBundleID2 = [v4 originatingBundleID];
    if (originatingBundleID2)
    {
      v36 = objc_alloc(MEMORY[0x1E69635F8]);
      *buf = 0;
      v37 = [v36 initWithBundleIdentifier:originatingBundleID2 allowPlaceholder:0 error:buf];
      v38 = *buf;
      localizedName = [v37 localizedName];
    }

    else
    {
      v37 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortrait.m";
        v70 = 1024;
        v71 = 974;
        v72 = 2082;
        v73 = "NSString *_appName(NSString *__strong)";
        v74 = 2082;
        v75 = "nil == (appId)";
        _os_log_impl(&dword_1C5126000, v37, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an appId", buf, 0x26u);
      }

      localizedName = 0;
    }

    if (localizedName)
    {
      v40 = localizedName;
    }

    else
    {
      v40 = &stru_1F444C108;
    }

    v68[6] = v40;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:7];
    v42 = [v41 mutableCopy];

    if (!v16)
    {
    }

    contactHandles = [v4 contactHandles];
    if ([contactHandles count])
    {
      v44 = *(value + 56);
      v45 = [contactHandles objectAtIndexedSubscript:0];
      v46 = [v44 contactNameForIdentifier:v45];
    }

    else
    {
      v46 = 0;
    }

    originatingBundleID3 = [v4 originatingBundleID];
    if ([originatingBundleID3 isEqualToString:MapsSuggestionsMessagesAppBundleID])
    {
      if (!v46)
      {

LABEL_59:
        v52 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5126000, v52, OS_LOG_TYPE_ERROR, "Dropping entry because we did not get this AppConnection from a known contact", buf, 2u);
        }

        v32 = 0;
LABEL_62:

        v30 = v62;
LABEL_63:

        goto LABEL_64;
      }

      v48 = [v46 length];

      if (!v48)
      {
        goto LABEL_59;
      }
    }

    else
    {
    }

    v49 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v46;
      _os_log_impl(&dword_1C5126000, v49, OS_LOG_TYPE_DEBUG, "Received a message from %@", buf, 0xCu);
    }

    mapItemURL = [v4 mapItemURL];

    if (mapItemURL)
    {
      mapItemURL2 = [v4 mapItemURL];
      [v42 setObject:mapItemURL2 forKeyedSubscript:@"MapsSuggestionsAppConnectionMapItemURL"];
    }

    v32 = [MapsSuggestionsEntry entryWithType:12 title:name subtitle:0 weight:v61 expires:v42 sourceSpecificInfo:v7];
    goto LABEL_62;
  }

  v32 = 0;
LABEL_64:

  return v32;
}

- (void)_geoMapItemsFromMapsSuggestionsEntry:(NSObject *)a1 handle:.cold.1(NSObject *a1)
{
  if (os_signpost_enabled(a1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, a1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_geoMapItemsFromMapsSuggestionsEntry", "", v2, 2u);
  }
}

- (void)_geoMapItemsFromMapsSuggestionsEntry:(NSObject *)a1 handle:.cold.2(NSObject *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v2 = 136446978;
    v3 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortrait.m";
    v4 = 1024;
    v5 = 793;
    v6 = 2082;
    v7 = "[MapsSuggestionsPortrait _geoMapItemsFromMapsSuggestionsEntry:handle:]";
    v8 = 2082;
    v9 = "nil == (handle)";
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handle", &v2, 0x26u);
  }
}

@end