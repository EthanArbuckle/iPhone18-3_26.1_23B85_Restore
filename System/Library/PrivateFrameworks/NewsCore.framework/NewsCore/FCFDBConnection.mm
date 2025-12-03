@interface FCFDBConnection
- (FCFDBConnection)initWithPath:(id)path;
- (id)_queryToSelectFeedItemIDsWithFeedLookupIDs:(id)ds feedRange:(id)range feature:(id)feature maxCountByFeedLookupID:(id)d totalMaxCount:(unint64_t)count;
- (id)_queryToSelectFeedItemIDsWithFeedLookupIDs:(id)ds feedRange:(id)range feature:(id)feature totalMaxCount:(unint64_t)count;
- (id)_queryWhereClauseForFeedLookupIDs:(id)ds feedRange:(id)range feature:(id)feature;
- (id)selectFeedItemIDsWithFeedLookupIDs:(id)ds feedRange:(id)range feature:(id)feature maxCountByFeedLookupID:(id)d totalMaxCount:(unint64_t)count;
- (id)selectFeedItemsWithIDs:(id)ds;
- (id)selectFeedsWithFeedIDs:(id)ds;
- (int64_t)selectMaxFeedLookupID;
- (void)_prepareForUse;
- (void)beginTransaction;
- (void)commitTransaction;
- (void)dealloc;
- (void)deleteFeedItemIndexesFromFeedLookupID:(id)d feedRange:(id)range;
- (void)deleteFeedItemsWithIDs:(id)ds;
- (void)insertFeatureIndexesForFeedItems:(id)items knownFeedsByID:(id)d;
- (void)insertFeedItems:(id)items knownFeedsByID:(id)d;
- (void)insertFeeds:(id)feeds;
- (void)insertIndexesForFeedItems:(id)items knownFeedsByID:(id)d;
@end

@implementation FCFDBConnection

- (FCFDBConnection)initWithPath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = FCFDBConnection;
  v5 = [(FCFDBConnection *)&v10 init];
  if (v5)
  {
    if (FCFDBInvokeOpen([pathCopy cStringUsingEncoding:4], &v5->_db))
    {
      v6 = v5;
      db = v5->_db;
      v8 = v6;
      if (db)
      {
        sqlite3_close(db);
        v8 = v5;
      }

      v5 = 0;
    }

    else
    {
      [(FCFDBConnection *)v5 _prepareForUse];
    }
  }

  return v5;
}

uint64_t __32__FCFDBConnection_initWithPath___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    sqlite3_close(v1);
  }

  return 0;
}

- (void)dealloc
{
  FCFDBInvokeClose(self->_db);
  v3.receiver = self;
  v3.super_class = FCFDBConnection;
  [(FCFDBConnection *)&v3 dealloc];
}

- (int64_t)selectMaxFeedLookupID
{
  pStmt = 0;
  FCFDBInvokePrepare(self->_db, @"SELECT MAX(lookup_id) FROM feed;", &pStmt);
  FCFDBInvokeStep(self->_db, pStmt);
  v3 = sqlite3_column_int64(pStmt, 0);
  FCFDBInvokeFinalize(self->_db, pStmt);
  return v3;
}

- (id)selectFeedsWithFeedIDs:(id)ds
{
  dsCopy = ds;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"SELECT * FROM feed WHERE feed_id IN (");
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __42__FCFDBConnection_selectFeedsWithFeedIDs___block_invoke;
  v17[3] = &unk_1E7C389E0;
  v7 = v6;
  v18 = v7;
  [dsCopy enumerateObjectsUsingBlock:v17];
  [v7 appendString:@";"]);
  pStmt = 0;
  FCFDBInvokePrepare(self->_db, v7, &pStmt);
  while (FCFDBInvokeStep(self->_db, pStmt) == 100)
  {
    v8 = sqlite3_column_text(pStmt, 0);
    v9 = sqlite3_column_int64(pStmt, 1);
    v10 = sqlite3_column_int64(pStmt, 2);
    v11 = sqlite3_column_int64(pStmt, 3);
    v12 = sqlite3_column_blob(pStmt, 4);
    v13 = [[FCFDBFeed alloc] initFromSQLWithFeedID:v8 feedLookupID:v9 refreshedFromOrder:v10 refreshedToOrder:v11 fetchedRangesBytes:v12 fetchedRangesLength:sqlite3_column_bytes(pStmt, 4)];
    feedID = [v13 feedID];
    [dictionary setObject:v13 forKey:feedID];
  }

  FCFDBInvokeFinalize(self->_db, pStmt);

  return dictionary;
}

