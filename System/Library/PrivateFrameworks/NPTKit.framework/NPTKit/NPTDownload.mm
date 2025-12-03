@interface NPTDownload
- (BOOL)finishedAllTasks;
- (BOOL)inTimedMode;
- (NPTDownload)initWithCoder:(id)coder;
- (NPTDownload)initWithNetworkActivityParent:(id)parent testConfiguration:(id)configuration;
- (double)checkAndReturnSpeedStablized:(id)stablized;
- (double)minNonZeroValue:(double)value comparisonValue:(double)comparisonValue;
- (id)aggregateResults;
- (id)checkInterfaceSpecified;
- (id)copyWithZone:(_NSZone *)zone;
- (id)delegate;
- (id)overAllResultByTask:(unint64_t)task;
- (id)processNQResult:(id)result;
- (id)realTimeSpeedMetric:(unint64_t)metric;
- (id)realTimeSpeedMetricOverall;
- (id)setupNewDownloadTask;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)cancel;
- (void)cancelDispatchTimer;
- (void)cancelDispatchTimerAndSession;
- (void)completeActivityWithReason:(int)reason;
- (void)encodeWithCoder:(id)coder;
- (void)kickOffNewDownload;
- (void)progress:(id)progress;
- (void)setupTimer;
- (void)startDownloadWithCompletion:(id)completion;
- (void)startLegacyDownloadWithCompletion:(id)completion;
- (void)startNQDownloadWithCompletion:(id)completion;
- (void)startTasks;
@end

@implementation NPTDownload

- (NPTDownload)initWithNetworkActivityParent:(id)parent testConfiguration:(id)configuration
{
  parentCopy = parent;
  configurationCopy = configuration;
  v28.receiver = self;
  v28.super_class = NPTDownload;
  v9 = [(NPTDownload *)&v28 init];
  if (v9)
  {
    v10 = objc_alloc_init(NPTMetricResult);
    [(NPTDownload *)v9 setResults:v10];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    taskDict = v9->taskDict;
    v9->taskDict = dictionary;

    objc_storeStrong(&v9->activityParent, parent);
    v13 = nw_activity_create();
    downloadActivity = v9->downloadActivity;
    v9->downloadActivity = v13;

    activityParent = v9->activityParent;
    v15 = v9->downloadActivity;
    nw_activity_set_parent_activity();
    if ([configurationCopy stopAtFileSize])
    {
      concurrentStreams = 1;
    }

    else
    {
      concurrentStreams = [configurationCopy concurrentStreams];
    }

    v9->processedStreamEndCount = 0;
    v9->maxConcurrentStreams = concurrentStreams;
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    buffer = v9->buffer;
    v9->buffer = v18;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v9->recentBufferTime = v20;
    endTimeAggregate = v9->endTimeAggregate;
    v9->endTimeAggregate = 0;

    v9->smartDownload = [configurationCopy endWhenStable];
    v9->timedDownloadLength = [configurationCopy testDuration];
    v9->stableSpeedToLog = 0.0;
    downloadError = v9->downloadError;
    v9->downloadError = 0;

    v9->stopAtFileSizeEnabled = [configurationCopy stopAtFileSize];
    clientName = [configurationCopy clientName];
    callingClient = v9->callingClient;
    v9->callingClient = clientName;

    v9->maxSpeedObserved = 0.0;
    v9->legacy = [configurationCopy legacyMode];
    nqTest = v9->nqTest;
    v9->nqTest = 0;

    nqConfig = v9->nqConfig;
    v9->nqConfig = 0;

    objc_storeStrong(&v9->testConfig, configuration);
  }

  return v9;
}

