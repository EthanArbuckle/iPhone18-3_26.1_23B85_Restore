@interface CADDiagnosticsDiagnosticDatabaseCollector
- (BOOL)collectDiagnosticsDatabase:(id)a3;
- (void)collect:(id)a3;
- (void)determineExpectedOutputFiles:(id)a3;
@end

@implementation CADDiagnosticsDiagnosticDatabaseCollector

- (void)determineExpectedOutputFiles:(id)a3
{
  v7 = a3;
  if (CalendarDiagnosticsLibraryCore())
  {
    if ([v7 redactLogs])
    {
      v4 = @"Diagnostics-redacted.db.gz";
    }

    else
    {
      v4 = @"Diagnostics.db.gz";
    }

    v5 = [v7 temporaryFileForName:v4];
    outputURL = self->_outputURL;
    self->_outputURL = v5;

    [v7 setStatus:0 forFile:self->_outputURL];
  }

  else
  {
    [v7 logError:@"CalendarDiagnostics not loaded; no diagnostics database will be attached"];
  }
}

- (void)collect:(id)a3
{
  v5 = a3;
  if ([(CADDiagnosticsDiagnosticDatabaseCollector *)self collectDiagnosticsDatabase:v5])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  [v5 setStatus:v4 forFile:self->_outputURL];
}

- (BOOL)collectDiagnosticsDatabase:(id)a3
{
  v4 = a3;
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
      v7 = [(NSURL *)self->_outputURL lastPathComponent];
      v8 = [v7 stringByDeletingPathExtension];

      v9 = [v4 temporaryFileForName:v8];
      v10 = [objc_msgSend(v5 "alloc")];
      if ([v4 redactLogs])
      {
        v19 = 0;
        v11 = &v19;
        v12 = [v10 obfuscateWithContext:v4 error:&v19];
      }

      else
      {
        v18 = 0;
        v11 = &v18;
        v12 = [v10 copyWithoutObfuscatingWithContext:v4 error:&v18];
      }

      v15 = v12;
      v16 = *v11;
      if (![v4 canceled] && v15)
      {
        if ([CADDiagnosticsUtils compressFileAt:v9 to:self->_outputURL context:v4])
        {
          [v4 deleteTemporaryFile:v9];
          v14 = 1;
LABEL_17:

          goto LABEL_18;
        }

        [v4 deleteTemporaryFile:self->_outputURL];
      }

      [v4 deleteTemporaryFile:v9];
      [v4 log:{@"Error attaching diagnostics database. Diagnostics database will NOT be attached: %@", v16}];
      v14 = 0;
      goto LABEL_17;
    }

    v13 = @"CalDiagObfuscator not loaded; no diagnostics database will be attached";
  }

  else
  {
    v13 = @"CalendarDiagnostics not loaded; no diagnostics database will be attached";
  }

  [v4 logError:v13];
  v14 = 0;
LABEL_18:

  return v14;
}

@end