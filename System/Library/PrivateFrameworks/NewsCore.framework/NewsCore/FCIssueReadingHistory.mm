@interface FCIssueReadingHistory
+ (id)backingRecordZoneIDs;
+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory;
+ (void)populateLocalStoreClassRegistry:(id)registry;
- (BOOL)hasIssueWithIDBeenBadged:(id)badged;
- (BOOL)hasIssueWithIDBeenEngaged:(id)engaged;
- (BOOL)hasIssueWithIDBeenSeen:(id)seen;
- (BOOL)hasIssueWithIDBeenVisited:(id)visited;
- (FCIssueReadingHistory)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory;
- (NSArray)allEngagedIssueIDs;
- (NSArray)recentlyEngagedIssueIDs;
- (NSArray)recentlyVisitedIssueIDs;
- (NSString)mostRecentlyVisitedIssueID;
- (id)_allHistoryItems;
- (id)_historyItemForIssueID:(uint64_t)d;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d;
- (id)bookmarkForLastVisitToIssueWithID:(id)d;
- (id)lastEngagedDateForIssueWithID:(id)d;
- (id)lastRemovedFromMyMagazinesDateForIssueWithID:(id)d;
- (id)lastSeenDateForIssueWithID:(id)d;
- (id)lastVisitedDateForIssueWithID:(id)d;
- (id)recordsForRestoringZoneName:(id)name;
- (void)_addHistoryItems:(uint64_t)items;
- (void)_didChangeForIssueIDs:(void *)ds;
- (void)_modifyHistoryForIssueID:(void *)d withBlock:;
- (void)addObserver:(id)observer;
- (void)clearHistory;
- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names;
- (void)loadLocalCachesFromStore;
- (void)markIssueAsBadgedWithID:(id)d;
- (void)markIssueAsEngagedWithID:(id)d;
- (void)markIssueAsRemovedFromMyMagazinesWithID:(id)d;
- (void)markIssueAsSeenWithID:(id)d;
- (void)markIssueWithID:(id)d asVisitedWithBookmark:(id)bookmark;
- (void)removeObserver:(id)observer;
@end

@implementation FCIssueReadingHistory

- (void)loadLocalCachesFromStore
{
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__FCIssueReadingHistory_loadLocalCachesFromStore__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(FCMTWriterLock *)itemsLock performWriteSync:v3];
}

void __49__FCIssueReadingHistory_loadLocalCachesFromStore__block_invoke(uint64_t a1)
{
  obj = [MEMORY[0x1E695DF90] dictionary];
  v2 = [*(a1 + 32) localStore];
  [v2 addAllEntriesToDictionary:obj];

  v3 = *(a1 + 32);
  v4 = [objc_opt_class() internalLocalStoreKeys];
  v5 = [v4 allObjects];
  [obj removeObjectsForKeys:v5];

  v6 = *(a1 + 32);
  if (v6)
  {
    objc_storeStrong((v6 + 88), obj);
  }
}

