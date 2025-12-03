@interface NPTUpload
- (BOOL)finishedAllTasks;
- (BOOL)inTimedMode;
- (NPTUpload)initWithCoder:(id)coder;
- (NPTUpload)initWithNetworkActivityParent:(id)parent testConfiguration:(id)configuration;
- (double)checkAndReturnSpeedStablized:(id)stablized;
- (double)minNonZeroValue:(double)value comparisonValue:(double)comparisonValue;
- (id)aggregateResults;
- (id)checkInterfaceSpecified;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createHTTPBodyWithBoundary:(id)boundary usingData:(id)data withMimeType:(id)type withFileName:(id)name;
- (id)createRandomDataOfSize:(unint64_t)size;
- (id)createTempFileWithData:(id)data named:(id)named;
- (id)delegate;
- (id)processNQResult:(id)result;
- (id)realTimeSpeedMetricOverall;
- (int)determineSuspensionThreshold;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)cancel;
- (void)cancelDispatchTimer;
- (void)cancelDispatchTimerAndSession;
- (void)cleanUp;
- (void)completeActivityWithReason:(int)reason;
- (void)encodeWithCoder:(id)coder;
- (void)progress:(id)progress;
- (void)removeTempFileNamed:(id)named;
- (void)setupTimer;
- (void)startLegacyUploadWithCompletion:(id)completion;
- (void)startNQUploadWithCompletion:(id)completion;
- (void)startTasks;
- (void)startUploadWithCompletion:(id)completion;
@end

@implementation NPTUpload

- (NPTUpload)initWithNetworkActivityParent:(id)parent testConfiguration:(id)configuration
{
  parentCopy = parent;
  configurationCopy = configuration;
  v27.receiver = self;
  v27.super_class = NPTUpload;
  v9 = [(NPTUpload *)&v27 init];
  if (v9)
  {
    v10 = objc_alloc_init(NPTMetricResult);
    [(NPTUpload *)v9 setResults:v10];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    taskDict = v9->taskDict;
    v9->taskDict = dictionary;

    v13 = nw_activity_create();
    uploadActivity = v9->uploadActivity;
    v9->uploadActivity = v13;

    objc_storeStrong(&v9->activityParent, parent);
    activityParent = v9->activityParent;
    v15 = v9->uploadActivity;
    nw_activity_set_parent_activity();
    if ([configurationCopy stopAtFileSize])
    {
      concurrentStreams = 1;
    }

    else
    {
      concurrentStreams = [configurationCopy concurrentStreams];
    }

    v9->maxConcurrentStreams = concurrentStreams;
    v9->processedStreamEndCount = 0;
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    buffer = v9->buffer;
    v9->buffer = v18;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v9->recentBufferTime = v20;
    v9->timedUploadLength = [configurationCopy testDuration];
    v9->smartUpload = [configurationCopy endWhenStable];
    uploadError = v9->uploadError;
    v9->stableSpeedToLog = 0.0;
    v9->uploadError = 0;

    v9->stopAtFileSizeEnabled = [configurationCopy stopAtFileSize];
    clientName = [configurationCopy clientName];
    callingClient = v9->callingClient;
    v9->callingClient = clientName;

    v9->maxSpeedObserved = 0.0;
    objc_storeStrong(&v9->testConfig, configuration);
    v9->legacy = [configurationCopy legacyMode];
    nqConfig = v9->nqConfig;
    v9->nqConfig = 0;

    nqTest = v9->nqTest;
    v9->nqTest = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  results = [(NPTUpload *)self results];
  [coderCopy encodeObject:results forKey:@"uploadResult"];
}

- (NPTUpload)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NPTUpload;
  coderCopy = coder;
  v4 = [(NPTUpload *)&v7 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"uploadResult", v7.receiver, v7.super_class}];

  [(NPTUpload *)v4 setResults:v5];
  return v4;
}

