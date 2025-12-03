@interface MGRemoteQueryServerTransaction
- (BOOL)_requestValidate;
- (MGRemoteQueryServerTransaction)initWithConnection:(id)connection delegate:(id)delegate dispatchQueue:(id)queue;
- (MGRemoteQueryServerTransactionDelegate)delegate;
- (id)_handlerForRequest:(id)request;
- (id)description;
- (void)_delegateNotifyActivityOccurred;
- (void)_delegateNotifyInvalidated;
- (void)_delegateNotifyTimeoutInterval:(unint64_t)interval;
- (void)_handleError:(id)error;
- (void)_handleNWError:(id)error;
- (void)_invalidate;
- (void)_invalidated;
- (void)_prepareConnection;
- (void)_requestParse:(id)parse;
- (void)_requestProcess:(id)process;
- (void)_requestRead;
- (void)_responseAppend:(id)append;
- (void)_responseEnd;
- (void)_responseHandlePayloadFromHandler:(id)handler error:(id)error;
- (void)_responseObtainPayloadFromHandler;
- (void)_responseStart;
- (void)_updateState:(unint64_t)state;
- (void)dealloc;
@end

@implementation MGRemoteQueryServerTransaction

- (MGRemoteQueryServerTransaction)initWithConnection:(id)connection delegate:(id)delegate dispatchQueue:(id)queue
{
  connectionCopy = connection;
  delegateCopy = delegate;
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = MGRemoteQueryServerTransaction;
  v12 = [(MGRemoteQueryServerTransaction *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v13->_dispatchQueue, queue);
    objc_storeStrong(&v13->_connection, connection);
    error = v13->_error;
    v13->_state = 0;
    v13->_error = 0;

    handler = v13->_handler;
    v13->_handler = 0;

    connection = v13->_connection;
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.MediaGroups.RemoteQuery.Server-Transaction-%llu", nw_connection_get_id()];
    [v17 UTF8String];
    v18 = os_transaction_create();
    transaction = v13->_transaction;
    v13->_transaction = v18;

    dispatchQueue = [(MGRemoteQueryServerTransaction *)v13 dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__MGRemoteQueryServerTransaction_initWithConnection_delegate_dispatchQueue___block_invoke;
    block[3] = &unk_27989ED90;
    v23 = v13;
    dispatch_async(dispatchQueue, block);
  }

  return v13;
}

- (void)dealloc
{
  [(MGRemoteQueryServerTransaction *)self _invalidate];
  v3.receiver = self;
  v3.super_class = MGRemoteQueryServerTransaction;
  [(MGRemoteQueryServerTransaction *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  state = [(MGRemoteQueryServerTransaction *)self state];
  connection = [(MGRemoteQueryServerTransaction *)self connection];
  handler = [(MGRemoteQueryServerTransaction *)self handler];
  v9 = [v3 stringWithFormat:@"<%@: %p, _state = %lu, _connection = %@, _handler = %@>", v5, self, state, connection, handler];

  return v9;
}

- (void)_updateState:(unint64_t)state
{
  v19 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  state = [(MGRemoteQueryServerTransaction *)self state];
  v7 = MGLogForCategory(5);
  v8 = v7;
  if (state >= state)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218496;
      selfCopy3 = self;
      v15 = 2048;
      stateCopy3 = state;
      v17 = 2048;
      state2 = [(MGRemoteQueryServerTransaction *)self state];
      v10 = "%p transaction invalid state change to %lu from %lu";
      v11 = v8;
      v12 = 32;
      goto LABEL_21;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134218496;
    selfCopy3 = self;
    v15 = 2048;
    stateCopy3 = state;
    v17 = 2048;
    state2 = [(MGRemoteQueryServerTransaction *)self state];
    _os_log_debug_impl(&dword_25863A000, v8, OS_LOG_TYPE_DEBUG, "%p transaction advancing to state %lu from %lu", &v13, 0x20u);
  }

  [(MGRemoteQueryServerTransaction *)self setState:state];
  if (state <= 2)
  {
    if (state == 1)
    {
      [(MGRemoteQueryServerTransaction *)self _prepareConnection];
      goto LABEL_11;
    }

    if (state == 2)
    {
      [(MGRemoteQueryServerTransaction *)self _requestRead];
      goto LABEL_11;
    }

LABEL_18:
    v8 = MGLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218240;
      selfCopy3 = self;
      v15 = 2048;
      stateCopy3 = state;
      v10 = "%p transaction unexpected state change %lu";
      v11 = v8;
      v12 = 22;
LABEL_21:
      _os_log_error_impl(&dword_25863A000, v11, OS_LOG_TYPE_ERROR, v10, &v13, v12);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (state == 3)
  {
    [(MGRemoteQueryServerTransaction *)self _responseStart];
    goto LABEL_11;
  }

  if (state == 4)
  {
    [(MGRemoteQueryServerTransaction *)self _invalidate];
    goto LABEL_11;
  }

  if (state != 5)
  {
    goto LABEL_18;
  }

  [(MGRemoteQueryServerTransaction *)self _invalidated];
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_prepareConnection
{
  v23 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  objc_initWeak(&location, self);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  connection = [(MGRemoteQueryServerTransaction *)self connection];
  v4 = v13[5];
  dispatchQueue2 = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  nw_connection_set_queue(v4, dispatchQueue2);

  v6 = v13[5];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __52__MGRemoteQueryServerTransaction__prepareConnection__block_invoke;
  handler[3] = &unk_27989EDB8;
  objc_copyWeak(&v11, &location);
  handler[4] = &v12;
  nw_connection_set_state_changed_handler(v6, handler);
  v7 = MGLogForCategory(5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = v13[5];
    *buf = 134218242;
    selfCopy = self;
    v21 = 2112;
    v22 = v9;
    _os_log_debug_impl(&dword_25863A000, v7, OS_LOG_TYPE_DEBUG, "%p transaction accepting connection %@", buf, 0x16u);
  }

  nw_connection_start(v13[5]);
  objc_destroyWeak(&v11);
  _Block_object_dispose(&v12, 8);

  objc_destroyWeak(&location);
  v8 = *MEMORY[0x277D85DE8];
}

void __52__MGRemoteQueryServerTransaction__prepareConnection__block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  switch(a2)
  {
    case 5:
      [WeakRetained _updateState:5];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = 0;

      break;
    case 4:
      if (v10)
      {
        [WeakRetained _handleNWError:?];
      }

      else
      {
        v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:57 userInfo:0];
        [v6 _handleError:v9];
      }

      break;
    case 3:
      [WeakRetained _updateState:2];
      break;
  }
}

- (void)_handleError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryServerTransaction *)self state]<= 3)
  {
    v6 = MGLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 134218242;
      selfCopy = self;
      v10 = 2112;
      v11 = errorCopy;
      _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p transaction failed, error %@", &v8, 0x16u);
    }

    [(MGRemoteQueryServerTransaction *)self setError:errorCopy];
    [(MGRemoteQueryServerTransaction *)self _updateState:4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleNWError:(id)error
{
  errorCopy = error;
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v6 = nw_error_copy_cf_error(errorCopy);
  [(MGRemoteQueryServerTransaction *)self _handleError:v6];
}

- (void)_invalidate
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(MGRemoteQueryServerTransaction *)self state]<= 4)
  {
    v3 = MGLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      error = [(MGRemoteQueryServerTransaction *)self error];
      *buf = 134218242;
      selfCopy = self;
      v15 = 2112;
      v16 = error;
      _os_log_impl(&dword_25863A000, v3, OS_LOG_TYPE_DEFAULT, "%p transaction invalidating, error %@", buf, 0x16u);
    }

    [(MGRemoteQueryServerTransaction *)self setHandler:0];
    connection = [(MGRemoteQueryServerTransaction *)self connection];
    connection = self->_connection;
    self->_connection = 0;

    dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
    error2 = [(MGRemoteQueryServerTransaction *)self error];

    if (connection)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __45__MGRemoteQueryServerTransaction__invalidate__block_invoke;
      v10[3] = &unk_27989F468;
      v12 = error2 != 0;
      v11 = connection;
      dispatch_async(dispatchQueue, v10);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __45__MGRemoteQueryServerTransaction__invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    nw_connection_force_cancel(v2);
  }

  else
  {
    nw_connection_cancel(v2);
  }
}

