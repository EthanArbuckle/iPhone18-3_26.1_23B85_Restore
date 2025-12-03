@interface MapsSuggestionsSelfBuildingResourceDepot
- (MapsSuggestionsSelfBuildingResourceDepot)initWithName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)oneAppGuardian;
- (id)oneAppProtectionConnector;
- (id)oneBiome;
- (id)oneBiomeConnector;
- (id)oneContactActivity;
- (id)oneContacts;
- (id)oneContactsConnector;
- (id)oneEventKit;
- (id)oneEventKitConnector;
- (id)oneFavorites;
- (id)oneFavoritesStorage;
- (id)oneFavoritesSuggestor;
- (id)oneFinanceKit;
- (id)oneFinanceKitConnector;
- (id)oneFindMy;
- (id)oneFindMyConnector;
- (id)oneFlightRequester;
- (id)oneFlightUpdater;
- (id)oneInsights;
- (id)oneLocationUpdater;
- (id)oneMapsSync;
- (id)oneMapsSyncConnector;
- (id)oneNetworkRequester;
- (id)onePortrait;
- (id)onePortraitConnector;
- (id)oneRoutine;
- (id)oneRoutineConnector;
- (id)oneSourceDelegate;
- (id)oneUser;
- (id)oneVirtualGarage;
- (id)oneVirtualGarageConnector;
- (void)setOneAppGuardian:(id)guardian;
- (void)setOneAppProtectionConnector:(id)connector;
- (void)setOneBiome:(id)biome;
- (void)setOneBiomeConnector:(id)connector;
- (void)setOneContactActivity:(id)activity;
- (void)setOneContacts:(id)contacts;
- (void)setOneContactsConnector:(id)connector;
- (void)setOneEventKit:(id)kit;
- (void)setOneEventKitConnector:(id)connector;
- (void)setOneFavorites:(id)favorites;
- (void)setOneFindMy:(id)my;
- (void)setOneFindMyConnector:(id)connector;
- (void)setOneFlightRequester:(id)requester;
- (void)setOneFlightUpdater:(id)updater;
- (void)setOneInsights:(id)insights;
- (void)setOneLocationUpdater:(id)updater;
- (void)setOneMapsSync:(id)sync;
- (void)setOneMapsSyncConnector:(id)connector;
- (void)setOneNetworkRequester:(id)requester;
- (void)setOnePortrait:(id)portrait;
- (void)setOnePortraitConnector:(id)connector;
- (void)setOneRoutine:(id)routine;
- (void)setOneRoutineConnector:(id)connector;
- (void)setOneSourceDelegate:(id)delegate;
- (void)setOneUser:(id)user;
- (void)setOneVirtualGarage:(id)garage;
- (void)setOneVirtualGarageConnector:(id)connector;
@end

@implementation MapsSuggestionsSelfBuildingResourceDepot

