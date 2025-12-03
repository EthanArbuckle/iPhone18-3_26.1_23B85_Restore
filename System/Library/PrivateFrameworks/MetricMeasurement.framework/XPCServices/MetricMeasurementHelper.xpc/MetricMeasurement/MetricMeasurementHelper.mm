@interface MetricMeasurementHelper
- (MetricMeasurementHelper)init;
- (void)_quiesceBeforeIterationHelper:(double)helper timeout:(double)timeout response:(id)response;
- (void)_sampleWithProxyMetric:(id)metric timeout:(double)timeout response:(id)response;
- (void)_startFunctionCoverageCollectionHelper:(id)helper response:(id)response;
- (void)_startPerformanceTraceHelper:(id)helper response:(id)response;
- (void)_stopFunctionCoverageCollectionHelper:(id)helper;
- (void)_stopPerformanceTraceHelper:(id)helper;
- (void)_terminateProcessesBeforeIterationHelper:(id)helper response:(id)response;
- (void)_uncacheBeforeIterationHelper:(id)helper response:(id)response;
- (void)_wakeWithPhrase:(id)phrase response:(id)response;
- (void)performanceTraceDidComplete:(id)complete withToken:(id)token withError:(id)error;
- (void)performanceTraceDidStart:(id)start;
- (void)performanceTraceDidStop:(id)stop;
@end

@implementation MetricMeasurementHelper

- (MetricMeasurementHelper)init
{
  v10.receiver = self;
  v10.super_class = MetricMeasurementHelper;
  v2 = [(MetricMeasurementHelper *)&v10 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    start_trace_sem = v2->_start_trace_sem;
    v2->_start_trace_sem = v3;

    v5 = dispatch_semaphore_create(0);
    completed_trace_sem = v2->_completed_trace_sem;
    v2->_completed_trace_sem = v5;

    v7 = dispatch_semaphore_create(0);
    stop_trace_sem = v2->_stop_trace_sem;
    v2->_stop_trace_sem = v7;
  }

  return v2;
}

- (void)performanceTraceDidStart:(id)start
{
  startCopy = start;
  if (startCopy)
  {
    objc_storeStrong(&performanceTraceDidStartError, start);
  }

  dispatch_semaphore_signal(self->_start_trace_sem);
}

- (void)performanceTraceDidStop:(id)stop
{
  stopCopy = stop;
  if (stopCopy)
  {
    objc_storeStrong(&performanceTraceDidStopError, stop);
  }

  dispatch_semaphore_signal(self->_stop_trace_sem);
}

- (void)performanceTraceDidComplete:(id)complete withToken:(id)token withError:(id)error
{
  completeCopy = complete;
  tokenCopy = token;
  errorCopy = error;
  if (errorCopy)
  {
    objc_storeStrong(&performanceTraceDidCompleteError, error);
  }

  objc_storeStrong(&self->_sandboxExtensionToken, token);
  objc_storeStrong(&self->_performanceTraceURL, complete);
  v12 = _MXMGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    performanceTraceURL = self->_performanceTraceURL;
    v14 = 138412290;
    v15 = performanceTraceURL;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Peformance trace URL: %@", &v14, 0xCu);
  }

  dispatch_semaphore_signal(self->_completed_trace_sem);
}

- (void)_wakeWithPhrase:(id)phrase response:(id)response
{
  phraseCopy = phrase;
  responseCopy = response;
  if ([phraseCopy isEqualToString:@"Copyright © 2019 Apple"])
  {
    v6 = [phraseCopy stringByAppendingString:@"ACK"];
    responseCopy[2](responseCopy, v6);
  }
}

- (void)_sampleWithProxyMetric:(id)metric timeout:(double)timeout response:(id)response
{
  metricCopy = metric;
  responseCopy = response;
  v9 = _MXMGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    metric = [metricCopy metric];
    *buf = 138412290;
    v18 = metric;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Attempting to sample probe using underlying metric: %@.", buf, 0xCu);
  }

  v16 = 0;
  _remoteProbe = [metricCopy _remoteProbe];
  v12 = [_remoteProbe sampleWithTimeout:&v16 stopReason:timeout];
  v13 = _MXMGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    samples = [v12 samples];
    *buf = 138412290;
    v18 = samples;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Captured Samples: %@. Now attempting to reply with this data.", buf, 0xCu);
  }

  responseCopy[2](responseCopy, v12, v16, 0);
  v15 = _MXMGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Replied with samples.", buf, 2u);
  }
}

