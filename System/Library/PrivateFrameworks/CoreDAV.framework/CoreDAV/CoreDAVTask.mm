@interface CoreDAVTask
+ (id)stringFromDepth:(int)a3;
- (BOOL)_canAuthenticateAgainstProtectionSpace:(id)a3;
- (BOOL)_handleUnauthorizedAccessError:(id)a3;
- (BOOL)_includeGeneralHeaders;
- (BOOL)_shouldCreateCredentialForBasicOrDigestAuthChallenge:(id)a3;
- (BOOL)isFinished;
- (BOOL)markAsFinished;
- (CoreDAVAccountInfoProvider)accountInfoProvider;
- (CoreDAVItem)rootElement;
- (CoreDAVTask)initWithURL:(id)a3;
- (CoreDAVTaskDelegate)delegate;
- (CoreDAVTaskManager)taskManager;
- (NSDictionary)responseHeaders;
- (NSRunLoop)workRunLoop;
- (NSString)description;
- (id)_applyAuthenticationChain:(__CFArray *)a3 toRequest:(id)a4;
- (id)_applyStorageSession:(__CFURLStorageSession *)a3 toRequest:(id)a4;
- (id)_compressBodyData:(id)a3;
- (id)_createBodyData;
- (id)credentialForClientCertificateChallenge:(id)a3;
- (id)credentialForOAuthChallenge:(id)a3;
- (id)redactedDescription;
- (id)requestBody;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)_assignConnectionProperties:(id)a3 toSessionConfiguration:(id)a4;
- (void)_didReceiveAuthenticationChallenge:(id)a3 forTask:(id)a4 completionHandler:(id)a5;
- (void)_failImmediately;
- (void)_handleAuthenticationChallenge:(id)a3 task:(id)a4 completionHandler:(id)a5;
- (void)_handleBadPasswordResponse;
- (void)_logSantizedRequest:(id)a3 withTaskID:(id)a4;
- (void)_runOnCallbackThread:(id)a3;
- (void)_sendTimeSpentInNetworkingToProvider;
- (void)_session:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)_session:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)_session:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)_task:(id)a3 didFailWithError:(id)a4;
- (void)_taskFinishedLoading:(id)a3;
- (void)dealloc;
- (void)finishCoreDAVTaskWithError:(id)a3;
- (void)finishEarlyWithError:(id)a3;
- (void)handleWebLoginRequestWithCompletionBlock:(id)a3;
- (void)loadRequest:(id)a3;
- (void)overrideRequestHeader:(id)a3 withValue:(id)a4;
- (void)performCoreDAVTask;
- (void)reportStatusWithError:(id)a3;
- (void)reset;
- (void)submitWithTaskManager:(id)a3;
- (void)tearDownResources;
@end

@implementation CoreDAVTask

- (CoreDAVTask)initWithURL:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21.receiver = self;
  v21.super_class = CoreDAVTask;
  v6 = [(CoreDAVTask *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
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
        v16 = [(CoreDAVTask *)v7 _sessionForLogging];
        v17 = [(CoreDAVTask *)v7 _requestForLogging];
        v18 = v7->_uniqueID;
        *buf = 138413570;
        v23 = v15;
        v24 = 2048;
        v25 = v7;
        v26 = 2048;
        v27 = v16;
        v28 = 2048;
        v29 = v17;
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
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  NSStringFromClass(v7);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  [v6 handleFailureInMethod:a3 object:a1 file:@"CoreDAVTask.m" lineNumber:195 description:@"<%@ %p>: Error better have been nil in our dealloc: %p"];
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
  v3 = [(CoreDAVTask *)self taskManager];

  if (v3)
  {
    v4 = [(CoreDAVTask *)self taskManager];
    v5 = [v4 workRunLoop];
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
        v12 = [(CoreDAVTask *)self _sessionForLogging];
        v13 = [(CoreDAVTask *)self _requestForLogging];
        v16 = 138413058;
        v17 = v11;
        v18 = 2048;
        v19 = self;
        v20 = 2048;
        v21 = v12;
        v22 = 2048;
        v23 = v13;
        _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_ERROR, "[%@ %p, sess %p, request %p] Could not get the Task Manager's work run loop because the task manager is nil. Defaulting to current run loop.", &v16, 0x2Au);
      }
    }

    v5 = [MEMORY[0x277CBEB88] currentRunLoop];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_includeGeneralHeaders
{
  v2 = [(CoreDAVTask *)self httpMethod];
  v3 = [v2 isEqualToString:@"OPTIONS"];

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
      v9 = [(CoreDAVTask *)self _sessionForLogging];
      v10 = [(CoreDAVTask *)self _requestForLogging];
      v13 = 138413058;
      v14 = v8;
      v15 = 2048;
      v16 = self;
      v17 = 2048;
      v18 = v9;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&dword_2452FB000, v6, OS_LOG_TYPE_ERROR, "[%@ %p, sess %p, request %p] requestBody to be implemented by subclass", &v13, 0x2Au);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)loadRequest:(id)a3
{
  v88 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(CoreDAVTask *)self tearDownResources];
  if (!v5)
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

  v73 = [MEMORY[0x277CCACC8] currentThread];
  if ([v73 isMainThread])
  {
    v71 = [MEMORY[0x277CCABD8] mainQueue];
    v74 = 0;
  }

  else
  {
    v74 = v73;
    v71 = 0;
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

  v8 = [(CoreDAVTask *)self accountInfoProvider];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) != 0 && (-[CoreDAVTask accountInfoProvider](self, "accountInfoProvider"), v10 = objc_claimAutoreleasedReturnValue(), [v10 getAppleIDSession], v72 = objc_claimAutoreleasedReturnValue(), v10, v72))
  {
    v11 = [v5 mutableCopy];
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
    v16 = [v5 copy];
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
  v23 = [v22 absoluteString];
  v24 = [v23 length];

  v25 = [(NSURLRequest *)self->_request HTTPBody];
  v26 = [v25 length];

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
      v33 = [(CoreDAVTask *)self _sessionForLogging];
      v34 = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413314;
      *&buf[4] = v32;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2048;
      v84 = v33;
      *v85 = 2048;
      *&v85[2] = v34;
      v86 = 2048;
      v87 = (v26 + v24);
      _os_log_impl(&dword_2452FB000, v30, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Size of outgoing, unencrypted request: %ld", buf, 0x34u);
    }
  }

  [(CoreDAVRequestLogger *)self->_logger logCoreDAVRequest:self->_request withTaskIdentifier:self->_uniqueID];
  [(CoreDAVTask *)self _logSantizedRequest:self->_request withTaskID:self->_uniqueID];
  v35 = [(CoreDAVTask *)self url];
  v36 = [v35 host];
  if ([v36 hasSuffix:@"simulated.calendar.apple.com"])
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
      v40 = [v38 simulatorForTask:self];
      v41 = [v5 URL];
      v42 = [v41 user];
      -[CoreDAVTask setResponseStatusCode:](self, "setResponseStatusCode:", [v40 simulateTask:self as:v42]);

      if ([(CoreDAVTask *)self responseStatusCode]>= 200 && [(CoreDAVTask *)self responseStatusCode]< 300)
      {
        v43 = 0;
      }

      else
      {
        v43 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CoreDAVHTTPStatusErrorDomain" code:-[CoreDAVTask responseStatusCode](self userInfo:{"responseStatusCode"), 0}];
      }

      v67 = [(CoreDAVTask *)self workRunLoop];
      v68 = [(CoreDAVTask *)self workRunLoop];
      v69 = CDVRunLoopModesToPerformDelayedSelectorsInFromRunLoop(v68);
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __27__CoreDAVTask_loadRequest___block_invoke_107;
      v75[3] = &unk_278E30F90;
      v75[4] = self;
      v76 = v43;
      v66 = v43;
      [v67 performInModes:v69 block:v75];

LABEL_47:
      goto LABEL_48;
    }
  }

  else
  {
  }

  v40 = [MEMORY[0x277CBABC8] defaultSessionConfiguration];
  [v40 setURLCache:0];
  v44 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v45 = objc_opt_respondsToSelector();

  if (v45)
  {
    v46 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v47 = [v46 customConnectionProperties];
    [(CoreDAVTask *)self _assignConnectionProperties:v47 toSessionConfiguration:v40];
  }

  v48 = objc_loadWeakRetained(&self->_accountInfoProvider);
  if (objc_opt_respondsToSelector())
  {
    v49 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v50 = [v49 handleShouldUseCredentialStorage];

    if ((v50 & 1) == 0)
    {
      [v40 setURLCredentialStorage:0];
    }
  }

  else
  {
  }

  v51 = [MEMORY[0x277CBABB8] sessionWithConfiguration:v40 delegate:self delegateQueue:v71];
  session = self->_session;
  self->_session = v51;

  v53 = [(NSURLSession *)self->_session dataTaskWithRequest:self->_request];
  task = self->_task;
  self->_task = v53;

  v55 = [MEMORY[0x277CBEAA8] date];
  dateConnectionWentOut = self->_dateConnectionWentOut;
  self->_dateConnectionWentOut = v55;

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
        v63 = [(CoreDAVTask *)self _sessionForLogging];
        v64 = [(CoreDAVTask *)self _requestForLogging];
        v65 = self->_request;
        *buf = 138413314;
        *&buf[4] = v62;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2048;
        v84 = v63;
        *v85 = 2048;
        *&v85[2] = v64;
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

- (void)_assignConnectionProperties:(id)a3 toSessionConfiguration:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [v6 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v27;
    v13 = *MEMORY[0x277CBADA0];
    v25 = *MEMORY[0x277CBAE78];
    *&v10 = 138543362;
    v22 = v10;
    v23 = *MEMORY[0x277CBADA0];
    v24 = v8;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v6 objectForKeyedSubscript:{v15, v22}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CoreDAVTask *)self _assignConnectionProperties:v16 toSessionConfiguration:v7];
        }

        else if ([v15 isEqualToString:v13])
        {
          [v7 set_sourceApplicationSecondaryIdentifier:v16];
        }

        else if ([v15 isEqualToString:v25])
        {
          [v7 set_sourceApplicationBundleIdentifier:v16];
        }

        else
        {
          v17 = self;
          v18 = +[CoreDAVLogging sharedLogging];
          v19 = [v18 logHandleForAccountInfoProvider:0];
          v20 = v19;
          if (v19 && os_log_type_enabled(v19, 6u))
          {
            *buf = v22;
            v31 = v15;
            _os_log_impl(&dword_2452FB000, v20, 6u, "Connection property: %{public}@ is not set", buf, 0xCu);
          }

          self = v17;
          v13 = v23;
          v8 = v24;
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v11);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_logSantizedRequest:(id)a3 withTaskID:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
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
      v19 = [(CoreDAVTask *)self _sessionForLogging];
      v11 = [(CoreDAVTask *)self _requestForLogging];
      uniqueID = self->_uniqueID;
      v17 = [v5 HTTPMethod];
      v12 = MEMORY[0x277CCACA8];
      v22 = [v5 URL];
      v13 = [v22 scheme];
      v20 = [v5 URL];
      v14 = [v20 host];
      [v12 stringWithFormat:@"%@://%@", v13, v14];
      *buf = 138413826;
      v24 = v21;
      v25 = 2048;
      v26 = self;
      v27 = 2048;
      v28 = v19;
      v29 = 2048;
      v30 = v11;
      v31 = 2114;
      v32 = uniqueID;
      v33 = 2114;
      v34 = v17;
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

- (id)_compressBodyData:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  memset(&v9, 0, sizeof(v9));
  v4 = 0;
  if (!deflateInit2_(&v9, -1, 8, 31, 8, 0, "1.2.12", 112))
  {
    v4 = [MEMORY[0x277CBEB28] data];
    v9.avail_in = [v3 length];
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
      [v4 appendBytes:v10 length:0x2000 - v9.avail_out];
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

  return v4;
}

