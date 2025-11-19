@interface ENDownloadManager
- (BOOL)_copyDownloadedFileAtPath:(id)a3 toPath:(id)a4 removeExisting:(BOOL)a5 error:(id *)a6;
- (BOOL)_enumerateDownloadsWithError:(id *)a3 handler:(id)a4;
- (BOOL)_readStateIfNecessaryWithError:(id *)a3;
- (BOOL)_saveState;
- (BOOL)_shouldFetchFromEndpointWithState:(id)a3 time:(double)a4;
- (BOOL)enumerateDownloadsWithError:(id *)a3 handler:(id)a4;
- (BOOL)resetStateFile;
- (ENDownloadManager)initWithDirectoryURL:(id)a3 queue:(id)a4;
- (ENDownloadManager)initWithQueue:(id)a3;
- (double)_aggregateDownloadIntervalFromEndpoints:(id)a3;
- (id)_baseDirectoryPathForEndpointWithState:(id)a3;
- (id)_countOfAvailableDownloadsWithError:(id *)a3;
- (id)_downloadsDirectoryPathForEndpointState:(id)a3;
- (id)_indexFilePathForEndpointState:(id)a3;
- (id)_nextFilePathToDownloadWithEndpointState:(id)a3;
- (id)countOfAvailableDownloadsWithError:(id *)a3;
- (id)createScheduler;
- (id)description;
- (uint64_t)resetStateFile;
- (unint64_t)enabledEndpointCount;
- (void)_activate;
- (void)_backgroundActivityFiredWithCompletion:(id)a3;
- (void)_downloadIndexWithTask:(id)a3;
- (void)_downloadNextFileFromServerWithTask:(id)a3;
- (void)_handleFileDownloadFinishedForTask:(id)a3 serverFilePath:(id)a4 downloadedFilePath:(id)a5;
- (void)_handleIndexFileDownloadFinishedForTask:(id)a3 filePath:(id)a4;
- (void)_invalidate;
- (void)_purgeAllDownloads;
- (void)_purgeExpiredDownloadsWithDate:(id)a3;
- (void)_purgeKeepingDownloadsForIdentifiers:(id)a3 expiryDate:(id)a4;
- (void)_reportErrorMetricForHTTPStatus:(int64_t)a3 forIndexFile:(BOOL)a4;
- (void)_saveState;
- (void)_setDownloadEndpoints:(id)a3;
- (void)_update;
- (void)_updateFetchSchedule;
- (void)activate;
- (void)invalidate;
- (void)performDownloadsAtDate:(id)a3 forced:(BOOL)a4 completion:(id)a5;
- (void)performDownloadsForced:(BOOL)a3 completion:(id)a4;
- (void)purgeAllDownloads;
- (void)purgeExpiredDownloadsWithDate:(id)a3;
- (void)resetStateFile;
- (void)setDownloadEndpoints:(id)a3;
- (void)update;
@end

@implementation ENDownloadManager

- (ENDownloadManager)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = ENDataVaultPath();
  v6 = [v5 stringByAppendingPathComponent:@"Downloads"];

  v7 = [MEMORY[0x277CBEBC8] fileURLWithPath:v6];
  v8 = [(ENDownloadManager *)self initWithDirectoryURL:v7 queue:v4];

  return v8;
}

- (ENDownloadManager)initWithDirectoryURL:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = ENDownloadManager;
  v8 = [(ENDownloadManager *)&v16 init];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = [v6 copy];
  directoryURL = v8->_directoryURL;
  v8->_directoryURL = v9;

  objc_storeStrong(&v8->_queue, a4);
  v11 = [(NSURL *)v8->_directoryURL URLByAppendingPathComponent:@"state.dat"];
  v12 = [v11 path];

  if (v12)
  {
    v13 = [[ENSecureArchiveFileWrapper alloc] initWithPath:v12];
    stateFileWrapper = v8->_stateFileWrapper;
    v8->_stateFileWrapper = v13;

LABEL_4:
    v12 = v8;
  }

  return v12;
}

