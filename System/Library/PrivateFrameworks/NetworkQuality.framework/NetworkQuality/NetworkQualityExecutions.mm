@interface NetworkQualityExecutions
- (BOOL)isDraining;
- (NetworkQualityExecutions)initWithConfiguration:(id)configuration;
- (NetworkQualityExecutions)initWithConfiguration:(id)configuration delegate:(id)delegate;
- (id)createDefaultNSURLSessionConfiguration;
- (id)createDefaultRequestwithURL:(id)l;
- (int64_t)currentThroughput;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_cancelWithOptionalError:(id)error;
- (void)_sendSymptomReport;
- (void)cancel;
- (void)captureError:(id)error;
- (void)checkTimeout;
- (void)drain;
- (void)execDLWithCompletionHandler:(id)handler;
- (void)execParallelWithCompletionHandler:(id)handler;
- (void)execULWithCompletionHandler:(id)handler;
- (void)reallyExecuteDL;
- (void)reallyExecuteParallel;
- (void)reallyExecuteUL;
- (void)reportingCompletionHandler:(id)handler;
- (void)run;
- (void)runWithCompletionHandler:(id)handler;
- (void)setTimeout;
- (void)shareProgress;
- (void)validateAndAdjustRuntimeParameters:(id)parameters;
@end

@implementation NetworkQualityExecutions

- (void)validateAndAdjustRuntimeParameters:(id)parameters
{
  parametersCopy = parameters;
  maxRuntime = [parametersCopy maxRuntime];
  if ([parametersCopy maxRuntime] || objc_msgSend(parametersCopy, "minRuntime") < 1 || objc_msgSend(parametersCopy, "minRuntime") >= 46)
  {
    if (![parametersCopy maxRuntime] && objc_msgSend(parametersCopy, "minRuntime") >= 1)
    {
      v8 = [parametersCopy minRuntime] + 1;
      v9 = parametersCopy;
LABEL_17:
      [v9 setMaxRuntime:v8];
      goto LABEL_18;
    }

    minRuntime = [parametersCopy minRuntime];
    if (minRuntime >= [parametersCopy maxRuntime])
    {
      netqual_log_init();
      v6 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        [(NetworkQualityExecutions *)v6 validateAndAdjustRuntimeParameters:parametersCopy];
      }

      if ([parametersCopy maxRuntime] < 2)
      {
        v7 = 0;
      }

      else
      {
        v7 = [parametersCopy maxRuntime] - 1;
      }

      [parametersCopy setMinRuntime:v7];
    }
  }

  if (maxRuntime <= 0)
  {
    v9 = parametersCopy;
    v8 = 45;
    goto LABEL_17;
  }

LABEL_18:
}

- (NetworkQualityExecutions)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v22.receiver = self;
  v22.super_class = NetworkQualityExecutions;
  v5 = [(NetworkQualityExecutions *)&v22 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [configurationCopy mutableCopy];
  config = v5->config;
  v5->config = v6;

  v8 = nw_activity_create();
  parentNWActivity = v5->_parentNWActivity;
  v5->_parentNWActivity = v8;

  v10 = dispatch_queue_create("com.apple.networkQuality.executions", 0);
  executionsQueue = v5->_executionsQueue;
  v5->_executionsQueue = v10;

  v12 = objc_alloc_init(MEMORY[0x277CCABD8]);
  operationQueue = v5->_operationQueue;
  v5->_operationQueue = v12;

  [(NSOperationQueue *)v5->_operationQueue setUnderlyingQueue:v5->_executionsQueue];
  [(NSOperationQueue *)v5->_operationQueue setMaxConcurrentOperationCount:1];
  [(NSOperationQueue *)v5->_operationQueue setQualityOfService:17];
  v5->cancelled = 0;
  v5->_throughputMetExitCriteria = 0;
  *&v5->_drainingInProgress = 0;
  v14 = objc_alloc_init(NetworkQualityExecutionsResult);
  progressResults = v5->_progressResults;
  v5->_progressResults = v14;

  networkInterfaceName = [(NetworkQualityConfiguration *)v5->config networkInterfaceName];

  if (!networkInterfaceName)
  {
LABEL_5:
    [(NetworkQualityExecutions *)v5 validateAndAdjustRuntimeParameters:v5->config];
    v5->_stage = 0;
LABEL_6:
    v19 = v5;
    goto LABEL_7;
  }

  networkInterfaceName2 = [(NetworkQualityConfiguration *)v5->config networkInterfaceName];
  [networkInterfaceName2 cStringUsingEncoding:4];
  v18 = nw_interface_create_with_name();

  if (v18)
  {

    goto LABEL_5;
  }

  netqual_log_init();
  v21 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    [(NetworkQualityExecutions *)&v5->config initWithConfiguration:v21];
  }

  v19 = 0;
LABEL_7:

  return v19;
}

- (NetworkQualityExecutions)initWithConfiguration:(id)configuration delegate:(id)delegate
{
  delegateCopy = delegate;
  v8 = [(NetworkQualityExecutions *)self initWithConfiguration:configuration];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegate, delegate);
  }

  return v9;
}

- (id)createDefaultNSURLSessionConfiguration
{
  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [defaultSessionConfiguration setRequestCachePolicy:1];
  [defaultSessionConfiguration setURLCache:0];
  if ([(NetworkQualityConfiguration *)self->config forceHTTP3])
  {
    [defaultSessionConfiguration set_allowsHTTP3:1];
  }

  if ([(NetworkQualityConfiguration *)self->config forceL4S])
  {
    [defaultSessionConfiguration set_enablesL4S:1];
  }

  if ([(NetworkQualityConfiguration *)self->config forceDisableL4S])
  {
    [defaultSessionConfiguration set_enablesL4S:0];
  }

  if ([(NetworkQualityConfiguration *)self->config privateRelay])
  {
    [defaultSessionConfiguration set_sourceApplicationSecondaryIdentifier:@"com.apple.networkQuality.private-relay"];
  }

  if ([(NetworkQualityConfiguration *)self->config multipathServiceType])
  {
    [defaultSessionConfiguration setMultipathServiceType:{-[NetworkQualityConfiguration multipathServiceType](self->config, "multipathServiceType")}];
  }

  if ([(NetworkQualityConfiguration *)self->config useUnifiedHTTPStack])
  {
    [defaultSessionConfiguration setUsesClassicLoadingMode:0];
  }

  return defaultSessionConfiguration;
}

- (id)createDefaultRequestwithURL:(id)l
{
  v4 = [MEMORY[0x277CCAB70] requestWithURL:l];
  networkInterfaceName = [(NetworkQualityConfiguration *)self->config networkInterfaceName];

  if (networkInterfaceName)
  {
    networkInterfaceName2 = [(NetworkQualityConfiguration *)self->config networkInterfaceName];
    [v4 setBoundInterfaceIdentifier:networkInterfaceName2];
  }

  if (![(NetworkQualityConfiguration *)self->config forceHTTP1]&& ![(NetworkQualityConfiguration *)self->config forceHTTP2])
  {
    if (![(NetworkQualityConfiguration *)self->config forceHTTP3])
    {
      goto LABEL_8;
    }

    [v4 setAssumesHTTP3Capable:1];
  }

  [v4 _CFURLRequest];
  _CFURLRequestSetAllowedProtocolTypes();
LABEL_8:
  [v4 setValue:@"identity" forHTTPHeaderField:@"Accept-Encoding"];

  return v4;
}