- (FCIssueReadingHistory)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory
{
  v28 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  centerCopy = center;
  directoryCopy = directory;
  if (!contextCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "context != nil"];
    *buf = 136315906;
    v21 = "[FCIssueReadingHistory initWithContext:pushNotificationCenter:storeDirectory:]";
    v22 = 2080;
    v23 = "FCIssueReadingHistory.m";
    v24 = 1024;
    v25 = 49;
    v26 = 2114;
    v27 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (centerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (centerCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "pushNotificationCenter != nil"];
    *buf = 136315906;
    v21 = "[FCIssueReadingHistory initWithContext:pushNotificationCenter:storeDirectory:]";
    v22 = 2080;
    v23 = "FCIssueReadingHistory.m";
    v24 = 1024;
    v25 = 50;
    v26 = 2114;
    v27 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!directoryCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "storeDirectory != nil"];
    *buf = 136315906;
    v21 = "[FCIssueReadingHistory initWithContext:pushNotificationCenter:storeDirectory:]";
    v22 = 2080;
    v23 = "FCIssueReadingHistory.m";
    v24 = 1024;
    v25 = 51;
    v26 = 2114;
    v27 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v19.receiver = self;
  v19.super_class = FCIssueReadingHistory;
  v11 = [(FCPrivateDataController *)&v19 initWithContext:contextCopy pushNotificationCenter:centerCopy storeDirectory:directoryCopy];
  if (v11)
  {
    v12 = objc_opt_new();
    itemsLock = v11->_itemsLock;
    v11->_itemsLock = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)markIssueWithID:(id)d asVisitedWithBookmark:(id)bookmark
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  bookmarkCopy = bookmark;
  [MEMORY[0x1E696AF00] isMainThread];
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v15 = "[FCIssueReadingHistory markIssueWithID:asVisitedWithBookmark:]";
    v16 = 2080;
    v17 = "FCIssueReadingHistory.m";
    v18 = 1024;
    v19 = 66;
    v20 = 2114;
    v21 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (bookmarkCopy)
    {
      goto LABEL_6;
    }
  }

  else if (bookmarkCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "bookmark != nil"];
    *buf = 136315906;
    v15 = "[FCIssueReadingHistory markIssueWithID:asVisitedWithBookmark:]";
    v16 = 2080;
    v17 = "FCIssueReadingHistory.m";
    v18 = 1024;
    v19 = 67;
    v20 = 2114;
    v21 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__FCIssueReadingHistory_markIssueWithID_asVisitedWithBookmark___block_invoke;
  v12[3] = &unk_1E7C37010;
  v13 = bookmarkCopy;
  v8 = bookmarkCopy;
  [(FCIssueReadingHistory *)self _modifyHistoryForIssueID:dCopy withBlock:v12];

  v9 = *MEMORY[0x1E69E9840];
}

void __63__FCIssueReadingHistory_markIssueWithID_asVisitedWithBookmark___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [MEMORY[0x1E695DF00] date];
  [v6 setLastVisitedDate:v3];

  v4 = [*(a1 + 32) issueType];
  if (v4 == 1)
  {
    v5 = [*(a1 + 32) pageID];
    [v6 setLastVisitedPageID:v5];
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = [*(a1 + 32) articleID];
    [v6 setLastVisitedArticleID:v5];
  }

LABEL_6:
}

- (void)_modifyHistoryForIssueID:(void *)d withBlock:
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  dCopy = d;
  if (!self)
  {
    goto LABEL_10;
  }

  [MEMORY[0x1E696AF00] isMainThread];
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v22 = "[FCIssueReadingHistory _modifyHistoryForIssueID:withBlock:]";
    v23 = 2080;
    v24 = "FCIssueReadingHistory.m";
    v25 = 1024;
    v26 = 475;
    v27 = 2114;
    v28 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!dCopy)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
        *buf = 136315906;
        v22 = "[FCIssueReadingHistory _modifyHistoryForIssueID:withBlock:]";
        v23 = 2080;
        v24 = "FCIssueReadingHistory.m";
        v25 = 1024;
        v26 = 476;
        v27 = 2114;
        v28 = v17;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!dCopy)
  {
    goto LABEL_5;
  }

  v7 = [(FCIssueReadingHistory *)self _historyItemForIssueID:v5];
  v8 = [v7 mutableCopyWithZone:0];

  if (!v8)
  {
    v8 = objc_opt_new();
    v9 = FCIssueHistoryItemIDFromIssueID(v5);
    [v8 setIdentifier:v9];

    [v8 setIssueID:v5];
  }

  dCopy[2](dCopy, v8);
  v20 = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  [(FCIssueReadingHistory *)self _addHistoryItems:v10];

  v11 = [FCModifyIssueHistoryCommand alloc];
  v19 = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v13 = [(FCModifyIssueHistoryCommand *)v11 initWithIssueHistoryItems:v12 merge:0];

  [self addCommandToCommandQueue:v13];
  v18 = v5;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [(FCIssueReadingHistory *)self _didChangeForIssueIDs:v14];

