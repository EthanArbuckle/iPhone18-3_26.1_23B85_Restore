@interface BCSShardItemPersistentStore
- (BCSShardItemPersistentStore)initWithSchemaVersion:(int64_t)a3;
- (id)databasePath;
- (id)shardItemMatching:(id)a3;
- (int64_t)countOfExpiredShardsOfType:(int64_t)a3;
- (int64_t)countOfShardsOfType:(int64_t)a3;
- (sqlite3_int64)_executeCountSQLQuery:(void *)a1;
- (void)deleteExpiredShardItemsOfType:(int64_t)a3;
- (void)deleteShardItemMatching:(id)a3;
- (void)deleteShardItemsOfType:(int64_t)a3;
- (void)schemaVersionWillChangeForDatabase:(sqlite3 *)a3 fromSchemaVersion:(int64_t)a4 toSchemaVersion:(int64_t)a5;
- (void)updateShardItem:(id)a3 withShardIdentifier:(id)a4;
@end

@implementation BCSShardItemPersistentStore

- (BCSShardItemPersistentStore)initWithSchemaVersion:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = BCSShardItemPersistentStore;
  result = [(BCSPersistentStore *)&v5 init];
  if (result)
  {
    result->_schemaVersion = a3;
  }

  return result;
}

- (id)databasePath
{
  if (self)
  {
    if (![_databasePath_databasePath length])
    {
      v3 = +[BCSPathProvider sharedInstance];
      v4 = [v3 documentsURL];
      v5 = [v4 path];

      v6 = [v5 stringByAppendingPathComponent:@"shard_items.db"];
      v7 = _databasePath_databasePath;
      _databasePath_databasePath = v6;
    }

    self = _databasePath_databasePath;
    v2 = vars8;
  }

  return self;
}

- (void)schemaVersionWillChangeForDatabase:(sqlite3 *)a3 fromSchemaVersion:(int64_t)a4 toSchemaVersion:(int64_t)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[BCSShardItemPersistentStore schemaVersionWillChangeForDatabase:fromSchemaVersion:toSchemaVersion:]";
    v15 = 2048;
    v16 = a4;
    v17 = 2048;
    v18 = a5;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s schema version will change from '%ld' to '%ld', dropping shard_items table", buf, 0x20u);
  }

  ppStmt = 0;
  if (!sqlite3_prepare_v2(a3, "DROP TABLE IF EXISTS shard_items", -1, &ppStmt, 0))
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = sqlite3_errmsg(a3);
        *buf = 136315138;
        v14 = v11;
        _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "error while dropping shard_items table: %s", buf, 0xCu);
      }
    }

    sqlite3_finalize(ppStmt);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateShardItem:(id)a3 withShardIdentifier:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  [(BCSPersistentStore *)self beginBatch];
  [(BCSShardItemPersistentStore *)self deleteShardItemMatching:v6];
  v8 = v7;
  if (self)
  {
    [(BCSPersistentStore *)self beginBatch];
    ppStmt = 0;
    v9 = [CFSTR(""insert into shard_items (bloom_filter_string start_index];
    v10 = ABSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [v8 base64EncodedString];
      v11 = v26 = v6;
      v12 = [v11 length];
      v13 = [v8 startIndex];
      v14 = [v8 shardCount];
      v15 = [v8 type];
      v16 = [v8 expirationDate];
      *buf = 136316418;
      v29 = "[BCSShardItemPersistentStore _updateShardItem:withShardIdentifier:]";
      v30 = 2048;
      v31 = v12;
      v32 = 2048;
      v33 = v13;
      v34 = 2048;
      v35 = v14;
      v36 = 2048;
      v37 = v15;
      v38 = 2112;
      v39 = v16;
      _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "%s Inserting shard into DB Shard Item of length %lu startIndex %lld shardCount %lld type %ld %@", buf, 0x3Eu);

      v6 = v26;
    }

    if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], v9, -1, &ppStmt, 0))
    {
      v17 = ppStmt;
      v18 = [v8 base64EncodedString];
      sqlite3_bind_text(v17, 1, [v18 UTF8String], -1, 0);

      sqlite3_bind_int64(ppStmt, 2, [v8 startIndex]);
      sqlite3_bind_int64(ppStmt, 3, [v8 shardCount]);
      sqlite3_bind_int(ppStmt, 4, [v8 type]);
      v19 = ppStmt;
      v20 = [v8 expirationDate];
      [v20 timeIntervalSince1970];
      sqlite3_bind_double(v19, 5, v21);

      v22 = sqlite3_step(ppStmt);
      sqlite3_finalize(ppStmt);
      if (v22 != 101)
      {
        v23 = ABSLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v25 = sqlite3_errmsg([(BCSPersistentStore *)self openedDatabase]);
          *buf = 134218242;
          v29 = v22;
          v30 = 2080;
          v31 = v25;
          _os_log_error_impl(&dword_242072000, v23, OS_LOG_TYPE_ERROR, "Error while finalizing insert shard item %lu %s", buf, 0x16u);
        }
      }
    }

    [(BCSPersistentStore *)self endBatch];
  }

  v24 = *MEMORY[0x277D85DE8];

  [(BCSPersistentStore *)self endBatch];
}