- (id)oneFlightUpdater
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneFlightUpdater = selfCopy->_oneFlightUpdater;
  if (!oneFlightUpdater)
  {
    v4 = [[MapsSuggestionsFlightUpdater alloc] initFromResourceDepot:selfCopy];
    v5 = selfCopy->_oneFlightUpdater;
    selfCopy->_oneFlightUpdater = v4;

    oneFlightUpdater = selfCopy->_oneFlightUpdater;
  }

  v6 = oneFlightUpdater;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneVirtualGarage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneVirtualGarage = selfCopy->_oneVirtualGarage;
  if (!oneVirtualGarage)
  {
    v4 = [[MapsSuggestionsVirtualGarage alloc] initFromResourceDepot:selfCopy];
    v5 = selfCopy->_oneVirtualGarage;
    selfCopy->_oneVirtualGarage = v4;

    oneVirtualGarage = selfCopy->_oneVirtualGarage;
  }

  v6 = oneVirtualGarage;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneSourceDelegate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_oneSourceDelegate;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)oneAppGuardian
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneAppGuardian = selfCopy->_oneAppGuardian;
  if (!oneAppGuardian)
  {
    v4 = [[MapsSuggestionsAppGuardian alloc] initFromResourceDepot:selfCopy];
    v5 = selfCopy->_oneAppGuardian;
    selfCopy->_oneAppGuardian = v4;

    oneAppGuardian = selfCopy->_oneAppGuardian;
  }

  v6 = oneAppGuardian;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneAppProtectionConnector
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneAppProtectionConnector = selfCopy->_oneAppProtectionConnector;
  if (!oneAppProtectionConnector)
  {
    v4 = objc_alloc_init(MapsSuggestionsRealAppProtectionConnector);
    v5 = selfCopy->_oneAppProtectionConnector;
    selfCopy->_oneAppProtectionConnector = v4;

    oneAppProtectionConnector = selfCopy->_oneAppProtectionConnector;
  }

  v6 = oneAppProtectionConnector;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneFavoritesStorage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneFavoritesStorage = selfCopy->_oneFavoritesStorage;
  if (!oneFavoritesStorage)
  {
    v4 = objc_alloc_init(MapsSuggestionsMapsSyncShortcutStorage);
    v5 = selfCopy->_oneFavoritesStorage;
    selfCopy->_oneFavoritesStorage = v4;

    oneFavoritesStorage = selfCopy->_oneFavoritesStorage;
  }

  v6 = oneFavoritesStorage;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneRoutineConnector
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneRoutineConnector = selfCopy->_oneRoutineConnector;
  if (!oneRoutineConnector)
  {
    v4 = objc_alloc_init(MapsSuggestionsRealRoutineConnector);
    v5 = selfCopy->_oneRoutineConnector;
    selfCopy->_oneRoutineConnector = v4;

    oneRoutineConnector = selfCopy->_oneRoutineConnector;
  }

  v6 = oneRoutineConnector;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneNetworkRequester
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneNetworkRequester = selfCopy->_oneNetworkRequester;
  if (!oneNetworkRequester)
  {
    v4 = [[MapsSuggestionsRealNetworkRequester alloc] initFromResourceDepot:selfCopy];
    v5 = selfCopy->_oneNetworkRequester;
    selfCopy->_oneNetworkRequester = v4;

    oneNetworkRequester = selfCopy->_oneNetworkRequester;
  }

  v6 = oneNetworkRequester;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneFlightRequester
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneFlightRequester = selfCopy->_oneFlightRequester;
  if (!oneFlightRequester)
  {
    v4 = objc_alloc_init(MapsSuggestionsRealFlightRequester);
    v5 = selfCopy->_oneFlightRequester;
    selfCopy->_oneFlightRequester = v4;

    oneFlightRequester = selfCopy->_oneFlightRequester;
  }

  v6 = oneFlightRequester;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneFavorites
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneFavorites = selfCopy->_oneFavorites;
  if (!oneFavorites)
  {
    v4 = [[MapsSuggestionsShortcutManager alloc] initFromResourceDepot:selfCopy];
    v5 = selfCopy->_oneFavorites;
    selfCopy->_oneFavorites = v4;

    oneFavorites = selfCopy->_oneFavorites;
  }

  v6 = oneFavorites;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneRoutine
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneRoutine = selfCopy->_oneRoutine;
  if (!oneRoutine)
  {
    v4 = [[MapsSuggestionsRoutine alloc] initFromResourceDepot:selfCopy];
    v5 = selfCopy->_oneRoutine;
    selfCopy->_oneRoutine = v4;

    oneRoutine = selfCopy->_oneRoutine;
  }

  v6 = oneRoutine;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneMapsSyncConnector
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneMapsSyncConnector = selfCopy->_oneMapsSyncConnector;
  if (!oneMapsSyncConnector)
  {
    v4 = objc_alloc_init(MapsSuggestionsRealMapsSyncConnector);
    v5 = selfCopy->_oneMapsSyncConnector;
    selfCopy->_oneMapsSyncConnector = v4;

    oneMapsSyncConnector = selfCopy->_oneMapsSyncConnector;
  }

  v6 = oneMapsSyncConnector;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneContacts
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneContacts = selfCopy->_oneContacts;
  if (!oneContacts)
  {
    v4 = [[MapsSuggestionsContacts alloc] initFromResourceDepot:selfCopy];
    v5 = selfCopy->_oneContacts;
    selfCopy->_oneContacts = v4;

    oneContacts = selfCopy->_oneContacts;
  }

  v6 = oneContacts;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneContactsConnector
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneContactsConnector = selfCopy->_oneContactsConnector;
  if (!oneContactsConnector)
  {
    v4 = objc_alloc_init(MapsSuggestionsRealContactsConnector);
    v5 = selfCopy->_oneContactsConnector;
    selfCopy->_oneContactsConnector = v4;

    oneContactsConnector = selfCopy->_oneContactsConnector;
  }

  v6 = oneContactsConnector;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneVirtualGarageConnector
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneVirtualGarageConnector = selfCopy->_oneVirtualGarageConnector;
  if (!oneVirtualGarageConnector)
  {
    v4 = objc_alloc_init(MapsSuggestionsRealVirtualGarageConnector);
    v5 = selfCopy->_oneVirtualGarageConnector;
    selfCopy->_oneVirtualGarageConnector = v4;

    oneVirtualGarageConnector = selfCopy->_oneVirtualGarageConnector;
  }

  v6 = oneVirtualGarageConnector;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneFavoritesSuggestor
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneFavoritesSuggestor = selfCopy->_oneFavoritesSuggestor;
  if (!oneFavoritesSuggestor)
  {
    v4 = [[MapsSuggestionsRoutineShortcutSuggestor alloc] initFromResourceDepot:selfCopy];
    v5 = selfCopy->_oneFavoritesSuggestor;
    selfCopy->_oneFavoritesSuggestor = v4;

    oneFavoritesSuggestor = selfCopy->_oneFavoritesSuggestor;
  }

  v6 = oneFavoritesSuggestor;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneMapsSync
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneMapsSync = selfCopy->_oneMapsSync;
  if (!oneMapsSync)
  {
    v4 = [[MapsSuggestionsMapsSync alloc] initFromResourceDepot:selfCopy];
    v5 = selfCopy->_oneMapsSync;
    selfCopy->_oneMapsSync = v4;

    oneMapsSync = selfCopy->_oneMapsSync;
  }

  v6 = oneMapsSync;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneInsights
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneInsights = selfCopy->_oneInsights;
  if (!oneInsights)
  {
    v4 = [[MapsSuggestionsRealInsights alloc] initFromResourceDepot:selfCopy];
    v5 = selfCopy->_oneInsights;
    selfCopy->_oneInsights = v4;

    oneInsights = selfCopy->_oneInsights;
  }

  v6 = oneInsights;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)onePortrait
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  onePortrait = selfCopy->_onePortrait;
  if (!onePortrait)
  {
    v4 = [[MapsSuggestionsPortrait alloc] initFromResourceDepot:selfCopy];
    v5 = selfCopy->_onePortrait;
    selfCopy->_onePortrait = v4;

    onePortrait = selfCopy->_onePortrait;
  }

  v6 = onePortrait;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)onePortraitConnector
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  onePortraitConnector = selfCopy->_onePortraitConnector;
  if (!onePortraitConnector)
  {
    v4 = objc_alloc_init(MapsSuggestionsRealPortraitConnector);
    v5 = selfCopy->_onePortraitConnector;
    selfCopy->_onePortraitConnector = v4;

    onePortraitConnector = selfCopy->_onePortraitConnector;
  }

  v6 = onePortraitConnector;
  objc_sync_exit(selfCopy);

  return v6;
}

