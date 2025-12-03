@interface SGQuickResponsesDatabase
+ (id)_openAnotherHandleForPath:(id)path;
+ (id)_openFreshHandleForPath:(id)path inMemory:(BOOL)memory;
- (BOOL)_handleCorruptionWithCheck:(BOOL)check path:(id)path inMemory:(BOOL)memory;
- (id)migrations;
- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)version;
@end

@implementation SGQuickResponsesDatabase

- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)version
{
  if (version)
  {
    *version = 0;
  }

  return MEMORY[0x277CBEBF8];
}

- (id)migrations
{
  v20[7] = *MEMORY[0x277D85DE8];
  v18[0] = @"CREATE TABLE responses(   lang_response TEXT PRIMARY KEY,     displayed INTEGER NOT NULL DEFAULT 0,     selected INTEGER NOT NULL DEFAULT 0,     matched INTEGER NOT NULL DEFAULT 0) WITHOUT ROWID";
  v18[1] = @"CREATE TABLE responses_totals(   language TEXT PRIMARY KEY,     opportunities INTEGER NOT NULL DEFAULT 0,     displayed INTEGER NOT NULL DEFAULT 0,     selected INTEGER NOT NULL DEFAULT 0,     matched INTEGER NOT NULL DEFAULT 0,     unmatched INTEGER NOT NULL DEFAULT 0) WITHOUT ROWID";
  v19[0] = &unk_28599AF48;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v20[0] = v2;
  v19[1] = &unk_28599AF60;
  v17 = @"CREATE TABLE messages(   reply TEXT NOT NULL,    language TEXT NOT NULL,     prompt TEXT NOT NULL,     recipient TEXT NOT NULL,     sent_at DOUBLE NOT NULL,     filtering BOOL NOT NULL,     filtered BOOL NOT NULL)";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v20[1] = v3;
  v19[2] = &unk_28599AF78;
  v16 = @"CREATE TABLE custom_responses(   reply TEXT NOT NULL,     language TEXT NOT NULL,     prompt_embedding BLOB NOT NULL,     decayed_times_used DOUBLE NOT NULL,     first_seen DOUBLE NOT NULL,     last_seen DOUBLE NOT NULL)";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v20[2] = v4;
  v19[3] = &unk_28599AF90;
  v15 = @"CREATE TABLE custom_responses_version(   current_version INTEGER NOT NULL,     profanity_locale TEXT NOT NULL)";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v20[3] = v5;
  v19[4] = &unk_28599AFA8;
  v14[0] = @"CREATE TABLE cr_per_recipient_counts(   reply TEXT NOT NULL,     language TEXT NOT NULL,     recipient TEXT NOT NULL,     decayed_times_used DOUBLE NOT NULL, UNIQUE(reply, language, recipient))";
  v14[1] = @"ALTER TABLE custom_responses ADD COLUMN usage_spread DOUBLE NOT NULL DEFAULT 0.0";
  v14[2] = @"UPDATE custom_responses SET usage_spread = (SELECT CAST(u AS FLOAT)/c FROM    (SELECT count(distinct(recipient)) AS u FROM messages WHERE messages.reply=custom_responses.reply AND messages.language=custom_responses.language),    (SELECT count(distinct(recipient)) AS c FROM messages));";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v20[4] = v6;
  v19[5] = &unk_28599AFC0;
  v13 = @"CREATE TABLE responses_snapshot(   lang_response TEXT PRIMARY KEY,     displayed INTEGER NOT NULL DEFAULT 0,     selected INTEGER NOT NULL DEFAULT 0,     matched INTEGER NOT NULL DEFAULT 0) WITHOUT ROWID";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v20[5] = v7;
  v19[6] = &unk_28599AFD8;
  v12[0] = @"DELETE FROM responses";
  v12[1] = @"DELETE FROM responses_totals";
  v12[2] = @"DELETE FROM responses_snapshot";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v20[6] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:7];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)_handleCorruptionWithCheck:(BOOL)check path:(id)path inMemory:(BOOL)memory
{
  checkCopy = check;
  v27 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (memory)
  {
    v9 = 1;
  }

  else
  {
    v10 = [MEMORY[0x277D42630] corruptionMarkerPathForPath:pathCopy];
    if (checkCopy && ([MEMORY[0x277CCAA00] defaultManager], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "fileExistsAtPath:isDirectory:", v10, 0), v11, !v12))
    {
      v9 = 1;
    }

    else
    {
      db = self->_db;
      p_db = &self->_db;
      [(_PASSqliteDatabase *)db closePermanently];
      [MEMORY[0x277D42630] truncateDatabaseAtPath:pathCopy];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v22 = 0;
      v16 = [defaultManager removeItemAtPath:v10 error:&v22];
      v17 = v22;

      if ((v16 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v17 localizedDescription];
        *buf = 138412546;
        v24 = v10;
        v25 = 2112;
        v26 = localizedDescription;
        _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SGQuickResponsesDatabase failed to remove corruption marker at %@: %@", buf, 0x16u);
      }

      v18 = [SGQuickResponsesDatabase _openFreshHandleForPath:pathCopy inMemory:0];
      v9 = v18 != 0;
      if (v18)
      {
        objc_storeStrong(p_db, v18);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)_openAnotherHandleForPath:(id)path
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v3 = [MEMORY[0x277D42630] sqliteDatabaseWithFilename:path contentProtection:3 errorHandler:0 error:&v7];
  v4 = v7;
  [v3 prepAndRunQuery:@"PRAGMA journal_mode=WAL" onPrep:0 onRow:0 onError:0];
  [v3 prepAndRunQuery:@"PRAGMA synchronous=NORMAL" onPrep:0 onRow:0 onError:0];
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGQuickResponsesDatabase: Unable to open existing database: %@", buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_openFreshHandleForPath:(id)path inMemory:(BOOL)memory
{
  memoryCopy = memory;
  pathCopy = path;
  if (memoryCopy)
  {
    [MEMORY[0x277D42630] sqliteDatabaseInMemoryWithError:0 errorHandler:0];
  }

  else
  {
    [MEMORY[0x277D42630] initializeDatabase:pathCopy withContentProtection:3 newDatabaseCreated:0 errorHandler:0];
  }
  v6 = ;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SGQuickResponsesDatabase: Unable to initialize database.", v8, 2u);
  }

  return v6;
}

@end