@interface CoreDAVTask
+ (id)stringFromDepth:(int)depth;
- (BOOL)_canAuthenticateAgainstProtectionSpace:(id)space;
- (BOOL)_handleUnauthorizedAccessError:(id)error;
- (BOOL)_includeGeneralHeaders;
- (BOOL)_shouldCreateCredentialForBasicOrDigestAuthChallenge:(id)challenge;
- (BOOL)isFinished;
- (BOOL)markAsFinished;
- (CoreDAVAccountInfoProvider)accountInfoProvider;
- (CoreDAVItem)rootElement;
- (CoreDAVTask)initWithURL:(id)l;
- (CoreDAVTaskDelegate)delegate;
- (CoreDAVTaskManager)taskManager;
- (NSDictionary)responseHeaders;
- (NSRunLoop)workRunLoop;
- (NSString)description;
- (id)_applyAuthenticationChain:(__CFArray *)chain toRequest:(id)request;
- (id)_applyStorageSession:(__CFURLStorageSession *)session toRequest:(id)request;
- (id)_compressBodyData:(id)data;
- (id)_createBodyData;
- (id)credentialForClientCertificateChallenge:(id)challenge;
- (id)credentialForOAuthChallenge:(id)challenge;
- (id)redactedDescription;
- (id)requestBody;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_assignConnectionProperties:(id)properties toSessionConfiguration:(id)configuration;
- (void)_didReceiveAuthenticationChallenge:(id)challenge forTask:(id)task completionHandler:(id)handler;
- (void)_failImmediately;
- (void)_handleAuthenticationChallenge:(id)challenge task:(id)task completionHandler:(id)handler;
- (void)_handleBadPasswordResponse;
- (void)_logSantizedRequest:(id)request withTaskID:(id)d;
- (void)_runOnCallbackThread:(id)thread;
- (void)_sendTimeSpentInNetworkingToProvider;
- (void)_session:(id)_session dataTask:(id)task didReceiveData:(id)data;
- (void)_session:(id)_session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)_session:(id)_session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_task:(id)_task didFailWithError:(id)error;
- (void)_taskFinishedLoading:(id)loading;
- (void)dealloc;
- (void)finishCoreDAVTaskWithError:(id)error;
- (void)finishEarlyWithError:(id)error;
- (void)handleWebLoginRequestWithCompletionBlock:(id)block;
- (void)loadRequest:(id)request;
- (void)overrideRequestHeader:(id)header withValue:(id)value;
- (void)performCoreDAVTask;
- (void)reportStatusWithError:(id)error;
- (void)reset;
- (void)submitWithTaskManager:(id)manager;
- (void)tearDownResources;
@end

@implementation CoreDAVTask

- (CoreDAVTask)initWithURL:(id)l
{
  v34 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v21.receiver = self;
  v21.super_class = CoreDAVTask;
  v6 = [(CoreDAVTask *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
    v7->_depth = 0;
    v7->_timeoutInterval = 240.0;
    v7->_responseStatusCode = -1;
    v7->_allowAutomaticRedirects = 1;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", +[CoreDAVTask uniqueQueryID](CoreDAVTask, "uniqueQueryID")];
    uniqueID = v7->_uniqueID;
    v7->_uniqueID = v8;

    v10 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&v7->_accountInfoProvider);
    v12 = [v10 logHandleForAccountInfoProvider:WeakRetained];

    if (v12)
    {
      v13 = v12;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        _sessionForLogging = [(CoreDAVTask *)v7 _sessionForLogging];
        _requestForLogging = [(CoreDAVTask *)v7 _requestForLogging];
        v18 = v7->_uniqueID;
        *buf = 138413570;
        v23 = v15;
        v24 = 2048;
        v25 = v7;
        v26 = 2048;
        v27 = _sessionForLogging;
        v28 = 2048;
        v29 = _requestForLogging;
        v30 = 2112;
        v31 = v7;
        v32 = 2114;
        v33 = v18;
        _os_log_impl(&dword_2452FB000, v13, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Task initting %@ with ID %{public}@", buf, 0x3Eu);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  NSStringFromClass(v7);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  [currentHandler handleFailureInMethod:a3 object:self file:@"CoreDAVTask.m" lineNumber:195 description:@"<%@ %p>: Error better have been nil in our dealloc: %p"];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v12.receiver = self;
  v12.super_class = CoreDAVTask;
  v4 = [(CoreDAVTask *)&v12 description];
  [v3 appendFormat:@"[%@ ", v4];

  if (self->_request)
  {
    [v3 appendFormat:@"| Request: [%@]", self->_request];
  }

  if (self->_session)
  {
    [v3 appendFormat:@"| Connection: [%@]", self->_session];
  }

  if (self->_task)
  {
    [v3 appendFormat:@"| Connection: [%@]", self->_task];
  }

  if (self->_response)
  {
    [v3 appendFormat:@"| Response: [%@]", self->_response];
  }

  if (self->_error)
  {
    [v3 appendFormat:@"| Error: [%@]", self->_error];
  }

  v5 = "";
  if (self->_didSendRequest)
  {
    v6 = "[RequestSent]";
  }

  else
  {
    v6 = "";
  }

  if (self->_didReceiveResponse)
  {
    v7 = "[ReceivedResponse]";
  }

  else
  {
    v7 = "";
  }

  v8 = "[ReceivedData]";
  if (!self->_didReceiveData)
  {
    v8 = "";
  }

  if (self->_didFinishLoading)
  {
    v9 = "[FinishedLoading]";
  }

  else
  {
    v9 = "";
  }

  if (self->_didFailWithError)
  {
    v10 = "[FailedWithError]";
  }

  else
  {
    v10 = "";
  }

  if (self->_didCancel)
  {
    v5 = "[Cancelled]";
  }

  [v3 appendFormat:@"| Status: [%s%s%s%s%s%s]", v6, v7, v8, v9, v10, v5];
  [v3 appendFormat:@"]"];

  return v3;
}

- (id)redactedDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v13.receiver = self;
  v13.super_class = CoreDAVTask;
  v4 = [(CoreDAVTask *)&v13 description];
  [v3 appendFormat:@"[%@ ", v4];

  response = self->_response;
  if (response)
  {
    [v3 appendFormat:@"| Response Status Code: [%ld]", -[NSHTTPURLResponse statusCode](response, "statusCode")];
  }

  if (self->_error)
  {
    [v3 appendFormat:@"| Error: [%@]", self->_error];
  }

  v6 = &stru_28583EAE8;
  if (self->_didSendRequest)
  {
    v7 = @"[RequestSent]";
  }

  else
  {
    v7 = &stru_28583EAE8;
  }

  if (self->_didReceiveResponse)
  {
    v8 = @"[ReceivedResponse]";
  }

  else
  {
    v8 = &stru_28583EAE8;
  }

  v9 = @"[ReceivedData]";
  if (!self->_didReceiveData)
  {
    v9 = &stru_28583EAE8;
  }

  if (self->_didFinishLoading)
  {
    v10 = @"[FinishedLoading]";
  }

  else
  {
    v10 = &stru_28583EAE8;
  }

  if (self->_didFailWithError)
  {
    v11 = @"[FailedWithError]";
  }

  else
  {
    v11 = &stru_28583EAE8;
  }

  if (self->_didCancel)
  {
    v6 = @"[Cancelled]";
  }

  [v3 appendFormat:@"| Status: [%@%@%@%@%@%@]", v7, v8, v9, v10, v11, v6];
  [v3 appendFormat:@"]"];

  return v3;
}

- (NSRunLoop)workRunLoop
{
  v24 = *MEMORY[0x277D85DE8];
  taskManager = [(CoreDAVTask *)self taskManager];

  if (taskManager)
  {
    taskManager2 = [(CoreDAVTask *)self taskManager];
    workRunLoop = [taskManager2 workRunLoop];
  }

  else
  {
    v6 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
    v8 = [v6 logHandleForAccountInfoProvider:WeakRetained];

    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
        v16 = 138413058;
        v17 = v11;
        v18 = 2048;
        selfCopy = self;
        v20 = 2048;
        v21 = _sessionForLogging;
        v22 = 2048;
        v23 = _requestForLogging;
        _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_ERROR, "[%@ %p, sess %p, request %p] Could not get the Task Manager's work run loop because the task manager is nil. Defaulting to current run loop.", &v16, 0x2Au);
      }
    }

    workRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  }

  v14 = *MEMORY[0x277D85DE8];

  return workRunLoop;
}

- (BOOL)_includeGeneralHeaders
{
  httpMethod = [(CoreDAVTask *)self httpMethod];
  v3 = [httpMethod isEqualToString:@"OPTIONS"];

  return v3 ^ 1;
}

- (id)requestBody
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v5 = [v3 logHandleForAccountInfoProvider:WeakRetained];

  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
      v13 = 138413058;
      v14 = v8;
      v15 = 2048;
      selfCopy = self;
      v17 = 2048;
      v18 = _sessionForLogging;
      v19 = 2048;
      v20 = _requestForLogging;
      _os_log_impl(&dword_2452FB000, v6, OS_LOG_TYPE_ERROR, "[%@ %p, sess %p, request %p] requestBody to be implemented by subclass", &v13, 0x2Au);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)loadRequest:(id)request
{
  v88 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  [(CoreDAVTask *)self tearDownResources];
  if (!requestCopy)
  {
    [CoreDAVTask loadRequest:];
  }

  if (self->_session)
  {
    [CoreDAVTask loadRequest:];
  }

  if (self->_task)
  {
    [CoreDAVTask loadRequest:];
  }

  if (self->_response)
  {
    [CoreDAVTask loadRequest:];
  }

  currentThread = [MEMORY[0x277CCACC8] currentThread];
  if ([currentThread isMainThread])
  {
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v74 = 0;
  }

  else
  {
    v74 = currentThread;
    mainQueue = 0;
  }

  if (!self->_callbackThreadSet)
  {
    self->_callbackThreadSet = 1;
    v7 = v74;
    callbackThread = self->_callbackThread;
    self->_callbackThread = v7;
    goto LABEL_16;
  }

  if (v74 != self->_callbackThread)
  {
    callbackThread = [MEMORY[0x277CCA890] currentHandler];
    [callbackThread handleFailureInMethod:a2 object:self file:@"CoreDAVTask.m" lineNumber:306 description:{@"_callbackThread (%@) doesn't match current thread (%@)", self->_callbackThread, v74}];
LABEL_16:
  }

  accountInfoProvider = [(CoreDAVTask *)self accountInfoProvider];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) != 0 && (-[CoreDAVTask accountInfoProvider](self, "accountInfoProvider"), v10 = objc_claimAutoreleasedReturnValue(), [v10 getAppleIDSession], v72 = objc_claimAutoreleasedReturnValue(), v10, v72))
  {
    v11 = [requestCopy mutableCopy];
    v12 = [v72 appleIDHeadersForRequest:v11];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __27__CoreDAVTask_loadRequest___block_invoke;
    v77[3] = &unk_278E311A8;
    v78 = v11;
    v13 = v11;
    [v12 enumerateKeysAndObjectsUsingBlock:v77];
    [v13 ak_addDeviceUDIDHeader];
    [v13 ak_addClientInfoHeader];
    v14 = [v13 copy];
    request = self->_request;
    self->_request = v14;
  }

  else
  {
    v16 = [requestCopy copy];
    v17 = self->_request;
    self->_request = v16;

    v72 = 0;
  }

  v18 = [CoreDAVRequestLogger alloc];
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v20 = [(CoreDAVRequestLogger *)v18 initWithProvider:WeakRetained];
  logger = self->_logger;
  self->_logger = v20;

  [(CoreDAVTask *)self setResponseBodyParser:0];
  v22 = [(NSURLRequest *)self->_request URL];
  absoluteString = [v22 absoluteString];
  v24 = [absoluteString length];

  hTTPBody = [(NSURLRequest *)self->_request HTTPBody];
  v26 = [hTTPBody length];

  v27 = +[CoreDAVLogging sharedLogging];
  v28 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v29 = [v27 logHandleForAccountInfoProvider:v28];

  if (v29)
  {
    v30 = v29;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413314;
      *&buf[4] = v32;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2048;
      v84 = _sessionForLogging;
      *v85 = 2048;
      *&v85[2] = _requestForLogging;
      v86 = 2048;
      v87 = (v26 + v24);
      _os_log_impl(&dword_2452FB000, v30, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Size of outgoing, unencrypted request: %ld", buf, 0x34u);
    }
  }

  [(CoreDAVRequestLogger *)self->_logger logCoreDAVRequest:self->_request withTaskIdentifier:self->_uniqueID];
  [(CoreDAVTask *)self _logSantizedRequest:self->_request withTaskID:self->_uniqueID];
  v35 = [(CoreDAVTask *)self url];
  host = [v35 host];
  if ([host hasSuffix:@"simulated.calendar.apple.com"])
  {
    v37 = CalDAVServerSimulatorLibraryCore() == 0;

    if (!v37)
    {
      self->_simulated = 1;
      v79 = 0;
      v80 = &v79;
      v81 = 0x2050000000;
      v38 = getCalDAVServerSimulatorClass_softClass;
      v82 = getCalDAVServerSimulatorClass_softClass;
      if (!getCalDAVServerSimulatorClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCalDAVServerSimulatorClass_block_invoke;
        v84 = &unk_278E31338;
        *v85 = &v79;
        __getCalDAVServerSimulatorClass_block_invoke(buf);
        v38 = v80[3];
      }

      v39 = v38;
      _Block_object_dispose(&v79, 8);
      defaultSessionConfiguration = [v38 simulatorForTask:self];
      v41 = [requestCopy URL];
      user = [v41 user];
      -[CoreDAVTask setResponseStatusCode:](self, "setResponseStatusCode:", [defaultSessionConfiguration simulateTask:self as:user]);

      if ([(CoreDAVTask *)self responseStatusCode]>= 200 && [(CoreDAVTask *)self responseStatusCode]< 300)
      {
        v43 = 0;
      }

      else
      {
        v43 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CoreDAVHTTPStatusErrorDomain" code:-[CoreDAVTask responseStatusCode](self userInfo:{"responseStatusCode"), 0}];
      }

      workRunLoop = [(CoreDAVTask *)self workRunLoop];
      workRunLoop2 = [(CoreDAVTask *)self workRunLoop];
      v69 = CDVRunLoopModesToPerformDelayedSelectorsInFromRunLoop(workRunLoop2);
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __27__CoreDAVTask_loadRequest___block_invoke_107;
      v75[3] = &unk_278E30F90;
      v75[4] = self;
      v76 = v43;
      v66 = v43;
      [workRunLoop performInModes:v69 block:v75];

LABEL_47:
      goto LABEL_48;
    }
  }

  else
  {
  }

  defaultSessionConfiguration = [MEMORY[0x277CBABC8] defaultSessionConfiguration];
  [defaultSessionConfiguration setURLCache:0];
  v44 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v45 = objc_opt_respondsToSelector();

  if (v45)
  {
    v46 = objc_loadWeakRetained(&self->_accountInfoProvider);
    customConnectionProperties = [v46 customConnectionProperties];
    [(CoreDAVTask *)self _assignConnectionProperties:customConnectionProperties toSessionConfiguration:defaultSessionConfiguration];
  }

  v48 = objc_loadWeakRetained(&self->_accountInfoProvider);
  if (objc_opt_respondsToSelector())
  {
    v49 = objc_loadWeakRetained(&self->_accountInfoProvider);
    handleShouldUseCredentialStorage = [v49 handleShouldUseCredentialStorage];

    if ((handleShouldUseCredentialStorage & 1) == 0)
    {
      [defaultSessionConfiguration setURLCredentialStorage:0];
    }
  }

  else
  {
  }

  v51 = [MEMORY[0x277CBABB8] sessionWithConfiguration:defaultSessionConfiguration delegate:self delegateQueue:mainQueue];
  session = self->_session;
  self->_session = v51;

  v53 = [(NSURLSession *)self->_session dataTaskWithRequest:self->_request];
  task = self->_task;
  self->_task = v53;

  date = [MEMORY[0x277CBEAA8] date];
  dateConnectionWentOut = self->_dateConnectionWentOut;
  self->_dateConnectionWentOut = date;

  [(NSURLSessionDataTask *)self->_task resume];
  if (!self->_task)
  {
    v57 = +[CoreDAVLogging sharedLogging];
    v58 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v59 = [v57 logHandleForAccountInfoProvider:v58];

    if (v59)
    {
      v60 = v59;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        _sessionForLogging2 = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging2 = [(CoreDAVTask *)self _requestForLogging];
        v65 = self->_request;
        *buf = 138413314;
        *&buf[4] = v62;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2048;
        v84 = _sessionForLogging2;
        *v85 = 2048;
        *&v85[2] = _requestForLogging2;
        v86 = 2112;
        v87 = v65;
        _os_log_impl(&dword_2452FB000, v60, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Error creating task with request %@", buf, 0x34u);
      }
    }

    v66 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1 userInfo:0];
    [(CoreDAVTask *)self finishCoreDAVTaskWithError:v66];
    goto LABEL_47;
  }

LABEL_48:

  v70 = *MEMORY[0x277D85DE8];
}

- (void)_assignConnectionProperties:(id)properties toSessionConfiguration:(id)configuration
{
  v33 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  configurationCopy = configuration;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys = [propertiesCopy allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v27;
    v13 = *MEMORY[0x277CBADA0];
    v25 = *MEMORY[0x277CBAE78];
    *&v10 = 138543362;
    v22 = v10;
    v23 = *MEMORY[0x277CBADA0];
    v24 = allKeys;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [propertiesCopy objectForKeyedSubscript:{v15, v22}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CoreDAVTask *)self _assignConnectionProperties:v16 toSessionConfiguration:configurationCopy];
        }

        else if ([v15 isEqualToString:v13])
        {
          [configurationCopy set_sourceApplicationSecondaryIdentifier:v16];
        }

        else if ([v15 isEqualToString:v25])
        {
          [configurationCopy set_sourceApplicationBundleIdentifier:v16];
        }

        else
        {
          selfCopy = self;
          v18 = +[CoreDAVLogging sharedLogging];
          v19 = [v18 logHandleForAccountInfoProvider:0];
          v20 = v19;
          if (v19 && os_log_type_enabled(v19, 6u))
          {
            *buf = v22;
            v31 = v15;
            _os_log_impl(&dword_2452FB000, v20, 6u, "Connection property: %{public}@ is not set", buf, 0xCu);
          }

          self = selfCopy;
          v13 = v23;
          allKeys = v24;
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v11);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_logSantizedRequest:(id)request withTaskID:(id)d
{
  v37 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v6 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v8 = [v6 logHandleForAccountInfoProvider:WeakRetained];

  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v21 = NSStringFromClass(v10);
      _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
      uniqueID = self->_uniqueID;
      hTTPMethod = [requestCopy HTTPMethod];
      v12 = MEMORY[0x277CCACA8];
      v22 = [requestCopy URL];
      scheme = [v22 scheme];
      v20 = [requestCopy URL];
      host = [v20 host];
      [v12 stringWithFormat:@"%@://%@", scheme, host];
      *buf = 138413826;
      v24 = v21;
      v25 = 2048;
      selfCopy = self;
      v27 = 2048;
      v28 = _sessionForLogging;
      v29 = 2048;
      v30 = _requestForLogging;
      v31 = 2114;
      v32 = uniqueID;
      v33 = 2114;
      v34 = hTTPMethod;
      v36 = v35 = 2114;
      v15 = v36;
      _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Performing Task with ID %{public}@. Method:: %{public}@ RequestURL:: %{public}@", buf, 0x48u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)tearDownResources
{
  session = self->_session;
  if (session)
  {
    self->_didCancel = 1;
    [(NSURLSession *)session invalidateAndCancel];
    v4 = self->_session;
    self->_session = 0;
  }

  task = self->_task;
  self->_task = 0;

  response = self->_response;
  self->_response = 0;

  request = self->_request;
  self->_request = 0;

  error = self->_error;
  self->_error = 0;
}

- (id)_compressBodyData:(id)data
{
  v11 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  memset(&v9, 0, sizeof(v9));
  data = 0;
  if (!deflateInit2_(&v9, -1, 8, 31, 8, 0, "1.2.12", 112))
  {
    data = [MEMORY[0x277CBEB28] data];
    v9.avail_in = [dataCopy length];
    do
    {
      v9.avail_out = 0x2000;
      v9.next_out = v10;
      v5 = deflate(&v9, 4);
      if (v5 == -2)
      {
        [CoreDAVTask _compressBodyData:];
      }

      v6 = v5;
      [data appendBytes:v10 length:0x2000 - v9.avail_out];
    }

    while (!v9.avail_out);
    if (v9.avail_in)
    {
      [CoreDAVTask _compressBodyData:];
    }

    if (v6 != 1)
    {
      [CoreDAVTask _compressBodyData:];
    }

    deflateEnd(&v9);
  }

  v7 = *MEMORY[0x277D85DE8];

  return data;
}

- (id)_createBodyData
{
  requestBody = [(CoreDAVTask *)self requestBody];
  self->_requestIsCompressed = 0;
  if (!self->_compressedRequestFailed)
  {
    WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_8;
    }

    v5 = objc_loadWeakRetained(&self->_accountInfoProvider);
    if (![v5 shouldCompressRequests])
    {
LABEL_7:

      goto LABEL_8;
    }

    v6 = [requestBody length];

    if (v6)
    {
      v7 = [(CoreDAVTask *)self _compressBodyData:requestBody];
      WeakRetained = v7;
      if (v7)
      {
        self->_requestIsCompressed = 1;
        WeakRetained = v7;
        v5 = requestBody;
        requestBody = WeakRetained;
        goto LABEL_7;
      }

LABEL_8:
    }
  }

  return requestBody;
}

