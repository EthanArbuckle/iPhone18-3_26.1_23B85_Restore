@interface DKExtensionAdapter
+ (id)extensionAdapterWithExtensionAttributes:(id)attributes;
- (DKExtensionAdapter)initWithExtensionAttributes:(id)attributes;
- (NSString)description;
- (id)_requestForExtensionRequestIdentifier:(id)identifier;
- (void)_attachHandlersToExtension:(id)extension;
- (void)_didCancelExtensionRequest:(id)request error:(id)error;
- (void)_didCompleteExtensionRequest:(id)request;
- (void)_didInterruptExtensionRequest:(id)request;
- (void)beginRequest:(id)request payload:(id)payload completion:(id)completion;
- (void)cancelAll;
- (void)request:(id)request didCompleteWithPayload:(id)payload error:(id)error;
@end

@implementation DKExtensionAdapter

- (DKExtensionAdapter)initWithExtensionAttributes:(id)attributes
{
  attributesCopy = attributes;
  v17.receiver = self;
  v17.super_class = DKExtensionAdapter;
  v6 = [(DKExtensionAdapter *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extensionAttributes, attributes);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    requestLookup = v7->_requestLookup;
    v7->_requestLookup = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    extensionToRequestIdentifierLookup = v7->_extensionToRequestIdentifierLookup;
    v7->_extensionToRequestIdentifierLookup = dictionary2;

    v12 = dispatch_queue_create("com.apple.DiagnosticsKit.extensionAdapterQueue", 0);
    adapterQueue = v7->_adapterQueue;
    v7->_adapterQueue = v12;

    v14 = dispatch_queue_create("com.apple.DiagnosticsKit.extensionAdapterConnectQueue", 0);
    adapterConnectQueue = v7->_adapterConnectQueue;
    v7->_adapterConnectQueue = v14;

    [(DKExtensionAdapter *)v7 _attachHandlersToExtension:attributesCopy];
  }

  return v7;
}

+ (id)extensionAdapterWithExtensionAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [[self alloc] initWithExtensionAttributes:attributesCopy];

  return v5;
}

- (void)beginRequest:(id)request payload:(id)payload completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  payloadCopy = payload;
  completionCopy = completion;
  requestLookup = [(DKExtensionAdapter *)self requestLookup];
  objc_sync_enter(requestLookup);
  requestLookup2 = [(DKExtensionAdapter *)self requestLookup];
  requestIdentifier = [requestCopy requestIdentifier];
  [requestLookup2 setObject:requestCopy forKeyedSubscript:requestIdentifier];

  objc_sync_exit(requestLookup);
  v14 = objc_opt_new();
  v15 = [completionCopy copy];
  [v14 setCompletion:v15];

  [v14 setCompletionHandlerExecuted:0];
  [requestCopy setContext:v14];
  [requestCopy setDelegate:self];
  v34 = 0;
  v35[0] = &v34;
  v35[1] = 0x3032000000;
  v35[2] = __Block_byref_object_copy__1;
  v35[3] = __Block_byref_object_dispose__1;
  v36 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  adapterConnectQueue = [(DKExtensionAdapter *)self adapterConnectQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__DKExtensionAdapter_beginRequest_payload_completion___block_invoke;
  block[3] = &unk_278F6C328;
  v26 = &v28;
  v17 = requestCopy;
  v25 = v17;
  v27 = &v34;
  dispatch_sync(adapterConnectQueue, block);

  if (v29[5])
  {
    extensionToRequestIdentifierLookup = [(DKExtensionAdapter *)self extensionToRequestIdentifierLookup];
    objc_sync_enter(extensionToRequestIdentifierLookup);
    requestIdentifier2 = [v17 requestIdentifier];
    extensionToRequestIdentifierLookup2 = [(DKExtensionAdapter *)self extensionToRequestIdentifierLookup];
    [extensionToRequestIdentifierLookup2 setObject:requestIdentifier2 forKeyedSubscript:v29[5]];

    objc_sync_exit(extensionToRequestIdentifierLookup);
    [v17 beginWithPayload:payloadCopy];
  }

  else
  {
    v21 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      requestIdentifier3 = [v17 requestIdentifier];
      [(DKExtensionAdapter *)requestIdentifier3 beginRequest:v35 payload:buf completion:v21];
    }

    [DKAnalytics sendAnalyticsWithEvent:3 error:*(v35[0] + 40)];
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  v23 = *MEMORY[0x277D85DE8];
}