- (void)_invalidated
{
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  [(MGRemoteQueryServerTransaction *)self _delegateNotifyInvalidated];

  [(MGRemoteQueryServerTransaction *)self setTransaction:0];
}

- (void)_requestRead
{
  v12 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryServerTransaction *)self state]== 2)
  {
    objc_initWeak(location, self);
    connection = [(MGRemoteQueryServerTransaction *)self connection];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__MGRemoteQueryServerTransaction__requestRead__block_invoke;
    v7[3] = &unk_27989F490;
    objc_copyWeak(&v8, location);
    v7[4] = self;
    nw_connection_receive(connection, 1u, 0x100000u, v7);

    objc_destroyWeak(&v8);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = MGLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *location = 134218240;
      *&location[4] = self;
      v10 = 2048;
      state = [(MGRemoteQueryServerTransaction *)self state];
      _os_log_error_impl(&dword_25863A000, v5, OS_LOG_TYPE_ERROR, "%p transaction not reading in state %lu", location, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __46__MGRemoteQueryServerTransaction__requestRead__block_invoke(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained state] != 2)
    {
      v15 = MGLogForCategory(5);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v25 = v13;
        v26 = 2048;
        v27 = [v13 state];
        _os_log_error_impl(&dword_25863A000, v15, OS_LOG_TYPE_ERROR, "%p transaction discarding read result in state %lu", buf, 0x16u);
      }

      goto LABEL_24;
    }

    [*(a1 + 32) _delegateNotifyActivityOccurred];
    if (v9 && dispatch_data_get_size(v9))
    {
      v14 = MGLogForCategory(5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v25 = v13;
        _os_log_error_impl(&dword_25863A000, v14, OS_LOG_TYPE_ERROR, "%p transaction received body payload", buf, 0xCu);
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:40 userInfo:0];
      [v13 _handleError:v15];
      goto LABEL_24;
    }

    if ((a4 & 1) == 0)
    {
      v19 = MGLogForCategory(5);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v25 = v13;
        _os_log_impl(&dword_25863A000, v19, OS_LOG_TYPE_DEFAULT, "%p transaction read incomplete, repeating", buf, 0xCu);
      }

      v15 = [v13 dispatchQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__MGRemoteQueryServerTransaction__requestRead__block_invoke_12;
      block[3] = &unk_27989ED90;
      block[4] = v13;
      dispatch_async(v15, block);
      goto LABEL_24;
    }

    if (v10)
    {
      v16 = nw_protocol_copy_http_definition();
      v15 = nw_content_context_copy_protocol_metadata(v10, v16);

      if (v15)
      {
        v17 = nw_http_metadata_copy_request();
        if (v17)
        {
          v18 = v17;
          [v13 _requestProcess:v17];
          if (v11)
          {
            [v13 _handleNWError:v11];
          }

LABEL_23:

LABEL_24:
          goto LABEL_25;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v20 = MGLogForCategory(5);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v25 = v13;
      _os_log_error_impl(&dword_25863A000, v20, OS_LOG_TYPE_ERROR, "%p transaction received malformed data", buf, 0xCu);
    }

    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:100 userInfo:0];
    [v13 _handleError:v21];

    v18 = 0;
    goto LABEL_23;
  }

