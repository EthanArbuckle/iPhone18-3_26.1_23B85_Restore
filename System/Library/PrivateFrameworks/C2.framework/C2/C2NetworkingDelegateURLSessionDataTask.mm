@interface C2NetworkingDelegateURLSessionDataTask
+ (unint64_t)nextTaskIdentifier;
- (C2NetworkingDelegateURLSession)session;
- (C2NetworkingDelegateURLSessionDataTask)init;
- (void)__didReceiveData:(id)data completionHandler:(id)handler;
- (void)_drainInputStream:(id)stream sinkData:(id)data completionHandler:(id)handler;
- (void)cancel;
- (void)handleCompletion;
- (void)handleResponse:(id)response completionHandler:(id)handler;
- (void)processRequest:(id)request configuration:(id)configuration completionHandler:(id)handler;
- (void)resume;
- (void)setupRequest:(id)request;
- (void)setupRequestBodyForRequest:(id)request completionHandler:(id)handler;
- (void)streamResponseBody:(id)body offset:(unsigned int)offset completionHandler:(id)handler;
- (void)willSendRequest:(id)request;
@end

@implementation C2NetworkingDelegateURLSessionDataTask

+ (unint64_t)nextTaskIdentifier
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = nextTaskIdentifier_nextTaskIdentifier++;
  objc_sync_exit(v2);

  return v3;
}

- (C2NetworkingDelegateURLSessionDataTask)init
{
  v7.receiver = self;
  v7.super_class = C2NetworkingDelegateURLSessionDataTask;
  v2 = [(C2NetworkingDelegateURLSessionDataTask *)&v7 init];
  if (v2)
  {
    v2->_taskIdentifier = [objc_opt_class() nextTaskIdentifier];
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.C2NetworkingDelegateURLSessionDataTask", v3);
    clientQueue = v2->_clientQueue;
    v2->_clientQueue = v4;
  }

  return v2;
}

- (void)setupRequest:(id)request
{
  requestCopy = request;
  clientQueue = [(C2NetworkingDelegateURLSessionDataTask *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  syntheticError = [(C2NetworkingDelegateURLSessionDataTask *)self syntheticError];

  if (syntheticError)
  {
    requestCopy[2](requestCopy, 0);
  }

  else
  {
    session = [(C2NetworkingDelegateURLSessionDataTask *)self session];
    networkingDelegate = [session networkingDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      session2 = [(C2NetworkingDelegateURLSessionDataTask *)self session];
      networkingDelegate2 = [session2 networkingDelegate];
      currentRequest = [(C2NetworkingDelegateURLSessionDataTask *)self currentRequest];
      session3 = [(C2NetworkingDelegateURLSessionDataTask *)self session];
      configuration = [session3 configuration];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __55__C2NetworkingDelegateURLSessionDataTask_setupRequest___block_invoke;
      v15[3] = &unk_278D40408;
      v15[4] = self;
      v16 = requestCopy;
      [networkingDelegate2 willHandleRequest:currentRequest configuration:configuration completionHandler:v15];
    }

    else
    {
      [(C2NetworkingDelegateURLSessionDataTask *)self willSendRequest:requestCopy];
    }
  }
}

void __55__C2NetworkingDelegateURLSessionDataTask_setupRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setSyntheticError:v5];
  }

  if (v6)
  {
    [*(a1 + 32) setTimingData:v6];
  }

  v7 = [*(a1 + 32) clientQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__C2NetworkingDelegateURLSessionDataTask_setupRequest___block_invoke_2;
  v9[3] = &unk_278D403E0;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  dispatch_async(v7, v9);
}

- (void)willSendRequest:(id)request
{
  requestCopy = request;
  clientQueue = [(C2NetworkingDelegateURLSessionDataTask *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  syntheticError = [(C2NetworkingDelegateURLSessionDataTask *)self syntheticError];

  if (syntheticError)
  {
    requestCopy[2](requestCopy, 0);
  }

  else
  {
    session = [(C2NetworkingDelegateURLSessionDataTask *)self session];
    delegateQueue = [session delegateQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__C2NetworkingDelegateURLSessionDataTask_willSendRequest___block_invoke;
    v9[3] = &unk_278D403E0;
    v9[4] = self;
    v10 = requestCopy;
    [delegateQueue addOperationWithBlock:v9];
  }
}

void __58__C2NetworkingDelegateURLSessionDataTask_willSendRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) session];
  v3 = [v2 sessionDelegate];
  v4 = [*(a1 + 32) session];
  v5 = *(a1 + 32);
  v6 = [v5 currentRequest];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__C2NetworkingDelegateURLSessionDataTask_willSendRequest___block_invoke_2;
  v8[3] = &unk_278D40458;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v3 URLSession:v4 task:v5 _willSendRequestForEstablishedConnection:v6 completionHandler:v8];
}