- (MapsSuggestionsSelfBuildingResourceDepot)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = MapsSuggestionsSelfBuildingResourceDepot;
  v5 = [(MapsSuggestionsSelfBuildingResourceDepot *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  objc_storeStrong(v4 + 1, self->_name);
  objc_storeStrong(v4 + 3, self->_oneNetworkRequester);
  objc_storeStrong(v4 + 4, self->_oneRoutineConnector);
  objc_storeStrong(v4 + 5, self->_oneRoutine);
  objc_storeStrong(v4 + 6, self->_onePortraitConnector);
  objc_storeStrong(v4 + 7, self->_onePortrait);
  objc_storeStrong(v4 + 8, self->_oneBiomeConnector);
  objc_storeStrong(v4 + 9, self->_oneBiome);
  objc_storeStrong(v4 + 10, self->_oneContactActivity);
  objc_storeStrong(v4 + 11, self->_oneFindMyConnector);
  objc_storeStrong(v4 + 12, self->_oneFindMy);
  objc_storeStrong(v4 + 13, self->_oneEventKitConnector);
  objc_storeStrong(v4 + 14, self->_oneEventKit);
  objc_storeStrong(v4 + 15, self->_oneVirtualGarageConnector);
  objc_storeStrong(v4 + 16, self->_oneVirtualGarage);
  objc_storeStrong(v4 + 17, self->_oneMapsSyncConnector);
  objc_storeStrong(v4 + 18, self->_oneMapsSync);
  objc_storeStrong(v4 + 19, self->_oneContactsConnector);
  objc_storeStrong(v4 + 20, self->_oneContacts);
  objc_storeStrong(v4 + 21, self->_oneFavoritesStorage);
  objc_storeStrong(v4 + 22, self->_oneFavoritesSuggestor);
  objc_storeStrong(v4 + 23, self->_oneFavorites);
  objc_storeStrong(v4 + 24, self->_oneUser);
  objc_storeStrong(v4 + 25, self->_oneAppProtectionConnector);
  objc_storeStrong(v4 + 26, self->_oneAppGuardian);
  objc_storeStrong(v4 + 27, self->_oneInsights);
  objc_storeStrong(v4 + 28, self->_oneFinanceKitConnector);
  objc_storeStrong(v4 + 29, self->_oneFinanceKit);
  objc_storeStrong(v4 + 30, self->_oneLocationUpdater);
  objc_storeStrong(v4 + 31, self->_oneFlightRequester);
  objc_storeStrong(v4 + 32, self->_oneFlightUpdater);
  return v4;
}

- (void)setOneSourceDelegate:(id)delegate
{
  delegateCopy = delegate;
  obj = self;
  objc_sync_enter(obj);
  oneSourceDelegate = obj->_oneSourceDelegate;
  obj->_oneSourceDelegate = delegateCopy;

  objc_sync_exit(obj);
}

- (void)setOneNetworkRequester:(id)requester
{
  v16 = *MEMORY[0x1E69E9840];
  requesterCopy = requester;
  if (requesterCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneNetworkRequester, requester);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneNetworkRequester:]";
      v14 = 2082;
      v15 = "nil == (oneNetworkRequester)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneNetworkRequester", &v8, 0x26u);
    }
  }
}