LABEL_10:
  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasIssueWithIDBeenVisited:(id)visited
{
  v18 = *MEMORY[0x1E69E9840];
  visitedCopy = visited;
  if (!visitedCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v11 = "[FCIssueReadingHistory hasIssueWithIDBeenVisited:]";
    v12 = 2080;
    v13 = "FCIssueReadingHistory.m";
    v14 = 1024;
    v15 = 86;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCIssueReadingHistory *)self bookmarkForLastVisitToIssueWithID:visitedCopy];
  v6 = v5 != 0;

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)markIssueAsBadgedWithID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [MEMORY[0x1E696AF00] isMainThread];
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v8 = "[FCIssueReadingHistory markIssueAsBadgedWithID:]";
    v9 = 2080;
    v10 = "FCIssueReadingHistory.m";
    v11 = 1024;
    v12 = 93;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [(FCIssueReadingHistory *)self _modifyHistoryForIssueID:dCopy withBlock:&__block_literal_global_0];

  v5 = *MEMORY[0x1E69E9840];
}

void __49__FCIssueReadingHistory_markIssueAsBadgedWithID___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v3 = a2;
  v4 = [v2 date];
  [v3 setLastBadgedDate:v4];
}

- (BOOL)hasIssueWithIDBeenBadged:(id)badged
{
  v19 = *MEMORY[0x1E69E9840];
  badgedCopy = badged;
  if (!badgedCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v12 = "[FCIssueReadingHistory hasIssueWithIDBeenBadged:]";
    v13 = 2080;
    v14 = "FCIssueReadingHistory.m";
    v15 = 1024;
    v16 = 101;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCIssueReadingHistory *)self _historyItemForIssueID:badgedCopy];
  lastBadgedDate = [v5 lastBadgedDate];
  v7 = lastBadgedDate != 0;

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_historyItemForIssueID:(uint64_t)d
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (d)
  {
    if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
      *buf = 136315906;
      *&buf[4] = "[FCIssueReadingHistory _historyItemForIssueID:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCIssueReadingHistory.m";
      *&buf[22] = 1024;
      LODWORD(v20) = 452;
      WORD2(v20) = 2114;
      *(&v20 + 6) = v11;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v5 = FCIssueHistoryItemIDFromIssueID(v4);
    if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identifier != nil"];
      *buf = 136315906;
      *&buf[4] = "[FCIssueReadingHistory _historyItemForID:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCIssueReadingHistory.m";
      *&buf[22] = 1024;
      LODWORD(v20) = 460;
      WORD2(v20) = 2114;
      *(&v20 + 6) = v12;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = 0;
    v6 = *(d + 96);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __43__FCIssueReadingHistory__historyItemForID___block_invoke;
    *&v20 = &unk_1E7C37138;
    v22 = &v13;
    *(&v20 + 1) = d;
    v7 = v5;
    v21 = v7;
    [v6 performReadSync:buf];

    v8 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)markIssueAsEngagedWithID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [MEMORY[0x1E696AF00] isMainThread];
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v8 = "[FCIssueReadingHistory markIssueAsEngagedWithID:]";
    v9 = 2080;
    v10 = "FCIssueReadingHistory.m";
    v11 = 1024;
    v12 = 108;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [(FCIssueReadingHistory *)self _modifyHistoryForIssueID:dCopy withBlock:&__block_literal_global_18];

  v5 = *MEMORY[0x1E69E9840];
}

void __50__FCIssueReadingHistory_markIssueAsEngagedWithID___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v3 = a2;
  v4 = [v2 date];
  [v3 setLastEngagedDate:v4];
}

- (BOOL)hasIssueWithIDBeenEngaged:(id)engaged
{
  v19 = *MEMORY[0x1E69E9840];
  engagedCopy = engaged;
  if (!engagedCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v12 = "[FCIssueReadingHistory hasIssueWithIDBeenEngaged:]";
    v13 = 2080;
    v14 = "FCIssueReadingHistory.m";
    v15 = 1024;
    v16 = 116;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCIssueReadingHistory *)self _historyItemForIssueID:engagedCopy];
  lastEngagedDate = [v5 lastEngagedDate];
  v7 = lastEngagedDate != 0;

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)markIssueAsSeenWithID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [MEMORY[0x1E696AF00] isMainThread];
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v8 = "[FCIssueReadingHistory markIssueAsSeenWithID:]";
    v9 = 2080;
    v10 = "FCIssueReadingHistory.m";
    v11 = 1024;
    v12 = 123;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [(FCIssueReadingHistory *)self _modifyHistoryForIssueID:dCopy withBlock:&__block_literal_global_20];

  v5 = *MEMORY[0x1E69E9840];
}

