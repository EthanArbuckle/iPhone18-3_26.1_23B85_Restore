@interface OspreyGRPCChannel
- (OspreyGRPCChannel)initWithURL:(id)l configuration:(id)configuration queue:(id)queue;
- (id)bidirectionalStreamingRequest:(id)request streamingResponseHandler:(id)handler completion:(id)completion;
- (id)clientStreamingContextForRequest:(id)request streamingResponseHandler:(id)handler completion:(id)completion;
- (id)clientStreamingRequest:(id)request responseHandler:(id)handler streamingContext:(id)context;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)bidirectionalStreamingRequest:(id)request streamingContext:(id)context;
- (void)cancel;
- (void)close;
- (void)dealloc;
- (void)preconnect;
- (void)serverStreamingRequest:(id)request requestData:(id)data streamingResponseHandler:(id)handler completion:(id)completion;
- (void)setAbsintheTimestampForKey:(id)key;
- (void)unaryRequest:(id)request requestData:(id)data responseHandler:(id)handler;
@end

@implementation OspreyGRPCChannel

- (OspreyGRPCChannel)initWithURL:(id)l configuration:(id)configuration queue:(id)queue
{
  lCopy = l;
  configurationCopy = configuration;
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = OspreyGRPCChannel;
  v11 = [(OspreyGRPCChannel *)&v25 init];
  if (v11)
  {
    OspreyLoggingInit();
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
    {
      [OspreyGRPCChannel initWithURL:configuration:queue:];
    }

    v12 = [lCopy copy];
    baseURL = v11->_baseURL;
    v11->_baseURL = v12;

    objc_storeStrong(&v11->_queue, queue);
    v14 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [v14 setUnderlyingQueue:v11->_queue];
    if (OspreyIsEntitledForMPTCP())
    {
      [configurationCopy set_allowsMultipathTCP:1];
      [configurationCopy set_multipathAlternatePort:5228];
      OspreyLoggingInit();
      v15 = OspreyLogContextGRPC;
      if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
      {
        [OspreyGRPCChannel initWithURL:configurationCopy configuration:v15 queue:?];
      }
    }

    if ([configurationCopy TLSMinimumSupportedProtocolVersion] <= 0x302)
    {
      [configurationCopy setTLSMinimumSupportedProtocolVersion:771];
    }

    [configurationCopy set_allowsTLSFalseStart:1];
    v16 = [MEMORY[0x277CCAD30] sessionWithConfiguration:configurationCopy delegate:v11 delegateQueue:v14];
    session = v11->_session;
    v11->_session = v16;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    taskToContext = v11->_taskToContext;
    v11->_taskToContext = strongToStrongObjectsMapTable;

    v20 = objc_alloc_init(OspreyMessageWriter);
    messageWriter = v11->_messageWriter;
    v11->_messageWriter = v20;

    v22 = objc_alloc_init(AbsintheAuthenticationDurations);
    absintheDurations = v11->_absintheDurations;
    v11->_absintheDurations = v22;
  }

  return v11;
}

- (void)dealloc
{
  [(OspreyGRPCChannel *)self close];
  v3.receiver = self;
  v3.super_class = OspreyGRPCChannel;
  [(OspreyGRPCChannel *)&v3 dealloc];
}

- (void)close
{
  OspreyLoggingInit();
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    [OspreyGRPCChannel close];
  }

  [(NSURLSession *)self->_session finishTasksAndInvalidate];
}

- (void)cancel
{
  OspreyLoggingInit();
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    [OspreyGRPCChannel cancel];
  }

  [(NSURLSession *)self->_session invalidateAndCancel];
}

- (void)setAbsintheTimestampForKey:(id)key
{
  keyCopy = key;
  absintheDurations = [(OspreyGRPCChannel *)self absintheDurations];
  [absintheDurations setAbsintheAuthenticationTimestampForKey:keyCopy];
}

- (id)clientStreamingContextForRequest:(id)request streamingResponseHandler:(id)handler completion:(id)completion
{
  completionCopy = completion;
  handlerCopy = handler;
  requestCopy = request;
  v11 = [[OspreyGRPCStreamingContext alloc] initWithQueue:self->_queue responseHandler:handlerCopy completion:completionCopy];

  useCompression = [requestCopy useCompression];
  [(OspreyGRPCStreamingContext *)v11 setCompressionEnabled:useCompression];

  return v11;
}

