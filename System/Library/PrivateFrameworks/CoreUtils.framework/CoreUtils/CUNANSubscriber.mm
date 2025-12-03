@interface CUNANSubscriber
- (CUNANSubscriber)init;
- (NSArray)discoveredEndpoints;
- (id)descriptionWithLevel:(int)level;
- (void)_activateWithCompletion:(id)completion;
- (void)_invalidate;
- (void)_invalidated;
- (void)_lostAllEndpoints;
- (void)_subscriber:(id)_subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address;
- (void)_subscriber:(id)_subscriber receivedDiscoveryResult:(id)result;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)reportMockEndpointFound:(id)found;
- (void)reportMockEndpointLost:(id)lost;
- (void)sendMessageData:(id)data endpoint:(id)endpoint completionHandler:(id)handler;
- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error;
- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address;
- (void)subscriber:(id)subscriber receivedDiscoveryResult:(id)result;
- (void)subscriber:(id)subscriber receivedMessage:(id)message fromPublishID:(unsigned __int8)d address:(id)address;
- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason;
- (void)subscriberStarted:(id)started;
@end

@implementation CUNANSubscriber

- (void)subscriber:(id)subscriber receivedMessage:(id)message fromPublishID:(unsigned __int8)d address:(id)address
{
  messageCopy = message;
  addressCopy = address;
  dispatchQueue = self->_dispatchQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__CUNANSubscriber_subscriber_receivedMessage_fromPublishID_address___block_invoke;
  v14[3] = &unk_1E73A4090;
  v14[4] = self;
  v15 = addressCopy;
  dCopy = d;
  v16 = messageCopy;
  v12 = messageCopy;
  v13 = addressCopy;
  dispatch_async(dispatchQueue, v14);
}

void __68__CUNANSubscriber_subscriber_receivedMessage_fromPublishID_address___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 16) & 1) == 0)
  {
    v3 = _Block_copy(*(v1 + 192));
    if (v3)
    {
      v4 = objc_alloc_init(CUNANEndpoint);
      v5 = [*(a1 + 40) data];
      v6 = _WiFiAwareCreateEndpointIdentifier(v5);
      [(CUNANEndpoint *)v4 setIdentifier:v6];

      [(CUNANEndpoint *)v4 setInstanceID:*(a1 + 56)];
      [(CUNANEndpoint *)v4 setMacAddress:*(a1 + 40)];
      v7 = logger_5122();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 48);
        v9 = 138412546;
        v10 = v4;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&dword_191EAF000, v7, OS_LOG_TYPE_DEFAULT, "Received message: EP %@, Data %@", &v9, 0x16u);
      }

      v3[2](v3, *(a1 + 48), v4);
    }
  }
}

- (void)_subscriber:(id)_subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address
{
  dCopy = d;
  v22 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v8 = logger_5122();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    data = [addressCopy data];
    v18 = 138412546;
    v19 = data;
    v20 = 1024;
    v21 = dCopy;
    _os_log_debug_impl(&dword_191EAF000, v8, OS_LOG_TYPE_DEBUG, "WFA lost result: PA <%@>, PI %u", &v18, 0x12u);
  }

  data2 = [addressCopy data];
  v10 = _WiFiAwareCreateEndpointIdentifier(data2);

  if (v10)
  {
    v11 = [(NSMutableDictionary *)self->_wfaEndpoints objectForKeyedSubscript:v10];
    if (v11)
    {
      v12 = v11;
      pthread_mutex_lock(&self->_mutex);
      [(NSMutableDictionary *)self->_wfaEndpoints setObject:0 forKeyedSubscript:v10];
      pthread_mutex_unlock(&self->_mutex);
      v13 = logger_5122();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = CUDescriptionWithLevel(v12, 50);
        v18 = 138412290;
        v19 = v14;
        _os_log_impl(&dword_191EAF000, v13, OS_LOG_TYPE_INFO, "Endpoint lost: %@", &v18, 0xCu);
      }

      endpointLostHandler = self->_endpointLostHandler;
      if (endpointLostHandler)
      {
        endpointLostHandler[2](endpointLostHandler, v12);
      }
    }

    else
    {
      v16 = logger_5122();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v10;
        _os_log_impl(&dword_191EAF000, v16, OS_LOG_TYPE_DEFAULT, "WFA lost result missing not found: %@", &v18, 0xCu);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = logger_5122();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&dword_191EAF000, v12, OS_LOG_TYPE_ERROR, "### WFA lost result missing identifier", &v18, 2u);
    }
  }
}

- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address
{
  subscriberCopy = subscriber;
  addressCopy = address;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__CUNANSubscriber_subscriber_lostDiscoveryResultForPublishID_address___block_invoke;
  v13[3] = &unk_1E73A4090;
  v13[4] = self;
  v14 = subscriberCopy;
  dCopy = d;
  v15 = addressCopy;
  v11 = addressCopy;
  v12 = subscriberCopy;
  dispatch_async(dispatchQueue, v13);
}

void *__70__CUNANSubscriber_subscriber_lostDiscoveryResultForPublishID_address___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[13])
  {
    return [result _subscriber:*(a1 + 40) lostDiscoveryResultForPublishID:*(a1 + 56) address:*(a1 + 48)];
  }

  return result;
}

- (void)_subscriber:(id)_subscriber receivedDiscoveryResult:(id)result
{
  v43 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v6 = logger_5122();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    publisherAddress = [resultCopy publisherAddress];
    data = [publisherAddress data];
    publishID = [resultCopy publishID];
    serviceName = [resultCopy serviceName];
    serviceSpecificInfo = [resultCopy serviceSpecificInfo];
    *buf = 138413058;
    v38 = data;
    v39 = 1024;
    *v40 = publishID;
    *&v40[4] = 2112;
    *&v40[6] = serviceName;
    v41 = 2112;
    v42 = serviceSpecificInfo;
    _os_log_debug_impl(&dword_191EAF000, v6, OS_LOG_TYPE_DEBUG, "WFA discovery result: PA <%@>, PI %u, SV '%@', SI <%@>", buf, 0x26u);
  }

  publisherAddress2 = [resultCopy publisherAddress];
  data2 = [publisherAddress2 data];
  [resultCopy publishID];
  v9 = _WiFiAwareCreateEndpointIdentifier(data2);

  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_wfaEndpoints objectForKeyedSubscript:v9];
    if (v10)
    {
      v11 = v10;
      v12 = [(CUNANEndpoint *)v10 updateWithDiscoveryResult:resultCopy];
      changeFlags = self->_changeFlags;
      v14 = (v12 | 4) & changeFlags;
      if (((v12 | 4) & changeFlags) != 0)
      {
        v15 = logger_5122();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = CUDescriptionWithLevel(v11, 50);
          v24 = NSPrintF("%#{flags}", v17, v18, v19, v20, v21, v22, v23, v14);
          *buf = 138412546;
          v38 = v16;
          v39 = 2112;
          *v40 = v24;
          _os_log_impl(&dword_191EAF000, v15, OS_LOG_TYPE_INFO, "Endpoint changed: %@, %@", buf, 0x16u);
        }

        endpointChangedHandler = self->_endpointChangedHandler;
        if (endpointChangedHandler)
        {
          endpointChangedHandler[2](endpointChangedHandler, v11, v14);
        }
      }
    }

    else
    {
      v11 = objc_alloc_init(CUNANEndpoint);
      [(CUNANEndpoint *)v11 setIdentifier:v9];
      [(CUNANEndpoint *)v11 updateWithDiscoveryResult:resultCopy];
      pthread_mutex_lock(&self->_mutex);
      wfaEndpoints = self->_wfaEndpoints;
      if (!wfaEndpoints)
      {
        v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v28 = self->_wfaEndpoints;
        self->_wfaEndpoints = v27;

        wfaEndpoints = self->_wfaEndpoints;
      }

      [(NSMutableDictionary *)wfaEndpoints setObject:v11 forKeyedSubscript:v9];
      pthread_mutex_unlock(&self->_mutex);
      v29 = logger_5122();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = CUDescriptionWithLevel(v11, 50);
        *buf = 138412290;
        v38 = v30;
        _os_log_impl(&dword_191EAF000, v29, OS_LOG_TYPE_INFO, "Endpoint found: %@", buf, 0xCu);
      }

      endpointFoundHandler = self->_endpointFoundHandler;
      if (endpointFoundHandler)
      {
        endpointFoundHandler[2](endpointFoundHandler, v11);
      }
    }
  }

  else
  {
    v11 = logger_5122();
    if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_191EAF000, &v11->super, OS_LOG_TYPE_ERROR, "### WFA discovery result missing identifier", buf, 2u);
    }
  }
}

