@interface NetworkQualityAssessment
- (NetworkQualityAssessment)initWithConfiguration:(id)configuration delegate:(id)delegate delegateQueue:(id)queue;
- (void)finalizeResults:(id)results withError:(id)error withCompletionHandler:(id)handler;
- (void)progress:(id)progress;
- (void)runWithCompletionHandler:(id)handler;
@end

@implementation NetworkQualityAssessment

- (NetworkQualityAssessment)initWithConfiguration:(id)configuration delegate:(id)delegate delegateQueue:(id)queue
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = NetworkQualityAssessment;
  v11 = [(NetworkQualityAssessment *)&v22 init];
  if (v11)
  {
    v12 = [configurationCopy copy];
    config = v11->_config;
    v11->_config = v12;

    objc_storeStrong(&v11->_delegate, delegate);
    objc_storeStrong(&v11->_delegateQueue, queue);
    v11->_testRunning = 0;
    v14 = objc_alloc_init(NetworkQualityResult);
    progressResults = v11->_progressResults;
    v11->_progressResults = v14;

    v11->_resultsIndex = 0;
    delegate = v11->_delegate;
    v17 = [NetworkQualityExecutions alloc];
    v18 = v11->_config;
    if (delegate)
    {
      v19 = [(NetworkQualityExecutions *)v17 initWithConfiguration:v18 delegate:v11];
    }

    else
    {
      v19 = [(NetworkQualityExecutions *)v17 initWithConfiguration:v18];
    }

    execution = v11->_execution;
    v11->_execution = v19;
  }

  return v11;
}

- (void)progress:(id)progress
{
  progressCopy = progress;
  v5 = [progressCopy copy];
  workingLatencyResults = [progressCopy workingLatencyResults];
  v7 = [workingLatencyResults copy];
  [v5 setWorkingLatencyValues:v7];

  idleLatencyResults = [progressCopy idleLatencyResults];
  v9 = [idleLatencyResults copy];
  [v5 setIdleLatencyValues:v9];

  mutableOtherValues = [progressCopy mutableOtherValues];

  v11 = [mutableOtherValues objectForKey:@"protocols_seen"];

  if (v11 && [v11 count])
  {
    allKeys = [v11 allKeys];
    v13 = [allKeys objectAtIndex:0];
    [v5 setAppProtocol:v13];
  }

  if (self->_delegate)
  {
    ++self->_resultsIndex;
    [v5 setIndex:?];
    [v5 finalizeResult];
    delegateQueue = self->_delegateQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __37__NetworkQualityAssessment_progress___block_invoke;
    v15[3] = &unk_279969678;
    v15[4] = self;
    v16 = v5;
    [(NSOperationQueue *)delegateQueue addOperationWithBlock:v15];
  }
}

- (void)finalizeResults:(id)results withError:(id)error withCompletionHandler:(id)handler
{
  resultsCopy = results;
  handlerCopy = handler;
  errorCopy = error;
  v10 = [resultsCopy copy];
  workingLatencyResults = [resultsCopy workingLatencyResults];
  v12 = [workingLatencyResults copy];
  [v10 setWorkingLatencyValues:v12];

  idleLatencyResults = [resultsCopy idleLatencyResults];
  v14 = [idleLatencyResults copy];
  [v10 setIdleLatencyValues:v14];

  mutableOtherValues = [resultsCopy mutableOtherValues];
  v16 = [mutableOtherValues objectForKeyedSubscript:@"protocols_seen"];

  if (v16 && [v16 count])
  {
    allKeys = [v16 allKeys];
    v18 = [allKeys objectAtIndex:0];
    [v10 setAppProtocol:v18];

    [v10 setProtocolNames:v16];
  }

  mutableOtherValues2 = [resultsCopy mutableOtherValues];
  v20 = [mutableOtherValues2 objectForKeyedSubscript:@"protocols_seen"];
  v21 = [v20 objectForKeyedSubscript:@"proxied"];
  [v10 setProxied:v21 != 0];

  mutableOtherValues3 = [resultsCopy mutableOtherValues];
  v23 = [mutableOtherValues3 copy];
  [v10 setOtherValues:v23];

  mutableURLSessionMetrics = [resultsCopy mutableURLSessionMetrics];
  v25 = [mutableURLSessionMetrics copy];
  [v10 setUrlSessionMetrics:v25];

  testEndpoint = [(NetworkQualityResult *)self->_progressResults testEndpoint];

  if (testEndpoint)
  {
    testEndpoint2 = [(NetworkQualityResult *)self->_progressResults testEndpoint];
    [v10 setTestEndpoint:testEndpoint2];
  }

  hostOverride = [(NetworkQualityConfiguration *)self->_config hostOverride];
  if (hostOverride)
  {
    v29 = hostOverride;
    testEndpoint3 = [v10 testEndpoint];

    if (!testEndpoint3)
    {
      hostOverride2 = [(NetworkQualityConfiguration *)self->_config hostOverride];
      [v10 setTestEndpoint:hostOverride2];
    }
  }

  if ([(NetworkQualityConfiguration *)self->_config latencyMeasurementServiceType])
  {
    v32 = NetworkQualityNetworkServiceType_ToString([(NetworkQualityConfiguration *)self->_config latencyMeasurementServiceType]);
    [v10 setLatencyMeasurementServiceType:v32];
  }

  if ([(NetworkQualityConfiguration *)self->_config loadGeneratingNetworkServiceType])
  {
    v33 = NetworkQualityNetworkServiceType_ToString([(NetworkQualityConfiguration *)self->_config loadGeneratingNetworkServiceType]);
    [v10 setLoadGeneratingNetworkServiceType:v33];
  }

  ++self->_resultsIndex;
  [v10 setIndex:?];
  [v10 finalizeResult];
  handlerCopy[2](handlerCopy, v10, errorCopy);
}

- (void)runWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_testRunning)
  {
    objc_sync_exit(selfCopy);

    v6 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NetworkQualityErrorDomain" code:1002 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v6);
  }

  else
  {
    selfCopy->_testRunning = 1;
    objc_sync_exit(selfCopy);

    execution = selfCopy->_execution;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__NetworkQualityAssessment_runWithCompletionHandler___block_invoke;
    v8[3] = &unk_2799696A0;
    v8[4] = selfCopy;
    v9 = handlerCopy;
    [(NetworkQualityExecutions *)execution runWithCompletionHandler:v8];
  }
}

@end