void __47__FCIssueReadingHistory_markIssueAsSeenWithID___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v3 = a2;
  v4 = [v2 date];
  [v3 setLastSeenDate:v4];
}

- (BOOL)hasIssueWithIDBeenSeen:(id)seen
{
  v19 = *MEMORY[0x1E69E9840];
  seenCopy = seen;
  if (!seenCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v12 = "[FCIssueReadingHistory hasIssueWithIDBeenSeen:]";
    v13 = 2080;
    v14 = "FCIssueReadingHistory.m";
    v15 = 1024;
    v16 = 131;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCIssueReadingHistory *)self _historyItemForIssueID:seenCopy];
  lastSeenDate = [v5 lastSeenDate];
  v7 = lastSeenDate != 0;

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)markIssueAsRemovedFromMyMagazinesWithID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [MEMORY[0x1E696AF00] isMainThread];
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v8 = "[FCIssueReadingHistory markIssueAsRemovedFromMyMagazinesWithID:]";
    v9 = 2080;
    v10 = "FCIssueReadingHistory.m";
    v11 = 1024;
    v12 = 138;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [(FCIssueReadingHistory *)self _modifyHistoryForIssueID:dCopy withBlock:&__block_literal_global_22];

  v5 = *MEMORY[0x1E69E9840];
}

void __65__FCIssueReadingHistory_markIssueAsRemovedFromMyMagazinesWithID___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v3 = a2;
  v4 = [v2 date];
  [v3 setLastRemovedFromMyMagazinesDate:v4];
}

- (id)bookmarkForLastVisitToIssueWithID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v14 = "[FCIssueReadingHistory bookmarkForLastVisitToIssueWithID:]";
    v15 = 2080;
    v16 = "FCIssueReadingHistory.m";
    v17 = 1024;
    v18 = 147;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCIssueReadingHistory *)self _historyItemForIssueID:dCopy];
  lastVisitedArticleID = [v5 lastVisitedArticleID];

  if (lastVisitedArticleID)
  {
    lastVisitedArticleID2 = [v5 lastVisitedArticleID];
    v8 = [FCIssueBookmark ANFBookmarkWithArticleID:lastVisitedArticleID2];
  }

  else
  {
    lastVisitedPageID = [v5 lastVisitedPageID];

    if (!lastVisitedPageID)
    {
      goto LABEL_9;
    }

    lastVisitedArticleID2 = [v5 lastVisitedPageID];
    v8 = [FCIssueBookmark PDFBookmarkWithPageID:lastVisitedArticleID2];
  }

  lastVisitedPageID = v8;

LABEL_9:
  v10 = *MEMORY[0x1E69E9840];

  return lastVisitedPageID;
}

- (id)lastVisitedDateForIssueWithID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v11 = "[FCIssueReadingHistory lastVisitedDateForIssueWithID:]";
    v12 = 2080;
    v13 = "FCIssueReadingHistory.m";
    v14 = 1024;
    v15 = 168;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCIssueReadingHistory *)self _historyItemForIssueID:dCopy];
  lastVisitedDate = [v5 lastVisitedDate];

  v7 = *MEMORY[0x1E69E9840];

  return lastVisitedDate;
}

- (id)lastEngagedDateForIssueWithID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v11 = "[FCIssueReadingHistory lastEngagedDateForIssueWithID:]";
    v12 = 2080;
    v13 = "FCIssueReadingHistory.m";
    v14 = 1024;
    v15 = 176;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCIssueReadingHistory *)self _historyItemForIssueID:dCopy];
  lastEngagedDate = [v5 lastEngagedDate];

  v7 = *MEMORY[0x1E69E9840];

  return lastEngagedDate;
}

