@interface ThroughputDelegate
- (ThroughputDelegate)initWithExecution:(id)a3 testName:(id)a4 withQueue:(id)a5 testEndpoint:(id)a6 withConfig:(id)a7 resultsObject:(id)a8;
- (id)createTaskWithRequest:(id)a3 session:(id)a4;
- (int)executeTaskWithRequest:(id)a3 saturationHandler:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)addNewThroughputMeasurement:(unint64_t)a3;
- (void)addTasks;
- (void)cancelWithCompletionHandler:(id)a3;
- (void)dealloc;
@end

@implementation ThroughputDelegate

- (ThroughputDelegate)initWithExecution:(id)a3 testName:(id)a4 withQueue:(id)a5 testEndpoint:(id)a6 withConfig:(id)a7 resultsObject:(id)a8
{
  v54 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  obj = a6;
  v17 = a6;
  v18 = a7;
  v43 = a8;
  v19 = a8;
  v45.receiver = self;
  v45.super_class = ThroughputDelegate;
  v20 = [(ThroughputDelegate *)&v45 init];
  if (v20)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sessions = v20->_sessions;
    v20->_sessions = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    probeSessions = v20->_probeSessions;
    v20->_probeSessions = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tasks = v20->_tasks;
    v20->_tasks = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    uploadStream = v20->_uploadStream;
    v20->_uploadStream = v27;

    objc_storeStrong(&v20->_nqConfig, a7);
    start = v20->_start;
    v20->_start = 0;

    v30 = [[ThroughputSaturationDetection alloc] initWithConfig:v18];
    saturation = v20->_saturation;
    v20->_saturation = &v30->super;

    v20->_saturationReached = 0;
    objc_storeStrong(&v20->_queue, a5);
    objc_storeStrong(&v20->_testEndpoint, obj);
    v32 = instance_id++;
    v20->_instanceId = v32;
    objc_storeStrong(&v20->_results, v43);
    objc_storeStrong(&v20->_execution, a3);
    objc_storeStrong(&v20->_testName, a4);
    v33 = [MEMORY[0x277CBEAA8] now];
    lastUpdate = v20->_lastUpdate;
    v20->_lastUpdate = v33;

    netqual_log_init();
    v35 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      instanceId = v20->_instanceId;
      testName = v20->_testName;
      v38 = v35;
      v39 = [(NSString *)testName UTF8String];
      *buf = 136315906;
      v47 = "[ThroughputDelegate initWithExecution:testName:withQueue:testEndpoint:withConfig:resultsObject:]";
      v48 = 1024;
      v49 = 100;
      v50 = 1024;
      v51 = instanceId;
      v52 = 2080;
      v53 = v39;
      _os_log_impl(&dword_25B962000, v38, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] - created Throughput instance with name %s", buf, 0x22u);
    }
  }

  v40 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v13 = a5;
  v6 = [(NetworkQualityExecutionsResult *)self->_results mutableURLSessionMetrics];
  v7 = [v6 valueForKey:self->_testName];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [(NetworkQualityExecutionsResult *)self->_results mutableURLSessionMetrics];
    [v8 setObject:v7 forKey:self->_testName];

    v9 = [v13 transactionMetrics];
    v10 = [v9 firstObject];

    v11 = [(NetworkQualityResult *)self->_results interfaceName];

    if (!v11)
    {
      v12 = [v10 _interfaceName];
      [(NetworkQualityResult *)self->_results setInterfaceName:v12];

      -[NetworkQualityResult setIsCellular:](self->_results, "setIsCellular:", [v10 isCellular]);
    }
  }

  [v7 addObject:v13];
}

- (void)dealloc
{
  tasks = self->_tasks;
  self->_tasks = 0;

  sessions = self->_sessions;
  self->_sessions = 0;

  probeSessions = self->_probeSessions;
  self->_probeSessions = 0;

  v6.receiver = self;
  v6.super_class = ThroughputDelegate;
  [(ThroughputDelegate *)&v6 dealloc];
}

