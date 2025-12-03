@interface MapsSuggestionsMapsSync
- (MapsSuggestionsEntry)_createEntryFromRecentHistoryMultiPointRoute:(MapsSuggestionsEntry *)route;
- (MapsSuggestionsEntry)_createEntryFromRecentHistoryPlace:(uint64_t)place;
- (MapsSuggestionsEntry)_createEntryFromRecentHistoryRoute:(MapsSuggestionsEntry *)route;
- (MapsSuggestionsMapsSync)initWithMapsSyncConnector:(id)connector;
- (NSString)uniqueName;
- (char)canProduceRatingRequestForMapItem:(id)item maxAge:(double)age handler:(id)handler;
- (char)deleteEntry:(id)entry handler:(id)handler;
- (char)didProduceRatingRequestForMapItem:(id)item handler:(id)handler;
- (char)durationSinceLastTransitHistoryRoute:(id)route;
- (char)entriesFromHistoryWithHandler:(id)handler;
- (char)homeWorkSchoolShortcutsFromFavoritesWithHandler:(id)handler;
- (char)mapItemsForHistoricPlaces:(BOOL)places routes:(BOOL)routes maxAge:(double)age handler:(id)handler;
- (char)shortcutsFromFavoritesWithHandler:(id)handler;
- (char)userHasFavoriteTransitLinesWithHandler:(id)handler;
- (char)userHasFavoriteTransitPOIsWithHandler:(id)handler;
- (id).cxx_construct;
- (id)initFromResourceDepot:(id)depot;
- (uint64_t)_addFieldsToSuggestionsEntry:(uint64_t)entry;
- (void)_updateEntry:(void *)entry withEvInfo:;
- (void)addMapsSyncObserver:(id)observer forContentType:(int64_t)type;
- (void)mapsSyncDidChangeForType:(int64_t)type;
- (void)removeMapsSyncObserver:(id)observer forContentType:(int64_t)type;
- (void)removeMapsSyncObserverForAllContentTypes:(id)types;
@end

@implementation MapsSuggestionsMapsSync

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (MapsSuggestionsMapsSync)initWithMapsSyncConnector:(id)connector
{
  v30 = *MEMORY[0x1E69E9840];
  connectorCopy = connector;
  v28.receiver = self;
  v28.super_class = MapsSuggestionsMapsSync;
  v6 = [(MapsSuggestionsMapsSync *)&v28 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(buf, @"MapsSuggestionsMapsSyncQueue", v7);
    v8 = *buf;
    *buf = 0;
    innerQueue = v6->_queue._innerQueue;
    v6->_queue._innerQueue = v8;

    v10 = *&buf[8];
    *&buf[8] = 0;
    name = v6->_queue._name;
    v6->_queue._name = v10;

    objc_storeStrong(&v6->_connector, connector);
    [(MapsSuggestionsMapsSyncConnector *)v6->_connector setDelegate:v6];
    v12 = [MapsSuggestionsObservers alloc];
    v13 = v6->_queue._innerQueue;
    v14 = [(MapsSuggestionsObservers *)v12 initWithCallbackQueue:v13 name:@"MapsSuggestionsMapsSyncHistoryObservers"];
    historyObservers = v6->_historyObservers;
    v6->_historyObservers = v14;

    v16 = [MapsSuggestionsObservers alloc];
    v17 = v6->_queue._innerQueue;
    v18 = [(MapsSuggestionsObservers *)v16 initWithCallbackQueue:v17 name:@"MapsSuggestionsMapsSyncTransitItemsObservers"];
    transitItemObservers = v6->_transitItemObservers;
    v6->_transitItemObservers = v18;

    v20 = [MapsSuggestionsObservers alloc];
    v21 = v6->_queue._innerQueue;
    v22 = [(MapsSuggestionsObservers *)v20 initWithCallbackQueue:v21 name:@"MapsSuggestionsMapsSyncFavoriteItemsObservers"];
    favoriteItemObservers = v6->_favoriteItemObservers;
    v6->_favoriteItemObservers = v22;

    v24 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [(MapsSuggestionsMapsSync *)v6 uniqueName];
      uniqueName2 = [(MapsSuggestionsMapsSyncConnector *)v6->_connector uniqueName];
      *buf = 138412546;
      *&buf[4] = uniqueName;
      *&buf[12] = 2112;
      *&buf[14] = uniqueName2;
      _os_log_impl(&dword_1C5126000, v24, OS_LOG_TYPE_DEBUG, "%@ is using %@", buf, 0x16u);
    }
  }

  return v6;
}

- (id)initFromResourceDepot:(id)depot
{
  v19 = *MEMORY[0x1E69E9840];
  depotCopy = depot;
  v5 = depotCopy;
  if (!depotCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v13 = 1024;
      v14 = 72;
      v15 = 2082;
      v16 = "[MapsSuggestionsMapsSync initFromResourceDepot:]";
      v17 = 2082;
      v18 = "nil == (resourceDepot)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to build from!", &v11, 0x26u);
    }

    goto LABEL_9;
  }

  oneMapsSyncConnector = [depotCopy oneMapsSyncConnector];

  if (!oneMapsSyncConnector)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v13 = 1024;
      v14 = 73;
      v15 = 2082;
      v16 = "[MapsSuggestionsMapsSync initFromResourceDepot:]";
      v17 = 2082;
      v18 = "nil == (resourceDepot.oneMapsSyncConnector)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires One MapsSyncConnector!", &v11, 0x26u);
    }

LABEL_9:

    selfCopy = 0;
    goto LABEL_10;
  }

  oneMapsSyncConnector2 = [v5 oneMapsSyncConnector];
  self = [(MapsSuggestionsMapsSync *)self initWithMapsSyncConnector:oneMapsSyncConnector2];

  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (char)userHasFavoriteTransitLinesWithHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    objc_initWeak(location, self);
    connector = self->_connector;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__MapsSuggestionsMapsSync_userHasFavoriteTransitLinesWithHandler___block_invoke;
    v9[3] = &unk_1E81F7228;
    objc_copyWeak(&v11, location);
    v10 = handlerCopy;
    v6 = [(MapsSuggestionsMapsSyncConnector *)connector allContentOfType:2 handler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v13 = 1024;
      v14 = 80;
      v15 = 2082;
      v16 = "[MapsSuggestionsMapsSync userHasFavoriteTransitLinesWithHandler:]";
      v17 = 2082;
      v18 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. MapsSuggestionsUserHasFavoriteTransitItemBlock handler cannot be nil!", location, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

void __66__MapsSuggestionsMapsSync_userHasFavoriteTransitLinesWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__MapsSuggestionsMapsSync_userHasFavoriteTransitLinesWithHandler___block_invoke_177;
    v8[3] = &unk_1E81F5528;
    v9 = v3;
    v10 = *(a1 + 32);
    dispatch_async(v6, v8);

    v7 = v9;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "MapsSuggestionsMapsSync.mm";
      v13 = 1026;
      v14 = 85;
      v15 = 2082;
      v16 = "[MapsSuggestionsMapsSync userHasFavoriteTransitLinesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

uint64_t __66__MapsSuggestionsMapsSync_userHasFavoriteTransitLinesWithHandler___block_invoke_177(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
}

- (char)userHasFavoriteTransitPOIsWithHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    objc_initWeak(location, self);
    connector = self->_connector;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__MapsSuggestionsMapsSync_userHasFavoriteTransitPOIsWithHandler___block_invoke;
    v9[3] = &unk_1E81F7228;
    objc_copyWeak(&v11, location);
    v10 = handlerCopy;
    v6 = [(MapsSuggestionsMapsSyncConnector *)connector allContentOfType:3 handler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v13 = 1024;
      v14 = 102;
      v15 = 2082;
      v16 = "[MapsSuggestionsMapsSync userHasFavoriteTransitPOIsWithHandler:]";
      v17 = 2082;
      v18 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. MapsSuggestionsUserHasFavoriteTransitItemBlock handler cannot be nil!", location, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

void __65__MapsSuggestionsMapsSync_userHasFavoriteTransitPOIsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__MapsSuggestionsMapsSync_userHasFavoriteTransitPOIsWithHandler___block_invoke_181;
    v8[3] = &unk_1E81F5528;
    v9 = v3;
    v10 = *(a1 + 32);
    dispatch_async(v6, v8);

    v7 = v9;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "MapsSuggestionsMapsSync.mm";
      v13 = 1026;
      v14 = 107;
      v15 = 2082;
      v16 = "[MapsSuggestionsMapsSync userHasFavoriteTransitPOIsWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

uint64_t __65__MapsSuggestionsMapsSync_userHasFavoriteTransitPOIsWithHandler___block_invoke_181(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = MapsSuggestionsShortcutFromMSFavoriteItem(*(*(&v12 + 1) + 8 * i));
        if ([v6 type] == 1)
        {
          v7 = [v6 geoMapItem];
          v8 = MapsSuggestionsMapItemIsTransitStation(v7);

          if (v8)
          {
            v9 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              *v11 = 0;
              _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "User has at least one favorite transit stop", v11, 2u);
            }

            goto LABEL_16;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "User has no transit stops", v11, 2u);
  }

LABEL_16:

  return (*(*(a1 + 40) + 16))();
}