- (void)subscriber:(id)subscriber receivedDiscoveryResult:(id)result
{
  subscriberCopy = subscriber;
  resultCopy = result;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CUNANSubscriber_subscriber_receivedDiscoveryResult___block_invoke;
  block[3] = &unk_1E73A37D8;
  block[4] = self;
  v12 = subscriberCopy;
  v13 = resultCopy;
  v9 = resultCopy;
  v10 = subscriberCopy;
  dispatch_async(dispatchQueue, block);
}

void *__54__CUNANSubscriber_subscriber_receivedDiscoveryResult___block_invoke(void *a1)
{
  result = a1[4];
  if (result[13])
  {
    return [result _subscriber:a1[5] receivedDiscoveryResult:a1[6]];
  }

  return result;
}

- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__CUNANSubscriber_subscriber_terminatedWithReason___block_invoke;
  v5[3] = &unk_1E73A4340;
  v5[4] = self;
  v5[5] = reason;
  dispatch_async(dispatchQueue, v5);
}

void __51__CUNANSubscriber_subscriber_terminatedWithReason___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 104))
  {
    v2 = logger_5122();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 136);
      v4 = *(a1 + 40) + 1;
      if (v4 > 4)
      {
        v5 = "?";
      }

      else
      {
        v5 = off_1E73A37F8[v4];
      }

      *v22 = 138412546;
      *&v22[4] = v3;
      v23 = 2080;
      v24 = v5;
      _os_log_impl(&dword_191EAF000, v2, OS_LOG_TYPE_DEFAULT, "WFASubscriber terminated: '%@', %s", v22, 0x16u);
    }

    v6 = _Block_copy(*(*(a1 + 32) + 8));
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = 0;

    v15 = *(a1 + 40);
    if (v6)
    {
      if (v15 == 2)
      {
        v6[2](v6, 0);
        goto LABEL_14;
      }

      v16 = NSErrorWithOSStatusF(4294960596, "Unexpected terminate", v9, v10, v11, v12, v13, v14, *v22);
      (v6)[2](v6, v16);
    }

    else if (v15 == 2)
    {
      goto LABEL_14;
    }

    v17 = *(a1 + 32);
    if (v17[16] != 1)
    {
      [v17 _lostAllEndpoints];
      v20 = *(*(a1 + 32) + 176);
      if (v20)
      {
        (*(v20 + 16))();
      }

      v21 = logger_5122();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_191EAF000, v21, OS_LOG_TYPE_DEFAULT, "WFASubscriber restarting after unexpected termination", v22, 2u);
      }

      [*(*(a1 + 32) + 104) start];
      goto LABEL_20;
    }

LABEL_14:
    v18 = *(a1 + 32);
    v19 = *(v18 + 104);
    *(v18 + 104) = 0;

    [*(a1 + 32) _invalidated];
LABEL_20:
  }
}

- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__CUNANSubscriber_subscriber_failedToStartWithError___block_invoke;
  v5[3] = &unk_1E73A4340;
  v5[4] = self;
  v5[5] = error;
  dispatch_async(dispatchQueue, v5);
}

void __53__CUNANSubscriber_subscriber_failedToStartWithError___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 104))
  {
    v2 = (*(a1 + 40) + 313300);
    v3 = logger_5122();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v22 = *(*(a1 + 32) + 136);
      v23 = NSPrintF("%#m", v4, v5, v6, v7, v8, v9, v10, v2);
      *buf = 138412546;
      v26 = v22;
      v27 = 2112;
      v28 = v23;
      _os_log_error_impl(&dword_191EAF000, v3, OS_LOG_TYPE_ERROR, "### WFASubscriber start failed: '%@', %@", buf, 0x16u);
    }

    *(*(a1 + 32) + 88) = 1;
    v11 = _Block_copy(*(*(a1 + 32) + 8));
    v12 = *(a1 + 32);
    v13 = *(v12 + 8);
    *(v12 + 8) = 0;

    if (v11)
    {
      v20 = NSErrorWithOSStatusF(v2, "Subscriber start failed", v14, v15, v16, v17, v18, v19, v24);
      v11[2](v11, v20);
    }

    if (*(*(a1 + 32) + 16) == 1)
    {
      v21 = logger_5122();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_191EAF000, v21, OS_LOG_TYPE_DEFAULT, "WFASubscriber stop after start completed", buf, 2u);
      }

      [*(*(a1 + 32) + 104) stop];
    }
  }
}

