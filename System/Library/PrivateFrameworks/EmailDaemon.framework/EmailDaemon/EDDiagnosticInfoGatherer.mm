@interface EDDiagnosticInfoGatherer
+ (OS_os_log)log;
- (BOOL)_compressDatabaseAtURL:(id)l intoDirectoryURL:(id)rL;
- (BOOL)_compressDirectoryAtURL:(id)l intoArchiveWithURL:(id)rL;
- (BOOL)_copyDatabaseFromURL:(id)l intoDatabaseAtURL:(id)rL;
- (BOOL)_copyFromDatabase:(sqlite3 *)database intoDatabase:(sqlite3 *)intoDatabase;
- (EDDiagnosticInfoGatherer)initWithFetchController:(id)controller remoteClientsProvider:(id)provider persistence:(id)persistence;
- (void)_copyAndCompressDatabaseIntoDirectoryURL:(id)l originalURL:(id)rL targetName:(id)name;
- (void)_copyIndexingDiagnosticsDatabaseIntoDirectoryURL:(id)l completionPromise:(id)promise;
- (void)_copySearchIndexerDatabaseIntoDirectoryURL:(id)l;
- (void)_createDiagnosticsJSONForMessagesWithObjectIDs:(id)ds directoryURL:(id)l;
- (void)_downloadMessagesWithObjectIDs:(id)ds directoryURL:(id)l completionPromise:(id)promise;
- (void)databaseStatisticsWithCompletionHandler:(id)handler;
- (void)fetchControllerStatusWithCompletionHandler:(id)handler;
- (void)gatherDiagnosticsWithOptions:(unint64_t)options completionHandler:(id)handler;
- (void)gatherIndexingDiagnosticsWithRedaction:(int64_t)redaction completionHandler:(id)handler;
- (void)registerDiagnosticInfoProvider:(id)provider completionHandler:(id)handler;
- (void)searchableIndexDatabaseStatisticsWithCompletionHandler:(id)handler;
@end

@implementation EDDiagnosticInfoGatherer

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__EDDiagnosticInfoGatherer_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_37 != -1)
  {
    dispatch_once(&log_onceToken_37, block);
  }

  v2 = log_log_37;

  return v2;
}

void __31__EDDiagnosticInfoGatherer_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_37;
  log_log_37 = v1;
}

- (EDDiagnosticInfoGatherer)initWithFetchController:(id)controller remoteClientsProvider:(id)provider persistence:(id)persistence
{
  controllerCopy = controller;
  providerCopy = provider;
  persistenceCopy = persistence;
  v17.receiver = self;
  v17.super_class = EDDiagnosticInfoGatherer;
  v12 = [(EDDiagnosticInfoGatherer *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fetchController, controller);
    objc_storeStrong(&v13->_remoteClientsProvider, provider);
    objc_storeStrong(&v13->_persistence, persistence);
    v14 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.daemon.EDDiagnosticInfoGatherer" qualityOfService:25];
    gathererQueue = v13->_gathererQueue;
    v13->_gathererQueue = v14;
  }

  return v13;
}

- (void)registerDiagnosticInfoProvider:(id)provider completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  handlerCopy = handler;
  objc_storeStrong(&self->_diagnosticInfoProvider, provider);
  v9 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __77__EDDiagnosticInfoGatherer_registerDiagnosticInfoProvider_completionHandler___block_invoke;
  v15 = &unk_1E8250808;
  objc_copyWeak(&v16, &location);
  [v9 addCancelationBlock:&v12];
  v10 = [EDDiagnosticInfoGatherer log:v12];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = providerCopy;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Registered EMDiagnosticInfoProviding: <%p>", buf, 0xCu);
  }

  handlerCopy[2](handlerCopy, v9);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x1E69E9840];
}