- (void)_startPerformanceTraceHelper:(id)helper response:(id)response
{
  helperCopy = helper;
  responseCopy = response;
  v8 = _MXMGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = helperCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Setting the following configurations for performance trace: %@", buf, 0xCu);
  }

  if (helperCopy)
  {
    [PTTraceConfig configWithDictionary:helperCopy];
  }

  else
  {
    [PTTraceConfig configWithTemplate:1];
  }
  v9 = ;
  [v9 setSkipNotification:1];
  v10 = +[NSXPCConnection currentConnection];
  [v9 setOwnerPID:{objc_msgSend(v10, "processIdentifier")}];

  v11 = [PTTraceSession initWithConfig:v9];
  traceSession = self->_traceSession;
  self->_traceSession = v11;

  [(PTTraceSession *)self->_traceSession setDelegate:self];
  [(PTTraceSession *)self->_traceSession startPerformanceTrace];
  start_trace_sem = self->_start_trace_sem;
  v14 = dispatch_time(0, 20000000000);
  if (dispatch_semaphore_wait(start_trace_sem, v14))
  {
    v17 = NSLocalizedDescriptionKey;
    v18 = @"Timed out while trying to start the performance trace.";
    v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v16 = [NSError errorWithDomain:@"InstrumentErrorDomain" code:0 userInfo:v15];
  }

  else
  {
    v16 = 0;
  }

  responseCopy[2](responseCopy, v16, performanceTraceDidStartError, 0);
}

- (void)_stopPerformanceTraceHelper:(id)helper
{
  helperCopy = helper;
  traceSession = self->_traceSession;
  if (!traceSession)
  {
    v14 = NSLocalizedDescriptionKey;
    v15 = @"No performance trace session to stop.";
    v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v8 = [NSError errorWithDomain:@"InstrumentErrorDomain" code:0 userInfo:v13];
    v11 = 0;
    goto LABEL_7;
  }

  [(PTTraceSession *)traceSession stopPerformanceTrace];
  stop_trace_sem = self->_stop_trace_sem;
  v7 = dispatch_time(0, 20000000000);
  v8 = dispatch_semaphore_wait(stop_trace_sem, v7);
  completed_trace_sem = self->_completed_trace_sem;
  v10 = dispatch_time(0, 300000000000);
  v11 = dispatch_semaphore_wait(completed_trace_sem, v10);
  if (v8)
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = @"Stopping performance trace timed out.";
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v8 = [NSError errorWithDomain:@"InstrumentErrorDomain" code:0 userInfo:v12];
  }

  if (v11)
  {
    v16 = NSLocalizedDescriptionKey;
    v17 = @"Did not receive performance trace completed signal.";
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [NSError errorWithDomain:@"InstrumentErrorDomain" code:0 userInfo:v13];
LABEL_7:
  }

  helperCopy[2](helperCopy, self->_performanceTraceURL, self->_sandboxExtensionToken, v8, v11, performanceTraceDidStopError, performanceTraceDidCompleteError);
}

- (void)_startFunctionCoverageCollectionHelper:(id)helper response:(id)response
{
  helperCopy = helper;
  responseCopy = response;
  v8 = _MXMGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v30 = helperCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Setting the following configurations for function coverage: %@", buf, 0xCu);
  }

  v9 = [helperCopy valueForKey:@"targetedProcesses"];
  v10 = [helperCopy valueForKey:@"isLongRunningTest"];
  v11 = v10;
  if (!v10)
  {
    v10 = &__kCFBooleanTrue;
  }

  bOOLValue = [v10 BOOLValue];

  v13 = [helperCopy valueForKey:@"areTargetedProcessesRunning"];
  v14 = v13;
  if (!v13)
  {
    v13 = &__kCFBooleanFalse;
  }

  bOOLValue2 = [v13 BOOLValue];

  v16 = objc_alloc_init(FunctionCoverageCollection);
  functionCoverage = self->_functionCoverage;
  self->_functionCoverage = v16;

  v18 = _MXMGetLog();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
  if (bOOLValue)
  {
    if (v19)
    {
      v20 = [v9 componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v30 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Invoking lossy function coverage collection with targeted processes: %@", buf, 0xCu);
    }

    v21 = self->_functionCoverage;
    v28 = 0;
    v22 = &v28;
    [(FunctionCoverageCollection *)v21 startCollectingLossy:&v28 targetedProcesses:v9];
  }

  else
  {
    if (v19)
    {
      v23 = [v9 componentsJoinedByString:{@", "}];
      *buf = 138412546;
      v30 = v23;
      v31 = 1024;
      v32 = bOOLValue2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Invoking lossless function coverage collection with targeted processes: %@; targetedProcessesAreRunning: %d", buf, 0x12u);
    }

    v24 = self->_functionCoverage;
    v27 = 0;
    v22 = &v27;
    [(FunctionCoverageCollection *)v24 startCollectingLossless:&v27 targetedProcesses:v9 targetedProcessesAreRunning:0];
  }

  v25 = *v22;
  v26 = _MXMGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Finished starting function coverage collection", buf, 2u);
  }

  responseCopy[2](responseCopy, v25);
}