- (void)activate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ENDownloadManager_activate__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_activate
{
  if (!self->_URLSession)
  {
    v3 = [MEMORY[0x277CBABC0] defaultSessionConfiguration];
    v4 = ENBundleIdentifierForURLSessions();
    [v3 set_sourceApplicationBundleIdentifier:v4];

    v5 = [MEMORY[0x277CBABB0] sessionWithConfiguration:v3];
    URLSession = self->_URLSession;
    self->_URLSession = v5;
  }

  [(ENDownloadManager *)self _update];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ENDownloadManager_invalidate__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_invalidate
{
  self->_invalidated = 1;
  [(NSBackgroundActivityScheduler *)self->_fetchScheduler invalidate];
  fetchScheduler = self->_fetchScheduler;
  self->_fetchScheduler = 0;

  [(ENSecureArchiveFileWrapper *)self->_stateFileWrapper close];
  [(NSURLSession *)self->_URLSession invalidateAndCancel];
  URLSession = self->_URLSession;
  self->_URLSession = 0;
}

- (void)_reportErrorMetricForHTTPStatus:(int64_t)a3 forIndexFile:(BOOL)a4
{
  if (a4)
  {
    v4 = 8000;
  }

  else
  {
    v4 = 9000;
  }

  if (a3 <= 0x3E7)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  [(ENDownloadManager *)self _reportErrorMetric:(v4 + v5)];
}

- (id)countOfAvailableDownloadsWithError:(id *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ENDownloadManager_countOfAvailableDownloadsWithError___block_invoke;
  block[3] = &unk_278FD1290;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __56__ENDownloadManager_countOfAvailableDownloadsWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _countOfAvailableDownloadsWithError:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_countOfAvailableDownloadsWithError:(id *)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__ENDownloadManager__countOfAvailableDownloadsWithError___block_invoke;
  v5[3] = &unk_278FD2428;
  v5[4] = &v6;
  if ([(ENDownloadManager *)self _enumerateDownloadsWithError:a3 handler:v5])
  {
    v3 = [MEMORY[0x277CCABA8] numberWithInteger:v7[3]];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)enumerateDownloadsWithError:(id *)a3 handler:(id)a4
{
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__ENDownloadManager_enumerateDownloadsWithError_handler___block_invoke;
  v10[3] = &unk_278FD2450;
  v12 = &v14;
  v13 = a3;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  dispatch_barrier_sync(queue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

uint64_t __57__ENDownloadManager_enumerateDownloadsWithError_handler___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _enumerateDownloadsWithError:*(a1 + 56) handler:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_enumerateDownloadsWithError:(id *)a3 handler:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CCAA08]);
  v46 = self;
  [(ENDownloadManagerState *)self->_state endpointStates];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v67 = 0u;
  v8 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (!v8)
  {
    v10 = 0;
    v38 = 1;
    goto LABEL_52;
  }

  v9 = v8;
  v42 = a3;
  v10 = 0;
  v11 = *v65;
  v43 = *v65;
  v44 = *MEMORY[0x277CBE790];
  v52 = v6;
LABEL_3:
  v12 = 0;
  v45 = v9;
  while (1)
  {
    if (*v65 != v11)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v64 + 1) + 8 * v12);
    v53 = [v13 endpoint];
    if (![v53 enabled])
    {
      goto LABEL_41;
    }

    v49 = v12;
    v14 = MEMORY[0x277CBEBC8];
    v15 = [(ENDownloadManager *)v46 _downloadsDirectoryPathForEndpointState:v13];
    v16 = [v14 fileURLWithPath:v15 isDirectory:1];

    if (v16)
    {
      break;
    }

LABEL_40:
    v12 = v49;
LABEL_41:

    if (++v12 == v9)
    {
      v37 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
      v9 = v37;
      if (!v37)
      {
        v38 = 1;
        goto LABEL_50;
      }

      goto LABEL_3;
    }
  }

  v50 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v70 = v44;
  v17 = [MEMORY[0x277CBEA68] arrayWithObjects:&v70 count:1];
  v48 = v16;
  v18 = [v7 enumeratorAtURL:v16 includingPropertiesForKeys:v17 options:1 errorHandler:0];

  v63 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v51 = v18;
  v19 = [v51 countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v61;
    while (2)
    {
      v22 = 0;
      v23 = v10;
      do
      {
        if (*v61 != v21)
        {
          objc_enumerationMutation(v51);
        }

        v24 = *(*(&v60 + 1) + 8 * v22);
        v25 = objc_autoreleasePoolPush();
        v59 = v23;
        v26 = v52[2](v52, v24, v53, &v59);
        v10 = v59;

        if (v26 == 1)
        {
          [v50 addObject:v24];
        }

        else if (!v26)
        {
          if (v10 && gLogCategory__ENDownloadManager <= 90 && (gLogCategory__ENDownloadManager != -1 || _LogCategory_Initialize()))
          {
            [ENDownloadManager _enumerateDownloadsWithError:handler:];
          }

          objc_autoreleasePoolPop(v25);
          v27 = 1;
          goto LABEL_25;
        }

        objc_autoreleasePoolPop(v25);
        ++v22;
        v23 = v10;
      }

      while (v20 != v22);
      v20 = [v51 countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v27 = 0;
LABEL_25:

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v28 = v50;
  v29 = [v28 countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v56;
    do
    {
      v32 = 0;
      do
      {
        v33 = v10;
        if (*v56 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v34 = *(*(&v55 + 1) + 8 * v32);
        v54 = v10;
        v35 = [v7 removeItemAtURL:v34 error:&v54];
        v10 = v54;

        if ((v35 & 1) == 0 && gLogCategory__ENDownloadManager <= 90 && (gLogCategory__ENDownloadManager != -1 || _LogCategory_Initialize()))
        {
          [ENDownloadManager _enumerateDownloadsWithError:handler:];
        }

        ++v32;
      }

      while (v30 != v32);
      v36 = [v28 countByEnumeratingWithState:&v55 objects:v68 count:16];
      v30 = v36;
    }

    while (v36);
  }

  if (!v27)
  {

    v11 = v43;
    v9 = v45;
    goto LABEL_40;
  }

  if (v42 && v10)
  {
    v39 = v10;
    *v42 = v10;
  }

  v38 = v10 == 0;

LABEL_50:
  v6 = v52;
LABEL_52:

  v40 = *MEMORY[0x277D85DE8];
  return v38;
}

- (void)update
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ENDownloadManager_update__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_update
{
  v2 = [a1 shortIdentifier];
  v3 = [a1 endpoint];
  v4 = [v3 serverBaseURL];
  v5 = [a1 endpoint];
  [v5 enabled];
  v6 = [a1 endpoint];
  [v6 downloadInterval];
  v7 = CUPrintDurationDouble();
  v8 = [a1 lastFetchAttemptDate];
  [v8 timeIntervalSinceNow];
  v9 = CUPrintDurationDouble();
  LogPrintF_safe();
}

- (void)setDownloadEndpoints:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ENDownloadManager_setDownloadEndpoints___block_invoke;
  v7[3] = &unk_278FD1120;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_setDownloadEndpoints:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (gLogCategory_ENDownloadManager <= 10)
  {
    if (gLogCategory_ENDownloadManager != -1 || (v5 = _LogCategory_Initialize(), v4 = v8, v5))
    {
      [ENDownloadManager _setDownloadEndpoints:v4];
      v4 = v8;
    }
  }

  v6 = [v4 copy];
  pendingEndpoints = self->_pendingEndpoints;
  self->_pendingEndpoints = v6;

  [(ENDownloadManager *)self _update];
}

- (unint64_t)enabledEndpointCount
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(ENDownloadManagerState *)self->_state endpointStates];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) endpoint];
        v5 += [v8 enabled];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)performDownloadsForced:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ENDownloadManager_performDownloadsForced_completion___block_invoke;
  block[3] = &unk_278FD24A0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(queue, block);
}

