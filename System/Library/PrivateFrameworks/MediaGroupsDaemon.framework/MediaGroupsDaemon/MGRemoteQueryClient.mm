@interface MGRemoteQueryClient
+ (MGRemoteQueryClient)clientWithHandler:(id)a3 target:(id)a4 dispatchQueue:(id)a5 delegate:(id)a6 usingSession:(id)a7;
- (BOOL)_responseValidate:(id)a3;
- (MGRemoteQueryClientDelegate)delegate;
- (id)_initWithHandler:(id)a3 target:(id)a4 dispatchQueue:(id)a5 delegate:(id)a6 session:(id)a7;
- (id)_prepareRequest:(id)a3;
- (id)_prepareURL;
- (id)description;
- (id)query;
- (void)_handleError:(id)a3;
- (void)_invalidate;
- (void)_invalidated;
- (void)_prepareConnection:(id)a3;
- (void)_responseAppend:(id)a3;
- (void)_responseComplete;
- (void)_responseStart:(id)a3;
- (void)completeWithError:(id)a3;
- (void)consumeData:(id)a3;
- (void)consumeResponse:(id)a3;
- (void)dealloc;
@end

@implementation MGRemoteQueryClient

+ (MGRemoteQueryClient)clientWithHandler:(id)a3 target:(id)a4 dispatchQueue:(id)a5 delegate:(id)a6 usingSession:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] _initWithHandler:v16 target:v15 dispatchQueue:v14 delegate:v13 session:v12];

  return v17;
}

