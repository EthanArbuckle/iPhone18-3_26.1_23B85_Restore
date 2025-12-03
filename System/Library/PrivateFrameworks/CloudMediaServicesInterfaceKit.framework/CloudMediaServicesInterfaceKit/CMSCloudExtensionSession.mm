@interface CMSCloudExtensionSession
- (BOOL)_handleURLResponseCode:(int64_t)code error:(id)error before:(id)before request:(id)request networkActivity:(id)activity retryHandler:(id)handler;
- (BOOL)_updateDynamicHeadersOnRequest:(id)request withDeadline:(id)deadline;
- (CMSCloudExtensionSession)init;
- (CMSCloudExtensionSession)initWithConfiguration:(id)configuration authProviderDelegate:(id)delegate;
- (double)durationForMethod:(id)method;
- (double)totalDuration;
- (id)_constraintsDefinition;
- (id)_parsedObjectFromData:(id)data inResponse:(id)response error:(id *)error;
- (id)_queuePlayMediaForActivity:(id)activity;
- (id)_requestForMethods:(id)methods before:(id)before error:(id *)error;
- (id)_resultsFromData:(id)data inResponse:(id)response error:(id *)error;
- (id)_sessionDescriptionWithDeadline:(id)deadline;
- (id)peekResponseForMethod:(id)method exception:(id *)exception;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)_connectSession;
- (void)_handleURLResponse:(id)response before:(id)before networkActivity:(id)activity request:(id)request data:(id)data error:(id)error;
- (void)_performActivityUpdate:(id)update completion:(id)completion;
- (void)_retryRequest:(id)request before:(id)before networkActivity:(id)activity completionHandler:(id)handler;
- (void)_retryRequestAfterAuthTokenRenewal:(id)renewal parentNetworkActivity:(id)activity before:(id)before completionHandler:(id)handler;
- (void)closeWithForce:(BOOL)force;
- (void)getAlbumArtDataFromURL:(id)l networkActivity:(id)activity completionHandler:(id)handler;
- (void)getContentProtectionKeyForAssetIdentifier:(id)identifier usingKeySystem:(id)system andKeyRequest:(id)request playerContext:(id)context userActivityDictionary:(id)dictionary networkActivity:(id)activity completionHandler:(id)handler;
- (void)getFairplayCertificateUsingNetworkActivity:(id)activity completionHandler:(id)handler;
- (void)getQueueSegmentFromURL:(id)l referrer:(id)referrer networkActivity:(id)activity completion:(id)completion;
- (void)performMethod:(id)method withParams:(id)params networkActivity:(id)activity completion:(id)completion;
- (void)publishContentFailure:(id)failure forActivity:(id)activity whilePlaying:(id)playing previousContentURL:(id)l nextContentURL:(id)rL networkActivity:(id)networkActivity completion:(id)completion;
- (void)report:(unint64_t)report forActivity:(id)activity nowPlaying:(id)playing previous:(id)previous timestamp:(id)timestamp completion:(id)completion;
- (void)reportContentFailure:(id)failure forActivity:(id)activity whilePlaying:(id)playing timestamp:(id)timestamp completion:(id)completion;
- (void)requestQueueForActivity:(id)activity networkActivity:(id)networkActivity completion:(id)completion;
- (void)setCloseCompletion:(id)completion;
- (void)setQosClass:(unsigned int)class;
@end

@implementation CMSCloudExtensionSession

- (CMSCloudExtensionSession)init
{
  v3 = objc_alloc_init(CMSCloudExtensionConfiguration);
  v4 = [(CMSCloudExtensionSession *)self initWithConfiguration:v3 authProviderDelegate:0];

  return v4;
}

- (CMSCloudExtensionSession)initWithConfiguration:(id)configuration authProviderDelegate:(id)delegate
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = CMSCloudExtensionSession;
  v9 = [(CMSCloudExtensionSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, configuration);
    objc_storeWeak(&v10->_authProvider, delegateCopy);
    v10->_requestQueueLock._os_unfair_lock_opaque = 0;
    v10->_timeoutInterval = 10.0;
  }

  return v10;
}

- (void)setQosClass:(unsigned int)class
{
  if (self->_connected)
  {
    v4 = _CMSILogingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CMSCloudExtensionSession *)a2 setQosClass:v4];
    }
  }

  else
  {
    self->_qosClass = class;
  }
}

- (void)setCloseCompletion:(id)completion
{
  v4 = MEMORY[0x245D43EE0](completion, a2);
  closeCompletion = self->_closeCompletion;
  self->_closeCompletion = v4;

  MEMORY[0x2821F96F8]();
}

- (BOOL)_updateDynamicHeadersOnRequest:(id)request withDeadline:(id)deadline
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  deadlineCopy = deadline;
  prepareRequestHook = self->_prepareRequestHook;
  if (prepareRequestHook)
  {
    prepareRequestHook[2](prepareRequestHook, self, requestCopy);
  }

  if (deadlineCopy)
  {
    [deadlineCopy timeIntervalSinceNow];
    timeoutInterval = v9 + 2.0;
  }

  else
  {
    timeoutInterval = self->_timeoutInterval;
  }

  v11 = timeoutInterval;
  if (timeoutInterval < 1.0)
  {
    v12 = _CMSILogingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[CMSCloudExtensionSession _updateDynamicHeadersOnRequest:withDeadline:]";
      v19 = 2048;
      v20 = timeoutInterval;
      _os_log_impl(&dword_2439AD000, v12, OS_LOG_TYPE_DEFAULT, "%s already near or past deadline by %fs", buf, 0x16u);
    }

    v11 = 1.0;
  }

  v13 = 0x277CCA000uLL;
  LODWORD(v13) = vcvtpd_s64_f64(v11);
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v13];
  [requestCopy setValue:v14 forHTTPHeaderField:@"Request-timeout"];

  [requestCopy setTimeoutInterval:v11 + 1.0];
  [requestCopy setValue:self->_sessionIdentifier forHTTPHeaderField:@"x-applecloudextension-session-id"];
  [requestCopy setValue:self->_authHeader forHTTPHeaderField:@"Authorization"];

  v15 = *MEMORY[0x277D85DE8];
  return timeoutInterval >= 1.0;
}

- (id)_requestForMethods:(id)methods before:(id)before error:(id *)error
{
  methodsCopy = methods;
  beforeCopy = before;
  if ([methodsCopy count])
  {
    v10 = CreateDataWithSerializedJSON(methodsCopy, 0);
    if (v10)
    {
      firstObject = [methodsCopy firstObject];
      v12 = [firstObject objectForKey:@"method"];

      v13 = CMSExtensionEndpointForProtocolMethodName(v12);
      if (v13)
      {
        v14 = [(CMSCloudExtensionConfiguration *)self->_config configForEndpoint:v13];
        request = [v14 request];
        v16 = [request mutableCopy];

        [v16 setHTTPMethod:@"POST"];
        [v16 setValue:@"application/json" forHTTPHeaderField:@"Content-type"];
        [v16 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        [v16 setHTTPBody:v10];
        [(CMSCloudExtensionSession *)self _updateDynamicHeadersOnRequest:v16 withDeadline:beforeCopy];
      }

      else if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:11 userInfo:0];
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:12 userInfo:0];
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:6 userInfo:0];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_parsedObjectFromData:(id)data inResponse:(id)response error:(id *)error
{
  dataCopy = data;
  responseCopy = response;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_6:
      v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:error];
      goto LABEL_14;
    }

    v10 = [responseCopy valueForHTTPHeaderField:@"x-applecloudextension-session-id"];
    if (!v10 || (-[CMSCloudExtensionSession sessionIdentifier](self, "sessionIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqualToString:v11], v11, (v12 & 1) != 0))
    {

      goto LABEL_6;
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:3 userInfo:0];
    }
  }

  else if (error && !*error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:4 userInfo:0];
    *error = v13 = 0;
    goto LABEL_14;
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (id)_resultsFromData:(id)data inResponse:(id)response error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [(CMSCloudExtensionSession *)self _parsedObjectFromData:data inResponse:response error:?];
  v7 = v6;
  if (error && !v6 && *error)
  {
LABEL_16:
    v14 = 0;
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:4 userInfo:0];
      *error = v14 = 0;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:4 userInfo:{0, v17}];
          }

          v14 = 0;
          goto LABEL_20;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = v8;
LABEL_20:

LABEL_21:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_connectSession
{
  if (!self->_connected)
  {
    closeError = self->_closeError;
    self->_closeError = 0;

    if (!self->_sessionIdentifier)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      sessionIdentifier = self->_sessionIdentifier;
      self->_sessionIdentifier = uUIDString;
    }

    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    requestQueue = self->_requestQueue;
    self->_requestQueue = v8;

    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
    results = self->_results;
    self->_results = v10;

    v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    exceptions = self->_exceptions;
    self->_exceptions = v12;

    v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    completions = self->_completions;
    self->_completions = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    durations = self->_durations;
    self->_durations = v16;

    self->_totalDuration = 0.0;
    attr = dispatch_queue_attr_make_with_qos_class(0, self->_qosClass, 0);
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.cloudextension.session.%@", self->_sessionIdentifier];
    v19 = dispatch_queue_create([v18 UTF8String], attr);
    requestDispatch = self->_requestDispatch;
    self->_requestDispatch = v19;

    ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    v22 = [MEMORY[0x277CCAD30] sessionWithConfiguration:ephemeralSessionConfiguration delegate:self delegateQueue:0];
    session = self->_session;
    self->_session = v22;

    self->_connected = 1;
  }
}

