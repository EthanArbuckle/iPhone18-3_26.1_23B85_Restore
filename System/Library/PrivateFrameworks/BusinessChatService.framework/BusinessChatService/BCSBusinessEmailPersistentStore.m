@interface BCSBusinessEmailPersistentStore
- (BCSBusinessEmailPersistentStore)init;
- (id)databasePath;
- (id)itemMatching:(id)a3;
- (void)deleteExpiredItemsOfType:(int64_t)a3;
- (void)deleteItemMatching:(id)a3;
- (void)deleteItemsOfType:(int64_t)a3;
- (void)schemaVersionWillChangeForDatabase:(sqlite3 *)a3 fromSchemaVersion:(int64_t)a4 toSchemaVersion:(int64_t)a5;
- (void)updateItem:(id)a3 withItemIdentifier:(id)a4;
@end

@implementation BCSBusinessEmailPersistentStore

- (BCSBusinessEmailPersistentStore)init
{
  if (self)
  {
    v2.receiver = self;
    v2.super_class = BCSBusinessEmailPersistentStore;
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
  if (![databasePath_databasePath_2 length])
  {
    v2 = +[BCSPathProvider sharedInstance];
    v3 = [v2 documentsURL];
    v4 = [v3 path];

    v5 = [v4 stringByAppendingPathComponent:@"business_email_items.db"];
    v6 = databasePath_databasePath_2;
    databasePath_databasePath_2 = v5;
  }

  v7 = databasePath_databasePath_2;

  return v7;
}

- (void)schemaVersionWillChangeForDatabase:(sqlite3 *)a3 fromSchemaVersion:(int64_t)a4 toSchemaVersion:(int64_t)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[BCSBusinessEmailPersistentStore schemaVersionWillChangeForDatabase:fromSchemaVersion:toSchemaVersion:]";
    v15 = 2048;
    v16 = a4;
    v17 = 2048;
    v18 = a5;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s schema version will change from '%ld' to '%ld', dropping link_items table", buf, 0x20u);
  }

  ppStmt = 0;
  if (!sqlite3_prepare_v2(a3, "DROP TABLE IF EXISTS business_email_items", -1, &ppStmt, 0))
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = sqlite3_errmsg(a3);
        *buf = 136315138;
        v14 = v11;
        _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "error while dropping link_items table: %s", buf, 0xCu);
      }
    }

    sqlite3_finalize(ppStmt);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deleteExpiredItemsOfType:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessEmailPersistentStore deleteExpiredItemsOfType:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (a3 == 4)
  {
    [(BCSPersistentStore *)self beginBatch];
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CBEAA8] date];
    [v7 timeIntervalSince1970];
    v9 = [v6 stringWithFormat:@"DELETE FROM business_email_items WHERE expiration_date <= %f", v8];
    v10 = [v9 UTF8String];

    *buf = 0;
    if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], v10, -1, buf, 0))
    {
      sqlite3_step(*buf);
      sqlite3_finalize(*buf);
    }

    [(BCSPersistentStore *)self endBatch];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deleteItemMatching:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessEmailPersistentStore deleteItemMatching:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([v4 type] == 4)
  {
    [(BCSPersistentStore *)self beginBatch];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM business_email_items WHERE key = %lld AND message_type = %ld", objc_msgSend(v4, "truncatedHash"), BCSEmailStoreTypeForItemIdentifier(v4)];
    v7 = [v6 UTF8String];

    *buf = 0;
    if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], v7, -1, buf, 0))
    {
      sqlite3_step(*buf);
      sqlite3_finalize(*buf);
    }

    [(BCSPersistentStore *)self endBatch];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deleteItemsOfType:(int64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *pStmt = 136315138;
    *&pStmt[4] = "[BCSBusinessEmailPersistentStore deleteItemsOfType:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", pStmt, 0xCu);
  }

  if (a3 == 4)
  {
    [(BCSPersistentStore *)self beginBatch];
    *pStmt = 0;
    if (!sqlite3_prepare_v2(-[BCSPersistentStore openedDatabase](self, "openedDatabase"), [@"DELETE FROM business_email_items" UTF8String], -1, pStmt, 0))
    {
      sqlite3_step(*pStmt);
      sqlite3_finalize(*pStmt);
    }

    [(BCSPersistentStore *)self endBatch];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)itemMatching:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[BCSBusinessEmailPersistentStore itemMatching:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([v4 type] != 4)
  {
    v11 = 0;
    goto LABEL_21;
  }

  v6 = BCSEmailStoreTypeForItemIdentifier(v4);
  [(BCSPersistentStore *)self beginBatch];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT key, message, message_type, expiration_date    FROM business_email_items    WHERE key = %lld AND message_type = %ld", objc_msgSend(v4, "truncatedHash"), v6];
  v8 = [v7 UTF8String];

  ppStmt = 0;
  v9 = 0;
  if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], v8, -1, &ppStmt, 0))
  {
    if (sqlite3_step(ppStmt) == 100)
    {
      v10 = off_278D38398;
      if (v6 != 1)
      {
        v10 = off_278D383C8;
      }

      v9 = [(__objc2_class *)*v10 itemFromStatement:ppStmt];
    }

    else
    {
      v9 = 0;
    }

    sqlite3_finalize(ppStmt);
  }

  [(BCSPersistentStore *)self endBatch];
  if (v9 && v6 == 1)
  {
    v12 = v9;
    v13 = [v12 identifier];
    v14 = [v13 truncatedHash];
    v15 = [v4 truncatedHash];

    if (v14 != v15)
    {
      v16 = ABSLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = [v4 type];
        v20 = [v4 truncatedHash];
        v21 = [v12 email];
        *buf = 136315907;
        v24 = "[BCSBusinessEmailPersistentStore itemMatching:]";
        v25 = 2048;
        v26 = v19;
        v27 = 2048;
        v28 = v20;
        v29 = 2113;
        v30 = v21;
        _os_log_error_impl(&dword_242072000, v16, OS_LOG_TYPE_ERROR, "%s - Mismatching item found in cache for type: %ld, hash: %lld (%{private}@)", buf, 0x2Au);
      }

      [(BCSBusinessEmailPersistentStore *)self deleteItemMatching:v4];
      v11 = 0;
      goto LABEL_20;
    }
  }

  v11 = v9;