- (void)startNQDownloadWithCompletion:(id)completion
{
  completionCopy = completion;
  [(NPTDownload *)self setCompletion:completionCopy];
  nQDownloadConfiguration = [(NPTPerformanceTestConfiguration *)self->testConfig NQDownloadConfiguration];
  nqConfig = self->nqConfig;
  self->nqConfig = nQDownloadConfiguration;

  bonjourHost = [(NPTPerformanceTestConfiguration *)self->testConfig bonjourHost];

  if (bonjourHost)
  {
    bonjourHost2 = [(NPTPerformanceTestConfiguration *)self->testConfig bonjourHost];
    [(NetworkQualityConfiguration *)self->nqConfig setBonjourHost:bonjourHost2];

    [(NetworkQualityConfiguration *)self->nqConfig setValidateCertificate:0];
  }

  downloadActivity = self->downloadActivity;
  nw_activity_activate();
  checkInterfaceSpecified = [(NPTDownload *)self checkInterfaceSpecified];
  results = [(NPTDownload *)self results];
  [results setError:checkInterfaceSpecified];

  if (checkInterfaceSpecified)
  {
    delegate = [(NPTDownload *)self delegate];

    if (delegate)
    {
      delegate2 = [(NPTDownload *)self delegate];
      [delegate2 download:self didFinishWithError:checkInterfaceSpecified];
    }

    completion = [(NPTDownload *)self completion];

    if (completion)
    {
      completion2 = [(NPTDownload *)self completion];
      (completion2)[2](completion2, 0, checkInterfaceSpecified);
    }
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v17 = dispatch_get_global_queue(33, 0);
    [v16 setUnderlyingQueue:v17];

    [v16 setMaxConcurrentOperationCount:1];
    v18 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    initialTime = self->initialTime;
    self->initialTime = v18;

    v20 = [objc_alloc(MEMORY[0x277D2C998]) initWithConfiguration:self->nqConfig delegate:self delegateQueue:v16];
    nqTest = self->nqTest;
    self->nqTest = v20;

    if (self->nqTest)
    {
      delegate3 = [(NPTDownload *)self delegate];

      if (delegate3)
      {
        delegate4 = [(NPTDownload *)self delegate];
        [delegate4 downloadWillStart];
      }
    }

    objc_initWeak(&location, self);
    v24 = self->nqTest;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __45__NPTDownload_startNQDownloadWithCompletion___block_invoke;
    v25[3] = &unk_2789D3DD0;
    objc_copyWeak(&v26, &location);
    [(NetworkQualityAssessment *)v24 runWithCompletionHandler:v25];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

void __45__NPTDownload_startNQDownloadWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = +[NPTLogger network];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 debugDescription];
    v25 = 138412546;
    v26 = v9;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_233421000, v8, OS_LOG_TYPE_DEFAULT, "Test complete %@, %@", &v25, 0x16u);
  }

  v10 = (WeakRetained + 128);
  if (*(WeakRetained + 16))
  {
    v11 = *(WeakRetained + 16);
  }

  else
  {
    v11 = v6;
  }

  objc_storeStrong(WeakRetained + 16, v11);
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = *(WeakRetained + 12);
  *(WeakRetained + 12) = v12;

  v14 = [WeakRetained processNQResult:v5];
  [WeakRetained setResults:v14];

  if (*v10)
  {
    if ([*v10 code] == -999)
    {
      v15 = 4;
    }

    else
    {
      v15 = 3;
    }
  }

  else
  {
    v15 = 2;
  }

  [WeakRetained completeActivityWithReason:v15];
  v16 = [WeakRetained delegate];

  if (v16)
  {
    if (v6)
    {
      v17 = [WeakRetained results];
      [v17 setError:v6];

      v18 = [WeakRetained delegate];
      [v18 download:WeakRetained didFinishWithError:v6];
    }

    else
    {
      v18 = [WeakRetained delegate];
      v19 = [WeakRetained results];
      [v18 download:WeakRetained didFinishWithResults:v19];
    }
  }

  v20 = [WeakRetained completion];

  if (v20)
  {
    v21 = [WeakRetained completion];
    v22 = objc_loadWeakRetained((a1 + 32));
    v23 = [v22 results];
    (v21)[2](v21, v23, v6);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)startDownloadWithCompletion:(id)completion
{
  if (self->legacy)
  {
    [(NPTDownload *)self startLegacyDownloadWithCompletion:completion];
  }

  else
  {
    [(NPTDownload *)self startNQDownloadWithCompletion:completion];
  }
}

