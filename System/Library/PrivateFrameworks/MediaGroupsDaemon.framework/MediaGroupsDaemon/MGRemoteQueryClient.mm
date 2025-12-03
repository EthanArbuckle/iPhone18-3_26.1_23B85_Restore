@interface MGRemoteQueryClient
+ (MGRemoteQueryClient)clientWithHandler:(id)handler target:(id)target dispatchQueue:(id)queue delegate:(id)delegate usingSession:(id)session;
- (BOOL)_responseValidate:(id)validate;
- (MGRemoteQueryClientDelegate)delegate;
- (id)_initWithHandler:(id)handler target:(id)target dispatchQueue:(id)queue delegate:(id)delegate session:(id)session;
- (id)_prepareRequest:(id)request;
- (id)_prepareURL;
- (id)description;
- (id)query;
- (void)_handleError:(id)error;
- (void)_invalidate;
- (void)_invalidated;
- (void)_prepareConnection:(id)connection;
- (void)_responseAppend:(id)append;
- (void)_responseComplete;
- (void)_responseStart:(id)start;
- (void)completeWithError:(id)error;
- (void)consumeData:(id)data;
- (void)consumeResponse:(id)response;
- (void)dealloc;
@end

@implementation MGRemoteQueryClient

+ (MGRemoteQueryClient)clientWithHandler:(id)handler target:(id)target dispatchQueue:(id)queue delegate:(id)delegate usingSession:(id)session
{
  sessionCopy = session;
  delegateCopy = delegate;
  queueCopy = queue;
  targetCopy = target;
  handlerCopy = handler;
  v17 = [[self alloc] _initWithHandler:handlerCopy target:targetCopy dispatchQueue:queueCopy delegate:delegateCopy session:sessionCopy];

  return v17;
}

