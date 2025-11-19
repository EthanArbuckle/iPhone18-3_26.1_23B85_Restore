@interface HAP2AccessoryServerControllerTimedWriteOperation
- (HAP2AccessoryServerControllerTimedWriteOperation)initWithName:(id)a3 controller:(id)a4 encoding:(id)a5 transport:(id)a6 prepareRequest:(id)a7 executeRequest:(id)a8 endpoint:(id)a9 mimeType:(id)a10 timeout:(double)a11 options:(unint64_t)a12 dscpPriority:(int64_t)a13;
- (void)_cleanUp;
- (void)_parseExecuteResponseData:(id)a3;
- (void)_parsePrepareResponseData:(id)a3;
- (void)_parseResponseData:(id)a3;
- (void)_sendExecuteRequest;
- (void)_sendPrepareRequest;
@end

@implementation HAP2AccessoryServerControllerTimedWriteOperation

- (void)_parseExecuteResponseData:(id)a3
{
  v4 = a3;
  if (![(HAP2AsynchronousOperation *)self isCancelled])
  {
    if (self)
    {
      v5 = self->super._encoding;
      request = self->super._request;
    }

    else
    {
      v5 = 0;
      request = 0;
    }

    v7 = request;
    v10 = 0;
    v8 = [(HAP2AccessoryServerEncoding *)v5 responseForRequest:v7 bodyData:v4 error:&v10];
    v9 = v10;

    if (v8)
    {
      [(HAP2AccessoryServerControllerOperation *)self setResponse:v8];
      [(HAP2AccessoryServerControllerOperation *)self finish];
    }

    else
    {
      [(HAP2AccessoryServerControllerOperation *)self finishWithError:v9];
    }
  }
}

