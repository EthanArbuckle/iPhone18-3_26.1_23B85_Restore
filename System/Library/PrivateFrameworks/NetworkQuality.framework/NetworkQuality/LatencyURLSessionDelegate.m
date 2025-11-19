@interface LatencyURLSessionDelegate
- (LatencyURLSessionDelegate)initWithConfiguration:(id)a3 testName:(id)a4 queue:(id)a5 testEndpoint:(id)a6 resultsObject:(id)a7 resultsDelegate:(id)a8 tcpKey:(id)a9 tlsKey:(id)a10 reqrespKey:(id)a11 selfKey:(id)a12;
- (int)didFinishCollectingMetrics:(id)a3 task:(id)a4;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)cancelWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)executeTaskWithRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation LatencyURLSessionDelegate

- (LatencyURLSessionDelegate)initWithConfiguration:(id)a3 testName:(id)a4 queue:(id)a5 testEndpoint:(id)a6 resultsObject:(id)a7 resultsDelegate:(id)a8 tcpKey:(id)a9 tlsKey:(id)a10 reqrespKey:(id)a11 selfKey:(id)a12
{
  v42 = a3;
  v41 = a4;
  obj = a5;
  v40 = a5;
  v34 = a6;
  v39 = a6;
  v38 = a7;
  v35 = a8;
  v37 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v43.receiver = self;
  v43.super_class = LatencyURLSessionDelegate;
  v22 = [(LatencyURLSessionDelegate *)&v43 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_config, a3);
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sessions = v23->_sessions;
    v23->_sessions = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tasks = v23->_tasks;
    v23->_tasks = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    metrics = v23->_metrics;
    v23->_metrics = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    workingMetrics = v23->_workingMetrics;
    v23->_workingMetrics = v30;

    objc_storeStrong(&v23->_queue, obj);
    objc_storeStrong(&v23->_testEndpoint, v34);
    objc_storeStrong(&v23->_results, a7);
    objc_storeStrong(&v23->_execution, v35);
    objc_storeStrong(&v23->_tcpKey, a9);
    objc_storeStrong(&v23->_tlsKey, a10);
    objc_storeStrong(&v23->_reqrespKey, a11);
    objc_storeStrong(&v23->_selfKey, a12);
    objc_storeStrong(&v23->_testName, a4);
    v23->_parallel = 8;
    v23->_exitCriteriaCounter = 0;
  }

  return v23;
}