- (id)_initWithHandler:(id)a3 target:(id)a4 dispatchQueue:(id)a5 delegate:(id)a6 session:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v30.receiver = self;
  v30.super_class = MGRemoteQueryClient;
  v18 = [(MGRemoteQueryClient *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_dispatchQueue, a5);
    objc_storeStrong(&v19->_handler, a3);
    objc_storeStrong(&v19->_target, a4);
    objc_storeWeak(&v19->_delegate, v16);
    v19->_invalidated = 0;
    error = v19->_error;
    v19->_error = 0;

    v21 = [(MGRemoteQueryClientTarget *)v19->_target protocolVersion];
    response = v19->_response;
    v19->_protocolVersion = v21;
    v19->_response = 0;

    v19->_expectedPayloadSize = 0;
    v23 = [MEMORY[0x277CBEB28] data];
    payload = v19->_payload;
    v19->_payload = v23;

    v19->_processedResult = 0;
    v25 = [(MGRemoteQueryClient *)v19 dispatchQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __78__MGRemoteQueryClient__initWithHandler_target_dispatchQueue_delegate_session___block_invoke;
    v27[3] = &unk_27989EE80;
    v28 = v19;
    v29 = v17;
    dispatch_async(v25, v27);
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
  v6 = [(MGRemoteQueryClient *)self task];
  v7 = [(MGRemoteQueryClient *)self target];
  v8 = [(MGRemoteQueryClient *)self handler];
  v9 = [(MGRemoteQueryClient *)self payload];
  v10 = [v3 stringWithFormat:@"<%@: %p, _task = %@, _target = %@, _handler = %@, payload %lu/%lu>", v5, self, v6, v7, v8, objc_msgSend(v9, "length"), -[MGRemoteQueryClient expectedPayloadSize](self, "expectedPayloadSize")];

  return v10;
}

- (void)consumeResponse:(id)a3
{
  v4 = a3;
  v5 = [(MGRemoteQueryClient *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__MGRemoteQueryClient_consumeResponse___block_invoke;
  v7[3] = &unk_27989EE80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)consumeData:(id)a3
{
  v4 = a3;
  v5 = [(MGRemoteQueryClient *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__MGRemoteQueryClient_consumeData___block_invoke;
  v7[3] = &unk_27989EE80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)completeWithError:(id)a3
{
  v4 = a3;
  v5 = [(MGRemoteQueryClient *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__MGRemoteQueryClient_completeWithError___block_invoke;
  v7[3] = &unk_27989EE80;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)_prepareConnection:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MGRemoteQueryClient *)self task];

  if (v6)
  {
    v7 = MGLogForCategory(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(MGRemoteQueryClient *)self task];
      v16 = 134218242;
      v17 = self;
      v18 = 2112;
      v19 = v8;
      _os_log_error_impl(&dword_25863A000, v7, OS_LOG_TYPE_ERROR, "%p client already running %@", &v16, 0x16u);
LABEL_10:
    }
  }

  else
  {
    if (![(MGRemoteQueryClient *)self invalidated])
    {
      v7 = [(MGRemoteQueryClient *)self _prepareURL];
      v8 = [(MGRemoteQueryClient *)self _prepareRequest:v7];
      v9 = [v4 dataTaskWithRequest:v8];
      objc_storeStrong(&self->_task, v9);
      v10 = [(MGRemoteQueryClient *)self target];
      v11 = [v10 endpoint];
      [v9 set_hostOverride:v11];

      [v9 resume];
      v12 = MGLogForCategory(6);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(MGRemoteQueryClient *)self handler];
        v14 = [(MGRemoteQueryClient *)self target];
        v16 = 134218754;
        v17 = self;
        v18 = 2112;
        v19 = v9;
        v20 = 2112;
        v21 = v13;
        v22 = 2112;
        v23 = v14;
        _os_log_impl(&dword_25863A000, v12, OS_LOG_TYPE_DEFAULT, "%p client using %@ for issuing handler %@ to %@", &v16, 0x2Au);
      }

      goto LABEL_10;
    }

    v7 = MGLogForCategory(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = 134217984;
      v17 = self;
      _os_log_error_impl(&dword_25863A000, v7, OS_LOG_TYPE_ERROR, "%p client invalidated, not starting", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleError:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  if (![(MGRemoteQueryClient *)self invalidated])
  {
    v6 = [(MGRemoteQueryClient *)self error];

    if (!v6)
    {
      v7 = MGLogForCategory(6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 134218242;
        v10 = self;
        v11 = 2112;
        v12 = v4;
        _os_log_error_impl(&dword_25863A000, v7, OS_LOG_TYPE_ERROR, "%p client failed, error %@", &v9, 0x16u);
      }

      [(MGRemoteQueryClient *)self setError:v4];
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
      v4 = [(MGRemoteQueryClient *)self error];
      v7 = 134218242;
      v8 = self;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_25863A000, v3, OS_LOG_TYPE_DEFAULT, "%p client invalidating, error %@", &v7, 0x16u);
    }

    [(MGRemoteQueryClient *)self setInvalidated:1];
    v5 = [(MGRemoteQueryClient *)self task];
    [v5 cancel];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_invalidated
{
  v3 = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MGRemoteQueryClient *)self delegate];
  if (v4)
  {
    v6 = v4;
    v5 = [(MGRemoteQueryClient *)self error];
    [v6 clientInvalidated:self withError:v5];

    v4 = v6;
  }
}

- (id)_prepareURL
{
  v3 = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v4 setScheme:@"https"];
  v5 = [(MGRemoteQueryClient *)self target];
  v6 = [v5 endpoint];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_endpoint_get_bonjour_fullname()];
  v8 = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
  v9 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v8];

  v10 = [v9 stringByReplacingOccurrencesOfString:@"%" withString:@"37"];
  [v4 setHost:v10];
  v11 = [(MGRemoteQueryClient *)self handler];
  [v11 prepareURL:v4];

  v12 = [v4 URL];

  return v12;
}

- (id)_prepareRequest:(id)a3
{
  v4 = a3;
  v5 = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:v4];
  [v6 setHTTPMethod:@"GET"];
  [v6 rq_setProtocolVersion:{-[MGRemoteQueryClient protocolVersion](self, "protocolVersion")}];
  [v6 rq_setTimeout:900];
  v7 = [(MGRemoteQueryClient *)self handler];
  if (objc_opt_respondsToSelector())
  {
    [v7 prepareRequest:v6];
  }

  return v6;
}