- (void)checkTimeout
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = v3;
  if (self->_timeout)
  {
    [v3 timeIntervalSinceDate:?];
    if (v5 > 0.0)
    {
      timeout = self->_timeout;
      self->_timeout = 0;

      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Timed out waiting for stage %s to drain", NetworkQualityStages_to_string(self->_stage)];
      netqual_log_init();
      v8 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v7;
        v10 = v8;
        *buf = 136315650;
        v18 = "[NetworkQualityExecutions checkTimeout]";
        v19 = 1024;
        v20 = 289;
        v21 = 2080;
        uTF8String = [v7 UTF8String];
        _os_log_impl(&dword_25B962000, v10, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] %s. Moving on.", buf, 0x1Cu);
      }

      if ([(NetworkQualityExecutions *)self isDraining])
      {
        v11 = MEMORY[0x277CCA9B8];
        v15 = *MEMORY[0x277CCA450];
        v16 = v7;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v13 = [v11 errorWithDomain:@"NetworkQualityErrorDomain" code:1011 userInfo:v12];

        [(NetworkQualityExecutions *)self reportingCompletionHandler:v13];
      }

      else
      {
        [(NetworkQualityExecutions *)self run];
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)shareProgress
{
  obj = [MEMORY[0x277CBEAA8] now];
  [(NetworkQualityExecutions *)self checkTimeout];
  if (self->_delegate)
  {
    [obj timeIntervalSinceDate:self->_lastProgressUpdate];
    if (v3 >= 0.2)
    {
      objc_storeStrong(&self->_lastProgressUpdate, obj);
      [(NetworkQualityResult *)self->_progressResults setIndex:[(NetworkQualityResult *)self->_progressResults index]+ 1];
      [(NetworkQualityResult *)self->_progressResults setTimestamp:obj];
      [(NetworkQualityExecutionsDelegate *)self->_delegate progress:self->_progressResults];
    }
  }
}

- (int64_t)currentThroughput
{
  downlinkCapacity = [(NetworkQualityResult *)self->_progressResults downlinkCapacity];
  value = [downlinkCapacity value];

  if (value)
  {
    downlinkCapacity2 = [(NetworkQualityResult *)self->_progressResults downlinkCapacity];
    value2 = [downlinkCapacity2 value];
    integerValue = [value2 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  uplinkCapacity = [(NetworkQualityResult *)self->_progressResults uplinkCapacity];
  value3 = [uplinkCapacity value];

  if (value3)
  {
    uplinkCapacity2 = [(NetworkQualityResult *)self->_progressResults uplinkCapacity];
    value4 = [uplinkCapacity2 value];
    integerValue2 = [value4 integerValue];

    if (integerValue2 < integerValue)
    {
      uplinkCapacity3 = [(NetworkQualityResult *)self->_progressResults uplinkCapacity];
      value5 = [uplinkCapacity3 value];
      integerValue = [value5 integerValue];
    }
  }

  if (integerValue == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return integerValue;
  }
}

- (void)reportingCompletionHandler:(id)handler
{
  if (!self->cancelled)
  {
    [(NetworkQualityExecutions *)self captureError:?];
    if (!handler)
    {
      [(NetworkQualityExecutions *)self _sendSymptomReport];
    }

    parentNWActivity = self->_parentNWActivity;
    nw_activity_complete_with_reason();
    completionHandler = self->_completionHandler;
    progressResults = self->_progressResults;
    error = [(NetworkQualityResult *)progressResults error];
    completionHandler[2](completionHandler, progressResults, error);

    [(NetworkQualityExecutions *)self _cancelWithOptionalError:0];
  }
}

- (void)drain
{
  v38 = *MEMORY[0x277D85DE8];
  if (self->_drainingInProgress)
  {
    netqual_log_init();
    v2 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "[NetworkQualityExecutions drain]";
      v34 = 1024;
      v35 = 369;
      _os_log_impl(&dword_25B962000, v2, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Drain already in progress, ignoring duplicate call", buf, 0x12u);
    }

    goto LABEL_35;
  }

  if ([(NetworkQualityConfiguration *)self->config minRuntime]>= 1 && self->_stage >= 3u && self->_startCapacityTest)
  {
    if ([(NetworkQualityConfiguration *)self->config parallel])
    {
      v4 = 1;
    }

    else
    {
      upload = [(NetworkQualityConfiguration *)self->config upload];
      download = [(NetworkQualityConfiguration *)self->config download];
      if (download && upload)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }

      if (!download && !upload)
      {
        goto LABEL_18;
      }
    }

    v5 = ([(NetworkQualityConfiguration *)self->config minRuntime]/ v4);
    v6 = [MEMORY[0x277CBEAA8] now];
    [v6 timeIntervalSinceDate:self->_startCapacityTest];
    v8 = (v5 - v7);

    netqual_log_init();
    v9 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v33 = "[NetworkQualityExecutions drain]";
      v34 = 1024;
      v35 = 394;
      v36 = 2048;
      v37 = v8;
      _os_log_impl(&dword_25B962000, v9, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] not draining until minRuntime expired in %ld seconds", buf, 0x1Cu);
    }

    if (v8 >= 1)
    {
      v10 = dispatch_time(0, 1000000000 * v8);
      executionsQueue = self->_executionsQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33__NetworkQualityExecutions_drain__block_invoke;
      block[3] = &unk_279969378;
      block[4] = self;
      dispatch_after(v10, executionsQueue, block);
      goto LABEL_35;
    }
  }

LABEL_18:
  startCapacityTest = self->_startCapacityTest;
  self->_startCapacityTest = 0;

  self->_throughputMetExitCriteria = 0;
  *&self->_drainingInProgress = 1;
  if (self->latencyDelegate)
  {
    netqual_log_init();
    v15 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      latencyDelegate = self->latencyDelegate;
      *buf = 136315650;
      v33 = "[NetworkQualityExecutions drain]";
      v34 = 1024;
      v35 = 413;
      v36 = 2112;
      v37 = latencyDelegate;
      _os_log_impl(&dword_25B962000, v15, OS_LOG_TYPE_DEFAULT, "%s:%u - [Draining] Canceling Latency Delegate %@", buf, 0x1Cu);
    }

    v17 = self->latencyDelegate;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __33__NetworkQualityExecutions_drain__block_invoke_51;
    v30[3] = &unk_2799693A0;
    v30[4] = self;
    [(LatencyURLSessionDelegate *)v17 cancelWithCompletionHandler:v30];
    if (self->dlDelegate || self->ulDelegate)
    {
      workingLatencyNWActivity = self->_workingLatencyNWActivity;
      if ((nw_activity_is_complete() & 1) == 0)
      {
        v19 = self->_workingLatencyNWActivity;
        nw_activity_complete_with_reason();
      }
    }

    if (!self->dlDelegate)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (self->dlDelegate)
  {
LABEL_28:
    netqual_log_init();
    v20 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      dlDelegate = self->dlDelegate;
      *buf = 136315650;
      v33 = "[NetworkQualityExecutions drain]";
      v34 = 1024;
      v35 = 441;
      v36 = 2112;
      v37 = dlDelegate;
      _os_log_impl(&dword_25B962000, v20, OS_LOG_TYPE_DEFAULT, "%s:%u - [Draining] Canceling dl delegate %@", buf, 0x1Cu);
    }

    v22 = self->dlDelegate;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __33__NetworkQualityExecutions_drain__block_invoke_55;
    v29[3] = &unk_2799693A0;
    v29[4] = self;
    [(ThroughputDelegate *)v22 cancelWithCompletionHandler:v29];
    goto LABEL_31;
  }

  if (self->ulDelegate)
  {
LABEL_31:
    if (self->ulDelegate)
    {
      netqual_log_init();
      v23 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        ulDelegate = self->ulDelegate;
        *buf = 136315650;
        v33 = "[NetworkQualityExecutions drain]";
        v34 = 1024;
        v35 = 463;
        v36 = 2112;
        v37 = ulDelegate;
        _os_log_impl(&dword_25B962000, v23, OS_LOG_TYPE_DEFAULT, "%s:%u - [Draining] Canceling ul delegate %@", buf, 0x1Cu);
      }

      v25 = self->ulDelegate;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __33__NetworkQualityExecutions_drain__block_invoke_56;
      v28[3] = &unk_2799693A0;
      v28[4] = self;
      [(ThroughputDelegate *)v25 cancelWithCompletionHandler:v28];
    }

    goto LABEL_35;
  }

  netqual_log_init();
  v27 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "[NetworkQualityExecutions drain]";
    v34 = 1024;
    v35 = 484;
    _os_log_impl(&dword_25B962000, v27, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Finished draining stage - moving on", buf, 0x12u);
  }

  self->_drainingInProgress = 0;
  if (![(NetworkQualityExecutions *)self isDraining])
  {
    [NetworkQualityExecutions drain];
  }

  [(NetworkQualityExecutions *)self run];
LABEL_35:
  v26 = *MEMORY[0x277D85DE8];
}

