@interface FCFDBConnection
- (FCFDBConnection)initWithPath:(id)a3;
- (id)_queryToSelectFeedItemIDsWithFeedLookupIDs:(id)a3 feedRange:(id)a4 feature:(id)a5 maxCountByFeedLookupID:(id)a6 totalMaxCount:(unint64_t)a7;
- (id)_queryToSelectFeedItemIDsWithFeedLookupIDs:(id)a3 feedRange:(id)a4 feature:(id)a5 totalMaxCount:(unint64_t)a6;
- (id)_queryWhereClauseForFeedLookupIDs:(id)a3 feedRange:(id)a4 feature:(id)a5;
- (id)selectFeedItemIDsWithFeedLookupIDs:(id)a3 feedRange:(id)a4 feature:(id)a5 maxCountByFeedLookupID:(id)a6 totalMaxCount:(unint64_t)a7;
- (id)selectFeedItemsWithIDs:(id)a3;
- (id)selectFeedsWithFeedIDs:(id)a3;
- (int64_t)selectMaxFeedLookupID;
- (void)_prepareForUse;
- (void)beginTransaction;
- (void)commitTransaction;
- (void)dealloc;
- (void)deleteFeedItemIndexesFromFeedLookupID:(id)a3 feedRange:(id)a4;
- (void)deleteFeedItemsWithIDs:(id)a3;
- (void)insertFeatureIndexesForFeedItems:(id)a3 knownFeedsByID:(id)a4;
- (void)insertFeedItems:(id)a3 knownFeedsByID:(id)a4;
- (void)insertFeeds:(id)a3;
- (void)insertIndexesForFeedItems:(id)a3 knownFeedsByID:(id)a4;
@end

@implementation FCFDBConnection

- (FCFDBConnection)initWithPath:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FCFDBConnection;
  v5 = [(FCFDBConnection *)&v10 init];
  if (v5)
  {
    if (FCFDBInvokeOpen([v4 cStringUsingEncoding:4], &v5->_db))
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

- (id)selectFeedsWithFeedIDs:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"SELECT * FROM feed WHERE feed_id IN (");
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __42__FCFDBConnection_selectFeedsWithFeedIDs___block_invoke;
  v17[3] = &unk_1E7C389E0;
  v7 = v6;
  v18 = v7;
  [v4 enumerateObjectsUsingBlock:v17];
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
    v14 = [v13 feedID];
    [v5 setObject:v13 forKey:v14];
  }

  FCFDBInvokeFinalize(self->_db, pStmt);

  return v5;
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

- (id)selectFeedItemIDsWithFeedLookupIDs:(id)a3 feedRange:(id)a4 feature:(id)a5 maxCountByFeedLookupID:(id)a6 totalMaxCount:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [MEMORY[0x1E695DF70] array];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __109__FCFDBConnection_selectFeedItemIDsWithFeedLookupIDs_feedRange_feature_maxCountByFeedLookupID_totalMaxCount___block_invoke;
  v26[3] = &unk_1E7C38A08;
  v17 = v15;
  v27 = v17;
  v28 = self;
  v18 = v12;
  v29 = v18;
  v19 = v13;
  v30 = v19;
  v20 = v14;
  v31 = v20;
  v32 = a7;
  v21 = __109__FCFDBConnection_selectFeedItemIDsWithFeedLookupIDs_feedRange_feature_maxCountByFeedLookupID_totalMaxCount___block_invoke(v26);
  pStmt = 0;
  FCFDBInvokePrepare(self->_db, v21, &pStmt);
  while (FCFDBInvokeStep(self->_db, pStmt) == 100)
  {
    v22 = sqlite3_column_int64(pStmt, 0);
    v23 = [MEMORY[0x1E696AD98] numberWithLongLong:{v22 | (sqlite3_column_int64(pStmt, 1) << 20)}];
    [v16 addObject:v23];
  }

  FCFDBInvokeFinalize(self->_db, pStmt);

  return v16;
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

- (id)selectFeedItemsWithIDs:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"SELECT * FROM feed_item WHERE id IN (");
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __42__FCFDBConnection_selectFeedItemsWithIDs___block_invoke;
  v16[3] = &unk_1E7C38A30;
  v7 = v6;
  v17 = v7;
  [v4 enumerateObjectsUsingBlock:v16];
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
      [v5 setObject:v12 forKey:v13];
    }

    objc_autoreleasePoolPop(v8);
  }

  FCFDBInvokeFinalize(self->_db, pStmt);

  return v5;
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

- (void)insertFeeds:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  pStmt = 0;
  FCFDBInvokePrepare(self->_db, @"INSERT OR REPLACE INTO feed (feed_id, lookup_id, refreshed_from_order, refreshed_to_order, fetched_ranges) VALUES (?, ?, ?, ?, ?);", &pStmt);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
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
        v12 = [v10 feedID];
        sqlite3_bind_text(v11, 1, [v12 cStringUsingEncoding:4], -1, 0);

        sqlite3_bind_int64(pStmt, 2, [v10 feedLookupID]);
        sqlite3_bind_int64(pStmt, 3, [v10 refreshedFromOrder]);
        sqlite3_bind_int64(pStmt, 4, [v10 refreshedToOrder]);
        v13 = [v10 fetchedRangesData];
        sqlite3_bind_blob(pStmt, 5, [v13 bytes], objc_msgSend(v13, "length"), 0xFFFFFFFFFFFFFFFFLL);
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

