@interface CADDiagnosticsDatabaseCollectorDBInfo
- (BOOL)backupDatabaseFromPath:(id)path toPath:(id)toPath context:(id)context;
- (BOOL)collectMovedAsideDatabaseWithoutRedacting:(id)redacting;
- (BOOL)redactAndCollectMovedAsideDatabase:(id)database;
- (BOOL)redactAndCompress:(id)compress context:(id)context;
- (CADDiagnosticsDatabaseCollectorDBInfo)initWithMainDatabase:(CalDatabase *)database auxDatabase:(void *)auxDatabase context:(id)context;
- (CADDiagnosticsDatabaseCollectorDBInfo)initWithMainDatabase:(CalDatabase *)database context:(id)context;
- (CADDiagnosticsDatabaseCollectorDBInfo)initWithPossiblyUnmigratedDatabaseDirectory:(id)directory context:(id)context;
- (void)collect:(id)collect;
- (void)collectMovedAsideDatabase:(id)database;
- (void)collectStandardDatabase:(id)database;
- (void)dealloc;
- (void)determineExpectedOutputFiles:(id)files;
@end

@implementation CADDiagnosticsDatabaseCollectorDBInfo

- (CADDiagnosticsDatabaseCollectorDBInfo)initWithMainDatabase:(CalDatabase *)database context:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = CADDiagnosticsDatabaseCollectorDBInfo;
  v7 = [(CADDiagnosticsDatabaseCollectorDBInfo *)&v12 init];
  if (v7)
  {
    if ([contextCopy redactLogs])
    {
      v8 = @"Calendar-redacted.sqlitedb.gz";
    }

    else
    {
      v8 = @"Calendar.sqlitedb.gz";
    }

    v9 = [contextCopy temporaryFileForName:v8];
    outputURL = v7->_outputURL;
    v7->_outputURL = v9;

    v7->_mainDatabase = database;
    CFRetain(database);
  }

  return v7;
}

- (CADDiagnosticsDatabaseCollectorDBInfo)initWithMainDatabase:(CalDatabase *)database auxDatabase:(void *)auxDatabase context:(id)context
{
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = CADDiagnosticsDatabaseCollectorDBInfo;
  v9 = [(CADDiagnosticsDatabaseCollectorDBInfo *)&v16 init];
  if (v9)
  {
    UID = CalAuxDatabaseGetUID();
    if ([contextCopy redactLogs])
    {
      v11 = @"Calendar-aux%i-redacted.sqlitedb.gz";
    }

    else
    {
      v11 = @"Calendar-aux%i.sqlitedb.gz";
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:v11, UID];
    v13 = [contextCopy temporaryFileForName:v12];
    outputURL = v9->_outputURL;
    v9->_outputURL = v13;

    v9->_mainDatabase = database;
    CFRetain(database);
    v9->_auxDatabase = auxDatabase;
    CFRetain(auxDatabase);
  }

  return v9;
}

