@interface MapsSuggestionsRoutine
+ (id)_loisFromResult:(id)a3 usingDuration:(double)a4;
+ (id)_mapItemCache;
+ (id)_mapItemForHandle:(id)a3;
+ (id)contextOptionsForPLCs;
+ (void)_q_loisFromPredictedContextResult:(id)a3 usingNetworkRequester:(id)a4 currentLocation:(id)a5 predictionDuration:(double)a6 considerGymPredictions:(BOOL)a7 considerSchoolPredictions:(BOOL)a8 considerUnknownTypePredictions:(BOOL)a9 callbackQueue:(id)a10 completionHandler:(id)a11;
+ (void)loisFromPredictedContextResult:(id)a3 usingNetworkRequester:(id)a4 currentLocation:(id)a5 predictionDuration:(double)a6 considerGymPredictions:(BOOL)a7 considerSchoolPredictions:(BOOL)a8 considerUnknownTypePredictions:(BOOL)a9 callbackQueue:(id)a10 completionHandler:(id)a11;
+ (void)setMapItem:(id)a3 forHandle:(id)a4;
- (BOOL)canProduceEntriesOfType:(int64_t)a3;
- (MapsSuggestionsEntry)_suggestionEntryForPLOI:(uint64_t)a1;
- (MapsSuggestionsRoutine)initWithRoutineConnector:(id)a3 networkRequester:(id)a4 mapsSync:(id)a5;
- (NSString)uniqueName;
- (char)correctLabelForCurrentPlace:(id)a3 date:(id)a4 newLabel:(id)a5 handler:(id)a6;
- (char)correctLabelForVisitWithIdentifier:(id)a3 entryDate:(id)a4 originalLabel:(id)a5 newLabel:(id)a6 handler:(id)a7;
- (char)fetchAllSuggestedLOIsExcludingTypes:(id)a3 minVisits:(unint64_t)a4 maxAge:(double)a5 maxResults:(unint64_t)a6 handler:(id)a7;
- (char)fetchAutomaticVehicleEventDetectionSupportedWithHandler:(id)a3;
- (char)fetchEntriesForLocation:(id)a3 period:(id)a4 handler:(id)a5;
- (char)fetchEntriesUsingPLC:(id)a3 period:(id)a4 includeFrequentLocationEntries:(BOOL)a5 handler:(id)a6;
- (char)fetchLOIsOfType:(int64_t)a3 handler:(id)a4;
- (char)fetchLOIsSinceDate:(id)a3 handler:(id)a4;
- (char)fetchLastVisitAtLocation:(id)a3 handler:(id)a4;
- (char)fetchLastVisitAtMapItem:(id)a3 withinDistance:(double)a4 handler:(id)a5;
- (char)fetchLocationOfInterestWithIdentifier:(id)a3 withHandler:(id)a4;
- (char)fetchLocationsSinceDate:(id)a3 handler:(id)a4;
- (char)fetchMostRecentVisitWithinDistance:(double)a3 ofMapItem:(id)a4 handler:(id)a5;
- (char)fetchSuggestedLOIsForTypes:(id)a3 minVisits:(unint64_t)a4 maxAge:(double)a5 maxResults:(unint64_t)a6 handler:(id)a7;
- (char)fetchSuggestedShortcutsForType:(int64_t)a3 minVisits:(unint64_t)a4 maxAge:(double)a5 handler:(id)a6;
- (char)predictedExitTimeFromLocation:(id)a3 date:(id)a4 handler:(id)a5;
- (char)readMeCardWithMinVisits:(unint64_t)a3 maxAge:(double)a4 handler:(id)a5;
- (char)startMonitoringPredictedContextForHomeAndWorkWithHandler:(id)a3;
- (char)touristBitForLocation:(id)a3 handler:(id)a4;
- (id).cxx_construct;
- (id)_msgLOIsForRTLOIs:(uint64_t)a1;
- (id)_updateEntry:(id *)a1;
- (id)capLocationsOfInterest:(unint64_t)a3 maxResults:;
- (id)initFromResourceDepot:(id)a3;
- (uint64_t)_addFieldsToSuggestionsEntry:(void *)a3 fromRTMapItem:;
- (uint64_t)_addMapItemToShortcut:(void *)a3 fromLOI:(void *)a4 group:;
- (uint64_t)_addParkedCarFieldsToSuggestionsEntry:(void *)a3 vehicleEvent:;
- (uint64_t)_clearedToFetchSuggestions;
- (uint64_t)_convertType:(void *)a3 source:;
- (uint64_t)_fetchStoredVisitsWithOptions:(void *)a3 handler:;
- (unint64_t)countHomeLOIs;
- (unint64_t)countSchoolLOIs;
- (unint64_t)countWorkLOIs;
- (void)_addLabelForEntry:(uint64_t)a1;
- (void)_cacheEntryExitDatesFromVisit:(void *)a3 forMapItemIdentifier:(void *)a4 name:;
- (void)_clearedToFetchSuggestions;
- (void)_resolveMapItemsAndAddEntries:(void *)a3 handler:;
- (void)_treatLOIs:(void *)a3 handler:;
- (void)_treatPLOIs:(const char *)a3 stepCounter:(void *)a4 handler:;
- (void)_treatPredictedContextResult:(uint64_t)a3 considerGymPredictions:(uint64_t)a4 considerSchoolPredictions:(uint64_t)a5 considerUnknownTypePredictions:(void *)a6 handler:;
- (void)addParkedCarObserver:(id)a3;
- (void)forgetLocationOfInterest:(id)a3 handler:(id)a4;
- (void)removeParkedCarObserver:(id)a3;
- (void)removeParkedCarsAllowingFeature:(BOOL)a3 handler:(id)a4;
- (void)updateFixedLOIs;
@end

@implementation MapsSuggestionsRoutine

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

- (MapsSuggestionsRoutine)initWithRoutineConnector:(id)a3 networkRequester:(id)a4 mapsSync:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v42 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 150;
      v46 = 2082;
      v47 = "[MapsSuggestionsRoutine initWithRoutineConnector:networkRequester:mapsSync:]";
      v48 = 2082;
      v49 = "nil == (routineConnector)";
      _os_log_impl(&dword_1C5126000, v42, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a RoutineInterface", buf, 0x26u);
    }

    goto LABEL_11;
  }

  if (!v10)
  {
    v42 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 151;
      v46 = 2082;
      v47 = "[MapsSuggestionsRoutine initWithRoutineConnector:networkRequester:mapsSync:]";
      v48 = 2082;
      v49 = "nil == (networkRequester)";
      _os_log_impl(&dword_1C5126000, v42, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a NetworkRequester", buf, 0x26u);
    }

LABEL_11:

    v41 = 0;
    goto LABEL_12;
  }

  v44.receiver = self;
  v44.super_class = MapsSuggestionsRoutine;
  v12 = [(MapsSuggestionsRoutine *)&v44 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connector, a3);
    objc_storeStrong(&v13->_networkRequester, a4);
    objc_storeStrong(&v13->_mapsSync, a5);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(buf, @"MapsSuggestionsRoutineQueue", v14);
    v15 = *buf;
    *buf = 0;
    innerQueue = v13->_queue._innerQueue;
    v13->_queue._innerQueue = v15;

    v17 = *&buf[8];
    *&buf[8] = 0;
    name = v13->_queue._name;
    v13->_queue._name = v17;

    v19 = [MapsSuggestionsObservers alloc];
    v20 = v13->_queue._innerQueue;
    v21 = [(MapsSuggestionsObservers *)v19 initWithCallbackQueue:v20 name:@"MapsSuggestionsParkedCarObservers"];
    parkedCarObservers = v13->_parkedCarObservers;
    v13->_parkedCarObservers = v21;

    v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    loiLocationsForHome = v13->_loiLocationsForHome;
    v13->_loiLocationsForHome = v23;

    v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    loiLocationsForWork = v13->_loiLocationsForWork;
    v13->_loiLocationsForWork = v25;

    v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    loiLocationsForSchool = v13->_loiLocationsForSchool;
    v13->_loiLocationsForSchool = v27;

    v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    loiVisits = v13->_loiVisits;
    v13->_loiVisits = v29;

    GEOConfigGetDouble();
    v13->_requeryInterval = v31;
    Integer = GEOConfigGetInteger();
    v33 = [[MapsSuggestionsLimitedDictionary alloc] initWithMaximumCapacity:Integer];
    mapItemCache = v13->_mapItemCache;
    v13->_mapItemCache = v33;

    v35 = [[MapsSuggestionsLimitedDictionary alloc] initWithMaximumCapacity:Integer];
    mapItemCacheOrigin = v13->_mapItemCacheOrigin;
    v13->_mapItemCacheOrigin = v35;

    v13->_areFrequentLocationsAvailable = GEOConfigGetBOOL();
    v37 = [MapsSuggestionsHomeWorkSchoolShortcutsMatcher alloc];
    mapsSync = v13->_mapsSync;
    GEOConfigGetDouble();
    v39 = [(MapsSuggestionsBaseShortcutMatcher *)v37 initWithSync:mapsSync matchingDistance:?];
    shortcutMatcher = v13->_shortcutMatcher;
    v13->_shortcutMatcher = v39;
  }

  self = v13;
  v41 = self;
LABEL_12:

  return v41;
}

- (id)initFromResourceDepot:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v16 = 1024;
      v17 = 184;
      v18 = 2082;
      v19 = "[MapsSuggestionsRoutine initFromResourceDepot:]";
      v20 = 2082;
      v21 = "nil == (resourceDepot)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to build from!", &v14, 0x26u);
    }

    goto LABEL_13;
  }

  v6 = [v4 oneRoutineConnector];

  if (!v6)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v16 = 1024;
      v17 = 185;
      v18 = 2082;
      v19 = "[MapsSuggestionsRoutine initFromResourceDepot:]";
      v20 = 2082;
      v21 = "nil == (resourceDepot.oneRoutineConnector)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires One RoutineConnector!", &v14, 0x26u);
    }

    goto LABEL_13;
  }

  v7 = [v5 oneNetworkRequester];

  if (!v7)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v16 = 1024;
      v17 = 186;
      v18 = 2082;
      v19 = "[MapsSuggestionsRoutine initFromResourceDepot:]";
      v20 = 2082;
      v21 = "nil == (resourceDepot.oneNetworkRequester)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires One Network!", &v14, 0x26u);
    }

LABEL_13:

    v11 = 0;
    goto LABEL_14;
  }

  v8 = [v5 oneRoutineConnector];
  v9 = [v5 oneNetworkRequester];
  v10 = [v5 oneMapsSync];
  self = [(MapsSuggestionsRoutine *)self initWithRoutineConnector:v8 networkRequester:v9 mapsSync:v10];

  v11 = self;
LABEL_14:

  return v11;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (uint64_t)_convertType:(void *)a3 source:
{
  v65 = *MEMORY[0x1E69E9840];
  v49 = a3;
  if (!a1)
  {
    goto LABEL_109;
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v60) = [v49 count];
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Treating Routine entry of %u types", buf, 8u);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = v49;
  v7 = [v6 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v7)
  {
    v8 = *v51;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v50 + 1) + 8 * i);
        v11 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = objc_opt_class();
          *buf = 138412546;
          v60 = v12;
          v61 = 2112;
          *v62 = v10;
          v13 = v12;
          _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, " . %@: %@", buf, 0x16u);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v7);
  }

  switch(a2)
  {
    case 0:
      if (MapsSuggestionsSawHomeOrWorkOnThisDevice::s_onceToken != -1)
      {
        [MapsSuggestionsRoutine _convertType:source:];
      }

      a1 = 1;
      goto LABEL_109;
    case 1:
      if (MapsSuggestionsSawHomeOrWorkOnThisDevice::s_onceToken != -1)
      {
        [MapsSuggestionsRoutine _convertType:source:];
      }

      a1 = 2;
      goto LABEL_109;
    case 2:
      if (MapsSuggestionsSawHomeOrWorkOnThisDevice::s_onceToken != -1)
      {
        [MapsSuggestionsRoutine _convertType:source:];
      }

      a1 = 19;
      goto LABEL_109;
  }

  v14 = v6;
  v15 = objc_opt_class();
  if (!v14)
  {
    v16 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 136446978;
    v60 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    v61 = 1024;
    *v62 = 219;
    *&v62[4] = 2082;
    *&v62[6] = "T *_get(NSArray<RTSource *> *__strong) [T = RTSourceEventKit]";
    v63 = 2082;
    v64 = "nil == (rtSources)";
    v21 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires sources";
LABEL_43:
    _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, v21, buf, 0x26u);
    goto LABEL_44;
  }

  if (!v15)
  {
    v16 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 136446978;
    v60 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    v61 = 1024;
    *v62 = 220;
    *&v62[4] = 2082;
    *&v62[6] = "T *_get(NSArray<RTSource *> *__strong) [T = RTSourceEventKit]";
    v63 = 2082;
    v64 = "nil == (rtSourceClass)";
    v21 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a class";
    goto LABEL_43;
  }

  if (([v15 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    v16 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 136446978;
    v60 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    v61 = 1024;
    *v62 = 221;
    *&v62[4] = 2082;
    *&v62[6] = "T *_get(NSArray<RTSource *> *__strong) [T = RTSourceEventKit]";
    v63 = 2082;
    v64 = "! [rtSourceClass isSubclassOfClass:[RTSource class]]";
    v21 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a RTSource-derived class";
    goto LABEL_43;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v54 objects:buf count:16];
  if (!v17)
  {
LABEL_44:
    v20 = 0;
    goto LABEL_45;
  }

  v18 = *v55;
LABEL_30:
  v19 = 0;
  while (1)
  {
    if (*v55 != v18)
    {
      objc_enumerationMutation(v16);
    }

    v20 = *(*(&v54 + 1) + 8 * v19);
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    if (v17 == ++v19)
    {
      v17 = [v16 countByEnumeratingWithState:&v54 objects:buf count:16];
      if (v17)
      {
        goto LABEL_30;
      }

      goto LABEL_44;
    }
  }

LABEL_45:

  if (!v20)
  {
    goto LABEL_68;
  }

  v22 = v14;
  v23 = objc_opt_class();
  if (!v14)
  {
    v24 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_65;
    }

    *buf = 136446978;
    v60 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    v61 = 1024;
    *v62 = 219;
    *&v62[4] = 2082;
    *&v62[6] = "T *_get(NSArray<RTSource *> *__strong) [T = RTSourceCoreRoutine]";
    v63 = 2082;
    v64 = "nil == (rtSources)";
    v29 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires sources";
LABEL_64:
    _os_log_impl(&dword_1C5126000, v24, OS_LOG_TYPE_ERROR, v29, buf, 0x26u);
    goto LABEL_65;
  }

  if (!v23)
  {
    v24 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_65;
    }

    *buf = 136446978;
    v60 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    v61 = 1024;
    *v62 = 220;
    *&v62[4] = 2082;
    *&v62[6] = "T *_get(NSArray<RTSource *> *__strong) [T = RTSourceCoreRoutine]";
    v63 = 2082;
    v64 = "nil == (rtSourceClass)";
    v29 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a class";
    goto LABEL_64;
  }

  if (([v23 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    v24 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_65;
    }

    *buf = 136446978;
    v60 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    v61 = 1024;
    *v62 = 221;
    *&v62[4] = 2082;
    *&v62[6] = "T *_get(NSArray<RTSource *> *__strong) [T = RTSourceCoreRoutine]";
    v63 = 2082;
    v64 = "! [rtSourceClass isSubclassOfClass:[RTSource class]]";
    v29 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a RTSource-derived class";
    goto LABEL_64;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v24 = v22;
  v25 = [v24 countByEnumeratingWithState:&v54 objects:buf count:16];
  if (!v25)
  {
LABEL_65:
    v28 = 0;
    goto LABEL_66;
  }

  v26 = *v55;
LABEL_51:
  v27 = 0;
  while (1)
  {
    if (*v55 != v26)
    {
      objc_enumerationMutation(v24);
    }

    v28 = *(*(&v54 + 1) + 8 * v27);
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    if (v25 == ++v27)
    {
      v25 = [v24 countByEnumeratingWithState:&v54 objects:buf count:16];
      if (v25)
      {
        goto LABEL_51;
      }

      goto LABEL_65;
    }
  }

LABEL_66:

  if (v28)
  {
    a1 = 4;
    goto LABEL_109;
  }

LABEL_68:
  v30 = v14;
  v31 = objc_opt_class();
  if (!v14)
  {
    v32 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *buf = 136446978;
    v60 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    v61 = 1024;
    *v62 = 219;
    *&v62[4] = 2082;
    *&v62[6] = "T *_get(NSArray<RTSource *> *__strong) [T = RTSourceCoreRoutineVehicleEvent]";
    v63 = 2082;
    v64 = "nil == (rtSources)";
    v37 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires sources";
LABEL_86:
    _os_log_impl(&dword_1C5126000, v32, OS_LOG_TYPE_ERROR, v37, buf, 0x26u);
    goto LABEL_87;
  }

  if (!v31)
  {
    v32 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *buf = 136446978;
    v60 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    v61 = 1024;
    *v62 = 220;
    *&v62[4] = 2082;
    *&v62[6] = "T *_get(NSArray<RTSource *> *__strong) [T = RTSourceCoreRoutineVehicleEvent]";
    v63 = 2082;
    v64 = "nil == (rtSourceClass)";
    v37 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a class";
    goto LABEL_86;
  }

  if (([v31 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    v32 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *buf = 136446978;
    v60 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    v61 = 1024;
    *v62 = 221;
    *&v62[4] = 2082;
    *&v62[6] = "T *_get(NSArray<RTSource *> *__strong) [T = RTSourceCoreRoutineVehicleEvent]";
    v63 = 2082;
    v64 = "! [rtSourceClass isSubclassOfClass:[RTSource class]]";
    v37 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a RTSource-derived class";
    goto LABEL_86;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v32 = v30;
  v33 = [v32 countByEnumeratingWithState:&v54 objects:buf count:16];
  if (v33)
  {
    v34 = *v55;
LABEL_73:
    v35 = 0;
    while (1)
    {
      if (*v55 != v34)
      {
        objc_enumerationMutation(v32);
      }

      v36 = *(*(&v54 + 1) + 8 * v35);
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_88;
      }

      if (v33 == ++v35)
      {
        v33 = [v32 countByEnumeratingWithState:&v54 objects:buf count:16];
        if (v33)
        {
          goto LABEL_73;
        }

        break;
      }
    }
  }

LABEL_87:
  v36 = 0;
LABEL_88:

  if (v36)
  {
    a1 = 7;
  }

  else
  {
    v38 = v30;
    v39 = objc_opt_class();
    if (v14)
    {
      if (v39)
      {
        if ([v39 isSubclassOfClass:objc_opt_class()])
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v40 = v38;
          v41 = [v40 countByEnumeratingWithState:&v54 objects:buf count:16];
          if (v41)
          {
            v42 = *v55;
            while (2)
            {
              for (j = 0; j != v41; ++j)
              {
                if (*v55 != v42)
                {
                  objc_enumerationMutation(v40);
                }

                v44 = *(*(&v54 + 1) + 8 * j);
                if (objc_opt_isKindOfClass())
                {

                  goto LABEL_106;
                }
              }

              v41 = [v40 countByEnumeratingWithState:&v54 objects:buf count:16];
              if (v41)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          v47 = GEOFindOrCreateLog();
          [MapsSuggestionsRoutine _convertType:v47 source:?];
        }
      }

      else
      {
        v46 = GEOFindOrCreateLog();
        [MapsSuggestionsRoutine _convertType:v46 source:?];
      }
    }

    else
    {
      v45 = GEOFindOrCreateLog();
      [MapsSuggestionsRoutine _convertType:v45 source:?];
    }

    v44 = 0;
LABEL_106:

    if (v44)
    {
      a1 = 4;
    }

    else
    {
      a1 = 0;
    }
  }

LABEL_109:

  return a1;
}

- (uint64_t)_clearedToFetchSuggestions
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  dispatch_assert_queue_V2(a1[4]);
  objc_initWeak(&location, a1);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __52__MapsSuggestionsRoutine__clearedToFetchSuggestions__block_invoke;
  v18 = &unk_1E81F74F8;
  objc_copyWeak(&v19, &location);
  v2 = _Block_copy(&v15);
  BOOL = GEOConfigGetBOOL();
  v4 = [MEMORY[0x1E69B3730] tccPrompted];
  v5 = [MEMORY[0x1E69B3730] isEligible];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"NOT ELIGIBLE";
    if (v5)
    {
      v7 = @"ELIGIBLE";
    }

    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "OS_Eligibility for Legacy Routine Source: %@", buf, 0xCu);
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = @"NO";
    if (BOOL)
    {
      v9 = @"YES";
    }

    *buf = 138412290;
    v22 = v9;
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Should check prompt (Joe Switch) for Legacy Routine Source: %@", buf, 0xCu);
  }

  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = @"NO";
    if (v4)
    {
      v11 = @"YES";
    }

    *buf = 138412290;
    v22 = v11;
    _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "FR TCC Prompted for Legacy Routine Source? %@", buf, 0xCu);
  }

  if ((MapsFeature_IsEnabled_LocationIntelligenceMaps() & v5) != 1)
  {
    goto LABEL_18;
  }

  if (!(v4 & 1 | ((BOOL & 1) == 0)))
  {
    v13 = GEOFindOrCreateLog();
    [(MapsSuggestionsRoutine *)v13 _clearedToFetchSuggestions];
LABEL_18:
    v12 = 1;
    goto LABEL_19;
  }

  v12 = v2[2](v2);
LABEL_19:

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  return v12;
}

uint64_t __52__MapsSuggestionsRoutine__clearedToFetchSuggestions__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "Inside an eligible market for Familiar Routes", &v7, 2u);
    }

    v3 = [MEMORY[0x1E69B3730] isAuthorizedForPurpose:1];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = @"NO";
      if (v3)
      {
        v5 = @"YES";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Authorized for Familiar Routes? %@", &v7, 0xCu);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsRoutine.mm";
      v9 = 1026;
      v10 = 306;
      v11 = 2082;
      v12 = "[MapsSuggestionsRoutine _clearedToFetchSuggestions]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }

    v3 = 0;
  }

  return v3;
}

- (void)_addLabelForEntry:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v9 = v3;
    v4 = [v3 stringForKey:@"MapsSuggestionsCoreRoutineCustomLabel"];
    v5 = [v9 numberForKey:@"MapsSuggestionsCoreRoutineType"];
    v6 = [v5 integerValue];

    v7 = MSgLOITypeForRTLOIType(v6);
    v8 = MapsSuggestionsRoutineLocalizedLabelLOIType(v7, v4);
    [v9 setString:v8 forKey:@"MapsSuggestionsCoreRoutineLabel"];

    v3 = v9;
  }
}

- (uint64_t)_addFieldsToSuggestionsEntry:(void *)a3 fromRTMapItem:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v5)
    {
      if (v6)
      {
        [v5 setGeoMapItem:0];
        v8 = [v7 name];
        v13 = 0;
        v14 = &v13;
        v15 = 0x3032000000;
        v16 = __Block_byref_object_copy__365;
        v17 = __Block_byref_object_dispose__366;
        v18 = 0;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = ___ZL18_firstLineOfStringP8NSString_block_invoke;
        v12[3] = &unk_1E81F7C60;
        v12[4] = &v13;
        [v8 enumerateLinesUsingBlock:v12];
        v9 = v14[5];
        _Block_object_dispose(&v13, 8);

        [v5 setUndecoratedTitle:v9];
        [v5 setUndecoratedSubtitle:0];
        a1 = 1;
        goto LABEL_7;
      }
    }

    else
    {
      v10 = GEOFindOrCreateLog();
      [MapsSuggestionsRoutine _addFieldsToSuggestionsEntry:v10 fromRTMapItem:?];
    }

    a1 = 0;
  }

LABEL_7:

  return a1;
}

- (uint64_t)_addParkedCarFieldsToSuggestionsEntry:(void *)a3 vehicleEvent:
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (!v5)
  {
    v19 = GEOFindOrCreateLog();
    [MapsSuggestionsRoutine _addParkedCarFieldsToSuggestionsEntry:v19 vehicleEvent:?];
LABEL_14:
    a1 = 0;
    goto LABEL_11;
  }

  if ([v5 type] != 7)
  {
    v20 = GEOFindOrCreateLog();
    [MapsSuggestionsRoutine _addParkedCarFieldsToSuggestionsEntry:v20 vehicleEvent:?];
    goto LABEL_14;
  }

  v7 = MEMORY[0x1E695DF00];
  GEOConfigGetDouble();
  v8 = [v7 dateWithTimeIntervalSinceNow:?];
  [v5 setExpires:v8];

  GEOConfigGetDouble();
  [v5 setWeight:?];
  if (v6)
  {
    [v5 setBoolean:1 forKey:@"MapsSuggestionsRoutineIsBackedByVehicleEventKey"];
    v9 = [v6 date];
    [v5 setDate:v9 forKey:@"MapsSuggestionsWhenItHappenedKey"];

    v10 = [v6 nearbyLocationOfInterest];

    if (v10)
    {
      v11 = MEMORY[0x1E696AD98];
      v12 = [v6 nearbyLocationOfInterest];
      v13 = [v11 numberWithInteger:{objc_msgSend(v12, "type")}];
      [v5 setNumber:v13 forKey:@"MapsSuggestionsCoreRoutineTypeSource"];

      v14 = [v6 nearbyLocationOfInterest];
      v15 = [v14 customLabel];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = &stru_1F444C108;
      }

      [v5 setString:v17 forKey:@"MapsSuggestionsCoreRoutineCustomLabel"];
    }
  }

  a1 = 1;