LABEL_20:

LABEL_21:
  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)updateItem:(id)a3 withItemIdentifier:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v31 = "[BCSBusinessEmailPersistentStore updateItem:withItemIdentifier:]";
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([v7 type] == 4)
  {
    v9 = BCSEmailStoreTypeForItemIdentifier(v7);
    if (v6 && v9 == 1)
    {
      v10 = v6;
      if ([v7 conformsToProtocol:&unk_285466448])
      {
        v11 = v7;
        v12 = [v10 identifier];
        v13 = [v12 matchingTruncatedHash];
        v14 = [v11 matchingTruncatedHash];

        if (v13 != v14)
        {
LABEL_8:
          v15 = ABSLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v25 = [v7 type];
            v26 = [v7 truncatedHash];
            v27 = [v10 email];
            *buf = 136315907;
            *v31 = "[BCSBusinessEmailPersistentStore updateItem:withItemIdentifier:]";
            *&v31[8] = 2048;
            *&v31[10] = v25;
            v32 = 2048;
            v33 = v26;
            v34 = 2113;
            v35 = v27;
            _os_log_error_impl(&dword_242072000, v15, OS_LOG_TYPE_ERROR, "%s - Refusing to store mismatching item found in cache for type: %ld, hash: %lld (%{private}@)", buf, 0x2Au);
          }

          goto LABEL_23;
        }
      }

      else
      {
        v16 = [v10 identifier];
        v17 = [v16 truncatedHash];
        v18 = [v7 truncatedHash];

        if (v17 != v18)
        {
          goto LABEL_8;
        }
      }
    }

    [(BCSPersistentStore *)self beginBatch];
    ppStmt = 0;
    if (sqlite3_prepare_v2(-[BCSPersistentStore openedDatabase](self, "openedDatabase"), [@""INSERT OR REPLACE INTO business_email_items    (key message], -1, &ppStmt, 0)
    {
      v19 = ABSLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v24 = sqlite3_errmsg([(BCSPersistentStore *)self openedDatabase]);
        *buf = 136315138;
        *v31 = v24;
        _os_log_error_impl(&dword_242072000, v19, OS_LOG_TYPE_ERROR, "Failed to update item: %s", buf, 0xCu);
      }
    }

    else
    {
      [v6 updateStatementValues:ppStmt withItemIdentifier:v7];
      v20 = sqlite3_step(ppStmt);
      if (v20 != 101)
      {
        v21 = v20;
        v22 = ABSLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v28 = sqlite3_errmsg([(BCSPersistentStore *)self openedDatabase]);
          *buf = 67109378;
          *v31 = v21;
          *&v31[4] = 2080;
          *&v31[6] = v28;
          _os_log_error_impl(&dword_242072000, v22, OS_LOG_TYPE_ERROR, "Failed to insert business email item: %d (%s)", buf, 0x12u);
        }
      }

      sqlite3_finalize(ppStmt);
    }

    [(BCSPersistentStore *)self endBatch];
  }

LABEL_23:

  v23 = *MEMORY[0x277D85DE8];
}

@end