void __55__ENDownloadManager_performDownloadsForced_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAA0] date];
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__ENDownloadManager_performDownloadsForced_completion___block_invoke_2;
  v5[3] = &unk_278FD2478;
  v6 = *(a1 + 40);
  [v2 _performDownloadsWithScheduler:0 atDate:v3 forced:v4 completion:v5];
}

- (void)performDownloadsAtDate:(id)a3 forced:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__ENDownloadManager_performDownloadsAtDate_forced_completion___block_invoke;
  v13[3] = &unk_278FD24C8;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_sync(queue, v13);
}

void __62__ENDownloadManager_performDownloadsAtDate_forced_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__ENDownloadManager_performDownloadsAtDate_forced_completion___block_invoke_2;
  v4[3] = &unk_278FD2478;
  v5 = *(a1 + 48);
  [v1 _performDownloadsWithScheduler:0 atDate:v2 forced:v3 completion:v4];
}

uint64_t __77__ENDownloadManager__performDownloadsWithScheduler_atDate_forced_completion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v3)
  {

    v11 = *(a1 + 48);
LABEL_13:
    v12 = 1;
    goto LABEL_14;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = *v16;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v15 + 1) + 8 * i);
      v5 += [v9 downloadCount];
      v6 |= [v9 didDefer];
    }

    v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v4);

  if (v5 >= 1)
  {
    v10 = [MEMORY[0x277CCAB90] defaultCenter];
    [v10 postNotificationName:@"ENDownloadManagerDownloadsAvailable" object:*(a1 + 40)];
  }

  v11 = *(a1 + 48);
  if ((v6 & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = 2;
LABEL_14:
  result = (*(v11 + 16))(v11, v12);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_shouldFetchFromEndpointWithState:(id)a3 time:(double)a4
{
  v5 = a3;
  v6 = [v5 endpoint];
  if ([v6 enabled])
  {
    v7 = [v5 lastFetchAttemptDate];
    v8 = v7;
    if (v7)
    {
      [v7 timeIntervalSinceReferenceDate];
      v10 = v9;
      [v6 downloadInterval];
      v12 = v10 + v11 * 0.75 < a4;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_downloadIndexWithTask:(id)a3
{
  v4 = a3;
  v5 = [v4 endpointState];
  v6 = [v5 endpoint];

  v7 = [v6 serverIndexURL];
  v8 = [objc_alloc(MEMORY[0x277CBAB58]) initWithURL:v7];
  [v8 addValue:@"text/plain" forHTTPHeaderField:@"Accept"];
  Current = CFAbsoluteTimeGetCurrent();
  URLSession = self->_URLSession;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __44__ENDownloadManager__downloadIndexWithTask___block_invoke;
  v17 = &unk_278FD2518;
  v18 = self;
  v19 = v6;
  v20 = v4;
  v21 = Current;
  v11 = v4;
  v12 = v6;
  v13 = [(NSURLSession *)URLSession downloadTaskWithRequest:v8 completionHandler:&v14];
  [v13 resume];
}

void __44__ENDownloadManager__downloadIndexWithTask___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ENDownloadManager__downloadIndexWithTask___block_invoke_2;
  block[3] = &unk_278FD24F0;
  v17 = v8;
  v18 = *(a1 + 40);
  v19 = v9;
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v20 = v11;
  v21 = v12;
  v23 = *(a1 + 56);
  v22 = v7;
  v13 = v7;
  v14 = v9;
  v15 = v8;
  dispatch_sync(v10, block);
}

void __44__ENDownloadManager__downloadIndexWithTask___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v11 = v2;
    v3 = [v11 statusCode];
    v4 = [v11 MIMEType];
    if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      __44__ENDownloadManager__downloadIndexWithTask___block_invoke_2_cold_1(a1);
    }

    if (v3 == 200)
    {
      v5 = [v4 lowercaseString];
      v6 = [v5 isEqualToString:@"text/plain"];

      if (v6)
      {
        v8 = *(a1 + 56);
        v7 = *(a1 + 64);
        v9 = [*(a1 + 72) path];
        [v7 _handleIndexFileDownloadFinishedForTask:v8 filePath:v9];
LABEL_17:

        return;
      }

      v9 = ENErrorF();
      [*(a1 + 64) _reportErrorMetric:{2001, v4}];
    }

    else
    {
      v9 = ENErrorF();
      [*(a1 + 64) _reportErrorMetricForHTTPStatus:v3 forIndexFile:{1, v3}];
    }

    [*(a1 + 56) finishDeferred:0 error:v9];
    goto LABEL_17;
  }

  if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
  {
    __44__ENDownloadManager__downloadIndexWithTask___block_invoke_2_cold_2(a1);
  }

  [*(a1 + 56) finishDeferred:0 error:*(a1 + 48)];
  v10 = *(a1 + 64);

  [v10 _reportErrorMetric:2000];
}

- (id)_baseDirectoryPathForEndpointWithState:(id)a3
{
  directoryURL = self->_directoryURL;
  v6 = [a3 identifier];
  v7 = [v6 UUIDString];
  v8 = [(NSURL *)directoryURL URLByAppendingPathComponent:v7];
  v9 = [v8 path];

  if (!v9)
  {
    [(ENDownloadManager *)a2 _baseDirectoryPathForEndpointWithState:?];
  }

  return v9;
}

- (id)_downloadsDirectoryPathForEndpointState:(id)a3
{
  v3 = [(ENDownloadManager *)self _baseDirectoryPathForEndpointWithState:a3];
  v4 = [v3 stringByAppendingPathComponent:@"Downloads"];

  return v4;
}

- (id)_indexFilePathForEndpointState:(id)a3
{
  v3 = [(ENDownloadManager *)self _baseDirectoryPathForEndpointWithState:a3];
  v4 = [v3 stringByAppendingPathComponent:@"index.txt"];

  return v4;
}

- (BOOL)_copyDownloadedFileAtPath:(id)a3 toPath:(id)a4 removeExisting:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a4;
  v11 = v9;
  if (v11)
  {
    v12 = [v10 stringByDeletingLastPathComponent];
    v13 = objc_alloc_init(MEMORY[0x277CCAA08]);
    if ([v13 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:a6])
    {
      if (v7 && [v13 fileExistsAtPath:v10] && (objc_msgSend(v13, "removeItemAtPath:error:", v10, a6) & 1) == 0)
      {
        if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
        {
          [ENDownloadManager _copyDownloadedFileAtPath:toPath:removeExisting:error:];
        }
      }

      else
      {
        if ([v13 copyItemAtPath:v11 toPath:v10 error:a6])
        {
          v14 = 1;
LABEL_23:

          goto LABEL_24;
        }

        if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
        {
          [ENDownloadManager _copyDownloadedFileAtPath:toPath:removeExisting:error:];
        }
      }
    }

    else if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      [ENDownloadManager _copyDownloadedFileAtPath:toPath:removeExisting:error:];
    }

    v14 = 0;
    goto LABEL_23;
  }

  if (a6)
  {
    ENErrorF();
    *a6 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_24:

  return v14;
}