void __54__DKExtensionAdapter_beginRequest_payload_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 connectWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)cancelAll
{
  v17 = *MEMORY[0x277D85DE8];
  requestLookup = [(DKExtensionAdapter *)self requestLookup];
  objc_sync_enter(requestLookup);
  requestLookup2 = [(DKExtensionAdapter *)self requestLookup];
  allValues = [requestLookup2 allValues];
  v6 = [allValues copy];

  objc_sync_exit(requestLookup);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v10++) cancel];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)request:(id)request didCompleteWithPayload:(id)payload error:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  payloadCopy = payload;
  errorCopy = error;
  requestIdentifier = [requestCopy requestIdentifier];
  v12 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412802;
    v26 = requestIdentifier;
    v27 = 2112;
    v28 = payloadCopy;
    v29 = 2112;
    v30 = errorCopy;
    _os_log_impl(&dword_248B9D000, v12, OS_LOG_TYPE_DEFAULT, "[RID: %@] request:didCompleteWithPayload: %@, error: %@", &v25, 0x20u);
  }

  extensionRequestIdentifier = [requestCopy extensionRequestIdentifier];

  if (extensionRequestIdentifier)
  {
    extensionToRequestIdentifierLookup = [(DKExtensionAdapter *)self extensionToRequestIdentifierLookup];
    objc_sync_enter(extensionToRequestIdentifierLookup);
    extensionToRequestIdentifierLookup2 = [(DKExtensionAdapter *)self extensionToRequestIdentifierLookup];
    extensionRequestIdentifier2 = [requestCopy extensionRequestIdentifier];
    [extensionToRequestIdentifierLookup2 removeObjectForKey:extensionRequestIdentifier2];

    objc_sync_exit(extensionToRequestIdentifierLookup);
  }

  requestLookup = [(DKExtensionAdapter *)self requestLookup];
  objc_sync_enter(requestLookup);
  requestLookup2 = [(DKExtensionAdapter *)self requestLookup];
  [requestLookup2 removeObjectForKey:requestIdentifier];

  objc_sync_exit(requestLookup);
  context = [requestCopy context];
  completion = [context completion];
  if (completion)
  {
    completionHandlerExecuted = [context completionHandlerExecuted];

    if ((completionHandlerExecuted & 1) == 0)
    {
      v22 = DiagnosticsKitLogHandleForCategory(1);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = requestIdentifier;
        _os_log_impl(&dword_248B9D000, v22, OS_LOG_TYPE_DEFAULT, "[RID: %@] Calling final completion.", &v25, 0xCu);
      }

      completion2 = [context completion];
      (completion2)[2](completion2, payloadCopy, errorCopy);

      [context setCompletion:0];
      [context setCompletionHandlerExecuted:1];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  extensionAttributes = [(DKExtensionAdapter *)self extensionAttributes];
  v7 = [v3 stringWithFormat:@"<%@: %p attributes: %@>", v5, self, extensionAttributes];;

  return v7;
}

- (void)_attachHandlersToExtension:(id)extension
{
  extensionCopy = extension;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__DKExtensionAdapter__attachHandlersToExtension___block_invoke;
  v12[3] = &unk_278F6C350;
  objc_copyWeak(&v13, &location);
  extension = [extensionCopy extension];
  [extension setRequestCompletionBlock:v12];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__DKExtensionAdapter__attachHandlersToExtension___block_invoke_2;
  v10[3] = &unk_278F6C3A0;
  objc_copyWeak(&v11, &location);
  extension2 = [extensionCopy extension];
  [extension2 setRequestCancellationBlock:v10];

  v8 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v9, &location);
  extension3 = [extensionCopy extension];
  [extension3 setRequestInterruptionBlock:&v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __49__DKExtensionAdapter__attachHandlersToExtension___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "[ERID: %@] requestCompletionBlock", buf, 0xCu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained adapterQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__DKExtensionAdapter__attachHandlersToExtension___block_invoke_25;
    v8[3] = &unk_278F6C090;
    v8[4] = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __49__DKExtensionAdapter__attachHandlersToExtension___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "[ERID: %@] requestCancellationBlock", buf, 0xCu);
  }

  [DKAnalytics sendAnalyticsWithEvent:4 error:v6];
  if (WeakRetained)
  {
    v9 = [WeakRetained adapterQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__DKExtensionAdapter__attachHandlersToExtension___block_invoke_27;
    block[3] = &unk_278F6C378;
    block[4] = WeakRetained;
    v12 = v5;
    v13 = v6;
    dispatch_async(v9, block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __49__DKExtensionAdapter__attachHandlersToExtension___block_invoke_2_29(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __49__DKExtensionAdapter__attachHandlersToExtension___block_invoke_2_29_cold_1();
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DKExtensionInterrupted" code:0 userInfo:0];
  [DKAnalytics sendAnalyticsWithEvent:5 error:v6];

  if (WeakRetained)
  {
    v7 = [WeakRetained adapterQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__DKExtensionAdapter__attachHandlersToExtension___block_invoke_34;
    v8[3] = &unk_278F6C090;
    v8[4] = WeakRetained;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

- (id)_requestForExtensionRequestIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  requestLookup = [(DKExtensionAdapter *)self requestLookup];
  objc_sync_enter(requestLookup);
  extensionToRequestIdentifierLookup = [(DKExtensionAdapter *)self extensionToRequestIdentifierLookup];
  v7 = [extensionToRequestIdentifierLookup objectForKeyedSubscript:identifierCopy];

  objc_sync_exit(requestLookup);
  v8 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = identifierCopy;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "[RID: %@] [ERID: %@] Looking up request identifier", &v14, 0x16u);
  }

  if (v7)
  {
    requestLookup2 = [(DKExtensionAdapter *)self requestLookup];
    objc_sync_enter(requestLookup2);
    requestLookup3 = [(DKExtensionAdapter *)self requestLookup];
    v11 = [requestLookup3 objectForKeyedSubscript:v7];

    objc_sync_exit(requestLookup2);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_didCompleteExtensionRequest:(id)request
{
  requestCopy = request;
  v5 = [(DKExtensionAdapter *)self _requestForExtensionRequestIdentifier:requestCopy];
  v6 = v5;
  if (v5)
  {
    [v5 complete];
  }

  else
  {
    v7 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DKExtensionAdapter _didCompleteExtensionRequest:];
    }
  }
}

- (void)_didCancelExtensionRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  v8 = [(DKExtensionAdapter *)self _requestForExtensionRequestIdentifier:requestCopy];
  v9 = v8;
  if (v8)
  {
    [v8 cancelWithError:errorCopy];
  }

  else
  {
    v10 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DKExtensionAdapter _didCancelExtensionRequest:error:];
    }
  }
}

