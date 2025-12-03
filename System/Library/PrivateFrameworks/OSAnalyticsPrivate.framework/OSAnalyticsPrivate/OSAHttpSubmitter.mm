@interface OSAHttpSubmitter
- (OSAHttpSubmitter)init;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)abort;
- (void)cancelCurrentTask;
- (void)postContent:(id)content withHeaders:(id)headers toEndpoint:(int)endpoint;
@end

@implementation OSAHttpSubmitter

- (OSAHttpSubmitter)init
{
  v7.receiver = self;
  v7.super_class = OSAHttpSubmitter;
  v2 = [(OSASubmitter *)&v7 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    submissionSem = v2->_submissionSem;
    v2->_submissionSem = v3;

    dataTask = v2->_dataTask;
    v2->_dataTask = 0;
  }

  return v2;
}

- (void)postContent:(id)content withHeaders:(id)headers toEndpoint:(int)endpoint
{
  v45 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  headersCopy = headers;
  response = self->_response;
  self->_response = 0;

  v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
  payload = self->_payload;
  self->_payload = v11;

  self->_thoughput_warnings = 0;
  self->_last_thoughput_check = 0.0;
  responseError = self->super._responseError;
  self->super._responseError = 0;

  v39 = contentCopy;
  endpointCopy = endpoint;
  if (endpoint == 2)
  {
    mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
    [mEMORY[0x277D36B80] appleInternal];

    v16 = @"https://gateway-oblivious.apple.com/iphonesubmissions/convert.jsp";
  }

  else if (endpoint == 1 && ([MEMORY[0x277D36B80] sharedInstance], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "appleInternal"), v14, (v15 & 1) != 0))
  {
    v16 = @"https://iphonesubmissions-uat.corp.apple.com/convert.jsp";
  }

  else
  {
    v16 = @"https://iphonesubmissions.apple.com/convert.jsp";
  }

  v18 = [MEMORY[0x277CBEBC0] URLWithString:v16];
  v19 = [v18 description];
  requestURL = self->super._requestURL;
  self->super._requestURL = v19;

  v21 = [MEMORY[0x277CCAB70] requestWithURL:v18 cachePolicy:1 timeoutInterval:60.0];
  [v21 setNetworkServiceType:5];
  [v21 setHTTPShouldHandleCookies:0];
  [v21 setHTTPMethod:@"POST"];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = headersCopy;
  v23 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v41;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v40 + 1) + 8 * i);
        v28 = [v22 objectForKeyedSubscript:v27];
        [v21 setValue:v28 forHTTPHeaderField:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v24);
  }

  [v21 setHTTPBody:v39];
  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v30 = defaultSessionConfiguration;
  if (endpointCopy == 2)
  {
    [defaultSessionConfiguration set_usesNWLoader:1];
  }

  v31 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v30 delegate:self delegateQueue:0];
  v32 = [v31 dataTaskWithRequest:v21];
  dataTask = self->_dataTask;
  self->_dataTask = v32;

  [(NSURLSessionDataTask *)self->_dataTask resume];
  dispatch_semaphore_wait(self->_submissionSem, 0xFFFFFFFFFFFFFFFFLL);
  objc_storeStrong(&self->super._responseData, self->_payload);
  v34 = self->_response;
  if (v34)
  {
    self->super._responseCode = [(NSHTTPURLResponse *)v34 statusCode];
    allHeaderFields = [(NSHTTPURLResponse *)self->_response allHeaderFields];
    responseHeaders = self->super._responseHeaders;
    self->super._responseHeaders = allHeaderFields;
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)abort
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_25D12D000, MEMORY[0x277D86220], a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancelCurrentTask
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_25D12D000, MEMORY[0x277D86220], a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    [(OSAHttpSubmitter *)v10 URLSession:v11 dataTask:v12 didReceiveResponse:v13 completionHandler:v14, v15, v16, v17];
  }

  handlerCopy[2](handlerCopy, 1);
  response = self->_response;
  self->_response = responseCopy;
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    [(OSAHttpSubmitter *)v7 URLSession:v8 dataTask:v9 didReceiveData:v10, v11, v12, v13, v14];
  }

  [(NSMutableData *)self->_payload appendData:dataCopy];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    [(OSAHttpSubmitter *)v11 URLSession:v12 task:v13 didCompleteWithError:v14, v15, v16, v17, v18];
    if (!errorCopy)
    {
      goto LABEL_9;
    }
  }

  else if (!errorCopy)
  {
    goto LABEL_9;
  }

  v19 = [errorCopy copy];
  responseError = self->super._responseError;
  self->super._responseError = v19;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = errorCopy;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Connection failed: %@", &v25, 0xCu);
  }

  domain = [errorCopy domain];
  v22 = domain;
  if (domain == *MEMORY[0x277CCA738])
  {
  }

  else
  {
    code = [errorCopy code];

    if (code != -999)
    {
      [(OSAHttpSubmitter *)self cancelCurrentTask];
    }
  }

LABEL_9:
  [sessionCopy finishTasksAndInvalidate];
  dispatch_semaphore_signal(self->_submissionSem);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  sentCopy = sent;
  v32 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v12 = v11;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [OSAHttpSubmitter URLSession:data task:sentCopy didSendBodyData:send totalBytesSent:? totalBytesExpectedToSend:?];
  }

  last_thoughput_check = self->_last_thoughput_check;
  if (last_thoughput_check != 0.0)
  {
    v14 = v12 - last_thoughput_check;
    v15 = vcvtd_n_f64_s64(data, 0xAuLL) / (pow(vcvtd_n_f64_s64(send, 0xAuLL), 0.4) * 0.5);
    v16 = v14 <= v15 ? 0 : self->_thoughput_warnings + 1;
    self->_thoughput_warnings = v16;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v22 = v12 - self->_last_thoughput_check;
      thoughput_warnings = self->_thoughput_warnings;
      *buf = 134218496;
      v27 = v22;
      v28 = 2048;
      v29 = v15;
      v30 = 1024;
      v31 = thoughput_warnings;
      _os_log_debug_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "  deltat: %.5f, threshold: %.1f (warnings %d)", buf, 0x1Cu);
    }
  }

  self->_last_thoughput_check = v12;
  if (self->_thoughput_warnings >= 2)
  {
    v17 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25 = @"Throughput threshold violation";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v19 = [v17 errorWithDomain:@"OSAHttpSubmitter" code:1 userInfo:v18];
    responseError = self->super._responseError;
    self->super._responseError = v19;

    [(OSAHttpSubmitter *)self abort];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(uint64_t)a3 dataTask:(uint64_t)a4 didReceiveResponse:(uint64_t)a5 completionHandler:(uint64_t)a6 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_25D12D000, MEMORY[0x277D86220], a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(uint64_t)a3 dataTask:(uint64_t)a4 didReceiveData:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_25D12D000, MEMORY[0x277D86220], a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(uint64_t)a3 task:(uint64_t)a4 didCompleteWithError:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_25D12D000, MEMORY[0x277D86220], a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(int)a3 task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:.cold.1(int a1, int a2, int a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4[0] = 67109632;
  v4[1] = a1;
  v5 = 1024;
  v6 = a2;
  v7 = 1024;
  v8 = a3;
  _os_log_debug_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "didSendBodyData %d (total %d of %d)", v4, 0x14u);
  v3 = *MEMORY[0x277D85DE8];
}

@end