- (void)subscriberStarted:(id)started
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CUNANSubscriber_subscriberStarted___block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __37__CUNANSubscriber_subscriberStarted___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 104))
  {
    v2 = logger_5122();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 136);
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_191EAF000, v2, OS_LOG_TYPE_DEFAULT, "WFASubscriber started: '%@'", &v8, 0xCu);
    }

    *(*(a1 + 32) + 88) = 1;
    v4 = _Block_copy(*(*(a1 + 32) + 8));
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = 0;

    if (v4)
    {
      v4[2](v4, 0);
    }

    if (*(*(a1 + 32) + 16) == 1)
    {
      v7 = logger_5122();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_191EAF000, v7, OS_LOG_TYPE_DEFAULT, "WFASubscriber stop after start completed", &v8, 2u);
      }

      [*(*(a1 + 32) + 104) stop];
    }
  }
}

- (void)sendMessageData:(id)data endpoint:(id)endpoint completionHandler:(id)handler
{
  dataCopy = data;
  endpointCopy = endpoint;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__CUNANSubscriber_sendMessageData_endpoint_completionHandler___block_invoke;
  v15[3] = &unk_1E73A4108;
  v15[4] = self;
  v16 = endpointCopy;
  v17 = dataCopy;
  v18 = handlerCopy;
  v12 = dataCopy;
  v13 = endpointCopy;
  v14 = handlerCopy;
  dispatch_async(dispatchQueue, v15);
}

void __62__CUNANSubscriber_sendMessageData_endpoint_completionHandler___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__5238;
  v41 = __Block_byref_object_dispose__5239;
  v42 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__CUNANSubscriber_sendMessageData_endpoint_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E73A3960;
  v36 = &v37;
  v35 = *(a1 + 56);
  v2 = _Block_copy(aBlock);
  v8 = *(*(a1 + 32) + 104);
  if (v8)
  {
    v9 = [*(a1 + 40) discoveryResult];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 publishID];
      [v10 publisherAddress];
    }

    else
    {
      v11 = [*(a1 + 40) instanceID];
      [*(a1 + 40) macAddress];
    }
    v17 = ;
    if (v17)
    {
      v18 = logger_5122();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 40);
        v20 = CUPrintNSDataHex(*(a1 + 48), 12, 1);
        *buf = 138412546;
        v44 = v19;
        v45 = 2112;
        v46 = v20;
        _os_log_impl(&dword_191EAF000, v18, OS_LOG_TYPE_DEFAULT, "SendMessage start: EP %@, Data %@", buf, 0x16u);
      }

      v21 = *(a1 + 48);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __62__CUNANSubscriber_sendMessageData_endpoint_completionHandler___block_invoke_15;
      v31[3] = &unk_1E73A37B0;
      v30 = *(a1 + 32);
      v22 = *(&v30 + 1);
      v23 = *(a1 + 48);
      v24 = *(a1 + 56);
      *&v25 = v23;
      *(&v25 + 1) = v24;
      v32 = v30;
      v33 = v25;
      [v8 sendMessage:v21 toPeerAddress:v17 withInstanceID:v11 completionHandler:v31];
    }

    else
    {
      v27 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No peer address", v12, v13, v14, v15, v16, v29);
      v28 = v38[5];
      v38[5] = v27;
    }
  }

  else
  {
    v26 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960551, "Subscriber not activated", v3, v4, v5, v6, v7, v29);
    v17 = v38[5];
    v38[5] = v26;
  }

  v2[2](v2);
  _Block_object_dispose(&v37, 8);
}

uint64_t __62__CUNANSubscriber_sendMessageData_endpoint_completionHandler___block_invoke_2(uint64_t result)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    v2 = logger_5122();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v10 = NSPrintF("%{error}", v3, v4, v5, v6, v7, v8, v9, *(*(*(v1 + 40) + 8) + 40));
      *buf = 138412290;
      v12 = v10;
      _os_log_error_impl(&dword_191EAF000, v2, OS_LOG_TYPE_ERROR, "### SendMessage failed: %@", buf, 0xCu);
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