LABEL_11:

  return a1;
}

- (MapsSuggestionsEntry)_suggestionEntryForPLOI:(uint64_t)a1
{
  v120 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v86 = v3;
  if (a1)
  {
    v4 = v3;
    dispatch_assert_queue_V2(*(a1 + 32));
    v5 = [v4 locationOfInterest];
    v87 = v5;
    v84 = [v4 sources];
    v85 = [v5 mapItem];
    v6 = -[MapsSuggestionsRoutine _convertType:source:](a1, [v5 type], v84);
    if (([a1 canProduceEntriesOfType:v6] & 1) == 0)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEBUG))
      {
        v55 = NSStringFromMapsSuggestionsEntryType(v6);
        [(MapsSuggestionsRoutine *)v55 _suggestionEntryForPLOI:&v8->super];
      }

      v56 = 0;
      goto LABEL_67;
    }

    v7 = [v5 typeSource];
    v8 = [[MapsSuggestionsEntry alloc] initWithType:v6 title:&stru_1F444C108];
    v9 = [v5 location];
    [v9 latitude];
    v11 = v10;
    v12 = [v5 location];
    [v12 longitude];
    v14 = v13;

    v97 = 0;
    v98 = &v97;
    v99 = 0x4012000000;
    v100 = __Block_byref_object_copy__13;
    v101 = __Block_byref_object_dispose__13;
    v102 = &unk_1C530B09A;
    v103 = v11;
    v104 = v14;
    if ([MEMORY[0x1E69A1E80] isLocationShiftRequiredForCoordinate:{v11, v14}])
    {
      v15 = [v87 location];
      v16 = [v15 referenceFrame] == 2;

      if (!v16)
      {
        v17 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "Entry needs location shift.", &buf, 2u);
        }

        if (!*(a1 + 152))
        {
          v18 = objc_alloc_init(MEMORY[0x1E69A1E80]);
          v19 = *(a1 + 152);
          *(a1 + 152) = v18;
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v110 = 0x2020000000;
        v111 = 0;
        v20 = dispatch_semaphore_create(0);
        v21 = *(a1 + 152);
        v93[0] = MEMORY[0x1E69E9820];
        v93[1] = 3221225472;
        v93[2] = __50__MapsSuggestionsRoutine__suggestionEntryForPLOI___block_invoke;
        v93[3] = &unk_1E81F75E8;
        v95 = &v97;
        p_buf = &buf;
        v94 = v20;
        v91[0] = MEMORY[0x1E69E9820];
        v91[1] = 3221225472;
        v91[2] = __50__MapsSuggestionsRoutine__suggestionEntryForPLOI___block_invoke_286;
        v91[3] = &unk_1E81F7610;
        v22 = v94;
        v92 = v22;
        v23 = dispatch_get_global_queue(17, 0);
        [v21 shiftCoordinate:v93 accuracy:0 withCompletionHandler:v91 mustGoToNetworkCallback:v23 errorHandler:v11 callbackQueue:{v14, 0.0}];

        GEOConfigGetDouble();
        v25 = dispatch_time(0, (v24 * 1000000000.0));
        dispatch_semaphore_wait(v22, v25);
        if ((*(*(&buf + 1) + 24) & 1) == 0)
        {
          v75 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            *v105 = 0;
            _os_log_impl(&dword_1C5126000, v75, OS_LOG_TYPE_ERROR, "Entry required location shift, but could not shift it. This entry will be dropped until the location shift completes successfully", v105, 2u);
          }

          _Block_object_dispose(&buf, 8);
          v56 = 0;
LABEL_66:
          _Block_object_dispose(&v97, 8);
LABEL_67:

          goto LABEL_68;
        }

        _Block_object_dispose(&buf, 8);
      }
    }

    [(MapsSuggestionsRoutine *)a1 _addFieldsToSuggestionsEntry:v8 fromRTMapItem:v85];
    v26 = [v87 identifier];
    v83 = [v26 UUIDString];

    [(MapsSuggestionsEntry *)v8 setString:v83 forKey:@"MapsSuggestionsCoreRoutinePK"];
    [(MapsSuggestionsEntry *)v8 setString:@"MapsSuggestionsCoreRoutinePK" forKey:@"MapsSuggestionsPrimaryKey"];
    v27 = [MEMORY[0x1E696AD98] numberWithDouble:v98[6]];
    [(MapsSuggestionsEntry *)v8 setNumber:v27 forKey:@"MapsSuggestionsLatitudeKey"];

    v28 = [MEMORY[0x1E696AD98] numberWithDouble:v98[7]];
    [(MapsSuggestionsEntry *)v8 setNumber:v28 forKey:@"MapsSuggestionsLongitudeKey"];

    v29 = MEMORY[0x1E696AD98];
    v30 = [v87 location];
    [v30 horizontalUncertainty];
    v31 = [v29 numberWithDouble:?];
    [(MapsSuggestionsEntry *)v8 setNumber:v31 forKey:@"MapsSuggestionsCoreRoutineLocationUncertainty"];

    [(MapsSuggestionsEntry *)v8 setInteger:0 forKey:@"MapsSuggestionsGEOMapItemOriginKey"];
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v87, "type")}];
    [(MapsSuggestionsEntry *)v8 setNumber:v32 forKey:@"MapsSuggestionsCoreRoutineType"];

    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v87, "typeSource")}];
    [(MapsSuggestionsEntry *)v8 setNumber:v33 forKey:@"MapsSuggestionsCoreRoutineTypeSource"];

    v34 = [v87 customLabel];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = &stru_1F444C108;
    }

    [(MapsSuggestionsEntry *)v8 setString:v36 forKey:@"MapsSuggestionsCoreRoutineCustomLabel"];

    v37 = [v87 identifier];
    [(MapsSuggestionsEntry *)v8 setUUID:v37 forKey:@"MapsSuggestionsCoreRoutineIdentifier"];

    v38 = [v86 nextEntryTime];
    [(MapsSuggestionsEntry *)v8 setDate:v38 forKey:@"MapsSuggestionsScheduledTimeKey"];

    v39 = MEMORY[0x1E696AD98];
    v40 = [v87 visits];
    v41 = [v39 numberWithUnsignedInteger:{objc_msgSend(v40, "count")}];
    [(MapsSuggestionsEntry *)v8 setNumber:v41 forKey:@"MapsSuggestionsCoreRoutineVisitsCountKey"];

    [(MapsSuggestionsEntry *)v8 setBoolean:v7 & 1 forKey:@"MapsSuggestionsCoreRoutineFromMeCardKey"];
    v42 = [v85 geoMapItemHandle];
    [(MapsSuggestionsEntry *)v8 setMapItemHandleData:v42];

    v43 = [v86 nextEntryTime];
    v44 = v43;
    if (!v43)
    {
      v45 = MEMORY[0x1E695DF00];
      GEOConfigGetDouble();
      v44 = [v45 dateWithTimeIntervalSinceNow:?];
    }

    [(MapsSuggestionsEntry *)v8 setExpires:v44];
    if (!v43)
    {
    }

    v46 = [v87 visits];
    v47 = [v46 firstObject];

    v48 = [v47 entryDate];
    [(MapsSuggestionsEntry *)v8 setDate:v48 forKey:@"MapsSuggestionsCoreRoutineFirstVisit"];

    v49 = [v87 visits];
    v82 = [v49 lastObject];

    v50 = [v82 entryDate];
    [(MapsSuggestionsEntry *)v8 setDate:v50 forKey:@"MapsSuggestionsCoreRoutineLastVisit"];

    [v86 confidence];
    v52 = v51;
    v53 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v52;
      _os_log_impl(&dword_1C5126000, v53, OS_LOG_TYPE_DEBUG, "Got a confidence of %.2f", &buf, 0xCu);
    }

    if (v6 > 3)
    {
      if (v6 != 4)
      {
        if (v6 != 7)
        {
          if (v6 == 19)
          {
            GEOConfigGetDouble();
            [(MapsSuggestionsEntry *)v8 setWeight:v52 * v54];
            if (MapsSuggestionsSawHomeOrWorkOnThisDevice::s_onceToken == -1)
            {
              goto LABEL_47;
            }

            goto LABEL_74;
          }

          goto LABEL_50;
        }

        v80 = v84;
        v59 = objc_opt_class();
        if (v80)
        {
          if (v59)
          {
            if ([v59 isSubclassOfClass:objc_opt_class()])
            {
              v107 = 0u;
              v108 = 0u;
              *v105 = 0u;
              v106 = 0u;
              v60 = v80;
              v61 = [v60 countByEnumeratingWithState:v105 objects:&buf count:16];
              if (v61)
              {
                v62 = *v106;
LABEL_39:
                v63 = 0;
                while (1)
                {
                  if (*v106 != v62)
                  {
                    objc_enumerationMutation(v60);
                  }

                  v64 = *(*&v105[8] + 8 * v63);
                  if (objc_opt_isKindOfClass())
                  {
                    break;
                  }

                  if (v61 == ++v63)
                  {
                    v61 = [v60 countByEnumeratingWithState:v105 objects:&buf count:16];
                    if (v61)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_61;
                  }
                }

                if (!v64)
                {
                  goto LABEL_62;
                }

                v78 = [v64 vehicleEvent];
                v79 = [(MapsSuggestionsRoutine *)a1 _addParkedCarFieldsToSuggestionsEntry:v8 vehicleEvent:v78];

                if ((v79 & 1) == 0)
                {
                  v56 = 0;
                  goto LABEL_65;
                }

                goto LABEL_47;
              }

              goto LABEL_61;
            }

            v60 = GEOFindOrCreateLog();
            if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
LABEL_61:

LABEL_62:
              GEOFindOrCreateLog();
              objc_claimAutoreleasedReturnValue();
              [MapsSuggestionsRoutine _suggestionEntryForPLOI:];
              goto LABEL_63;
            }

            *v112 = 136446978;
            v113 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
            v114 = 1024;
            v115 = 221;
            v116 = 2082;
            v117 = "T *_get(NSArray<RTSource *> *__strong) [T = RTSourceCoreRoutineVehicleEvent]";
            v118 = 2082;
            v119 = "! [rtSourceClass isSubclassOfClass:[RTSource class]]";
            v76 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a RTSource-derived class";
          }

          else
          {
            v60 = GEOFindOrCreateLog();
            if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_61;
            }

            *v112 = 136446978;
            v113 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
            v114 = 1024;
            v115 = 220;
            v116 = 2082;
            v117 = "T *_get(NSArray<RTSource *> *__strong) [T = RTSourceCoreRoutineVehicleEvent]";
            v118 = 2082;
            v119 = "nil == (rtSourceClass)";
            v76 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a class";
          }
        }

        else
        {
          v60 = GEOFindOrCreateLog();
          if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_61;
          }

          *v112 = 136446978;
          v113 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
          v114 = 1024;
          v115 = 219;
          v116 = 2082;
          v117 = "T *_get(NSArray<RTSource *> *__strong) [T = RTSourceCoreRoutineVehicleEvent]";
          v118 = 2082;
          v119 = "nil == (rtSources)";
          v76 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires sources";
        }

        _os_log_impl(&dword_1C5126000, v60, OS_LOG_TYPE_ERROR, v76, v112, 0x26u);
        goto LABEL_61;
      }

      GEOConfigGetDouble();
      [(MapsSuggestionsEntry *)v8 setWeight:v52 * v58];
LABEL_47:
      [(MapsSuggestionsRoutine *)a1 _addLabelForEntry:v8];
      v81 = v47;
      v66 = dispatch_group_create();
      dispatch_group_enter(v66);
      v67 = *(a1 + 24);
      v68 = [v85 muid];
      v69 = [v85 name];
      v70 = [v85 address];
      v71 = [v70 geoAddressObject];
      v72 = [v71 fullAddressWithMultiline:0];
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 3221225472;
      v88[2] = __50__MapsSuggestionsRoutine__suggestionEntryForPLOI___block_invoke_290;
      v88[3] = &unk_1E81F7638;
      v73 = v8;
      v89 = v73;
      v74 = v66;
      v90 = v74;
      LODWORD(v68) = [v67 queryMapsSyncWithRTMapItemMuid:v68 name:v69 address:v72 completion:v88];

      v47 = v81;
      if (!v68)
      {
        dispatch_group_leave(v74);
      }

      dispatch_group_wait(v74, 0xFFFFFFFFFFFFFFFFLL);
      v56 = v73;

LABEL_64:
LABEL_65:

      goto LABEL_66;
    }

    if (v6 == 1)
    {
      GEOConfigGetDouble();
      [(MapsSuggestionsEntry *)v8 setWeight:v52 * v65];
      if (MapsSuggestionsSawHomeOrWorkOnThisDevice::s_onceToken == -1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (v6 != 2)
      {
LABEL_50:
        GEOFindOrCreateLog();
        objc_claimAutoreleasedReturnValue();
        [MapsSuggestionsRoutine _suggestionEntryForPLOI:];
LABEL_63:
        v74 = *v105;
        v56 = buf;
        goto LABEL_64;
      }

      GEOConfigGetDouble();
      [(MapsSuggestionsEntry *)v8 setWeight:v52 * v57];
      if (MapsSuggestionsSawHomeOrWorkOnThisDevice::s_onceToken == -1)
      {
        goto LABEL_47;
      }
    }

LABEL_74:
    [MapsSuggestionsRoutine _convertType:source:];
    goto LABEL_47;
  }

  v56 = 0;
LABEL_68:

  return v56;
}

intptr_t __50__MapsSuggestionsRoutine__suggestionEntryForPLOI___block_invoke(uint64_t a1, double a2, double a3)
{
  v4 = *(*(a1 + 40) + 8);
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Successfully shifted entry's coordinate.", v7, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void __50__MapsSuggestionsRoutine__suggestionEntryForPLOI___block_invoke_286(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "Failed to shift entry's coordinate: %@", &v5, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __50__MapsSuggestionsRoutine__suggestionEntryForPLOI___block_invoke_290(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setGeoMapItem:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

- (id)_updateEntry:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 type];
    if (!v4 || v5 == 7)
    {
      a1 = v4;
      goto LABEL_48;
    }

    v6 = [a1[16] shortcutForEntry:v4];
    if (v6)
    {
LABEL_5:
      if ([v4 type] == 1)
      {
        v7 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          LOWORD(v16[0]) = 0;
          _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_INFO, "ShortcutMatcher: Shortcut found at the entry's address", v16, 2u);
        }

        if ([v6 type] != 2)
        {
          if ([v6 type] == 3)
          {
            v8 = GEOFindOrCreateLog();
            if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              v10 = 2;
              goto LABEL_40;
            }

            LOWORD(v16[0]) = 0;
            v9 = "ShortcutMatcher: Entry type Home, but MapsSync had the address saved as Work. Creating a Work entry.";
            v10 = 2;
            goto LABEL_26;
          }

          if ([a1[16] hasShortcutOfType:2])
          {
            v8 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              LOWORD(v16[0]) = 0;
              v12 = "ShortcutMatcher: Home saved in MapsSync did not match the Home entry. Creating a FrequentLocation entry instead.";
              goto LABEL_38;
            }

LABEL_39:
            v10 = 4;
            goto LABEL_40;
          }

          goto LABEL_46;
        }

        GEOFindOrCreateLog();
        objc_claimAutoreleasedReturnValue();
        [MapsSuggestionsRoutine _updateEntry:];
      }

      else
      {
        if ([v4 type] != 2)
        {
          goto LABEL_46;
        }

        v13 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LOWORD(v16[0]) = 0;
          _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_INFO, "ShortcutMatcher: Shortcut found at the entry's address", v16, 2u);
        }

        if ([v6 type] != 3)
        {
          if ([v6 type] == 2)
          {
            v8 = GEOFindOrCreateLog();
            v10 = 1;
            if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
LABEL_40:

              v14 = [v4 copyWithNewType:v10];
LABEL_47:
              a1 = v14;

              goto LABEL_48;
            }

            LOWORD(v16[0]) = 0;
            v9 = "ShortcutMatcher: Entry type Work, but MapsSync had the address saved as Home. Creating a Home entry.";
            v10 = 1;
LABEL_26:
            _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_INFO, v9, v16, 2u);
            goto LABEL_40;
          }

          if ([a1[16] hasShortcutOfType:3])
          {
            v8 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              LOWORD(v16[0]) = 0;
              v12 = "ShortcutMatcher: Work saved in MapsSync did not match the Work entry. Creating a FrequentLocation entry instead.";
              goto LABEL_38;
            }

            goto LABEL_39;
          }

LABEL_46:
          v14 = v4;
          goto LABEL_47;
        }

        GEOFindOrCreateLog();
        objc_claimAutoreleasedReturnValue();
        [MapsSuggestionsRoutine _updateEntry:];
      }

LABEL_45:

      goto LABEL_46;
    }

    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_INFO, "ShortcutMatcher: No shortcut found at the entry's address.", v16, 2u);
    }

    if ([v4 type] == 1)
    {
      if (![a1[16] hasShortcutOfType:2])
      {
        GEOFindOrCreateLog();
        objc_claimAutoreleasedReturnValue();
        [MapsSuggestionsRoutine _updateEntry:];
        goto LABEL_45;
      }

      v8 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_39;
      }

      LOWORD(v16[0]) = 0;
      v12 = "ShortcutMatcher: Home saved in MapsSync did not match the Home entry. Creating a FrequentLocation entry instead.";
    }

    else
    {
      if ([v4 type] != 2)
      {
        goto LABEL_5;
      }

      if (![a1[16] hasShortcutOfType:3])
      {
        GEOFindOrCreateLog();
        objc_claimAutoreleasedReturnValue();
        [MapsSuggestionsRoutine _updateEntry:];
        goto LABEL_45;
      }

      v8 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_39;
      }

      LOWORD(v16[0]) = 0;
      v12 = "ShortcutMatcher: Work saved in MapsSync did not match the Work entry. Creating a FrequentLocation entry instead.";
    }

LABEL_38:
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_INFO, v12, v16, 2u);
    goto LABEL_39;
  }

LABEL_48:

  return a1;
}

- (void)_treatPLOIs:(const char *)a3 stepCounter:(void *)a4 handler:
{
  v34 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v20 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ((*(a1 + 160) & 1) == 0)
    {
      GEOConfigSetBOOL();
      *(a1 + 160) = 1;
    }

    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v30 = "[MapsSuggestionsRoutine _treatPLOIs:stepCounter:handler:]";
      v31 = 1024;
      LODWORD(v32) = [v21 count];
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "%s: about to process %u routine LOIs", buf, 0x12u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v21;
    v7 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v10 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = [(MapsSuggestionsRoutine *)a1 _suggestionEntryForPLOI:v12];
          v14 = v13;
          if (v13)
          {
            if ([v13 type] == 1)
            {
              [v12 confidence];
              v16 = v15;
              if ((v8 & 1) != 0 && v15 <= 0.0 && GEOConfigGetBOOL())
              {
                v17 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v30 = v12;
                  _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "We already had a high-confidence Home, we don't need a low-confidence one: %@", buf, 0xCu);
                }

LABEL_22:

                goto LABEL_23;
              }

              v8 |= v16 > 0.0;
            }

            v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{++v9, v20}];
            [v14 setNumber:v18 forKey:@"MapsSuggestionsOriginalPositionKey"];

            [v24 addObject:v14];
            v17 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v19 = [v14 fullDescription];
              *buf = 134218242;
              v30 = a3;
              v31 = 2112;
              v32 = v19;
              _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "FindAllPLOIEntries %lu yielded MapsSuggestionEntry: %@", buf, 0x16u);
            }

            goto LABEL_22;
          }

LABEL_23:
        }

        v7 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v7);
    }

    [(MapsSuggestionsRoutine *)a1 _resolveMapItemsAndAddEntries:v24 handler:v20];
  }
}

- (void)_resolveMapItemsAndAddEntries:(void *)a3 handler:
{
  v57 = *MEMORY[0x1E69E9840];
  v35 = a2;
  v34 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [a1 uniqueName];
      *buf = 138412546;
      *v55 = v6;
      *&v55[8] = 2080;
      *&v55[10] = "_resolveMapItemsAndAddEntries";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_resolveMapItemsAndAddEntries", "", buf, 2u);
    }

    objc_initWeak(&location, a1);
    group = dispatch_group_create();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v35;
    v8 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v8)
    {
      v38 = *v50;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v50 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v49 + 1) + 8 * i);
          if ([v10 type])
          {
            v11 = [v10 geoMapItem];
            v12 = v11 == 0;

            if (v12)
            {
              v13 = MapsSuggestionsDestinationKey(v10);
              if (MapsSuggestionsLoggingIsVerbose())
              {
                v14 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                {
                  v15 = *(a1 + 136);
                  *buf = 138412546;
                  *v55 = v13;
                  *&v55[8] = 2112;
                  *&v55[10] = v15;
                  _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Trying destination key %@ on %@", buf, 0x16u);
                }
              }

              v16 = [*(a1 + 136) objectForKeyedSubscript:v13];
              if (v16)
              {
                v17 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                {
                  v18 = [*(a1 + 136) hitsOnKey:v13];
                  [*(a1 + 136) totalHitRatio];
                  v20 = v19;
                  v21 = [*(a1 + 136) count];
                  *buf = 67109632;
                  *v55 = v18;
                  *&v55[4] = 2048;
                  *&v55[6] = v20;
                  *&v55[14] = 1024;
                  *&v55[16] = v21;
                  _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "Cache hit (%ux) (ratio: %.2f on %u elements)", buf, 0x18u);
                }

                [v10 setGeoMapItem:v16];
                v22 = [*(a1 + 144) objectForKeyedSubscript:v13];
                v23 = v22;
                v24 = &unk_1F4470F90;
                if (v22)
                {
                  v24 = v22;
                }

                v25 = v24;

                [v10 setNumber:v25 forKey:@"MapsSuggestionsGEOMapItemOriginKey"];
              }

              else
              {
                v26 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  [*(a1 + 136) totalHitRatio];
                  v28 = v27;
                  v29 = [*(a1 + 136) count];
                  *buf = 134218240;
                  *v55 = v28;
                  *&v55[8] = 1024;
                  *&v55[10] = v29;
                  _os_log_impl(&dword_1C5126000, v26, OS_LOG_TYPE_DEBUG, "Cache miss (ratio: %.2f on %u elements)", buf, 0x12u);
                }

                dispatch_group_enter(group);
                v30 = *(a1 + 16);
                v44[0] = MEMORY[0x1E69E9820];
                v44[1] = 3221225472;
                v44[2] = __64__MapsSuggestionsRoutine__resolveMapItemsAndAddEntries_handler___block_invoke;
                v44[3] = &unk_1E81F7688;
                v31 = group;
                v45 = v31;
                objc_copyWeak(&v48, &location);
                v46 = v13;
                v47 = v10;
                if (!GEOMapItemFromMapsSuggestionsEntry(v10, v30, 1, v44))
                {
                  dispatch_group_leave(v31);
                }

                objc_destroyWeak(&v48);
                v25 = v45;
              }
            }

            else
            {
              v13 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "We already have a mapitem, let's keep that.", buf, 2u);
              }
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v8);
    }

    v32 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__MapsSuggestionsRoutine__resolveMapItemsAndAddEntries_handler___block_invoke_298;
    block[3] = &unk_1E81F76B0;
    v40 = obj;
    v41 = a1;
    v33 = v32;
    objc_copyWeak(&v43, &location);
    v42 = v34;
    dispatch_group_notify(group, v33, block);

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }
}

- (void)_treatPredictedContextResult:(uint64_t)a3 considerGymPredictions:(uint64_t)a4 considerSchoolPredictions:(uint64_t)a5 considerUnknownTypePredictions:(void *)a6 handler:
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v21 = a6;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ((*(a1 + 160) & 1) == 0)
    {
      GEOConfigSetBOOL();
      *(a1 + 160) = 1;
    }

    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v11 debugDescription];
      *buf = 136315394;
      v27 = "[MapsSuggestionsRoutine _treatPredictedContextResult:considerGymPredictions:considerSchoolPredictions:considerUnknownTypePredictions:handler:]";
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "%s: about to process %@ routine LOIs", buf, 0x16u);
    }

    objc_initWeak(buf, a1);
    v14 = *(a1 + 16);
    v15 = MapsSuggestionsCurrentBestLocation();
    GEOConfigGetDouble();
    v17 = v16;
    v18 = *(a1 + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __143__MapsSuggestionsRoutine__treatPredictedContextResult_considerGymPredictions_considerSchoolPredictions_considerUnknownTypePredictions_handler___block_invoke;
    v22[3] = &unk_1E81F7660;
    objc_copyWeak(&v25, buf);
    v24 = v21;
    v22[4] = a1;
    v19 = v20;
    v23 = v19;
    [MapsSuggestionsRoutine loisFromPredictedContextResult:v11 usingNetworkRequester:v14 currentLocation:v15 predictionDuration:a3 considerGymPredictions:a4 considerSchoolPredictions:a5 considerUnknownTypePredictions:v17 callbackQueue:v18 completionHandler:v22];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }
}