- (CADDiagnosticsDatabaseCollectorDBInfo)initWithPossiblyUnmigratedDatabaseDirectory:(id)directory context:(id)context
{
  directoryCopy = directory;
  contextCopy = context;
  v35.receiver = self;
  v35.super_class = CADDiagnosticsDatabaseCollectorDBInfo;
  v8 = [(CADDiagnosticsDatabaseCollectorDBInfo *)&v35 init];
  if (v8)
  {
    v9 = CalDatabaseMovedAsideDatabaseFilePathInDirectory();
    objc_storeStrong(&v8->_movedAsideDatabasePath, v9);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if (![defaultManager fileExistsAtPath:v9])
    {
LABEL_17:
      v13 = v8;
LABEL_22:

      goto LABEL_23;
    }

    [contextCopy log:{@"Found moved aside database at %@", v9}];
    lastPathComponent = [directoryCopy lastPathComponent];
    if ([lastPathComponent isEqualToString:@"Calendar"] & 1) != 0 || (objc_msgSend(lastPathComponent, "isEqualToString:", @"Calendars"))
    {
      v12 = &stru_2837B4630;
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-", lastPathComponent];
    }

    if ([contextCopy redactLogs])
    {
      ppDb = 0;
      if (sqlite3_open_v2([v9 fileSystemRepresentation], &ppDb, 1, 0) || !ppDb)
      {
        [contextCopy logError:{@"Couldn't open database at path %@", v9, v32}];
      }

      else
      {
        ppStmt = 0;
        v14 = sqlite3_prepare_v2(ppDb, "SELECT value FROM _SqliteDatabaseProperties WHERE key = '_ClientVersion'", -1, &ppStmt, 0);
        if (v14 || !ppStmt)
        {
          [contextCopy logError:{@"Couldn't check moved-aside database version at path %@: %i", v9, v14}];
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
            [contextCopy logError:{@"Unexpectedly got result %i for sqlite3_step", v15}];
            v16 = 0;
          }

          sqlite3_finalize(ppStmt);
          v28 = sqlite3_close(ppDb);
          if (v28)
          {
            [contextCopy logError:{@"Error closing database: %i", v28}];
          }

          if (v16 == 19002)
          {
            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Calendar-unableToMigrate-%@redacted.sqlitedb.gz", v12];
            v30 = [contextCopy temporaryFileForName:v29];
            outputURL = v8->_outputURL;
            v8->_outputURL = v30;

            goto LABEL_16;
          }

          [contextCopy logError:{@"Cannot attach moved aside database because it is version %i and the current version is %i", v16, 19002}];
        }
      }

      v13 = 0;
      goto LABEL_22;
    }

    v17 = MEMORY[0x277CCACA8];
    lastPathComponent2 = [v9 lastPathComponent];
    v19 = [v17 stringWithFormat:@"%@%@", v12, lastPathComponent2];

    v20 = [v19 stringByAppendingString:@"-wal"];
    v21 = [v19 stringByAppendingPathExtension:@"gz"];
    v22 = [contextCopy temporaryFileForName:v21];
    v23 = v8->_outputURL;
    v8->_outputURL = v22;

    v24 = [v20 stringByAppendingPathExtension:@"gz"];
    v25 = [contextCopy temporaryFileForName:v24];
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

- (void)determineExpectedOutputFiles:(id)files
{
  filesCopy = files;
  [filesCopy setStatus:0 forFile:self->_outputURL];
  if (self->_walOutputURL)
  {
    [filesCopy setStatus:0 forFile:?];
  }
}

- (void)collect:(id)collect
{
  collectCopy = collect;
  if (([collectCopy canceled] & 1) == 0)
  {
    if (self->_movedAsideDatabasePath)
    {
      [(CADDiagnosticsDatabaseCollectorDBInfo *)self collectMovedAsideDatabase:collectCopy];
    }

    else
    {
      [(CADDiagnosticsDatabaseCollectorDBInfo *)self collectStandardDatabase:collectCopy];
    }
  }
}

- (void)collectStandardDatabase:(id)database
{
  databaseCopy = database;
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

    lastPathComponent = [(NSURL *)self->_outputURL lastPathComponent];
    [databaseCopy log:{@"Collecting %@ database (for output file %@)", v5, lastPathComponent}];

    lastPathComponent2 = [(NSURL *)*p_outputURL lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent2 stringByDeletingPathExtension];

    v9 = [databaseCopy temporaryFileForName:stringByDeletingPathExtension];
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

        if ([(CADDiagnosticsDatabaseCollectorDBInfo *)self redactAndCompress:v9 context:databaseCopy])
        {
          v14 = 2;
          goto LABEL_19;
        }
      }

      else
      {
        [databaseCopy logError:@"Unable to backup database"];
        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    else
    {
      [databaseCopy logError:@"Unable to create database"];
    }
  }

  else
  {
    lastPathComponent3 = [(NSURL *)self->_outputURL lastPathComponent];
    [databaseCopy logError:{@"No main database; can't collect %@", lastPathComponent3}];

    v9 = 0;
  }

  p_outputURL = &self->_outputURL;
  v14 = 3;
LABEL_19:
  [databaseCopy setStatus:v14 forFile:*p_outputURL];
}