void __77__EDDiagnosticInfoGatherer_registerDiagnosticInfoProvider_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    WeakRetained[1] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (void)fetchControllerStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  gathererQueue = [(EDDiagnosticInfoGatherer *)self gathererQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__EDDiagnosticInfoGatherer_fetchControllerStatusWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8250C30;
  v7[4] = self;
  v6 = handlerCopy;
  v8 = v6;
  [gathererQueue performBlock:v7];
}

void __71__EDDiagnosticInfoGatherer_fetchControllerStatusWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchController];
  v3 = [v2 diagnosticInformation];

  (*(*(a1 + 40) + 16))();
}

- (void)gatherDiagnosticsWithOptions:(unint64_t)options completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = +[EDDiagnosticInfoGatherer log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    optionsCopy = options;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Gathering diagnostics with options: %lx...", buf, 0xCu);
  }

  v8 = MEMORY[0x1E695DFF8];
  v9 = NSTemporaryDirectory();
  v10 = [v8 fileURLWithPath:v9 isDirectory:1];
  v11 = [v10 URLByAppendingPathComponent:@"DiagnosticLogs"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v28 = 0;
  v13 = [defaultManager createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v28];
  v14 = v28;

  if ((v13 & 1) == 0)
  {
    v15 = +[EDDiagnosticInfoGatherer log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      path = [v11 path];
      [(EDDiagnosticInfoGatherer *)path gatherDiagnosticsWithOptions:v14 completionHandler:buf, v15];
    }
  }

  v17 = [objc_alloc(MEMORY[0x1E699B970]) initWithFileURL:v11 readOnly:0];
  gathererQueue = [(EDDiagnosticInfoGatherer *)self gathererQueue];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __75__EDDiagnosticInfoGatherer_gatherDiagnosticsWithOptions_completionHandler___block_invoke;
  v23[3] = &unk_1E8252148;
  v23[4] = self;
  v19 = v17;
  v24 = v19;
  optionsCopy2 = options;
  v20 = v11;
  v25 = v20;
  v21 = handlerCopy;
  v26 = v21;
  [gathererQueue performBlock:v23];

  v22 = *MEMORY[0x1E69E9840];
}

void __75__EDDiagnosticInfoGatherer_gatherDiagnosticsWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v21 = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = [*(a1 + 32) remoteClientsProvider];
  v3 = [v2 remoteClients];

  v4 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = *v29;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 diagnosticInfoGatherer];
        v9 = [v8 diagnosticInfoProvider];

        if (v9)
        {
          v10 = [v7 clientResumer];

          if (v10)
          {
            v11 = [v7 clientResumer];
            [v11 resumeForUpdates];
          }

          v12 = [MEMORY[0x1E699B868] promise];
          v13 = *(a1 + 64);
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __75__EDDiagnosticInfoGatherer_gatherDiagnosticsWithOptions_completionHandler___block_invoke_2;
          v25[3] = &unk_1E8252100;
          v14 = *(a1 + 40);
          v25[4] = *(a1 + 32);
          v26 = *(a1 + 48);
          v15 = v12;
          v27 = v15;
          [v9 provideDiagnosticsAt:v14 options:v13 completion:v25];
          v16 = [v15 future];
          [v21 addObject:v16];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) _copySearchIndexerDatabaseIntoDirectoryURL:*(a1 + 48)];
  v17 = [MEMORY[0x1E699B868] promise];
  [*(a1 + 32) _copyIndexingDiagnosticsDatabaseIntoDirectoryURL:*(a1 + 48) completionPromise:v17];
  v18 = [v17 future];
  [v21 addObject:v18];

  v19 = [MEMORY[0x1E699B7C8] combine:v21];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __75__EDDiagnosticInfoGatherer_gatherDiagnosticsWithOptions_completionHandler___block_invoke_3;
  v22[3] = &unk_1E82518B0;
  v24 = *(a1 + 56);
  v23 = *(a1 + 40);
  [v19 always:v22];
  [v19 addFailureBlock:&__block_literal_global_25];

  v20 = *MEMORY[0x1E69E9840];
}