- (id)_constraintsDefinition
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"shuffledPlayback";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_shuffledPlayback];
  v11[0] = v3;
  v10[1] = @"updateUserTasteProfile";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_updateUserTasteProfile];
  v11[1] = v4;
  v10[2] = @"allowExplicitContent";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowExplicitContent];
  v11[2] = v5;
  v10[3] = @"maximumQueueSegmentItemCount";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1000];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_sessionDescriptionWithDeadline:(id)deadline
{
  v17[6] = *MEMORY[0x277D85DE8];
  deadlineCopy = deadline;
  v17[0] = self->_sessionIdentifier;
  v16[0] = @"identifier";
  v16[1] = @"version";
  v15 = CMSCloudExtensionSpecVersion();
  v17[1] = v15;
  v16[2] = @"constraints";
  _constraintsDefinition = [(CMSCloudExtensionSession *)self _constraintsDefinition];
  v17[2] = _constraintsDefinition;
  v16[3] = @"playerContext";
  cmsCoded = [(CMSPlayerContext *)self->_intentPlayerContext cmsCoded];
  null = cmsCoded;
  if (!cmsCoded)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v17[3] = null;
  v16[4] = @"requested";
  v8 = cmsDateFormatter();
  date = [MEMORY[0x277CBEAA8] date];
  v10 = [v8 stringFromDate:date];
  v17[4] = v10;
  v16[5] = @"deadline";
  if (deadlineCopy)
  {
    self = cmsDateFormatter();
    [(CMSCloudExtensionSession *)self stringFromDate:deadlineCopy];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  selfCopy = ;
  v17[5] = selfCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];
  if (deadlineCopy)
  {

    selfCopy = self;
  }

  if (!cmsCoded)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_retryRequest:(id)request before:(id)before networkActivity:(id)activity completionHandler:(id)handler
{
  requestCopy = request;
  beforeCopy = before;
  activityCopy = activity;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_requestQueueLock);
  if (!self->_connected || !self->_session)
  {
    if (!handlerCopy)
    {
      goto LABEL_8;
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = 2;
LABEL_7:
    v22 = [v20 errorWithDomain:@"com.apple.cloudextension.errors.session" code:v21 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v22);

    goto LABEL_8;
  }

  if ([(CMSCloudExtensionSession *)self _updateDynamicHeadersOnRequest:requestCopy withDeadline:beforeCopy])
  {
    allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
    v16 = [allHTTPHeaderFields cmsIntegerForKey:@"x-applecloudextension-retry-count" withDefault:0];

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", (v16 + 1)];
    [requestCopy setValue:v17 forHTTPHeaderField:@"x-applecloudextension-retry-count"];

    objc_storeStrong(&self->_lastRequest, request);
    v18 = [(NSURLSession *)self->_session dataTaskWithRequest:requestCopy completionHandler:handlerCopy];
    dataTask = self->_dataTask;
    self->_dataTask = v18;

    [activityCopy associateWithTask:self->_dataTask];
    [(NSURLSessionDataTask *)self->_dataTask resume];
    goto LABEL_8;
  }

  v23 = _CMSILogingFacility();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [CMSCloudExtensionSession _retryRequest:before:networkActivity:completionHandler:];
  }

  if (handlerCopy)
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = 10;
    goto LABEL_7;
  }

LABEL_8:
  os_unfair_lock_unlock(&self->_requestQueueLock);
}

- (void)_retryRequestAfterAuthTokenRenewal:(id)renewal parentNetworkActivity:(id)activity before:(id)before completionHandler:(id)handler
{
  renewalCopy = renewal;
  activityCopy = activity;
  beforeCopy = before;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_authProvider);

  if (WeakRetained)
  {
    objc_initWeak(&location, self);
    v15 = objc_loadWeakRetained(&self->_authProvider);
    sessionIdentifier = self->_sessionIdentifier;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __110__CMSCloudExtensionSession__retryRequestAfterAuthTokenRenewal_parentNetworkActivity_before_completionHandler___block_invoke;
    v19[3] = &unk_278DDCF90;
    objc_copyWeak(&v24, &location);
    v20 = renewalCopy;
    v21 = beforeCopy;
    v22 = activityCopy;
    v23 = handlerCopy;
    [v15 authRenewalForSessionIdentifier:sessionIdentifier parentNetworkActivity:v22 completion:v19];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = _CMSILogingFacility();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CMSCloudExtensionSession _retryRequestAfterAuthTokenRenewal:? parentNetworkActivity:? before:? completionHandler:?];
    }

    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:9 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v18);
  }
}

void __110__CMSCloudExtensionSession__retryRequestAfterAuthTokenRenewal_parentNetworkActivity_before_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = WeakRetained;
  if (!WeakRetained || ([WeakRetained sessionIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "compare:", v7), v12, v13))
  {
    if (!v9)
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:3 userInfo:0];
    }

LABEL_14:
    (*(*(a1 + 56) + 16))();
    goto LABEL_15;
  }

  if (!v8)
  {
    if (!v9)
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:9 userInfo:0];
    }

    v15 = _CMSILogingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __110__CMSCloudExtensionSession__retryRequestAfterAuthTokenRenewal_parentNetworkActivity_before_completionHandler___block_invoke_cold_1();
    }

    goto LABEL_14;
  }

  v14 = _CMSILogingFacility();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[CMSCloudExtensionSession _retryRequestAfterAuthTokenRenewal:parentNetworkActivity:before:completionHandler:]_block_invoke";
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_2439AD000, v14, OS_LOG_TYPE_DEFAULT, "%s: session %@ retrieved new authorization", &v17, 0x16u);
  }

  os_unfair_lock_lock(v11 + 4);
  objc_storeStrong(v11 + 12, a3);
  os_unfair_lock_unlock(v11 + 4);
  [v11 _retryRequest:*(a1 + 32) before:*(a1 + 40) networkActivity:*(a1 + 48) completionHandler:*(a1 + 56)];
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_handleURLResponseCode:(int64_t)code error:(id)error before:(id)before request:(id)request networkActivity:(id)activity retryHandler:(id)handler
{
  v50 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  beforeCopy = before;
  requestCopy = request;
  activityCopy = activity;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v21 = _CMSILogingFacility();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CMSCloudExtensionSession _handleURLResponseCode:error:before:request:networkActivity:retryHandler:];
    }

    goto LABEL_17;
  }

  allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
  v20 = [allHTTPHeaderFields cmsIntegerForKey:@"x-applecloudextension-retry-count" withDefault:0];

  if (v20 >= 4)
  {
    v21 = _CMSILogingFacility();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CMSCloudExtensionSession _handleURLResponseCode:error:before:request:networkActivity:retryHandler:];
    }

LABEL_17:

    v25 = 0;
    goto LABEL_18;
  }

  if (!errorCopy)
  {
    goto LABEL_13;
  }

  domain = [errorCopy domain];
  v23 = [domain isEqualToString:*MEMORY[0x277CCA738]];

  if (!v23)
  {
    goto LABEL_13;
  }

  code = [errorCopy code];
  if (code != -1005)
  {
    if (code == -1013)
    {
LABEL_14:
      [(CMSCloudExtensionSession *)self _retryRequestAfterAuthTokenRenewal:requestCopy parentNetworkActivity:activityCopy before:beforeCopy completionHandler:handlerCopy];
      v25 = 1;
      goto LABEL_18;
    }

LABEL_13:
    if ((code & 0xFFFFFFFFFFFFFFFDLL) != 0x191)
    {
      v21 = _CMSILogingFacility();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CMSCloudExtensionSession _handleURLResponseCode:error:before:request:networkActivity:retryHandler:];
      }

      goto LABEL_17;
    }

    goto LABEL_14;
  }

  objc_initWeak(&location, self);
  v28 = vcvtd_n_f64_s64(v20, 1uLL);
  if (!beforeCopy || ([MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v28], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "compare:", beforeCopy) == -1, v29, v30))
  {
    v32 = _CMSILogingFacility();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v43 = "[CMSCloudExtensionSession _handleURLResponseCode:error:before:request:networkActivity:retryHandler:]";
      v44 = 1024;
      v45 = v20 + 1;
      v46 = 2048;
      v47 = v28;
      v48 = 2112;
      v49 = beforeCopy;
      _os_log_impl(&dword_2439AD000, v32, OS_LOG_TYPE_DEFAULT, "%s: NSURLErrorNetworkConnectionLost, will retry #%d after a delay of %f seconds, deadline %@", buf, 0x26u);
    }

    v33 = dispatch_time(0, (v28 * 1000000000.0));
    requestDispatch = self->_requestDispatch;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __101__CMSCloudExtensionSession__handleURLResponseCode_error_before_request_networkActivity_retryHandler___block_invoke;
    v35[3] = &unk_278DDCFB8;
    objc_copyWeak(&v40, &location);
    v36 = requestCopy;
    v37 = beforeCopy;
    v38 = activityCopy;
    v39 = handlerCopy;
    dispatch_after(v33, requestDispatch, v35);

    objc_destroyWeak(&v40);
    v25 = 1;
  }

  else
  {
    v31 = _CMSILogingFacility();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v43 = "[CMSCloudExtensionSession _handleURLResponseCode:error:before:request:networkActivity:retryHandler:]";
      v44 = 1024;
      v45 = v20 + 1;
      v46 = 2112;
      v47 = *&beforeCopy;
      _os_log_impl(&dword_2439AD000, v31, OS_LOG_TYPE_DEFAULT, "%s: NSURLErrorNetworkConnectionLost, will not attempt retry after %d attempt(s): expecting to miss deadline %@", buf, 0x1Cu);
    }

    v25 = 0;
  }

  objc_destroyWeak(&location);