- (id)_createBodyData
{
  v3 = [(CoreDAVTask *)self requestBody];
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

    v6 = [v3 length];

    if (v6)
    {
      v7 = [(CoreDAVTask *)self _compressBodyData:v3];
      WeakRetained = v7;
      if (v7)
      {
        self->_requestIsCompressed = 1;
        WeakRetained = v7;
        v5 = v3;
        v3 = WeakRetained;
        goto LABEL_7;
      }

LABEL_8:
    }
  }

  return v3;
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
      v9 = [(CoreDAVTask *)self _sessionForLogging];
      v10 = [(CoreDAVTask *)self _requestForLogging];
      v13 = 138413058;
      v14 = v8;
      v15 = 2048;
      v16 = self;
      v17 = 2048;
      v18 = v9;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&dword_2452FB000, v6, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Account says we should fail now, finishing with error", &v13, 0x2Au);
    }
  }

  v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CoreDAVErrorDomain" code:0 userInfo:0];
  [(CoreDAVTask *)self finishCoreDAVTaskWithError:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)overrideRequestHeader:(id)a3 withValue:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    overriddenHeaders = self->_overriddenHeaders;
    if (!overriddenHeaders)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
      v10 = self->_overriddenHeaders;
      self->_overriddenHeaders = v9;

      overriddenHeaders = self->_overriddenHeaders;
    }

    [(NSMutableDictionary *)overriddenHeaders setValue:v7 forKey:v6];
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
        v17 = [(CoreDAVTask *)self _sessionForLogging];
        v18 = [(CoreDAVTask *)self _requestForLogging];
        v20 = 138413314;
        v21 = v16;
        v22 = 2048;
        v23 = self;
        v24 = 2048;
        v25 = v17;
        v26 = 2048;
        v27 = v18;
        v28 = 2112;
        v29 = v6;
        _os_log_impl(&dword_2452FB000, v14, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Ignoring nil value for header: %@", &v20, 0x34u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)stringFromDepth:(int)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return qword_278E31358[a3];
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
    v6 = [v234 user];
    v7 = [v6 length];

    if (v7)
    {
      goto LABEL_27;
    }

    WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
    v9 = [WeakRetained user];
    v10 = [v9 length];

    v11 = +[CoreDAVLogging sharedLogging];
    v12 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v13 = [v11 logHandleForAccountInfoProvider:v12];

    if (v10)
    {
      if (v13)
      {
        v14 = v13;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v17 = [(CoreDAVTask *)self _sessionForLogging];
          v18 = [(CoreDAVTask *)self _requestForLogging];
          v231 = v4;
          v19 = objc_loadWeakRetained(&self->_accountInfoProvider);
          v20 = [v19 user];
          *buf = 138413570;
          v245 = v16;
          v246 = 2048;
          v247 = self;
          v248 = 2048;
          v249 = v17;
          v250 = 2048;
          v251 = v18;
          v252 = 2112;
          v253 = v20;
          v254 = 2112;
          v255 = self;
          _os_log_impl(&dword_2452FB000, v14, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] No user on task, adding user %@: %@", buf, 0x3Eu);

          v4 = v231;
          v5 = 0x278E30000uLL;
        }
      }

      v21 = [v234 host];
      if ([v21 length])
      {
        v22 = [v234 scheme];
        v23 = [v22 length];

        if (v23)
        {
          v11 = objc_loadWeakRetained(&self->_accountInfoProvider);
          v13 = [v11 user];
          v24 = v234;
          v234 = [v234 CDVURLWithUser:v13];
LABEL_25:

          goto LABEL_26;
        }
      }

      else
      {
      }

      v11 = +[CoreDAVLogging sharedLogging];
      v38 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v13 = [v11 logHandleForAccountInfoProvider:v38];

      if (v13)
      {
        v24 = v13;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v39 = objc_opt_class();
          v34 = NSStringFromClass(v39);
          v35 = [(CoreDAVTask *)self _sessionForLogging];
          v40 = [(CoreDAVTask *)self _requestForLogging];
          *buf = 138413314;
          v245 = v34;
          v246 = 2048;
          v247 = self;
          v248 = 2048;
          v249 = v35;
          v250 = 2048;
          v251 = v40;
          v252 = 2112;
          v253 = v234;
          _os_log_impl(&dword_2452FB000, v24, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] URL is invalid (%@)", buf, 0x34u);

          goto LABEL_23;
        }

        goto LABEL_24;
      }
    }

    else if (v13)
    {
      v24 = v13;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = [(CoreDAVTask *)self _sessionForLogging];
        v36 = [(CoreDAVTask *)self _requestForLogging];
        v37 = objc_loadWeakRetained(&self->_accountInfoProvider);
        *buf = 138413570;
        v245 = v34;
        v246 = 2048;
        v247 = self;
        v248 = 2048;
        v249 = v35;
        v250 = 2048;
        v251 = v36;
        v252 = 2112;
        v253 = v37;
        v254 = 2112;
        v255 = self;
        _os_log_impl(&dword_2452FB000, v24, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] accountInfoProvider [%@] had no username, task was: %@", buf, 0x3Eu);

        v5 = 0x278E30000;
LABEL_23:
      }

LABEL_24:
      v13 = v24;
      goto LABEL_25;
    }

LABEL_26:

LABEL_27:
    v41 = [*(v5 + 2968) sharedLogging];
    v42 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v43 = [v41 logHandleForAccountInfoProvider:v42];

    if (v43)
    {
      v44 = v43;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        v47 = [(CoreDAVTask *)self _sessionForLogging];
        v48 = [(CoreDAVTask *)self _requestForLogging];
        *buf = 138413314;
        v245 = v46;
        v246 = 2048;
        v247 = self;
        v248 = 2048;
        v249 = v47;
        v250 = 2048;
        v251 = v48;
        v252 = 2112;
        v253 = v234;
        _os_log_impl(&dword_2452FB000, v44, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] URL: %@", buf, 0x34u);

        v5 = 0x278E30000uLL;
      }
    }

    v49 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v50 = [v49 shouldFailAllTasks];

    if (v50)
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

    v53 = [*(v5 + 2968) sharedLogging];
    v54 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v55 = [v53 logHandleForAccountInfoProvider:v54];

    if (v55)
    {
      v56 = v55;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        v59 = [(CoreDAVTask *)self _sessionForLogging];
        v60 = [(CoreDAVTask *)self _requestForLogging];
        [(CoreDAVTask *)self timeoutInterval];
        *buf = 138413314;
        v245 = v58;
        v246 = 2048;
        v247 = self;
        v248 = 2048;
        v249 = v59;
        v250 = 2048;
        v251 = v60;
        v252 = 2048;
        v253 = v61;
        _os_log_impl(&dword_2452FB000, v56, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] Using timeout of %lf", buf, 0x34u);

        v5 = 0x278E30000uLL;
      }
    }

    v62 = [(CoreDAVTask *)self httpMethod];
    v63 = objc_alloc(MEMORY[0x277CBAB50]);
    v64 = [(CoreDAVTask *)self cachePolicy];
    [(CoreDAVTask *)self timeoutInterval];
    v65 = [v63 initWithURL:v234 cachePolicy:v64 timeoutInterval:?];
    v66 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v233 = v62;
    if (objc_opt_respondsToSelector())
    {
      v67 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v68 = [v67 shouldUseOpportunisticSockets];

      if (v68)
      {
        v69 = [*(v5 + 2968) sharedLogging];
        v70 = objc_loadWeakRetained(&self->_accountInfoProvider);
        v71 = [v69 logHandleForAccountInfoProvider:v70];

        if (v71)
        {
          v72 = v71;
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            v73 = objc_opt_class();
            v74 = NSStringFromClass(v73);
            v75 = [(CoreDAVTask *)self _sessionForLogging];
            v76 = [(CoreDAVTask *)self _requestForLogging];
            *buf = 138413058;
            v245 = v74;
            v246 = 2048;
            v247 = self;
            v248 = 2048;
            v249 = v75;
            v250 = 2048;
            v251 = v76;
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

    v77 = [*(v5 + 2968) sharedLogging];
    v78 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v71 = [v77 logHandleForAccountInfoProvider:v78];

    if (v71)
    {
      v79 = v71;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        v80 = objc_opt_class();
        v81 = NSStringFromClass(v80);
        v82 = [(CoreDAVTask *)self _sessionForLogging];
        v83 = [(CoreDAVTask *)self _requestForLogging];
        *buf = 138413058;
        v245 = v81;
        v246 = 2048;
        v247 = self;
        v248 = 2048;
        v249 = v82;
        v250 = 2048;
        v251 = v83;
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
      v88 = [v87 password];
      v89 = [v88 length];

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

    [v65 setHTTPMethod:v62];
    v98 = [(CoreDAVTask *)self requestBodyStream];
    if (v98)
    {
      [v65 setHTTPBodyStream:v98];
      v99 = 0;
    }

    else
    {
      v99 = [(CoreDAVTask *)self _createBodyData];
      [v65 setHTTPBody:v99];
      if (-[CoreDAVTask _includeGeneralHeaders](self, "_includeGeneralHeaders") || [v99 length])
      {
        v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v99, "length")];
        [v65 setValue:v100 forHTTPHeaderField:@"Content-Length"];
      }

      if (!v99)
      {
LABEL_76:
        if ([(CoreDAVTask *)self _includeGeneralHeaders])
        {
          v101 = [objc_opt_class() stringFromDepth:{-[CoreDAVTask depth](self, "depth")}];
          if (v101)
          {
            [v65 setValue:v101 forHTTPHeaderField:@"Depth"];
          }

          v102 = [v234 scheme];
          v103 = [v102 isEqualToString:@"https"];

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
        v110 = [v109 userAgentHeader];

        if (v110)
        {
          v111 = objc_loadWeakRetained(&self->_accountInfoProvider);
          v112 = [v111 userAgentHeader];
          [v65 setValue:v112 forHTTPHeaderField:@"User-Agent"];
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
        v115 = [(CoreDAVTask *)self additionalHeaderValues];
        [v115 enumerateKeysAndObjectsUsingBlock:v114];

        v116 = objc_loadWeakRetained(&self->_accountInfoProvider);
        v117 = objc_opt_respondsToSelector();

        if (v117)
        {
          v118 = objc_loadWeakRetained(&self->_accountInfoProvider);
          v119 = [v118 additionalHeaderValues];
          [v119 enumerateKeysAndObjectsUsingBlock:v114];
        }

        v120 = objc_loadWeakRetained(&self->_accountInfoProvider);
        v121 = objc_opt_respondsToSelector();

        if (v121)
        {
          v122 = objc_loadWeakRetained(&self->_accountInfoProvider);
          v123 = [v122 clientToken];

          if ([v123 length])
          {
            [v113 setValue:v123 forHTTPHeaderField:@"X-ClientToken"];
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
        v127 = [v126 oauthInfoProvider];

        v230 = v127;
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v127 oauthVariant] == 1)
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
              v134 = v218 = v98;
              [(CoreDAVTask *)self _sessionForLogging];
              v135 = v222 = v99;
              v136 = [(CoreDAVTask *)self _requestForLogging];
              *buf = 138413058;
              v245 = v134;
              v246 = 2048;
              v247 = self;
              v248 = 2048;
              v249 = v135;
              v250 = 2048;
              v251 = v136;
              _os_log_impl(&dword_2452FB000, v132, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Pre-authing with Bearer + OAuth2 token", buf, 0x2Au);

              v99 = v222;
              v98 = v218;
            }
          }

          v137 = [v230 oauth2Token];
          v138 = [v137 length];
          v139 = v138 != 0;
          if (v138)
          {
            v140 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bearer %@", v137];
            [v113 setValue:v140 forHTTPHeaderField:@"Authorization"];
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

        v223 = v99;
        v142 = v98;
        v143 = objc_loadWeakRetained(&self->_accountInfoProvider);
        v144 = [v143 user];
        v141 = 0x278E30000uLL;
        if ([v144 length])
        {
          v226 = v114;
          v145 = objc_loadWeakRetained(&self->_accountInfoProvider);
          v146 = [v145 password];
          if ([v146 length])
          {
            v147 = [v234 scheme];
            v148 = [v147 isEqualToString:@"https"];

            if (!v148)
            {
              v98 = v142;
              v99 = v223;
              v114 = v226;
LABEL_116:
              if (self->_requestIsCompressed)
              {
                [v113 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
                [v113 setValue:@"no-transform" forHTTPHeaderField:@"Cache-Control"];
              }

              [(NSMutableDictionary *)self->_overriddenHeaders enumerateKeysAndObjectsUsingBlock:v114];
              v156 = objc_loadWeakRetained(&self->_accountInfoProvider);
              v157 = [v156 identityPersist];

              if (v157)
              {
                v158 = v99;
                v227 = v114;
                v159 = [*(v141 + 2968) sharedLogging];
                v160 = objc_loadWeakRetained(&self->_accountInfoProvider);
                v161 = [v159 logHandleForAccountInfoProvider:v160];

                if (v161)
                {
                  v162 = v113;
                  v163 = v157;
                  v164 = v161;
                  if (os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
                  {
                    v165 = objc_opt_class();
                    NSStringFromClass(v165);
                    v219 = v98;
                    v166 = v224 = v158;
                    v167 = [(CoreDAVTask *)self _sessionForLogging];
                    v168 = [(CoreDAVTask *)self _requestForLogging];
                    *buf = 138413058;
                    v245 = v166;
                    v246 = 2048;
                    v247 = self;
                    v248 = 2048;
                    v249 = v167;
                    v250 = 2048;
                    v251 = v168;
                    _os_log_impl(&dword_2452FB000, v164, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Found identity, attaching client certificate", buf, 0x2Au);

                    v98 = v219;
                    v158 = v224;
                  }

                  v157 = v163;
                  v113 = v162;
                }

                v169 = _CoreDAVSecCopyIdentityFromPersist(v157);
                if (v169)
                {
                  v170 = v169;
                  v216 = v157;
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
                    v220 = v98;
                    v174 = [*(v141 + 2968) sharedLogging];
                    v175 = objc_loadWeakRetained(&self->_accountInfoProvider);
                    v176 = [v174 logHandleForAccountInfoProvider:v175];

                    if (v176)
                    {
                      v177 = v176;
                      if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
                      {
                        v178 = objc_opt_class();
                        v215 = NSStringFromClass(v178);
                        v179 = [(CoreDAVTask *)self _sessionForLogging];
                        v180 = [(CoreDAVTask *)self _requestForLogging];
                        *buf = 138413314;
                        v245 = v215;
                        v246 = 2048;
                        v247 = self;
                        v248 = 2048;
                        v249 = v179;
                        v181 = v179;
                        v250 = 2048;
                        v182 = v180;
                        v251 = v180;
                        v252 = 2112;
                        v253 = v170;
                        _os_log_impl(&dword_2452FB000, v177, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] No auth chain for sec identity %@", buf, 0x34u);
                      }
                    }

                    v98 = v220;
                    v114 = v227;
                  }

                  CFRelease(v170);
                  v99 = v158;
                  v157 = v216;
                }

                else
                {
                  v114 = v227;
                  v99 = v158;
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
                    v190 = [v189 copyStorageSession];

                    if (v190)
                    {
                      v221 = v98;
                      v225 = v99;
                      v191 = v114;
                      v192 = [*(v141 + 2968) sharedLogging];
                      v193 = objc_loadWeakRetained(&self->_accountInfoProvider);
                      v194 = [v192 logHandleForAccountInfoProvider:v193];

                      if (v194)
                      {
                        v228 = v113;
                        v217 = v157;
                        v195 = v194;
                        if (os_log_type_enabled(v195, OS_LOG_TYPE_INFO))
                        {
                          v196 = objc_opt_class();
                          v197 = NSStringFromClass(v196);
                          v198 = [(CoreDAVTask *)self _sessionForLogging];
                          v199 = [(CoreDAVTask *)self _requestForLogging];
                          *buf = 138413058;
                          v245 = v197;
                          v246 = 2048;
                          v247 = self;
                          v248 = 2048;
                          v249 = v198;
                          v250 = 2048;
                          v251 = v199;
                          _os_log_impl(&dword_2452FB000, v195, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Account requested custom storage session.  Doing that", buf, 0x2Au);
                        }

                        v157 = v217;
                        v113 = v228;
                      }

                      v200 = [(CoreDAVTask *)self _applyStorageSession:v190 toRequest:v113];

                      CFRelease(v190);
                      v113 = v200;
                      v114 = v191;
                      v98 = v221;
                      v99 = v225;
                    }
                  }
                }
              }

              else
              {
                [v113 setHTTPShouldHandleCookies:0];
              }

              if (v98)
              {
                v201 = v98;
                v202 = [*(v141 + 2968) sharedLogging];
                v203 = objc_loadWeakRetained(&self->_accountInfoProvider);
                v204 = [v202 logHandleForAccountInfoProvider:v203];

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
                  v207 = v206 = v157;
                  [(CoreDAVTask *)self _sessionForLogging];
                  v209 = v208 = v114;
                  v210 = [(CoreDAVTask *)self _requestForLogging];
                  *buf = 138413058;
                  v245 = v207;
                  v246 = 2048;
                  v247 = self;
                  v248 = 2048;
                  v249 = v209;
                  v250 = 2048;
                  v251 = v210;
                  v211 = "[%@ %p, sess %p, request %p] Outgoing request body is streamed";
LABEL_147:
                  _os_log_impl(&dword_2452FB000, v204, OS_LOG_TYPE_DEBUG, v211, buf, 0x2Au);

                  v114 = v208;
                  v157 = v206;
                  v113 = v229;
                  goto LABEL_148;
                }
              }

              else
              {
                if ([v99 bytes])
                {
                  goto LABEL_151;
                }

                v201 = 0;
                v202 = [*(v141 + 2968) sharedLogging];
                v213 = objc_loadWeakRetained(&self->_accountInfoProvider);
                v204 = [v202 logHandleForAccountInfoProvider:v213];

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
                  v207 = v206 = v157;
                  [(CoreDAVTask *)self _sessionForLogging];
                  v209 = v208 = v114;
                  v210 = [(CoreDAVTask *)self _requestForLogging];
                  *buf = 138413058;
                  v245 = v207;
                  v246 = 2048;
                  v247 = self;
                  v248 = 2048;
                  v249 = v209;
                  v250 = 2048;
                  v251 = v210;
                  v211 = "[%@ %p, sess %p, request %p] Outgoing request body is empty";
                  goto LABEL_147;
                }
              }

LABEL_149:

              v98 = v201;
LABEL_151:
              [v113 _setNonAppInitiated:1];
              [(CoreDAVTask *)self loadRequest:v113];

              v4 = v232;
              goto LABEL_152;
            }

            v149 = objc_loadWeakRetained(&self->_accountInfoProvider);
            v150 = [v149 user];
            v143 = [v150 CDVStringByRemovingPercentEscapesForHREF];

            v151 = MEMORY[0x277CCACA8];
            v152 = objc_loadWeakRetained(&self->_accountInfoProvider);
            v153 = [v152 password];
            v154 = [v151 stringWithFormat:@"%@:%@", v143, v153];
            v155 = [v154 dataUsingEncoding:4];
            v144 = [v155 base64EncodedStringWithOptions:0];

            v145 = [MEMORY[0x277CCACA8] stringWithFormat:@"Basic %@", v144];
            [v113 setValue:v145 forHTTPHeaderField:@"Authorization"];
            v141 = 0x278E30000;
          }

          else
          {
          }

          v114 = v226;
        }

        v98 = v142;
        v99 = v223;
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
      v31 = [(CoreDAVTask *)self _sessionForLogging];
      v32 = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413570;
      v245 = v30;
      v246 = 2048;
      v247 = self;
      v248 = 2048;
      v249 = v31;
      v250 = 2048;
      v251 = v32;
      v252 = 2112;
      v253 = v4;
      v254 = 2112;
      v255 = self;
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
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSinceDate:self->_dateConnectionWentOut];
    [v5 noteTimeSpentInNetworking:self forTask:?];
LABEL_7:

    goto LABEL_8;
  }

  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v5 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSinceDate:self->_dateConnectionWentOut];
    [v5 noteTimeSpentInNetworking:?];
    goto LABEL_7;
  }

LABEL_8:
  dateConnectionWentOut = self->_dateConnectionWentOut;
  self->_dateConnectionWentOut = 0;
}

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(CoreDAVTask *)self markAsFinished])
  {
    goto LABEL_16;
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_performCoreDAVTask object:0];
  [(CoreDAVTask *)self reportStatusWithError:v4];
  if (!self->_didFinishLoading)
  {
    [(CoreDAVRequestLogger *)self->_logger finishCoreDAVResponse];
  }

  [(CoreDAVTask *)self setError:v4];
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

  v9 = [(CoreDAVTask *)self completionBlock];

  if (v9)
  {
    v10 = [(CoreDAVTask *)self completionBlock];
    v10[2]();
LABEL_10:

    goto LABEL_11;
  }

  v11 = [(CoreDAVTask *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v10 = [(CoreDAVTask *)self delegate];
    [v10 task:self didFinishWithError:v4];
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
      v19 = [(CoreDAVTask *)self _sessionForLogging];
      v20 = [(CoreDAVTask *)self _requestForLogging];
      uniqueID = self->_uniqueID;
      v24 = 138413570;
      v25 = v18;
      v26 = 2048;
      v27 = self;
      v28 = 2048;
      v29 = v19;
      v30 = 2048;
      v31 = v20;
      v32 = 2114;
      v33 = uniqueID;
      v34 = 2112;
      v35 = v4;
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
  v2 = self;
  objc_sync_enter(v2);
  finished = v2->_finished;
  objc_sync_exit(v2);

  return finished;
}

- (BOOL)markAsFinished
{
  v2 = self;
  objc_sync_enter(v2);
  finished = v2->_finished;
  v2->_finished = 1;
  objc_sync_exit(v2);

  return !finished;
}

- (id)credentialForClientCertificateChallenge:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = 0;
    v9 = 0;
    goto LABEL_6;
  }

  v5 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v6 = [v5 clientCertificateInfoProvider];

  if (v6)
  {
    v7 = [v6 copySecIdentity];
    if (v7)
    {
      v8 = v7;
      WeakRetained = [v6 secCertificates];
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

- (id)credentialForOAuthChallenge:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v8 = [v7 oauthInfoProvider];
  }

  else
  {
    v8 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v8 oauth2Token];
    v9 = [v4 protectionSpace];
    [v9 realm];
    OAuth2 = _CFURLCredentialCreateOAuth2();
  }

  else
  {
    OAuth2 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && !OAuth2)
  {
    OAuth2 = [v8 newOAuth1CredentialForChallenge:v4];
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

- (id)_applyAuthenticationChain:(__CFArray *)a3 toRequest:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a4;
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
      v13 = [(CoreDAVTask *)self _sessionForLogging];
      v14 = [(CoreDAVTask *)self _requestForLogging];
      v23 = 138413570;
      v24 = v12;
      v25 = 2048;
      v26 = self;
      v27 = 2048;
      v28 = v13;
      v29 = 2048;
      v30 = v14;
      v31 = 2112;
      v32 = a3;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_2452FB000, v10, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Applying authentication chain %@ to request %@", &v23, 0x3Eu);
    }
  }

  [v6 _CFURLRequest];
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
  CFDictionarySetValue(Mutable, v16, a3);
  CFURLRequestSetSSLProperties();
  CFRelease(v19);
  v20 = [objc_alloc(MEMORY[0x277CBAB50]) _initWithCFURLRequest:MutableCopy];

  CFRelease(MutableCopy);
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_applyStorageSession:(__CFURLStorageSession *)a3 toRequest:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a4;
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
      v13 = [(CoreDAVTask *)self _sessionForLogging];
      v14 = [(CoreDAVTask *)self _requestForLogging];
      v19 = 138413570;
      v20 = v12;
      v21 = 2048;
      v22 = self;
      v23 = 2048;
      v24 = v13;
      v25 = 2048;
      v26 = v14;
      v27 = 2112;
      v28 = a3;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_2452FB000, v10, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] Applying storage session %@ to request %@", &v19, 0x3Eu);
    }
  }

  [v6 _CFURLRequest];
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
  v4 = [(CoreDAVTask *)self responseHeaders];
  v5 = [v4 CDVObjectForKeyCaseInsensitive:@"X-Web-Login-Required"];
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
          v15 = [(CoreDAVTask *)self _sessionForLogging];
          v16 = [(CoreDAVTask *)self _requestForLogging];
          v17 = objc_loadWeakRetained(&self->_accountInfoProvider);
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          *buf = 138413314;
          v35 = v14;
          v36 = 2048;
          v37 = self;
          v38 = 2048;
          v39 = v15;
          v40 = 2048;
          v41 = v16;
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
      v26 = [(CoreDAVTask *)self _sessionForLogging];
      v27 = [(CoreDAVTask *)self _requestForLogging];
      v28 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138413314;
      v35 = v25;
      v36 = 2048;
      v37 = self;
      v38 = 2048;
      v39 = v26;
      v40 = 2048;
      v41 = v27;
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