void __58__C2NetworkingDelegateURLSessionDataTask_willSendRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__C2NetworkingDelegateURLSessionDataTask_willSendRequest___block_invoke_3;
  v7[3] = &unk_278D40430;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)_drainInputStream:(id)stream sinkData:(id)data completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  dataCopy = data;
  handlerCopy = handler;
  clientQueue = [(C2NetworkingDelegateURLSessionDataTask *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  syntheticError = [(C2NetworkingDelegateURLSessionDataTask *)self syntheticError];

  if (syntheticError)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    bzero(v29, 0x8000uLL);
    v13 = [streamCopy read:v29 maxLength:0x8000];
    if (v13 < 1)
    {
      [streamCopy close];
      -[C2NetworkingDelegateURLSessionDataTask setCountOfBytesSent:](self, "setCountOfBytesSent:", [dataCopy length]);
      clientQueue2 = [(C2NetworkingDelegateURLSessionDataTask *)self clientQueue];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __87__C2NetworkingDelegateURLSessionDataTask__drainInputStream_sinkData_completionHandler___block_invoke_3;
      v21[3] = &unk_278D40430;
      v23 = handlerCopy;
      v22 = dataCopy;
      dispatch_async(clientQueue2, v21);

      v18 = v23;
    }

    else
    {
      v14 = v13;
      v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v29 length:v13];
      [dataCopy appendData:v15];

      session = [(C2NetworkingDelegateURLSessionDataTask *)self session];
      delegateQueue = [session delegateQueue];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __87__C2NetworkingDelegateURLSessionDataTask__drainInputStream_sinkData_completionHandler___block_invoke;
      v24[3] = &unk_278D404A8;
      v24[4] = self;
      v28 = v14;
      v25 = dataCopy;
      v26 = streamCopy;
      v27 = handlerCopy;
      [delegateQueue addOperationWithBlock:v24];

      v18 = v25;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __87__C2NetworkingDelegateURLSessionDataTask__drainInputStream_sinkData_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) session];
  v3 = [v2 sessionDelegate];
  v4 = [*(a1 + 32) session];
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) length];
  [v3 URLSession:v4 task:v6 didSendBodyData:v5 totalBytesSent:v7 totalBytesExpectedToSend:*MEMORY[0x277CCA7A8]];

  v8 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__C2NetworkingDelegateURLSessionDataTask__drainInputStream_sinkData_completionHandler___block_invoke_2;
  block[3] = &unk_278D40480;
  v14 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v14;
  *(&v13 + 1) = v9;
  v16 = v13;
  v17 = v12;
  dispatch_async(v8, block);
}

- (void)setupRequestBodyForRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  clientQueue = [(C2NetworkingDelegateURLSessionDataTask *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  syntheticError = [(C2NetworkingDelegateURLSessionDataTask *)self syntheticError];

  if (syntheticError)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    hTTPBodyStream = [requestCopy HTTPBodyStream];
    v11 = hTTPBodyStream;
    if (hTTPBodyStream)
    {
      [hTTPBodyStream open];
      clientQueue2 = [(C2NetworkingDelegateURLSessionDataTask *)self clientQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87__C2NetworkingDelegateURLSessionDataTask_setupRequestBodyForRequest_completionHandler___block_invoke;
      block[3] = &unk_278D404D0;
      block[4] = self;
      v21 = v11;
      v22 = handlerCopy;
      dispatch_async(clientQueue2, block);
    }

    else
    {
      hTTPBody = [requestCopy HTTPBody];
      if (hTTPBody)
      {
        session = [(C2NetworkingDelegateURLSessionDataTask *)self session];
        delegateQueue = [session delegateQueue];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __87__C2NetworkingDelegateURLSessionDataTask_setupRequestBodyForRequest_completionHandler___block_invoke_2;
        v16[3] = &unk_278D404F8;
        v16[4] = self;
        v17 = hTTPBody;
        v19 = handlerCopy;
        v18 = requestCopy;
        [delegateQueue addOperationWithBlock:v16];
      }

      else
      {
        handlerCopy[2](handlerCopy, 0);
      }
    }
  }
}

void __87__C2NetworkingDelegateURLSessionDataTask_setupRequestBodyForRequest_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = objc_opt_new();
  [v2 _drainInputStream:v3 sinkData:v4 completionHandler:a1[6]];
}