LABEL_18:

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

void __101__CMSCloudExtensionSession__handleURLResponseCode_error_before_request_networkActivity_retryHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _retryRequest:*(a1 + 32) before:*(a1 + 40) networkActivity:*(a1 + 48) completionHandler:*(a1 + 56)];
}

- (void)_handleURLResponse:(id)response before:(id)before networkActivity:(id)activity request:(id)request data:(id)data error:(id)error
{
  v45[1] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  beforeCopy = before;
  activityCopy = activity;
  requestCopy = request;
  dataCopy = data;
  errorCopy = error;
  objc_initWeak(&location, self);
  v18 = responseCopy;
  statusCode = [v18 statusCode];
  v20 = statusCode;
  if (errorCopy || statusCode != 200)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __89__CMSCloudExtensionSession__handleURLResponse_before_networkActivity_request_data_error___block_invoke;
    v38[3] = &unk_278DDCFE0;
    objc_copyWeak(&v42, &location);
    v39 = beforeCopy;
    v40 = activityCopy;
    v41 = requestCopy;
    v22 = [(CMSCloudExtensionSession *)self _handleURLResponseCode:v20 error:errorCopy before:v39 request:v41 networkActivity:v40 retryHandler:v38];

    objc_destroyWeak(&v42);
    if (v22)
    {
      v21 = MEMORY[0x277CBEBF8];
      goto LABEL_16;
    }

    if (!errorCopy)
    {
      v23 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Service Error: HTTP statusCode %d", v20];
      v45[0] = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      errorCopy = [v23 errorWithDomain:@"com.apple.cloudextension.errors.session" code:14 userInfo:v25];
    }

    v21 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v37 = 0;
    v21 = [(CMSCloudExtensionSession *)self _resultsFromData:dataCopy inResponse:v18 error:&v37];
    errorCopy = v37;
  }

  v26 = _CMSILogingFacility();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [CMSCloudExtensionSession _handleURLResponse:before:networkActivity:request:data:error:];
  }

  if (errorCopy)
  {
    v27 = _CMSILogingFacility();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [CMSCloudExtensionSession _handleURLResponse:before:networkActivity:request:data:error:];
    }

    requestDispatch = self->_requestDispatch;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__CMSCloudExtensionSession__handleURLResponse_before_networkActivity_request_data_error___block_invoke_108;
    block[3] = &unk_278DDD030;
    objc_copyWeak(&v36, &location);
    block[4] = self;
    errorCopy = errorCopy;
    v35 = errorCopy;
    dispatch_async(requestDispatch, block);

    objc_destroyWeak(&v36);
  }

  else
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __89__CMSCloudExtensionSession__handleURLResponse_before_networkActivity_request_data_error___block_invoke_3;
    v32[3] = &unk_278DDD080;
    v32[4] = self;
    objc_copyWeak(&v33, &location);
    [v21 enumerateObjectsUsingBlock:v32];
    objc_destroyWeak(&v33);
    errorCopy = 0;
  }

LABEL_16:

  objc_destroyWeak(&location);
  v29 = *MEMORY[0x277D85DE8];
}

void __89__CMSCloudExtensionSession__handleURLResponse_before_networkActivity_request_data_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleURLResponse:v8 before:*(a1 + 32) networkActivity:*(a1 + 40) request:*(a1 + 48) data:v9 error:v7];
}

void __89__CMSCloudExtensionSession__handleURLResponse_before_networkActivity_request_data_error___block_invoke_108(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    v4 = [*&v3[44]._os_unfair_lock_opaque copy];
    [*&v3[44]._os_unfair_lock_opaque removeAllObjects];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __89__CMSCloudExtensionSession__handleURLResponse_before_networkActivity_request_data_error___block_invoke_2;
    v7[3] = &unk_278DDD008;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[4] = v3;
    v7[5] = v5;
    v8 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];
    os_unfair_lock_unlock(v3 + 4);
  }
}

void __89__CMSCloudExtensionSession__handleURLResponse_before_networkActivity_request_data_error___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = *(a1[4] + 152);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKey:v7];
  v9 = a1[4];
  v11 = v8;
  if (v8)
  {
    [*(v9 + 152) removeObjectForKey:v7];
    os_unfair_lock_unlock((a1[4] + 16));
    v10 = 0;
  }

  else
  {
    os_unfair_lock_unlock((v9 + 16));
    v10 = a1[6];
  }

  v6[2](v6, a1[5], v7, v11, v10);

  os_unfair_lock_lock((a1[4] + 16));
}

void __89__CMSCloudExtensionSession__handleURLResponse_before_networkActivity_request_data_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v59[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 cmsOptionalDictionaryForKey:@"result"];
  v7 = [v5 cmsOptionalStringForKey:@"method"];
  v8 = v7;
  v9 = @"(Not Provided)";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [v5 cmsOptionalDictionaryForKey:@"exception"];
  v12 = [v5 cmsOptionalStringForKey:@"debug"];
  if (v6)
  {
    v13 = 0;
  }

  else
  {
    if (!v11)
    {
      v59[0] = v10;
      v58[0] = @"methodName";
      v58[1] = @"methodIndex";
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v58[2] = @"reason";
      v59[1] = v14;
      v59[2] = @"invalid_result";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:3];
    }

    v13 = 5;
  }

  if (!_isValidMethod(v10))
  {
    if (!v11 || ([(__CFString *)v10 isEqualToString:@"ProtocolException"]& 1) == 0)
    {
      v57[0] = v10;
      v56[0] = @"methodName";
      v56[1] = @"methodIndex";
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v56[2] = @"reason";
      v57[1] = v19;
      v57[2] = @"invalid_method";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:3];
      v13 = 6;
      goto LABEL_30;
    }

    v15 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v16 cmsOptionalStringForKey:@"reason"];
    if (v17)
    {
      v18 = v17;
      if (([@"unsupported" isEqualToString:v17] & 1) != 0 || (objc_msgSend(@"unauthorized", "isEqualToString:", v18) & 1) != 0 || (objc_msgSend(@"unexpected", "isEqualToString:", v18) & 1) != 0 || (objc_msgSend(@"invalid", "isEqualToString:", v18) & 1) != 0 || (objc_msgSend(@"unparseable", "isEqualToString:", v18) & 1) != 0 || (objc_msgSend(@"deprecated", "isEqualToString:", v18) & 1) != 0 || (objc_msgSend(@"internal", "isEqualToString:", v18) & 1) != 0 || (objc_msgSend(@"complex", "isEqualToString:", v18) & 1) != 0 || (objc_msgSend(@"busy", "isEqualToString:", v18) & 1) != 0 || (objc_msgSend(@"invalid_result", "isEqualToString:", v18) & 1) != 0 || objc_msgSend(@"invalid_exception", "isEqualToString:", v18))
      {

LABEL_27:
        v19 = [v15 cmsOptionalStringForKey:@"methodName"];
        if (!_isValidMethod(v19))
        {
          v13 = 8;
          goto LABEL_31;
        }

        v19 = v19;
        v13 = 8;
        v11 = v10;
        v10 = v19;
LABEL_30:

LABEL_31:
        v6 = 0;
        v11 = v15;
        goto LABEL_32;
      }

      v39 = [@"invalid_method" isEqualToString:v18];

      if (v39)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

    v55[0] = v10;
    v54[0] = @"methodName";
    v54[1] = @"methodIndex";
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v55[1] = v19;
    v55[2] = @"invalid_exception";
    v54[2] = @"reason";
    v54[3] = @"x-originalException";
    v55[3] = v15;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:4];
    v11 = v15;
    v15 = v13 = 7;
    goto LABEL_30;
  }