- (id)lastSeenDateForIssueWithID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v11 = "[FCIssueReadingHistory lastSeenDateForIssueWithID:]";
    v12 = 2080;
    v13 = "FCIssueReadingHistory.m";
    v14 = 1024;
    v15 = 184;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCIssueReadingHistory *)self _historyItemForIssueID:dCopy];
  lastSeenDate = [v5 lastSeenDate];

  v7 = *MEMORY[0x1E69E9840];

  return lastSeenDate;
}

- (id)lastRemovedFromMyMagazinesDateForIssueWithID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v11 = "[FCIssueReadingHistory lastRemovedFromMyMagazinesDateForIssueWithID:]";
    v12 = 2080;
    v13 = "FCIssueReadingHistory.m";
    v14 = 1024;
    v15 = 192;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCIssueReadingHistory *)self _historyItemForIssueID:dCopy];
  lastRemovedFromMyMagazinesDate = [v5 lastRemovedFromMyMagazinesDate];

  v7 = *MEMORY[0x1E69E9840];

  return lastRemovedFromMyMagazinesDate;
}

- (NSString)mostRecentlyVisitedIssueID
{
  _allHistoryItems = [(FCIssueReadingHistory *)&self->super.super.isa _allHistoryItems];
  v3 = [_allHistoryItems sortedArrayUsingComparator:&__block_literal_global_26];
  lastObject = [v3 lastObject];
  issueID = [lastObject issueID];

  return issueID;
}

- (id)_allHistoryItems
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__0;
    v9 = __Block_byref_object_dispose__0;
    v10 = 0;
    v2 = self[12];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __41__FCIssueReadingHistory__allHistoryItems__block_invoke;
    v4[3] = &unk_1E7C37160;
    v4[4] = selfCopy;
    v4[5] = &v5;
    [v2 performReadSync:v4];

    selfCopy = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return selfCopy;
}

uint64_t __51__FCIssueReadingHistory_mostRecentlyVisitedIssueID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E69E58C0];
  v5 = a3;
  v6 = [a2 lastVisitedDate];
  v7 = [v5 lastVisitedDate];

  v8 = [v4 nf_compareObject:v6 toObject:v7];
  return v8;
}

- (NSArray)recentlyVisitedIssueIDs
{
  context = [(FCPrivateDataController *)self context];
  configurationManager = [context configurationManager];
  configuration = [configurationManager configuration];
  paidBundleConfig = [configuration paidBundleConfig];
  recentIssuesMaxAge = [paidBundleConfig recentIssuesMaxAge];

  _allHistoryItems = [(FCIssueReadingHistory *)&self->super.super.isa _allHistoryItems];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__FCIssueReadingHistory_recentlyVisitedIssueIDs__block_invoke;
  v13[3] = &__block_descriptor_40_e44_B16__0___FCMutableIssueReadingHistoryItem__8l;
  *&v13[4] = recentIssuesMaxAge;
  v9 = [_allHistoryItems fc_arrayOfObjectsPassingTest:v13];

  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_30];
  v11 = [v10 fc_arrayByTransformingWithBlock:&__block_literal_global_33];

  return v11;
}

BOOL __48__FCIssueReadingHistory_recentlyVisitedIssueIDs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 lastVisitedDate];
  if (v4)
  {
    v5 = [v3 lastVisitedDate];
    [v5 fc_timeIntervalUntilNow];
    v7 = v6 <= *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __48__FCIssueReadingHistory_recentlyVisitedIssueIDs__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E69E58C0];
  v5 = a2;
  v6 = [a3 lastVisitedDate];
  v7 = [v5 lastVisitedDate];

  v8 = [v4 nf_compareObject:v6 toObject:v7];
  return v8;
}

- (NSArray)recentlyEngagedIssueIDs
{
  context = [(FCPrivateDataController *)self context];
  configurationManager = [context configurationManager];
  configuration = [configurationManager configuration];
  paidBundleConfig = [configuration paidBundleConfig];
  recentIssuesMaxAge = [paidBundleConfig recentIssuesMaxAge];

  _allHistoryItems = [(FCIssueReadingHistory *)&self->super.super.isa _allHistoryItems];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__FCIssueReadingHistory_recentlyEngagedIssueIDs__block_invoke;
  v13[3] = &__block_descriptor_40_e44_B16__0___FCMutableIssueReadingHistoryItem__8l;
  *&v13[4] = recentIssuesMaxAge;
  v9 = [_allHistoryItems fc_arrayOfObjectsPassingTest:v13];

  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_35];
  v11 = [v10 fc_arrayByTransformingWithBlock:&__block_literal_global_37];

  return v11;
}

