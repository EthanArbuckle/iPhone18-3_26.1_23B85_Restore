@interface NPKSubcredentialProvisioningService
- (BOOL)isPairedDeviceConnected;
- (NPKSubcredentialProvisioningService)init;
- (id)_sendOptions;
- (void)_setUpSubcredentialProvisioningQueue;
- (void)_setUpSubcredentialProvisioningService;
- (void)_trackOutstandingRequestWithMessageIdentifier:(id)identifier completionHandler:(id)handler errorHandler:(id)errorHandler;
- (void)registerProtobufActionsForService:(id)service;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation NPKSubcredentialProvisioningService

- (NPKSubcredentialProvisioningService)init
{
  v13.receiver = self;
  v13.super_class = NPKSubcredentialProvisioningService;
  v2 = [(NPKSubcredentialProvisioningService *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.NanoPassKit.NPKSubcredentialProvisioningService", 0);
    subcredentialProvisioningQueue = v2->_subcredentialProvisioningQueue;
    v2->_subcredentialProvisioningQueue = v3;

    v5 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.passbook.maintenance"];
    subcredentialService = v2->_subcredentialService;
    v2->_subcredentialService = v5;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    outstandingRequests = v2->_outstandingRequests;
    v2->_outstandingRequests = dictionary;

    v9 = v2->_subcredentialProvisioningQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__NPKSubcredentialProvisioningService_init__block_invoke;
    block[3] = &unk_279944F98;
    v12 = v2;
    dispatch_sync(v9, block);
  }

  return v2;
}

uint64_t __43__NPKSubcredentialProvisioningService_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setUpSubcredentialProvisioningQueue];
  v2 = *(a1 + 32);

  return [v2 _setUpSubcredentialProvisioningService];
}

- (void)registerProtobufActionsForService:(id)service
{
  v13 = *MEMORY[0x277D85DE8];
  if (!service)
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "[NPKSubcredentialProvisioningService registerProtobufActionsForService:]";
        v9 = 2082;
        v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKSubcredentialProvisioningService.m";
        v11 = 2048;
        v12 = 47;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Expected service to be non-nil!)", &v7, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPairedDeviceConnected
{
  subcredentialService = [(NPKSubcredentialProvisioningService *)self subcredentialService];
  v3 = NPKIsConnectedToPairedOrPairingDeviceFromService(subcredentialService);

  return v3;
}

- (void)_setUpSubcredentialProvisioningQueue
{
  subcredentialProvisioningQueue = self->_subcredentialProvisioningQueue;
  v3 = dispatch_get_global_queue(21, 0);
  dispatch_set_target_queue(subcredentialProvisioningQueue, v3);
}

- (void)_setUpSubcredentialProvisioningService
{
  v25 = *MEMORY[0x277D85DE8];
  subcredentialProvisioningQueue = [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue];
  dispatch_assert_queue_V2(subcredentialProvisioningQueue);

  subcredentialService = [(NPKSubcredentialProvisioningService *)self subcredentialService];
  if (subcredentialService && (v5 = subcredentialService, [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    subcredentialService2 = [(NPKSubcredentialProvisioningService *)self subcredentialService];
    [(NPKSubcredentialProvisioningService *)self registerProtobufActionsForService:subcredentialService2];

    subcredentialService3 = [(NPKSubcredentialProvisioningService *)self subcredentialService];
    subcredentialProvisioningQueue2 = [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue];
    [subcredentialService3 addDelegate:self queue:subcredentialProvisioningQueue2];

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        subcredentialService4 = [(NPKSubcredentialProvisioningService *)self subcredentialService];
        subcredentialProvisioningQueue3 = [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue];
        *buf = 138543874;
        v20 = v14;
        v21 = 2112;
        v22 = subcredentialService4;
        v23 = 2112;
        v24 = subcredentialProvisioningQueue3;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Expected subcredentialProvisioningService and subcredentialProvisioningQueue to be non-nil! subcredentialProvisioningService: %@ subcredentialProvisioningQueue: %@", buf, 0x20u);
      }
    }

    v17 = *MEMORY[0x277D85DE8];
  }
}