- (void)addTasks
{
  v32 = *MEMORY[0x277D85DE8];
  if (self->_canceled)
  {
    goto LABEL_21;
  }

  if (self->_exitCriteriaMet)
  {
    goto LABEL_21;
  }

  if (self->_saturationReached)
  {
    goto LABEL_21;
  }

  v3 = [(NSMutableArray *)self->_tasks count];
  if (v3 >= [(ThroughputDelegate *)self maxFlows])
  {
    goto LABEL_21;
  }

  if ([(NSMutableArray *)self->_tasks count])
  {
    v4 = 1;
    goto LABEL_8;
  }

  v4 = [(ThroughputDelegate *)self minFlows];
  if (v4 >= 1)
  {
LABEL_8:
    v22 = v4;
    do
    {
      v5 = [(NSMutableArray *)self->_tasks count];
      if (v5 == [(ThroughputDelegate *)self maxFlows]|| self->_exitCriteriaMet)
      {
        break;
      }

      v6 = [(NetworkQualityExecutions *)self->_execution createDefaultNSURLSessionConfiguration];
      v7 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v6 delegate:self delegateQueue:self->_queue];
      [(NSMutableArray *)self->_sessions addObject:v7];
      v8 = [(ThroughputDelegate *)self createTaskWithRequest:self->_request session:v7];
      [v8 set_hostOverride:self->_testEndpoint];
      [(NSMutableArray *)self->_tasks addObject:v8];
      netqual_log_init();
      v9 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        instanceId = self->_instanceId;
        request = self->_request;
        *buf = 136316418;
        v25 = "[ThroughputDelegate addTasks]";
        v26 = 1024;
        v27 = 173;
        v28 = 1024;
        v29 = instanceId;
        v30 = 2112;
        *v31 = v8;
        *&v31[8] = 2112;
        *&v31[10] = v7;
        *&v31[18] = 2112;
        *&v31[20] = request;
        _os_log_impl(&dword_25B962000, v9, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] - added task %@ to %@ for %@", buf, 0x36u);
      }

      [v8 resume];

      --v4;
    }

    while (v4);
    v4 = v22;
  }

  [(ThroughputDelegate *)self updateResultsWithFlowCount];
  netqual_log_init();
  v12 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_instanceId;
    if (v4 <= 1)
    {
      v14 = &unk_25B97FCC3;
    }

    else
    {
      v14 = "s";
    }

    v15 = v4;
    tasks = self->_tasks;
    v17 = v12;
    v18 = [(NSMutableArray *)tasks count];
    *buf = 136316418;
    v25 = "[ThroughputDelegate addTasks]";
    v26 = 1024;
    v27 = 180;
    v28 = 1024;
    v29 = v13;
    v30 = 1024;
    *v31 = v15;
    *&v31[4] = 2080;
    *&v31[6] = v14;
    *&v31[14] = 2048;
    *&v31[16] = v18;
    _os_log_impl(&dword_25B962000, v17, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] Added %u more task%s, now %lu", buf, 0x32u);
  }

  v19 = dispatch_time(0, 1000000000);
  v20 = [(NSOperationQueue *)self->_queue underlyingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__ThroughputDelegate_addTasks__block_invoke;
  block[3] = &unk_279969378;
  block[4] = self;
  dispatch_after(v19, v20, block);

LABEL_21:
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __30__ThroughputDelegate_addTasks__block_invoke(uint64_t a1)
{
  [*(a1 + 32) addTasks];
  v2 = *(a1 + 32);

  return [v2 shareProgress];
}

- (id)createTaskWithRequest:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (int)executeTaskWithRequest:(id)a3 saturationHandler:(id)a4 completionHandler:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = MEMORY[0x277CBEAA8];
  v10 = a5;
  v11 = a4;
  v12 = [v9 date];
  objc_storeStrong(&self->_start, v12);
  objc_storeStrong(&self->_current, self->_start);
  v13 = MEMORY[0x25F873620](v11);

  saturationHandler = self->_saturationHandler;
  self->_saturationHandler = v13;

  v15 = MEMORY[0x25F873620](v10);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v15;

  v17 = [(ThroughputDelegate *)self amendRequest:v8];
  request = self->_request;
  self->_request = v17;

  netqual_log_init();
  v19 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    instanceId = self->_instanceId;
    v23 = 136315906;
    v24 = "[ThroughputDelegate executeTaskWithRequest:saturationHandler:completionHandler:]";
    v25 = 1024;
    v26 = 217;
    v27 = 1024;
    v28 = instanceId;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_25B962000, v19, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] Starting ... request: %@", &v23, 0x22u);
  }

  [(ThroughputDelegate *)self addTasks];

  v21 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  netqual_log_init();
  v8 = os_log_netqual;
  if (v7)
  {
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      instanceId = self->_instanceId;
      v13 = 136316162;
      v14 = "[ThroughputDelegate URLSession:didBecomeInvalidWithError:]";
      v15 = 1024;
      v16 = 227;
      v17 = 1024;
      v18 = instanceId;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_error_impl(&dword_25B962000, v8, OS_LOG_TYPE_ERROR, "%s:%u - [%d] Closing session %@ with error %@", &v13, 0x2Cu);
    }
  }

  else if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_instanceId;
    v13 = 136315906;
    v14 = "[ThroughputDelegate URLSession:didBecomeInvalidWithError:]";
    v15 = 1024;
    v16 = 229;
    v17 = 1024;
    v18 = v10;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_25B962000, v8, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] Closing session %@", &v13, 0x22u);
  }

  [(NSMutableArray *)self->_sessions removeObject:v6];
  [(NSMutableArray *)self->_probeSessions removeObject:v6];
  if (![(NSMutableArray *)self->_sessions count])
  {
    cancelCompletionHandler = self->_cancelCompletionHandler;
    if (cancelCompletionHandler)
    {
      cancelCompletionHandler[2](cancelCompletionHandler, v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v10)
  {
LABEL_4:
    netqual_log_init();
    v14 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      instanceId = self->_instanceId;
      v34 = 136316418;
      v35 = "[ThroughputDelegate URLSession:task:didCompleteWithError:]";
      v36 = 1024;
      v37 = 249;
      v38 = 1024;
      v39 = instanceId;
      v40 = 2112;
      v41 = v9;
      v42 = 2112;
      v43 = v8;
      v44 = 2112;
      v45 = v11;
      _os_log_impl(&dword_25B962000, v14, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] Closing task %@ of session %@ with error %@", &v34, 0x36u);
    }

    [(NSMutableArray *)self->_tasks removeObject:v9];
    if (!v11 && !self->_canceled && !self->_exitCriteriaMet && self->_saturationReached)
    {
      v16 = [v9 response];
      v17 = v16;
      if (v16)
      {
        if ([v16 statusCode] == 200)
        {
          v18 = [(NSMutableArray *)self->_tasks count];
          if (v18 < [(ThroughputDelegate *)self maxFlows])
          {
            netqual_log_init();
            v19 = os_log_netqual;
            if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
            {
              v20 = self->_instanceId;
              v34 = 136315650;
              v35 = "[ThroughputDelegate URLSession:task:didCompleteWithError:]";
              v36 = 1024;
              v37 = 277;
              v38 = 1024;
              v39 = v20;
              _os_log_impl(&dword_25B962000, v19, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] Task completed successfully, respawning to maintain flow count", &v34, 0x18u);
            }

            v21 = [(NetworkQualityExecutions *)self->_execution createDefaultNSURLSessionConfiguration];
            v22 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v21 delegate:self delegateQueue:self->_queue];
            [(NSMutableArray *)self->_sessions addObject:v22];
            v23 = [(ThroughputDelegate *)self createTaskWithRequest:self->_request session:v22];
            [v23 set_hostOverride:self->_testEndpoint];
            [(NSMutableArray *)self->_tasks addObject:v23];
            netqual_log_init();
            v24 = os_log_netqual;
            if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
            {
              v25 = self->_instanceId;
              request = self->_request;
              v34 = 136316418;
              v35 = "[ThroughputDelegate URLSession:task:didCompleteWithError:]";
              v36 = 1024;
              v37 = 288;
              v38 = 1024;
              v39 = v25;
              v40 = 2112;
              v41 = v23;
              v42 = 2112;
              v43 = v22;
              v44 = 2112;
              v45 = request;
              _os_log_impl(&dword_25B962000, v24, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] Respawned task %@ using session %@ for %@", &v34, 0x36u);
            }

            [v23 resume];
            [(ThroughputDelegate *)self updateResultsWithFlowCount];
          }
        }
      }
    }

    if (![(NSMutableArray *)self->_tasks count])
    {
      netqual_log_init();
      v27 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        v28 = self->_instanceId;
        v34 = 136315650;
        v35 = "[ThroughputDelegate URLSession:task:didCompleteWithError:]";
        v36 = 1024;
        v37 = 296;
        v38 = 1024;
        v39 = v28;
        _os_log_impl(&dword_25B962000, v27, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] Reaching completion", &v34, 0x18u);
      }

      error = self->_error;
      completionHandler = self->_completionHandler;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v12 = [(NSURLRequest *)v10 domain];
  if ([v12 isEqualToString:*MEMORY[0x277CCA738]])
  {
    v13 = [(NSURLRequest *)v11 code];

    if (v13 == -999)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  netqual_log_init();
  v31 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    v33 = self->_instanceId;
    v34 = 136316418;
    v35 = "[ThroughputDelegate URLSession:task:didCompleteWithError:]";
    v36 = 1024;
    v37 = 247;
    v38 = 1024;
    v39 = v33;
    v40 = 2112;
    v41 = v9;
    v42 = 2112;
    v43 = v8;
    v44 = 2112;
    v45 = v11;
    _os_log_error_impl(&dword_25B962000, v31, OS_LOG_TYPE_ERROR, "%s:%u - [%d] Force-closing task %@ of session %@ with error %@", &v34, 0x36u);
  }

  [(NSMutableArray *)self->_tasks removeObject:v9];
  if (!self->_error)
  {
    objc_storeStrong(&self->_error, a5);
  }

  if (!self->_canceled)
  {
    objc_storeStrong(&self->_error, a5);
    completionHandler = self->_completionHandler;
    error = self->_error;
LABEL_30:
    completionHandler[2](completionHandler, error);
  }

LABEL_31:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v21[3] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a6;
  if ([v8 statusCode] == 200)
  {
    v9[2](v9, 1);
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected HTTP status code 200, got %lu", objc_msgSend(v8, "statusCode")];
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [ThroughputDelegate URLSession:dataTask:didReceiveResponse:completionHandler:];
    }

    v11 = MEMORY[0x277CCA9B8];
    v20[0] = @"statusCode";
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "statusCode")}];
    v13 = [v12 stringValue];
    v21[0] = v13;
    v20[1] = @"URL";
    v14 = [(NSURLRequest *)self->_request URL];
    v20[2] = *MEMORY[0x277CCA450];
    v21[1] = v14;
    v21[2] = v10;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v15 = v19 = v10;
    v16 = [v11 errorWithDomain:@"NetworkQualityErrorDomain" code:1003 userInfo:v15];

    if (!self->_canceled)
    {
      objc_storeStrong(&self->_error, v16);
      error = self->_error;
      (*(self->_completionHandler + 2))();
    }

    v9[2](v9, 0);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)addNewThroughputMeasurement:(unint64_t)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEAA8] date];
  self->_currentBytesTransferred += a3;
  [(ThroughputDelegate *)self updateResultsWithByteCount];
  if (![(ThroughputDelegate *)self checkLimits])
  {
    current = self->_current;
    self->_byte_accumulator += a3;
    [v5 timeIntervalSinceDate:current];
    v8 = v7;
    if (v7 >= 0.2)
    {
      v9 = ((8 * self->_byte_accumulator) / v7);
      netqual_log_init();
      v10 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
      {
        instanceId = self->_instanceId;
        saturation = self->_saturation;
        v24 = v10;
        [(SaturationDetection *)saturation getAverage];
        currentBytesTransferred = self->_currentBytesTransferred;
        byte_accumulator = self->_byte_accumulator;
        v28 = 136316930;
        v29 = "[ThroughputDelegate addNewThroughputMeasurement:]";
        v30 = 1024;
        v31 = 363;
        v32 = 1024;
        v33 = instanceId;
        v34 = 2048;
        v35 = vcvtd_n_f64_s64(v9, 0x14uLL);
        v36 = 2048;
        v37 = v26 * 0.000000953674316;
        v38 = 2048;
        v39 = currentBytesTransferred;
        v40 = 2048;
        v41 = byte_accumulator;
        v42 = 2048;
        v43 = v8;
        _os_log_debug_impl(&dword_25B962000, v24, OS_LOG_TYPE_DEBUG, "%s:%u - [%d] throughput is now: %.3f Mbps avg %.3f Mbps at %ld bytes transferred, accumulated %ld over %.3f seconds", &v28, 0x4Au);
      }

      self->_byte_accumulator = 0;
      objc_storeStrong(&self->_current, v5);
      *&v11 = v9;
      if ([(SaturationDetection *)self->_saturation add:v11]&& !self->_saturationReached)
      {
        netqual_log_init();
        v14 = os_log_netqual;
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
        {
          v15 = self->_instanceId;
          v16 = self->_saturation;
          v17 = v14;
          [(SaturationDetection *)v16 getSaturation];
          v28 = 136316162;
          v19 = self->_currentBytesTransferred;
          v29 = "[ThroughputDelegate addNewThroughputMeasurement:]";
          v30 = 1024;
          v31 = 370;
          v32 = 1024;
          v33 = v15;
          v34 = 2048;
          v35 = v18 * 0.000000953674316;
          v36 = 2048;
          v37 = *&v19;
          _os_log_impl(&dword_25B962000, v17, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] achieved saturation at %.3f Mbps with %ld bytes", &v28, 0x2Cu);
        }

        self->_saturationReached = 1;
        [(SaturationDetection *)self->_saturation getSaturation];
        [(ThroughputDelegate *)self updateResultsWithThroughput:v20 confidence:3];
        saturationHandler = self->_saturationHandler;
        if (saturationHandler)
        {
          saturationHandler[2]();
        }
      }

      else
      {
        [(SaturationDetection *)self->_saturation getAverage];
        [(ThroughputDelegate *)self updateResultsWithThroughput:v12 confidence:2];
        [(ThroughputDelegate *)self shareProgress];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v11 = a4;
  v7 = a5;
  if ([(NetworkQualityConfiguration *)self->_nqConfig validateCertificate])
  {
    v7[2](v7, 1, 0);
  }

  else
  {
    v8 = MEMORY[0x277CCACF0];
    v9 = [v11 protectionSpace];
    v10 = [v8 credentialForTrust:{objc_msgSend(v9, "serverTrust")}];
    (v7)[2](v7, 0, v10);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v12 = a5;
  v8 = a6;
  if ([(NetworkQualityConfiguration *)self->_nqConfig validateCertificate])
  {
    v8[2](v8, 1, 0);
  }

  else
  {
    v9 = MEMORY[0x277CCACF0];
    v10 = [v12 protectionSpace];
    v11 = [v9 credentialForTrust:{objc_msgSend(v10, "serverTrust")}];
    (v8)[2](v8, 0, v11);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = a7;
  netqual_log_init();
  v13 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    instanceId = self->_instanceId;
    v16 = v13;
    v17 = [v11 URL];
    v18 = [v10 originalRequest];
    v19 = [v18 URL];
    v20 = 136316162;
    v21 = "[ThroughputDelegate URLSession:task:willPerformHTTPRedirection:newRequest:completionHandler:]";
    v22 = 1024;
    v23 = 410;
    v24 = 1024;
    v25 = instanceId;
    v26 = 2112;
    v27 = v17;
    v28 = 2112;
    v29 = v19;
    _os_log_error_impl(&dword_25B962000, v16, OS_LOG_TYPE_ERROR, "%s:%u - [%d] Unexpected redirect to %@ for %@", &v20, 0x2Cu);
  }

  v12[2](v12, 0);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cancelWithCompletionHandler:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  self->_canceled = 1;
  v4 = MEMORY[0x25F873620](a3, a2);
  cancelCompletionHandler = self->_cancelCompletionHandler;
  self->_cancelCompletionHandler = v4;

  saturationHandler = self->_saturationHandler;
  self->_saturationHandler = 0;

  if ([(NSMutableArray *)self->_sessions count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_sessions;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v15 + 1) + 8 * v11++) invalidateAndCancel];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else if (self->_cancelCompletionHandler)
  {
    v12 = [(NSOperationQueue *)self->_queue underlyingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__ThroughputDelegate_cancelWithCompletionHandler___block_invoke;
    block[3] = &unk_279969378;
    block[4] = self;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:dataTask:didReceiveResponse:completionHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end