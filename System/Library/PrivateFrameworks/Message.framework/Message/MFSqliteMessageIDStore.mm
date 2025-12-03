@interface MFSqliteMessageIDStore
- (MFSqliteMessageIDStore)initWithLibrary:(id)library URLString:(id)string;
- (id)knownMessageIDsFromSet:(id)set;
- (id)messageIDsAddedBeforeDate:(double)date;
- (unint64_t)flagsForUID:(id)d;
- (unsigned)numberOfMessageIDs;
- (void)_loadMailboxRowidIfNecessary:(id)necessary;
- (void)deleteAllUIDs;
- (void)deleteUIDsNotInArray:(id)array;
@end

@implementation MFSqliteMessageIDStore

- (MFSqliteMessageIDStore)initWithLibrary:(id)library URLString:(id)string
{
  libraryCopy = library;
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = MFSqliteMessageIDStore;
  v9 = [(MFSqliteMessageIDStore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_library, library);
    objc_storeStrong(&v10->_url, string);
    v10->_mailboxRowid = -1;
  }

  return v10;
}

- (void)_loadMailboxRowidIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (self->_mailboxRowid == -1)
  {
    v7 = necessaryCopy;
    v5 = [necessaryCopy preparedStatementForQueryString:@"SELECT ROWID from mailboxes WHERE url = ?"];;
    compiled = [v5 compiled];
    if (compiled)
    {
      sqlite3_bind_text(compiled, 1, [(NSString *)self->_url UTF8String], -1, 0);
      if (sqlite3_step(compiled) == 100)
      {
        self->_mailboxRowid = sqlite3_column_int64(compiled, 0);
      }

      sqlite3_reset(compiled);
    }

    necessaryCopy = v7;
  }
}

- (id)knownMessageIDsFromSet:(id)set
{
  setCopy = set;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__20;
  v17 = __Block_byref_object_dispose__20;
  v18 = [MEMORY[0x1E695DFA8] set];
  database = [(MFMailMessageLibrary *)self->_library database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFSqliteMessageIDStore knownMessageIDsFromSet:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__MFSqliteMessageIDStore_knownMessageIDsFromSet___block_invoke;
  v10[3] = &unk_1E7AA3528;
  v10[4] = self;
  v7 = setCopy;
  v11 = v7;
  v12 = &v13;
  [database __performReadWithCaller:v6 usingBlock:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __49__MFSqliteMessageIDStore_knownMessageIDsFromSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _loadMailboxRowidIfNecessary:v3];
  if (*(*(a1 + 32) + 16) != -1)
  {
    v4 = [v3 preparedStatementForQueryString:@"SELECT 1 FROM pop_uids WHERE mailbox = ? AND uid = ? AND flags IS NULL"];;
    v5 = [v4 compiled];
    v6 = v5;
    if (v5)
    {
      sqlite3_bind_int64(v5, 1, *(*(a1 + 32) + 16));
      v7 = [*(a1 + 40) objectEnumerator];
      v8 = 0;
      while (1)
      {
        v9 = [v7 nextObject];

        if (!v9)
        {
          break;
        }

        v8 = v9;
        sqlite3_bind_text(v6, 2, [v9 UTF8String], -1, 0);
        if (sqlite3_step(v6) == 100)
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
        }

        sqlite3_reset(v6);
      }
    }
  }

  return 1;
}

- (id)messageIDsAddedBeforeDate:(double)date
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__20;
  v14 = __Block_byref_object_dispose__20;
  v15 = 0;
  database = [(MFMailMessageLibrary *)self->_library database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFSqliteMessageIDStore messageIDsAddedBeforeDate:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__MFSqliteMessageIDStore_messageIDsAddedBeforeDate___block_invoke;
  v9[3] = &unk_1E7AA7E58;
  *&v9[6] = date;
  v9[4] = self;
  v9[5] = &v10;
  [database __performReadWithCaller:v6 usingBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __52__MFSqliteMessageIDStore_messageIDsAddedBeforeDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _loadMailboxRowidIfNecessary:v3];
  if (*(*(a1 + 32) + 16) != -1)
  {
    v4 = [v3 preparedStatementForQueryString:@"SELECT uid FROM pop_uids WHERE mailbox = ? AND date_added < ?"];;
    v5 = [v4 compiled];
    v6 = v5;
    if (v5)
    {
      sqlite3_bind_int64(v5, 1, *(*(a1 + 32) + 16));
      sqlite3_bind_int(v6, 2, *(a1 + 48));
      while (sqlite3_step(v6) == 100)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v6, 0)}];
        v8 = *(*(*(a1 + 40) + 8) + 40);
        if (v8)
        {
          [v8 addObject:v7];
        }

        else
        {
          v9 = [MEMORY[0x1E695DF70] arrayWithObject:v7];
          v10 = *(*(a1 + 40) + 8);
          v11 = *(v10 + 40);
          *(v10 + 40) = v9;
        }
      }

      sqlite3_reset(v6);
    }
  }

  return 1;
}

