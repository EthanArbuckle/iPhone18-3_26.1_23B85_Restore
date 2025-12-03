@interface HAP2AccessoryServerTransportBaseOperationOpen
- (HAP2AccessoryServerTransportBaseOperationOpen)initWithTransport:(id)transport completion:(id)completion;
- (void)main;
@end

@implementation HAP2AccessoryServerTransportBaseOperationOpen

- (void)main
{
  v46[1] = *MEMORY[0x277D85DE8];
  if (self && (v3 = self->super._transport) != 0)
  {
    val = v3;
    selfCopy = self;
    operationQueue = [(HAP2AccessoryServerTransportBase *)val operationQueue];
    [operationQueue assertCurrentQueue];

    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__6734;
    v37 = __Block_byref_object_dispose__6735;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    propertyLock = [(HAP2AccessoryServerTransportBase *)val propertyLock];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __55__HAP2AccessoryServerTransportBase__openWithOperation___block_invoke;
    v28[3] = &unk_2786D4688;
    v28[4] = val;
    v28[5] = &v33;
    v28[6] = &v29;
    [propertyLock performWritingBlock:v28];

    if (v34[5])
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v7 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = val;
        _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%@ (Base) Not opening while a close is enqueued", &buf, 0xCu);
      }

      [(HAP2AsynchronousOperation *)selfCopy cancelWithError:v34[5]];
    }

    else if (v30[3] == 2)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = val;
        _os_log_debug_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%@ (Base) Already open", &buf, 0xCu);
      }

      [(HAP2AsynchronousOperation *)selfCopy finish];
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v10 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = val;
        _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEFAULT, "%@ (Base) Opening", &buf, 0xCu);
      }

      [(HAP2AccessoryServerTransportBase *)val didChangeStateWithError:0];
      v11 = MEMORY[0x277CCACA8];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v11 stringWithFormat:@"%@ Open Transport", v13];

      v15 = [objc_alloc(MEMORY[0x277D0F8B8]) initWithName:@"Open Transport" timeout:60.0];
      v27 = 0;
      if (v15)
      {
        v16 = objc_alloc(MEMORY[0x277D0F770]);
        uUID = [MEMORY[0x277CCAD78] UUID];
        v46[0] = v15;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
        v19 = [v16 initWithIdentifier:uUID name:v14 parent:0 assertions:v18];
        v20 = v27;
        v27 = v19;
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v21 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = val;
          _os_log_error_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%@ Failed to create power assertion", &buf, 0xCu);
        }

        v22 = objc_alloc(MEMORY[0x277D0F770]);
        uUID = [MEMORY[0x277CCAD78] UUID];
        v23 = [v22 initWithIdentifier:uUID name:v14 parent:0 options:0];
        v18 = v27;
        v27 = v23;
      }

      objc_initWeak(&location, val);
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v40 = __55__HAP2AccessoryServerTransportBase__openWithOperation___block_invoke_23;
      v41 = &unk_2786D3D78;
      v42 = selfCopy;
      v43 = val;
      v44 = v27;
      objc_copyWeak(&v45, &location);
      [(HAP2AccessoryServerTransportBase *)val doOpenWithCompletion:&buf];
      objc_destroyWeak(&v45);

      objc_destroyWeak(&location);
      __HMFActivityScopeLeave();
    }

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v33, 8);

    v24 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = *MEMORY[0x277D85DE8];

    [(HAP2AsynchronousOperation *)self cancel];
  }
}

- (HAP2AccessoryServerTransportBaseOperationOpen)initWithTransport:(id)transport completion:(id)completion
{
  transportCopy = transport;
  completionCopy = completion;
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"%@.open", v10];
  v23.receiver = self;
  v23.super_class = HAP2AccessoryServerTransportBaseOperationOpen;
  v12 = [(HAP2AccessoryServerTransportBaseOperation *)&v23 initWithName:v11 transport:transportCopy];

  if (v12)
  {
    v13 = MEMORY[0x231885210](completionCopy);
    clientCompletion = v12->_clientCompletion;
    v12->_clientCompletion = v13;

    delegateQueue = [transportCopy delegateQueue];
    objc_initWeak(&location, v12);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__HAP2AccessoryServerTransportBaseOperationOpen_initWithTransport_completion___block_invoke;
    v18[3] = &unk_2786D6BE0;
    objc_copyWeak(&v21, &location);
    v16 = delegateQueue;
    v19 = v16;
    v20 = completionCopy;
    [(HAP2AccessoryServerTransportBaseOperationOpen *)v12 setCompletionBlock:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __78__HAP2AccessoryServerTransportBaseOperationOpen_initWithTransport_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[36];
    objc_setProperty_nonatomic_copy(v3, v5, 0, 288);
    if (v4)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __78__HAP2AccessoryServerTransportBaseOperationOpen_initWithTransport_completion___block_invoke_2;
      v7[3] = &unk_2786D65D8;
      v6 = *(a1 + 32);
      v9 = *(a1 + 40);
      v8 = v3;
      dispatch_async(v6, v7);
    }
  }
}

void __78__HAP2AccessoryServerTransportBaseOperationOpen_initWithTransport_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, 0, 0, v3);

  v4 = *(a1 + 32);

  [HAP2AccessoryServerTransportBaseOperation setTransport:v4];
}

@end