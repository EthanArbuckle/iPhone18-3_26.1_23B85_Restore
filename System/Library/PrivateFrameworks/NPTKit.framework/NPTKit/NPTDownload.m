@interface NPTDownload
- (BOOL)finishedAllTasks;
- (BOOL)inTimedMode;
- (NPTDownload)initWithCoder:(id)a3;
- (NPTDownload)initWithNetworkActivityParent:(id)a3 testConfiguration:(id)a4;
- (double)checkAndReturnSpeedStablized:(id)a3;
- (double)minNonZeroValue:(double)a3 comparisonValue:(double)a4;
- (id)aggregateResults;
- (id)checkInterfaceSpecified;
- (id)copyWithZone:(_NSZone *)a3;
- (id)delegate;
- (id)overAllResultByTask:(unint64_t)a3;
- (id)processNQResult:(id)a3;
- (id)realTimeSpeedMetric:(unint64_t)a3;
- (id)realTimeSpeedMetricOverall;
- (id)setupNewDownloadTask;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)cancel;
- (void)cancelDispatchTimer;
- (void)cancelDispatchTimerAndSession;
- (void)completeActivityWithReason:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)kickOffNewDownload;
- (void)progress:(id)a3;
- (void)setupTimer;
- (void)startDownloadWithCompletion:(id)a3;
- (void)startLegacyDownloadWithCompletion:(id)a3;
- (void)startNQDownloadWithCompletion:(id)a3;
- (void)startTasks;
@end

@implementation NPTDownload

- (NPTDownload)initWithNetworkActivityParent:(id)a3 testConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = NPTDownload;
  v9 = [(NPTDownload *)&v28 init];
  if (v9)
  {
    v10 = objc_alloc_init(NPTMetricResult);
    [(NPTDownload *)v9 setResults:v10];

    v11 = [MEMORY[0x277CBEB38] dictionary];
    taskDict = v9->taskDict;
    v9->taskDict = v11;

    objc_storeStrong(&v9->activityParent, a3);
    v13 = nw_activity_create();
    downloadActivity = v9->downloadActivity;
    v9->downloadActivity = v13;

    activityParent = v9->activityParent;
    v15 = v9->downloadActivity;
    nw_activity_set_parent_activity();
    if ([v8 stopAtFileSize])
    {
      v17 = 1;
    }

    else
    {
      v17 = [v8 concurrentStreams];
    }

    v9->processedStreamEndCount = 0;
    v9->maxConcurrentStreams = v17;
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    buffer = v9->buffer;
    v9->buffer = v18;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v9->recentBufferTime = v20;
    endTimeAggregate = v9->endTimeAggregate;
    v9->endTimeAggregate = 0;

    v9->smartDownload = [v8 endWhenStable];
    v9->timedDownloadLength = [v8 testDuration];
    v9->stableSpeedToLog = 0.0;
    downloadError = v9->downloadError;
    v9->downloadError = 0;

    v9->stopAtFileSizeEnabled = [v8 stopAtFileSize];
    v23 = [v8 clientName];
    callingClient = v9->callingClient;
    v9->callingClient = v23;

    v9->maxSpeedObserved = 0.0;
    v9->legacy = [v8 legacyMode];
    nqTest = v9->nqTest;
    v9->nqTest = 0;

    nqConfig = v9->nqConfig;
    v9->nqConfig = 0;

    objc_storeStrong(&v9->testConfig, a4);
  }

  return v9;
}