- (char)durationSinceLastTransitHistoryRoute:(id)route
{
  v19 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  if (routeCopy)
  {
    objc_initWeak(location, self);
    connector = self->_connector;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__MapsSuggestionsMapsSync_durationSinceLastTransitHistoryRoute___block_invoke;
    v9[3] = &unk_1E81F7228;
    objc_copyWeak(&v11, location);
    v10 = routeCopy;
    v6 = [(MapsSuggestionsMapsSyncConnector *)connector allContentOfType:1 handler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v13 = 1024;
      v14 = 136;
      v15 = 2082;
      v16 = "[MapsSuggestionsMapsSync durationSinceLastTransitHistoryRoute:]";
      v17 = 2082;
      v18 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. MapsSuggestionsDurationSinceLastTransitRouteBlock handler cannot be nil!", location, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

void __64__MapsSuggestionsMapsSync_durationSinceLastTransitHistoryRoute___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__MapsSuggestionsMapsSync_durationSinceLastTransitHistoryRoute___block_invoke_182;
    v8[3] = &unk_1E81F5528;
    v9 = v3;
    v10 = *(a1 + 32);
    dispatch_async(v6, v8);

    v7 = v9;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "MapsSuggestionsMapsSync.mm";
      v13 = 1026;
      v14 = 141;
      v15 = 2082;
      v16 = "[MapsSuggestionsMapsSync durationSinceLastTransitHistoryRoute:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __64__MapsSuggestionsMapsSync_durationSinceLastTransitHistoryRoute___block_invoke_182(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *v23;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;

          v10 = [v9 routeRequestStorage];
          v11 = [v10 transportType] == 1;

          v5 |= v11;
          v4 = v9;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v3);

    if (v5)
    {
      v12 = MapsSuggestionsNow();
      v13 = [v4 createTime];
      [v12 timeIntervalSinceDate:v13];
      v15 = v14;

      (*(*(a1 + 40) + 16))(v15);
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v27 = v15;
        _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "Time since the transit history route: %f", buf, 0xCu);
      }

      goto LABEL_17;
    }
  }

  else
  {

    v4 = 0;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = GEOErrorDomain();
  v28 = *MEMORY[0x1E696A588];
  v29 = @"There is no transit history route";
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v16 = [v17 initWithDomain:v18 code:-8 userInfo:v19];

  (*(*(a1 + 40) + 16))(0.0);
  v20 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = [v16 localizedDescription];
    *buf = 138412290;
    v27 = *&v21;
    _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

LABEL_17:
}

- (char)entriesFromHistoryWithHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "entriesFromHistoryWithHandler", buf, 2u);
  }

  if (handlerCopy)
  {
    objc_initWeak(buf, self);
    v6 = self->_queue._innerQueue;
    connector = self->_connector;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__MapsSuggestionsMapsSync_entriesFromHistoryWithHandler___block_invoke;
    v12[3] = &unk_1E81F7270;
    v8 = v6;
    v13 = v8;
    objc_copyWeak(&v15, buf);
    v14 = handlerCopy;
    v9 = [(MapsSuggestionsMapsSyncConnector *)connector allContentOfType:1 handler:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v18 = 1024;
      v19 = 180;
      v20 = 2082;
      v21 = "[MapsSuggestionsMapsSync entriesFromHistoryWithHandler:]";
      v22 = 2082;
      v23 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    v9 = 0;
  }

  return v9;
}

void __57__MapsSuggestionsMapsSync_entriesFromHistoryWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_21];

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v13 = [v4 count];
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Received %u RecentHistory items from MapsSync", buf, 8u);
  }

  v6 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MapsSuggestionsMapsSync_entriesFromHistoryWithHandler___block_invoke_190;
  block[3] = &unk_1E81F5B00;
  objc_copyWeak(&v11, (a1 + 48));
  v9 = v4;
  v10 = *(a1 + 40);
  v7 = v4;
  dispatch_async(v6, block);

  objc_destroyWeak(&v11);
}

uint64_t __57__MapsSuggestionsMapsSync_entriesFromHistoryWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 createTime];
  v6 = [v4 createTime];
  v7 = [v5 compare:v6];

  return v7;
}

void __57__MapsSuggestionsMapsSync_entriesFromHistoryWithHandler___block_invoke_190(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v41 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v51 = "MapsSuggestionsMapsSync.mm";
      v52 = 1026;
      v53 = 195;
      v54 = 2082;
      v55 = "[MapsSuggestionsMapsSync entriesFromHistoryWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v41, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v43 = v41;
    goto LABEL_75;
  }

  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = *(a1 + 32);
  v1 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *v47;
LABEL_4:
    v5 = 0;
    while (1)
    {
      if (*v47 != v4)
      {
        objc_enumerationMutation(obj);
      }

      if (v3 & v2)
      {
        goto LABEL_67;
      }

      v6 = *(*(&v46 + 1) + 8 * v5);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || [v6 conformsToProtocol:&unk_1F448E618])
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || [v6 conformsToProtocol:&unk_1F4483090])
      {
        if ((v2 & 1) == 0)
        {
          v17 = v6;
          if ([v17 navigationInterrupted])
          {
            v18 = [(MapsSuggestionsMapsSync *)WeakRetained _createEntryFromRecentHistoryRoute:v17];
            v9 = v18;
            if (v18)
            {
              v10 = v18;
              v19 = [v10 expires];
              v20 = v19 == 0;

              if (v20)
              {
                v34 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1C5126000, v34, OS_LOG_TYPE_DEBUG, "Entry did not have an expiration set. Keeping it", buf, 2u);
                }
              }

              else
              {
                v21 = [v10 expires];
                v22 = MapsSuggestionsIsInThePast(v21);

                if (v22)
                {
                  v15 = GEOFindOrCreateLog();
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
                  {
                    v23 = [v10 title];
                    *buf = 138412290;
                    v51 = v23;
                    _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_INFO, "Dropping expired entry %@", buf, 0xCu);
                  }

                  goto LABEL_18;
                }
              }

LABEL_42:

              [v43 addObject:v10];
              v2 = 1;
              goto LABEL_43;
            }

            v10 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v24 = v10;
              v25 = "Could not create a ResumeRoute entry from the route data recieved from MapsSync";
LABEL_33:
              _os_log_impl(&dword_1C5126000, v24, OS_LOG_TYPE_ERROR, v25, buf, 2u);
            }