LABEL_32:
  v20 = [v5 cmsOptionalDictionaryForKey:@"metrics"];
  v21 = v20;
  if (v20)
  {
    [v20 cmsDoubleForKey:@"duration" withDefault:NAN];
    v23 = v22;
    v24 = _CMSILogingFacility();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __89__CMSCloudExtensionSession__handleURLResponse_before_networkActivity_request_data_error___block_invoke_3_cold_1();
    }

    v25 = *(*(a1 + 32) + 184);
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
    [v25 setObject:v26 forKey:v10];

    *(*(a1 + 32) + 192) = v23 + *(*(a1 + 32) + 192);
  }

  if (!v11)
  {
    v29 = 0;
    if (!v12)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v27 = @"<No debug string>";
  if (v12)
  {
    v27 = v12;
  }

  v52[0] = @"com.apple.cloudextension.errors.session.debug";
  v52[1] = @"com.apple.cloudextension.errors.session.exception";
  v53[0] = v27;
  v53[1] = v11;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
  v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:v13 userInfo:v28];

  if (v12)
  {
LABEL_42:
    v30 = _CMSILogingFacility();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v38 = *(*(a1 + 32) + 88);
      *buf = 138412802;
      v47 = v38;
      v48 = 2112;
      v49 = v10;
      v50 = 2112;
      v51 = v12;
      _os_log_debug_impl(&dword_2439AD000, v30, OS_LOG_TYPE_DEBUG, "Debug URL for %@:%@: %@", buf, 0x20u);
    }
  }

LABEL_45:
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v31 = [*(*(a1 + 32) + 152) objectForKey:v10];
  if (v31)
  {
  }

  else
  {
    v32 = [*(*(a1 + 32) + 160) objectForKey:v10];

    if (!v32)
    {
      goto LABEL_51;
    }
  }

  v33 = _CMSILogingFacility();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    __89__CMSCloudExtensionSession__handleURLResponse_before_networkActivity_request_data_error___block_invoke_3_cold_2();
  }

LABEL_51:
  v34 = [*(*(a1 + 32) + 176) objectForKeyedSubscript:v10];
  if (v34)
  {
    v35 = _CMSILogingFacility();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      __89__CMSCloudExtensionSession__handleURLResponse_before_networkActivity_request_data_error___block_invoke_3_cold_3();
    }

    [*(*(a1 + 32) + 176) removeObjectForKey:v10];
    v36 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__CMSCloudExtensionSession__handleURLResponse_before_networkActivity_request_data_error___block_invoke_143;
    block[3] = &unk_278DDD058;
    objc_copyWeak(&v45, (a1 + 40));
    v44 = v34;
    v41 = v10;
    v42 = v6;
    v43 = v29;
    dispatch_async(v36, block);

    objc_destroyWeak(&v45);
  }

  else
  {
    [*(*(a1 + 32) + 152) setObject:v6 forKeyedSubscript:v10];
    [*(*(a1 + 32) + 160) setObject:v29 forKeyedSubscript:v10];
  }

  os_unfair_lock_unlock((*(a1 + 32) + 16));

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __89__CMSCloudExtensionSession__handleURLResponse_before_networkActivity_request_data_error___block_invoke_143(uint64_t a1)
{
  if (objc_loadWeakRetained((a1 + 64)))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (id)peekResponseForMethod:(id)method exception:(id *)exception
{
  methodCopy = method;
  os_unfair_lock_lock(&self->_requestQueueLock);
  v7 = [(NSMutableDictionary *)self->_results objectForKey:methodCopy];
  v8 = [(NSMutableDictionary *)self->_exceptions objectForKey:methodCopy];

  os_unfair_lock_unlock(&self->_requestQueueLock);
  if (exception)
  {
    v9 = v8;
    *exception = v8;
  }

  return v7;
}

- (void)performMethod:(id)method withParams:(id)params networkActivity:(id)activity completion:(id)completion
{
  v37[3] = *MEMORY[0x277D85DE8];
  methodCopy = method;
  paramsCopy = params;
  activityCopy = activity;
  completionCopy = completion;
  isValidMethod = _isValidMethod(methodCopy);
  if (paramsCopy)
  {
    if (isValidMethod)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        os_unfair_lock_lock(&self->_requestQueueLock);
        v15 = [(NSMutableDictionary *)self->_results objectForKey:methodCopy];
        [(NSMutableDictionary *)self->_results removeObjectForKey:methodCopy];
        v16 = [(NSMutableDictionary *)self->_exceptions objectForKey:methodCopy];
        [(NSMutableDictionary *)self->_exceptions removeObjectForKey:methodCopy];
        if (v15)
        {
          os_unfair_lock_unlock(&self->_requestQueueLock);
          if (completionCopy)
          {
            completionCopy[2](completionCopy, self, methodCopy, v15, v16);
          }
        }

        else if (v16)
        {
          os_unfair_lock_unlock(&self->_requestQueueLock);
          if (completionCopy)
          {
            completionCopy[2](completionCopy, self, methodCopy, 0, v16);
          }
        }

        else if (self->_connected || ([(CMSCloudExtensionSession *)self _connectSession], self->_connected))
        {
          v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:self->_timeoutInterval];
          requestQueue = [(CMSCloudExtensionSession *)self requestQueue];
          v19 = [requestQueue count];

          requestQueue2 = [(CMSCloudExtensionSession *)self requestQueue];
          if (v19)
          {
            v34[0] = @"method";
            v34[1] = @"params";
            v35[0] = methodCopy;
            v35[1] = paramsCopy;
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
            [requestQueue2 addObject:v21];
          }

          else
          {
            v36[0] = @"session";
            v21 = [(CMSCloudExtensionSession *)self _sessionDescriptionWithDeadline:v28];
            v37[0] = v21;
            v37[1] = methodCopy;
            v36[1] = @"method";
            v36[2] = @"params";
            v37[2] = paramsCopy;
            v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
            [requestQueue2 addObject:v22];
          }

          v23 = _CMSILogingFacility();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [CMSCloudExtensionSession performMethod:? withParams:? networkActivity:? completion:?];
          }

          if (completionCopy)
          {
            completions = [(CMSCloudExtensionSession *)self completions];
            v25 = MEMORY[0x245D43EE0](completionCopy);
            [completions setObject:v25 forKey:methodCopy];
          }

          if (!self->_waiting)
          {
            self->_waiting = 1;
            requestDispatch = self->_requestDispatch;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __80__CMSCloudExtensionSession_performMethod_withParams_networkActivity_completion___block_invoke;
            block[3] = &unk_278DDD0D0;
            block[4] = self;
            v30 = methodCopy;
            v33 = completionCopy;
            v31 = v28;
            v32 = activityCopy;
            dispatch_async(requestDispatch, block);
          }

          os_unfair_lock_unlock(&self->_requestQueueLock);
        }

        else
        {
          os_unfair_lock_unlock(&self->_requestQueueLock);
          if (completionCopy)
          {
            v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:2 userInfo:0];
            completionCopy[2](completionCopy, self, methodCopy, 0, v27);
          }
        }

        goto LABEL_13;
      }
    }
  }

  if (completionCopy)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:6 userInfo:0];
    completionCopy[2](completionCopy, self, methodCopy, 0, v15);
LABEL_13:
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __80__CMSCloudExtensionSession_performMethod_withParams_networkActivity_completion___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(*(a1 + 32) + 168);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v4 = *(a1 + 32);
  v5 = *(v4 + 168);
  *(v4 + 168) = v3;

  *(*(a1 + 32) + 33) = 0;
  v6 = MEMORY[0x245D43EE0](*(a1 + 64));
  [*(*(a1 + 32) + 176) setObject:v6 forKeyedSubscript:*(a1 + 40)];

  v7 = _CMSILogingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __80__CMSCloudExtensionSession_performMethod_withParams_networkActivity_completion___block_invoke_cold_1();
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v30 = 0;
  v10 = [v8 _requestForMethods:v2 before:v9 error:&v30];
  v11 = v30;
  if (v10)
  {
    objc_storeStrong((*(a1 + 32) + 40), v10);
    objc_initWeak(&location, *(a1 + 32));
    v12 = *(*(a1 + 32) + 144);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __80__CMSCloudExtensionSession_performMethod_withParams_networkActivity_completion___block_invoke_2;
    v20[3] = &unk_278DDCFE0;
    objc_copyWeak(&v24, &location);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v23 = v10;
    v13 = [v12 dataTaskWithRequest:v23 completionHandler:v20];
    v14 = *(a1 + 32);
    v15 = *(v14 + 48);
    *(v14 + 48) = v13;

    [*(a1 + 56) associateWithTask:*(*(a1 + 32) + 48)];
    [*(*(a1 + 32) + 48) resume];
    os_unfair_lock_unlock((*(a1 + 32) + 16));

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = *(a1 + 64);
    if (v16)
    {
      (*(v16 + 16))(v16, *(a1 + 32), *(a1 + 40), 0, v11);
    }

    v17 = [*(*(a1 + 32) + 176) copy];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __80__CMSCloudExtensionSession_performMethod_withParams_networkActivity_completion___block_invoke_153;
    v26[3] = &unk_278DDD0A8;
    v18 = *(a1 + 32);
    v27 = v17;
    v28 = v18;
    v29 = v11;
    v19 = v17;
    [v2 enumerateObjectsUsingBlock:v26];
    os_unfair_lock_unlock((*(a1 + 32) + 16));
  }
}