- (id)_sendOptions
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D185D0];
  v6[0] = *MEMORY[0x277D185A0];
  v6[1] = v2;
  v7[0] = MEMORY[0x277CBEC38];
  v7[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void __83__NPKSubcredentialProvisioningService__sendProtobuf_responseExpected_extraOptions___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: IDS failed to send protobuf %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_trackOutstandingRequestWithMessageIdentifier:(id)identifier completionHandler:(id)handler errorHandler:(id)errorHandler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  v11 = objc_alloc_init(NPKProvisioningServiceOutstandingRequest);
  [(NPKProvisioningServiceOutstandingRequest *)v11 setCompletionHandler:handlerCopy];
  [(NPKProvisioningServiceOutstandingRequest *)v11 setErrorHandler:errorHandlerCopy];
  [(NPKProvisioningServiceOutstandingRequest *)v11 setMessageIdentifier:identifierCopy];
  objc_initWeak(&location, self);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __116__NPKSubcredentialProvisioningService__trackOutstandingRequestWithMessageIdentifier_completionHandler_errorHandler___block_invoke;
  v18 = &unk_279945A98;
  objc_copyWeak(&v21, &location);
  v12 = identifierCopy;
  v19 = v12;
  v13 = errorHandlerCopy;
  v20 = v13;
  [(NPKProvisioningServiceOutstandingRequest *)v11 setTimeoutHandler:&v15];
  [(NPKProvisioningServiceOutstandingRequest *)v11 setTimeoutQueue:self->_subcredentialProvisioningQueue, v15, v16, v17, v18];
  outstandingRequests = [(NPKSubcredentialProvisioningService *)self outstandingRequests];
  [outstandingRequests setObject:v11 forKey:v12];

  [(NPKProvisioningServiceOutstandingRequest *)v11 setOrResetCleanupTimer];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __116__NPKSubcredentialProvisioningService__trackOutstandingRequestWithMessageIdentifier_completionHandler_errorHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[1]);
    v4 = [(dispatch_queue_t *)v3 outstandingRequests];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

    v6 = [v5 errorHandler];
    v7 = [(dispatch_queue_t *)v3 outstandingRequests];
    [v7 removeObjectForKey:*(a1 + 32)];

    if (*(a1 + 40))
    {
      v8 = pk_Payment_log();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

      if (v9)
      {
        v10 = pk_Payment_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          *buf = 138412290;
          v19 = v11;
          _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Timed out waiting for response; invoking error handler for message %@", buf, 0xCu);
        }
      }

      v12 = NPKGetIDSCommunicationError();
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __116__NPKSubcredentialProvisioningService__trackOutstandingRequestWithMessageIdentifier_completionHandler_errorHandler___block_invoke_34;
      v15[3] = &unk_279946670;
      v16 = v12;
      v17 = v6;
      v13 = v12;
      dispatch_async(MEMORY[0x277D85CD0], v15);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v15 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = changedCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: IDS service accounts changed: %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v15 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = changedCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: IDS service devices changed: %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v42 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = pk_General_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      v31 = v20;
      v32 = 2112;
      v33 = serviceCopy;
      v34 = 2112;
      v35 = accountCopy;
      v36 = 2112;
      v37 = identifierCopy;
      v38 = 1024;
      v39 = successCopy;
      v40 = 2112;
      v41 = errorCopy;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: IDS service did send with success: %@ %@ %@ %d %@", buf, 0x3Au);
    }
  }

  objc_initWeak(buf, self);
  subcredentialProvisioningQueue = [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __91__NPKSubcredentialProvisioningService_service_account_identifier_didSendWithSuccess_error___block_invoke;
  v25[3] = &unk_2799471E8;
  objc_copyWeak(&v28, buf);
  v29 = successCopy;
  v26 = identifierCopy;
  v27 = errorCopy;
  v22 = errorCopy;
  v23 = identifierCopy;
  dispatch_async(subcredentialProvisioningQueue, v25);

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);

  v24 = *MEMORY[0x277D85DE8];
}

void __91__NPKSubcredentialProvisioningService_service_account_identifier_didSendWithSuccess_error___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained outstandingRequests];
  v4 = [v3 objectForKey:*(a1 + 32)];

  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = *(a1 + 32);
      v11 = [v4 errorHandler];
      v12 = _Block_copy(v11);
      *buf = 138544130;
      v33 = v9;
      v34 = 2112;
      v35 = v10;
      v36 = 2112;
      v37 = v4;
      v38 = 2112;
      v39 = v12;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: identifier: %@ request: %@ error handler: %@", buf, 0x2Au);
    }
  }

  if (v4 && (*(a1 + 56) & 1) == 0)
  {
    v13 = NPKGetIDSCommunicationError();
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v15 = v14;
    v16 = *(a1 + 40);
    if (v16)
    {
      [v14 setObject:v16 forKey:*MEMORY[0x277CCA7E8]];
    }

    v17 = [v13 localizedDescription];

    if (v17)
    {
      v18 = [v13 localizedDescription];
      [v15 setObject:v18 forKey:*MEMORY[0x277CCA450]];
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = [v13 domain];
    v21 = [v19 errorWithDomain:v20 code:objc_msgSend(v13 userInfo:{"code"), v15}];

    v22 = [v4 errorHandler];
    if (v22)
    {
      v23 = dispatch_get_global_queue(0, 0);
      v26 = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = __91__NPKSubcredentialProvisioningService_service_account_identifier_didSendWithSuccess_error___block_invoke_36;
      v29 = &unk_279946670;
      v31 = v22;
      v30 = v21;
      dispatch_async(v23, &v26);
    }

    v24 = [WeakRetained outstandingRequests];
    [v24 removeObjectForKey:*(a1 + 32)];
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end