LABEL_34:
            v2 = 0;
            goto LABEL_35;
          }

LABEL_30:
          v2 = 0;
          goto LABEL_44;
        }

        goto LABEL_11;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v3 & 1 | (([v6 conformsToProtocol:&unk_1F448E678] & 1) == 0))
        {
          goto LABEL_45;
        }

LABEL_48:
        v27 = [(MapsSuggestionsMapsSync *)WeakRetained _createEntryFromRecentHistoryPlace:v6];
        v9 = v27;
        if (!v27)
        {
          v10 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "Could not create a RecentHistory entry from the place data recieved from MapsSync", buf, 2u);
          }

          goto LABEL_35;
        }

        v10 = v27;
        v28 = [v10 expires];
        v29 = v28 == 0;

        if (v29)
        {
          v35 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C5126000, v35, OS_LOG_TYPE_DEBUG, "Entry did not have an expiration set. Keeping it", buf, 2u);
          }
        }

        else
        {
          v30 = [v10 expires];
          v31 = MapsSuggestionsIsInThePast(v30);

          if (v31)
          {
            v32 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = [v10 title];
              *buf = 138412290;
              v51 = v33;
              _os_log_impl(&dword_1C5126000, v32, OS_LOG_TYPE_INFO, "Dropping expired entry %@", buf, 0xCu);
            }

LABEL_19:
            v9 = v10;
LABEL_35:

            v10 = v9;
LABEL_43:

LABEL_44:
            goto LABEL_45;
          }
        }

        [v43 addObject:v10];
        v3 = 1;
        goto LABEL_43;
      }

      if ((v3 & 1) == 0)
      {
        goto LABEL_48;
      }

      v3 = 1;
LABEL_45:
      if (v1 == ++v5)
      {
        v36 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
        v1 = v36;
        if (v36)
        {
          goto LABEL_4;
        }

        goto LABEL_67;
      }
    }

    if ((v2 & 1) == 0)
    {
      v7 = v6;
      if ([v7 navigationInterrupted])
      {
        v8 = [(MapsSuggestionsMapsSync *)WeakRetained _createEntryFromRecentHistoryMultiPointRoute:v7];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
          v11 = [v10 expires];
          v12 = v11 == 0;

          if (v12)
          {
            v26 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_1C5126000, v26, OS_LOG_TYPE_DEBUG, "Entry did not have an expiration set. Keeping it", buf, 2u);
            }
          }

          else
          {
            v13 = [v10 expires];
            v14 = MapsSuggestionsIsInThePast(v13);

            if (v14)
            {
              v15 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                v16 = [v10 title];
                *buf = 138412290;
                v51 = v16;
                _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_INFO, "Dropping expired entry %@", buf, 0xCu);
              }

LABEL_18:

              v2 = 0;
              goto LABEL_19;
            }
          }

          goto LABEL_42;
        }

        v10 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v24 = v10;
          v25 = "Could not create a ResumeRoute entry from the MPR data recieved from MapsSync";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      goto LABEL_30;
    }

LABEL_11:
    v2 = 1;
    goto LABEL_45;
  }

LABEL_67:

  v37 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v38 = NSStringFromMapsSuggestionsEntries(v43);
    *buf = 138412290;
    v51 = v38;
    _os_log_impl(&dword_1C5126000, v37, OS_LOG_TYPE_DEBUG, "Sending %@", buf, 0xCu);
  }

  v39 = *(a1 + 40);
  v40 = [v43 copy];
  (*(v39 + 16))(v39, v40, 0);

  if ([v43 count]>= 3)
  {
    v41 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v51 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v52 = 1024;
      v53 = 258;
      v54 = 2082;
      v55 = "[MapsSuggestionsMapsSync entriesFromHistoryWithHandler:]_block_invoke";
      v56 = 2082;
      v57 = "entriesToAdd.count > 2u";
      _os_log_impl(&dword_1C5126000, v41, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. 1 RecentHistory + 1 ResumeRoute cannot be more than 2 in total", buf, 0x26u);
    }

LABEL_75:
  }
}

- (MapsSuggestionsEntry)_createEntryFromRecentHistoryMultiPointRoute:(MapsSuggestionsEntry *)route
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (route)
  {
    v4 = [[MapsSuggestionsEntry alloc] initWithType:11 title:&stru_1F444C108];
    identifier = [v3 identifier];
    uUIDString = [identifier UUIDString];
    [(MapsSuggestionsEntry *)v4 setString:uUIDString forKey:@"MapsSuggestionsMapsSyncSourcePK"];

    [(MapsSuggestionsEntry *)v4 setString:@"MapsSuggestionsMapsSyncSourcePK" forKey:@"MapsSuggestionsPrimaryKey"];
    routeRequestStorage = [v3 routeRequestStorage];
    waypoints = [routeRequestStorage waypoints];
    lastObject = [waypoints lastObject];
    mapItemStorage = [lastObject mapItemStorage];
    [(MapsSuggestionsEntry *)v4 setGeoMapItem:mapItemStorage];

    geoMapItem = [(MapsSuggestionsEntry *)v4 geoMapItem];

    if (geoMapItem)
    {
      createTime = [v3 createTime];

      if (createTime)
      {
        createTime2 = [v3 createTime];
        [(MapsSuggestionsEntry *)v4 setDate:createTime2 forKey:@"MapsSuggestionsWhenItHappenedKey"];

        GEOConfigGetDouble();
        [(MapsSuggestionsEntry *)v4 setWeight:?];
        [(MapsSuggestionsMapsSync *)route _addFieldsToSuggestionsEntry:v4];
        createTime3 = [v3 createTime];
        GEOConfigGetDouble();
        v15 = [createTime3 dateByAddingTimeInterval:?];
        [(MapsSuggestionsEntry *)v4 setExpires:v15];

        [(MapsSuggestionsEntry *)v4 setBoolean:0 forKey:@"MapsSuggestionsIsResumingAnEVRoute"];
        geoMapItem2 = [(MapsSuggestionsEntry *)v4 geoMapItem];
        GEOConfigGetDouble();
        v18 = v17;
        v19 = geoMapItem2;
        v20 = v19;
        if (v19)
        {
          *v30 = 0;
          v21 = MapsSuggestionsDistanceFromHereToMapItem(v19, v30);
          v22 = *v30 < v18 && v21;
        }

        else
        {
          v25 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *v30 = 136446978;
            *&v30[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
            v31 = 1024;
            v32 = 731;
            v33 = 2082;
            v34 = "BOOL _isAlreadyThere(MapsSuggestionsMapItem *__strong, CLLocationDistance)";
            v35 = 2082;
            v36 = "nil == (mapItem)";
            _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem", v30, 0x26u);
          }

          v22 = 0;
        }

        [(MapsSuggestionsEntry *)v4 setBoolean:v22 forKey:@"MapsSuggestionsAlreadyThereKey"];
        if ([routeRequestStorage hasTransportType])
        {
          transportType = [routeRequestStorage transportType];
          if (transportType != 4)
          {
            v27 = [MEMORY[0x1E696AD98] numberWithInt:transportType];
            [(MapsSuggestionsEntry *)v4 setNumber:v27 forKey:@"MapsSuggestionsTransportTypeKey"];
          }
        }

        [(MapsSuggestionsEntry *)v4 setRouteRequestStorage:routeRequestStorage forKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
        -[MapsSuggestionsEntry setInteger:forKey:](v4, "setInteger:forKey:", [v3 routeProgressWaypointIndex], @"MapsSuggestionsResumeRouteWaypointIndex");
        sharedETAData = [v3 sharedETAData];
        [(MapsSuggestionsEntry *)v4 setData:sharedETAData forKey:@"MapsSuggestionsResumeRouteRouteSharedETAData"];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || [v3 conformsToProtocol:&unk_1F4483110])
        {
          [(MapsSuggestionsMapsSync *)route _updateEntry:v4 withEvInfo:v3];
        }

        route = v4;
        goto LABEL_21;
      }

      v24 = GEOFindOrCreateLog();
      [MapsSuggestionsMapsSync _createEntryFromRecentHistoryMultiPointRoute:v24];
    }

    else
    {
      v23 = GEOFindOrCreateLog();
      [MapsSuggestionsMapsSync _createEntryFromRecentHistoryMultiPointRoute:v23];
    }

    route = 0;
LABEL_21:
  }

  return route;
}

