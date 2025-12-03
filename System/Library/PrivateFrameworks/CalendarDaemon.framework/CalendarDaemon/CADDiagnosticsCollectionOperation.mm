@interface CADDiagnosticsCollectionOperation
- (CADDiagnosticsCollectionOperation)initWithConnection:(id)connection token:(unsigned int)token options:(int64_t)options trafficLogsCollectionMode:(unint64_t)mode;
- (id)_createLogDirectory;
- (id)_randomString;
- (id)finalFileForFile:(id)file;
- (id)loadLogCollectors;
- (id)temporaryFileForName:(id)name;
- (void)batch:(id)batch;
- (void)deleteTemporaryFile:(id)file;
- (void)finish;
- (void)logWithLevel:(unsigned __int8)level formatString:(id)string arguments:(char *)arguments;
- (void)main;
- (void)reportFileStatusChangesToClient;
- (void)setStatus:(unint64_t)status forFile:(id)file;
@end

@implementation CADDiagnosticsCollectionOperation

- (CADDiagnosticsCollectionOperation)initWithConnection:(id)connection token:(unsigned int)token options:(int64_t)options trafficLogsCollectionMode:(unint64_t)mode
{
  v51 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v48.receiver = self;
  v48.super_class = CADDiagnosticsCollectionOperation;
  v12 = [(CADDiagnosticsCollectionOperation *)&v48 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_conn, connection);
    v13->_token = token;
    v13->_options = options;
    v13->_trafficLogsCollectionMode = mode;
    v14 = objc_opt_new();
    files = v13->_files;
    v13->_files = v14;

    v16 = objc_opt_new();
    changedFiles = v13->_changedFiles;
    v13->_changedFiles = v16;

    v13->_lock._os_unfair_lock_opaque = 0;
    _createLogDirectory = [(CADDiagnosticsCollectionOperation *)v13 _createLogDirectory];
    logDirectoryURL = v13->_logDirectoryURL;
    v13->_logDirectoryURL = _createLogDirectory;

    v20 = [(NSURL *)v13->_logDirectoryURL URLByAppendingPathComponent:@"Incoming/"];
    incomingLogDirectoryURL = v13->_incomingLogDirectoryURL;
    v13->_incomingLogDirectoryURL = v20;

    v22 = [(NSURL *)v13->_logDirectoryURL URLByAppendingPathComponent:@"Completed/"];
    completedLogDirectoryURL = v13->_completedLogDirectoryURL;
    v13->_completedLogDirectoryURL = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
    temporaryFileNames = v13->_temporaryFileNames;
    v13->_temporaryFileNames = v24;

    _createLogFile = [(CADDiagnosticsCollectionOperation *)v13 _createLogFile];
    logFileURL = v13->_logFileURL;
    v13->_logFileURL = _createLogFile;

    v28 = v13->_logFileURL;
    if (v28)
    {
      v29 = fopen([(NSURL *)v28 fileSystemRepresentation], "w");
      v13->_logFile = v29;
      if (v29)
      {
        v30 = objc_alloc_init(MEMORY[0x277CCA968]);
        dateFormatter = v13->_dateFormatter;
        v13->_dateFormatter = v30;

        [(NSDateFormatter *)v13->_dateFormatter setDateFormat:@"yyyy-MM-dd' 'HH:mm:ss.SSSSSZZZ"];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v33 = v13->_incomingLogDirectoryURL;
        v47 = 0;
        v34 = [defaultManager createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:&v47];
        v35 = v47;
        v36 = v35;
        if ((v34 & 1) == 0)
        {
          [(CADDiagnosticsCollectionOperation *)v13 logError:@"Unable to create incoming directory:%@", v35];
        }

        v37 = v13->_completedLogDirectoryURL;
        v46 = v36;
        v38 = [defaultManager createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:&v46];
        v39 = v46;

        if ((v38 & 1) == 0)
        {
          [(CADDiagnosticsCollectionOperation *)v13 logError:@"Unable to create completed directory:%@", v39];
        }

        goto LABEL_9;
      }

      v41 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v42 = v41;
        v43 = *__error();
        *buf = 67109120;
        v50 = v43;
        _os_log_impl(&dword_22430B000, v42, OS_LOG_TYPE_ERROR, "Unable to open log file: %{errno}i", buf, 8u);
      }
    }

    v40 = 0;
    goto LABEL_13;
  }

