@interface WorkingLatencyURLSessionDelegate
- (BOOL)checkLimits;
- (WorkingLatencyURLSessionDelegate)initWithConfiguration:(id)configuration testName:(id)name queue:(id)queue testEndpoint:(id)endpoint resultsObject:(id)object resultsDelegate:(id)delegate urlSessions:(id)sessions tcpKey:(id)self0 tlsKey:(id)self1 reqrespKey:(id)self2 selfKey:(id)self3;
- (int64_t)currentResponsivenessConfidenceValue;
- (int64_t)getProbeTimeout;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)executeTaskWithRequest:(id)request completionHandler:(id)handler;
- (void)scheduleNewTaskForeign;
- (void)scheduleNewTaskSelf;
- (void)waitForSaturation:(id)saturation;
@end

@implementation WorkingLatencyURLSessionDelegate

- (WorkingLatencyURLSessionDelegate)initWithConfiguration:(id)configuration testName:(id)name queue:(id)queue testEndpoint:(id)endpoint resultsObject:(id)object resultsDelegate:(id)delegate urlSessions:(id)sessions tcpKey:(id)self0 tlsKey:(id)self1 reqrespKey:(id)self2 selfKey:(id)self3
{
  configurationCopy = configuration;
  sessionsCopy = sessions;
  v56.receiver = self;
  v56.super_class = WorkingLatencyURLSessionDelegate;
  v20 = [(LatencyURLSessionDelegate *)&v56 initWithConfiguration:configurationCopy testName:name queue:queue testEndpoint:endpoint resultsObject:object resultsDelegate:delegate tcpKey:key tlsKey:tlsKey reqrespKey:reqrespKey selfKey:selfKey];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_workingSessions, sessions);
    v21->_probeLoadConnections = 1;
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tcpTmpArray = v21->_tcpTmpArray;
    v21->_tcpTmpArray = v22;

    v24 = [TrimmedMean alloc];
    v25 = ([(NetworkQualityConfiguration *)v21->super._config movingAveragePeriod]/ 0.2);
    *&v26 = [(NetworkQualityConfiguration *)v21->super._config trimmedMeanThreshold]/ 100.0;
    v27 = [(TrimmedMean *)v24 initWithSize:v25 withTrimAt:v26];
    tcpTrim = v21->_tcpTrim;
    v21->_tcpTrim = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tlsTmpArray = v21->_tlsTmpArray;
    v21->_tlsTmpArray = v29;

    v31 = [TrimmedMean alloc];
    v32 = ([(NetworkQualityConfiguration *)v21->super._config movingAveragePeriod]/ 0.2);
    *&v33 = [(NetworkQualityConfiguration *)v21->super._config trimmedMeanThreshold]/ 100.0;
    v34 = [(TrimmedMean *)v31 initWithSize:v32 withTrimAt:v33];
    tlsTrim = v21->_tlsTrim;
    v21->_tlsTrim = v34;

    v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    h2TmpArray = v21->_h2TmpArray;
    v21->_h2TmpArray = v36;

    v38 = [TrimmedMean alloc];
    v39 = ([(NetworkQualityConfiguration *)v21->super._config movingAveragePeriod]/ 0.2);
    *&v40 = [(NetworkQualityConfiguration *)v21->super._config trimmedMeanThreshold]/ 100.0;
    v41 = [(TrimmedMean *)v38 initWithSize:v39 withTrimAt:v40];
    h2Trim = v21->_h2Trim;
    v21->_h2Trim = v41;

    v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
    selfTmpArray = v21->_selfTmpArray;
    v21->_selfTmpArray = v43;

    v45 = [TrimmedMean alloc];
    v46 = ([(NetworkQualityConfiguration *)v21->super._config movingAveragePeriod]/ 0.2);
    *&v47 = [(NetworkQualityConfiguration *)v21->super._config trimmedMeanThreshold]/ 100.0;
    v48 = [(TrimmedMean *)v45 initWithSize:v46 withTrimAt:v47];
    selfTrim = v21->_selfTrim;
    v21->_selfTrim = v48;

    v50 = [[LatencySaturationDetection alloc] initWithConfig:configurationCopy];
    saturation = v21->_saturation;
    v21->_saturation = v50;

    v21->_saturation_reached = 0;
    v21->_exit_value = 60000.0 / [configurationCopy latencyCriteria];
    v52 = [MEMORY[0x277CBEAA8] now];
    start = v21->_start;
    v21->_start = v52;

    objc_storeStrong(&v21->_current, v21->_start);
  }

  return v21;
}