void __143__MapsSuggestionsRoutine__treatPredictedContextResult_considerGymPredictions_considerSchoolPredictions_considerUnknownTypePredictions_handler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "MapsSuggestionsRoutine.mm";
      *&buf[12] = 1026;
      *&buf[14] = 738;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsRoutine _treatPredictedContextResult:considerGymPredictions:considerSchoolPredictions:considerUnknownTypePredictions:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    goto LABEL_34;
  }

  if (!v12)
  {
    if (!v11)
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "_treatPredictedContextResult: No eligible next predicted location. Not creating entries.", buf, 2u);
      }

      goto LABEL_5;
    }

    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "_treatPredictedContextResult: Received loi: %@. entryTime: %@", buf, 0x16u);
    }

    v17 = rtLOITypeForMSgLOIType([v11 type]);
    v18 = [v11 predictionSources];
    v19 = [(MapsSuggestionsRoutine *)WeakRetained _convertType:v17 source:v18];

    v20 = 4;
    if (v19)
    {
      v20 = v19;
    }

    v56 = v20;
    v21 = [MapsSuggestionsEntry alloc];
    v22 = [v11 preferredName];
    v15 = [(MapsSuggestionsEntry *)v21 initWithType:v56 title:v22];

    v23 = [v11 identifierString];
    [v15 setString:v23 forKey:@"MapsSuggestionsCoreRoutinePK"];

    [v15 setString:@"MapsSuggestionsCoreRoutinePK" forKey:@"MapsSuggestionsPrimaryKey"];
    v24 = MEMORY[0x1E696AD98];
    v25 = [v11 location];
    [v25 coordinate];
    v26 = [v24 numberWithDouble:?];
    [v15 setNumber:v26 forKey:@"MapsSuggestionsLatitudeKey"];

    v27 = MEMORY[0x1E696AD98];
    v28 = [v11 location];
    [v28 coordinate];
    v30 = [v27 numberWithDouble:v29];
    [v15 setNumber:v30 forKey:@"MapsSuggestionsLongitudeKey"];

    v31 = MEMORY[0x1E696AD98];
    v32 = [v11 location];
    [v32 horizontalAccuracy];
    v33 = [v31 numberWithDouble:?];
    [v15 setNumber:v33 forKey:@"MapsSuggestionsCoreRoutineLocationUncertainty"];

    [v15 setInteger:5 forKey:@"MapsSuggestionsGEOMapItemOriginKey"];
    v34 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "type")}];
    [v15 setNumber:v34 forKey:@"MapsSuggestionsCoreRoutineType"];

    v35 = [v11 customLabel];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = &stru_1F444C108;
    }

    [v15 setString:v37 forKey:@"MapsSuggestionsCoreRoutineCustomLabel"];

    v38 = [v11 identifierUUID];
    [v15 setUUID:v38 forKey:@"MapsSuggestionsCoreRoutineIdentifier"];

    v39 = [v11 predictedStartDate];
    [v15 setDate:v39 forKey:@"MapsSuggestionsScheduledTimeKey"];

    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "visitCount")}];
    [v15 setNumber:v40 forKey:@"MapsSuggestionsCoreRoutineVisitsCountKey"];

    -[NSObject setBoolean:forKey:](v15, "setBoolean:forKey:", [v11 isLOIFromMeCard], @"MapsSuggestionsCoreRoutineFromMeCardKey");
    v41 = [v11 mapItemHandle];
    [v15 setMapItemHandleData:v41];

    v42 = [v11 mapItem];
    [v15 setGeoMapItem:v42];

    v43 = [v11 mapItem];
    v44 = [v43 name];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__365;
    v59 = __Block_byref_object_dispose__366;
    v60 = 0;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = ___ZL18_firstLineOfStringP8NSString_block_invoke;
    v57[3] = &unk_1E81F7C60;
    v57[4] = buf;
    [v44 enumerateLinesUsingBlock:v57];
    v45 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    [v15 setUndecoratedTitle:v45];
    [v15 setUndecoratedSubtitle:0];
    v46 = [v11 predictedEndDate];
    v47 = v46;
    if (!v46)
    {
      v48 = MEMORY[0x1E695DF00];
      GEOConfigGetDouble();
      v47 = [v48 dateWithTimeIntervalSinceNow:?];
    }

    [v15 setExpires:v47];
    if (!v46)
    {
    }

    v49 = [v11 firstVisit];
    [v15 setDate:v49 forKey:@"MapsSuggestionsCoreRoutineFirstVisit"];

    v50 = [v11 lastVisit];
    [v15 setDate:v50 forKey:@"MapsSuggestionsCoreRoutineLastVisit"];

    if (v56 > 3)
    {
      if (v56 != 4 && v56 != 19)
      {
        goto LABEL_31;
      }
    }

    else if (v56 != 1 && v56 != 2)
    {
      goto LABEL_31;
    }

    GEOConfigGetDouble();
    v52 = v51;
    [v11 probability];
    [v15 setWeight:v52 * v53];
LABEL_31:
    [(MapsSuggestionsRoutine *)*(a1 + 32) _addLabelForEntry:v15];
    [*(a1 + 40) addObject:v15];
    v54 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      v55 = [v15 fullDescription];
      *buf = 138412290;
      *&buf[4] = v55;
      _os_log_impl(&dword_1C5126000, v54, OS_LOG_TYPE_DEBUG, "_treatPredictedContextResult yielded MapsSuggestionEntry: %@", buf, 0xCu);
    }

    [(MapsSuggestionsRoutine *)*(a1 + 32) _resolveMapItemsAndAddEntries:*(a1 + 48) handler:?];
LABEL_34:

    goto LABEL_35;
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "_treatPredictedContextResult: Error fetching LoIs from Predicted Context Result.", buf, 2u);
  }

LABEL_5:

  (*(*(a1 + 48) + 16))();
LABEL_35:
}

void __64__MapsSuggestionsRoutine__resolveMapItemsAndAddEntries_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "Could not get MapItem: %@", &v13, 0xCu);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained[17] setObject:v5 forKeyedSubscript:*(a1 + 40)];
      v10 = [*(a1 + 48) numberForKey:@"MapsSuggestionsGEOMapItemOriginKey"];
      [v9[18] setObject:v10 forKeyedSubscript:*(a1 + 40)];

      dispatch_group_leave(*(a1 + 32));
    }

    else
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 136446722;
        v14 = "MapsSuggestionsRoutine.mm";
        v15 = 1026;
        v16 = 858;
        v17 = 2082;
        v18 = "[MapsSuggestionsRoutine _resolveMapItemsAndAddEntries:handler:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v13, 0x1Cu);
      }
    }
  }
}

void __64__MapsSuggestionsRoutine__resolveMapItemsAndAddEntries_handler___block_invoke_298(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [(MapsSuggestionsRoutine *)*(a1 + 40) _updateEntry:v7];
        if (v8)
        {
          v9 = [(MapsSuggestionsRoutine *)*(a1 + 40) _updateEntry:v7];
          v10 = [v2 arrayByAddingObject:{v9, v15}];

          v2 = v10;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    (*(*(a1 + 48) + 16))();
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [WeakRetained uniqueName];
      *buf = 138412546;
      v20 = v13;
      v21 = 2080;
      v22[0] = "_resolveMapItemsAndAddEntries";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v14 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_resolveMapItemsAndAddEntries", "", buf, 2u);
    }
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "MapsSuggestionsRoutine.mm";
      v21 = 1026;
      LODWORD(v22[0]) = 883;
      WORD2(v22[0]) = 2082;
      *(v22 + 6) = "[MapsSuggestionsRoutine _resolveMapItemsAndAddEntries:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (char)fetchEntriesForLocation:(id)a3 period:(id)a4 handler:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v30 = 1024;
      *v31 = 894;
      *&v31[4] = 2082;
      *&v31[6] = "[MapsSuggestionsRoutine fetchEntriesForLocation:period:handler:]";
      *&v31[14] = 2082;
      *&v31[16] = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler", buf, 0x26u);
    }

    goto LABEL_20;
  }

  if (!v8)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v30 = 1024;
      *v31 = 895;
      *&v31[4] = 2082;
      *&v31[6] = "[MapsSuggestionsRoutine fetchEntriesForLocation:period:handler:]";
      *&v31[14] = 2082;
      *&v31[16] = "nil == (location)";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location", buf, 0x26u);
    }

    goto LABEL_20;
  }

  if (!v9)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v30 = 1024;
      *v31 = 896;
      *&v31[4] = 2082;
      *&v31[6] = "[MapsSuggestionsRoutine fetchEntriesForLocation:period:handler:]";
      *&v31[14] = 2082;
      *&v31[16] = "nil == (period)";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a period", buf, 0x26u);
    }

    goto LABEL_20;
  }

  v11 = [v9 startDate];

  if (!v11)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v30 = 1024;
      *v31 = 897;
      *&v31[4] = 2082;
      *&v31[6] = "[MapsSuggestionsRoutine fetchEntriesForLocation:period:handler:]";
      *&v31[14] = 2082;
      *&v31[16] = "nil == (period.startDate)";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a startDate", buf, 0x26u);
    }

    goto LABEL_20;
  }

  [v9 duration];
  if (v12 == 0.0)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v30 = 1024;
      *v31 = 898;
      *&v31[4] = 2082;
      *&v31[6] = "[MapsSuggestionsRoutine fetchEntriesForLocation:period:handler:]";
      *&v31[14] = 2082;
      *&v31[16] = "0.0 == period.duration";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an interval", buf, 0x26u);
    }

LABEL_20:

    v14 = 0;
    goto LABEL_21;
  }

  if (+[MapsSuggestionsSiri isEnabled])
  {
    v16 = [MapsSuggestionsRoutine fetchEntriesForLocation:period:handler:]::s_stepCounter++;
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v29 = v16;
      _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "FindAllPLOIEntries %lu BEGIN", buf, 0xCu);
    }

    objc_initWeak(&location, self);
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v29 = v16;
      v30 = 2112;
      *v31 = v9;
      *&v31[8] = 2112;
      *&v31[10] = v8;
      _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_DEBUG, "FindAllPLOIEntries %lu uses %@ location=%@", buf, 0x20u);
    }

    connector = self->_connector;
    v20 = [v9 startDate];
    [v9 duration];
    v22 = v21;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __65__MapsSuggestionsRoutine_fetchEntriesForLocation_period_handler___block_invoke;
    v24[3] = &unk_1E81F76D8;
    objc_copyWeak(v26, &location);
    v25 = v10;
    v26[1] = v16;
    [(MapsSuggestionsRoutineConnector *)connector fetchNextPLOIsFromLocation:v8 startDate:v20 timeInterval:v24 withHandler:v22];

    objc_destroyWeak(v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_DEBUG, "User turned off Siri Suggestions for maps. Not attempting to fetch entries", buf, 2u);
    }

    (*(v10 + 2))(v10, 0, 0);
  }

  v14 = 1;
LABEL_21:

  return v14;
}

void __65__MapsSuggestionsRoutine_fetchEntriesForLocation_period_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v6)
  {
    if (WeakRetained)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v6;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "Could not get PLOIs: %@", buf, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 48);
        *buf = 134217984;
        v20 = v11;
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "FindAllPLOIEntries %lu FAIL", buf, 0xCu);
      }
    }

    else
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v20 = "MapsSuggestionsRoutine.mm";
        v21 = 1026;
        v22 = 923;
        v23 = 2082;
        v24 = "[MapsSuggestionsRoutine fetchEntriesForLocation:period:handler:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
      }
    }
  }

  else if (WeakRetained)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__MapsSuggestionsRoutine_fetchEntriesForLocation_period_handler___block_invoke_306;
    v15[3] = &unk_1E81F5BA0;
    objc_copyWeak(v18, (a1 + 40));
    v16 = v5;
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    v17 = v12;
    v18[1] = v13;
    dispatch_async(v8[4], v15);

    objc_destroyWeak(v18);
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "MapsSuggestionsRoutine.mm";
      v21 = 1026;
      v22 = 930;
      v23 = 2082;
      v24 = "[MapsSuggestionsRoutine fetchEntriesForLocation:period:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __65__MapsSuggestionsRoutine_fetchEntriesForLocation_period_handler___block_invoke_306(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsRoutine *)WeakRetained _treatPLOIs:[MapsSuggestionsRoutine fetchEntriesForLocation:period:handler:]::s_stepCounter stepCounter:*(a1 + 40) handler:?];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 56);
      v6 = 134217984;
      v7 = v5;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "FindAllPLOIEntries %lu END", &v6, 0xCu);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsRoutine.mm";
      v8 = 1026;
      v9 = 932;
      v10 = 2082;
      v11 = "[MapsSuggestionsRoutine fetchEntriesForLocation:period:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (char)startMonitoringPredictedContextForHomeAndWorkWithHandler:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!+[MapsSuggestionsSiri isEnabled])
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v10 = "User turned off Siri Suggestions for maps. Not attempting to fetch entries";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, v10, buf, 2u);
    }

LABEL_11:

    (*(v4 + 2))(v4, 0, 0);
    goto LABEL_12;
  }

  if ((MapsFeature_IsEnabled_LocationIntelligenceMaps() & 1) == 0)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v10 = "Location Intelligence not enabled for Maps. Not attempting to fetch entries";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v5 = [MapsSuggestionsRoutine startMonitoringPredictedContextForHomeAndWorkWithHandler:]::s_stepCounter++;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v16 = v5;
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "FetchEntriesUsingPLC %lu BEGIN", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connector = self->_connector;
  v8 = +[MapsSuggestionsRoutine contextOptionsForPLCs];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__MapsSuggestionsRoutine_startMonitoringPredictedContextForHomeAndWorkWithHandler___block_invoke;
  v12[3] = &unk_1E81F7728;
  objc_copyWeak(v14, buf);
  v13 = v4;
  v14[1] = v5;
  [(MapsSuggestionsRoutineConnector *)connector startMonitoringPredictedContextWithOptions:v8 handler:v12];

  objc_destroyWeak(v14);
  objc_destroyWeak(buf);
LABEL_12:

  return 1;
}

void __83__MapsSuggestionsRoutine_startMonitoringPredictedContextForHomeAndWorkWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v26 = "MapsSuggestionsRoutine.mm";
      v27 = 1026;
      v28 = 968;
      v29 = 2082;
      v30 = "[MapsSuggestionsRoutine startMonitoringPredictedContextForHomeAndWorkWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __83__MapsSuggestionsRoutine_startMonitoringPredictedContextForHomeAndWorkWithHandler___block_invoke_308;
    v23 = &unk_1E81F56F8;
    v24 = *(a1 + 32);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __83__MapsSuggestionsRoutine_startMonitoringPredictedContextForHomeAndWorkWithHandler___block_invoke_309;
    v18[3] = &unk_1E81F56F8;
    v19 = *(a1 + 32);
    __83__MapsSuggestionsRoutine_startMonitoringPredictedContextForHomeAndWorkWithHandler___block_invoke_309(v18);

    v10 = v24;
    goto LABEL_14;
  }

  if (!v6)
  {
    v10 = objc_loadWeakRetained((a1 + 40));
    if (v10)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __83__MapsSuggestionsRoutine_startMonitoringPredictedContextForHomeAndWorkWithHandler___block_invoke_311;
      v14[3] = &unk_1E81F7700;
      objc_copyWeak(v17, (a1 + 40));
      v16 = *(a1 + 32);
      v11 = v5;
      v12 = *(a1 + 48);
      v15 = v11;
      v17[1] = v12;
      dispatch_async(v10[4], v14);

      objc_destroyWeak(v17);
    }

    else
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v26 = "MapsSuggestionsRoutine.mm";
        v27 = 1026;
        v28 = 976;
        v29 = 2082;
        v30 = "[MapsSuggestionsRoutine startMonitoringPredictedContextForHomeAndWorkWithHandler:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelf went away in %{public}s", buf, 0x1Cu);
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "Could not get Predicted Contexts: %@", buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
LABEL_15:
}

uint64_t __83__MapsSuggestionsRoutine_startMonitoringPredictedContextForHomeAndWorkWithHandler___block_invoke_308(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "Unable to capture strongSelf while trying to monitor PLC.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __83__MapsSuggestionsRoutine_startMonitoringPredictedContextForHomeAndWorkWithHandler___block_invoke_309(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "Unable to capture strongSelf while trying to monitor PLC.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __83__MapsSuggestionsRoutine_startMonitoringPredictedContextForHomeAndWorkWithHandler___block_invoke_311(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsRoutine *)WeakRetained _treatPredictedContextResult:0 considerGymPredictions:0 considerSchoolPredictions:0 considerUnknownTypePredictions:*(a1 + 40) handler:?];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 56);
      *buf = 134217984;
      v15 = v5;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "FetchEntriesUsingPLC %lu END", buf, 0xCu);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "MapsSuggestionsRoutine.mm";
      v16 = 1026;
      v17 = 981;
      v18 = 2082;
      v19 = "[MapsSuggestionsRoutine startMonitoringPredictedContextForHomeAndWorkWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __83__MapsSuggestionsRoutine_startMonitoringPredictedContextForHomeAndWorkWithHandler___block_invoke_312;
    v12 = &unk_1E81F56F8;
    v13 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __83__MapsSuggestionsRoutine_startMonitoringPredictedContextForHomeAndWorkWithHandler___block_invoke_313;
    v7[3] = &unk_1E81F56F8;
    v8 = *(a1 + 40);
    __83__MapsSuggestionsRoutine_startMonitoringPredictedContextForHomeAndWorkWithHandler___block_invoke_313(v7);

    v4 = v13;
  }
}

uint64_t __83__MapsSuggestionsRoutine_startMonitoringPredictedContextForHomeAndWorkWithHandler___block_invoke_312(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "Unable to capture strongSelf while trying to monitor PLC.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __83__MapsSuggestionsRoutine_startMonitoringPredictedContextForHomeAndWorkWithHandler___block_invoke_313(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "Unable to capture strongSelf while trying to monitor PLC.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (char)fetchEntriesUsingPLC:(id)a3 period:(id)a4 includeFrequentLocationEntries:(BOOL)a5 handler:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v12)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v31 = 1024;
      *v32 = 1006;
      *&v32[4] = 2082;
      *&v32[6] = "[MapsSuggestionsRoutine fetchEntriesUsingPLC:period:includeFrequentLocationEntries:handler:]";
      *&v32[14] = 2082;
      *&v32[16] = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler", buf, 0x26u);
    }

    goto LABEL_20;
  }

  if (!v10)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v31 = 1024;
      *v32 = 1007;
      *&v32[4] = 2082;
      *&v32[6] = "[MapsSuggestionsRoutine fetchEntriesUsingPLC:period:includeFrequentLocationEntries:handler:]";
      *&v32[14] = 2082;
      *&v32[16] = "nil == (location)";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location", buf, 0x26u);
    }

    goto LABEL_20;
  }

  if (!v11)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v31 = 1024;
      *v32 = 1008;
      *&v32[4] = 2082;
      *&v32[6] = "[MapsSuggestionsRoutine fetchEntriesUsingPLC:period:includeFrequentLocationEntries:handler:]";
      *&v32[14] = 2082;
      *&v32[16] = "nil == (period)";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a period", buf, 0x26u);
    }

    goto LABEL_20;
  }

  v13 = [v11 startDate];

  if (!v13)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v31 = 1024;
      *v32 = 1009;
      *&v32[4] = 2082;
      *&v32[6] = "[MapsSuggestionsRoutine fetchEntriesUsingPLC:period:includeFrequentLocationEntries:handler:]";
      *&v32[14] = 2082;
      *&v32[16] = "nil == (period.startDate)";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a startDate", buf, 0x26u);
    }

    goto LABEL_20;
  }

  [v11 duration];
  if (v14 != 0.0)
  {
    if (+[MapsSuggestionsSiri isEnabled])
    {
      if (MapsFeature_IsEnabled_LocationIntelligenceMaps())
      {
        v18 = [MapsSuggestionsRoutine fetchEntriesUsingPLC:period:includeFrequentLocationEntries:handler:]::s_stepCounter++;
        v19 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v30 = v18;
          _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_DEBUG, "FetchEntriesUsingPLC %lu BEGIN", buf, 0xCu);
        }

        v20 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          v30 = v18;
          v31 = 2112;
          *v32 = v11;
          *&v32[8] = 2112;
          *&v32[10] = v10;
          _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "FetchEntriesUsingPLC %lu uses %@ location=%@", buf, 0x20u);
        }

        objc_initWeak(buf, self);
        connector = self->_connector;
        v22 = +[MapsSuggestionsRoutine contextOptionsForPLCs];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __93__MapsSuggestionsRoutine_fetchEntriesUsingPLC_period_includeFrequentLocationEntries_handler___block_invoke;
        v25[3] = &unk_1E81F7778;
        objc_copyWeak(v27, buf);
        v26 = v12;
        v27[1] = v18;
        v28 = a5;
        [(MapsSuggestionsRoutineConnector *)connector fetchPredictedContextWithOptions:v22 handler:v25];

        objc_destroyWeak(v27);
        objc_destroyWeak(buf);
        goto LABEL_35;
      }

      v23 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v24 = "Location Intelligence not enabled for Maps. Not attempting to fetch entries";
        goto LABEL_33;
      }
    }

    else
    {
      v23 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v24 = "User turned off Siri Suggestions for Maps. Not attempting to fetch entries";
LABEL_33:
        _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_DEBUG, v24, buf, 2u);
      }
    }

    (*(v12 + 2))(v12, 0, 0);
LABEL_35:
    v16 = 1;
    goto LABEL_21;
  }

  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    v31 = 1024;
    *v32 = 1010;
    *&v32[4] = 2082;
    *&v32[6] = "[MapsSuggestionsRoutine fetchEntriesUsingPLC:period:includeFrequentLocationEntries:handler:]";
    *&v32[14] = 2082;
    *&v32[16] = "0.0 == period.duration";
    _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an interval", buf, 0x26u);
  }

LABEL_20:

  v16 = 0;
LABEL_21:

  return v16;
}

void __93__MapsSuggestionsRoutine_fetchEntriesUsingPLC_period_includeFrequentLocationEntries_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
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
        v28 = v6;
        _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "Could not get Predicted Contexts: %@", buf, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 48);
        *buf = 134217984;
        v28 = v10;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "FetchEntriesUsingPLC %lu FAIL", buf, 0xCu);
      }
    }

    else
    {
      v9 = objc_loadWeakRetained((a1 + 40));
      if (v9)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __93__MapsSuggestionsRoutine_fetchEntriesUsingPLC_period_includeFrequentLocationEntries_handler___block_invoke_319;
        block[3] = &unk_1E81F7750;
        objc_copyWeak(v18, (a1 + 40));
        v17 = *(a1 + 32);
        v12 = v5;
        v19 = *(a1 + 56);
        v13 = *(a1 + 48);
        v16 = v12;
        v18[1] = v13;
        dispatch_async(*(v9 + 32), block);

        objc_destroyWeak(v18);
      }

      else
      {
        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v28 = "MapsSuggestionsRoutine.mm";
          v29 = 1026;
          v30 = 1043;
          v31 = 2082;
          v32 = "[MapsSuggestionsRoutine fetchEntriesUsingPLC:period:includeFrequentLocationEntries:handler:]_block_invoke";
          _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelf went away in %{public}s", buf, 0x1Cu);
        }
      }
    }
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "MapsSuggestionsRoutine.mm";
      v29 = 1026;
      v30 = 1034;
      v31 = 2082;
      v32 = "[MapsSuggestionsRoutine fetchEntriesUsingPLC:period:includeFrequentLocationEntries:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __93__MapsSuggestionsRoutine_fetchEntriesUsingPLC_period_includeFrequentLocationEntries_handler___block_invoke_316;
    v25 = &unk_1E81F56F8;
    v26 = *(a1 + 32);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __93__MapsSuggestionsRoutine_fetchEntriesUsingPLC_period_includeFrequentLocationEntries_handler___block_invoke_317;
    v20[3] = &unk_1E81F56F8;
    v21 = *(a1 + 32);
    __93__MapsSuggestionsRoutine_fetchEntriesUsingPLC_period_includeFrequentLocationEntries_handler___block_invoke_317(v20);

    v9 = v26;
  }
}

