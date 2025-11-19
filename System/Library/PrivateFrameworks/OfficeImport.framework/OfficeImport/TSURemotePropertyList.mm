@interface TSURemotePropertyList
- (TSURemotePropertyList)init;
- (TSURemotePropertyList)initWithRemoteURL:(id)a3 localURL:(id)a4;
- (double)timeIntervalUntilNextUpdate;
- (id)URLForKey:(id)a3;
- (id)URLRequest;
- (id)arrayForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)objectForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)checkForUpdateWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)processDidResume:(id)a3;
- (void)processPropertyList:(id)a3;
- (void)processResponse:(id)a3 data:(id)a4 error:(id)a5;
- (void)processWillSuspend:(id)a3;
- (void)startUpdateTimer;
- (void)updateIfNeededWithCompletionHandler:(id)a3;
@end

@implementation TSURemotePropertyList

- (TSURemotePropertyList)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURemotePropertyList init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSURemoteDefaults.m"];
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:41 isFatal:0 description:"Do not call method"];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSURemotePropertyList init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSURemotePropertyList)initWithRemoteURL:(id)a3 localURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = TSURemotePropertyList;
  v8 = [(TSURemotePropertyList *)&v30 init];
  if (v8)
  {
    v9 = [v6 copy];
    remoteURL = v8->_remoteURL;
    v8->_remoteURL = v9;

    v11 = [v7 copy];
    localURL = v8->_localURL;
    v8->_localURL = v11;

    if (v7)
    {
      if (([v7 isFileURL] & 1) == 0)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURemotePropertyList initWithRemoteURL:localURL:]"];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSURemoteDefaults.m"];
        [OITSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:52 isFatal:0 description:"Local URL should be a file URL."];

        +[OITSUAssertionHandler logBacktraceThrottled];
      }

      v15 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v7];
      propertyList = v8->_propertyList;
      v8->_propertyList = v15;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v18 stringByAppendingString:@".Access"];

    v20 = dispatch_queue_create([v19 UTF8String], 0);
    accessQueue = v8->_accessQueue;
    v8->_accessQueue = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v23 stringByAppendingString:@".Check"];

    v25 = dispatch_queue_create([v24 UTF8String], 0);
    checkQueue = v8->_checkQueue;
    v8->_checkQueue = v25;

    [(TSURemotePropertyList *)v8 startUpdateTimer];
    v27 = [MEMORY[0x277CCAB98] defaultCenter];
    v28 = *MEMORY[0x277D76648];
    [v27 addObserver:v8 selector:sel_processWillSuspend_ name:*MEMORY[0x277D76768] object:0];
    [v27 addObserver:v8 selector:sel_processDidResume_ name:v28 object:0];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  dispatch_source_cancel(self->_updateTimer);
  v4.receiver = self;
  v4.super_class = TSURemotePropertyList;
  [(TSURemotePropertyList *)&v4 dealloc];
}

- (void)startUpdateTimer
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_checkQueue);
  updateTimer = self->_updateTimer;
  self->_updateTimer = v3;

  [(TSURemotePropertyList *)self timeIntervalUntilNextUpdate];
  dispatch_source_set_timer(self->_updateTimer, (v5 * 1000000000.0), 0x4E94914F0000uLL, 0x34630B8A000uLL);
  objc_initWeak(&location, self);
  v6 = self->_updateTimer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__TSURemotePropertyList_startUpdateTimer__block_invoke;
  v7[3] = &unk_2799C7100;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v6, v7);
  dispatch_resume(self->_updateTimer);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __41__TSURemotePropertyList_startUpdateTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkForUpdateWithCompletionHandler:0];
}

- (void)processWillSuspend:(id)a3
{
  updateTimer = self->_updateTimer;
  if (updateTimer)
  {
    dispatch_source_cancel(updateTimer);
    v5 = self->_updateTimer;
    self->_updateTimer = 0;
  }
}

- (void)processDidResume:(id)a3
{
  if (!self->_updateTimer)
  {
    [(TSURemotePropertyList *)self startUpdateTimer];
  }
}

- (void)updateIfNeededWithCompletionHandler:(id)a3
{
  v4 = a3;
  checkQueue = self->_checkQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__TSURemotePropertyList_updateIfNeededWithCompletionHandler___block_invoke;
  v7[3] = &unk_2799C6EB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(checkQueue, v7);
}

_BYTE *__61__TSURemotePropertyList_updateIfNeededWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 40);
  if (result[56] != 1)
  {
    return [result checkForUpdateWithCompletionHandler:v3];
  }

  if (v3)
  {
    return (*(v3 + 16))(v3, 0);
  }

  return result;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__TSURemotePropertyList_objectForKey___block_invoke;
  block[3] = &unk_2799C6858;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __38__TSURemotePropertyList_objectForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(TSURemotePropertyList *)self objectForKey:v4];

  v7 = TSUDynamicCast(v5, v6);

  return v7;
}