- (void)unaryRequest:(id)request requestData:(id)data responseHandler:(id)handler
{
  requestCopy = request;
  dataCopy = data;
  handlerCopy = handler;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__2;
  v24[4] = __Block_byref_object_dispose__2;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__OspreyGRPCChannel_unaryRequest_requestData_responseHandler___block_invoke;
  v21[3] = &unk_2799F2138;
  v21[4] = v22;
  v21[5] = v24;
  v11 = MEMORY[0x25F8A5BA0](v21);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __62__OspreyGRPCChannel_unaryRequest_requestData_responseHandler___block_invoke_2;
  v18 = &unk_2799F20C0;
  v12 = handlerCopy;
  v19 = v12;
  v20 = v24;
  v13 = MEMORY[0x25F8A5BA0](&v15);
  v14 = [(OspreyGRPCChannel *)self bidirectionalStreamingRequest:requestCopy streamingResponseHandler:v11 completion:v13, v15, v16, v17, v18];
  [v14 writeFrame:dataCopy];
  [v14 finishWriting];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
}

void __62__OspreyGRPCChannel_unaryRequest_requestData_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v4 = v5;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t __62__OspreyGRPCChannel_unaryRequest_requestData_responseHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40), a2);
  }

  return result;
}

- (void)serverStreamingRequest:(id)request requestData:(id)data streamingResponseHandler:(id)handler completion:(id)completion
{
  dataCopy = data;
  v11 = [(OspreyGRPCChannel *)self bidirectionalStreamingRequest:request streamingResponseHandler:handler completion:completion];
  [v11 writeFrame:dataCopy];

  [v11 finishWriting];
}

- (id)clientStreamingRequest:(id)request responseHandler:(id)handler streamingContext:(id)context
{
  requestCopy = request;
  handlerCopy = handler;
  contextCopy = context;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__2;
  v25[4] = __Block_byref_object_dispose__2;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__OspreyGRPCChannel_clientStreamingRequest_responseHandler_streamingContext___block_invoke;
  v22[3] = &unk_2799F2138;
  v22[4] = v23;
  v22[5] = v25;
  v11 = MEMORY[0x25F8A5BA0](v22);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __77__OspreyGRPCChannel_clientStreamingRequest_responseHandler_streamingContext___block_invoke_2;
  v19 = &unk_2799F20C0;
  v12 = handlerCopy;
  v20 = v12;
  v21 = v25;
  v13 = MEMORY[0x25F8A5BA0](&v16);
  v14 = [(OspreyGRPCChannel *)self bidirectionalStreamingRequest:requestCopy streamingResponseHandler:v11 completion:v13, v16, v17, v18, v19];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);

  return v14;
}

void __77__OspreyGRPCChannel_clientStreamingRequest_responseHandler_streamingContext___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v4 = v5;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t __77__OspreyGRPCChannel_clientStreamingRequest_responseHandler_streamingContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40), a2);
  }

  return result;
}

- (id)bidirectionalStreamingRequest:(id)request streamingResponseHandler:(id)handler completion:(id)completion
{
  requestCopy = request;
  v9 = [(OspreyGRPCChannel *)self clientStreamingContextForRequest:requestCopy streamingResponseHandler:handler completion:completion];
  [(OspreyGRPCChannel *)self bidirectionalStreamingRequest:requestCopy streamingContext:v9];

  return v9;
}

- (void)bidirectionalStreamingRequest:(id)request streamingContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  contextCopy = context;
  OspreyLoggingInit();
  v8 = OspreyLogContextGRPC;
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_INFO))
  {
    baseURL = self->_baseURL;
    v10 = v8;
    methodName = [requestCopy methodName];
    v14 = 136315650;
    v15 = "[OspreyGRPCChannel bidirectionalStreamingRequest:streamingContext:]";
    v16 = 2112;
    v17 = baseURL;
    v18 = 2112;
    v19 = methodName;
    _os_log_impl(&dword_25DDE6000, v10, OS_LOG_TYPE_INFO, "%s baseURL: %@, method: %@", &v14, 0x20u);
  }

  v12 = [requestCopy grpcRequestWithBaseURL:self->_baseURL];
  [contextCopy bindToUrlRequest:v12];
  v13 = [(NSURLSession *)self->_session dataTaskWithRequest:v12];
  [(NSMapTable *)self->_taskToContext setObject:contextCopy forKey:v13];

  [(OspreyGRPCChannel *)self _startTask:v13];
}