void __62__CUNANSubscriber_sendMessageData_endpoint_completionHandler___block_invoke_15(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 120);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__CUNANSubscriber_sendMessageData_endpoint_completionHandler___block_invoke_2_16;
  v4[3] = &unk_1E73A3938;
  v8 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  dispatch_async(v3, v4);
}

void __62__CUNANSubscriber_sendMessageData_endpoint_completionHandler___block_invoke_2_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = NSErrorF_safe(*MEMORY[0x1E696A768], (v9 + 313300), "SendMessage failed", a4, a5, a6, a7, a8, v25);
    v11 = logger_5122();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = CUPrintNSDataHex(*(a1 + 40), 12, 1);
      v24 = NSPrintF("%{error}", v17, v18, v19, v20, v21, v22, v23, v10);
      *buf = 138412802;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = v24;
      _os_log_error_impl(&dword_191EAF000, v11, OS_LOG_TYPE_ERROR, "### SendMessage failed: EP %@, Data %@, %@", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v12 = logger_5122();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = CUPrintNSDataHex(*(a1 + 40), 12, 1);
      *buf = 138412546;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_191EAF000, v12, OS_LOG_TYPE_DEFAULT, "SendMessage completed: EP %@, Data %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)reportMockEndpointLost:(id)lost
{
  lostCopy = lost;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__CUNANSubscriber_reportMockEndpointLost___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = lostCopy;
  v6 = lostCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __42__CUNANSubscriber_reportMockEndpointLost___block_invoke(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((*(*(result + 32) + 16) & 1) == 0)
  {
    v1 = result;
    v2 = logger_5122();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = CUDescriptionWithLevel(*(v1 + 40), 50);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_191EAF000, v2, OS_LOG_TYPE_DEFAULT, "Mock Endpoint Lost: %@", &v4, 0xCu);
    }

    result = *(*(v1 + 32) + 160);
    if (result)
    {
      return (*(result + 16))(result, *(v1 + 40));
    }
  }

  return result;
}

- (void)reportMockEndpointFound:(id)found
{
  foundCopy = found;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CUNANSubscriber_reportMockEndpointFound___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = foundCopy;
  v6 = foundCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __43__CUNANSubscriber_reportMockEndpointFound___block_invoke(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((*(*(result + 32) + 16) & 1) == 0)
  {
    v1 = result;
    v2 = logger_5122();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = CUDescriptionWithLevel(*(v1 + 40), 50);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_191EAF000, v2, OS_LOG_TYPE_DEFAULT, "Mock Endpoint found: %@", &v4, 0xCu);
    }

    result = *(*(v1 + 32) + 152);
    if (result)
    {
      return (*(result + 16))(result, *(v1 + 40));
    }
  }

  return result;
}

- (void)_lostAllEndpoints
{
  if (self->_endpointLostHandler)
  {
    wfaEndpoints = self->_wfaEndpoints;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __36__CUNANSubscriber__lostAllEndpoints__block_invoke;
    v4[3] = &unk_1E73A3788;
    v4[4] = self;
    [(NSMutableDictionary *)wfaEndpoints enumerateKeysAndObjectsUsingBlock:v4];
  }

  pthread_mutex_lock(&self->_mutex);
  [(NSMutableDictionary *)self->_wfaEndpoints removeAllObjects];
  pthread_mutex_unlock(&self->_mutex);
}

void __36__CUNANSubscriber__lostAllEndpoints__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = logger_5122();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = CUDescriptionWithLevel(v4, 50);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_191EAF000, v5, OS_LOG_TYPE_INFO, "Endpoint lost: %@", &v7, 0xCu);
  }

  (*(*(*(a1 + 32) + 160) + 16))();
}

