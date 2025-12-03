@interface MKApplicationDatabase
- (BOOL)_addAppStoreIdentifier:(id)identifier;
- (BOOL)addIdentifier:(id)identifier;
- (MKApplicationDatabase)init;
- (id)appStoreIdentifiers;
- (id)identifiers;
- (int64_t)countForAppStoreIdentifiers;
- (void)addAppStoreIdentifier:(id)identifier;
- (void)addIdentifiers:(id)identifiers;
- (void)close;
- (void)create;
- (void)dealloc;
- (void)drop;
- (void)open:(id)open;
- (void)query:(id)query;
@end

@implementation MKApplicationDatabase

- (MKApplicationDatabase)init
{
  v13.receiver = self;
  v13.super_class = MKApplicationDatabase;
  v2 = [(MKApplicationDatabase *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_database = 0;
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"/Library/MigrationKit/matd/"];
    v5 = NSHomeDirectory();
    v6 = [v5 stringByAppendingPathComponent:v4];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v12 = 0;
    [defaultManager createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v12];
    v8 = v12;

    if (v8)
    {
      v9 = +[MKLog log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(MKApplicationDatabase *)v8 init];
      }
    }

    v10 = [v6 stringByAppendingPathComponent:@"application.db"];
    [(MKApplicationDatabase *)v3 open:v10];
  }

  return v3;
}

- (void)dealloc
{
  [(MKApplicationDatabase *)self close];
  v3.receiver = self;
  v3.super_class = MKApplicationDatabase;
  [(MKApplicationDatabase *)&v3 dealloc];
}

- (void)open:(id)open
{
  openCopy = open;
  if (sqlite3_open([open UTF8String], &self->_database))
  {
    v6 = +[MKLog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MKApplicationDatabase *)self open:v6];
    }
  }

  else
  {

    [(MKApplicationDatabase *)self create];
  }
}

- (void)close
{
  if (self->_database)
  {
    v3 = +[MKLog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_2592D2000, v3, OS_LOG_TYPE_INFO, "will close application database.", v4, 2u);
    }

    sqlite3_close(self->_database);
    self->_database = 0;
  }
}

- (void)query:(id)query
{
  ppStmt = 0;
  database = self->_database;
  queryCopy = query;
  if (sqlite3_prepare_v2(database, [query UTF8String], -1, &ppStmt, 0))
  {
    v6 = +[MKLog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase query:];
    }
  }

  else
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      v7 = +[MKLog log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [MKApplicationDatabase query:];
      }
    }

    sqlite3_finalize(ppStmt);
  }
}

- (void)create
{
  [(MKApplicationDatabase *)self query:@"CREATE TABLE IF NOT EXISTS identifiers (identifier TEXT DEFAULT '' NOT NULL);"];

  [(MKApplicationDatabase *)self query:@"CREATE TABLE IF NOT EXISTS applications (appstore_identifier TEXT DEFAULT '' NOT NULL);"];
}

- (void)drop
{
  [(MKApplicationDatabase *)self query:@"DROP TABLE IF EXISTS identifiers;"];

  [(MKApplicationDatabase *)self query:@"DROP TABLE IF EXISTS applications;"];
}

- (void)addIdentifiers:(id)identifiers
{
  v16 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  [(MKApplicationDatabase *)self begin];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = identifiersCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      if (![(MKApplicationDatabase *)self addIdentifier:*(*(&v11 + 1) + 8 * v9), v11])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        [(MKApplicationDatabase *)self commit];
        goto LABEL_11;
      }
    }
  }

  [(MKApplicationDatabase *)self rollback];
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)addIdentifier:(id)identifier
{
  identifierCopy = identifier;
  database = self->_database;
  p_database = &self->_database;
  if (database)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(&unk_286AAD2D8, "count")}];
    if ([&unk_286AAD2D8 count])
    {
      v8 = 0;
      do
      {
        [v7 setObject:@"?" atIndexedSubscript:v8++];
      }

      while (v8 < [&unk_286AAD2D8 count]);
    }

    v9 = MEMORY[0x277CCACA8];
    v10 = [&unk_286AAD2D8 componentsJoinedByString:{@", "}];
    v11 = [v7 componentsJoinedByString:@", "];
    v12 = [v9 stringWithFormat:@"INSERT INTO identifiers (%@) VALUES (%@)", v10, v11];

    ppStmt = 0;
    if (sqlite3_prepare(*p_database, [v12 UTF8String], -1, &ppStmt, 0))
    {
      v13 = +[MKLog log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [MKApplicationDatabase query:];
      }

      v14 = 0;
    }

    else
    {
      sqlite3_bind_text(ppStmt, 1, [identifierCopy UTF8String], -1, 0);
      if (sqlite3_step(ppStmt) == 101)
      {
        v14 = sqlite3_last_insert_rowid(*p_database) != -1;
      }

      else
      {
        v15 = +[MKLog log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [MKApplicationDatabase addIdentifier:];
        }

        v14 = 0;
      }

      sqlite3_finalize(ppStmt);
    }
  }

  else
  {
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase addIdentifier:];
    }

    v14 = 0;
  }

  return v14;
}