- (void)_handleIndexFileDownloadFinishedForTask:(id)a3 filePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_invalidated)
  {
    v8 = ENErrorF();
    [v6 finishDeferred:0 error:v8];
  }

  else
  {
    v8 = [v6 endpointState];
    if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      [ENDownloadManager _handleIndexFileDownloadFinishedForTask:v6 filePath:?];
    }

    v9 = [(ENDownloadManager *)self _indexFilePathForEndpointState:v8];
    v12 = 0;
    v10 = [(ENDownloadManager *)self _copyDownloadedFileAtPath:v7 toPath:v9 removeExisting:1 error:&v12];
    v11 = v12;
    if (v10)
    {
      [(ENDownloadManager *)self _downloadNextFileFromServerWithTask:v6];
    }

    else
    {
      if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
      {
        [ENDownloadManager _handleIndexFileDownloadFinishedForTask:v6 filePath:?];
      }

      [v6 finishDeferred:0 error:v11];
    }
  }
}

- (void)_downloadNextFileFromServerWithTask:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_invalidated)
  {
    v6 = ENErrorF();
    [v5 finishDeferred:0 error:v6];
LABEL_19:

    goto LABEL_20;
  }

  if (![v4 shouldDefer])
  {
    v6 = [v5 endpointState];
    v7 = [v6 endpoint];
    v8 = [(ENDownloadManager *)self _nextFilePathToDownloadWithEndpointState:v6];
    if (v8)
    {
      v9 = [v7 serverURLForFileWithRelativePath:v8];
      if (v9)
      {
        v10 = [objc_alloc(MEMORY[0x277CBAB58]) initWithURL:v9];
        [v10 setValue:@"application/zip" forHTTPHeaderField:@"Accept"];
        v11 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v12 = [v11 isSensitiveLoggingAllowed];

        if (v12 && gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
        {
          [(ENDownloadManager *)v9 _downloadNextFileFromServerWithTask:v5];
        }

        Current = CFAbsoluteTimeGetCurrent();
        URLSession = self->_URLSession;
        v16 = MEMORY[0x277D85DD0];
        v17 = 3221225472;
        v18 = __57__ENDownloadManager__downloadNextFileFromServerWithTask___block_invoke;
        v19 = &unk_278FD2568;
        v20 = self;
        v21 = v5;
        v22 = v9;
        v25 = Current;
        v23 = v8;
        v24 = v6;
        v15 = [(NSURLSession *)URLSession downloadTaskWithRequest:v10 completionHandler:&v16];
        [v15 resume];
      }

      else
      {
        v10 = ENErrorF();
        [v5 finishDeferred:0 error:v10];
      }
    }

    else
    {
      if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
      {
        [ENDownloadManager _downloadNextFileFromServerWithTask:v6];
      }

      [v5 finishDeferred:0 error:0];
    }

    goto LABEL_19;
  }

  [v5 finishDeferred:1 error:0];
LABEL_20:
}