- (void)startNQDownloadWithCompletion:(id)a3
{
  v4 = a3;
  [(NPTDownload *)self setCompletion:v4];
  v5 = [(NPTPerformanceTestConfiguration *)self->testConfig NQDownloadConfiguration];
  nqConfig = self->nqConfig;
  self->nqConfig = v5;

  v7 = [(NPTPerformanceTestConfiguration *)self->testConfig bonjourHost];

  if (v7)
  {
    v8 = [(NPTPerformanceTestConfiguration *)self->testConfig bonjourHost];
    [(NetworkQualityConfiguration *)self->nqConfig setBonjourHost:v8];

    [(NetworkQualityConfiguration *)self->nqConfig setValidateCertificate:0];
  }

  downloadActivity = self->downloadActivity;
  nw_activity_activate();
  v10 = [(NPTDownload *)self checkInterfaceSpecified];
  v11 = [(NPTDownload *)self results];
  [v11 setError:v10];

  if (v10)
  {
    v12 = [(NPTDownload *)self delegate];

    if (v12)
    {
      v13 = [(NPTDownload *)self delegate];
      [v13 download:self didFinishWithError:v10];
    }

    v14 = [(NPTDownload *)self completion];

    if (v14)
    {
      v15 = [(NPTDownload *)self completion];
      (v15)[2](v15, 0, v10);
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
      v22 = [(NPTDownload *)self delegate];

      if (v22)
      {
        v23 = [(NPTDownload *)self delegate];
        [v23 downloadWillStart];
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

- (void)startDownloadWithCompletion:(id)a3
{
  if (self->legacy)
  {
    [(NPTDownload *)self startLegacyDownloadWithCompletion:a3];
  }

  else
  {
    [(NPTDownload *)self startNQDownloadWithCompletion:a3];
  }
}

- (void)startLegacyDownloadWithCompletion:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  [(NPTDownload *)self setCompletion:a3];
  downloadActivity = self->downloadActivity;
  nw_activity_activate();
  v5 = [(NPTDownload *)self checkInterfaceSpecified];
  v6 = [(NPTDownload *)self results];
  [v6 setError:v5];

  if (v5)
  {
    v7 = [(NPTDownload *)self delegate];

    if (v7)
    {
      v8 = [(NPTDownload *)self delegate];
      [v8 download:self didFinishWithError:v5];
    }

    v9 = [(NPTDownload *)self completion];

    if (v9)
    {
      v10 = [(NPTDownload *)self completion];
      (v10)[2](v10, 0, v5);
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

    v12 = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
    v13 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [v13 setQualityOfService:33];
    [v13 setMaxConcurrentOperationCount:1];
    [v12 setAllowsCellularAccess:v11];
    [v12 setWaitsForConnectivity:0];
    [v12 setTimeoutIntervalForRequest:3.0];
    if (!self->timedDownloadLength)
    {
      [v12 setTimeoutIntervalForResource:(90 * self->maxConcurrentStreams)];
    }

    [v12 setHTTPMaximumConnectionsPerHost:self->maxConcurrentStreams + 1];
    v14 = [MEMORY[0x277CBABB8] sessionWithConfiguration:v12 delegate:self delegateQueue:v13];
    downloadSession = self->downloadSession;
    self->downloadSession = v14;

    v16 = MEMORY[0x277CBAB50];
    v17 = [(NPTPerformanceTestConfiguration *)self->testConfig downloadURL];
    v18 = [v16 requestWithURL:v17];
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

    v23 = [(NPTPerformanceTestConfiguration *)self->testConfig interfaceName];

    if (v23)
    {
      v24 = +[NPTLogger network];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(NPTPerformanceTestConfiguration *)self->testConfig interfaceName];
        *buf = 138412290;
        v42 = v25;
        _os_log_impl(&dword_233421000, v24, OS_LOG_TYPE_DEFAULT, "Force the download over the following interface: %@", buf, 0xCu);
      }

      v26 = self->request;
      v27 = [(NPTPerformanceTestConfiguration *)self->testConfig interfaceName];
      [(NSMutableURLRequest *)v26 setBoundInterfaceIdentifier:v27];
    }

    v28 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.wifiqa.NPTKit"];
    v29 = [v28 infoDictionary];
    v30 = [v29 objectForKey:@"CFBundleShortVersionString"];

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
      v34 = [(NPTDownload *)self delegate];

      if (v34)
      {
        v35 = [(NPTDownload *)self delegate];
        [v35 downloadWillStart];
      }

      if (self->maxConcurrentStreams)
      {
        v36 = 0;
        do
        {
          v37 = [(NPTDownload *)self setupNewDownloadTask];
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
  v2 = [(NPTDownload *)self setupNewDownloadTask];
  [v2 resume];
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

- (double)checkAndReturnSpeedStablized:(id)a3
{
  v4 = a3;
  v5 = self->recentBufferTime + 1.0;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v6 = 0.0;
  if (v5 < v7)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->recentBufferTime = v8;
    buffer = self->buffer;
    v10 = MEMORY[0x277CCABB0];
    [v4 speed];
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
        [v4 speed];
        v6 = v21;
      }
    }
  }

  return v6;
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = [(NPTDownload *)self realTimeSpeedMetricOverall:a3];
  v7 = [(NPTDownload *)self delegate];

  if (v7)
  {
    v8 = [(NPTDownload *)self delegate];
    [v8 download:self didReceiveSpeedMetric:v6];
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
        v14 = [v6 bytesTransferred];
        [v6 timeSinceStart];
        v17 = 134218496;
        v18 = v12;
        v19 = 2048;
        v20 = v14;
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

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v21 = a4;
  v7 = a5;
  taskDict = self->taskDict;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v21, "taskIdentifier")];
  v10 = [(NSMutableDictionary *)taskDict objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = objc_alloc_init(NPTMetricResult);
    [(NPTMetricResult *)v11 populateWithMetrics:v7];
    v12 = [v21 response];
    [(NPTMetricResult *)v11 populateWithURLResponse:v12];

    -[NPTMetricResult setFileSize:](v11, "setFileSize:", [v21 countOfBytesReceived]);
    v13 = [(NPTMetricResult *)v11 fileSize]* 8.0;
    [(NPTMetricResult *)v11 responseTime];
    [(NPTMetricResult *)v11 setSpeed:v13 / v14 / 1000000.0];
    v15 = self->taskDict;
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v21, "taskIdentifier")];
    v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v16];
    [v17 setTaskMetrics:v7];

    v18 = self->taskDict;
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v21, "taskIdentifier")];
    v20 = [(NSMutableDictionary *)v18 objectForKeyedSubscript:v19];
    [v20 setResults:v11];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 copy];
  if (v11 && ![(NPTDownload *)self isTimerCancelledError:v11])
  {
    goto LABEL_6;
  }

  v12 = [v9 response];
  v13 = v12;
  if (v12 && (v14 = [v12 statusCode], v14 > 399))
  {
    v15 = v14;
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Download task: %@ failed to download payload due to: %ld", v9, v14];
    v17 = [MEMORY[0x277CBEB38] dictionary];
    [v17 setValue:v16 forKey:*MEMORY[0x277CCA450]];
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPTKit" code:v15 userInfo:v17];

    v11 = v18;
    if (v18)
    {
LABEL_6:
      v19 = +[NPTLogger network];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [NPTDownload URLSession:v9 task:v11 didCompleteWithError:v19];
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
      v38 = v9;
      v39 = 2048;
      v40 = [v9 countOfBytesReceived];
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
    v25 = [(NPTDownload *)self aggregateResults];
    [(NPTDownload *)self setResults:v25];

    v26 = [(NPTDownload *)self delegate];
    LOBYTE(v25) = v26 == 0;

    if ((v25 & 1) == 0)
    {
      v27 = self->downloadError == 0;
      v28 = [(NPTDownload *)self delegate];
      v29 = v28;
      if (v27)
      {
        v30 = [(NPTDownload *)self results];
        [v29 download:self didFinishWithResults:v30];
      }

      else
      {
        [v28 download:self didFinishWithError:self->downloadError];
      }
    }

    v31 = [(NPTDownload *)self completion];
    v32 = v31 == 0;

    if (!v32)
    {
      objc_initWeak(buf, self);
      v33 = [(NPTDownload *)self completion];
      WeakRetained = objc_loadWeakRetained(buf);
      v35 = [WeakRetained results];
      (v33)[2](v33, v35, self->downloadError);

      objc_destroyWeak(buf);
    }
  }

LABEL_38:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NPTDownload *)self results];
  [v4 encodeObject:v5 forKey:@"downloadResult"];
}