- (void)startNQUploadWithCompletion:(id)completion
{
  completionCopy = completion;
  [(NPTUpload *)self setCompletion:completionCopy];
  nQUploadConfiguration = [(NPTPerformanceTestConfiguration *)self->testConfig NQUploadConfiguration];
  nqConfig = self->nqConfig;
  self->nqConfig = nQUploadConfiguration;

  bonjourHost = [(NPTPerformanceTestConfiguration *)self->testConfig bonjourHost];

  if (bonjourHost)
  {
    bonjourHost2 = [(NPTPerformanceTestConfiguration *)self->testConfig bonjourHost];
    [(NetworkQualityConfiguration *)self->nqConfig setBonjourHost:bonjourHost2];

    [(NetworkQualityConfiguration *)self->nqConfig setValidateCertificate:0];
  }

  uploadActivity = self->uploadActivity;
  nw_activity_activate();
  checkInterfaceSpecified = [(NPTUpload *)self checkInterfaceSpecified];
  results = [(NPTUpload *)self results];
  [results setError:checkInterfaceSpecified];

  if (checkInterfaceSpecified)
  {
    delegate = [(NPTUpload *)self delegate];

    if (delegate)
    {
      delegate2 = [(NPTUpload *)self delegate];
      [delegate2 upload:self didFinishWithError:checkInterfaceSpecified];
    }

    completion = [(NPTUpload *)self completion];

    if (completion)
    {
      completion2 = [(NPTUpload *)self completion];
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
      delegate3 = [(NPTUpload *)self delegate];

      if (delegate3)
      {
        delegate4 = [(NPTUpload *)self delegate];
        [delegate4 uploadWillStart];
      }
    }

    objc_initWeak(&location, self);
    v24 = self->nqTest;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __41__NPTUpload_startNQUploadWithCompletion___block_invoke;
    v25[3] = &unk_2789D3DD0;
    objc_copyWeak(&v26, &location);
    [(NetworkQualityAssessment *)v24 runWithCompletionHandler:v25];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

void __41__NPTUpload_startNQUploadWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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

  v10 = (WeakRetained + 136);
  if (*(WeakRetained + 17))
  {
    v11 = *(WeakRetained + 17);
  }

  else
  {
    v11 = v6;
  }

  objc_storeStrong(WeakRetained + 17, v11);
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
      [v18 upload:WeakRetained didFinishWithError:v6];
    }

    else
    {
      v18 = [WeakRetained delegate];
      v19 = [WeakRetained results];
      [v18 upload:WeakRetained didFinishWithResults:v19];
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

- (void)startUploadWithCompletion:(id)completion
{
  if (self->legacy)
  {
    [(NPTUpload *)self startLegacyUploadWithCompletion:completion];
  }

  else
  {
    [(NPTUpload *)self startNQUploadWithCompletion:completion];
  }
}

- (void)startLegacyUploadWithCompletion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  [(NPTUpload *)self setCompletion:completion];
  uploadActivity = self->uploadActivity;
  nw_activity_activate();
  checkInterfaceSpecified = [(NPTUpload *)self checkInterfaceSpecified];
  results = [(NPTUpload *)self results];
  [results setError:checkInterfaceSpecified];

  if (checkInterfaceSpecified)
  {
    delegate = [(NPTUpload *)self delegate];

    if (delegate)
    {
      delegate2 = [(NPTUpload *)self delegate];
      [delegate2 upload:self didFinishWithError:checkInterfaceSpecified];
    }

    completion = [(NPTUpload *)self completion];

    if (completion)
    {
      completion2 = [(NPTUpload *)self completion];
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
    [v13 setMaxConcurrentOperationCount:1];
    [v13 setQualityOfService:33];
    [ephemeralSessionConfiguration setAllowsCellularAccess:v11];
    [ephemeralSessionConfiguration setWaitsForConnectivity:0];
    [ephemeralSessionConfiguration setTimeoutIntervalForRequest:3.0];
    if (!self->timedUploadLength)
    {
      [ephemeralSessionConfiguration setTimeoutIntervalForResource:(90 * self->maxConcurrentStreams)];
    }

    [ephemeralSessionConfiguration setHTTPMaximumConnectionsPerHost:self->maxConcurrentStreams + 1];
    v14 = [MEMORY[0x277CBABB8] sessionWithConfiguration:ephemeralSessionConfiguration delegate:self delegateQueue:v13];
    uploadSession = self->uploadSession;
    self->uploadSession = v14;

    v16 = MEMORY[0x277CBAB50];
    uploadURL = [(NPTPerformanceTestConfiguration *)self->testConfig uploadURL];
    v18 = [v16 requestWithURL:uploadURL];
    request = self->request;
    self->request = v18;

    [(NSMutableURLRequest *)self->request setHTTPMethod:@"POST"];
    timedUploadLength = self->timedUploadLength;
    v21 = timedUploadLength * 0.9;
    if (!timedUploadLength)
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
        v53 = interfaceName2;
        _os_log_impl(&dword_233421000, v24, OS_LOG_TYPE_DEFAULT, "Force the upload over the following interface: %@", buf, 0xCu);
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
    uploadSize = [(NPTPerformanceTestConfiguration *)self->testConfig uploadSize];
    if ([(NPTUpload *)self inTimedMode])
    {
      if ([(NPTPerformanceTestConfiguration *)self->testConfig uploadSize]== 1001)
      {
        uploadSize = 50;
      }

      else
      {
        uploadSize = uploadSize;
      }
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v35 = [NPTFileSizeConverter getFileSizeInBytes:uploadSize];
    self->uploadFileSize = v35;
    v36 = v35;
    results2 = [(NPTUpload *)self results];
    [results2 setFileSize:v36];

    v38 = self->request;
    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"multipart/form-data boundary=%@", uUIDString];;
    [(NSMutableURLRequest *)v38 setValue:v39 forHTTPHeaderField:@"Content-Type"];

    if (self->uploadSession)
    {
      delegate3 = [(NPTUpload *)self delegate];

      if (delegate3)
      {
        delegate4 = [(NPTUpload *)self delegate];
        [delegate4 uploadWillStart];
      }

      v42 = +[NPTLogger network];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        maxConcurrentStreams = self->maxConcurrentStreams;
        *buf = 134217984;
        v53 = maxConcurrentStreams;
        _os_log_impl(&dword_233421000, v42, OS_LOG_TYPE_DEFAULT, "Will start upload task to test upload speed with %lu number of streams", buf, 0xCu);
      }

      if (self->maxConcurrentStreams)
      {
        v44 = 0;
        do
        {
          if ([(NPTUpload *)self inTimedMode])
          {
            selfCopy2 = self;
            uploadFileSize = 0x100000;
            v47 = 0x8000;
          }

          else
          {
            uploadFileSize = self->uploadFileSize;
            selfCopy2 = self;
            v47 = 0x200000;
          }

          v48 = [(NPTUpload *)selfCopy2 setupNewUploadTask:uploadFileSize suspensionThresholdEnum:v47];
          ++v44;
        }

        while (v44 < self->maxConcurrentStreams);
      }

      if (self->timedUploadLength)
      {
        [(NPTUpload *)self setupTimer];
      }

      if (!self->initialTime)
      {
        v49 = objc_alloc_init(MEMORY[0x277CBEAA8]);
        initialTime = self->initialTime;
        self->initialTime = v49;
      }

      [(NPTUpload *)self startTasks];
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  [(NPTUpload *)self cancelDispatchTimerAndSession];
  [(NetworkQualityAssessment *)self->nqTest cancel];
  uploadSession = self->uploadSession;
  self->uploadSession = 0;
}

- (id)createRandomDataOfSize:(unint64_t)size
{
  v4 = [MEMORY[0x277CBEB28] dataWithLength:?];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], size, [v4 mutableBytes]))
  {
    v5 = +[NPTLogger network];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_233421000, v5, OS_LOG_TYPE_DEFAULT, "Failed to generate random bytes to upload ", v9, 2u);
    }

    v6 = [MEMORY[0x277CBEB28] dataWithLength:size];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (id)createTempFileWithData:(id)data named:(id)named
{
  v6 = MEMORY[0x277CCAA00];
  namedCopy = named;
  dataCopy = data;
  defaultManager = [v6 defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];

  v11 = [temporaryDirectory URLByAppendingPathComponent:namedCopy isDirectory:0];

  v17 = 0;
  v12 = [dataCopy writeToURL:v11 options:1 error:&v17];

  v13 = v17;
  if (v13)
  {
    [(NSURLSession *)self->uploadSession invalidateAndCancel];
    v14 = +[NPTLogger fileSystem];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [NPTUpload createTempFileWithData:v13 named:?];
    }
  }

  if (v12)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)removeTempFileNamed:(id)named
{
  v4 = MEMORY[0x277CCAA00];
  namedCopy = named;
  defaultManager = [v4 defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];

  v8 = [temporaryDirectory URLByAppendingPathComponent:namedCopy isDirectory:0];

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  [defaultManager2 removeItemAtURL:v8 error:&v14];
  v10 = v14;

  if (v10)
  {
    v11 = +[NPTLogger fileSystem];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NPTUpload removeTempFileNamed:v10];
    }

    [(NSURLSession *)self->uploadSession invalidateAndCancel];
    delegate = [(NPTUpload *)self delegate];

    if (delegate)
    {
      delegate2 = [(NPTUpload *)self delegate];
      [delegate2 upload:self didFinishWithError:v10];
    }
  }
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
  handler[2] = __23__NPTUpload_setupTimer__block_invoke;
  handler[3] = &unk_2789D3DF8;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  v7 = self->timeoutTimer;
  v8 = dispatch_time(0, 1000000000 * self->timedUploadLength);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_cancel_handler(self->timeoutTimer, &__block_literal_global);
  dispatch_activate(self->timeoutTimer);
}