- (int64_t)getProbeTimeout
{
  currentThroughput = [(NetworkQualityExecutions *)self->super._execution currentThroughput];
  if (![(NetworkQualityExecutions *)self->super._execution currentThroughput])
  {
    return 1000000000;
  }

  v4 = 24000.0 / ((currentThroughput * 5.0) / 100.0);
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  if (v4 < 0.04)
  {
    v4 = 0.04;
  }

  return (v4 * 1000000000.0);
}

- (void)scheduleNewTaskSelf
{
  v31 = *MEMORY[0x277D85DE8];
  if (!self->super._canceled && self->_probeLoadConnections)
  {
    if ([(NSMutableArray *)self->_workingSessions count]&& [(NSMutableArray *)self->super._tasks count]<= 0x32 && [(NSMutableArray *)self->super._sessions count]< 0x33)
    {
      v6 = [(NSMutableArray *)self->_workingSessions objectAtIndex:arc4random_uniform([(NSMutableArray *)self->_workingSessions count])];
      v7 = [v6 dataTaskWithRequest:self->super._request];
      [v7 setDelegate:self];
      [v7 set_hostOverride:self->super._testEndpoint];
      [(NSMutableArray *)self->super._tasks addObject:v7];
      getProbeTimeout = [(WorkingLatencyURLSessionDelegate *)self getProbeTimeout];
      netqual_log_init();
      v9 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        tasks = self->super._tasks;
        v11 = v9;
        LODWORD(tasks) = [(NSMutableArray *)tasks count];
        v12 = [(NSMutableArray *)self->super._sessions count];
        *buf = 136316674;
        v18 = "[WorkingLatencyURLSessionDelegate scheduleNewTaskSelf]";
        v19 = 1024;
        v20 = 787;
        v21 = 2112;
        v22 = v7;
        v23 = 2112;
        v24 = v6;
        v25 = 1024;
        v26 = tasks;
        v27 = 1024;
        v28 = v12;
        v29 = 2048;
        v30 = getProbeTimeout / 0xF4240;
        _os_log_impl(&dword_25B962000, v11, OS_LOG_TYPE_DEFAULT, "%s:%u - Created Self WorkingLatencyTask %@ on session %@, task-count %u session-count %u next in %llu ms", buf, 0x3Cu);
      }

      [v7 resume];
      v13 = dispatch_time(0, getProbeTimeout);
      underlyingQueue = [(NSOperationQueue *)self->super._queue underlyingQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __55__WorkingLatencyURLSessionDelegate_scheduleNewTaskSelf__block_invoke_240;
      v15[3] = &unk_279969378;
      v15[4] = self;
      dispatch_after(v13, underlyingQueue, v15);
    }

    else
    {
      v3 = dispatch_time(0, [(WorkingLatencyURLSessionDelegate *)self getProbeTimeout]);
      underlyingQueue2 = [(NSOperationQueue *)self->super._queue underlyingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__WorkingLatencyURLSessionDelegate_scheduleNewTaskSelf__block_invoke;
      block[3] = &unk_279969378;
      block[4] = self;
      dispatch_after(v3, underlyingQueue2, block);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)scheduleNewTaskForeign
{
  v32 = *MEMORY[0x277D85DE8];
  if (!self->super._canceled)
  {
    if ([(NSMutableArray *)self->super._tasks count]<= 0x32 && [(NSMutableArray *)self->super._sessions count]< 0x33)
    {
      createDefaultNSURLSessionConfiguration = [(NetworkQualityExecutions *)self->super._execution createDefaultNSURLSessionConfiguration];
      v6 = [MEMORY[0x277CCAD30] sessionWithConfiguration:createDefaultNSURLSessionConfiguration delegate:self delegateQueue:self->super._queue];
      [(NSMutableArray *)self->super._sessions addObject:v6];
      v7 = [v6 dataTaskWithRequest:self->super._request];
      [v7 setDelegate:self];
      [v7 set_hostOverride:self->super._testEndpoint];
      [(NSMutableArray *)self->super._tasks addObject:v7];
      getProbeTimeout = [(WorkingLatencyURLSessionDelegate *)self getProbeTimeout];
      netqual_log_init();
      v9 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        tasks = self->super._tasks;
        v11 = v9;
        LODWORD(tasks) = [(NSMutableArray *)tasks count];
        v12 = [(NSMutableArray *)self->super._sessions count];
        *buf = 136316674;
        v19 = "[WorkingLatencyURLSessionDelegate scheduleNewTaskForeign]";
        v20 = 1024;
        v21 = 824;
        v22 = 2112;
        v23 = v7;
        v24 = 2112;
        v25 = v6;
        v26 = 1024;
        v27 = tasks;
        v28 = 1024;
        v29 = v12;
        v30 = 2048;
        v31 = getProbeTimeout / 0xF4240;
        _os_log_impl(&dword_25B962000, v11, OS_LOG_TYPE_DEFAULT, "%s:%u - Created Foreign WorkingLatencyTask %@ on session %@, task-count %u session-count %u next in %llu ms", buf, 0x3Cu);
      }

      [v7 resume];
      v13 = dispatch_time(0, getProbeTimeout);
      underlyingQueue = [(NSOperationQueue *)self->super._queue underlyingQueue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __58__WorkingLatencyURLSessionDelegate_scheduleNewTaskForeign__block_invoke_241;
      v16[3] = &unk_279969378;
      v16[4] = self;
      dispatch_after(v13, underlyingQueue, v16);
    }

    else
    {
      v3 = dispatch_time(0, [(WorkingLatencyURLSessionDelegate *)self getProbeTimeout]);
      underlyingQueue2 = [(NSOperationQueue *)self->super._queue underlyingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__WorkingLatencyURLSessionDelegate_scheduleNewTaskForeign__block_invoke;
      block[3] = &unk_279969378;
      block[4] = self;
      dispatch_after(v3, underlyingQueue2, block);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)executeTaskWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  v7 = MEMORY[0x25F873620](handler);
  completionHandler = self->super._completionHandler;
  self->super._completionHandler = v7;

  request = self->super._request;
  self->super._request = requestCopy;
  v10 = requestCopy;

  v11 = dispatch_time(0, [(WorkingLatencyURLSessionDelegate *)self getProbeTimeout]);
  underlyingQueue = [(NSOperationQueue *)self->super._queue underlyingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__WorkingLatencyURLSessionDelegate_executeTaskWithRequest_completionHandler___block_invoke;
  block[3] = &unk_279969378;
  block[4] = self;
  dispatch_after(v11, underlyingQueue, block);

  v13 = dispatch_time(0, [(WorkingLatencyURLSessionDelegate *)self getProbeTimeout]);
  underlyingQueue2 = [(NSOperationQueue *)self->super._queue underlyingQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__WorkingLatencyURLSessionDelegate_executeTaskWithRequest_completionHandler___block_invoke_2;
  v15[3] = &unk_279969378;
  v15[4] = self;
  dispatch_after(v13, underlyingQueue2, v15);
}

- (void)waitForSaturation:(id)saturation
{
  v4 = MEMORY[0x25F873620](saturation, a2);
  saturationHandler = self->super._saturationHandler;
  self->super._saturationHandler = v4;

  MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  [(NSMutableArray *)self->super._tasks removeObject:task];
  if (!self->super._canceled)
  {
    if ([(NSMutableArray *)self->super._sessions indexOfObject:sessionCopy]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      [sessionCopy invalidateAndCancel];
    }

    if (errorCopy)
    {
      netqual_log_init();
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        [WorkingLatencyURLSessionDelegate URLSession:task:didCompleteWithError:];
      }

      if (!self->super._canceled)
      {
        objc_storeStrong(&self->super._error, error);
        error = self->super._error;
        (*(self->super._completionHandler + 2))();
      }
    }
  }
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  v209 = *MEMORY[0x277D85DE8];
  v8 = COERCE_DOUBLE(session);
  taskCopy = task;
  metricsCopy = metrics;
  if (!self->_saturation_reached && ![(WorkingLatencyURLSessionDelegate *)self checkLimits])
  {
    v11 = [(LatencyURLSessionDelegate *)self didFinishCollectingMetrics:metricsCopy task:taskCopy];
    if ((v11 & 0x80000000) == 0)
    {
      v12 = v11;
      transactionMetrics = [metricsCopy transactionMetrics];
      v170 = [transactionMetrics objectAtIndex:v12];

      if ([(NSMutableArray *)self->_workingSessions indexOfObject:*&v8]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        if (([v170 isReusedConnection] & 1) == 0)
        {
          netqual_log_init();
          v33 = os_log_netqual;
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            *&buf[4] = "[WorkingLatencyURLSessionDelegate URLSession:task:didFinishCollectingMetrics:]";
            *&buf[12] = 1024;
            *&buf[14] = 912;
            *&buf[18] = 2080;
            *&buf[20] = "[WorkingLatencyURLSessionDelegate URLSession:task:didFinishCollectingMetrics:]";
            *&buf[28] = 2112;
            *&buf[30] = taskCopy;
            *&buf[38] = 2112;
            v192 = v8;
            _os_log_impl(&dword_25B962000, v33, OS_LOG_TYPE_DEFAULT, "%s:%u - %s - request for task %@ was not reused on session %@", buf, 0x30u);
          }

          self->_probeLoadConnections = 0;
          goto LABEL_109;
        }

        if (!self->_probeLoadConnections)
        {
LABEL_109:

          goto LABEL_110;
        }
      }

      if ([(NSMutableArray *)self->super._sessions indexOfObject:*&v8]== 0x7FFFFFFFFFFFFFFFLL)
      {
        v165 = self->super._selfKey;
        selfTmpArray = self->_selfTmpArray;
        v15 = MEMORY[0x277CCABB0];
        obj = [v170 responseEndDate];
        requestStartDate = [v170 requestStartDate];
        [obj timeIntervalSinceDate:requestStartDate];
        v17 = [v15 numberWithInt:(v16 * 1000.0)];
        v18 = selfTmpArray;
        v19 = v17;
        [(NSMutableArray *)v18 addObject:v17];
        goto LABEL_63;
      }

      workingLatencyResults = [(NetworkQualityExecutionsResult *)self->super._results workingLatencyResults];
      obj = [workingLatencyResults valueForKey:self->super._tcpKey];

      if (!obj)
      {
        obj = objc_alloc_init(MEMORY[0x277CBEB18]);
        workingLatencyResults2 = [(NetworkQualityExecutionsResult *)self->super._results workingLatencyResults];
        [workingLatencyResults2 setObject:obj forKey:self->super._tcpKey];
      }

      workingLatencyResults3 = [(NetworkQualityExecutionsResult *)self->super._results workingLatencyResults];
      requestStartDate = [workingLatencyResults3 valueForKey:self->super._tlsKey];

      if (!requestStartDate)
      {
        requestStartDate = objc_alloc_init(MEMORY[0x277CBEB18]);
        workingLatencyResults4 = [(NetworkQualityExecutionsResult *)self->super._results workingLatencyResults];
        [workingLatencyResults4 setObject:requestStartDate forKey:self->super._tlsKey];
      }

      mutableOtherValues = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
      v164 = [mutableOtherValues valueForKey:@"ecn_values"];

      if (!v164)
      {
        v164 = objc_alloc_init(MEMORY[0x277CBEB38]);
        mutableOtherValues2 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
        [mutableOtherValues2 setObject:v164 forKey:@"ecn_values"];
      }

      mutableOtherValues3 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
      v162 = [mutableOtherValues3 valueForKey:@"l4s_enablement"];

      if (!v162)
      {
        v162 = objc_alloc_init(MEMORY[0x277CBEB38]);
        mutableOtherValues4 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
        [mutableOtherValues4 setObject:v162 forKey:@"l4s_enablement"];
      }

      report = [v170 _establishmentReport];
      if (!report)
      {
LABEL_28:
        networkProtocolName = [v170 networkProtocolName];
        if (networkProtocolName)
        {
          mutableOtherValues5 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
          v41 = [mutableOtherValues5 objectForKey:@"protocols_seen"];

          if (!v41)
          {
            v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
            mutableOtherValues6 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
            [mutableOtherValues6 setValue:v41 forKey:@"protocols_seen"];
          }

          v43 = [v41 objectForKey:networkProtocolName];
          if (v43)
          {
            v44 = v43;
          }

          else
          {
            v44 = &unk_286D22CA0;
          }

          v45 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v44, "intValue") + 1}];

          [v41 setObject:v45 forKey:networkProtocolName];
        }

        mutableOtherValues7 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
        v47 = [mutableOtherValues7 objectForKey:@"proxy_state"];

        if (!v47)
        {
          v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
          mutableOtherValues8 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
          [mutableOtherValues8 setValue:v47 forKey:@"proxy_state"];
        }

        isProxyConnection = [v170 isProxyConnection];
        v50 = @"not_proxied";
        if (isProxyConnection)
        {
          v50 = @"proxied";
        }

        v51 = v50;
        v52 = [v47 objectForKey:v51];
        if (v52)
        {
          v53 = v52;
        }

        else
        {
          v53 = &unk_286D22CA0;
        }

        v54 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v53, "intValue") + 1}];

        [v47 setObject:v54 forKey:v51];
        mutableOtherValues9 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
        v56 = [mutableOtherValues9 objectForKey:@"interface-type"];

        if (!v56)
        {
          v56 = objc_alloc_init(MEMORY[0x277CBEB38]);
          mutableOtherValues10 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
          [mutableOtherValues10 setValue:v56 forKey:@"interface-type"];
        }

        _interfaceName = [v170 _interfaceName];
        v59 = _interfaceName;
        [_interfaceName UTF8String];
        v60 = nw_interface_create_with_name();

        v61 = MEMORY[0x277CCACA8];
        type = nw_interface_get_type(v60);
        v63 = [v61 stringWithUTF8String:nw_interface_type_to_string(type)];
        v64 = [v56 objectForKey:v63];
        if (v64)
        {
          v65 = v64;
        }

        else
        {
          v65 = &unk_286D22CA0;
        }

        v66 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v65, "intValue") + 1}];

        [v56 setObject:v66 forKey:v63];
        mutableOtherValues11 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
        v68 = [mutableOtherValues11 objectForKey:@"rat"];

        if (!v68)
        {
          v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
          mutableOtherValues12 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
          [mutableOtherValues12 setValue:v68 forKey:@"rat"];
        }

        if (nw_interface_get_radio_type())
        {
          v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_interface_radio_type_to_string()];
        }

        else
        {
          v70 = @"unknown";
        }

        v71 = [v68 objectForKey:v70];

        if (v71)
        {
          v72 = v71;
        }

        else
        {
          v72 = &unk_286D22CA0;
        }

        v73 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v72, "intValue") + 1}];

        [v68 setObject:v73 forKey:v70];
        mutableOtherValues13 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
        v75 = [mutableOtherValues13 objectForKey:@"multipath"];

        if (!v75)
        {
          v75 = objc_alloc_init(MEMORY[0x277CBEB38]);
          mutableOtherValues14 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
          [mutableOtherValues14 setValue:v75 forKey:@"multipath"];
        }

        isMultipath = [v170 isMultipath];
        v78 = @"disabled";
        if (isMultipath)
        {
          v78 = @"negotiated";
        }

        v79 = v78;
        v80 = [v75 objectForKey:v79];
        if (v80)
        {
          v81 = v80;
        }

        else
        {
          v81 = &unk_286D22CA0;
        }

        v82 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v81, "intValue") + 1}];

        [v75 setObject:v82 forKey:v79];
        v165 = self->super._reqrespKey;
        h2TmpArray = self->_h2TmpArray;
        v84 = MEMORY[0x277CCABB0];
        responseEndDate = [v170 responseEndDate];
        requestStartDate2 = [v170 requestStartDate];
        [responseEndDate timeIntervalSinceDate:requestStartDate2];
        v88 = [v84 numberWithInt:(v87 * 1000.0)];
        [(NSMutableArray *)h2TmpArray addObject:v88];

        v19 = v164;
