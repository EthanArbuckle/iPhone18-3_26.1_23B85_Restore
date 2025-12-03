@interface UploadThroughputDelegate
- (BOOL)checkLimits;
- (id)amendRequest:(id)request;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)updateResultsWithByteCount;
- (void)updateResultsWithFlowCount;
- (void)updateResultsWithThroughput:(int64_t)throughput confidence:(int64_t)confidence;
@end

@implementation UploadThroughputDelegate

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  streamCopy = stream;
  v7 = [[UploadDataStream alloc] initWithLength:0x400000000 andThroughputDelegate:self];
  [(NSMutableArray *)self->super._uploadStream addObject:v7];
  streamCopy[2](streamCopy, v7);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  v28[3] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  v10 = responseCopy;
  if ([v10 statusCode] == 200)
  {
    if (self->super._currentBytesTransferred)
    {
      handlerCopy[2](handlerCopy, 1);
      goto LABEL_13;
    }

    v24 = handlerCopy;
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Request got 200, but transferred no bytes on throughput measurement connection. Is the server configured correctly?"];
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [UploadThroughputDelegate URLSession:dataTask:didReceiveResponse:completionHandler:];
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = 1012;
    v25[0] = @"statusCode";
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "statusCode")}];
    stringValue = [v14 stringValue];
    v26[0] = stringValue;
    v25[1] = @"URL";
    v16 = [(NSURLRequest *)self->super._request URL];
    v25[2] = *MEMORY[0x277CCA450];
    v26[1] = v16;
    v26[2] = v11;
    v17 = MEMORY[0x277CBEAC0];
    v18 = v26;
    v19 = v25;
  }

  else
  {
    v24 = handlerCopy;
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected HTTP status code 200, got %lu", objc_msgSend(v10, "statusCode")];
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [UploadThroughputDelegate URLSession:dataTask:didReceiveResponse:completionHandler:];
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = 1003;
    v27[0] = @"statusCode";
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "statusCode")}];
    stringValue = [v14 stringValue];
    v28[0] = stringValue;
    v27[1] = @"URL";
    v16 = [(NSURLRequest *)self->super._request URL];
    v27[2] = *MEMORY[0x277CCA450];
    v28[1] = v16;
    v28[2] = v11;
    v17 = MEMORY[0x277CBEAC0];
    v18 = v28;
    v19 = v27;
  }

  v20 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:3];
  v21 = [v12 errorWithDomain:@"NetworkQualityErrorDomain" code:v13 userInfo:v20];

  if (!self->super._canceled)
  {
    objc_storeStrong(&self->super._error, v21);
    error = self->super._error;
    (*(self->super._completionHandler + 2))();
  }

  handlerCopy = v24;
  v24[2](v24, 0);

LABEL_13:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  v23 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if (!self->super._canceled && !self->super._exitCriteriaMet)
  {
    if ([(NSMutableArray *)self->super._probeSessions indexOfObject:sessionCopy]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->super._probeSessions addObject:sessionCopy];
    }

    v10 = [MEMORY[0x277CBEAA8] now];
    lastUpdate = self->super._lastUpdate;
    self->super._lastUpdate = v10;

    [(ThroughputDelegate *)self addNewThroughputMeasurement:data];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = self->super._uploadStream;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v18 + 1) + 8 * i) signalProgress];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)amendRequest:(id)request
{
  requestCopy = request;
  [requestCopy setHTTPMethod:@"POST"];
  0x400000000 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", 0x400000000];
  [requestCopy setValue:0x400000000 forHTTPHeaderField:@"Content-Length"];

  return requestCopy;
}

- (void)updateResultsWithFlowCount
{
  if (!self->super._canceled)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSMutableArray count](self->super._tasks, "count")}];
    [(NetworkQualityResult *)self->super._results setUplinkFlows:v4];
  }
}

