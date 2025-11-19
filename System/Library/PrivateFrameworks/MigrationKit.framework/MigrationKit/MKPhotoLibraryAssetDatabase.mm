@interface MKPhotoLibraryAssetDatabase
- (id)asset;
- (id)collections;
- (id)identifiersForCollection:(id)a3 offset:(unint64_t)a4 limit:(unint64_t)a5;
- (unint64_t)countForCollection:(id)a3;
- (void)addAsset:(id)a3;
- (void)close;
- (void)create:(BOOL)a3;
- (void)dealloc;
- (void)query:(id)a3;
- (void)remove:(id)a3;
- (void)removeCollection:(id)a3;
- (void)setIdentifier:(id)a3 forAsset:(id)a4;
@end

@implementation MKPhotoLibraryAssetDatabase

- (void)dealloc
{
  [(MKPhotoLibraryAssetDatabase *)self close];
  v3.receiver = self;
  v3.super_class = MKPhotoLibraryAssetDatabase;
  [(MKPhotoLibraryAssetDatabase *)&v3 dealloc];
}

- (void)close
{
  if (self->_database)
  {
    v3 = +[MKLog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_2592D2000, v3, OS_LOG_TYPE_INFO, "will close an asset database.", v4, 2u);
    }

    sqlite3_close(self->_database);
    self->_database = 0;
  }
}

- (void)query:(id)a3
{
  ppStmt = 0;
  database = self->_database;
  v5 = a3;
  if (sqlite3_prepare_v2(database, [a3 UTF8String], -1, &ppStmt, 0))
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

- (void)create:(BOOL)a3
{
  if (!a3)
  {
    [(MKPhotoLibraryAssetDatabase *)self query:@"DROP TABLE IF EXISTS assets;"];
    [(MKPhotoLibraryAssetDatabase *)self query:@"DROP TABLE IF EXISTS identifiers;"];
  }

  [(MKPhotoLibraryAssetDatabase *)self query:@"CREATE TABLE IF NOT EXISTS assets (size INTEGER DEFAULT 0, path TEXT DEFAULT '' NOT NULL, filename TEXT DEFAULT '' NOT NULL, collection TEXT, original_filename TEXT);"];

  [(MKPhotoLibraryAssetDatabase *)self query:@"CREATE TABLE IF NOT EXISTS identifiers (identifier TEXT, collection TEXT);"];
}

- (void)addAsset:(id)a3
{
  v4 = a3;
  v5 = v4;
  p_database = &self->_database;
  if (self->_database)
  {
    v20 = [v4 size];
    v7 = [v5 path];
    v8 = [v5 filename];
    v22 = [v5 collection];
    v21 = [v5 originalFilename];
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(&unk_286AAD428, "count")}];
    if ([&unk_286AAD428 count])
    {
      v10 = 0;
      do
      {
        [v9 setObject:@"?" atIndexedSubscript:v10++];
      }

      while (v10 < [&unk_286AAD428 count]);
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = [&unk_286AAD428 componentsJoinedByString:{@", "}];
    v13 = [v9 componentsJoinedByString:{@", "}];
    v14 = [v11 stringWithFormat:@"INSERT INTO assets (%@) VALUES (%@)", v12, v13];

    ppStmt = 0;
    if (sqlite3_prepare(*p_database, [v14 UTF8String], -1, &ppStmt, 0))
    {
      v15 = +[MKLog log];
      v16 = v22;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MKApplicationDatabase query:];
      }

      v17 = v21;
    }

    else
    {
      sqlite3_bind_int64(ppStmt, 1, v20);
      sqlite3_bind_text(ppStmt, 2, [v7 UTF8String], -1, 0);
      sqlite3_bind_text(ppStmt, 3, [v8 UTF8String], -1, 0);
      v16 = v22;
      if (v22)
      {
        sqlite3_bind_text(ppStmt, 4, [v22 UTF8String], -1, 0);
      }

      else
      {
        sqlite3_bind_null(ppStmt, 4);
      }

      v17 = v21;
      if (v21)
      {
        sqlite3_bind_text(ppStmt, 5, [v21 UTF8String], -1, 0);
      }

      else
      {
        sqlite3_bind_null(ppStmt, 5);
      }

      if (sqlite3_step(ppStmt) == 101)
      {
        insert_rowid = sqlite3_last_insert_rowid(*p_database);
        sqlite3_finalize(ppStmt);
        if (insert_rowid != -1)
        {
          ++self->_count;
        }
      }

      else
      {
        v19 = +[MKLog log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [MKApplicationDatabase addIdentifier:];
        }

        sqlite3_finalize(ppStmt);
      }
    }
  }

  else
  {
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase addIdentifier:];
    }
  }
}