- (id)identifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = self->_database;
  p_database = &self->_database;
  if (database)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [&unk_286AAD2F0 componentsJoinedByString:{@", "}];
    v8 = [v6 stringWithFormat:@"SELECT %@ FROM identifiers ORDER BY rowid ASC", v7];;

    ppStmt = 0;
    if (sqlite3_prepare(*p_database, [v8 UTF8String], -1, &ppStmt, 0))
    {
      v9 = +[MKLog log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [MKApplicationDatabase query:];
      }

      v10 = 0;
    }

    else
    {
      if (sqlite3_step(ppStmt) == 100)
      {
        v10 = 0;
        do
        {
          v11 = sqlite3_column_text(ppStmt, 0);
          if (v11)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];

            [v3 addObject:v12];
            v10 = v12;
          }
        }

        while (sqlite3_step(ppStmt) == 100);
      }

      else
      {
        v10 = 0;
      }

      sqlite3_finalize(ppStmt);
    }
  }

  else
  {
    v8 = +[MKLog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase addIdentifier:];
    }
  }

  return v3;
}

- (void)addAppStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(MKApplicationDatabase *)self begin];
  v5 = [(MKApplicationDatabase *)self _addAppStoreIdentifier:identifierCopy];

  if (v5)
  {

    [(MKApplicationDatabase *)self commit];
  }

  else
  {

    [(MKApplicationDatabase *)self rollback];
  }
}

- (BOOL)_addAppStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  database = self->_database;
  p_database = &self->_database;
  if (database)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(&unk_286AAD308, "count")}];
    if ([&unk_286AAD308 count])
    {
      v8 = 0;
      do
      {
        [v7 setObject:@"?" atIndexedSubscript:v8++];
      }

      while (v8 < [&unk_286AAD308 count]);
    }

    v9 = MEMORY[0x277CCACA8];
    v10 = [&unk_286AAD308 componentsJoinedByString:{@", "}];
    v11 = [v7 componentsJoinedByString:@", "];
    v12 = [v9 stringWithFormat:@"INSERT INTO applications (%@) VALUES (%@)", v10, v11];

    ppStmt = 0;
    if (sqlite3_prepare(*p_database, [v12 UTF8String], -1, &ppStmt, 0))
    {
      v13 = +[MKLog log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [MKApplicationDatabase query:];
      }

      v14 = 0;
    }

    else
    {
      sqlite3_bind_text(ppStmt, 1, [identifierCopy UTF8String], -1, 0);
      if (sqlite3_step(ppStmt) == 101)
      {
        v14 = sqlite3_last_insert_rowid(*p_database) != -1;
      }

      else
      {
        v15 = +[MKLog log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [MKApplicationDatabase addIdentifier:];
        }

        v14 = 0;
      }

      sqlite3_finalize(ppStmt);
    }
  }

  else
  {
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase addIdentifier:];
    }

    v14 = 0;
  }

  return v14;
}

- (id)appStoreIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = self->_database;
  p_database = &self->_database;
  if (database)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [&unk_286AAD320 componentsJoinedByString:{@", "}];
    v8 = [v6 stringWithFormat:@"SELECT %@ FROM applications ORDER BY rowid ASC", v7];;

    ppStmt = 0;
    if (sqlite3_prepare(*p_database, [v8 UTF8String], -1, &ppStmt, 0))
    {
      v9 = +[MKLog log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [MKApplicationDatabase query:];
      }

      v10 = 0;
    }

    else
    {
      if (sqlite3_step(ppStmt) == 100)
      {
        v10 = 0;
        do
        {
          v11 = sqlite3_column_text(ppStmt, 0);
          if (v11)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];

            [v3 addObject:v12];
            v10 = v12;
          }
        }

        while (sqlite3_step(ppStmt) == 100);
      }

      else
      {
        v10 = 0;
      }

      sqlite3_finalize(ppStmt);
    }
  }

  else
  {
    v8 = +[MKLog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase addIdentifier:];
    }
  }

  return v3;
}

- (int64_t)countForAppStoreIdentifiers
{
  if (self->_database)
  {
    ppStmt = 0;
    v2 = 0;
    if (!sqlite3_prepare(self->_database, [@"SELECT COUNT(*) FROM applications;" UTF8String], -1, &ppStmt, 0))
    {
      if (sqlite3_step(ppStmt) == 100)
      {
        v2 = sqlite3_column_int64(ppStmt, 0);
      }

      else
      {
        v2 = 0;
      }

      sqlite3_finalize(ppStmt);
    }
  }

  else
  {
    v3 = +[MKLog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase addIdentifier:];
    }

    return 0;
  }

  return v2;
}

@end