LABEL_63:

        workingLatencyResults5 = [(NetworkQualityExecutionsResult *)self->super._results workingLatencyResults];
        v169 = [workingLatencyResults5 valueForKey:v165];

        if (!v169)
        {
          v169 = objc_alloc_init(MEMORY[0x277CBEB18]);
          workingLatencyResults6 = [(NetworkQualityExecutionsResult *)self->super._results workingLatencyResults];
          [workingLatencyResults6 setObject:v169 forKey:v165];
        }

        v91 = MEMORY[0x277CCABB0];
        responseEndDate2 = [v170 responseEndDate];
        requestStartDate3 = [v170 requestStartDate];
        [responseEndDate2 timeIntervalSinceDate:requestStartDate3];
        v95 = [v91 numberWithInt:(v94 * 1000.0)];
        [v169 addObject:v95];

        obja = [MEMORY[0x277CBEAA8] now];
        [obja timeIntervalSinceDate:self->_start];
        if (v96 < 0.2)
        {
          goto LABEL_108;
        }

        objc_storeStrong(&self->_start, obja);
        [(TrimmedMean *)self->_tcpTrim add:self->_tcpTmpArray];
        v97 = objc_alloc_init(MEMORY[0x277CBEB18]);
        tcpTmpArray = self->_tcpTmpArray;
        self->_tcpTmpArray = v97;

        [(TrimmedMean *)self->_tlsTrim add:self->_tlsTmpArray];
        v99 = objc_alloc_init(MEMORY[0x277CBEB18]);
        tlsTmpArray = self->_tlsTmpArray;
        self->_tlsTmpArray = v99;

        [(TrimmedMean *)self->_h2Trim add:self->_h2TmpArray];
        v101 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v102 = self->_h2TmpArray;
        self->_h2TmpArray = v101;

        [(TrimmedMean *)self->_selfTrim add:self->_selfTmpArray];
        v103 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v104 = self->_selfTmpArray;
        self->_selfTmpArray = v103;

        [(TrimmedMean *)self->_tcpTrim getTrimmedMean];
        v106 = v105;
        [(TrimmedMean *)self->_tlsTrim getTrimmedMean];
        v108 = v107;
        [(TrimmedMean *)self->_h2Trim getTrimmedMean];
        v110 = v109;
        [(TrimmedMean *)self->_selfTrim getTrimmedMean];
        v112 = *&v111;
        v113 = fabsf(v106);
        v114 = fabsf(v108);
        v115 = fabsf(v110);
        if (v113 >= 0.00000011921 || v114 >= 0.00000011921 || (v116 = 0.0, v115 >= 0.00000011921))
        {
          v117 = v106 != 0.0;
          if (v108 != 0.0)
          {
            ++v117;
          }

          if (v110 != 0.0)
          {
            ++v117;
          }

          v116 = ((v106 + v108) + v110) / v117;
        }

        v118 = fabsf(*&v111);
        if (fabsf(v116) < 0.00000011921)
        {
          HIDWORD(v111) = 872415232;
          if (v118 < 0.00000011921)
          {
LABEL_108:

            goto LABEL_109;
          }
        }

        else
        {
          *&v111 = LODWORD(v116) | 0x3400000000000000;
          if (v118 >= 0.00000011921)
          {
            *&v111 = (v112 + v116) * 0.5;
          }
        }

        v163 = v114;
        v159 = v118;
        reporta = v115;
        v119 = 60000.0 / *&v111;
        *&v111 = 60000.0 / *&v111;
        v120 = [(SaturationDetection *)self->_saturation add:v111];
        if (v120 && ([(NetworkQualityExecutions *)self->super._execution throughputSaturated]|| [(NetworkQualityExecutions *)self->super._execution throughputMetExitCriteria]))
        {
          if (self->super._saturationHandler)
          {
            self->_saturation_reached = 1;
          }

          [(SaturationDetection *)self->_saturation getSaturation];
        }

        else
        {
          [(SaturationDetection *)self->_saturation getAverage];
        }

        v122 = v121;
        netqual_log_init();
        v123 = os_log_netqual;
        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
        {
          saturation_reached = self->_saturation_reached;
          throughputSaturated = [(NetworkQualityExecutions *)self->super._execution throughputSaturated];
          throughputMetExitCriteria = [(NetworkQualityExecutions *)self->super._execution throughputMetExitCriteria];
          *buf = 136318210;
          *&buf[4] = "[WorkingLatencyURLSessionDelegate URLSession:task:didFinishCollectingMetrics:]";
          *&buf[12] = 1024;
          *&buf[14] = 1173;
          *&buf[18] = 2048;
          *&buf[20] = v119;
          *&buf[28] = 2048;
          *&buf[30] = v122;
          *&buf[38] = 2048;
          v192 = v106;
          v193 = 2048;
          v194 = v108;
          v195 = 2048;
          v196 = v110;
          v197 = 2048;
          v198 = v116;
          v199 = 2048;
          v200 = v112;
          v201 = 1024;
          v202 = v120;
          v203 = 1024;
          v204 = saturation_reached;
          v205 = 1024;
          v206 = throughputSaturated;
          v207 = 1024;
          v208 = throughputMetExitCriteria;
          _os_log_impl(&dword_25B962000, v123, OS_LOG_TYPE_DEFAULT, "%s:%u - Responsiveness: %.3f, Saturated: %.3f tcpMean: %.3f tlsMean: %.3f rrMean %.3f foreignMean %.3f srrMean %.3f sd=%d sr=%d exec->ts=%d, exec->tmec=%d", buf, 0x70u);
        }

        isDownlink = self->isDownlink;
        *&v128 = v122;
        v129 = [MEMORY[0x277CCABB0] numberWithFloat:v128];
        results = self->super._results;
        if (isDownlink)
        {
          downlinkResponsiveness = [(NetworkQualityResult *)results downlinkResponsiveness];
          [downlinkResponsiveness setValue:v129];

          v132 = MEMORY[0x277CCABB0];
          downlinkResponsiveness2 = [(NetworkQualityResult *)self->super._results downlinkResponsiveness];
          value = [downlinkResponsiveness2 value];
          v135 = [v132 numberWithLong:{+[NetworkQualityResult ratingForResponsivenessScore:](NetworkQualityResult, "ratingForResponsivenessScore:", objc_msgSend(value, "integerValue"))}];
          downlinkResponsiveness3 = [(NetworkQualityResult *)self->super._results downlinkResponsiveness];
          [downlinkResponsiveness3 setRating:v135];

          downlinkResponsiveness4 = [(NetworkQualityResult *)self->super._results downlinkResponsiveness];
          [downlinkResponsiveness4 updateConfidence:{-[WorkingLatencyURLSessionDelegate currentResponsivenessConfidenceValue](self, "currentResponsivenessConfidenceValue")}];

          if (v113 >= 0.00000011921)
          {
            v138.n128_f32[0] = 60000.0 / v106;
            v140 = [MEMORY[0x277CCABB0] numberWithFloat:v138.n128_f64[0]];
            [(NetworkQualityResult *)self->super._results setDownlinkTCPResponsiveness:v140];
          }

          HIDWORD(v141) = 872415232;
          v139.n128_f32[0] = v163;
          if (v163 >= 0.00000011921)
          {
            *&v141 = 60000.0 / v108;
            v142 = [MEMORY[0x277CCABB0] numberWithFloat:{v141, v139.n128_f64[0]}];
            [(NetworkQualityResult *)self->super._results setDownlinkTLSResponsiveness:v142];
          }

          HIDWORD(v143) = 872415232;
          v139.n128_f32[0] = reporta;
          if (reporta >= 0.00000011921)
          {
            *&v143 = 60000.0 / v110;
            v144 = [MEMORY[0x277CCABB0] numberWithFloat:{v143, v139.n128_f64[0]}];
            [(NetworkQualityResult *)self->super._results setDownlinkHTTPForeignResponsiveness:v144];
          }

          v138.n128_u64[0] = 0x3400000034000000;
          v139.n128_f32[0] = v159;
          if (v159 < 0.00000011921)
          {
            goto LABEL_105;
          }

          v138.n128_f32[0] = 60000.0 / v112;
          v145 = [MEMORY[0x277CCABB0] numberWithFloat:{v138.n128_f64[0], v139.n128_f64[0]}];
          [(NetworkQualityResult *)self->super._results setDownlinkHTTPSelfResponsiveness:v145];
        }

        else
        {
          uplinkResponsiveness = [(NetworkQualityResult *)results uplinkResponsiveness];
          [uplinkResponsiveness setValue:v129];

          v147 = MEMORY[0x277CCABB0];
          uplinkResponsiveness2 = [(NetworkQualityResult *)self->super._results uplinkResponsiveness];
          value2 = [uplinkResponsiveness2 value];
          v150 = [v147 numberWithLong:{+[NetworkQualityResult ratingForResponsivenessScore:](NetworkQualityResult, "ratingForResponsivenessScore:", objc_msgSend(value2, "integerValue"))}];
          uplinkResponsiveness3 = [(NetworkQualityResult *)self->super._results uplinkResponsiveness];
          [uplinkResponsiveness3 setRating:v150];

          uplinkResponsiveness4 = [(NetworkQualityResult *)self->super._results uplinkResponsiveness];
          [uplinkResponsiveness4 updateConfidence:{-[WorkingLatencyURLSessionDelegate currentResponsivenessConfidenceValue](self, "currentResponsivenessConfidenceValue")}];

          if (v113 >= 0.00000011921)
          {
            v138.n128_f32[0] = 60000.0 / v106;
            v153 = [MEMORY[0x277CCABB0] numberWithFloat:v138.n128_f64[0]];
            [(NetworkQualityResult *)self->super._results setUplinkTCPResponsiveness:v153];
          }

          HIDWORD(v154) = 872415232;
          v139.n128_f32[0] = v163;
          if (v163 >= 0.00000011921)
          {
            *&v154 = 60000.0 / v108;
            v155 = [MEMORY[0x277CCABB0] numberWithFloat:{v154, v139.n128_f64[0]}];
            [(NetworkQualityResult *)self->super._results setUplinkTLSResponsiveness:v155];
          }

          HIDWORD(v156) = 872415232;
          v139.n128_f32[0] = reporta;
          if (reporta >= 0.00000011921)
          {
            *&v156 = 60000.0 / v110;
            v157 = [MEMORY[0x277CCABB0] numberWithFloat:{v156, v139.n128_f64[0]}];
            [(NetworkQualityResult *)self->super._results setUplinkHTTPForeignResponsiveness:v157];
          }

          v138.n128_u64[0] = 0x3400000034000000;
          v139.n128_f32[0] = v159;
          if (v159 < 0.00000011921)
          {
            goto LABEL_105;
          }

          v138.n128_f32[0] = 60000.0 / v112;
          v145 = [MEMORY[0x277CCABB0] numberWithFloat:{v138.n128_f64[0], v139.n128_f64[0]}];
          [(NetworkQualityResult *)self->super._results setUplinkHTTPSelfResponsiveness:v145];
        }