- (void)_failImmediately
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v5 = [v3 logHandleForAccountInfoProvider:WeakRetained];

  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
      v13 = 138413058;
      v14 = v8;
      v15 = 2048;
      selfCopy = self;
      v17 = 2048;
      v18 = _sessionForLogging;
      v19 = 2048;
      v20 = _requestForLogging;
      _os_log_impl(&dword_2452FB000, v6, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Account says we should fail now, finishing with error", &v13, 0x2Au);
    }
  }

  v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CoreDAVErrorDomain" code:0 userInfo:0];
  [(CoreDAVTask *)self finishCoreDAVTaskWithError:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)overrideRequestHeader:(id)header withValue:(id)value
{
  v30 = *MEMORY[0x277D85DE8];
  headerCopy = header;
  valueCopy = value;
  if (valueCopy)
  {
    overriddenHeaders = self->_overriddenHeaders;
    if (!overriddenHeaders)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
      v10 = self->_overriddenHeaders;
      self->_overriddenHeaders = v9;

      overriddenHeaders = self->_overriddenHeaders;
    }

    [(NSMutableDictionary *)overriddenHeaders setValue:valueCopy forKey:headerCopy];
  }

  else
  {
    v11 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
    v13 = [v11 logHandleForAccountInfoProvider:WeakRetained];

    if (v13)
    {
      v14 = v13;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
        v20 = 138413314;
        v21 = v16;
        v22 = 2048;
        selfCopy = self;
        v24 = 2048;
        v25 = _sessionForLogging;
        v26 = 2048;
        v27 = _requestForLogging;
        v28 = 2112;
        v29 = headerCopy;
        _os_log_impl(&dword_2452FB000, v14, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Ignoring nil value for header: %@", &v20, 0x34u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)stringFromDepth:(int)depth
{
  if (depth > 3)
  {
    return 0;
  }

  else
  {
    return qword_278E31358[depth];
  }
}

- (void)performCoreDAVTask
{
  v256 = *MEMORY[0x277D85DE8];
  v242 = 0;
  v3 = [(CoreDAVTask *)self validate:&v242];
  v4 = v242;
  v5 = 0x278E30000uLL;
  if (v3)
  {
    v234 = [(CoreDAVTask *)self url];
    user = [v234 user];
    v7 = [user length];

    if (v7)
    {
      goto LABEL_27;
    }

    WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
    user2 = [WeakRetained user];
    v10 = [user2 length];

    v11 = +[CoreDAVLogging sharedLogging];
    v12 = objc_loadWeakRetained(&self->_accountInfoProvider);
    user4 = [v11 logHandleForAccountInfoProvider:v12];

    if (v10)
    {
      if (user4)
      {
        v14 = user4;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
          _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
          v231 = v4;
          v19 = objc_loadWeakRetained(&self->_accountInfoProvider);
          user3 = [v19 user];
          *buf = 138413570;
          v245 = v16;
          v246 = 2048;
          selfCopy16 = self;
          v248 = 2048;
          v249 = _sessionForLogging;
          v250 = 2048;
          v251 = _requestForLogging;
          v252 = 2112;
          v253 = user3;
          v254 = 2112;
          selfCopy17 = self;
          _os_log_impl(&dword_2452FB000, v14, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] No user on task, adding user %@: %@", buf, 0x3Eu);

          v4 = v231;
          v5 = 0x278E30000uLL;
        }
      }

      host = [v234 host];
      if ([host length])
      {
        scheme = [v234 scheme];
        v23 = [scheme length];

        if (v23)
        {
          v11 = objc_loadWeakRetained(&self->_accountInfoProvider);
          user4 = [v11 user];
          v24 = v234;
          v234 = [v234 CDVURLWithUser:user4];
LABEL_25:

          goto LABEL_26;
        }
      }

      else
      {
      }

      v11 = +[CoreDAVLogging sharedLogging];
      v38 = objc_loadWeakRetained(&self->_accountInfoProvider);
      user4 = [v11 logHandleForAccountInfoProvider:v38];

      if (user4)
      {
        v24 = user4;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v39 = objc_opt_class();
          v34 = NSStringFromClass(v39);
          _sessionForLogging2 = [(CoreDAVTask *)self _sessionForLogging];
          _requestForLogging2 = [(CoreDAVTask *)self _requestForLogging];
          *buf = 138413314;
          v245 = v34;
          v246 = 2048;
          selfCopy16 = self;
          v248 = 2048;
          v249 = _sessionForLogging2;
          v250 = 2048;
          v251 = _requestForLogging2;
          v252 = 2112;
          v253 = v234;
          _os_log_impl(&dword_2452FB000, v24, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] URL is invalid (%@)", buf, 0x34u);

          goto LABEL_23;
        }

        goto LABEL_24;
      }
    }

    else if (user4)
    {
      v24 = user4;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        _sessionForLogging2 = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging3 = [(CoreDAVTask *)self _requestForLogging];
        v37 = objc_loadWeakRetained(&self->_accountInfoProvider);
        *buf = 138413570;
        v245 = v34;
        v246 = 2048;
        selfCopy16 = self;
        v248 = 2048;
        v249 = _sessionForLogging2;
        v250 = 2048;
        v251 = _requestForLogging3;
        v252 = 2112;
        v253 = v37;
        v254 = 2112;
        selfCopy17 = self;
        _os_log_impl(&dword_2452FB000, v24, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] accountInfoProvider [%@] had no username, task was: %@", buf, 0x3Eu);

        v5 = 0x278E30000;
LABEL_23:
      }

LABEL_24:
      user4 = v24;
      goto LABEL_25;
    }

LABEL_26:

LABEL_27:
    sharedLogging = [*(v5 + 2968) sharedLogging];
    v42 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v43 = [sharedLogging logHandleForAccountInfoProvider:v42];

    if (v43)
    {
      v44 = v43;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        _sessionForLogging3 = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging4 = [(CoreDAVTask *)self _requestForLogging];
        *buf = 138413314;
        v245 = v46;
        v246 = 2048;
        selfCopy16 = self;
        v248 = 2048;
        v249 = _sessionForLogging3;
        v250 = 2048;
        v251 = _requestForLogging4;
        v252 = 2112;
        v253 = v234;
        _os_log_impl(&dword_2452FB000, v44, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] URL: %@", buf, 0x34u);

        v5 = 0x278E30000uLL;
      }
    }

    v49 = objc_loadWeakRetained(&self->_accountInfoProvider);
    shouldFailAllTasks = [v49 shouldFailAllTasks];

    if (shouldFailAllTasks)
    {
      [(CoreDAVTask *)self _failImmediately];
LABEL_152:

      goto LABEL_153;
    }

    v241[0] = MEMORY[0x277D85DD0];
    v241[1] = 3221225472;
    v241[2] = __33__CoreDAVTask_performCoreDAVTask__block_invoke;
    v241[3] = &unk_278E30F18;
    v241[4] = self;
    v51 = v241;
    if (performCoreDAVTask_forcedTimeoutPredicate != -1)
    {
      dispatch_once(&performCoreDAVTask_forcedTimeoutPredicate, v51);
    }

    v52 = *&performCoreDAVTask_forcedTimeoutInterval;
    if (*&performCoreDAVTask_forcedTimeoutInterval >= 1.0)
    {
      [(CoreDAVTask *)self setTimeoutInterval:*&performCoreDAVTask_forcedTimeoutInterval];
    }

    sharedLogging2 = [*(v5 + 2968) sharedLogging];
    v54 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v55 = [sharedLogging2 logHandleForAccountInfoProvider:v54];

    if (v55)
    {
      v56 = v55;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        _sessionForLogging4 = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging5 = [(CoreDAVTask *)self _requestForLogging];
        [(CoreDAVTask *)self timeoutInterval];
        *buf = 138413314;
        v245 = v58;
        v246 = 2048;
        selfCopy16 = self;
        v248 = 2048;
        v249 = _sessionForLogging4;
        v250 = 2048;
        v251 = _requestForLogging5;
        v252 = 2048;
        v253 = v61;
        _os_log_impl(&dword_2452FB000, v56, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] Using timeout of %lf", buf, 0x34u);

        v5 = 0x278E30000uLL;
      }
    }

    httpMethod = [(CoreDAVTask *)self httpMethod];
    v63 = objc_alloc(MEMORY[0x277CBAB50]);
    cachePolicy = [(CoreDAVTask *)self cachePolicy];
    [(CoreDAVTask *)self timeoutInterval];
    v65 = [v63 initWithURL:v234 cachePolicy:cachePolicy timeoutInterval:?];
    v66 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v233 = httpMethod;
    if (objc_opt_respondsToSelector())
    {
      v67 = objc_loadWeakRetained(&self->_accountInfoProvider);
      shouldUseOpportunisticSockets = [v67 shouldUseOpportunisticSockets];

      if (shouldUseOpportunisticSockets)
      {
        sharedLogging3 = [*(v5 + 2968) sharedLogging];
        v70 = objc_loadWeakRetained(&self->_accountInfoProvider);
        v71 = [sharedLogging3 logHandleForAccountInfoProvider:v70];

        if (v71)
        {
          v72 = v71;
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            v73 = objc_opt_class();
            v74 = NSStringFromClass(v73);
            _sessionForLogging5 = [(CoreDAVTask *)self _sessionForLogging];
            _requestForLogging6 = [(CoreDAVTask *)self _requestForLogging];
            *buf = 138413058;
            v245 = v74;
            v246 = 2048;
            selfCopy16 = self;
            v248 = 2048;
            v249 = _sessionForLogging5;
            v250 = 2048;
            v251 = _requestForLogging6;
            _os_log_impl(&dword_2452FB000, v72, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Account requested an opportunistic socket.  Doing that", buf, 0x2Au);
          }
        }

        [v65 setNetworkServiceType:5];
        goto LABEL_54;
      }
    }

    else
    {
    }

    sharedLogging4 = [*(v5 + 2968) sharedLogging];
    v78 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v71 = [sharedLogging4 logHandleForAccountInfoProvider:v78];

    if (v71)
    {
      v79 = v71;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        v80 = objc_opt_class();
        v81 = NSStringFromClass(v80);
        _sessionForLogging6 = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging7 = [(CoreDAVTask *)self _requestForLogging];
        *buf = 138413058;
        v245 = v81;
        v246 = 2048;
        selfCopy16 = self;
        v248 = 2048;
        v249 = _sessionForLogging6;
        v250 = 2048;
        v251 = _requestForLogging7;
        _os_log_impl(&dword_2452FB000, v79, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Not using opportunistic sockets for task", buf, 0x2Au);
      }
    }