void __75__EDDiagnosticInfoGatherer_gatherDiagnosticsWithOptions_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v8 count])
  {
    [*(a1 + 32) _downloadMessagesWithObjectIDs:v8 directoryURL:*(a1 + 40) completionPromise:*(a1 + 48)];
    [*(a1 + 32) _createDiagnosticsJSONForMessagesWithObjectIDs:v8 directoryURL:*(a1 + 40)];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E695DFB0] null];
    [v6 finishWithResult:v7 error:v5];
  }
}

void __75__EDDiagnosticInfoGatherer_gatherDiagnosticsWithOptions_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[EDDiagnosticInfoGatherer log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__EDDiagnosticInfoGatherer_gatherDiagnosticsWithOptions_completionHandler___block_invoke_4_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)_copySearchIndexerDatabaseIntoDirectoryURL:(id)l
{
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager URLForDirectory:5 inDomain:1 appropriateForURL:0 create:0 error:0];
  v6 = [v5 URLByAppendingPathComponent:@"Mail"];
  v7 = [v6 URLByAppendingPathComponent:@"SearchIndexer"];
  v8 = [v7 URLByAppendingPathComponent:@"database"];

  [(EDDiagnosticInfoGatherer *)self _copyAndCompressDatabaseIntoDirectoryURL:lCopy originalURL:v8 targetName:@"SearchIndexer-database"];
}

- (void)_copyIndexingDiagnosticsDatabaseIntoDirectoryURL:(id)l completionPromise:(id)promise
{
  lCopy = l;
  promiseCopy = promise;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__EDDiagnosticInfoGatherer__copyIndexingDiagnosticsDatabaseIntoDirectoryURL_completionPromise___block_invoke;
  v10[3] = &unk_1E8252170;
  v10[4] = self;
  v11 = lCopy;
  v12 = promiseCopy;
  v8 = promiseCopy;
  v9 = lCopy;
  [(EDDiagnosticInfoGatherer *)self gatherIndexingDiagnosticsWithRedaction:1 completionHandler:v10];
}

void __95__EDDiagnosticInfoGatherer__copyIndexingDiagnosticsDatabaseIntoDirectoryURL_completionPromise___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[EDDiagnosticInfoGatherer log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __95__EDDiagnosticInfoGatherer__copyIndexingDiagnosticsDatabaseIntoDirectoryURL_completionPromise___block_invoke_cold_1(v7);
    }
  }

  else
  {
    [*(a1 + 32) _copyAndCompressDatabaseIntoDirectoryURL:*(a1 + 40) originalURL:v5 targetName:@"IndexingDiagnostics-database"];
  }

  v8 = *(a1 + 48);
  v9 = [MEMORY[0x1E695DFB0] null];
  [v8 finishWithResult:v9 error:v6];
}

- (void)_copyAndCompressDatabaseIntoDirectoryURL:(id)l originalURL:(id)rL targetName:(id)name
{
  v36 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  nameCopy = name;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];
  v13 = MEMORY[0x1E696AEC0];
  v14 = arc4random();
  v15 = [v13 stringWithFormat:@"%08x%08x", v14, arc4random()];
  v16 = [temporaryDirectory URLByAppendingPathComponent:v15];

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager2 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:0];

  v18 = [v16 URLByAppendingPathComponent:nameCopy isDirectory:0];
  if ([(EDDiagnosticInfoGatherer *)self _copyDatabaseFromURL:rLCopy intoDatabaseAtURL:v18])
  {
    if ([(EDDiagnosticInfoGatherer *)self _compressDatabaseAtURL:v18 intoDirectoryURL:lCopy])
    {
      v19 = +[EDDiagnosticInfoGatherer log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = nameCopy;
        _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "Added %@.", buf, 0xCu);
      }
    }

    else
    {
      v19 = +[EDDiagnosticInfoGatherer log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(EDDiagnosticInfoGatherer *)nameCopy _copyAndCompressDatabaseIntoDirectoryURL:v19 originalURL:v26 targetName:v27, v28, v29, v30, v31];
      }
    }
  }

  else
  {
    v19 = +[EDDiagnosticInfoGatherer log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(EDDiagnosticInfoGatherer *)nameCopy _copyAndCompressDatabaseIntoDirectoryURL:v19 originalURL:v20 targetName:v21, v22, v23, v24, v25];
    }
  }

  defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager3 removeItemAtURL:v16 error:0];

  v33 = *MEMORY[0x1E69E9840];
}