- (void)setOneRoutineConnector:(id)connector
{
  v16 = *MEMORY[0x1E69E9840];
  connectorCopy = connector;
  if (connectorCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneRoutineConnector, connector);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneRoutineConnector:]";
      v14 = 2082;
      v15 = "nil == (oneRoutineConnector)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneRoutineConnector", &v8, 0x26u);
    }
  }
}

- (void)setOneRoutine:(id)routine
{
  v16 = *MEMORY[0x1E69E9840];
  routineCopy = routine;
  if (routineCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneRoutine, routine);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneRoutine:]";
      v14 = 2082;
      v15 = "nil == (oneRoutine)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneRoutine", &v8, 0x26u);
    }
  }
}

- (void)setOnePortraitConnector:(id)connector
{
  v16 = *MEMORY[0x1E69E9840];
  connectorCopy = connector;
  if (connectorCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_onePortraitConnector, connector);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOnePortraitConnector:]";
      v14 = 2082;
      v15 = "nil == (onePortraitConnector)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the onePortraitConnector", &v8, 0x26u);
    }
  }
}

- (void)setOnePortrait:(id)portrait
{
  v16 = *MEMORY[0x1E69E9840];
  portraitCopy = portrait;
  if (portraitCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_onePortrait, portrait);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOnePortrait:]";
      v14 = 2082;
      v15 = "nil == (onePortrait)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the onePortrait", &v8, 0x26u);
    }
  }
}