LABEL_9:
  v40 = v13;
LABEL_13:

  v44 = *MEMORY[0x277D85DE8];
  return v40;
}

- (id)loadLogCollectors
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if (self->_trafficLogsCollectionMode)
  {
    v4 = objc_alloc_init(CADDiagnosticsCalDAVTrafficLogCollector);
    v5 = v4;
    if (self->_trafficLogsCollectionMode == 1)
    {
      [(CADDiagnosticsCalDAVTrafficLogCollector *)v4 setLimitedLogs:1];
    }

    [v3 addObject:v5];
  }

  v12[0] = self;
  v6 = objc_alloc_init(CADDiagnosticsCalDAVSpotlightLogCollector);
  v12[1] = v6;
  v7 = objc_alloc_init(CADDiagnosticsDatabaseCollector);
  v12[2] = v7;
  v8 = objc_alloc_init(CADDiagnosticsDiagnosticDatabaseCollector);
  v12[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  [v3 addObjectsFromArray:v9];

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)main
{
  v21 = *MEMORY[0x277D85DE8];
  [(CADDiagnosticsCollectionOperation *)self log:@"Started collecting diagnostics"];
  loadLogCollectors = [(CADDiagnosticsCollectionOperation *)self loadLogCollectors];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __41__CADDiagnosticsCollectionOperation_main__block_invoke;
  v17[3] = &unk_27851AB28;
  v4 = loadLogCollectors;
  v18 = v4;
  selfCopy = self;
  [(CADDiagnosticsCollectionOperation *)self batch:v17];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if (([(CADDiagnosticsCollectionOperation *)self isCancelled]& 1) != 0)
      {
        break;
      }

      [(CADDiagnosticsCollectionOperation *)self log:@"Asking %@ to collect logs", objc_opt_class()];
      [v10 collect:self];
      [(CADDiagnosticsCollectionOperation *)self log:@"%@ has fininshed collecting logs", objc_opt_class()];
      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ([(CADDiagnosticsCollectionOperation *)self isCancelled])
  {
    v11 = @"Diagnostics collection canceled";
  }

  else
  {
    v11 = @"Finished collecting diagnostics";
  }

  [(CADDiagnosticsCollectionOperation *)self log:v11];
  [(CADDiagnosticsCollectionOperation *)self finish];

  v12 = *MEMORY[0x277D85DE8];
}

void __41__CADDiagnosticsCollectionOperation_main__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      if ([*(a1 + 40) isCancelled])
      {
        break;
      }

      [*(a1 + 40) log:{@"Asking %@ to determine what logs it will produce", objc_opt_class()}];
      v8 = [*(*(a1 + 40) + 280) count];
      [v7 determineExpectedOutputFiles:*(a1 + 40)];
      v9 = [*(*(a1 + 40) + 280) count] - v8;
      [*(a1 + 40) log:{@"%@ expects to produce %lu logs", objc_opt_class(), v9, v11}];
      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_createLogDirectory
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"CalendarDiagnosticAttachmentsXXXXXX"];
  v4 = strdup([v3 fileSystemRepresentation]);
  if (mkdtemp(v4))
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v4 isDirectory:1 relativeToURL:0];
    free(v4);
  }

  else
  {
    v6 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = *__error();
      v11[0] = 67109120;
      v11[1] = v8;
      _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_ERROR, "Unable to create log directory: %{errno}i", v11, 8u);
    }

    free(v4);
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_randomString
{
  for (i = 0; i != 6; ++i)
  {
    v3 = random() % 36;
    if (v3 >= 10)
    {
      v4 = 87;
    }

    else
    {
      v4 = 48;
    }

    v7[i] = v4 + v3;
  }

  v7[6] = 0;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];

  return v5;
}