- (void)_sendExecuteRequest
{
  v20 = *MEMORY[0x277D85DE8];
  if (![(HAP2AsynchronousOperation *)self isCancelled])
  {
    v3 = [(HAP2AccessoryServerControllerTimedWriteOperation *)self executeRequest];
    [(HAP2AccessoryServerControllerOperation *)self setRequest:v3];

    if (self)
    {
      request = self->super._request;
    }

    else
    {
      request = 0;
    }

    v5 = request;
    v6 = [(HAP2EncodedRequest *)v5 serialize];

    v7 = [HAP2AccessoryServerTransportRequest alloc];
    if (self)
    {
      v8 = self->super._endpoint;
      v9 = self->super._mimeType;
      dscpPriority = self->super._dscpPriority;
    }

    else
    {
      v9 = 0;
      v8 = 0;
      dscpPriority = 0;
    }

    v11 = [(HAP2AccessoryServerTransportRequest *)v7 initForWritingWithEndpoint:v8 data:v6 encrypted:1 mimeType:v9 dscpPriority:dscpPriority];

    if (self)
    {
      timeout = self->super._timeout;
      if (timeout > 0.0)
      {
        [(HAP2AccessoryServerControllerOperation *)self _startTimerWithInterval:?];
      }
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v13 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = self;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%@ Executing timed write", buf, 0xCu);
    }

    if (self)
    {
      transport = self->super._transport;
    }

    else
    {
      transport = 0;
    }

    v15 = transport;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__HAP2AccessoryServerControllerTimedWriteOperation__sendExecuteRequest__block_invoke;
    v17[3] = &unk_2786D3968;
    v17[4] = self;
    [(HAP2AccessoryServerTransportCommon *)v15 sendRequest:v11 completion:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __71__HAP2AccessoryServerControllerTimedWriteOperation__sendExecuteRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [(HAP2AccessoryServerControllerOperation *)*(a1 + 32) _cancelTimer];
  if (v6)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v7 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v6;
      _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%@ Executing timed write failed with error: %@", &v10, 0x16u);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    [*(a1 + 32) _parseExecuteResponseData:v5];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_parsePrepareResponseData:(id)a3
{
  v4 = a3;
  if (![(HAP2AsynchronousOperation *)self isCancelled])
  {
    if (self)
    {
      v5 = self->super._encoding;
      request = self->super._request;
    }

    else
    {
      v5 = 0;
      request = 0;
    }

    v7 = request;
    v10 = 0;
    v8 = [(HAP2AccessoryServerEncoding *)v5 responseForRequest:v7 bodyData:v4 error:&v10];
    v9 = v10;

    if (v8)
    {
      [(HAP2AccessoryServerControllerTimedWriteOperation *)self _sendExecuteRequest];
    }

    else
    {
      [(HAP2AccessoryServerControllerOperation *)self finishWithError:v9];
    }
  }
}

- (void)_sendPrepareRequest
{
  v18 = *MEMORY[0x277D85DE8];
  if (![(HAP2AsynchronousOperation *)self isCancelled])
  {
    if (self)
    {
      request = self->super._request;
    }

    else
    {
      request = 0;
    }

    v4 = request;
    v5 = [(HAP2EncodedRequest *)v4 serialize];

    v6 = [HAP2AccessoryServerTransportRequest alloc];
    if (self)
    {
      v7 = self->super._endpoint;
      v8 = self->super._mimeType;
      dscpPriority = self->super._dscpPriority;
    }

    else
    {
      v8 = 0;
      v7 = 0;
      dscpPriority = 0;
    }

    v10 = [(HAP2AccessoryServerTransportRequest *)v6 initForWritingWithEndpoint:v7 data:v5 encrypted:1 mimeType:v8 dscpPriority:dscpPriority];

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v11 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = self;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%@ Sending prepare timed write", buf, 0xCu);
    }

    if (self)
    {
      transport = self->super._transport;
    }

    else
    {
      transport = 0;
    }

    v13 = transport;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__HAP2AccessoryServerControllerTimedWriteOperation__sendPrepareRequest__block_invoke;
    v15[3] = &unk_2786D3968;
    v15[4] = self;
    [(HAP2AccessoryServerTransportCommon *)v13 sendRequest:v10 completion:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __71__HAP2AccessoryServerControllerTimedWriteOperation__sendPrepareRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    if (([(HAP2AccessoryServerControllerOperation *)v7 _maybeRefreshSessionAfterError:v6]& 1) == 0)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v8 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        v11 = 138412546;
        v12 = v10;
        v13 = 2112;
        v14 = v6;
        _os_log_error_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%@ Prepare timed write failed with error: %@", &v11, 0x16u);
      }

      [(HAP2AccessoryServerControllerOperation *)*(a1 + 32) _handleSendRequestError:v6];
    }
  }

  else
  {
    [v7 _parsePrepareResponseData:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUp
{
  [(HAP2AccessoryServerControllerOperation *)self _cancelTimer];
  v3.receiver = self;
  v3.super_class = HAP2AccessoryServerControllerTimedWriteOperation;
  [(HAP2AccessoryServerControllerOperation *)&v3 _cleanUp];
}

- (void)_parseResponseData:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HAP2AccessoryServerControllerTimedWriteOperation)initWithName:(id)a3 controller:(id)a4 encoding:(id)a5 transport:(id)a6 prepareRequest:(id)a7 executeRequest:(id)a8 endpoint:(id)a9 mimeType:(id)a10 timeout:(double)a11 options:(unint64_t)a12 dscpPriority:(int64_t)a13
{
  v21 = a8;
  v25.receiver = self;
  v25.super_class = HAP2AccessoryServerControllerTimedWriteOperation;
  v22 = [(HAP2AccessoryServerControllerOperation *)&v25 initWithName:a3 controller:a4 encoding:a5 transport:a6 request:a7 endpoint:a9 mimeType:a11 timeout:a10 options:a12 dscpPriority:a13];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_executeRequest, a8);
  }

  return v23;
}

@end