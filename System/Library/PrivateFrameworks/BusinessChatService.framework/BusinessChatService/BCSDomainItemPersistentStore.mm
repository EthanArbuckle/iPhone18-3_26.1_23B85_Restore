@interface BCSDomainItemPersistentStore
- (BOOL)executeDeleteDomainDomainItemSQLQuery:(id)a3;
- (id)databasePath;
- (id)domainItemMatching:(id)a3;
- (void)deleteAllDomainItems;
- (void)deleteAllExpiredDomainItems;
- (void)deleteDomainItemMatching:(id)a3;
- (void)updateDomainItem:(id)a3 withDomainItemIdentifier:(id)a4;
- (void)updateDomainItemsForDomainShard:(id)a3;
@end

@implementation BCSDomainItemPersistentStore

- (id)databasePath
{
  if (![databasePath_databasePath_0 length])
  {
    v2 = +[BCSPathProvider sharedInstance];
    v3 = [v2 documentsURL];
    v4 = [v3 path];

    v5 = [v4 stringByAppendingPathComponent:@"domain_shard_items.db"];
    v6 = databasePath_databasePath_0;
    databasePath_databasePath_0 = v5;
  }

  v7 = databasePath_databasePath_0;

  return v7;
}

- (id)domainItemMatching:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [a3 domain];
  v6 = [v4 stringWithFormat:@"select * from domain_shard_items where domain=%@", v5];
  v7 = [v6 UTF8String];

  [(BCSPersistentStore *)self beginBatch];
  ppStmt = 0;
  v8 = 0;
  if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], v7, -1, &ppStmt, 0))
  {
    if (sqlite3_step(ppStmt) == 100)
    {
      if (sqlite3_column_text(ppStmt, 1))
      {
        v9 = objc_alloc(MEMORY[0x277CCACA8]);
        v10 = [v9 initWithUTF8String:{sqlite3_column_text(ppStmt, 1)}];
      }

      else
      {
        v10 = &stru_28544C2A0;
      }

      v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_double(ppStmt, 2)}];
      v8 = [[BCSDomainItem alloc] initWithBase64EncodedShardString:v10 expirationDate:v11];
    }

    else
    {
      v8 = 0;
    }

    sqlite3_finalize(ppStmt);
  }

  [(BCSPersistentStore *)self endBatch];

  return v8;
}

- (void)updateDomainItemsForDomainShard:(id)a3
{
  v17 = a3;
  v4 = [BCSLineReader alloc];
  v5 = [v17 fileURL];
  v6 = [(BCSLineReader *)v4 initWithFileURL:v5];

  v7 = [(BCSLineReader *)v6 readLine];
  v8 = objc_autoreleasePoolPush();
  v9 = [(BCSLineReader *)v6 readLine];
  if (v9)
  {
    v10 = v9;
    do
    {
      v11 = [BCSDomainItem alloc];
      v12 = [v17 expirationDate];
      v13 = [(BCSDomainItem *)v11 initWithBase64EncodedShardString:v10 expirationDate:v12];

      v14 = [(BCSDomainItem *)v13 domain];
      v15 = [BCSDomainItemIdentifier identifierWithType:3 domain:v14];

      v16 = [(BCSDomainItemPersistentStore *)self domainItemMatching:v15];

      if (v16)
      {
        [(BCSDomainItemPersistentStore *)self deleteDomainItemMatching:v15];
      }

      [(BCSDomainItemPersistentStore *)self updateDomainItem:v13 withDomainItemIdentifier:v15];

      objc_autoreleasePoolPop(v8);
      v8 = objc_autoreleasePoolPush();
      v10 = [(BCSLineReader *)v6 readLine];
    }

    while (v10);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)updateDomainItem:(id)a3 withDomainItemIdentifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(BCSPersistentStore *)self beginBatch];
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[BCSPersistentStore openedDatabase](self, "openedDatabase"), [@""insert into domain_shard_items (domain shard_item], -1, &ppStmt, 0)
  {
    v6 = ppStmt;
    v7 = [v5 domain];
    sqlite3_bind_text(v6, 1, [v7 UTF8String], -1, 0);

    v8 = ppStmt;
    v9 = [v5 base64EncodedShardString];
    sqlite3_bind_text(v8, 2, [v9 UTF8String], -1, 0);

    v10 = ppStmt;
    v11 = [v5 expirationDate];
    [v11 timeIntervalSince1970];
    sqlite3_bind_double(v10, 3, v12);

    v13 = sqlite3_step(ppStmt);
    sqlite3_finalize(ppStmt);
    if (v13 != 101)
    {
      v14 = ABSLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = sqlite3_errmsg([(BCSPersistentStore *)self openedDatabase]);
        *buf = 134218242;
        v19 = v13;
        v20 = 2080;
        v21 = v16;
        _os_log_error_impl(&dword_242072000, v14, OS_LOG_TYPE_ERROR, "Error while finalizing insert shard item %lu %s", buf, 0x16u);
      }
    }
  }

  [(BCSPersistentStore *)self endBatch];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)deleteDomainItemMatching:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [a3 domain];
  v6 = [v4 stringWithFormat:@"delete from domain_shard_items where domain=%@", v5];

  [(BCSDomainItemPersistentStore *)self executeDeleteDomainDomainItemSQLQuery:v6];
}

- (void)deleteAllDomainItems
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"delete from domain_shard_items"];
  [(BCSDomainItemPersistentStore *)self executeDeleteDomainDomainItemSQLQuery:v3];
}

- (void)deleteAllExpiredDomainItems
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSince1970];
  v6 = [v3 stringWithFormat:@"delete from domain_shard_items where expiration_date <= %f", v5];

  [(BCSDomainItemPersistentStore *)self executeDeleteDomainDomainItemSQLQuery:v6];
}

- (BOOL)executeDeleteDomainDomainItemSQLQuery:(id)a3
{
  v4 = a3;
  [(BCSPersistentStore *)self beginBatch];
  ppStmt = 0;
  v5 = [(BCSPersistentStore *)self openedDatabase];
  v6 = [v4 UTF8String];

  if (sqlite3_prepare_v2(v5, v6, -1, &ppStmt, 0))
  {
    v7 = 0;
  }

  else
  {
    v7 = sqlite3_step(ppStmt) == 101;
    sqlite3_finalize(ppStmt);
  }

  [(BCSPersistentStore *)self endBatch];
  return v7;
}

@end