void __80__CMSCloudExtensionSession_performMethod_withParams_networkActivity_completion___block_invoke_153(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v3)
  {
    [*(*(a1 + 40) + 176) removeObjectForKey:v4];
    (v3)[2](v3, *(a1 + 40), v4, 0, *(a1 + 48));
  }
}

void __80__CMSCloudExtensionSession_performMethod_withParams_networkActivity_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleURLResponse:v7 before:*(a1 + 32) networkActivity:*(a1 + 40) request:*(a1 + 48) data:v11 error:v8];
  }
}

- (id)_queuePlayMediaForActivity:(id)activity
{
  v12[4] = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v12[0] = self->_sessionIdentifier;
  v11[0] = @"identifier";
  v11[1] = @"version";
  v5 = CMSCloudExtensionSpecVersion();
  v12[1] = v5;
  v11[2] = @"userActivity";
  null = activityCopy;
  if (!activityCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v12[2] = null;
  v11[3] = @"constraints";
  _constraintsDefinition = [(CMSCloudExtensionSession *)self _constraintsDefinition];
  v12[3] = _constraintsDefinition;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];

  if (!activityCopy)
  {
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)requestQueueForActivity:(id)activity networkActivity:(id)networkActivity completion:(id)completion
{
  activityCopy = activity;
  networkActivityCopy = networkActivity;
  completionCopy = completion;
  v11 = [(CMSCloudExtensionConfiguration *)self->_config configForEndpoint:@"queues/playMedia"];
  if (v11)
  {
    os_unfair_lock_lock(&self->_requestQueueLock);
    if (!self->_connected)
    {
      [(CMSCloudExtensionSession *)self _connectSession];
    }

    os_unfair_lock_unlock(&self->_requestQueueLock);
    v12 = [(CMSCloudExtensionSession *)self _queuePlayMediaForActivity:activityCopy];
    v31 = 0;
    v13 = CreateDataWithSerializedJSON(v12, &v31);
    v14 = v31;

    if (v13)
    {
      request = [v11 request];
      v16 = [request mutableCopy];

      [v16 setValue:@"application/json" forHTTPHeaderField:@"Content-type"];
      [v16 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
      [v16 setHTTPMethod:@"POST"];
      [v16 setHTTPBody:v13];
      [(CMSCloudExtensionSession *)self _updateDynamicHeadersOnRequest:v16 withDeadline:0];
      objc_initWeak(&location, self);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __79__CMSCloudExtensionSession_requestQueueForActivity_networkActivity_completion___block_invoke;
      v27[3] = &unk_278DDD0F8;
      objc_copyWeak(&v29, &location);
      v28 = completionCopy;
      v17 = MEMORY[0x245D43EE0](v27);
      requestDispatch = self->_requestDispatch;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __79__CMSCloudExtensionSession_requestQueueForActivity_networkActivity_completion___block_invoke_158;
      v22[3] = &unk_278DDD148;
      objc_copyWeak(&v26, &location);
      v23 = v16;
      v24 = networkActivityCopy;
      v25 = v17;
      v19 = v17;
      v20 = v16;
      dispatch_async(requestDispatch, v22);

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, self, 0, v14);
    }
  }

  else
  {
    v21 = _CMSILogingFacility();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CMSCloudExtensionSession requestQueueForActivity:networkActivity:completion:];
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, self, 0, v14);
  }
}

void __79__CMSCloudExtensionSession_requestQueueForActivity_networkActivity_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(WeakRetained + 32) & 1) == 0)
    {
      v12 = _CMSILogingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v21 = "[CMSCloudExtensionSession requestQueueForActivity:networkActivity:completion:]_block_invoke";
        _os_log_impl(&dword_2439AD000, v12, OS_LOG_TYPE_DEFAULT, "%s no longer connected, discarding response", buf, 0xCu);
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:2 userInfo:0];

      v7 = 0;
      v9 = v13;
    }

    v14 = v8;
    if ([v14 statusCode] == 204)
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:15 userInfo:0];

      v9 = v15;
    }

    if (!v7 || v9)
    {
      if (!v9)
      {
        v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:4 userInfo:0];
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v19 = 0;
      v16 = [v11 _parsedObjectFromData:v7 inResponse:v14 error:&v19];
      v9 = v19;
      v17 = cmsSafeDictionary(v16);

      (*(*(a1 + 32) + 16))();
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __79__CMSCloudExtensionSession_requestQueueForActivity_networkActivity_completion___block_invoke_158(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained[18];
  v4 = *(a1 + 32);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __79__CMSCloudExtensionSession_requestQueueForActivity_networkActivity_completion___block_invoke_2;
  v9 = &unk_278DDD120;
  v10 = WeakRetained;
  v11 = v4;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v5 = [v3 dataTaskWithRequest:v11 completionHandler:&v6];
  [*(a1 + 40) associateWithTask:{v5, v6, v7, v8, v9, v10}];
  [v5 resume];
}

void __79__CMSCloudExtensionSession_requestQueueForActivity_networkActivity_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = [v10 statusCode];
  if (!v9 && (v11 & 0xFFFFFFFFFFFFFFFBLL) == 0xC8)
  {
    v12 = 0;
LABEL_10:
    (*(*(a1 + 56) + 16))();
    v9 = v12;
    goto LABEL_11;
  }

  if (([*(a1 + 32) _handleURLResponseCode:v11 error:v9 before:0 request:*(a1 + 40) networkActivity:*(a1 + 48) retryHandler:*(a1 + 56)] & 1) == 0)
  {
    v13 = MEMORY[0x277CCA9B8];
    if (v9)
    {
      v16 = *MEMORY[0x277CCA7E8];
      v17[0] = v9;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    }

    else
    {
      v14 = 0;
    }

    v12 = [v13 errorWithDomain:@"com.apple.cloudextension.errors.session" code:14 userInfo:v14];

    if (v9)
    {
    }

    goto LABEL_10;
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)getQueueSegmentFromURL:(id)l referrer:(id)referrer networkActivity:(id)activity completion:(id)completion
{
  lCopy = l;
  referrerCopy = referrer;
  activityCopy = activity;
  completionCopy = completion;
  v14 = [(CMSCloudExtensionConfiguration *)self->_config configForEndpoint:@"queues/playMedia"];
  if (v14)
  {
    os_unfair_lock_lock(&self->_requestQueueLock);
    if (!self->_connected)
    {
      [(CMSCloudExtensionSession *)self _connectSession];
    }

    os_unfair_lock_unlock(&self->_requestQueueLock);
    request = [v14 request];
    v16 = [request mutableCopy];

    [v16 setURL:lCopy];
    if (referrerCopy)
    {
      v17 = [MEMORY[0x277CCACE0] componentsWithURL:referrerCopy resolvingAgainstBaseURL:1];
      v18 = v17;
      if (v17)
      {
        [v17 setPassword:0];
        [v18 setUser:0];
        [v18 setQuery:0];
        [v18 setFragment:0];
        string = [v18 string];
        [v16 setValue:string forHTTPHeaderField:@"Referer"];
      }
    }

    [v16 setHTTPMethod:@"GET"];
    [v16 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [(CMSCloudExtensionSession *)self _updateDynamicHeadersOnRequest:v16 withDeadline:0];
    objc_initWeak(&location, self);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __87__CMSCloudExtensionSession_getQueueSegmentFromURL_referrer_networkActivity_completion___block_invoke;
    v31[3] = &unk_278DDD0F8;
    objc_copyWeak(&v33, &location);
    v32 = completionCopy;
    v20 = MEMORY[0x245D43EE0](v31);
    requestDispatch = self->_requestDispatch;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__CMSCloudExtensionSession_getQueueSegmentFromURL_referrer_networkActivity_completion___block_invoke_163;
    block[3] = &unk_278DDD148;
    objc_copyWeak(&v30, &location);
    v27 = v16;
    v28 = activityCopy;
    v29 = v20;
    v22 = v20;
    v23 = v16;
    dispatch_async(requestDispatch, block);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  else
  {
    v24 = _CMSILogingFacility();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [CMSCloudExtensionSession getQueueSegmentFromURL:referrer:networkActivity:completion:];
    }

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, self, 0, v25);
  }
}

void __87__CMSCloudExtensionSession_getQueueSegmentFromURL_referrer_networkActivity_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(WeakRetained + 32) & 1) == 0)
    {
      v12 = _CMSILogingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v21 = "[CMSCloudExtensionSession getQueueSegmentFromURL:referrer:networkActivity:completion:]_block_invoke";
        _os_log_impl(&dword_2439AD000, v12, OS_LOG_TYPE_DEFAULT, "%s no longer connected, discarding response", buf, 0xCu);
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:2 userInfo:0];

      v7 = 0;
      v9 = v13;
    }

    v14 = v8;
    if ([v14 statusCode] == 204)
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:15 userInfo:0];

      v9 = v15;
    }

    if (!v7 || v9)
    {
      if (!v9)
      {
        v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:4 userInfo:0];
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v19 = 0;
      v16 = [v11 _parsedObjectFromData:v7 inResponse:v14 error:&v19];
      v9 = v19;
      v17 = cmsSafeDictionary(v16);

      (*(*(a1 + 32) + 16))();
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __87__CMSCloudExtensionSession_getQueueSegmentFromURL_referrer_networkActivity_completion___block_invoke_163(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained[18];
  v4 = a1[4];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __87__CMSCloudExtensionSession_getQueueSegmentFromURL_referrer_networkActivity_completion___block_invoke_2;
  v9 = &unk_278DDD170;
  objc_copyWeak(&v13, a1 + 7);
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v5 = [v3 dataTaskWithRequest:v4 completionHandler:&v6];
  [a1[5] associateWithTask:{v5, v6, v7, v8, v9}];
  [v5 resume];

  objc_destroyWeak(&v13);
}

void __87__CMSCloudExtensionSession_getQueueSegmentFromURL_referrer_networkActivity_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = [v9 statusCode];
  v11 = v10;
  if (!v8 && (v10 & 0xFFFFFFFFFFFFFFFBLL) == 0xC8 || (WeakRetained = objc_loadWeakRetained((a1 + 56)), v13 = [WeakRetained _handleURLResponseCode:v11 error:v8 before:0 request:*(a1 + 32) networkActivity:*(a1 + 40) retryHandler:*(a1 + 48)], WeakRetained, (v13 & 1) == 0))
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_performActivityUpdate:(id)update completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  v8 = [(CMSCloudExtensionConfiguration *)self->_config configForEndpoint:@"queues/updateActivity"];
  v9 = _CMSILogingFacility();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      [CMSCloudExtensionSession _performActivityUpdate:completion:];
    }

    os_unfair_lock_lock(&self->_requestQueueLock);
    if (!self->_connected)
    {
      [(CMSCloudExtensionSession *)self _connectSession];
    }

    os_unfair_lock_unlock(&self->_requestQueueLock);
    _constraintsDefinition = [(CMSCloudExtensionSession *)self _constraintsDefinition];
    [updateCopy setConstraints:_constraintsDefinition];

    [updateCopy setSessionIdentifier:self->_sessionIdentifier];
    cmsCoded = [updateCopy cmsCoded];
    v13 = cmsCoded;
    if (cmsCoded)
    {
      v35[0] = 0;
      v14 = CreateDataWithSerializedJSON(cmsCoded, v35);
      v15 = v35[0];
      if (v14)
      {
        timeoutInterval = self->_timeoutInterval;
        if (timeoutInterval < 120.0)
        {
          timeoutInterval = 120.0;
        }

        v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:timeoutInterval];
        request = [v8 request];
        v19 = [request mutableCopy];

        [v19 setValue:@"application/json" forHTTPHeaderField:@"Content-type"];
        [v19 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        [v19 setHTTPMethod:@"POST"];
        [v19 setHTTPBody:v14];
        [(CMSCloudExtensionSession *)self _updateDynamicHeadersOnRequest:v19 withDeadline:v17];
        objc_initWeak(&location, self);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __62__CMSCloudExtensionSession__performActivityUpdate_completion___block_invoke;
        v31[3] = &unk_278DDD0F8;
        objc_copyWeak(&v33, &location);
        v32 = completionCopy;
        v20 = MEMORY[0x245D43EE0](v31);
        requestDispatch = self->_requestDispatch;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__CMSCloudExtensionSession__performActivityUpdate_completion___block_invoke_167;
        block[3] = &unk_278DDD148;
        objc_copyWeak(&v30, &location);
        v27 = v19;
        v28 = v17;
        v29 = v20;
        v22 = v20;
        v23 = v17;
        v24 = v19;
        dispatch_async(requestDispatch, block);

        objc_destroyWeak(&v30);
        objc_destroyWeak(&v33);
        objc_destroyWeak(&location);
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, self, 0, 0, v15);
      }
    }

    else
    {
      v25 = _CMSILogingFacility();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [CMSCloudExtensionSession _performActivityUpdate:completion:];
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:12 userInfo:0];
      (*(completionCopy + 2))(completionCopy, self, 0, 0, v15);
    }
  }

  else
  {
    if (v10)
    {
      [CMSCloudExtensionSession _performActivityUpdate:completion:];
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:11 userInfo:0];
    (*(completionCopy + 2))(completionCopy, self, 0, 0, v13);
  }
}