- (MapsSuggestionsEntry)_createEntryFromRecentHistoryRoute:(MapsSuggestionsEntry *)route
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (route)
  {
    v4 = [[MapsSuggestionsEntry alloc] initWithType:11 title:&stru_1F444C108];
    identifier = [v3 identifier];
    uUIDString = [identifier UUIDString];
    [(MapsSuggestionsEntry *)v4 setString:uUIDString forKey:@"MapsSuggestionsMapsSyncSourcePK"];

    [(MapsSuggestionsEntry *)v4 setString:@"MapsSuggestionsMapsSyncSourcePK" forKey:@"MapsSuggestionsPrimaryKey"];
    routeRequestStorage = [v3 routeRequestStorage];
    waypoints = [routeRequestStorage waypoints];
    lastObject = [waypoints lastObject];
    mapItemStorage = [lastObject mapItemStorage];
    [(MapsSuggestionsEntry *)v4 setGeoMapItem:mapItemStorage];

    geoMapItem = [(MapsSuggestionsEntry *)v4 geoMapItem];

    if (geoMapItem)
    {
      createTime = [v3 createTime];

      if (createTime)
      {
        createTime2 = [v3 createTime];
        [(MapsSuggestionsEntry *)v4 setDate:createTime2 forKey:@"MapsSuggestionsWhenItHappenedKey"];

        GEOConfigGetDouble();
        [(MapsSuggestionsEntry *)v4 setWeight:?];
        [(MapsSuggestionsMapsSync *)route _addFieldsToSuggestionsEntry:v4];
        createTime3 = [v3 createTime];
        GEOConfigGetDouble();
        v15 = [createTime3 dateByAddingTimeInterval:?];
        [(MapsSuggestionsEntry *)v4 setExpires:v15];

        [(MapsSuggestionsEntry *)v4 setBoolean:0 forKey:@"MapsSuggestionsIsResumingAnEVRoute"];
        geoMapItem2 = [(MapsSuggestionsEntry *)v4 geoMapItem];
        GEOConfigGetDouble();
        v18 = v17;
        v19 = geoMapItem2;
        v20 = v19;
        if (v19)
        {
          *v30 = 0;
          v21 = MapsSuggestionsDistanceFromHereToMapItem(v19, v30);
          v22 = *v30 < v18 && v21;
        }

        else
        {
          v25 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *v30 = 136446978;
            *&v30[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
            v31 = 1024;
            v32 = 731;
            v33 = 2082;
            v34 = "BOOL _isAlreadyThere(MapsSuggestionsMapItem *__strong, CLLocationDistance)";
            v35 = 2082;
            v36 = "nil == (mapItem)";
            _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem", v30, 0x26u);
          }

          v22 = 0;
        }

        [(MapsSuggestionsEntry *)v4 setBoolean:v22 forKey:@"MapsSuggestionsAlreadyThereKey"];
        sharedETAData = [v3 sharedETAData];
        [(MapsSuggestionsEntry *)v4 setData:sharedETAData forKey:@"MapsSuggestionsResumeRouteRouteSharedETAData"];

        if ([routeRequestStorage hasTransportType])
        {
          transportType = [routeRequestStorage transportType];
          if (transportType != 4)
          {
            v28 = [MEMORY[0x1E696AD98] numberWithInt:transportType];
            [(MapsSuggestionsEntry *)v4 setNumber:v28 forKey:@"MapsSuggestionsTransportTypeKey"];
          }
        }

        [(MapsSuggestionsEntry *)v4 setRouteRequestStorage:routeRequestStorage forKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || [v3 conformsToProtocol:&unk_1F4483110])
        {
          [(MapsSuggestionsMapsSync *)route _updateEntry:v4 withEvInfo:v3];
        }

        route = v4;
        goto LABEL_21;
      }

      v24 = GEOFindOrCreateLog();
      [MapsSuggestionsMapsSync _createEntryFromRecentHistoryMultiPointRoute:v24];
    }

    else
    {
      v23 = GEOFindOrCreateLog();
      [MapsSuggestionsMapsSync _createEntryFromRecentHistoryRoute:v23];
    }

    route = 0;
LABEL_21:
  }

  return route;
}

- (MapsSuggestionsEntry)_createEntryFromRecentHistoryPlace:(uint64_t)place
{
  v3 = a2;
  if (place)
  {
    v4 = [[MapsSuggestionsEntry alloc] initWithType:5 title:&stru_1F444C108];
    identifier = [v3 identifier];
    uUIDString = [identifier UUIDString];
    [(MapsSuggestionsEntry *)v4 setString:uUIDString forKey:@"MapsSuggestionsMapsSyncSourcePK"];

    [(MapsSuggestionsEntry *)v4 setString:@"MapsSuggestionsMapsSyncSourcePK" forKey:@"MapsSuggestionsPrimaryKey"];
    mapItemStorage = [v3 mapItemStorage];
    v8 = MapsSuggestionsMapItemConvertIfNeeded(mapItemStorage);
    [(MapsSuggestionsEntry *)v4 setGeoMapItem:v8];

    geoMapItem = [(MapsSuggestionsEntry *)v4 geoMapItem];

    if (geoMapItem)
    {
      createTime = [v3 createTime];

      if (createTime)
      {
        createTime2 = [v3 createTime];
        [(MapsSuggestionsEntry *)v4 setDate:createTime2 forKey:@"MapsSuggestionsWhenItHappenedKey"];

        GEOConfigGetDouble();
        [(MapsSuggestionsEntry *)v4 setWeight:?];
        [(MapsSuggestionsMapsSync *)place _addFieldsToSuggestionsEntry:v4];
        createTime3 = [v3 createTime];
        GEOConfigGetDouble();
        v13 = [createTime3 dateByAddingTimeInterval:?];
        [(MapsSuggestionsEntry *)v4 setExpires:v13];

        GEOConfigGetDouble();
        v15 = v14;
        v16 = MapsSuggestionsCurrentBestLocation();
        v17 = MapsSuggestionsLocationForEntry(v4);
        [v17 distanceFromLocation:v16];
        [(MapsSuggestionsEntry *)v4 setBoolean:v18 < v15 forKey:@"MapsSuggestionsAlreadyThereKey"];
        v19 = v4;

LABEL_5:
        goto LABEL_6;
      }

      v22 = GEOFindOrCreateLog();
      [MapsSuggestionsMapsSync _createEntryFromRecentHistoryMultiPointRoute:v22];
    }

    else
    {
      v21 = GEOFindOrCreateLog();
      [MapsSuggestionsMapsSync _createEntryFromRecentHistoryPlace:v21];
    }

    v19 = 0;
    goto LABEL_5;
  }

  v19 = 0;
LABEL_6:

  return v19;
}

