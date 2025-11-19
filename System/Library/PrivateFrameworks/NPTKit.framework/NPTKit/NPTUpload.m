@interface NPTUpload
- (BOOL)finishedAllTasks;
- (BOOL)inTimedMode;
- (NPTUpload)initWithCoder:(id)a3;
- (NPTUpload)initWithNetworkActivityParent:(id)a3 testConfiguration:(id)a4;
- (double)checkAndReturnSpeedStablized:(id)a3;
- (double)minNonZeroValue:(double)a3 comparisonValue:(double)a4;
- (id)aggregateResults;
- (id)checkInterfaceSpecified;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createHTTPBodyWithBoundary:(id)a3 usingData:(id)a4 withMimeType:(id)a5 withFileName:(id)a6;
- (id)createRandomDataOfSize:(unint64_t)a3;
- (id)createTempFileWithData:(id)a3 named:(id)a4;
- (id)delegate;
- (id)processNQResult:(id)a3;
- (id)realTimeSpeedMetricOverall;
- (int)determineSuspensionThreshold;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)cancel;
- (void)cancelDispatchTimer;
- (void)cancelDispatchTimerAndSession;
- (void)cleanUp;
- (void)completeActivityWithReason:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)progress:(id)a3;
- (void)removeTempFileNamed:(id)a3;
- (void)setupTimer;
- (void)startLegacyUploadWithCompletion:(id)a3;
- (void)startNQUploadWithCompletion:(id)a3;
- (void)startTasks;
- (void)startUploadWithCompletion:(id)a3;
@end

@implementation NPTUpload

- (NPTUpload)initWithNetworkActivityParent:(id)a3 testConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = NPTUpload;
  v9 = [(NPTUpload *)&v27 init];
  if (v9)
  {
    v10 = objc_alloc_init(NPTMetricResult);
    [(NPTUpload *)v9 setResults:v10];

    v11 = [MEMORY[0x277CBEB38] dictionary];
    taskDict = v9->taskDict;
    v9->taskDict = v11;

    v13 = nw_activity_create();
    uploadActivity = v9->uploadActivity;
    v9->uploadActivity = v13;

    objc_storeStrong(&v9->activityParent, a3);
    activityParent = v9->activityParent;
    v15 = v9->uploadActivity;
    nw_activity_set_parent_activity();
    if ([v8 stopAtFileSize])
    {
      v17 = 1;
    }

    else
    {
      v17 = [v8 concurrentStreams];
    }

    v9->maxConcurrentStreams = v17;
    v9->processedStreamEndCount = 0;
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    buffer = v9->buffer;
    v9->buffer = v18;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v9->recentBufferTime = v20;
    v9->timedUploadLength = [v8 testDuration];
    v9->smartUpload = [v8 endWhenStable];
    uploadError = v9->uploadError;
    v9->stableSpeedToLog = 0.0;
    v9->uploadError = 0;

    v9->stopAtFileSizeEnabled = [v8 stopAtFileSize];
    v22 = [v8 clientName];
    callingClient = v9->callingClient;
    v9->callingClient = v22;

    v9->maxSpeedObserved = 0.0;
    objc_storeStrong(&v9->testConfig, a4);
    v9->legacy = [v8 legacyMode];
    nqConfig = v9->nqConfig;
    v9->nqConfig = 0;

    nqTest = v9->nqTest;
    v9->nqTest = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NPTUpload *)self results];
  [v4 encodeObject:v5 forKey:@"uploadResult"];
}

- (NPTUpload)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = NPTUpload;
  v3 = a3;
  v4 = [(NPTUpload *)&v7 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"uploadResult", v7.receiver, v7.super_class}];

  [(NPTUpload *)v4 setResults:v5];
  return v4;
}