void __62__CMSCloudExtensionSession__performActivityUpdate_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(WeakRetained + 32) & 1) == 0)
    {
      v12 = _CMSILogingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v21 = "[CMSCloudExtensionSession _performActivityUpdate:completion:]_block_invoke";
        _os_log_impl(&dword_2439AD000, v12, OS_LOG_TYPE_DEFAULT, "%s no longer connected, discarding queues/activityUpdate response", buf, 0xCu);
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:2 userInfo:0];

      v8 = 0;
      v7 = 0;
      v9 = v13;
    }

    v8 = v8;
    if ([v8 statusCode] != 204)
    {
      if (v7 && !v9)
      {
        v19 = 0;
        v14 = [v11 _parsedObjectFromData:v7 inResponse:v8 error:&v19];
        v9 = v19;
        v15 = cmsSafeDictionary(v14);

        v16 = [v15 cmsOptionalDictionaryForKey:@"queue"];
        v17 = [v15 cmsOptionalDictionaryForKey:@"userActivity"];
        (*(*(a1 + 32) + 16))();

LABEL_13:
        goto LABEL_14;
      }

      if (!v9)
      {
        v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:4 userInfo:0];
      }
    }

    (*(*(a1 + 32) + 16))();
    goto LABEL_13;
  }

LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

void __62__CMSCloudExtensionSession__performActivityUpdate_completion___block_invoke_167(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained[18];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __62__CMSCloudExtensionSession__performActivityUpdate_completion___block_invoke_2;
  v9 = &unk_278DDD120;
  v10 = WeakRetained;
  v4 = a1[4];
  v11 = a1[5];
  v12 = a1[4];
  v13 = a1[6];
  v5 = [v3 dataTaskWithRequest:v4 completionHandler:&v6];
  [v5 resume];
}

void __62__CMSCloudExtensionSession__performActivityUpdate_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = [v9 statusCode];
  if (!v8 && (v10 & 0xFFFFFFFFFFFFFFFBLL) == 0xC8 || ([*(a1 + 32) _handleURLResponseCode:v10 error:v8 before:*(a1 + 40) request:*(a1 + 48) networkActivity:0 retryHandler:*(a1 + 56)] & 1) == 0)
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)report:(unint64_t)report forActivity:(id)activity nowPlaying:(id)playing previous:(id)previous timestamp:(id)timestamp completion:(id)completion
{
  timestampCopy = timestamp;
  completionCopy = completion;
  previousCopy = previous;
  playingCopy = playing;
  activityCopy = activity;
  v18 = [[CMSUpdateActivityRequest alloc] initForActivity:activityCopy report:report nowPlaying:playingCopy previouslyPlaying:previousCopy];

  if (timestampCopy)
  {
    [v18 setTimestamp:timestampCopy];
  }

  [(CMSCloudExtensionSession *)self _performActivityUpdate:v18 completion:completionCopy];
}

- (void)reportContentFailure:(id)failure forActivity:(id)activity whilePlaying:(id)playing timestamp:(id)timestamp completion:(id)completion
{
  timestampCopy = timestamp;
  completionCopy = completion;
  playingCopy = playing;
  activityCopy = activity;
  failureCopy = failure;
  v16 = [[CMSUpdateActivityRequest alloc] initForActivity:activityCopy failure:failureCopy whilePlaying:playingCopy];

  if (timestampCopy)
  {
    [v16 setTimestamp:timestampCopy];
  }

  [(CMSCloudExtensionSession *)self _performActivityUpdate:v16 completion:completionCopy];
}