BOOL __48__FCIssueReadingHistory_recentlyEngagedIssueIDs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 lastEngagedDate];
  if (v4)
  {
    v5 = [v3 lastEngagedDate];
    [v5 fc_timeIntervalUntilNow];
    v7 = v6 <= *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __48__FCIssueReadingHistory_recentlyEngagedIssueIDs__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E69E58C0];
  v5 = a2;
  v6 = [a3 lastEngagedDate];
  v7 = [v5 lastEngagedDate];

  v8 = [v4 nf_compareObject:v6 toObject:v7];
  return v8;
}

- (NSArray)allEngagedIssueIDs
{
  _allHistoryItems = [(FCIssueReadingHistory *)&self->super.super.isa _allHistoryItems];
  v3 = [_allHistoryItems fc_arrayOfObjectsPassingTest:&__block_literal_global_39];

  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_41];
  v5 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_43];

  return v5;
}

BOOL __43__FCIssueReadingHistory_allEngagedIssueIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 lastEngagedDate];
  v3 = v2 != 0;

  return v3;
}

uint64_t __43__FCIssueReadingHistory_allEngagedIssueIDs__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E69E58C0];
  v5 = a2;
  v6 = [a3 lastEngagedDate];
  v7 = [v5 lastEngagedDate];

  v8 = [v4 nf_compareObject:v6 toObject:v7];
  return v8;
}

- (void)addObserver:(id)observer
{
  v16 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (!observerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v9 = "[FCIssueReadingHistory addObserver:]";
    v10 = 2080;
    v11 = "FCIssueReadingHistory.m";
    v12 = 1024;
    v13 = 272;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7.receiver = self;
  v7.super_class = FCIssueReadingHistory;
  [(FCPrivateDataController *)&v7 addObserver:observerCopy];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)observer
{
  v16 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (!observerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v9 = "[FCIssueReadingHistory removeObserver:]";
    v10 = 2080;
    v11 = "FCIssueReadingHistory.m";
    v12 = 1024;
    v13 = 280;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7.receiver = self;
  v7.super_class = FCIssueReadingHistory;
  [(FCPrivateDataController *)&v7 removeObserver:observerCopy];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)clearHistory
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    itemsByID = self->_itemsByID;
  }

  else
  {
    itemsByID = 0;
  }

  allKeys = [(NSMutableDictionary *)itemsByID allKeys];
  if (self)
  {
    v5 = self->_itemsByID;
  }

  else
  {
    v5 = 0;
  }

  allValues = [(NSMutableDictionary *)v5 allValues];
  v7 = [allValues fc_arrayByTransformingWithBlock:&__block_literal_global_51];

  localStore = [(FCPrivateDataController *)self localStore];
  [localStore removeObjectsForKeys:allKeys];

  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__FCIssueReadingHistory_clearHistory__block_invoke_2;
  v11[3] = &unk_1E7C36EA0;
  v11[4] = self;
  [(FCMTWriterLock *)itemsLock performWriteSync:v11];
  v10 = [[FCRemoveIssueHistoryCommand alloc] initWithIssueHistoryItemIDs:allKeys];
  [(FCPrivateDataController *)self addCommandToCommandQueue:v10];
  [(FCIssueReadingHistory *)self _didChangeForIssueIDs:v7];
}

uint64_t __37__FCIssueReadingHistory_clearHistory__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 88);
  }

  else
  {
    v2 = 0;
  }

  return [v2 removeAllObjects];
}