- (void)_runOnCallbackThread:(id)a3
{
  callbackThread = self->_callbackThread;
  if (callbackThread)
  {
    v6 = MEMORY[0x245D68C20](a3, a2);
    [(CoreDAVTask *)self performSelector:sel__runOnThisThread_ onThread:callbackThread withObject:v6 waitUntilDone:0];
  }

  else
  {
    v5 = *(a3 + 2);

    v5(a3);
  }
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5)
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
        v12 = [(CoreDAVTask *)self _sessionForLogging];
        v13 = [(CoreDAVTask *)self _requestForLogging];
        v15 = 138413314;
        v16 = v11;
        v17 = 2048;
        v18 = self;
        v19 = 2048;
        v20 = v12;
        v21 = 2048;
        v22 = v13;
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] session invalidated with error %@", &v15, 0x34u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__CoreDAVTask_URLSession_didReceiveChallenge_completionHandler___block_invoke;
  v11[3] = &unk_278E31220;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  [(CoreDAVTask *)self _runOnCallbackThread:v11];
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v10 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__CoreDAVTask_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke;
  v12[3] = &unk_278E31248;
  v13 = v10;
  v14 = self;
  v15 = a6;
  v16 = a7;
  v11 = v10;
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

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__CoreDAVTask_URLSession_task_didReceiveChallenge_completionHandler___block_invoke;
  v15[3] = &unk_278E31270;
  v16 = v9;
  v17 = self;
  v18 = v10;
  v19 = v11;
  v12 = v10;
  v13 = v11;
  v14 = v9;
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

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__CoreDAVTask_URLSession_dataTask_didReceiveData___block_invoke;
  v14[3] = &unk_278E31298;
  v15 = v9;
  v16 = self;
  v17 = v8;
  v18 = v10;
  v11 = v10;
  v12 = v8;
  v13 = v9;
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

- (void)_session:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v114 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v99 = a5;
  fakeResponseData = self->_fakeResponseData;
  if (!fakeResponseData)
  {
LABEL_4:
    self->_didReceiveData = 1;
    v12 = +[CoreDAVLogging sharedLogging];
    v13 = [v12 shouldLogAtLevel:7 forAccountInfoProvider:0];

    v98 = v9;
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
          v20 = [(CoreDAVTask *)self _sessionForLogging];
          v21 = [(CoreDAVTask *)self _requestForLogging];
          *buf = 138413058;
          v101 = v19;
          v102 = 2048;
          v103 = self;
          v104 = 2048;
          v105 = v20;
          v106 = 2048;
          v107 = v21;
          _os_log_impl(&dword_2452FB000, v17, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] didReceiveData", buf, 0x2Au);

          v9 = v98;
        }
      }

      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v99 encoding:4];
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
          v29 = [(CoreDAVTask *)self _sessionForLogging];
          v30 = [(CoreDAVTask *)self _requestForLogging];
          *buf = 138413314;
          v101 = v28;
          v102 = 2048;
          v103 = self;
          v104 = 2048;
          v105 = v29;
          v106 = 2048;
          v107 = v30;
          v108 = 2112;
          v109 = v22;
          _os_log_impl(&dword_2452FB000, v26, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] That data is %@", buf, 0x34u);

          v9 = v98;
        }
      }
    }

    [(CoreDAVTask *)self setTotalBytesReceived:[(CoreDAVTask *)self totalBytesReceived]+ [(NSData *)v99 length]];
    v31 = [(NSHTTPURLResponse *)self->_response expectedContentLength];
    v32 = [(CoreDAVTask *)self responseProgressBlock];
    if (v32)
    {
      if (v31 == -1)
      {

        v33 = 0;
      }

      else
      {

        v33 = v31;
        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }
      }

      v34 = [(CoreDAVTask *)self responseProgressBlock];
      (v34)[2](v34, [(CoreDAVTask *)self totalBytesReceived], v33, v31 != -1);
    }

    if (v31 == -1)
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
          v40 = [(CoreDAVTask *)self _sessionForLogging];
          v46 = [(CoreDAVTask *)self _requestForLogging];
          v47 = [(NSData *)v99 length];
          v48 = [(CoreDAVTask *)self totalBytesReceived];
          *buf = 138413570;
          v101 = v39;
          v102 = 2048;
          v103 = self;
          v104 = 2048;
          v105 = v40;
          v106 = 2048;
          v107 = v46;
          v108 = 2048;
          v109 = v47;
          v9 = v98;
          v110 = 2048;
          v111 = v48;
          _os_log_impl(&dword_2452FB000, v37, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] didReceiveData: %lu new bytes, have received a total of %lld, no information on expected total", buf, 0x3Eu);

          goto LABEL_28;
        }

LABEL_29:
      }

LABEL_30:

LABEL_31:
      if (self->_task != v9)
      {
        [CoreDAVTask _session:dataTask:didReceiveData:];
      }

      if ([(CoreDAVTask *)self shouldLogResponseBody])
      {
        [(CoreDAVRequestLogger *)self->_logger logCoreDAVResponseSnippet:v99 withTaskIdentifier:0 isBody:1];
      }

      v49 = [(NSHTTPURLResponse *)self->_response allHeaderFields];
      v50 = [v49 valueForKey:@"Content-Type"];

      if ([(CoreDAVTask *)self _shouldHandleStatusCode:[(NSHTTPURLResponse *)self->_response statusCode]])
      {
        v51 = [CoreDAVXMLParser canHandleContentType:v50];
      }

      else
      {
        v51 = 0;
      }

      v52 = [(CoreDAVTask *)self responseBodyParser];

      if (!v52)
      {
        v53 = [(CoreDAVTask *)self copyDefaultParserForContentType:v50];
        [(CoreDAVTask *)self setResponseBodyParser:v53];
        v54 = [(CoreDAVTask *)self responseBodyParser];

        if (!v54)
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

      v57 = [(CoreDAVTask *)self responseBodyParser];
      v58 = v57 != 0;

      v59 = objc_autoreleasePoolPush();
      v60 = [(NSData *)v99 length];
      v61 = v60;
      if (v60 > 0x1000 && v57)
      {
        v93 = v50;
        v95 = v59;
        v96 = v8;
        v62 = 0;
        v63 = -4096;
        do
        {
          v64 = objc_autoreleasePoolPush();
          v65 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:-[NSData bytes](v99 length:"bytes") + v62 freeWhenDone:{4096, 0}];
          if (AnalyticsIsEventUsed() && ![(CoreDAVTask *)self totalBytesWasProcessedAsAbnormallyLarge]&& [(CoreDAVTask *)self totalBytesReceived]>= 0x40000001)
          {
            AnalyticsSendEventLazy();
            [(CoreDAVTask *)self setTotalBytesWasProcessedAsAbnormallyLarge:1];
          }

          v66 = [(CoreDAVTask *)self responseBodyParser];
          v58 = [v66 processData:v65 forTask:self];

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
        v8 = v96;
        v9 = v98;
        v50 = v93;
        if (((v61 != v62) & v58) != 0)
        {
          if (v62)
          {
            v67 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:-[NSData bytes](v99 length:"bytes") + v62 freeWhenDone:{v61 - v62, 0}];
            v68 = [(CoreDAVTask *)self responseBodyParser];
            v58 = [v68 processData:v67 forTask:self];

            v59 = v95;
LABEL_60:

            goto LABEL_61;
          }

LABEL_59:
          v67 = [(CoreDAVTask *)self responseBodyParser];
          v58 = [v67 processData:v99 forTask:self];
          goto LABEL_60;
        }
      }

      else if (v60 && v57)
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
              v77 = [(CoreDAVTask *)self _sessionForLogging];
              v78 = [(CoreDAVTask *)self _requestForLogging];
              [(CoreDAVTask *)self responseBodyParser];
              v79 = v94 = v50;
              v80 = [v79 parserError];
              *buf = 138413314;
              v101 = v76;
              v102 = 2048;
              v103 = self;
              v104 = 2048;
              v105 = v77;
              v106 = 2048;
              v107 = v78;
              v108 = 2112;
              v109 = v80;
              _os_log_impl(&dword_2452FB000, v74, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Parser failed to parse XML body of response %@", buf, 0x34u);

              v50 = v94;
              v9 = v98;
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
            v87 = [(CoreDAVTask *)self _sessionForLogging];
            v88 = [(CoreDAVTask *)self _requestForLogging];
            [(CoreDAVTask *)self responseBodyParser];
            v97 = v8;
            v90 = v89 = v50;
            v91 = [v90 parserError];
            *buf = 138413314;
            v101 = v86;
            v102 = 2048;
            v103 = self;
            v104 = 2048;
            v105 = v87;
            v106 = 2048;
            v107 = v88;
            v108 = 2112;
            v109 = v91;
            _os_log_impl(&dword_2452FB000, v84, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Parser failed to parse with error %@", buf, 0x34u);

            v50 = v89;
            v8 = v97;

            v9 = v98;
          }
        }

        v71 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:3 userInfo:0];
        [(CoreDAVTask *)self finishCoreDAVTaskWithError:v71];
        goto LABEL_75;
      }

      goto LABEL_77;
    }

LABEL_21:
    if ([(NSData *)v99 length]>= v31)
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
        v40 = [(CoreDAVTask *)self _sessionForLogging];
        v41 = [(CoreDAVTask *)self _requestForLogging];
        v42 = [(NSData *)v99 length];
        v43 = [(CoreDAVTask *)self totalBytesReceived];
        *buf = 138413826;
        v101 = v39;
        v102 = 2048;
        v103 = self;
        v104 = 2048;
        v105 = v40;
        v106 = 2048;
        v107 = v41;
        v108 = 2048;
        v109 = v42;
        v110 = 2048;
        v111 = v43;
        v112 = 2048;
        v113 = v31;
        _os_log_impl(&dword_2452FB000, v37, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] didReceiveData: %lu new bytes, now received %lu/%lld total", buf, 0x48u);

        v9 = v98;
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
    v99 = v11;
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

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__CoreDAVTask_URLSession_task_needNewBodyStream___block_invoke;
  v11[3] = &unk_278E31220;
  v12 = v7;
  v13 = self;
  v14 = v8;
  v9 = v8;
  v10 = v7;
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

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __87__CoreDAVTask_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke;
  v22[3] = &unk_278E312E8;
  v23 = v13;
  v24 = self;
  v25 = v12;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v17 = v15;
  v18 = v14;
  v19 = v12;
  v20 = v16;
  v21 = v13;
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