- (void)startLegacyDownloadWithCompletion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  [(NPTDownload *)self setCompletion:completion];
  downloadActivity = self->downloadActivity;
  nw_activity_activate();
  checkInterfaceSpecified = [(NPTDownload *)self checkInterfaceSpecified];
  results = [(NPTDownload *)self results];
  [results setError:checkInterfaceSpecified];

  if (checkInterfaceSpecified)
  {
    delegate = [(NPTDownload *)self delegate];

    if (delegate)
    {
      delegate2 = [(NPTDownload *)self delegate];
      [delegate2 download:self didFinishWithError:checkInterfaceSpecified];
    }

    completion = [(NPTDownload *)self completion];

    if (completion)
    {
      completion2 = [(NPTDownload *)self completion];
      (completion2)[2](completion2, 0, checkInterfaceSpecified);
    }
  }

  else
  {
    if ([(NPTPerformanceTestConfiguration *)self->testConfig interfaceType])
    {
      v11 = [(NPTPerformanceTestConfiguration *)self->testConfig interfaceType]== 3;
    }

    else
    {
      v11 = 1;
    }

    ephemeralSessionConfiguration = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
    v13 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [v13 setQualityOfService:33];
    [v13 setMaxConcurrentOperationCount:1];
    [ephemeralSessionConfiguration setAllowsCellularAccess:v11];
    [ephemeralSessionConfiguration setWaitsForConnectivity:0];
    [ephemeralSessionConfiguration setTimeoutIntervalForRequest:3.0];
    if (!self->timedDownloadLength)
    {
      [ephemeralSessionConfiguration setTimeoutIntervalForResource:(90 * self->maxConcurrentStreams)];
    }

    [ephemeralSessionConfiguration setHTTPMaximumConnectionsPerHost:self->maxConcurrentStreams + 1];
    v14 = [MEMORY[0x277CBABB8] sessionWithConfiguration:ephemeralSessionConfiguration delegate:self delegateQueue:v13];
    downloadSession = self->downloadSession;
    self->downloadSession = v14;

    v16 = MEMORY[0x277CBAB50];
    downloadURL = [(NPTPerformanceTestConfiguration *)self->testConfig downloadURL];
    v18 = [v16 requestWithURL:downloadURL];
    request = self->request;
    self->request = v18;

    [(NSMutableURLRequest *)self->request setHTTPMethod:@"GET"];
    [(NSMutableURLRequest *)self->request setValue:@"application/octet-stream" forHTTPHeaderField:@"Accept"];
    timedDownloadLength = self->timedDownloadLength;
    v21 = timedDownloadLength * 0.9;
    if (!timedDownloadLength)
    {
      v21 = 60.0;
    }

    [(NSMutableURLRequest *)self->request setTimeoutInterval:v21];
    callingClient = self->callingClient;
    if (callingClient && [(NSString *)callingClient length])
    {
      [(NSMutableURLRequest *)self->request setValue:self->callingClient forHTTPHeaderField:@"NPTKit-Client"];
    }

    interfaceName = [(NPTPerformanceTestConfiguration *)self->testConfig interfaceName];

    if (interfaceName)
    {
      v24 = +[NPTLogger network];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        interfaceName2 = [(NPTPerformanceTestConfiguration *)self->testConfig interfaceName];
        *buf = 138412290;
        v42 = interfaceName2;
        _os_log_impl(&dword_233421000, v24, OS_LOG_TYPE_DEFAULT, "Force the download over the following interface: %@", buf, 0xCu);
      }

      v26 = self->request;
      interfaceName3 = [(NPTPerformanceTestConfiguration *)self->testConfig interfaceName];
      [(NSMutableURLRequest *)v26 setBoundInterfaceIdentifier:interfaceName3];
    }

    v28 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.wifiqa.NPTKit"];
    infoDictionary = [v28 infoDictionary];
    v30 = [infoDictionary objectForKey:@"CFBundleShortVersionString"];

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"NPTKit/%@", v30];
    [(NSMutableURLRequest *)self->request addValue:v31 forHTTPHeaderField:@"User-Agent"];
    v32 = +[NPTLogger network];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      maxConcurrentStreams = self->maxConcurrentStreams;
      *buf = 134217984;
      v42 = maxConcurrentStreams;
      _os_log_impl(&dword_233421000, v32, OS_LOG_TYPE_DEFAULT, "Will start download task to test download speed with %lu number of streams", buf, 0xCu);
    }

    if (self->downloadSession)
    {
      delegate3 = [(NPTDownload *)self delegate];

      if (delegate3)
      {
        delegate4 = [(NPTDownload *)self delegate];
        [delegate4 downloadWillStart];
      }

      if (self->maxConcurrentStreams)
      {
        v36 = 0;
        do
        {
          setupNewDownloadTask = [(NPTDownload *)self setupNewDownloadTask];
          ++v36;
        }

        while (v36 < self->maxConcurrentStreams);
      }

      if (self->timedDownloadLength)
      {
        [(NPTDownload *)self setupTimer];
      }

      if (!self->initialTime)
      {
        v38 = objc_alloc_init(MEMORY[0x277CBEAA8]);
        initialTime = self->initialTime;
        self->initialTime = v38;
      }

      [(NPTDownload *)self startTasks];
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)setupTimer
{
  v3 = dispatch_get_global_queue(0, 0);
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
  timeoutTimer = self->timeoutTimer;
  self->timeoutTimer = v4;

  v6 = self->timeoutTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __25__NPTDownload_setupTimer__block_invoke;
  handler[3] = &unk_2789D3DF8;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  v7 = self->timeoutTimer;
  v8 = dispatch_time(0, 1000000000 * self->timedDownloadLength);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_cancel_handler(self->timeoutTimer, &__block_literal_global_0);
  dispatch_activate(self->timeoutTimer);
}

uint64_t __25__NPTDownload_setupTimer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (v3 && !dispatch_source_testcancel(*(v2 + 72)))
  {
    dispatch_source_cancel(v3);
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v5 = *(a1 + 32);
  v6 = *(v5 + 96);
  *(v5 + 96) = v4;

  v7 = *(a1 + 32);
  v8 = *(v7 + 72);
  *(v7 + 72) = 0;

  v9 = +[NPTLogger network];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_233421000, v9, OS_LOG_TYPE_DEFAULT, "Timed download timer ended", v11, 2u);
  }

  return [*(*(a1 + 32) + 8) invalidateAndCancel];
}

- (void)kickOffNewDownload
{
  setupNewDownloadTask = [(NPTDownload *)self setupNewDownloadTask];
  [setupNewDownloadTask resume];
}

- (id)setupNewDownloadTask
{
  v3 = objc_alloc_init(NPTTaskMetrics);
  v4 = [(NSURLSession *)self->downloadSession dataTaskWithRequest:self->request];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v4, "taskIdentifier")];
  [(NPTTaskMetrics *)v3 setTask:v4];
  [(NSMutableDictionary *)self->taskDict setObject:v3 forKeyedSubscript:v5];
  [v4 set_nw_activity:self->downloadActivity];

  return v4;
}

- (void)cancel
{
  [(NPTDownload *)self cancelDispatchTimerAndSession];
  [(NetworkQualityAssessment *)self->nqTest cancel];
  downloadSession = self->downloadSession;
  self->downloadSession = 0;
}

- (void)cancelDispatchTimerAndSession
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  endTimeAggregate = self->endTimeAggregate;
  self->endTimeAggregate = v3;

  [(NPTDownload *)self cancelDispatchTimer];
  downloadSession = self->downloadSession;

  [(NSURLSession *)downloadSession invalidateAndCancel];
}

- (void)cancelDispatchTimer
{
  timeoutTimer = self->timeoutTimer;
  if (timeoutTimer && !dispatch_source_testcancel(self->timeoutTimer))
  {
    dispatch_source_cancel(timeoutTimer);
    v4 = self->timeoutTimer;
    self->timeoutTimer = 0;
  }
}