uint64_t __93__MapsSuggestionsRoutine_fetchEntriesUsingPLC_period_includeFrequentLocationEntries_handler___block_invoke_316(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "Unable to capture strongSelf while trying to monitor PLC.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __93__MapsSuggestionsRoutine_fetchEntriesUsingPLC_period_includeFrequentLocationEntries_handler___block_invoke_317(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "Unable to capture strongSelf while trying to monitor PLC.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __93__MapsSuggestionsRoutine_fetchEntriesUsingPLC_period_includeFrequentLocationEntries_handler___block_invoke_319(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsRoutine *)WeakRetained _treatPredictedContextResult:*(a1 + 64) considerGymPredictions:*(a1 + 64) considerSchoolPredictions:*(a1 + 64) considerUnknownTypePredictions:*(a1 + 40) handler:?];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 56);
      *buf = 134217984;
      v15 = v5;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "FetchEntriesUsingPLC %lu END", buf, 0xCu);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "MapsSuggestionsRoutine.mm";
      v16 = 1026;
      v17 = 1048;
      v18 = 2082;
      v19 = "[MapsSuggestionsRoutine fetchEntriesUsingPLC:period:includeFrequentLocationEntries:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __93__MapsSuggestionsRoutine_fetchEntriesUsingPLC_period_includeFrequentLocationEntries_handler___block_invoke_320;
    v12 = &unk_1E81F56F8;
    v13 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __93__MapsSuggestionsRoutine_fetchEntriesUsingPLC_period_includeFrequentLocationEntries_handler___block_invoke_321;
    v7[3] = &unk_1E81F56F8;
    v8 = *(a1 + 40);
    __93__MapsSuggestionsRoutine_fetchEntriesUsingPLC_period_includeFrequentLocationEntries_handler___block_invoke_321(v7);

    v4 = v13;
  }
}

uint64_t __93__MapsSuggestionsRoutine_fetchEntriesUsingPLC_period_includeFrequentLocationEntries_handler___block_invoke_320(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "Unable to capture strongSelf while trying to monitor PLC.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __93__MapsSuggestionsRoutine_fetchEntriesUsingPLC_period_includeFrequentLocationEntries_handler___block_invoke_321(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "Unable to capture strongSelf while trying to monitor PLC.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (uint64_t)_addMapItemToShortcut:(void *)a3 fromLOI:(void *)a4 group:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_7;
  }

  if (!v7)
  {
    GEOFindOrCreateLog();
    objc_claimAutoreleasedReturnValue();
    [MapsSuggestionsRoutine _addMapItemToShortcut:fromLOI:group:];
LABEL_11:
    v12 = v19;
    v14 = v20;
    goto LABEL_6;
  }

  if (!v8)
  {
    GEOFindOrCreateLog();
    objc_claimAutoreleasedReturnValue();
    [MapsSuggestionsRoutine _addMapItemToShortcut:fromLOI:group:];
    goto LABEL_11;
  }

  if (!v9)
  {
    GEOFindOrCreateLog();
    objc_claimAutoreleasedReturnValue();
    [MapsSuggestionsRoutine _addMapItemToShortcut:fromLOI:group:];
    goto LABEL_11;
  }

  dispatch_assert_queue_V2(*(a1 + 32));
  dispatch_group_enter(v10);
  v11 = *(a1 + 16);
  v12 = [v8 mapItem];
  v13 = [v12 geoMapItemHandle];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__MapsSuggestionsRoutine__addMapItemToShortcut_fromLOI_group___block_invoke;
  v16[3] = &unk_1E81F63C0;
  v17 = v10;
  v18 = v7;
  v14 = [v11 resolveMapItemHandleData:v13 dropAnalyticsSessionID:0 completion:v16];

LABEL_6:
LABEL_7:

  return v14;
}

void __62__MapsSuggestionsRoutine__addMapItemToShortcut_fromLOI_group___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Could not resolve Shortcut mapItem, error: %@", &v13, 0xCu);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v8 = [v5 firstObject];
    v9 = MapsSuggestionsMapItemConvertIfNeeded(v8);
    [*(a1 + 40) setGeoMapItem:v9];

    dispatch_group_leave(*(a1 + 32));
    v10 = *(a1 + 40);
    v11 = v10;
    if (v10 && ([v10 isSetupPlaceholder] & 1) == 0)
    {
      v12 = [v11 type] & 0xFFFFFFFFFFFFFFFELL;

      if (v12 == 2 && MapsSuggestionsSawHomeOrWorkOnThisDevice::s_onceToken != -1)
      {
        MapsSuggestionsSawHomeOrWorkOnThisDevice_cold_1();
      }
    }

    else
    {
    }
  }
}

- (id)capLocationsOfInterest:(unint64_t)a3 maxResults:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if ([v5 count] <= a3)
    {
      v8 = v6;
    }

    else
    {
      v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_328];
      v8 = [v7 subarrayWithRange:{0, a3}];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __60__MapsSuggestionsRoutine_capLocationsOfInterest_maxResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E696AD98];
  v6 = [a2 visits];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
  v8 = MEMORY[0x1E696AD98];
  v9 = [v4 visits];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  v11 = [v7 compare:v10];

  return v11;
}

- (char)fetchAllSuggestedLOIsExcludingTypes:(id)a3 minVisits:(unint64_t)a4 maxAge:(double)a5 maxResults:(unint64_t)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a7;
  if (+[MapsSuggestionsSiri isEnabled])
  {
    v14 = dispatch_group_create();
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__MapsSuggestionsRoutine_fetchAllSuggestedLOIsExcludingTypes_minVisits_maxAge_maxResults_handler___block_invoke;
    aBlock[3] = &unk_1E81F77C0;
    v16 = v14;
    v35 = v16;
    v38 = a4;
    v36 = v12;
    v17 = v15;
    v37 = v17;
    v18 = _Block_copy(aBlock);
    objc_initWeak(&location, self);
    dispatch_group_enter(v16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__MapsSuggestionsRoutine_fetchAllSuggestedLOIsExcludingTypes_minVisits_maxAge_maxResults_handler___block_invoke_329;
    block[3] = &unk_1E81F7028;
    objc_copyWeak(v32, &location);
    v32[1] = *&a5;
    v31 = v18;
    innerQueue = self->_queue._innerQueue;
    v20 = v18;
    dispatch_async(innerQueue, block);
    dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    v21 = [(MapsSuggestionsRoutine *)self capLocationsOfInterest:v17 maxResults:a6];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __98__MapsSuggestionsRoutine_fetchAllSuggestedLOIsExcludingTypes_minVisits_maxAge_maxResults_handler___block_invoke_330;
    v26[3] = &unk_1E81F5B00;
    objc_copyWeak(&v29, &location);
    v27 = v21;
    v28 = v13;
    v22 = self->_queue._innerQueue;
    v23 = v21;
    dispatch_async(v22, v26);

    objc_destroyWeak(&v29);
    objc_destroyWeak(v32);
    objc_destroyWeak(&location);

    v24 = 1;
  }

  else
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(location) = 0;
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "User turned off Siri Suggestions for maps. Not attempting to fetch shortcuts", &location, 2u);
    }

    v24 = 0;
  }

  return v24;
}

void __98__MapsSuggestionsRoutine_fetchAllSuggestedLOIsExcludingTypes_minVisits_maxAge_maxResults_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v31 = v6;
  v32 = v5;
  if (!v5 || v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v30 = @"NO";
      if (!v5)
      {
        v30 = @"YES";
      }

      *buf = 138412546;
      v45 = v30;
      v46 = 2112;
      v47 = v31;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "LOIs: Error fetching LOIs. is LOIs nil? %@, Error: %@", buf, 0x16u);
    }
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v8)
    {
      v9 = *v36;
      v33 = *v36;
      do
      {
        v34 = v8;
        for (i = 0; i != v34; ++i)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v35 + 1) + 8 * i);
          v12 = [v11 visits];
          v13 = [v12 count];

          if (v13 < *(a1 + 56))
          {
            v14 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v15 = [v11 identifier];
              *buf = 138412546;
              v45 = v15;
              v46 = 1024;
              LODWORD(v47) = v13;
              _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Skipping %@: only %u visits", buf, 0x12u);
            }

LABEL_11:

            continue;
          }

          v16 = [v11 mapItem];
          v17 = v16 == 0;

          if (v17)
          {
            v14 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v29 = [v11 identifier];
              *buf = 138412290;
              v45 = v29;
              _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Skipping %@: no mapItem", buf, 0xCu);
            }

            goto LABEL_11;
          }

          v18 = *(a1 + 40);
          if (v18 && [v18 count])
          {
            v19 = *(a1 + 40);
            v20 = v11;
            v21 = v19;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v22 = v21;
            v23 = [v22 countByEnumeratingWithState:&v39 objects:buf count:16];
            if (v23)
            {
              v24 = *v40;
              while (2)
              {
                for (j = 0; j != v23; ++j)
                {
                  if (*v40 != v24)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v26 = v7;
                  v27 = [*(*(&v39 + 1) + 8 * j) integerValue];
                  if (shortcutTypeForRTLOIType([v20 type]) == v27)
                  {

                    v7 = v26;
                    v9 = v33;

                    goto LABEL_29;
                  }

                  v7 = v26;
                }

                v23 = [v22 countByEnumeratingWithState:&v39 objects:buf count:16];
                v9 = v33;
                if (v23)
                {
                  continue;
                }

                break;
              }
            }
          }

          v28 = *(a1 + 48);
          objc_sync_enter(v28);
          [*(a1 + 48) addObject:v11];
          objc_sync_exit(v28);

LABEL_29:
          ;
        }

        v8 = [v7 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v8);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __98__MapsSuggestionsRoutine_fetchAllSuggestedLOIsExcludingTypes_minVisits_maxAge_maxResults_handler___block_invoke_329(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MapsSuggestionsNowWithOffset(-*(a1 + 48));
    [WeakRetained[1] fetchLocationsOfInterestVisitedSinceDate:v3 withHandler:*(a1 + 32)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsRoutine.mm";
      v7 = 1026;
      v8 = 1148;
      v9 = 2082;
      v10 = "[MapsSuggestionsRoutine fetchAllSuggestedLOIsExcludingTypes:minVisits:maxAge:maxResults:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void __98__MapsSuggestionsRoutine_fetchAllSuggestedLOIsExcludingTypes_minVisits_maxAge_maxResults_handler___block_invoke_330(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [(MapsSuggestionsRoutine *)WeakRetained _msgLOIsForRTLOIs:?];
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v3 uniqueName];
      v8 = 138412546;
      v9 = v6;
      v10 = 2080;
      *v11 = "fetchLocationsSinceDate";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "fetchLocationsSinceDate", "", &v8, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsRoutine.mm";
      v10 = 1026;
      *v11 = 1158;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsRoutine fetchAllSuggestedLOIsExcludingTypes:minVisits:maxAge:maxResults:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

- (id)_msgLOIsForRTLOIs:(uint64_t)a1
{
  v46 = *MEMORY[0x1E69E9840];
  v22 = a2;
  v26 = a1;
  if (a1)
  {
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v22, "count")}];
    group = dispatch_group_create();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v22;
    v3 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v3)
    {
      v27 = *v42;
      do
      {
        v4 = 0;
        v25 = v3;
        do
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v41 + 1) + 8 * v4);
          v32 = [[MapsSuggestionsLocationOfInterest alloc] initWithLOI:v5];
          if (v32)
          {
            dispatch_group_enter(group);
            v6 = *(v26 + 24);
            v7 = [v5 mapItem];
            v8 = [v7 muid];
            v9 = [v5 mapItem];
            v29 = v7;
            v31 = [v9 name];
            v28 = v9;
            v10 = [v5 mapItem];
            v11 = [v10 address];
            v12 = [v11 geoAddressObject];
            v13 = [v12 fullAddressWithMultiline:0];
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __44__MapsSuggestionsRoutine__msgLOIsForRTLOIs___block_invoke;
            v37[3] = &unk_1E81F7AB0;
            v14 = v32;
            v38 = v14;
            v15 = v24;
            v39 = v15;
            v16 = group;
            v40 = v16;
            LODWORD(v8) = [v6 queryMapsSyncWithRTMapItemMuid:v8 name:v31 address:v13 completion:v37];

            v3 = v25;
            if (!v8)
            {
              dispatch_group_leave(v16);
            }

            dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
            v17 = [(MapsSuggestionsLocationOfInterest *)v14 mapItem];
            v18 = v17 == 0;

            if (v18)
            {
              dispatch_group_enter(v16);
              v19 = *(v26 + 16);
              v33[0] = MEMORY[0x1E69E9820];
              v33[1] = 3221225472;
              v33[2] = __44__MapsSuggestionsRoutine__msgLOIsForRTLOIs___block_invoke_394;
              v33[3] = &unk_1E81F7AD8;
              v20 = v16;
              v34 = v20;
              v35 = v15;
              v36 = v14;
              if (![(MapsSuggestionsLocationOfInterest *)v36 hydrateMapItemWithNetworkRequester:v19 completion:v33])
              {
                dispatch_group_leave(v20);
              }
            }
          }

          ++v4;
        }

        while (v3 != v4);
        v3 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v3);
    }

    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (char)fetchSuggestedLOIsForTypes:(id)a3 minVisits:(unint64_t)a4 maxAge:(double)a5 maxResults:(unint64_t)a6 handler:(id)a7
{
  v53 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v27 = a7;
  if (!v27)
  {
    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v47 = 1024;
      v48 = 1174;
      v49 = 2082;
      v50 = "[MapsSuggestionsRoutine fetchSuggestedLOIsForTypes:minVisits:maxAge:maxResults:handler:]";
      v51 = 2082;
      v52 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", location, 0x26u);
    }

    goto LABEL_21;
  }

  if (!+[MapsSuggestionsSiri isEnabled])
  {
    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *location = 0;
      _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_DEBUG, "User turned off Siri Suggestions for maps. Not attempting to fetch shortcuts", location, 2u);
    }

    goto LABEL_21;
  }

  if (!v12 || ![v12 count])
  {
    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *location = 0;
      _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_DEBUG, "No types give to fetch. Not attempting to fetch shortcuts", location, 2u);
    }

LABEL_21:

    v22 = 0;
    goto LABEL_22;
  }

  objc_initWeak(location, self);
  v25 = dispatch_group_create();
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__MapsSuggestionsRoutine_fetchSuggestedLOIsForTypes_minVisits_maxAge_maxResults_handler___block_invoke;
  aBlock[3] = &unk_1E81F77E8;
  v14 = v25;
  v41 = v14;
  v43 = a4;
  v26 = v13;
  v42 = v26;
  v44 = a6;
  v15 = _Block_copy(aBlock);
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v36 = 0u;
  obj = v12;
  v16 = [obj countByEnumeratingWithState:&v36 objects:v45 count:{16, v25}];
  if (v16)
  {
    v17 = *v37;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [*(*(&v36 + 1) + 8 * i) integerValue];
        dispatch_group_enter(v14);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __89__MapsSuggestionsRoutine_fetchSuggestedLOIsForTypes_minVisits_maxAge_maxResults_handler___block_invoke_332;
        block[3] = &unk_1E81F7810;
        objc_copyWeak(v35, location);
        v35[1] = v19;
        v34 = v15;
        v35[2] = *&a5;
        dispatch_async(self->_queue._innerQueue, block);

        objc_destroyWeak(v35);
      }

      v16 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v16);
  }

  dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __89__MapsSuggestionsRoutine_fetchSuggestedLOIsForTypes_minVisits_maxAge_maxResults_handler___block_invoke_333;
  v29[3] = &unk_1E81F5B00;
  objc_copyWeak(&v32, location);
  v30 = v26;
  v31 = v27;
  innerQueue = self->_queue._innerQueue;
  v21 = v26;
  dispatch_async(innerQueue, v29);

  objc_destroyWeak(&v32);
  objc_destroyWeak(location);
  v22 = 1;
LABEL_22:

  return v22;
}

void __89__MapsSuggestionsRoutine_fetchSuggestedLOIsForTypes_minVisits_maxAge_maxResults_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v21 = v6;
  v22 = v5;
  if (!v5 || v6)
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = @"NO";
      if (!v5)
      {
        v20 = @"YES";
      }

      *buf = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, "LOIs: Error fetching LOIs. is LOIs nil? %@, Error: %@", buf, 0x16u);
    }

    goto LABEL_26;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *v24;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v23 + 1) + 8 * i);
      v12 = [v11 visits];
      v13 = [v12 count];

      if (v13 < *(a1 + 48))
      {
        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = [v11 identifier];
          *buf = 138412546;
          v29 = v15;
          v30 = 1024;
          LODWORD(v31) = v13;
          _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Skipping %@: only %u visits", buf, 0x12u);
        }

LABEL_17:

        goto LABEL_18;
      }

      v16 = [v11 mapItem];
      v17 = v16 == 0;

      if (v17)
      {
        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v11 identifier];
          *buf = 138412290;
          v29 = v18;
          _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Skipping %@: no mapItem", buf, 0xCu);
        }

        goto LABEL_17;
      }

      v14 = *(a1 + 40);
      objc_sync_enter(v14);
      [*(a1 + 40) addObject:v11];
      if ([*(a1 + 40) count] >= *(a1 + 56))
      {
        dispatch_group_leave(*(a1 + 32));
        objc_sync_exit(v14);

        goto LABEL_28;
      }

      objc_sync_exit(v14);
LABEL_18:
    }

    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_20:

LABEL_26:
  dispatch_group_leave(*(a1 + 32));
LABEL_28:
}

void __89__MapsSuggestionsRoutine_fetchSuggestedLOIsForTypes_minVisits_maxAge_maxResults_handler___block_invoke_332(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsRoutine.mm";
      v10 = 1026;
      v11 = 1221;
      v12 = 2082;
      v13 = "[MapsSuggestionsRoutine fetchSuggestedLOIsForTypes:minVisits:maxAge:maxResults:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }

    goto LABEL_16;
  }

  v4 = *(a1 + 48);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = 0;
LABEL_15:
        [WeakRetained[1] fetchLocationsOfInterestOfType:v5 withHandler:*(a1 + 32)];
        goto LABEL_16;
      }

      goto LABEL_16;
    }

LABEL_12:
    v7 = MapsSuggestionsNowWithOffset(-*(a1 + 56));
    [v3[1] fetchLocationsOfInterestVisitedSinceDate:v7 withHandler:*(a1 + 32)];

    goto LABEL_16;
  }

  switch(v4)
  {
    case 3:
      v5 = 1;
      goto LABEL_15;
    case 5:
      v5 = 2;
      goto LABEL_15;
    case 6:
      goto LABEL_12;
  }

LABEL_16:
}

void __89__MapsSuggestionsRoutine_fetchSuggestedLOIsForTypes_minVisits_maxAge_maxResults_handler___block_invoke_333(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [(MapsSuggestionsRoutine *)WeakRetained _msgLOIsForRTLOIs:?];
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v3 uniqueName];
      v8 = 138412546;
      v9 = v6;
      v10 = 2080;
      *v11 = "fetchLocationsSinceDate";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "fetchLocationsSinceDate", "", &v8, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsRoutine.mm";
      v10 = 1026;
      *v11 = 1244;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsRoutine fetchSuggestedLOIsForTypes:minVisits:maxAge:maxResults:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

- (char)fetchSuggestedShortcutsForType:(int64_t)a3 minVisits:(unint64_t)a4 maxAge:(double)a5 handler:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a6;
  if (v10)
  {
    if (+[MapsSuggestionsSiri isEnabled])
    {
      if (a3 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = a3;
      }

      objc_initWeak(location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __82__MapsSuggestionsRoutine_fetchSuggestedShortcutsForType_minVisits_maxAge_handler___block_invoke;
      aBlock[3] = &unk_1E81F7860;
      v26 = v10;
      objc_copyWeak(v27, location);
      v27[1] = a4;
      v27[2] = v11;
      v12 = _Block_copy(aBlock);
      v13 = MapsSuggestionsNowWithOffset(-a5);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __82__MapsSuggestionsRoutine_fetchSuggestedShortcutsForType_minVisits_maxAge_handler___block_invoke_2;
      v21[3] = &unk_1E81F7700;
      objc_copyWeak(v24, location);
      v24[1] = v11;
      v22 = v13;
      v23 = v12;
      innerQueue = self->_queue._innerQueue;
      v15 = v13;
      v16 = v12;
      dispatch_async(innerQueue, v21);

      objc_destroyWeak(v24);
      objc_destroyWeak(v27);

      objc_destroyWeak(location);
    }

    else
    {
      v19 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *location = 0;
        _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_DEBUG, "User turned off Siri Suggestions for maps. Not attempting to fetch shortcuts", location, 2u);
      }

      (*(v10 + 2))(v10, 0, 0);
    }

    v18 = 1;
  }

  else
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v29 = 1024;
      v30 = 1258;
      v31 = 2082;
      v32 = "[MapsSuggestionsRoutine fetchSuggestedShortcutsForType:minVisits:maxAge:handler:]";
      v33 = 2082;
      v34 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", location, 0x26u);
    }

    v18 = 0;
  }

  return v18;
}

void __82__MapsSuggestionsRoutine_fetchSuggestedShortcutsForType_minVisits_maxAge_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *&v20[13] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = @"NO";
      if (!v5)
      {
        v10 = @"YES";
      }

      *buf = 138412546;
      v18 = v10;
      v19 = 2112;
      *v20 = v7;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "Shortcuts: Error fetching LOIs. is LOIs nil? %@, Error: %@", buf, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __82__MapsSuggestionsRoutine_fetchSuggestedShortcutsForType_minVisits_maxAge_handler___block_invoke_334;
      block[3] = &unk_1E81F7838;
      objc_copyWeak(&v15, (a1 + 40));
      v13 = v5;
      v16 = *(a1 + 48);
      v14 = *(a1 + 32);
      dispatch_async(WeakRetained[4], block);

      objc_destroyWeak(&v15);
    }

    else
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v18 = "MapsSuggestionsRoutine.mm";
        v19 = 1026;
        *v20 = 1281;
        v20[2] = 2082;
        *&v20[3] = "[MapsSuggestionsRoutine fetchSuggestedShortcutsForType:minVisits:maxAge:handler:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelf went away in %{public}s", buf, 0x1Cu);
      }
    }
  }
}

void __82__MapsSuggestionsRoutine_fetchSuggestedShortcutsForType_minVisits_maxAge_handler___block_invoke_334(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    group = dispatch_group_create();
    v2 = [*(a1 + 32) count];
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = *(a1 + 32);
    v3 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (!v3)
    {
      goto LABEL_17;
    }

    v5 = *v32;
    *&v4 = 138412290;
    v23 = v4;
    while (1)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * i);
        v8 = [v7 visits];
        v9 = [v8 count];

        if (v9 >= *(a1 + 56))
        {
          v12 = [v7 mapItem];
          v13 = v12 == 0;

          if (!v13)
          {
            v14 = [MapsSuggestionsShortcut alloc];
            v15 = *(a1 + 64);
            v16 = [v7 identifier];
            v17 = [v16 UUIDString];
            v18 = [v7 preferredName];
            v10 = [(MapsSuggestionsShortcut *)v14 initWithType:v15 identifier:v17 geoMapItem:0 customName:v18];

            [v24 addObject:v10];
            [(MapsSuggestionsRoutine *)WeakRetained _addMapItemToShortcut:v10 fromLOI:v7 group:group];
            goto LABEL_15;
          }

          v10 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v19 = [v7 identifier];
            *buf = v23;
            v37 = v19;
            _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "Skipping %@: no mapItem", buf, 0xCu);
          }
        }

        else
        {
          v10 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v11 = [v7 identifier];
            *buf = 138412546;
            v37 = v11;
            v38 = 1024;
            v39 = v9;
            _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "Skipping %@: only %u visits", buf, 0x12u);
          }
        }

LABEL_15:
      }

      v3 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (!v3)
      {
LABEL_17:

        v20 = WeakRetained[4];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __82__MapsSuggestionsRoutine_fetchSuggestedShortcutsForType_minVisits_maxAge_handler___block_invoke_336;
        block[3] = &unk_1E81F62F8;
        v21 = *(a1 + 40);
        v29 = v24;
        v30 = v21;
        v22 = v24;
        dispatch_group_notify(group, v20, block);

        goto LABEL_21;
      }
    }
  }

  v22 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v37 = "MapsSuggestionsRoutine.mm";
    v38 = 1026;
    v39 = 1283;
    v40 = 2082;
    v41 = "[MapsSuggestionsRoutine fetchSuggestedShortcutsForType:minVisits:maxAge:handler:]_block_invoke";
    _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
  }

  group = v22;
LABEL_21:
}

void __82__MapsSuggestionsRoutine_fetchSuggestedShortcutsForType_minVisits_maxAge_handler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsRoutine.mm";
      v9 = 1026;
      v10 = 1315;
      v11 = 2082;
      v12 = "[MapsSuggestionsRoutine fetchSuggestedShortcutsForType:minVisits:maxAge:handler:]_block_invoke_2";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }

    goto LABEL_16;
  }

  v4 = *(a1 + 56);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = 0;
LABEL_15:
        [WeakRetained[1] fetchLocationsOfInterestOfType:v5 withHandler:*(a1 + 40)];
        goto LABEL_16;
      }

      goto LABEL_16;
    }

LABEL_12:
    [WeakRetained[1] fetchLocationsOfInterestVisitedSinceDate:*(a1 + 32) withHandler:*(a1 + 40)];
    goto LABEL_16;
  }

  switch(v4)
  {
    case 3:
      v5 = 1;
      goto LABEL_15;
    case 5:
      v5 = 2;
      goto LABEL_15;
    case 6:
      goto LABEL_12;
  }

LABEL_16:
}