LABEL_54:
    v84 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v85 = objc_opt_respondsToSelector();
    v232 = v4;
    if ((v85 & 1) != 0 && (v71 = objc_loadWeakRetained(&self->_accountInfoProvider), [v71 getAppleIDSession], (v86 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v87 = objc_loadWeakRetained(&self->_accountInfoProvider);
      password = [v87 password];
      v89 = [password length];

      if (v85)
      {
      }

      if (v89)
      {
        v90 = 0;
        goto LABEL_62;
      }
    }

    [v65 _setProperty:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CBAF18]];
    v90 = 1;
LABEL_62:
    v239 = 0u;
    v240 = 0u;
    v237 = 0u;
    v238 = 0u;
    v91 = self->_requestProperties;
    v92 = [(NSDictionary *)v91 countByEnumeratingWithState:&v237 objects:v243 count:16];
    if (v92)
    {
      v93 = v92;
      v94 = *v238;
      do
      {
        for (i = 0; i != v93; ++i)
        {
          if (*v238 != v94)
          {
            objc_enumerationMutation(v91);
          }

          v96 = *(*(&v237 + 1) + 8 * i);
          v97 = [(NSDictionary *)self->_requestProperties objectForKey:v96];
          [v65 _setProperty:v97 forKey:v96];
        }

        v93 = [(NSDictionary *)v91 countByEnumeratingWithState:&v237 objects:v243 count:16];
      }

      while (v93);
    }

    [v65 setHTTPMethod:httpMethod];
    requestBodyStream = [(CoreDAVTask *)self requestBodyStream];
    if (requestBodyStream)
    {
      [v65 setHTTPBodyStream:requestBodyStream];
      _createBodyData = 0;
    }

    else
    {
      _createBodyData = [(CoreDAVTask *)self _createBodyData];
      [v65 setHTTPBody:_createBodyData];
      if (-[CoreDAVTask _includeGeneralHeaders](self, "_includeGeneralHeaders") || [_createBodyData length])
      {
        v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(_createBodyData, "length")];
        [v65 setValue:v100 forHTTPHeaderField:@"Content-Length"];
      }

      if (!_createBodyData)
      {
LABEL_76:
        if ([(CoreDAVTask *)self _includeGeneralHeaders])
        {
          v101 = [objc_opt_class() stringFromDepth:{-[CoreDAVTask depth](self, "depth")}];
          if (v101)
          {
            [v65 setValue:v101 forHTTPHeaderField:@"Depth"];
          }

          scheme2 = [v234 scheme];
          v103 = [scheme2 isEqualToString:@"https"];

          if (v103)
          {
            v104 = objc_loadWeakRetained(&self->_accountInfoProvider);
            v105 = objc_opt_respondsToSelector();

            if (v105)
            {
              v106 = objc_loadWeakRetained(&self->_accountInfoProvider);
              v107 = [v106 shouldSendClientInfoHeaderForURL:v234];

              if (v107)
              {
                v108 = CDVAppleClientInfoString();
                [v65 setValue:v108 forHTTPHeaderField:@"X-Apple-Client-Info"];
              }
            }
          }
        }

        v109 = objc_loadWeakRetained(&self->_accountInfoProvider);
        userAgentHeader = [v109 userAgentHeader];

        if (userAgentHeader)
        {
          v111 = objc_loadWeakRetained(&self->_accountInfoProvider);
          userAgentHeader2 = [v111 userAgentHeader];
          [v65 setValue:userAgentHeader2 forHTTPHeaderField:@"User-Agent"];
        }

        else
        {
          v111 = CDVDefaultUserAgent();
          [v65 setValue:v111 forHTTPHeaderField:@"User-Agent"];
        }

        v235[0] = MEMORY[0x277D85DD0];
        v235[1] = 3221225472;
        v235[2] = __33__CoreDAVTask_performCoreDAVTask__block_invoke_149;
        v235[3] = &unk_278E311D0;
        v113 = v65;
        v236 = v113;
        v114 = MEMORY[0x245D68C20](v235);
        additionalHeaderValues = [(CoreDAVTask *)self additionalHeaderValues];
        [additionalHeaderValues enumerateKeysAndObjectsUsingBlock:v114];

        v116 = objc_loadWeakRetained(&self->_accountInfoProvider);
        v117 = objc_opt_respondsToSelector();

        if (v117)
        {
          v118 = objc_loadWeakRetained(&self->_accountInfoProvider);
          additionalHeaderValues2 = [v118 additionalHeaderValues];
          [additionalHeaderValues2 enumerateKeysAndObjectsUsingBlock:v114];
        }

        v120 = objc_loadWeakRetained(&self->_accountInfoProvider);
        v121 = objc_opt_respondsToSelector();

        if (v121)
        {
          v122 = objc_loadWeakRetained(&self->_accountInfoProvider);
          clientToken = [v122 clientToken];

          if ([clientToken length])
          {
            [v113 setValue:clientToken forHTTPHeaderField:@"X-ClientToken"];
          }
        }

        if (self->_ignoresGuardianRestrictions)
        {
          [v113 setValue:@"true" forHTTPHeaderField:@"X-mme-guardian-restricted-relaxed"];
        }

        v124 = objc_loadWeakRetained(&self->_accountInfoProvider);
        v125 = objc_opt_respondsToSelector();

        if ((v125 & 1) == 0)
        {
          v230 = 0;
LABEL_108:
          v141 = 0x278E30000;
          goto LABEL_116;
        }

        v126 = objc_loadWeakRetained(&self->_accountInfoProvider);
        oauthInfoProvider = [v126 oauthInfoProvider];

        v230 = oauthInfoProvider;
        if ((objc_opt_respondsToSelector() & 1) != 0 && [oauthInfoProvider oauthVariant] == 1)
        {
          v128 = v114;
          v129 = +[CoreDAVLogging sharedLogging];
          v130 = objc_loadWeakRetained(&self->_accountInfoProvider);
          v131 = [v129 logHandleForAccountInfoProvider:v130];

          if (v131)
          {
            v132 = v131;
            if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
            {
              v133 = objc_opt_class();
              NSStringFromClass(v133);
              v134 = v218 = requestBodyStream;
              [(CoreDAVTask *)self _sessionForLogging];
              v135 = v222 = _createBodyData;
              _requestForLogging8 = [(CoreDAVTask *)self _requestForLogging];
              *buf = 138413058;
              v245 = v134;
              v246 = 2048;
              selfCopy16 = self;
              v248 = 2048;
              v249 = v135;
              v250 = 2048;
              v251 = _requestForLogging8;
              _os_log_impl(&dword_2452FB000, v132, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Pre-authing with Bearer + OAuth2 token", buf, 0x2Au);

              _createBodyData = v222;
              requestBodyStream = v218;
            }
          }

          oauth2Token = [v230 oauth2Token];
          v138 = [oauth2Token length];
          v139 = v138 != 0;
          if (v138)
          {
            v137 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bearer %@", oauth2Token];
            [v113 setValue:v137 forHTTPHeaderField:@"Authorization"];
          }

          v114 = v128;
        }

        else
        {
          v139 = 0;
        }

        if ((v90 | v139))
        {
          goto LABEL_108;
        }

        v223 = _createBodyData;
        v142 = requestBodyStream;
        cDVStringByRemovingPercentEscapesForHREF = objc_loadWeakRetained(&self->_accountInfoProvider);
        user5 = [cDVStringByRemovingPercentEscapesForHREF user];
        v141 = 0x278E30000uLL;
        if ([user5 length])
        {
          v226 = v114;
          v144 = objc_loadWeakRetained(&self->_accountInfoProvider);
          password2 = [v144 password];
          if ([password2 length])
          {
            scheme3 = [v234 scheme];
            v148 = [scheme3 isEqualToString:@"https"];

            if (!v148)
            {
              requestBodyStream = v142;
              _createBodyData = v223;
              v114 = v226;
LABEL_116:
              if (self->_requestIsCompressed)
              {
                [v113 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
                [v113 setValue:@"no-transform" forHTTPHeaderField:@"Cache-Control"];
              }

              [(NSMutableDictionary *)self->_overriddenHeaders enumerateKeysAndObjectsUsingBlock:v114];
              v156 = objc_loadWeakRetained(&self->_accountInfoProvider);
              identityPersist = [v156 identityPersist];

              if (identityPersist)
              {
                v158 = _createBodyData;
                v227 = v114;
                sharedLogging5 = [*(v141 + 2968) sharedLogging];
                v160 = objc_loadWeakRetained(&self->_accountInfoProvider);
                v161 = [sharedLogging5 logHandleForAccountInfoProvider:v160];

                if (v161)
                {
                  v162 = v113;
                  v163 = identityPersist;
                  v164 = v161;
                  if (os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
                  {
                    v165 = objc_opt_class();
                    NSStringFromClass(v165);
                    v219 = requestBodyStream;
                    v166 = v224 = v158;
                    _sessionForLogging7 = [(CoreDAVTask *)self _sessionForLogging];
                    _requestForLogging9 = [(CoreDAVTask *)self _requestForLogging];
                    *buf = 138413058;
                    v245 = v166;
                    v246 = 2048;
                    selfCopy16 = self;
                    v248 = 2048;
                    v249 = _sessionForLogging7;
                    v250 = 2048;
                    v251 = _requestForLogging9;
                    _os_log_impl(&dword_2452FB000, v164, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Found identity, attaching client certificate", buf, 0x2Au);

                    requestBodyStream = v219;
                    v158 = v224;
                  }

                  identityPersist = v163;
                  v113 = v162;
                }

                v169 = _CoreDAVSecCopyIdentityFromPersist(identityPersist);
                if (v169)
                {
                  v170 = v169;
                  v216 = identityPersist;
                  v171 = _CoreDAVSecIdentityCopySSLClientAuthenticationChain(v169);
                  v114 = v227;
                  if (v171)
                  {
                    v172 = v171;
                    v173 = [(CoreDAVTask *)self _applyAuthenticationChain:v171 toRequest:v113];

                    CFRelease(v172);
                    v113 = v173;
                  }

                  else
                  {
                    v220 = requestBodyStream;
                    sharedLogging6 = [*(v141 + 2968) sharedLogging];
                    v175 = objc_loadWeakRetained(&self->_accountInfoProvider);
                    v176 = [sharedLogging6 logHandleForAccountInfoProvider:v175];

                    if (v176)
                    {
                      v177 = v176;
                      if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
                      {
                        v178 = objc_opt_class();
                        v215 = NSStringFromClass(v178);
                        _sessionForLogging8 = [(CoreDAVTask *)self _sessionForLogging];
                        _requestForLogging10 = [(CoreDAVTask *)self _requestForLogging];
                        *buf = 138413314;
                        v245 = v215;
                        v246 = 2048;
                        selfCopy16 = self;
                        v248 = 2048;
                        v249 = _sessionForLogging8;
                        v181 = _sessionForLogging8;
                        v250 = 2048;
                        v182 = _requestForLogging10;
                        v251 = _requestForLogging10;
                        v252 = 2112;
                        v253 = v170;
                        _os_log_impl(&dword_2452FB000, v177, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] No auth chain for sec identity %@", buf, 0x34u);
                      }
                    }

                    requestBodyStream = v220;
                    v114 = v227;
                  }

                  CFRelease(v170);
                  _createBodyData = v158;
                  identityPersist = v216;
                }

                else
                {
                  v114 = v227;
                  _createBodyData = v158;
                }
              }

              v183 = objc_loadWeakRetained(&self->_accountInfoProvider);
              v184 = objc_opt_respondsToSelector();

              if (v184)
              {
                v185 = objc_loadWeakRetained(&self->_accountInfoProvider);
                v186 = [v185 shouldHandleHTTPCookiesForURL:v234];

                [v113 setHTTPShouldHandleCookies:v186];
                if (v186)
                {
                  v187 = objc_loadWeakRetained(&self->_accountInfoProvider);
                  v188 = objc_opt_respondsToSelector();

                  if (v188)
                  {
                    v189 = objc_loadWeakRetained(&self->_accountInfoProvider);
                    copyStorageSession = [v189 copyStorageSession];

                    if (copyStorageSession)
                    {
                      v221 = requestBodyStream;
                      v225 = _createBodyData;
                      v191 = v114;
                      sharedLogging7 = [*(v141 + 2968) sharedLogging];
                      v193 = objc_loadWeakRetained(&self->_accountInfoProvider);
                      v194 = [sharedLogging7 logHandleForAccountInfoProvider:v193];

                      if (v194)
                      {
                        v228 = v113;
                        v217 = identityPersist;
                        v195 = v194;
                        if (os_log_type_enabled(v195, OS_LOG_TYPE_INFO))
                        {
                          v196 = objc_opt_class();
                          v197 = NSStringFromClass(v196);
                          _sessionForLogging9 = [(CoreDAVTask *)self _sessionForLogging];
                          _requestForLogging11 = [(CoreDAVTask *)self _requestForLogging];
                          *buf = 138413058;
                          v245 = v197;
                          v246 = 2048;
                          selfCopy16 = self;
                          v248 = 2048;
                          v249 = _sessionForLogging9;
                          v250 = 2048;
                          v251 = _requestForLogging11;
                          _os_log_impl(&dword_2452FB000, v195, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Account requested custom storage session.  Doing that", buf, 0x2Au);
                        }

                        identityPersist = v217;
                        v113 = v228;
                      }

                      v200 = [(CoreDAVTask *)self _applyStorageSession:copyStorageSession toRequest:v113];

                      CFRelease(copyStorageSession);
                      v113 = v200;
                      v114 = v191;
                      requestBodyStream = v221;
                      _createBodyData = v225;
                    }
                  }
                }
              }

              else
              {
                [v113 setHTTPShouldHandleCookies:0];
              }

              if (requestBodyStream)
              {
                v201 = requestBodyStream;
                sharedLogging8 = [*(v141 + 2968) sharedLogging];
                v203 = objc_loadWeakRetained(&self->_accountInfoProvider);
                v204 = [sharedLogging8 logHandleForAccountInfoProvider:v203];

                if (v204)
                {
                  v204 = v204;
                  if (!os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
                  {
LABEL_148:

                    goto LABEL_149;
                  }

                  v205 = objc_opt_class();
                  NSStringFromClass(v205);
                  v229 = v113;
                  v207 = v206 = identityPersist;
                  [(CoreDAVTask *)self _sessionForLogging];
                  v209 = v208 = v114;
                  _requestForLogging12 = [(CoreDAVTask *)self _requestForLogging];
                  *buf = 138413058;
                  v245 = v207;
                  v246 = 2048;
                  selfCopy16 = self;
                  v248 = 2048;
                  v249 = v209;
                  v250 = 2048;
                  v251 = _requestForLogging12;
                  v211 = "[%@ %p, sess %p, request %p] Outgoing request body is streamed";
LABEL_147:
                  _os_log_impl(&dword_2452FB000, v204, OS_LOG_TYPE_DEBUG, v211, buf, 0x2Au);

                  v114 = v208;
                  identityPersist = v206;
                  v113 = v229;
                  goto LABEL_148;
                }
              }

              else
              {
                if ([_createBodyData bytes])
                {
                  goto LABEL_151;
                }

                v201 = 0;
                sharedLogging8 = [*(v141 + 2968) sharedLogging];
                v213 = objc_loadWeakRetained(&self->_accountInfoProvider);
                v204 = [sharedLogging8 logHandleForAccountInfoProvider:v213];

                if (v204)
                {
                  v204 = v204;
                  if (!os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_148;
                  }

                  v214 = objc_opt_class();
                  NSStringFromClass(v214);
                  v229 = v113;
                  v207 = v206 = identityPersist;
                  [(CoreDAVTask *)self _sessionForLogging];
                  v209 = v208 = v114;
                  _requestForLogging12 = [(CoreDAVTask *)self _requestForLogging];
                  *buf = 138413058;
                  v245 = v207;
                  v246 = 2048;
                  selfCopy16 = self;
                  v248 = 2048;
                  v249 = v209;
                  v250 = 2048;
                  v251 = _requestForLogging12;
                  v211 = "[%@ %p, sess %p, request %p] Outgoing request body is empty";
                  goto LABEL_147;
                }
              }

LABEL_149:

              requestBodyStream = v201;
LABEL_151:
              [v113 _setNonAppInitiated:1];
              [(CoreDAVTask *)self loadRequest:v113];

              v4 = v232;
              goto LABEL_152;
            }

            v149 = objc_loadWeakRetained(&self->_accountInfoProvider);
            user6 = [v149 user];
            cDVStringByRemovingPercentEscapesForHREF = [user6 CDVStringByRemovingPercentEscapesForHREF];

            v151 = MEMORY[0x277CCACA8];
            v152 = objc_loadWeakRetained(&self->_accountInfoProvider);
            password3 = [v152 password];
            v153 = [v151 stringWithFormat:@"%@:%@", cDVStringByRemovingPercentEscapesForHREF, password3];
            v155 = [v153 dataUsingEncoding:4];
            user5 = [v155 base64EncodedStringWithOptions:0];

            v144 = [MEMORY[0x277CCACA8] stringWithFormat:@"Basic %@", user5];
            [v113 setValue:v144 forHTTPHeaderField:@"Authorization"];
            v141 = 0x278E30000;
          }

          else
          {
          }

          v114 = v226;
        }

        requestBodyStream = v142;
        _createBodyData = v223;
        goto LABEL_116;
      }
    }

    [v65 setValue:@"text/xml" forHTTPHeaderField:@"Content-Type"];
    goto LABEL_76;
  }

  v25 = +[CoreDAVLogging sharedLogging];
  v26 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v27 = [v25 logHandleForAccountInfoProvider:v26];

  if (v27)
  {
    v28 = v27;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      _sessionForLogging10 = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging13 = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413570;
      v245 = v30;
      v246 = 2048;
      selfCopy16 = self;
      v248 = 2048;
      v249 = _sessionForLogging10;
      v250 = 2048;
      v251 = _requestForLogging13;
      v252 = 2112;
      v253 = v4;
      v254 = 2112;
      selfCopy17 = self;
      _os_log_impl(&dword_2452FB000, v28, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Validation error: [%@], task: [%@]", buf, 0x3Eu);
    }
  }

  [(CoreDAVTask *)self finishCoreDAVTaskWithError:v4];
LABEL_153:

  v212 = *MEMORY[0x277D85DE8];
}

void __33__CoreDAVTask_performCoreDAVTask__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 doubleForKey:@"CoreDAVForcedTaskTimeoutInterval"];
  performCoreDAVTask_forcedTimeoutInterval = v3;

  v4 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 32);
      v12 = [v11 _sessionForLogging];
      v13 = [*(a1 + 32) _requestForLogging];
      v15 = 138413314;
      v16 = v10;
      v17 = 2048;
      v18 = v11;
      v19 = 2048;
      v20 = v12;
      v21 = 2048;
      v22 = v13;
      v23 = 2048;
      v24 = performCoreDAVTask_forcedTimeoutInterval;
      _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] Attempting to force a permanent CoreDAVTask timeout of [%lf]", &v15, 0x34u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_sendTimeSpentInNetworkingToProvider
{
  if (!self->_dateConnectionWentOut)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v4 = objc_opt_respondsToSelector();

  v5 = objc_loadWeakRetained(&self->_accountInfoProvider);
  if (v4)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_dateConnectionWentOut];
    [v5 noteTimeSpentInNetworking:self forTask:?];
LABEL_7:

    goto LABEL_8;
  }

  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v5 = objc_loadWeakRetained(&self->_accountInfoProvider);
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_dateConnectionWentOut];
    [v5 noteTimeSpentInNetworking:?];
    goto LABEL_7;
  }

LABEL_8:
  dateConnectionWentOut = self->_dateConnectionWentOut;
  self->_dateConnectionWentOut = 0;
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (![(CoreDAVTask *)self markAsFinished])
  {
    goto LABEL_16;
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_performCoreDAVTask object:0];
  [(CoreDAVTask *)self reportStatusWithError:errorCopy];
  if (!self->_didFinishLoading)
  {
    [(CoreDAVRequestLogger *)self->_logger finishCoreDAVResponse];
  }

  [(CoreDAVTask *)self setError:errorCopy];
  session = self->_session;
  if (session)
  {
    self->_didCancel = 1;
    [(NSURLSession *)session invalidateAndCancel];
    v6 = self->_session;
    self->_session = 0;
  }

  task = self->_task;
  self->_task = 0;

  request = self->_request;
  self->_request = 0;

  completionBlock = [(CoreDAVTask *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(CoreDAVTask *)self completionBlock];
    completionBlock2[2]();
LABEL_10:

    goto LABEL_11;
  }

  delegate = [(CoreDAVTask *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    completionBlock2 = [(CoreDAVTask *)self delegate];
    [completionBlock2 task:self didFinishWithError:errorCopy];
    goto LABEL_10;
  }

LABEL_11:
  [(CoreDAVTask *)self tearDownResources];
  v13 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v15 = [v13 logHandleForAccountInfoProvider:WeakRetained];

  if (v15)
  {
    v16 = v15;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
      uniqueID = self->_uniqueID;
      v24 = 138413570;
      v25 = v18;
      v26 = 2048;
      selfCopy = self;
      v28 = 2048;
      v29 = _sessionForLogging;
      v30 = 2048;
      v31 = _requestForLogging;
      v32 = 2114;
      v33 = uniqueID;
      v34 = 2112;
      v35 = errorCopy;
      _os_log_impl(&dword_2452FB000, v16, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] FinishCoreDAVTaskWithError [ID=%{public}@, error=%@]", &v24, 0x3Eu);
    }
  }

  [(CoreDAVTask *)self _sendTimeSpentInNetworkingToProvider];
  v22 = objc_loadWeakRetained(&self->_taskManager);
  [v22 coreDAVTaskDidFinish:self];

LABEL_16:
  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)isFinished
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  finished = selfCopy->_finished;
  objc_sync_exit(selfCopy);

  return finished;
}

- (BOOL)markAsFinished
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  finished = selfCopy->_finished;
  selfCopy->_finished = 1;
  objc_sync_exit(selfCopy);

  return !finished;
}

- (id)credentialForClientCertificateChallenge:(id)challenge
{
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    clientCertificateInfoProvider = 0;
    v9 = 0;
    goto LABEL_6;
  }

  v5 = objc_loadWeakRetained(&self->_accountInfoProvider);
  clientCertificateInfoProvider = [v5 clientCertificateInfoProvider];

  if (clientCertificateInfoProvider)
  {
    copySecIdentity = [clientCertificateInfoProvider copySecIdentity];
    if (copySecIdentity)
    {
      v8 = copySecIdentity;
      WeakRetained = [clientCertificateInfoProvider secCertificates];
      v9 = [objc_alloc(MEMORY[0x277CBAB80]) initWithIdentity:v8 certificates:WeakRetained persistence:1];
      CFRelease(v8);
LABEL_6:

      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (id)credentialForOAuthChallenge:(id)challenge
{
  challengeCopy = challenge;
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_accountInfoProvider);
    oauthInfoProvider = [v7 oauthInfoProvider];
  }

  else
  {
    oauthInfoProvider = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [oauthInfoProvider oauth2Token];
    protectionSpace = [challengeCopy protectionSpace];
    [protectionSpace realm];
    OAuth2 = _CFURLCredentialCreateOAuth2();
  }

  else
  {
    OAuth2 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && !OAuth2)
  {
    OAuth2 = [oauthInfoProvider newOAuth1CredentialForChallenge:challengeCopy];
  }

  if (OAuth2)
  {
    v11 = [objc_alloc(MEMORY[0x277CBAB80]) _initWithCFURLCredential:OAuth2];
    CFRelease(OAuth2);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_applyAuthenticationChain:(__CFArray *)chain toRequest:(id)request
{
  v35 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v9 = [v7 logHandleForAccountInfoProvider:WeakRetained];

  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
      v23 = 138413570;
      v24 = v12;
      v25 = 2048;
      selfCopy = self;
      v27 = 2048;
      v28 = _sessionForLogging;
      v29 = 2048;
      v30 = _requestForLogging;
      v31 = 2112;
      chainCopy = chain;
      v33 = 2112;
      v34 = requestCopy;
      _os_log_impl(&dword_2452FB000, v10, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Applying authentication chain %@ to request %@", &v23, 0x3Eu);
    }
  }

  [requestCopy _CFURLRequest];
  MutableCopy = CFURLRequestCreateMutableCopy();
  v16 = *MEMORY[0x277CBAE98];
  SSLProperties = CFURLRequestGetSSLProperties();
  if (SSLProperties)
  {
    Mutable = CFDictionaryCreateMutableCopy(0, 0, SSLProperties);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v19 = Mutable;
  CFDictionarySetValue(Mutable, v16, chain);
  CFURLRequestSetSSLProperties();
  CFRelease(v19);
  v20 = [objc_alloc(MEMORY[0x277CBAB50]) _initWithCFURLRequest:MutableCopy];

  CFRelease(MutableCopy);
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_applyStorageSession:(__CFURLStorageSession *)session toRequest:(id)request
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v9 = [v7 logHandleForAccountInfoProvider:WeakRetained];

  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
      v19 = 138413570;
      v20 = v12;
      v21 = 2048;
      selfCopy = self;
      v23 = 2048;
      v24 = _sessionForLogging;
      v25 = 2048;
      v26 = _requestForLogging;
      v27 = 2112;
      sessionCopy = session;
      v29 = 2112;
      v30 = requestCopy;
      _os_log_impl(&dword_2452FB000, v10, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] Applying storage session %@ to request %@", &v19, 0x3Eu);
    }
  }

  [requestCopy _CFURLRequest];
  MutableCopy = CFURLRequestCreateMutableCopy();
  _CFURLRequestSetStorageSession();
  v16 = [objc_alloc(MEMORY[0x277CBAB50]) _initWithCFURLRequest:MutableCopy];

  CFRelease(MutableCopy);
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_handleBadPasswordResponse
{
  v44 = *MEMORY[0x277D85DE8];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __41__CoreDAVTask__handleBadPasswordResponse__block_invoke;
  v33[3] = &unk_278E311F8;
  v33[4] = self;
  v3 = MEMORY[0x245D68C20](v33, a2);
  responseHeaders = [(CoreDAVTask *)self responseHeaders];
  v5 = [responseHeaders CDVObjectForKeyCaseInsensitive:@"X-Web-Login-Required"];
  if (v5)
  {
    v6 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = +[CoreDAVLogging sharedLogging];
      v10 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v11 = [v9 logHandleForAccountInfoProvider:v10];

      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
          _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
          v17 = objc_loadWeakRetained(&self->_accountInfoProvider);
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          *buf = 138413314;
          v35 = v14;
          v36 = 2048;
          selfCopy2 = self;
          v38 = 2048;
          v39 = _sessionForLogging;
          v40 = 2048;
          v41 = _requestForLogging;
          v42 = 2114;
          v43 = v19;
          _os_log_impl(&dword_2452FB000, v12, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] XWebLoginRequired header defined. Invoking _accountInfoProvider - %{public}@ HandleWebLogin delegate", buf, 0x34u);
        }
      }

      [(CoreDAVTask *)self handleWebLoginRequestWithCompletionBlock:v3];
      goto LABEL_14;
    }
  }

  else
  {
  }

  v20 = +[CoreDAVLogging sharedLogging];
  v21 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v22 = [v20 logHandleForAccountInfoProvider:v21];

  if (v22)
  {
    v23 = v22;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      _sessionForLogging2 = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging2 = [(CoreDAVTask *)self _requestForLogging];
      v28 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138413314;
      v35 = v25;
      v36 = 2048;
      selfCopy2 = self;
      v38 = 2048;
      v39 = _sessionForLogging2;
      v40 = 2048;
      v41 = _requestForLogging2;
      v42 = 2114;
      v43 = v30;
      _os_log_impl(&dword_2452FB000, v23, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] _accountInfoProvider - %{public}@ Prompting User for Password. This may result in renewCredentials call.", buf, 0x34u);
    }
  }

  v31 = objc_loadWeakRetained(&self->_accountInfoProvider);
  [v31 promptUserForNewCoreDAVPasswordWithCompletionBlock:v3];