uint64_t __23__NPTUpload_setupTimer__block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_233421000, v9, OS_LOG_TYPE_DEFAULT, "Timed Upload timer ended", v11, 2u);
  }

  return [*(*(a1 + 32) + 8) invalidateAndCancel];
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  streamCopy = stream;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(task, "taskIdentifier")];
  v8 = [(NSMutableDictionary *)self->taskDict objectForKeyedSubscript:v7];
  results = [v8 results];

  if (results)
  {
    v10 = [(NSMutableDictionary *)self->taskDict objectForKeyedSubscript:v7];
    results2 = [v10 results];
    fileSize = [results2 fileSize];

    v13 = [[NPTUploadDataStream alloc] initWithLength:fileSize];
    streamCopy[2](streamCopy, v13);
  }
}

- (void)cancelDispatchTimerAndSession
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  endTimeAggregate = self->endTimeAggregate;
  self->endTimeAggregate = v3;

  [(NPTUpload *)self cancelDispatchTimer];
  uploadSession = self->uploadSession;

  [(NSURLSession *)uploadSession invalidateAndCancel];
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

    if ([(NSMutableArray *)self->buffer count]>= 6)
    {
      [(NSMutableArray *)self->buffer removeObjectAtIndex:0];
    }

    if ([(NSMutableArray *)self->buffer count]== 5)
    {
      v12 = [(NSMutableArray *)self->buffer valueForKeyPath:@"@avg.self"];
      [v12 doubleValue];
      v14 = v13;

      v15 = [(NSMutableArray *)self->buffer objectAtIndexedSubscript:4];
      [v15 doubleValue];
      v17 = vabdd_f64(v16, v14);

      v18 = [(NSMutableArray *)self->buffer objectAtIndexedSubscript:4];
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

- (id)createHTTPBodyWithBoundary:(id)boundary usingData:(id)data withMimeType:(id)type withFileName:(id)name
{
  v9 = MEMORY[0x277CBEB28];
  nameCopy = name;
  typeCopy = type;
  dataCopy = data;
  boundaryCopy = boundary;
  data = [v9 data];
  boundaryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"--%@\r\n", boundaryCopy];
  v16 = [boundaryCopy dataUsingEncoding:4];
  [data appendData:v16];

  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Content-Disposition: form-data name=%@; filename=upload\r\n", nameCopy];;

  v18 = [nameCopy dataUsingEncoding:4];
  [data appendData:v18];

  typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Content-Type: %@\r\n\r\n", typeCopy];

  v20 = [typeCopy dataUsingEncoding:4];
  [data appendData:v20];

  [data appendData:dataCopy];
  v21 = [@"\r\n" dataUsingEncoding:4];
  [data appendData:v21];

  boundaryCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"--%@--\r\n", boundaryCopy];

  v23 = [boundaryCopy2 dataUsingEncoding:4];
  [data appendData:v23];

  return data;
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

    -[NPTMetricResult setFileSize:](v11, "setFileSize:", [taskCopy countOfBytesSent]);
    if (!self->timedUploadLength)
    {
      results = [(NPTUpload *)self results];
      -[NPTMetricResult setFileSize:](v11, "setFileSize:", [results fileSize]);
    }

    v14 = [(NPTMetricResult *)v11 fileSize]* 8.0;
    [(NPTMetricResult *)v11 requestTime];
    [(NPTMetricResult *)v11 setSpeed:v14 / v15 / 1000000.0];
    v16 = self->taskDict;
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(taskCopy, "taskIdentifier")];
    v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v17];
    [v18 setTaskMetrics:metricsCopy];

    v19 = self->taskDict;
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(taskCopy, "taskIdentifier")];
    v21 = [(NSMutableDictionary *)v19 objectForKeyedSubscript:v20];
    [v21 setResults:v11];
  }
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = [(NPTUpload *)self realTimeSpeedMetricOverall:session];
  delegate = [(NPTUpload *)self delegate];

  if (delegate)
  {
    delegate2 = [(NPTUpload *)self delegate];
    [delegate2 upload:self didReceiveSpeedMetric:v8];
  }

  [v8 speed];
  if (v11 > self->maxSpeedObserved)
  {
    [v8 speed];
    self->maxSpeedObserved = v12;
  }

  if (self->stableSpeedToLog == 0.0)
  {
    [(NPTUpload *)self checkAndReturnSpeedStablized:v8];
    if (v13 > 0.0)
    {
      v14 = v13;
      self->stableSpeedToLog = v13;
      v15 = +[NPTLogger network];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        bytesTransferred = [v8 bytesTransferred];
        [v8 timeSinceStart];
        v19 = 134218496;
        v20 = v14;
        v21 = 2048;
        v22 = bytesTransferred;
        v23 = 2048;
        v24 = v17;
        _os_log_impl(&dword_233421000, v15, OS_LOG_TYPE_DEFAULT, "Upload task has stabilized at %f Mbps after uploading %lld bytes over %f seconds", &v19, 0x20u);
      }

      if (self->smartUpload)
      {
        [(NPTUpload *)self cancelDispatchTimerAndSession];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (int)determineSuspensionThreshold
{
  realTimeSpeedMetricOverall = [(NPTUpload *)self realTimeSpeedMetricOverall];
  [realTimeSpeedMetricOverall speed];
  if (v3 >= 24.0)
  {
    [realTimeSpeedMetricOverall speed];
    if (v5 >= 96.0)
    {
      [realTimeSpeedMetricOverall speed];
      if (v6 >= 192.0)
      {
        [realTimeSpeedMetricOverall speed];
        if (v7 >= 384.0)
        {
          v4 = 0x200000;
        }

        else
        {
          v4 = 0x80000;
        }
      }

      else
      {
        v4 = 0x40000;
      }
    }

    else
    {
      v4 = 0x20000;
    }
  }

  else
  {
    v4 = 0x8000;
  }

  return v4;
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v43 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11 = [errorCopy copy];
  if (v11 && ![(NPTUpload *)self isTimerCancelledError:v11])
  {
    goto LABEL_6;
  }

  response = [taskCopy response];
  v13 = response;
  if (response)
  {
    statusCode = [response statusCode];
    if (statusCode > 399)
    {
      v15 = statusCode;
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Upload task: %@ failed to Upload payload due to: %ld", taskCopy, statusCode];
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
          [NPTUpload URLSession:taskCopy task:v11 didCompleteWithError:?];
        }

        uploadError = self->uploadError;
        ++self->processedStreamEndCount;
        if (!uploadError)
        {
          objc_storeStrong(&self->uploadError, v11);
          if (!self->endTimeAggregate && self->timedUploadLength)
          {
            [(NPTUpload *)self cancelDispatchTimerAndSession];
          }

          if (!self->timedUploadLength)
          {
            uploadSession = self->uploadSession;
            if (uploadSession)
            {
              [(NSURLSession *)uploadSession invalidateAndCancel];
            }
          }
        }

        goto LABEL_24;
      }

LABEL_23:
      v11 = 0;
      ++self->processedStreamEndCount;
LABEL_24:
      if ([(NPTUpload *)self isLastTask])
      {
        v25 = self->uploadError;
        if (v25)
        {
          if ([(NSError *)v25 code]== -999)
          {
            v26 = 4;
          }

          else
          {
            v26 = 3;
          }
        }

        else
        {
          if (!self->endTimeAggregate && self->timedUploadLength)
          {
            [(NPTUpload *)self cancelDispatchTimer];
          }

          [(NSURLSession *)self->uploadSession finishTasksAndInvalidate];
          v26 = 2;
        }

        [(NPTUpload *)self completeActivityWithReason:v26];
        aggregateResults = [(NPTUpload *)self aggregateResults];
        [(NPTUpload *)self setResults:aggregateResults];

        delegate = [(NPTUpload *)self delegate];
        LOBYTE(aggregateResults) = delegate == 0;

        if ((aggregateResults & 1) == 0)
        {
          v29 = self->uploadError == 0;
          delegate2 = [(NPTUpload *)self delegate];
          v31 = delegate2;
          if (v29)
          {
            results = [(NPTUpload *)self results];
            [v31 upload:self didFinishWithResults:results];
          }

          else
          {
            [delegate2 upload:self didFinishWithError:self->uploadError];
          }
        }

        completion = [(NPTUpload *)self completion];
        v34 = completion == 0;

        if (!v34)
        {
          objc_initWeak(buf, self);
          completion2 = [(NPTUpload *)self completion];
          WeakRetained = objc_loadWeakRetained(buf);
          results2 = [WeakRetained results];
          (completion2)[2](completion2, results2, self->uploadError);

          objc_destroyWeak(buf);
        }
      }

      goto LABEL_40;
    }
  }

  v22 = +[NPTLogger network];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = taskCopy;
    v41 = 2048;
    countOfBytesSent = [taskCopy countOfBytesSent];
    _os_log_impl(&dword_233421000, v22, OS_LOG_TYPE_DEFAULT, "Upload task: %@ Upload: %lld bytes", buf, 0x16u);
  }

  if (self->endTimeAggregate || ![(NPTUpload *)self inTimedMode])
  {

    goto LABEL_23;
  }

  determineSuspensionThreshold = [(NPTUpload *)self determineSuspensionThreshold];
  v24 = +[NPTLogger network];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [NPTUpload URLSession:taskCopy task:determineSuspensionThreshold didCompleteWithError:v24];
  }

  [(NPTUpload *)self kickOffNewUpload:self->uploadFileSize suspensionThresholdEnum:determineSuspensionThreshold];
  v11 = 0;