void __42__FCFDBConnection_selectFeedsWithFeedIDs___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendFormat:@", "];
  }

  [*(a1 + 32) appendFormat:@"'%@'", v5];
}

- (id)selectFeedItemIDsWithFeedLookupIDs:(id)ds feedRange:(id)range feature:(id)feature maxCountByFeedLookupID:(id)d totalMaxCount:(unint64_t)count
{
  dsCopy = ds;
  rangeCopy = range;
  featureCopy = feature;
  dCopy = d;
  array = [MEMORY[0x1E695DF70] array];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __109__FCFDBConnection_selectFeedItemIDsWithFeedLookupIDs_feedRange_feature_maxCountByFeedLookupID_totalMaxCount___block_invoke;
  v26[3] = &unk_1E7C38A08;
  v17 = dCopy;
  v27 = v17;
  selfCopy = self;
  v18 = dsCopy;
  v29 = v18;
  v19 = rangeCopy;
  v30 = v19;
  v20 = featureCopy;
  v31 = v20;
  countCopy = count;
  v21 = __109__FCFDBConnection_selectFeedItemIDsWithFeedLookupIDs_feedRange_feature_maxCountByFeedLookupID_totalMaxCount___block_invoke(v26);
  pStmt = 0;
  FCFDBInvokePrepare(self->_db, v21, &pStmt);
  while (FCFDBInvokeStep(self->_db, pStmt) == 100)
  {
    v22 = sqlite3_column_int64(pStmt, 0);
    v23 = [MEMORY[0x1E696AD98] numberWithLongLong:{v22 | (sqlite3_column_int64(pStmt, 1) << 20)}];
    [array addObject:v23];
  }

  FCFDBInvokeFinalize(self->_db, pStmt);

  return array;
}

id __109__FCFDBConnection_selectFeedItemIDsWithFeedLookupIDs_feedRange_feature_maxCountByFeedLookupID_totalMaxCount___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  if (v3)
  {
    [v2 _queryToSelectFeedItemIDsWithFeedLookupIDs:v4 feedRange:v5 feature:v6 maxCountByFeedLookupID:v3 totalMaxCount:a1[9]];
  }

  else
  {
    [v2 _queryToSelectFeedItemIDsWithFeedLookupIDs:v4 feedRange:v5 feature:v6 totalMaxCount:a1[9]];
  }
  v7 = ;

  return v7;
}

- (id)selectFeedItemsWithIDs:(id)ds
{
  dsCopy = ds;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"SELECT * FROM feed_item WHERE id IN (");
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __42__FCFDBConnection_selectFeedItemsWithIDs___block_invoke;
  v16[3] = &unk_1E7C38A30;
  v7 = v6;
  v17 = v7;
  [dsCopy enumerateObjectsUsingBlock:v16];
  [v7 appendString:@";"]);
  pStmt = 0;
  FCFDBInvokePrepare(self->_db, v7, &pStmt);
  while (FCFDBInvokeStep(self->_db, pStmt) == 100)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = sqlite3_column_int64(pStmt, 0);
    v10 = sqlite3_column_blob(pStmt, 1);
    v11 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v10 length:sqlite3_column_bytes(pStmt freeWhenDone:{1), 0}];
    v12 = [objc_alloc(MEMORY[0x1E69B6E30]) initWithData:v11];
    if (v12)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithLongLong:v9];
      [dictionary setObject:v12 forKey:v13];
    }

    objc_autoreleasePoolPop(v8);
  }

  FCFDBInvokeFinalize(self->_db, pStmt);

  return dictionary;
}

void __42__FCFDBConnection_selectFeedItemsWithIDs___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendFormat:@", "];
  }

  [*(a1 + 32) appendFormat:@"'%@'", v5];
}

- (void)beginTransaction
{
  pStmt = 0;
  FCFDBInvokePrepare(self->_db, @"BEGIN TRANSACTION;", &pStmt);
  FCFDBInvokeStep(self->_db, pStmt);
  FCFDBInvokeFinalize(self->_db, pStmt);
}

- (void)commitTransaction
{
  pStmt = 0;
  FCFDBInvokePrepare(self->_db, @"COMMIT;", &pStmt);
  FCFDBInvokeStep(self->_db, pStmt);
  FCFDBInvokeFinalize(self->_db, pStmt);
}