void __33__NetworkQualityExecutions_drain__block_invoke_51(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  netqual_log_init();
  v4 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 80);
    v11 = 136315650;
    v12 = "[NetworkQualityExecutions drain]_block_invoke";
    v13 = 1024;
    v14 = 415;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25B962000, v4, OS_LOG_TYPE_DEFAULT, "%s:%u - [Draining] Canceled latency delegate %@", &v11, 0x1Cu);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 80);
  *(v6 + 80) = 0;

  v8 = *(a1 + 32);
  if (v3)
  {
    [v8 reportingCompletionHandler:v3];
  }

  else if (!v8[10] && !v8[8] && !v8[9])
  {
    netqual_log_init();
    v9 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[NetworkQualityExecutions drain]_block_invoke";
      v13 = 1024;
      v14 = 425;
      _os_log_impl(&dword_25B962000, v9, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Finished draining stage - moving on", &v11, 0x12u);
    }

    *(*(a1 + 32) + 248) = 0;
    if (([*(a1 + 32) isDraining] & 1) == 0)
    {
      __33__NetworkQualityExecutions_drain__block_invoke_51_cold_1();
    }

    [*(a1 + 32) run];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __33__NetworkQualityExecutions_drain__block_invoke_55(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  netqual_log_init();
  v4 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 64);
    v11 = 136315650;
    v12 = "[NetworkQualityExecutions drain]_block_invoke";
    v13 = 1024;
    v14 = 444;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25B962000, v4, OS_LOG_TYPE_DEFAULT, "%s:%u - [Draining] Canceled dl delegate %@", &v11, 0x1Cu);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = 0;

  v8 = *(a1 + 32);
  if (v3)
  {
    [v8 reportingCompletionHandler:v3];
  }

  else if (!v8[10] && !v8[8] && !v8[9])
  {
    netqual_log_init();
    v9 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[NetworkQualityExecutions drain]_block_invoke";
      v13 = 1024;
      v14 = 454;
      _os_log_impl(&dword_25B962000, v9, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Finished draining stage - moving on", &v11, 0x12u);
    }

    *(*(a1 + 32) + 248) = 0;
    if (([*(a1 + 32) isDraining] & 1) == 0)
    {
      __33__NetworkQualityExecutions_drain__block_invoke_55_cold_1();
    }

    [*(a1 + 32) run];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __33__NetworkQualityExecutions_drain__block_invoke_56(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  netqual_log_init();
  v4 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 72);
    v11 = 136315650;
    v12 = "[NetworkQualityExecutions drain]_block_invoke";
    v13 = 1024;
    v14 = 466;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25B962000, v4, OS_LOG_TYPE_DEFAULT, "%s:%u - [Draining] Canceled ul delegate %@", &v11, 0x1Cu);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = 0;

  v8 = *(a1 + 32);
  if (v3)
  {
    [v8 reportingCompletionHandler:v3];
  }

  else if (!v8[10] && !v8[8] && !v8[9])
  {
    netqual_log_init();
    v9 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[NetworkQualityExecutions drain]_block_invoke";
      v13 = 1024;
      v14 = 476;
      _os_log_impl(&dword_25B962000, v9, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Finished draining stage - moving on", &v11, 0x12u);
    }

    *(*(a1 + 32) + 248) = 0;
    if (([*(a1 + 32) isDraining] & 1) == 0)
    {
      __33__NetworkQualityExecutions_drain__block_invoke_56_cold_1();
    }

    [*(a1 + 32) run];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDraining
{
  if ([(NetworkQualityExecutions *)self currentStageIs:2]|| [(NetworkQualityExecutions *)self currentStageIs:5]|| [(NetworkQualityExecutions *)self currentStageIs:8])
  {
    return 1;
  }

  return [(NetworkQualityExecutions *)self currentStageIs:11];
}

- (void)setTimeout
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [(NSDate *)self->_start dateByAddingTimeInterval:[(NetworkQualityConfiguration *)self->config maxRuntime]];
  [v4 timeIntervalSinceDate:v3];
  v6 = v5;

  if ([(NetworkQualityExecutions *)self isDraining])
  {
    v7 = [v3 dateByAddingTimeInterval:5.0];
    timeout = self->_timeout;
    self->_timeout = v7;

    v9 = 0;
    v10 = 5000000000;
  }

  else
  {
    if ([(NetworkQualityConfiguration *)self->config idleLatency])
    {
      v9 = self->_stage < 2u;
    }

    else
    {
      v9 = 0;
    }

    if ([(NetworkQualityConfiguration *)self->config parallel]&& [(NetworkQualityConfiguration *)self->config download]&& [(NetworkQualityConfiguration *)self->config upload]&& self->_stage < 4u)
    {
      ++v9;
    }

    if ([(NetworkQualityConfiguration *)self->config parallel]&& [(NetworkQualityConfiguration *)self->config download]&& [(NetworkQualityConfiguration *)self->config upload]&& [(NetworkQualityConfiguration *)self->config workingLatency]&& self->_stage < 5u)
    {
      ++v9;
    }

    if (![(NetworkQualityConfiguration *)self->config parallel]&& [(NetworkQualityConfiguration *)self->config download]&& self->_stage < 7u)
    {
      ++v9;
    }

    if (![(NetworkQualityConfiguration *)self->config parallel]&& [(NetworkQualityConfiguration *)self->config download]&& [(NetworkQualityConfiguration *)self->config workingLatency]&& self->_stage < 8u)
    {
      ++v9;
    }

    if (![(NetworkQualityConfiguration *)self->config parallel]&& [(NetworkQualityConfiguration *)self->config upload]&& self->_stage < 0xAu)
    {
      ++v9;
    }

    if (![(NetworkQualityConfiguration *)self->config parallel]&& [(NetworkQualityConfiguration *)self->config upload]&& [(NetworkQualityConfiguration *)self->config workingLatency]&& self->_stage < 0xBu)
    {
      ++v9;
    }

    else if (!v9)
    {
      [NetworkQualityExecutions setTimeout];
    }

    v10 = (v6 * 1000.0 * 1000.0 * 1000.0 / v9);
  }

  v11 = [v3 dateByAddingTimeInterval:v10 / 1000000000.0];
  v12 = self->_timeout;
  self->_timeout = v11;

  netqual_log_init();
  v13 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    stage = self->_stage;
    v15 = NetworkQualityStages_to_string(stage);
    v16 = self->_timeout;
    *buf = 136316930;
    v22 = "[NetworkQualityExecutions setTimeout]";
    v23 = 1024;
    v24 = 553;
    v25 = 2080;
    v26 = v15;
    v27 = 1024;
    v28 = stage;
    v29 = 2112;
    v30 = v16;
    v31 = 2112;
    v32 = v3;
    v33 = 1024;
    v34 = v9;
    v35 = 2048;
    v36 = v6;
    _os_log_impl(&dword_25B962000, v13, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] In stage %s (%u), setting timeout to %@ - now %@ (divisor: %u, timeLeft %.3f)", buf, 0x46u);
  }

  v17 = dispatch_time(0, v10);
  executionsQueue = self->_executionsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__NetworkQualityExecutions_setTimeout__block_invoke;
  block[3] = &unk_279969378;
  block[4] = self;
  dispatch_after(v17, executionsQueue, block);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)run
{
  v91 = *MEMORY[0x277D85DE8];
  netqual_log_init();
  v3 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    stage = self->_stage;
    v5 = NetworkQualityStages_to_string(stage);
    v6 = NetworkQualityStages_to_string(stage + 1);
    cancelled = self->cancelled;
    *buf = 136316162;
    v82 = "[NetworkQualityExecutions run]";
    v83 = 1024;
    v84 = 563;
    v85 = 2080;
    v86 = v5;
    v87 = 2080;
    v88 = v6;
    v89 = 1024;
    v90 = cancelled;
    _os_log_impl(&dword_25B962000, v3, OS_LOG_TYPE_DEFAULT, "%s:%u - Current Stage=%s | Next Stage=%s | Cancelled=%d", buf, 0x2Cu);
  }

  v8 = self->_stage;
  if (!v8)
  {
    parentNWActivity = self->_parentNWActivity;
    nw_activity_activate();
    v8 = self->_stage;
  }

  self->_stage = v8 + 1;
  if (!self->cancelled)
  {
    if ([(NetworkQualityExecutions *)self currentStageIs:1])
    {
      if ([(NetworkQualityConfiguration *)self->config idleLatency])
      {
        [(NetworkQualityExecutions *)self setTimeout];
        v10 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig URLForURLType:0];
        v11 = [(NetworkQualityExecutions *)self createDefaultRequestwithURL:v10];

        if ([(NetworkQualityConfiguration *)self->config latencyMeasurementServiceType])
        {
          [v11 setNetworkServiceType:{-[NetworkQualityConfiguration latencyMeasurementServiceType](self->config, "latencyMeasurementServiceType")}];
        }

        v12 = [IdleLatencyURLSessionDelegate alloc];
        config = self->config;
        operationQueue = self->_operationQueue;
        v15 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig testEndpoint:0];
        progressResults = self->_progressResults;
        v17 = [LatencyURLSessionDelegate initWithConfiguration:v12 testName:"initWithConfiguration:testName:queue:testEndpoint:resultsObject:resultsDelegate:tcpKey:tlsKey:reqrespKey:selfKey:" queue:config testEndpoint:@"il_tcp_handshake_443" resultsObject:@"il_tls_handshake" resultsDelegate:@"il_h2_req_resp" tcpKey:0 tlsKey:? reqrespKey:? selfKey:?];

        if (self->latencyDelegate)
        {
          [NetworkQualityExecutions run];
        }

        self->latencyDelegate = v17;
        v18 = v17;

        v19 = nw_activity_create();
        idleLatencyNWActivity = self->_idleLatencyNWActivity;
        self->_idleLatencyNWActivity = v19;

        v22 = self->_parentNWActivity;
        v21 = self->_idleLatencyNWActivity;
        nw_activity_set_parent_activity();
        v23 = self->_idleLatencyNWActivity;
        nw_activity_activate();
        v80[0] = MEMORY[0x277D85DD0];
        v80[1] = 3221225472;
        v80[2] = __31__NetworkQualityExecutions_run__block_invoke;
        v80[3] = &unk_2799693A0;
        v80[4] = self;
        v24 = v80;
LABEL_12:
        [(LatencyURLSessionDelegate *)v18 executeTaskWithRequest:v11 completionHandler:v24];

        goto LABEL_60;
      }

      goto LABEL_59;
    }

    if ([(NetworkQualityExecutions *)self currentStageIs:2])
    {
LABEL_14:
      [(NetworkQualityExecutions *)self drain];
      goto LABEL_60;
    }

    if ([(NetworkQualityExecutions *)self currentStageIs:3])
    {
      if ([(NetworkQualityConfiguration *)self->config parallel]&& [(NetworkQualityConfiguration *)self->config download]&& [(NetworkQualityConfiguration *)self->config upload])
      {
        [(NetworkQualityExecutions *)self setTimeout];
        v25 = [MEMORY[0x277CBEAA8] now];
        startCapacityTest = self->_startCapacityTest;
        self->_startCapacityTest = v25;

        [(NetworkQualityExecutions *)self reallyExecuteParallel];
        if (![(NetworkQualityConfiguration *)self->config workingLatency])
        {
          goto LABEL_60;
        }

        v27 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig URLForURLType:0];
        v11 = [(NetworkQualityExecutions *)self createDefaultRequestwithURL:v27];

        if ([(NetworkQualityConfiguration *)self->config latencyMeasurementServiceType])
        {
          [v11 setNetworkServiceType:{-[NetworkQualityConfiguration latencyMeasurementServiceType](self->config, "latencyMeasurementServiceType")}];
        }

        v28 = [WorkingLatencyURLSessionDelegate alloc];
        v29 = self->config;
        v30 = self->_operationQueue;
        v31 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig testEndpoint:0];
        v32 = self->_progressResults;
        getSessions = [(ThroughputDelegate *)self->dlDelegate getSessions];
        v34 = [WorkingLatencyURLSessionDelegate initWithConfiguration:v28 testName:"initWithConfiguration:testName:queue:testEndpoint:resultsObject:resultsDelegate:urlSessions:tcpKey:tlsKey:reqrespKey:selfKey:" queue:v29 testEndpoint:getSessions resultsObject:@"lud_foreign_tcp_handshake_443" resultsDelegate:@"lud_foreign_tls_handshake" urlSessions:@"lud_foreign_h2_req_resp" tcpKey:@"lud_self_h2_req_resp" tlsKey:? reqrespKey:? selfKey:?];

        if (self->latencyDelegate)
        {
          [NetworkQualityExecutions run];
        }

        self->latencyDelegate = v34;
        v18 = v34;

        v35 = nw_activity_create();
        workingLatencyNWActivity = self->_workingLatencyNWActivity;
        self->_workingLatencyNWActivity = v35;

        v37 = self->_workingLatencyNWActivity;
        v38 = self->_parentNWActivity;
        nw_activity_set_parent_activity();
        v39 = self->_workingLatencyNWActivity;
        nw_activity_activate();
        [(LatencyURLSessionDelegate *)v18 isDownlinkTest];
        v79[0] = MEMORY[0x277D85DD0];
        v79[1] = 3221225472;
        v79[2] = __31__NetworkQualityExecutions_run__block_invoke_82;
        v79[3] = &unk_2799693A0;
        v79[4] = self;
        v24 = v79;
        goto LABEL_12;
      }

      goto LABEL_59;
    }

    if ([(NetworkQualityExecutions *)self currentStageIs:4])
    {
      if (![(NetworkQualityConfiguration *)self->config parallel]|| ![(NetworkQualityConfiguration *)self->config download]|| ![(NetworkQualityConfiguration *)self->config upload]|| ![(NetworkQualityConfiguration *)self->config workingLatency])
      {
        goto LABEL_59;
      }

      [(NetworkQualityExecutions *)self setTimeout];
      latencyDelegate = self->latencyDelegate;
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __31__NetworkQualityExecutions_run__block_invoke_83;
      v78[3] = &unk_279969378;
      v78[4] = self;
      v41 = v78;
LABEL_30:
      [(LatencyURLSessionDelegate *)latencyDelegate waitForSaturation:v41];
      goto LABEL_60;
    }

    if ([(NetworkQualityExecutions *)self currentStageIs:5])
    {
      goto LABEL_14;
    }

    if ([(NetworkQualityExecutions *)self currentStageIs:6])
    {
      if ([(NetworkQualityConfiguration *)self->config download]&& ![(NetworkQualityConfiguration *)self->config parallel])
      {
        [(NetworkQualityExecutions *)self setTimeout];
        v42 = [MEMORY[0x277CBEAA8] now];
        v43 = self->_startCapacityTest;
        self->_startCapacityTest = v42;

        [(NetworkQualityExecutions *)self reallyExecuteDL];
        if (![(NetworkQualityConfiguration *)self->config workingLatency])
        {
          goto LABEL_60;
        }

        v44 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig URLForURLType:0];
        v11 = [(NetworkQualityExecutions *)self createDefaultRequestwithURL:v44];

        if ([(NetworkQualityConfiguration *)self->config latencyMeasurementServiceType])
        {
          [v11 setNetworkServiceType:{-[NetworkQualityConfiguration latencyMeasurementServiceType](self->config, "latencyMeasurementServiceType")}];
        }

        v45 = [WorkingLatencyURLSessionDelegate alloc];
        v46 = self->config;
        v47 = self->_operationQueue;
        v48 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig testEndpoint:0];
        v49 = self->_progressResults;
        getSessions2 = [(ThroughputDelegate *)self->dlDelegate getSessions];
        v51 = [WorkingLatencyURLSessionDelegate initWithConfiguration:v45 testName:"initWithConfiguration:testName:queue:testEndpoint:resultsObject:resultsDelegate:urlSessions:tcpKey:tlsKey:reqrespKey:selfKey:" queue:v46 testEndpoint:getSessions2 resultsObject:@"lud_foreign_dl_tcp_handshake_443" resultsDelegate:@"lud_foreign_dl_tls_handshake" urlSessions:@"lud_foreign_dl_h2_req_resp" tcpKey:@"lud_self_dl_h2_req_resp" tlsKey:? reqrespKey:? selfKey:?];

        if (self->latencyDelegate)
        {
          [NetworkQualityExecutions run];
        }

        self->latencyDelegate = v51;
        v18 = v51;

        v52 = nw_activity_create();
        v53 = self->_workingLatencyNWActivity;
        self->_workingLatencyNWActivity = v52;

        v54 = self->_workingLatencyNWActivity;
        v55 = self->_parentNWActivity;
        nw_activity_set_parent_activity();
        v56 = self->_workingLatencyNWActivity;
        nw_activity_activate();
        [(LatencyURLSessionDelegate *)v18 isDownlinkTest];
        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = __31__NetworkQualityExecutions_run__block_invoke_96;
        v77[3] = &unk_2799693A0;
        v77[4] = self;
        v24 = v77;
        goto LABEL_12;
      }

      goto LABEL_59;
    }

    if ([(NetworkQualityExecutions *)self currentStageIs:7])
    {
      if (![(NetworkQualityConfiguration *)self->config download]|| [(NetworkQualityConfiguration *)self->config parallel]|| ![(NetworkQualityConfiguration *)self->config workingLatency])
      {
        goto LABEL_59;
      }

      [(NetworkQualityExecutions *)self setTimeout];
      latencyDelegate = self->latencyDelegate;
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __31__NetworkQualityExecutions_run__block_invoke_97;
      v76[3] = &unk_279969378;
      v76[4] = self;
      v41 = v76;
      goto LABEL_30;
    }

    if ([(NetworkQualityExecutions *)self currentStageIs:8])
    {
      goto LABEL_14;
    }

    if ([(NetworkQualityExecutions *)self currentStageIs:9])
    {
      if ([(NetworkQualityConfiguration *)self->config upload]&& ![(NetworkQualityConfiguration *)self->config parallel])
      {
        [(NetworkQualityExecutions *)self setTimeout];
        v57 = [MEMORY[0x277CBEAA8] now];
        v58 = self->_startCapacityTest;
        self->_startCapacityTest = v57;

        [(NetworkQualityExecutions *)self reallyExecuteUL];
        if (![(NetworkQualityConfiguration *)self->config workingLatency])
        {
          goto LABEL_60;
        }

        v59 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig URLForURLType:0];
        v11 = [(NetworkQualityExecutions *)self createDefaultRequestwithURL:v59];

        if ([(NetworkQualityConfiguration *)self->config latencyMeasurementServiceType])
        {
          [v11 setNetworkServiceType:{-[NetworkQualityConfiguration latencyMeasurementServiceType](self->config, "latencyMeasurementServiceType")}];
        }

        v60 = [WorkingLatencyURLSessionDelegate alloc];
        v61 = self->config;
        v62 = self->_operationQueue;
        v63 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig testEndpoint:0];
        v64 = self->_progressResults;
        getSessions3 = [(ThroughputDelegate *)self->ulDelegate getSessions];
        v66 = [WorkingLatencyURLSessionDelegate initWithConfiguration:v60 testName:"initWithConfiguration:testName:queue:testEndpoint:resultsObject:resultsDelegate:urlSessions:tcpKey:tlsKey:reqrespKey:selfKey:" queue:v61 testEndpoint:getSessions3 resultsObject:@"lud_foreign_ul_tcp_handshake_443" resultsDelegate:@"lud_foreign_ul_tls_handshake" urlSessions:@"lud_foreign_ul_h2_req_resp" tcpKey:@"lud_self_ul_h2_req_resp" tlsKey:? reqrespKey:? selfKey:?];

        if (self->latencyDelegate)
        {
          [NetworkQualityExecutions run];
        }

        self->latencyDelegate = v66;
        v18 = v66;

        v67 = nw_activity_create();
        v68 = self->_workingLatencyNWActivity;
        self->_workingLatencyNWActivity = v67;

        v69 = self->_workingLatencyNWActivity;
        v70 = self->_parentNWActivity;
        nw_activity_set_parent_activity();
        v71 = self->_workingLatencyNWActivity;
        nw_activity_activate();
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __31__NetworkQualityExecutions_run__block_invoke_110;
        v75[3] = &unk_2799693A0;
        v75[4] = self;
        v24 = v75;
        goto LABEL_12;
      }