void __87__C2NetworkingDelegateURLSessionDataTask_setupRequestBodyForRequest_completionHandler___block_invoke_2(id *a1)
{
  v2 = [a1[4] session];
  v3 = [v2 sessionDelegate];
  v4 = [a1[4] session];
  [v3 URLSession:v4 task:a1[4] didSendBodyData:objc_msgSend(a1[5] totalBytesSent:"length") totalBytesExpectedToSend:{objc_msgSend(a1[5], "length"), objc_msgSend(a1[5], "length")}];

  v5 = [a1[4] clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__C2NetworkingDelegateURLSessionDataTask_setupRequestBodyForRequest_completionHandler___block_invoke_3;
  v6[3] = &unk_278D40430;
  v8 = a1[7];
  v7 = a1[6];
  dispatch_async(v5, v6);
}

void __87__C2NetworkingDelegateURLSessionDataTask_setupRequestBodyForRequest_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) HTTPBody];
  (*(v1 + 16))(v1, v2);
}

- (void)processRequest:(id)request configuration:(id)configuration completionHandler:(id)handler
{
  v43 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  configurationCopy = configuration;
  handlerCopy = handler;
  clientQueue = [(C2NetworkingDelegateURLSessionDataTask *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  syntheticError = [(C2NetworkingDelegateURLSessionDataTask *)self syntheticError];

  if (syntheticError)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    session = [(C2NetworkingDelegateURLSessionDataTask *)self session];
    networkingDelegate = [session networkingDelegate];
    v15 = objc_opt_respondsToSelector();

    session2 = [(C2NetworkingDelegateURLSessionDataTask *)self session];
    networkingDelegate2 = [session2 networkingDelegate];
    if (v15)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __89__C2NetworkingDelegateURLSessionDataTask_processRequest_configuration_completionHandler___block_invoke;
      v35[3] = &unk_278D40548;
      v35[4] = self;
      v36 = handlerCopy;
      [networkingDelegate2 processRequest:requestCopy callback:v35];

      v18 = v36;
    }

    else
    {
      v19 = objc_opt_respondsToSelector();

      session3 = [(C2NetworkingDelegateURLSessionDataTask *)self session];
      networkingDelegate3 = [session3 networkingDelegate];
      if (v19)
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __89__C2NetworkingDelegateURLSessionDataTask_processRequest_configuration_completionHandler___block_invoke_3;
        v33[3] = &unk_278D40570;
        v33[4] = self;
        v34 = handlerCopy;
        [networkingDelegate3 handleRequest:requestCopy completionHandler:v33];

        v18 = v34;
      }

      else
      {
        v22 = objc_opt_respondsToSelector();

        if ((v22 & 1) == 0)
        {
          if (C2_DEFAULT_LOG_BLOCK_1 != -1)
          {
            [C2NetworkingDelegateURLSessionDataTask processRequest:configuration:completionHandler:];
          }

          v26 = C2_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            v27 = v26;
            session4 = [(C2NetworkingDelegateURLSessionDataTask *)self session];
            session5 = [(C2NetworkingDelegateURLSessionDataTask *)self session];
            networkingDelegate4 = [session5 networkingDelegate];
            *buf = 138412802;
            selfCopy = self;
            v39 = 2112;
            v40 = session4;
            v41 = 2112;
            v42 = networkingDelegate4;
            _os_log_impl(&dword_242158000, v27, OS_LOG_TYPE_ERROR, "Unable to identify appropriate selector on network delegate. self=%@, session=%@, networkingDelegate=%@", buf, 0x20u);
          }

          __assert_rtn("[C2NetworkingDelegateURLSessionDataTask processRequest:configuration:completionHandler:]", "C2NetworkingDelegateURLSession.m", 209, "false");
        }

        session6 = [(C2NetworkingDelegateURLSessionDataTask *)self session];
        networkingDelegate5 = [session6 networkingDelegate];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __89__C2NetworkingDelegateURLSessionDataTask_processRequest_configuration_completionHandler___block_invoke_5;
        v31[3] = &unk_278D40570;
        v31[4] = self;
        v32 = handlerCopy;
        [networkingDelegate5 handleRequest:requestCopy configuration:configurationCopy completionHandler:v31];

        v18 = v32;
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __89__C2NetworkingDelegateURLSessionDataTask_processRequest_configuration_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__C2NetworkingDelegateURLSessionDataTask_processRequest_configuration_completionHandler___block_invoke_2;
  block[3] = &unk_278D40520;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __89__C2NetworkingDelegateURLSessionDataTask_processRequest_configuration_completionHandler___block_invoke_2(void *a1)
{
  v1 = a1[6];
  v2 = [C2NetworkingResponse responseWithURLResponse:a1[4] body:a1[5]];
  (*(v1 + 16))(v1, v2);
}

void __89__C2NetworkingDelegateURLSessionDataTask_processRequest_configuration_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__C2NetworkingDelegateURLSessionDataTask_processRequest_configuration_completionHandler___block_invoke_4;
  v7[3] = &unk_278D40430;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __89__C2NetworkingDelegateURLSessionDataTask_processRequest_configuration_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__C2NetworkingDelegateURLSessionDataTask_processRequest_configuration_completionHandler___block_invoke_6;
  v7[3] = &unk_278D40430;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __89__C2NetworkingDelegateURLSessionDataTask_processRequest_configuration_completionHandler___block_invoke_7()
{
  C2_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)handleResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  clientQueue = [(C2NetworkingDelegateURLSessionDataTask *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  syntheticError = [(C2NetworkingDelegateURLSessionDataTask *)self syntheticError];

  if (syntheticError)
  {
    handlerCopy[2](handlerCopy);
  }

  else
  {
    [(C2NetworkingDelegateURLSessionDataTask *)self setResponse:responseCopy];
    session = [(C2NetworkingDelegateURLSessionDataTask *)self session];
    delegateQueue = [session delegateQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__C2NetworkingDelegateURLSessionDataTask_handleResponse_completionHandler___block_invoke;
    v12[3] = &unk_278D404D0;
    v12[4] = self;
    v13 = responseCopy;
    v14 = handlerCopy;
    [delegateQueue addOperationWithBlock:v12];
  }
}

void __75__C2NetworkingDelegateURLSessionDataTask_handleResponse_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) session];
  v3 = [v2 sessionDelegate];
  v4 = [*(a1 + 32) session];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__C2NetworkingDelegateURLSessionDataTask_handleResponse_completionHandler___block_invoke_2;
  v7[3] = &unk_278D405C0;
  v7[4] = v5;
  v8 = *(a1 + 48);
  [v3 URLSession:v4 dataTask:v5 didReceiveResponse:v6 completionHandler:v7];
}

void __75__C2NetworkingDelegateURLSessionDataTask_handleResponse_completionHandler___block_invoke_2(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    __75__C2NetworkingDelegateURLSessionDataTask_handleResponse_completionHandler___block_invoke_2_cold_1();
  }

  v4 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__C2NetworkingDelegateURLSessionDataTask_handleResponse_completionHandler___block_invoke_3;
  block[3] = &unk_278D40598;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = a2;
  block[4] = v5;
  v8 = v6;
  dispatch_async(v4, block);
}