- (void)insertFeeds:(id)feeds
{
  v21 = *MEMORY[0x1E69E9840];
  feedsCopy = feeds;
  pStmt = 0;
  FCFDBInvokePrepare(self->_db, @"INSERT OR REPLACE INTO feed (feed_id, lookup_id, refreshed_from_order, refreshed_to_order, fetched_ranges) VALUES (?, ?, ?, ?, ?);", &pStmt);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = feedsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = pStmt;
        feedID = [v10 feedID];
        sqlite3_bind_text(v11, 1, [feedID cStringUsingEncoding:4], -1, 0);

        sqlite3_bind_int64(pStmt, 2, [v10 feedLookupID]);
        sqlite3_bind_int64(pStmt, 3, [v10 refreshedFromOrder]);
        sqlite3_bind_int64(pStmt, 4, [v10 refreshedToOrder]);
        fetchedRangesData = [v10 fetchedRangesData];
        sqlite3_bind_blob(pStmt, 5, [fetchedRangesData bytes], objc_msgSend(fetchedRangesData, "length"), 0xFFFFFFFFFFFFFFFFLL);
        FCFDBInvokeStep(self->_db, pStmt);
        sqlite3_reset(pStmt);
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  FCFDBInvokeFinalize(self->_db, pStmt);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)insertFeedItems:(id)items knownFeedsByID:(id)d
{
  v37 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dCopy = d;
  pStmt = 0;
  FCFDBInvokePrepare(self->_db, @"INSERT OR IGNORE INTO feed_item (id, encoded) VALUES (?, ?);", &pStmt);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v36 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v24;
    *&v10 = 136315906;
    v22 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        feedID = [v14 feedID];
        v16 = [dCopy objectForKey:feedID];

        if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attempting to save feed items for a feed that hasn't been faulted in"];
          *buf = v22;
          v29 = "[FCFDBConnection insertFeedItems:knownFeedsByID:]";
          v30 = 2080;
          v31 = "FCFDBConnection.m";
          v32 = 1024;
          v33 = 232;
          v34 = 2114;
          v35 = v20;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        feedLookupID = [v16 feedLookupID];
        v18 = feedLookupID | ([v14 order] << 20);
        data = [v14 data];
        sqlite3_bind_int64(pStmt, 1, v18);
        sqlite3_bind_blob(pStmt, 2, [data bytes], objc_msgSend(data, "length"), 0);
        FCFDBInvokeStep(self->_db, pStmt);
        sqlite3_reset(pStmt);
      }

      v11 = [v8 countByEnumeratingWithState:&v23 objects:v36 count:16];
    }

    while (v11);
  }

  FCFDBInvokeFinalize(self->_db, pStmt);
  v21 = *MEMORY[0x1E69E9840];
}

- (void)insertIndexesForFeedItems:(id)items knownFeedsByID:(id)d
{
  v35 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dCopy = d;
  pStmt = 0;
  FCFDBInvokePrepare(self->_db, @"INSERT OR IGNORE INTO feed_item_lookup (feed_lookup_id, feed_item_order, feature) VALUES (?, ?, 0);", &pStmt);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v34 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = MEMORY[0x1E69E9C10];
    v13 = *v22;
    *&v10 = 136315906;
    v20 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        feedID = [v15 feedID];
        v17 = [dCopy objectForKey:feedID];

        if (!v17 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attempting to save feed items for a feed that hasn't been faulted in"];
          *buf = v20;
          v27 = "[FCFDBConnection insertIndexesForFeedItems:knownFeedsByID:]";
          v28 = 2080;
          v29 = "FCFDBConnection.m";
          v30 = 1024;
          v31 = 255;
          v32 = 2114;
          v33 = v18;
          _os_log_error_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        sqlite3_bind_int64(pStmt, 1, [v17 feedLookupID]);
        sqlite3_bind_int64(pStmt, 2, [v15 order]);
        FCFDBInvokeStep(self->_db, pStmt);
        sqlite3_reset(pStmt);
      }

      v11 = [v8 countByEnumeratingWithState:&v21 objects:v34 count:16];
    }

    while (v11);
  }

  FCFDBInvokeFinalize(self->_db, pStmt);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)insertFeatureIndexesForFeedItems:(id)items knownFeedsByID:(id)d
{
  dCopy = d;
  v14 = 0;
  db = self->_db;
  itemsCopy = items;
  FCFDBInvokePrepare(db, @"INSERT OR IGNORE INTO feed_item_lookup (feed_lookup_id, feed_item_order, feature) VALUES (?, ?, ?);", &v14);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__FCFDBConnection_insertFeatureIndexesForFeedItems_knownFeedsByID___block_invoke;
  v10[3] = &unk_1E7C38A80;
  selfCopy = self;
  v13 = v14;
  v11 = dCopy;
  v9 = dCopy;
  [itemsCopy enumerateObjectsUsingBlock:v10];

  FCFDBInvokeFinalize(self->_db, v14);
}

