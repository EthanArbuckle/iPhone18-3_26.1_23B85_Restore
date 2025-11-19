@interface HAP2AccessoryServerTransportBaseOperationSendRequest
- (HAP2AccessoryServerTransportBaseOperationSendRequest)initWithTransport:(id)a3 request:(id)a4 completion:(id)a5;
- (void)main;
@end

@implementation HAP2AccessoryServerTransportBaseOperationSendRequest

- (void)main
{
  v40 = *MEMORY[0x277D85DE8];
  if (self && (v3 = self->super._transport) != 0)
  {
    v20 = v3;
    v4 = self;
    v5 = [(HAP2AccessoryServerTransportBase *)v20 operationQueue];
    [v5 assertCurrentQueue];

    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__6734;
    v30 = __Block_byref_object_dispose__6735;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v6 = [(HAP2AccessoryServerTransportBase *)v20 propertyLock];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __62__HAP2AccessoryServerTransportBase__sendRequestWithOperation___block_invoke;
    v21[3] = &unk_2786D4688;
    v21[4] = v20;
    v21[5] = &v26;
    v21[6] = &v22;
    [v6 performReadingBlock:v21];

    if (v27[5])
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v7 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v20;
        _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%@ (Base) Not sending while a close is enqueued", buf, 0xCu);
      }

      [(HAP2AsynchronousOperation *)v4 cancelWithError:v27[5], v20];
    }

    else
    {
      if (v23[3])
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v9 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
        {
          request = v4->_request;
          *buf = 138412546;
          *&buf[4] = v20;
          *&buf[12] = 2112;
          *&buf[14] = request;
          v11 = v9;
          _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%@ (Base) Sending request %@", buf, 0x16u);
        }

        v12 = v4->_request;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __62__HAP2AccessoryServerTransportBase__sendRequestWithOperation___block_invoke_33;
        v37 = &unk_2786D3DA0;
        v13 = v4;
        v38 = v13;
        v39 = v20;
        [(HAP2AccessoryServerTransportBase *)v20 doSendRequest:v12 completion:buf];

        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v14 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
        {
          v18 = v13->_request;
          *v32 = 138412546;
          v33 = v20;
          v34 = 2112;
          v35 = v18;
          v19 = v14;
          _os_log_debug_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEBUG, "%@ (Base) Sent request %@", v32, 0x16u);
        }

        v15 = v38;
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v16 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v20;
          _os_log_error_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%@ (Base) Cannot send when not open", buf, 0xCu);
        }

        v15 = [MEMORY[0x277CCA9B8] hapErrorWithCode:19 description:@"HAP2AccessoryServer cannot send request when transport not open" reason:@"HAP2AccessoryServerTransport state != HAP2AccessoryServerTransportStateOpen when calling sendRequestWithOperation" suggestion:0 underlyingError:0 marker:{104, v20}];
        [(HAP2AsynchronousOperation *)v4 cancelWithError:v15];
      }
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);

    v17 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = *MEMORY[0x277D85DE8];

    [(HAP2AsynchronousOperation *)self cancel];
  }
}

- (HAP2AccessoryServerTransportBaseOperationSendRequest)initWithTransport:(id)a3 request:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"%@.sendRequest", v13];
  v26.receiver = self;
  v26.super_class = HAP2AccessoryServerTransportBaseOperationSendRequest;
  v15 = [(HAP2AccessoryServerTransportBaseOperation *)&v26 initWithName:v14 transport:v8];

  if (v15)
  {
    objc_storeStrong(&v15->_request, a4);
    v16 = MEMORY[0x231885210](v10);
    clientCompletion = v15->_clientCompletion;
    v15->_clientCompletion = v16;

    v18 = [v8 delegateQueue];
    objc_initWeak(&location, v15);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __93__HAP2AccessoryServerTransportBaseOperationSendRequest_initWithTransport_request_completion___block_invoke;
    v21[3] = &unk_2786D6BE0;
    objc_copyWeak(&v24, &location);
    v19 = v18;
    v22 = v19;
    v23 = v10;
    [(HAP2AccessoryServerTransportBaseOperationSendRequest *)v15 setCompletionBlock:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __93__HAP2AccessoryServerTransportBaseOperationSendRequest_initWithTransport_request_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[38];
    objc_setProperty_nonatomic_copy(v3, v5, 0, 304);
    if (v4)
    {
      v6 = *(a1 + 32);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __93__HAP2AccessoryServerTransportBaseOperationSendRequest_initWithTransport_request_completion___block_invoke_2;
      v7[3] = &unk_2786D65D8;
      v8 = v3;
      v9 = *(a1 + 40);
      dispatch_async(v6, v7);
    }
  }
}

void __93__HAP2AccessoryServerTransportBaseOperationSendRequest_initWithTransport_request_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    v5 = [v3 error];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    if (v3)
    {
      v6 = v3[37];
    }

    else
    {
      v6 = 0;
    }

    (*(v4 + 16))(*(a1 + 40), v6, 0);
  }

  v7 = *(a1 + 32);

  [HAP2AccessoryServerTransportBaseOperation setTransport:v7];
}

@end