@interface OspreyGRPCChannel
- (OspreyGRPCChannel)initWithURL:(id)a3 configuration:(id)a4 queue:(id)a5;
- (id)bidirectionalStreamingRequest:(id)a3 streamingResponseHandler:(id)a4 completion:(id)a5;
- (id)clientStreamingContextForRequest:(id)a3 streamingResponseHandler:(id)a4 completion:(id)a5;
- (id)clientStreamingRequest:(id)a3 responseHandler:(id)a4 streamingContext:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)bidirectionalStreamingRequest:(id)a3 streamingContext:(id)a4;
- (void)cancel;
- (void)close;
- (void)dealloc;
- (void)preconnect;
- (void)serverStreamingRequest:(id)a3 requestData:(id)a4 streamingResponseHandler:(id)a5 completion:(id)a6;
- (void)setAbsintheTimestampForKey:(id)a3;
- (void)unaryRequest:(id)a3 requestData:(id)a4 responseHandler:(id)a5;
@end

@implementation OspreyGRPCChannel

- (OspreyGRPCChannel)initWithURL:(id)a3 configuration:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

    v12 = [v8 copy];
    baseURL = v11->_baseURL;
    v11->_baseURL = v12;

    objc_storeStrong(&v11->_queue, a5);
    v14 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [v14 setUnderlyingQueue:v11->_queue];
    if (OspreyIsEntitledForMPTCP())
    {
      [v9 set_allowsMultipathTCP:1];
      [v9 set_multipathAlternatePort:5228];
      OspreyLoggingInit();
      v15 = OspreyLogContextGRPC;
      if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
      {
        [OspreyGRPCChannel initWithURL:v9 configuration:v15 queue:?];
      }
    }

    if ([v9 TLSMinimumSupportedProtocolVersion] <= 0x302)
    {
      [v9 setTLSMinimumSupportedProtocolVersion:771];
    }

    [v9 set_allowsTLSFalseStart:1];
    v16 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v9 delegate:v11 delegateQueue:v14];
    session = v11->_session;
    v11->_session = v16;

    v18 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    taskToContext = v11->_taskToContext;
    v11->_taskToContext = v18;

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

- (void)setAbsintheTimestampForKey:(id)a3
{
  v4 = a3;
  v5 = [(OspreyGRPCChannel *)self absintheDurations];
  [v5 setAbsintheAuthenticationTimestampForKey:v4];
}

- (id)clientStreamingContextForRequest:(id)a3 streamingResponseHandler:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[OspreyGRPCStreamingContext alloc] initWithQueue:self->_queue responseHandler:v9 completion:v8];

  v12 = [v10 useCompression];
  [(OspreyGRPCStreamingContext *)v11 setCompressionEnabled:v12];

  return v11;
}

- (void)unaryRequest:(id)a3 requestData:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v12 = v10;
  v19 = v12;
  v20 = v24;
  v13 = MEMORY[0x25F8A5BA0](&v15);
  v14 = [(OspreyGRPCChannel *)self bidirectionalStreamingRequest:v8 streamingResponseHandler:v11 completion:v13, v15, v16, v17, v18];
  [v14 writeFrame:v9];
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

- (void)serverStreamingRequest:(id)a3 requestData:(id)a4 streamingResponseHandler:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = [(OspreyGRPCChannel *)self bidirectionalStreamingRequest:a3 streamingResponseHandler:a5 completion:a6];
  [v11 writeFrame:v10];

  [v11 finishWriting];
}

- (id)clientStreamingRequest:(id)a3 responseHandler:(id)a4 streamingContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v12 = v9;
  v20 = v12;
  v21 = v25;
  v13 = MEMORY[0x25F8A5BA0](&v16);
  v14 = [(OspreyGRPCChannel *)self bidirectionalStreamingRequest:v8 streamingResponseHandler:v11 completion:v13, v16, v17, v18, v19];

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

- (id)bidirectionalStreamingRequest:(id)a3 streamingResponseHandler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(OspreyGRPCChannel *)self clientStreamingContextForRequest:v8 streamingResponseHandler:a4 completion:a5];
  [(OspreyGRPCChannel *)self bidirectionalStreamingRequest:v8 streamingContext:v9];

  return v9;
}