LABEL_40:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = +[NPTLogger network];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NPTUpload URLSession:errorCopy didBecomeInvalidWithError:v8];
    }

    [(NSURLSession *)self->uploadSession finishTasksAndInvalidate];
    [(NPTUpload *)self completeActivityWithReason:3];
    delegate = [(NPTUpload *)self delegate];

    if (delegate)
    {
      delegate2 = [(NPTUpload *)self delegate];
      [delegate2 upload:self didFinishWithError:errorCopy];
    }

    completion = [(NPTUpload *)self completion];

    if (completion)
    {
      completion2 = [(NPTUpload *)self completion];
      (completion2)[2](completion2, 0, errorCopy);
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NPTUpload allocWithZone:?]];
  results = [(NPTUpload *)self results];
  [(NPTUpload *)v4 setResults:results];

  return v4;
}

- (void)progress:(id)progress
{
  v36 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v5 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  [v5 timeIntervalSinceDate:self->initialTime];
  v7 = v6;
  uplinkCapacity = [progressCopy uplinkCapacity];
  value = [uplinkCapacity value];
  [value doubleValue];
  v11 = v10 / 1000000.0;

  v12 = +[NPTLogger network];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 134217984;
    v31 = v11;
    _os_log_impl(&dword_233421000, v12, OS_LOG_TYPE_DEFAULT, "Upload progress speed: %f mbps", &v30, 0xCu);
  }

  v13 = [NPTSpeedMetric alloc];
  uplinkBytesTransferred = [progressCopy uplinkBytesTransferred];
  intValue = [uplinkBytesTransferred intValue];
  maxUplinkData = [(NetworkQualityConfiguration *)self->nqConfig maxUplinkData];
  uplinkResponsiveness = [progressCopy uplinkResponsiveness];
  value2 = [uplinkResponsiveness value];
  v19 = -[NPTSpeedMetric initWithPointInTime:timeSinceStart:bytesTransferred:totalBytesExpected:speed:responsiveness:](v13, "initWithPointInTime:timeSinceStart:bytesTransferred:totalBytesExpected:speed:responsiveness:", v5, intValue, maxUplinkData, [value2 intValue], v7, v11);

  delegate = [(NPTUpload *)self delegate];

  if (delegate)
  {
    delegate2 = [(NPTUpload *)self delegate];
    [delegate2 upload:self didReceiveSpeedMetric:v19];
  }

  [(NPTSpeedMetric *)v19 speed];
  if (v22 > self->maxSpeedObserved)
  {
    [(NPTSpeedMetric *)v19 speed];
    self->maxSpeedObserved = v23;
  }

  if (self->stableSpeedToLog == 0.0)
  {
    [(NPTUpload *)self checkAndReturnSpeedStablized:v19];
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
        _os_log_impl(&dword_233421000, v26, OS_LOG_TYPE_DEFAULT, "Upload task has stabilized at %f Mbps after uploading %lld bytes over %f seconds", &v30, 0x20u);
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
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

- (BOOL)inTimedMode
{
  timedUploadLength = self->timedUploadLength;
  if (timedUploadLength)
  {
    LOBYTE(timedUploadLength) = !self->stopAtFileSizeEnabled;
  }

  return timedUploadLength & 1;
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
        v7 += [task countOfBytesSent];

        task2 = [v10 task];
        v6 += [task2 countOfBytesExpectedToSend];
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
  if (self->uploadActivity && nw_activity_is_activated())
  {
    v4 = +[NPTLogger network];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_233421000, v4, OS_LOG_TYPE_DEFAULT, "Completing uploadActivity", v7, 2u);
    }

    uploadActivity = self->uploadActivity;
    nw_activity_complete_with_reason();
    v6 = self->uploadActivity;
    self->uploadActivity = 0;
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
    requestStartDate = [firstObject requestStartDate];

    v11 = [(NSMutableDictionary *)selfCopy->taskDict objectForKeyedSubscript:v5];
    taskMetrics2 = [v11 taskMetrics];
    transactionMetrics2 = [taskMetrics2 transactionMetrics];
    firstObject2 = [transactionMetrics2 firstObject];
    requestEndDate = [firstObject2 requestEndDate];

    endTimeAggregate = selfCopy->endTimeAggregate;
    if (endTimeAggregate)
    {
      v17 = endTimeAggregate;

      v18 = +[NPTLogger network];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_233421000, v18, OS_LOG_TYPE_DEFAULT, "Upload using synthesized end time", buf, 2u);
      }

      v115 = v17;
    }

    else
    {
      v115 = requestEndDate;
    }

    v109 = v5;
    v20 = [(NSMutableDictionary *)selfCopy->taskDict objectForKeyedSubscript:v5];
    results = [v20 results];
    v22 = [results copy];

    [v22 setSpeed:0.0];
    [v22 setFileSize:0];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:selfCopy->maxConcurrentStreams];
    [v22 setConcurrentStreams:v23];

    [v22 setError:selfCopy->uploadError];
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = selfCopy->taskDict;
    v24 = requestStartDate;
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
          requestStartDate2 = [firstObject3 requestStartDate];

          v33 = [(NSMutableDictionary *)selfCopy->taskDict objectForKeyedSubscript:v26];
          taskMetrics4 = [v33 taskMetrics];
          transactionMetrics4 = [taskMetrics4 transactionMetrics];
          firstObject4 = [transactionMetrics4 firstObject];
          requestEndDate2 = [firstObject4 requestEndDate];

          v37 = requestStartDate2;
          if (requestStartDate2 && (!v24 || [(NSDate *)v24 compare:requestStartDate2]== NSOrderedDescending))
          {
            v38 = requestStartDate2;

            v24 = v38;
          }

          v39 = requestEndDate2;
          v22 = v112;
          v116 = v24;
          if (requestEndDate2 && (!v115 || [(NSDate *)v115 compare:requestEndDate2]== NSOrderedAscending))
          {
            v40 = requestEndDate2;

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
            _os_log_impl(&dword_233421000, v41, OS_LOG_TYPE_DEFAULT, "Upload Task: %@ DomainLookupTime: %f, connectionTime: %f, requestTime: %f, responseTime: %f", buf, 0x34u);

            v39 = requestEndDate2;
            v37 = v111;
          }

          results5 = [v27 results];
          [v112 setFileSize:{objc_msgSend(v112, "fileSize") + objc_msgSend(results5, "fileSize")}];

          [v112 domainLookupTime];
          v56 = v55;
          results6 = [v27 results];
          [results6 domainLookupTime];
          [(NPTUpload *)selfCopy minNonZeroValue:v56 comparisonValue:v58];
          [v112 setDomainLookupTime:?];

          [v112 connectionTime];
          v60 = v59;
          results7 = [v27 results];
          [results7 connectionTime];
          [(NPTUpload *)selfCopy minNonZeroValue:v60 comparisonValue:v62];
          [v112 setConnectionTime:?];

          [v112 secureConnectionTime];
          v64 = v63;
          results8 = [v27 results];
          [results8 secureConnectionTime];
          [(NPTUpload *)selfCopy minNonZeroValue:v64 comparisonValue:v66];
          [v112 setSecureConnectionTime:?];

          [v112 responseTime];
          v68 = v67;
          results9 = [v27 results];
          [results9 responseTime];
          [(NPTUpload *)selfCopy minNonZeroValue:v68 comparisonValue:v70];
          [v112 setResponseTime:?];

          [v112 requestToResponseTime];
          v72 = v71;
          results10 = [v27 results];
          [results10 requestToResponseTime];
          [(NPTUpload *)selfCopy minNonZeroValue:v72 comparisonValue:v74];
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
        _os_log_impl(&dword_233421000, v99, OS_LOG_TYPE_DEFAULT, "Upload using synthesized start time", buf, 2u);
      }
    }

    [(NSDate *)v115 timeIntervalSinceDate:v24];
    if (v100 > 0.0)
    {
      [v22 setRequestTime:?];
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
      _os_log_impl(&dword_233421000, v103, OS_LOG_TYPE_DEFAULT, "Upload performance test has finished at %f Mbps", buf, 0xCu);
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

- (void)cleanUp
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->taskDict;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->taskDict objectForKey:*(*(&v12 + 1) + 8 * v7), v12];
        [v8 setTask:0];
        [v8 setTaskMetrics:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  uploadSession = self->uploadSession;
  self->uploadSession = 0;

  request = self->request;
  self->request = 0;

  v11 = *MEMORY[0x277D85DE8];
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

  aggregateResults = [(NPTUpload *)self aggregateResults];
  [aggregateResults setMaxSpeedObserved:self->maxSpeedObserved];
  uplinkBytesTransferred = [resultCopy uplinkBytesTransferred];
  [aggregateResults setFileSize:{objc_msgSend(uplinkBytesTransferred, "unsignedIntValue")}];

  uplinkCapacity = [resultCopy uplinkCapacity];
  value = [uplinkCapacity value];
  [value doubleValue];
  [aggregateResults setSpeed:v27 / 1000000.0];

  uplinkCapacity2 = [resultCopy uplinkCapacity];
  rating = [uplinkCapacity2 rating];
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
  uplinkCapacity3 = [resultCopy uplinkCapacity];
  v33 = [v31 initWithInteger:{objc_msgSend(uplinkCapacity3, "confidence")}];
  [aggregateResults setSpeedConfidence:v33];

  uplinkResponsiveness = [resultCopy uplinkResponsiveness];
  value2 = [uplinkResponsiveness value];
  if (value2)
  {
    [aggregateResults setResponsiveness:value2];
  }

  else
  {
    v36 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0];
    [aggregateResults setResponsiveness:v36];
  }

  uplinkResponsiveness2 = [resultCopy uplinkResponsiveness];
  rating2 = [uplinkResponsiveness2 rating];
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
  uplinkResponsiveness3 = [resultCopy uplinkResponsiveness];
  v42 = [v40 initWithInteger:{objc_msgSend(uplinkResponsiveness3, "confidence")}];
  [aggregateResults setResponsivenessConfidence:v42];

  uplinkFlows = [resultCopy uplinkFlows];
  if (uplinkFlows)
  {
    [aggregateResults setConcurrentStreams:uplinkFlows];
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

- (void)createTempFileWithData:(void *)a1 named:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeTempFileNamed:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(uint64_t)a1 task:(void *)a2 didCompleteWithError:.cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(uint64_t)a1 task:(int)a2 didCompleteWithError:(os_log_t)log .cold.2(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_233421000, log, OS_LOG_TYPE_ERROR, "Set threshold to %u on rollover for task: %@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(uint64_t)a1 didBecomeInvalidWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_233421000, a2, OS_LOG_TYPE_ERROR, "Upload task became invalidated with error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end