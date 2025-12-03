@interface BCSWebPresentmentPersistentStore
- (BCSWebPresentmentPersistentStore)init;
- (id)databasePath;
- (id)itemMatching:(id)matching;
- (void)deleteExpiredItemsOfType:(int64_t)type;
- (void)deleteItemMatching:(id)matching;
- (void)deleteItemsOfType:(int64_t)type;
- (void)schemaVersionWillChangeForDatabase:(sqlite3 *)database fromSchemaVersion:(int64_t)version toSchemaVersion:(int64_t)schemaVersion;
- (void)updateItem:(id)item withItemIdentifier:(id)identifier;
@end

@implementation BCSWebPresentmentPersistentStore

- (BCSWebPresentmentPersistentStore)init
{
  if (self)
  {
    v2.receiver = self;
    v2.super_class = BCSWebPresentmentPersistentStore;
    self = [(BCSPersistentStore *)&v2 init];
    if (self)
    {
      self->_schemaVersion = 2;
    }
  }

  return self;
}

- (id)databasePath
{
  if (![databasePath_databasePath_1 length])
  {
    v2 = +[BCSPathProvider sharedInstance];
    documentsURL = [v2 documentsURL];
    path = [documentsURL path];

    v5 = [path stringByAppendingPathComponent:@"web_presentment_items.db"];
    v6 = databasePath_databasePath_1;
    databasePath_databasePath_1 = v5;
  }

  v7 = databasePath_databasePath_1;

  return v7;
}