- (void)setOneBiomeConnector:(id)connector
{
  v16 = *MEMORY[0x1E69E9840];
  connectorCopy = connector;
  if (connectorCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneBiomeConnector, connector);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneBiomeConnector:]";
      v14 = 2082;
      v15 = "nil == (oneBiomeConnector)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneBiomeConnector", &v8, 0x26u);
    }
  }
}

- (void)setOneBiome:(id)biome
{
  v16 = *MEMORY[0x1E69E9840];
  biomeCopy = biome;
  if (biomeCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneBiome, biome);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneBiome:]";
      v14 = 2082;
      v15 = "nil == (oneBiome)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneBiome", &v8, 0x26u);
    }
  }
}

- (void)setOneContactActivity:(id)activity
{
  v16 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  if (activityCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneContactActivity, activity);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneContactActivity:]";
      v14 = 2082;
      v15 = "nil == (oneContactActivity)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneContactActivity", &v8, 0x26u);
    }
  }
}

- (void)setOneFindMyConnector:(id)connector
{
  v16 = *MEMORY[0x1E69E9840];
  connectorCopy = connector;
  if (connectorCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneFindMyConnector, connector);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneFindMyConnector:]";
      v14 = 2082;
      v15 = "nil == (oneFindMyConnector)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneFindMyConnector", &v8, 0x26u);
    }
  }
}

- (void)setOneFindMy:(id)my
{
  v16 = *MEMORY[0x1E69E9840];
  myCopy = my;
  if (myCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneFindMy, my);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneFindMy:]";
      v14 = 2082;
      v15 = "nil == (oneFindMy)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneFindMy", &v8, 0x26u);
    }
  }
}

- (void)setOneEventKitConnector:(id)connector
{
  v16 = *MEMORY[0x1E69E9840];
  connectorCopy = connector;
  if (connectorCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneEventKitConnector, connector);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneEventKitConnector:]";
      v14 = 2082;
      v15 = "nil == (oneEventKitConnector)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneEventKitConnector", &v8, 0x26u);
    }
  }
}

- (void)setOneEventKit:(id)kit
{
  v16 = *MEMORY[0x1E69E9840];
  kitCopy = kit;
  if (kitCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneEventKit, kit);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneEventKit:]";
      v14 = 2082;
      v15 = "nil == (oneEventKit)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneEventKit", &v8, 0x26u);
    }
  }
}

- (void)setOneVirtualGarageConnector:(id)connector
{
  v16 = *MEMORY[0x1E69E9840];
  connectorCopy = connector;
  if (connectorCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneVirtualGarageConnector, connector);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneVirtualGarageConnector:]";
      v14 = 2082;
      v15 = "nil == (oneVirtualGarageConnector)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneVirtualGarageConnector", &v8, 0x26u);
    }
  }
}

- (void)setOneVirtualGarage:(id)garage
{
  v16 = *MEMORY[0x1E69E9840];
  garageCopy = garage;
  if (garageCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneVirtualGarage, garage);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneVirtualGarage:]";
      v14 = 2082;
      v15 = "nil == (oneVirtualGarage)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneVirtualGarage", &v8, 0x26u);
    }
  }
}

- (void)setOneMapsSyncConnector:(id)connector
{
  v16 = *MEMORY[0x1E69E9840];
  connectorCopy = connector;
  if (connectorCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneMapsSyncConnector, connector);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneMapsSyncConnector:]";
      v14 = 2082;
      v15 = "nil == (oneMapsSyncConnector)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneMapsSyncConnector", &v8, 0x26u);
    }
  }
}

- (void)setOneMapsSync:(id)sync
{
  v16 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  if (syncCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneMapsSync, sync);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneMapsSync:]";
      v14 = 2082;
      v15 = "nil == (oneMapsSync)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneMapsSync", &v8, 0x26u);
    }
  }
}

- (void)setOneContactsConnector:(id)connector
{
  v16 = *MEMORY[0x1E69E9840];
  connectorCopy = connector;
  if (connectorCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneContactsConnector, connector);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneContactsConnector:]";
      v14 = 2082;
      v15 = "nil == (oneContactsConnector)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneContactsConnector", &v8, 0x26u);
    }
  }
}