- (void)_session:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v113 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v94 = a7;
  self->_didSendRequest = 1;
  if (!v14 || [(CoreDAVTask *)self allowAutomaticRedirects])
  {
    v92 = v13;
    p_request = &self->_request;
    v17 = [(NSURLRequest *)self->_request URL];
    v18 = [v17 scheme];
    if ([v18 hasPrefix:@"https"])
    {
      v19 = [v15 URL];
      v20 = [v19 scheme];
      v21 = [v20 hasPrefix:@"https"];

      if ((v21 & 1) == 0)
      {
        v22 = v94;
        (*(v94 + 2))(v94, 0);
LABEL_41:
        v13 = v92;
        goto LABEL_42;
      }
    }

    else
    {
    }

    v23 = [v15 mutableCopy];
    v24 = [v15 URL];
    v25 = [v24 host];
    v26 = [v25 length];

    if (v26)
    {
      WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
      v28 = [WeakRetained user];
      v29 = [v24 CDVURLWithUser:v28];

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
          v83 = [(CoreDAVTask *)self _sessionForLogging];
          [(CoreDAVTask *)self _requestForLogging];
          v46 = v89 = v12;
          [(CoreDAVTask *)self url];
          v47 = v87 = v24;
          redirectHistory = self->_redirectHistory;
          *buf = 138413826;
          v96 = v85;
          v97 = 2048;
          v98 = self;
          v99 = 2048;
          v100 = v83;
          v101 = 2048;
          v102 = v46;
          v103 = 2112;
          v104 = v47;
          v105 = 2112;
          v106 = redirectHistory;
          v107 = 2112;
          v108 = v87;
          _os_log_impl(&dword_2452FB000, v44, OS_LOG_TYPE_ERROR, "[%@ %p, sess %p, request %p] Received redirect where request.url.host is empty, not setting user on the redirected URL. \nOriginal URL: %@\nRedirect history: %@\nRedirected to:%@  ", buf, 0x48u);

          v24 = v87;
          v12 = v89;
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
    v53 = [(NSURLRequest *)*p_request HTTPBodyStream];
    log = v53;
    if (v53)
    {
      [v23 setHTTPBodyStream:v53];
    }

    else
    {
      v54 = [(NSURLRequest *)*p_request HTTPBody];
      [v23 setHTTPBody:v54];
    }

    v55 = [(NSURLRequest *)*p_request HTTPMethod];
    [v23 setHTTPMethod:v55];

    v56 = [(NSURLRequest *)*p_request allHTTPHeaderFields];
    [v23 setAllHTTPHeaderFields:v56];

    if (v14)
    {
      v86 = v31;
      v88 = v24;
      v57 = +[CoreDAVLogging sharedLogging];
      v58 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v59 = [v57 logHandleForAccountInfoProvider:v58];

      v90 = v12;
      if (v59)
      {
        v60 = v59;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = objc_opt_class();
          v84 = NSStringFromClass(v61);
          v62 = [(CoreDAVTask *)self _sessionForLogging];
          v63 = [(CoreDAVTask *)self _requestForLogging];
          request = self->_request;
          *buf = 138414338;
          v96 = v84;
          v97 = 2048;
          v98 = self;
          v99 = 2048;
          v100 = v62;
          v101 = 2048;
          v102 = v63;
          v65 = v63;
          v103 = 2112;
          v104 = v90;
          v105 = 2112;
          v106 = request;
          v107 = 2112;
          v108 = v15;
          v109 = 2112;
          v110 = v23;
          v111 = 2112;
          v112 = v14;
          _os_log_impl(&dword_2452FB000, v60, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Connection is getting redirected: [%@]\nInitial request: [%@]\nProposed request: [%@]\nReconstructed request: [%@]\nRedirect response: [%@]", buf, 0x5Cu);
        }
      }

      logger = self->_logger;
      v67 = MEMORY[0x277CCACA8];
      v68 = [v23 URL];
      v69 = [v67 stringWithFormat:@"REDIRECT: %@\n\n", v68];
      v70 = [v69 dataUsingEncoding:4];
      [(CoreDAVRequestLogger *)logger logCoreDAVResponseSnippet:v70 withTaskIdentifier:self->_uniqueID];

      if ([v14 statusCode] == 301)
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

      v74 = [v15 URL];
      v75 = [v74 host];
      v76 = [(NSURLRequest *)*p_request URL];
      v77 = [v76 host];
      v78 = [v75 isEqualToString:v77];

      v24 = v88;
      v12 = v90;
      v31 = v86;
      if ((v78 & 1) == 0)
      {
        *&self->_justTriedTokenAuth = 0;
      }
    }

    [(CoreDAVRequestLogger *)self->_logger finishCoreDAVResponse];
    objc_storeStrong(&self->_request, v23);
    v79 = [v15 HTTPBodyStream];
    v80 = v14 | v79;

    if (!v80)
    {
      v81 = [(CoreDAVTask *)self requestBodyStream];
      if (v81)
      {
        [v23 setHTTPBodyStream:v81];
      }
    }

    v22 = v94;
    (*(v94 + 2))(v94, v23);

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
      v37 = v93 = v13;
      v38 = [(CoreDAVTask *)self _sessionForLogging];
      v39 = [(CoreDAVTask *)self _requestForLogging];
      v40 = self->_request;
      *buf = 138414082;
      v96 = v37;
      v97 = 2048;
      v98 = self;
      v99 = 2048;
      v100 = v38;
      v101 = 2048;
      v102 = v39;
      v103 = 2112;
      v104 = v12;
      v105 = 2112;
      v106 = v40;
      v107 = 2112;
      v108 = v15;
      v109 = 2112;
      v110 = v14;
      _os_log_impl(&dword_2452FB000, v35, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Connection is getting redirected but automatic redirections are disabled.  Connection: [%@]\nInitial request: [%@]\nProposed request: [%@]\nRedirect response: [%@]", buf, 0x52u);

      v13 = v93;
    }
  }

  v22 = v94;
  (*(v94 + 2))(v94, 0);
LABEL_42:

  v82 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canAuthenticateAgainstProtectionSpace:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      v11 = [(CoreDAVTask *)self _sessionForLogging];
      v12 = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413058;
      v36 = v10;
      v37 = 2048;
      v38 = self;
      v39 = 2048;
      v40 = v11;
      v41 = 2048;
      v42 = v12;
      _os_log_impl(&dword_2452FB000, v8, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] _canAuthenticateAgainstProtectionSpace:", buf, 0x2Au);
    }
  }

  v13 = [v4 authenticationMethod];
  v14 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v17 = [v16 handleAuthenticateAgainstProtectionSpace:v4];
LABEL_9:
    v18 = v17;

    goto LABEL_10;
  }

  if ([v13 isEqualToString:*MEMORY[0x277CBAAF8]])
  {
    v16 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v17 = objc_opt_respondsToSelector();
    goto LABEL_9;
  }

  if ([v13 isEqualToString:*MEMORY[0x277CBAB00]] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", *MEMORY[0x277CBAAE0]))
  {
    v18 = 1;
  }

  else
  {
    v18 = [v13 isEqualToString:*MEMORY[0x277CBAAE8]];
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
      v32 = [(CoreDAVTask *)self _sessionForLogging];
      [(CoreDAVTask *)self _requestForLogging];
      v25 = v34 = v18;
      v26 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      [MEMORY[0x277CCABB0] numberWithBool:v34 & 1];
      v29 = v33 = v4;
      *buf = 138413826;
      v36 = v24;
      v37 = 2048;
      v38 = self;
      v39 = 2048;
      v40 = v32;
      v41 = 2048;
      v42 = v25;
      v43 = 2114;
      v44 = v28;
      v45 = 2114;
      v46 = v13;
      v47 = 2114;
      v48 = v29;
      _os_log_impl(&dword_2452FB000, v22, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] _accountInfoProvider: (%{public}@) Can authenticate against protection space %{public}@? %{public}@", buf, 0x48u);

      v4 = v33;
      v18 = v34;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

- (void)_didReceiveAuthenticationChallenge:(id)a3 forTask:(id)a4 completionHandler:(id)a5
{
  v147 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v134 = a5;
  v133 = [v8 protectionSpace];
  v10 = [v133 authenticationMethod];
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
      v17 = v16 = v10;
      v18 = [(CoreDAVTask *)self _sessionForLogging];
      v19 = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413570;
      v136 = v17;
      v137 = 2048;
      v138 = self;
      v139 = 2048;
      v140 = v18;
      v141 = 2048;
      v142 = v19;
      v143 = 2114;
      v144 = v16;
      v145 = 2048;
      v146 = [v8 previousFailureCount];
      _os_log_impl(&dword_2452FB000, v14, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Received authentication challenge for method %{public}@, previous failure count %ld", buf, 0x3Eu);

      v10 = v16;
    }
  }

  v20 = [v8 failureResponse];
  v21 = [v20 allHeaderFields];
  v22 = [v21 CDVObjectForKeyCaseInsensitive:@"X-ClientToken-Request"];
  if (!v22)
  {
    goto LABEL_13;
  }

  v23 = v22;
  v24 = v10;
  v25 = objc_loadWeakRetained(&self->_accountInfoProvider);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_12:

    v10 = v24;
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
  v130 = v8;
  v29 = v28 = v9;
  v126 = [v29 length];

  v9 = v28;
  v8 = v130;

  v10 = v24;
  if (!v126)
  {
    v30 = objc_loadWeakRetained(&self->_accountInfoProvider);
    [v30 clientTokenRequestedByServer];

    v31 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v32 = [v31 clientToken];
    v33 = [v32 length];

    if (v33)
    {
      self->_shouldRetryWithClientToken = 1;
LABEL_39:
      v51 = v134;
      (*(v134 + 2))(v134, 2, 0);
      goto LABEL_27;
    }
  }

LABEL_14:
  if ([v8 previousFailureCount])
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
      v43 = [*(v34 + 2968) sharedLogging];
      v44 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v45 = [v43 logHandleForAccountInfoProvider:v44];

      if (v45)
      {
        v46 = v45;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          v49 = [(CoreDAVTask *)self _sessionForLogging];
          v50 = [(CoreDAVTask *)self _requestForLogging];
          *buf = 138413058;
          v136 = v48;
          v137 = 2048;
          v138 = self;
          v139 = 2048;
          v140 = v49;
          v141 = 2048;
          v142 = v50;
          _os_log_impl(&dword_2452FB000, v46, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] continuing without credential for challenge", buf, 0x2Au);
        }
      }

      v51 = v134;
      (*(v134 + 2))(v134, 0, 0);
      goto LABEL_27;
    }

    v38 = v37;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = [(CoreDAVTask *)self _sessionForLogging];
      v42 = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413315;
      v136 = v40;
      v137 = 2048;
      v138 = self;
      v139 = 2048;
      v140 = v41;
      v141 = 2048;
      v142 = v42;
      v143 = 2113;
      v144 = v8;
      _os_log_impl(&dword_2452FB000, v38, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] ignoring challenge %{private}@ because it's already failed", buf, 0x34u);
    }

    v37 = v38;
LABEL_19:

    goto LABEL_20;
  }

  v53 = [v9 currentRequest];
  v54 = [v53 URL];

  v55 = [v54 scheme];
  v56 = [v55 isEqualToString:@"http"];
  v57 = MEMORY[0x277CBAAE0];
  v34 = 0x278E30000uLL;
  if (v56)
  {
    v58 = *MEMORY[0x277CBAAE0];
    v59 = [v10 isEqualToString:*MEMORY[0x277CBAAE0]];

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
            v73 = [(CoreDAVTask *)self _sessionForLogging];
            v74 = [(CoreDAVTask *)self _requestForLogging];
            *buf = 138413058;
            v136 = v72;
            v137 = 2048;
            v138 = self;
            v139 = 2048;
            v140 = v73;
            v141 = 2048;
            v142 = v74;
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
        v64 = v127 = v10;
        v65 = [(CoreDAVTask *)self _sessionForLogging];
        v66 = [(CoreDAVTask *)self _requestForLogging];
        *buf = 138413314;
        v136 = v64;
        v137 = 2048;
        v138 = self;
        v139 = 2048;
        v140 = v65;
        v141 = 2048;
        v142 = v66;
        v143 = 2112;
        v144 = v54;
        _os_log_impl(&dword_2452FB000, v62, OS_LOG_TYPE_ERROR, "[%@ %p, sess %p, request %p] Cancelling authentication challenge for insecure connection using basic authentication for URL %@", buf, 0x34u);

        v10 = v127;
      }