uint64_t __75__C2NetworkingDelegateURLSessionDataTask_handleResponse_completionHandler___block_invoke_3(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    [*(a1 + 32) cancel];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)streamResponseBody:(id)body offset:(unsigned int)offset completionHandler:(id)handler
{
  bodyCopy = body;
  handlerCopy = handler;
  clientQueue = [(C2NetworkingDelegateURLSessionDataTask *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  syntheticError = [(C2NetworkingDelegateURLSessionDataTask *)self syntheticError];

  if (syntheticError)
  {
    handlerCopy[2](handlerCopy);
  }

  else
  {
    session = [(C2NetworkingDelegateURLSessionDataTask *)self session];
    networkingDelegate = [session networkingDelegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      session2 = [(C2NetworkingDelegateURLSessionDataTask *)self session];
      networkingDelegate2 = [session2 networkingDelegate];
      responseBufferSize = [networkingDelegate2 responseBufferSize];
    }

    else
    {
      responseBufferSize = 0x8000;
    }

    session3 = [(C2NetworkingDelegateURLSessionDataTask *)self session];
    delegateQueue = [session3 delegateQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __86__C2NetworkingDelegateURLSessionDataTask_streamResponseBody_offset_completionHandler___block_invoke;
    v20[3] = &unk_278D405E8;
    offsetCopy = offset;
    v25 = responseBufferSize;
    v21 = bodyCopy;
    selfCopy = self;
    v23 = handlerCopy;
    [delegateQueue addOperationWithBlock:v20];
  }
}

void __86__C2NetworkingDelegateURLSessionDataTask_streamResponseBody_offset_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = *(a1 + 56);
  if (v2 == v3)
  {
    v4 = [*(a1 + 40) clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__C2NetworkingDelegateURLSessionDataTask_streamResponseBody_offset_completionHandler___block_invoke_4;
    block[3] = &unk_278D40610;
    v9 = *(a1 + 48);
    dispatch_async(v4, block);

    v5 = v9;
  }

  else
  {
    if ((v2 - v3) >= *(a1 + 60))
    {
      v6 = *(a1 + 60);
    }

    else
    {
      v6 = v2 - v3;
    }

    v5 = [*(a1 + 32) subdataWithRange:?];
    v7 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__C2NetworkingDelegateURLSessionDataTask_streamResponseBody_offset_completionHandler___block_invoke_2;
    v10[3] = &unk_278D405E8;
    v10[4] = v7;
    v11 = *(a1 + 32);
    v13 = *(a1 + 56);
    v14 = v6;
    v12 = *(a1 + 48);
    [v7 __didReceiveData:v5 completionHandler:v10];
  }
}

void __86__C2NetworkingDelegateURLSessionDataTask_streamResponseBody_offset_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) clientQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__C2NetworkingDelegateURLSessionDataTask_streamResponseBody_offset_completionHandler___block_invoke_3;
  v4[3] = &unk_278D405E8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v7 = *(a1 + 56);
  v6 = *(a1 + 48);
  dispatch_async(v2, v4);
}

- (void)__didReceiveData:(id)data completionHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  session = [(C2NetworkingDelegateURLSessionDataTask *)self session];
  sessionDelegate = [session sessionDelegate];
  if (objc_opt_respondsToSelector())
  {
    [sessionDelegate URLSession:session dataTask:self _didReceiveData:dataCopy completionHandler:handlerCopy];
  }

  else
  {
    [sessionDelegate URLSession:session dataTask:self didReceiveData:dataCopy];

    handlerCopy[2]();
  }
}

