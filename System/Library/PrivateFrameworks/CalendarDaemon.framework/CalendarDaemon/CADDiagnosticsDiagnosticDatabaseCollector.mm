@interface CADDiagnosticsDiagnosticDatabaseCollector
- (BOOL)collectDiagnosticsDatabase:(id)database;
- (void)collect:(id)collect;
- (void)determineExpectedOutputFiles:(id)files;
@end

@implementation CADDiagnosticsDiagnosticDatabaseCollector

- (void)determineExpectedOutputFiles:(id)files
{
  filesCopy = files;
  if (CalendarDiagnosticsLibraryCore())
  {
    if ([filesCopy redactLogs])
    {
      v4 = @"Diagnostics-redacted.db.gz";
    }

    else
    {
      v4 = @"Diagnostics.db.gz";
    }

    v5 = [filesCopy temporaryFileForName:v4];
    outputURL = self->_outputURL;
    self->_outputURL = v5;

    [filesCopy setStatus:0 forFile:self->_outputURL];
  }

  else
  {
    [filesCopy logError:@"CalendarDiagnostics not loaded; no diagnostics database will be attached"];
  }
}

- (void)collect:(id)collect
{
  collectCopy = collect;
  if ([(CADDiagnosticsDiagnosticDatabaseCollector *)self collectDiagnosticsDatabase:collectCopy])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  [collectCopy setStatus:v4 forFile:self->_outputURL];
}

- (BOOL)collectDiagnosticsDatabase:(id)database
{
  databaseCopy = database;
  if (CalendarDiagnosticsLibraryCore())
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v5 = getCalDiagObfuscatorClass_softClass;
    v24 = getCalDiagObfuscatorClass_softClass;
    if (!getCalDiagObfuscatorClass_softClass)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __getCalDiagObfuscatorClass_block_invoke;
      v20[3] = &unk_27851B250;
      v20[4] = &v21;
      __getCalDiagObfuscatorClass_block_invoke(v20);
      v5 = v22[3];
    }

    v6 = v5;
    _Block_object_dispose(&v21, 8);
    if (v5)
    {
      lastPathComponent = [(NSURL *)self->_outputURL lastPathComponent];
      stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

      v9 = [databaseCopy temporaryFileForName:stringByDeletingPathExtension];
      v10 = [objc_msgSend(v5 "alloc")];
      if ([databaseCopy redactLogs])
      {
        v19 = 0;
        v11 = &v19;
        v12 = [v10 obfuscateWithContext:databaseCopy error:&v19];
      }

      else
      {
        v18 = 0;
        v11 = &v18;
        v12 = [v10 copyWithoutObfuscatingWithContext:databaseCopy error:&v18];
      }

      v15 = v12;
      v16 = *v11;
      if (![databaseCopy canceled] && v15)
      {
        if ([CADDiagnosticsUtils compressFileAt:v9 to:self->_outputURL context:databaseCopy])
        {
          [databaseCopy deleteTemporaryFile:v9];
          v14 = 1;
LABEL_17:

          goto LABEL_18;
        }

        [databaseCopy deleteTemporaryFile:self->_outputURL];
      }

      [databaseCopy deleteTemporaryFile:v9];
      [databaseCopy log:{@"Error attaching diagnostics database. Diagnostics database will NOT be attached: %@", v16}];
      v14 = 0;
      goto LABEL_17;
    }

    v13 = @"CalDiagObfuscator not loaded; no diagnostics database will be attached";
  }

  else
  {
    v13 = @"CalendarDiagnostics not loaded; no diagnostics database will be attached";
  }

  [databaseCopy logError:v13];
  v14 = 0;
LABEL_18:

  return v14;
}

@end