LABEL_33:

      goto LABEL_34;
    }
  }

  else
  {

    v58 = *v57;
  }

  if (([v10 isEqualToString:v58] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277CBAAE8]))
  {
    v131 = v54;
    if (![(CoreDAVTask *)self _shouldCreateCredentialForBasicOrDigestAuthChallenge:v8])
    {
      v86 = [v8 proposedCredential];
      v87 = [v86 password];
      v88 = [v87 length];

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
        v129 = v10;
        v101 = v38;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          v102 = objc_opt_class();
          v125 = NSStringFromClass(v102);
          v123 = [(CoreDAVTask *)self _sessionForLogging];
          v103 = [(CoreDAVTask *)self _requestForLogging];
          v124 = objc_loadWeakRetained(&self->_accountInfoProvider);
          v104 = [v124 accountID];
          *buf = 138413314;
          v136 = v125;
          v137 = 2048;
          v138 = self;
          v139 = 2048;
          v140 = v123;
          v141 = 2048;
          v142 = v103;
          v143 = 2114;
          v144 = v104;
          _os_log_impl(&dword_2452FB000, v101, OS_LOG_TYPE_ERROR, "[%@ %p, sess %p, request %p] Got a credential challenge, but we don't have any credentials. This request will likely fail. accountID = %{public}@", buf, 0x34u);
        }

        v10 = v129;
      }

      v35 = v131;
      goto LABEL_19;
    }

    v75 = MEMORY[0x277CBAB80];
    v76 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v77 = [v76 user];
    [v77 CDVStringByRemovingPercentEscapesForHREF];
    v79 = v78 = v9;
    v80 = objc_loadWeakRetained(&self->_accountInfoProvider);
    [v80 password];
    v81 = self;
    v83 = v82 = v10;
    v84 = [v75 credentialWithUser:v79 password:v83 persistence:1];

    v10 = v82;
    self = v81;
    v34 = 0x278E30000;

    v9 = v78;
    v85 = v84;

    v54 = v131;
    goto LABEL_53;
  }

  if ([v10 isEqualToString:*MEMORY[0x277CBAAF8]])
  {
    v89 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v90 = objc_opt_respondsToSelector();

    if (v90)
    {
      v91 = [(CoreDAVTask *)self credentialForOAuthChallenge:v8];
LABEL_52:
      v85 = v91;
LABEL_53:

      if (!v85)
      {
        goto LABEL_22;
      }

      v92 = [*(v34 + 2968) sharedLogging];
      v93 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v94 = [v92 logHandleForAccountInfoProvider:v93];

      if (v94)
      {
        v128 = v10;
        v95 = v94;
        if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
        {
          v96 = objc_opt_class();
          v97 = NSStringFromClass(v96);
          v98 = [(CoreDAVTask *)self _sessionForLogging];
          v99 = [(CoreDAVTask *)self _requestForLogging];
          *buf = 138413315;
          v136 = v97;
          v137 = 2048;
          v138 = self;
          v139 = 2048;
          v140 = v98;
          v141 = 2048;
          v142 = v99;
          v143 = 2113;
          v144 = v85;
          _os_log_impl(&dword_2452FB000, v95, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Using credential %{private}@ for challenge", buf, 0x34u);
        }

        v10 = v128;
      }

      v51 = v134;
      (*(v134 + 2))(v134, 0, v85);

      goto LABEL_27;
    }
  }

  if ([v10 isEqualToString:*MEMORY[0x277CBAAC8]])
  {
    v91 = [(CoreDAVTask *)self credentialForClientCertificateChallenge:v8];
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
      v121 = [(CoreDAVTask *)self _sessionForLogging];
      [(CoreDAVTask *)self _requestForLogging];
      v122 = v132 = v54;
      *buf = 138413058;
      v136 = v120;
      v137 = 2048;
      v138 = self;
      v139 = 2048;
      v140 = v121;
      v141 = 2048;
      v142 = v122;
      _os_log_impl(&dword_2452FB000, v62, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] AccountInfoProvider doesn't know how to handle a trust challenge, so we're just going to have to cancel.", buf, 0x2Au);

      v54 = v132;
    }

    goto LABEL_33;
  }

  v107 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v108 = [v107 handleTrustChallenge:v8 completionHandler:v134];

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
      v116 = [(CoreDAVTask *)self _sessionForLogging];
      v117 = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413058;
      v136 = v115;
      v137 = 2048;
      v138 = self;
      v139 = 2048;
      v140 = v116;
      v141 = 2048;
      v142 = v117;
      _os_log_impl(&dword_2452FB000, v113, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Waiting for runloop callback to decide what to do", buf, 0x2Au);
    }
  }

  v51 = v134;
LABEL_27:

  v52 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldCreateCredentialForBasicOrDigestAuthChallenge:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
  v6 = [WeakRetained password];
  if ([v6 length])
  {
    v7 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v8 = [v7 user];
    v9 = [v8 length];

    if (!v9)
    {
      LOBYTE(v14) = 0;
      goto LABEL_7;
    }

    v10 = [v4 proposedCredential];
    v11 = [v10 hasPassword];

    WeakRetained = [v4 proposedCredential];
    v6 = [WeakRetained password];
    v12 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v13 = [v12 password];
    v14 = v11 & [v6 isEqualToString:v13] ^ 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

LABEL_7:
  return v14;
}

- (void)_handleAuthenticationChallenge:(id)a3 task:(id)a4 completionHandler:(id)a5
{
  v110 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 protectionSpace];
  v12 = [v11 authenticationMethod];
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
      v94 = v11;
      v91 = v10;
      v18 = v9;
      v20 = v19 = v8;
      [(CoreDAVTask *)self _sessionForLogging];
      v22 = v21 = v12;
      v23 = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413314;
      v101 = v20;
      v102 = 2048;
      v103 = self;
      v104 = 2048;
      v105 = v22;
      v106 = 2048;
      v107 = v23;
      v108 = 2114;
      v109 = v21;
      _os_log_impl(&dword_2452FB000, v16, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] _handleAuthenticationChallenge:task:completionHandler: for auth mechanism %{public}@", buf, 0x34u);

      v12 = v21;
      v8 = v19;
      v9 = v18;
      v10 = v91;
      v11 = v94;
    }
  }

  if (![(__CFString *)v12 isEqualToString:*MEMORY[0x277CBAB08]])
  {
    self->_justTriedTokenAuth = 0;
    if ([(CoreDAVTask *)self _canAuthenticateAgainstProtectionSpace:v11])
    {
      [(CoreDAVTask *)self _didReceiveAuthenticationChallenge:v8 forTask:v9 completionHandler:v10];
      goto LABEL_34;
    }

    if (([(__CFString *)v12 isEqualToString:*MEMORY[0x277CBAB00]]& 1) != 0 || [(__CFString *)v12 isEqualToString:*MEMORY[0x277CBAAC8]])
    {
      v10[2](v10, 1, 0);
      goto LABEL_34;
    }

    goto LABEL_16;
  }

  v24 = +[CoreDAVLogging sharedLogging];
  v25 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v26 = [v24 logHandleForAccountInfoProvider:v25];

  v93 = v12;
  if (v26)
  {
    v27 = v26;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [(CoreDAVTask *)self _sessionForLogging];
      [(CoreDAVTask *)self _requestForLogging];
      v95 = v11;
      v31 = v10;
      v32 = v9;
      v34 = v33 = v8;
      *buf = 138413058;
      v101 = v29;
      v102 = 2048;
      v103 = self;
      v104 = 2048;
      v105 = v30;
      v106 = 2048;
      v107 = v34;
      _os_log_impl(&dword_2452FB000, v27, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] MobileMeAuth requested", buf, 0x2Au);

      v8 = v33;
      v9 = v32;
      v10 = v31;
      v11 = v95;

      v12 = v93;
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
        v41 = [(CoreDAVTask *)self _sessionForLogging];
        [(CoreDAVTask *)self _requestForLogging];
        v96 = v11;
        v42 = v10;
        v43 = v9;
        v45 = v44 = v8;
        *buf = 138413058;
        v101 = v40;
        v102 = 2048;
        v103 = self;
        v104 = 2048;
        v105 = v41;
        v106 = 2048;
        v107 = v45;
        _os_log_impl(&dword_2452FB000, v38, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Rejecting token auth because we've already tried it.", buf, 0x2Au);

        v8 = v44;
        v9 = v43;
        v10 = v42;
        v11 = v96;

        v12 = v93;
      }
    }

LABEL_16:
    v10[2](v10, 3, 0);
    goto LABEL_34;
  }

  *&self->_justTriedTokenAuth = 257;
  v46 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v47 = [v46 user];
  v48 = [v47 length];

  if (v48)
  {
    v49 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v50 = [v49 user];

    v51 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v92 = [v51 password];

    v90 = [v11 realm];
    v52 = +[CoreDAVLogging sharedLogging];
    v53 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v54 = [v52 logHandleForAccountInfoProvider:v53];

    v12 = v93;
    v89 = v50;
    if (v54)
    {
      v55 = v54;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        v58 = [(CoreDAVTask *)self _sessionForLogging];
        [(CoreDAVTask *)self _requestForLogging];
        v97 = v11;
        v59 = v10;
        v60 = v9;
        v62 = v61 = v8;
        *buf = 138413058;
        v101 = v57;
        v102 = 2048;
        v103 = self;
        v104 = 2048;
        v105 = v58;
        v106 = 2048;
        v107 = v62;
        _os_log_impl(&dword_2452FB000, v55, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Creating mme token", buf, 0x2Au);

        v8 = v61;
        v9 = v60;
        v10 = v59;
        v11 = v97;

        v12 = v93;
      }

      v50 = v89;
    }

    v88 = v8;

    v63 = *MEMORY[0x277CBECE8];
    XMobileMeAuthToken = _CFURLCredentialCreateXMobileMeAuthToken();
    v65 = [objc_alloc(MEMORY[0x277CBAB80]) _initWithCFURLCredential:XMobileMeAuthToken];
    CFRelease(XMobileMeAuthToken);
    (v10)[2](v10, 0, v65);
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
        v98 = [(CoreDAVTask *)self _sessionForLogging];
        v72 = [(CoreDAVTask *)self _requestForLogging];
        v73 = v72;
        *buf = 138413314;
        v74 = @"Valid";
        v101 = v71;
        if (!v65)
        {
          v74 = @"InValid";
        }

        v102 = 2048;
        v103 = self;
        v104 = 2048;
        v105 = v98;
        v106 = 2048;
        v107 = v72;
        v108 = 2114;
        v109 = v74;
        _os_log_impl(&dword_2452FB000, v69, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Responded to authChallenge with a %{public}@ mme token", buf, 0x34u);

        v12 = v93;
      }

      v50 = v89;
    }

    v8 = v88;
  }

  else
  {
    v76 = +[CoreDAVLogging sharedLogging];
    v77 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v78 = [v76 logHandleForAccountInfoProvider:v77];

    v12 = v93;
    if (v78)
    {
      v79 = v78;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        v80 = objc_opt_class();
        v81 = NSStringFromClass(v80);
        v82 = [(CoreDAVTask *)self _sessionForLogging];
        [(CoreDAVTask *)self _requestForLogging];
        v99 = v11;
        v83 = v10;
        v84 = v9;
        v86 = v85 = v8;
        *buf = 138413058;
        v101 = v81;
        v102 = 2048;
        v103 = self;
        v104 = 2048;
        v105 = v82;
        v106 = 2048;
        v107 = v86;
        _os_log_impl(&dword_2452FB000, v79, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Using existing token because no user was provided.", buf, 0x2Au);

        v8 = v85;
        v9 = v84;
        v10 = v83;
        v11 = v99;

        v12 = v93;
      }
    }

    v87 = [v8 proposedCredential];
    (v10)[2](v10, 0, v87);
  }