- (void)_didInterruptExtensionRequest:(id)request
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [(DKExtensionAdapter *)self _requestForExtensionRequestIdentifier:requestCopy];
  requestLookup = [(DKExtensionAdapter *)self requestLookup];
  objc_sync_enter(requestLookup);
  requestLookup2 = [(DKExtensionAdapter *)self requestLookup];
  allValues = [requestLookup2 allValues];
  v9 = [allValues copy];

  objc_sync_exit(requestLookup);
  v10 = DiagnosticsKitLogHandleForCategory(1);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v11)
    {
      [(DKExtensionAdapter *)v5 _didInterruptExtensionRequest:v10];
    }
  }

  else if (v11)
  {
    [DKExtensionAdapter _didInterruptExtensionRequest:];
  }

  v12 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    requestIdentifier = [v5 requestIdentifier];
    v21 = 138412290;
    v22 = requestIdentifier;
    _os_log_impl(&dword_248B9D000, v12, OS_LOG_TYPE_DEFAULT, "[RID: %@] Calling interrupt", &v21, 0xCu);
  }

  [v5 interrupt];
  extensionRequestIdentifier = [v5 extensionRequestIdentifier];

  if (extensionRequestIdentifier)
  {
    v15 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier2 = [v5 requestIdentifier];
      v21 = 138412290;
      v22 = requestIdentifier2;
      _os_log_impl(&dword_248B9D000, v15, OS_LOG_TYPE_DEFAULT, "[RID: %@] Cancelling extension request", &v21, 0xCu);
    }

    extensionAttributes = [(DKExtensionAdapter *)self extensionAttributes];
    extension = [extensionAttributes extension];
    extensionRequestIdentifier2 = [v5 extensionRequestIdentifier];
    [extension cancelExtensionRequestWithIdentifier:extensionRequestIdentifier2];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)beginRequest:(uint8_t *)buf payload:(os_log_t)log completion:.cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(*a2 + 40);
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_248B9D000, log, OS_LOG_TYPE_ERROR, "[RID: %@] Did not get extension request identifier, error: %@", buf, 0x16u);
}

void __49__DKExtensionAdapter__attachHandlersToExtension___block_invoke_2_29_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_248B9D000, v0, v1, "[ERID: %@] requestInterruptionBlock", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_didCompleteExtensionRequest:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_248B9D000, v0, v1, "[ERID: %@] Received completion for an unknown request.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_didCancelExtensionRequest:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_248B9D000, v0, v1, "[ERID: %@] Received cancellation for an unknown request.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_didInterruptExtensionRequest:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 requestIdentifier];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_248B9D000, a2, OS_LOG_TYPE_ERROR, "[RID: %@] Received interruption for active request.", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_didInterruptExtensionRequest:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_248B9D000, v0, v1, "[ERID: %@] Received interruption for an unknown request.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end