LABEL_105:
        if (self->_saturation_reached)
        {
          (*(self->super._completionHandler + 2))(v138, v139);
          (*(self->super._saturationHandler + 2))();
        }

        [(LatencyURLSessionDelegate *)self shareProgress];
        goto LABEL_108;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__0;
      *&buf[32] = __Block_byref_object_dispose__0;
      v192 = 0.0;
      v187 = 0;
      v188 = &v187;
      v189 = 0x2020000000;
      v190 = 0;
      v183 = 0;
      v184 = &v183;
      v185 = 0x2020000000;
      v186 = 0;
      v179 = 0;
      v180 = &v179;
      v181 = 0x2020000000;
      v182 = 0;
      enumerate_block[0] = MEMORY[0x277D85DD0];
      enumerate_block[1] = 3221225472;
      enumerate_block[2] = __79__WorkingLatencyURLSessionDelegate_URLSession_task_didFinishCollectingMetrics___block_invoke;
      enumerate_block[3] = &unk_2799695D8;
      v175 = buf;
      v176 = &v187;
      v174 = metricsCopy;
      v177 = &v183;
      v178 = &v179;
      nw_establishment_report_enumerate_protocols(report, enumerate_block);
      if (*(v184 + 24) == 1)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v180[3]];
        [obj addObject:v28];

        v29 = self->_tcpTmpArray;
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v180[3]];
        [(NSMutableArray *)v29 addObject:v30];
      }

      v31 = *(*&buf[8] + 40);
      v32 = MEMORY[0x25F873380]();
      if (MEMORY[0x25F873390](v31, v32))
      {
      }

      else
      {
        v34 = *(*&buf[8] + 40);
        v35 = nw_protocol_copy_quic_connection_definition();
        LODWORD(v34) = MEMORY[0x25F873390](v34, v35);

        if (!v34)
        {
LABEL_27:
          v171 = v164;
          v172 = v162;
          nw_establishment_report_enumerate_protocol_l4s_state();

          _Block_object_dispose(&v179, 8);
          _Block_object_dispose(&v183, 8);
          _Block_object_dispose(&v187, 8);
          _Block_object_dispose(buf, 8);

          goto LABEL_28;
        }
      }

      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v188[3]];
      [requestStartDate addObject:v36];

      v37 = self->_tlsTmpArray;
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v188[3]];
      [(NSMutableArray *)v37 addObject:v38];

      goto LABEL_27;
    }
  }