- (id)shardItemMatching:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "[BCSShardItemPersistentStore shardItemMatching:]";
    v18 = 2048;
    v19 = [v4 startIndex];
    v20 = 2048;
    v21 = [v4 shardCount];
    v22 = 2048;
    v23 = [v4 type];
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s Fetching shard from DB Shard Item from startIndex %lld shardCount %lld type %ld", buf, 0x2Au);
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"select * from shard_items where start_index=%lld AND shard_count = %lld AND bloom_filter_type = %ld", objc_msgSend(v4, "startIndex"), objc_msgSend(v4, "shardCount"), objc_msgSend(v4, "type")];
  v7 = [v6 UTF8String];

  if (self)
  {
    [(BCSPersistentStore *)self beginBatch];
    *buf = 0;
    v8 = 0;
    if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], v7, -1, buf, 0))
    {
      if (sqlite3_step(*buf) == 100)
      {
        v9 = *buf;
        if (sqlite3_column_text(*buf, 1))
        {
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{sqlite3_column_text(v9, 1)}];
        }

        else
        {
          v10 = &stru_28544C2A0;
        }

        v11 = sqlite3_column_int64(v9, 2);
        v12 = sqlite3_column_int64(v9, 3);
        v13 = sqlite3_column_int(v9, 4);
        v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_double(v9, 5)}];
        v8 = [[BCSFilterShardItem alloc] initWithBloomFilterString:v10 startIndex:v11 shardCount:v12 type:v13 expirationDate:v14];
      }

      else
      {
        v8 = 0;
      }

      sqlite3_finalize(*buf);
    }

    [(BCSPersistentStore *)self endBatch];
  }

  else
  {
    v8 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)deleteShardItemMatching:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v5 startIndex];
  v7 = [v5 shardCount];
  v8 = [v5 type];

  v9 = [v4 stringWithFormat:@"delete from shard_items where start_index=%lld AND shard_count = %lld AND bloom_filter_type = %ld", v6, v7, v8];
  v10 = [v9 UTF8String];

  [(BCSLinkItemPersistentStore *)self _executeDeleteSQLQuery:v10];
}

- (void)deleteShardItemsOfType:(int64_t)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"delete from shard_items where bloom_filter_type = %ld", a3];
  v5 = [v4 UTF8String];

  [(BCSLinkItemPersistentStore *)self _executeDeleteSQLQuery:v5];
}

- (void)deleteExpiredShardItemsOfType:(int64_t)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSince1970];
  v8 = [v5 stringWithFormat:@"delete from shard_items where bloom_filter_type = %ld AND expiration_date <= %f", a3, v7];
  v9 = [v8 UTF8String];

  [(BCSLinkItemPersistentStore *)self _executeDeleteSQLQuery:v9];
}

- (int64_t)countOfShardsOfType:(int64_t)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"select count(*) from shard_items where bloom_filter_type = %ld", a3];
  v5 = [v4 UTF8String];

  return [(BCSShardItemPersistentStore *)self _executeCountSQLQuery:v5];
}

- (sqlite3_int64)_executeCountSQLQuery:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  [a1 beginBatch];
  ppStmt = 0;
  v4 = sqlite3_prepare_v2([a1 openedDatabase], a2, -1, &ppStmt, 0);
  v5 = 0;
  if (!v4)
  {
    if (sqlite3_step(ppStmt) == 100)
    {
      v5 = sqlite3_column_int64(ppStmt, 0);
    }

    else
    {
      v5 = 0;
    }

    sqlite3_finalize(ppStmt);
  }

  [a1 endBatch];
  return v5;
}

- (int64_t)countOfExpiredShardsOfType:(int64_t)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSince1970];
  v8 = [v5 stringWithFormat:@"select count(*) from shard_items where bloom_filter_type = %ld AND expiration_date <= %f", a3, v7];
  v9 = [v8 UTF8String];

  return [(BCSShardItemPersistentStore *)self _executeCountSQLQuery:v9];
}

@end