- (id)temporaryFileForName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if ([(NSMutableSet *)self->_temporaryFileNames containsObject:nameCopy])
  {
    v6 = nameCopy;
    do
    {
      pathExtension = [nameCopy pathExtension];
      stringByDeletingPathExtension = [nameCopy stringByDeletingPathExtension];
      _randomString = [(CADDiagnosticsCollectionOperation *)self _randomString];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", stringByDeletingPathExtension, _randomString];
      v5 = [v10 stringByAppendingPathExtension:pathExtension];

      v6 = v5;
    }

    while (([(NSMutableSet *)self->_temporaryFileNames containsObject:v5]& 1) != 0);
  }

  [(NSMutableSet *)self->_temporaryFileNames addObject:v5];
  v11 = [(NSURL *)self->_incomingLogDirectoryURL URLByAppendingPathComponent:v5];

  return v11;
}

- (void)deleteTemporaryFile:(id)file
{
  fileCopy = file;
  path = [fileCopy path];
  path2 = [(NSURL *)self->_incomingLogDirectoryURL path];
  v7 = [path hasPrefix:path2];

  if (v7)
  {
    lastPathComponent = [fileCopy lastPathComponent];
    if (([(NSMutableSet *)self->_temporaryFileNames containsObject:lastPathComponent]& 1) != 0)
    {
      [(NSMutableSet *)self->_temporaryFileNames removeObject:lastPathComponent];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v12 = 0;
      v10 = [defaultManager removeItemAtURL:fileCopy error:&v12];
      v11 = v12;

      if ((v10 & 1) == 0)
      {
        [(CADDiagnosticsCollectionOperation *)self logError:@"Error removing %@: %@", fileCopy, v11];
      }
    }

    else
    {
      [(CADDiagnosticsCollectionOperation *)self logError:@"Ignoring attempt to delete file %@, which wasn't returned by -temporaryFileForName:!", lastPathComponent];
    }
  }

  else
  {
    [(CADDiagnosticsCollectionOperation *)self logError:@"Ignoring attempt to delete URL %@, which is not in the log directory %@!", fileCopy, self->_incomingLogDirectoryURL];
  }
}

- (void)logWithLevel:(unsigned __int8)level formatString:(id)string arguments:(char *)arguments
{
  levelCopy = level;
  v25 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCACA8];
  stringCopy = string;
  v10 = [[v8 alloc] initWithFormat:stringCopy arguments:arguments];

  v11 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, levelCopy))
  {
    *buf = 138543362;
    v24 = v10;
    _os_log_impl(&dword_22430B000, v11, levelCopy, "%{public}@", buf, 0xCu);
  }

  dateFormatter = self->_dateFormatter;
  date = [MEMORY[0x277CBEAA8] date];
  v14 = [(NSDateFormatter *)dateFormatter stringFromDate:date];

  v15 = 0;
  if (levelCopy <= 1)
  {
    if (levelCopy)
    {
      if (levelCopy == 1)
      {
        v15 = @"Info";
      }
    }

    else
    {
      v15 = @"Default";
    }
  }

  else
  {
    switch(levelCopy)
    {
      case 17:
        v15 = @"Fault";
        break;
      case 16:
        v15 = @"Error";
        break;
      case 2:
        v15 = @"Debug";
        break;
    }
  }

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@: %@\n", v14, v15, v10];
  v17 = [v16 dataUsingEncoding:4];
  os_unfair_lock_lock(&self->_lock);
  if (self->_logFile)
  {
    if (fwrite([v17 bytes], objc_msgSend(v17, "length"), 1uLL, self->_logFile) != 1)
    {
      v18 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
        v20 = *__error();
        *buf = 67109120;
        LODWORD(v24) = v20;
        _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_ERROR, "Error writing to log file %{errno}i", buf, 8u);
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v21 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&dword_22430B000, v21, OS_LOG_TYPE_ERROR, "Dropping message because log file is closed: %@", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)finish
{
  os_unfair_lock_lock(&self->_lock);
  logFile = self->_logFile;
  if (logFile)
  {
    fclose(logFile);
    self->_logFile = 0;
    os_unfair_lock_unlock(&self->_lock);
    self->_finished = 1;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    incomingLogDirectoryURL = self->_incomingLogDirectoryURL;
    v9 = 0;
    v6 = [defaultManager removeItemAtURL:incomingLogDirectoryURL error:&v9];
    v7 = v9;

    if ((v6 & 1) == 0)
    {
      [(CADDiagnosticsCollectionOperation *)self logError:@"Couldn't remove incoming direrctory: %@", v7];
    }

    [(CADDiagnosticsCollectionOperation *)self setStatus:2 forFile:self->_logFileURL];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v8 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v8, OS_LOG_TYPE_ERROR, "Finish called without an open log file. Called more than once?", buf, 2u);
    }
  }
}