- (void)_invalidated
{
  if (self->_invalidateCalled)
  {
    v14 = v2;
    v15 = v3;
    if (!self->_invalidateDone && !self->_wfaSubscriber)
    {
      invalidationHandler = self->_invalidationHandler;
      if (invalidationHandler)
      {
        invalidationHandler[2](invalidationHandler, a2);
      }

      endpointFoundHandler = self->_endpointFoundHandler;
      self->_endpointFoundHandler = 0;

      endpointLostHandler = self->_endpointLostHandler;
      self->_endpointLostHandler = 0;

      endpointChangedHandler = self->_endpointChangedHandler;
      self->_endpointChangedHandler = 0;

      interruptionHandler = self->_interruptionHandler;
      self->_interruptionHandler = 0;

      v10 = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      receiveHandler = self->_receiveHandler;
      self->_receiveHandler = 0;

      self->_invalidateDone = 1;
      v12 = logger_5122();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_191EAF000, v12, OS_LOG_TYPE_DEFAULT, "Invalidated", v13, 2u);
      }
    }
  }
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    v3 = logger_5122();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_191EAF000, v3, OS_LOG_TYPE_DEFAULT, "Invalidate", buf, 2u);
    }

    v4 = self->_mockID;
    v5 = v4;
    if (v4)
    {
      CUNANMockRemoveSubscriber(v4, self);
    }

    if (self->_startedCalled)
    {
      [(WiFiAwareSubscriber *)self->_wfaSubscriber stop];
    }

    else
    {
      v6 = logger_5122();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_191EAF000, v6, OS_LOG_TYPE_DEFAULT, "Deferring stop until start completes", v7, 2u);
      }
    }

    [(CUNANSubscriber *)self _invalidated];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__CUNANSubscriber_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateWithCompletion:(id)completion
{
  v76 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = logger_5122();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    serviceType = self->_serviceType;
    v14 = NSPrintF("%#{flags}", v6, v7, v8, v9, v10, v11, v12, self->_changeFlags);
    *buf = 138412546;
    v73 = serviceType;
    v74 = 2112;
    v75 = v14;
    _os_log_impl(&dword_191EAF000, v5, OS_LOG_TYPE_DEFAULT, "Activate '%@', %@", buf, 0x16u);
  }

  v15 = self->_serviceType;
  if ([(NSString *)v15 length])
  {
    v22 = self->_mockID;
    if (v22)
    {
      v23 = v22;
      selfCopy = self;
      os_unfair_lock_lock(&gCUNANMockLock);
      v25 = [gCUNANMockSubscribers objectForKeyedSubscript:v23];
      if (!v25)
      {
        v25 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
        v26 = gCUNANMockSubscribers;
        if (!gCUNANMockSubscribers)
        {
          v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v28 = gCUNANMockSubscribers;
          gCUNANMockSubscribers = v27;

          v26 = gCUNANMockSubscribers;
        }

        [v26 setObject:v25 forKeyedSubscript:v23];
      }

      [v25 addObject:selfCopy];
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v29 = [gCUNANMockPublishers objectForKeyedSubscript:v23];
      v30 = [v29 countByEnumeratingWithState:&v68 objects:buf count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v69;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v69 != v32)
            {
              objc_enumerationMutation(v29);
            }

            mockEndpoint = [*(*(&v68 + 1) + 8 * i) mockEndpoint];
            if (mockEndpoint)
            {
              [(CUNANSubscriber *)selfCopy reportMockEndpointFound:mockEndpoint];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v68 objects:buf count:16];
        }

        while (v31);
      }

      os_unfair_lock_unlock(&gCUNANMockLock);
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }
    }

    else
    {
      v43 = [objc_alloc(getWiFiAwareSubscribeConfigurationClass[0]()) initWithServiceName:v15];
      v44 = v43;
      if (self->_controlFlags)
      {
        [v43 setAuthenticationType:0];
      }

      if (self->_wfaDiscoveryMode)
      {
        [v44 setDiscoveryMode:?];
      }

      v45 = [objc_alloc(getWiFiAwareSubscriberClass[0]()) initWithConfiguration:v44];
      wfaSubscriber = self->_wfaSubscriber;
      self->_wfaSubscriber = v45;

      v53 = self->_wfaSubscriber;
      if (v53)
      {
        [(WiFiAwareSubscriber *)v53 setDelegate:self];
        v54 = _Block_copy(completionCopy);
        activateCompletion = self->_activateCompletion;
        self->_activateCompletion = v54;

        [(WiFiAwareSubscriber *)self->_wfaSubscriber start];
      }

      else
      {
        v56 = NSErrorWithOSStatusF(4294960596, "Create WFASubscriber failed", v47, v48, v49, v50, v51, v52, v67);
        v57 = logger_5122();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v66 = NSPrintF("%{error}", v58, v59, v60, v61, v62, v63, v64, v56);
          *buf = 138412290;
          v73 = v66;
          _os_log_error_impl(&dword_191EAF000, v57, OS_LOG_TYPE_ERROR, "### Activate failed: %@", buf, 0xCu);
        }

        if (completionCopy)
        {
          (completionCopy)[2](completionCopy, v56);
        }
      }

      v23 = 0;
    }
  }

  else
  {
    v23 = NSErrorWithOSStatusF(4294960591, "No service name", v16, v17, v18, v19, v20, v21, v67);
    v35 = logger_5122();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v65 = NSPrintF("%{error}", v36, v37, v38, v39, v40, v41, v42, v23);
      *buf = 138412290;
      v73 = v65;
      _os_log_error_impl(&dword_191EAF000, v35, OS_LOG_TYPE_ERROR, "### Activate failed: %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      (completionCopy)[2](completionCopy, v23);
    }
  }
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__CUNANSubscriber_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (NSArray)discoveredEndpoints
{
  pthread_mutex_lock(&self->_mutex);
  wfaEndpoints = self->_wfaEndpoints;
  if (wfaEndpoints)
  {
    allValues = [(NSMutableDictionary *)wfaEndpoints allValues];
  }

  else
  {
    allValues = MEMORY[0x1E695E0F0];
  }

  pthread_mutex_unlock(&self->_mutex);

  return allValues;
}