- (char)mapItemsForHistoricPlaces:(BOOL)places routes:(BOOL)routes maxAge:(double)age handler:(id)handler
{
  routesCopy = routes;
  placesCopy = places;
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = "NO";
    if (placesCopy)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    *buf = 136315650;
    v23 = v13;
    if (routesCopy)
    {
      v12 = "YES";
    }

    v24 = 2080;
    *v25 = v12;
    *&v25[8] = 2048;
    *&v25[10] = age;
    _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "mapItemsForHistoricPlaces:%s routes:%s maxAge:%.1f", buf, 0x20u);
  }

  if (handlerCopy)
  {
    connector = self->_connector;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__MapsSuggestionsMapsSync_mapItemsForHistoricPlaces_routes_maxAge_handler___block_invoke;
    v18[3] = &unk_1E81F7298;
    v19 = handlerCopy;
    ageCopy = age;
    v21 = placesCopy;
    v15 = [(MapsSuggestionsMapsSyncConnector *)connector allContentOfType:1 handler:v18];
    v16 = v19;
  }

  else
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v24 = 1024;
      *v25 = 273;
      *&v25[4] = 2082;
      *&v25[6] = "[MapsSuggestionsMapsSync mapItemsForHistoricPlaces:routes:maxAge:handler:]";
      *&v25[14] = 2082;
      *&v25[16] = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    v15 = 0;
  }

  return v15;
}

void __75__MapsSuggestionsMapsSync_mapItemsForHistoricPlaces_routes_maxAge_handler___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v25 = v3;
  if (v3)
  {
    if ([v3 count])
    {
      v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v25, "count")}];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v4 = v25;
      v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (!v5)
      {
        goto LABEL_25;
      }

      v6 = *v28;
      while (1)
      {
        v7 = 0;
        do
        {
          if (*v28 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v27 + 1) + 8 * v7);
          v9 = [v8 createTime];
          v10 = MapsSuggestionsSecondsTo(v9);

          if (*(a1 + 40) >= -v10 && *(a1 + 48) == 1)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || ([v8 conformsToProtocol:&unk_1F448E678])
            {
              v11 = [v8 mapItemStorage];
              v12 = MapsSuggestionsMapItemConvertIfNeeded(v11);

              if (v12)
              {
                [v26 addObject:v12];
              }

LABEL_14:

              goto LABEL_15;
            }

            if (*(a1 + 48))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 || [v8 conformsToProtocol:&unk_1F4483090])
              {
                v13 = [v8 routeRequestStorage];
                v14 = [v13 waypoints];
                v12 = [v14 lastObject];

                v15 = [v12 geoMapItem];
                v16 = v15;
                if (v15)
                {
                  v17 = MapsSuggestionsMapItemConvertIfNeeded(v15);
                  if (v17)
                  {
                    [v26 addObject:v17];
                  }
                }

                goto LABEL_14;
              }
            }
          }

LABEL_15:
          ++v7;
        }

        while (v5 != v7);
        v18 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
        v5 = v18;
        if (!v18)
        {
LABEL_25:

          v19 = *(a1 + 32);
          v20 = [v26 copy];
          (*(v19 + 16))(v19, v20, 0);

          v21 = v26;
          goto LABEL_29;
        }
      }
    }

    v24 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v24, OS_LOG_TYPE_DEBUG, "Received 0 historyItems from Sync", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[MapsSuggestionsMapsSync mapItemsForHistoricPlaces:routes:maxAge:handler:]_block_invoke";
      v34 = 2112;
      v35 = @"We didn't expect to get nil from allContentOfType:, but we did!";
      _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "Error in %s: %@", buf, 0x16u);
    }

    v23 = *(a1 + 32);
    v21 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-11 reason:{@"We didn't expect to get nil from allContentOfType:, but we did!"}];
    (*(v23 + 16))(v23, 0);
LABEL_29:
  }
}

- (char)deleteEntry:(id)entry handler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v11 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *location = 136446978;
    *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
    v25 = 1024;
    v26 = 331;
    v27 = 2082;
    v28 = "[MapsSuggestionsMapsSync deleteEntry:handler:]";
    v29 = 2082;
    v30 = "nil == (handler)";
    v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_11:
    _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, v15, location, 0x26u);
    goto LABEL_18;
  }

  if (!entryCopy)
  {
    v11 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *location = 136446978;
    *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
    v25 = 1024;
    v26 = 332;
    v27 = 2082;
    v28 = "[MapsSuggestionsMapsSync deleteEntry:handler:]";
    v29 = 2082;
    v30 = "nil == (entry)";
    v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestions entry";
    goto LABEL_11;
  }

  type = [entryCopy type];
  if (type == 5 || type == 11)
  {
    v9 = objc_alloc(MEMORY[0x1E696AFB0]);
    uniqueIdentifier = [entryCopy uniqueIdentifier];
    v11 = [v9 initWithUUIDString:uniqueIdentifier];

    if (v11)
    {
      objc_initWeak(location, self);
      connector = self->_connector;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __47__MapsSuggestionsMapsSync_deleteEntry_handler___block_invoke;
      v20[3] = &unk_1E81F72C0;
      objc_copyWeak(&v23, location);
      v13 = v11;
      v21 = v13;
      v22 = handlerCopy;
      v14 = [(MapsSuggestionsMapsSyncConnector *)connector allContentOfType:1 handler:v20];

      objc_destroyWeak(&v23);
      objc_destroyWeak(location);
      v11 = v13;
LABEL_19:

      goto LABEL_20;
    }

    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v25 = 1024;
      v26 = 348;
      v27 = 2082;
      v28 = "[MapsSuggestionsMapsSync deleteEntry:handler:]";
      v29 = 2082;
      v30 = "nil == (uuid)";
      _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Invalid entry without a UUID?!", location, 0x26u);
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v16 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = NSStringFromMapsSuggestionsEntryType([entryCopy type]);
    *location = 138412290;
    *&location[4] = v17;
    _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "Cannot remove entries of type %@", location, 0xCu);
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
  v14 = 1;
LABEL_20:

  return v14;
}

void __47__MapsSuggestionsMapsSync_deleteEntry_handler___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v6)
    {
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 identifier];
          v11 = [v10 isEqual:*(a1 + 32)];

          if (v11)
          {
            v15 = WeakRetained[3];
            v20 = v9;
            v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
            [v15 deleteObjects:v14 completion:*(a1 + 40)];
            goto LABEL_15;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v12 = *(a1 + 40);
    v13 = MEMORY[0x1E696ABC0];
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't find anything in MapsSync with UUID=%@", *(a1 + 32)];
    v14 = [v13 GEOErrorWithCode:-13 reason:v5];
    (*(v12 + 16))(v12, v14);
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v23 = "MapsSuggestionsMapsSync.mm";
      v24 = 1026;
      v25 = 352;
      v26 = 2082;
      v27 = "[MapsSuggestionsMapsSync deleteEntry:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v5 = v14;
  }

LABEL_15:
}