- (double)checkAndReturnSpeedStablized:(id)stablized
{
  stablizedCopy = stablized;
  v5 = self->recentBufferTime + 1.0;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v6 = 0.0;
  if (v5 < v7)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->recentBufferTime = v8;
    buffer = self->buffer;
    v10 = MEMORY[0x277CCABB0];
    [stablizedCopy speed];
    v11 = [v10 numberWithDouble:?];
    [(NSMutableArray *)buffer addObject:v11];

    if ([(NSMutableArray *)self->buffer count]>= 0xB)
    {
      [(NSMutableArray *)self->buffer removeObjectAtIndex:0];
    }

    if ([(NSMutableArray *)self->buffer count]== 10)
    {
      v12 = [(NSMutableArray *)self->buffer valueForKeyPath:@"@avg.self"];
      [v12 doubleValue];
      v14 = v13;

      v15 = [(NSMutableArray *)self->buffer objectAtIndexedSubscript:9];
      [v15 doubleValue];
      v17 = vabdd_f64(v16, v14);

      v18 = [(NSMutableArray *)self->buffer objectAtIndexedSubscript:9];
      [v18 doubleValue];
      v20 = v17 / v19;

      if (v20 < 0.1)
      {
        [stablizedCopy speed];
        v6 = v21;
      }
    }
  }

  return v6;
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = [(NPTDownload *)self realTimeSpeedMetricOverall:session];
  delegate = [(NPTDownload *)self delegate];

  if (delegate)
  {
    delegate2 = [(NPTDownload *)self delegate];
    [delegate2 download:self didReceiveSpeedMetric:v6];
  }

  [v6 speed];
  if (v9 > self->maxSpeedObserved)
  {
    [v6 speed];
    self->maxSpeedObserved = v10;
  }

  if (self->stableSpeedToLog == 0.0)
  {
    [(NPTDownload *)self checkAndReturnSpeedStablized:v6];
    if (v11 > 0.0)
    {
      v12 = v11;
      self->stableSpeedToLog = v11;
      v13 = +[NPTLogger network];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        bytesTransferred = [v6 bytesTransferred];
        [v6 timeSinceStart];
        v17 = 134218496;
        v18 = v12;
        v19 = 2048;
        v20 = bytesTransferred;
        v21 = 2048;
        v22 = v15;
        _os_log_impl(&dword_233421000, v13, OS_LOG_TYPE_DEFAULT, "Download task has stabilized at %f Mbps after downloading %lld bytes over %f seconds", &v17, 0x20u);
      }

      if (self->smartDownload)
      {
        [(NPTDownload *)self cancelDispatchTimerAndSession];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  taskCopy = task;
  metricsCopy = metrics;
  taskDict = self->taskDict;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(taskCopy, "taskIdentifier")];
  v10 = [(NSMutableDictionary *)taskDict objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = objc_alloc_init(NPTMetricResult);
    [(NPTMetricResult *)v11 populateWithMetrics:metricsCopy];
    response = [taskCopy response];
    [(NPTMetricResult *)v11 populateWithURLResponse:response];

    -[NPTMetricResult setFileSize:](v11, "setFileSize:", [taskCopy countOfBytesReceived]);
    v13 = [(NPTMetricResult *)v11 fileSize]* 8.0;
    [(NPTMetricResult *)v11 responseTime];
    [(NPTMetricResult *)v11 setSpeed:v13 / v14 / 1000000.0];
    v15 = self->taskDict;
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(taskCopy, "taskIdentifier")];
    v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v16];
    [v17 setTaskMetrics:metricsCopy];

    v18 = self->taskDict;
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(taskCopy, "taskIdentifier")];
    v20 = [(NSMutableDictionary *)v18 objectForKeyedSubscript:v19];
    [v20 setResults:v11];
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v41 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11 = [errorCopy copy];
  if (v11 && ![(NPTDownload *)self isTimerCancelledError:v11])
  {
    goto LABEL_6;
  }

  response = [taskCopy response];
  v13 = response;
  if (response && (v14 = [response statusCode], v14 > 399))
  {
    v15 = v14;
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Download task: %@ failed to download payload due to: %ld", taskCopy, v14];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setValue:v16 forKey:*MEMORY[0x277CCA450]];
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPTKit" code:v15 userInfo:dictionary];

    v11 = v18;
    if (v18)
    {
LABEL_6:
      v19 = +[NPTLogger network];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [NPTDownload URLSession:taskCopy task:v11 didCompleteWithError:v19];
      }

      downloadError = self->downloadError;
      ++self->processedStreamEndCount;
      if (!downloadError)
      {
        objc_storeStrong(&self->downloadError, v11);
        if (!self->endTimeAggregate && self->timedDownloadLength)
        {
          [(NPTDownload *)self cancelDispatchTimerAndSession];
        }

        if (!self->timedDownloadLength)
        {
          downloadSession = self->downloadSession;
          if (downloadSession)
          {
            [(NSURLSession *)downloadSession invalidateAndCancel];
          }
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
    v22 = +[NPTLogger network];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = taskCopy;
      v39 = 2048;
      countOfBytesReceived = [taskCopy countOfBytesReceived];
      _os_log_impl(&dword_233421000, v22, OS_LOG_TYPE_DEFAULT, "Download task: %@ downloaded: %lld bytes", buf, 0x16u);
    }

    if (!self->endTimeAggregate && [(NPTDownload *)self inTimedMode])
    {
      [(NPTDownload *)self kickOffNewDownload];

      v11 = 0;
      goto LABEL_38;
    }
  }

  v11 = 0;
  ++self->processedStreamEndCount;
LABEL_22:
  if ([(NPTDownload *)self isLastTask])
  {
    v23 = self->downloadError;
    if (v23)
    {
      if ([(NSError *)v23 code]== -999)
      {
        v24 = 4;
      }

      else
      {
        v24 = 3;
      }
    }

    else
    {
      if (!self->endTimeAggregate && self->timedDownloadLength)
      {
        [(NPTDownload *)self cancelDispatchTimer];
      }

      [(NSURLSession *)self->downloadSession finishTasksAndInvalidate];
      v24 = 2;
    }

    [(NPTDownload *)self completeActivityWithReason:v24];
    aggregateResults = [(NPTDownload *)self aggregateResults];
    [(NPTDownload *)self setResults:aggregateResults];

    delegate = [(NPTDownload *)self delegate];
    LOBYTE(aggregateResults) = delegate == 0;

    if ((aggregateResults & 1) == 0)
    {
      v27 = self->downloadError == 0;
      delegate2 = [(NPTDownload *)self delegate];
      v29 = delegate2;
      if (v27)
      {
        results = [(NPTDownload *)self results];
        [v29 download:self didFinishWithResults:results];
      }

      else
      {
        [delegate2 download:self didFinishWithError:self->downloadError];
      }
    }

    completion = [(NPTDownload *)self completion];
    v32 = completion == 0;

    if (!v32)
    {
      objc_initWeak(buf, self);
      completion2 = [(NPTDownload *)self completion];
      WeakRetained = objc_loadWeakRetained(buf);
      results2 = [WeakRetained results];
      (completion2)[2](completion2, results2, self->downloadError);

      objc_destroyWeak(buf);
    }
  }

LABEL_38:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  results = [(NPTDownload *)self results];
  [coderCopy encodeObject:results forKey:@"downloadResult"];
}