- (void)bidirectionalStreamingRequest:(id)a3 streamingContext:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  OspreyLoggingInit();
  v8 = OspreyLogContextGRPC;
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_INFO))
  {
    baseURL = self->_baseURL;
    v10 = v8;
    v11 = [v6 methodName];
    v14 = 136315650;
    v15 = "[OspreyGRPCChannel bidirectionalStreamingRequest:streamingContext:]";
    v16 = 2112;
    v17 = baseURL;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_25DDE6000, v10, OS_LOG_TYPE_INFO, "%s baseURL: %@, method: %@", &v14, 0x20u);
  }

  v12 = [v6 grpcRequestWithBaseURL:self->_baseURL];
  [v7 bindToUrlRequest:v12];
  v13 = [(NSURLSession *)self->_session dataTaskWithRequest:v12];
  [(NSMapTable *)self->_taskToContext setObject:v7 forKey:v13];

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

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a5;
  OspreyLoggingInit();
  v7 = OspreyLogContextGRPC;
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[OspreyGRPCChannel URLSession:task:didFinishCollectingMetrics:]";
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_25DDE6000, v7, OS_LOG_TYPE_INFO, "%s Successfully collected metrics %@", &v13, 0x16u);
  }

  if (v6)
  {
    v8 = [[OspreyConnectionMetrics alloc] initWithMetrics:v6];
    v9 = [(OspreyGRPCChannel *)self absintheDurations];
    v10 = [(OspreyConnectionMetrics *)v8 connectionMethod];
    [v9 setAbsintheConnectionMethodWith:v10];

    v11 = +[OspreyAnalytics reporter];
    [v11 reportConnectionMetrics:v8];

    connectionMetricsHandler = self->_connectionMetricsHandler;
    if (connectionMetricsHandler)
    {
      connectionMetricsHandler[2](connectionMetricsHandler, v8);
    }
  }
}

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  queue = self->_queue;
  v6 = a5;
  dispatch_assert_queue_V2(queue);
  v6[2](v6, 0);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v9 = [v7 originalRequest];
  v10 = [v9 URL];

  v11 = [(NSMapTable *)self->_taskToContext objectForKey:v7];
  OspreyLoggingInit();
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    [OspreyGRPCChannel URLSession:task:didCompleteWithError:];
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v8)
  {
LABEL_3:
    v12 = +[OspreyAnalytics reporter];
    [v12 reportError:v8 forURL:v10];
  }

LABEL_4:
  [v11 completeWithError:v8];
  [(NSMapTable *)self->_taskToContext removeObjectForKey:v7];
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  queue = self->_queue;
  v9 = a5;
  dispatch_assert_queue_V2(queue);
  v10 = [v7 protectionSpace];
  v11 = [v10 authenticationMethod];
  v12 = [v11 isEqualToString:*MEMORY[0x277CCA720]];

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
      [OspreyGRPCChannel URLSession:v7 didReceiveChallenge:v13 completionHandler:v10];
    }

    v15 = 1;
  }

  v9[2](v9, v15, 0);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  OspreyLoggingInit();
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    [OspreyGRPCChannel URLSession:dataTask:didReceiveResponse:completionHandler:];
  }

  dispatch_assert_queue_V2(self->_queue);
  v12 = v10;
  v13 = [v12 statusCode];
  v14 = [v12 allHeaderFields];
  v15 = [v14 objectForKey:@"grpc-status"];
  v16 = [v15 longLongValue];

  v17 = +[OspreyAnalytics reporter];
  v18 = [v12 URL];
  [v17 reportHttpStatus:v13 grpcStatus:v16 forURL:v18];

  if (v13 != 200)
  {
    v20 = [MEMORY[0x277CCAA40] localizedStringForStatusCode:v13];
    OspreyLoggingInit();
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
    {
      [OspreyGRPCChannel URLSession:dataTask:didReceiveResponse:completionHandler:];
    }

    goto LABEL_10;
  }

  if (v16)
  {
    v19 = [v12 allHeaderFields];
    v20 = [v19 objectForKey:@"grpc-message"];

    OspreyLoggingInit();
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
    {
      [OspreyGRPCChannel URLSession:dataTask:didReceiveResponse:completionHandler:];
    }

    v13 = -1011;
LABEL_10:
    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA738];
    v23 = [v12 allHeaderFields];
    v24 = [v21 errorWithDomain:v22 code:v13 userInfo:v23];

    v25 = [(NSMapTable *)self->_taskToContext objectForKey:v9];
    [v25 completeWithError:v24];
    [(NSMapTable *)self->_taskToContext removeObjectForKey:v9];
    v11[2](v11, 0);

    goto LABEL_11;
  }

  OspreyLoggingInit();
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    [OspreyGRPCChannel URLSession:dataTask:didReceiveResponse:completionHandler:];
  }

  v11[2](v11, 1);
LABEL_11:
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v7 = a4;
  v8 = a5;
  dispatch_assert_queue_V2(self->_queue);
  OspreyLoggingInit();
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    [OspreyGRPCChannel URLSession:dataTask:didReceiveData:];
  }

  v9 = [(NSMapTable *)self->_taskToContext objectForKey:v7];
  [v9 handleResponseData:v8];
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