- (char)canProduceRatingRequestForMapItem:(id)item maxAge:(double)age handler:(id)handler
{
  v54 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  handlerCopy = handler;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    name = [itemCopy name];
    *buf = 138412546;
    v49 = name;
    v50 = 2048;
    *v51 = age;
    _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "Checking canProduceRatingRequestForMapItem:'%@' maxAge:%.1f", buf, 0x16u);
  }

  if (handlerCopy)
  {
    if (itemCopy)
    {
      _muid = [itemCopy _muid];
      connector = self->_connector;
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:_muid];
      v47 = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      v16 = [(MapsSuggestionsMapsSyncConnector *)connector MapsSyncReviewedPlace_fetchWithMuids:v15];

      v17 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v49 = v16;
        _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "MapsSyncReviewedPlace: %@", buf, 0xCu);
      }

      if (v16)
      {
        if ([v16 hasUserReviewed])
        {
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __76__MapsSuggestionsMapsSync_canProduceRatingRequestForMapItem_maxAge_handler___block_invoke_294;
          v41[3] = &unk_1E81F72E8;
          v18 = &v42;
          v42 = itemCopy;
          v43[1] = _muid;
          v19 = v43;
          v43[0] = handlerCopy;
          innerQueue = self->_queue._innerQueue;
          v21 = v41;
        }

        else
        {
          lastSuggestedReviewDate = [v16 lastSuggestedReviewDate];
          v25 = lastSuggestedReviewDate == 0;

          if (!v25)
          {
            lastSuggestedReviewDate2 = [v16 lastSuggestedReviewDate];
            v27 = MapsSuggestionsSecondsSince(lastSuggestedReviewDate2);

            if (v27 >= age)
            {
              v29[0] = MEMORY[0x1E69E9820];
              v29[1] = 3221225472;
              v29[2] = __76__MapsSuggestionsMapsSync_canProduceRatingRequestForMapItem_maxAge_handler___block_invoke_297;
              v29[3] = &unk_1E81F7338;
              v30 = itemCopy;
              v32[1] = _muid;
              *&v32[2] = age;
              *&v32[3] = v27;
              v32[0] = handlerCopy;
              v31 = v16;
              dispatch_async(self->_queue._innerQueue, v29);

              v18 = &v30;
              v19 = v32;
            }

            else
            {
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __76__MapsSuggestionsMapsSync_canProduceRatingRequestForMapItem_maxAge_handler___block_invoke_296;
              block[3] = &unk_1E81F7310;
              v34 = itemCopy;
              v37 = _muid;
              v35 = v16;
              v36 = handlerCopy;
              dispatch_async(self->_queue._innerQueue, block);

              v18 = &v34;
              v19 = &v35;
            }

            goto LABEL_22;
          }

          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __76__MapsSuggestionsMapsSync_canProduceRatingRequestForMapItem_maxAge_handler___block_invoke_295;
          v38[3] = &unk_1E81F72E8;
          v18 = &v39;
          v39 = itemCopy;
          v40[1] = _muid;
          v19 = v40;
          v40[0] = handlerCopy;
          innerQueue = self->_queue._innerQueue;
          v21 = v38;
        }
      }

      else
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __76__MapsSuggestionsMapsSync_canProduceRatingRequestForMapItem_maxAge_handler___block_invoke;
        v44[3] = &unk_1E81F72E8;
        v18 = &v45;
        v45 = itemCopy;
        v46[1] = _muid;
        v19 = v46;
        v46[0] = handlerCopy;
        innerQueue = self->_queue._innerQueue;
        v21 = v44;
      }

      dispatch_async(innerQueue, v21);
LABEL_22:

      v23 = 1;
      goto LABEL_23;
    }

    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v49 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v50 = 1024;
      *v51 = 373;
      *&v51[4] = 2082;
      *&v51[6] = "[MapsSuggestionsMapsSync canProduceRatingRequestForMapItem:maxAge:handler:]";
      v52 = 2082;
      v53 = "nil == (mapItem)";
      v22 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem";
      goto LABEL_14;
    }
  }

  else
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v49 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v50 = 1024;
      *v51 = 372;
      *&v51[4] = 2082;
      *&v51[6] = "[MapsSuggestionsMapsSync canProduceRatingRequestForMapItem:maxAge:handler:]";
      v52 = 2082;
      v53 = "nil == (handler)";
      v22 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_14:
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, v22, buf, 0x26u);
    }
  }

  v23 = 0;
LABEL_23:

  return v23;
}

uint64_t __76__MapsSuggestionsMapsSync_canProduceRatingRequestForMapItem_maxAge_handler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) name];
    v4 = *(a1 + 48);
    v6 = 138412546;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "No prior Rating record for %@ (%llu). Can show Suggestion.", &v6, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __76__MapsSuggestionsMapsSync_canProduceRatingRequestForMapItem_maxAge_handler___block_invoke_294(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) name];
    v4 = *(a1 + 48);
    v6 = 138412546;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "Already have Rating for %@ (%llu). Will not show Suggestion", &v6, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __76__MapsSuggestionsMapsSync_canProduceRatingRequestForMapItem_maxAge_handler___block_invoke_295(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) name];
    v4 = *(a1 + 48);
    v6 = 138412546;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "User reviewed without explicit suggestion %@ (%llu). Can show Suggestion.", &v6, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

void __76__MapsSuggestionsMapsSync_canProduceRatingRequestForMapItem_maxAge_handler___block_invoke_296(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) name];
    v4 = *(a1 + 56);
    v5 = [*(a1 + 40) lastSuggestedReviewDate];
    v8 = 138412802;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "Already asked for Rating %@ (%llu) on %@. Can show Suggestion.", &v8, 0x20u);
  }

  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) lastSuggestedReviewDate];
  (*(v6 + 16))(v6, 1, v7);
}

void __76__MapsSuggestionsMapsSync_canProduceRatingRequestForMapItem_maxAge_handler___block_invoke_297(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) name];
    v4 = *(a1 + 56);
    v5 = *(a1 + 64) - *(a1 + 72);
    v8 = 138412802;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "Time limit for this Rating %@ (%llu) is over. It has %.3f sec left. Will not show Suggestion.", &v8, 0x20u);
  }

  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) lastSuggestedReviewDate];
  (*(v6 + 16))(v6, 0, v7);
}

- (char)didProduceRatingRequestForMapItem:(id)item handler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  handlerCopy = handler;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    name = [itemCopy name];
    *buf = 138412290;
    v41 = name;
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "didProduceRatingRequestForMapItem:'%@'", buf, 0xCu);
  }

  if (!handlerCopy)
  {
    v16 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136446978;
    v41 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
    v42 = 1024;
    *v43 = 429;
    *&v43[4] = 2082;
    *&v43[6] = "[MapsSuggestionsMapsSync didProduceRatingRequestForMapItem:handler:]";
    *&v43[14] = 2082;
    *&v43[16] = "nil == (handler)";
    v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_11:
    _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x26u);
    goto LABEL_12;
  }

  if (!itemCopy)
  {
    v16 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136446978;
    v41 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
    v42 = 1024;
    *v43 = 430;
    *&v43[4] = 2082;
    *&v43[6] = "[MapsSuggestionsMapsSync didProduceRatingRequestForMapItem:handler:]";
    *&v43[14] = 2082;
    *&v43[16] = "nil == (mapItem)";
    v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem";
    goto LABEL_11;
  }

  _muid = [itemCopy _muid];
  connector = self->_connector;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:_muid];
  v39 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v14 = [(MapsSuggestionsMapsSyncConnector *)connector MapsSyncReviewedPlace_fetchWithMuids:v13];

  if (v14)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__MapsSuggestionsMapsSync_didProduceRatingRequestForMapItem_handler___block_invoke;
    block[3] = &unk_1E81F7360;
    v34 = itemCopy;
    v37 = _muid;
    v35 = v14;
    v36 = handlerCopy;
    innerQueue = self->_queue._innerQueue;
    v16 = v14;
    dispatch_async(innerQueue, block);

LABEL_17:
    v18 = 1;
    goto LABEL_18;
  }

  v19 = self->_connector;
  v20 = MapsSuggestionsNow();
  v21 = [(MapsSuggestionsMapsSyncConnector *)v19 saveNewReviewedPlaceWithMuid:_muid lastSuggestedReviewDate:v20];

  v22 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    name2 = [itemCopy name];
    lastSuggestedReviewDate = [v21 lastSuggestedReviewDate];
    *buf = 138412802;
    v41 = name2;
    v42 = 2048;
    *v43 = _muid;
    *&v43[8] = 2112;
    *&v43[10] = lastSuggestedReviewDate;
    _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_DEBUG, "Creating a new reviewedPlace for %@ (%llu) with lastSuggestedReviewDate of %@", buf, 0x20u);
  }

  if (v21)
  {
    mEMORY[0x1E69AE100] = [MEMORY[0x1E69AE100] sharedStore];
    v38 = v21;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __69__MapsSuggestionsMapsSync_didProduceRatingRequestForMapItem_handler___block_invoke_300;
    v28[3] = &unk_1E81F7388;
    v31 = handlerCopy;
    v29 = itemCopy;
    v32 = _muid;
    v16 = v21;
    v30 = v16;
    [mEMORY[0x1E69AE100] saveWithObjects:v26 completionHandler:v28];

    goto LABEL_17;
  }

  v16 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v41 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
    v42 = 1024;
    *v43 = 448;
    *&v43[4] = 2082;
    *&v43[6] = "[MapsSuggestionsMapsSync didProduceRatingRequestForMapItem:handler:]";
    *&v43[14] = 2082;
    *&v43[16] = "nil == (reviewedPlace)";
    v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. We have no MapsSyncReviewedPlace and couldn't make one either";
    goto LABEL_11;
  }