LABEL_14:
  v32 = *MEMORY[0x277D85DE8];
}

void __41__CoreDAVTask__handleBadPasswordResponse__block_invoke(uint64_t a1, int a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) isFinished];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = *(v5 + 120);
    *(v5 + 120) = 0;
    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((v5 + 8));
    [WeakRetained coreDAVTaskEndModal:*(a1 + 32)];

    if ((a2 - 1) >= 3)
    {
      if (!a2)
      {
        v24 = *(a1 + 32);
        v25 = *(v24 + 120);
        *(v24 + 120) = 0;

        v26 = +[CoreDAVLogging sharedLogging];
        v27 = objc_loadWeakRetained((*(a1 + 32) + 16));
        v28 = [v26 logHandleForAccountInfoProvider:v27];

        if (v28)
        {
          v29 = v28;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = *(a1 + 32);
            v31 = objc_opt_class();
            v32 = NSStringFromClass(v31);
            v33 = *(a1 + 32);
            v34 = [v33 _sessionForLogging];
            v35 = [*(a1 + 32) _requestForLogging];
            v36 = objc_loadWeakRetained((*(a1 + 32) + 16));
            v37 = objc_opt_class();
            v38 = NSStringFromClass(v37);
            *buf = 138413314;
            v44 = v32;
            v45 = 2048;
            v46 = v33;
            v47 = 2048;
            v48 = v34;
            v49 = 2048;
            v50 = v35;
            v51 = 2114;
            v52 = v38;
            _os_log_impl(&dword_2452FB000, v29, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] _accountInfoProvider %{public}@ User Entered New Password. Retrying Task.", buf, 0x34u);
          }
        }

        v39 = *(a1 + 32);
        v40 = CDVRunLoopModesToPerformDelayedSelectorsIn();
        [v39 performSelector:sel_performCoreDAVTask withObject:0 afterDelay:v40 inModes:0.0];
      }
    }

    else
    {
      v9 = *(*(a1 + 32) + 120);
      v10 = *(a1 + 32);
      v11 = *(v10 + 120);
      *(v10 + 120) = 0;

      v12 = +[CoreDAVLogging sharedLogging];
      v13 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v14 = [v12 logHandleForAccountInfoProvider:v13];

      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = *(a1 + 32);
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = *(a1 + 32);
          v42 = [v19 _sessionForLogging];
          v20 = [*(a1 + 32) _requestForLogging];
          v21 = objc_loadWeakRetained((*(a1 + 32) + 16));
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          *buf = 138413314;
          v44 = v18;
          v45 = 2048;
          v46 = v19;
          v47 = 2048;
          v48 = v42;
          v49 = 2048;
          v50 = v20;
          v51 = 2114;
          v52 = v23;
          _os_log_impl(&dword_2452FB000, v15, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] _accountInfoProvider %{public}@ User either Cancelled/Rejected prompt or System can not prompt for password. Finishing Task.", buf, 0x34u);
        }
      }

      [*(a1 + 32) finishCoreDAVTaskWithError:v9];
    }

    v41 = *MEMORY[0x277D85DE8];
  }
}

- (void)_runOnCallbackThread:(id)thread
{
  callbackThread = self->_callbackThread;
  if (callbackThread)
  {
    v6 = MEMORY[0x245D68C20](thread, a2);
    [(CoreDAVTask *)self performSelector:sel__runOnThisThread_ onThread:callbackThread withObject:v6 waitUntilDone:0];
  }

  else
  {
    v5 = *(thread + 2);

    v5(thread);
  }
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy)
  {
    v6 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
    v8 = [v6 logHandleForAccountInfoProvider:WeakRetained];

    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
        v15 = 138413314;
        v16 = v11;
        v17 = 2048;
        selfCopy = self;
        v19 = 2048;
        v20 = _sessionForLogging;
        v21 = 2048;
        v22 = _requestForLogging;
        v23 = 2112;
        v24 = errorCopy;
        _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] session invalidated with error %@", &v15, 0x34u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__CoreDAVTask_URLSession_didReceiveChallenge_completionHandler___block_invoke;
  v11[3] = &unk_278E31220;
  v11[4] = self;
  v12 = challengeCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = challengeCopy;
  [(CoreDAVTask *)self _runOnCallbackThread:v11];
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  taskCopy = task;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__CoreDAVTask_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke;
  v12[3] = &unk_278E31248;
  v13 = taskCopy;
  selfCopy = self;
  sentCopy = sent;
  sendCopy = send;
  v11 = taskCopy;
  [(CoreDAVTask *)self _runOnCallbackThread:v12];
}

void __87__CoreDAVTask_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 != v2[7])
  {
    v4 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = *(a1 + 40);
        v12 = [v11 _sessionForLogging];
        v13 = [*(a1 + 40) _requestForLogging];
        v14 = *(a1 + 32);
        v15 = *(*(a1 + 40) + 56);
        *buf = 138413570;
        v23 = v10;
        v24 = 2048;
        v25 = v11;
        v26 = 2048;
        v27 = v12;
        v28 = 2048;
        v29 = v13;
        v30 = 2048;
        v31 = v14;
        v32 = 2048;
        v33 = v15;
        _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Ignoring -URLSession:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend: callback for task %p because it doesn't match our current task, %p", buf, 0x3Eu);
      }
    }

    goto LABEL_7;
  }

  v17 = [v2 requestProgressBlock];
  if (!v17 || (*(a1 + 48) & 0x8000000000000000) != 0)
  {
    v20 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v18 = *(a1 + 56);

    if (v18 < 0)
    {
LABEL_7:
      v16 = *MEMORY[0x277D85DE8];
      return;
    }

    v21 = [*(a1 + 40) requestProgressBlock];
    (*(v21 + 16))(v21, *(a1 + 48), *(a1 + 56), 1);
    v19 = *MEMORY[0x277D85DE8];
    v17 = v21;
  }
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__CoreDAVTask_URLSession_task_didReceiveChallenge_completionHandler___block_invoke;
  v15[3] = &unk_278E31270;
  v16 = taskCopy;
  selfCopy = self;
  v18 = challengeCopy;
  v19 = handlerCopy;
  v12 = challengeCopy;
  v13 = handlerCopy;
  v14 = taskCopy;
  [(CoreDAVTask *)self _runOnCallbackThread:v15];
}

uint64_t __69__CoreDAVTask_URLSession_task_didReceiveChallenge_completionHandler___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == v2[7])
  {
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *MEMORY[0x277D85DE8];

    return [v2 _handleAuthenticationChallenge:v18 task:? completionHandler:?];
  }

  else
  {
    v4 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = *(a1 + 40);
        v12 = [v11 _sessionForLogging];
        v13 = [*(a1 + 40) _requestForLogging];
        v14 = *(a1 + 32);
        v15 = *(*(a1 + 40) + 56);
        v21 = 138413570;
        v22 = v10;
        v23 = 2048;
        v24 = v11;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        v29 = 2048;
        v30 = v14;
        v31 = 2048;
        v32 = v15;
        _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Ignoring -URLSession:task:didReceiveChallenge:completionHandler: callback for task %p because it doesn't match our current task, %p", &v21, 0x3Eu);
      }
    }

    result = (*(*(a1 + 56) + 16))();
    v17 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__CoreDAVTask_URLSession_dataTask_didReceiveData___block_invoke;
  v14[3] = &unk_278E31298;
  v15 = taskCopy;
  selfCopy = self;
  v17 = sessionCopy;
  v18 = dataCopy;
  v11 = dataCopy;
  v12 = sessionCopy;
  v13 = taskCopy;
  [(CoreDAVTask *)self _runOnCallbackThread:v14];
}

void __50__CoreDAVTask_URLSession_dataTask_didReceiveData___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == v2[7])
  {
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = *MEMORY[0x277D85DE8];

    [v2 _session:v17 dataTask:? didReceiveData:?];
  }

  else
  {
    v4 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = *(a1 + 40);
        v12 = [v11 _sessionForLogging];
        v13 = [*(a1 + 40) _requestForLogging];
        v14 = *(a1 + 32);
        v15 = *(*(a1 + 40) + 56);
        v20 = 138413570;
        v21 = v10;
        v22 = 2048;
        v23 = v11;
        v24 = 2048;
        v25 = v12;
        v26 = 2048;
        v27 = v13;
        v28 = 2048;
        v29 = v14;
        v30 = 2048;
        v31 = v15;
        _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Ignoring -URLSession:dataTask:didReceiveData: callback for task %p because it doesn't match our current task, %p", &v20, 0x3Eu);
      }
    }

    v16 = *MEMORY[0x277D85DE8];
  }
}

- (void)_session:(id)_session dataTask:(id)task didReceiveData:(id)data
{
  v114 = *MEMORY[0x277D85DE8];
  _sessionCopy = _session;
  taskCopy = task;
  dataCopy = data;
  fakeResponseData = self->_fakeResponseData;
  if (!fakeResponseData)
  {
LABEL_4:
    self->_didReceiveData = 1;
    v12 = +[CoreDAVLogging sharedLogging];
    v13 = [v12 shouldLogAtLevel:7 forAccountInfoProvider:0];

    v98 = taskCopy;
    if (v13)
    {
      v14 = +[CoreDAVLogging sharedLogging];
      WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
      v16 = [v14 logHandleForAccountInfoProvider:WeakRetained];

      if (v16)
      {
        v17 = v16;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
          _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
          *buf = 138413058;
          v101 = v19;
          v102 = 2048;
          selfCopy6 = self;
          v104 = 2048;
          v105 = _sessionForLogging;
          v106 = 2048;
          v107 = _requestForLogging;
          _os_log_impl(&dword_2452FB000, v17, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] didReceiveData", buf, 0x2Au);

          taskCopy = v98;
        }
      }

      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
      v23 = +[CoreDAVLogging sharedLogging];
      v24 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v25 = [v23 logHandleForAccountInfoProvider:v24];

      if (v25)
      {
        v26 = v25;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          _sessionForLogging2 = [(CoreDAVTask *)self _sessionForLogging];
          _requestForLogging2 = [(CoreDAVTask *)self _requestForLogging];
          *buf = 138413314;
          v101 = v28;
          v102 = 2048;
          selfCopy6 = self;
          v104 = 2048;
          v105 = _sessionForLogging2;
          v106 = 2048;
          v107 = _requestForLogging2;
          v108 = 2112;
          v109 = v22;
          _os_log_impl(&dword_2452FB000, v26, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] That data is %@", buf, 0x34u);

          taskCopy = v98;
        }
      }
    }

    [(CoreDAVTask *)self setTotalBytesReceived:[(CoreDAVTask *)self totalBytesReceived]+ [(NSData *)dataCopy length]];
    expectedContentLength = [(NSHTTPURLResponse *)self->_response expectedContentLength];
    responseProgressBlock = [(CoreDAVTask *)self responseProgressBlock];
    if (responseProgressBlock)
    {
      if (expectedContentLength == -1)
      {

        v33 = 0;
      }

      else
      {

        v33 = expectedContentLength;
        if ((expectedContentLength & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }
      }

      responseProgressBlock2 = [(CoreDAVTask *)self responseProgressBlock];
      (responseProgressBlock2)[2](responseProgressBlock2, [(CoreDAVTask *)self totalBytesReceived], v33, expectedContentLength != -1);
    }

    if (expectedContentLength == -1)
    {
      v35 = +[CoreDAVLogging sharedLogging];
      v44 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v37 = [v35 logHandleForAccountInfoProvider:v44];

      if (v37)
      {
        v37 = v37;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v45 = objc_opt_class();
          v39 = NSStringFromClass(v45);
          _sessionForLogging3 = [(CoreDAVTask *)self _sessionForLogging];
          _requestForLogging3 = [(CoreDAVTask *)self _requestForLogging];
          v47 = [(NSData *)dataCopy length];
          totalBytesReceived = [(CoreDAVTask *)self totalBytesReceived];
          *buf = 138413570;
          v101 = v39;
          v102 = 2048;
          selfCopy6 = self;
          v104 = 2048;
          v105 = _sessionForLogging3;
          v106 = 2048;
          v107 = _requestForLogging3;
          v108 = 2048;
          v109 = v47;
          taskCopy = v98;
          v110 = 2048;
          v111 = totalBytesReceived;
          _os_log_impl(&dword_2452FB000, v37, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] didReceiveData: %lu new bytes, have received a total of %lld, no information on expected total", buf, 0x3Eu);

          goto LABEL_28;
        }

LABEL_29:
      }

LABEL_30:

LABEL_31:
      if (self->_task != taskCopy)
      {
        [CoreDAVTask _session:dataTask:didReceiveData:];
      }

      if ([(CoreDAVTask *)self shouldLogResponseBody])
      {
        [(CoreDAVRequestLogger *)self->_logger logCoreDAVResponseSnippet:dataCopy withTaskIdentifier:0 isBody:1];
      }

      allHeaderFields = [(NSHTTPURLResponse *)self->_response allHeaderFields];
      v50 = [allHeaderFields valueForKey:@"Content-Type"];

      if ([(CoreDAVTask *)self _shouldHandleStatusCode:[(NSHTTPURLResponse *)self->_response statusCode]])
      {
        v51 = [CoreDAVXMLParser canHandleContentType:v50];
      }

      else
      {
        v51 = 0;
      }

      responseBodyParser = [(CoreDAVTask *)self responseBodyParser];

      if (!responseBodyParser)
      {
        v53 = [(CoreDAVTask *)self copyDefaultParserForContentType:v50];
        [(CoreDAVTask *)self setResponseBodyParser:v53];
        responseBodyParser2 = [(CoreDAVTask *)self responseBodyParser];

        if (!responseBodyParser2)
        {
          if (v51)
          {
            v55 = [[CoreDAVXMLParser alloc] initWithRootElementNameSpace:0 name:0 parseClass:0 baseURL:0];
          }

          else
          {
            v55 = objc_alloc_init(CoreDAVNullParser);
          }

          v56 = v55;

          [(CoreDAVTask *)self setResponseBodyParser:v56];
          v53 = v56;
        }
      }

      responseBodyParser3 = [(CoreDAVTask *)self responseBodyParser];
      v58 = responseBodyParser3 != 0;

      v59 = objc_autoreleasePoolPush();
      v60 = [(NSData *)dataCopy length];
      v61 = v60;
      if (v60 > 0x1000 && responseBodyParser3)
      {
        v93 = v50;
        v95 = v59;
        v96 = _sessionCopy;
        v62 = 0;
        v63 = -4096;
        do
        {
          v64 = objc_autoreleasePoolPush();
          v65 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:-[NSData bytes](dataCopy length:"bytes") + v62 freeWhenDone:{4096, 0}];
          if (AnalyticsIsEventUsed() && ![(CoreDAVTask *)self totalBytesWasProcessedAsAbnormallyLarge]&& [(CoreDAVTask *)self totalBytesReceived]>= 0x40000001)
          {
            AnalyticsSendEventLazy();
            [(CoreDAVTask *)self setTotalBytesWasProcessedAsAbnormallyLarge:1];
          }

          responseBodyParser4 = [(CoreDAVTask *)self responseBodyParser];
          v58 = [responseBodyParser4 processData:v65 forTask:self];

          v62 += 4096;
          objc_autoreleasePoolPop(v64);
          if (v61 + v63 <= 0x1000)
          {
            break;
          }

          v63 -= 4096;
        }

        while ((v58 & 1) != 0);
        v59 = v95;
        _sessionCopy = v96;
        taskCopy = v98;
        v50 = v93;
        if (((v61 != v62) & v58) != 0)
        {
          if (v62)
          {
            responseBodyParser6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:-[NSData bytes](dataCopy length:"bytes") + v62 freeWhenDone:{v61 - v62, 0}];
            responseBodyParser5 = [(CoreDAVTask *)self responseBodyParser];
            v58 = [responseBodyParser5 processData:responseBodyParser6 forTask:self];

            v59 = v95;
LABEL_60:

            goto LABEL_61;
          }

LABEL_59:
          responseBodyParser6 = [(CoreDAVTask *)self responseBodyParser];
          v58 = [responseBodyParser6 processData:dataCopy forTask:self];
          goto LABEL_60;
        }
      }

      else if (v60 && responseBodyParser3)
      {
        goto LABEL_59;
      }

LABEL_61:
      objc_autoreleasePoolPop(v59);
      if (v51 && ([(CoreDAVTask *)self responseBodyParser], v69 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v69, (isKindOfClass & 1) != 0))
      {
        if ((v58 & 1) == 0)
        {
          v71 = +[CoreDAVLogging sharedLogging];
          v72 = objc_loadWeakRetained(&self->_accountInfoProvider);
          v73 = [v71 logHandleForAccountInfoProvider:v72];

          if (v73)
          {
            v74 = v73;
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v75 = objc_opt_class();
              v76 = NSStringFromClass(v75);
              _sessionForLogging4 = [(CoreDAVTask *)self _sessionForLogging];
              _requestForLogging4 = [(CoreDAVTask *)self _requestForLogging];
              [(CoreDAVTask *)self responseBodyParser];
              v79 = v94 = v50;
              parserError = [v79 parserError];
              *buf = 138413314;
              v101 = v76;
              v102 = 2048;
              selfCopy6 = self;
              v104 = 2048;
              v105 = _sessionForLogging4;
              v106 = 2048;
              v107 = _requestForLogging4;
              v108 = 2112;
              v109 = parserError;
              _os_log_impl(&dword_2452FB000, v74, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Parser failed to parse XML body of response %@", buf, 0x34u);

              v50 = v94;
              taskCopy = v98;
            }
          }

LABEL_75:
        }
      }

      else if ((v58 & 1) == 0)
      {
        v81 = +[CoreDAVLogging sharedLogging];
        v82 = objc_loadWeakRetained(&self->_accountInfoProvider);
        v83 = [v81 logHandleForAccountInfoProvider:v82];

        if (v83)
        {
          v84 = v83;
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            v85 = objc_opt_class();
            v86 = NSStringFromClass(v85);
            _sessionForLogging5 = [(CoreDAVTask *)self _sessionForLogging];
            _requestForLogging5 = [(CoreDAVTask *)self _requestForLogging];
            [(CoreDAVTask *)self responseBodyParser];
            v97 = _sessionCopy;
            v90 = v89 = v50;
            parserError2 = [v90 parserError];
            *buf = 138413314;
            v101 = v86;
            v102 = 2048;
            selfCopy6 = self;
            v104 = 2048;
            v105 = _sessionForLogging5;
            v106 = 2048;
            v107 = _requestForLogging5;
            v108 = 2112;
            v109 = parserError2;
            _os_log_impl(&dword_2452FB000, v84, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Parser failed to parse with error %@", buf, 0x34u);

            v50 = v89;
            _sessionCopy = v97;

            taskCopy = v98;
          }
        }

        v71 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:3 userInfo:0];
        [(CoreDAVTask *)self finishCoreDAVTaskWithError:v71];
        goto LABEL_75;
      }

      goto LABEL_77;
    }