- (void)_didChangeForIssueIDs:(void *)ds
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ds)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    observers = [ds observers];
    v5 = [observers copy];

    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 issueReadingHistoryDidChange:ds forIssueIDs:v3];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)backingRecordZoneIDs
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695BA90]);
  v3 = [v2 initWithZoneName:@"IssueReadingHistory" ownerName:*MEMORY[0x1E695B728]];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory
{
  v24 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [cloudCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (([self isLocalStoreKeyInternal:v12] & 1) == 0)
        {
          v13 = [cloudCopy objectForKeyedSubscript:v12];
          [array addObject:v13];
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = [[FCModifyIssueHistoryCommand alloc] initWithIssueHistoryItems:array merge:1];
  v22 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names
{
  namesCopy = names;
  v7 = MEMORY[0x1E696AF00];
  recordsCopy = records;
  [v7 isMainThread];
  v9 = [recordsCopy fc_arrayByTransformingWithBlock:&__block_literal_global_61];

  v10 = [v9 fc_arrayByTransformingWithBlock:&__block_literal_global_64];
  if (self)
  {
    itemsByID = self->_itemsByID;
  }

  else
  {
    itemsByID = 0;
  }

  v12 = [(NSMutableDictionary *)itemsByID nf_objectsForKeysWithoutMarker:namesCopy];
  v13 = [v12 fc_arrayByTransformingWithBlock:&__block_literal_global_66];

  [(FCIssueReadingHistory *)self _addHistoryItems:v9];
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __73__FCIssueReadingHistory_handleSyncWithChangedRecords_deletedRecordNames___block_invoke_4;
  v21 = &unk_1E7C36C58;
  selfCopy = self;
  v15 = namesCopy;
  v23 = v15;
  [(FCMTWriterLock *)itemsLock performWriteSync:&v18];
  v16 = [(FCPrivateDataController *)self localStore:v18];
  [v16 removeObjectsForKeys:v15];

  if ([v10 count] || objc_msgSend(v13, "count"))
  {
    v17 = [MEMORY[0x1E695DEC8] fc_arrayByAddingObjectsFromArray:v10 toArray:v13];
    [(FCIssueReadingHistory *)self _didChangeForIssueIDs:v17];
  }
}

- (void)_addHistoryItems:(uint64_t)items
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (items)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "items != nil"];
      *buf = 136315906;
      v11 = "[FCIssueReadingHistory _addHistoryItems:]";
      v12 = 2080;
      v13 = "FCIssueReadingHistory.m";
      v14 = 1024;
      v15 = 501;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v4 = *(items + 96);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__FCIssueReadingHistory__addHistoryItems___block_invoke;
    v7[3] = &unk_1E7C36C58;
    v8 = v3;
    itemsCopy = items;
    [v4 performWriteSync:v7];
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __73__FCIssueReadingHistory_handleSyncWithChangedRecords_deletedRecordNames___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[11];
  }

  return [v1 removeObjectsForKeys:*(a1 + 40)];
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    itemsByID = self->_itemsByID;
  }

  else
  {
    itemsByID = 0;
  }

  return [(NSMutableDictionary *)itemsByID allKeys];
}

+ (void)populateLocalStoreClassRegistry:(id)registry
{
  registryCopy = registry;
  [registryCopy registerClass:objc_opt_class()];
}

- (id)recordsForRestoringZoneName:(id)name
{
  _allHistoryItems = [(FCIssueReadingHistory *)&self->super.super.isa _allHistoryItems];
  v4 = [_allHistoryItems fc_arrayByTransformingWithBlock:&__block_literal_global_69];

  return v4;
}

void __43__FCIssueReadingHistory__historyItemForID___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[11];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKeyedSubscript:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __42__FCIssueReadingHistory__addHistoryItems___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [v7 identifier];
        v9 = *(a1 + 40);
        if (v9)
        {
          v10 = *(v9 + 88);
        }

        else
        {
          v10 = 0;
        }

        [v10 setObject:v7 forKeyedSubscript:v8];
        v11 = [*(a1 + 40) localStore];
        [v11 setObject:v7 forKeyedSubscript:v8];

        ++v6;
      }

      while (v4 != v6);
      v12 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v4 = v12;
    }

    while (v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __41__FCIssueReadingHistory__allHistoryItems__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[11];
  }

  v3 = v2;
  v7 = [v3 allValues];
  v4 = [v7 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end