- (void)collectMovedAsideDatabase:(id)database
{
  databaseCopy = database;
  if ([databaseCopy redactLogs])
  {
    if ([(CADDiagnosticsDatabaseCollectorDBInfo *)self redactAndCollectMovedAsideDatabase:databaseCopy])
    {
LABEL_3:
      v4 = 2;
      goto LABEL_6;
    }
  }

  else if ([(CADDiagnosticsDatabaseCollectorDBInfo *)self collectMovedAsideDatabaseWithoutRedacting:databaseCopy])
  {
    goto LABEL_3;
  }

  v4 = 3;
LABEL_6:
  [databaseCopy setStatus:v4 forFile:self->_outputURL];
}

- (BOOL)backupDatabaseFromPath:(id)path toPath:(id)toPath context:(id)context
{
  toPathCopy = toPath;
  contextCopy = context;
  v22 = 0;
  ppDb = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__CADDiagnosticsDatabaseCollectorDBInfo_backupDatabaseFromPath_toPath_context___block_invoke;
  v17[3] = &unk_27851BA28;
  v19 = 0;
  v9 = contextCopy;
  v20 = 0;
  v21 = 0;
  v18 = v9;
  pathCopy = path;
  v11 = MEMORY[0x22AA4DCD0](v17);
  fileSystemRepresentation = [pathCopy fileSystemRepresentation];

  v13 = 0;
  if (!sqlite3_open_v2(fileSystemRepresentation, &ppDb, 1, 0))
  {
    if (ppDb)
    {
      v13 = 0;
      if (!sqlite3_open_v2([toPathCopy fileSystemRepresentation], &v22, 6, 0))
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

- (BOOL)redactAndCollectMovedAsideDatabase:(id)database
{
  databaseCopy = database;
  v5 = [databaseCopy temporaryFileForName:@"moved-aside-copy-for-redacting.sqlitedb"];
  movedAsideDatabasePath = self->_movedAsideDatabasePath;
  absoluteURL = [v5 absoluteURL];
  path = [absoluteURL path];
  LOBYTE(movedAsideDatabasePath) = [(CADDiagnosticsDatabaseCollectorDBInfo *)self backupDatabaseFromPath:movedAsideDatabasePath toPath:path context:databaseCopy];

  if (movedAsideDatabasePath)
  {
    v9 = [(CADDiagnosticsDatabaseCollectorDBInfo *)self redactAndCompress:v5 context:databaseCopy];
  }

  else
  {
    [databaseCopy logError:@"Unable to backup database"];
    v9 = 0;
  }

  return v9;
}

- (BOOL)collectMovedAsideDatabaseWithoutRedacting:(id)redacting
{
  redactingCopy = redacting;
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_movedAsideDatabasePath];
  v6 = [CADDiagnosticsUtils compressFileAt:v5 to:self->_outputURL context:redactingCopy];
  if (v6)
  {
    v7 = [(NSString *)self->_movedAsideDatabasePath stringByAppendingString:@"-wal"];
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
    if ([CADDiagnosticsUtils compressFileAt:v8 to:self->_walOutputURL context:redactingCopy])
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    [redactingCopy setStatus:v9 forFile:self->_walOutputURL];
  }

  else
  {
    [redactingCopy setStatus:3 forFile:self->_walOutputURL];
  }

  return v6;
}

- (BOOL)redactAndCompress:(id)compress context:(id)context
{
  compressCopy = compress;
  contextCopy = context;
  if ([contextCopy redactLogs] && (objc_msgSend(contextCopy, "canceled") & 1) == 0)
  {
    v9 = [[CADCalendarDatabaseRedactor alloc] initWithPath:compressCopy context:contextCopy];
    redact = [(CADCalendarDatabaseRedactor *)v9 redact];
    if ((redact & 1) == 0)
    {
      [contextCopy logError:@"Calendar database redaction failed; calendar database will not be attached."];
    }
  }

  else
  {
    redact = 1;
  }

  canceled = [contextCopy canceled];
  v11 = 0;
  if (redact && !canceled)
  {
    if (![CADDiagnosticsUtils compressFileAt:compressCopy to:self->_outputURL context:contextCopy])
    {
      [contextCopy logError:@"Error compressing database file"];
      [contextCopy deleteTemporaryFile:self->_outputURL];
      v11 = 0;
      if (!compressCopy)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v11 = 1;
  }

  if (compressCopy)
  {
LABEL_12:
    [contextCopy deleteTemporaryFile:compressCopy];
  }

LABEL_13:

  return v11;
}

@end