@interface MapsSuggestionsUser
- (MapsSuggestionsUser)initWithMeCardReader:(id)a3 routine:(id)a4;
- (NSString)uniqueName;
- (char)hasVisitedMapItem:(id)a3 handler:(id)a4;
- (char)meCardForProminentPlacesAroundCoordinate:(CLLocationCoordinate2D)a3 maxDistance:(double)a4 maxAge:(double)a5 minVisits:(int64_t)a6 handler:(id)a7;
- (char)mostRecentVisitWithinDistance:(double)a3 ofMapItem:(id)a4 handler:(id)a5;
- (id).cxx_construct;
@end

@implementation MapsSuggestionsUser

- (MapsSuggestionsUser)initWithMeCardReader:(id)a3 routine:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsUser.mm";
      *&buf[12] = 1024;
      *&buf[14] = 36;
      v22 = 2082;
      v23 = "[MapsSuggestionsUser initWithMeCardReader:routine:]";
      v24 = 2082;
      v25 = "nil == (meCardReader)";
      _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a MeCardReader", buf, 0x26u);
    }

    goto LABEL_11;
  }

  if (!v8)
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsUser.mm";
      *&buf[12] = 1024;
      *&buf[14] = 37;
      v22 = 2082;
      v23 = "[MapsSuggestionsUser initWithMeCardReader:routine:]";
      v24 = 2082;
      v25 = "nil == (routine)";
      _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a Routine", buf, 0x26u);
    }

LABEL_11:

    v17 = 0;
    goto LABEL_12;
  }

  v20.receiver = self;
  v20.super_class = MapsSuggestionsUser;
  v10 = [(MapsSuggestionsUser *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_meCardReader, a3);
    objc_storeStrong(&v11->_routine, a4);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(buf, @"MapsSuggestionsUserQueue", v12);
    v13 = *buf;
    *buf = 0;
    innerQueue = v11->_queue._innerQueue;
    v11->_queue._innerQueue = v13;

    v15 = *&buf[8];
    *&buf[8] = 0;
    name = v11->_queue._name;
    v11->_queue._name = v15;
  }

  self = v11;
  v17 = self;
LABEL_12:

  return v17;
}

- (char)meCardForProminentPlacesAroundCoordinate:(CLLocationCoordinate2D)a3 maxDistance:(double)a4 maxAge:(double)a5 minVisits:(int64_t)a6 handler:(id)a7
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v51 = *MEMORY[0x1E69E9840];
  v13 = a7;
  if (v13)
  {
    v14 = dispatch_group_create();
    *v49 = 0;
    *&v49[8] = v49;
    *&v49[16] = 0x3032000000;
    *&v49[24] = __Block_byref_object_copy__17;
    *&v49[32] = __Block_byref_object_dispose__17;
    v50 = 0;
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = __Block_byref_object_copy__17;
    v43[4] = __Block_byref_object_dispose__17;
    v44 = 0;
    dispatch_group_enter(v14);
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v46 = latitude;
      v47 = 2048;
      v48 = longitude;
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_DEBUG, "Getting MeCard from Favorites for <%+.6f,%+.6f>", buf, 0x16u);
    }

    meCardReader = self->_meCardReader;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __101__MapsSuggestionsUser_meCardForProminentPlacesAroundCoordinate_maxDistance_maxAge_minVisits_handler___block_invoke;
    v37[3] = &unk_1E81F7F80;
    v17 = v14;
    v40 = latitude;
    v41 = longitude;
    v38 = v17;
    v39 = v49;
    v42 = a4;
    v18 = [(MapsSuggestionsMeCardReader *)meCardReader readMeCardWithHandler:v37];
    dispatch_group_enter(v17);
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v46 = latitude;
      v47 = 2048;
      v48 = longitude;
      _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_DEBUG, "Getting MeCard from Routine for <%+.6f,%+.6f>", buf, 0x16u);
    }

    routine = self->_routine;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __101__MapsSuggestionsUser_meCardForProminentPlacesAroundCoordinate_maxDistance_maxAge_minVisits_handler___block_invoke_169;
    v31[3] = &unk_1E81F7F80;
    v21 = v17;
    v34 = latitude;
    v35 = longitude;
    v32 = v21;
    v33 = v43;
    v36 = a4;
    v22 = [(MapsSuggestionsRoutine *)routine readMeCardWithMinVisits:a6 maxAge:v31 handler:a5];
    v23 = v22;
    if (v18)
    {
      if (v22)
      {
LABEL_8:
        innerQueue = self->_queue._innerQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __101__MapsSuggestionsUser_meCardForProminentPlacesAroundCoordinate_maxDistance_maxAge_minVisits_handler___block_invoke_170;
        block[3] = &unk_1E81F7FA8;
        v29 = v49;
        v30 = v43;
        v28 = v13;
        dispatch_group_notify(v21, innerQueue, block);

        _Block_object_dispose(v43, 8);
        _Block_object_dispose(v49, 8);

        v25 = 1;
        goto LABEL_12;
      }
    }

    else
    {
      dispatch_group_leave(v21);
      if (v23)
      {
        goto LABEL_8;
      }
    }

    dispatch_group_leave(v21);
    goto LABEL_8;
  }

  v21 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *v49 = 136446978;
    *&v49[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsUser.mm";
    *&v49[12] = 1024;
    *&v49[14] = 54;
    *&v49[18] = 2082;
    *&v49[20] = "[MapsSuggestionsUser meCardForProminentPlacesAroundCoordinate:maxDistance:maxAge:minVisits:handler:]";
    *&v49[28] = 2082;
    *&v49[30] = "nil == (handler)";
    _os_log_impl(&dword_1C5126000, v21, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", v49, 0x26u);
  }

  v25 = 0;
LABEL_12:

  return v25;
}