- (void)setOneContacts:(id)contacts
{
  v16 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  if (contactsCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneContacts, contacts);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneContacts:]";
      v14 = 2082;
      v15 = "nil == (oneContacts)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneContacts", &v8, 0x26u);
    }
  }
}

- (void)setOneFavorites:(id)favorites
{
  v16 = *MEMORY[0x1E69E9840];
  favoritesCopy = favorites;
  if (favoritesCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneFavorites, favorites);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneFavorites:]";
      v14 = 2082;
      v15 = "nil == (oneFavorites)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneFavorites", &v8, 0x26u);
    }
  }
}

- (void)setOneUser:(id)user
{
  v16 = *MEMORY[0x1E69E9840];
  userCopy = user;
  if (userCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneUser, user);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneUser:]";
      v14 = 2082;
      v15 = "nil == (oneUser)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneUser", &v8, 0x26u);
    }
  }
}

- (void)setOneAppProtectionConnector:(id)connector
{
  v16 = *MEMORY[0x1E69E9840];
  connectorCopy = connector;
  if (connectorCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneAppProtectionConnector, connector);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneAppProtectionConnector:]";
      v14 = 2082;
      v15 = "nil == (oneAppProtectionConnector)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneAppProtectionConnector", &v8, 0x26u);
    }
  }
}

- (void)setOneAppGuardian:(id)guardian
{
  v16 = *MEMORY[0x1E69E9840];
  guardianCopy = guardian;
  if (guardianCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneAppGuardian, guardian);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneAppGuardian:]";
      v14 = 2082;
      v15 = "nil == (oneAppGuardian)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneAppGuardian", &v8, 0x26u);
    }
  }
}

- (void)setOneInsights:(id)insights
{
  v16 = *MEMORY[0x1E69E9840];
  insightsCopy = insights;
  if (insightsCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneInsights, insights);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneInsights:]";
      v14 = 2082;
      v15 = "nil == (oneInsights)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneInsights", &v8, 0x26u);
    }
  }
}

- (void)setOneLocationUpdater:(id)updater
{
  v16 = *MEMORY[0x1E69E9840];
  updaterCopy = updater;
  if (updaterCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneLocationUpdater, updater);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneLocationUpdater:]";
      v14 = 2082;
      v15 = "nil == (oneLocationUpdater)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneLocationUpdater", &v8, 0x26u);
    }
  }
}

- (void)setOneFlightRequester:(id)requester
{
  v16 = *MEMORY[0x1E69E9840];
  requesterCopy = requester;
  if (requesterCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneFlightRequester, requester);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneFlightRequester:]";
      v14 = 2082;
      v15 = "nil == (oneFlightRequester)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneFlightRequester", &v8, 0x26u);
    }
  }
}

- (void)setOneFlightUpdater:(id)updater
{
  v16 = *MEMORY[0x1E69E9840];
  updaterCopy = updater;
  if (updaterCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_oneFlightUpdater, updater);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSelfBuildingResourceDepot.m";
      v10 = 1024;
      v11 = 297;
      v12 = 2082;
      v13 = "[MapsSuggestionsSelfBuildingResourceDepot setOneFlightUpdater:]";
      v14 = 2082;
      v15 = "nil == (oneFlightUpdater)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. You cannot unset the oneFlightUpdater", &v8, 0x26u);
    }
  }
}