void __67__FCFDBConnection_insertFeatureIndexesForFeedItems_knownFeedsByID___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 feedID];
  v6 = [v4 objectForKey:v5];

  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attempting to index features for a feed that hasn't been faulted in"];
    *buf = 136315906;
    v16 = "[FCFDBConnection insertFeatureIndexesForFeedItems:knownFeedsByID:]_block_invoke";
    v17 = 2080;
    v18 = "FCFDBConnection.m";
    v19 = 1024;
    v20 = 275;
    v21 = 2114;
    v22 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__FCFDBConnection_insertFeatureIndexesForFeedItems_knownFeedsByID___block_invoke_54;
  v11[3] = &unk_1E7C38A58;
  v12 = v6;
  v13 = v3;
  v14 = *(a1 + 40);
  v7 = v3;
  v8 = v6;
  [v7 enumerateFeaturesWithBlock:v11];

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __67__FCFDBConnection_insertFeatureIndexesForFeedItems_knownFeedsByID___block_invoke_54(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = a2;
  sqlite3_bind_int64(v3, 1, [v4 feedLookupID]);
  sqlite3_bind_int64(*(a1 + 56), 2, [*(a1 + 40) order]);
  v6 = *(a1 + 56);
  v7 = [v5 hash];

  sqlite3_bind_int64(v6, 3, v7);
  FCFDBInvokeStep(*(*(a1 + 48) + 8), *(a1 + 56));
  v8 = *(a1 + 56);

  return sqlite3_reset(v8);
}

- (void)deleteFeedItemIndexesFromFeedLookupID:(id)d feedRange:(id)range
{
  v6 = MEMORY[0x1E696AEC0];
  rangeCopy = range;
  dCopy = d;
  v9 = [rangeCopy top];
  order = [v9 order];
  bottom = [rangeCopy bottom];

  v12 = [v6 stringWithFormat:@"DELETE FROM feed_item_lookup WHERE feed_lookup_id = %@ AND feed_item_order <= %llu AND feed_item_order > %llu", dCopy, order, objc_msgSend(bottom, "order")];;

  pStmt = 0;
  FCFDBInvokePrepare(self->_db, v12, &pStmt);
  FCFDBInvokeStep(self->_db, pStmt);
  FCFDBInvokeFinalize(self->_db, pStmt);
}

- (void)deleteFeedItemsWithIDs:(id)ds
{
  v4 = MEMORY[0x1E696AD60];
  dsCopy = ds;
  v6 = objc_msgSend(v4, "stringWithString:", @"DELETE FROM feed_item WHERE id IN (");
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__FCFDBConnection_deleteFeedItemsWithIDs___block_invoke;
  v9[3] = &unk_1E7C38A30;
  v10 = v6;
  v7 = v6;
  [dsCopy enumerateObjectsUsingBlock:v9];

  [v7 appendString:@";"]);
  pStmt = 0;
  FCFDBInvokePrepare(self->_db, v7, &pStmt);
  FCFDBInvokeStep(self->_db, pStmt);
  FCFDBInvokeFinalize(self->_db, pStmt);
}

void __42__FCFDBConnection_deleteFeedItemsWithIDs___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendFormat:@", "];
  }

  [*(a1 + 32) appendFormat:@"'%@'", v5];
}

- (void)_prepareForUse
{
  sqlite3_busy_timeout(self->_db, 1000);
  FCFDBInvokeExec(self->_db, "PRAGMA journal_mode = WAL;");
  FCFDBInvokeExec(self->_db, "PRAGMA auto_vacuum = incremental");
  FCFDBInvokeExec(self->_db, "CREATE TABLE IF NOT EXISTS metadata (last_feed_lookup_id INTEGER, last_feed_item_id INTEGER);");
  FCFDBInvokeExec(self->_db, "CREATE TABLE IF NOT EXISTS feed (feed_id STRING PRIMARY KEY, lookup_id INTEGER, refreshed_from_order INTEGER, refreshed_to_order INTEGER, fetched_ranges BLOB);");
  FCFDBInvokeExec(self->_db, "CREATE TABLE IF NOT EXISTS feed_item_lookup (feed_lookup_id INTEGER, feed_item_order INTEGER, feature INTEGER);");
  FCFDBInvokeExec(self->_db, "CREATE TABLE IF NOT EXISTS feed_item (id INTEGER PRIMARY KEY, encoded BLOB);");
  db = self->_db;

  FCFDBInvokeExec(db, "CREATE UNIQUE INDEX IF NOT EXISTS index_feed_item_lookup ON feed_item_lookup (feed_lookup_id, feed_item_order, feature);");
}