- (NPTDownload)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NPTDownload;
  coderCopy = coder;
  v4 = [(NPTDownload *)&v7 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"downloadResult", v7.receiver, v7.super_class}];

  [(NPTDownload *)v4 setResults:v5];
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NPTDownload allocWithZone:?]];
  results = [(NPTDownload *)self results];
  [(NPTDownload *)v4 setResults:results];

  return v4;
}

- (void)progress:(id)progress
{
  v36 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v5 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  [v5 timeIntervalSinceDate:self->initialTime];
  v7 = v6;
  downlinkCapacity = [progressCopy downlinkCapacity];
  value = [downlinkCapacity value];
  [value doubleValue];
  v11 = v10 / 1000000.0;

  v12 = +[NPTLogger network];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 134217984;
    v31 = v11;
    _os_log_impl(&dword_233421000, v12, OS_LOG_TYPE_DEFAULT, "Download progress speed: %f mbps", &v30, 0xCu);
  }

  v13 = [NPTSpeedMetric alloc];
  downlinkBytesTransferred = [progressCopy downlinkBytesTransferred];
  intValue = [downlinkBytesTransferred intValue];
  maxDownlinkData = [(NetworkQualityConfiguration *)self->nqConfig maxDownlinkData];
  downlinkResponsiveness = [progressCopy downlinkResponsiveness];
  value2 = [downlinkResponsiveness value];
  v19 = -[NPTSpeedMetric initWithPointInTime:timeSinceStart:bytesTransferred:totalBytesExpected:speed:responsiveness:](v13, "initWithPointInTime:timeSinceStart:bytesTransferred:totalBytesExpected:speed:responsiveness:", v5, intValue, maxDownlinkData, [value2 intValue], v7, v11);

  delegate = [(NPTDownload *)self delegate];

  if (delegate)
  {
    delegate2 = [(NPTDownload *)self delegate];
    [delegate2 download:self didReceiveSpeedMetric:v19];
  }

  [(NPTSpeedMetric *)v19 speed];
  if (v22 > self->maxSpeedObserved)
  {
    [(NPTSpeedMetric *)v19 speed];
    self->maxSpeedObserved = v23;
  }

  if (self->stableSpeedToLog == 0.0)
  {
    [(NPTDownload *)self checkAndReturnSpeedStablized:v19];
    if (v24 > 0.0)
    {
      v25 = v24;
      self->stableSpeedToLog = v24;
      v26 = +[NPTLogger network];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        bytesTransferred = [(NPTSpeedMetric *)v19 bytesTransferred];
        [(NPTSpeedMetric *)v19 timeSinceStart];
        v30 = 134218496;
        v31 = v25;
        v32 = 2048;
        v33 = bytesTransferred;
        v34 = 2048;
        v35 = v28;
        _os_log_impl(&dword_233421000, v26, OS_LOG_TYPE_DEFAULT, "Download task has stabilized at %f Mbps after downloading %lld bytes over %f seconds", &v30, 0x20u);
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)inTimedMode
{
  timedDownloadLength = self->timedDownloadLength;
  if (timedDownloadLength)
  {
    LOBYTE(timedDownloadLength) = !self->stopAtFileSizeEnabled;
  }

  return timedDownloadLength & 1;
}

- (id)checkInterfaceSpecified
{
  v11[1] = *MEMORY[0x277D85DE8];
  interfaceName = [(NPTPerformanceTestConfiguration *)self->testConfig interfaceName];
  if (interfaceName)
  {

LABEL_4:
    v4 = 0;
    goto LABEL_5;
  }

  if ([(NPTPerformanceTestConfiguration *)self->testConfig interfaceType]== 3)
  {
    goto LABEL_4;
  }

  v7 = [NPTPerformanceTestConfiguration interfaceServiceName:[(NPTPerformanceTestConfiguration *)self->testConfig interfaceType]];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to find the interface: %@", v7];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifiqa.NPTKit" code:0 userInfo:v9];

LABEL_5:
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)startTasks
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->taskDict;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->taskDict objectForKey:*(*(&v11 + 1) + 8 * v7), v11];
        task = [v8 task];
        [task resume];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)realTimeSpeedMetric:(unint64_t)metric
{
  taskDict = self->taskDict;
  metric = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", metric];
  v6 = [(NSMutableDictionary *)taskDict objectForKeyedSubscript:metric];
  task = [v6 task];

  v8 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  [v8 timeIntervalSinceDate:self->initialTime];
  v10 = -[NPTSpeedMetric initWithPointInTime:timeSinceStart:bytesTransferred:totalBytesExpected:]([NPTSpeedMetric alloc], "initWithPointInTime:timeSinceStart:bytesTransferred:totalBytesExpected:", v8, [task countOfBytesReceived], objc_msgSend(task, "countOfBytesExpectedToReceive"), v9);

  return v10;
}

