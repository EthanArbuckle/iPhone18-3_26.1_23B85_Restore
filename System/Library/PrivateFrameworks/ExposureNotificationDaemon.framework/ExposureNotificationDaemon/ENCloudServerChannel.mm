@interface ENCloudServerChannel
- (ENCloudServerChannel)init;
- (NSHTTPCookieStorage)cookieStorage;
- (void)dealloc;
- (void)enqueueRequest:(id)request withCompletion:(id)completion;
@end

@implementation ENCloudServerChannel

- (ENCloudServerChannel)init
{
  v23.receiver = self;
  v23.super_class = ENCloudServerChannel;
  v2 = [(ENCloudServerChannel *)&v23 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABE0]);
    [(ENCloudServerChannel *)v2 setQueue:v3];

    queue = [(ENCloudServerChannel *)v2 queue];
    [queue setMaxConcurrentOperationCount:1];

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.bluetooth.serverChannel", v5);
    [(ENCloudServerChannel *)v2 setSerialQueue:v6];

    defaultSessionConfiguration = [MEMORY[0x277CBABC0] defaultSessionConfiguration];
    [(ENCloudServerChannel *)v2 setSessionConfig:defaultSessionConfiguration];

    sessionConfig = [(ENCloudServerChannel *)v2 sessionConfig];
    [sessionConfig setURLCache:0];

    sessionConfig2 = [(ENCloudServerChannel *)v2 sessionConfig];
    [sessionConfig2 setRequestCachePolicy:1];

    cookieStorage = [(ENCloudServerChannel *)v2 cookieStorage];
    sessionConfig3 = [(ENCloudServerChannel *)v2 sessionConfig];
    [sessionConfig3 setHTTPCookieStorage:cookieStorage];

    sessionConfig4 = [(ENCloudServerChannel *)v2 sessionConfig];
    [sessionConfig4 setWaitsForConnectivity:1];

    v13 = ENBundleIdentifierForURLSessions();
    sessionConfig5 = [(ENCloudServerChannel *)v2 sessionConfig];
    [sessionConfig5 set_sourceApplicationBundleIdentifier:v13];

    v15 = MEMORY[0x277CBABB0];
    sessionConfig6 = [(ENCloudServerChannel *)v2 sessionConfig];
    v17 = [v15 sessionWithConfiguration:sessionConfig6];
    [(ENCloudServerChannel *)v2 setSession:v17];

    serialQueue = [(ENCloudServerChannel *)v2 serialQueue];
    session = [(ENCloudServerChannel *)v2 session];
    delegateQueue = [session delegateQueue];
    [delegateQueue setUnderlyingQueue:serialQueue];

    dictionary = [MEMORY[0x277CBEB30] dictionary];
    [(ENCloudServerChannel *)v2 setRequests:dictionary];
  }

  return v2;
}

- (void)dealloc
{
  requests = [(ENCloudServerChannel *)self requests];
  [requests removeAllObjects];

  v4.receiver = self;
  v4.super_class = ENCloudServerChannel;
  [(ENCloudServerChannel *)&v4 dealloc];
}