LABEL_59:
      [(NetworkQualityExecutions *)self run];
      goto LABEL_60;
    }

    if ([(NetworkQualityExecutions *)self currentStageIs:10])
    {
      if (![(NetworkQualityConfiguration *)self->config upload]|| [(NetworkQualityConfiguration *)self->config parallel]|| ![(NetworkQualityConfiguration *)self->config workingLatency])
      {
        goto LABEL_59;
      }

      [(NetworkQualityExecutions *)self setTimeout];
      latencyDelegate = self->latencyDelegate;
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __31__NetworkQualityExecutions_run__block_invoke_111;
      v74[3] = &unk_279969378;
      v74[4] = self;
      v41 = v74;
      goto LABEL_30;
    }

    if ([(NetworkQualityExecutions *)self currentStageIs:11])
    {
      goto LABEL_14;
    }

    netqual_log_init();
    v73 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v82 = "[NetworkQualityExecutions run]";
      v83 = 1024;
      v84 = 916;
      _os_log_impl(&dword_25B962000, v73, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Running stage FINISH", buf, 0x12u);
    }

    [(NetworkQualityExecutions *)self reportingCompletionHandler:0];
  }

LABEL_60:
  v72 = *MEMORY[0x277D85DE8];
}

void __31__NetworkQualityExecutions_run__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) isDraining] & 1) == 0)
  {
    if (v3)
    {
      [v3 code];
      v4 = *(*(a1 + 32) + 32);
      nw_activity_complete_with_reason();
      netqual_log_init();
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        __31__NetworkQualityExecutions_run__block_invoke_cold_1();
      }

      [*(a1 + 32) reportingCompletionHandler:v3];
    }

    else
    {
      v5 = *(*(a1 + 32) + 32);
      nw_activity_complete_with_reason();
      netqual_log_init();
      v6 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "[NetworkQualityExecutions run]_block_invoke";
        v10 = 1024;
        v11 = 629;
        _os_log_impl(&dword_25B962000, v6, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Finished idle latency stage - moving to draining", &v8, 0x12u);
      }

      [*(a1 + 32) run];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __31__NetworkQualityExecutions_run__block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 code];
    v5 = *(*(a1 + 32) + 40);
    nw_activity_complete_with_reason();
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __31__NetworkQualityExecutions_run__block_invoke_82_cold_1();
    }

    [*(a1 + 32) reportingCompletionHandler:v4];
  }

  else
  {
    v6 = *(*(a1 + 32) + 40);
    nw_activity_complete_with_reason();
  }
}

uint64_t __31__NetworkQualityExecutions_run__block_invoke_83(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  netqual_log_init();
  v2 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[NetworkQualityExecutions run]_block_invoke";
    v7 = 1024;
    v8 = 721;
    _os_log_impl(&dword_25B962000, v2, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Parallel Responsiveness saturated", &v5, 0x12u);
  }

  result = [*(a1 + 32) run];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __31__NetworkQualityExecutions_run__block_invoke_96(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 code];
    v5 = *(*(a1 + 32) + 40);
    nw_activity_complete_with_reason();
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __31__NetworkQualityExecutions_run__block_invoke_96_cold_1();
    }

    [*(a1 + 32) reportingCompletionHandler:v4];
  }

  else
  {
    v6 = *(*(a1 + 32) + 40);
    nw_activity_complete_with_reason();
  }
}

uint64_t __31__NetworkQualityExecutions_run__block_invoke_97(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  netqual_log_init();
  v2 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[NetworkQualityExecutions run]_block_invoke";
    v7 = 1024;
    v8 = 812;
    _os_log_impl(&dword_25B962000, v2, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Downlink Responsiveness saturated", &v5, 0x12u);
  }

  result = [*(a1 + 32) run];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __31__NetworkQualityExecutions_run__block_invoke_110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 code];
    v5 = *(*(a1 + 32) + 40);
    nw_activity_complete_with_reason();
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __31__NetworkQualityExecutions_run__block_invoke_110_cold_1();
    }

    [*(a1 + 32) reportingCompletionHandler:v4];
  }

  else
  {
    v6 = *(*(a1 + 32) + 40);
    nw_activity_complete_with_reason();
  }
}

uint64_t __31__NetworkQualityExecutions_run__block_invoke_111(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  netqual_log_init();
  v2 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[NetworkQualityExecutions run]_block_invoke";
    v7 = 1024;
    v8 = 901;
    _os_log_impl(&dword_25B962000, v2, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Uplink Responsiveness saturated", &v5, 0x12u);
  }

  result = [*(a1 + 32) run];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)runWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  executionsQueue = self->_executionsQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke;
  v7[3] = &unk_279969418;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(executionsQueue, v7);
}