- (id)_initWithHandler:(id)handler target:(id)target dispatchQueue:(id)queue delegate:(id)delegate session:(id)session
{
  handlerCopy = handler;
  targetCopy = target;
  queueCopy = queue;
  delegateCopy = delegate;
  sessionCopy = session;
  v30.receiver = self;
  v30.super_class = MGRemoteQueryClient;
  v18 = [(MGRemoteQueryClient *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_dispatchQueue, queue);
    objc_storeStrong(&v19->_handler, handler);
    objc_storeStrong(&v19->_target, target);
    objc_storeWeak(&v19->_delegate, delegateCopy);
    v19->_invalidated = 0;
    error = v19->_error;
    v19->_error = 0;

    protocolVersion = [(MGRemoteQueryClientTarget *)v19->_target protocolVersion];
    response = v19->_response;
    v19->_protocolVersion = protocolVersion;
    v19->_response = 0;

    v19->_expectedPayloadSize = 0;
    data = [MEMORY[0x277CBEB28] data];
    payload = v19->_payload;
    v19->_payload = data;

    v19->_processedResult = 0;
    dispatchQueue = [(MGRemoteQueryClient *)v19 dispatchQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __78__MGRemoteQueryClient__initWithHandler_target_dispatchQueue_delegate_session___block_invoke;
    v27[3] = &unk_27989EE80;
    v28 = v19;
    v29 = sessionCopy;
    dispatch_async(dispatchQueue, v27);
  }

  return v19;
}

- (void)dealloc
{
  [(MGRemoteQueryClient *)self _invalidate];
  v3.receiver = self;
  v3.super_class = MGRemoteQueryClient;
  [(MGRemoteQueryClient *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  task = [(MGRemoteQueryClient *)self task];
  target = [(MGRemoteQueryClient *)self target];
  handler = [(MGRemoteQueryClient *)self handler];
  payload = [(MGRemoteQueryClient *)self payload];
  v10 = [v3 stringWithFormat:@"<%@: %p, _task = %@, _target = %@, _handler = %@, payload %lu/%lu>", v5, self, task, target, handler, objc_msgSend(payload, "length"), -[MGRemoteQueryClient expectedPayloadSize](self, "expectedPayloadSize")];

  return v10;
}

- (void)consumeResponse:(id)response
{
  responseCopy = response;
  dispatchQueue = [(MGRemoteQueryClient *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__MGRemoteQueryClient_consumeResponse___block_invoke;
  v7[3] = &unk_27989EE80;
  v7[4] = self;
  v8 = responseCopy;
  v6 = responseCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)consumeData:(id)data
{
  dataCopy = data;
  dispatchQueue = [(MGRemoteQueryClient *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__MGRemoteQueryClient_consumeData___block_invoke;
  v7[3] = &unk_27989EE80;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)completeWithError:(id)error
{
  errorCopy = error;
  dispatchQueue = [(MGRemoteQueryClient *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__MGRemoteQueryClient_completeWithError___block_invoke;
  v7[3] = &unk_27989EE80;
  v8 = errorCopy;
  selfCopy = self;
  v6 = errorCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __41__MGRemoteQueryClient_completeWithError___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    goto LABEL_5;
  }

  if (([*(a1 + 40) processedResult] & 1) == 0)
  {
    [*(a1 + 40) _responseComplete];
  }

  if (*(a1 + 32))
  {
LABEL_5:
    [*(a1 + 40) _handleError:?];
  }

  v2 = *(a1 + 40);

  return [v2 _invalidated];
}

- (void)_prepareConnection:(id)connection
{
  v24 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dispatchQueue = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  task = [(MGRemoteQueryClient *)self task];

  if (task)
  {
    _prepareURL = MGLogForCategory(6);
    if (os_log_type_enabled(_prepareURL, OS_LOG_TYPE_ERROR))
    {
      task2 = [(MGRemoteQueryClient *)self task];
      v16 = 134218242;
      selfCopy3 = self;
      v18 = 2112;
      v19 = task2;
      _os_log_error_impl(&dword_25863A000, _prepareURL, OS_LOG_TYPE_ERROR, "%p client already running %@", &v16, 0x16u);
LABEL_10:
    }
  }

  else
  {
    if (![(MGRemoteQueryClient *)self invalidated])
    {
      _prepareURL = [(MGRemoteQueryClient *)self _prepareURL];
      task2 = [(MGRemoteQueryClient *)self _prepareRequest:_prepareURL];
      v9 = [connectionCopy dataTaskWithRequest:task2];
      objc_storeStrong(&self->_task, v9);
      target = [(MGRemoteQueryClient *)self target];
      endpoint = [target endpoint];
      [v9 set_hostOverride:endpoint];

      [v9 resume];
      v12 = MGLogForCategory(6);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        handler = [(MGRemoteQueryClient *)self handler];
        target2 = [(MGRemoteQueryClient *)self target];
        v16 = 134218754;
        selfCopy3 = self;
        v18 = 2112;
        v19 = v9;
        v20 = 2112;
        v21 = handler;
        v22 = 2112;
        v23 = target2;
        _os_log_impl(&dword_25863A000, v12, OS_LOG_TYPE_DEFAULT, "%p client using %@ for issuing handler %@ to %@", &v16, 0x2Au);
      }

      goto LABEL_10;
    }

    _prepareURL = MGLogForCategory(6);
    if (os_log_type_enabled(_prepareURL, OS_LOG_TYPE_ERROR))
    {
      v16 = 134217984;
      selfCopy3 = self;
      _os_log_error_impl(&dword_25863A000, _prepareURL, OS_LOG_TYPE_ERROR, "%p client invalidated, not starting", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dispatchQueue = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (![(MGRemoteQueryClient *)self invalidated])
  {
    error = [(MGRemoteQueryClient *)self error];

    if (!error)
    {
      v7 = MGLogForCategory(6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 134218242;
        selfCopy = self;
        v11 = 2112;
        v12 = errorCopy;
        _os_log_error_impl(&dword_25863A000, v7, OS_LOG_TYPE_ERROR, "%p client failed, error %@", &v9, 0x16u);
      }

      [(MGRemoteQueryClient *)self setError:errorCopy];
      [(MGRemoteQueryClient *)self _invalidate];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  if (![(MGRemoteQueryClient *)self invalidated])
  {
    v3 = MGLogForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      error = [(MGRemoteQueryClient *)self error];
      v7 = 134218242;
      selfCopy = self;
      v9 = 2112;
      v10 = error;
      _os_log_impl(&dword_25863A000, v3, OS_LOG_TYPE_DEFAULT, "%p client invalidating, error %@", &v7, 0x16u);
    }

    [(MGRemoteQueryClient *)self setInvalidated:1];
    task = [(MGRemoteQueryClient *)self task];
    [task cancel];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_invalidated
{
  dispatchQueue = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  delegate = [(MGRemoteQueryClient *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    error = [(MGRemoteQueryClient *)self error];
    [v6 clientInvalidated:self withError:error];

    delegate = v6;
  }
}

- (id)_prepareURL
{
  dispatchQueue = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v4 setScheme:@"https"];
  target = [(MGRemoteQueryClient *)self target];
  endpoint = [target endpoint];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_endpoint_get_bonjour_fullname()];
  uRLHostAllowedCharacterSet = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
  v9 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];

  v10 = [v9 stringByReplacingOccurrencesOfString:@"%" withString:@"37"];
  [v4 setHost:v10];
  handler = [(MGRemoteQueryClient *)self handler];
  [handler prepareURL:v4];

  v12 = [v4 URL];

  return v12;
}

- (id)_prepareRequest:(id)request
{
  requestCopy = request;
  dispatchQueue = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v6 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:requestCopy];
  [v6 setHTTPMethod:@"GET"];
  [v6 rq_setProtocolVersion:{-[MGRemoteQueryClient protocolVersion](self, "protocolVersion")}];
  [v6 rq_setTimeout:900];
  handler = [(MGRemoteQueryClient *)self handler];
  if (objc_opt_respondsToSelector())
  {
    [handler prepareRequest:v6];
  }

  return v6;
}

- (void)_responseStart:(id)start
{
  v13 = *MEMORY[0x277D85DE8];
  startCopy = start;
  dispatchQueue = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryClient *)self invalidated])
  {
    data = MGLogForCategory(6);
    if (os_log_type_enabled(data, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134218242;
      selfCopy2 = self;
      v11 = 2112;
      v12 = startCopy;
      _os_log_debug_impl(&dword_25863A000, data, OS_LOG_TYPE_DEBUG, "%p client invalidated, so disregarding new response %@", &v9, 0x16u);
    }
  }

  else if ([(MGRemoteQueryClient *)self _responseValidate:startCopy])
  {
    [(MGRemoteQueryClient *)self setProcessedResult:0];
    [(MGRemoteQueryClient *)self setResponse:startCopy];
    data = [MEMORY[0x277CBEB28] data];
    [(MGRemoteQueryClient *)self setPayload:data];
  }

  else
  {
    v7 = MGLogForCategory(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 134218242;
      selfCopy2 = self;
      v11 = 2112;
      v12 = startCopy;
      _os_log_error_impl(&dword_25863A000, v7, OS_LOG_TYPE_ERROR, "%p client received invalid response %@", &v9, 0x16u);
    }

    data = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:94 userInfo:0];
    [(MGRemoteQueryClient *)self _handleError:data];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_responseValidate:(id)validate
{
  validateCopy = validate;
  dispatchQueue = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  statusCode = [validateCopy statusCode];
  rq_protocolVersion = [validateCopy rq_protocolVersion];
  v9 = [(MGRemoteQueryClient *)self protocolVersion]== rq_protocolVersion && statusCode == 200;
  handler = [(MGRemoteQueryClient *)self handler];
  if (objc_opt_respondsToSelector())
  {
    v9 &= [handler validateResponse:validateCopy];
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277CD9278]];
  v12 = [validateCopy valueForHTTPHeaderField:v11];

  if (!v9)
  {
    goto LABEL_14;
  }

  if ([v12 hasPrefix:@"multipart/x-mixed-replace;"])
  {
    goto LABEL_16;
  }

  expectedContentLength = [validateCopy expectedContentLength];
  if ((expectedContentLength & 0x8000000000000000) == 0)
  {
    if (expectedContentLength > 0x7D000)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:40 userInfo:0];
      [(MGRemoteQueryClient *)self _handleError:v14];

      goto LABEL_14;
    }

    [(MGRemoteQueryClient *)self setExpectedPayloadSize:expectedContentLength];
LABEL_16:
    v15 = 1;
    goto LABEL_17;
  }

LABEL_14:
  v15 = 0;
LABEL_17:

  return v15;
}

- (void)_responseAppend:(id)append
{
  v21 = *MEMORY[0x277D85DE8];
  appendCopy = append;
  dispatchQueue = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryClient *)self invalidated])
  {
    v6 = MGLogForCategory(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v15 = 134218242;
      selfCopy3 = self;
      v17 = 2112;
      v18 = appendCopy;
      _os_log_debug_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEBUG, "%p client invalidated, so disregarding data %@", &v15, 0x16u);
    }

LABEL_11:

    goto LABEL_12;
  }

  response = [(MGRemoteQueryClient *)self response];

  if (!response)
  {
    v6 = MGLogForCategory(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v15 = 134218242;
      selfCopy3 = self;
      v17 = 2112;
      v18 = appendCopy;
      _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p discarding responseless data %@", &v15, 0x16u);
    }

    goto LABEL_11;
  }

  payload = [(MGRemoteQueryClient *)self payload];
  [payload appendData:appendCopy];

  payload2 = [(MGRemoteQueryClient *)self payload];
  v10 = [payload2 length];

  expectedPayloadSize = [(MGRemoteQueryClient *)self expectedPayloadSize];
  if (expectedPayloadSize < v10)
  {
    v12 = expectedPayloadSize;
    v13 = MGLogForCategory(6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 134218496;
      selfCopy3 = self;
      v17 = 2048;
      v18 = v10;
      v19 = 2048;
      v20 = v12;
      _os_log_error_impl(&dword_25863A000, v13, OS_LOG_TYPE_ERROR, "%p client payload %lu exceeds expectations %lu", &v15, 0x20u);
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:27 userInfo:0];
    [(MGRemoteQueryClient *)self _handleError:v6];
    goto LABEL_11;
  }

  if (expectedPayloadSize == v10 && ![(MGRemoteQueryClient *)self processedResult])
  {
    [(MGRemoteQueryClient *)self _responseComplete];
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_responseComplete
{
  v22 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (![(MGRemoteQueryClient *)self processedResult])
  {
    [(MGRemoteQueryClient *)self setProcessedResult:1];
    v4 = MEMORY[0x277CCAAA0];
    payload = [(MGRemoteQueryClient *)self payload];
    v15 = 0;
    v6 = [v4 JSONObjectWithData:payload options:0 error:&v15];
    v7 = v15;

    if (v7)
    {
      v8 = MGLogForCategory(6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        selfCopy3 = self;
        v18 = 2112;
        v19 = v7;
        _os_log_error_impl(&dword_25863A000, v8, OS_LOG_TYPE_ERROR, "%p client encountered decoding error %@", buf, 0x16u);
      }

      [(MGRemoteQueryClient *)self _handleError:v7];
    }

    else
    {
      response = [(MGRemoteQueryClient *)self response];
      if (response && v6)
      {
        handler = [(MGRemoteQueryClient *)self handler];
        v11 = [handler handleCompleteResponse:response jsonPayload:v6];
        v12 = MGLogForCategory(6);
        v13 = v12;
        if (v11)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218498;
            selfCopy3 = self;
            v18 = 2048;
            v19 = handler;
            v20 = 2112;
            v21 = v11;
            _os_log_error_impl(&dword_25863A000, v13, OS_LOG_TYPE_ERROR, "%p client response handling via %p encountered error %@", buf, 0x20u);
          }

          [(MGRemoteQueryClient *)self _handleError:v11];
        }

        else
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218240;
            selfCopy3 = self;
            v18 = 2048;
            v19 = handler;
            _os_log_debug_impl(&dword_25863A000, v13, OS_LOG_TYPE_DEBUG, "%p client response handling via %p succeeded", buf, 0x16u);
          }
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (MGRemoteQueryClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)query
{
  handler = [(MGRemoteQueryClient *)self handler];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    query = [handler query];
  }

  else
  {
    query = 0;
  }

  return query;
}

@end