- (char)readMeCardWithMinVisits:(unint64_t)a3 maxAge:(double)a4 handler:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "ASYNC FAILURE INVESTIGATION: Entering method readMeCardWithMinVisits", buf, 2u);
  }

  if (v8)
  {
    if (+[MapsSuggestionsSiri isEnabled])
    {
      objc_initWeak(buf, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __65__MapsSuggestionsRoutine_readMeCardWithMinVisits_maxAge_handler___block_invoke;
      aBlock[3] = &unk_1E81F7888;
      v26 = v8;
      objc_copyWeak(v27, buf);
      v27[1] = a3;
      v10 = _Block_copy(aBlock);
      v11 = MapsSuggestionsNowWithOffset(-a4);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__MapsSuggestionsRoutine_readMeCardWithMinVisits_maxAge_handler___block_invoke_340;
      block[3] = &unk_1E81F5B00;
      objc_copyWeak(&v24, buf);
      v22 = v11;
      v12 = v10;
      v23 = v12;
      innerQueue = self->_queue._innerQueue;
      v14 = v11;
      dispatch_async(innerQueue, block);
      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *v20 = 0;
        _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_DEBUG, "ASYNC FAILURE INVESTIGATION: Calling back", v20, 2u);
      }

      objc_destroyWeak(&v24);
      objc_destroyWeak(v27);

      objc_destroyWeak(buf);
    }

    else
    {
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_DEBUG, "User turned off Siri Suggestions for maps. Not attempting to fetch shortcuts for MeCard", buf, 2u);
      }

      (*(v8 + 2))(v8, 0, 0);
    }

    v17 = 1;
  }

  else
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v30 = 1024;
      v31 = 1342;
      v32 = 2082;
      v33 = "[MapsSuggestionsRoutine readMeCardWithMinVisits:maxAge:handler:]";
      v34 = 2082;
      v35 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    v17 = 0;
  }

  return v17;
}

void __65__MapsSuggestionsRoutine_readMeCardWithMinVisits_maxAge_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *&v22[13] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = @"NO";
      if (!v5)
      {
        v13 = @"YES";
      }

      *buf = 138412546;
      v20 = v13;
      v21 = 2112;
      *v22 = v7;
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "MeCard: Error fetching LOIs. is LOIs nil? %@, Error: %@", buf, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "ASYNC FAILURE INVESTIGATION: Entering queue", buf, 2u);
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __65__MapsSuggestionsRoutine_readMeCardWithMinVisits_maxAge_handler___block_invoke_337;
      v15[3] = &unk_1E81F5BA0;
      objc_copyWeak(v18, (a1 + 40));
      v10 = v5;
      v11 = *(a1 + 48);
      v16 = v10;
      v18[1] = v11;
      v17 = *(a1 + 32);
      dispatch_async(WeakRetained[4], v15);

      objc_destroyWeak(v18);
    }

    else
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v20 = "MapsSuggestionsRoutine.mm";
        v21 = 1026;
        *v22 = 1360;
        v22[2] = 2082;
        *&v22[3] = "[MapsSuggestionsRoutine readMeCardWithMinVisits:maxAge:handler:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelf went away in %{public}s", buf, 0x1Cu);
      }
    }
  }
}

void __65__MapsSuggestionsRoutine_readMeCardWithMinVisits_maxAge_handler___block_invoke_337(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    group = dispatch_group_create();
    v2 = [*(a1 + 32) count];
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
    v3 = GEOFindOrCreateLog();
    v27 = a1;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "ASYNC FAILURE INVESTIGATION: Starting to loop over shortcuts", buf, 2u);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = *(a1 + 32);
    v4 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v4)
    {
      v6 = *v32;
      *&v5 = 138412546;
      v22 = v5;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v32 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v31 + 1) + 8 * i);
          v9 = [v8 visits];
          v10 = [v9 count];

          if (v10 >= *(v27 + 56))
          {
            v14 = [MapsSuggestionsShortcut alloc];
            v15 = shortcutTypeForRTLOIType([v8 type]);
            v16 = [v8 identifier];
            v17 = [v16 UUIDString];
            v18 = [v8 preferredName];
            v13 = [(MapsSuggestionsShortcut *)v14 initWithType:v15 identifier:v17 geoMapItem:0 customName:v18];

            v19 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v37 = v13;
              _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_DEBUG, "ASYNC FAILURE INVESTIGATION: Shortcut %@ created", buf, 0xCu);
            }

            [v23 addObject:v13];
            [(MapsSuggestionsRoutine *)WeakRetained _addMapItemToShortcut:v13 fromLOI:v8 group:group];
            v11 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v37 = v13;
              _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "ASYNC FAILURE INVESTIGATION: Added MapItem to shortcut: %@", buf, 0xCu);
            }
          }

          else
          {
            v11 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v12 = [v8 identifier];
              *buf = v22;
              v37 = v12;
              v38 = 1024;
              v39 = v10;
              _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "Skipping %@: only %u visits", buf, 0x12u);
            }

            v13 = v11;
          }
        }

        v4 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v4);
    }

    v20 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__MapsSuggestionsRoutine_readMeCardWithMinVisits_maxAge_handler___block_invoke_338;
    block[3] = &unk_1E81F5528;
    v29 = v23;
    v30 = *(v27 + 40);
    v21 = v23;
    dispatch_group_notify(group, v20, block);
  }

  else
  {
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v37 = "MapsSuggestionsRoutine.mm";
      v38 = 1026;
      v39 = 1363;
      v40 = 2082;
      v41 = "[MapsSuggestionsRoutine readMeCardWithMinVisits:maxAge:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    group = v21;
  }
}

void __65__MapsSuggestionsRoutine_readMeCardWithMinVisits_maxAge_handler___block_invoke_338(uint64_t a1)
{
  v2 = [[MapsSuggestionsMeCard alloc] initWithShortcuts:*(a1 + 32) hasCorrected:1 hasGeocoded:1];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "ASYNC FAILURE INVESTIGATION: Calling Handler", v4, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void __65__MapsSuggestionsRoutine_readMeCardWithMinVisits_maxAge_handler___block_invoke_340(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "ASYNC FAILURE INVESTIGATION: Beginning to fetch locations of interest", &v5, 2u);
    }

    [WeakRetained[1] fetchLocationsOfInterestVisitedSinceDate:*(a1 + 32) withHandler:*(a1 + 40)];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "ASYNC FAILURE INVESTIGATION: Just fetched locations of interest", &v5, 2u);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsRoutine.mm";
      v7 = 1026;
      v8 = 1398;
      v9 = 2082;
      v10 = "[MapsSuggestionsRoutine readMeCardWithMinVisits:maxAge:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)updateFixedLOIs
{
  objc_initWeak(&location, self);
  if (+[MapsSuggestionsSiri isEnabled])
  {
    v3 = self->_loiVisits;
    connector = self->_connector;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __41__MapsSuggestionsRoutine_updateFixedLOIs__block_invoke;
    v16[3] = &unk_1E81F78B0;
    objc_copyWeak(&v18, &location);
    v5 = v3;
    v17 = v5;
    [(MapsSuggestionsRoutineConnector *)connector fetchLocationsOfInterestOfType:0 withHandler:v16];
    v6 = self->_connector;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__MapsSuggestionsRoutine_updateFixedLOIs__block_invoke_2;
    v13[3] = &unk_1E81F78B0;
    objc_copyWeak(&v15, &location);
    v7 = v5;
    v14 = v7;
    [(MapsSuggestionsRoutineConnector *)v6 fetchLocationsOfInterestOfType:1 withHandler:v13];
    v8 = self->_connector;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__MapsSuggestionsRoutine_updateFixedLOIs__block_invoke_2_344;
    v10[3] = &unk_1E81F78B0;
    objc_copyWeak(&v12, &location);
    v9 = v7;
    v11 = v9;
    [(MapsSuggestionsRoutineConnector *)v8 fetchLocationsOfInterestOfType:2 withHandler:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v15);

    objc_destroyWeak(&v18);
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "User turned off Siri Suggestions for maps. Not attempting to update LOIs", buf, 2u);
    }
  }

  objc_destroyWeak(&location);
}

void __41__MapsSuggestionsRoutine_updateFixedLOIs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v6;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "Error getting Home LOIs: %@", buf, 0xCu);
      }
    }

    else
    {
      v10 = *(WeakRetained + 7);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__MapsSuggestionsRoutine_updateFixedLOIs__block_invoke_341;
      block[3] = &unk_1E81F5A10;
      v13 = v10;
      v14 = v5;
      v15 = *(a1 + 32);
      v11 = v8[4];
      v9 = v10;
      dispatch_async(v11, block);
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "MapsSuggestionsRoutine.mm";
      v18 = 1026;
      v19 = 1420;
      v20 = 2082;
      v21 = "[MapsSuggestionsRoutine updateFixedLOIs]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __41__MapsSuggestionsRoutine_updateFixedLOIs__block_invoke_341(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) removeAllObjects];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 40);
  v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v2)
  {
    v3 = *v22;
    do
    {
      v4 = 0;
      do
      {
        if (*v22 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v21 + 1) + 8 * v4);
        v6 = *(a1 + 32);
        v7 = objc_alloc(MEMORY[0x1E6985C40]);
        v8 = [v5 location];
        [v8 latitude];
        v10 = v9;
        v11 = [v5 location];
        [v11 longitude];
        v13 = [v7 initWithLatitude:v10 longitude:v12];
        v14 = [v5 identifier];
        [v6 setObject:v13 forKey:v14];

        v15 = *(a1 + 48);
        v16 = MEMORY[0x1E696AD98];
        v17 = [v5 visits];
        v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
        v19 = [v5 identifier];
        [v15 setObject:v18 forKey:v19];

        if (MapsSuggestionsSawHomeOrWorkOnThisDevice::s_onceToken != -1)
        {
          [MapsSuggestionsRoutine _convertType:source:];
        }

        ++v4;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v2);
  }
}

void __41__MapsSuggestionsRoutine_updateFixedLOIs__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v6;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "Error getting Work LOIs: %@", buf, 0xCu);
      }
    }

    else
    {
      v10 = *(WeakRetained + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__MapsSuggestionsRoutine_updateFixedLOIs__block_invoke_343;
      block[3] = &unk_1E81F5A10;
      v13 = v10;
      v14 = v5;
      v15 = *(a1 + 32);
      v11 = v8[4];
      v9 = v10;
      dispatch_async(v11, block);
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "MapsSuggestionsRoutine.mm";
      v18 = 1026;
      v19 = 1440;
      v20 = 2082;
      v21 = "[MapsSuggestionsRoutine updateFixedLOIs]_block_invoke_2";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __41__MapsSuggestionsRoutine_updateFixedLOIs__block_invoke_343(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) removeAllObjects];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 40);
  v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v2)
  {
    v3 = *v22;
    do
    {
      v4 = 0;
      do
      {
        if (*v22 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v21 + 1) + 8 * v4);
        v6 = *(a1 + 32);
        v7 = objc_alloc(MEMORY[0x1E6985C40]);
        v8 = [v5 location];
        [v8 latitude];
        v10 = v9;
        v11 = [v5 location];
        [v11 longitude];
        v13 = [v7 initWithLatitude:v10 longitude:v12];
        v14 = [v5 identifier];
        [v6 setObject:v13 forKey:v14];

        v15 = *(a1 + 48);
        v16 = MEMORY[0x1E696AD98];
        v17 = [v5 visits];
        v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
        v19 = [v5 identifier];
        [v15 setObject:v18 forKey:v19];

        if (MapsSuggestionsSawHomeOrWorkOnThisDevice::s_onceToken != -1)
        {
          [MapsSuggestionsRoutine _convertType:source:];
        }

        ++v4;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v2);
  }
}

void __41__MapsSuggestionsRoutine_updateFixedLOIs__block_invoke_2_344(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v6;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "Error getting School LOIs: %@", buf, 0xCu);
      }
    }

    else
    {
      v10 = *(WeakRetained + 9);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__MapsSuggestionsRoutine_updateFixedLOIs__block_invoke_345;
      block[3] = &unk_1E81F5A10;
      v13 = v10;
      v14 = v5;
      v15 = *(a1 + 32);
      v11 = v8[4];
      v9 = v10;
      dispatch_async(v11, block);
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "MapsSuggestionsRoutine.mm";
      v18 = 1026;
      v19 = 1460;
      v20 = 2082;
      v21 = "[MapsSuggestionsRoutine updateFixedLOIs]_block_invoke_2";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __41__MapsSuggestionsRoutine_updateFixedLOIs__block_invoke_345(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) removeAllObjects];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 40);
  v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v2)
  {
    v3 = *v22;
    do
    {
      v4 = 0;
      do
      {
        if (*v22 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v21 + 1) + 8 * v4);
        v6 = *(a1 + 32);
        v7 = objc_alloc(MEMORY[0x1E6985C40]);
        v8 = [v5 location];
        [v8 latitude];
        v10 = v9;
        v11 = [v5 location];
        [v11 longitude];
        v13 = [v7 initWithLatitude:v10 longitude:v12];
        v14 = [v5 identifier];
        [v6 setObject:v13 forKey:v14];

        v15 = *(a1 + 48);
        v16 = MEMORY[0x1E696AD98];
        v17 = [v5 visits];
        v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
        v19 = [v5 identifier];
        [v15 setObject:v18 forKey:v19];

        if (MapsSuggestionsSawHomeOrWorkOnThisDevice::s_onceToken != -1)
        {
          [MapsSuggestionsRoutine _convertType:source:];
        }

        ++v4;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v2);
  }
}

- (unint64_t)countHomeLOIs
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__MapsSuggestionsRoutine_countHomeLOIs__block_invoke;
  v3[3] = &unk_1E81F78D8;
  v3[4] = self;
  return MSg::Queue::sync<unsigned long>(&self->_queue, v3);
}

- (unint64_t)countWorkLOIs
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__MapsSuggestionsRoutine_countWorkLOIs__block_invoke;
  v3[3] = &unk_1E81F78D8;
  v3[4] = self;
  return MSg::Queue::sync<unsigned long>(&self->_queue, v3);
}

- (unint64_t)countSchoolLOIs
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__MapsSuggestionsRoutine_countSchoolLOIs__block_invoke;
  v3[3] = &unk_1E81F78D8;
  v3[4] = self;
  return MSg::Queue::sync<unsigned long>(&self->_queue, v3);
}

- (char)fetchLastVisitAtLocation:(id)a3 handler:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      objc_initWeak(location, self);
      connector = self->_connector;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __59__MapsSuggestionsRoutine_fetchLastVisitAtLocation_handler___block_invoke_2;
      v13[3] = &unk_1E81F7900;
      objc_copyWeak(&v16, location);
      v14 = v6;
      v15 = v8;
      [(MapsSuggestionsRoutineConnector *)connector fetchLocationOfInterestAtLocation:v14 withHandler:v13];

      objc_destroyWeak(&v16);
      objc_destroyWeak(location);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__MapsSuggestionsRoutine_fetchLastVisitAtLocation_handler___block_invoke;
      block[3] = &unk_1E81F56F8;
      v18 = v7;
      dispatch_async(self->_queue._innerQueue, block);
    }

    v11 = 1;
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v20 = 1024;
      v21 = 1502;
      v22 = 2082;
      v23 = "[MapsSuggestionsRoutine fetchLastVisitAtLocation:handler:]";
      v24 = 2082;
      v25 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", location, 0x26u);
    }

    v11 = 0;
  }

  return v11;
}

void __59__MapsSuggestionsRoutine_fetchLastVisitAtLocation_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-12 reason:@"The location was nil We have not visited nil."];;
  (*(v1 + 16))(v1, 0, 0);
}

void __59__MapsSuggestionsRoutine_fetchLastVisitAtLocation_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error getting LOI at %@: %@", *(a1 + 32), v6];
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v8;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__MapsSuggestionsRoutine_fetchLastVisitAtLocation_handler___block_invoke_355;
      block[3] = &unk_1E81F62F8;
      v10 = *(a1 + 40);
      v21 = v8;
      v22 = v10;
      v11 = WeakRetained[4];
      v12 = v8;
      dispatch_async(v11, block);

      v13 = v22;
    }

    else
    {
      v12 = [v5 visits];
      if ([v12 count])
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __59__MapsSuggestionsRoutine_fetchLastVisitAtLocation_handler___block_invoke_3;
        v15[3] = &unk_1E81F62F8;
        v17 = *(a1 + 40);
        v16 = v12;
        dispatch_async(WeakRetained[4], v15);

        v14 = &v17;
      }

      else
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __59__MapsSuggestionsRoutine_fetchLastVisitAtLocation_handler___block_invoke_2_356;
        v18[3] = &unk_1E81F56F8;
        v14 = &v19;
        v19 = *(a1 + 40);
        dispatch_async(WeakRetained[4], v18);
      }

      v13 = *v14;
    }
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "MapsSuggestionsRoutine.mm";
      v25 = 1026;
      v26 = 1515;
      v27 = 2082;
      v28 = "[MapsSuggestionsRoutine fetchLastVisitAtLocation:handler:]_block_invoke_2";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v12 = v13;
  }
}

void __59__MapsSuggestionsRoutine_fetchLastVisitAtLocation_handler___block_invoke_355(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-15 reason:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, 0);
}

void __59__MapsSuggestionsRoutine_fetchLastVisitAtLocation_handler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) lastObject];
  v3 = [v6 entryDate];
  v4 = [*(a1 + 32) lastObject];
  v5 = [v4 exitDate];
  (*(v2 + 16))(v2, v3, v5, 0);
}

- (void)_cacheEntryExitDatesFromVisit:(void *)a3 forMapItemIdentifier:(void *)a4 name:
{
  v30[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    BOOL = GEOConfigGetBOOL();
    v11 = *(a1 + 88);
    if ((BOOL & 1) == 0)
    {
      *(a1 + 88) = 0;

      v23 = *(a1 + 96);
      *(a1 + 96) = 0;

      GEOFindOrCreateLog();
      objc_claimAutoreleasedReturnValue();
      [MapsSuggestionsRoutine _cacheEntryExitDatesFromVisit:forMapItemIdentifier:name:];
      v17 = *v25;
LABEL_17:

      goto LABEL_18;
    }

    if (!v11)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = *(a1 + 88);
      *(a1 + 88) = v12;
    }

    if (!*(a1 + 96))
    {
      v14 = [MEMORY[0x1E695DF00] now];
      v15 = *(a1 + 96);
      *(a1 + 96) = v14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v7;
      v17 = [v16 entry];
      v18 = [v16 exit];

      if (v17 && v18)
      {
        v30[0] = v17;
        v30[1] = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
        [*(a1 + 88) setObject:v19 forKeyedSubscript:v8];

        v20 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = [*(a1 + 88) objectForKeyedSubscript:v8];
          v22 = [v8 description];
          *v25 = 138412802;
          *&v25[4] = v21;
          v26 = 2112;
          v27 = v9;
          v28 = 2112;
          v29 = v22;
          _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "Caching dates %@ for %@, %@", v25, 0x20u);
        }

        goto LABEL_16;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v24 = [MEMORY[0x1E695DFB0] null];
    [*(a1 + 88) setObject:v24 forKeyedSubscript:v8];

LABEL_16:
    goto LABEL_17;
  }

LABEL_18:
}

- (uint64_t)_fetchStoredVisitsWithOptions:(void *)a3 handler:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v5)
    {
      if (v6)
      {
        objc_initWeak(&location, a1);
        v8 = *(a1 + 8);
        v9 = [v5 rtStoredVisitFetchOptions];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __64__MapsSuggestionsRoutine__fetchStoredVisitsWithOptions_handler___block_invoke;
        v13[3] = &unk_1E81F62D0;
        objc_copyWeak(&v15, &location);
        v14 = v7;
        [v8 fetchStoredVisitsWithOptions:v9 handler:v13];

        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
        a1 = 1;
        goto LABEL_5;
      }

      v12 = GEOFindOrCreateLog();
      [MapsSuggestionsRoutine _fetchStoredVisitsWithOptions:v12 handler:?];
    }

    else
    {
      v11 = GEOFindOrCreateLog();
      [MapsSuggestionsRoutine _fetchStoredVisitsWithOptions:v11 handler:?];
    }

    a1 = 0;
  }

LABEL_5:

  return a1;
}

void __64__MapsSuggestionsRoutine__fetchStoredVisitsWithOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v23 = "MapsSuggestionsRoutine.mm";
      v24 = 1026;
      v25 = 1645;
      v26 = 2082;
      v27 = "[MapsSuggestionsRoutine _fetchStoredVisitsWithOptions:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

LABEL_9:
    goto LABEL_23;
  }

  if (!v5)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
      *buf = 138412290;
      v23 = v10;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "Got %@ visits from CoreRoutine.", buf, 0xCu);
    }

    if (!v16 || ![v16 count])
    {
      (*(*(a1 + 32) + 16))();
      goto LABEL_23;
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v16;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [[MapsSuggestionsVisit alloc] initWithRTVisit:*(*(&v17 + 1) + 8 * i)];
          [v8 addObject:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    (*(*(a1 + 32) + 16))();
    goto LABEL_9;
  }

  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = v5;
    _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Error fetching stored visits for ratings request: %@", buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
LABEL_23:
}

- (char)fetchLastVisitAtMapItem:(id)a3 withinDistance:(double)a4 handler:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    if (!v8 || ([v8 _identifier], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      v17 = [v8 _identifier];

      if (!v17)
      {
        v18 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [v8 name];
          *v45 = 138412290;
          *&v45[4] = v19;
          _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "mapItemIdentifier is nil for %@", v45, 0xCu);
        }
      }

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __73__MapsSuggestionsRoutine_fetchLastVisitAtMapItem_withinDistance_handler___block_invoke;
      v39[3] = &unk_1E81F56F8;
      v40 = v9;
      dispatch_async(self->_queue._innerQueue, v39);

      goto LABEL_19;
    }

    if (GEOConfigGetBOOL())
    {
      GEOConfigGetDouble();
      v12 = v11;
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      *v45 = 0;
      *&v45[8] = v45;
      *&v45[16] = 0x3032000000;
      *&v45[24] = __Block_byref_object_copy__365;
      *&v45[32] = __Block_byref_object_dispose__366;
      v46 = 0;
      dispatch_assert_queue_not_V2(self->_queue._innerQueue);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__MapsSuggestionsRoutine_fetchLastVisitAtMapItem_withinDistance_handler___block_invoke_367;
      block[3] = &unk_1E81F7928;
      block[4] = self;
      v34 = v12;
      v13 = v8;
      v31 = v13;
      v32 = v45;
      v33 = &v35;
      dispatch_sync(self->_queue._innerQueue, block);
      if (*(v36 + 24) == 1)
      {
        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = [v13 name];
          v16 = *(*&v45[8] + 40);
          *buf = 138412546;
          v42 = v15;
          v43 = 2112;
          v44 = v16;
          _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Returning cached dates for the visit to %@ instead of querying Routine. %@", buf, 0x16u);
        }

        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __73__MapsSuggestionsRoutine_fetchLastVisitAtMapItem_withinDistance_handler___block_invoke_368;
        v27[3] = &unk_1E81F5E78;
        v29 = v45;
        v28 = v9;
        dispatch_async(self->_queue._innerQueue, v27);

        _Block_object_dispose(v45, 8);
        _Block_object_dispose(&v35, 8);
        goto LABEL_19;
      }

      _Block_object_dispose(v45, 8);
      _Block_object_dispose(&v35, 8);
    }

    objc_initWeak(v45, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __73__MapsSuggestionsRoutine_fetchLastVisitAtMapItem_withinDistance_handler___block_invoke_2;
    v23[3] = &unk_1E81F5BA0;
    objc_copyWeak(v26, v45);
    v24 = v8;
    v25 = v9;
    v26[1] = *&a4;
    dispatch_async(self->_queue._innerQueue, v23);

    objc_destroyWeak(v26);
    objc_destroyWeak(v45);
LABEL_19:
    v21 = 1;
    goto LABEL_20;
  }

  v20 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *v45 = 136446978;
    *&v45[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    *&v45[12] = 1024;
    *&v45[14] = 1678;
    *&v45[18] = 2082;
    *&v45[20] = "[MapsSuggestionsRoutine fetchLastVisitAtMapItem:withinDistance:handler:]";
    *&v45[28] = 2082;
    *&v45[30] = "nil == (handler)";
    _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", v45, 0x26u);
  }

  v21 = 0;
LABEL_20:

  return v21;
}

void __73__MapsSuggestionsRoutine_fetchLastVisitAtMapItem_withinDistance_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-12 reason:@"The mapItem was nil We have not visited nil."];;
  (*(v1 + 16))(v1, 0, 0);
}

void __73__MapsSuggestionsRoutine_fetchLastVisitAtMapItem_withinDistance_handler___block_invoke_367(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 96);
  if (v2 && MapsSuggestionsSecondsSince(v2) > *(a1 + 64))
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 64);
      v15 = 134217984;
      v16 = v4;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Resetting the cache. We do this every %g seconds", &v15, 0xCu);
    }

    [*(*(a1 + 32) + 88) removeAllObjects];
    v5 = *(*(a1 + 32) + 96);
    *(*(a1 + 32) + 96) = 0;
  }

  if (*(*(a1 + 32) + 96))
  {
    v6 = [*(a1 + 40) _identifier];
    if (v6)
    {
      v7 = *(*(a1 + 32) + 88);
      v8 = [*(a1 + 40) _identifier];
      v9 = [v7 objectForKeyedSubscript:v8];
      LOBYTE(v7) = v9 == 0;

      if ((v7 & 1) == 0)
      {
        v10 = *(*(a1 + 32) + 88);
        v11 = [*(a1 + 40) _identifier];
        v12 = [v10 objectForKeyedSubscript:v11];
        v13 = *(*(a1 + 48) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [*(*(*(a1 + 48) + 8) + 40) count] == 2)
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }
      }
    }
  }
}