- (id)asset
{
  if (self->_database)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [&unk_286AAD440 componentsJoinedByString:{@", "}];
    v5 = [v3 stringWithFormat:@"SELECT %@ FROM assets ORDER BY rowid ASC LIMIT 1", v4];;

    ppStmt = 0;
    if (!sqlite3_prepare(self->_database, [v5 UTF8String], -1, &ppStmt, 0))
    {
      if (sqlite3_step(ppStmt) == 100)
      {
        v6 = sqlite3_column_int64(ppStmt, 0);
        v7 = sqlite3_column_int64(ppStmt, 1);
        v8 = sqlite3_column_text(ppStmt, 2);
        if (v8)
        {
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
        }

        else
        {
          v9 = 0;
        }

        v15 = sqlite3_column_text(ppStmt, 3);
        if (v15)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
        }

        else
        {
          v13 = 0;
        }

        v16 = sqlite3_column_text(ppStmt, 4);
        if (v16)
        {
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16];
        }

        else
        {
          v12 = 0;
        }

        v17 = sqlite3_column_text(ppStmt, 5);
        if (v17)
        {
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
        }

        else
        {
          v11 = 0;
        }

        sqlite3_finalize(ppStmt);
        if (v6 != -1)
        {
          v10 = [[MKPhotoLibraryAsset alloc] initWithPath:v9 filename:v13 collection:v12 originalFilename:v11 size:v7];
          [(MKPhotoLibraryAsset *)v10 setRowID:v6];
          goto LABEL_12;
        }

LABEL_11:
        v10 = 0;
LABEL_12:

        goto LABEL_13;
      }

      sqlite3_finalize(ppStmt);
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v9 = 0;
    goto LABEL_11;
  }

  v5 = +[MKLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MKApplicationDatabase addIdentifier:];
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (void)remove:(id)a3
{
  v4 = a3;
  if (self->_database)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM assets WHERE rowid = ?"];;
    v6 = [v4 rowID];
    ppStmt = 0;
    if (!sqlite3_prepare(self->_database, [v5 UTF8String], -1, &ppStmt, 0))
    {
      sqlite3_bind_int64(ppStmt, 1, v6);
      if (sqlite3_step(ppStmt) == 101)
      {
        --self->_count;
      }

      else
      {
        v7 = +[MKLog log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [MKApplicationDatabase addIdentifier:];
        }
      }

      sqlite3_finalize(ppStmt);
    }
  }

  else
  {
    v5 = +[MKLog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase addIdentifier:];
    }
  }
}