void __57__ENDownloadManager__downloadNextFileFromServerWithTask___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ENDownloadManager__downloadNextFileFromServerWithTask___block_invoke_2;
  block[3] = &unk_278FD2540;
  v15 = v8;
  v16 = *(a1 + 40);
  v17 = v9;
  v18 = *(a1 + 32);
  v19 = *(a1 + 48);
  v23 = *(a1 + 72);
  v20 = *(a1 + 56);
  v21 = v7;
  v22 = *(a1 + 64);
  v11 = v7;
  v12 = v9;
  v13 = v8;
  dispatch_sync(v10, block);
}

void __57__ENDownloadManager__downloadNextFileFromServerWithTask___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v13 = v2;
    v3 = [v13 statusCode];
    v4 = [v13 MIMEType];
    [v13 expectedContentLength];
    if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      __57__ENDownloadManager__downloadNextFileFromServerWithTask___block_invoke_2_cold_1(a1);
    }

    if (v3 == 403)
    {
      if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
      {
        __57__ENDownloadManager__downloadNextFileFromServerWithTask___block_invoke_2_cold_2(a1);
      }

      [*(a1 + 88) setLastDownloadedFilePath:*(a1 + 72)];
      [*(a1 + 56) _saveState];
      [*(a1 + 56) _downloadNextFileFromServerWithTask:*(a1 + 40)];
      goto LABEL_19;
    }

    if (v3 == 200)
    {
      v5 = [v4 lowercaseString];
      v6 = [v5 isEqualToString:@"application/zip"];

      if (v6)
      {
        v7 = *(a1 + 56);
        v8 = *(a1 + 40);
        v9 = *(a1 + 72);
        v10 = [*(a1 + 80) path];
        [v7 _handleFileDownloadFinishedForTask:v8 serverFilePath:v9 downloadedFilePath:v10];

LABEL_19:

        return;
      }

      v12 = ENErrorF();
      [*(a1 + 56) _reportErrorMetric:{2003, v4}];
    }

    else
    {
      v12 = ENErrorF();
      [*(a1 + 56) _reportErrorMetricForHTTPStatus:v3 forIndexFile:{0, v3}];
    }

    [*(a1 + 40) finishDeferred:0 error:v12];

    goto LABEL_19;
  }

  [*(a1 + 40) finishDeferred:0 error:*(a1 + 48)];
  v11 = *(a1 + 56);

  [v11 _reportErrorMetric:2002];
}

- (void)_handleFileDownloadFinishedForTask:(id)a3 serverFilePath:(id)a4 downloadedFilePath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 endpointState];
  if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
  {
    [ENDownloadManager _handleFileDownloadFinishedForTask:v8 serverFilePath:? downloadedFilePath:?];
  }

  v12 = [v9 pathComponents];
  v13 = [v12 componentsJoinedByString:@"_"];

  v14 = [(ENDownloadManager *)self _downloadsDirectoryPathForEndpointState:v11];
  v15 = [v14 stringByAppendingPathComponent:v13];

  v21 = 0;
  LOBYTE(v13) = [(ENDownloadManager *)self _copyDownloadedFileAtPath:v10 toPath:v15 removeExisting:0 error:&v21];

  v16 = v21;
  if (v13)
  {
    v17 = [v8 date];
    [v11 setLastSuccessfulFetchDate:v17];

    [v11 setLastDownloadedFilePath:v9];
    v20 = v16;
    v18 = [(ENDownloadManager *)self _saveStateWithError:&v20];
    v19 = v20;

    if (!v18 && gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      [ENDownloadManager _handleFileDownloadFinishedForTask:v8 serverFilePath:? downloadedFilePath:?];
    }

    [v8 incrementDownloadCount];
    [(ENDownloadManager *)self _downloadNextFileFromServerWithTask:v8];
  }

  else
  {
    if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      [ENDownloadManager _handleFileDownloadFinishedForTask:v8 serverFilePath:? downloadedFilePath:?];
    }

    [v8 finishDeferred:0 error:v16];
    v19 = v16;
  }
}

- (id)_nextFilePathToDownloadWithEndpointState:(id)a3
{
  v4 = a3;
  v5 = [(ENDownloadManager *)self _indexFilePathForEndpointState:v4];
  v6 = open([v5 fileSystemRepresentation], 0);
  if (v6 < 0)
  {
    if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      [ENDownloadManager _nextFilePathToDownloadWithEndpointState:v4];
    }

    v15 = 0;
  }

  else
  {
    v7 = v6;
    v8 = [v4 lastDownloadedFilePath];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__5;
    v33 = __Block_byref_object_dispose__5;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__5;
    v27 = __Block_byref_object_dispose__5;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v9 = [MEMORY[0x277CCA908] whitespaceAndNewlineCharacterSet];
    v10 = v8;
    v11 = v4;
    v12 = ENReadLinesFromFile();
    v13 = 0;
    close(v7);
    if (v12)
    {
      if (*(v20 + 24) == 1)
      {
        v14 = v24;
      }

      else
      {
        v14 = v30;
      }

      v15 = v14[5];
    }

    else
    {
      if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
      {
        v16 = [v11 shortIdentifier];
        v18 = CUPrintNSError();
        LogPrintF_safe();
      }

      v15 = 0;
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);

    _Block_object_dispose(&v29, 8);
  }

  return v15;
}