- (BOOL)_compressDatabaseAtURL:(id)l intoDirectoryURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  lastPathComponent = [lCopy lastPathComponent];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v8 = [lastPathComponent stringByAppendingString:@".aar"];
  v9 = [rLCopy URLByAppendingPathComponent:v8 isDirectory:0];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];
  v12 = MEMORY[0x1E696AEC0];
  v13 = arc4random();
  v14 = [v12 stringWithFormat:@"%08x%08x.aar", v13, arc4random()];
  v15 = [temporaryDirectory URLByAppendingPathComponent:v14];

  v16 = [(EDDiagnosticInfoGatherer *)self _compressDirectoryAtURL:uRLByDeletingLastPathComponent intoArchiveWithURL:v15];
  if (v16)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager2 moveItemAtURL:v15 toURL:v9 error:0];
  }

  defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager3 removeItemAtURL:v15 error:0];

  return v16;
}

- (BOOL)_compressDirectoryAtURL:(id)l intoArchiveWithURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v7 = AAFileStreamOpenWithPath([rLCopy fileSystemRepresentation], 1537, 0x1A4u);
  v8 = AACompressionOutputStreamOpen(v7, 0x801u, 0x100000uLL, 0, 0);
  v9 = AAEncodeArchiveOutputStreamOpen(v8, 0, 0, 0, 0);
  v10 = AAFieldKeySetCreateWithString("FLG,MTM,CTM,DAT,SH5");
  v11 = AAPathListCreateWithDirectoryContents([lCopy fileSystemRepresentation], 0, &__block_literal_global_46, entryMessageProc, 0, 0);
  v12 = AAArchiveStreamWritePathList(v9, v11, v10, [lCopy fileSystemRepresentation], 0, 0, 0, 0);
  AAArchiveStreamClose(v9);
  AAByteStreamClose(v8);
  AAByteStreamClose(v7);
  AAFieldKeySetDestroy(v10);
  AAPathListDestroy(v11);

  return v12 == 0;
}

uint64_t __71__EDDiagnosticInfoGatherer__compressDirectoryAtURL_intoArchiveWithURL___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2 == 11)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:a3 encoding:4];
    v4 = +[EDDiagnosticInfoGatherer log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_INFO, "Adding '%@'", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)_copyDatabaseFromURL:(id)l intoDatabaseAtURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v8 = rLCopy;
  v9 = 0;
  if (lCopy && rLCopy)
  {
    ppDb = 0;
    if (!sqlite3_open_v2([lCopy fileSystemRepresentation], &ppDb, 524289, 0))
    {
      v11 = 0;
      if (!sqlite3_open_v2([v8 fileSystemRepresentation], &v11, 524294, 0))
      {
        v9 = [(EDDiagnosticInfoGatherer *)self _copyFromDatabase:ppDb intoDatabase:v11];
        sqlite3_close_v2(v11);
        sqlite3_close_v2(ppDb);
        sqlite3_sleep(10);
        goto LABEL_7;
      }

      sqlite3_close(ppDb);
    }

    v9 = 0;
  }

LABEL_7:

  return v9;
}