- (id)URLForKey:(id)a3
{
  v3 = [(TSURemotePropertyList *)self objectForKey:a3];
  v4 = objc_opt_class();
  v5 = TSUDynamicCast(v4, v3);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v7 = objc_opt_class();
    v8 = TSUDynamicCast(v7, v3);
    if (v8)
    {
      v5 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(TSURemotePropertyList *)self objectForKey:v4];

  v7 = TSUDynamicCast(v5, v6);

  return v7;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(TSURemotePropertyList *)self objectForKey:v4];

  v7 = TSUDynamicCast(v5, v6);

  return v7;
}

- (void)checkForUpdateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(TSURemotePropertyList *)self URLRequest];
  dispatch_suspend(self->_checkQueue);
  v6 = [MEMORY[0x277D75128] sharedApplication];
  v7 = [v6 beginBackgroundTaskWithExpirationHandler:0];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __61__TSURemotePropertyList_checkForUpdateWithCompletionHandler___block_invoke;
  v16 = &unk_2799C74B0;
  v17 = self;
  v18 = v6;
  v19 = v4;
  v20 = v7;
  v8 = v4;
  v9 = v6;
  v10 = _Block_copy(&v13);
  v11 = [MEMORY[0x277CCAD30] sharedSession];
  v12 = [v11 dataTaskWithRequest:v5 completionHandler:v10];

  [v12 resume];
}

void __61__TSURemotePropertyList_checkForUpdateWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_class();
  v10 = TSUCheckedDynamicCast(v9, v7);

  [*(a1 + 32) processResponse:v10 data:v8 error:v12];
  [*(a1 + 40) endBackgroundTask:*(a1 + 56)];
  dispatch_resume(*(*(a1 + 32) + 40));
  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v12);
  }
}

- (double)timeIntervalUntilNextUpdate
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 stringByAppendingString:@"NextUpdate"];
  v6 = [v2 objectForKey:v5];

  v7 = 0.0;
  if (v6)
  {
    v8 = objc_opt_class();
    v9 = TSUCheckedDynamicCast(v8, v6);

    if (v9)
    {
      v10 = [MEMORY[0x277CBEAA8] date];
      [v6 timeIntervalSinceDate:v10];
      v12 = v11;

      v7 = fmax(v12, 0.0);
    }
  }

  return v7;
}

- (id)URLRequest
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 stringByAppendingString:@"DownloadURL"];
  v7 = [v3 stringForKey:v6];

  if (![v7 length] || (objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v7), (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, -[TSURemotePropertyList validateUserDefaultsDownloadURL:](self, "validateUserDefaultsDownloadURL:", v8), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v10 = self->_remoteURL;
  }

  v11 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v10];
  [v11 setTimeoutInterval:20.0];
  [v11 setCachePolicy:1];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v13 stringByAppendingString:@"ETag"];
  v15 = [v3 stringForKey:v14];

  if ([v15 length])
  {
    [v11 setValue:v15 forHTTPHeaderField:@"If-None-Match"];
  }

  return v11;
}

- (void)processResponse:(id)a3 data:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 statusCode];
  v12 = v11;
  if (v11 == 304 || v11 == 200)
  {
    v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:86400.0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v16 stringByAppendingString:@"NextUpdate"];
    [v13 setObject:v14 forKey:v17];

    if (v12 == 200 && [v9 length])
    {
      v25 = 0;
      v18 = [(TSURemotePropertyList *)self deserializePropertyListData:v9 error:&v25];
      v19 = v25;

      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [(TSURemotePropertyList *)self processPropertyList:v18];
        v20 = [v8 allHeaderFields];
        v21 = [v20 objectForKey:@"Etag"];

        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = [v23 stringByAppendingString:@"ETag"];
        [v13 setObject:v21 forKey:v24];

        self->_didUpdateAtLeastOnce = 1;
      }

      else if (TSUDefaultCat_init_token != -1)
      {
        [TSURemotePropertyList processResponse:data:error:];
      }

      v10 = v19;
    }
  }
}

void __52__TSURemotePropertyList_processResponse_data_error___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (void)processPropertyList:(id)a3
{
  v4 = a3;
  v5 = v4;
  localURL = self->_localURL;
  if (localURL && ([v4 writeToURL:localURL atomically:0] & 1) == 0 && TSUDefaultCat_init_token != -1)
  {
    [TSURemotePropertyList processPropertyList:];
  }

  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__TSURemotePropertyList_processPropertyList___block_invoke_2;
  v9[3] = &unk_2799C68A8;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(accessQueue, v9);
}

void __45__TSURemotePropertyList_processPropertyList___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __45__TSURemotePropertyList_processPropertyList___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

@end