- (void)enqueueRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (gLogCategory_ENCloudServerChannel <= 30 && (gLogCategory_ENCloudServerChannel != -1 || _LogCategory_Initialize()))
  {
    [ENCloudServerChannel enqueueRequest:withCompletion:];
  }

  v8 = requestCopy;
  if (v8)
  {
    serialQueue = [(ENCloudServerChannel *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke;
    block[3] = &unk_278FD1080;
    block[4] = v8;
    block[5] = self;
    v11 = completionCopy;
    dispatch_async(serialQueue, block);
  }
}

void __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke(id *a1)
{
  v2 = MEMORY[0x277CBAB58];
  v3 = [a1[4] url];
  v4 = [v2 requestWithURL:v3 cachePolicy:1 timeoutInterval:60.0];

  v5 = [a1[4] httpMethodString];
  [v4 setHTTPMethod:v5];

  v6 = [a1[4] headers];
  [v4 setAllHTTPHeaderFields:v6];

  v7 = [a1[4] body];
  if (v7)
  {
    [v4 setHTTPBody:v7];
  }

  objc_initWeak(&location, a1[5]);
  v8 = [a1[5] session];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2;
  v14[3] = &unk_278FD1058;
  objc_copyWeak(&v17, &location);
  v14[4] = a1[4];
  v9 = v4;
  v15 = v9;
  v16 = a1[6];
  v10 = [v8 dataTaskWithRequest:v9 completionHandler:v14];

  v11 = [a1[5] requests];
  v12 = [a1[4] requestID];
  [v11 setObject:v10 forKeyedSubscript:v12];

  [v10 resume];
  if (gLogCategory_ENCloudServerChannel <= 30 && (gLogCategory_ENCloudServerChannel != -1 || _LogCategory_Initialize()))
  {
    v13 = [a1[5] requests];
    LogPrintF_safe();
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v26 = a2;
  v7 = a3;
  v27 = a4;
  val = objc_loadWeakRetained((a1 + 56));
  v25 = v7;
  v8 = [v7 copy];
  if (gLogCategory_ENCloudServerChannel <= 10 && (gLogCategory_ENCloudServerChannel != -1 || _LogCategory_Initialize()))
  {
    __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2_cold_1(a1);
  }

  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v36 = 0u;
  v9 = [*(a1 + 40) allHTTPHeaderFields];
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if (gLogCategory_ENCloudServerChannel <= 30)
        {
          v13 = *(*(&v36 + 1) + 8 * i);
          if (gLogCategory_ENCloudServerChannel != -1 || _LogCategory_Initialize())
          {
            __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2_cold_2((a1 + 40), v13);
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
  }

  if (gLogCategory__ENCloudServerChannel <= 30 && (gLogCategory__ENCloudServerChannel != -1 || _LogCategory_Initialize()))
  {
    __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2_cold_3(v8);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = [v8 allHeaderFields];
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v15)
  {
    v16 = *v33;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v14);
        }

        if (gLogCategory_ENCloudServerChannel <= 30)
        {
          v18 = *(*(&v32 + 1) + 8 * j);
          if (gLogCategory_ENCloudServerChannel != -1 || _LogCategory_Initialize())
          {
            __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2_cold_4(v8, v18);
          }
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v15);
  }

  objc_initWeak(&location, val);
  v19 = [val serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_3;
  block[3] = &unk_278FD1030;
  objc_copyWeak(&v30, &location);
  block[4] = *(a1 + 32);
  dispatch_async(v19, block);

  v20 = *(a1 + 48);
  if (v20)
  {
    v21 = [v8 statusCode];
    v22 = [v8 allHeaderFields];
    v23 = [v26 copy];
    (*(v20 + 16))(v20, v21, v22, v23, v27);
  }

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);

  v24 = *MEMORY[0x277D85DE8];
}

void __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained requests];
  v3 = [*(a1 + 32) requestID];
  [v2 removeObjectForKey:v3];
}

- (NSHTTPCookieStorage)cookieStorage
{
  cookieStorage = self->_cookieStorage;
  if (!cookieStorage)
  {
    v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v5 = [v4 objectAtIndex:0];
    v6 = [v5 stringByAppendingPathComponent:@"com.apple.bluetooth.serverChannel"];
    v7 = [v6 stringByAppendingPathComponent:@"cookies"];

    uTF8String = [v7 UTF8String];
    v9 = strlen(uTF8String);
    v10 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x277CBECE0], uTF8String, v9, 1u);
    v11 = CFHTTPCookieStorageCreateFromFile();
    CFRunLoopGetMain();
    v12 = *MEMORY[0x277CBF050];
    CFHTTPCookieStorageScheduleWithRunLoop();
    v13 = [objc_alloc(MEMORY[0x277CBAB40]) _initWithCFHTTPCookieStorage:v11];
    [(ENCloudServerChannel *)self setCookieStorage:v13];

    if (v10)
    {
      CFRelease(v10);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    cookieStorage = self->_cookieStorage;
  }

  return cookieStorage;
}

void __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) url];
  LogPrintF_safe();
}

void __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2_cold_2(id *a1, uint64_t a2)
{
  v3 = [*a1 allHTTPHeaderFields];
  v4 = [v3 objectForKeyedSubscript:a2];
  LogPrintF_safe();
}

void __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2_cold_3(void *a1)
{
  [a1 statusCode];
  v2 = [a1 allHeaderFields];
  v3 = [v2 objectForKeyedSubscript:@"x-apple-request-uuid"];
  LogPrintF_safe();
}

void __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2_cold_4(void *a1, uint64_t a2)
{
  v3 = [a1 allHeaderFields];
  v4 = [v3 objectForKeyedSubscript:a2];
  LogPrintF_safe();
}

@end