- (BOOL)_copyFromDatabase:(sqlite3 *)database intoDatabase:(sqlite3 *)intoDatabase
{
  v4 = sqlite3_backup_init(intoDatabase, "main", database, "main");
  if (v4)
  {
    while (1)
    {
      do
      {
        v5 = sqlite3_backup_step(v4, 5);
      }

      while (!v5);
      if ((v5 - 5) > 1)
      {
        break;
      }

      sqlite3_sleep(100);
    }

    sqlite3_backup_finish(v4);
  }

  return v4 != 0;
}

- (void)_createDiagnosticsJSONForMessagesWithObjectIDs:(id)ds directoryURL:(id)l
{
  dsCopy = ds;
  lCopy = l;
  persistence = [(EDDiagnosticInfoGatherer *)self persistence];
  messagePersistence = [persistence messagePersistence];
  allObjects = [dsCopy allObjects];
  v10 = [messagePersistence diagnosticsForForMessageObjectIDs:allObjects];

  if (v10)
  {
    v11 = [lCopy ef_URLByAppendingTimestampedPathComponent:@"messages" withExtension:@"json"];
    [v10 writeToURL:v11 options:0 error:0];
  }
}

- (void)_downloadMessagesWithObjectIDs:(id)ds directoryURL:(id)l completionPromise:(id)promise
{
  dsCopy = ds;
  lCopy = l;
  promiseCopy = promise;
  gathererQueue = [(EDDiagnosticInfoGatherer *)self gathererQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__EDDiagnosticInfoGatherer__downloadMessagesWithObjectIDs_directoryURL_completionPromise___block_invoke;
  v15[3] = &unk_1E8250AB8;
  v12 = dsCopy;
  v16 = v12;
  selfCopy = self;
  v13 = lCopy;
  v18 = v13;
  v14 = promiseCopy;
  v19 = v14;
  [gathererQueue performBlock:v15];
}

void __90__EDDiagnosticInfoGatherer__downloadMessagesWithObjectIDs_directoryURL_completionPromise___block_invoke(id *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = +[EDDiagnosticInfoGatherer log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] count];
    *buf = 134217984;
    v31 = v3;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Download %lu message objects ids", buf, 0xCu);
  }

  v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1[4], "count")}];
  v18 = [MEMORY[0x1E699AC90] uniqueRequestID];
  v19 = [MEMORY[0x1E699AC68] optionsWithRequestedRepresentationType:*MEMORY[0x1E699A710] networkUsage:2];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a1[4];
  v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = *v26;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * v6);
        v8 = [MEMORY[0x1E699B868] promise];
        v9 = [v8 future];
        [v20 addObject:v9];

        v10 = [a1[5] persistence];
        v11 = [v10 messagePersistence];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __90__EDDiagnosticInfoGatherer__downloadMessagesWithObjectIDs_directoryURL_completionPromise___block_invoke_56;
        v21[3] = &unk_1E82521B8;
        v22 = a1[6];
        v23 = v7;
        v12 = v8;
        v24 = v12;
        v13 = [v11 requestContentForMessageObjectID:v7 requestID:v18 options:v19 delegate:0 completionHandler:v21];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  v14 = [MEMORY[0x1E699B7C8] combine:v20];
  v15 = [v14 map:&__block_literal_global_67];

  [a1[7] finishWithFuture:v15];
  v16 = *MEMORY[0x1E69E9840];
}