void __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke(uint64_t a1)
{
  v96 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] now];
  v4 = a1 + 32;
  v3 = *(a1 + 32);
  v5 = *(v3 + 216);
  *(v3 + 216) = v2;

  objc_storeStrong((*v4 + 240), *(*v4 + 216));
  v6 = MEMORY[0x25F873620](*(a1 + 40));
  v7 = *(*(a1 + 32) + 200);
  *(*v4 + 200) = v6;

  v8 = [*(a1 + 32) createDefaultNSURLSessionConfiguration];
  v9 = [*(*(a1 + 32) + 176) configuration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v10 = [*(*(a1 + 32) + 176) bonjourHost];

    if (!v10)
    {
      v54 = [*(*(a1 + 32) + 176) configuration];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v56 = [NetworkQualityRemoteConfiguration alloc];
        v57 = [*(*(a1 + 32) + 176) configuration];
        v58 = [(NetworkQualityRemoteConfiguration *)v56 initWithDictionary:v57 andConfig:*(*(a1 + 32) + 176)];
        v59 = *(*(a1 + 32) + 104);
        *(*(a1 + 32) + 104) = v58;

        netqual_log_init();
        v60 = os_log_netqual;
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
        {
          *v92 = 136315394;
          *&v92[4] = "[NetworkQualityExecutions runWithCompletionHandler:]_block_invoke";
          *&v92[12] = 1024;
          *&v92[14] = 1092;
          _os_log_impl(&dword_25B962000, v60, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Moving to initial stage", v92, 0x12u);
        }

        [*(a1 + 32) run];
      }

      else
      {
        v62 = *(a1 + 40);
        v63 = objc_alloc(MEMORY[0x277CCA9B8]);
        v81 = *MEMORY[0x277CCA450];
        v82 = @"Unknown object type";
        v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v65 = [v63 initWithDomain:@"NetworkQualityErrorDomain" code:1002 userInfo:v64];
        (*(v62 + 16))(v62, 0, v65);
      }

      goto LABEL_40;
    }
  }

  *v92 = 0;
  *&v92[8] = v92;
  *&v92[16] = 0x3032000000;
  v93 = __Block_byref_object_copy_;
  v94 = __Block_byref_object_dispose_;
  v95 = 0;
  v11 = [*(*(a1 + 32) + 176) bonjourHost];
  v12 = v11 == 0;

  v13 = *(*(a1 + 32) + 176);
  if (v12)
  {
    v26 = [v13 configuration];
    bonjour_service = 0;
    v21 = *(*&v92[8] + 40);
    *(*&v92[8] + 40) = v26;
  }

  else
  {
    v14 = [v13 bonjourHost];
    v15 = v14;
    bonjour_service = nw_endpoint_create_bonjour_service([v14 UTF8String], "_nq._tcp", "local");

    v17 = dispatch_semaphore_create(0);
    v18 = nw_resolver_create_with_endpoint();
    v19 = dispatch_get_global_queue(0, 0);
    v77[6] = MEMORY[0x277D85DD0];
    v77[7] = 3221225472;
    v77[8] = __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_114;
    v77[9] = &unk_2799693C8;
    v80 = v92;
    v20 = v18;
    v78 = v20;
    v21 = v17;
    v79 = v21;
    nw_resolver_set_update_handler();

    v22 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v21, v22);
    if (!*(*&v92[8] + 40))
    {
      netqual_log_init();
      v23 = os_log_netqual;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [*(*(a1 + 32) + 176) bonjourHost];
        __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_cold_1(v24, v91, v23);
      }

      v25 = *(*&v92[8] + 40);
      *(*&v92[8] + 40) = @"https://networkquality/.well-known/nq";
    }
  }

  netqual_log_init();
  v27 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(*&v92[8] + 40);
    *buf = 136315650;
    v86 = "[NetworkQualityExecutions runWithCompletionHandler:]_block_invoke";
    v87 = 1024;
    v88 = 973;
    v89 = 2112;
    v90 = v28;
    _os_log_impl(&dword_25B962000, v27, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Configuration URL: %@", buf, 0x1Cu);
  }

  l4s_enabled = network_config_get_l4s_enabled();
  [v8 setTimeoutIntervalForRequest:15.0];
  v30 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v8 delegate:*(a1 + 32) delegateQueue:0];
  v31 = *(a1 + 32);
  v32 = *(v31 + 88);
  *(v31 + 88) = v30;

  v33 = MEMORY[0x277CCAB70];
  v34 = [MEMORY[0x277CBEBC0] URLWithString:*(*&v92[8] + 40)];
  v35 = [v33 requestWithURL:v34];

  v36 = [*(*(a1 + 32) + 176) networkInterfaceName];
  LOBYTE(v34) = v36 == 0;

  if ((v34 & 1) == 0)
  {
    v37 = [*(*(a1 + 32) + 176) networkInterfaceName];
    [v35 setBoundInterfaceIdentifier:v37];
  }

  if ([*(*(a1 + 32) + 176) forceHTTP3])
  {
    [v35 setAssumesHTTP3Capable:1];
  }

  [v35 setValue:@"identity" forHTTPHeaderField:@"Accept-Encoding"];
  v38 = *(a1 + 32);
  v39 = *(v38 + 88);
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_134;
  v77[3] = &unk_2799693F0;
  v77[4] = v38;
  v77[5] = v92;
  v40 = [v39 dataTaskWithRequest:v35 completionHandler:v77];
  v41 = v40;
  if (bonjour_service)
  {
    [v40 set_hostOverride:bonjour_service];
LABEL_39:
    [v41 resume];

    _Block_object_dispose(v92, 8);
    goto LABEL_40;
  }

  v42 = [*(*(a1 + 32) + 176) hostOverride];
  v43 = v42 == 0;

  if (v43)
  {
    if (([*(*(a1 + 32) + 176) hasCustomConfigurationSet] & 1) != 0 || (l4s_enabled - 1) >= 2 && (objc_msgSend(*(*(a1 + 32) + 176), "forceL4S") & 1) == 0 && !objc_msgSend(*(*(a1 + 32) + 176), "forceDisableL4S"))
    {
      goto LABEL_39;
    }

    netqual_log_init();
    v61 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v86 = "[NetworkQualityExecutions runWithCompletionHandler:]_block_invoke";
      v87 = 1024;
      v88 = 1084;
      _os_log_impl(&dword_25B962000, v61, OS_LOG_TYPE_DEFAULT, "%s:%u - Using L4S Server pool for test run.", buf, 0x12u);
    }

    host = nw_endpoint_create_host("mensura-l4s.networking.apple", "443");
    [v41 set_hostOverride:host];
    goto LABEL_38;
  }

  v44 = MEMORY[0x277CBEBC0];
  v45 = [*(*(a1 + 32) + 176) configuration];
  host = [v44 URLWithString:v45];

  v47 = [host scheme];
  v48 = [host port];
  v49 = v48 == 0;

  if (!v49)
  {
    v50 = [host port];
    v51 = [v50 stringValue];
    v52 = v51;
    v53 = [v51 UTF8String];

LABEL_37:
    v66 = [*(*(a1 + 32) + 176) hostOverride];
    v67 = v66;
    v68 = nw_endpoint_create_host([v66 UTF8String], v53);
    [v41 set_hostOverride:v68];

LABEL_38:
    goto LABEL_39;
  }

  if ([v47 isEqualToString:@"https"] & 1) != 0 || (objc_msgSend(v47, "isEqualToString:", @"file"))
  {
    v53 = "443";
    goto LABEL_37;
  }

  if ([v47 isEqualToString:@"http"])
  {
    v53 = "80";
    goto LABEL_37;
  }

  v70 = MEMORY[0x277CCACA8];
  v71 = [*(*(a1 + 32) + 176) configuration];
  v72 = [*(*(a1 + 32) + 176) hostOverride];
  v73 = [v70 stringWithFormat:@"URL %@ not valid for use with host-override %@", v71, v72];

  netqual_log_init();
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_cold_2();
  }

  v74 = MEMORY[0x277CCA9B8];
  v83 = *MEMORY[0x277CCA450];
  v84 = v73;
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
  v76 = [v74 errorWithDomain:@"NetworkQualityErrorDomain" code:1006 userInfo:v75];

  [*(a1 + 32) reportingCompletionHandler:v76];
  _Block_object_dispose(v92, 8);

LABEL_40:
  v69 = *MEMORY[0x277D85DE8];
}

void __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_114(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  if (nw_array_get_count())
  {
    v4 = nw_array_get_object_at_index();
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_endpoint_get_hostname(v4)];
    if ([v5 hasSuffix:@"."])
    {
      v6 = [v5 substringToIndex:{objc_msgSend(v5, "length") - 1}];

      v5 = v6;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_endpoint_copy_port_string(v4)];
    if ([v7 isEqualToString:@"443"])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"https://%@/.well-known/nq", v5, v12];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"https://%@:%@/.well-known/nq", v5, v7];
    }
    v8 = ;
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = *(a1 + 32);
  nw_resolver_cancel();
  dispatch_semaphore_signal(*(a1 + 40));
}

void __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_134(uint64_t a1, void *a2, void *a3, void *a4)
{
  v46[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(*(a1 + 32) + 88) invalidateAndCancel];
  v10 = *(a1 + 32);
  v11 = *(v10 + 88);
  *(v10 + 88) = 0;

  v12 = v8;
  v13 = [v12 allHeaderFields];
  v14 = [v13 objectForKeyedSubscript:@"Apple-Client-ASN"];

  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v16 = [v15 numberFromString:v14];
    if (v16)
    {
      [*(*(a1 + 32) + 184) setAsn:v16];
    }
  }

  v17 = [v12 allHeaderFields];
  v18 = [v17 objectForKeyedSubscript:@"Apple-Client-ASN-Company"];

  if (v18)
  {
    [*(*(a1 + 32) + 184) setAsnName:v18];
  }

  if (v9)
  {
    [*(a1 + 32) reportingCompletionHandler:v9];
  }

  else
  {
    v19 = [v12 statusCode];
    if (v7 && v19 == 200)
    {
      v20 = [[NetworkQualityRemoteConfiguration alloc] initWithData:v7 andConfig:*(*(a1 + 32) + 176)];
      v21 = v20;
      if (v20)
      {
        v22 = [(NetworkQualityRemoteConfiguration *)v20 testEndpoint];
        [*(*(a1 + 32) + 184) setTestEndpoint:v22];

        objc_storeStrong((*(a1 + 32) + 104), v21);
        netqual_log_init();
        v23 = os_log_netqual;
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v40 = "[NetworkQualityExecutions runWithCompletionHandler:]_block_invoke";
          v41 = 1024;
          v42 = 1050;
          _os_log_impl(&dword_25B962000, v23, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Moving to initial stage", buf, 0x12u);
        }

        v24 = [MEMORY[0x277CBEAA8] now];
        v25 = *(a1 + 32);
        v26 = *(v25 + 216);
        *(v25 + 216) = v24;

        [*(a1 + 32) run];
      }

      else
      {
        v35 = MEMORY[0x277CCA9B8];
        v43 = *MEMORY[0x277CCA450];
        v44 = @"Could not parse server side configuration";
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v37 = [v35 errorWithDomain:@"NetworkQualityErrorDomain" code:1000 userInfo:v36];

        [*(a1 + 32) reportingCompletionHandler:v37];
      }
    }

    else
    {
      netqual_log_init();
      v27 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_134_cold_1(v27, v12, v7);
      }

      v28 = MEMORY[0x277CCA9B8];
      v45[0] = @"statusCode";
      v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "statusCode")}];
      v30 = [v29 stringValue];
      v45[1] = @"URL";
      v31 = *(*(*(a1 + 40) + 8) + 40);
      v46[0] = v30;
      v46[1] = v31;
      v45[2] = *MEMORY[0x277CCA450];
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected HTTP status code 200, got %lu", objc_msgSend(v12, "statusCode")];
      v46[2] = v32;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
      v34 = [v28 errorWithDomain:@"NetworkQualityErrorDomain" code:1003 userInfo:v33];

      [*(a1 + 32) reportingCompletionHandler:v34];
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)captureError:(id)error
{
  errorCopy = error;
  error = [(NetworkQualityResult *)self->_progressResults error];

  if (!error)
  {
    [(NetworkQualityResult *)self->_progressResults setError:errorCopy];
  }
}