- (void)setIdentifier:(id)a3 forAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  database = self->_database;
  p_database = &self->_database;
  if (database)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(&unk_286AAD458, "count")}];
    if ([&unk_286AAD458 count])
    {
      v11 = 0;
      do
      {
        [v10 setObject:@"?" atIndexedSubscript:v11++];
      }

      while (v11 < [&unk_286AAD458 count]);
    }

    v12 = MEMORY[0x277CCACA8];
    v13 = [&unk_286AAD458 componentsJoinedByString:{@", "}];
    v14 = [v10 componentsJoinedByString:@", "];
    v15 = [v12 stringWithFormat:@"INSERT INTO identifiers (%@) VALUES (%@)", v13, v14];

    ppStmt = 0;
    if (sqlite3_prepare(*p_database, [v15 UTF8String], -1, &ppStmt, 0))
    {
      v16 = +[MKLog log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MKApplicationDatabase query:];
      }
    }

    else
    {
      sqlite3_bind_text(ppStmt, 1, [v6 UTF8String], -1, 0);
      v17 = ppStmt;
      v18 = [v7 collection];
      sqlite3_bind_text(v17, 2, [v18 UTF8String], -1, 0);

      if (sqlite3_step(ppStmt) == 101)
      {
        sqlite3_last_insert_rowid(*p_database);
      }

      else
      {
        v19 = +[MKLog log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [MKApplicationDatabase addIdentifier:];
        }
      }

      sqlite3_finalize(ppStmt);
    }
  }

  else
  {
    v10 = +[MKLog log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase addIdentifier:];
    }
  }
}

- (id)collections
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_database)
  {
    ppStmt = 0;
    if (!sqlite3_prepare(self->_database, [@"SELECT DISTINCT collection FROM identifiers WHERE collection IS NOT NULL;" UTF8String], -1, &ppStmt, 0))
    {
      while (sqlite3_step(ppStmt) == 100)
      {
        v4 = sqlite3_column_text(ppStmt, 0);
        if (v4)
        {
          v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
          if (v5)
          {
            v6 = v5;
            [v3 addObject:v5];
          }
        }
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
  }

  return v3;
}

- (id)identifiersForCollection:(id)a3 offset:(unint64_t)a4 limit:(unint64_t)a5
{
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_database)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [&unk_286AAD470 componentsJoinedByString:{@", "}];
    v12 = [v10 stringWithFormat:@"SELECT %@ FROM identifiers WHERE collection IS NOT NULL AND identifier IS NOT NULL AND collection = ? ORDER BY rowid ASC LIMIT %ld OFFSET %ld", v11, a5, a4];;

    ppStmt = 0;
    if (!sqlite3_prepare(self->_database, [v12 UTF8String], -1, &ppStmt, 0))
    {
      sqlite3_bind_text(ppStmt, 1, [v8 UTF8String], -1, 0);
      while (sqlite3_step(ppStmt) == 100)
      {
        v13 = sqlite3_column_text(ppStmt, 0);
        if (v13)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
        }

        else
        {
          v14 = 0;
        }

        [v9 addObject:v14];
      }

      sqlite3_finalize(ppStmt);
    }
  }

  else
  {
    v12 = +[MKLog log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationDatabase addIdentifier:];
    }
  }

  return v9;
}

- (unint64_t)countForCollection:(id)a3
{
  v4 = a3;
  if (self->_database)
  {
    ppStmt = 0;
    v5 = sqlite3_prepare(self->_database, [@"SELECT COUNT(*) FROM identifiers WHERE collection IS NOT NULL AND identifier IS NOT NULL AND collection = ?;" UTF8String], -1, &ppStmt, 0);
    v6 = 0;
    if (!v5)
    {
      sqlite3_bind_text(ppStmt, 1, [v4 UTF8String], -1, 0);
      v6 = 0;
      if (sqlite3_step(ppStmt) == 100)
      {
        v6 = sqlite3_column_int64(ppStmt, 0);
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

    v6 = 0;
  }

  return v6;
}

- (void)removeCollection:(id)a3
{
  v4 = a3;
  database = self->_database;
  p_database = &self->_database;
  if (database)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM identifiers WHERE collection = ?"];;
    ppStmt = 0;
    if (!sqlite3_prepare(*p_database, [v7 UTF8String], -1, &ppStmt, 0))
    {
      sqlite3_bind_text(ppStmt, 1, [v4 UTF8String], -1, 0);
      if (sqlite3_step(ppStmt) != 101)
      {
        v8 = +[MKLog log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [MKMessageMigrator delete:];
        }
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
  }
}

@end