- (void)preconnect
{
  v3 = [(NSURLSession *)self->_session dataTaskWithURL:self->_baseURL completionHandler:&__block_literal_global_6];
  [v3 set_preconnect:1];
  [(OspreyGRPCChannel *)self _startTask:v3];
}

void __31__OspreyGRPCChannel_preconnect__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    OspreyLoggingInit();
    v9 = OspreyLogContextGRPC;
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
    {
      __31__OspreyGRPCChannel_preconnect__block_invoke_cold_1(v9, v8);
    }
  }

  else
  {
    OspreyLoggingInit();
    v10 = OspreyLogContextGRPC;
    v11 = os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      if (v11)
      {
        __31__OspreyGRPCChannel_preconnect__block_invoke_cold_2(v10);
      }
    }

    else if (v11)
    {
      __31__OspreyGRPCChannel_preconnect__block_invoke_cold_3(v10);
    }
  }
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  v17 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  OspreyLoggingInit();
  v7 = OspreyLogContextGRPC;
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[OspreyGRPCChannel URLSession:task:didFinishCollectingMetrics:]";
    v15 = 2112;
    v16 = metricsCopy;
    _os_log_impl(&dword_25DDE6000, v7, OS_LOG_TYPE_INFO, "%s Successfully collected metrics %@", &v13, 0x16u);
  }

  if (metricsCopy)
  {
    v8 = [[OspreyConnectionMetrics alloc] initWithMetrics:metricsCopy];
    absintheDurations = [(OspreyGRPCChannel *)self absintheDurations];
    connectionMethod = [(OspreyConnectionMetrics *)v8 connectionMethod];
    [absintheDurations setAbsintheConnectionMethodWith:connectionMethod];

    v11 = +[OspreyAnalytics reporter];
    [v11 reportConnectionMetrics:v8];

    connectionMetricsHandler = self->_connectionMetricsHandler;
    if (connectionMetricsHandler)
    {
      connectionMetricsHandler[2](connectionMetricsHandler, v8);
    }
  }
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  queue = self->_queue;
  streamCopy = stream;
  dispatch_assert_queue_V2(queue);
  streamCopy[2](streamCopy, 0);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  originalRequest = [taskCopy originalRequest];
  v10 = [originalRequest URL];

  v11 = [(NSMapTable *)self->_taskToContext objectForKey:taskCopy];
  OspreyLoggingInit();
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    [OspreyGRPCChannel URLSession:task:didCompleteWithError:];
    if (!errorCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (errorCopy)
  {
LABEL_3:
    v12 = +[OspreyAnalytics reporter];
    [v12 reportError:errorCopy forURL:v10];
  }

LABEL_4:
  [v11 completeWithError:errorCopy];
  [(NSMapTable *)self->_taskToContext removeObjectForKey:taskCopy];
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  queue = self->_queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queue);
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v12 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA720]];

  OspreyLoggingInit();
  v13 = OspreyLogContextGRPC;
  v14 = os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v14)
    {
      [OspreyGRPCChannel URLSession:didReceiveChallenge:completionHandler:];
    }

    v15 = 0;
  }

  else
  {
    if (v14)
    {
      [OspreyGRPCChannel URLSession:challengeCopy didReceiveChallenge:v13 completionHandler:protectionSpace];
    }

    v15 = 1;
  }

  handlerCopy[2](handlerCopy, v15, 0);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  OspreyLoggingInit();
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    [OspreyGRPCChannel URLSession:dataTask:didReceiveResponse:completionHandler:];
  }

  dispatch_assert_queue_V2(self->_queue);
  v12 = responseCopy;
  statusCode = [v12 statusCode];
  allHeaderFields = [v12 allHeaderFields];
  v15 = [allHeaderFields objectForKey:@"grpc-status"];
  longLongValue = [v15 longLongValue];

  v17 = +[OspreyAnalytics reporter];
  v18 = [v12 URL];
  [v17 reportHttpStatus:statusCode grpcStatus:longLongValue forURL:v18];

  if (statusCode != 200)
  {
    v20 = [MEMORY[0x277CCAA40] localizedStringForStatusCode:statusCode];
    OspreyLoggingInit();
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
    {
      [OspreyGRPCChannel URLSession:dataTask:didReceiveResponse:completionHandler:];
    }

    goto LABEL_10;
  }

  if (longLongValue)
  {
    allHeaderFields2 = [v12 allHeaderFields];
    v20 = [allHeaderFields2 objectForKey:@"grpc-message"];

    OspreyLoggingInit();
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
    {
      [OspreyGRPCChannel URLSession:dataTask:didReceiveResponse:completionHandler:];
    }

    statusCode = -1011;
LABEL_10:
    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA738];
    allHeaderFields3 = [v12 allHeaderFields];
    v24 = [v21 errorWithDomain:v22 code:statusCode userInfo:allHeaderFields3];

    v25 = [(NSMapTable *)self->_taskToContext objectForKey:taskCopy];
    [v25 completeWithError:v24];
    [(NSMapTable *)self->_taskToContext removeObjectForKey:taskCopy];
    handlerCopy[2](handlerCopy, 0);

    goto LABEL_11;
  }

  OspreyLoggingInit();
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    [OspreyGRPCChannel URLSession:dataTask:didReceiveResponse:completionHandler:];
  }

  handlerCopy[2](handlerCopy, 1);