void __90__EDDiagnosticInfoGatherer__downloadMessagesWithObjectIDs_directoryURL_completionPromise___block_invoke_56(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 contentURL];
    v8 = MEMORY[0x1E696AEC0];
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) globalMessageID];
    v11 = [v7 URLByDeletingPathExtension];
    v12 = [v11 lastPathComponent];
    v13 = [v8 stringWithFormat:@"Message-%lld-%@", v10, v12];
    v14 = [v9 ef_URLByAppendingTimestampedPathComponent:v13 withExtension:@"eml"];

    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v26 = 0;
    LODWORD(v13) = [v15 copyItemAtURL:v7 toURL:v14 error:&v26];
    v16 = v26;

    if (v13)
    {
      v17 = +[EDDiagnosticInfoGatherer log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = v14;
        _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Dumped raw eml at %{public}@", buf, 0xCu);
      }

      v18 = v6;
    }

    else
    {
      v20 = +[EDDiagnosticInfoGatherer log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v24 = [v7 path];
        v25 = [v16 ef_publicDescription];
        *buf = 138543874;
        v28 = v24;
        v29 = 2114;
        v30 = v14;
        v31 = 2114;
        v32 = v25;
        _os_log_error_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_ERROR, "Error copying the url at %{public}@ to %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v18 = v16;
      v17 = v6;
    }
  }

  else
  {
    v7 = +[EDDiagnosticInfoGatherer log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v19 = [v6 ef_publicDescription];
      __90__EDDiagnosticInfoGatherer__downloadMessagesWithObjectIDs_directoryURL_completionPromise___block_invoke_56_cold_1(v19, buf, v7);
    }

    v18 = v6;
  }

  v21 = *(a1 + 48);
  v22 = [MEMORY[0x1E695DFB0] null];
  [v21 finishWithResult:v22 error:v18];

  v23 = *MEMORY[0x1E69E9840];
}

id __90__EDDiagnosticInfoGatherer__downloadMessagesWithObjectIDs_directoryURL_completionPromise___block_invoke_64()
{
  v0 = [MEMORY[0x1E695DFB0] null];

  return v0;
}

- (void)databaseStatisticsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  gathererQueue = [(EDDiagnosticInfoGatherer *)self gathererQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__EDDiagnosticInfoGatherer_databaseStatisticsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8250C30;
  v7[4] = self;
  v6 = handlerCopy;
  v8 = v6;
  [gathererQueue performBlock:v7];
}

void __68__EDDiagnosticInfoGatherer_databaseStatisticsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistence];
  v3 = [v2 persistenceStatistics];

  (*(*(a1 + 40) + 16))();
}

- (void)searchableIndexDatabaseStatisticsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  gathererQueue = [(EDDiagnosticInfoGatherer *)self gathererQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__EDDiagnosticInfoGatherer_searchableIndexDatabaseStatisticsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8250C30;
  v7[4] = self;
  v6 = handlerCopy;
  v8 = v6;
  [gathererQueue performBlock:v7];
}

void __83__EDDiagnosticInfoGatherer_searchableIndexDatabaseStatisticsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistence];
  v3 = [v2 searchableIndexStatistics];

  (*(*(a1 + 40) + 16))();
}

- (void)gatherIndexingDiagnosticsWithRedaction:(int64_t)redaction completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [EDIndexingDiagnosticsGatherer alloc];
  persistence = [(EDDiagnosticInfoGatherer *)self persistence];
  v8 = [(EDIndexingDiagnosticsGatherer *)v6 initWithPersistence:persistence];

  [(EDIndexingDiagnosticsGatherer *)v8 gatherWithRedaction:redaction completionHandler:handlerCopy];
}

- (void)gatherDiagnosticsWithOptions:(uint8_t *)buf completionHandler:(os_log_t)log .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Error creating directory at %{public}@, error: %{public}@", buf, 0x16u);
}

void __75__EDDiagnosticInfoGatherer_gatherDiagnosticsWithOptions_completionHandler___block_invoke_4_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1C61EF000, a2, a3, "Error gathering diagnostics: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_copyAndCompressDatabaseIntoDirectoryURL:(uint64_t)a3 originalURL:(uint64_t)a4 targetName:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1C61EF000, a2, a3, "Failed to copy %@.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_copyAndCompressDatabaseIntoDirectoryURL:(uint64_t)a3 originalURL:(uint64_t)a4 targetName:(uint64_t)a5 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1C61EF000, a2, a3, "Failed to compress %@.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __90__EDDiagnosticInfoGatherer__downloadMessagesWithObjectIDs_directoryURL_completionPromise___block_invoke_56_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Error requesting representation: %{public}@", buf, 0xCu);
}

@end