LABEL_25:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_requestProcess:(id)process
{
  [(MGRemoteQueryServerTransaction *)self _requestParse:process];
  if ([(MGRemoteQueryServerTransaction *)self _requestValidate])
  {
    request = [(MGRemoteQueryServerTransaction *)self request];
    rq_timeout = [request rq_timeout];

    [(MGRemoteQueryServerTransaction *)self _delegateNotifyTimeoutInterval:rq_timeout];
    dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__MGRemoteQueryServerTransaction__requestProcess___block_invoke;
    block[3] = &unk_27989ED90;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:94 userInfo:0];
    [(MGRemoteQueryServerTransaction *)self _handleError:v7];
  }
}

- (void)_requestParse:(id)parse
{
  parseCopy = parse;
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v6 = nw_http_request_copy_url();
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277CBEBC0];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    v10 = [v8 URLWithString:v9];

    if (v10)
    {
      v11 = [MEMORY[0x277CBAB50] requestWithURL:v10];
    }

    else
    {
      v11 = 0;
    }

    free(v7);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v15 = v11;
  nw_http_request_access_method();
  v12 = nw_http_request_copy_header_fields();
  v14 = MEMORY[0x277D85DD0];
  v13 = v15;
  nw_http_fields_enumerate();
  [(MGRemoteQueryServerTransaction *)self setRequest:v13, v14, 3221225472, __48__MGRemoteQueryServerTransaction__requestParse___block_invoke_2, &unk_27989F4E0];
}