- (void)startNQUploadWithCompletion:(id)a3
{
  v4 = a3;
  [(NPTUpload *)self setCompletion:v4];
  v5 = [(NPTPerformanceTestConfiguration *)self->testConfig NQUploadConfiguration];
  nqConfig = self->nqConfig;
  self->nqConfig = v5;

  v7 = [(NPTPerformanceTestConfiguration *)self->testConfig bonjourHost];

  if (v7)
  {
    v8 = [(NPTPerformanceTestConfiguration *)self->testConfig bonjourHost];
    [(NetworkQualityConfiguration *)self->nqConfig setBonjourHost:v8];

    [(NetworkQualityConfiguration *)self->nqConfig setValidateCertificate:0];
  }

  uploadActivity = self->uploadActivity;
  nw_activity_activate();
  v10 = [(NPTUpload *)self checkInterfaceSpecified];
  v11 = [(NPTUpload *)self results];
  [v11 setError:v10];

  if (v10)
  {
    v12 = [(NPTUpload *)self delegate];

    if (v12)
    {
      v13 = [(NPTUpload *)self delegate];
      [v13 upload:self didFinishWithError:v10];
    }

    v14 = [(NPTUpload *)self completion];

    if (v14)
    {
      v15 = [(NPTUpload *)self completion];
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
      v22 = [(NPTUpload *)self delegate];

      if (v22)
      {
        v23 = [(NPTUpload *)self delegate];
        [v23 uploadWillStart];
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

- (void)startUploadWithCompletion:(id)a3
{
  if (self->legacy)
  {
    [(NPTUpload *)self startLegacyUploadWithCompletion:a3];
  }

  else
  {
    [(NPTUpload *)self startNQUploadWithCompletion:a3];
  }
}

- (void)startLegacyUploadWithCompletion:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  [(NPTUpload *)self setCompletion:a3];
  uploadActivity = self->uploadActivity;
  nw_activity_activate();
  v5 = [(NPTUpload *)self checkInterfaceSpecified];
  v6 = [(NPTUpload *)self results];
  [v6 setError:v5];

  if (v5)
  {
    v7 = [(NPTUpload *)self delegate];

    if (v7)
    {
      v8 = [(NPTUpload *)self delegate];
      [v8 upload:self didFinishWithError:v5];
    }

    v9 = [(NPTUpload *)self completion];

    if (v9)
    {
      v10 = [(NPTUpload *)self completion];
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
    [v13 setMaxConcurrentOperationCount:1];
    [v13 setQualityOfService:33];
    [v12 setAllowsCellularAccess:v11];
    [v12 setWaitsForConnectivity:0];
    [v12 setTimeoutIntervalForRequest:3.0];
    if (!self->timedUploadLength)
    {
      [v12 setTimeoutIntervalForResource:(90 * self->maxConcurrentStreams)];
    }

    [v12 setHTTPMaximumConnectionsPerHost:self->maxConcurrentStreams + 1];
    v14 = [MEMORY[0x277CBABB8] sessionWithConfiguration:v12 delegate:self delegateQueue:v13];
    uploadSession = self->uploadSession;
    self->uploadSession = v14;

    v16 = MEMORY[0x277CBAB50];
    v17 = [(NPTPerformanceTestConfiguration *)self->testConfig uploadURL];
    v18 = [v16 requestWithURL:v17];
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

    v23 = [(NPTPerformanceTestConfiguration *)self->testConfig interfaceName];

    if (v23)
    {
      v24 = +[NPTLogger network];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(NPTPerformanceTestConfiguration *)self->testConfig interfaceName];
        *buf = 138412290;
        v53 = v25;
        _os_log_impl(&dword_233421000, v24, OS_LOG_TYPE_DEFAULT, "Force the upload over the following interface: %@", buf, 0xCu);
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
    v32 = [(NPTPerformanceTestConfiguration *)self->testConfig uploadSize];
    if ([(NPTUpload *)self inTimedMode])
    {
      if ([(NPTPerformanceTestConfiguration *)self->testConfig uploadSize]== 1001)
      {
        v32 = 50;
      }

      else
      {
        v32 = v32;
      }
    }

    v33 = [MEMORY[0x277CCAD78] UUID];
    v34 = [v33 UUIDString];

    v35 = [NPTFileSizeConverter getFileSizeInBytes:v32];
    self->uploadFileSize = v35;
    v36 = v35;
    v37 = [(NPTUpload *)self results];
    [v37 setFileSize:v36];

    v38 = self->request;
    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"multipart/form-data boundary=%@", v34];;
    [(NSMutableURLRequest *)v38 setValue:v39 forHTTPHeaderField:@"Content-Type"];

    if (self->uploadSession)
    {
      v40 = [(NPTUpload *)self delegate];

      if (v40)
      {
        v41 = [(NPTUpload *)self delegate];
        [v41 uploadWillStart];
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
            v45 = self;
            uploadFileSize = 0x100000;
            v47 = 0x8000;
          }

          else
          {
            uploadFileSize = self->uploadFileSize;
            v45 = self;
            v47 = 0x200000;
          }

          v48 = [(NPTUpload *)v45 setupNewUploadTask:uploadFileSize suspensionThresholdEnum:v47];
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

- (id)createRandomDataOfSize:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEB28] dataWithLength:?];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], a3, [v4 mutableBytes]))
  {
    v5 = +[NPTLogger network];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_233421000, v5, OS_LOG_TYPE_DEFAULT, "Failed to generate random bytes to upload ", v9, 2u);
    }

    v6 = [MEMORY[0x277CBEB28] dataWithLength:a3];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (id)createTempFileWithData:(id)a3 named:(id)a4
{
  v6 = MEMORY[0x277CCAA00];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultManager];
  v10 = [v9 temporaryDirectory];

  v11 = [v10 URLByAppendingPathComponent:v7 isDirectory:0];

  v17 = 0;
  v12 = [v8 writeToURL:v11 options:1 error:&v17];

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