- (void)updateResultsWithByteCount
{
  if (!self->super._canceled)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->super._currentBytesTransferred];
    [(NetworkQualityResult *)self->super._results setUplinkBytesTransferred:v4];
  }
}

- (void)updateResultsWithThroughput:(int64_t)throughput confidence:(int64_t)confidence
{
  if (!self->super._canceled)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:throughput];
    uplinkCapacity = [(NetworkQualityResult *)self->super._results uplinkCapacity];
    [uplinkCapacity setValue:v7];

    uplinkCapacity2 = [(NetworkQualityResult *)self->super._results uplinkCapacity];
    [uplinkCapacity2 updateConfidence:confidence];
  }
}

- (BOOL)checkLimits
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(NetworkQualityConfiguration *)self->super._nqConfig maxUplinkData])
  {
    currentBytesTransferred = self->super._currentBytesTransferred;
    if (currentBytesTransferred > [(NetworkQualityConfiguration *)self->super._nqConfig maxUplinkData])
    {
      netqual_log_init();
      v4 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        v5 = self->super._currentBytesTransferred;
        nqConfig = self->super._nqConfig;
        v7 = v4;
        *buf = 136315906;
        v26 = "[UploadThroughputDelegate checkLimits]";
        v27 = 1024;
        v28 = 727;
        v29 = 2048;
        v30 = *&v5;
        v31 = 2048;
        maxUplinkData = [(NetworkQualityConfiguration *)nqConfig maxUplinkData];
        _os_log_impl(&dword_25B962000, v7, OS_LOG_TYPE_DEFAULT, "%s:%u - Uploaded too many bytes: %ld max: %ld", buf, 0x26u);
      }

      if (!self->super._canceled)
      {
        v18 = objc_alloc(MEMORY[0x277CCA9B8]);
        v23 = *MEMORY[0x277CCA450];
        v24 = @"Datalimit exceeded";
        v8 = 1;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v20 = [v18 initWithDomain:@"NetworkQualityErrorDomain" code:1005 userInfo:v19];
        error = self->super._error;
        self->super._error = v20;

        v22 = self->super._error;
        (*(self->super._completionHandler + 2))();
        goto LABEL_16;
      }

      goto LABEL_6;
    }
  }

  [(SaturationDetection *)self->super._saturation getAverage];
  if (self->super._exitCriteriaMet || (v10 = v9, ![(NetworkQualityConfiguration *)self->super._nqConfig maxUplinkThroughput]) || [(NetworkQualityConfiguration *)self->super._nqConfig maxUplinkThroughput]>= v10)
  {
    v8 = 0;
    goto LABEL_16;
  }

  netqual_log_init();
  v11 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->super._nqConfig;
    v13 = v11;
    *buf = 136315906;
    v26 = "[UploadThroughputDelegate checkLimits]";
    v27 = 1024;
    v28 = 745;
    v29 = 2048;
    v30 = vcvtd_n_f64_s64(v10, 0x14uLL);
    v31 = 2048;
    maxUplinkData = vcvtd_n_f64_s64([(NetworkQualityConfiguration *)v12 maxUplinkThroughput], 0x14uLL);
    _os_log_impl(&dword_25B962000, v13, OS_LOG_TYPE_DEFAULT, "%s:%u - Uplink throughput exceeded: %.3f Mbps max: %.3f Mbps", buf, 0x26u);
  }

  [(SaturationDetection *)self->super._saturation getAverage];
  [(UploadThroughputDelegate *)self updateResultsWithThroughput:v14 confidence:2];
  v8 = 1;
  self->super._exitCriteriaMet = 1;
  if (!self->super._saturationReached)
  {
    saturationHandler = self->super._saturationHandler;
    if (saturationHandler)
    {
      saturationHandler[2]();
    }

LABEL_6:
    v8 = 1;
  }

LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)URLSession:dataTask:didReceiveResponse:completionHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:dataTask:didReceiveResponse:completionHandler:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end