LABEL_12:
  v18 = 0;
LABEL_18:

  return v18;
}

void __69__MapsSuggestionsMapsSync_didProduceRatingRequestForMapItem_handler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) name];
    v4 = *(a1 + 56);
    v7 = 138412546;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "Not creating a new reviewedPlace. Already suggested this Rating before for %@ (%llu)", &v7, 0x16u);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = [*(a1 + 40) lastSuggestedReviewDate];
    (*(v5 + 16))(v5, v6, 0);
  }
}

void __69__MapsSuggestionsMapsSync_didProduceRatingRequestForMapItem_handler___block_invoke_300(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error during commit of Rating: %@", v3];
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:17 reason:v4];
      (*(v6 + 16))(v6, 0, v7);
    }

    goto LABEL_10;
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [*(a1 + 32) name];
    v10 = *(a1 + 56);
    *buf = 138412546;
    v13 = v9;
    v14 = 2048;
    v15 = v10;
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Added record for Rating %@ (%llu)", buf, 0x16u);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v4 = [*(a1 + 40) lastSuggestedReviewDate];
    (*(v11 + 16))(v11, v4, 0);
LABEL_10:
  }
}

- (void)addMapsSyncObserver:(id)observer forContentType:(int64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (observerCopy)
  {
    if (type > 1)
    {
      if (type == 2)
      {
        v7 = 40;
        goto LABEL_18;
      }

      if (type == 3)
      {
        v7 = 48;
        goto LABEL_18;
      }
    }

    else
    {
      if (!type)
      {
        v8 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = 136446978;
          v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
          v12 = 1024;
          v13 = 471;
          v14 = 2082;
          v15 = "[MapsSuggestionsMapsSync addMapsSyncObserver:forContentType:]";
          v16 = 2082;
          v17 = "YES";
          v9 = "At %{public}s:%d, %{public}s forbids: %{public}s. MapsSuggestionsMapsSyncTypeUnknown does not make sense";
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      if (type == 1)
      {
        v7 = 32;
LABEL_18:
        [*(&self->super.isa + v7) registerObserver:observerCopy handler:0];
        goto LABEL_19;
      }
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v12 = 1024;
      v13 = 487;
      v14 = 2082;
      v15 = "[MapsSuggestionsMapsSync addMapsSyncObserver:forContentType:]";
      v16 = 2082;
      v17 = "YES";
      v9 = "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsMapsSyncConnectorType!";
      goto LABEL_15;
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v12 = 1024;
      v13 = 467;
      v14 = 2082;
      v15 = "[MapsSuggestionsMapsSync addMapsSyncObserver:forContentType:]";
      v16 = 2082;
      v17 = "nil == (observer)";
      v9 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an observer";
LABEL_15:
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, v9, &v10, 0x26u);
    }
  }

LABEL_16:

LABEL_19:
}

- (void)removeMapsSyncObserver:(id)observer forContentType:(int64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (observerCopy)
  {
    if (type > 1)
    {
      if (type == 2)
      {
        v7 = 40;
        goto LABEL_18;
      }

      if (type == 3)
      {
        v7 = 48;
        goto LABEL_18;
      }
    }

    else
    {
      if (!type)
      {
        v8 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = 136446978;
          v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
          v12 = 1024;
          v13 = 497;
          v14 = 2082;
          v15 = "[MapsSuggestionsMapsSync removeMapsSyncObserver:forContentType:]";
          v16 = 2082;
          v17 = "YES";
          v9 = "At %{public}s:%d, %{public}s forbids: %{public}s. MapsSuggestionsMapsSyncTypeUnknown does not make sense";
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      if (type == 1)
      {
        v7 = 32;
LABEL_18:
        [*(&self->super.isa + v7) unregisterObserver:observerCopy handler:0];
        goto LABEL_19;
      }
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v12 = 1024;
      v13 = 513;
      v14 = 2082;
      v15 = "[MapsSuggestionsMapsSync removeMapsSyncObserver:forContentType:]";
      v16 = 2082;
      v17 = "YES";
      v9 = "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsMapsSyncConnectorType!";
      goto LABEL_15;
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v12 = 1024;
      v13 = 493;
      v14 = 2082;
      v15 = "[MapsSuggestionsMapsSync removeMapsSyncObserver:forContentType:]";
      v16 = 2082;
      v17 = "nil == (observer)";
      v9 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an observer";
LABEL_15:
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, v9, &v10, 0x26u);
    }
  }

LABEL_16:

LABEL_19:
}

- (void)removeMapsSyncObserverForAllContentTypes:(id)types
{
  v14 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  if (typesCopy)
  {
    [(MapsSuggestionsMapsSync *)self removeMapsSyncObserver:typesCopy forContentType:1];
    [(MapsSuggestionsMapsSync *)self removeMapsSyncObserver:typesCopy forContentType:2];
    [(MapsSuggestionsMapsSync *)self removeMapsSyncObserver:typesCopy forContentType:3];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v8 = 1024;
      v9 = 518;
      v10 = 2082;
      v11 = "[MapsSuggestionsMapsSync removeMapsSyncObserverForAllContentTypes:]";
      v12 = 2082;
      v13 = "nil == (observer)";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an observer", &v6, 0x26u);
    }
  }
}

- (char)shortcutsFromFavoritesWithHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "entriesFromFavoritesWithHandler", buf, 2u);
  }

  if (handlerCopy)
  {
    v6 = self->_queue._innerQueue;
    connector = self->_connector;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__MapsSuggestionsMapsSync_shortcutsFromFavoritesWithHandler___block_invoke;
    v11[3] = &unk_1E81F73B0;
    v12 = v6;
    v13 = handlerCopy;
    v8 = v6;
    v9 = [(MapsSuggestionsMapsSyncConnector *)connector allContentOfType:3 handler:v11];
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v16 = 1024;
      v17 = 529;
      v18 = 2082;
      v19 = "[MapsSuggestionsMapsSync shortcutsFromFavoritesWithHandler:]";
      v20 = 2082;
      v21 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    v9 = 0;
  }

  return v9;
}

void __61__MapsSuggestionsMapsSync_shortcutsFromFavoritesWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v14 = [v3 count];
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Received %u Favorite items from MapsSync", buf, 8u);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MapsSuggestionsMapsSync_shortcutsFromFavoritesWithHandler___block_invoke_306;
  block[3] = &unk_1E81F5810;
  v10 = v3;
  v11 = v5;
  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  v7 = v5;
  v8 = v3;
  dispatch_async(v6, block);
}

