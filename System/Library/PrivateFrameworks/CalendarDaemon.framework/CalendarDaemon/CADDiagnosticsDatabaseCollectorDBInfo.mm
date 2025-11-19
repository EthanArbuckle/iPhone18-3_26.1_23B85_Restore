@interface CADDiagnosticsDatabaseCollectorDBInfo
- (BOOL)backupDatabaseFromPath:(id)a3 toPath:(id)a4 context:(id)a5;
- (BOOL)collectMovedAsideDatabaseWithoutRedacting:(id)a3;
- (BOOL)redactAndCollectMovedAsideDatabase:(id)a3;
- (BOOL)redactAndCompress:(id)a3 context:(id)a4;
- (CADDiagnosticsDatabaseCollectorDBInfo)initWithMainDatabase:(CalDatabase *)a3 auxDatabase:(void *)a4 context:(id)a5;
- (CADDiagnosticsDatabaseCollectorDBInfo)initWithMainDatabase:(CalDatabase *)a3 context:(id)a4;
- (CADDiagnosticsDatabaseCollectorDBInfo)initWithPossiblyUnmigratedDatabaseDirectory:(id)a3 context:(id)a4;
- (void)collect:(id)a3;
- (void)collectMovedAsideDatabase:(id)a3;
- (void)collectStandardDatabase:(id)a3;
- (void)dealloc;
- (void)determineExpectedOutputFiles:(id)a3;
@end

@implementation CADDiagnosticsDatabaseCollectorDBInfo

- (CADDiagnosticsDatabaseCollectorDBInfo)initWithMainDatabase:(CalDatabase *)a3 context:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CADDiagnosticsDatabaseCollectorDBInfo;
  v7 = [(CADDiagnosticsDatabaseCollectorDBInfo *)&v12 init];
  if (v7)
  {
    if ([v6 redactLogs])
    {
      v8 = @"Calendar-redacted.sqlitedb.gz";
    }

    else
    {
      v8 = @"Calendar.sqlitedb.gz";
    }

    v9 = [v6 temporaryFileForName:v8];
    outputURL = v7->_outputURL;
    v7->_outputURL = v9;

    v7->_mainDatabase = a3;
    CFRetain(a3);
  }

  return v7;
}

- (CADDiagnosticsDatabaseCollectorDBInfo)initWithMainDatabase:(CalDatabase *)a3 auxDatabase:(void *)a4 context:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = CADDiagnosticsDatabaseCollectorDBInfo;
  v9 = [(CADDiagnosticsDatabaseCollectorDBInfo *)&v16 init];
  if (v9)
  {
    UID = CalAuxDatabaseGetUID();
    if ([v8 redactLogs])
    {
      v11 = @"Calendar-aux%i-redacted.sqlitedb.gz";
    }

    else
    {
      v11 = @"Calendar-aux%i.sqlitedb.gz";
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:v11, UID];
    v13 = [v8 temporaryFileForName:v12];
    outputURL = v9->_outputURL;
    v9->_outputURL = v13;

    v9->_mainDatabase = a3;
    CFRetain(a3);
    v9->_auxDatabase = a4;
    CFRetain(a4);
  }

  return v9;
}

- (CADDiagnosticsDatabaseCollectorDBInfo)initWithPossiblyUnmigratedDatabaseDirectory:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v35.receiver = self;
  v35.super_class = CADDiagnosticsDatabaseCollectorDBInfo;
  v8 = [(CADDiagnosticsDatabaseCollectorDBInfo *)&v35 init];
  if (v8)
  {
    v9 = CalDatabaseMovedAsideDatabaseFilePathInDirectory();
    objc_storeStrong(&v8->_movedAsideDatabasePath, v9);
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    if (![v10 fileExistsAtPath:v9])
    {
LABEL_17:
      v13 = v8;
LABEL_22:

      goto LABEL_23;
    }

    [v7 log:{@"Found moved aside database at %@", v9}];
    v11 = [v6 lastPathComponent];
    if ([v11 isEqualToString:@"Calendar"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"Calendars"))
    {
      v12 = &stru_2837B4630;
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-", v11];
    }

    if ([v7 redactLogs])
    {
      ppDb = 0;
      if (sqlite3_open_v2([v9 fileSystemRepresentation], &ppDb, 1, 0) || !ppDb)
      {
        [v7 logError:{@"Couldn't open database at path %@", v9, v32}];
      }

      else
      {
        ppStmt = 0;
        v14 = sqlite3_prepare_v2(ppDb, "SELECT value FROM _SqliteDatabaseProperties WHERE key = '_ClientVersion'", -1, &ppStmt, 0);
        if (v14 || !ppStmt)
        {
          [v7 logError:{@"Couldn't check moved-aside database version at path %@: %i", v9, v14}];
          sqlite3_close(ppDb);
        }

        else
        {
          v15 = sqlite3_step(ppStmt);
          if (v15 == 100)
          {
            v16 = sqlite3_column_int(ppStmt, 0);
          }

          else
          {
            [v7 logError:{@"Unexpectedly got result %i for sqlite3_step", v15}];
            v16 = 0;
          }

          sqlite3_finalize(ppStmt);
          v28 = sqlite3_close(ppDb);
          if (v28)
          {
            [v7 logError:{@"Error closing database: %i", v28}];
          }

          if (v16 == 19002)
          {
            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Calendar-unableToMigrate-%@redacted.sqlitedb.gz", v12];
            v30 = [v7 temporaryFileForName:v29];
            outputURL = v8->_outputURL;
            v8->_outputURL = v30;

            goto LABEL_16;
          }

          [v7 logError:{@"Cannot attach moved aside database because it is version %i and the current version is %i", v16, 19002}];
        }
      }

      v13 = 0;
      goto LABEL_22;
    }

    v17 = MEMORY[0x277CCACA8];
    v18 = [v9 lastPathComponent];
    v19 = [v17 stringWithFormat:@"%@%@", v12, v18];

    v20 = [v19 stringByAppendingString:@"-wal"];
    v21 = [v19 stringByAppendingPathExtension:@"gz"];
    v22 = [v7 temporaryFileForName:v21];
    v23 = v8->_outputURL;
    v8->_outputURL = v22;

    v24 = [v20 stringByAppendingPathExtension:@"gz"];
    v25 = [v7 temporaryFileForName:v24];
    walOutputURL = v8->_walOutputURL;
    v8->_walOutputURL = v25;

LABEL_16:
    goto LABEL_17;
  }

  v13 = 0;