- (void)execDLWithCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  netqual_log_init();
  v5 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[NetworkQualityExecutions execDLWithCompletionHandler:]";
    v25 = 1024;
    v26 = 1113;
    _os_log_impl(&dword_25B962000, v5, OS_LOG_TYPE_DEFAULT, "%s:%u - Running Multi-flow Download Test", buf, 0x12u);
  }

  v6 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig URLForURLType:1];
  v7 = [(NetworkQualityExecutions *)self createDefaultRequestwithURL:v6];

  if ([(NetworkQualityConfiguration *)self->config loadGeneratingNetworkServiceType])
  {
    [v7 setNetworkServiceType:{-[NetworkQualityConfiguration loadGeneratingNetworkServiceType](self->config, "loadGeneratingNetworkServiceType")}];
  }

  v8 = [DownloadThroughputDelegate alloc];
  operationQueue = self->_operationQueue;
  v10 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig testEndpoint:1];
  v11 = [(ThroughputDelegate *)v8 initWithExecution:self testName:@"tp_dl_multi_h2" withQueue:operationQueue testEndpoint:v10 withConfig:self->config resultsObject:self->_progressResults];

  if (self->dlDelegate)
  {
    [NetworkQualityExecutions execDLWithCompletionHandler:];
  }

  self->dlDelegate = v11;
  v12 = v11;

  v13 = nw_activity_create();
  downloadThroughputNWActivity = self->_downloadThroughputNWActivity;
  self->_downloadThroughputNWActivity = v13;

  v15 = self->_downloadThroughputNWActivity;
  parentNWActivity = self->_parentNWActivity;
  nw_activity_set_parent_activity();
  v17 = self->_downloadThroughputNWActivity;
  nw_activity_activate();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __56__NetworkQualityExecutions_execDLWithCompletionHandler___block_invoke;
  v22[3] = &unk_279969378;
  v22[4] = self;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56__NetworkQualityExecutions_execDLWithCompletionHandler___block_invoke_182;
  v20[3] = &unk_279969440;
  v20[4] = self;
  v21 = handlerCopy;
  v18 = handlerCopy;
  [(ThroughputDelegate *)v12 executeTaskWithRequest:v7 saturationHandler:v22 completionHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __56__NetworkQualityExecutions_execDLWithCompletionHandler___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 64) metExitCriteria];
  netqual_log_init();
  v3 = os_log_netqual;
  v4 = os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(*(a1 + 32) + 184);
      v6 = v3;
      v7 = [v5 downlinkCapacity];
      v8 = [v7 value];
      v9 = vcvtd_n_f64_s64([v8 integerValue], 0x14uLL);
      v10 = [*(*(a1 + 32) + 184) downlinkFlows];
      v11 = [v10 integerValue];
      v12 = [*(*(a1 + 32) + 184) downlinkBytesTransferred];
      v26 = 136316162;
      v27 = "[NetworkQualityExecutions execDLWithCompletionHandler:]_block_invoke";
      v28 = 1024;
      v29 = 1144;
      v30 = 2048;
      v31 = v9;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = [v12 integerValue];
      _os_log_impl(&dword_25B962000, v6, OS_LOG_TYPE_DEFAULT, "%s:%u - Exit throughput %.3f Mbps at %lu flows, transferred %ld bytes", &v26, 0x30u);
    }

    v13 = 250;
  }

  else
  {
    if (v4)
    {
      v14 = *(*(a1 + 32) + 184);
      v15 = v3;
      v16 = [v14 downlinkCapacity];
      v17 = [v16 value];
      v18 = vcvtd_n_f64_s64([v17 integerValue], 0x14uLL);
      v19 = [*(*(a1 + 32) + 184) downlinkFlows];
      v20 = [v19 integerValue];
      v21 = [*(*(a1 + 32) + 184) downlinkBytesTransferred];
      v26 = 136316162;
      v27 = "[NetworkQualityExecutions execDLWithCompletionHandler:]_block_invoke";
      v28 = 1024;
      v29 = 1151;
      v30 = 2048;
      v31 = v18;
      v32 = 2048;
      v33 = v20;
      v34 = 2048;
      v35 = [v21 integerValue];
      _os_log_impl(&dword_25B962000, v15, OS_LOG_TYPE_DEFAULT, "%s:%u - Saturation throughput %.3f Mbps at %lu flows, transferred %ld bytes", &v26, 0x30u);
    }

    v13 = 249;
  }

  *(*(a1 + 32) + v13) = 1;
  result = [*(a1 + 32) currentStageIs:6];
  if (result)
  {
    netqual_log_init();
    v23 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 249))
      {
        v24 = "True";
      }

      else
      {
        v24 = "False";
      }

      v26 = 136315650;
      v27 = "[NetworkQualityExecutions execDLWithCompletionHandler:]_block_invoke";
      v28 = 1024;
      v29 = 1158;
      v30 = 2080;
      v31 = *&v24;
      _os_log_impl(&dword_25B962000, v23, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Downlink saturated %s, moving to responsiveness", &v26, 0x1Cu);
    }

    result = [*(a1 + 32) run];
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void __56__NetworkQualityExecutions_execDLWithCompletionHandler___block_invoke_182(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 code] != -999)
    {
      v6 = [v4 domain];
      if (v6 == @"NetworkQualityErrorDomain")
      {
        [v4 code];
      }

      else
      {
      }
    }

    v7 = *(*(a1 + 32) + 48);
    nw_activity_complete_with_reason();
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __56__NetworkQualityExecutions_execDLWithCompletionHandler___block_invoke_182_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 32) + 48);
    nw_activity_complete_with_reason();
  }
}

- (void)execULWithCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  netqual_log_init();
  v5 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[NetworkQualityExecutions execULWithCompletionHandler:]";
    v25 = 1024;
    v26 = 1183;
    _os_log_impl(&dword_25B962000, v5, OS_LOG_TYPE_DEFAULT, "%s:%u - Running Multi-flow Upload Test", buf, 0x12u);
  }

  v6 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig URLForURLType:2];
  v7 = [(NetworkQualityExecutions *)self createDefaultRequestwithURL:v6];

  if ([(NetworkQualityConfiguration *)self->config loadGeneratingNetworkServiceType])
  {
    [v7 setNetworkServiceType:{-[NetworkQualityConfiguration loadGeneratingNetworkServiceType](self->config, "loadGeneratingNetworkServiceType")}];
  }

  v8 = [UploadThroughputDelegate alloc];
  operationQueue = self->_operationQueue;
  v10 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig testEndpoint:2];
  v11 = [(ThroughputDelegate *)v8 initWithExecution:self testName:@"tp_ul_multi_h2" withQueue:operationQueue testEndpoint:v10 withConfig:self->config resultsObject:self->_progressResults];

  if (self->ulDelegate)
  {
    [NetworkQualityExecutions execULWithCompletionHandler:];
  }

  self->ulDelegate = v11;
  v12 = v11;

  v13 = nw_activity_create();
  uploadThroughputNWActivity = self->_uploadThroughputNWActivity;
  self->_uploadThroughputNWActivity = v13;

  v15 = self->_uploadThroughputNWActivity;
  parentNWActivity = self->_parentNWActivity;
  nw_activity_set_parent_activity();
  v17 = self->_uploadThroughputNWActivity;
  nw_activity_activate();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __56__NetworkQualityExecutions_execULWithCompletionHandler___block_invoke;
  v22[3] = &unk_279969378;
  v22[4] = self;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56__NetworkQualityExecutions_execULWithCompletionHandler___block_invoke_188;
  v20[3] = &unk_279969440;
  v20[4] = self;
  v21 = handlerCopy;
  v18 = handlerCopy;
  [(ThroughputDelegate *)v12 executeTaskWithRequest:v7 saturationHandler:v22 completionHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __56__NetworkQualityExecutions_execULWithCompletionHandler___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 72) metExitCriteria];
  netqual_log_init();
  v3 = os_log_netqual;
  v4 = os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(*(a1 + 32) + 184);
      v6 = v3;
      v7 = [v5 uplinkCapacity];
      v8 = [v7 value];
      v9 = vcvtd_n_f64_s64([v8 integerValue], 0x14uLL);
      v10 = [*(*(a1 + 32) + 184) uplinkFlows];
      v11 = [v10 integerValue];
      v12 = [*(*(a1 + 32) + 184) uplinkBytesTransferred];
      v26 = 136316162;
      v27 = "[NetworkQualityExecutions execULWithCompletionHandler:]_block_invoke";
      v28 = 1024;
      v29 = 1214;
      v30 = 2048;
      v31 = v9;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = [v12 integerValue];
      _os_log_impl(&dword_25B962000, v6, OS_LOG_TYPE_DEFAULT, "%s:%u - Exit throughput %.3f Mbps at %lu flows, transferred %ld bytes", &v26, 0x30u);
    }

    v13 = 250;
  }

  else
  {
    if (v4)
    {
      v14 = *(*(a1 + 32) + 184);
      v15 = v3;
      v16 = [v14 uplinkCapacity];
      v17 = [v16 value];
      v18 = vcvtd_n_f64_s64([v17 integerValue], 0x14uLL);
      v19 = [*(*(a1 + 32) + 184) uplinkFlows];
      v20 = [v19 integerValue];
      v21 = [*(*(a1 + 32) + 184) uplinkBytesTransferred];
      v26 = 136316162;
      v27 = "[NetworkQualityExecutions execULWithCompletionHandler:]_block_invoke";
      v28 = 1024;
      v29 = 1221;
      v30 = 2048;
      v31 = v18;
      v32 = 2048;
      v33 = v20;
      v34 = 2048;
      v35 = [v21 integerValue];
      _os_log_impl(&dword_25B962000, v15, OS_LOG_TYPE_DEFAULT, "%s:%u - Saturation throughput %.3f Mbps at %lu flows, transferred %ld bytes", &v26, 0x30u);
    }

    v13 = 249;
  }

  *(*(a1 + 32) + v13) = 1;
  result = [*(a1 + 32) currentStageIs:9];
  if (result)
  {
    netqual_log_init();
    v23 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 249))
      {
        v24 = "True";
      }

      else
      {
        v24 = "False";
      }

      v26 = 136315650;
      v27 = "[NetworkQualityExecutions execULWithCompletionHandler:]_block_invoke";
      v28 = 1024;
      v29 = 1228;
      v30 = 2080;
      v31 = *&v24;
      _os_log_impl(&dword_25B962000, v23, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Uplink saturated %s, moving to responsiveness", &v26, 0x1Cu);
    }

    result = [*(a1 + 32) run];
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void __56__NetworkQualityExecutions_execULWithCompletionHandler___block_invoke_188(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 code] != -999)
    {
      v6 = [v4 domain];
      if (v6 == @"NetworkQualityErrorDomain")
      {
        [v4 code];
      }

      else
      {
      }
    }

    v7 = *(*(a1 + 32) + 56);
    nw_activity_complete_with_reason();
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __56__NetworkQualityExecutions_execULWithCompletionHandler___block_invoke_188_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 32) + 56);
    nw_activity_complete_with_reason();
  }
}