void __48__MGRemoteQueryServerTransaction__requestParse___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  [v2 setHTTPMethod:v3];
}

uint64_t __48__MGRemoteQueryServerTransaction__requestParse___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a2 length:a3 encoding:4];
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a4 length:a5 encoding:4];
  [*(a1 + 32) addValue:v9 forHTTPHeaderField:v8];

  return 1;
}

- (BOOL)_requestValidate
{
  v19 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  request = [(MGRemoteQueryServerTransaction *)self request];
  hTTPMethod = [request HTTPMethod];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277CD9290]];
  v7 = v6;
  v8 = hTTPMethod && v6 && ![hTTPMethod caseInsensitiveCompare:v6];
  v9 = [request rq_protocolVersion] == 1 && v8;
  v10 = [(MGRemoteQueryServerTransaction *)self _handlerForRequest:request];
  if (!v10)
  {
    goto LABEL_14;
  }

  [(MGRemoteQueryServerTransaction *)self setHandler:v10];
  v11 = MGLogForCategory(5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134218242;
    selfCopy = self;
    v17 = 2112;
    v18 = v10;
    _os_log_debug_impl(&dword_25863A000, v11, OS_LOG_TYPE_DEBUG, "%p transaction using handler %@", &v15, 0x16u);
  }

  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      validateRequest = [v10 validateRequest];
    }

    else
    {
      validateRequest = 1;
    }
  }

  else
  {
LABEL_14:
    validateRequest = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return validateRequest;
}

- (void)_responseStart
{
  v25 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryServerTransaction *)self state]== 3)
  {
    responseContext = [(MGRemoteQueryServerTransaction *)self responseContext];

    if (!responseContext)
    {
      v9 = MEMORY[0x277CCACA8];
      request = [(MGRemoteQueryServerTransaction *)self request];
      v5 = [v9 stringWithFormat:@"%lu", objc_msgSend(request, "rq_protocolVersion")];

      v11 = MEMORY[0x259C85B40]();
      v12 = *MEMORY[0x277CD9268];
      [@"no-store no-transform"];
      nw_http_fields_append();
      [@"x-apple-mediagroups-version" UTF8String];
      [v5 UTF8String];
      nw_http_fields_append();
      handler = [(MGRemoteQueryServerTransaction *)self handler];
      [handler prepareResponse:v11];

      well_known = nw_http_response_create_well_known();
      nw_http_response_set_header_fields();
      metadata_for_response = nw_http_create_metadata_for_response();
      v16 = nw_content_context_create("response");
      nw_content_context_set_metadata_for_protocol(v16, metadata_for_response);
      [(MGRemoteQueryServerTransaction *)self setResponseContext:v16];
      objc_initWeak(buf, self);
      connection = [(MGRemoteQueryServerTransaction *)self connection];
      completion[0] = MEMORY[0x277D85DD0];
      completion[1] = 3221225472;
      completion[2] = __48__MGRemoteQueryServerTransaction__responseStart__block_invoke;
      completion[3] = &unk_27989F508;
      objc_copyWeak(&v20, buf);
      completion[4] = self;
      nw_connection_send(connection, MEMORY[0x277D85CC8], v16, 0, completion);

      [(MGRemoteQueryServerTransaction *)self _responseObtainPayloadFromHandler];
      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);

      goto LABEL_9;
    }

    v5 = MGLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      selfCopy2 = self;
      v6 = "%p transaction already started response";
      v7 = v5;
      v8 = 12;
LABEL_7:
      _os_log_error_impl(&dword_25863A000, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
    }
  }

  else
  {
    v5 = MGLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      selfCopy2 = self;
      v23 = 2048;
      state = [(MGRemoteQueryServerTransaction *)self state];
      v6 = "%p transaction not starting response in state %lu";
      v7 = v5;
      v8 = 22;
      goto LABEL_7;
    }
  }

LABEL_9:

  v18 = *MEMORY[0x277D85DE8];
}