- (void)insertFeedItems:(id)a3 knownFeedsByID:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  pStmt = 0;
  FCFDBInvokePrepare(self->_db, @"INSERT OR IGNORE INTO feed_item (id, encoded) VALUES (?, ?);", &pStmt);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
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
        v15 = [v14 feedID];
        v16 = [v7 objectForKey:v15];

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

        v17 = [v16 feedLookupID];
        v18 = v17 | ([v14 order] << 20);
        v19 = [v14 data];
        sqlite3_bind_int64(pStmt, 1, v18);
        sqlite3_bind_blob(pStmt, 2, [v19 bytes], objc_msgSend(v19, "length"), 0);
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

- (void)insertIndexesForFeedItems:(id)a3 knownFeedsByID:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  pStmt = 0;
  FCFDBInvokePrepare(self->_db, @"INSERT OR IGNORE INTO feed_item_lookup (feed_lookup_id, feed_item_order, feature) VALUES (?, ?, 0);", &pStmt);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v6;
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
        v16 = [v15 feedID];
        v17 = [v7 objectForKey:v16];

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

- (void)insertFeatureIndexesForFeedItems:(id)a3 knownFeedsByID:(id)a4
{
  v6 = a4;
  v14 = 0;
  db = self->_db;
  v8 = a3;
  FCFDBInvokePrepare(db, @"INSERT OR IGNORE INTO feed_item_lookup (feed_lookup_id, feed_item_order, feature) VALUES (?, ?, ?);", &v14);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__FCFDBConnection_insertFeatureIndexesForFeedItems_knownFeedsByID___block_invoke;
  v10[3] = &unk_1E7C38A80;
  v12 = self;
  v13 = v14;
  v11 = v6;
  v9 = v6;
  [v8 enumerateObjectsUsingBlock:v10];

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

- (void)deleteFeedItemIndexesFromFeedLookupID:(id)a3 feedRange:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = a3;
  v9 = [v7 top];
  v10 = [v9 order];
  v11 = [v7 bottom];

  v12 = [v6 stringWithFormat:@"DELETE FROM feed_item_lookup WHERE feed_lookup_id = %@ AND feed_item_order <= %llu AND feed_item_order > %llu", v8, v10, objc_msgSend(v11, "order")];;

  pStmt = 0;
  FCFDBInvokePrepare(self->_db, v12, &pStmt);
  FCFDBInvokeStep(self->_db, pStmt);
  FCFDBInvokeFinalize(self->_db, pStmt);
}

- (void)deleteFeedItemsWithIDs:(id)a3
{
  v4 = MEMORY[0x1E696AD60];
  v5 = a3;
  v6 = objc_msgSend(v4, "stringWithString:", @"DELETE FROM feed_item WHERE id IN (");
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__FCFDBConnection_deleteFeedItemsWithIDs___block_invoke;
  v9[3] = &unk_1E7C38A30;
  v10 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:v9];

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

- (id)_queryWhereClauseForFeedLookupIDs:(id)a3 feedRange:(id)a4 feature:(id)a5
{
  v7 = MEMORY[0x1E696AD60];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_msgSend(v7, "stringWithString:", @"WHERE feed_lookup_id IN (");
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__FCFDBConnection__queryWhereClauseForFeedLookupIDs_feedRange_feature___block_invoke;
  v18[3] = &unk_1E7C38A30;
  v12 = v11;
  v19 = v12;
  [v10 enumerateObjectsUsingBlock:v18];

  v13 = [v9 top];
  v14 = [v13 order];
  v15 = [v9 bottom];

  [v12 appendFormat:@" AND feed_item_order <= %llu AND feed_item_order > %llu"], v14, objc_msgSend(v15, "order"));
  v16 = [v8 hash];

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

- (id)_queryToSelectFeedItemIDsWithFeedLookupIDs:(id)a3 feedRange:(id)a4 feature:(id)a5 totalMaxCount:(unint64_t)a6
{
  v10 = MEMORY[0x1E696AD60];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 stringWithString:{@"SELECT feed_lookup_id, feed_item_order FROM feed_item_lookup "}];
  v15 = [(FCFDBConnection *)self _queryWhereClauseForFeedLookupIDs:v13 feedRange:v12 feature:v11];

  [v14 appendString:v15];
  if (a6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [v14 appendFormat:@" ORDER BY feed_item_order DESC LIMIT %lu", a6];
  }

  [v14 appendString:@";"];

  return v14;
}

- (id)_queryToSelectFeedItemIDsWithFeedLookupIDs:(id)a3 feedRange:(id)a4 feature:(id)a5 maxCountByFeedLookupID:(id)a6 totalMaxCount:(unint64_t)a7
{
  v12 = a6;
  v13 = MEMORY[0x1E696AD60];
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_msgSend(v13, "stringWithString:", @"WITH items AS (SELECT feed_lookup_id, feed_item_order, ROW_NUMBER() OVER (PARTITION BY feed_lookup_id ORDER BY feed_item_order DESC) AS row_num FROM feed_item_lookup ");
  v18 = [(FCFDBConnection *)self _queryWhereClauseForFeedLookupIDs:v16 feedRange:v15 feature:v14];

  [v17 appendString:v18];
  [v17 appendString:{@" SELECT feed_lookup_id, feed_item_order FROM items WHERE "}]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __117__FCFDBConnection__queryToSelectFeedItemIDsWithFeedLookupIDs_feedRange_feature_maxCountByFeedLookupID_totalMaxCount___block_invoke;
  v24[3] = &unk_1E7C38AA8;
  v19 = v17;
  v25 = v19;
  v26 = v12;
  v20 = v12;
  [v16 enumerateObjectsUsingBlock:v24];

  if (a7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [v19 appendFormat:@" ORDER BY feed_item_order DESC LIMIT %lu", a7];
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