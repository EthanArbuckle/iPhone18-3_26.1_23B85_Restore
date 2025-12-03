@interface BCSBusinessEmailPersistentStore
- (BCSBusinessEmailPersistentStore)init;
- (id)databasePath;
- (id)itemMatching:(id)matching;
- (void)deleteExpiredItemsOfType:(int64_t)type;
- (void)deleteItemMatching:(id)matching;
- (void)deleteItemsOfType:(int64_t)type;
- (void)schemaVersionWillChangeForDatabase:(sqlite3 *)database fromSchemaVersion:(int64_t)version toSchemaVersion:(int64_t)schemaVersion;
- (void)updateItem:(id)item withItemIdentifier:(id)identifier;
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
    documentsURL = [v2 documentsURL];
    path = [documentsURL path];

    v5 = [path stringByAppendingPathComponent:@"business_email_items.db"];
    v6 = databasePath_databasePath_2;
    databasePath_databasePath_2 = v5;
  }

  v7 = databasePath_databasePath_2;

  return v7;
}

- (void)schemaVersionWillChangeForDatabase:(sqlite3 *)database fromSchemaVersion:(int64_t)version toSchemaVersion:(int64_t)schemaVersion
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[BCSBusinessEmailPersistentStore schemaVersionWillChangeForDatabase:fromSchemaVersion:toSchemaVersion:]";
    v15 = 2048;
    versionCopy = version;
    v17 = 2048;
    schemaVersionCopy = schemaVersion;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s schema version will change from '%ld' to '%ld', dropping link_items table", buf, 0x20u);
  }

  ppStmt = 0;
  if (!sqlite3_prepare_v2(database, "DROP TABLE IF EXISTS business_email_items", -1, &ppStmt, 0))
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = sqlite3_errmsg(database);
        *buf = 136315138;
        v14 = v11;
        _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "error while dropping link_items table: %s", buf, 0xCu);
      }
    }

    sqlite3_finalize(ppStmt);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deleteExpiredItemsOfType:(int64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessEmailPersistentStore deleteExpiredItemsOfType:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (type == 4)
  {
    [(BCSPersistentStore *)self beginBatch];
    v6 = MEMORY[0x277CCACA8];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v9 = [v6 stringWithFormat:@"DELETE FROM business_email_items WHERE expiration_date <= %f", v8];
    uTF8String = [v9 UTF8String];

    *buf = 0;
    if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], uTF8String, -1, buf, 0))
    {
      sqlite3_step(*buf);
      sqlite3_finalize(*buf);
    }

    [(BCSPersistentStore *)self endBatch];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deleteItemMatching:(id)matching
{
  v10 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessEmailPersistentStore deleteItemMatching:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([matchingCopy type] == 4)
  {
    [(BCSPersistentStore *)self beginBatch];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM business_email_items WHERE key = %lld AND message_type = %ld", objc_msgSend(matchingCopy, "truncatedHash"), BCSEmailStoreTypeForItemIdentifier(matchingCopy)];
    uTF8String = [v6 UTF8String];

    *buf = 0;
    if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], uTF8String, -1, buf, 0))
    {
      sqlite3_step(*buf);
      sqlite3_finalize(*buf);
    }

    [(BCSPersistentStore *)self endBatch];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deleteItemsOfType:(int64_t)type
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *pStmt = 136315138;
    *&pStmt[4] = "[BCSBusinessEmailPersistentStore deleteItemsOfType:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", pStmt, 0xCu);
  }

  if (type == 4)
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

- (id)itemMatching:(id)matching
{
  v31 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[BCSBusinessEmailPersistentStore itemMatching:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([matchingCopy type] != 4)
  {
    v11 = 0;
    goto LABEL_21;
  }

  v6 = BCSEmailStoreTypeForItemIdentifier(matchingCopy);
  [(BCSPersistentStore *)self beginBatch];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT key, message, message_type, expiration_date    FROM business_email_items    WHERE key = %lld AND message_type = %ld", objc_msgSend(matchingCopy, "truncatedHash"), v6];
  uTF8String = [v7 UTF8String];

  ppStmt = 0;
  v9 = 0;
  if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], uTF8String, -1, &ppStmt, 0))
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
    identifier = [v12 identifier];
    truncatedHash = [identifier truncatedHash];
    truncatedHash2 = [matchingCopy truncatedHash];

    if (truncatedHash != truncatedHash2)
    {
      v16 = ABSLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        type = [matchingCopy type];
        truncatedHash3 = [matchingCopy truncatedHash];
        email = [v12 email];
        *buf = 136315907;
        v24 = "[BCSBusinessEmailPersistentStore itemMatching:]";
        v25 = 2048;
        v26 = type;
        v27 = 2048;
        v28 = truncatedHash3;
        v29 = 2113;
        v30 = email;
        _os_log_error_impl(&dword_242072000, v16, OS_LOG_TYPE_ERROR, "%s - Mismatching item found in cache for type: %ld, hash: %lld (%{private}@)", buf, 0x2Au);
      }

      [(BCSBusinessEmailPersistentStore *)self deleteItemMatching:matchingCopy];
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

- (void)updateItem:(id)item withItemIdentifier:(id)identifier
{
  v36 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v31 = "[BCSBusinessEmailPersistentStore updateItem:withItemIdentifier:]";
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([identifierCopy type] == 4)
  {
    v9 = BCSEmailStoreTypeForItemIdentifier(identifierCopy);
    if (itemCopy && v9 == 1)
    {
      v10 = itemCopy;
      if ([identifierCopy conformsToProtocol:&unk_285466448])
      {
        v11 = identifierCopy;
        identifier = [v10 identifier];
        matchingTruncatedHash = [identifier matchingTruncatedHash];
        matchingTruncatedHash2 = [v11 matchingTruncatedHash];

        if (matchingTruncatedHash != matchingTruncatedHash2)
        {
LABEL_8:
          v15 = ABSLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            type = [identifierCopy type];
            truncatedHash = [identifierCopy truncatedHash];
            email = [v10 email];
            *buf = 136315907;
            *v31 = "[BCSBusinessEmailPersistentStore updateItem:withItemIdentifier:]";
            *&v31[8] = 2048;
            *&v31[10] = type;
            v32 = 2048;
            v33 = truncatedHash;
            v34 = 2113;
            v35 = email;
            _os_log_error_impl(&dword_242072000, v15, OS_LOG_TYPE_ERROR, "%s - Refusing to store mismatching item found in cache for type: %ld, hash: %lld (%{private}@)", buf, 0x2Au);
          }

          goto LABEL_23;
        }
      }

      else
      {
        identifier2 = [v10 identifier];
        truncatedHash2 = [identifier2 truncatedHash];
        truncatedHash3 = [identifierCopy truncatedHash];

        if (truncatedHash2 != truncatedHash3)
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
      [itemCopy updateStatementValues:ppStmt withItemIdentifier:identifierCopy];
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