- (void)execParallelWithCompletionHandler:(id)handler
{
  v53 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  netqual_log_init();
  v5 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v50 = "[NetworkQualityExecutions execParallelWithCompletionHandler:]";
    v51 = 1024;
    v52 = 1258;
    _os_log_impl(&dword_25B962000, v5, OS_LOG_TYPE_DEFAULT, "%s:%u - Running Multi-flow Parallel Test", buf, 0x12u);
  }

  v6 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig URLForURLType:1];
  v7 = [(NetworkQualityExecutions *)self createDefaultRequestwithURL:v6];

  if ([(NetworkQualityConfiguration *)self->config loadGeneratingNetworkServiceType])
  {
    [v7 setNetworkServiceType:{-[NetworkQualityConfiguration loadGeneratingNetworkServiceType](self->config, "loadGeneratingNetworkServiceType")}];
  }

  v8 = [DownloadThroughputDelegate alloc];
  operationQueue = self->_operationQueue;
  v10 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig testEndpoint:1];
  v11 = [(ThroughputDelegate *)v8 initWithExecution:self testName:@"tp_dl_parallel_h2" withQueue:operationQueue testEndpoint:v10 withConfig:self->config resultsObject:self->_progressResults];

  if (self->dlDelegate)
  {
    __assert_rtn("[NetworkQualityExecutions execParallelWithCompletionHandler:]", "Executions.m", 1274, "self->dlDelegate == nil");
  }

  objc_storeStrong(&self->dlDelegate, v11);
  v12 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig URLForURLType:2];
  v13 = [(NetworkQualityExecutions *)self createDefaultRequestwithURL:v12];

  if ([(NetworkQualityConfiguration *)self->config loadGeneratingNetworkServiceType])
  {
    [v13 setNetworkServiceType:{-[NetworkQualityConfiguration loadGeneratingNetworkServiceType](self->config, "loadGeneratingNetworkServiceType")}];
  }

  v14 = [UploadThroughputDelegate alloc];
  v15 = self->_operationQueue;
  v16 = [(NetworkQualityRemoteConfiguration *)self->remoteConfig testEndpoint:2];
  v17 = [(ThroughputDelegate *)v14 initWithExecution:self testName:@"tp_ul_parallel_h2" withQueue:v15 testEndpoint:v16 withConfig:self->config resultsObject:self->_progressResults];

  if (self->ulDelegate)
  {
    __assert_rtn("[NetworkQualityExecutions execParallelWithCompletionHandler:]", "Executions.m", 1291, "self->ulDelegate == nil");
  }

  objc_storeStrong(&self->ulDelegate, v17);
  v18 = nw_activity_create();
  downloadThroughputNWActivity = self->_downloadThroughputNWActivity;
  self->_downloadThroughputNWActivity = v18;

  v20 = self->_downloadThroughputNWActivity;
  parentNWActivity = self->_parentNWActivity;
  nw_activity_set_parent_activity();
  v22 = self->_downloadThroughputNWActivity;
  nw_activity_activate();
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke;
  v40[3] = &unk_279969468;
  v40[4] = self;
  v40[5] = v45;
  v40[6] = v47;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_195;
  v36[3] = &unk_279969490;
  v36[4] = self;
  v23 = handlerCopy;
  v37 = v23;
  v38 = v43;
  v39 = v41;
  [(ThroughputDelegate *)v11 executeTaskWithRequest:v7 saturationHandler:v40 completionHandler:v36];
  v24 = nw_activity_create();
  uploadThroughputNWActivity = self->_uploadThroughputNWActivity;
  self->_uploadThroughputNWActivity = v24;

  v26 = self->_uploadThroughputNWActivity;
  v27 = self->_parentNWActivity;
  nw_activity_set_parent_activity();
  v28 = self->_uploadThroughputNWActivity;
  nw_activity_activate();
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_196;
  v35[3] = &unk_279969468;
  v35[4] = self;
  v35[5] = v47;
  v35[6] = v45;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_197;
  v31[3] = &unk_279969490;
  v31[4] = self;
  v29 = v23;
  v32 = v29;
  v33 = v41;
  v34 = v43;
  [(ThroughputDelegate *)v17 executeTaskWithRequest:v13 saturationHandler:v35 completionHandler:v31];

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v47, 8);

  v30 = *MEMORY[0x277D85DE8];
}

void __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  netqual_log_init();
  v2 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 184);
    v4 = v2;
    v5 = [v3 downlinkCapacity];
    v6 = [v5 value];
    v7 = vcvtd_n_f64_s64([v6 integerValue], 0x14uLL);
    v8 = [*(*(a1 + 32) + 184) downlinkFlows];
    v9 = [v8 integerValue];
    v10 = [*(*(a1 + 32) + 184) downlinkBytesTransferred];
    v11 = [v10 integerValue];
    v12 = *(*(*(a1 + 40) + 8) + 24);
    v17 = 136316418;
    v18 = "[NetworkQualityExecutions execParallelWithCompletionHandler:]_block_invoke";
    v19 = 1024;
    v20 = 1305;
    v21 = 2048;
    v22 = v7;
    v23 = 2048;
    v24 = v9;
    v25 = 2048;
    v26 = v11;
    v27 = 1024;
    v28 = v12;
    _os_log_impl(&dword_25B962000, v4, OS_LOG_TYPE_DEFAULT, "%s:%u - Download saturation throughput %.3f Mbps at %lu flows, transferred %ld bytes, uplink saturation %u", &v17, 0x36u);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v13 = [*(*(a1 + 32) + 72) metExitCriteria];
    v14 = 249;
    if (v13)
    {
      v14 = 250;
    }

    *(*(a1 + 32) + v14) = 1;
    if ([*(a1 + 32) currentStageIs:3])
    {
      netqual_log_init();
      v15 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315394;
        v18 = "[NetworkQualityExecutions execParallelWithCompletionHandler:]_block_invoke";
        v19 = 1024;
        v20 = 1317;
        _os_log_impl(&dword_25B962000, v15, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] parallel saturated - moving to responsiveness", &v17, 0x12u);
      }

      [*(a1 + 32) run];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_195(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 code] != -999)
    {
      v7 = [v4 domain];
      if (v7 == @"NetworkQualityErrorDomain")
      {
        [v4 code];
      }

      else
      {
      }
    }

    v8 = *(a1[4] + 48);
    nw_activity_complete_with_reason();
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_195_cold_1();
    }

    v6 = *(a1[5] + 16);
    goto LABEL_12;
  }

  v5 = *(a1[4] + 48);
  nw_activity_complete_with_reason();
  *(*(a1[6] + 8) + 24) = 1;
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    v6 = *(a1[5] + 16);
LABEL_12:
    v6();
  }
}

void __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_196(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  netqual_log_init();
  v2 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 184);
    v4 = v2;
    v5 = [v3 uplinkCapacity];
    v6 = [v5 value];
    v7 = vcvtd_n_f64_s64([v6 integerValue], 0x14uLL);
    v8 = [*(*(a1 + 32) + 184) uplinkFlows];
    v9 = [v8 integerValue];
    v10 = [*(*(a1 + 32) + 184) uplinkBytesTransferred];
    v11 = [v10 integerValue];
    v12 = *(*(*(a1 + 40) + 8) + 24);
    v17 = 136316418;
    v18 = "[NetworkQualityExecutions execParallelWithCompletionHandler:]_block_invoke";
    v19 = 1024;
    v20 = 1356;
    v21 = 2048;
    v22 = v7;
    v23 = 2048;
    v24 = v9;
    v25 = 2048;
    v26 = v11;
    v27 = 1024;
    v28 = v12;
    _os_log_impl(&dword_25B962000, v4, OS_LOG_TYPE_DEFAULT, "%s:%u - Upload saturation throughput %.3f Mbps at %lu flows, transferred %ld bytes, downlink saturation %u", &v17, 0x36u);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v13 = [*(*(a1 + 32) + 64) metExitCriteria];
    v14 = 249;
    if (v13)
    {
      v14 = 250;
    }

    *(*(a1 + 32) + v14) = 1;
    if ([*(a1 + 32) currentStageIs:3])
    {
      netqual_log_init();
      v15 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315394;
        v18 = "[NetworkQualityExecutions execParallelWithCompletionHandler:]_block_invoke";
        v19 = 1024;
        v20 = 1367;
        _os_log_impl(&dword_25B962000, v15, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] parallel saturated - moving to responsiveness", &v17, 0x12u);
      }

      [*(a1 + 32) run];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_197(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 code] != -999)
    {
      v7 = [v4 domain];
      if (v7 == @"NetworkQualityErrorDomain")
      {
        [v4 code];
      }

      else
      {
      }
    }

    v8 = *(a1[4] + 56);
    nw_activity_complete_with_reason();
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_197_cold_1();
    }

    v6 = *(a1[5] + 16);
    goto LABEL_12;
  }

  v5 = *(a1[4] + 56);
  nw_activity_complete_with_reason();
  *(*(a1[6] + 8) + 24) = 1;
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    v6 = *(a1[5] + 16);
LABEL_12:
    v6();
  }
}

- (void)reallyExecuteParallel
{
  v3 = [MEMORY[0x277CBEAA8] now];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__NetworkQualityExecutions_reallyExecuteParallel__block_invoke;
  v5[3] = &unk_2799694B8;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [(NetworkQualityExecutions *)self execParallelWithCompletionHandler:v5];
}