- (void)removeTempFileNamed:(id)a3
{
  v4 = MEMORY[0x277CCAA00];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [v6 temporaryDirectory];

  v8 = [v7 URLByAppendingPathComponent:v5 isDirectory:0];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  [v9 removeItemAtURL:v8 error:&v14];
  v10 = v14;

  if (v10)
  {
    v11 = +[NPTLogger fileSystem];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NPTUpload removeTempFileNamed:v10];
    }

    [(NSURLSession *)self->uploadSession invalidateAndCancel];
    v12 = [(NPTUpload *)self delegate];

    if (v12)
    {
      v13 = [(NPTUpload *)self delegate];
      [v13 upload:self didFinishWithError:v10];
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

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v14 = a5;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(a4, "taskIdentifier")];
  v8 = [(NSMutableDictionary *)self->taskDict objectForKeyedSubscript:v7];
  v9 = [v8 results];

  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->taskDict objectForKeyedSubscript:v7];
    v11 = [v10 results];
    v12 = [v11 fileSize];

    v13 = [[NPTUploadDataStream alloc] initWithLength:v12];
    v14[2](v14, v13);
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
        [v4 speed];
        v6 = v21;
      }
    }
  }

  return v6;
}

- (id)createHTTPBodyWithBoundary:(id)a3 usingData:(id)a4 withMimeType:(id)a5 withFileName:(id)a6
{
  v9 = MEMORY[0x277CBEB28];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v9 data];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"--%@\r\n", v13];
  v16 = [v15 dataUsingEncoding:4];
  [v14 appendData:v16];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Content-Disposition: form-data name=%@; filename=upload\r\n", v10];;

  v18 = [v17 dataUsingEncoding:4];
  [v14 appendData:v18];

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Content-Type: %@\r\n\r\n", v11];

  v20 = [v19 dataUsingEncoding:4];
  [v14 appendData:v20];

  [v14 appendData:v12];
  v21 = [@"\r\n" dataUsingEncoding:4];
  [v14 appendData:v21];

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"--%@--\r\n", v13];

  v23 = [v22 dataUsingEncoding:4];
  [v14 appendData:v23];

  return v14;
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v22 = a4;
  v7 = a5;
  taskDict = self->taskDict;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v22, "taskIdentifier")];
  v10 = [(NSMutableDictionary *)taskDict objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = objc_alloc_init(NPTMetricResult);
    [(NPTMetricResult *)v11 populateWithMetrics:v7];
    v12 = [v22 response];
    [(NPTMetricResult *)v11 populateWithURLResponse:v12];

    -[NPTMetricResult setFileSize:](v11, "setFileSize:", [v22 countOfBytesSent]);
    if (!self->timedUploadLength)
    {
      v13 = [(NPTUpload *)self results];
      -[NPTMetricResult setFileSize:](v11, "setFileSize:", [v13 fileSize]);
    }

    v14 = [(NPTMetricResult *)v11 fileSize]* 8.0;
    [(NPTMetricResult *)v11 requestTime];
    [(NPTMetricResult *)v11 setSpeed:v14 / v15 / 1000000.0];
    v16 = self->taskDict;
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v22, "taskIdentifier")];
    v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v17];
    [v18 setTaskMetrics:v7];

    v19 = self->taskDict;
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v22, "taskIdentifier")];
    v21 = [(NSMutableDictionary *)v19 objectForKeyedSubscript:v20];
    [v21 setResults:v11];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = [(NPTUpload *)self realTimeSpeedMetricOverall:a3];
  v9 = [(NPTUpload *)self delegate];

  if (v9)
  {
    v10 = [(NPTUpload *)self delegate];
    [v10 upload:self didReceiveSpeedMetric:v8];
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
        v16 = [v8 bytesTransferred];
        [v8 timeSinceStart];
        v19 = 134218496;
        v20 = v14;
        v21 = 2048;
        v22 = v16;
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
  v2 = [(NPTUpload *)self realTimeSpeedMetricOverall];
  [v2 speed];
  if (v3 >= 24.0)
  {
    [v2 speed];
    if (v5 >= 96.0)
    {
      [v2 speed];
      if (v6 >= 192.0)
      {
        [v2 speed];
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

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 copy];
  if (v11 && ![(NPTUpload *)self isTimerCancelledError:v11])
  {
    goto LABEL_6;
  }

  v12 = [v9 response];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 statusCode];
    if (v14 > 399)
    {
      v15 = v14;
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Upload task: %@ failed to Upload payload due to: %ld", v9, v14];
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
          [NPTUpload URLSession:v9 task:v11 didCompleteWithError:?];
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
        v27 = [(NPTUpload *)self aggregateResults];
        [(NPTUpload *)self setResults:v27];

        v28 = [(NPTUpload *)self delegate];
        LOBYTE(v27) = v28 == 0;

        if ((v27 & 1) == 0)
        {
          v29 = self->uploadError == 0;
          v30 = [(NPTUpload *)self delegate];
          v31 = v30;
          if (v29)
          {
            v32 = [(NPTUpload *)self results];
            [v31 upload:self didFinishWithResults:v32];
          }

          else
          {
            [v30 upload:self didFinishWithError:self->uploadError];
          }
        }

        v33 = [(NPTUpload *)self completion];
        v34 = v33 == 0;

        if (!v34)
        {
          objc_initWeak(buf, self);
          v35 = [(NPTUpload *)self completion];
          WeakRetained = objc_loadWeakRetained(buf);
          v37 = [WeakRetained results];
          (v35)[2](v35, v37, self->uploadError);

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
    v40 = v9;
    v41 = 2048;
    v42 = [v9 countOfBytesSent];
    _os_log_impl(&dword_233421000, v22, OS_LOG_TYPE_DEFAULT, "Upload task: %@ Upload: %lld bytes", buf, 0x16u);
  }

  if (self->endTimeAggregate || ![(NPTUpload *)self inTimedMode])
  {

    goto LABEL_23;
  }

  v23 = [(NPTUpload *)self determineSuspensionThreshold];
  v24 = +[NPTLogger network];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [NPTUpload URLSession:v9 task:v23 didCompleteWithError:v24];
  }

  [(NPTUpload *)self kickOffNewUpload:self->uploadFileSize suspensionThresholdEnum:v23];
  v11 = 0;
LABEL_40:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = +[NPTLogger network];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NPTUpload URLSession:v7 didBecomeInvalidWithError:v8];
    }

    [(NSURLSession *)self->uploadSession finishTasksAndInvalidate];
    [(NPTUpload *)self completeActivityWithReason:3];
    v9 = [(NPTUpload *)self delegate];

    if (v9)
    {
      v10 = [(NPTUpload *)self delegate];
      [v10 upload:self didFinishWithError:v7];
    }

    v11 = [(NPTUpload *)self completion];

    if (v11)
    {
      v12 = [(NPTUpload *)self completion];
      (v12)[2](v12, 0, v7);
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NPTUpload allocWithZone:?]];
  v5 = [(NPTUpload *)self results];
  [(NPTUpload *)v4 setResults:v5];

  return v4;
}