- (id)realTimeSpeedMetricOverall
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->taskDict;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [(NSMutableDictionary *)self->taskDict objectForKey:*(*(&v18 + 1) + 8 * i), v18];
        task = [v10 task];
        v7 += [task countOfBytesReceived];

        task2 = [v10 task];
        v6 += [task2 countOfBytesExpectedToReceive];
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  [v13 timeIntervalSinceDate:self->initialTime];
  v15 = [[NPTSpeedMetric alloc] initWithPointInTime:v13 timeSinceStart:v7 bytesTransferred:v6 totalBytesExpected:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)overAllResultByTask:(unint64_t)task
{
  taskDict = self->taskDict;
  task = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", task];
  v5 = [(NSMutableDictionary *)taskDict objectForKeyedSubscript:task];

  results = [v5 results];

  return results;
}

- (double)minNonZeroValue:(double)value comparisonValue:(double)comparisonValue
{
  if (value != 0.0)
  {
    if (comparisonValue <= 0.0)
    {
      return value;
    }

    else if (value < comparisonValue)
    {
      return value;
    }
  }

  return comparisonValue;
}

- (void)completeActivityWithReason:(int)reason
{
  if (self->downloadActivity && nw_activity_is_activated())
  {
    v4 = +[NPTLogger network];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_233421000, v4, OS_LOG_TYPE_DEFAULT, "Completing downloadActivity", v7, 2u);
    }

    downloadActivity = self->downloadActivity;
    nw_activity_complete_with_reason();
    v6 = self->downloadActivity;
    self->downloadActivity = 0;
  }
}