- (void)publishContentFailure:(id)failure forActivity:(id)activity whilePlaying:(id)playing previousContentURL:(id)l nextContentURL:(id)rL networkActivity:(id)networkActivity completion:(id)completion
{
  failureCopy = failure;
  activityCopy = activity;
  playingCopy = playing;
  lCopy = l;
  rLCopy = rL;
  networkActivityCopy = networkActivity;
  completionCopy = completion;
  v21 = [(CMSCloudExtensionConfiguration *)self->_config configForEndpoint:@"queues/contentPlaybackFailure"];
  if (v21)
  {
    v32 = failureCopy;
    v22 = [[CMSContentFailureRequest alloc] initWithContentFailure:failureCopy whilePlaying:playingCopy previousContentURL:lCopy nextContentURL:rLCopy userActivityDictionary:activityCopy];
    os_unfair_lock_lock(&self->_requestQueueLock);
    if (!self->_connected)
    {
      [(CMSCloudExtensionSession *)self _connectSession];
    }

    os_unfair_lock_unlock(&self->_requestQueueLock);
    _constraintsDefinition = [(CMSCloudExtensionSession *)self _constraintsDefinition];
    [(CMSContentFailureRequest *)v22 setConstraints:_constraintsDefinition];

    [(CMSContentFailureRequest *)v22 setSessionIdentifier:self->_sessionIdentifier];
    cmsCoded = [(CMSContentFailureRequest *)v22 cmsCoded];
    v25 = cmsCoded;
    if (cmsCoded)
    {
      v31 = rLCopy;
      v42 = 0;
      v26 = CreateDataWithSerializedJSON(cmsCoded, &v42);
      v27 = v42;
      if (v26)
      {
        objc_initWeak(&location, self);
        queue = self->_requestDispatch;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __136__CMSCloudExtensionSession_publishContentFailure_forActivity_whilePlaying_previousContentURL_nextContentURL_networkActivity_completion___block_invoke;
        block[3] = &unk_278DDD1C0;
        objc_copyWeak(&v40, &location);
        v39 = completionCopy;
        v35 = v21;
        selfCopy = self;
        v37 = v26;
        v38 = networkActivityCopy;
        dispatch_async(queue, block);

        objc_destroyWeak(&v40);
        objc_destroyWeak(&location);
      }

      else if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, self, 0, v27);
      }

      rLCopy = v31;
    }

    else
    {
      v29 = _CMSILogingFacility();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [CMSCloudExtensionSession publishContentFailure:forActivity:whilePlaying:previousContentURL:nextContentURL:networkActivity:completion:];
      }

      if (!completionCopy)
      {
        goto LABEL_19;
      }

      v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:13 userInfo:0];
      (*(completionCopy + 2))(completionCopy, self, 0, v27);
    }

LABEL_19:
    goto LABEL_20;
  }

  v28 = _CMSILogingFacility();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [CMSCloudExtensionSession publishContentFailure:forActivity:whilePlaying:previousContentURL:nextContentURL:networkActivity:completion:];
  }

  if (completionCopy)
  {
    v32 = failureCopy;
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:11 userInfo:0];
    (*(completionCopy + 2))(completionCopy, self, 0, v22);
LABEL_20:

    failureCopy = v32;
  }
}

void __136__CMSCloudExtensionSession_publishContentFailure_forActivity_whilePlaying_previousContentURL_nextContentURL_networkActivity_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) request];
    v4 = [v3 mutableCopy];

    [v4 setValue:@"application/json" forHTTPHeaderField:@"Content-type"];
    [v4 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [*(a1 + 40) _updateDynamicHeadersOnRequest:v4 withDeadline:0];
    [v4 setHTTPMethod:@"POST"];
    [v4 setHTTPBody:*(a1 + 48)];
    v5 = WeakRetained[18];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __136__CMSCloudExtensionSession_publishContentFailure_forActivity_whilePlaying_previousContentURL_nextContentURL_networkActivity_completion___block_invoke_2;
    v12 = &unk_278DDD198;
    v6 = *(a1 + 64);
    v13 = WeakRetained;
    v14 = v6;
    v7 = [v5 dataTaskWithRequest:v4 completionHandler:&v9];
    [*(a1 + 56) associateWithTask:{v7, v9, v10, v11, v12}];
    [v7 resume];

LABEL_5:
    goto LABEL_6;
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:0 userInfo:0];
    (*(v8 + 16))(v8, 0, 0, v4);
    goto LABEL_5;
  }

LABEL_6:
}

void __136__CMSCloudExtensionSession_publishContentFailure_forActivity_whilePlaying_previousContentURL_nextContentURL_networkActivity_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 statusCode];
  if (v7 && !v9 && v10 == 200)
  {
    v11 = *(a1 + 32);
    v17 = 0;
    v12 = [v11 _parsedObjectFromData:v7 inResponse:v8 error:&v17];
    v13 = v17;
    v14 = cmsSafeDictionary(v12);

    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, *(a1 + 32), v14, v13);
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:4 userInfo:0];

    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))(v16, *(a1 + 32), 0, v13);
    }
  }
}

- (void)getAlbumArtDataFromURL:(id)l networkActivity:(id)activity completionHandler:(id)handler
{
  lCopy = l;
  activityCopy = activity;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (!lCopy)
  {
    if (!handlerCopy)
    {
      goto LABEL_11;
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = 0;
LABEL_10:
    v17 = [v15 errorWithDomain:@"com.apple.cloudextension.errors.session" code:v16 userInfo:0];
    (v11)[2](v11, 0, 0, v17);

    goto LABEL_11;
  }

  v12 = _CMSILogingFacility();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [CMSCloudExtensionSession getAlbumArtDataFromURL:networkActivity:completionHandler:];
  }

  os_unfair_lock_lock(&self->_requestQueueLock);
  connected = self->_connected;
  os_unfair_lock_unlock(&self->_requestQueueLock);
  if (!connected)
  {
    if (!v11)
    {
      goto LABEL_11;
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = 2;
    goto LABEL_10;
  }

  objc_initWeak(&location, self);
  requestDispatch = self->_requestDispatch;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__CMSCloudExtensionSession_getAlbumArtDataFromURL_networkActivity_completionHandler___block_invoke;
  block[3] = &unk_278DDD1E8;
  objc_copyWeak(&v22, &location);
  v21 = v11;
  v19 = lCopy;
  v20 = activityCopy;
  dispatch_async(requestDispatch, block);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
LABEL_11:
}

void __85__CMSCloudExtensionSession_getAlbumArtDataFromURL_networkActivity_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [*(WeakRetained + 1) configForEndpoint:@"queues/playMedia"];
    v5 = [v4 request];
    v6 = [v5 mutableCopy];

    [v6 setURL:*(a1 + 32)];
    [v6 setValue:@"image/png forHTTPHeaderField:{image/jpeg", @"Accept"}];
    v7 = v3[18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __85__CMSCloudExtensionSession_getAlbumArtDataFromURL_networkActivity_completionHandler___block_invoke_2;
    v11[3] = &unk_278DDC9A0;
    v12 = *(a1 + 48);
    v8 = [v7 dataTaskWithRequest:v6 completionHandler:v11];
    [*(a1 + 40) associateWithTask:v8];
    [v8 resume];
  }

  else
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:0 userInfo:0];
      (*(v9 + 16))(v9, 0, 0, v10);
    }
  }
}

void __85__CMSCloudExtensionSession_getAlbumArtDataFromURL_networkActivity_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v7;
  if ([v9 statusCode] == 204)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:15 userInfo:0];

    v8 = v10;
  }

  if (!v14 || v8)
  {
    if (!v8)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:4 userInfo:0];
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, 0, v8);
    }
  }

  else
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = [v9 valueForHTTPHeaderField:@"Content-type"];
      (*(v11 + 16))(v11, v14, v12, 0);
    }

    v8 = 0;
  }
}

- (double)durationForMethod:(id)method
{
  methodCopy = method;
  os_unfair_lock_lock(&self->_requestQueueLock);
  v5 = [(NSMutableDictionary *)self->_durations objectForKeyedSubscript:methodCopy];

  os_unfair_lock_unlock(&self->_requestQueueLock);
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (double)totalDuration
{
  os_unfair_lock_lock(&self->_requestQueueLock);
  totalDuration = self->_totalDuration;
  os_unfair_lock_unlock(&self->_requestQueueLock);
  return totalDuration;
}

- (void)closeWithForce:(BOOL)force
{
  forceCopy = force;
  os_unfair_lock_lock(&self->_requestQueueLock);
  if (self->_connected)
  {
    *&self->_connected = 256;
    session = self->_session;
    if (forceCopy)
    {
      [(NSURLSession *)session invalidateAndCancel];
    }

    else
    {
      [(NSURLSession *)session finishTasksAndInvalidate];
    }
  }

  os_unfair_lock_unlock(&self->_requestQueueLock);
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  errorCopy = error;
  sessionCopy = session;
  os_unfair_lock_lock(&self->_requestQueueLock);
  session = self->_session;

  if (session == sessionCopy)
  {
    *&self->_connected = 256;
    objc_storeStrong(&self->_closeError, error);
    requestDispatch = self->_requestDispatch;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__CMSCloudExtensionSession_URLSession_didBecomeInvalidWithError___block_invoke;
    block[3] = &unk_278DDD210;
    block[4] = self;
    dispatch_async(requestDispatch, block);
  }

  os_unfair_lock_unlock(&self->_requestQueueLock);
}

uint64_t __65__CMSCloudExtensionSession_URLSession_didBecomeInvalidWithError___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = 0;

  *(*(a1 + 32) + 33) = 0;
  v6 = *(a1 + 32);
  v7 = *(v6 + 144);
  *(v6 + 144) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 168);
  *(v10 + 168) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 24);
  *(v12 + 24) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 16));
  v14 = *(a1 + 32);
  result = *(v14 + 72);
  if (result)
  {
    v16 = *(v14 + 56);
    v17 = *(result + 16);

    return v17();
  }

  return result;
}