- (void)deleteUIDsNotInArray:(id)array
{
  arrayCopy = array;
  database = [(MFMailMessageLibrary *)self->_library database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFSqliteMessageIDStore deleteUIDsNotInArray:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__MFSqliteMessageIDStore_deleteUIDsNotInArray___block_invoke;
  v8[3] = &unk_1E7AA3D10;
  v8[4] = self;
  v7 = arrayCopy;
  v9 = v7;
  [database __performWriteWithCaller:v6 usingBlock:v8];
}

uint64_t __47__MFSqliteMessageIDStore_deleteUIDsNotInArray___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) _loadMailboxRowidIfNecessary:v3];
  if (*(*(a1 + 32) + 16) == -1)
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(a1 + 32) + 8);
      v22 = 138412290;
      v23 = v11;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_INFO, "no entry for mailbox %@?", &v22, 0xCu);
    }
  }

  else
  {
    v4 = [v3 preparedStatementForQueryString:@"SELECT uid FROM pop_uids WHERE mailbox = ?"];;
    v5 = [v4 compiled];
    if (v5)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      v7 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 40)];
      sqlite3_bind_int64(v5, 1, *(*(a1 + 32) + 16));
      while (sqlite3_step(v5) == 100)
      {
        v8 = sqlite3_column_text(v5, 0);
        if (v8)
        {
          v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v8];
          if (([v7 containsObject:v9] & 1) == 0)
          {
            [v6 addObject:v9];
          }
        }
      }

      sqlite3_reset(v5);
    }

    else
    {
      v6 = 0;
    }

    v12 = [v6 count];
    if (v12)
    {
      v13 = [v3 preparedStatementForQueryString:@"DELETE FROM pop_uids WHERE mailbox = ? AND uid = ?"];;

      v14 = [v13 compiled];
      v15 = v14;
      if (v14)
      {
        sqlite3_bind_int64(v14, 1, *(*(a1 + 32) + 16));
        v16 = v12 - 1;
        do
        {
          v17 = [v6 objectAtIndex:v16];
          sqlite3_bind_text(v15, 2, [v17 UTF8String], -1, 0);
          v18 = sqlite3_step(v15);
          sqlite3_reset(v15);

          v19 = v16-- != 0;
        }

        while (v19 && v18 == 101);
      }

      v4 = v13;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return 1;
}

- (unsigned)numberOfMessageIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  database = [(MFMailMessageLibrary *)self->_library database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFSqliteMessageIDStore numberOfMessageIDs]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__MFSqliteMessageIDStore_numberOfMessageIDs__block_invoke;
  v6[3] = &unk_1E7AA3C48;
  v6[4] = self;
  v6[5] = &v7;
  [database __performReadWithCaller:v4 usingBlock:v6];

  LODWORD(database) = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return database;
}

uint64_t __44__MFSqliteMessageIDStore_numberOfMessageIDs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _loadMailboxRowidIfNecessary:v3];
  if (*(*(a1 + 32) + 16) != -1)
  {
    v4 = [v3 preparedStatementForQueryString:@"SELECT COUNT() FROM pop_uids WHERE mailbox = ?"];;
    v5 = [v4 compiled];
    v6 = v5;
    if (v5)
    {
      sqlite3_bind_int64(v5, 1, *(*(a1 + 32) + 16));
      if (sqlite3_step(v6) == 100)
      {
        *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_int(v6, 0);
      }
    }

    sqlite3_reset(v6);
  }

  return 1;
}

- (void)deleteAllUIDs
{
  database = [(MFMailMessageLibrary *)self->_library database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFSqliteMessageIDStore deleteAllUIDs]"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__MFSqliteMessageIDStore_deleteAllUIDs__block_invoke;
  v5[3] = &unk_1E7AA43C8;
  v5[4] = self;
  [database __performWriteWithCaller:v4 usingBlock:v5];
}

uint64_t __39__MFSqliteMessageIDStore_deleteAllUIDs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _loadMailboxRowidIfNecessary:v3];
  if (*(*(a1 + 32) + 16) != -1)
  {
    v4 = [v3 preparedStatementForQueryString:@"DELETE FROM pop_uids WHERE mailbox = ?"];;
    v5 = [v4 compiled];
    v6 = v5;
    if (v5)
    {
      sqlite3_bind_int64(v5, 1, *(*(a1 + 32) + 16));
      sqlite3_step(v6);
    }

    sqlite3_reset(v6);
  }

  return 1;
}

- (unint64_t)flagsForUID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  database = [(MFMailMessageLibrary *)self->_library database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFSqliteMessageIDStore flagsForUID:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__MFSqliteMessageIDStore_flagsForUID___block_invoke;
  v10[3] = &unk_1E7AA3528;
  v10[4] = self;
  v7 = dCopy;
  v11 = v7;
  v12 = &v13;
  [database __performReadWithCaller:v6 usingBlock:v10];

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __38__MFSqliteMessageIDStore_flagsForUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _loadMailboxRowidIfNecessary:v3];
  if (*(*(a1 + 32) + 16) != -1)
  {
    v4 = [v3 preparedStatementForQueryString:@"SELECT flags FROM pop_uids WHERE mailbox = ? AND uid = ?"];;
    v5 = [v4 compiled];
    v6 = v5;
    if (v5)
    {
      sqlite3_bind_int64(v5, 1, *(*(a1 + 32) + 16));
      sqlite3_bind_text(v6, 2, [*(a1 + 40) UTF8String], -1, 0);
      if (sqlite3_step(v6) == 100)
      {
        *(*(*(a1 + 48) + 8) + 24) = sqlite3_column_int64(v6, 0);
      }

      sqlite3_reset(v6);
    }
  }

  return 1;
}

@end