LABEL_34:

  v75 = *MEMORY[0x277D85DE8];
}

- (void)handleWebLoginRequestWithCompletionBlock:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CoreDAVTask *)self responseHeaders];
  v6 = [v5 CDVObjectForKeyCaseInsensitive:@"X-Web-Login-Required"];

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
        [WeakRetained webLoginRequestedAtURL:v9 reasonString:v8 inQueue:MEMORY[0x277D85CD0] completionBlock:v4];

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
          v25 = [v9 scheme];
          v24 = [v9 host];
          v23 = [(NSURLRequest *)self->_request URL];
          v22 = [v23 scheme];
          v19 = [(NSURLRequest *)self->_request URL];
          [v19 host];
          *buf = 138413058;
          v27 = v25;
          v28 = 2112;
          v29 = v24;
          v30 = 2112;
          v31 = v22;
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

    v4[2](v4, 3);
    goto LABEL_16;
  }

  v4[2](v4, 3);
LABEL_17:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__CoreDAVTask_URLSession_task_didCompleteWithError___block_invoke;
  v11[3] = &unk_278E30FB8;
  v12 = v7;
  v13 = self;
  v14 = v8;
  v9 = v8;
  v10 = v7;
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

- (void)_taskFinishedLoading:(id)a3
{
  v104 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      v11 = [(CoreDAVTask *)self _sessionForLogging];
      v12 = [(CoreDAVTask *)self _requestForLogging];
      v92 = 138413314;
      v93 = v10;
      v94 = 2048;
      v95 = self;
      v96 = 2048;
      v97 = v11;
      v98 = 2048;
      v99 = v12;
      v100 = 2112;
      v101 = v4;
      _os_log_impl(&dword_2452FB000, v8, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] Connection did finish loading %@", &v92, 0x34u);
    }
  }

  self->_didFinishLoading = 1;
  [(CoreDAVRequestLogger *)self->_logger finishCoreDAVResponse];
  [(CoreDAVTask *)self _sendTimeSpentInNetworkingToProvider];
  v13 = [(CoreDAVTask *)self responseHeaders];
  v14 = [v13 CDVObjectForKeyCaseInsensitive:@"X-ClientToken-Request"];
  if (v14)
  {
    v15 = v14;
    v16 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v17 = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      goto LABEL_9;
    }

    v13 = objc_loadWeakRetained(&self->_accountInfoProvider);
    [v13 clientTokenRequestedByServer];
  }

LABEL_9:
  if (self->_task != v4)
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
      v24 = [(CoreDAVTask *)self _sessionForLogging];
      v25 = [(CoreDAVTask *)self _requestForLogging];
      v92 = 138413058;
      v93 = v23;
      v94 = 2048;
      v95 = self;
      v96 = 2048;
      v97 = v24;
      v98 = 2048;
      v99 = v25;
      _os_log_impl(&dword_2452FB000, v21, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] connection finished loading", &v92, 0x2Au);
    }
  }

  v26 = [(CoreDAVTask *)self responseBodyParser];
  [v26 processData:0 forTask:self];

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
        v54 = [(CoreDAVTask *)self _sessionForLogging];
        v55 = [(CoreDAVTask *)self _requestForLogging];
        v92 = 138413570;
        v93 = v53;
        v94 = 2048;
        v95 = self;
        v96 = 2048;
        v97 = v54;
        v98 = 2048;
        v99 = v55;
        v100 = 2112;
        v101 = self;
        v102 = 2112;
        v103 = v4;
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
    v58 = [(CoreDAVTask *)self responseBodyParser];
    v59 = [v58 parserError];

    if (!v59)
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
        v66 = [(CoreDAVTask *)self _sessionForLogging];
        v67 = [(CoreDAVTask *)self _requestForLogging];
        v68 = [(CoreDAVTask *)self responseBodyParser];
        v69 = [v68 parserError];
        v92 = 138413314;
        v93 = v65;
        v94 = 2048;
        v95 = self;
        v96 = 2048;
        v97 = v66;
        v98 = 2048;
        v99 = v67;
        v100 = 2112;
        v101 = v69;
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
      v34 = [(CoreDAVTask *)self _sessionForLogging];
      v35 = [(CoreDAVTask *)self _requestForLogging];
      v36 = [(CoreDAVTask *)self responseStatusCode];
      v92 = 138413314;
      v93 = v33;
      v94 = 2048;
      v95 = self;
      v96 = 2048;
      v97 = v34;
      v98 = 2048;
      v99 = v35;
      v100 = 2048;
      v101 = v36;
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
          v77 = [(CoreDAVTask *)self _sessionForLogging];
          v78 = [(CoreDAVTask *)self _requestForLogging];
          v92 = 138413058;
          v93 = v76;
          v94 = 2048;
          v95 = self;
          v96 = 2048;
          v97 = v77;
          v98 = 2048;
          v99 = v78;
          _os_log_impl(&dword_2452FB000, v74, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] The server rejected our compressed request. Attempting an uncompressed request before giving up.", &v92, 0x2Au);
        }
      }

      self->_compressedRequestFailed = 1;
      goto LABEL_50;
    }

    v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v80 = [(NSHTTPURLResponse *)self->_response allHeaderFields];

    if (v80)
    {
      v81 = [(NSHTTPURLResponse *)self->_response allHeaderFields];
      [v70 setObject:v81 forKey:@"CoreDAVHTTPHeaders"];
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
          v89 = [(CoreDAVTask *)self _sessionForLogging];
          v90 = [(CoreDAVTask *)self _requestForLogging];
          v92 = 138413058;
          v93 = v88;
          v94 = 2048;
          v95 = self;
          v96 = 2048;
          v97 = v89;
          v98 = 2048;
          v99 = v90;
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
  v39 = [v38 shouldRetryUnauthorizedTask:v4];

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
      v46 = [(CoreDAVTask *)self _sessionForLogging];
      v47 = [(CoreDAVTask *)self _requestForLogging];
      v92 = 138413314;
      v93 = v45;
      v94 = 2048;
      v95 = self;
      v96 = 2048;
      v97 = v46;
      v98 = 2048;
      v99 = v47;
      v100 = 1024;
      LODWORD(v101) = 401;
      _os_log_impl(&dword_2452FB000, v43, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Received %d; retrying task because [_accountInfoProvider shouldRetryUnauthorizedConnection] returned YES.", &v92, 0x30u);
    }
  }

LABEL_50:
  v79 = CDVRunLoopModesToPerformDelayedSelectorsIn();
  [(CoreDAVTask *)self performSelector:sel_performCoreDAVTask withObject:0 afterDelay:v79 inModes:0.0];

LABEL_63:
  v91 = *MEMORY[0x277D85DE8];
}