LABEL_110:

  v158 = *MEMORY[0x277D85DE8];
}

uint64_t __79__WorkingLatencyURLSessionDelegate_URLSession_task_didFinishCollectingMetrics___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  *(*(*(a1 + 48) + 8) + 24) = a3;
  if (([*(a1 + 32) isProxy] & 1) == 0)
  {
    v7 = nw_protocol_copy_tcp_definition();
    v8 = MEMORY[0x25F873390](v6, v7);

    if (v8)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      *(*(*(a1 + 64) + 8) + 24) = a3;
    }
  }

  return 1;
}

uint64_t __79__WorkingLatencyURLSessionDelegate_URLSession_task_didFinishCollectingMetrics___block_invoke_2(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, int a5)
{
  v8 = a2;
  v9 = nw_protocol_copy_tcp_definition();
  if (MEMORY[0x25F873390](v8, v9))
  {
  }

  else
  {
    v10 = nw_protocol_copy_quic_connection_definition();
    v11 = MEMORY[0x25F873390](v8, v10);

    if (!v11)
    {
      v21 = 1;
      goto LABEL_13;
    }
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_connection_client_accurate_ecn_state_to_string(a3)];
  v13 = [*(a1 + 32) objectForKey:v12];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &unk_286D22CA0;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "intValue") + 1}];

  [*(a1 + 32) setObject:v15 forKey:v12];
  v16 = @"disabled";
  if (a5)
  {
    v16 = @"enabled";
  }

  v17 = *(a1 + 40);
  v18 = v16;
  v19 = [v17 objectForKey:v18];

  if (!v19)
  {
    v19 = &unk_286D22CA0;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v19, "intValue") + 1}];

  [*(a1 + 40) setObject:v20 forKey:v18];
  v21 = 0;