- (void)getFairplayCertificateUsingNetworkActivity:(id)activity completionHandler:(id)handler
{
  activityCopy = activity;
  handlerCopy = handler;
  v8 = _CMSILogingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CMSCloudExtensionSession getFairplayCertificateUsingNetworkActivity:completionHandler:];
  }

  objc_initWeak(&location, self);
  requestDispatch = self->_requestDispatch;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__CMSCloudExtensionSession_getFairplayCertificateUsingNetworkActivity_completionHandler___block_invoke;
  v12[3] = &unk_278DDD238;
  objc_copyWeak(&v15, &location);
  v13 = activityCopy;
  v14 = handlerCopy;
  v10 = activityCopy;
  v11 = handlerCopy;
  dispatch_async(requestDispatch, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __89__CMSCloudExtensionSession_getFairplayCertificateUsingNetworkActivity_completionHandler___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [*(WeakRetained + 1) configForEndpoint:@"queues/contentProtectionKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 fairPlayKeySystemCertificateUrl];

      if (v6)
      {
        v7 = [v5 request];
        v8 = [v7 mutableCopy];

        v9 = [v5 fairPlayKeySystemCertificateUrl];
        [v8 setURL:v9];

        [v8 setHTTPMethod:@"GET"];
        v10 = v3[18];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __89__CMSCloudExtensionSession_getFairplayCertificateUsingNetworkActivity_completionHandler___block_invoke_2;
        v15[3] = &unk_278DDC9A0;
        v16 = a1[5];
        v11 = [v10 dataTaskWithRequest:v8 completionHandler:v15];
        [a1[4] associateWithTask:v11];
        [v11 resume];
      }

      else
      {
        v14 = a1[5];
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:1 userInfo:0];
        v14[2](v14, 0, v8);
      }
    }

    else
    {
      v12 = a1[5];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:1 userInfo:0];
      v12[2](v12, 0, v13);
    }
  }
}

void __89__CMSCloudExtensionSession_getFairplayCertificateUsingNetworkActivity_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a4;
  v8 = [a3 statusCode];
  if (v10 && !v7 && v8 == 200)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:4 userInfo:0];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)getContentProtectionKeyForAssetIdentifier:(id)identifier usingKeySystem:(id)system andKeyRequest:(id)request playerContext:(id)context userActivityDictionary:(id)dictionary networkActivity:(id)activity completionHandler:(id)handler
{
  identifierCopy = identifier;
  systemCopy = system;
  requestCopy = request;
  contextCopy = context;
  dictionaryCopy = dictionary;
  activityCopy = activity;
  handlerCopy = handler;
  v22 = _CMSILogingFacility();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [CMSCloudExtensionSession getContentProtectionKeyForAssetIdentifier:usingKeySystem:andKeyRequest:playerContext:userActivityDictionary:networkActivity:completionHandler:];
  }

  objc_initWeak(&location, self);
  requestDispatch = self->_requestDispatch;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __170__CMSCloudExtensionSession_getContentProtectionKeyForAssetIdentifier_usingKeySystem_andKeyRequest_playerContext_userActivityDictionary_networkActivity_completionHandler___block_invoke;
  block[3] = &unk_278DDD260;
  objc_copyWeak(&v39, &location);
  v32 = requestCopy;
  v33 = systemCopy;
  v37 = activityCopy;
  v38 = handlerCopy;
  v34 = identifierCopy;
  v35 = contextCopy;
  v36 = dictionaryCopy;
  v24 = activityCopy;
  v25 = dictionaryCopy;
  v26 = contextCopy;
  v27 = identifierCopy;
  v28 = handlerCopy;
  v29 = systemCopy;
  v30 = requestCopy;
  dispatch_async(requestDispatch, block);

  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
}

void __170__CMSCloudExtensionSession_getContentProtectionKeyForAssetIdentifier_usingKeySystem_andKeyRequest_playerContext_userActivityDictionary_networkActivity_completionHandler___block_invoke(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [*(WeakRetained + 1) configForEndpoint:@"queues/contentProtectionKey"];
    v5 = [v4 request];
    v6 = [v5 mutableCopy];

    v7 = [*(a1 + 32) base64EncodedStringWithOptions:0];
    v31 = *MEMORY[0x277CE5D20];
    v32[0] = @"ContentKeySystemFairPlayStreaming";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v9 = [v8 objectForKey:*(a1 + 40)];
    if (v9)
    {
      v25 = v4;
      v29[0] = @"version";
      v10 = CMSCloudExtensionSpecVersion();
      v30[0] = v10;
      v30[1] = v9;
      v29[1] = @"keySystem";
      v29[2] = @"assetIdentifier";
      v29[3] = @"keyRequest";
      v29[4] = @"context";
      v11 = *(a1 + 56);
      v30[2] = *(a1 + 48);
      v30[3] = v7;
      v24 = v7;
      v12 = [v11 cmsCoded];
      v30[4] = v12;
      v29[5] = @"userActivity";
      v13 = *(a1 + 64);
      v14 = v13;
      if (!v13)
      {
        v14 = [MEMORY[0x277CBEB68] null];
      }

      v30[5] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];
      if (!v13)
      {
      }

      v28 = 0;
      v16 = CreateDataWithSerializedJSON(v15, &v28);
      v17 = v28;
      if (v16)
      {
        [v6 setHTTPMethod:@"POST"];
        [v6 setValue:@"application/json" forHTTPHeaderField:@"Content-type"];
        [v6 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        [v6 setHTTPBody:v16];
        v18 = v3[18];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __170__CMSCloudExtensionSession_getContentProtectionKeyForAssetIdentifier_usingKeySystem_andKeyRequest_playerContext_userActivityDictionary_networkActivity_completionHandler___block_invoke_2;
        v26[3] = &unk_278DDD198;
        v19 = *(a1 + 80);
        v26[4] = v3;
        v27 = v19;
        v20 = [v18 dataTaskWithRequest:v6 completionHandler:v26];
        [*(a1 + 72) associateWithTask:v20];
        [v20 resume];
      }

      else
      {
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:13 userInfo:0];

        (*(*(a1 + 80) + 16))();
        v17 = v22;
      }

      v4 = v25;

      v7 = v24;
    }

    else
    {
      v21 = *(a1 + 80);
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:13 userInfo:0];
      (*(v21 + 16))(v21, 0, 0, v15);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __170__CMSCloudExtensionSession_getContentProtectionKeyForAssetIdentifier_usingKeySystem_andKeyRequest_playerContext_userActivityDictionary_networkActivity_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 statusCode];
  if (v7 && !v9 && v10 == 200)
  {
    v11 = *(a1 + 32);
    v19 = 0;
    v12 = [v11 _parsedObjectFromData:v7 inResponse:v8 error:&v19];
    v13 = v19;
    v14 = cmsSafeDictionary(v12);

    v15 = [v14 cmsOptionalStringForKey:@"keyResponse"];
    v16 = [v14 cmsOptionalNumberForKey:@"leaseRenewalDeadline"];
    if (v15 && [v15 length])
    {
      v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v15 options:0];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:4 userInfo:0];

      (*(*(a1 + 40) + 16))();
      v13 = v18;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.session" code:4 userInfo:0];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)setQosClass:(const char *)a1 .cold.1(const char *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_2439AD000, a2, OS_LOG_TYPE_ERROR, "%@: already connected, can't change qosClass", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_retryRequest:before:networkActivity:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_retryRequestAfterAuthTokenRenewal:(uint64_t)a1 parentNetworkActivity:before:completionHandler:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 88);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __110__CMSCloudExtensionSession__retryRequestAfterAuthTokenRenewal_parentNetworkActivity_before_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleURLResponseCode:error:before:request:networkActivity:retryHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleURLResponseCode:error:before:request:networkActivity:retryHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleURLResponseCode:error:before:request:networkActivity:retryHandler:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleURLResponse:before:networkActivity:request:data:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_2439AD000, v1, OS_LOG_TYPE_DEBUG, "methodResponses: %@ error: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_handleURLResponse:before:networkActivity:request:data:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __89__CMSCloudExtensionSession__handleURLResponse_before_networkActivity_request_data_error___block_invoke_3_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __89__CMSCloudExtensionSession__handleURLResponse_before_networkActivity_request_data_error___block_invoke_3_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __89__CMSCloudExtensionSession__handleURLResponse_before_networkActivity_request_data_error___block_invoke_3_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)performMethod:(uint64_t)a1 withParams:networkActivity:completion:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 168);
  *(a1 + 33);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __80__CMSCloudExtensionSession_performMethod_withParams_networkActivity_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)requestQueueForActivity:networkActivity:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getQueueSegmentFromURL:referrer:networkActivity:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_performActivityUpdate:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_performActivityUpdate:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_performActivityUpdate:completion:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)publishContentFailure:forActivity:whilePlaying:previousContentURL:nextContentURL:networkActivity:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)publishContentFailure:forActivity:whilePlaying:previousContentURL:nextContentURL:networkActivity:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getAlbumArtDataFromURL:networkActivity:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getFairplayCertificateUsingNetworkActivity:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getContentProtectionKeyForAssetIdentifier:usingKeySystem:andKeyRequest:playerContext:userActivityDictionary:networkActivity:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end