void __101__MapsSuggestionsUser_meCardForProminentPlacesAroundCoordinate_maxDistance_maxAge_minVisits_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (!v5 || v6)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "Could not read MeCard from Favorites: %@", &v14, 0xCu);
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v14 = 134218240;
      v15 = v9;
      v16 = 2048;
      v17 = v10;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Getting MeCard from Favorites for <%+.6f,%+.6f>", &v14, 0x16u);
    }

    v11 = MapsSuggestionsMeCardWithinDistance(v5, *(a1 + 48), *(a1 + 56), *(a1 + 64));
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  dispatch_group_leave(v7);
}

void __101__MapsSuggestionsUser_meCardForProminentPlacesAroundCoordinate_maxDistance_maxAge_minVisits_handler___block_invoke_169(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (!v5 || v6)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "Could not read MeCard from Routine: %@", &v14, 0xCu);
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v14 = 134218240;
      v15 = v9;
      v16 = 2048;
      v17 = v10;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Getting MeCard from Routine for <%+.6f,%+.6f>", &v14, 0x16u);
    }

    v11 = MapsSuggestionsMeCardWithinDistance(v5, *(a1 + 48), *(a1 + 56), *(a1 + 64));
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  dispatch_group_leave(v7);
}

void __101__MapsSuggestionsUser_meCardForProminentPlacesAroundCoordinate_maxDistance_maxAge_minVisits_handler___block_invoke_170(void *a1)
{
  v2 = MapsSuggestionsMeCardUnion(*(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40));
  (*(a1[4] + 16))();
}

- (char)hasVisitedMapItem:(id)a3 handler:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsUser.mm";
      v16 = 1024;
      v17 = 116;
      v18 = 2082;
      v19 = "[MapsSuggestionsUser hasVisitedMapItem:handler:]";
      v20 = 2082;
      v21 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", &v14, 0x26u);
    }

    goto LABEL_9;
  }

  if (!v6)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsUser.mm";
      v16 = 1024;
      v17 = 117;
      v18 = 2082;
      v19 = "[MapsSuggestionsUser hasVisitedMapItem:handler:]";
      v20 = 2082;
      v21 = "nil == (mapItem)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem", &v14, 0x26u);
    }

LABEL_9:

    v11 = 0;
    goto LABEL_10;
  }

  [v6 coordinate];
  v10 = CLLocationFromGEOLocationCoordinate2D(v8, v9);
  v11 = [(MapsSuggestionsRoutine *)self->_routine fetchLastVisitAtLocation:v10 handler:v7];

LABEL_10:
  return v11;
}

- (char)mostRecentVisitWithinDistance:(double)a3 ofMapItem:(id)a4 handler:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (!v9)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsUser.mm";
      v16 = 1024;
      v17 = 130;
      v18 = 2082;
      v19 = "[MapsSuggestionsUser mostRecentVisitWithinDistance:ofMapItem:handler:]";
      v20 = 2082;
      v21 = "nil == (handler)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, v12, &v14, 0x26u);
    }

LABEL_9:

    v10 = 0;
    goto LABEL_10;
  }

  if (!v8)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsUser.mm";
      v16 = 1024;
      v17 = 131;
      v18 = 2082;
      v19 = "[MapsSuggestionsUser mostRecentVisitWithinDistance:ofMapItem:handler:]";
      v20 = 2082;
      v21 = "nil == ((MapsSuggestionsMapItem *)mapItem)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = [(MapsSuggestionsRoutine *)self->_routine fetchMostRecentVisitWithinDistance:v8 ofMapItem:v9 handler:a3];
LABEL_10:

  return v10;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end