LABEL_13:

  return v21;
}

- (int64_t)currentResponsivenessConfidenceValue
{
  if (!self->_probeLoadConnections)
  {
    return 1;
  }

  if (![(NetworkQualityExecutions *)self->super._execution throughputSaturated])
  {
    return 1;
  }

  if (self->_saturation_reached)
  {
    return 3;
  }

  return 2;
}

- (BOOL)checkLimits
{
  if (!self->super._saturationHandler)
  {
    return 0;
  }

  if (![(LatencyURLSessionDelegate *)self metExitCriteria])
  {
    v4 = [MEMORY[0x277CBEAA8] now];
    [v4 timeIntervalSinceDate:self->_current];
    if (v5 >= 0.2)
    {
      objc_storeStrong(&self->_current, v4);
      [(SaturationDetection *)self->_saturation getAverage];
      exitCriteriaCounter = self->super._exitCriteriaCounter;
      if (self->_exit_value >= v7)
      {
        if (exitCriteriaCounter >= 1)
        {
          v3 = 0;
          self->super._exitCriteriaCounter = 0;
          goto LABEL_7;
        }
      }

      else
      {
        self->super._exitCriteriaCounter = exitCriteriaCounter + 1;
        if ([(LatencyURLSessionDelegate *)self metExitCriteria])
        {
          (*(self->super._saturationHandler + 2))();
          [(LatencyURLSessionDelegate *)self shareProgress];
          v3 = 1;
          goto LABEL_7;
        }
      }
    }

    v3 = 0;
LABEL_7:

    return v3;
  }

  return 1;
}

- (void)URLSession:task:didCompleteWithError:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - Load failed with error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end