void __62__ENDownloadManager__nextFilePathToDownloadWithEndpointState___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  obj = [a2 stringByTrimmingCharactersInSet:*(a1 + 32)];
  if ([obj length])
  {
    v5 = *(a1 + 40);
    if (v5 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && [v5 isEqualToString:obj])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      goto LABEL_16;
    }

    v6 = [*(a1 + 48) endpoint];
    v7 = [v6 serverURLForFileWithRelativePath:obj];

    if (v7)
    {
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), obj);
LABEL_9:
        *a3 = 1;
        goto LABEL_16;
      }

      v8 = *(*(a1 + 72) + 8);
      v10 = *(v8 + 40);
      v9 = (v8 + 40);
      if (!v10)
      {
        objc_storeStrong(v9, obj);
        if (!*(a1 + 40))
        {
          goto LABEL_9;
        }
      }
    }

    else if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      __62__ENDownloadManager__nextFilePathToDownloadWithEndpointState___block_invoke_cold_1();
    }
  }

LABEL_16:
}

- (void)purgeAllDownloads
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ENDownloadManager_purgeAllDownloads__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_purgeAllDownloads
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe();
}

- (void)purgeExpiredDownloadsWithDate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__ENDownloadManager_purgeExpiredDownloadsWithDate___block_invoke;
  v7[3] = &unk_278FD1120;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_purgeExpiredDownloadsWithDate:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_state)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB50]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [(ENDownloadManagerState *)self->_state endpointStates];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v17 = v4;
      v9 = 0;
      v10 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 endpoint];
          v14 = [v13 enabled];

          if (v14)
          {
            v15 = [v12 identifier];
            [v5 addObject:v15];
          }

          else
          {
            [v12 setLastDownloadedFilePath:0];
            v9 = 1;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);

      v4 = v17;
      [(ENDownloadManager *)self _purgeKeepingDownloadsForIdentifiers:v5 expiryDate:v17];
      if (v9)
      {
        [(ENDownloadManager *)self _saveState];
      }
    }

    else
    {

      [(ENDownloadManager *)self _purgeKeepingDownloadsForIdentifiers:v5 expiryDate:v4];
    }
  }

  else if (gLogCategory__ENDownloadManager <= 90 && (gLogCategory__ENDownloadManager != -1 || _LogCategory_Initialize()))
  {
    [ENDownloadManager _purgeExpiredDownloadsWithDate:];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_purgeKeepingDownloadsForIdentifiers:(id)a3 expiryDate:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v29 = a4;
  v31 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v6 = objc_alloc_init(MEMORY[0x277CCAA08]);
  v30 = self;
  [v6 enumeratorAtURL:self->_directoryURL includingPropertiesForKeys:0 options:1 errorHandler:0];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v7 = v52 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v8)
  {
    v9 = *v52;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v51 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        LOBYTE(v42) = 0;
        v13 = [v11 path];
        if ([v6 fileExistsAtPath:v13 isDirectory:&v42] && v42 == 1)
        {
          v14 = [v11 path];
          v15 = [v14 lastPathComponent];

          v16 = [objc_alloc(MEMORY[0x277CCAD70]) initWithUUIDString:v15];
          if (v16 && ([v32 containsObject:v16] & 1) == 0)
          {
            [v31 addObject:v11];
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v7 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v8);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v17 = v31;
  v18 = [v17 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v18)
  {
    v19 = *v48;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v48 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v47 + 1) + 8 * j);
        if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
        {
          [ENDownloadManager _purgeKeepingDownloadsForIdentifiers:v21 expiryDate:?];
        }

        v46 = 0;
        v22 = [v6 removeItemAtURL:v21 error:&v46];
        v23 = v46;
        if ((v22 & 1) == 0 && gLogCategory__ENDownloadManager <= 90 && (gLogCategory__ENDownloadManager != -1 || _LogCategory_Initialize()))
        {
          [ENDownloadManager _purgeKeepingDownloadsForIdentifiers:expiryDate:];
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v18);
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v37 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __69__ENDownloadManager__purgeKeepingDownloadsForIdentifiers_expiryDate___block_invoke;
  v33[3] = &unk_278FD25B8;
  v35 = &v42;
  v24 = v29;
  v34 = v24;
  v36 = &v38;
  [(ENDownloadManager *)v30 _enumerateDownloadsWithError:&v37 handler:v33];
  v25 = v37;
  if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
  {
    v28 = v43[3];
    v27 = v39[3];
    LogPrintF_safe();
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __69__ENDownloadManager__purgeKeepingDownloadsForIdentifiers_expiryDate___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  ++*(*(a1[5] + 8) + 24);
  v12 = 0;
  v4 = *MEMORY[0x277CBE790];
  v11 = 0;
  v5 = [v3 getResourceValue:&v12 forKey:v4 error:&v11];
  v6 = v12;
  v7 = v11;
  if ((v5 & 1) == 0)
  {
    if (gLogCategory__ENDownloadManager <= 90 && (gLogCategory__ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      __69__ENDownloadManager__purgeKeepingDownloadsForIdentifiers_expiryDate___block_invoke_cold_1();
    }

    goto LABEL_12;
  }

  if (!v6)
  {
    if (gLogCategory__ENDownloadManager <= 90 && (gLogCategory__ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      __69__ENDownloadManager__purgeKeepingDownloadsForIdentifiers_expiryDate___block_invoke_cold_2();
    }

    goto LABEL_12;
  }

  v8 = [v6 earlierDate:a1[4]];

  if (v8 != v6)
  {
LABEL_12:
    v9 = 2;
    goto LABEL_13;
  }

  ++*(*(a1[6] + 8) + 24);
  v9 = 1;
LABEL_13:

  return v9;
}

- (BOOL)resetStateFile
{
  v3 = objc_alloc_init(MEMORY[0x277CCAA08]);
  directoryURL = self->_directoryURL;
  if (directoryURL)
  {
    v5 = [(NSURL *)directoryURL URLByAppendingPathComponent:@"state.dat"];
    v6 = [v5 path];

    if (v6)
    {
      v13 = 0;
      v7 = [v3 removeItemAtPath:v6 error:&v13];
      v8 = v13;
      v9 = v8;
      if (v7)
      {
        state = self->_state;
        self->_state = 0;

        [(ENSecureArchiveFileWrapper *)self->_stateFileWrapper close];
        if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
        {
          [ENDownloadManager resetStateFile];
        }

        v11 = 1;
      }

      else
      {
        [(ENDownloadManager *)v8 resetStateFile];
        v9 = v14;
        v11 = v15;
      }
    }

    else
    {
      if (gLogCategory__ENDownloadManager <= 90 && (gLogCategory__ENDownloadManager != -1 || _LogCategory_Initialize()))
      {
        [ENDownloadManager resetStateFile];
      }

      v9 = 0;
      v11 = 0;
    }
  }

  else
  {
    [(ENDownloadManager *)&v14 resetStateFile];
    v11 = v14;
  }

  return v11;
}

- (void)_updateFetchSchedule
{
  v2 = [*a1 identifier];
  CUPrintDurationDouble();
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_2() count];
  LogPrintF_safe();
}

void __41__ENDownloadManager__updateFetchSchedule__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__ENDownloadManager__updateFetchSchedule__block_invoke_2;
    v7[3] = &unk_278FD1490;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v7);
  }

  else
  {
    (*(v3 + 2))(v3, 1);
  }
}