LABEL_21:
    if ([(NSData *)dataCopy length]>= expectedContentLength)
    {
      goto LABEL_31;
    }

    v35 = +[CoreDAVLogging sharedLogging];
    v36 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v37 = [v35 logHandleForAccountInfoProvider:v36];

    if (v37)
    {
      v37 = v37;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        _sessionForLogging3 = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging6 = [(CoreDAVTask *)self _requestForLogging];
        v42 = [(NSData *)dataCopy length];
        totalBytesReceived2 = [(CoreDAVTask *)self totalBytesReceived];
        *buf = 138413826;
        v101 = v39;
        v102 = 2048;
        selfCopy6 = self;
        v104 = 2048;
        v105 = _sessionForLogging3;
        v106 = 2048;
        v107 = _requestForLogging6;
        v108 = 2048;
        v109 = v42;
        v110 = 2048;
        v111 = totalBytesReceived2;
        v112 = 2048;
        v113 = expectedContentLength;
        _os_log_impl(&dword_2452FB000, v37, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] didReceiveData: %lu new bytes, now received %lu/%lld total", buf, 0x48u);

        taskCopy = v98;
LABEL_28:

        goto LABEL_29;
      }

      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (!self->_haveParsedFakeResponseData)
  {
    v11 = fakeResponseData;

    self->_haveParsedFakeResponseData = 1;
    dataCopy = v11;
    goto LABEL_4;
  }

LABEL_77:

  v92 = *MEMORY[0x277D85DE8];
}

id __48__CoreDAVTask__session_dataTask_didReceiveData___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) responseHeaders];
  v4 = [v3 objectForKeyedSubscript:@"Host"];
  [v2 setObject:v4 forKeyedSubscript:@"Host"];

  v5 = [*(a1 + 32) url];
  v6 = [v5 absoluteString];
  [v2 setObject:v6 forKeyedSubscript:@"URL"];

  return v2;
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  taskCopy = task;
  streamCopy = stream;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__CoreDAVTask_URLSession_task_needNewBodyStream___block_invoke;
  v11[3] = &unk_278E31220;
  v12 = taskCopy;
  selfCopy = self;
  v14 = streamCopy;
  v9 = streamCopy;
  v10 = taskCopy;
  [(CoreDAVTask *)self _runOnCallbackThread:v11];
}

void __49__CoreDAVTask_URLSession_task_needNewBodyStream___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 56);
  v4 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

  if (v2 == v3)
  {
    if (v6)
    {
      v16 = v6;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 40);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = *(a1 + 40);
        v21 = [v20 _sessionForLogging];
        v22 = [*(a1 + 40) _requestForLogging];
        v23 = *(a1 + 40);
        v26 = 138413314;
        v27 = v19;
        v28 = 2048;
        v29 = v20;
        v30 = 2048;
        v31 = v21;
        v32 = 2048;
        v33 = v22;
        v34 = 2112;
        v35 = v23;
        _os_log_impl(&dword_2452FB000, v16, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Connection needs a new body stream, self %@", &v26, 0x34u);
      }
    }

    v24 = [*(a1 + 40) requestBodyStream];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = *(a1 + 40);
        v12 = [v11 _sessionForLogging];
        v13 = [*(a1 + 40) _requestForLogging];
        v14 = *(a1 + 32);
        v15 = *(*(a1 + 40) + 56);
        v26 = 138413570;
        v27 = v10;
        v28 = 2048;
        v29 = v11;
        v30 = 2048;
        v31 = v12;
        v32 = 2048;
        v33 = v13;
        v34 = 2048;
        v35 = v14;
        v36 = 2048;
        v37 = v15;
        _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Ignoring -URLSession:task:needNewBodyStream: callback for task %p because it doesn't match our current task, %p", &v26, 0x3Eu);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __87__CoreDAVTask_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke;
  v22[3] = &unk_278E312E8;
  v23 = taskCopy;
  selfCopy = self;
  v25 = sessionCopy;
  v26 = redirectionCopy;
  v27 = requestCopy;
  v28 = handlerCopy;
  v17 = requestCopy;
  v18 = redirectionCopy;
  v19 = sessionCopy;
  v20 = handlerCopy;
  v21 = taskCopy;
  [(CoreDAVTask *)self _runOnCallbackThread:v22];
}

uint64_t __87__CoreDAVTask_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == v2[7])
  {
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v22 = *MEMORY[0x277D85DE8];

    return [v2 _session:v18 task:? willPerformHTTPRedirection:? newRequest:? completionHandler:?];
  }

  else
  {
    v4 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = *(a1 + 40);
        v12 = [v11 _sessionForLogging];
        v13 = [*(a1 + 40) _requestForLogging];
        v14 = *(a1 + 32);
        v15 = *(*(a1 + 40) + 56);
        v23 = 138413570;
        v24 = v10;
        v25 = 2048;
        v26 = v11;
        v27 = 2048;
        v28 = v12;
        v29 = 2048;
        v30 = v13;
        v31 = 2048;
        v32 = v14;
        v33 = 2048;
        v34 = v15;
        _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Ignoring -URLSession:task:willPerformHTTPRedirection:newRequest:completionHandler: callback for task %p because it doesn't match our current task, %p", &v23, 0x3Eu);
      }
    }

    result = (*(*(a1 + 72) + 16))();
    v17 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (void)_session:(id)_session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v113 = *MEMORY[0x277D85DE8];
  _sessionCopy = _session;
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  self->_didSendRequest = 1;
  if (!redirectionCopy || [(CoreDAVTask *)self allowAutomaticRedirects])
  {
    v92 = taskCopy;
    p_request = &self->_request;
    v17 = [(NSURLRequest *)self->_request URL];
    scheme = [v17 scheme];
    if ([scheme hasPrefix:@"https"])
    {
      v19 = [requestCopy URL];
      scheme2 = [v19 scheme];
      v21 = [scheme2 hasPrefix:@"https"];

      if ((v21 & 1) == 0)
      {
        v22 = handlerCopy;
        (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_41:
        taskCopy = v92;
        goto LABEL_42;
      }
    }

    else
    {
    }

    v23 = [requestCopy mutableCopy];
    v24 = [requestCopy URL];
    host = [v24 host];
    v26 = [host length];

    if (v26)
    {
      WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
      user = [WeakRetained user];
      v29 = [v24 CDVURLWithUser:user];

      v30 = [v29 CDVURLWithPassword:0];

      v31 = v30;
      [v23 setURL:v30];
    }

    else
    {
      v41 = +[CoreDAVLogging sharedLogging];
      v42 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v43 = [v41 logHandleForAccountInfoProvider:v42];

      if (v43)
      {
        v44 = v43;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = objc_opt_class();
          v85 = NSStringFromClass(v45);
          _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
          [(CoreDAVTask *)self _requestForLogging];
          v46 = v89 = _sessionCopy;
          [(CoreDAVTask *)self url];
          v47 = v87 = v24;
          redirectHistory = self->_redirectHistory;
          *buf = 138413826;
          v96 = v85;
          v97 = 2048;
          selfCopy3 = self;
          v99 = 2048;
          v100 = _sessionForLogging;
          v101 = 2048;
          v102 = v46;
          v103 = 2112;
          v104 = v47;
          v105 = 2112;
          requestCopy2 = redirectHistory;
          v107 = 2112;
          v108 = v87;
          _os_log_impl(&dword_2452FB000, v44, OS_LOG_TYPE_ERROR, "[%@ %p, sess %p, request %p] Received redirect where request.url.host is empty, not setting user on the redirected URL. \nOriginal URL: %@\nRedirect history: %@\nRedirected to:%@  ", buf, 0x48u);

          v24 = v87;
          _sessionCopy = v89;
        }
      }

      v31 = v24;
    }

    v49 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v50 = objc_opt_respondsToSelector();

    if (v50)
    {
      v51 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v52 = [v51 shouldHandleHTTPCookiesForURL:v31];
    }

    else
    {
      v52 = 0;
    }

    [v23 setHTTPShouldHandleCookies:v52];
    hTTPBodyStream = [(NSURLRequest *)*p_request HTTPBodyStream];
    log = hTTPBodyStream;
    if (hTTPBodyStream)
    {
      [v23 setHTTPBodyStream:hTTPBodyStream];
    }

    else
    {
      hTTPBody = [(NSURLRequest *)*p_request HTTPBody];
      [v23 setHTTPBody:hTTPBody];
    }

    hTTPMethod = [(NSURLRequest *)*p_request HTTPMethod];
    [v23 setHTTPMethod:hTTPMethod];

    allHTTPHeaderFields = [(NSURLRequest *)*p_request allHTTPHeaderFields];
    [v23 setAllHTTPHeaderFields:allHTTPHeaderFields];

    if (redirectionCopy)
    {
      v86 = v31;
      v88 = v24;
      v57 = +[CoreDAVLogging sharedLogging];
      v58 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v59 = [v57 logHandleForAccountInfoProvider:v58];

      v90 = _sessionCopy;
      if (v59)
      {
        v60 = v59;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = objc_opt_class();
          v84 = NSStringFromClass(v61);
          _sessionForLogging2 = [(CoreDAVTask *)self _sessionForLogging];
          _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
          request = self->_request;
          *buf = 138414338;
          v96 = v84;
          v97 = 2048;
          selfCopy3 = self;
          v99 = 2048;
          v100 = _sessionForLogging2;
          v101 = 2048;
          v102 = _requestForLogging;
          v65 = _requestForLogging;
          v103 = 2112;
          v104 = v90;
          v105 = 2112;
          requestCopy2 = request;
          v107 = 2112;
          v108 = requestCopy;
          v109 = 2112;
          v110 = v23;
          v111 = 2112;
          v112 = redirectionCopy;
          _os_log_impl(&dword_2452FB000, v60, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Connection is getting redirected: [%@]\nInitial request: [%@]\nProposed request: [%@]\nReconstructed request: [%@]\nRedirect response: [%@]", buf, 0x5Cu);
        }
      }

      logger = self->_logger;
      v67 = MEMORY[0x277CCACA8];
      v68 = [v23 URL];
      v69 = [v67 stringWithFormat:@"REDIRECT: %@\n\n", v68];
      v70 = [v69 dataUsingEncoding:4];
      [(CoreDAVRequestLogger *)logger logCoreDAVResponseSnippet:v70 withTaskIdentifier:self->_uniqueID];

      if ([redirectionCopy statusCode] == 301)
      {
        v71 = self->_redirectHistory;
        if (!v71)
        {
          v72 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v73 = self->_redirectHistory;
          self->_redirectHistory = v72;

          v71 = self->_redirectHistory;
        }

        [(NSMutableArray *)v71 addObject:v86];
      }

      v74 = [requestCopy URL];
      host2 = [v74 host];
      v76 = [(NSURLRequest *)*p_request URL];
      host3 = [v76 host];
      v78 = [host2 isEqualToString:host3];

      v24 = v88;
      _sessionCopy = v90;
      v31 = v86;
      if ((v78 & 1) == 0)
      {
        *&self->_justTriedTokenAuth = 0;
      }
    }

    [(CoreDAVRequestLogger *)self->_logger finishCoreDAVResponse];
    objc_storeStrong(&self->_request, v23);
    hTTPBodyStream2 = [requestCopy HTTPBodyStream];
    v80 = redirectionCopy | hTTPBodyStream2;

    if (!v80)
    {
      requestBodyStream = [(CoreDAVTask *)self requestBodyStream];
      if (requestBodyStream)
      {
        [v23 setHTTPBodyStream:requestBodyStream];
      }
    }

    v22 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, v23);

    goto LABEL_41;
  }

  v32 = +[CoreDAVLogging sharedLogging];
  v33 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v34 = [v32 logHandleForAccountInfoProvider:v33];

  if (v34)
  {
    v35 = v34;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = objc_opt_class();
      NSStringFromClass(v36);
      v37 = v93 = taskCopy;
      _sessionForLogging3 = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging2 = [(CoreDAVTask *)self _requestForLogging];
      v40 = self->_request;
      *buf = 138414082;
      v96 = v37;
      v97 = 2048;
      selfCopy3 = self;
      v99 = 2048;
      v100 = _sessionForLogging3;
      v101 = 2048;
      v102 = _requestForLogging2;
      v103 = 2112;
      v104 = _sessionCopy;
      v105 = 2112;
      requestCopy2 = v40;
      v107 = 2112;
      v108 = requestCopy;
      v109 = 2112;
      v110 = redirectionCopy;
      _os_log_impl(&dword_2452FB000, v35, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Connection is getting redirected but automatic redirections are disabled.  Connection: [%@]\nInitial request: [%@]\nProposed request: [%@]\nRedirect response: [%@]", buf, 0x52u);

      taskCopy = v93;
    }
  }

  v22 = handlerCopy;
  (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_42:

  v82 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canAuthenticateAgainstProtectionSpace:(id)space
{
  v49 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  v5 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v7 = [v5 logHandleForAccountInfoProvider:WeakRetained];

  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413058;
      v36 = v10;
      v37 = 2048;
      selfCopy2 = self;
      v39 = 2048;
      v40 = _sessionForLogging;
      v41 = 2048;
      v42 = _requestForLogging;
      _os_log_impl(&dword_2452FB000, v8, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] _canAuthenticateAgainstProtectionSpace:", buf, 0x2Au);
    }
  }

  authenticationMethod = [spaceCopy authenticationMethod];
  v14 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v17 = [v16 handleAuthenticateAgainstProtectionSpace:spaceCopy];
LABEL_9:
    v18 = v17;

    goto LABEL_10;
  }

  if ([authenticationMethod isEqualToString:*MEMORY[0x277CBAAF8]])
  {
    v16 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v17 = objc_opt_respondsToSelector();
    goto LABEL_9;
  }

  if ([authenticationMethod isEqualToString:*MEMORY[0x277CBAB00]] & 1) != 0 || (objc_msgSend(authenticationMethod, "isEqualToString:", *MEMORY[0x277CBAAE0]))
  {
    v18 = 1;
  }

  else
  {
    v18 = [authenticationMethod isEqualToString:*MEMORY[0x277CBAAE8]];
  }

LABEL_10:
  v19 = +[CoreDAVLogging sharedLogging];
  v20 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v21 = [v19 logHandleForAccountInfoProvider:v20];

  if (v21)
  {
    v22 = v21;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      _sessionForLogging2 = [(CoreDAVTask *)self _sessionForLogging];
      [(CoreDAVTask *)self _requestForLogging];
      v25 = v34 = v18;
      v26 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      [MEMORY[0x277CCABB0] numberWithBool:v34 & 1];
      v29 = v33 = spaceCopy;
      *buf = 138413826;
      v36 = v24;
      v37 = 2048;
      selfCopy2 = self;
      v39 = 2048;
      v40 = _sessionForLogging2;
      v41 = 2048;
      v42 = v25;
      v43 = 2114;
      v44 = v28;
      v45 = 2114;
      v46 = authenticationMethod;
      v47 = 2114;
      v48 = v29;
      _os_log_impl(&dword_2452FB000, v22, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] _accountInfoProvider: (%{public}@) Can authenticate against protection space %{public}@? %{public}@", buf, 0x48u);

      spaceCopy = v33;
      v18 = v34;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

- (void)_didReceiveAuthenticationChallenge:(id)challenge forTask:(id)task completionHandler:(id)handler
{
  v147 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  taskCopy = task;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v11 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v13 = [v11 logHandleForAccountInfoProvider:WeakRetained];

  if (v13)
  {
    v14 = v13;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      NSStringFromClass(v15);
      v17 = v16 = authenticationMethod;
      _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413570;
      v136 = v17;
      v137 = 2048;
      selfCopy10 = self;
      v139 = 2048;
      v140 = _sessionForLogging;
      v141 = 2048;
      v142 = _requestForLogging;
      v143 = 2114;
      v144 = v16;
      v145 = 2048;
      previousFailureCount = [challengeCopy previousFailureCount];
      _os_log_impl(&dword_2452FB000, v14, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Received authentication challenge for method %{public}@, previous failure count %ld", buf, 0x3Eu);

      authenticationMethod = v16;
    }
  }

  failureResponse = [challengeCopy failureResponse];
  allHeaderFields = [failureResponse allHeaderFields];
  v22 = [allHeaderFields CDVObjectForKeyCaseInsensitive:@"X-ClientToken-Request"];
  if (!v22)
  {
    goto LABEL_13;
  }

  v23 = v22;
  v24 = authenticationMethod;
  v25 = objc_loadWeakRetained(&self->_accountInfoProvider);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_12:

    authenticationMethod = v24;
LABEL_13:

    goto LABEL_14;
  }

  v26 = objc_loadWeakRetained(&self->_accountInfoProvider);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_12;
  }

  v27 = objc_loadWeakRetained(&self->_accountInfoProvider);
  [v27 clientToken];
  v130 = challengeCopy;
  v29 = v28 = taskCopy;
  v126 = [v29 length];

  taskCopy = v28;
  challengeCopy = v130;

  authenticationMethod = v24;
  if (!v126)
  {
    v30 = objc_loadWeakRetained(&self->_accountInfoProvider);
    [v30 clientTokenRequestedByServer];

    v31 = objc_loadWeakRetained(&self->_accountInfoProvider);
    clientToken = [v31 clientToken];
    v33 = [clientToken length];

    if (v33)
    {
      self->_shouldRetryWithClientToken = 1;
LABEL_39:
      v51 = handlerCopy;
      (*(handlerCopy + 2))(handlerCopy, 2, 0);
      goto LABEL_27;
    }
  }

LABEL_14:
  if ([challengeCopy previousFailureCount])
  {
    v34 = 0x278E30000uLL;
    v35 = +[CoreDAVLogging sharedLogging];
    v36 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v37 = [v35 logHandleForAccountInfoProvider:v36];

    if (!v37)
    {
LABEL_20:

LABEL_21:
LABEL_22:
      sharedLogging = [*(v34 + 2968) sharedLogging];
      v44 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v45 = [sharedLogging logHandleForAccountInfoProvider:v44];

      if (v45)
      {
        v46 = v45;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          _sessionForLogging2 = [(CoreDAVTask *)self _sessionForLogging];
          _requestForLogging2 = [(CoreDAVTask *)self _requestForLogging];
          *buf = 138413058;
          v136 = v48;
          v137 = 2048;
          selfCopy10 = self;
          v139 = 2048;
          v140 = _sessionForLogging2;
          v141 = 2048;
          v142 = _requestForLogging2;
          _os_log_impl(&dword_2452FB000, v46, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] continuing without credential for challenge", buf, 0x2Au);
        }
      }

      v51 = handlerCopy;
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
      goto LABEL_27;
    }

    v38 = v37;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      _sessionForLogging3 = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging3 = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413315;
      v136 = v40;
      v137 = 2048;
      selfCopy10 = self;
      v139 = 2048;
      v140 = _sessionForLogging3;
      v141 = 2048;
      v142 = _requestForLogging3;
      v143 = 2113;
      v144 = challengeCopy;
      _os_log_impl(&dword_2452FB000, v38, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] ignoring challenge %{private}@ because it's already failed", buf, 0x34u);
    }

    v37 = v38;