- (void)progress:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  [v5 timeIntervalSinceDate:self->initialTime];
  v7 = v6;
  v8 = [v4 uplinkCapacity];
  v9 = [v8 value];
  [v9 doubleValue];
  v11 = v10 / 1000000.0;

  v12 = +[NPTLogger network];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 134217984;
    v31 = v11;
    _os_log_impl(&dword_233421000, v12, OS_LOG_TYPE_DEFAULT, "Upload progress speed: %f mbps", &v30, 0xCu);
  }

  v13 = [NPTSpeedMetric alloc];
  v14 = [v4 uplinkBytesTransferred];
  v15 = [v14 intValue];
  v16 = [(NetworkQualityConfiguration *)self->nqConfig maxUplinkData];
  v17 = [v4 uplinkResponsiveness];
  v18 = [v17 value];
  v19 = -[NPTSpeedMetric initWithPointInTime:timeSinceStart:bytesTransferred:totalBytesExpected:speed:responsiveness:](v13, "initWithPointInTime:timeSinceStart:bytesTransferred:totalBytesExpected:speed:responsiveness:", v5, v15, v16, [v18 intValue], v7, v11);

  v20 = [(NPTUpload *)self delegate];

  if (v20)
  {
    v21 = [(NPTUpload *)self delegate];
    [v21 upload:self didReceiveSpeedMetric:v19];
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
        v27 = [(NPTSpeedMetric *)v19 bytesTransferred];
        [(NPTSpeedMetric *)v19 timeSinceStart];
        v30 = 134218496;
        v31 = v25;
        v32 = 2048;
        v33 = v27;
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
        v7 += [v11 countOfBytesSent];

        v12 = [v10 task];
        v6 += [v12 countOfBytesExpectedToSend];
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
  v117 = self;
  if ([(NSMutableDictionary *)self->taskDict count])
  {
    v4 = [(NSMutableDictionary *)self->taskDict allKeys];
    v5 = [v4 objectAtIndex:0];

    v6 = [(NSMutableDictionary *)v117->taskDict objectForKeyedSubscript:v5];
    v7 = [v6 taskMetrics];
    v8 = [v7 transactionMetrics];
    v9 = [v8 firstObject];
    v10 = [v9 requestStartDate];

    v11 = [(NSMutableDictionary *)v117->taskDict objectForKeyedSubscript:v5];
    v12 = [v11 taskMetrics];
    v13 = [v12 transactionMetrics];
    v14 = [v13 firstObject];
    v15 = [v14 requestEndDate];

    endTimeAggregate = v117->endTimeAggregate;
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

    [v22 setError:v117->uploadError];
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
          v32 = [v31 requestStartDate];

          v33 = [(NSMutableDictionary *)v117->taskDict objectForKeyedSubscript:v26];
          v34 = [v33 taskMetrics];
          v35 = [v34 transactionMetrics];
          v36 = [v35 firstObject];
          v118 = [v36 requestEndDate];

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
            _os_log_impl(&dword_233421000, v41, OS_LOG_TYPE_DEFAULT, "Upload Task: %@ DomainLookupTime: %f, connectionTime: %f, requestTime: %f, responseTime: %f", buf, 0x34u);

            v39 = v118;
            v37 = v111;
          }

          v54 = [v27 results];
          [v112 setFileSize:{objc_msgSend(v112, "fileSize") + objc_msgSend(v54, "fileSize")}];

          [v112 domainLookupTime];
          v56 = v55;
          v57 = [v27 results];
          [v57 domainLookupTime];
          [(NPTUpload *)v117 minNonZeroValue:v56 comparisonValue:v58];
          [v112 setDomainLookupTime:?];

          [v112 connectionTime];
          v60 = v59;
          v61 = [v27 results];
          [v61 connectionTime];
          [(NPTUpload *)v117 minNonZeroValue:v60 comparisonValue:v62];
          [v112 setConnectionTime:?];

          [v112 secureConnectionTime];
          v64 = v63;
          v65 = [v27 results];
          [v65 secureConnectionTime];
          [(NPTUpload *)v117 minNonZeroValue:v64 comparisonValue:v66];
          [v112 setSecureConnectionTime:?];

          [v112 responseTime];
          v68 = v67;
          v69 = [v27 results];
          [v69 responseTime];
          [(NPTUpload *)v117 minNonZeroValue:v68 comparisonValue:v70];
          [v112 setResponseTime:?];

          [v112 requestToResponseTime];
          v72 = v71;
          v73 = [v27 results];
          [v73 requestToResponseTime];
          [(NPTUpload *)v117 minNonZeroValue:v72 comparisonValue:v74];
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

  v23 = [(NPTUpload *)self aggregateResults];
  [v23 setMaxSpeedObserved:self->maxSpeedObserved];
  v24 = [v53 uplinkBytesTransferred];
  [v23 setFileSize:{objc_msgSend(v24, "unsignedIntValue")}];

  v25 = [v53 uplinkCapacity];
  v26 = [v25 value];
  [v26 doubleValue];
  [v23 setSpeed:v27 / 1000000.0];

  v28 = [v53 uplinkCapacity];
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
  v32 = [v53 uplinkCapacity];
  v33 = [v31 initWithInteger:{objc_msgSend(v32, "confidence")}];
  [v23 setSpeedConfidence:v33];

  v34 = [v53 uplinkResponsiveness];
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

  v37 = [v53 uplinkResponsiveness];
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
  v41 = [v53 uplinkResponsiveness];
  v42 = [v40 initWithInteger:{objc_msgSend(v41, "confidence")}];
  [v23 setResponsivenessConfidence:v42];

  v43 = [v53 uplinkFlows];
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