- (void)_responseStart:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  if ([(MGRemoteQueryClient *)self invalidated])
  {
    v6 = MGLogForCategory(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134218242;
      v10 = self;
      v11 = 2112;
      v12 = v4;
      _os_log_debug_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEBUG, "%p client invalidated, so disregarding new response %@", &v9, 0x16u);
    }
  }

  else if ([(MGRemoteQueryClient *)self _responseValidate:v4])
  {
    [(MGRemoteQueryClient *)self setProcessedResult:0];
    [(MGRemoteQueryClient *)self setResponse:v4];
    v6 = [MEMORY[0x277CBEB28] data];
    [(MGRemoteQueryClient *)self setPayload:v6];
  }

  else
  {
    v7 = MGLogForCategory(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 134218242;
      v10 = self;
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&dword_25863A000, v7, OS_LOG_TYPE_ERROR, "%p client received invalid response %@", &v9, 0x16u);
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:94 userInfo:0];
    [(MGRemoteQueryClient *)self _handleError:v6];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_responseValidate:(id)a3
{
  v4 = a3;
  v5 = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 statusCode];
  v7 = [v4 rq_protocolVersion];
  v9 = [(MGRemoteQueryClient *)self protocolVersion]== v7 && v6 == 200;
  v10 = [(MGRemoteQueryClient *)self handler];
  if (objc_opt_respondsToSelector())
  {
    v9 &= [v10 validateResponse:v4];
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277CD9278]];
  v12 = [v4 valueForHTTPHeaderField:v11];

  if (!v9)
  {
    goto LABEL_14;
  }

  if ([v12 hasPrefix:@"multipart/x-mixed-replace;"])
  {
    goto LABEL_16;
  }

  v13 = [v4 expectedContentLength];
  if ((v13 & 0x8000000000000000) == 0)
  {
    if (v13 > 0x7D000)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:40 userInfo:0];
      [(MGRemoteQueryClient *)self _handleError:v14];

      goto LABEL_14;
    }

    [(MGRemoteQueryClient *)self setExpectedPayloadSize:v13];
LABEL_16:
    v15 = 1;
    goto LABEL_17;
  }

LABEL_14:
  v15 = 0;
LABEL_17:

  return v15;
}

- (void)_responseAppend:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  if ([(MGRemoteQueryClient *)self invalidated])
  {
    v6 = MGLogForCategory(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v15 = 134218242;
      v16 = self;
      v17 = 2112;
      v18 = v4;
      _os_log_debug_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEBUG, "%p client invalidated, so disregarding data %@", &v15, 0x16u);
    }

LABEL_11:

    goto LABEL_12;
  }

  v7 = [(MGRemoteQueryClient *)self response];

  if (!v7)
  {
    v6 = MGLogForCategory(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v15 = 134218242;
      v16 = self;
      v17 = 2112;
      v18 = v4;
      _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p discarding responseless data %@", &v15, 0x16u);
    }

    goto LABEL_11;
  }

  v8 = [(MGRemoteQueryClient *)self payload];
  [v8 appendData:v4];

  v9 = [(MGRemoteQueryClient *)self payload];
  v10 = [v9 length];

  v11 = [(MGRemoteQueryClient *)self expectedPayloadSize];
  if (v11 < v10)
  {
    v12 = v11;
    v13 = MGLogForCategory(6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 134218496;
      v16 = self;
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

  if (v11 == v10 && ![(MGRemoteQueryClient *)self processedResult])
  {
    [(MGRemoteQueryClient *)self _responseComplete];
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_responseComplete
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(MGRemoteQueryClient *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  if (![(MGRemoteQueryClient *)self processedResult])
  {
    [(MGRemoteQueryClient *)self setProcessedResult:1];
    v4 = MEMORY[0x277CCAAA0];
    v5 = [(MGRemoteQueryClient *)self payload];
    v15 = 0;
    v6 = [v4 JSONObjectWithData:v5 options:0 error:&v15];
    v7 = v15;

    if (v7)
    {
      v8 = MGLogForCategory(6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v17 = self;
        v18 = 2112;
        v19 = v7;
        _os_log_error_impl(&dword_25863A000, v8, OS_LOG_TYPE_ERROR, "%p client encountered decoding error %@", buf, 0x16u);
      }

      [(MGRemoteQueryClient *)self _handleError:v7];
    }

    else
    {
      v9 = [(MGRemoteQueryClient *)self response];
      if (v9 && v6)
      {
        v10 = [(MGRemoteQueryClient *)self handler];
        v11 = [v10 handleCompleteResponse:v9 jsonPayload:v6];
        v12 = MGLogForCategory(6);
        v13 = v12;
        if (v11)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218498;
            v17 = self;
            v18 = 2048;
            v19 = v10;
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
            v17 = self;
            v18 = 2048;
            v19 = v10;
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
  v2 = [(MGRemoteQueryClient *)self handler];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 query];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end