- (id)descriptionWithLevel:(int)level
{
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__5238;
  v47 = __Block_byref_object_dispose__5239;
  v48 = 0;
  obj = 0;
  NSAppendPrintF(&obj, "CUNANSubscriber %@", *&level, v3, v4, v5, v6, v7, self->_serviceType);
  objc_storeStrong(&v48, obj);
  changeFlags = self->_changeFlags;
  if (changeFlags)
  {
    v17 = v44;
    v41 = v44[5];
    NSAppendPrintF(&v41, ", CF %{flags}", v10, v11, v12, v13, v14, v15, changeFlags);
    objc_storeStrong(v17 + 5, v41);
  }

  v18 = v44;
  v40 = v44[5];
  v19 = [(NSMutableDictionary *)self->_wfaEndpoints count];
  NSAppendPrintF(&v40, ", %d endpoints(s)", v20, v21, v22, v23, v24, v25, v19);
  objc_storeStrong(v18 + 5, v40);
  if (level <= 20)
  {
    v32 = v44;
    v39 = v44[5];
    NSAppendPrintF(&v39, "\n", v26, v27, v28, v29, v30, v31, v36);
    objc_storeStrong(v32 + 5, v39);
    wfaEndpoints = self->_wfaEndpoints;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __40__CUNANSubscriber_descriptionWithLevel___block_invoke;
    v37[3] = &unk_1E73A3760;
    levelCopy = level;
    v37[4] = &v43;
    [(NSMutableDictionary *)wfaEndpoints enumerateKeysAndObjectsUsingBlock:v37];
  }

  v34 = v44[5];
  _Block_object_dispose(&v43, 8);

  return v34;
}

void __40__CUNANSubscriber_descriptionWithLevel___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 40) >= 11)
  {
    v3 = 50;
  }

  else
  {
    v3 = 30;
  }

  v4 = *(*(a1 + 32) + 8);
  obj = *(v4 + 40);
  v11 = CUDescriptionWithLevel(a3, v3);
  NSAppendPrintF(&obj, "    %@\n", v5, v6, v7, v8, v9, v10, v11);
  objc_storeStrong((v4 + 40), obj);
}

- (void)dealloc
{
  v3 = self->_mockID;
  v4 = v3;
  if (v3)
  {
    CUNANMockRemoveSubscriber(v3, self);
  }

  pthread_mutex_destroy(&self->_mutex);

  v5.receiver = self;
  v5.super_class = CUNANSubscriber;
  [(CUNANSubscriber *)&v5 dealloc];
}

- (CUNANSubscriber)init
{
  v5.receiver = self;
  v5.super_class = CUNANSubscriber;
  v2 = [(CUNANSubscriber *)&v5 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    pthread_mutex_init(&v2->_mutex, 0);
    v3 = v2;
  }

  return v2;
}

@end