void __73__MapsSuggestionsRoutine_fetchLastVisitAtMapItem_withinDistance_handler___block_invoke_368(uint64_t a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [*(*(*(a1 + 40) + 8) + 40) count] == 2 && (objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "objectAtIndexedSubscript:", 0), (v2 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v2, objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "objectAtIndexedSubscript:", 1), v3 = objc_claimAutoreleasedReturnValue(), v3, v7, v3))
  {
    v4 = *(a1 + 32);
    v8 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:0];
    v5 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:1];
    (*(v4 + 16))(v4, v8, v5, 0);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

void __73__MapsSuggestionsRoutine_fetchLastVisitAtMapItem_withinDistance_handler___block_invoke_2(uint64_t a1)
{
  v93 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v69 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v77 = 0;
    v78 = &v77;
    v79 = 0x3032000000;
    v80 = __Block_byref_object_copy__365;
    v81 = __Block_byref_object_dispose__366;
    v82 = 0;
    v75[0] = 0;
    v75[1] = v75;
    v75[2] = 0x3032000000;
    v75[3] = __Block_byref_object_copy__365;
    v75[4] = __Block_byref_object_dispose__366;
    v76 = 0;
    v4 = WeakRetained[13];
    if (!v4 || MapsSuggestionsSecondsSince(v4) > v3[14])
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(v3 + 14);
        *buf = 134217984;
        v90 = v6;
        _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Calling fetchStoredVisitsWithOptions again. We do this every %g seconds", buf, 0xCu);
      }

      v7 = dispatch_semaphore_create(0);
      v8 = MapsSuggestionsNow();
      v9 = v69[13];
      v69[13] = v8;

      GEOConfigGetDouble();
      v11 = v10;
      Integer = GEOConfigGetInteger();
      v13 = objc_alloc(MEMORY[0x1E696AB80]);
      v14 = MapsSuggestionsNowWithOffset(-v11);
      v15 = MapsSuggestionsNow();
      v16 = [v13 initWithStartDate:v14 endDate:v15];

      v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F4470FA8, &unk_1F4470FC0, 0}];
      v18 = [MapsSuggestionsStoredVisitFetchOptions alloc];
      v19 = [MEMORY[0x1E696AD98] numberWithInteger:Integer];
      v20 = [(MapsSuggestionsStoredVisitFetchOptions *)v18 initWithAscending:1 confidence:1 dateInterval:v16 labelVisit:1 limit:v19 sources:v17];

      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __73__MapsSuggestionsRoutine_fetchLastVisitAtMapItem_withinDistance_handler___block_invoke_369;
      v70[3] = &unk_1E81F7950;
      v21 = v7;
      v73 = &v77;
      v74 = v75;
      v71 = v21;
      v72 = v69;
      LODWORD(v17) = [(MapsSuggestionsRoutine *)v69 _fetchStoredVisitsWithOptions:v20 handler:v70];

      if (v17)
      {
        dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
      }

      v3 = v69;
    }

    v22 = *(v3 + 15);
    if (v78[5])
    {
      v3[15] = 0.0;

      v23 = objc_alloc(MEMORY[0x1E696AEC0]);
      v24 = [*(a1 + 32) name];
      v25 = [v23 initWithFormat:@"Error getting visits at %@, %@", v24, v78[5]];

      v26 = [MEMORY[0x1E695DFB0] null];
      v27 = [*(a1 + 32) _identifier];
      v28 = [*(a1 + 32) name];
      [(MapsSuggestionsRoutine *)v69 _cacheEntryExitDatesFromVisit:v26 forMapItemIdentifier:v27 name:v28];

      v29 = *(a1 + 40);
      v30 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-15 reason:v25];
      (*(v29 + 16))(v29, 0, 0, v30);
    }

    else
    {
      v32 = *(a1 + 56);
      v33 = *(a1 + 32);
      v34 = v22;
      v35 = v33;
      v68 = v34;
      if (v34)
      {
        v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v34, "count")}];
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v37 = v34;
        v38 = [v37 countByEnumeratingWithState:&v83 objects:buf count:16];
        if (v38)
        {
          v39 = *v84;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v84 != v39)
              {
                objc_enumerationMutation(v37);
              }

              v41 = *(*(&v83 + 1) + 8 * i);
              v42 = CLLocationCoordinate2DFromGEOLocationCoordinate2D([v35 coordinate]);
              v44 = v43;
              v45 = [v41 location];
              [v45 latitude];
              v47 = v46;
              v48 = [v41 location];
              [v48 longitude];
              v50 = CLLocationCoordinate2DMake(v47, v49);

              MapsSuggestionsDistanceBetweenCoordinates(v42, v44, v50.latitude, v50.longitude);
              if (v51 <= v32)
              {
                v52 = [v41 placeInference];
                v53 = [v52 mapItem];
                v54 = v53 == 0;

                if (!v54)
                {
                  [v36 addObject:v41];
                }
              }
            }

            v38 = [v37 countByEnumeratingWithState:&v83 objects:buf count:16];
          }

          while (v38);
        }

        if ([v36 count])
        {
          v55 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSObject count](v36, "count")}];
            *v87 = 138412290;
            v88 = v56;
            _os_log_impl(&dword_1C5126000, v55, OS_LOG_TYPE_DEBUG, "RefinedVisits now contains %@ places", v87, 0xCu);
          }
        }

        v25 = [v36 copy];
      }

      else
      {
        v36 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5126000, v36, OS_LOG_TYPE_ERROR, "_allVisits are nil", buf, 2u);
        }

        v25 = 0;
      }

      v30 = _findMatchingVisit(*(a1 + 32), v25);
      if (v30)
      {
        v57 = [*(a1 + 32) _identifier];
        v58 = [*(a1 + 32) name];
        [(MapsSuggestionsRoutine *)v69 _cacheEntryExitDatesFromVisit:v30 forMapItemIdentifier:v57 name:v58];

        v59 = *(a1 + 40);
        v60 = [v30 entry];
        v61 = [v30 exit];
        (*(v59 + 16))(v59, v60, v61, 0);
      }

      else
      {
        v62 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          v63 = [*(a1 + 32) name];
          v64 = *(a1 + 56);
          *buf = 138412546;
          v90 = v63;
          v91 = 2048;
          *v92 = v64;
          _os_log_impl(&dword_1C5126000, v62, OS_LOG_TYPE_DEBUG, "No matching LOI visit found in CR for %@ within a distance of %f", buf, 0x16u);
        }

        v65 = [MEMORY[0x1E695DFB0] null];
        v66 = [*(a1 + 32) _identifier];
        v67 = [*(a1 + 32) name];
        [(MapsSuggestionsRoutine *)v69 _cacheEntryExitDatesFromVisit:v65 forMapItemIdentifier:v66 name:v67];

        (*(*(a1 + 40) + 16))();
      }
    }

    _Block_object_dispose(v75, 8);
    _Block_object_dispose(&v77, 8);
  }

  else
  {
    v31 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v90 = "MapsSuggestionsRoutine.mm";
      v91 = 1026;
      *v92 = 1738;
      *&v92[4] = 2082;
      *&v92[6] = "[MapsSuggestionsRoutine fetchLastVisitAtMapItem:withinDistance:handler:]_block_invoke_2";
      _os_log_impl(&dword_1C5126000, v31, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __73__MapsSuggestionsRoutine_fetchLastVisitAtMapItem_withinDistance_handler___block_invoke_369(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "Error fetching stored visits for ratings request: %@", &v11, 0xCu);
    }

    dispatch_semaphore_signal(*(a1 + 32));
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count")}];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "Got %@ visits from CoreRoutine. About to Signal the Semaphore.", &v11, 0xCu);
    }

    objc_storeStrong((*(a1 + 40) + 120), a2);
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (char)fetchMostRecentVisitWithinDistance:(double)a3 ofMapItem:(id)a4 handler:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    if (v8)
    {
      [v8 coordinate];
      v13 = CLLocationFromGEOLocationCoordinate2D(v11, v12);
      objc_initWeak(location, self);
      connector = self->_connector;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __79__MapsSuggestionsRoutine_fetchMostRecentVisitWithinDistance_ofMapItem_handler___block_invoke_2;
      v19[3] = &unk_1E81F7978;
      objc_copyWeak(&v22, location);
      v20 = v13;
      v21 = v10;
      v15 = v13;
      [(MapsSuggestionsRoutineConnector *)connector fetchLocationsOfInterestWithinDistance:v15 ofLocation:v19 withHandler:a3];

      objc_destroyWeak(&v22);
      objc_destroyWeak(location);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __79__MapsSuggestionsRoutine_fetchMostRecentVisitWithinDistance_ofMapItem_handler___block_invoke;
      block[3] = &unk_1E81F56F8;
      v24 = v9;
      dispatch_async(self->_queue._innerQueue, block);
    }

    v17 = 1;
  }

  else
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v26 = 1024;
      v27 = 1801;
      v28 = 2082;
      v29 = "[MapsSuggestionsRoutine fetchMostRecentVisitWithinDistance:ofMapItem:handler:]";
      v30 = 2082;
      v31 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", location, 0x26u);
    }

    v17 = 0;
  }

  return v17;
}

void __79__MapsSuggestionsRoutine_fetchMostRecentVisitWithinDistance_ofMapItem_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-12 reason:@"The mapItem was nil We have not visited nil."];;
  (*(v1 + 16))(v1, 0, 0);
}

void __79__MapsSuggestionsRoutine_fetchMostRecentVisitWithinDistance_ofMapItem_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v33 = a2;
  v5 = a3;
  v34 = v5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error getting LOIs at %@: %@", *(a1 + 32), v5];
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v53 = v6;
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __79__MapsSuggestionsRoutine_fetchMostRecentVisitWithinDistance_ofMapItem_handler___block_invoke_376;
      block[3] = &unk_1E81F62F8;
      v8 = *(a1 + 40);
      v50 = v6;
      v51 = v8;
      v9 = WeakRetained[4];
      v10 = v6;
      dispatch_async(v9, block);

      v11 = v51;
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = v33;
      v12 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
      v32 = a1;
      if (v12)
      {
        v37 = 0;
        v10 = 0;
        v13 = *v46;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v46 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v45 + 1) + 8 * i);
            v16 = [v15 visits];
            v17 = [v16 count] == 0;

            if (!v17)
            {
              v18 = [v15 visits];
              v19 = [v18 lastObject];
              v20 = [v19 entryDate];

              v21 = [v15 visits];
              v22 = [v21 lastObject];
              v23 = [v22 exitDate];

              v24 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                v25 = [v15 identifier];
                *buf = 138412802;
                v53 = v25;
                v54 = 2112;
                *v55 = v20;
                *&v55[8] = 2112;
                *&v55[10] = v23;
                _os_log_impl(&dword_1C5126000, v24, OS_LOG_TYPE_DEBUG, "%@ : {entry:%@} {exit:%@}", buf, 0x20u);
              }

              if (v20)
              {
                if (!v23)
                {
                  v42[0] = MEMORY[0x1E69E9820];
                  v42[1] = 3221225472;
                  v42[2] = __79__MapsSuggestionsRoutine_fetchMostRecentVisitWithinDistance_ofMapItem_handler___block_invoke_377;
                  v42[3] = &unk_1E81F62F8;
                  v28 = *(v32 + 40);
                  v43 = v20;
                  v44 = v28;
                  v29 = WeakRetained[4];
                  v30 = v20;
                  dispatch_async(v29, v42);

                  v31 = obj;
                  goto LABEL_30;
                }

                if (v10 | v37)
                {
                  if ([v23 compare:?] == 1)
                  {
                    v26 = v20;

                    v27 = v23;
                    v37 = v27;
                    v10 = v26;
                  }
                }

                else
                {
                  v10 = v20;
                  v37 = v23;
                }
              }
            }
          }

          v12 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v37 = 0;
        v10 = 0;
      }

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __79__MapsSuggestionsRoutine_fetchMostRecentVisitWithinDistance_ofMapItem_handler___block_invoke_2_378;
      v38[3] = &unk_1E81F62A8;
      v41 = *(v32 + 40);
      v10 = v10;
      v39 = v10;
      v37 = v37;
      v40 = v37;
      dispatch_async(WeakRetained[4], v38);

      v31 = v41;
LABEL_30:

      v11 = v37;
    }
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v53 = "MapsSuggestionsRoutine.mm";
      v54 = 1026;
      *v55 = 1815;
      *&v55[4] = 2082;
      *&v55[6] = "[MapsSuggestionsRoutine fetchMostRecentVisitWithinDistance:ofMapItem:handler:]_block_invoke_2";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v10 = v11;
  }
}

void __79__MapsSuggestionsRoutine_fetchMostRecentVisitWithinDistance_ofMapItem_handler___block_invoke_376(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-15 reason:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, 0);
}

- (char)fetchAutomaticVehicleEventDetectionSupportedWithHandler:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_initWeak(location, self);
    connector = self->_connector;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__MapsSuggestionsRoutine_fetchAutomaticVehicleEventDetectionSupportedWithHandler___block_invoke;
    v9[3] = &unk_1E81F79F0;
    objc_copyWeak(&v11, location);
    v10 = v4;
    [(MapsSuggestionsRoutineConnector *)connector fetchAutomaticVehicleEventDetectionSupportedWithHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
    v6 = 1;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v13 = 1024;
      v14 = 1876;
      v15 = 2082;
      v16 = "[MapsSuggestionsRoutine fetchAutomaticVehicleEventDetectionSupportedWithHandler:]";
      v17 = 2082;
      v18 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", location, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

void __82__MapsSuggestionsRoutine_fetchAutomaticVehicleEventDetectionSupportedWithHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__MapsSuggestionsRoutine_fetchAutomaticVehicleEventDetectionSupportedWithHandler___block_invoke_3;
    block[3] = &unk_1E81F79C8;
    v7 = &v11;
    v11 = v5;
    v8 = &v12;
    v12 = *(a1 + 32);
    v13 = a2;
    dispatch_async(WeakRetained[4], block);
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v26 = "MapsSuggestionsRoutine.mm";
      v27 = 1026;
      v28 = 1884;
      v29 = 2082;
      v30 = "[MapsSuggestionsRoutine fetchAutomaticVehicleEventDetectionSupportedWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __82__MapsSuggestionsRoutine_fetchAutomaticVehicleEventDetectionSupportedWithHandler___block_invoke_379;
    v21 = &unk_1E81F79A0;
    v23 = *(a1 + 32);
    v24 = a2;
    v22 = v5;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__MapsSuggestionsRoutine_fetchAutomaticVehicleEventDetectionSupportedWithHandler___block_invoke_2;
    v14[3] = &unk_1E81F79A0;
    v16 = *(a1 + 32);
    v17 = a2;
    v15 = v22;
    __82__MapsSuggestionsRoutine_fetchAutomaticVehicleEventDetectionSupportedWithHandler___block_invoke_2(v14);

    v7 = &v23;
    v8 = &v22;
  }
}

void __82__MapsSuggestionsRoutine_fetchAutomaticVehicleEventDetectionSupportedWithHandler___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error fetching automatic vehicle event detection supported with error: %@", *(a1 + 32)];
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v2;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (void)addParkedCarObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__MapsSuggestionsRoutine_addParkedCarObserver___block_invoke;
  aBlock[3] = &unk_1E81F7A38;
  aBlock[4] = self;
  objc_copyWeak(&v12, &location);
  v5 = _Block_copy(aBlock);
  parkedCarObservers = self->_parkedCarObservers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__MapsSuggestionsRoutine_addParkedCarObserver___block_invoke_2;
  v8[3] = &unk_1E81F7A60;
  objc_copyWeak(&v10, &location);
  v9 = v5;
  v7 = v5;
  [(MapsSuggestionsObservers *)parkedCarObservers registerObserver:v4 handler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __47__MapsSuggestionsRoutine_addParkedCarObserver___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32) && MapsSuggestionsIsLocationAllowedForBundleID(*MEMORY[0x1E69A1A78]) && +[MapsSuggestionsSiri isEnabled])
  {
    if (v6)
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v11 = 138412290;
        *&v11[4] = v6;
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Error on VehicleEvent update: %@", v11, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained[6] callBlock:&__block_literal_global_387_0];
    }

    else
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v11 = 136446722;
        *&v11[4] = "MapsSuggestionsRoutine.mm";
        v12 = 1026;
        v13 = 1914;
        v14 = 2082;
        v15 = "[MapsSuggestionsRoutine addParkedCarObserver:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", v11, 0x1Cu);
      }
    }
  }

  else
  {
    GEOFindOrCreateLog();
    objc_claimAutoreleasedReturnValue();
    __47__MapsSuggestionsRoutine_addParkedCarObserver___block_invoke_cold_1();
    v9 = *v11;
  }
}

void __47__MapsSuggestionsRoutine_addParkedCarObserver___block_invoke_2(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v6) = 0;
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "First ParkedCarObserver. Start monitoring Routine.", &v6, 2u);
      }

      [WeakRetained[1] startMonitoringVehicleEventsWithHandler:*(a1 + 32)];
    }

    else
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 136446722;
        v7 = "MapsSuggestionsRoutine.mm";
        v8 = 1026;
        v9 = 1923;
        v10 = 2082;
        v11 = "[MapsSuggestionsRoutine addParkedCarObserver:]_block_invoke_2";
        _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
      }
    }
  }
}

- (void)removeParkedCarObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  parkedCarObservers = self->_parkedCarObservers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__MapsSuggestionsRoutine_removeParkedCarObserver___block_invoke;
  v6[3] = &unk_1E81F55C8;
  objc_copyWeak(&v7, &location);
  [(MapsSuggestionsObservers *)parkedCarObservers unregisterObserver:v4 handler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __50__MapsSuggestionsRoutine_removeParkedCarObserver___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v5) = 0;
        _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Last ParkedCarObserver. Stop monitoring Routine.", &v5, 2u);
      }

      [WeakRetained[1] stopMonitoringVehicleEvents];
    }

    else
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136446722;
        v6 = "MapsSuggestionsRoutine.mm";
        v7 = 1026;
        v8 = 1936;
        v9 = 2082;
        v10 = "[MapsSuggestionsRoutine removeParkedCarObserver:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
      }
    }
  }
}

- (void)removeParkedCarsAllowingFeature:(BOOL)a3 handler:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    [(MapsSuggestionsRoutineConnector *)self->_connector clearAllVehicleEventsWithHandler:v6];
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v7 = getMCProfileConnectionClass(void)::softClass;
    v14 = getMCProfileConnectionClass(void)::softClass;
    if (!getMCProfileConnectionClass(void)::softClass)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = ___ZL27getMCProfileConnectionClassv_block_invoke;
      v10[3] = &unk_1E81F7C88;
      v10[4] = &v11;
      ___ZL27getMCProfileConnectionClassv_block_invoke(v10);
      v7 = v12[3];
    }

    v8 = v7;
    _Block_object_dispose(&v11, 8);
    v9 = [v7 sharedConnection];
    [v9 setFindMyCarAllowed:0];

    v6[2](v6);
  }
}

- (char)touristBitForLocation:(id)a3 handler:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v19 = 1024;
      v20 = 1962;
      v21 = 2082;
      v22 = "[MapsSuggestionsRoutine touristBitForLocation:handler:]";
      v23 = 2082;
      v24 = "nil == (handler)";
      v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler";
LABEL_9:
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x26u);
    }

LABEL_10:
    v9 = 0;
    goto LABEL_14;
  }

  if (!v6)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v19 = 1024;
      v20 = 1963;
      v21 = 2082;
      v22 = "[MapsSuggestionsRoutine touristBitForLocation:handler:]";
      v23 = 2082;
      v24 = "nil == (location)";
      v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (+[MapsSuggestionsSiri isEnabled])
  {
    connector = self->_connector;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__MapsSuggestionsRoutine_touristBitForLocation_handler___block_invoke;
    v15[3] = &unk_1E81F7A88;
    v16 = v7;
    [(MapsSuggestionsRoutineConnector *)connector fetchRoutineModeFromLocation:v6 withHandler:v15];
    v9 = 1;
    v10 = v16;
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "User turned off Siri Suggestions for maps. Not attempting to get tourist bit", buf, 2u);
    }

    v10 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-13 reason:@"User turned off Siri Suggestions for Maps. We cannot go to CoreRoutine"];
    v13 = MapsSuggestionsConfidenceDontKnow();
    (*(v7 + 2))(v7, v10, v13);
    v9 = 1;
  }

LABEL_14:

  return v9;
}

void __56__MapsSuggestionsRoutine_touristBitForLocation_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (a2 == 2)
    {
      v5.n128_f64[0] = MapsSuggestionsConfidenceDefinitelyTrue();
    }

    else
    {
      v5.n128_u64[0] = 0;
      if (a2 == 1)
      {
        v5.n128_f64[0] = MapsSuggestionsConfidenceDefinitelyFalse();
      }
    }
  }

  else
  {
    v5.n128_f64[0] = MapsSuggestionsConfidenceDontKnow();
  }

  (*(*(a1 + 32) + 16))(v5);
}

void __44__MapsSuggestionsRoutine__msgLOIsForRTLOIs___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) setMapItem:v3];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 name];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Using mapItem from MapsSync: %@", &v6, 0xCu);
  }

  [*(a1 + 40) addObject:*(a1 + 32)];
  dispatch_group_leave(*(a1 + 48));
}

void __44__MapsSuggestionsRoutine__msgLOIsForRTLOIs___block_invoke_394(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "returnedError: %@", &v5, 0xCu);
    }
  }

  else
  {
    [*(a1 + 40) addObject:*(a1 + 48)];
  }

  dispatch_group_leave(*(a1 + 32));
}

- (char)fetchLOIsOfType:(int64_t)a3 handler:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [(MapsSuggestionsRoutine *)self uniqueName];
      *buf = 138412546;
      v20 = v8;
      v21 = 2080;
      *v22 = "fetchLOIsOfType";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v9 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "fetchLOIsOfType", "", buf, 2u);
    }

    connector = self->_connector;
    v11 = rtLOITypeForMSgLOIType(a3);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__MapsSuggestionsRoutine_fetchLOIsOfType_handler___block_invoke;
    v15[3] = &unk_1E81F62D0;
    objc_copyWeak(&v17, &location);
    v16 = v6;
    [(MapsSuggestionsRoutineConnector *)connector fetchLocationsOfInterestOfType:v11 withHandler:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    v12 = 1;
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v21 = 1024;
      *v22 = 2041;
      *&v22[4] = 2082;
      *&v22[6] = "[MapsSuggestionsRoutine fetchLOIsOfType:handler:]";
      v23 = 2082;
      v24 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    v12 = 0;
  }

  return v12;
}

void __50__MapsSuggestionsRoutine_fetchLOIsOfType_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *&v21[13] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!v6)
  {
    if (WeakRetained)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__MapsSuggestionsRoutine_fetchLOIsOfType_handler___block_invoke_396;
      block[3] = &unk_1E81F5B00;
      objc_copyWeak(&v17, (a1 + 40));
      v15 = v5;
      v16 = *(a1 + 32);
      dispatch_async(v8[4], block);

      objc_destroyWeak(&v17);
      goto LABEL_18;
    }

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "MapsSuggestionsRoutine.mm";
      v20 = 1026;
      *v21 = 2056;
      v21[2] = 2082;
      *&v21[3] = "[MapsSuggestionsRoutine fetchLOIsOfType:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (!WeakRetained)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "MapsSuggestionsRoutine.mm";
      v20 = 1026;
      *v21 = 2049;
      v21[2] = 2082;
      *&v21[3] = "[MapsSuggestionsRoutine fetchLOIsOfType:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    goto LABEL_17;
  }

  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "Could not get LOIs: %@", buf, 0xCu);
  }

  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(dispatch_queue_t *)v8 uniqueName];
    *buf = 138412546;
    v19 = v11;
    v20 = 2080;
    *v21 = "fetchLOIsOfType";
    _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
  }

  v12 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "fetchLOIsOfType", "", buf, 2u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_18:
}

void __50__MapsSuggestionsRoutine_fetchLOIsOfType_handler___block_invoke_396(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [(MapsSuggestionsRoutine *)WeakRetained _msgLOIsForRTLOIs:?];
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v3 uniqueName];
      v8 = 138412546;
      v9 = v6;
      v10 = 2080;
      *v11 = "fetchLocationsSinceDate";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "fetchLocationsSinceDate", "", &v8, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsRoutine.mm";
      v10 = 1026;
      *v11 = 2058;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsRoutine fetchLOIsOfType:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