- (void)_backgroundActivityFiredWithCompletion:(id)a3
{
  v6 = a3;
  if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
  {
    [ENDownloadManager _backgroundActivityFiredWithCompletion:];
  }

  v4 = self->_fetchScheduler;
  if (v4)
  {
    [(ENDownloadManager *)self _update];
    v5 = [MEMORY[0x277CBEAA0] date];
    [(ENDownloadManager *)self _performDownloadsWithScheduler:v4 atDate:v5 forced:0 completion:v6];
  }

  else
  {
    if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      [ENDownloadManager _backgroundActivityFiredWithCompletion:];
    }

    v6[2](v6, 1);
  }
}

- (double)_aggregateDownloadIntervalFromEndpoints:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v5 = 86400.0;
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    v8 = 1.79769313e308;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 enabled])
        {
          [v10 downloadInterval];
          if (v11 < v8)
          {
            v8 = v11;
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
    if (v8 <= 28800.0)
    {
      v5 = 28800.0;
      if (v8 <= 14400.0)
      {
        v5 = dbl_24A28BF80[v8 > 7200.0];
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_readStateIfNecessaryWithError:(id *)a3
{
  if (self->_state)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v7 = [(NSURL *)self->_directoryURL path];
    if (!v7)
    {
      [(ENDownloadManager *)a2 _readStateIfNecessaryWithError:?];
    }

    v8 = objc_alloc_init(MEMORY[0x277CCAA08]);
    if ([v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:a3])
    {
      if (![(NSURL *)self->_directoryURL setResourceValue:MEMORY[0x277CBEC20] forKey:*MEMORY[0x277CBE870] error:a3]&& gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
      {
        [ENDownloadManager _readStateIfNecessaryWithError:];
      }

      stateFileWrapper = self->_stateFileWrapper;
      v15 = 0;
      v3 = [(ENSecureArchiveFileWrapper *)stateFileWrapper readObject:&v15 ofClass:objc_opt_class() error:a3];
      v10 = v15;
      v11 = v10;
      if (v3)
      {
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = objc_alloc_init(ENDownloadManagerState);
        }

        state = self->_state;
        self->_state = v12;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)_saveState
{
  v5 = 0;
  v2 = [(ENDownloadManager *)self _saveStateWithError:&v5];
  v3 = v5;
  if (!v2 && gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
  {
    [ENDownloadManager _saveState];
  }

  return v2;
}

- (id)createScheduler
{
  v2 = [objc_alloc(MEMORY[0x277CCA8C0]) initWithIdentifier:@"com.apple.ExposureNotification.periodicDownload"];

  return v2;
}

- (id)description
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [(ENDownloadManager *)self state];
  v3 = [v2 endpointStates];

  v4 = [v3 count];
  v35 = 0;
  v5 = "s";
  if (v4 == 1)
  {
    v5 = "";
  }

  v24 = v4;
  v28 = v5;
  NSAppendPrintF_safe();
  v6 = v35;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v3;
  v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:{16, v24, v28}];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [v11 endpoint];
        v26 = [v12 region];
        NSAppendPrintF_safe();
        v13 = v6;

        if (([v12 enabled] & 1) == 0)
        {
          NSAppendPrintF_safe();
          v14 = v13;

          v13 = v14;
        }

        v15 = [v11 lastFetchAttemptDate];
        v16 = [v11 lastSuccessfulFetchDate];
        if (v15 | v16)
        {
          [v15 timeIntervalSinceNow];
          v18 = -v17;
          [v16 timeIntervalSinceNow];
          v27 = v18;
          v29 = -v19;
          NSAppendPrintF();
          v20 = v13;

          v13 = v20;
        }

        v21 = [v12 serverBaseURL];
        v25 = [v21 absoluteString];
        NSAppendPrintF_safe();
        v6 = v13;
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:{16, v25}];
    }

    while (v8);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_enumerateDownloadsWithError:handler:.cold.1()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe();
}

- (void)_enumerateDownloadsWithError:handler:.cold.2()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe();
}

- (void)_performDownloadsWithScheduler:(uint64_t)a3 atDate:forced:completion:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a3 + 72) endpoints];
  [v3 count];
  LogPrintF_safe();
}