- (void)batch:(id)batch
{
  ++self->_batchDepth;
  (*(batch + 2))(batch, a2);
  v4 = self->_batchDepth - 1;
  self->_batchDepth = v4;
  if (!v4)
  {

    [(CADDiagnosticsCollectionOperation *)self reportFileStatusChangesToClient];
  }
}

- (id)finalFileForFile:(id)file
{
  fileCopy = file;
  path = [fileCopy path];
  path2 = [(NSURL *)self->_incomingLogDirectoryURL path];
  if ([path hasPrefix:path2])
  {
    completedLogDirectoryURL = self->_completedLogDirectoryURL;
    v8 = [path substringFromIndex:{objc_msgSend(path2, "length")}];
    v9 = [(NSURL *)completedLogDirectoryURL URLByAppendingPathComponent:v8];
  }

  else
  {
    v9 = fileCopy;
  }

  return v9;
}

- (void)setStatus:(unint64_t)status forFile:(id)file
{
  fileCopy = file;
  v7 = [(CADDiagnosticsCollectionOperation *)self finalFileForFile:fileCopy];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_files objectForKeyedSubscript:v7];
    callStackSymbols = v8;
    if (!v8 || [v8 unsignedIntegerValue] != status)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:status];
      [(NSMutableDictionary *)self->_files setObject:v10 forKeyedSubscript:v7];

      [(NSMutableSet *)self->_changedFiles addObject:v7];
      if (status == 2 && v7 != fileCopy)
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v14 = 0;
        v12 = [defaultManager moveItemAtURL:fileCopy toURL:v7 error:&v14];
        v13 = v14;

        if ((v12 & 1) == 0)
        {
          [(CADDiagnosticsCollectionOperation *)self logError:@"Error moving incoming file %@ to %@: %@", fileCopy, v7, v13];
        }
      }

      if (!self->_batchDepth)
      {
        [(CADDiagnosticsCollectionOperation *)self reportFileStatusChangesToClient];
      }
    }
  }

  else
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    [(CADDiagnosticsCollectionOperation *)self logError:@"No key found for file %@ %@", fileCopy, callStackSymbols];
  }
}

- (void)reportFileStatusChangesToClient
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_changedFiles count]|| self->_finished)
  {
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableSet count](self->_changedFiles, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = self->_changedFiles;
    v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          v9 = [(NSMutableDictionary *)self->_files objectForKeyedSubscript:v8];
          if (v9)
          {
            v10 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:v8 readonly:0];
            v11 = v10;
            if (v10)
            {
              v24[0] = @"file";
              v24[1] = @"status";
              v25[0] = v10;
              v25[1] = v9;
              v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
              [v17 addObject:v12];
            }

            else
            {
              [(CADDiagnosticsCollectionOperation *)self logError:@"Couldn't create sandbox extension for %@, so this won't be attached.", v8];
            }
          }

          else
          {
            v13 = CADLogHandle;
            if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v23 = v8;
              _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_ERROR, "No status for file: %@", buf, 0xCu);
            }
          }
        }

        v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v5);
    }

    [(NSMutableSet *)self->_changedFiles removeAllObjects];
    v14 = [(ClientConnection *)self->_conn remoteObjectProxyWithErrorHandler:&__block_literal_global_26];
    v15 = [v17 copy];
    [v14 CADClientReceiveDiagnosticsCollectionResults:v15 forToken:self->_token finished:self->_finished];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __68__CADDiagnosticsCollectionOperation_reportFileStatusChangesToClient__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_ERROR, "Error sending diagnostic file results: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end