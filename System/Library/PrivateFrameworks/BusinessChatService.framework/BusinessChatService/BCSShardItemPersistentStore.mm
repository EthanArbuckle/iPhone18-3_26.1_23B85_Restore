@interface BCSShardItemPersistentStore
- (BCSShardItemPersistentStore)initWithSchemaVersion:(int64_t)version;
- (id)databasePath;
- (id)shardItemMatching:(id)matching;
- (int64_t)countOfExpiredShardsOfType:(int64_t)type;
- (int64_t)countOfShardsOfType:(int64_t)type;
- (sqlite3_int64)_executeCountSQLQuery:(void *)query;
- (void)deleteExpiredShardItemsOfType:(int64_t)type;
- (void)deleteShardItemMatching:(id)matching;
- (void)deleteShardItemsOfType:(int64_t)type;
- (void)schemaVersionWillChangeForDatabase:(sqlite3 *)database fromSchemaVersion:(int64_t)version toSchemaVersion:(int64_t)schemaVersion;
- (void)updateShardItem:(id)item withShardIdentifier:(id)identifier;
@end

@implementation BCSShardItemPersistentStore

- (BCSShardItemPersistentStore)initWithSchemaVersion:(int64_t)version
{
  v5.receiver = self;
  v5.super_class = BCSShardItemPersistentStore;
  result = [(BCSPersistentStore *)&v5 init];
  if (result)
  {
    result->_schemaVersion = version;
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
      documentsURL = [v3 documentsURL];
      path = [documentsURL path];

      v6 = [path stringByAppendingPathComponent:@"shard_items.db"];
      v7 = _databasePath_databasePath;
      _databasePath_databasePath = v6;
    }

    self = _databasePath_databasePath;
    v2 = vars8;
  }

  return self;
}

- (void)schemaVersionWillChangeForDatabase:(sqlite3 *)database fromSchemaVersion:(int64_t)version toSchemaVersion:(int64_t)schemaVersion
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[BCSShardItemPersistentStore schemaVersionWillChangeForDatabase:fromSchemaVersion:toSchemaVersion:]";
    v15 = 2048;
    versionCopy = version;
    v17 = 2048;
    schemaVersionCopy = schemaVersion;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s schema version will change from '%ld' to '%ld', dropping shard_items table", buf, 0x20u);
  }

  ppStmt = 0;
  if (!sqlite3_prepare_v2(database, "DROP TABLE IF EXISTS shard_items", -1, &ppStmt, 0))
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = sqlite3_errmsg(database);
        *buf = 136315138;
        v14 = v11;
        _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "error while dropping shard_items table: %s", buf, 0xCu);
      }
    }

    sqlite3_finalize(ppStmt);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateShardItem:(id)item withShardIdentifier:(id)identifier
{
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  itemCopy = item;
  [(BCSPersistentStore *)self beginBatch];
  [(BCSShardItemPersistentStore *)self deleteShardItemMatching:identifierCopy];
  v8 = itemCopy;
  if (self)
  {
    [(BCSPersistentStore *)self beginBatch];
    ppStmt = 0;
    start_index = [CFSTR(""insert into shard_items (bloom_filter_string start_index];
    v10 = ABSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [v8 base64EncodedString];
      v11 = v26 = identifierCopy;
      v12 = [v11 length];
      startIndex = [v8 startIndex];
      shardCount = [v8 shardCount];
      type = [v8 type];
      expirationDate = [v8 expirationDate];
      *buf = 136316418;
      v29 = "[BCSShardItemPersistentStore _updateShardItem:withShardIdentifier:]";
      v30 = 2048;
      v31 = v12;
      v32 = 2048;
      v33 = startIndex;
      v34 = 2048;
      v35 = shardCount;
      v36 = 2048;
      v37 = type;
      v38 = 2112;
      v39 = expirationDate;
      _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "%s Inserting shard into DB Shard Item of length %lu startIndex %lld shardCount %lld type %ld %@", buf, 0x3Eu);

      identifierCopy = v26;
    }

    if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], start_index, -1, &ppStmt, 0))
    {
      v17 = ppStmt;
      base64EncodedString = [v8 base64EncodedString];
      sqlite3_bind_text(v17, 1, [base64EncodedString UTF8String], -1, 0);

      sqlite3_bind_int64(ppStmt, 2, [v8 startIndex]);
      sqlite3_bind_int64(ppStmt, 3, [v8 shardCount]);
      sqlite3_bind_int(ppStmt, 4, [v8 type]);
      v19 = ppStmt;
      expirationDate2 = [v8 expirationDate];
      [expirationDate2 timeIntervalSince1970];
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

- (id)shardItemMatching:(id)matching
{
  v24 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "[BCSShardItemPersistentStore shardItemMatching:]";
    v18 = 2048;
    startIndex = [matchingCopy startIndex];
    v20 = 2048;
    shardCount = [matchingCopy shardCount];
    v22 = 2048;
    type = [matchingCopy type];
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s Fetching shard from DB Shard Item from startIndex %lld shardCount %lld type %ld", buf, 0x2Au);
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"select * from shard_items where start_index=%lld AND shard_count = %lld AND bloom_filter_type = %ld", objc_msgSend(matchingCopy, "startIndex"), objc_msgSend(matchingCopy, "shardCount"), objc_msgSend(matchingCopy, "type")];
  uTF8String = [v6 UTF8String];

  if (self)
  {
    [(BCSPersistentStore *)self beginBatch];
    *buf = 0;
    v8 = 0;
    if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], uTF8String, -1, buf, 0))
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