- (NPTDownload)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = NPTDownload;
  v3 = a3;
  v4 = [(NPTDownload *)&v7 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"downloadResult", v7.receiver, v7.super_class}];

  [(NPTDownload *)v4 setResults:v5];
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NPTDownload allocWithZone:?]];
  v5 = [(NPTDownload *)self results];
  [(NPTDownload *)v4 setResults:v5];

  return v4;
}

- (void)progress:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  [v5 timeIntervalSinceDate:self->initialTime];
  v7 = v6;
  v8 = [v4 downlinkCapacity];
  v9 = [v8 value];
  [v9 doubleValue];
  v11 = v10 / 1000000.0;

  v12 = +[NPTLogger network];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 134217984;
    v31 = v11;
    _os_log_impl(&dword_233421000, v12, OS_LOG_TYPE_DEFAULT, "Download progress speed: %f mbps", &v30, 0xCu);
  }

  v13 = [NPTSpeedMetric alloc];
  v14 = [v4 downlinkBytesTransferred];
  v15 = [v14 intValue];
  v16 = [(NetworkQualityConfiguration *)self->nqConfig maxDownlinkData];
  v17 = [v4 downlinkResponsiveness];
  v18 = [v17 value];
  v19 = -[NPTSpeedMetric initWithPointInTime:timeSinceStart:bytesTransferred:totalBytesExpected:speed:responsiveness:](v13, "initWithPointInTime:timeSinceStart:bytesTransferred:totalBytesExpected:speed:responsiveness:", v5, v15, v16, [v18 intValue], v7, v11);

  v20 = [(NPTDownload *)self delegate];

  if (v20)
  {
    v21 = [(NPTDownload *)self delegate];
    [v21 download:self didReceiveSpeedMetric:v19];
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
        v27 = [(NPTSpeedMetric *)v19 bytesTransferred];
        [(NPTSpeedMetric *)v19 timeSinceStart];
        v30 = 134218496;
        v31 = v25;
        v32 = 2048;
        v33 = v27;
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
  v3 = [(NPTPerformanceTestConfiguration *)self->testConfig interfaceName];
  if (v3)
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
        v9 = [v8 task];
        [v9 resume];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)realTimeSpeedMetric:(unint64_t)a3
{
  taskDict = self->taskDict;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a3];
  v6 = [(NSMutableDictionary *)taskDict objectForKeyedSubscript:v5];
  v7 = [v6 task];

  v8 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  [v8 timeIntervalSinceDate:self->initialTime];
  v10 = -[NPTSpeedMetric initWithPointInTime:timeSinceStart:bytesTransferred:totalBytesExpected:]([NPTSpeedMetric alloc], "initWithPointInTime:timeSinceStart:bytesTransferred:totalBytesExpected:", v8, [v7 countOfBytesReceived], objc_msgSend(v7, "countOfBytesExpectedToReceive"), v9);

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
        v11 = [v10 task];
        v7 += [v11 countOfBytesReceived];

        v12 = [v10 task];
        v6 += [v12 countOfBytesExpectedToReceive];
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

