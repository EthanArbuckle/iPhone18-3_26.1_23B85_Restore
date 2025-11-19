@interface HAP2AccessoryServerTransportBaseOperationClose
- (HAP2AccessoryServerTransportBaseOperationClose)initWithTransport:(id)a3 desiredError:(id)a4 completion:(id)a5;
- (void)main;
@end

@implementation HAP2AccessoryServerTransportBaseOperationClose

- (void)main
{
  v31 = *MEMORY[0x277D85DE8];
  if (self && (v3 = self->super._transport) != 0)
  {
    v13 = v3;
    v4 = self;
    v5 = [(HAP2AccessoryServerTransportBase *)v13 operationQueue];
    [v5 assertCurrentQueue];

    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v6 = [(HAP2AccessoryServerTransportBase *)v13 propertyLock];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __56__HAP2AccessoryServerTransportBase__closeWithOperation___block_invoke;
    v18 = &unk_2786D4F60;
    v7 = v4;
    v19 = v7;
    v20 = v13;
    v21 = &v22;
    [v6 performWritingBlock:&v15];

    if (v23[3])
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v8 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEFAULT, "%@ (Base) Closing", &buf, 0xCu);
      }

      [(HAP2AccessoryServerTransportBase *)v13 didChangeStateWithError:0, v13, v15, v16, v17, v18];
      v9 = v7[36];
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v27 = __56__HAP2AccessoryServerTransportBase__closeWithOperation___block_invoke_35;
      v28 = &unk_2786D3DC8;
      v29 = v14;
      v30 = v7;
      [v14 doCloseWithError:v9 completion:&buf];
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v11 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        _os_log_debug_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEBUG, "%@ (Base) Already closed", &buf, 0xCu);
      }

      [v7 finish];
    }

    _Block_object_dispose(&v22, 8);
    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *MEMORY[0x277D85DE8];

    [(HAP2AsynchronousOperation *)self cancel];
  }
}

- (HAP2AccessoryServerTransportBaseOperationClose)initWithTransport:(id)a3 desiredError:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"%@.close", v13];
  v26.receiver = self;
  v26.super_class = HAP2AccessoryServerTransportBaseOperationClose;
  v15 = [(HAP2AccessoryServerTransportBaseOperation *)&v26 initWithName:v14 transport:v8];

  if (v15)
  {
    objc_storeStrong(&v15->_desiredError, a4);
    v16 = MEMORY[0x231885210](v10);
    clientCompletion = v15->_clientCompletion;
    v15->_clientCompletion = v16;

    v18 = [v8 delegateQueue];
    objc_initWeak(&location, v15);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __92__HAP2AccessoryServerTransportBaseOperationClose_initWithTransport_desiredError_completion___block_invoke;
    v21[3] = &unk_2786D6BE0;
    objc_copyWeak(&v24, &location);
    v19 = v18;
    v22 = v19;
    v23 = v10;
    [(HAP2AccessoryServerTransportBaseOperationClose *)v15 setCompletionBlock:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __92__HAP2AccessoryServerTransportBaseOperationClose_initWithTransport_desiredError_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[37];
    objc_setProperty_nonatomic_copy(v3, v5, 0, 296);
    if (v4)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __92__HAP2AccessoryServerTransportBaseOperationClose_initWithTransport_desiredError_completion___block_invoke_2;
      v7[3] = &unk_2786D65D8;
      v6 = *(a1 + 32);
      v9 = *(a1 + 40);
      v8 = v3;
      dispatch_async(v6, v7);
    }
  }
}

void __92__HAP2AccessoryServerTransportBaseOperationClose_initWithTransport_desiredError_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, 0, 0, v3);

  v4 = *(a1 + 32);

  [HAP2AccessoryServerTransportBaseOperation setTransport:v4];
}

@end