void __49__NetworkQualityExecutions_reallyExecuteParallel__block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 184) downlinkCapacity];
  v5 = [v4 value];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    [v6 timeIntervalSinceDate:*(a1 + 40)];
    v8 = v7;

    v9 = MEMORY[0x277CCABB0];
    v10 = [*(*(a1 + 32) + 184) downlinkBytesTransferred];
    v11 = [v9 numberWithInteger:{((8 * objc_msgSend(v10, "intValue")) / v8)}];
    v12 = [*(*(a1 + 32) + 184) downlinkCapacity];
    [v12 setValue:v11];

    v13 = [*(*(a1 + 32) + 184) downlinkCapacity];
    [v13 updateConfidence:1];
  }

  v14 = [*(*(a1 + 32) + 184) uplinkCapacity];
  v15 = [v14 value];

  if (!v15)
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    [v16 timeIntervalSinceDate:*(a1 + 40)];
    v18 = v17;

    v19 = MEMORY[0x277CCABB0];
    v20 = [*(*(a1 + 32) + 184) uplinkBytesTransferred];
    v21 = [v19 numberWithInteger:{((8 * objc_msgSend(v20, "intValue")) / v18)}];
    v22 = [*(*(a1 + 32) + 184) uplinkCapacity];
    [v22 setValue:v21];

    v23 = [*(*(a1 + 32) + 184) uplinkCapacity];
    [v23 updateConfidence:1];
  }

  [*(a1 + 32) shareProgress];
  if (v3)
  {
    v24 = [v3 domain];
    if (v24 != @"NetworkQualityErrorDomain")
    {

LABEL_12:
      [*(a1 + 32) reportingCompletionHandler:v3];
      goto LABEL_13;
    }

    if ([v3 code] != 1005)
    {
      goto LABEL_12;
    }

    if ((*(*(a1 + 32) + 96) & 1) == 0)
    {
      v25 = [v3 domain];
      if (v25 == @"NetworkQualityErrorDomain")
      {
        if ([v3 code] == 1005 && (objc_msgSend(*(a1 + 32), "isDraining") & 1) == 0)
        {
          netqual_log_init();
          v27 = os_log_netqual;
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
          {
            v28 = 136315394;
            v29 = "[NetworkQualityExecutions reallyExecuteParallel]_block_invoke";
            v30 = 1024;
            v31 = 1429;
            _os_log_impl(&dword_25B962000, v27, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Parallel data limit exceeded - moving to draining", &v28, 0x12u);
          }

          [*(a1 + 32) run];
        }
      }

      else
      {
      }
    }
  }

LABEL_13:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)reallyExecuteDL
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] now];
  netqual_log_init();
  v4 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[NetworkQualityExecutions reallyExecuteDL]";
    v11 = 1024;
    v12 = 1439;
    _os_log_impl(&dword_25B962000, v4, OS_LOG_TYPE_DEFAULT, "%s:%u - Running dl test", buf, 0x12u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__NetworkQualityExecutions_reallyExecuteDL__block_invoke;
  v7[3] = &unk_2799694B8;
  v7[4] = self;
  v8 = v3;
  v5 = v3;
  [(NetworkQualityExecutions *)self execDLWithCompletionHandler:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __43__NetworkQualityExecutions_reallyExecuteDL__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 184) downlinkCapacity];
  v5 = [v4 value];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    [v6 timeIntervalSinceDate:*(a1 + 40)];
    v8 = v7;

    v9 = MEMORY[0x277CCABB0];
    v10 = [*(*(a1 + 32) + 184) downlinkBytesTransferred];
    v11 = [v9 numberWithInteger:{((8 * objc_msgSend(v10, "intValue")) / v8)}];
    v12 = [*(*(a1 + 32) + 184) downlinkCapacity];
    [v12 setValue:v11];

    v13 = [*(*(a1 + 32) + 184) downlinkCapacity];
    [v13 updateConfidence:1];
  }

  [*(a1 + 32) shareProgress];
  if (v3)
  {
    v14 = [v3 domain];
    if (v14 != @"NetworkQualityErrorDomain")
    {

LABEL_10:
      [*(a1 + 32) reportingCompletionHandler:v3];
      goto LABEL_11;
    }

    if ([v3 code] != 1005)
    {
      goto LABEL_10;
    }

    if ((*(*(a1 + 32) + 96) & 1) == 0)
    {
      v15 = [v3 domain];
      if (v15 == @"NetworkQualityErrorDomain")
      {
        if ([v3 code] == 1005 && (objc_msgSend(*(a1 + 32), "isDraining") & 1) == 0)
        {
          netqual_log_init();
          v17 = os_log_netqual;
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136315394;
            v19 = "[NetworkQualityExecutions reallyExecuteDL]_block_invoke";
            v20 = 1024;
            v21 = 1462;
            _os_log_impl(&dword_25B962000, v17, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Downlink data limit exceeded - moving to draining", &v18, 0x12u);
          }

          [*(a1 + 32) run];
        }
      }

      else
      {
      }
    }
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)reallyExecuteUL
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] now];
  netqual_log_init();
  v4 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[NetworkQualityExecutions reallyExecuteUL]";
    v11 = 1024;
    v12 = 1472;
    _os_log_impl(&dword_25B962000, v4, OS_LOG_TYPE_DEFAULT, "%s:%u - Running ul test", buf, 0x12u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__NetworkQualityExecutions_reallyExecuteUL__block_invoke;
  v7[3] = &unk_2799694B8;
  v7[4] = self;
  v8 = v3;
  v5 = v3;
  [(NetworkQualityExecutions *)self execULWithCompletionHandler:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __43__NetworkQualityExecutions_reallyExecuteUL__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 184) uplinkCapacity];
  v5 = [v4 value];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    [v6 timeIntervalSinceDate:*(a1 + 40)];
    v8 = v7;

    v9 = MEMORY[0x277CCABB0];
    v10 = [*(*(a1 + 32) + 184) uplinkBytesTransferred];
    v11 = [v9 numberWithInteger:{((8 * objc_msgSend(v10, "intValue")) / v8)}];
    v12 = [*(*(a1 + 32) + 184) uplinkCapacity];
    [v12 setValue:v11];

    v13 = [*(*(a1 + 32) + 184) uplinkCapacity];
    [v13 updateConfidence:1];
  }

  [*(a1 + 32) shareProgress];
  if (v3)
  {
    v14 = [v3 domain];
    if (v14 != @"NetworkQualityErrorDomain")
    {

LABEL_10:
      [*(a1 + 32) reportingCompletionHandler:v3];
      goto LABEL_11;
    }

    if ([v3 code] != 1005)
    {
      goto LABEL_10;
    }

    if ((*(*(a1 + 32) + 96) & 1) == 0)
    {
      v15 = [v3 domain];
      if (v15 == @"NetworkQualityErrorDomain")
      {
        if ([v3 code] == 1005 && (objc_msgSend(*(a1 + 32), "isDraining") & 1) == 0)
        {
          netqual_log_init();
          v17 = os_log_netqual;
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136315394;
            v19 = "[NetworkQualityExecutions reallyExecuteUL]_block_invoke";
            v20 = 1024;
            v21 = 1495;
            _os_log_impl(&dword_25B962000, v17, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Uplink data limit exceeded - moving to draining", &v18, 0x12u);
          }

          [*(a1 + 32) run];
        }
      }

      else
      {
      }
    }
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_cancelWithOptionalError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  netqual_log_init();
  v5 = os_log_netqual;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (errorCopy)
    {
      code = [errorCopy code];
    }

    else
    {
      code = 0;
    }

    v19 = 136315650;
    v20 = "[NetworkQualityExecutions _cancelWithOptionalError:]";
    v21 = 1024;
    v22 = 1504;
    v23 = 2048;
    v24 = code;
    _os_log_impl(&dword_25B962000, v5, OS_LOG_TYPE_DEFAULT, "%s:%u - Canceling with %ld", &v19, 0x1Cu);
  }

  if (!self->cancelled)
  {
    self->cancelled = 1;
    delegate = self->_delegate;
    self->_delegate = 0;

    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    [(NetworkQualityExecutions *)self captureError:errorCopy];
    dlDelegate = self->dlDelegate;
    if (dlDelegate)
    {
      [(ThroughputDelegate *)dlDelegate cancel];
      v10 = self->dlDelegate;
      self->dlDelegate = 0;
    }

    ulDelegate = self->ulDelegate;
    if (ulDelegate)
    {
      [(ThroughputDelegate *)ulDelegate cancel];
      v12 = self->ulDelegate;
      self->ulDelegate = 0;
    }

    latencyDelegate = self->latencyDelegate;
    if (latencyDelegate)
    {
      [(LatencyURLSessionDelegate *)latencyDelegate cancel];
      v14 = self->latencyDelegate;
      self->latencyDelegate = 0;
    }

    configSession = self->_configSession;
    if (configSession)
    {
      [(NSURLSession *)configSession invalidateAndCancel];
      v16 = self->_configSession;
      self->_configSession = 0;
    }

    if (errorCopy)
    {
      parentNWActivity = self->_parentNWActivity;
      nw_activity_complete_with_reason();
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  executionsQueue = self->_executionsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__NetworkQualityExecutions_cancel__block_invoke;
  block[3] = &unk_279969378;
  block[4] = self;
  dispatch_async(executionsQueue, block);
}

void __34__NetworkQualityExecutions_cancel__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA450];
  v7[0] = @"Test canceled by user.";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"NetworkQualityErrorDomain" code:1004 userInfo:v3];
  [v1 _cancelWithOptionalError:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_sendSymptomReport
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_1();
  *(&v2[3] + 2) = 1567;
  _os_log_error_impl(&dword_25B962000, v0, OS_LOG_TYPE_ERROR, "%s:%u - Function getSymptomReporter failed", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  if ([(NetworkQualityConfiguration *)self->config validateCertificate])
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    v9 = MEMORY[0x277CCACF0];
    protectionSpace = [challengeCopy protectionSpace];
    v11 = [v9 credentialForTrust:{objc_msgSend(protectionSpace, "serverTrust")}];
    (handlerCopy)[2](handlerCopy, 0, v11);
  }
}

- (void)validateAndAdjustRuntimeParameters:(void *)a1 .cold.1(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5 = 136316162;
  v6 = "[NetworkQualityExecutions validateAndAdjustRuntimeParameters:]";
  v7 = 1024;
  v8 = 159;
  v9 = 2048;
  v10 = [a2 minRuntime];
  v11 = 2048;
  v12 = [a2 maxRuntime];
  v13 = 2048;
  v14 = [a2 maxRuntime] - 1;
  _os_log_error_impl(&dword_25B962000, v3, OS_LOG_TYPE_ERROR, "%s:%u - Minimum runtime %ld >= maxRuntime %ld, resetting minimum to %ld", &v5, 0x30u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfiguration:(void *)a1 .cold.1(void **a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 networkInterfaceName];
  v6[0] = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25B962000, v3, OS_LOG_TYPE_ERROR, "%s:%u - Invalid interface name %@ specified", v6, 0x1Cu);

  v5 = *MEMORY[0x277D85DE8];
}

void __31__NetworkQualityExecutions_run__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - IdleLatencyURLSessionDelegate failed with an error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __31__NetworkQualityExecutions_run__block_invoke_82_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - WorkingLatencyURLSessionDelegate failed with an error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __31__NetworkQualityExecutions_run__block_invoke_96_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - WorkingLatencyURLSessionDelegate failed with an error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __31__NetworkQualityExecutions_run__block_invoke_110_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - WorkingLatencyURLSessionDelegate failed with an error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "[NetworkQualityExecutions runWithCompletionHandler:]_block_invoke_2";
  *(buf + 6) = 1024;
  *(buf + 14) = 964;
  *(buf + 9) = 2112;
  *(buf + 20) = a1;
  _os_log_error_impl(&dword_25B962000, log, OS_LOG_TYPE_ERROR, "%s:%u - Timed-out resolving %@. Defaulting confURL", buf, 0x1Cu);
}

void __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__NetworkQualityExecutions_runWithCompletionHandler___block_invoke_134_cold_1(void *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  [a2 statusCode];
  *v8 = 136315906;
  OUTLINED_FUNCTION_1();
  *&v8[7] = 1026;
  v8[9] = 2048;
  v9 = v6;
  v10 = 2048;
  v11 = a3;
  _os_log_error_impl(&dword_25B962000, v5, OS_LOG_TYPE_ERROR, "%s:%u - Either the HTTP response %lu or network data %p are invalid", v8, 0x26u);

  v7 = *MEMORY[0x277D85DE8];
}

void __56__NetworkQualityExecutions_execDLWithCompletionHandler___block_invoke_182_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - Test failed with an error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__NetworkQualityExecutions_execULWithCompletionHandler___block_invoke_188_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - Test failed with an error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_195_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - Test failed with an error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__NetworkQualityExecutions_execParallelWithCompletionHandler___block_invoke_197_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - Test failed with an error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end