LABEL_19:

    goto LABEL_20;
  }

  currentRequest = [taskCopy currentRequest];
  v54 = [currentRequest URL];

  scheme = [v54 scheme];
  v56 = [scheme isEqualToString:@"http"];
  v57 = MEMORY[0x277CBAAE0];
  v34 = 0x278E30000uLL;
  if (v56)
  {
    v58 = *MEMORY[0x277CBAAE0];
    v59 = [authenticationMethod isEqualToString:*MEMORY[0x277CBAAE0]];

    if (v59)
    {
      v60 = +[CoreDAVLogging sharedLogging];
      v61 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v62 = [v60 logHandleForAccountInfoProvider:v61];

      if (!v62)
      {
LABEL_34:

        v67 = +[CoreDAVLogging sharedLogging];
        v68 = objc_loadWeakRetained(&self->_accountInfoProvider);
        v69 = [v67 logHandleForAccountInfoProvider:v68];

        if (v69)
        {
          v70 = v69;
          if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
          {
            v71 = objc_opt_class();
            v72 = NSStringFromClass(v71);
            _sessionForLogging4 = [(CoreDAVTask *)self _sessionForLogging];
            _requestForLogging4 = [(CoreDAVTask *)self _requestForLogging];
            *buf = 138413058;
            v136 = v72;
            v137 = 2048;
            selfCopy10 = self;
            v139 = 2048;
            v140 = _sessionForLogging4;
            v141 = 2048;
            v142 = _requestForLogging4;
            _os_log_impl(&dword_2452FB000, v70, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Cancelling auth challenge", buf, 0x2Au);
          }
        }

        goto LABEL_39;
      }

      v62 = v62;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v63 = objc_opt_class();
        NSStringFromClass(v63);
        v64 = v127 = authenticationMethod;
        _sessionForLogging5 = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging5 = [(CoreDAVTask *)self _requestForLogging];
        *buf = 138413314;
        v136 = v64;
        v137 = 2048;
        selfCopy10 = self;
        v139 = 2048;
        v140 = _sessionForLogging5;
        v141 = 2048;
        v142 = _requestForLogging5;
        v143 = 2112;
        v144 = v54;
        _os_log_impl(&dword_2452FB000, v62, OS_LOG_TYPE_ERROR, "[%@ %p, sess %p, request %p] Cancelling authentication challenge for insecure connection using basic authentication for URL %@", buf, 0x34u);

        authenticationMethod = v127;
      }

LABEL_33:

      goto LABEL_34;
    }
  }

  else
  {

    v58 = *v57;
  }

  if (([authenticationMethod isEqualToString:v58] & 1) != 0 || objc_msgSend(authenticationMethod, "isEqualToString:", *MEMORY[0x277CBAAE8]))
  {
    v131 = v54;
    if (![(CoreDAVTask *)self _shouldCreateCredentialForBasicOrDigestAuthChallenge:challengeCopy])
    {
      proposedCredential = [challengeCopy proposedCredential];
      password = [proposedCredential password];
      v88 = [password length];

      if (v88)
      {
        v35 = v131;
        goto LABEL_21;
      }

      v37 = +[CoreDAVLogging sharedLogging];
      v100 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v38 = [v37 logHandleForAccountInfoProvider:v100];

      if (v38)
      {
        v129 = authenticationMethod;
        v101 = v38;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          v102 = objc_opt_class();
          v125 = NSStringFromClass(v102);
          _sessionForLogging6 = [(CoreDAVTask *)self _sessionForLogging];
          _requestForLogging6 = [(CoreDAVTask *)self _requestForLogging];
          v124 = objc_loadWeakRetained(&self->_accountInfoProvider);
          accountID = [v124 accountID];
          *buf = 138413314;
          v136 = v125;
          v137 = 2048;
          selfCopy10 = self;
          v139 = 2048;
          v140 = _sessionForLogging6;
          v141 = 2048;
          v142 = _requestForLogging6;
          v143 = 2114;
          v144 = accountID;
          _os_log_impl(&dword_2452FB000, v101, OS_LOG_TYPE_ERROR, "[%@ %p, sess %p, request %p] Got a credential challenge, but we don't have any credentials. This request will likely fail. accountID = %{public}@", buf, 0x34u);
        }

        authenticationMethod = v129;
      }

      v35 = v131;
      goto LABEL_19;
    }

    v75 = MEMORY[0x277CBAB80];
    v76 = objc_loadWeakRetained(&self->_accountInfoProvider);
    user = [v76 user];
    [user CDVStringByRemovingPercentEscapesForHREF];
    v79 = v78 = taskCopy;
    v80 = objc_loadWeakRetained(&self->_accountInfoProvider);
    [v80 password];
    selfCopy7 = self;
    v83 = v82 = authenticationMethod;
    v84 = [v75 credentialWithUser:v79 password:v83 persistence:1];

    authenticationMethod = v82;
    self = selfCopy7;
    v34 = 0x278E30000;

    taskCopy = v78;
    v85 = v84;

    v54 = v131;
    goto LABEL_53;
  }

  if ([authenticationMethod isEqualToString:*MEMORY[0x277CBAAF8]])
  {
    v89 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v90 = objc_opt_respondsToSelector();

    if (v90)
    {
      v91 = [(CoreDAVTask *)self credentialForOAuthChallenge:challengeCopy];
LABEL_52:
      v85 = v91;
LABEL_53:

      if (!v85)
      {
        goto LABEL_22;
      }

      sharedLogging2 = [*(v34 + 2968) sharedLogging];
      v93 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v94 = [sharedLogging2 logHandleForAccountInfoProvider:v93];

      if (v94)
      {
        v128 = authenticationMethod;
        v95 = v94;
        if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
        {
          v96 = objc_opt_class();
          v97 = NSStringFromClass(v96);
          _sessionForLogging7 = [(CoreDAVTask *)self _sessionForLogging];
          _requestForLogging7 = [(CoreDAVTask *)self _requestForLogging];
          *buf = 138413315;
          v136 = v97;
          v137 = 2048;
          selfCopy10 = self;
          v139 = 2048;
          v140 = _sessionForLogging7;
          v141 = 2048;
          v142 = _requestForLogging7;
          v143 = 2113;
          v144 = v85;
          _os_log_impl(&dword_2452FB000, v95, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Using credential %{private}@ for challenge", buf, 0x34u);
        }

        authenticationMethod = v128;
      }

      v51 = handlerCopy;
      (*(handlerCopy + 2))(handlerCopy, 0, v85);

      goto LABEL_27;
    }
  }

  if ([authenticationMethod isEqualToString:*MEMORY[0x277CBAAC8]])
  {
    v91 = [(CoreDAVTask *)self credentialForClientCertificateChallenge:challengeCopy];
    goto LABEL_52;
  }

  v105 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v106 = objc_opt_respondsToSelector();

  if ((v106 & 1) == 0)
  {
    v60 = +[CoreDAVLogging sharedLogging];
    v118 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v62 = [v60 logHandleForAccountInfoProvider:v118];

    if (!v62)
    {
      goto LABEL_34;
    }

    v62 = v62;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v119 = objc_opt_class();
      v120 = NSStringFromClass(v119);
      _sessionForLogging8 = [(CoreDAVTask *)self _sessionForLogging];
      [(CoreDAVTask *)self _requestForLogging];
      v122 = v132 = v54;
      *buf = 138413058;
      v136 = v120;
      v137 = 2048;
      selfCopy10 = self;
      v139 = 2048;
      v140 = _sessionForLogging8;
      v141 = 2048;
      v142 = v122;
      _os_log_impl(&dword_2452FB000, v62, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] AccountInfoProvider doesn't know how to handle a trust challenge, so we're just going to have to cancel.", buf, 0x2Au);

      v54 = v132;
    }

    goto LABEL_33;
  }

  v107 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v108 = [v107 handleTrustChallenge:challengeCopy completionHandler:handlerCopy];

  if (v108)
  {
    v109 = CDVRunLoopModesToPerformDelayedSelectorsIn();
    [(CoreDAVTask *)self performSelector:sel_performCoreDAVTask withObject:0 afterDelay:v109 inModes:0.0];
  }

  v110 = +[CoreDAVLogging sharedLogging];
  v111 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v112 = [v110 logHandleForAccountInfoProvider:v111];

  if (v112)
  {
    v113 = v112;
    if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
    {
      v114 = objc_opt_class();
      v115 = NSStringFromClass(v114);
      _sessionForLogging9 = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging8 = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413058;
      v136 = v115;
      v137 = 2048;
      selfCopy10 = self;
      v139 = 2048;
      v140 = _sessionForLogging9;
      v141 = 2048;
      v142 = _requestForLogging8;
      _os_log_impl(&dword_2452FB000, v113, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Waiting for runloop callback to decide what to do", buf, 0x2Au);
    }
  }

  v51 = handlerCopy;
LABEL_27:

  v52 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldCreateCredentialForBasicOrDigestAuthChallenge:(id)challenge
{
  challengeCopy = challenge;
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  password = [WeakRetained password];
  if ([password length])
  {
    v7 = objc_loadWeakRetained(&self->_accountInfoProvider);
    user = [v7 user];
    v9 = [user length];

    if (!v9)
    {
      LOBYTE(v14) = 0;
      goto LABEL_7;
    }

    proposedCredential = [challengeCopy proposedCredential];
    hasPassword = [proposedCredential hasPassword];

    WeakRetained = [challengeCopy proposedCredential];
    password = [WeakRetained password];
    v12 = objc_loadWeakRetained(&self->_accountInfoProvider);
    password2 = [v12 password];
    v14 = hasPassword & [password isEqualToString:password2] ^ 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

LABEL_7:
  return v14;
}

- (void)_handleAuthenticationChallenge:(id)challenge task:(id)task completionHandler:(id)handler
{
  v110 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  taskCopy = task;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v13 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v15 = [v13 logHandleForAccountInfoProvider:WeakRetained];

  if (v15)
  {
    v16 = v15;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = objc_opt_class();
      NSStringFromClass(v17);
      v94 = protectionSpace;
      v91 = handlerCopy;
      v18 = taskCopy;
      v20 = v19 = challengeCopy;
      [(CoreDAVTask *)self _sessionForLogging];
      v22 = v21 = authenticationMethod;
      _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413314;
      v101 = v20;
      v102 = 2048;
      selfCopy6 = self;
      v104 = 2048;
      v105 = v22;
      v106 = 2048;
      v107 = _requestForLogging;
      v108 = 2114;
      v109 = v21;
      _os_log_impl(&dword_2452FB000, v16, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] _handleAuthenticationChallenge:task:completionHandler: for auth mechanism %{public}@", buf, 0x34u);

      authenticationMethod = v21;
      challengeCopy = v19;
      taskCopy = v18;
      handlerCopy = v91;
      protectionSpace = v94;
    }
  }

  if (![(__CFString *)authenticationMethod isEqualToString:*MEMORY[0x277CBAB08]])
  {
    self->_justTriedTokenAuth = 0;
    if ([(CoreDAVTask *)self _canAuthenticateAgainstProtectionSpace:protectionSpace])
    {
      [(CoreDAVTask *)self _didReceiveAuthenticationChallenge:challengeCopy forTask:taskCopy completionHandler:handlerCopy];
      goto LABEL_34;
    }

    if (([(__CFString *)authenticationMethod isEqualToString:*MEMORY[0x277CBAB00]]& 1) != 0 || [(__CFString *)authenticationMethod isEqualToString:*MEMORY[0x277CBAAC8]])
    {
      handlerCopy[2](handlerCopy, 1, 0);
      goto LABEL_34;
    }

    goto LABEL_16;
  }

  v24 = +[CoreDAVLogging sharedLogging];
  v25 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v26 = [v24 logHandleForAccountInfoProvider:v25];

  v93 = authenticationMethod;
  if (v26)
  {
    v27 = v26;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
      [(CoreDAVTask *)self _requestForLogging];
      v95 = protectionSpace;
      v31 = handlerCopy;
      v32 = taskCopy;
      v34 = v33 = challengeCopy;
      *buf = 138413058;
      v101 = v29;
      v102 = 2048;
      selfCopy6 = self;
      v104 = 2048;
      v105 = _sessionForLogging;
      v106 = 2048;
      v107 = v34;
      _os_log_impl(&dword_2452FB000, v27, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] MobileMeAuth requested", buf, 0x2Au);

      challengeCopy = v33;
      taskCopy = v32;
      handlerCopy = v31;
      protectionSpace = v95;

      authenticationMethod = v93;
    }
  }

  if (self->_everTriedTokenAuth)
  {
    v35 = +[CoreDAVLogging sharedLogging];
    v36 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v37 = [v35 logHandleForAccountInfoProvider:v36];

    if (v37)
    {
      v38 = v37;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        _sessionForLogging2 = [(CoreDAVTask *)self _sessionForLogging];
        [(CoreDAVTask *)self _requestForLogging];
        v96 = protectionSpace;
        v42 = handlerCopy;
        v43 = taskCopy;
        v45 = v44 = challengeCopy;
        *buf = 138413058;
        v101 = v40;
        v102 = 2048;
        selfCopy6 = self;
        v104 = 2048;
        v105 = _sessionForLogging2;
        v106 = 2048;
        v107 = v45;
        _os_log_impl(&dword_2452FB000, v38, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Rejecting token auth because we've already tried it.", buf, 0x2Au);

        challengeCopy = v44;
        taskCopy = v43;
        handlerCopy = v42;
        protectionSpace = v96;

        authenticationMethod = v93;
      }
    }

LABEL_16:
    handlerCopy[2](handlerCopy, 3, 0);
    goto LABEL_34;
  }

  *&self->_justTriedTokenAuth = 257;
  v46 = objc_loadWeakRetained(&self->_accountInfoProvider);
  user = [v46 user];
  v48 = [user length];

  if (v48)
  {
    v49 = objc_loadWeakRetained(&self->_accountInfoProvider);
    user2 = [v49 user];

    v51 = objc_loadWeakRetained(&self->_accountInfoProvider);
    password = [v51 password];

    realm = [protectionSpace realm];
    v52 = +[CoreDAVLogging sharedLogging];
    v53 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v54 = [v52 logHandleForAccountInfoProvider:v53];

    authenticationMethod = v93;
    v89 = user2;
    if (v54)
    {
      v55 = v54;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        _sessionForLogging3 = [(CoreDAVTask *)self _sessionForLogging];
        [(CoreDAVTask *)self _requestForLogging];
        v97 = protectionSpace;
        v59 = handlerCopy;
        v60 = taskCopy;
        v62 = v61 = challengeCopy;
        *buf = 138413058;
        v101 = v57;
        v102 = 2048;
        selfCopy6 = self;
        v104 = 2048;
        v105 = _sessionForLogging3;
        v106 = 2048;
        v107 = v62;
        _os_log_impl(&dword_2452FB000, v55, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Creating mme token", buf, 0x2Au);

        challengeCopy = v61;
        taskCopy = v60;
        handlerCopy = v59;
        protectionSpace = v97;

        authenticationMethod = v93;
      }

      user2 = v89;
    }

    v88 = challengeCopy;

    v63 = *MEMORY[0x277CBECE8];
    XMobileMeAuthToken = _CFURLCredentialCreateXMobileMeAuthToken();
    v65 = [objc_alloc(MEMORY[0x277CBAB80]) _initWithCFURLCredential:XMobileMeAuthToken];
    CFRelease(XMobileMeAuthToken);
    (handlerCopy)[2](handlerCopy, 0, v65);
    v66 = +[CoreDAVLogging sharedLogging];
    v67 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v68 = [v66 logHandleForAccountInfoProvider:v67];

    if (v68)
    {
      v69 = v68;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v70 = objc_opt_class();
        v71 = NSStringFromClass(v70);
        _sessionForLogging4 = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging2 = [(CoreDAVTask *)self _requestForLogging];
        v73 = _requestForLogging2;
        *buf = 138413314;
        v74 = @"Valid";
        v101 = v71;
        if (!v65)
        {
          v74 = @"InValid";
        }

        v102 = 2048;
        selfCopy6 = self;
        v104 = 2048;
        v105 = _sessionForLogging4;
        v106 = 2048;
        v107 = _requestForLogging2;
        v108 = 2114;
        v109 = v74;
        _os_log_impl(&dword_2452FB000, v69, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Responded to authChallenge with a %{public}@ mme token", buf, 0x34u);

        authenticationMethod = v93;
      }

      user2 = v89;
    }

    challengeCopy = v88;
  }

  else
  {
    v76 = +[CoreDAVLogging sharedLogging];
    v77 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v78 = [v76 logHandleForAccountInfoProvider:v77];

    authenticationMethod = v93;
    if (v78)
    {
      v79 = v78;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        v80 = objc_opt_class();
        v81 = NSStringFromClass(v80);
        _sessionForLogging5 = [(CoreDAVTask *)self _sessionForLogging];
        [(CoreDAVTask *)self _requestForLogging];
        v99 = protectionSpace;
        v83 = handlerCopy;
        v84 = taskCopy;
        v86 = v85 = challengeCopy;
        *buf = 138413058;
        v101 = v81;
        v102 = 2048;
        selfCopy6 = self;
        v104 = 2048;
        v105 = _sessionForLogging5;
        v106 = 2048;
        v107 = v86;
        _os_log_impl(&dword_2452FB000, v79, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Using existing token because no user was provided.", buf, 0x2Au);

        challengeCopy = v85;
        taskCopy = v84;
        handlerCopy = v83;
        protectionSpace = v99;

        authenticationMethod = v93;
      }
    }

    proposedCredential = [challengeCopy proposedCredential];
    (handlerCopy)[2](handlerCopy, 0, proposedCredential);
  }

LABEL_34:

  v75 = *MEMORY[0x277D85DE8];
}

- (void)handleWebLoginRequestWithCompletionBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  responseHeaders = [(CoreDAVTask *)self responseHeaders];
  v6 = [responseHeaders CDVObjectForKeyCaseInsensitive:@"X-Web-Login-Required"];

  if ([v6 length])
  {
    v7 = CDVExtractValuesFromRedirectString(v6);
    v8 = [v7 objectForKey:@"kCDVRedirectReasonKey"];
    v9 = [v7 objectForKey:@"kCDVRedirectURLKey"];
    if (v9)
    {
      v10 = [(NSURLRequest *)self->_request URL];
      v11 = [v9 CDVIsSafeRedirectForRequestURL:v10];

      if (v11)
      {
        WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
        [WeakRetained webLoginRequestedAtURL:v9 reasonString:v8 inQueue:MEMORY[0x277D85CD0] completionBlock:blockCopy];

LABEL_16:
        goto LABEL_17;
      }

      v13 = +[CoreDAVLogging sharedLogging];
      v16 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v17 = [v13 logHandleForAccountInfoProvider:v16];

      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          scheme = [v9 scheme];
          host = [v9 host];
          v23 = [(NSURLRequest *)self->_request URL];
          scheme2 = [v23 scheme];
          v19 = [(NSURLRequest *)self->_request URL];
          [v19 host];
          *buf = 138413058;
          v27 = scheme;
          v28 = 2112;
          v29 = host;
          v30 = 2112;
          v31 = scheme2;
          v33 = v32 = 2112;
          v20 = v33;
          _os_log_impl(&dword_2452FB000, v18, OS_LOG_TYPE_ERROR, "Web login URL (%@://%@) does not match our current host URL (%@://%@). Ignoring request.", buf, 0x2Au);
        }
      }
    }

    else
    {
      v13 = +[CoreDAVLogging sharedLogging];
      v14 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v15 = [v13 logHandleForAccountInfoProvider:v14];

      if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v6;
        _os_log_impl(&dword_2452FB000, v15, OS_LOG_TYPE_ERROR, "Couldn't parse a valid URL from %@. Failing this task.", buf, 0xCu);
      }
    }

    blockCopy[2](blockCopy, 3);
    goto LABEL_16;
  }

  blockCopy[2](blockCopy, 3);