- (void)_performDownloadsWithScheduler:(void *)a1 atDate:forced:completion:.cold.2(void *a1)
{
  v2 = [a1 shortIdentifier];
  v3 = [a1 endpoint];
  [v3 downloadInterval];
  v4 = CUPrintDurationDouble();
  v5 = [a1 lastFetchAttemptDate];
  [v5 timeIntervalSinceNow];
  v6 = CUPrintDurationDouble();
  LogPrintF_safe();
}

void __44__ENDownloadManager__downloadIndexWithTask___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = [*(a1 + 56) endpointState];
  v2 = [v5 shortIdentifier];
  CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 80);
  v4 = CUPrintDurationDouble();
  LogPrintF_safe();
}

void __44__ENDownloadManager__downloadIndexWithTask___block_invoke_2_cold_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)_baseDirectoryPathForEndpointWithState:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA888] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENDownloadManager.m" lineNumber:482 description:{@"Invalid parameter not satisfying: %@", @"path != nil"}];
}

- (void)_handleIndexFileDownloadFinishedForTask:(void *)a1 filePath:.cold.1(void *a1)
{
  v1 = [a1 shortIdentifier];
  LogPrintF_safe();
}

- (void)_handleIndexFileDownloadFinishedForTask:(void *)a1 filePath:.cold.2(void *a1)
{
  [a1 shortIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_2();
  v2 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)_downloadNextFileFromServerWithTask:(void *)a1 .cold.1(void *a1, void *a2)
{
  v4 = [a1 absoluteURL];
  v3 = [a2 shortIdentifier];
  LogPrintF_safe();
}

- (void)_downloadNextFileFromServerWithTask:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF_safe();
}

void __57__ENDownloadManager__downloadNextFileFromServerWithTask___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = [*(a1 + 64) absoluteURL];
  v2 = [*(a1 + 40) shortIdentifier];
  CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 96);
  v4 = CUPrintDurationDouble();
  LogPrintF_safe();
}

void __57__ENDownloadManager__downloadNextFileFromServerWithTask___block_invoke_2_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 40) shortIdentifier];
  LogPrintF_safe();
}

- (void)_handleFileDownloadFinishedForTask:(void *)a1 serverFilePath:downloadedFilePath:.cold.1(void *a1)
{
  v1 = [a1 shortIdentifier];
  LogPrintF_safe();
}

- (void)_handleFileDownloadFinishedForTask:(void *)a1 serverFilePath:downloadedFilePath:.cold.2(void *a1)
{
  [a1 shortIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_2();
  v2 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)_handleFileDownloadFinishedForTask:(void *)a1 serverFilePath:downloadedFilePath:.cold.3(void *a1)
{
  [a1 shortIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_2();
  v2 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)_nextFilePathToDownloadWithEndpointState:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 shortIdentifier];
  v1 = *__error();
  LogPrintF_safe();
}

- (void)_purgeKeepingDownloadsForIdentifiers:(void *)a1 expiryDate:.cold.1(void *a1)
{
  [a1 path];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe();
}

- (void)_purgeKeepingDownloadsForIdentifiers:expiryDate:.cold.2()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe();
}

void __69__ENDownloadManager__purgeKeepingDownloadsForIdentifiers_expiryDate___block_invoke_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)resetStateFile
{
  if (gLogCategory__ENDownloadManager <= 90 && (gLogCategory__ENDownloadManager != -1 || _LogCategory_Initialize()))
  {
    v6 = CUPrintNSError();
    LogPrintF_safe();
  }

  *a3 = 0;
  *a2 = a1;
}

- (uint64_t)resetStateFile
{
  v1 = result;
  if (gLogCategory__ENDownloadManager <= 90)
  {
    if (gLogCategory__ENDownloadManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (void)_readStateIfNecessaryWithError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA888] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENDownloadManager.m" lineNumber:991 description:{@"Invalid parameter not satisfying: %@", @"directoryPath != nil"}];
}

- (void)_saveState
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe();
}

@end