- (BOOL)_handleUnauthorizedAccessError:(id)a3
{
  v102 = *MEMORY[0x277D85DE8];
  v5 = a3;
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
      v12 = [(CoreDAVTask *)self _sessionForLogging];
      v13 = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413570;
      v91 = v11;
      v92 = 2048;
      v93 = self;
      v94 = 2048;
      v95 = v12;
      v96 = 2048;
      v97 = v13;
      v98 = 2112;
      v99 = v5;
      v100 = 2112;
      v101 = self;
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
          v22 = [(CoreDAVTask *)self _sessionForLogging];
          v23 = [(CoreDAVTask *)self _requestForLogging];
          *buf = 138413058;
          v91 = v21;
          v92 = 2048;
          v93 = self;
          v94 = 2048;
          v95 = v22;
          v96 = 2048;
          v97 = v23;
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
        v60 = [(CoreDAVTask *)self _sessionForLogging];
        v61 = [(CoreDAVTask *)self _requestForLogging];
        *buf = 138413058;
        v91 = v59;
        v92 = 2048;
        v93 = self;
        v94 = 2048;
        v95 = v60;
        v96 = 2048;
        v97 = v61;
        _os_log_impl(&dword_2452FB000, v57, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Attempting to renew credential", buf, 0x2Au);
      }
    }

    self->_triedRenewingCredential = 1;
    v62 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v63 = [v62 renewCredential];

    v17 = +[CoreDAVLogging sharedLogging];
    v64 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v19 = [v17 logHandleForAccountInfoProvider:v64];

    if (!v63)
    {
      if (v19)
      {
        v19 = v19;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v79 = objc_opt_class();
          v21 = NSStringFromClass(v79);
          v22 = [(CoreDAVTask *)self _sessionForLogging];
          v23 = [(CoreDAVTask *)self _requestForLogging];
          *buf = 138413058;
          v91 = v21;
          v92 = 2048;
          v93 = self;
          v94 = 2048;
          v95 = v22;
          v96 = 2048;
          v97 = v23;
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
          v85 = [(CoreDAVTask *)self _sessionForLogging];
          v86 = [(CoreDAVTask *)self _requestForLogging];
          *buf = 138413570;
          v91 = v84;
          v92 = 2048;
          v93 = self;
          v94 = 2048;
          v95 = v85;
          v96 = 2048;
          v97 = v86;
          v98 = 2112;
          v99 = v5;
          v100 = 2112;
          v101 = self;
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
        v68 = [(CoreDAVTask *)self _sessionForLogging];
        v69 = [(CoreDAVTask *)self _requestForLogging];
        *buf = 138413058;
        v91 = v67;
        v92 = 2048;
        v93 = self;
        v94 = 2048;
        v95 = v68;
        v96 = 2048;
        v97 = v69;
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
      v31 = [(CoreDAVTask *)self _sessionForLogging];
      v32 = [(CoreDAVTask *)self _requestForLogging];
      v89 = v5;
      v33 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138413314;
      v91 = v30;
      v92 = 2048;
      v93 = self;
      v94 = 2048;
      v95 = v31;
      v96 = 2048;
      v97 = v32;
      v98 = 2114;
      v99 = v35;
      _os_log_impl(&dword_2452FB000, v28, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Received bad password (and %{public}@ doesn't respond to shouldTryRenewingCredential)", buf, 0x34u);

      v5 = v89;
    }
  }

  v36 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v37 = objc_opt_respondsToSelector();

  if (v37)
  {
    v38 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v39 = [v38 shouldTurnModalOnBadPassword];

    if (!v39)
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
      v46 = [(CoreDAVTask *)self _sessionForLogging];
      v47 = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413058;
      v91 = v45;
      v92 = 2048;
      v93 = self;
      v94 = 2048;
      v95 = v46;
      v96 = 2048;
      v97 = v47;
      _os_log_impl(&dword_2452FB000, v43, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Bad password error received.", buf, 0x2Au);
    }
  }

  if (self->_receivedBadPasswordResponse)
  {
    objc_storeStrong(&self->_passwordNotificationError, a3);
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
        v55 = [(CoreDAVTask *)self _sessionForLogging];
        v56 = [(CoreDAVTask *)self _requestForLogging];
        *buf = 138413058;
        v91 = v54;
        v92 = 2048;
        v93 = self;
        v94 = 2048;
        v95 = v55;
        v96 = 2048;
        v97 = v56;
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
      v77 = [(CoreDAVTask *)self _sessionForLogging];
      v78 = [(CoreDAVTask *)self _requestForLogging];
      *buf = 138413058;
      v91 = v76;
      v92 = 2048;
      v93 = self;
      v94 = 2048;
      v95 = v77;
      v96 = 2048;
      v97 = v78;
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

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__CoreDAVTask_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
  v18[3] = &unk_278E31310;
  v19 = v11;
  v20 = self;
  v22 = v12;
  v23 = v13;
  v21 = v10;
  v14 = v12;
  v15 = v10;
  v16 = v13;
  v17 = v11;
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

- (void)_session:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v78 = *MEMORY[0x277D85DE8];
  v64 = a4;
  v9 = a5;
  v10 = a6;
  v65 = 0;
  v11 = [(CoreDAVTask *)self accountInfoProvider];
  v12 = objc_opt_respondsToSelector();

  if ((v12 & 1) != 0 && (-[CoreDAVTask accountInfoProvider](self, "accountInfoProvider"), v13 = objc_claimAutoreleasedReturnValue(), [v13 getAppleIDSession], v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
  {
    v15 = [v64 currentRequest];
    [v14 handleResponse:v9 forRequest:v15 shouldRetry:&v65];

    if (v65)
    {
      v16 = CDVRunLoopModesToPerformDelayedSelectorsIn();
      [(CoreDAVTask *)self performSelector:sel_performCoreDAVTask withObject:0 afterDelay:v16 inModes:0.0];
      v17 = 0;
      goto LABEL_23;
    }

    v62 = v14;
    v63 = v10;
  }

  else
  {
    v62 = 0;
    v63 = v10;
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
      v24 = [(CoreDAVTask *)self _sessionForLogging];
      v25 = [(CoreDAVTask *)self _requestForLogging];
      v26 = [v9 statusCode];
      *buf = 138413314;
      v67 = v23;
      v68 = 2048;
      v69 = self;
      v70 = 2048;
      v71 = v24;
      v72 = 2048;
      v73 = v25;
      v74 = 2048;
      v75 = v26;
      _os_log_impl(&dword_2452FB000, v21, OS_LOG_TYPE_DEBUG, "[%@ %p, sess %p, request %p] received response with status %ld", buf, 0x34u);
    }
  }

  objc_storeStrong(&self->_response, a5);
  [(CoreDAVTask *)self setTotalBytesReceived:0];
  [(CoreDAVTask *)self setTotalBytesWasProcessedAsAbnormallyLarge:0];
  logger = self->_logger;
  v28 = [v9 allHeaderFields];
  -[CoreDAVRequestLogger logCoreDAVResponseHeaders:andStatusCode:withTaskIdentifier:](logger, "logCoreDAVResponseHeaders:andStatusCode:withTaskIdentifier:", v28, [v9 statusCode], self->_uniqueID);

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
      v35 = [(CoreDAVTask *)self _sessionForLogging];
      v36 = [(CoreDAVTask *)self _requestForLogging];
      v37 = v9;
      uniqueID = self->_uniqueID;
      v39 = [v37 statusCode];
      *buf = 138413570;
      v67 = v34;
      v68 = 2048;
      v69 = self;
      v70 = 2048;
      v71 = v35;
      v72 = 2048;
      v73 = v36;
      v74 = 2114;
      v75 = uniqueID;
      v9 = v37;
      v76 = 2048;
      v77 = v39;
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
      v46 = [(CoreDAVTask *)self _sessionForLogging];
      v47 = [(CoreDAVTask *)self _requestForLogging];
      v48 = [v9 allHeaderFields];
      [v48 objectForKeyedSubscript:@"X-Apple-Jingle-Correlation-Key"];
      v49 = v60 = v9;
      *buf = 138413570;
      v67 = v45;
      v68 = 2048;
      v69 = self;
      v70 = 2048;
      v71 = v46;
      v72 = 2048;
      v73 = v47;
      v74 = 2114;
      v75 = @"X-Apple-Jingle-Correlation-Key";
      v76 = 2114;
      v77 = v49;
      _os_log_impl(&dword_2452FB000, v43, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Response Header %{public}@ = %{public}@", buf, 0x3Eu);

      v9 = v60;
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
      v55 = [(CoreDAVTask *)self _sessionForLogging];
      v56 = [(CoreDAVTask *)self _requestForLogging];
      [v9 allHeaderFields];
      v57 = v61 = v9;
      v58 = [v57 objectForKeyedSubscript:@"X-Apple-Request-UUID"];
      *buf = 138413570;
      v67 = v54;
      v68 = 2048;
      v69 = self;
      v70 = 2048;
      v71 = v55;
      v72 = 2048;
      v73 = v56;
      v74 = 2114;
      v75 = @"X-Apple-Request-UUID";
      v76 = 2114;
      v77 = v58;
      _os_log_impl(&dword_2452FB000, v52, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Response Header %{public}@ = %{public}@", buf, 0x3Eu);

      v9 = v61;
    }
  }

  v17 = 1;
  v14 = v62;
  v10 = v63;
LABEL_23:

  v10[2](v10, v17);
  v59 = *MEMORY[0x277D85DE8];
}

- (void)_task:(id)a3 didFailWithError:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
      v14 = [(CoreDAVTask *)self _sessionForLogging];
      [(CoreDAVTask *)self _requestForLogging];
      v16 = v15 = v6;
      v67 = 138413314;
      v68 = v13;
      v69 = 2048;
      v70 = self;
      v71 = 2048;
      v72 = v14;
      v73 = 2048;
      v74 = v16;
      v75 = 2112;
      v76 = v7;
      _os_log_impl(&dword_2452FB000, v11, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] connection died with error %@", &v67, 0x34u);

      v6 = v15;
    }
  }

  [(CoreDAVTask *)self _sendTimeSpentInNetworkingToProvider];
  if (self->_task != v6)
  {
    [CoreDAVTask _task:didFailWithError:];
  }

  v17 = [(CoreDAVTask *)self responseHeaders];
  v18 = [v17 CDVObjectForKeyCaseInsensitive:@"X-ClientToken-Request"];
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = v18;
  v20 = objc_loadWeakRetained(&self->_accountInfoProvider);
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v17 = objc_loadWeakRetained(&self->_accountInfoProvider);
    [v17 clientTokenRequestedByServer];
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

  if ([v7 code] == 401)
  {
    v22 = objc_loadWeakRetained(&self->_accountInfoProvider);
    if (objc_opt_respondsToSelector())
    {
      v23 = objc_loadWeakRetained(&self->_accountInfoProvider);
      v24 = [v23 shouldRetryUnauthorizedTask:v6];

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
            v31 = [(CoreDAVTask *)self _sessionForLogging];
            v32 = [(CoreDAVTask *)self _requestForLogging];
            v67 = 138413314;
            v68 = v30;
            v69 = 2048;
            v70 = self;
            v71 = 2048;
            v72 = v31;
            v73 = 2048;
            v74 = v32;
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

  if ([v7 code] == 501 && self->_requestIsCompressed)
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
        v42 = [(CoreDAVTask *)self _sessionForLogging];
        v43 = [(CoreDAVTask *)self _requestForLogging];
        v67 = 138413058;
        v68 = v41;
        v69 = 2048;
        v70 = self;
        v71 = 2048;
        v72 = v42;
        v73 = 2048;
        v74 = v43;
        _os_log_impl(&dword_2452FB000, v39, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] The server rejected our compressed request. Attempting an uncompressed request before giving up.", &v67, 0x2Au);
      }
    }

    self->_compressedRequestFailed = 1;
    goto LABEL_36;
  }

  if ([v7 code] == 401 && self->_justTriedTokenAuth)
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
        v31 = [(CoreDAVTask *)self _sessionForLogging];
        v32 = [(CoreDAVTask *)self _requestForLogging];
        v67 = 138413058;
        v68 = v30;
        v69 = 2048;
        v70 = self;
        v71 = 2048;
        v72 = v31;
        v73 = 2048;
        v74 = v32;
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

  if ([v7 code] == 401)
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
        v53 = [(CoreDAVTask *)self _sessionForLogging];
        v54 = [(CoreDAVTask *)self _requestForLogging];
        v67 = 138413058;
        v68 = v52;
        v69 = 2048;
        v70 = self;
        v71 = 2048;
        v72 = v53;
        v73 = 2048;
        v74 = v54;
        _os_log_impl(&dword_2452FB000, v50, OS_LOG_TYPE_DEFAULT, "[%@ %p, sess %p, request %p] Bad password error received.", &v67, 0x2Au);
      }
    }

    [(CoreDAVTask *)self _handleUnauthorizedAccessError:v7];
  }

  else
  {
    v55 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v56 = [v55 handleCertificateError:v7];

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
          v64 = [(CoreDAVTask *)self _sessionForLogging];
          v65 = [(CoreDAVTask *)self _requestForLogging];
          v67 = 138413058;
          v68 = v63;
          v69 = 2048;
          v70 = self;
          v71 = 2048;
          v72 = v64;
          v73 = 2048;
          v74 = v65;
          _os_log_impl(&dword_2452FB000, v61, OS_LOG_TYPE_INFO, "[%@ %p, sess %p, request %p] Handled client certificate request and re-issued NSURLRequest.", &v67, 0x2Au);
        }
      }
    }

    else
    {
      [(CoreDAVTask *)self finishCoreDAVTaskWithError:v7];
    }
  }

LABEL_50:

  v66 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)responseHeaders
{
  if (self->_simulated)
  {
    v2 = self->_simulatedResponseHeaders;
  }

  else
  {
    v2 = [(NSHTTPURLResponse *)self->_response allHeaderFields];
  }

  return v2;
}

- (void)finishEarlyWithError:(id)a3
{
  [(CoreDAVTask *)self finishCoreDAVTaskWithError:a3];

  [(CoreDAVTask *)self setDelegate:0];
}

- (void)submitWithTaskManager:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [(CoreDAVTask *)self setTaskManager:?];
    v10 = [(CoreDAVTask *)self taskManager];
    [v10 submitQueuedCoreDAVTask:self];
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
      v12 = self;
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
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)reportStatusWithError:(id)a3
{
  v4 = a3;
  v29 = v4;
  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);
    v7 = objc_opt_respondsToSelector();

    v8 = objc_loadWeakRetained(&self->_accountInfoProvider);
    if (v7)
    {
      v9 = [(CoreDAVTask *)self numDownloadedElements];
      v10 = v8;
LABEL_6:
      [v10 noteSuccessfulRequestWithNumDownloadedElements:v9 forTask:self];
LABEL_26:

      goto LABEL_27;
    }

    v17 = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      goto LABEL_27;
    }

    v8 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v18 = [(CoreDAVTask *)self numDownloadedElements];
    v19 = v8;
LABEL_14:
    [v19 noteSuccessfulRequestWithNumDownloadedElements:v18];
    goto LABEL_26;
  }

  v5 = [v4 domain];
  if ([v5 isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
  {

    goto LABEL_8;
  }

  v11 = [v29 domain];
  v12 = [v11 isEqualToString:*MEMORY[0x277CCA738]];

  if (v12)
  {
LABEL_8:
    v13 = [v29 code];
    v14 = objc_loadWeakRetained(&self->_accountInfoProvider);
    if (v13 == 500)
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

  v20 = [v29 domain];
  v21 = [v20 isEqualToString:@"CoreDAVErrorDomain"];

  if (!v21)
  {
    v14 = objc_loadWeakRetained(&self->_accountInfoProvider);
    goto LABEL_22;
  }

  v22 = [v29 code];
  v14 = objc_loadWeakRetained(&self->_accountInfoProvider);
  if (v22 != 1)
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
    v9 = 0;
    goto LABEL_6;
  }

  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    v19 = objc_loadWeakRetained(&self->_accountInfoProvider);
    v8 = v19;
    v18 = 0;
    goto LABEL_14;
  }

LABEL_27:
}

- (CoreDAVItem)rootElement
{
  if (self->_simulated)
  {
    v3 = [(CoreDAVTask *)self simulatedRootElement];
  }

  else
  {
    v4 = [(CoreDAVTask *)self responseBodyParser];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [(CoreDAVTask *)self responseBodyParser];
      v3 = [v6 rootElement];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
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