LABEL_17:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__CoreDAVTask_URLSession_task_didCompleteWithError___block_invoke;
  v11[3] = &unk_278E30FB8;
  v12 = taskCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = taskCopy;
  [(CoreDAVTask *)self _runOnCallbackThread:v11];
}

void __52__CoreDAVTask_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == v2[7])
  {
    if (*(a1 + 48))
    {
      v17 = *MEMORY[0x277D85DE8];

      [v2 _task:? didFailWithError:?];
    }

    else
    {
      v18 = *MEMORY[0x277D85DE8];

      [v2 _taskFinishedLoading:?];
    }
  }

  else
  {
    v4 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = *(a1 + 40);
        v12 = [v11 _sessionForLogging];
        v13 = [*(a1 + 40) _requestForLogging];
        v14 = *(a1 + 32);
        v15 = *(*(a1 + 40) + 56);
        v19 = 138413570;
        v20 = v10;
        v21 = 2048;
        v22 = v11;
        v23 = 2048;
        v24 = v12;
        v25 = 2048;
        v26 = v13;
        v27 = 2048;
        v28 = v14;
        v29 = 2048;
        v30 = v15;
        _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Ignoring -URLSession:task:didCompleteWithError: callback for task %p because it doesn't match our current task, %p", &v19, 0x3Eu);
      }
    }

    v16 = *MEMORY[0x277D85DE8];
  }
}

- (void)_taskFinishedLoading:(id)loading
{
  v104 = *MEMORY[0x277D85DE8];
  loadingCopy = loading;
  v5 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v7 = [v5 logHandleForAccountInfoProvider:WeakRetained];

  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
      v92 = 138413314;
      v93 = v10;
      v94 = 2048;
      selfCopy9 = self;
      v96 = 2048;
      v97 = _sessionForLogging;
      v98 = 2048;
      v99 = _requestForLogging;
      v100 = 2112;
      selfCopy4 = loadingCopy;
      _os_log_impl(&dword_2452FB000, v8, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] Connection did finish loading %@", &v92, 0x34u);
    }
  }

  self->_didFinishLoading = 1;
  [(CoreDAVRequestLogger *)self->_logger finishCoreDAVResponse];
  [(CoreDAVTask *)self _sendTimeSpentInNetworkingToProvider];
  responseHeaders = [(CoreDAVTask *)self responseHeaders];
  v14 = [responseHeaders CDVObjectForKeyCaseInsensitive:@"X-ClientToken-Request"];
  if (v14)
  {
    v15 = v14;
    v16 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v17 = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      goto LABEL_9;
    }

    responseHeaders = objc_loadWeakRetained(&self->_accountInfoProvider);
    [responseHeaders clientTokenRequestedByServer];
  }

LABEL_9:
  if (self->_task != loadingCopy)
  {
    [CoreDAVTask _taskFinishedLoading:];
  }

  v18 = +[CoreDAVLogging sharedLogging];
  v19 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v20 = [v18 logHandleForAccountInfoProvider:v19];

  if (v20)
  {
    v21 = v20;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      _sessionForLogging2 = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging2 = [(CoreDAVTask *)self _requestForLogging];
      v92 = 138413058;
      v93 = v23;
      v94 = 2048;
      selfCopy9 = self;
      v96 = 2048;
      v97 = _sessionForLogging2;
      v98 = 2048;
      v99 = _requestForLogging2;
      _os_log_impl(&dword_2452FB000, v21, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] connection finished loading", &v92, 0x2Au);
    }
  }

  responseBodyParser = [(CoreDAVTask *)self responseBodyParser];
  [responseBodyParser processData:0 forTask:self];

  response = self->_response;
  if (!response)
  {
    v48 = +[CoreDAVLogging sharedLogging];
    v49 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v50 = [v48 logHandleForAccountInfoProvider:v49];

    if (v50)
    {
      v51 = v50;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        _sessionForLogging3 = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging3 = [(CoreDAVTask *)self _requestForLogging];
        v92 = 138413570;
        v93 = v53;
        v94 = 2048;
        selfCopy9 = self;
        v96 = 2048;
        v97 = _sessionForLogging3;
        v98 = 2048;
        v99 = _requestForLogging3;
        v100 = 2112;
        selfCopy4 = self;
        v102 = 2112;
        v103 = loadingCopy;
        _os_log_impl(&dword_2452FB000, v51, OS_LOG_TYPE_ERROR, "[%@ %p, sess %p, request %p] Received a didFinishLoading without receiving a response from the server.  Treating the following task as an unknown error: %@ %@", &v92, 0x3Eu);
      }
    }

    v56 = MEMORY[0x277CCA9B8];
    v57 = 6;
LABEL_41:
    v70 = [v56 errorWithDomain:@"CoreDAVErrorDomain" code:v57 userInfo:0];
    [(CoreDAVTask *)self finishCoreDAVTaskWithError:v70];
    goto LABEL_62;
  }

  [(CoreDAVTask *)self setResponseStatusCode:[(NSHTTPURLResponse *)response statusCode]];
  if ([(CoreDAVTask *)self responseStatusCode]>= 200 && [(CoreDAVTask *)self responseStatusCode]< 300)
  {
    responseBodyParser2 = [(CoreDAVTask *)self responseBodyParser];
    parserError = [responseBodyParser2 parserError];

    if (!parserError)
    {
      [(CoreDAVTask *)self finishCoreDAVTaskWithError:0];
      goto LABEL_63;
    }

    v60 = +[CoreDAVLogging sharedLogging];
    v61 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v62 = [v60 logHandleForAccountInfoProvider:v61];

    if (v62)
    {
      v63 = v62;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = objc_opt_class();
        v65 = NSStringFromClass(v64);
        _sessionForLogging4 = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging4 = [(CoreDAVTask *)self _requestForLogging];
        responseBodyParser3 = [(CoreDAVTask *)self responseBodyParser];
        parserError2 = [responseBodyParser3 parserError];
        v92 = 138413314;
        v93 = v65;
        v94 = 2048;
        selfCopy9 = self;
        v96 = 2048;
        v97 = _sessionForLogging4;
        v98 = 2048;
        v99 = _requestForLogging4;
        v100 = 2112;
        selfCopy4 = parserError2;
        _os_log_impl(&dword_2452FB000, v63, OS_LOG_TYPE_ERROR, "[%@ %p, sess %p, request %p] Parser failed to parse with error %@", &v92, 0x34u);
      }
    }

    v56 = MEMORY[0x277CCA9B8];
    v57 = 3;
    goto LABEL_41;
  }

  v28 = +[CoreDAVLogging sharedLogging];
  v29 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v30 = [v28 logHandleForAccountInfoProvider:v29];

  if (v30)
  {
    v31 = v30;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      _sessionForLogging5 = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging5 = [(CoreDAVTask *)self _requestForLogging];
      responseStatusCode = [(CoreDAVTask *)self responseStatusCode];
      v92 = 138413314;
      v93 = v33;
      v94 = 2048;
      selfCopy9 = self;
      v96 = 2048;
      v97 = _sessionForLogging5;
      v98 = 2048;
      v99 = _requestForLogging5;
      v100 = 2048;
      selfCopy4 = responseStatusCode;
      _os_log_impl(&dword_2452FB000, v31, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Received a successful finish, but had http status of %ld", &v92, 0x34u);
    }
  }

  if ([(CoreDAVTask *)self responseStatusCode]!= 401)
  {
    goto LABEL_43;
  }

  v37 = objc_loadWeakRetained(&self->_accountInfoProvider);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_43:
    if ([(CoreDAVTask *)self responseStatusCode]== 501 && self->_requestIsCompressed)
    {
      v71 = +[CoreDAVLogging sharedLogging];
      v72 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v73 = [v71 logHandleForAccountInfoProvider:v72];

      if (v73)
      {
        v74 = v73;
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          v75 = objc_opt_class();
          v76 = NSStringFromClass(v75);
          _sessionForLogging6 = [(CoreDAVTask *)self _sessionForLogging];
          _requestForLogging6 = [(CoreDAVTask *)self _requestForLogging];
          v92 = 138413058;
          v93 = v76;
          v94 = 2048;
          selfCopy9 = self;
          v96 = 2048;
          v97 = _sessionForLogging6;
          v98 = 2048;
          v99 = _requestForLogging6;
          _os_log_impl(&dword_2452FB000, v74, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] The server rejected our compressed request. Attempting an uncompressed request before giving up.", &v92, 0x2Au);
        }
      }

      self->_compressedRequestFailed = 1;
      goto LABEL_50;
    }

    v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
    allHeaderFields = [(NSHTTPURLResponse *)self->_response allHeaderFields];

    if (allHeaderFields)
    {
      allHeaderFields2 = [(NSHTTPURLResponse *)self->_response allHeaderFields];
      [v70 setObject:allHeaderFields2 forKey:@"CoreDAVHTTPHeaders"];
    }

    v82 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CoreDAVHTTPStatusErrorDomain" code:-[CoreDAVTask responseStatusCode](self userInfo:{"responseStatusCode"), v70}];
    if ([(CoreDAVTask *)self responseStatusCode]== 401 && [(CoreDAVTask *)self _handleUnauthorizedAccessError:v82])
    {
      v83 = +[CoreDAVLogging sharedLogging];
      v84 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v85 = [v83 logHandleForAccountInfoProvider:v84];

      if (v85)
      {
        v86 = v85;
        if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
        {
          v87 = objc_opt_class();
          v88 = NSStringFromClass(v87);
          _sessionForLogging7 = [(CoreDAVTask *)self _sessionForLogging];
          _requestForLogging7 = [(CoreDAVTask *)self _requestForLogging];
          v92 = 138413058;
          v93 = v88;
          v94 = 2048;
          selfCopy9 = self;
          v96 = 2048;
          v97 = _sessionForLogging7;
          v98 = 2048;
          v99 = _requestForLogging7;
          _os_log_impl(&dword_2452FB000, v86, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Received a HTTP 401 - unauthorized error And we handled it. Finishing task.", &v92, 0x2Au);
        }
      }
    }

    else
    {
      [(CoreDAVTask *)self finishCoreDAVTaskWithError:v82];
    }

LABEL_62:
    goto LABEL_63;
  }

  v38 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v39 = [v38 shouldRetryUnauthorizedTask:loadingCopy];

  if (!v39)
  {
    goto LABEL_43;
  }

  v40 = +[CoreDAVLogging sharedLogging];
  v41 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v42 = [v40 logHandleForAccountInfoProvider:v41];

  if (v42)
  {
    v43 = v42;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      _sessionForLogging8 = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging8 = [(CoreDAVTask *)self _requestForLogging];
      v92 = 138413314;
      v93 = v45;
      v94 = 2048;
      selfCopy9 = self;
      v96 = 2048;
      v97 = _sessionForLogging8;
      v98 = 2048;
      v99 = _requestForLogging8;
      v100 = 1024;
      LODWORD(selfCopy4) = 401;
      _os_log_impl(&dword_2452FB000, v43, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Received %d; retrying task because [_accountInfoProvider shouldRetryUnauthorizedConnection] returned YES.", &v92, 0x30u);
    }
  }

LABEL_50:
  v79 = CDVRunLoopModesToPerformDelayedSelectorsIn();
  [(CoreDAVTask *)self performSelector:sel_performCoreDAVTask withObject:0 afterDelay:v79 inModes:0.0];

LABEL_63:
  v91 = *MEMORY[0x277D85DE8];
}

- (BOOL)_handleUnauthorizedAccessError:(id)error
{
  v102 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v8 = [v6 logHandleForAccountInfoProvider:WeakRetained];

  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413570;
      v91 = v11;
      v92 = 2048;
      selfCopy12 = self;
      v94 = 2048;
      v95 = _sessionForLogging;
      v96 = 2048;
      v97 = _requestForLogging;
      v98 = 2112;
      v99 = errorCopy;
      v100 = 2112;
      selfCopy7 = self;
      _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Figuring out if we should handle unauthorized access error %@ Self = %@", buf, 0x3Eu);
    }
  }

  v14 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    triedRenewingCredential = self->_triedRenewingCredential;
    v17 = +[CoreDAVLogging sharedLogging];
    v18 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v19 = [v17 logHandleForAccountInfoProvider:v18];

    if (triedRenewingCredential)
    {
      if (v19)
      {
        v19 = v19;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          _sessionForLogging2 = [(CoreDAVTask *)self _sessionForLogging];
          _requestForLogging2 = [(CoreDAVTask *)self _requestForLogging];
          *buf = 138413058;
          v91 = v21;
          v92 = 2048;
          selfCopy12 = self;
          v94 = 2048;
          v95 = _sessionForLogging2;
          v96 = 2048;
          v97 = _requestForLogging2;
          v24 = "[%@ %p, sess %p, request %p] Already tried renewing credential";
LABEL_45:
          _os_log_impl(&dword_2452FB000, v19, OS_LOG_TYPE_INFO, v24, buf, 0x2Au);

          goto LABEL_46;
        }

        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v19)
    {
      v57 = v19;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        _sessionForLogging3 = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging3 = [(CoreDAVTask *)self _requestForLogging];
        *buf = 138413058;
        v91 = v59;
        v92 = 2048;
        selfCopy12 = self;
        v94 = 2048;
        v95 = _sessionForLogging3;
        v96 = 2048;
        v97 = _requestForLogging3;
        _os_log_impl(&dword_2452FB000, v57, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Attempting to renew credential", buf, 0x2Au);
      }
    }

    self->_triedRenewingCredential = 1;
    v62 = objc_loadWeakRetained(&self->_accountInfoProvider);
    renewCredential = [v62 renewCredential];

    v17 = +[CoreDAVLogging sharedLogging];
    v64 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v19 = [v17 logHandleForAccountInfoProvider:v64];

    if (!renewCredential)
    {
      if (v19)
      {
        v19 = v19;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v79 = objc_opt_class();
          v21 = NSStringFromClass(v79);
          _sessionForLogging2 = [(CoreDAVTask *)self _sessionForLogging];
          _requestForLogging2 = [(CoreDAVTask *)self _requestForLogging];
          *buf = 138413058;
          v91 = v21;
          v92 = 2048;
          selfCopy12 = self;
          v94 = 2048;
          v95 = _sessionForLogging2;
          v96 = 2048;
          v97 = _requestForLogging2;
          v24 = "[%@ %p, sess %p, request %p] Unable to renew credential";
          goto LABEL_45;
        }

LABEL_46:
      }

LABEL_47:

LABEL_48:
      v49 = +[CoreDAVLogging sharedLogging];
      v80 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v81 = [v49 logHandleForAccountInfoProvider:v80];

      if (v81)
      {
        v82 = v81;
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v83 = objc_opt_class();
          v84 = NSStringFromClass(v83);
          _sessionForLogging4 = [(CoreDAVTask *)self _sessionForLogging];
          _requestForLogging4 = [(CoreDAVTask *)self _requestForLogging];
          *buf = 138413570;
          v91 = v84;
          v92 = 2048;
          selfCopy12 = self;
          v94 = 2048;
          v95 = _sessionForLogging4;
          v96 = 2048;
          v97 = _requestForLogging4;
          v98 = 2112;
          v99 = errorCopy;
          v100 = 2112;
          selfCopy7 = self;
          _os_log_impl(&dword_2452FB000, v82, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Unable to handle unauthorized access error %@ Self = %@", buf, 0x3Eu);
        }
      }

      v70 = 0;
      goto LABEL_53;
    }

    if (v19)
    {
      v65 = v19;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        v66 = objc_opt_class();
        v67 = NSStringFromClass(v66);
        _sessionForLogging5 = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging5 = [(CoreDAVTask *)self _requestForLogging];
        *buf = 138413058;
        v91 = v67;
        v92 = 2048;
        selfCopy12 = self;
        v94 = 2048;
        v95 = _sessionForLogging5;
        v96 = 2048;
        v97 = _requestForLogging5;
        _os_log_impl(&dword_2452FB000, v65, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Renewed credential.  Retrying task", buf, 0x2Au);
      }
    }

    v49 = CDVRunLoopModesToPerformDelayedSelectorsIn();
    [(CoreDAVTask *)self performSelector:sel_performCoreDAVTask withObject:0 afterDelay:v49 inModes:0.0];
LABEL_36:
    v70 = 1;
    goto LABEL_53;
  }

  v25 = +[CoreDAVLogging sharedLogging];
  v26 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v27 = [v25 logHandleForAccountInfoProvider:v26];

  if (v27)
  {
    v28 = v27;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      _sessionForLogging6 = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging6 = [(CoreDAVTask *)self _requestForLogging];
      v89 = errorCopy;
      v33 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138413314;
      v91 = v30;
      v92 = 2048;
      selfCopy12 = self;
      v94 = 2048;
      v95 = _sessionForLogging6;
      v96 = 2048;
      v97 = _requestForLogging6;
      v98 = 2114;
      v99 = v35;
      _os_log_impl(&dword_2452FB000, v28, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Received bad password (and %{public}@ doesn't respond to shouldTryRenewingCredential)", buf, 0x34u);

      errorCopy = v89;
    }
  }

  v36 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v37 = objc_opt_respondsToSelector();

  if (v37)
  {
    v38 = objc_loadWeakRetained(&self->_accountInfoProvider);
    shouldTurnModalOnBadPassword = [v38 shouldTurnModalOnBadPassword];

    if (!shouldTurnModalOnBadPassword)
    {
      goto LABEL_48;
    }
  }

  v40 = +[CoreDAVLogging sharedLogging];
  v41 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v42 = [v40 logHandleForAccountInfoProvider:v41];

  if (v42)
  {
    v43 = v42;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      _sessionForLogging7 = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging7 = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413058;
      v91 = v45;
      v92 = 2048;
      selfCopy12 = self;
      v94 = 2048;
      v95 = _sessionForLogging7;
      v96 = 2048;
      v97 = _requestForLogging7;
      _os_log_impl(&dword_2452FB000, v43, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Bad password error received.", buf, 0x2Au);
    }
  }

  if (self->_receivedBadPasswordResponse)
  {
    objc_storeStrong(&self->_passwordNotificationError, error);
    v48 = objc_loadWeakRetained(&self->_taskManager);
    [v48 coreDAVTaskRequestModal:self];

    v49 = +[CoreDAVLogging sharedLogging];
    v50 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v51 = [v49 logHandleForAccountInfoProvider:v50];

    if (v51)
    {
      v52 = v51;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = objc_opt_class();
        v54 = NSStringFromClass(v53);
        _sessionForLogging8 = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging8 = [(CoreDAVTask *)self _requestForLogging];
        *buf = 138413058;
        v91 = v54;
        v92 = 2048;
        selfCopy12 = self;
        v94 = 2048;
        v95 = _sessionForLogging8;
        v96 = 2048;
        v97 = _requestForLogging8;
        _os_log_impl(&dword_2452FB000, v52, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Starting Modal to handle Unauthorized Error.", buf, 0x2Au);
      }
    }

    goto LABEL_36;
  }

  v71 = +[CoreDAVLogging sharedLogging];
  v72 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v73 = [v71 logHandleForAccountInfoProvider:v72];

  if (v73)
  {
    v74 = v73;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = objc_opt_class();
      v76 = NSStringFromClass(v75);
      _sessionForLogging9 = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging9 = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413058;
      v91 = v76;
      v92 = 2048;
      selfCopy12 = self;
      v94 = 2048;
      v95 = _sessionForLogging9;
      v96 = 2048;
      v97 = _requestForLogging9;
      _os_log_impl(&dword_2452FB000, v74, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Received bad password response.  Optimistically trying one more time", buf, 0x2Au);
    }
  }

  v70 = 1;
  self->_receivedBadPasswordResponse = 1;
  v49 = CDVRunLoopModesToPerformDelayedSelectorsIn();
  [(CoreDAVTask *)self performSelector:sel_performCoreDAVTask withObject:0 afterDelay:v49 inModes:0.0];
LABEL_53:

  v87 = *MEMORY[0x277D85DE8];
  return v70;
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__CoreDAVTask_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
  v18[3] = &unk_278E31310;
  v19 = taskCopy;
  selfCopy = self;
  v22 = responseCopy;
  v23 = handlerCopy;
  v21 = sessionCopy;
  v14 = responseCopy;
  v15 = sessionCopy;
  v16 = handlerCopy;
  v17 = taskCopy;
  [(CoreDAVTask *)self _runOnCallbackThread:v18];
}