- (void)executeTaskWithRequest:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[LatencyURLSessionDelegate executeTaskWithRequest:completionHandler:]", "LatencyURLSessionDelegate.m", 96, "0");
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_storeStrong(&self->_error, a4);
    netqual_log_init();
    v8 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [(LatencyURLSessionDelegate *)v7 URLSession:v8 didBecomeInvalidWithError:?];
    }
  }

  [(NSMutableArray *)self->_sessions removeObject:v6];
  if (![(NSMutableArray *)self->_sessions count])
  {
    cancelCompletionHandler = self->_cancelCompletionHandler;
    if (cancelCompletionHandler)
    {
      cancelCompletionHandler[2](cancelCompletionHandler, v7);
    }
  }
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v11 = a4;
  v7 = a5;
  if ([(NetworkQualityConfiguration *)self->_config validateCertificate])
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
  if ([(NetworkQualityConfiguration *)self->_config validateCertificate])
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
  v21[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = a7;
  netqual_log_init();
  v13 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    [LatencyURLSessionDelegate URLSession:v13 task:v11 willPerformHTTPRedirection:v10 newRequest:? completionHandler:?];
  }

  v14 = objc_alloc(MEMORY[0x277CCA9B8]);
  v20 = *MEMORY[0x277CCA450];
  v21[0] = @"Unexpected redirect on latency measuring connection";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v16 = [v14 initWithDomain:@"NetworkQualityErrorDomain" code:1003 userInfo:v15];
  error = self->_error;
  self->_error = v16;

  v12[2](v12, 0);
  if (!self->_canceled)
  {
    v18 = self->_error;
    (*(self->_completionHandler + 2))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (int)didFinishCollectingMetrics:(id)a3 task:(id)a4
{
  v74[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NetworkQualityExecutionsResult *)self->_results mutableURLSessionMetrics];
  v9 = [v8 valueForKey:self->_testName];

  if (!v9)
  {
    v10 = [v6 transactionMetrics];
    v11 = [v10 firstObject];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = [(NetworkQualityExecutionsResult *)self->_results mutableURLSessionMetrics];
    [v12 setObject:v9 forKey:self->_testName];

    v13 = [(NetworkQualityResult *)self->_results interfaceName];

    if (!v13)
    {
      v14 = [v11 _interfaceName];
      [(NetworkQualityResult *)self->_results setInterfaceName:v14];

      -[NetworkQualityResult setIsCellular:](self->_results, "setIsCellular:", [v11 isCellular]);
    }
  }

  if ([v9 count] >= 0xB)
  {
    [v9 removeObjectAtIndex:0];
  }

  [v9 addObject:v6];
  if ([v6 redirectCount])
  {
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [LatencyURLSessionDelegate didFinishCollectingMetrics:task:];
    }

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v73 = *MEMORY[0x277CCA450];
    v74[0] = @"Unexpected redirect when collecting metrics";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:&v73 count:1];
    v17 = [v15 initWithDomain:@"NetworkQualityErrorDomain" code:1002 userInfo:v16];
    error = self->_error;
    self->_error = v17;

    if (self->_canceled)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v20 = [v6 transactionMetrics];
  v21 = [v20 count];

  if (v21)
  {
    if (self->_canceled)
    {
      goto LABEL_14;
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v34 = [v6 transactionMetrics];
    v35 = [v34 countByEnumeratingWithState:&v52 objects:v70 count:16];
    if (v35)
    {
      v36 = v35;
      v51 = v7;
      v22 = 0;
      v37 = *v53;
      while (2)
      {
        v38 = 0;
        v50 = v22 + v36;
        do
        {
          if (*v53 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [*(*(&v52 + 1) + 8 * v38) response];
          v40 = [v39 statusCode];

          if (v40 == 200)
          {

            goto LABEL_31;
          }

          ++v22;
          ++v38;
        }

        while (v36 != v38);
        v36 = [v34 countByEnumeratingWithState:&v52 objects:v70 count:16];
        v22 = v50;
        if (v36)
        {
          continue;
        }

        break;
      }

      v7 = v51;
    }

    else
    {
      v40 = 0;
    }

    netqual_log_init();
    v41 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      v47 = v41;
      v48 = [v6 transactionMetrics];
      v49 = [v48 firstObject];
      *buf = 136316418;
      v59 = "[LatencyURLSessionDelegate didFinishCollectingMetrics:task:]";
      v60 = 1024;
      v61 = 250;
      v62 = 2048;
      v63 = v40;
      v64 = 2112;
      v65 = v7;
      v66 = 2112;
      v67 = v6;
      v68 = 2112;
      v69 = v49;
      _os_log_error_impl(&dword_25B962000, v47, OS_LOG_TYPE_ERROR, "%s:%u - This should not happen - response status code is %ld on task %@ metrics %@ tMet %@", buf, 0x3Au);
    }

    v42 = objc_alloc(MEMORY[0x277CCA9B8]);
    v56[0] = *MEMORY[0x277CCA450];
    v56[1] = @"statusCode";
    v57[0] = @"Incorrect response status code on latency measuring connection";
    v43 = [MEMORY[0x277CCABB0] numberWithInteger:v40];
    v57[1] = v43;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
    v45 = [v42 initWithDomain:@"NetworkQualityErrorDomain" code:1003 userInfo:v44];
    v46 = self->_error;
    self->_error = v45;

LABEL_11:
    v19 = self->_error;
    (*(self->_completionHandler + 2))();
LABEL_14:
    v22 = -1;
    goto LABEL_15;
  }

  netqual_log_init();
  v25 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    [(LatencyURLSessionDelegate *)self didFinishCollectingMetrics:v7 task:v25];
  }

  v51 = v7;
  v26 = objc_alloc(MEMORY[0x277CCA9B8]);
  v27 = *MEMORY[0x277CCA450];
  v72[0] = @"Unexpected number of transactionMetrics";
  v71[0] = v27;
  v71[1] = @"count";
  v28 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  v72[1] = v28;
  v71[2] = @"canceled";
  v29 = [MEMORY[0x277CCABB0] numberWithBool:self->_canceled];
  v72[2] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:3];
  v31 = [v26 initWithDomain:@"NetworkQualityErrorDomain" code:1002 userInfo:v30];
  v32 = self->_error;
  self->_error = v31;

  if (!self->_canceled)
  {
    v33 = self->_error;
    (*(self->_completionHandler + 2))();
  }

  v22 = -1;
LABEL_31:
  v7 = v51;
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = LatencyURLSessionDelegate;
  [(LatencyURLSessionDelegate *)&v2 dealloc];
}

- (void)cancelWithCompletionHandler:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  self->_canceled = 1;
  v4 = MEMORY[0x25F873620](a3, a2);
  cancelCompletionHandler = self->_cancelCompletionHandler;
  self->_cancelCompletionHandler = v4;

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

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
    block[2] = __57__LatencyURLSessionDelegate_cancelWithCompletionHandler___block_invoke;
    block[3] = &unk_279969378;
    block[4] = self;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(void *)a3 didBecomeInvalidWithError:.cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  v5 = a3;
  [v4 count];
  v8[0] = 136315906;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  v9 = a1;
  v10 = 2048;
  v11 = v6;
  _os_log_error_impl(&dword_25B962000, v5, OS_LOG_TYPE_ERROR, "%s:%u - session completed with error: %@, count: %lu", v8, 0x26u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(void *)a3 task:willPerformHTTPRedirection:newRequest:completionHandler:.cold.1(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 URL];
  v7 = [a3 originalRequest];
  v8 = [v7 URL];
  v12[0] = 136315906;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  v13 = v6;
  v14 = v9;
  v15 = v10;
  _os_log_error_impl(&dword_25B962000, v5, OS_LOG_TYPE_ERROR, "%s:%u - Unexpected redirect to %@ for %@", v12, 0x26u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didFinishCollectingMetrics:task:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - This should not happen - redirects should be caught by willPerformHTTPRedirection on task %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didFinishCollectingMetrics:(os_log_t)log task:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 160);
  v5 = 136315906;
  v6 = "[LatencyURLSessionDelegate didFinishCollectingMetrics:task:]";
  v7 = 1024;
  v8 = 213;
  v9 = 1024;
  v10 = v3;
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_25B962000, log, OS_LOG_TYPE_ERROR, "%s:%u - Unexpected number of transactionMetrics | cancelled=%d on task %@", &v5, 0x22u);
  v4 = *MEMORY[0x277D85DE8];
}

@end