- (void)handleCompletion
{
  clientQueue = [(C2NetworkingDelegateURLSessionDataTask *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  syntheticError = [(C2NetworkingDelegateURLSessionDataTask *)self syntheticError];
  session = [(C2NetworkingDelegateURLSessionDataTask *)self session];
  delegateQueue = [session delegateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__C2NetworkingDelegateURLSessionDataTask_handleCompletion__block_invoke;
  v8[3] = &unk_278D40638;
  v8[4] = self;
  v9 = syntheticError;
  v7 = syntheticError;
  [delegateQueue addOperationWithBlock:v8];
}

void __58__C2NetworkingDelegateURLSessionDataTask_handleCompletion__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) session];
  v2 = [v4 sessionDelegate];
  v3 = [*(a1 + 32) session];
  [v2 URLSession:v3 task:*(a1 + 32) didCompleteWithError:*(a1 + 40)];
}

- (void)resume
{
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__C2NetworkingDelegateURLSessionDataTask_resume__block_invoke;
  block[3] = &unk_278D400A0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __48__C2NetworkingDelegateURLSessionDataTask_resume__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__C2NetworkingDelegateURLSessionDataTask_resume__block_invoke_2;
  v3[3] = &unk_278D406B0;
  v3[4] = v1;
  return [v1 setupRequest:v3];
}

void __48__C2NetworkingDelegateURLSessionDataTask_resume__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__C2NetworkingDelegateURLSessionDataTask_resume__block_invoke_3;
  v6[3] = &unk_278D40688;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v4 setupRequestBodyForRequest:v5 completionHandler:v6];
}

void __48__C2NetworkingDelegateURLSessionDataTask_resume__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mutableCopy];
  [v5 setHTTPBody:v4];

  v6 = *(a1 + 40);
  v7 = [v6 session];
  v8 = [v7 configuration];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__C2NetworkingDelegateURLSessionDataTask_resume__block_invoke_4;
  v9[3] = &unk_278D40660;
  v9[4] = *(a1 + 40);
  [v6 processRequest:v5 configuration:v8 completionHandler:v9];
}

void __48__C2NetworkingDelegateURLSessionDataTask_resume__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 urlResponse];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__C2NetworkingDelegateURLSessionDataTask_resume__block_invoke_5;
  v7[3] = &unk_278D40638;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  [v4 handleResponse:v5 completionHandler:v7];
}

void __48__C2NetworkingDelegateURLSessionDataTask_resume__block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) body];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__C2NetworkingDelegateURLSessionDataTask_resume__block_invoke_6;
  v4[3] = &unk_278D400A0;
  v4[4] = *(a1 + 32);
  [v2 streamResponseBody:v3 offset:0 completionHandler:v4];
}

- (void)cancel
{
  syntheticError = [(C2NetworkingDelegateURLSessionDataTask *)self syntheticError];

  if (!syntheticError)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"C2NetworkingDelegateURLSessionErrorDomain" code:-1 userInfo:0];
    [(C2NetworkingDelegateURLSessionDataTask *)self setSyntheticError:v4];
  }
}

- (C2NetworkingDelegateURLSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end