LABEL_23:

  return v13;
}

- (void)dealloc
{
  auxDatabase = self->_auxDatabase;
  if (auxDatabase)
  {
    CFRelease(auxDatabase);
  }

  mainDatabase = self->_mainDatabase;
  if (mainDatabase)
  {
    CFRelease(mainDatabase);
  }

  v5.receiver = self;
  v5.super_class = CADDiagnosticsDatabaseCollectorDBInfo;
  [(CADDiagnosticsDatabaseCollectorDBInfo *)&v5 dealloc];
}

- (void)determineExpectedOutputFiles:(id)a3
{
  v4 = a3;
  [v4 setStatus:0 forFile:self->_outputURL];
  if (self->_walOutputURL)
  {
    [v4 setStatus:0 forFile:?];
  }
}

- (void)collect:(id)a3
{
  v4 = a3;
  if (([v4 canceled] & 1) == 0)
  {
    if (self->_movedAsideDatabasePath)
    {
      [(CADDiagnosticsDatabaseCollectorDBInfo *)self collectMovedAsideDatabase:v4];
    }

    else
    {
      [(CADDiagnosticsDatabaseCollectorDBInfo *)self collectStandardDatabase:v4];
    }
  }
}

- (void)collectStandardDatabase:(id)a3
{
  v15 = a3;
  if (self->_mainDatabase)
  {
    p_outputURL = &self->_outputURL;
    if (self->_auxDatabase)
    {
      v5 = @"an auxiliary";
    }

    else
    {
      v5 = @"the main";
    }

    v6 = [(NSURL *)self->_outputURL lastPathComponent];
    [v15 log:{@"Collecting %@ database (for output file %@)", v5, v6}];

    v7 = [(NSURL *)*p_outputURL lastPathComponent];
    v8 = [v7 stringByDeletingPathExtension];

    v9 = [v15 temporaryFileForName:v8];
    mainDatabase = self->_mainDatabase;
    if (self->_auxDatabase)
    {
      v11 = self->_mainDatabase;
      mainDatabase = CalDatabaseCreateWithAuxDatabaseRef();
      v12 = mainDatabase;
    }

    else
    {
      v12 = 0;
    }

    if (mainDatabase)
    {
      if (CalDatabaseBackupDatabaseFile())
      {
        if (v12)
        {
          CFRelease(v12);
        }

        if ([(CADDiagnosticsDatabaseCollectorDBInfo *)self redactAndCompress:v9 context:v15])
        {
          v14 = 2;
          goto LABEL_19;
        }
      }

      else
      {
        [v15 logError:@"Unable to backup database"];
        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    else
    {
      [v15 logError:@"Unable to create database"];
    }
  }

  else
  {
    v13 = [(NSURL *)self->_outputURL lastPathComponent];
    [v15 logError:{@"No main database; can't collect %@", v13}];

    v9 = 0;
  }

  p_outputURL = &self->_outputURL;
  v14 = 3;
LABEL_19:
  [v15 setStatus:v14 forFile:*p_outputURL];
}

- (void)collectMovedAsideDatabase:(id)a3
{
  v5 = a3;
  if ([v5 redactLogs])
  {
    if ([(CADDiagnosticsDatabaseCollectorDBInfo *)self redactAndCollectMovedAsideDatabase:v5])
    {
LABEL_3:
      v4 = 2;
      goto LABEL_6;
    }
  }

  else if ([(CADDiagnosticsDatabaseCollectorDBInfo *)self collectMovedAsideDatabaseWithoutRedacting:v5])
  {
    goto LABEL_3;
  }

  v4 = 3;
LABEL_6:
  [v5 setStatus:v4 forFile:self->_outputURL];
}

- (BOOL)backupDatabaseFromPath:(id)a3 toPath:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  v22 = 0;
  ppDb = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__CADDiagnosticsDatabaseCollectorDBInfo_backupDatabaseFromPath_toPath_context___block_invoke;
  v17[3] = &unk_27851BA28;
  v19 = 0;
  v9 = v8;
  v20 = 0;
  v21 = 0;
  v18 = v9;
  v10 = a3;
  v11 = MEMORY[0x22AA4DCD0](v17);
  v12 = [v10 fileSystemRepresentation];

  v13 = 0;
  if (!sqlite3_open_v2(v12, &ppDb, 1, 0))
  {
    if (ppDb)
    {
      v13 = 0;
      if (!sqlite3_open_v2([v7 fileSystemRepresentation], &v22, 6, 0))
      {
        if (v22)
        {
          v14 = sqlite3_backup_init(v22, "main", ppDb, "main");
          if (v14)
          {
            v15 = sqlite3_backup_step(v14, -1);
            if (v15 != 101)
            {
              [v9 logError:{@"Unexpected result to sqlite3_backup_step: %i", v15}];
            }

            v13 = 1;
          }

          else
          {
            v13 = 0;
          }
        }
      }
    }
  }

  v11[2](v11);

  return v13;
}

sqlite3 *__79__CADDiagnosticsDatabaseCollectorDBInfo_backupDatabaseFromPath_toPath_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = sqlite3_backup_finish(v2);
    if (v3)
    {
      [*(a1 + 32) logError:{@"Error finishing the backup: %i", v3}];
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = sqlite3_close(v4);
    if (v5)
    {
      [*(a1 + 32) logError:{@"Error closing source db in backup: %i", v5}];
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    result = sqlite3_close(result);
    if (result)
    {
      return [*(a1 + 32) logError:{@"Error closing destination db in backup: %i", result}];
    }
  }

  return result;
}

- (BOOL)redactAndCollectMovedAsideDatabase:(id)a3
{
  v4 = a3;
  v5 = [v4 temporaryFileForName:@"moved-aside-copy-for-redacting.sqlitedb"];
  movedAsideDatabasePath = self->_movedAsideDatabasePath;
  v7 = [v5 absoluteURL];
  v8 = [v7 path];
  LOBYTE(movedAsideDatabasePath) = [(CADDiagnosticsDatabaseCollectorDBInfo *)self backupDatabaseFromPath:movedAsideDatabasePath toPath:v8 context:v4];

  if (movedAsideDatabasePath)
  {
    v9 = [(CADDiagnosticsDatabaseCollectorDBInfo *)self redactAndCompress:v5 context:v4];
  }

  else
  {
    [v4 logError:@"Unable to backup database"];
    v9 = 0;
  }

  return v9;
}

- (BOOL)collectMovedAsideDatabaseWithoutRedacting:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_movedAsideDatabasePath];
  v6 = [CADDiagnosticsUtils compressFileAt:v5 to:self->_outputURL context:v4];
  if (v6)
  {
    v7 = [(NSString *)self->_movedAsideDatabasePath stringByAppendingString:@"-wal"];
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
    if ([CADDiagnosticsUtils compressFileAt:v8 to:self->_walOutputURL context:v4])
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    [v4 setStatus:v9 forFile:self->_walOutputURL];
  }

  else
  {
    [v4 setStatus:3 forFile:self->_walOutputURL];
  }

  return v6;
}

- (BOOL)redactAndCompress:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 redactLogs] && (objc_msgSend(v7, "canceled") & 1) == 0)
  {
    v9 = [[CADCalendarDatabaseRedactor alloc] initWithPath:v6 context:v7];
    v8 = [(CADCalendarDatabaseRedactor *)v9 redact];
    if ((v8 & 1) == 0)
    {
      [v7 logError:@"Calendar database redaction failed; calendar database will not be attached."];
    }
  }

  else
  {
    v8 = 1;
  }

  v10 = [v7 canceled];
  v11 = 0;
  if (v8 && !v10)
  {
    if (![CADDiagnosticsUtils compressFileAt:v6 to:self->_outputURL context:v7])
    {
      [v7 logError:@"Error compressing database file"];
      [v7 deleteTemporaryFile:self->_outputURL];
      v11 = 0;
      if (!v6)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v11 = 1;
  }

  if (v6)
  {
LABEL_12:
    [v7 deleteTemporaryFile:v6];
  }

LABEL_13:

  return v11;
}

@end