uint64_t __72__CoreDAVTask_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == v2[7])
  {
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    v21 = *MEMORY[0x277D85DE8];

    return [v2 _session:v18 dataTask:? didReceiveResponse:? completionHandler:?];
  }

  else
  {
    v4 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = *(a1 + 40);
        v12 = [v11 _sessionForLogging];
        v13 = [*(a1 + 40) _requestForLogging];
        v14 = *(a1 + 32);
        v15 = *(*(a1 + 40) + 56);
        v22 = 138413570;
        v23 = v10;
        v24 = 2048;
        v25 = v11;
        v26 = 2048;
        v27 = v12;
        v28 = 2048;
        v29 = v13;
        v30 = 2048;
        v31 = v14;
        v32 = 2048;
        v33 = v15;
        _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Ignoring -URLSession:dataTask:didReceiveResponse:completionHandler: callback for task %p because it doesn't match our current task, %p", &v22, 0x3Eu);
      }
    }

    result = (*(*(a1 + 64) + 16))();
    v17 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (void)_session:(id)_session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  v78 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  v65 = 0;
  accountInfoProvider = [(CoreDAVTask *)self accountInfoProvider];
  v12 = objc_opt_respondsToSelector();

  if ((v12 & 1) != 0 && (-[CoreDAVTask accountInfoProvider](self, "accountInfoProvider"), v13 = objc_claimAutoreleasedReturnValue(), [v13 getAppleIDSession], v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
  {
    currentRequest = [taskCopy currentRequest];
    [v14 handleResponse:responseCopy forRequest:currentRequest shouldRetry:&v65];

    if (v65)
    {
      v16 = CDVRunLoopModesToPerformDelayedSelectorsIn();
      [(CoreDAVTask *)self performSelector:sel_performCoreDAVTask withObject:0 afterDelay:v16 inModes:0.0];
      v17 = 0;
      goto LABEL_23;
    }

    v62 = v14;
    v63 = handlerCopy;
  }

  else
  {
    v62 = 0;
    v63 = handlerCopy;
  }

  self->_didReceiveResponse = 1;
  v18 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v20 = [v18 logHandleForAccountInfoProvider:WeakRetained];

  if (v20)
  {
    v21 = v20;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
      statusCode = [responseCopy statusCode];
      *buf = 138413314;
      v67 = v23;
      v68 = 2048;
      selfCopy4 = self;
      v70 = 2048;
      v71 = _sessionForLogging;
      v72 = 2048;
      v73 = _requestForLogging;
      v74 = 2048;
      v75 = statusCode;
      _os_log_impl(&dword_2452FB000, v21, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] received response with status %ld", buf, 0x34u);
    }
  }

  objc_storeStrong(&self->_response, response);
  [(CoreDAVTask *)self setTotalBytesReceived:0];
  [(CoreDAVTask *)self setTotalBytesWasProcessedAsAbnormallyLarge:0];
  logger = self->_logger;
  allHeaderFields = [responseCopy allHeaderFields];
  -[CoreDAVRequestLogger logCoreDAVResponseHeaders:andStatusCode:withTaskIdentifier:](logger, "logCoreDAVResponseHeaders:andStatusCode:withTaskIdentifier:", allHeaderFields, [responseCopy statusCode], self->_uniqueID);

  v29 = +[CoreDAVLogging sharedLogging];
  v30 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v31 = [v29 logHandleForAccountInfoProvider:v30];

  if (v31)
  {
    v32 = v31;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      _sessionForLogging2 = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging2 = [(CoreDAVTask *)self _requestForLogging];
      v37 = responseCopy;
      uniqueID = self->_uniqueID;
      statusCode2 = [v37 statusCode];
      *buf = 138413570;
      v67 = v34;
      v68 = 2048;
      selfCopy4 = self;
      v70 = 2048;
      v71 = _sessionForLogging2;
      v72 = 2048;
      v73 = _requestForLogging2;
      v74 = 2114;
      v75 = uniqueID;
      responseCopy = v37;
      v76 = 2048;
      v77 = statusCode2;
      _os_log_impl(&dword_2452FB000, v32, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Task ID %{public}@ Connection Received Status [%ld]", buf, 0x3Eu);
    }
  }

  v40 = +[CoreDAVLogging sharedLogging];
  v41 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v42 = [v40 logHandleForAccountInfoProvider:v41];

  if (v42)
  {
    v43 = v42;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      _sessionForLogging3 = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging3 = [(CoreDAVTask *)self _requestForLogging];
      allHeaderFields2 = [responseCopy allHeaderFields];
      [allHeaderFields2 objectForKeyedSubscript:@"X-Apple-Jingle-Correlation-Key"];
      v49 = v60 = responseCopy;
      *buf = 138413570;
      v67 = v45;
      v68 = 2048;
      selfCopy4 = self;
      v70 = 2048;
      v71 = _sessionForLogging3;
      v72 = 2048;
      v73 = _requestForLogging3;
      v74 = 2114;
      v75 = @"X-Apple-Jingle-Correlation-Key";
      v76 = 2114;
      v77 = v49;
      _os_log_impl(&dword_2452FB000, v43, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Response Header %{public}@ = %{public}@", buf, 0x3Eu);

      responseCopy = v60;
    }
  }

  v16 = +[CoreDAVLogging sharedLogging];
  v50 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v51 = [v16 logHandleForAccountInfoProvider:v50];

  if (v51)
  {
    v52 = v51;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      _sessionForLogging4 = [(CoreDAVTask *)self _sessionForLogging];
      _requestForLogging4 = [(CoreDAVTask *)self _requestForLogging];
      [responseCopy allHeaderFields];
      v57 = v61 = responseCopy;
      v58 = [v57 objectForKeyedSubscript:@"X-Apple-Request-UUID"];
      *buf = 138413570;
      v67 = v54;
      v68 = 2048;
      selfCopy4 = self;
      v70 = 2048;
      v71 = _sessionForLogging4;
      v72 = 2048;
      v73 = _requestForLogging4;
      v74 = 2114;
      v75 = @"X-Apple-Request-UUID";
      v76 = 2114;
      v77 = v58;
      _os_log_impl(&dword_2452FB000, v52, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Response Header %{public}@ = %{public}@", buf, 0x3Eu);

      responseCopy = v61;
    }
  }

  v17 = 1;
  v14 = v62;
  handlerCopy = v63;
LABEL_23:

  handlerCopy[2](handlerCopy, v17);
  v59 = *MEMORY[0x277D85DE8];
}

- (void)_task:(id)_task didFailWithError:(id)error
{
  v77 = *MEMORY[0x277D85DE8];
  _taskCopy = _task;
  errorCopy = error;
  self->_didFailWithError = 1;
  v8 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v10 = [v8 logHandleForAccountInfoProvider:WeakRetained];

  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      _sessionForLogging = [(CoreDAVTask *)self _sessionForLogging];
      [(CoreDAVTask *)self _requestForLogging];
      v16 = v15 = _taskCopy;
      v67 = 138413314;
      v68 = v13;
      v69 = 2048;
      selfCopy6 = self;
      v71 = 2048;
      v72 = _sessionForLogging;
      v73 = 2048;
      v74 = v16;
      v75 = 2112;
      v76 = errorCopy;
      _os_log_impl(&dword_2452FB000, v11, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] connection died with error %@", &v67, 0x34u);

      _taskCopy = v15;
    }
  }

  [(CoreDAVTask *)self _sendTimeSpentInNetworkingToProvider];
  if (self->_task != _taskCopy)
  {
    [CoreDAVTask _task:didFailWithError:];
  }

  responseHeaders = [(CoreDAVTask *)self responseHeaders];
  v18 = [responseHeaders CDVObjectForKeyCaseInsensitive:@"X-ClientToken-Request"];
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = v18;
  v20 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    responseHeaders = objc_loadWeakRetained(&self->_accountInfoProvider);
    [responseHeaders clientTokenRequestedByServer];
LABEL_10:
  }

  if (self->_shouldRetryWithClientToken && !self->_didRetryWithClientToken)
  {
    self->_didRetryWithClientToken = 1;
LABEL_36:
    v46 = CDVRunLoopModesToPerformDelayedSelectorsIn();
    [(CoreDAVTask *)self performSelector:sel_performCoreDAVTask withObject:0 afterDelay:v46 inModes:0.0];

    goto LABEL_50;
  }

  if ([errorCopy code] == 401)
  {
    v22 = objc_loadWeakRetained(&self->_accountInfoProvider);
    if (objc_opt_respondsToSelector())
    {
      v23 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v24 = [v23 shouldRetryUnauthorizedTask:_taskCopy];

      if (v24)
      {
        v25 = +[CoreDAVLogging sharedLogging];
        v26 = objc_loadWeakRetained(&self->_accountInfoProvider);
        v27 = [v25 logHandleForAccountInfoProvider:v26];

        if (v27)
        {
          v28 = v27;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            _sessionForLogging2 = [(CoreDAVTask *)self _sessionForLogging];
            _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
            v67 = 138413314;
            v68 = v30;
            v69 = 2048;
            selfCopy6 = self;
            v71 = 2048;
            v72 = _sessionForLogging2;
            v73 = 2048;
            v74 = _requestForLogging;
            v75 = 1024;
            LODWORD(v76) = 401;
            v33 = "[%@ %p, sess %p, request %p] Received %d; retrying task because [_accountInfoProvider shouldRetryUnauthorizedConnection] returned YES.";
            v34 = v28;
            v35 = 48;
LABEL_33:
            _os_log_impl(&dword_2452FB000, v34, OS_LOG_TYPE_DEFAULT, v33, &v67, v35);

            goto LABEL_34;
          }

          goto LABEL_34;
        }

        goto LABEL_35;
      }
    }

    else
    {
    }
  }

  if ([errorCopy code] == 501 && self->_requestIsCompressed)
  {
    v36 = +[CoreDAVLogging sharedLogging];
    v37 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v38 = [v36 logHandleForAccountInfoProvider:v37];

    if (v38)
    {
      v39 = v38;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        _sessionForLogging3 = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging2 = [(CoreDAVTask *)self _requestForLogging];
        v67 = 138413058;
        v68 = v41;
        v69 = 2048;
        selfCopy6 = self;
        v71 = 2048;
        v72 = _sessionForLogging3;
        v73 = 2048;
        v74 = _requestForLogging2;
        _os_log_impl(&dword_2452FB000, v39, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] The server rejected our compressed request. Attempting an uncompressed request before giving up.", &v67, 0x2Au);
      }
    }

    self->_compressedRequestFailed = 1;
    goto LABEL_36;
  }

  if ([errorCopy code] == 401 && self->_justTriedTokenAuth)
  {
    v25 = +[CoreDAVLogging sharedLogging];
    v44 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v27 = [v25 logHandleForAccountInfoProvider:v44];

    if (v27)
    {
      v28 = v27;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v45 = objc_opt_class();
        v30 = NSStringFromClass(v45);
        _sessionForLogging2 = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging = [(CoreDAVTask *)self _requestForLogging];
        v67 = 138413058;
        v68 = v30;
        v69 = 2048;
        selfCopy6 = self;
        v71 = 2048;
        v72 = _sessionForLogging2;
        v73 = 2048;
        v74 = _requestForLogging;
        v33 = "[%@ %p, sess %p, request %p] Tried token auth but got unauthorized response. Trying without token-auth.";
        v34 = v28;
        v35 = 42;
        goto LABEL_33;
      }

LABEL_34:
    }

LABEL_35:

    goto LABEL_36;
  }

  if ([errorCopy code] == 401)
  {
    v47 = +[CoreDAVLogging sharedLogging];
    v48 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v49 = [v47 logHandleForAccountInfoProvider:v48];

    if (v49)
    {
      v50 = v49;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        _sessionForLogging4 = [(CoreDAVTask *)self _sessionForLogging];
        _requestForLogging3 = [(CoreDAVTask *)self _requestForLogging];
        v67 = 138413058;
        v68 = v52;
        v69 = 2048;
        selfCopy6 = self;
        v71 = 2048;
        v72 = _sessionForLogging4;
        v73 = 2048;
        v74 = _requestForLogging3;
        _os_log_impl(&dword_2452FB000, v50, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Bad password error received.", &v67, 0x2Au);
      }
    }

    [(CoreDAVTask *)self _handleUnauthorizedAccessError:errorCopy];
  }

  else
  {
    v55 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v56 = [v55 handleCertificateError:errorCopy];

    if (v56)
    {
      v57 = CDVRunLoopModesToPerformDelayedSelectorsIn();
      [(CoreDAVTask *)self performSelector:sel_performCoreDAVTask withObject:0 afterDelay:v57 inModes:0.0];

      v58 = +[CoreDAVLogging sharedLogging];
      v59 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v60 = [v58 logHandleForAccountInfoProvider:v59];

      if (v60)
      {
        v61 = v60;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          v62 = objc_opt_class();
          v63 = NSStringFromClass(v62);
          _sessionForLogging5 = [(CoreDAVTask *)self _sessionForLogging];
          _requestForLogging4 = [(CoreDAVTask *)self _requestForLogging];
          v67 = 138413058;
          v68 = v63;
          v69 = 2048;
          selfCopy6 = self;
          v71 = 2048;
          v72 = _sessionForLogging5;
          v73 = 2048;
          v74 = _requestForLogging4;
          _os_log_impl(&dword_2452FB000, v61, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Handled client certificate request and re-issued NSURLRequest.", &v67, 0x2Au);
        }
      }
    }

    else
    {
      [(CoreDAVTask *)self finishCoreDAVTaskWithError:errorCopy];
    }
  }

LABEL_50:

  v66 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)responseHeaders
{
  if (self->_simulated)
  {
    allHeaderFields = self->_simulatedResponseHeaders;
  }

  else
  {
    allHeaderFields = [(NSHTTPURLResponse *)self->_response allHeaderFields];
  }

  return allHeaderFields;
}

- (void)finishEarlyWithError:(id)error
{
  [(CoreDAVTask *)self finishCoreDAVTaskWithError:error];

  [(CoreDAVTask *)self setDelegate:0];
}

- (void)submitWithTaskManager:(id)manager
{
  v13 = *MEMORY[0x277D85DE8];
  if (manager)
  {
    [(CoreDAVTask *)self setTaskManager:?];
    taskManager = [(CoreDAVTask *)self taskManager];
    [taskManager submitQueuedCoreDAVTask:self];
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = +[CoreDAVLogging sharedLogging];
    v6 = [v5 logHandleForAccountInfoProvider:0];
    v7 = v6;
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_ERROR, "Task %@ submitted with no taskManager, returning immediately", buf, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
    [(CoreDAVTask *)self finishEarlyWithError:v8];

    v9 = *MEMORY[0x277D85DE8];
  }
}

- (void)reset
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)reportStatusWithError:(id)error
{
  errorCopy = error;
  v29 = errorCopy;
  if (!errorCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
    v7 = objc_opt_respondsToSelector();

    v8 = objc_loadWeakRetained(&self->_accountInfoProvider);
    if (v7)
    {
      numDownloadedElements = [(CoreDAVTask *)self numDownloadedElements];
      v10 = v8;
LABEL_6:
      [v10 noteSuccessfulRequestWithNumDownloadedElements:numDownloadedElements forTask:self];
LABEL_26:

      goto LABEL_27;
    }

    v17 = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      goto LABEL_27;
    }

    v8 = objc_loadWeakRetained(&self->_accountInfoProvider);
    numDownloadedElements2 = [(CoreDAVTask *)self numDownloadedElements];
    v19 = v8;
LABEL_14:
    [v19 noteSuccessfulRequestWithNumDownloadedElements:numDownloadedElements2];
    goto LABEL_26;
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
  {

    goto LABEL_8;
  }

  domain2 = [v29 domain];
  v12 = [domain2 isEqualToString:*MEMORY[0x277CCA738]];

  if (v12)
  {
LABEL_8:
    code = [v29 code];
    v14 = objc_loadWeakRetained(&self->_accountInfoProvider);
    if (code == 500)
    {
      goto LABEL_9;
    }

LABEL_22:
    v25 = objc_opt_respondsToSelector();

    v26 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v8 = v26;
    if (v25)
    {
      [v26 noteFailedNetworkRequestForTask:self];
    }

    else
    {
      v27 = objc_opt_respondsToSelector();

      if ((v27 & 1) == 0)
      {
        goto LABEL_27;
      }

      v8 = objc_loadWeakRetained(&self->_accountInfoProvider);
      [v8 noteFailedNetworkRequest];
    }

    goto LABEL_26;
  }

  domain3 = [v29 domain];
  v21 = [domain3 isEqualToString:@"CoreDAVErrorDomain"];

  if (!v21)
  {
    v14 = objc_loadWeakRetained(&self->_accountInfoProvider);
    goto LABEL_22;
  }

  code2 = [v29 code];
  v14 = objc_loadWeakRetained(&self->_accountInfoProvider);
  if (code2 != 1)
  {
LABEL_9:
    v15 = objc_opt_respondsToSelector();

    v16 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v8 = v16;
    if (v15)
    {
      [v16 noteFailedProtocolRequestForTask:self];
    }

    else
    {
      v24 = objc_opt_respondsToSelector();

      if ((v24 & 1) == 0)
      {
        goto LABEL_27;
      }

      v8 = objc_loadWeakRetained(&self->_accountInfoProvider);
      [v8 noteFailedProtocolRequest];
    }

    goto LABEL_26;
  }

  v23 = objc_opt_respondsToSelector();

  v10 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v8 = v10;
  if (v23)
  {
    numDownloadedElements = 0;
    goto LABEL_6;
  }

  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    v19 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v8 = v19;
    numDownloadedElements2 = 0;
    goto LABEL_14;
  }

LABEL_27:
}

- (CoreDAVItem)rootElement
{
  if (self->_simulated)
  {
    simulatedRootElement = [(CoreDAVTask *)self simulatedRootElement];
  }

  else
  {
    responseBodyParser = [(CoreDAVTask *)self responseBodyParser];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      responseBodyParser2 = [(CoreDAVTask *)self responseBodyParser];
      simulatedRootElement = [responseBodyParser2 rootElement];
    }

    else
    {
      simulatedRootElement = 0;
    }
  }

  return simulatedRootElement;
}

- (CoreDAVTaskManager)taskManager
{
  WeakRetained = objc_loadWeakRetained(&self->_taskManager);

  return WeakRetained;
}

- (CoreDAVAccountInfoProvider)accountInfoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);

  return WeakRetained;
}

- (CoreDAVTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)loadRequest:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)loadRequest:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)loadRequest:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)loadRequest:.cold.4()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_session:dataTask:didReceiveData:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_taskFinishedLoading:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_task:didFailWithError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end