- (id)overAllResultByTask:(unint64_t)a3
{
  taskDict = self->taskDict;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a3];
  v5 = [(NSMutableDictionary *)taskDict objectForKeyedSubscript:v4];

  v6 = [v5 results];

  return v6;
}

- (double)minNonZeroValue:(double)a3 comparisonValue:(double)a4
{
  if (a3 != 0.0)
  {
    if (a4 <= 0.0)
    {
      return a3;
    }

    else if (a3 < a4)
    {
      return a3;
    }
  }

  return a4;
}

- (void)completeActivityWithReason:(int)a3
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
  v117 = self;
  if ([(NSMutableDictionary *)self->taskDict count])
  {
    v4 = [(NSMutableDictionary *)self->taskDict allKeys];
    v5 = [v4 objectAtIndex:0];

    v6 = [(NSMutableDictionary *)v117->taskDict objectForKeyedSubscript:v5];
    v7 = [v6 taskMetrics];
    v8 = [v7 transactionMetrics];
    v9 = [v8 firstObject];
    v10 = [v9 responseStartDate];

    v11 = [(NSMutableDictionary *)v117->taskDict objectForKeyedSubscript:v5];
    v12 = [v11 taskMetrics];
    v13 = [v12 transactionMetrics];
    v14 = [v13 firstObject];
    v15 = [v14 responseEndDate];

    endTimeAggregate = v117->endTimeAggregate;
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
      v115 = v15;
    }

    v109 = v5;
    v20 = [(NSMutableDictionary *)v117->taskDict objectForKeyedSubscript:v5];
    v21 = [v20 results];
    v22 = [v21 copy];

    [v22 setSpeed:0.0];
    [v22 setFileSize:0];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v117->maxConcurrentStreams];
    [v22 setConcurrentStreams:v23];

    [v22 setError:v117->downloadError];
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = v117->taskDict;
    v24 = v10;
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
          v27 = [(NSMutableDictionary *)v117->taskDict objectForKey:v26];
          v28 = [(NSMutableDictionary *)v117->taskDict objectForKeyedSubscript:v26];
          v29 = [v28 taskMetrics];
          v30 = [v29 transactionMetrics];
          v31 = [v30 firstObject];
          v32 = [v31 responseStartDate];

          v33 = [(NSMutableDictionary *)v117->taskDict objectForKeyedSubscript:v26];
          v34 = [v33 taskMetrics];
          v35 = [v34 transactionMetrics];
          v36 = [v35 firstObject];
          v118 = [v36 responseEndDate];

          v37 = v32;
          if (v32 && (!v24 || [(NSDate *)v24 compare:v32]== NSOrderedDescending))
          {
            v38 = v32;

            v24 = v38;
          }

          v39 = v118;
          v22 = v112;
          v116 = v24;
          if (v118 && (!v115 || [(NSDate *)v115 compare:v118]== NSOrderedAscending))
          {
            v40 = v118;

            v115 = v40;
          }

          v41 = +[NPTLogger network];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = [v27 task];
            [v27 results];
            v43 = v111 = v37;
            [v43 domainLookupTime];
            v45 = v44;
            v46 = [v27 results];
            [v46 connectionTime];
            v48 = v47;
            v49 = [v27 results];
            [v49 requestTime];
            v51 = v50;
            v52 = [v27 results];
            [v52 responseTime];
            *buf = 138413314;
            v124 = v42;
            v125 = 2048;
            v126 = v45;
            v127 = 2048;
            v128 = v48;
            v129 = 2048;
            v130 = v51;
            v131 = 2048;
            v132 = v53;
            _os_log_impl(&dword_233421000, v41, OS_LOG_TYPE_DEFAULT, "Download Task: %@ DomainLookupTime: %f, connectionTime: %f, requestTime: %f, responseTime: %f", buf, 0x34u);

            v39 = v118;
            v37 = v111;
          }

          v54 = [v27 results];
          [v112 setFileSize:{objc_msgSend(v112, "fileSize") + objc_msgSend(v54, "fileSize")}];

          [v112 domainLookupTime];
          v56 = v55;
          v57 = [v27 results];
          [v57 domainLookupTime];
          [(NPTDownload *)v117 minNonZeroValue:v56 comparisonValue:v58];
          [v112 setDomainLookupTime:?];

          [v112 connectionTime];
          v60 = v59;
          v61 = [v27 results];
          [v61 connectionTime];
          [(NPTDownload *)v117 minNonZeroValue:v60 comparisonValue:v62];
          [v112 setConnectionTime:?];

          [v112 secureConnectionTime];
          v64 = v63;
          v65 = [v27 results];
          [v65 secureConnectionTime];
          [(NPTDownload *)v117 minNonZeroValue:v64 comparisonValue:v66];
          [v112 setSecureConnectionTime:?];

          [v112 requestTime];
          v68 = v67;
          v69 = [v27 results];
          [v69 requestTime];
          [(NPTDownload *)v117 minNonZeroValue:v68 comparisonValue:v70];
          [v112 setRequestTime:?];

          [v112 requestToResponseTime];
          v72 = v71;
          v73 = [v27 results];
          [v73 requestToResponseTime];
          [(NPTDownload *)v117 minNonZeroValue:v72 comparisonValue:v74];
          [v112 setRequestToResponseTime:?];

          v75 = [v27 results];
          v76 = [v75 cdnpop];
          v77 = [v76 length];

          if (v77)
          {
            v78 = [v27 results];
            v79 = [v78 cdnpop];
            [v112 setCdnpop:v79];

            v80 = +[NPTLogger network];
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
            {
              v95 = [v27 task];
              v96 = [v27 results];
              [v96 cdnpop];
              v98 = v97 = v37;
              *buf = 138412546;
              v124 = v95;
              v125 = 2112;
              v126 = v98;
              _os_log_debug_impl(&dword_233421000, v80, OS_LOG_TYPE_DEBUG, "Task: %@ CDN point of presence: %@", buf, 0x16u);

              v37 = v97;
            }
          }

          v81 = [v27 results];
          v82 = [v81 server];
          v83 = [v82 length];

          if (v83)
          {
            v84 = [v27 results];
            v85 = [v84 server];
            [v112 setServer:v85];
          }

          v86 = [v27 results];
          v87 = [v86 appleClientASNCompany];
          v88 = [v87 length];

          if (v88)
          {
            v89 = [v27 results];
            v90 = [v89 appleClientASNCompany];
            [v112 setAppleClientASNCompany:v90];
          }

          v91 = [v27 results];
          v92 = [v91 appleClientASN];

          if (v92)
          {
            v93 = [v27 results];
            v94 = [v93 appleClientASN];
            [v112 setAppleClientASN:v94];
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
      v24 = v117->initialTime;
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
    if (v105 > v117->maxSpeedObserved)
    {
      [v22 speed];
      v117->maxSpeedObserved = v106;
    }

    [v22 setMaxSpeedObserved:?];
    if (v117->stableSpeedToLog > 0.0)
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
        v9 = [v8 taskMetrics];

        if (!v9)
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

- (id)processNQResult:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v53 = a3;
  obj = [v53 urlSessionMetrics];
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
          v10 = [v53 urlSessionMetrics];
          v11 = [v10 objectForKeyedSubscript:v9];

          if ([v11 count])
          {
            v12 = 0;
            do
            {
              v13 = [v11 objectAtIndexedSubscript:v12];
              v14 = objc_alloc_init(*(v7 + 2312));
              [v14 populateWithMetrics:v13];
              v15 = [v13 transactionMetrics];
              v16 = [v15 firstObject];
              [v16 response];
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

  v23 = [(NPTDownload *)self aggregateResults];
  [v23 setMaxSpeedObserved:self->maxSpeedObserved];
  v24 = [v53 downlinkBytesTransferred];
  [v23 setFileSize:{objc_msgSend(v24, "unsignedIntValue")}];

  v25 = [v53 downlinkCapacity];
  v26 = [v25 value];
  [v26 doubleValue];
  [v23 setSpeed:v27 / 1000000.0];

  v28 = [v53 downlinkCapacity];
  v29 = [v28 rating];
  if (v29)
  {
    [v23 setSpeedRating:v29];
  }

  else
  {
    v30 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0];
    [v23 setSpeedRating:v30];
  }

  v31 = objc_alloc(MEMORY[0x277CCABB0]);
  v32 = [v53 downlinkCapacity];
  v33 = [v31 initWithInteger:{objc_msgSend(v32, "confidence")}];
  [v23 setSpeedConfidence:v33];

  v34 = [v53 downlinkResponsiveness];
  v35 = [v34 value];
  if (v35)
  {
    [v23 setResponsiveness:v35];
  }

  else
  {
    v36 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0];
    [v23 setResponsiveness:v36];
  }

  v37 = [v53 downlinkResponsiveness];
  v38 = [v37 rating];
  if (v38)
  {
    [v23 setResponsivenessRating:v38];
  }

  else
  {
    v39 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0];
    [v23 setResponsivenessRating:v39];
  }

  v40 = objc_alloc(MEMORY[0x277CCABB0]);
  v41 = [v53 downlinkResponsiveness];
  v42 = [v40 initWithInteger:{objc_msgSend(v41, "confidence")}];
  [v23 setResponsivenessConfidence:v42];

  v43 = [v53 downlinkFlows];
  if (v43)
  {
    [v23 setConcurrentStreams:v43];
  }

  else
  {
    v44 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0];
    [v23 setConcurrentStreams:v44];
  }

  v45 = [v53 latency];
  v46 = [v45 value];
  [v23 setLatency:v46];

  v47 = [v53 testEndpoint];
  [v23 setNqTestEndPoint:v47];

  v48 = [v53 asn];
  [v23 setAppleClientASN:v48];

  v49 = [v53 asnName];
  [v23 setAppleClientASNCompany:v49];

  v50 = *MEMORY[0x277D85DE8];

  return v23;
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