- (void)_stopFunctionCoverageCollectionHelper:(id)helper
{
  if (self->_functionCoverage)
  {
    helperCopy = helper;
    v6 = +[NSDate date];
    v7 = objc_alloc_init(NSDateFormatter);
    [v7 setDateStyle:1];
    [v7 setDateFormat:@"yyyy-MM-dd-HHmmss"];
    v8 = [v7 stringFromDate:v6];
    v9 = [NSString stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/XCTest-%@-Function-Coverage.json", v8];
    v10 = [NSURL fileURLWithPath:v9];
    functionCoverage = self->_functionCoverage;
    v14 = 0;
    [(FunctionCoverageCollection *)functionCoverage stopCollecting:&v14 outputJsonFilePath:v9];
    v12 = v14;
  }

  else
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"No function coverage session to stop.";
    helperCopy2 = helper;
    v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = [NSError errorWithDomain:@"InstrumentErrorDomain" code:0 userInfo:v6];
    v10 = 0;
    v9 = 0;
  }

  (*(helper + 2))(helper, v10, v12);
}

- (void)_quiesceBeforeIterationHelper:(double)helper timeout:(double)timeout response:(id)response
{
  responseCopy = response;
  v8 = objc_alloc_init(MXMTargetQueue);
  [(MXMTargetQueue *)v8 setTarget:helper];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  if (timeout > 0.0)
  {
    v9 = [(MXMTargetQueue *)v8 size];
    if (v9 >= timeout)
    {
      timeout = [(MXMTargetQueue *)v8 size];
    }
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100003110;
  v25 = sub_100003120;
  v26 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100003128;
  v15 = &unk_10000C4E8;
  v17 = &v21;
  v19 = __tp;
  v10 = v8;
  v16 = v10;
  v18 = &v27;
  timeoutCopy = timeout;
  v11 = [MXMSysmonRequest requestWithType:1 handler:&v12];
  [v11 addAttributes:{51, 13, 0, v12, v13, v14, v15}];
  [v11 setInterval:1.0];
  [v11 execute];
  [v11 wait];
  responseCopy[2](responseCopy, *(v28 + 24), v22[5]);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

- (void)_uncacheBeforeIterationHelper:(id)helper response:(id)response
{
  helperCopy = helper;
  responseCopy = response;
  v6 = objc_alloc_init(NSMutableArray);
  if (helperCopy && [helperCopy count])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v37 = helperCopy;
    v7 = helperCopy;
    v8 = [v7 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v46;
      do
      {
        v12 = 0;
        v13 = v10;
        do
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v45 + 1) + 8 * v12);
          v44 = v13;
          v15 = [MXMUncacheConfiguration configWithDictionary:v14 error:&v44];
          v10 = v44;

          if (v10)
          {
            v16 = 1;
          }

          else
          {
            v16 = v15 == 0;
          }

          if (v16)
          {
            v17 = _MXMGetLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to create MXMUncacheConfiguration from dictionaries.", buf, 2u);
            }

            responseCopy[2](responseCopy, 0, v10);
          }

          else
          {
            [v6 addObject:v15];
          }

          v12 = v12 + 1;
          v13 = v10;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    helperCopy = v37;
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v52 = NSLocalizedDescriptionKey;
    v53 = @"Array of uncache configurations was nil or empty.";
    v18 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v10 = [NSError errorWithDomain:@"InstrumentErrorDomain" code:0 userInfo:v18];

    responseCopy[2](responseCopy, 0, v10);
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  if ([v6 count])
  {
    v38 = helperCopy;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v6;
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (!v20)
    {
      goto LABEL_42;
    }

    v21 = v20;
    v22 = *v41;
    while (1)
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v40 + 1) + 8 * i);
        filepath = [v24 filepath];
        if (!filepath || (v26 = filepath, [v24 filepath], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "length"), v27, v26, !v28))
        {
          v33 = _MXMGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            filepath2 = [v24 filepath];
            *buf = 138412290;
            v50 = filepath2;
            v35 = v33;
            v36 = "Invalid filepath: %@";
LABEL_38:
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, v36, buf, 0xCu);
          }