- (id)oneBiomeConnector
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneBiomeConnector = selfCopy->_oneBiomeConnector;
  if (!oneBiomeConnector)
  {
    v4 = objc_alloc_init(MapsSuggestionsRealBiomeConnector);
    v5 = selfCopy->_oneBiomeConnector;
    selfCopy->_oneBiomeConnector = v4;

    oneBiomeConnector = selfCopy->_oneBiomeConnector;
  }

  v6 = oneBiomeConnector;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneBiome
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneBiome = selfCopy->_oneBiome;
  if (!oneBiome)
  {
    v4 = [[MapsSuggestionsBiome alloc] initFromResourceDepot:selfCopy];
    v5 = selfCopy->_oneBiome;
    selfCopy->_oneBiome = v4;

    oneBiome = selfCopy->_oneBiome;
  }

  v6 = oneBiome;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneContactActivity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneContactActivity = selfCopy->_oneContactActivity;
  if (!oneContactActivity)
  {
    v4 = [[_TtC15MapsSuggestions30MapsSuggestionsContactActivity alloc] initFromResourceDepot:selfCopy];
    v5 = selfCopy->_oneContactActivity;
    selfCopy->_oneContactActivity = v4;

    oneContactActivity = selfCopy->_oneContactActivity;
  }

  v6 = oneContactActivity;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneFindMyConnector
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneFindMyConnector = selfCopy->_oneFindMyConnector;
  if (!oneFindMyConnector)
  {
    v4 = objc_alloc_init(_TtC15MapsSuggestions34MapsSuggestionsRealFindMyConnector);
    v5 = selfCopy->_oneFindMyConnector;
    selfCopy->_oneFindMyConnector = v4;

    oneFindMyConnector = selfCopy->_oneFindMyConnector;
  }

  v6 = oneFindMyConnector;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneFindMy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneFindMy = selfCopy->_oneFindMy;
  if (!oneFindMy)
  {
    v4 = [[_TtC15MapsSuggestions21MapsSuggestionsFindMy alloc] initFromResourceDepot:selfCopy];
    v5 = selfCopy->_oneFindMy;
    selfCopy->_oneFindMy = v4;

    oneFindMy = selfCopy->_oneFindMy;
  }

  v6 = oneFindMy;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneEventKitConnector
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneEventKitConnector = selfCopy->_oneEventKitConnector;
  if (!oneEventKitConnector)
  {
    v4 = objc_alloc_init(MapsSuggestionsRealEventKitConnector);
    v5 = selfCopy->_oneEventKitConnector;
    selfCopy->_oneEventKitConnector = v4;

    oneEventKitConnector = selfCopy->_oneEventKitConnector;
  }

  v6 = oneEventKitConnector;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneEventKit
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneEventKit = selfCopy->_oneEventKit;
  if (!oneEventKit)
  {
    v4 = [[MapsSuggestionsEventKit alloc] initFromResourceDepot:selfCopy];
    v5 = selfCopy->_oneEventKit;
    selfCopy->_oneEventKit = v4;

    oneEventKit = selfCopy->_oneEventKit;
  }

  v6 = oneEventKit;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneUser
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneUser = selfCopy->_oneUser;
  if (!oneUser)
  {
    v4 = [MapsSuggestionsUser alloc];
    oneFavorites = [(MapsSuggestionsSelfBuildingResourceDepot *)selfCopy oneFavorites];
    oneRoutine = [(MapsSuggestionsSelfBuildingResourceDepot *)selfCopy oneRoutine];
    v7 = [(MapsSuggestionsUser *)v4 initWithMeCardReader:oneFavorites routine:oneRoutine];
    v8 = selfCopy->_oneUser;
    selfCopy->_oneUser = v7;

    oneUser = selfCopy->_oneUser;
  }

  v9 = oneUser;
  objc_sync_exit(selfCopy);

  return v9;
}

- (id)oneFinanceKitConnector
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneFinanceKitConnector = selfCopy->_oneFinanceKitConnector;
  if (!oneFinanceKitConnector)
  {
    v4 = objc_alloc_init(_TtC15MapsSuggestions38MapsSuggestionsRealFinanceKitConnector);
    v5 = selfCopy->_oneFinanceKitConnector;
    selfCopy->_oneFinanceKitConnector = v4;

    oneFinanceKitConnector = selfCopy->_oneFinanceKitConnector;
  }

  v6 = oneFinanceKitConnector;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneFinanceKit
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  oneFinanceKit = selfCopy->_oneFinanceKit;
  if (!oneFinanceKit)
  {
    v4 = [[_TtC15MapsSuggestions25MapsSuggestionsFinanceKit alloc] initFromResourceDepot:selfCopy];
    v5 = selfCopy->_oneFinanceKit;
    selfCopy->_oneFinanceKit = v4;

    oneFinanceKit = selfCopy->_oneFinanceKit;
  }

  v6 = oneFinanceKit;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)oneLocationUpdater
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_oneLocationUpdater;
  objc_sync_exit(selfCopy);

  return v3;
}

@end