- (void)deleteShardItemMatching:(id)matching
{
  v4 = MEMORY[0x277CCACA8];
  matchingCopy = matching;
  startIndex = [matchingCopy startIndex];
  shardCount = [matchingCopy shardCount];
  type = [matchingCopy type];

  v9 = [v4 stringWithFormat:@"delete from shard_items where start_index=%lld AND shard_count = %lld AND bloom_filter_type = %ld", startIndex, shardCount, type];
  uTF8String = [v9 UTF8String];

  [(BCSLinkItemPersistentStore *)self _executeDeleteSQLQuery:uTF8String];
}

- (void)deleteShardItemsOfType:(int64_t)type
{
  type = [MEMORY[0x277CCACA8] stringWithFormat:@"delete from shard_items where bloom_filter_type = %ld", type];
  uTF8String = [type UTF8String];

  [(BCSLinkItemPersistentStore *)self _executeDeleteSQLQuery:uTF8String];
}

- (void)deleteExpiredShardItemsOfType:(int64_t)type
{
  v5 = MEMORY[0x277CCACA8];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v8 = [v5 stringWithFormat:@"delete from shard_items where bloom_filter_type = %ld AND expiration_date <= %f", type, v7];
  uTF8String = [v8 UTF8String];

  [(BCSLinkItemPersistentStore *)self _executeDeleteSQLQuery:uTF8String];
}

- (int64_t)countOfShardsOfType:(int64_t)type
{
  type = [MEMORY[0x277CCACA8] stringWithFormat:@"select count(*) from shard_items where bloom_filter_type = %ld", type];
  uTF8String = [type UTF8String];

  return [(BCSShardItemPersistentStore *)self _executeCountSQLQuery:uTF8String];
}

- (sqlite3_int64)_executeCountSQLQuery:(void *)query
{
  if (!query)
  {
    return 0;
  }

  [query beginBatch];
  ppStmt = 0;
  v4 = sqlite3_prepare_v2([query openedDatabase], a2, -1, &ppStmt, 0);
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

  [query endBatch];
  return v5;
}

- (int64_t)countOfExpiredShardsOfType:(int64_t)type
{
  v5 = MEMORY[0x277CCACA8];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v8 = [v5 stringWithFormat:@"select count(*) from shard_items where bloom_filter_type = %ld AND expiration_date <= %f", type, v7];
  uTF8String = [v8 UTF8String];

  return [(BCSShardItemPersistentStore *)self _executeCountSQLQuery:uTF8String];
}

@end