- (char)fetchLOIsSinceDate:(id)a3 handler:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v22 = 1024;
      *v23 = 2071;
      *&v23[4] = 2082;
      *&v23[6] = "[MapsSuggestionsRoutine fetchLOIsSinceDate:handler:]";
      v24 = 2082;
      v25 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    goto LABEL_14;
  }

  if (!v6)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v22 = 1024;
      *v23 = 2072;
      *&v23[4] = 2082;
      *&v23[6] = "[MapsSuggestionsRoutine fetchLOIsSinceDate:handler:]";
      v24 = 2082;
      v25 = "nil == (sinceDate)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a date", buf, 0x26u);
    }

LABEL_14:

    v13 = 0;
    goto LABEL_19;
  }

  if (+[MapsSuggestionsSiri isEnabled])
  {
    objc_initWeak(&location, self);
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(MapsSuggestionsRoutine *)self uniqueName];
      *buf = 138412546;
      v21 = v9;
      v22 = 2080;
      *v23 = "fetchLocationsSinceDate";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v10 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "fetchLocationsSinceDate", "", buf, 2u);
    }

    connector = self->_connector;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __53__MapsSuggestionsRoutine_fetchLOIsSinceDate_handler___block_invoke;
    v16[3] = &unk_1E81F62D0;
    objc_copyWeak(&v18, &location);
    v17 = v7;
    [(MapsSuggestionsRoutineConnector *)connector fetchLocationsOfInterestVisitedSinceDate:v6 withHandler:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "User turned off Siri Suggestions for maps. Not attempting to fetch locations", buf, 2u);
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  v13 = 1;
LABEL_19:

  return v13;
}

void __53__MapsSuggestionsRoutine_fetchLOIsSinceDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *&v21[13] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!v6)
  {
    if (WeakRetained)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__MapsSuggestionsRoutine_fetchLOIsSinceDate_handler___block_invoke_398;
      block[3] = &unk_1E81F5B00;
      objc_copyWeak(&v17, (a1 + 40));
      v15 = v5;
      v16 = *(a1 + 32);
      dispatch_async(v8[4], block);

      objc_destroyWeak(&v17);
      goto LABEL_18;
    }

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "MapsSuggestionsRoutine.mm";
      v20 = 1026;
      *v21 = 2093;
      v21[2] = 2082;
      *&v21[3] = "[MapsSuggestionsRoutine fetchLOIsSinceDate:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (!WeakRetained)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "MapsSuggestionsRoutine.mm";
      v20 = 1026;
      *v21 = 2086;
      v21[2] = 2082;
      *&v21[3] = "[MapsSuggestionsRoutine fetchLOIsSinceDate:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    goto LABEL_17;
  }

  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "Could not get LOIs: %@", buf, 0xCu);
  }

  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(dispatch_queue_t *)v8 uniqueName];
    *buf = 138412546;
    v19 = v11;
    v20 = 2080;
    *v21 = "fetchLocationsSinceDate";
    _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
  }

  v12 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "fetchLocationsSinceDate", "", buf, 2u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_18:
}

void __53__MapsSuggestionsRoutine_fetchLOIsSinceDate_handler___block_invoke_398(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [(MapsSuggestionsRoutine *)WeakRetained _msgLOIsForRTLOIs:?];
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v3 uniqueName];
      v8 = 138412546;
      v9 = v6;
      v10 = 2080;
      *v11 = "fetchLocationsSinceDate";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "fetchLocationsSinceDate", "", &v8, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsRoutine.mm";
      v10 = 1026;
      *v11 = 2095;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsRoutine fetchLOIsSinceDate:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

- (char)fetchLocationsSinceDate:(id)a3 handler:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v22 = 1024;
      *v23 = 2108;
      *&v23[4] = 2082;
      *&v23[6] = "[MapsSuggestionsRoutine fetchLocationsSinceDate:handler:]";
      v24 = 2082;
      v25 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    goto LABEL_14;
  }

  if (!v6)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v22 = 1024;
      *v23 = 2109;
      *&v23[4] = 2082;
      *&v23[6] = "[MapsSuggestionsRoutine fetchLocationsSinceDate:handler:]";
      v24 = 2082;
      v25 = "nil == (sinceDate)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a date", buf, 0x26u);
    }

LABEL_14:

    v13 = 0;
    goto LABEL_19;
  }

  if (+[MapsSuggestionsSiri isEnabled])
  {
    objc_initWeak(&location, self);
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(MapsSuggestionsRoutine *)self uniqueName];
      *buf = 138412546;
      v21 = v9;
      v22 = 2080;
      *v23 = "fetchLocationsSinceDate";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v10 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "fetchLocationsSinceDate", "", buf, 2u);
    }

    connector = self->_connector;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__MapsSuggestionsRoutine_fetchLocationsSinceDate_handler___block_invoke;
    v16[3] = &unk_1E81F62D0;
    objc_copyWeak(&v18, &location);
    v17 = v7;
    [(MapsSuggestionsRoutineConnector *)connector fetchLocationsOfInterestVisitedSinceDate:v6 withHandler:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "User turned off Siri Suggestions for maps. Not attempting to fetch locations", buf, 2u);
    }

    (*(v7 + 2))(v7, 0, 0, 0);
  }

  v13 = 1;
LABEL_19:

  return v13;
}

void __58__MapsSuggestionsRoutine_fetchLocationsSinceDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *&v21[13] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!v6)
  {
    if (WeakRetained)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__MapsSuggestionsRoutine_fetchLocationsSinceDate_handler___block_invoke_399;
      block[3] = &unk_1E81F5B00;
      objc_copyWeak(&v17, (a1 + 40));
      v15 = v5;
      v16 = *(a1 + 32);
      dispatch_async(v8[4], block);

      objc_destroyWeak(&v17);
      goto LABEL_18;
    }

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "MapsSuggestionsRoutine.mm";
      v20 = 1026;
      *v21 = 2130;
      v21[2] = 2082;
      *&v21[3] = "[MapsSuggestionsRoutine fetchLocationsSinceDate:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (!WeakRetained)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "MapsSuggestionsRoutine.mm";
      v20 = 1026;
      *v21 = 2123;
      v21[2] = 2082;
      *&v21[3] = "[MapsSuggestionsRoutine fetchLocationsSinceDate:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    goto LABEL_17;
  }

  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "Could not get LOIs: %@", buf, 0xCu);
  }

  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(dispatch_queue_t *)v8 uniqueName];
    *buf = 138412546;
    v19 = v11;
    v20 = 2080;
    *v21 = "fetchLocationsSinceDate";
    _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
  }

  v12 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "fetchLocationsSinceDate", "", buf, 2u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_18:
}

void __58__MapsSuggestionsRoutine_fetchLocationsSinceDate_handler___block_invoke_399(void **a1)
{
  *&v10[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsRoutine *)WeakRetained _treatLOIs:a1[5] handler:?];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [v3 uniqueName];
      v7 = 138412546;
      v8 = v5;
      v9 = 2080;
      *v10 = "fetchLocationsSinceDate";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v7, 0x16u);
    }

    v6 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v7) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "fetchLocationsSinceDate", "", &v7, 2u);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsRoutine.mm";
      v9 = 1026;
      *v10 = 2132;
      v10[2] = 2082;
      *&v10[3] = "[MapsSuggestionsRoutine fetchLocationsSinceDate:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

- (void)_treatLOIs:(void *)a3 handler:
{
  v38 = *MEMORY[0x1E69E9840];
  v26 = a2;
  v25 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    v5 = [v26 count];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v35 = "[MapsSuggestionsRoutine _treatLOIs:handler:]";
      v36 = 1024;
      v37 = v5;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "%s: about to process %u routine LOIs", buf, 0x12u);
    }

    v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v26;
    v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v8)
    {
      v9 = *v30;
      do
      {
        v10 = 0;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v29 + 1) + 8 * v10);
          v12 = objc_alloc(MEMORY[0x1E6985C40]);
          v13 = [v11 location];
          [v13 latitude];
          v15 = v14;
          v16 = [v11 location];
          [v16 longitude];
          v18 = [v12 initWithLatitude:v15 longitude:v17];

          if (v18)
          {
            [v7 addObject:v18];
            v19 = [MEMORY[0x1E695DFB0] null];
            v20 = [v11 visits];
            v21 = [v20 lastObject];
            v22 = [v21 exitDate];

            if (v22)
            {
              v23 = v22;
            }

            else
            {
              v23 = v19;
            }

            v24 = v23;
            [v28 addObject:v24];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v8);
    }

    v25[2](v25, v7, v28, 0);
  }
}

- (char)fetchLocationOfInterestWithIdentifier:(id)a3 withHandler:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v21 = 1024;
      *v22 = 2144;
      *&v22[4] = 2082;
      *&v22[6] = "[MapsSuggestionsRoutine fetchLocationOfInterestWithIdentifier:withHandler:]";
      v23 = 2082;
      v24 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    goto LABEL_13;
  }

  if (!v6)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v21 = 1024;
      *v22 = 2145;
      *&v22[4] = 2082;
      *&v22[6] = "[MapsSuggestionsRoutine fetchLocationOfInterestWithIdentifier:withHandler:]";
      v23 = 2082;
      v24 = "nil == (identifier)";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a date", buf, 0x26u);
    }

LABEL_13:

    v12 = 0;
    goto LABEL_14;
  }

  objc_initWeak(&location, self);
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(MapsSuggestionsRoutine *)self uniqueName];
    *buf = 138412546;
    v20 = v9;
    v21 = 2080;
    *v22 = "fetchLocationOfInterestWithIdentifier";
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v10 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "fetchLocationOfInterestWithIdentifier", "", buf, 2u);
  }

  connector = self->_connector;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__MapsSuggestionsRoutine_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke;
  v15[3] = &unk_1E81F7B28;
  objc_copyWeak(&v17, &location);
  v16 = v7;
  [(MapsSuggestionsRoutineConnector *)connector fetchLocationOfInterestWithIdentifier:v6 withHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  v12 = 1;
LABEL_14:

  return v12;
}

void __76__MapsSuggestionsRoutine_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__MapsSuggestionsRoutine_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke_405;
    v10[3] = &unk_1E81F7B00;
    v11[0] = v6;
    v11[1] = WeakRetained;
    v13 = *(a1 + 32);
    v12 = v5;
    dispatch_async(WeakRetained[4], v10);

    v8 = v11;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "MapsSuggestionsRoutine.mm";
      v25 = 1026;
      v26 = 2155;
      v27 = 2082;
      v28 = "[MapsSuggestionsRoutine fetchLocationOfInterestWithIdentifier:withHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __76__MapsSuggestionsRoutine_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke_402;
    v20 = &unk_1E81F62F8;
    v22 = *(a1 + 32);
    v21 = v6;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__MapsSuggestionsRoutine_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke_403;
    v14[3] = &unk_1E81F62F8;
    v16 = *(a1 + 32);
    v15 = v21;
    __76__MapsSuggestionsRoutine_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke_403(v14);

    v8 = &v22;
  }
}

uint64_t __76__MapsSuggestionsRoutine_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke_402(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136446722;
    v5 = "MapsSuggestionsRoutine.mm";
    v6 = 1026;
    v7 = 2152;
    v8 = 2082;
    v9 = "[MapsSuggestionsRoutine fetchLocationOfInterestWithIdentifier:withHandler:]_block_invoke";
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __76__MapsSuggestionsRoutine_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke_403(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136446722;
    v5 = "MapsSuggestionsRoutine.mm";
    v6 = 1026;
    v7 = 2152;
    v8 = 2082;
    v9 = "[MapsSuggestionsRoutine fetchLocationOfInterestWithIdentifier:withHandler:]_block_invoke";
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __76__MapsSuggestionsRoutine_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke_405(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "Could not get LOIs: %@", &v11, 0xCu);
    }

    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(a1 + 40) uniqueName];
      v11 = 138412546;
      v12 = v5;
      v13 = 2080;
      v14 = "fetchLocationOfInterestWithIdentifier";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v11, 0x16u);
    }

    v6 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v11) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "fetchLocationOfInterestWithIdentifier", "", &v11, 2u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = [[MapsSuggestionsLocationOfInterest alloc] initWithLOI:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(a1 + 40) uniqueName];
      v11 = 138412546;
      v12 = v9;
      v13 = 2080;
      v14 = "fetchLocationOfInterestWithIdentifier";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v11, 0x16u);
    }

    v10 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v10))
    {
      LOWORD(v11) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "fetchLocationOfInterestWithIdentifier", "", &v11, 2u);
    }
  }
}

- (void)forgetLocationOfInterest:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__MapsSuggestionsRoutine_forgetLocationOfInterest_handler___block_invoke;
  v10[3] = &unk_1E81F7B50;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  MSg::Queue::async<MapsSuggestionsRoutine>(&self->_queue, self, v10);
}

void __59__MapsSuggestionsRoutine_forgetLocationOfInterest_handler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 initWithUUIDString:v4];

  [v6[1] removeLocationOfInterestWithIdentifier:v5 handler:*(a1 + 40)];
}

- (char)predictedExitTimeFromLocation:(id)a3 date:(id)a4 handler:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v23 = v8;
    v24 = 2112;
    *v25 = v9;
    _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "Getting ExitTime of %@ at %@", buf, 0x16u);
  }

  if (!v10)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446978;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    v24 = 1024;
    *v25 = 2229;
    *&v25[4] = 2082;
    *&v25[6] = "[MapsSuggestionsRoutine predictedExitTimeFromLocation:date:handler:]";
    v26 = 2082;
    v27 = "nil == (handler)";
    v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_14:
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x26u);
    goto LABEL_15;
  }

  if (!v8)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446978;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    v24 = 1024;
    *v25 = 2230;
    *&v25[4] = 2082;
    *&v25[6] = "[MapsSuggestionsRoutine predictedExitTimeFromLocation:date:handler:]";
    v26 = 2082;
    v27 = "nil == (location)";
    v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location";
    goto LABEL_14;
  }

  if (!v9)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v24 = 1024;
      *v25 = 2231;
      *&v25[4] = 2082;
      *&v25[6] = "[MapsSuggestionsRoutine predictedExitTimeFromLocation:date:handler:]";
      v26 = 2082;
      v27 = "nil == (date)";
      v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a date";
      goto LABEL_14;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  if (+[MapsSuggestionsSiri isEnabled])
  {
    connector = self->_connector;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__MapsSuggestionsRoutine_predictedExitTimeFromLocation_date_handler___block_invoke;
    v18[3] = &unk_1E81F5748;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    [(MapsSuggestionsRoutineConnector *)connector fetchPredictedExitDatesFromLocation:v19 onDate:v20 withHandler:v18];

    v13 = 1;
    v14 = v19;
  }

  else
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "User turned off Siri Suggestions for maps. Not attempting to get exit times", buf, 2u);
    }

    v14 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-13 reason:@"User turned off Siri Suggestions for Maps. We cannot go to CoreRoutine"];
    (*(v10 + 2))(v10, 0, v14);
    v13 = 1;
  }

LABEL_16:

  return v13;
}

void __69__MapsSuggestionsRoutine_predictedExitTimeFromLocation_date_handler___block_invoke(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[5];
      v15 = 138412802;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Error getting ExitTime for %@ at %@: %@", &v15, 0x20u);
    }

LABEL_9:

    (*(a1[6] + 16))();
    goto LABEL_10;
  }

  if (![v5 count])
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = a1[4];
      v14 = a1[5];
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "Unknown ExitTime for %@ at %@", &v15, 0x16u);
    }

    goto LABEL_9;
  }

  v10 = a1[6];
  v11 = [v5 firstObject];
  v12 = [v11 date];
  (*(v10 + 16))(v10, v12, 0);

LABEL_10:
}

- (char)correctLabelForCurrentPlace:(id)a3 date:(id)a4 newLabel:(id)a5 handler:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    v16 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136446978;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    v24 = 1024;
    v25 = 2267;
    v26 = 2082;
    v27 = "[MapsSuggestionsRoutine correctLabelForCurrentPlace:date:newLabel:handler:]";
    v28 = 2082;
    v29 = "nil == (handler)";
    v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_11:
    _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x26u);
    goto LABEL_12;
  }

  if (!v10)
  {
    v16 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136446978;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    v24 = 1024;
    v25 = 2268;
    v26 = 2082;
    v27 = "[MapsSuggestionsRoutine correctLabelForCurrentPlace:date:newLabel:handler:]";
    v28 = 2082;
    v29 = "nil == (currentPlaceLabel)";
    v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a current place label";
    goto LABEL_11;
  }

  if (!v11)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v24 = 1024;
      v25 = 2269;
      v26 = 2082;
      v27 = "[MapsSuggestionsRoutine correctLabelForCurrentPlace:date:newLabel:handler:]";
      v28 = 2082;
      v29 = "nil == (date)";
      v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a date";
      goto LABEL_11;
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  connector = self->_connector;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__MapsSuggestionsRoutine_correctLabelForCurrentPlace_date_newLabel_handler___block_invoke;
  v19[3] = &unk_1E81F7B78;
  v20 = v11;
  v21 = v13;
  [(MapsSuggestionsRoutineConnector *)connector correctLabelForCurrentPlace:v10 date:v20 newLabel:v12 handler:v19];

  v15 = 1;
  v16 = v20;
LABEL_13:

  return v15;
}

void __76__MapsSuggestionsRoutine_correctLabelForCurrentPlace_date_newLabel_handler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "Error submitting user curation for current place with date %@: %@", &v7, 0x16u);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = 0;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Successfully submitted user curation for current place with date %@: %@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (char)correctLabelForVisitWithIdentifier:(id)a3 entryDate:(id)a4 originalLabel:(id)a5 newLabel:(id)a6 handler:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v16)
  {
    v19 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136446978;
    v27 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    v28 = 1024;
    v29 = 2294;
    v30 = 2082;
    v31 = "[MapsSuggestionsRoutine correctLabelForVisitWithIdentifier:entryDate:originalLabel:newLabel:handler:]";
    v32 = 2082;
    v33 = "nil == (handler)";
    v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_11:
    _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x26u);
    goto LABEL_12;
  }

  if (!v14)
  {
    v19 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136446978;
    v27 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
    v28 = 1024;
    v29 = 2295;
    v30 = 2082;
    v31 = "[MapsSuggestionsRoutine correctLabelForVisitWithIdentifier:entryDate:originalLabel:newLabel:handler:]";
    v32 = 2082;
    v33 = "nil == (originalLabel)";
    v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an original label";
    goto LABEL_11;
  }

  if (!v13)
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v27 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutine.mm";
      v28 = 1024;
      v29 = 2296;
      v30 = 2082;
      v31 = "[MapsSuggestionsRoutine correctLabelForVisitWithIdentifier:entryDate:originalLabel:newLabel:handler:]";
      v32 = 2082;
      v33 = "nil == (entryDate)";
      v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entryDate";
      goto LABEL_11;
    }

LABEL_12:
    v18 = 0;
    goto LABEL_13;
  }

  connector = self->_connector;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __102__MapsSuggestionsRoutine_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler___block_invoke;
  v22[3] = &unk_1E81F7BA0;
  v23 = v12;
  v24 = v13;
  v25 = v16;
  [(MapsSuggestionsRoutineConnector *)connector correctLabelForVisitWithIdentifier:v23 entryDate:v24 originalLabel:v14 newLabel:v15 handler:v22];

  v18 = 1;
  v19 = v23;
LABEL_13:

  return v18;
}

void __102__MapsSuggestionsRoutine_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = a1[5];
      v9 = 138412802;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "Error submitting user curation for visit identifier: %@, entryDate %@: %@", &v9, 0x20u);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = a1[4];
      v8 = a1[5];
      v9 = 138412802;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = 0;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Successfully submitted user curation for visit identifier %@, entryDate %@: %@", &v9, 0x20u);
    }
  }

  (*(a1[6] + 16))();
}

+ (void)loisFromPredictedContextResult:(id)a3 usingNetworkRequester:(id)a4 currentLocation:(id)a5 predictionDuration:(double)a6 considerGymPredictions:(BOOL)a7 considerSchoolPredictions:(BOOL)a8 considerUnknownTypePredictions:(BOOL)a9 callbackQueue:(id)a10 completionHandler:(id)a11
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a10;
  v22 = a11;
  objc_initWeak(&location, a1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __236__MapsSuggestionsRoutine_Internal__loisFromPredictedContextResult_usingNetworkRequester_currentLocation_predictionDuration_considerGymPredictions_considerSchoolPredictions_considerUnknownTypePredictions_callbackQueue_completionHandler___block_invoke;
  block[3] = &unk_1E81F7BC8;
  objc_copyWeak(v34, &location);
  v29 = v18;
  v30 = v19;
  v34[1] = *&a6;
  v35 = a7;
  v36 = a8;
  v37 = a9;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v23 = v22;
  v24 = v21;
  v25 = v20;
  v26 = v19;
  v27 = v18;
  dispatch_async(v24, block);

  objc_destroyWeak(v34);
  objc_destroyWeak(&location);
}

void __236__MapsSuggestionsRoutine_Internal__loisFromPredictedContextResult_usingNetworkRequester_currentLocation_predictionDuration_considerGymPredictions_considerSchoolPredictions_considerUnknownTypePredictions_callbackQueue_completionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _q_loisFromPredictedContextResult:*(a1 + 32) usingNetworkRequester:*(a1 + 40) currentLocation:*(a1 + 48) predictionDuration:*(a1 + 88) considerGymPredictions:*(a1 + 89) considerSchoolPredictions:*(a1 + 90) considerUnknownTypePredictions:*(a1 + 80) callbackQueue:*(a1 + 56) completionHandler:*(a1 + 64)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v6 = "MapsSuggestionsRoutine.mm";
      v7 = 1026;
      v8 = 2397;
      v9 = 2082;
      v10 = "+[MapsSuggestionsRoutine(Internal) loisFromPredictedContextResult:usingNetworkRequester:currentLocation:predictionDuration:considerGymPredictions:considerSchoolPredictions:considerUnknownTypePredictions:callbackQueue:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

+ (id)_mapItemCache
{
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  if (+[MapsSuggestionsRoutine(Internal) _mapItemCache]::onceToken != -1)
  {
    +[MapsSuggestionsRoutine(Internal) _mapItemCache];
  }

  v2 = +[MapsSuggestionsRoutine(Internal) _mapItemCache]::s_plcCache;

  return v2;
}

uint64_t __49__MapsSuggestionsRoutine_Internal___mapItemCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = +[MapsSuggestionsRoutine(Internal) _mapItemCache]::s_plcCache;
  +[MapsSuggestionsRoutine(Internal) _mapItemCache]::s_plcCache = v0;

  Integer = GEOConfigGetInteger();
  v3 = +[MapsSuggestionsRoutine(Internal) _mapItemCache]::s_plcCache;

  return [v3 setCountLimit:Integer];
}

+ (id)_mapItemForHandle:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  v5 = [a1 _mapItemCache];
  v6 = [v5 objectForKey:v4];
  {
    +[MapsSuggestionsRoutine(Internal) _mapItemForHandle:]::lastPurgeDate = MapsSuggestionsNow();
  }

  GEOConfigGetDouble();
  v8 = v7;
  v9 = MapsSuggestionsNow();
  [v9 timeIntervalSinceDate:+[MapsSuggestionsRoutine(Internal) _mapItemForHandle:]::lastPurgeDate];
  v11 = v10;

  if (v11 <= v8)
  {
    v15 = v6;
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v17 = 134217984;
      v18 = v8 / 86400.0;
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "Its been more than %.2f days since the last purge. Emptying the PLC mapItem cache. 🗑️", &v17, 0xCu);
    }

    [v5 removeAllObjects];
    v13 = MapsSuggestionsNow();
    v14 = +[MapsSuggestionsRoutine(Internal) _mapItemForHandle:]::lastPurgeDate;
    +[MapsSuggestionsRoutine(Internal) _mapItemForHandle:]::lastPurgeDate = v13;

    v15 = 0;
  }

  return v15;
}

+ (void)setMapItem:(id)a3 forHandle:(id)a4
{
  v8 = a3;
  v6 = a4;
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  v7 = [a1 _mapItemCache];
  [v7 setObject:v8 forKey:v6];
}