LABEL_11:
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  dispatch_assert_queue_V2(self->_queue);
  OspreyLoggingInit();
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    [OspreyGRPCChannel URLSession:dataTask:didReceiveData:];
  }

  v9 = [(NSMapTable *)self->_taskToContext objectForKey:taskCopy];
  [v9 handleResponseData:dataCopy];
}

- (void)initWithURL:(void *)a1 configuration:(void *)a2 queue:.cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = 136315906;
  v5 = "[OspreyGRPCChannel initWithURL:configuration:queue:]";
  v6 = 2112;
  v7 = a1;
  v8 = 1024;
  v9 = [a1 _allowsMultipathTCP];
  v10 = 2048;
  v11 = [a1 _multipathAlternatePort];
  _os_log_debug_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_DEBUG, "%s %@ mptcp: %d port: %lu", &v4, 0x26u);
}

void __31__OspreyGRPCChannel_preconnect__block_invoke_cold_1(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5[0] = 136315394;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_DEBUG, "%s Preconnection error: %@", v5, 0x16u);
}

void __31__OspreyGRPCChannel_preconnect__block_invoke_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyGRPCChannel preconnect]_block_invoke";
  _os_log_debug_impl(&dword_25DDE6000, log, OS_LOG_TYPE_DEBUG, "%s Perconnection error: response should be nil.", &v1, 0xCu);
}

void __31__OspreyGRPCChannel_preconnect__block_invoke_cold_3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyGRPCChannel preconnect]_block_invoke";
  _os_log_debug_impl(&dword_25DDE6000, log, OS_LOG_TYPE_DEBUG, "%s Preconnection successful!", &v1, 0xCu);
}

- (void)URLSession:(uint64_t)a1 didReceiveChallenge:(void *)a2 completionHandler:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 authenticationMethod];
  v7 = 136315650;
  v8 = "[OspreyGRPCChannel URLSession:didReceiveChallenge:completionHandler:]";
  v9 = 2112;
  v10 = a1;
  v11 = 2112;
  v12 = v6;
  _os_log_debug_impl(&dword_25DDE6000, v5, OS_LOG_TYPE_DEBUG, "%s Using default handling for challenge %@ with authenticationMethod %@", &v7, 0x20u);
}

- (void)URLSession:dataTask:didReceiveResponse:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x20u);
}

- (void)URLSession:dataTask:didReceiveResponse:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x20u);
}

- (void)URLSession:dataTask:didReceiveResponse:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x20u);
}

- (void)URLSession:dataTask:didReceiveData:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x20u);
}

@end