void __61__MapsSuggestionsMapsSync_shortcutsFromFavoritesWithHandler___block_invoke_306(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      v5 = 0;
      do
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || ([v6 conformsToProtocol:{&unk_1F448E6D8, v12}])
        {
          v7 = v6;
          if (([v7 hidden] & 1) == 0)
          {
            v8 = *(a1 + 40);
            v9 = MapsSuggestionsShortcutFromMSFavoriteItem(v7);
            [v8 addObject:v9];
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v10 = *(a1 + 48);
  v11 = [*(a1 + 40) copy];
  (*(v10 + 16))(v10, v11, 0);
}

- (char)homeWorkSchoolShortcutsFromFavoritesWithHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "homeWorkSchoolShortcutsFromFavoritesWithHandler", buf, 2u);
  }

  if (handlerCopy)
  {
    v6 = self->_queue._innerQueue;
    v7 = [MEMORY[0x1E69AE110] queryPredicateWithFormat:@"type IN {2 argumentArray:3, 5} AND version == 2 AND (hidden == nil OR hidden == 0)", 0];
    connector = self->_connector;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__MapsSuggestionsMapsSync_homeWorkSchoolShortcutsFromFavoritesWithHandler___block_invoke;
    v12[3] = &unk_1E81F73B0;
    v9 = v6;
    v13 = v9;
    v14 = handlerCopy;
    v10 = [(MapsSuggestionsMapsSyncConnector *)connector allContentOfType:3 withPredicate:v7 handler:v12];
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
      v17 = 1024;
      v18 = 557;
      v19 = 2082;
      v20 = "[MapsSuggestionsMapsSync homeWorkSchoolShortcutsFromFavoritesWithHandler:]";
      v21 = 2082;
      v22 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    v10 = 0;
  }

  return v10;
}

void __75__MapsSuggestionsMapsSync_homeWorkSchoolShortcutsFromFavoritesWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v25 = [v15 count];
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Received %u Favorite items from MapsSync", buf, 8u);
  }

  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v15;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || ([v9 conformsToProtocol:&unk_1F448E6D8])
        {
          v10 = v9;
          if (([v10 hidden] & 1) == 0)
          {
            v11 = MapsSuggestionsShortcutFromMSFavoriteItem(v10);
            [v4 addObject:v11];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MapsSuggestionsMapsSync_homeWorkSchoolShortcutsFromFavoritesWithHandler___block_invoke_340;
  block[3] = &unk_1E81F62F8;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v17 = v4;
  v18 = v13;
  v14 = v4;
  dispatch_async(v12, block);
}

void __75__MapsSuggestionsMapsSync_homeWorkSchoolShortcutsFromFavoritesWithHandler___block_invoke_340(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1);
}

- (void)mapsSyncDidChangeForType:(int64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  if (type > 1)
  {
    if (type == 2)
    {
      v5 = 40;
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_13;
      }

      v5 = 48;
    }

LABEL_11:
    v8 = *(&self->super.isa + v5);
    if (v8)
    {
      v6 = v8;
      objc_initWeak(location, self);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __52__MapsSuggestionsMapsSync_mapsSyncDidChangeForType___block_invoke;
      v9[3] = &unk_1E81F73D8;
      objc_copyWeak(v10, location);
      v10[1] = type;
      [v6 callBlock:v9];
      objc_destroyWeak(v10);
      objc_destroyWeak(location);
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (type)
  {
    if (type == 1)
    {
      v5 = 32;
      goto LABEL_11;
    }

LABEL_13:
    v6 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *location = 136446978;
    *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
    v12 = 1024;
    v13 = 609;
    v14 = 2082;
    v15 = "[MapsSuggestionsMapsSync mapsSyncDidChangeForType:]";
    v16 = 2082;
    v17 = "nil == (observers)";
    v7 = "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsMapsSyncConnectorType!";
LABEL_15:
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, v7, location, 0x26u);
    goto LABEL_16;
  }

  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *location = 136446978;
    *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSync.mm";
    v12 = 1024;
    v13 = 593;
    v14 = 2082;
    v15 = "[MapsSuggestionsMapsSync mapsSyncDidChangeForType:]";
    v16 = 2082;
    v17 = "YES";
    v7 = "At %{public}s:%d, %{public}s forbids: %{public}s. MapsSuggestionsMapsSyncTypeUnknown does not make sense";
    goto LABEL_15;
  }

LABEL_16:
}

void __52__MapsSuggestionsMapsSync_mapsSyncDidChangeForType___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v3 mapsSync:WeakRetained didChangeForContentType:*(a1 + 40)];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsMapsSync.mm";
      v8 = 1026;
      v9 = 613;
      v10 = 2082;
      v11 = "[MapsSuggestionsMapsSync mapsSyncDidChangeForType:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (uint64_t)_addFieldsToSuggestionsEntry:(uint64_t)entry
{
  v3 = a2;
  v4 = v3;
  if (entry)
  {
    if (v3)
    {
      geoMapItem = [v3 geoMapItem];

      if (geoMapItem)
      {
        v6 = MEMORY[0x1E696AD98];
        geoMapItem2 = [v4 geoMapItem];
        [geoMapItem2 centerCoordinate];
        v8 = [v6 numberWithDouble:?];
        [v4 setNumber:v8 forKey:@"MapsSuggestionsLatitudeKey"];

        v9 = MEMORY[0x1E696AD98];
        geoMapItem3 = [v4 geoMapItem];
        [geoMapItem3 centerCoordinate];
        v12 = [v9 numberWithDouble:v11];
        [v4 setNumber:v12 forKey:@"MapsSuggestionsLongitudeKey"];

        [v4 setNumber:&unk_1F4470F60 forKey:@"MapsSuggestionsGEOMapItemOriginKey"];
        entry = 1;
        goto LABEL_5;
      }

      v15 = GEOFindOrCreateLog();
      [(MapsSuggestionsMapsSync *)v15 _addFieldsToSuggestionsEntry:?];
    }

    else
    {
      v14 = GEOFindOrCreateLog();
      [(MapsSuggestionsMapsSync *)v14 _addFieldsToSuggestionsEntry:?];
    }

    entry = 0;
  }

LABEL_5:

  return entry;
}

- (void)_updateEntry:(void *)entry withEvInfo:
{
  v14 = a2;
  entryCopy = entry;
  v6 = entryCopy;
  if (self)
  {
    [entryCopy requiredBatteryCharge];
    if (v7 > 0.0)
    {
      vehicleIdentifier = [v6 vehicleIdentifier];
      if (vehicleIdentifier)
      {
        vehicleIdentifier2 = [v6 vehicleIdentifier];
        v10 = [vehicleIdentifier2 length];

        if (v10)
        {
          [v14 setBoolean:1 forKey:@"MapsSuggestionsIsResumingAnEVRoute"];
          vehicleIdentifier3 = [v6 vehicleIdentifier];
          [v14 setString:vehicleIdentifier3 forKey:@"MapsSuggestionsVehicleIdentifierKey"];

          v12 = MEMORY[0x1E696AD98];
          [v6 requiredBatteryCharge];
          v13 = [v12 numberWithDouble:?];
          [v14 setNumber:v13 forKey:@"MapsSuggestionsRequiredChargeForEVKey"];
        }
      }
    }
  }
}

- (void)_createEntryFromRecentHistoryMultiPointRoute:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_6();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_createEntryFromRecentHistoryMultiPointRoute:(NSObject *)a1 .cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0_6();
    _os_log_impl(v2, v3, v4, v5, v6, 0x26u);
  }
}

- (void)_createEntryFromRecentHistoryRoute:(NSObject *)a1 .cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0_6();
    _os_log_impl(v2, v3, v4, v5, v6, 0x26u);
  }
}

- (void)_createEntryFromRecentHistoryPlace:(NSObject *)a1 .cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0_6();
    _os_log_impl(v2, v3, v4, v5, v6, 0x26u);
  }
}

- (void)_addFieldsToSuggestionsEntry:(NSObject *)a1 .cold.1(NSObject *a1, NSObject **a2)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9(&dword_1C5126000, v4, v5, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem to be set in advance", v6, v7, v8, v9, 2u);
  }

  *a2 = a1;
}

- (void)_addFieldsToSuggestionsEntry:(NSObject *)a1 .cold.2(NSObject *a1, NSObject **a2)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9(&dword_1C5126000, v4, v5, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestion entry", v6, v7, v8, v9, 2u);
  }

  *a2 = a1;
}

@end