- (void)schemaVersionWillChangeForDatabase:(sqlite3 *)database fromSchemaVersion:(int64_t)version toSchemaVersion:(int64_t)schemaVersion
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "[BCSWebPresentmentPersistentStore schemaVersionWillChangeForDatabase:fromSchemaVersion:toSchemaVersion:]";
    v17 = 2048;
    versionCopy = version;
    v19 = 2048;
    schemaVersionCopy = schemaVersion;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s schema version will change from '%ld' to '%ld', dropping link_items table", buf, 0x20u);
  }

  ppStmt = 0;
  if (!sqlite3_prepare_v2(database, "DROP TABLE IF EXISTS web_presentment_items", -1, &ppStmt, 0))
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = sqlite3_errmsg(database);
        *buf = 136315138;
        v16 = v12;
        _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "error while dropping web_presentment_items table: %s", buf, 0xCu);
      }
    }

    sqlite3_finalize(ppStmt);
    ppStmt = 0;
  }

  if (!sqlite3_prepare_v2(database, "DROP TABLE IF EXISTS web_presentment_permissions", -1, &ppStmt, 0))
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      v10 = ABSLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = sqlite3_errmsg(database);
        *buf = 136315138;
        v16 = v13;
        _os_log_error_impl(&dword_242072000, v10, OS_LOG_TYPE_ERROR, "error while dropping web_presentment_permissions table: %s", buf, 0xCu);
      }
    }

    sqlite3_finalize(ppStmt);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deleteExpiredItemsOfType:(int64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSWebPresentmentPersistentStore deleteExpiredItemsOfType:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (type == 5)
  {
    [(BCSPersistentStore *)self beginBatch];
    v6 = MEMORY[0x277CCACA8];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v9 = [v6 stringWithFormat:@"DELETE FROM web_presentment_items WHERE expiration_date <= %f", v8];
    uTF8String = [v9 UTF8String];

    *buf = 0;
    if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], uTF8String, -1, buf, 0))
    {
      sqlite3_step(*buf);
      sqlite3_finalize(*buf);
    }

    v11 = MEMORY[0x277CCACA8];
    date2 = [MEMORY[0x277CBEAA8] date];
    [date2 timeIntervalSince1970];
    v14 = [v11 stringWithFormat:@"DELETE FROM web_presentment_permissions WHERE expiration_date <= %f", v13];
    uTF8String2 = [v14 UTF8String];

    *buf = 0;
    if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], uTF8String2, -1, buf, 0))
    {
      sqlite3_step(*buf);
      sqlite3_finalize(*buf);
    }

    [(BCSPersistentStore *)self endBatch];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)deleteItemMatching:(id)matching
{
  v14 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSWebPresentmentPersistentStore deleteItemMatching:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([matchingCopy type] == 5)
  {
    v6 = matchingCopy;
    [(BCSPersistentStore *)self beginBatch];
    if ([v6 serverType] == 2)
    {
      v7 = MEMORY[0x277CCACA8];
      itemIdentifier = [v6 itemIdentifier];
      [v7 stringWithFormat:@"DELETE FROM web_presentment_items WHERE key = %@", itemIdentifier];
    }

    else
    {
      if ([v6 serverType] != 4)
      {
LABEL_10:
        [(BCSPersistentStore *)self endBatch];

        goto LABEL_11;
      }

      v9 = MEMORY[0x277CCACA8];
      itemIdentifier = [v6 itemIdentifier];
      [v9 stringWithFormat:@"DELETE FROM web_presentment_permissions WHERE key = %@", itemIdentifier];
    }
    v10 = ;
    uTF8String = [v10 UTF8String];

    *buf = 0;
    if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], uTF8String, -1, buf, 0))
    {
      sqlite3_step(*buf);
      sqlite3_finalize(*buf);
    }

    goto LABEL_10;
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deleteItemsOfType:(int64_t)type
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *pStmt = 136315138;
    *&pStmt[4] = "[BCSWebPresentmentPersistentStore deleteItemsOfType:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", pStmt, 0xCu);
  }

  if (type == 5)
  {
    [(BCSPersistentStore *)self beginBatch];
    *pStmt = 0;
    if (!sqlite3_prepare_v2(-[BCSPersistentStore openedDatabase](self, "openedDatabase"), [@"DELETE FROM web_presentment_items" UTF8String], -1, pStmt, 0))
    {
      sqlite3_step(*pStmt);
      sqlite3_finalize(*pStmt);
    }

    if (!sqlite3_prepare_v2(-[BCSPersistentStore openedDatabase](self, "openedDatabase", 0), [@"DELETE FROM web_presentment_permissions" UTF8String], -1, pStmt, 0))
    {
      sqlite3_step(*pStmt);
      sqlite3_finalize(*pStmt);
    }

    [(BCSPersistentStore *)self endBatch];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)itemMatching:(id)matching
{
  v22 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSWebPresentmentPersistentStore itemMatching:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([matchingCopy type] != 5)
  {
    v12 = 0;
    goto LABEL_19;
  }

  v6 = matchingCopy;
  if (BCSWebPresentmentStoreTypeForItemIdentifier(v6) == 1)
  {
    if (self)
    {
      v7 = v6;
      [(BCSPersistentStore *)self beginBatch];
      v8 = MEMORY[0x277CCACA8];
      itemIdentifier = [v7 itemIdentifier];

      v10 = [v8 stringWithFormat:@"SELECT key, message, expiration_date    FROM web_presentment_items    WHERE key = %@", itemIdentifier];
      uTF8String = [v10 UTF8String];

      *buf = 0;
      v12 = 0;
      if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], uTF8String, -1, buf, 0))
      {
        if (sqlite3_step(*buf) == 100)
        {
          v13 = BCSWebPresentmentItem;
LABEL_14:
          v12 = [(__objc2_class *)v13 itemFromStatement:*buf];
LABEL_16:
          sqlite3_finalize(*buf);
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      goto LABEL_17;
    }

LABEL_22:
    v12 = 0;
    goto LABEL_18;
  }

  if (!self)
  {
    goto LABEL_22;
  }

  v14 = v6;
  [(BCSPersistentStore *)self beginBatch];
  v15 = MEMORY[0x277CCACA8];
  itemIdentifier2 = [v14 itemIdentifier];

  v17 = [v15 stringWithFormat:@"SELECT key, data, expiration_date    FROM web_presentment_permissions    WHERE key = %@", itemIdentifier2];
  uTF8String2 = [v17 UTF8String];

  *buf = 0;
  v12 = 0;
  if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], uTF8String2, -1, buf, 0))
  {
    if (sqlite3_step(*buf) == 100)
    {
      v13 = BCSWebPresentmentPermissionsItem;
      goto LABEL_14;
    }

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

LABEL_17:
  [(BCSPersistentStore *)self endBatch];
LABEL_18:

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)updateItem:(id)item withItemIdentifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v32 = "[BCSWebPresentmentPersistentStore updateItem:withItemIdentifier:]";
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([identifierCopy type] == 5)
  {
    v9 = identifierCopy;
    v10 = BCSWebPresentmentStoreTypeForItemIdentifier(v9);
    v11 = itemCopy;
    v12 = v9;
    if (v10 == 1)
    {
      if (self)
      {
        [(BCSPersistentStore *)self beginBatch];
        ppStmt = 0;
        if (sqlite3_prepare_v2(-[BCSPersistentStore openedDatabase](self, "openedDatabase"), [@""INSERT OR REPLACE INTO web_presentment_items    (key message], -1, &ppStmt, 0)
        {
          v13 = ABSLogCommon();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          goto LABEL_24;
        }

        v13 = v11;
        v15 = ABSLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          brandId = [v12 brandId];
          expirationDate = [v13 expirationDate];
          *buf = 138412546;
          *v32 = brandId;
          *&v32[8] = 2112;
          *&v32[10] = expirationDate;
          _os_log_debug_impl(&dword_242072000, v15, OS_LOG_TYPE_DEBUG, "Updating WebPresentment metadata item in cache with ID: %@, expiration: %@", buf, 0x16u);
        }

        [v13 updateStatementValues:ppStmt withItemIdentifier:v12];
        v16 = sqlite3_step(ppStmt);
        if (v16 != 101)
        {
          v17 = v16;
          v18 = ABSLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = sqlite3_errmsg([(BCSPersistentStore *)self openedDatabase]);
            *buf = 67109378;
            *v32 = v17;
            *&v32[4] = 2080;
            *&v32[6] = v19;
            v20 = "Failed to insert web presentment item: %d (%s)";
LABEL_28:
            _os_log_error_impl(&dword_242072000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0x12u);
            goto LABEL_22;
          }

          goto LABEL_22;
        }

        goto LABEL_23;
      }
    }

    else if (self)
    {
      [(BCSPersistentStore *)self beginBatch];
      ppStmt = 0;
      if (sqlite3_prepare_v2(-[BCSPersistentStore openedDatabase](self, "openedDatabase"), [@""INSERT OR REPLACE INTO web_presentment_permissions    (key data], -1, &ppStmt, 0)
      {
        v13 = ABSLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
LABEL_12:
          v14 = sqlite3_errmsg([(BCSPersistentStore *)self openedDatabase]);
          *buf = 136315138;
          *v32 = v14;
          _os_log_error_impl(&dword_242072000, v13, OS_LOG_TYPE_ERROR, "Failed to update item: %s", buf, 0xCu);
        }

LABEL_24:

        [(BCSPersistentStore *)self endBatch];
        goto LABEL_25;
      }

      v13 = v11;
      v21 = ABSLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        brandId2 = [v13 brandId];
        expirationDate2 = [v13 expirationDate];
        *buf = 138412546;
        *v32 = brandId2;
        *&v32[8] = 2112;
        *&v32[10] = expirationDate2;
        _os_log_debug_impl(&dword_242072000, v21, OS_LOG_TYPE_DEBUG, "Updating WebPresentment permissions item in cache with ID: %@, expiration: %@", buf, 0x16u);
      }

      [v13 updateStatementValues:ppStmt withItemIdentifier:v12];
      v22 = sqlite3_step(ppStmt);
      if (v22 != 101)
      {
        v23 = v22;
        v18 = ABSLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v29 = sqlite3_errmsg([(BCSPersistentStore *)self openedDatabase]);
          *buf = 67109378;
          *v32 = v23;
          *&v32[4] = 2080;
          *&v32[6] = v29;
          v20 = "Failed to insert web presentment permissions item: %d (%s)";
          goto LABEL_28;
        }

LABEL_22:
      }

LABEL_23:
      sqlite3_finalize(ppStmt);
      goto LABEL_24;
    }

LABEL_25:
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end