LABEL_39:

          continue;
        }

        v29 = _MXMGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          filepath3 = [v24 filepath];
          *buf = 138412290;
          v50 = filepath3;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Attempting to uncache filepath: %@", buf, 0xCu);
        }

        filepath4 = [v24 filepath];
        v32 = _uncacheFilepath(filepath4);

        if (v32)
        {
          v33 = _MXMGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            filepath2 = [v24 filepath];
            *buf = 138412290;
            v50 = filepath2;
            v35 = v33;
            v36 = "Failed to uncache filepath: %@";
            goto LABEL_38;
          }

          goto LABEL_39;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v40 objects:v51 count:16];
      if (!v21)
      {
LABEL_42:

        helperCopy = v38;
        break;
      }
    }
  }

LABEL_43:
  responseCopy[2](responseCopy, 1, v10);
}

- (void)_terminateProcessesBeforeIterationHelper:(id)helper response:(id)response
{
  helperCopy = helper;
  responseCopy = response;
  v6 = objc_alloc_init(NSMutableArray);
  if (helperCopy && [helperCopy count])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v37 = helperCopy;
    v7 = helperCopy;
    v8 = [v7 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v46;
      do
      {
        v12 = 0;
        v13 = v10;
        do
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v45 + 1) + 8 * v12);
          v44 = v13;
          v15 = [MXMTerminateProcessConfiguration configWithDictionary:v14 error:&v44];
          v10 = v44;

          if (v10)
          {
            v16 = 1;
          }

          else
          {
            v16 = v15 == 0;
          }

          if (v16)
          {
            v17 = _MXMGetLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to create MXMTerminateProcessConfiguration from dictionaries.", buf, 2u);
            }

            responseCopy[2](responseCopy, 0, v10);
          }

          else
          {
            [v6 addObject:v15];
          }

          v12 = v12 + 1;
          v13 = v10;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    helperCopy = v37;
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v52 = NSLocalizedDescriptionKey;
    v53 = @"Array of terminate process configurations was nil or empty.";
    v18 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v10 = [NSError errorWithDomain:@"InstrumentErrorDomain" code:0 userInfo:v18];

    responseCopy[2](responseCopy, 0, v10);
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  if ([v6 count])
  {
    v38 = helperCopy;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v6;
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (!v20)
    {
      goto LABEL_42;
    }

    v21 = v20;
    v22 = *v41;
    while (1)
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v40 + 1) + 8 * i);
        processName = [v24 processName];
        if (!processName || (v26 = processName, [v24 processName], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "length"), v27, v26, !v28))
        {
          v33 = _MXMGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            processName2 = [v24 processName];
            *buf = 138412290;
            v50 = processName2;
            v35 = v33;
            v36 = "Invalid process name: %@";
LABEL_38:
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, v36, buf, 0xCu);
          }

LABEL_39:

          continue;
        }

        v29 = _MXMGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          processName3 = [v24 processName];
          *buf = 138412290;
          v50 = processName3;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Attempting to terminate process with name: %@", buf, 0xCu);
        }

        processName4 = [v24 processName];
        v32 = _terminateProcess(processName4);

        if ((v32 & 1) == 0)
        {
          v33 = _MXMGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            processName2 = [v24 processName];
            *buf = 138412290;
            v50 = processName2;
            v35 = v33;
            v36 = "Failed to terminate process name: %@";
            goto LABEL_38;
          }

          goto LABEL_39;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v40 objects:v51 count:16];
      if (!v21)
      {
LABEL_42:

        helperCopy = v38;
        break;
      }
    }
  }

LABEL_43:
  responseCopy[2](responseCopy, 1, v10);
}

@end