void __48__MGRemoteQueryServerTransaction__responseStart__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained state] == 3)
    {
      [*(a1 + 32) _delegateNotifyActivityOccurred];
      if (v3)
      {
        [v5 _handleNWError:v3];
      }
    }

    else
    {
      v6 = MGLogForCategory(5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 134218240;
        v9 = v5;
        v10 = 2048;
        v11 = [v5 state];
        _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p transaction discarding send result in state %lu", &v8, 0x16u);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_responseAppend:(id)append
{
  v19 = *MEMORY[0x277D85DE8];
  appendCopy = append;
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryServerTransaction *)self state]!= 3)
  {
    _createDispatchData = MGLogForCategory(5);
    if (!os_log_type_enabled(_createDispatchData, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *location = 134218240;
    *&location[4] = self;
    v17 = 2048;
    state = [(MGRemoteQueryServerTransaction *)self state];
    v10 = "%p transaction not appending response in state %lu";
    v11 = _createDispatchData;
    v12 = 22;
LABEL_9:
    _os_log_error_impl(&dword_25863A000, v11, OS_LOG_TYPE_ERROR, v10, location, v12);
    goto LABEL_7;
  }

  responseContext = [(MGRemoteQueryServerTransaction *)self responseContext];

  if (!responseContext)
  {
    _createDispatchData = MGLogForCategory(5);
    if (!os_log_type_enabled(_createDispatchData, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *location = 134217984;
    *&location[4] = self;
    v10 = "%p transaction has not started response";
    v11 = _createDispatchData;
    v12 = 12;
    goto LABEL_9;
  }

  _createDispatchData = [appendCopy _createDispatchData];
  objc_initWeak(location, self);
  connection = [(MGRemoteQueryServerTransaction *)self connection];
  responseContext2 = [(MGRemoteQueryServerTransaction *)self responseContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__MGRemoteQueryServerTransaction__responseAppend___block_invoke;
  v14[3] = &unk_27989F508;
  objc_copyWeak(&v15, location);
  v14[4] = self;
  nw_connection_send(connection, _createDispatchData, responseContext2, 0, v14);

  objc_destroyWeak(&v15);
  objc_destroyWeak(location);
LABEL_7:

  v13 = *MEMORY[0x277D85DE8];
}

void __50__MGRemoteQueryServerTransaction__responseAppend___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained state] == 3)
    {
      [*(a1 + 32) _delegateNotifyActivityOccurred];
      if (v3)
      {
        [v5 _handleNWError:v3];
      }

      else
      {
        [*(a1 + 32) _responseObtainPayloadFromHandler];
      }
    }

    else
    {
      v6 = MGLogForCategory(5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 134218240;
        v9 = v5;
        v10 = 2048;
        v11 = [v5 state];
        _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p transaction discarding send append result in state %lu", &v8, 0x16u);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_responseEnd
{
  v15 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryServerTransaction *)self state]!= 3)
  {
    v8 = MGLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *location = 134218240;
      *&location[4] = self;
      v13 = 2048;
      state = [(MGRemoteQueryServerTransaction *)self state];
      _os_log_error_impl(&dword_25863A000, v8, OS_LOG_TYPE_ERROR, "%p transaction not ending response in state %lu", location, 0x16u);
    }

    goto LABEL_9;
  }

  responseContext = [(MGRemoteQueryServerTransaction *)self responseContext];

  if (!responseContext)
  {
    v8 = MGLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *location = 134217984;
      *&location[4] = self;
      _os_log_error_impl(&dword_25863A000, v8, OS_LOG_TYPE_ERROR, "%p transaction not ending response when it has not started response", location, 0xCu);
    }

LABEL_9:

    goto LABEL_10;
  }

  responseContext2 = [(MGRemoteQueryServerTransaction *)self responseContext];
  nw_content_context_set_is_final(responseContext2, 1);

  objc_initWeak(location, self);
  connection = [(MGRemoteQueryServerTransaction *)self connection];
  responseContext3 = [(MGRemoteQueryServerTransaction *)self responseContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__MGRemoteQueryServerTransaction__responseEnd__block_invoke;
  v10[3] = &unk_27989F508;
  objc_copyWeak(&v11, location);
  v10[4] = self;
  nw_connection_send(connection, MEMORY[0x277D85CC8], responseContext3, 1, v10);

  objc_destroyWeak(&v11);
  objc_destroyWeak(location);
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
}