+ (id)_loisFromResult:(id)a3 usingDuration:(double)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v48 = a3;
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  v50 = [v48 nextStepPredictedContextsWithFilterMask:3];
  v51 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v50, "count")}];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v64 = v50;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Contexts from Routine before filtering: %@", buf, 0xCu);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v50;
  v6 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v6)
  {
    v7 = *v58;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v58 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v57 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 dateInterval];
          v11 = [v10 startDate];
          v12 = [v11 date];
          if (!v12)
          {
            goto LABEL_16;
          }

          v13 = [v9 dateInterval];
          v14 = [v13 endDate];
          v15 = [v14 date];
          v16 = v15 == 0;

          if (v16)
          {
            continue;
          }

          v17 = [v9 dateInterval];
          v18 = [v17 startDate];
          v10 = [v18 date];

          v19 = MapsSuggestionsNowWithOffset(a4);
          v20 = [v10 earlierDate:v19];
          LOBYTE(v18) = v20 == v10;

          if (v18)
          {
            v11 = v9;
            v21 = [v11 locationOfInterest];
            v22 = v21 == 0;

            if (!v22)
            {
              v23 = [v11 locationOfInterest];
              v24 = [v23 mapItem];
              v25 = v24 == 0;

              if (!v25)
              {
                v26 = [v11 locationOfInterest];
                v27 = [v26 mapItem];
                v28 = [v27 geoMapItemHandle];
                v29 = v28 == 0;

                if (!v29)
                {
                  [v51 addObject:v11];
                }
              }
            }

LABEL_16:
          }

          continue;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v6);
  }

  v49 = [v51 sortedArrayUsingComparator:&__block_literal_global_551];
  v30 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v64 = v49;
    _os_log_impl(&dword_1C5126000, v30, OS_LOG_TYPE_DEBUG, "Contexts from Routine after filtering: %@", buf, 0xCu);
  }

  v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v32 = v49;
  v33 = [v32 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v33)
  {
    v34 = *v54;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v54 != v34)
        {
          objc_enumerationMutation(v32);
        }

        v36 = *(*(&v53 + 1) + 8 * j);
        v37 = [MapsSuggestionsLocationOfInterest alloc];
        v38 = [v36 locationOfInterest];
        v39 = [v36 dateInterval];
        [v36 probability];
        v41 = v40;
        v42 = [v36 predictionSources];
        v43 = [(MapsSuggestionsLocationOfInterest *)v37 initWithLOI:v38 predictedDateInterval:v39 probability:v42 predictionSources:v41];

        [v31 addObject:v43];
      }

      v33 = [v32 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v33);
  }

  v44 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    v45 = NSStringFromMapsSuggestionsLocationsOfInterest(v31);
    *buf = 138412290;
    v64 = v45;
    _os_log_impl(&dword_1C5126000, v44, OS_LOG_TYPE_DEBUG, "Sorted MSg LOIs: %@", buf, 0xCu);
  }

  v46 = [v31 copy];

  return v46;
}

uint64_t __66__MapsSuggestionsRoutine_Internal___loisFromResult_usingDuration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateInterval];
  v6 = [v5 startDate];
  v7 = [v6 date];
  v8 = [v4 dateInterval];
  v9 = [v8 startDate];
  v10 = [v9 date];
  v11 = [v7 compare:v10];

  return v11;
}

+ (void)_q_loisFromPredictedContextResult:(id)a3 usingNetworkRequester:(id)a4 currentLocation:(id)a5 predictionDuration:(double)a6 considerGymPredictions:(BOOL)a7 considerSchoolPredictions:(BOOL)a8 considerUnknownTypePredictions:(BOOL)a9 callbackQueue:(id)a10 completionHandler:(id)a11
{
  v11 = a9;
  v12 = a8;
  v13 = a7;
  v182 = *MEMORY[0x1E69E9840];
  v142 = a3;
  v139 = a4;
  v157 = a5;
  v18 = a10;
  v145 = a11;
  v140 = v18;
  dispatch_assert_queue_V2(v18);
  [v157 horizontalAccuracy];
  v20 = v19;
  GEOConfigGetDouble();
  if (v20 <= v21)
  {
    v138 = [a1 _loisFromResult:v142 usingDuration:a6];
    if (v138 && [v138 count])
    {
      v26 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [v157 timestamp];
        v28 = MapsSuggestionsAMPMStringFromDate(v27);
        *buf = 138412290;
        v176 = v28;
        _os_log_impl(&dword_1C5126000, v26, OS_LOG_TYPE_DEBUG, "Current Location timestamp: %@", buf, 0xCu);
      }

      BOOL = GEOConfigGetBOOL();
      v29 = GEOConfigGetBOOL();
      v30 = GEOConfigGetBOOL();
      v31 = GEOConfigGetBOOL();
      GEOConfigGetDouble();
      v33 = v32;
      GEOConfigGetDouble();
      v35 = v34;
      GEOConfigGetDouble();
      v37 = v36;
      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      v171 = 0u;
      obj = v138;
      v38 = [obj countByEnumeratingWithState:&v170 objects:v181 count:16];
      v39 = @"/Gym";
      v40 = v31 | v11;
      v137 = v31 | v11;
      v144 = v29 | v13;
      v141 = v30 | v12;
      if (v38)
      {
        v135 = v40 ^ 1;
        if (!(v29 | v13))
        {
          v39 = &stru_1F444C108;
        }

        v151 = v39;
        v153 = *v171;
        if (v30 | v12)
        {
          v41 = @"/School";
        }

        else
        {
          v41 = &stru_1F444C108;
        }

        if (v40)
        {
          v42 = @"/Uncategorized";
        }

        else
        {
          v42 = &stru_1F444C108;
        }

        v147 = v42;
        v149 = v41;
LABEL_20:
        v43 = 0;
        v146 = v38;
        while (1)
        {
          if (*v171 != v153)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v170 + 1) + 8 * v43);
          v45 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C5126000, v45, OS_LOG_TYPE_DEBUG, "====================================================================", buf, 2u);
          }

          v46 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            v47 = [v44 identifierString];
            *buf = 138412290;
            v176 = v47;
            _os_log_impl(&dword_1C5126000, v46, OS_LOG_TYPE_DEBUG, "~~~~ PARSING LOI WITH ID: %@  ~~~~", buf, 0xCu);
          }

          v48 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C5126000, v48, OS_LOG_TYPE_DEBUG, "====================================================================", buf, 2u);
          }

          v49 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C5126000, v49, OS_LOG_TYPE_DEBUG, "~~~~~~~ Checking LOI for Next Destination & Entry Time ~~~~~~~~", buf, 2u);
          }

          v50 = [v44 location];
          [v157 distanceFromLocation:v50];
          v52 = v51;

          v53 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v54 = @"✅";
            if (v52 < v33)
            {
              v54 = @"❌";
            }

            v176 = v54;
            v177 = 2048;
            v178 = v52;
            v179 = 2048;
            v180 = v33;
            _os_log_impl(&dword_1C5126000, v53, OS_LOG_TYPE_DEBUG, "%@ Is LOI far enough to be considered your next destination? Distance: %.2fm, Threshold: %.0fm)", buf, 0x20u);
          }

          if (BOOL)
          {
            v55 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v56 = @"✅";
              if (v52 > v35)
              {
                v56 = @"❌";
              }

              v176 = v56;
              v177 = 2048;
              v178 = v52;
              v179 = 2048;
              v180 = v35;
              _os_log_impl(&dword_1C5126000, v55, OS_LOG_TYPE_DEBUG, "%@ Is LOI close enough to be considered your next destination? Distance: %.2fm, Threshold: %.0fm)", buf, 0x20u);
            }
          }

          v57 = v44;
          if (![v57 type] || objc_msgSend(v57, "type") == 1 || v144 && objc_msgSend(v57, "type") == 3)
          {
            v58 = 1;
          }

          else
          {
            if (v141)
            {
              v75 = [v57 type];
              v58 = v75 == 2;
              if (v75 == 2)
              {
                v76 = 1;
              }

              else
              {
                v76 = v135;
              }

              if (v76)
              {
                goto LABEL_44;
              }
            }

            else if (!v137)
            {
              v58 = 0;
              goto LABEL_44;
            }

            v58 = [v57 type] == -1;
          }

LABEL_44:
          v59 = objc_alloc(MEMORY[0x1E696AEC0]);
          v60 = @"✅";
          if (!v58)
          {
            v60 = @"❌";
          }

          v61 = [v59 initWithFormat:@"%@ Is the next LOI Home/Work%@%@%@ ?", v60, v151, v149, v147];
          v62 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v176 = v61;
            _os_log_impl(&dword_1C5126000, v62, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v63 = [v57 predictedStartDate];
          if (MapsSuggestionsIsInTheFuture(v63))
          {
            IsWithinThePast = 1;
          }

          else
          {
            v65 = [v57 predictedStartDate];
            IsWithinThePast = MapsSuggestionsIsWithinThePast(v65, v37);
          }

          v66 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
          {
            v67 = @"✅";
            if (!IsWithinThePast)
            {
              v67 = @"❌";
            }

            *buf = 138412290;
            v176 = v67;
            _os_log_impl(&dword_1C5126000, v66, OS_LOG_TYPE_DEBUG, "%@ Is start date of the next LOI around now (or in the future)?", buf, 0xCu);
          }

          v68 = v57;
          [v68 type];
          GEOConfigGetDouble();
          v70 = v69;
          [v68 probability];
          v72 = v71;
          v73 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v74 = @"✅";
            if (v72 < v70)
            {
              v74 = @"❌";
            }

            v176 = v74;
            v177 = 2048;
            v178 = v70;
            _os_log_impl(&dword_1C5126000, v73, OS_LOG_TYPE_DEBUG, "%@ Is the next LOI probability >= %.2f?", buf, 0x16u);
          }

          if (!((v72 < v70 || v52 < v33) | BOOL & (v52 > v35)) && v58 && IsWithinThePast)
          {
            v79 = v68;
            v134 = [v79 predictedStartDate];
            GEOFindOrCreateLog();
            v80 = v136 = v79;
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
            {
              v81 = [v136 preferredName];
              [v136 predictedStartDate];
              v82 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138412546;
              v176 = v81;
              v177 = 2112;
              v178 = v82;
              _os_log_impl(&dword_1C5126000, v80, OS_LOG_TYPE_DEBUG, "🎉 Found Next Destination: %@, entryTime: %@ 🎉 ", buf, 0x16u);
            }

            goto LABEL_84;
          }

          if (v146 == ++v43)
          {
            v77 = [obj countByEnumeratingWithState:&v170 objects:v181 count:16];
            v38 = v77;
            if (v77)
            {
              goto LABEL_20;
            }

            break;
          }
        }
      }

      v134 = 0;
      v136 = 0;
LABEL_84:

      v169 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v148 = obj;
      v83 = [v148 countByEnumeratingWithState:&v166 objects:v174 count:16];
      v84 = @"/Gym";
      if (v83)
      {
        if (!v144)
        {
          v84 = &stru_1F444C108;
        }

        v154 = v84;
        v156 = *v167;
        if (v141)
        {
          v85 = @"/School";
        }

        else
        {
          v85 = &stru_1F444C108;
        }

        v86 = @"/Uncategorized";
        if (!v137)
        {
          v86 = &stru_1F444C108;
        }

        v150 = v86;
        v152 = v85;
LABEL_93:
        v87 = 0;
        while (1)
        {
          if (*v167 != v156)
          {
            objc_enumerationMutation(v148);
          }

          v88 = *(*(&v166 + 1) + 8 * v87);
          v89 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C5126000, v89, OS_LOG_TYPE_DEBUG, "====================================================================", buf, 2u);
          }

          v90 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
          {
            v91 = [v88 identifierString];
            *buf = 138412290;
            v176 = v91;
            _os_log_impl(&dword_1C5126000, v90, OS_LOG_TYPE_DEBUG, "~~~~ PARSING LOI WITH ID: %@  ~~~~", buf, 0xCu);
          }

          v92 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C5126000, v92, OS_LOG_TYPE_DEBUG, "====================================================================", buf, 2u);
          }

          v93 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C5126000, v93, OS_LOG_TYPE_DEBUG, "~~~~~~~ Checking LOI for Exit Time ~~~~~~~~", buf, 2u);
          }

          v94 = [v88 location];
          [v157 distanceFromLocation:v94];
          v96 = v95;

          v97 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v98 = @"✅";
            if (v96 > v33)
            {
              v98 = @"❌";
            }

            v176 = v98;
            v177 = 2048;
            v178 = v96;
            v179 = 2048;
            v180 = v33;
            _os_log_impl(&dword_1C5126000, v97, OS_LOG_TYPE_DEBUG, "%@ Is LOI close enough to be considered your current LOI? Distance: %.2fm, Threshold: %.0fm)", buf, 0x20u);
          }

          v99 = v88;
          if (![v99 type] || objc_msgSend(v99, "type") == 1 || v144 && objc_msgSend(v99, "type") == 3)
          {
            v100 = 1;
          }

          else
          {
            if (v141)
            {
              v112 = [v99 type];
              v100 = v112 == 2;
              if (v112 == 2)
              {
                v113 = 1;
              }

              else
              {
                v113 = v137 ^ 1;
              }

              if (v113)
              {
                goto LABEL_111;
              }
            }

            else if (!v137)
            {
              v100 = 0;
              goto LABEL_111;
            }

            v100 = [v99 type] == -1;
          }

LABEL_111:
          v101 = objc_alloc(MEMORY[0x1E696AEC0]);
          v102 = @"✅";
          if (!v100)
          {
            v102 = @"❌";
          }

          v103 = [v101 initWithFormat:@"%@ Is the next LOI Home/Work%@%@%@ ?", v102, v154, v152, v150];
          v104 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v176 = v103;
            _os_log_impl(&dword_1C5126000, v104, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v105 = v99;
          [v105 type];
          GEOConfigGetDouble();
          v107 = v106;
          [v105 probability];
          v109 = v108;
          v110 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v111 = @"✅";
            if (v109 < v107)
            {
              v111 = @"❌";
            }

            v176 = v111;
            v177 = 2048;
            v178 = v107;
            _os_log_impl(&dword_1C5126000, v110, OS_LOG_TYPE_DEBUG, "%@ Is the next LOI probability >= %.2f?", buf, 0x16u);
          }

          if (v109 >= v107 && v96 <= v33 && v100)
          {
            v115 = [v105 predictedEndDate];
            v116 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
            {
              [v105 preferredName];
              v117 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138412546;
              v176 = v115;
              v177 = 2112;
              v178 = v117;
              _os_log_impl(&dword_1C5126000, v116, OS_LOG_TYPE_DEBUG, "🎉 Found Exit Time: %@ for %@ 🎉 ", buf, 0x16u);
            }

            goto LABEL_139;
          }

          if (v83 == ++v87)
          {
            v114 = [v148 countByEnumeratingWithState:&v166 objects:v174 count:16];
            v83 = v114;
            if (v114)
            {
              goto LABEL_93;
            }

            break;
          }
        }
      }

      v115 = 0;
LABEL_139:

      if (v136)
      {
        v118 = [v136 mapItemHandle];
        v119 = [a1 _mapItemForHandle:v118];

        if (v119)
        {
          v120 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
          {
            v121 = [v136 preferredName];
            [v136 identifierUUID];
            v122 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412546;
            v176 = v121;
            v177 = 2112;
            v178 = v122;
            _os_log_impl(&dword_1C5126000, v120, OS_LOG_TYPE_DEBUG, "♻️ Found a mapItem in the cache for type %@, ID: %@", buf, 0x16u);
          }

          [v136 setMapItem:v119];
          v123 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
          {
            v124 = [v119 _styleAttributes];
            if ([v124 hasAttributes])
            {
              v125 = @"YES";
            }

            else
            {
              v125 = @"NO";
            }

            [v119 _styleAttributes];
            v126 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            [v119 clientAttributes];
            v127 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412802;
            v176 = v125;
            v177 = 2112;
            v178 = v126;
            v179 = 2112;
            v180 = v127;
            _os_log_impl(&dword_1C5126000, v123, OS_LOG_TYPE_DEBUG, "hasAttributes: %@, attributes: %@, clientAttributes: %@", buf, 0x20u);
          }

          if (v145)
          {
            v145[2](v145, v134, v115, v136, 0);
          }
        }

        else
        {
          v128 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
          {
            v129 = [v136 preferredName];
            [v136 identifierUUID];
            v130 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412546;
            v176 = v129;
            v177 = 2112;
            v178 = v130;
            _os_log_impl(&dword_1C5126000, v128, OS_LOG_TYPE_DEBUG, "Didn't find a mapItem in the cache. Making a place inference network request for type %@, ID: %@", buf, 0x16u);
          }

          v158[0] = MEMORY[0x1E69E9820];
          v158[1] = 3221225472;
          v158[2] = __239__MapsSuggestionsRoutine_Internal___q_loisFromPredictedContextResult_usingNetworkRequester_currentLocation_predictionDuration_considerGymPredictions_considerSchoolPredictions_considerUnknownTypePredictions_callbackQueue_completionHandler___block_invoke;
          v158[3] = &unk_1E81F7C38;
          v159 = v140;
          v131 = v145;
          v164 = v131;
          v132 = v115;
          v160 = v132;
          v165 = a1;
          v161 = v136;
          v162 = 0;
          v163 = v134;
          v133 = [v161 hydrateMapItemWithNetworkRequester:v139 completion:v158];
          if (v131 && !v133)
          {
            v131[2](v131, 0, v132, 0, 0);
          }
        }
      }

      else if (v145)
      {
        v145[2](v145, 0, v115, 0, 0);
      }
    }

    else
    {
      v78 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v78, OS_LOG_TYPE_DEBUG, "❌ No LOIs to process after filtering", buf, 2u);
      }

      if (v145)
      {
        v145[2](v145, 0, 0, 0, 0);
      }
    }

    goto LABEL_161;
  }

  v22 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [v157 horizontalAccuracy];
    v24 = v23;
    GEOConfigGetDouble();
    *buf = 134218240;
    v176 = v24;
    v177 = 2048;
    v178 = v25;
    _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_DEBUG, "❌ Unable to process Contexts. horizontalAccuracy: %.2f is higher than our threshold: %.0f", buf, 0x16u);
  }

  if (v145)
  {
    v145[2](v145, 0, 0, 0, 0);
  }

LABEL_161:
}

void __239__MapsSuggestionsRoutine_Internal___q_loisFromPredictedContextResult_usingNetworkRequester_currentLocation_predictionDuration_considerGymPredictions_considerSchoolPredictions_considerUnknownTypePredictions_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __239__MapsSuggestionsRoutine_Internal___q_loisFromPredictedContextResult_usingNetworkRequester_currentLocation_predictionDuration_considerGymPredictions_considerSchoolPredictions_considerUnknownTypePredictions_callbackQueue_completionHandler___block_invoke_2;
  block[3] = &unk_1E81F7C10;
  v13 = v3;
  v16 = *(a1 + 72);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v17 = *(a1 + 80);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v11 = v3;
  dispatch_async(v4, block);
}

uint64_t __239__MapsSuggestionsRoutine_Internal___q_loisFromPredictedContextResult_usingNetworkRequester_currentLocation_predictionDuration_considerGymPredictions_considerSchoolPredictions_considerUnknownTypePredictions_callbackQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    result = *(a1 + 72);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(a1 + 48) preferredName];
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Finished hydrating LOI type %@, caching mapItem.", &v14, 0xCu);
    }

    v6 = *(a1 + 80);
    v7 = [*(a1 + 48) mapItem];
    v8 = [*(a1 + 48) mapItemHandle];
    [v6 setMapItem:v7 forHandle:v8];

    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*(a1 + 56) _styleAttributes];
      if ([v10 hasAttributes])
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v12 = [*(a1 + 56) _styleAttributes];
      v13 = [*(a1 + 56) clientAttributes];
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "hasAttributes: %@, attributes: %@, clientAttributes: %@", &v14, 0x20u);
    }

    result = *(a1 + 72);
    if (result)
    {
      return (*(result + 16))(result, *(a1 + 64), *(a1 + 40), *(a1 + 48), 0);
    }
  }

  return result;
}

+ (id)contextOptionsForPLCs
{
  v2 = objc_alloc(MEMORY[0x1E6999080]);
  v3 = [v2 initWithForecastWindowDateInterval:0 filterContextTypeMask:3 filterLocations:0 resultSortDescriptors:MEMORY[0x1E695E0F0]];

  return v3;
}

- (BOOL)canProduceEntriesOfType:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  if (self)
  {
    IsLocationAllowedForBundleID = MapsSuggestionsIsLocationAllowedForBundleID(*MEMORY[0x1E69A1A78]);
  }

  else
  {
    IsLocationAllowedForBundleID = 0;
  }

  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"NO";
    if (IsLocationAllowedForBundleID)
    {
      v7 = @"YES";
    }

    v16 = 138412290;
    v17 = v7;
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Location Allowed for Maps Bundle ID? %@", &v16, 0xCu);
  }

  switch(a3)
  {
    case 0:
      if (qword_1EDC51EF0 != -1)
      {
        dispatch_once(&qword_1EDC51EF0, &__block_literal_global_570);
      }

      LOBYTE(IsLocationAllowedForBundleID) = _MergedGlobals_4;
      break;
    case 1:
    case 2:
    case 4:
      LOBYTE(IsLocationAllowedForBundleID) = [(MapsSuggestionsRoutine *)self _clearedToFetchSuggestions]& IsLocationAllowedForBundleID;
      break;
    case 3:
    case 5:
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
      goto LABEL_8;
    case 7:
    case 19:
      return IsLocationAllowedForBundleID & 1;
    default:
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v16 = 136446978;
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_3();
        v18 = "YES";
        OUTLINED_FUNCTION_2_1(&dword_1C5126000, v10, v11, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsEntryType!", v12, v13, v14, v15, v16);
      }

LABEL_8:
      LOBYTE(IsLocationAllowedForBundleID) = 0;
      break;
  }

  return IsLocationAllowedForBundleID & 1;
}

- (void)_convertType:(NSObject *)a1 source:.cold.4(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires sources", v4, v5, v6, v7, 2u);
  }
}

- (void)_convertType:(NSObject *)a1 source:.cold.5(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a class", v4, v5, v6, v7, 2u);
  }
}

- (void)_convertType:(NSObject *)a1 source:.cold.6(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a RTSource-derived class", v4, v5, v6, v7, 2u);
  }
}

- (void)_clearedToFetchSuggestions
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_DEBUG, "TCC not prompted", v2, 2u);
  }
}

- (void)_addFieldsToSuggestionsEntry:(NSObject *)a1 fromRTMapItem:.cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestion entry", v4, v5, v6, v7, 2u);
  }
}

- (void)_addParkedCarFieldsToSuggestionsEntry:(NSObject *)a1 vehicleEvent:.cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Suggestion entry needs to be ParkedCar", v4, v5, v6, v7, 2u);
  }
}

- (void)_addParkedCarFieldsToSuggestionsEntry:(NSObject *)a1 vehicleEvent:.cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestion entry", v4, v5, v6, v7, 2u);
  }
}

- (void)_suggestionEntryForPLOI:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_6_1(v3))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v4, v5, "At %{public}s:%d, %{public}s forbids: %{public}s. ParkedCar needs to be a VehicleEvent", v6, v7, v8, v9, 2u);
  }

  *v1 = 0;
  *v0 = v2;
}

- (void)_suggestionEntryForPLOI:.cold.5()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_6_1(v3))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v4, v5, "At %{public}s:%d, %{public}s forbids: %{public}s. We converted into an EntryType we can't handle?!", v6, v7, v8, v9, 2u);
  }

  *v1 = 0;
  *v0 = v2;
}

- (void)_suggestionEntryForPLOI:(os_log_t)log .cold.6(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_impl(&dword_1C5126000, log, OS_LOG_TYPE_DEBUG, "RoutineSource drops type of %@", buf, 0xCu);
}

- (void)_updateEntry:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_6_3(&dword_1C5126000, v3, v4, "ShortcutMatcher: Entry type Work matched MapsSync Work. Creating a Work entry.", v5, v6, v7, v8, 0);
  }

  *v0 = v1;
}

- (void)_updateEntry:.cold.2()
{
  OUTLINED_FUNCTION_8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_6_3(&dword_1C5126000, v3, v4, "ShortcutMatcher: Entry type Home matched MapsSync Home. Creating a Home entry.", v5, v6, v7, v8, 0);
  }

  *v0 = v1;
}

- (void)_updateEntry:.cold.3()
{
  OUTLINED_FUNCTION_8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_6_3(&dword_1C5126000, v3, v4, "ShortcutMatcher: MapsSync doesn't have a Work at all. Assuming CoreRoutine is correct and creating a Work entry.", v5, v6, v7, v8, 0);
  }

  *v0 = v1;
}

- (void)_updateEntry:.cold.4()
{
  OUTLINED_FUNCTION_8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_6_3(&dword_1C5126000, v3, v4, "ShortcutMatcher: MapsSync doesn't have a Home at all. Assuming CoreRoutine is correct and creating a Home entry.", v5, v6, v7, v8, 0);
  }

  *v0 = v1;
}

- (void)_addMapItemToShortcut:fromLOI:group:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v1, v2, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a dispatch group", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_2_2();
}

- (void)_addMapItemToShortcut:fromLOI:group:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v1, v2, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a LOI", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_2_2();
}

- (void)_addMapItemToShortcut:fromLOI:group:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v1, v2, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a shortcut", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_2_2();
}

- (void)_cacheEntryExitDatesFromVisit:forMapItemIdentifier:name:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_11(&dword_1C5126000, v3, v4, "Caching of visits from Routine is disabled. Returning.", v5, v6, v7, v8, 0);
  }

  *v0 = v1;
}

- (void)_fetchStoredVisitsWithOptions:(NSObject *)a1 handler:.cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", v4, v5, v6, v7, 2u);
  }
}

- (void)_fetchStoredVisitsWithOptions:(NSObject *)a1 handler:.cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires visit fetch options", v4, v5, v6, v7, 2u);
  }
}

void __47__MapsSuggestionsRoutine_addParkedCarObserver___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_11(&dword_1C5126000, v3, v4, "We are not allowed to send out VehicleEvents right now.", v5, v6, v7, v8, 0);
  }

  *v0 = v1;
}

@end