- (id)aggregateResults
{
  v134 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(NPTMetricResult);
  selfCopy = self;
  if ([(NSMutableDictionary *)self->taskDict count])
  {
    allKeys = [(NSMutableDictionary *)self->taskDict allKeys];
    v5 = [allKeys objectAtIndex:0];

    v6 = [(NSMutableDictionary *)selfCopy->taskDict objectForKeyedSubscript:v5];
    taskMetrics = [v6 taskMetrics];
    transactionMetrics = [taskMetrics transactionMetrics];
    firstObject = [transactionMetrics firstObject];
    responseStartDate = [firstObject responseStartDate];

    v11 = [(NSMutableDictionary *)selfCopy->taskDict objectForKeyedSubscript:v5];
    taskMetrics2 = [v11 taskMetrics];
    transactionMetrics2 = [taskMetrics2 transactionMetrics];
    firstObject2 = [transactionMetrics2 firstObject];
    responseEndDate = [firstObject2 responseEndDate];

    endTimeAggregate = selfCopy->endTimeAggregate;
    if (endTimeAggregate)
    {
      v17 = endTimeAggregate;

      v18 = +[NPTLogger network];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_233421000, v18, OS_LOG_TYPE_DEFAULT, "Download using synthesized end time", buf, 2u);
      }

      v115 = v17;
    }

    else
    {
      v115 = responseEndDate;
    }

    v109 = v5;
    v20 = [(NSMutableDictionary *)selfCopy->taskDict objectForKeyedSubscript:v5];
    results = [v20 results];
    v22 = [results copy];

    [v22 setSpeed:0.0];
    [v22 setFileSize:0];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:selfCopy->maxConcurrentStreams];
    [v22 setConcurrentStreams:v23];

    [v22 setError:selfCopy->downloadError];
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = selfCopy->taskDict;
    v24 = responseStartDate;
    v114 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v119 objects:v133 count:16];
    if (v114)
    {
      v113 = *v120;
      v112 = v22;
      do
      {
        v25 = 0;
        do
        {
          if (*v120 != v113)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v119 + 1) + 8 * v25);
          v27 = [(NSMutableDictionary *)selfCopy->taskDict objectForKey:v26];
          v28 = [(NSMutableDictionary *)selfCopy->taskDict objectForKeyedSubscript:v26];
          taskMetrics3 = [v28 taskMetrics];
          transactionMetrics3 = [taskMetrics3 transactionMetrics];
          firstObject3 = [transactionMetrics3 firstObject];
          responseStartDate2 = [firstObject3 responseStartDate];

          v33 = [(NSMutableDictionary *)selfCopy->taskDict objectForKeyedSubscript:v26];
          taskMetrics4 = [v33 taskMetrics];
          transactionMetrics4 = [taskMetrics4 transactionMetrics];
          firstObject4 = [transactionMetrics4 firstObject];
          responseEndDate2 = [firstObject4 responseEndDate];

          v37 = responseStartDate2;
          if (responseStartDate2 && (!v24 || [(NSDate *)v24 compare:responseStartDate2]== NSOrderedDescending))
          {
            v38 = responseStartDate2;

            v24 = v38;
          }

          v39 = responseEndDate2;
          v22 = v112;
          v116 = v24;
          if (responseEndDate2 && (!v115 || [(NSDate *)v115 compare:responseEndDate2]== NSOrderedAscending))
          {
            v40 = responseEndDate2;

            v115 = v40;
          }

          v41 = +[NPTLogger network];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            task = [v27 task];
            [v27 results];
            v43 = v111 = v37;
            [v43 domainLookupTime];
            v45 = v44;
            results2 = [v27 results];
            [results2 connectionTime];
            v48 = v47;
            results3 = [v27 results];
            [results3 requestTime];
            v51 = v50;
            results4 = [v27 results];
            [results4 responseTime];
            *buf = 138413314;
            v124 = task;
            v125 = 2048;
            v126 = v45;
            v127 = 2048;
            v128 = v48;
            v129 = 2048;
            v130 = v51;
            v131 = 2048;
            v132 = v53;
            _os_log_impl(&dword_233421000, v41, OS_LOG_TYPE_DEFAULT, "Download Task: %@ DomainLookupTime: %f, connectionTime: %f, requestTime: %f, responseTime: %f", buf, 0x34u);

            v39 = responseEndDate2;
            v37 = v111;
          }

          results5 = [v27 results];
          [v112 setFileSize:{objc_msgSend(v112, "fileSize") + objc_msgSend(results5, "fileSize")}];

          [v112 domainLookupTime];
          v56 = v55;
          results6 = [v27 results];
          [results6 domainLookupTime];
          [(NPTDownload *)selfCopy minNonZeroValue:v56 comparisonValue:v58];
          [v112 setDomainLookupTime:?];

          [v112 connectionTime];
          v60 = v59;
          results7 = [v27 results];
          [results7 connectionTime];
          [(NPTDownload *)selfCopy minNonZeroValue:v60 comparisonValue:v62];
          [v112 setConnectionTime:?];

          [v112 secureConnectionTime];
          v64 = v63;
          results8 = [v27 results];
          [results8 secureConnectionTime];
          [(NPTDownload *)selfCopy minNonZeroValue:v64 comparisonValue:v66];
          [v112 setSecureConnectionTime:?];

          [v112 requestTime];
          v68 = v67;
          results9 = [v27 results];
          [results9 requestTime];
          [(NPTDownload *)selfCopy minNonZeroValue:v68 comparisonValue:v70];
          [v112 setRequestTime:?];

          [v112 requestToResponseTime];
          v72 = v71;
          results10 = [v27 results];
          [results10 requestToResponseTime];
          [(NPTDownload *)selfCopy minNonZeroValue:v72 comparisonValue:v74];
          [v112 setRequestToResponseTime:?];

          results11 = [v27 results];
          cdnpop = [results11 cdnpop];
          v77 = [cdnpop length];

          if (v77)
          {
            results12 = [v27 results];
            cdnpop2 = [results12 cdnpop];
            [v112 setCdnpop:cdnpop2];

            v80 = +[NPTLogger network];
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
            {
              task2 = [v27 task];
              results13 = [v27 results];
              [results13 cdnpop];
              v98 = v97 = v37;
              *buf = 138412546;
              v124 = task2;
              v125 = 2112;
              v126 = v98;
              _os_log_debug_impl(&dword_233421000, v80, OS_LOG_TYPE_DEBUG, "Task: %@ CDN point of presence: %@", buf, 0x16u);

              v37 = v97;
            }
          }

          results14 = [v27 results];
          server = [results14 server];
          v83 = [server length];

          if (v83)
          {
            results15 = [v27 results];
            server2 = [results15 server];
            [v112 setServer:server2];
          }

          results16 = [v27 results];
          appleClientASNCompany = [results16 appleClientASNCompany];
          v88 = [appleClientASNCompany length];

          if (v88)
          {
            results17 = [v27 results];
            appleClientASNCompany2 = [results17 appleClientASNCompany];
            [v112 setAppleClientASNCompany:appleClientASNCompany2];
          }

          results18 = [v27 results];
          appleClientASN = [results18 appleClientASN];

          if (appleClientASN)
          {
            results19 = [v27 results];
            appleClientASN2 = [results19 appleClientASN];
            [v112 setAppleClientASN:appleClientASN2];
          }

          ++v25;
          v24 = v116;
        }

        while (v114 != v25);
        v114 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v119 objects:v133 count:16];
      }

      while (v114);
    }

    if (!v24)
    {
      v24 = selfCopy->initialTime;
      v99 = +[NPTLogger network];
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_233421000, v99, OS_LOG_TYPE_DEFAULT, "Download using synthesized start time", buf, 2u);
      }
    }

    [(NSDate *)v115 timeIntervalSinceDate:v24];
    if (v100 > 0.0)
    {
      [v22 setResponseTime:?];
      v101 = [v22 fileSize] * 8.0;
      [(NSDate *)v115 timeIntervalSinceDate:v24];
      [v22 setSpeed:v101 / v102 / 1000000.0];
    }

    v103 = +[NPTLogger network];
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      [v22 speed];
      *buf = 134217984;
      v124 = v104;
      _os_log_impl(&dword_233421000, v103, OS_LOG_TYPE_DEFAULT, "Download performance test has finished at %f Mbps", buf, 0xCu);
    }

    [v22 speed];
    if (v105 > selfCopy->maxSpeedObserved)
    {
      [v22 speed];
      selfCopy->maxSpeedObserved = v106;
    }

    [v22 setMaxSpeedObserved:?];
    if (selfCopy->stableSpeedToLog > 0.0)
    {
      [v22 setStableSpeed:?];
    }

    v19 = v22;
  }

  else
  {
    v19 = v3;
  }

  v107 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)finishedAllTasks
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->taskDict;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->taskDict objectForKey:*(*(&v13 + 1) + 8 * i), v13];
        taskMetrics = [v8 taskMetrics];

        if (!taskMetrics)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)processNQResult:(id)result
{
  v62 = *MEMORY[0x277D85DE8];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  resultCopy = result;
  obj = [resultCopy urlSessionMetrics];
  v4 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v58;
    v7 = 0x2789D3000uLL;
    v52 = *v58;
    do
    {
      v8 = 0;
      v54 = v5;
      do
      {
        if (*v58 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v57 + 1) + 8 * v8);
        if ([v9 hasPrefix:@"tp_"])
        {
          v56 = v8;
          urlSessionMetrics = [resultCopy urlSessionMetrics];
          v11 = [urlSessionMetrics objectForKeyedSubscript:v9];

          if ([v11 count])
          {
            v12 = 0;
            do
            {
              v13 = [v11 objectAtIndexedSubscript:v12];
              v14 = objc_alloc_init(*(v7 + 2312));
              [v14 populateWithMetrics:v13];
              transactionMetrics = [v13 transactionMetrics];
              firstObject = [transactionMetrics firstObject];
              [firstObject response];
              v18 = v17 = v7;
              [v14 populateWithURLResponse:v18];

              v19 = objc_alloc_init(NPTTaskMetrics);
              v20 = [v11 objectAtIndexedSubscript:v12];
              [(NPTTaskMetrics *)v19 setTaskMetrics:v20];

              [(NPTTaskMetrics *)v19 setResults:v14];
              taskDict = self->taskDict;
              v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", v12];
              [(NSMutableDictionary *)taskDict setObject:v19 forKeyedSubscript:v22];

              v7 = v17;
              ++v12;
            }

            while ([v11 count] > v12);
          }

          v6 = v52;
          v5 = v54;
          v8 = v56;
        }

        ++v8;
      }

      while (v8 != v5);
      v5 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v5);
  }

  aggregateResults = [(NPTDownload *)self aggregateResults];
  [aggregateResults setMaxSpeedObserved:self->maxSpeedObserved];
  downlinkBytesTransferred = [resultCopy downlinkBytesTransferred];
  [aggregateResults setFileSize:{objc_msgSend(downlinkBytesTransferred, "unsignedIntValue")}];

  downlinkCapacity = [resultCopy downlinkCapacity];
  value = [downlinkCapacity value];
  [value doubleValue];
  [aggregateResults setSpeed:v27 / 1000000.0];

  downlinkCapacity2 = [resultCopy downlinkCapacity];
  rating = [downlinkCapacity2 rating];
  if (rating)
  {
    [aggregateResults setSpeedRating:rating];
  }

  else
  {
    v30 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0];
    [aggregateResults setSpeedRating:v30];
  }

  v31 = objc_alloc(MEMORY[0x277CCABB0]);
  downlinkCapacity3 = [resultCopy downlinkCapacity];
  v33 = [v31 initWithInteger:{objc_msgSend(downlinkCapacity3, "confidence")}];
  [aggregateResults setSpeedConfidence:v33];

  downlinkResponsiveness = [resultCopy downlinkResponsiveness];
  value2 = [downlinkResponsiveness value];
  if (value2)
  {
    [aggregateResults setResponsiveness:value2];
  }

  else
  {
    v36 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0];
    [aggregateResults setResponsiveness:v36];
  }

  downlinkResponsiveness2 = [resultCopy downlinkResponsiveness];
  rating2 = [downlinkResponsiveness2 rating];
  if (rating2)
  {
    [aggregateResults setResponsivenessRating:rating2];
  }

  else
  {
    v39 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0];
    [aggregateResults setResponsivenessRating:v39];
  }

  v40 = objc_alloc(MEMORY[0x277CCABB0]);
  downlinkResponsiveness3 = [resultCopy downlinkResponsiveness];
  v42 = [v40 initWithInteger:{objc_msgSend(downlinkResponsiveness3, "confidence")}];
  [aggregateResults setResponsivenessConfidence:v42];

  downlinkFlows = [resultCopy downlinkFlows];
  if (downlinkFlows)
  {
    [aggregateResults setConcurrentStreams:downlinkFlows];
  }

  else
  {
    v44 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0];
    [aggregateResults setConcurrentStreams:v44];
  }

  latency = [resultCopy latency];
  value3 = [latency value];
  [aggregateResults setLatency:value3];

  testEndpoint = [resultCopy testEndpoint];
  [aggregateResults setNqTestEndPoint:testEndpoint];

  v48 = [resultCopy asn];
  [aggregateResults setAppleClientASN:v48];

  asnName = [resultCopy asnName];
  [aggregateResults setAppleClientASNCompany:asnName];

  v50 = *MEMORY[0x277D85DE8];

  return aggregateResults;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)URLSession:(uint64_t)a1 task:(void *)a2 didCompleteWithError:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v7 = 138412546;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_233421000, a3, OS_LOG_TYPE_ERROR, "Download task: %@ Errored with: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end