- (id)_queryWhereClauseForFeedLookupIDs:(id)ds feedRange:(id)range feature:(id)feature
{
  v7 = MEMORY[0x1E696AD60];
  featureCopy = feature;
  rangeCopy = range;
  dsCopy = ds;
  v11 = objc_msgSend(v7, "stringWithString:", @"WHERE feed_lookup_id IN (");
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__FCFDBConnection__queryWhereClauseForFeedLookupIDs_feedRange_feature___block_invoke;
  v18[3] = &unk_1E7C38A30;
  v12 = v11;
  v19 = v12;
  [dsCopy enumerateObjectsUsingBlock:v18];

  v13 = [rangeCopy top];
  order = [v13 order];
  bottom = [rangeCopy bottom];

  [v12 appendFormat:@" AND feed_item_order <= %llu AND feed_item_order > %llu"], order, objc_msgSend(bottom, "order"));
  v16 = [featureCopy hash];

  [v12 appendFormat:@" AND feature = %lld", v16];

  return v12;
}

void __71__FCFDBConnection__queryWhereClauseForFeedLookupIDs_feedRange_feature___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendFormat:@", "];
  }

  [*(a1 + 32) appendFormat:@"%@", v5];
}

- (id)_queryToSelectFeedItemIDsWithFeedLookupIDs:(id)ds feedRange:(id)range feature:(id)feature totalMaxCount:(unint64_t)count
{
  v10 = MEMORY[0x1E696AD60];
  featureCopy = feature;
  rangeCopy = range;
  dsCopy = ds;
  v14 = [v10 stringWithString:{@"SELECT feed_lookup_id, feed_item_order FROM feed_item_lookup "}];
  v15 = [(FCFDBConnection *)self _queryWhereClauseForFeedLookupIDs:dsCopy feedRange:rangeCopy feature:featureCopy];

  [v14 appendString:v15];
  if (count - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [v14 appendFormat:@" ORDER BY feed_item_order DESC LIMIT %lu", count];
  }

  [v14 appendString:@";"];

  return v14;
}

- (id)_queryToSelectFeedItemIDsWithFeedLookupIDs:(id)ds feedRange:(id)range feature:(id)feature maxCountByFeedLookupID:(id)d totalMaxCount:(unint64_t)count
{
  dCopy = d;
  v13 = MEMORY[0x1E696AD60];
  featureCopy = feature;
  rangeCopy = range;
  dsCopy = ds;
  v17 = objc_msgSend(v13, "stringWithString:", @"WITH items AS (SELECT feed_lookup_id, feed_item_order, ROW_NUMBER() OVER (PARTITION BY feed_lookup_id ORDER BY feed_item_order DESC) AS row_num FROM feed_item_lookup ");
  v18 = [(FCFDBConnection *)self _queryWhereClauseForFeedLookupIDs:dsCopy feedRange:rangeCopy feature:featureCopy];

  [v17 appendString:v18];
  [v17 appendString:{@" SELECT feed_lookup_id, feed_item_order FROM items WHERE "}]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __117__FCFDBConnection__queryToSelectFeedItemIDsWithFeedLookupIDs_feedRange_feature_maxCountByFeedLookupID_totalMaxCount___block_invoke;
  v24[3] = &unk_1E7C38AA8;
  v19 = v17;
  v25 = v19;
  v26 = dCopy;
  v20 = dCopy;
  [dsCopy enumerateObjectsUsingBlock:v24];

  if (count - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [v19 appendFormat:@" ORDER BY feed_item_order DESC LIMIT %lu", count];
  }

  [v19 appendString:@";"];
  v21 = v26;
  v22 = v19;

  return v19;
}

void __117__FCFDBConnection__queryToSelectFeedItemIDsWithFeedLookupIDs_feedRange_feature_maxCountByFeedLookupID_totalMaxCount___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = v5;
  if (a3)
  {
    v6 = CFSTR(" OR (feed_lookup_id = %@");
  }

  else
  {
    v6 = CFSTR("(feed_lookup_id = %@");
  }

  [*(a1 + 32) appendFormat:v6, v5];
  v7 = [*(a1 + 40) objectForKeyedSubscript:v9];
  v8 = *(a1 + 32);
  if (v7)
  {
    [v8 appendFormat:@" AND row_num <= %@"], v7);
  }

  else
  {
    [v8 appendString:@""]);
  }
}

@end