void __46__MGRemoteQueryServerTransaction__responseEnd__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained state] == 3)
    {
      [*(a1 + 32) _delegateNotifyActivityOccurred];
      if (v3)
      {
        [v5 _handleNWError:v3];
      }

      else
      {
        [*(a1 + 32) _invalidate];
      }
    }

    else
    {
      v6 = MGLogForCategory(5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 134218240;
        v9 = v5;
        v10 = 2048;
        v11 = [v5 state];
        _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p transaction discarding send end result in state %lu", &v8, 0x16u);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_responseObtainPayloadFromHandler
{
  v16 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryServerTransaction *)self state]!= 3)
  {
    v6 = MGLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = [(MGRemoteQueryServerTransaction *)self state];
      _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p transaction not requesting payload in state %lu", buf, 0x16u);
    }

    goto LABEL_9;
  }

  responseContext = [(MGRemoteQueryServerTransaction *)self responseContext];

  if (!responseContext)
  {
    v6 = MGLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = self;
      _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p transaction not requesting payload without having started response", buf, 0xCu);
    }

LABEL_9:

    goto LABEL_10;
  }

  objc_initWeak(&location, self);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v13 = __Block_byref_object_copy__25;
  v14 = __Block_byref_object_dispose__26;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__MGRemoteQueryServerTransaction__responseObtainPayloadFromHandler__block_invoke;
  v9[3] = &unk_27989F530;
  objc_copyWeak(&v10, &location);
  v15 = MEMORY[0x259C85F90](v9);
  handler = [(MGRemoteQueryServerTransaction *)self handler];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__MGRemoteQueryServerTransaction__responseObtainPayloadFromHandler__block_invoke_3;
  v8[3] = &unk_27989F558;
  v8[4] = buf;
  [handler provideResponseData:v8];

  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
}

void __67__MGRemoteQueryServerTransaction__responseObtainPayloadFromHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__MGRemoteQueryServerTransaction__responseObtainPayloadFromHandler__block_invoke_2;
    block[3] = &unk_27989F010;
    block[4] = v8;
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

void __67__MGRemoteQueryServerTransaction__responseObtainPayloadFromHandler__block_invoke_3(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

- (void)_responseHandlePayloadFromHandler:(id)handler error:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  errorCopy = error;
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryServerTransaction *)self state]!= 3)
  {
    v10 = MGLogForCategory(5);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      goto LABEL_9;
    }

    v15 = 134218240;
    selfCopy2 = self;
    v17 = 2048;
    state = [(MGRemoteQueryServerTransaction *)self state];
    v11 = "%p transaction not accepting payload in state %lu";
    v12 = v10;
    v13 = 22;
LABEL_14:
    _os_log_error_impl(&dword_25863A000, v12, OS_LOG_TYPE_ERROR, v11, &v15, v13);
    goto LABEL_8;
  }

  responseContext = [(MGRemoteQueryServerTransaction *)self responseContext];

  if (!responseContext)
  {
    v10 = MGLogForCategory(5);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v15 = 134217984;
    selfCopy2 = self;
    v11 = "%p transaction not accepting payload without having started response";
    v12 = v10;
    v13 = 12;
    goto LABEL_14;
  }

  if (errorCopy)
  {
    [(MGRemoteQueryServerTransaction *)self _handleError:errorCopy];
  }

  else if (handlerCopy)
  {
    [(MGRemoteQueryServerTransaction *)self _responseAppend:handlerCopy];
  }

  else
  {
    [(MGRemoteQueryServerTransaction *)self _responseEnd];
  }

LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_delegateNotifyTimeoutInterval:(unint64_t)interval
{
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  delegate = [(MGRemoteQueryServerTransaction *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    [delegate transaction:self receivedTimeoutInterval:interval];
    delegate = v7;
  }
}

- (void)_delegateNotifyActivityOccurred
{
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  delegate = [(MGRemoteQueryServerTransaction *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    [delegate transactionActivityOccurred:self];
    delegate = v5;
  }
}

- (void)_delegateNotifyInvalidated
{
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  delegate = [(MGRemoteQueryServerTransaction *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    [delegate transactionInvalidated:self];
    delegate = v5;
  }
}

- (id)_handlerForRequest:(id)request
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (qword_27F956DE0 != -1)
  {
    dispatch_once(&qword_27F956DE0, &__block_literal_global_3);
  }

  v6 = [requestCopy URL];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = _MergedGlobals_0;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        urlPath = [v11 urlPath];
        path = [v6 path];
        v14 = [urlPath isEqual:path];

        if (v14)
        {
          v8 = [v11 handlerForRequest:requestCopy];
          goto LABEL_13;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

void __53__MGRemoteQueryServerTransaction__handlerForRequest___block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = _MergedGlobals_0;
  _MergedGlobals_0 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (MGRemoteQueryServerTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end