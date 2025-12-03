@interface CUNANPublisher
- (CUNANPublisher)init;
- (NSArray)dataSessions;
- (NSString)description;
- (void)_activateWithCompletion:(id)completion;
- (void)_invalidate;
- (void)_invalidated;
- (void)_publisher:(id)_publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info;
- (void)_scheduleRetry;
- (void)_updateServiceSpecificInfo;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)generateStatisticsReportWithCompletionHandler:(id)handler;
- (void)invalidate;
- (void)pairingRequestIndicatedForPublisher:(id)publisher bySubscriber:(id)subscriber usingPINCode:(id)code;
- (void)publisher:(id)publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info;
- (void)publisher:(id)publisher dataIndicatedForHandle:(id)handle serviceSpecificInfo:(id)info;
- (void)publisher:(id)publisher dataTerminatedForHandle:(id)handle reason:(int64_t)reason;
- (void)publisher:(id)publisher failedToStartWithError:(int64_t)error;
- (void)publisher:(id)publisher receivedMessage:(id)message fromSubscriberID:(unsigned __int8)d subscriberAddress:(id)address;
- (void)publisher:(id)publisher terminatedWithReason:(int64_t)reason;
- (void)publisherStarted:(id)started;
- (void)reportIssue:(id)issue;
- (void)scheduleRetry;
- (void)sendMessageData:(id)data endpoint:(id)endpoint completionHandler:(id)handler;
- (void)setTextInfo:(id)info;
- (void)updateLinkStatus:(int)status;
@end

@implementation CUNANPublisher

- (void)pairingRequestIndicatedForPublisher:(id)publisher bySubscriber:(id)subscriber usingPINCode:(id)code
{
  subscriberCopy = subscriber;
  codeCopy = code;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__CUNANPublisher_pairingRequestIndicatedForPublisher_bySubscriber_usingPINCode___block_invoke;
  block[3] = &unk_1E73A37D8;
  block[4] = self;
  v13 = subscriberCopy;
  v14 = codeCopy;
  v10 = codeCopy;
  v11 = subscriberCopy;
  dispatch_async(dispatchQueue, block);
}

void __80__CUNANPublisher_pairingRequestIndicatedForPublisher_bySubscriber_usingPINCode___block_invoke(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1[4] + 24))
  {
    v2 = [[CUNANPairingShowInfo alloc] initWithSubscriberInfo:a1[5] pinCode:a1[6]];
    v3 = logger_4859();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_191EAF000, v3, OS_LOG_TYPE_DEFAULT, "PairingShow: %@", &v5, 0xCu);
    }

    v4 = *(a1[4] + 152);
    if (v4)
    {
      (*(v4 + 16))(v4, v2);
    }
  }
}

- (void)publisher:(id)publisher dataTerminatedForHandle:(id)handle reason:(int64_t)reason
{
  handleCopy = handle;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CUNANPublisher_publisher_dataTerminatedForHandle_reason___block_invoke;
  block[3] = &unk_1E73A4040;
  block[4] = self;
  v11 = handleCopy;
  reasonCopy = reason;
  v9 = handleCopy;
  dispatch_async(dispatchQueue, block);
}

void __59__CUNANPublisher_publisher_dataTerminatedForHandle_reason___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 24))
  {
    v2 = (a1 + 40);
    v3 = [*(a1 + 40) initiatorDataAddress];
    v4 = [v3 data];
    [*v2 datapathID];
    v5 = _WiFiAwareCreateEndpointIdentifier(v4);

    v6 = (*(a1 + 48) + 313370);
    v7 = logger_4859();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(a1 + 32) + 104);
      v16 = NSPrintF("%#m", v8, v9, v10, v11, v12, v13, v14, v6);
      *buf = 138412802;
      v50 = v15;
      v51 = 2112;
      v52 = v5;
      v53 = 2112;
      v54 = v16;
      _os_log_impl(&dword_191EAF000, v7, OS_LOG_TYPE_DEFAULT, "WFA DataSession terminated: '%@', %@, %@", buf, 0x20u);
    }

    if (v5)
    {
      v17 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];
      if (v17)
      {
        v18 = *(a1 + 32);
        objc_sync_enter(v18);
        [*(*(a1 + 32) + 16) setObject:0 forKeyedSubscript:v5];
        objc_sync_exit(v18);

        v19 = logger_4859();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = CUDescriptionWithLevel(v17, 50);
          *buf = 138412290;
          v50 = v20;
          _os_log_impl(&dword_191EAF000, v19, OS_LOG_TYPE_DEFAULT, "WFA DataSession ended: %@", buf, 0xCu);
        }

        v27 = *(a1 + 32);
        v28 = v27[18];
        if (v28)
        {
          v29 = NSErrorWithOSStatusF(v6, "DataSession terminated", v21, v22, v23, v24, v25, v26, v48);
          (*(v28 + 16))(v28, v17, v29);

          v27 = *(a1 + 32);
        }

        [v27 _invalidated];
      }

      else
      {
        v38 = logger_4859();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v46 = *(*(a1 + 32) + 104);
          v47 = NSPrintF("%#m", v39, v40, v41, v42, v43, v44, v45, v6);
          *buf = 138412802;
          v50 = v46;
          v51 = 2112;
          v52 = v5;
          v53 = 2112;
          v54 = v47;
          _os_log_error_impl(&dword_191EAF000, v38, OS_LOG_TYPE_ERROR, "### WFA DataSession terminated untracked: '%@', %@, %@", buf, 0x20u);
        }

        v17 = 0;
      }
    }

    else
    {
      v17 = logger_4859();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v37 = NSPrintF("%#m", v30, v31, v32, v33, v34, v35, v36, v6);
        *buf = 138412290;
        v50 = v37;
        _os_log_error_impl(&dword_191EAF000, v17, OS_LOG_TYPE_ERROR, "### WFA DataSession terminated missing identifier: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_publisher:(id)_publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info
{
  v7 = *&index;
  v31 = *MEMORY[0x1E69E9840];
  _publisherCopy = _publisher;
  handleCopy = handle;
  infoCopy = info;
  initiatorDataAddress = [handleCopy initiatorDataAddress];
  data = [initiatorDataAddress data];
  [handleCopy datapathID];
  v15 = _WiFiAwareCreateEndpointIdentifier(data);

  if (v15)
  {
    v16 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v15];

    if (v16)
    {
      v17 = logger_4859();
      if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_ERROR))
      {
        v29 = 138412290;
        v30 = v15;
        v18 = "### WFA DataSession confirmed for existing session: %@";
        p_super = &v17->super;
        v20 = 12;
LABEL_7:
        _os_log_error_impl(&dword_191EAF000, p_super, OS_LOG_TYPE_ERROR, v18, &v29, v20);
      }
    }

    else
    {
      v17 = objc_alloc_init(CUNANEndpoint);
      [(CUNANEndpoint *)v17 setIdentifier:v15];
      [(CUNANEndpoint *)v17 setServiceType:self->_serviceType];
      v21 = objc_alloc_init(CUNANDataSession);
      [(CUNANDataSession *)v21 setDispatchQueue:self->_dispatchQueue];
      [(CUNANDataSession *)v21 setIdentifier:v15];
      [(CUNANDataSession *)v21 setLocalInterfaceIndex:v7];
      [(CUNANDataSession *)v21 setPeerEndpoint:v17];
      [(CUNANDataSession *)v21 setTrafficFlags:self->_trafficFlags];
      [(CUNANDataSession *)v21 setWfaDataSessionServer:handleCopy];
      v22 = logger_4859();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138412290;
        v30 = v21;
        _os_log_impl(&dword_191EAF000, v22, OS_LOG_TYPE_DEFAULT, "WFA DataSession started: %@", &v29, 0xCu);
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      sessions = self->_sessions;
      if (!sessions)
      {
        v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v27 = self->_sessions;
        p_sessions = &self->_sessions;
        *p_sessions = v25;

        sessions = *p_sessions;
      }

      [(NSMutableDictionary *)sessions setObject:v21 forKeyedSubscript:v15];
      objc_sync_exit(selfCopy);

      dataSessionStartedHandler = selfCopy->_dataSessionStartedHandler;
      if (dataSessionStartedHandler)
      {
        dataSessionStartedHandler[2](dataSessionStartedHandler, v21);
      }
    }
  }

  else
  {
    v17 = logger_4859();
    if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      v18 = "### WFA DataSession confirmed missing identifier";
      p_super = &v17->super;
      v20 = 2;
      goto LABEL_7;
    }
  }
}

- (void)publisher:(id)publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info
{
  publisherCopy = publisher;
  handleCopy = handle;
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__CUNANPublisher_publisher_dataConfirmedForHandle_localInterfaceIndex_serviceSpecificInfo___block_invoke;
  block[3] = &unk_1E73A3738;
  block[4] = self;
  v18 = publisherCopy;
  indexCopy = index;
  v19 = handleCopy;
  v20 = infoCopy;
  v14 = infoCopy;
  v15 = handleCopy;
  v16 = publisherCopy;
  dispatch_async(dispatchQueue, block);
}

void *__91__CUNANPublisher_publisher_dataConfirmedForHandle_localInterfaceIndex_serviceSpecificInfo___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[3])
  {
    return [result _publisher:*(a1 + 40) dataConfirmedForHandle:*(a1 + 48) localInterfaceIndex:*(a1 + 64) serviceSpecificInfo:*(a1 + 56)];
  }

  return result;
}

- (void)publisher:(id)publisher dataIndicatedForHandle:(id)handle serviceSpecificInfo:(id)info
{
  v16 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  initiatorDataAddress = [handleCopy initiatorDataAddress];
  data = [initiatorDataAddress data];
  [handleCopy datapathID];

  v9 = _WiFiAwareCreateEndpointIdentifier(data);

  v10 = logger_4859();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    serviceType = self->_serviceType;
    v12 = 138412546;
    v13 = serviceType;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_191EAF000, v10, OS_LOG_TYPE_DEFAULT, "WFA DataSession indicated: '%@', %@", &v12, 0x16u);
  }
}

- (void)publisher:(id)publisher receivedMessage:(id)message fromSubscriberID:(unsigned __int8)d subscriberAddress:(id)address
{
  messageCopy = message;
  addressCopy = address;
  dispatchQueue = self->_dispatchQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__CUNANPublisher_publisher_receivedMessage_fromSubscriberID_subscriberAddress___block_invoke;
  v14[3] = &unk_1E73A4090;
  v14[4] = self;
  v15 = addressCopy;
  dCopy = d;
  v16 = messageCopy;
  v12 = messageCopy;
  v13 = addressCopy;
  dispatch_async(dispatchQueue, v14);
}

void __79__CUNANPublisher_publisher_receivedMessage_fromSubscriberID_subscriberAddress___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    v3 = _Block_copy(*(v1 + 160));
    if (v3)
    {
      v4 = objc_alloc_init(CUNANEndpoint);
      v5 = [*(a1 + 40) data];
      v6 = _WiFiAwareCreateEndpointIdentifier(v5);
      [(CUNANEndpoint *)v4 setIdentifier:v6];

      [(CUNANEndpoint *)v4 setInstanceID:*(a1 + 56)];
      [(CUNANEndpoint *)v4 setMacAddress:*(a1 + 40)];
      v7 = logger_4859();
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

- (void)publisher:(id)publisher terminatedWithReason:(int64_t)reason
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__CUNANPublisher_publisher_terminatedWithReason___block_invoke;
  v5[3] = &unk_1E73A4340;
  v5[4] = self;
  v5[5] = reason;
  dispatch_async(dispatchQueue, v5);
}

uint64_t __49__CUNANPublisher_publisher_terminatedWithReason___block_invoke(uint64_t result)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 24))
  {
    v1 = result;
    v2 = logger_4859();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(v1 + 32) + 104);
      v4 = *(v1 + 40) + 1;
      if (v4 > 4)
      {
        v5 = "?";
      }

      else
      {
        v5 = off_1E73A37F8[v4];
      }

      v9 = 138412546;
      v10 = v3;
      v11 = 2080;
      v12 = v5;
      _os_log_impl(&dword_191EAF000, v2, OS_LOG_TYPE_DEFAULT, "WFAPublisher terminated: '%@', %s", &v9, 0x16u);
    }

    v6 = *(v1 + 32);
    if (*(v1 + 40) == 2 || *(v6 + 8) == 1)
    {
      v7 = *(v6 + 24);
      *(v6 + 24) = 0;

      return [*(v1 + 32) _invalidated];
    }

    else
    {
      v8 = *(v6 + 120);
      if (v8)
      {
        (*(v8 + 16))(*(v6 + 120));
        v6 = *(v1 + 32);
      }

      return [v6 scheduleRetry];
    }
  }

  return result;
}

- (void)publisher:(id)publisher failedToStartWithError:(int64_t)error
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__CUNANPublisher_publisher_failedToStartWithError___block_invoke;
  v5[3] = &unk_1E73A4340;
  v5[4] = self;
  v5[5] = error;
  dispatch_async(dispatchQueue, v5);
}

uint64_t __51__CUNANPublisher_publisher_failedToStartWithError___block_invoke(uint64_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 24))
  {
    v1 = result;
    v2 = *(result + 40);
    v3 = logger_4859();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(v1 + 32) + 104);
      v12 = NSPrintF("%#m", v4, v5, v6, v7, v8, v9, v10, (v2 + 313300));
      *buf = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_error_impl(&dword_191EAF000, v3, OS_LOG_TYPE_ERROR, "### WFAPublisher start failed: '%@', %@", buf, 0x16u);
    }

    return [*(v1 + 32) scheduleRetry];
  }

  return result;
}

- (void)publisherStarted:(id)started
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CUNANPublisher_publisherStarted___block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __35__CUNANPublisher_publisherStarted___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 24))
  {
    v2 = logger_4859();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 104);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_191EAF000, v2, OS_LOG_TYPE_DEFAULT, "WFAPublisher started: '%@'", &v4, 0xCu);
    }
  }
}

- (void)_updateServiceSpecificInfo
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = logger_4859();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = self->_name;
    customData = self->_customData;
    v13 = NSPrintF("%##@", v4, v5, v6, v7, v8, v9, v10, self->_textInfo);
    *buf = 138412802;
    v30 = name;
    v31 = 2112;
    v32 = customData;
    v33 = 2112;
    v34 = v13;
    _os_log_impl(&dword_191EAF000, v3, OS_LOG_TYPE_DEFAULT, "Update SSI: name=%@, customData=%@, textInfo=%@", buf, 0x20u);
  }

  v14 = objc_alloc_init(getWiFiAwarePublishServiceSpecificInfoClass[0]());
  [v14 setInstanceName:self->_name];
  if (self->_customData)
  {
    [v14 setBlob:?];
  }

  textInfo = self->_textInfo;
  if (textInfo)
  {
    v28 = 0;
    v17 = CUTXTDataCreateWithDictionary(textInfo, v15, &v28);
    v18 = v28;
    if (v17)
    {
      [v14 setTxtRecordData:v17];
    }

    else
    {
      v19 = logger_4859();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v27 = NSPrintF("%{error}", v20, v21, v22, v23, v24, v25, v26, v18);
        *buf = 138412290;
        v30 = v27;
        _os_log_error_impl(&dword_191EAF000, v19, OS_LOG_TYPE_ERROR, "### Update textInfo failed: error=%@", buf, 0xCu);
      }
    }
  }

  [(WiFiAwarePublisher *)self->_wfaPublisher updateServiceSpecificInfo:v14 completionHandler:&__block_literal_global_59];
}

void __44__CUNANPublisher__updateServiceSpecificInfo__block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = a2;
    v3 = logger_4859();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = v2;
      _os_log_error_impl(&dword_191EAF000, v3, OS_LOG_TYPE_ERROR, "### Update SSI failed: errorCode=%d", v4, 8u);
    }
  }
}

- (void)updateLinkStatus:(int)status
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__CUNANPublisher_updateLinkStatus___block_invoke;
  v4[3] = &unk_1E73A42A0;
  v4[4] = self;
  statusCopy = status;
  dispatch_async(dispatchQueue, v4);
}

void __35__CUNANPublisher_updateLinkStatus___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(*(a1 + 32) + 16) allValues];
  v4 = [v3 firstObject];
  v5 = [v4 wfaDataSessionServer];

  if (v2)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = logger_4859();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_191EAF000, v7, OS_LOG_TYPE_ERROR, "### Update link status without underlying data session", v8, 2u);
    }
  }

  else
  {
    [v2 updateLinkStatus:*(a1 + 40) == 1 forDataSession:v5];
  }
}

- (void)_scheduleRetry
{
  self->_retryPending = 0;
  if (!self->_invalidateCalled)
  {
    [(WiFiAwarePublisher *)self->_wfaPublisher start];
  }
}

- (void)scheduleRetry
{
  if (!self->_invalidateCalled && !self->_retryPending)
  {
    v3 = logger_4859();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_191EAF000, v3, OS_LOG_TYPE_DEFAULT, "WFAPublisher retry", buf, 2u);
    }

    self->_retryPending = 1;
    objc_initWeak(buf, self);
    v4 = dispatch_time(0, 3000000000);
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__CUNANPublisher_scheduleRetry__block_invoke;
    block[3] = &unk_1E73A3BA8;
    objc_copyWeak(&v7, buf);
    dispatch_after(v4, dispatchQueue, block);
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

void __31__CUNANPublisher_scheduleRetry__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleRetry];
}

- (void)sendMessageData:(id)data endpoint:(id)endpoint completionHandler:(id)handler
{
  dataCopy = data;
  endpointCopy = endpoint;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__CUNANPublisher_sendMessageData_endpoint_completionHandler___block_invoke;
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

void __61__CUNANPublisher_sendMessageData_endpoint_completionHandler___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__4884;
  v41 = __Block_byref_object_dispose__4885;
  v42 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__CUNANPublisher_sendMessageData_endpoint_completionHandler___block_invoke_52;
  aBlock[3] = &unk_1E73A3960;
  v36 = &v37;
  v35 = *(a1 + 56);
  v2 = _Block_copy(aBlock);
  v8 = *(*(a1 + 32) + 24);
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
      v18 = logger_4859();
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
      v31[2] = __61__CUNANPublisher_sendMessageData_endpoint_completionHandler___block_invoke_55;
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
    v26 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960551, "Publisher not activated", v3, v4, v5, v6, v7, v29);
    v17 = v38[5];
    v38[5] = v26;
  }

  v2[2](v2);
  _Block_object_dispose(&v37, 8);
}

uint64_t __61__CUNANPublisher_sendMessageData_endpoint_completionHandler___block_invoke_52(uint64_t result)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    v2 = logger_4859();
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

void __61__CUNANPublisher_sendMessageData_endpoint_completionHandler___block_invoke_55(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 56);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__CUNANPublisher_sendMessageData_endpoint_completionHandler___block_invoke_2;
  v4[3] = &unk_1E73A3938;
  v8 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  dispatch_async(v3, v4);
}

void __61__CUNANPublisher_sendMessageData_endpoint_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = NSErrorF_safe(*MEMORY[0x1E696A768], (v9 + 313300), "SendMessage failed", a4, a5, a6, a7, a8, v25);
    v11 = logger_4859();
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
    v12 = logger_4859();
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

- (void)reportIssue:(id)issue
{
  issueCopy = issue;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__CUNANPublisher_reportIssue___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = issueCopy;
  v6 = issueCopy;
  dispatch_async(dispatchQueue, v7);
}

void __30__CUNANPublisher_reportIssue___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = v2;
  if (v2)
  {
    v4 = *(*(a1 + 32) + 16);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __30__CUNANPublisher_reportIssue___block_invoke_2;
    v5[3] = &unk_1E73A36F0;
    v6 = v2;
    v7 = *(a1 + 40);
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

uint64_t __30__CUNANPublisher_reportIssue___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 wfaDataSessionServer];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v4 = [*(a1 + 32) reportIssue:*(a1 + 40) forDataSession:v4];
    v5 = v7;
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)generateStatisticsReportWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__CUNANPublisher_generateStatisticsReportWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

void __64__CUNANPublisher_generateStatisticsReportWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = [v3 allValues];
  v6 = [v5 firstObject];
  v7 = [v6 wfaDataSessionServer];

  if (v4)
  {
    v13 = v7 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = *(a1 + 40);
    v15 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "No underlying data session", v8, v9, v10, v11, v12, v17[0]);
    (*(v14 + 16))(v14, 0, v15);
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __64__CUNANPublisher_generateStatisticsReportWithCompletionHandler___block_invoke_2;
    v17[3] = &unk_1E73A36C8;
    v16 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = v16;
    [v4 generateStatisticsReportForDataSession:v7 completionHandler:v17];
  }
}

void __64__CUNANPublisher_generateStatisticsReportWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CUNANPublisher_generateStatisticsReportWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E73A4BB0;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v12 = a2;
  v8 = v5;
  dispatch_async(v6, block);
}

void __64__CUNANPublisher_generateStatisticsReportWithCompletionHandler___block_invoke_3(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];
  if (v10)
  {
    v14 = NSErrorF_safe(*MEMORY[0x1E696A768], (v10 + 313300), "Generate report failed", a4, v8 + 16, a6, a7, a8, v13);
    (*(v8 + 16))(v8, v9, v14);
  }

  else
  {
    v11 = *(v8 + 16);
    v12 = a1[5];

    v11(v12, v9, 0);
  }
}

- (void)_invalidated
{
  if (self->_invalidateCalled)
  {
    v14 = v2;
    v15 = v3;
    if (!self->_invalidateDone && !self->_wfaPublisher && ![(NSMutableDictionary *)self->_sessions count])
    {
      invalidationHandler = self->_invalidationHandler;
      if (invalidationHandler)
      {
        invalidationHandler[2]();
      }

      dataSessionStartedHandler = self->_dataSessionStartedHandler;
      self->_dataSessionStartedHandler = 0;

      dataSessionEndedHandler = self->_dataSessionEndedHandler;
      self->_dataSessionEndedHandler = 0;

      interruptionHandler = self->_interruptionHandler;
      self->_interruptionHandler = 0;

      v9 = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      pairingShowHandler = self->_pairingShowHandler;
      self->_pairingShowHandler = 0;

      receiveHandler = self->_receiveHandler;
      self->_receiveHandler = 0;

      self->_invalidateDone = 1;
      v12 = logger_4859();
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
    v3 = logger_4859();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_191EAF000, v3, OS_LOG_TYPE_DEFAULT, "Invalidate", v6, 2u);
    }

    v4 = self->_mockID;
    v5 = v4;
    if (v4)
    {
      CUNANMockRemovePublisher(v4, self);
    }

    [(NSMutableDictionary *)self->_sessions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_4898];
    [(WiFiAwarePublisher *)self->_wfaPublisher stop];
    [(CUNANPublisher *)self _invalidated];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__CUNANPublisher_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateWithCompletion:(id)completion
{
  v137 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = logger_4859();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    serviceType = self->_serviceType;
    name = self->_name;
    port = self->_port;
    v9 = CUPrintFlags(self->_trafficFlags, byte_191FFA046, 1);
    customData = self->_customData;
    if ([(NSDictionary *)self->_textInfo count])
    {
      textInfo = self->_textInfo;
    }

    else
    {
      textInfo = @"no SSI";
    }

    v19 = NSPrintF("%##@", v11, v12, v13, v14, v15, v16, v17, textInfo);
    v20 = v19;
    pairingShowHandler = self->_pairingShowHandler;
    *buf = 138413826;
    v124 = serviceType;
    if (pairingShowHandler)
    {
      v22 = "yes";
    }

    else
    {
      v22 = "no";
    }

    v125 = 2112;
    v126 = name;
    v127 = 1024;
    v128 = port;
    v129 = 2112;
    v130 = v9;
    v131 = 2112;
    v132 = customData;
    v133 = 2112;
    v134 = v19;
    v135 = 2080;
    v136 = v22;
    _os_log_impl(&dword_191EAF000, v5, OS_LOG_TYPE_DEFAULT, "Activate: serviceType=%@, name='%@', port=%d, trafficFlags=%@, customData=%@, textInfo=%@, pair=%s", buf, 0x44u);
  }

  v23 = self->_serviceType;
  if ([(NSString *)v23 length])
  {
    v30 = self->_mockID;
    if (v30)
    {
      v31 = v30;
      if (!self->_mockEndpoint)
      {
        v32 = objc_alloc_init(CUNANEndpoint);
        mockEndpoint = self->_mockEndpoint;
        self->_mockEndpoint = v32;

        [(CUNANEndpoint *)self->_mockEndpoint setCustomData:self->_customData];
        v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%llu", CUNextIDDecimal64()];
        [(CUNANEndpoint *)self->_mockEndpoint setIdentifier:v34];

        [(CUNANEndpoint *)self->_mockEndpoint setMockPeerEndpointString:self->_mockPeerEndpointString];
        [(CUNANEndpoint *)self->_mockEndpoint setName:self->_name];
        [(CUNANEndpoint *)self->_mockEndpoint setPort:self->_port];
        [(CUNANEndpoint *)self->_mockEndpoint setServiceType:self->_serviceType];
        [(CUNANEndpoint *)self->_mockEndpoint setTextInfo:self->_textInfo];
      }

      v35 = v31;
      selfCopy = self;
      os_unfair_lock_lock(&gCUNANMockLock);
      v37 = [gCUNANMockPublishers objectForKeyedSubscript:v35];
      if (!v37)
      {
        v37 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
        v38 = gCUNANMockPublishers;
        if (!gCUNANMockPublishers)
        {
          v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v40 = gCUNANMockPublishers;
          gCUNANMockPublishers = v39;

          v38 = gCUNANMockPublishers;
        }

        [v38 setObject:v37 forKeyedSubscript:v35];
      }

      [v37 addObject:selfCopy];
      mockEndpoint = [(CUNANPublisher *)selfCopy mockEndpoint];
      if (mockEndpoint)
      {
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v42 = [gCUNANMockSubscribers objectForKeyedSubscript:v35];
        v43 = [v42 countByEnumeratingWithState:&v119 objects:buf count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v120;
          do
          {
            for (i = 0; i != v44; ++i)
            {
              if (*v120 != v45)
              {
                objc_enumerationMutation(v42);
              }

              [*(*(&v119 + 1) + 8 * i) reportMockEndpointFound:mockEndpoint];
            }

            v44 = [v42 countByEnumeratingWithState:&v119 objects:buf count:16];
          }

          while (v44);
        }
      }

      os_unfair_lock_unlock(&gCUNANMockLock);

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }

      goto LABEL_76;
    }

    v55 = [objc_alloc(getWiFiAwarePublishConfigurationClass[0]()) initWithServiceName:v23];
    v56 = v55;
    controlFlags = self->_controlFlags;
    if (controlFlags)
    {
      [v55 setAuthenticationType:0];
      controlFlags = self->_controlFlags;
    }

    if ((controlFlags & 2) != 0)
    {
      automaticallyRequestInternetFromInitiators = [getWiFiAwareInternetSharingConfigurationClass_4908[0]() automaticallyRequestInternetFromInitiators];
      if (automaticallyRequestInternetFromInitiators)
      {
        [v56 setInternetSharingConfiguration:automaticallyRequestInternetFromInitiators];
      }

      v59 = logger_4859();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = "success";
        if (!automaticallyRequestInternetFromInitiators)
        {
          v60 = "failed";
        }

        *buf = 136315138;
        v124 = v60;
        _os_log_impl(&dword_191EAF000, v59, OS_LOG_TYPE_DEFAULT, "AutomaticInfraRelay: %s", buf, 0xCu);
      }
    }

    v61 = objc_alloc_init(getWiFiAwarePublishServiceSpecificInfoClass[0]());
    [v61 setInstanceName:self->_name];
    v62 = self->_customData;
    if (v62)
    {
      [v61 setBlob:v62];
    }

    v63 = self->_textInfo;
    v65 = v63;
    if (v63)
    {
      v118 = 0;
      v66 = CUTXTDataCreateWithDictionary(v63, v64, &v118);
      v67 = v118;
      v74 = v67;
      if (!v66)
      {
        if (!v67)
        {
          v74 = NSErrorWithOSStatusF(4294960596, "Encode TXT failed", v68, v69, v70, v71, v72, v73, v116);
        }

        v84 = logger_4859();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v115 = NSPrintF("%{error}", v85, v86, v87, v88, v89, v90, v91, v74);
          *buf = 138412290;
          v124 = v115;
          _os_log_error_impl(&dword_191EAF000, v84, OS_LOG_TYPE_ERROR, "### Activate failed: %@", buf, 0xCu);
        }

        if (completionCopy)
        {
          (completionCopy)[2](completionCopy, v74);
        }

        goto LABEL_75;
      }

      [v61 setTxtRecordData:v66];
    }

    [v56 setServiceSpecificInfo:v61];
    if (self->_dataPathEnabled)
    {
      trafficFlags = self->_trafficFlags;
      if ((trafficFlags & 0x800) != 0)
      {
        v76 = 2;
      }

      else
      {
        v76 = (trafficFlags & 0x63300) != 0;
      }

      if (self->_pairingShowHandler)
      {
        v77 = [objc_alloc(getWiFiAwarePairingConfigurationClass[0]()) initWithSupportedPairSetupMethods:&unk_1F06A31A8 pairingCachingEnabled:1];
        v117 = [objc_alloc(getWiFiAwarePublishDatapathSecurityConfigurationClass[0]()) initWithPairingConfiguration:v77 usingPairingDelegate:self];
        v78 = objc_alloc(getWiFiAwarePairingMetadataClass_4914[0]());
        if (self->_pairingBundleID)
        {
          pairingBundleID = self->_pairingBundleID;
        }

        else
        {
          pairingBundleID = @"com.apple.Setup";
        }

        v80 = v62;
        v81 = v76;
        v82 = [v78 initWithBundleID:pairingBundleID selfPairingName:@"Device" peerDeviceName:0 storageClass:1 lifetime:1 pairingClient:0.0];
        [v56 setPairingMetadata:v82];

        v76 = v81;
        v62 = v80;
        v83 = v117;
      }

      else
      {
        v83 = 0;
      }

      v92 = [objc_alloc(getWiFiAwarePublishDatapathConfigurationClass[0]()) initWithServiceType:v76 securityConfiguration:v83];
      v93 = v92;
      if (self->_pairingShowHandler)
      {
        [v92 setConnectionMode:2];
      }

      v94 = [objc_alloc(getWiFiAwarePublishDatapathServiceSpecificInfoClass[0]()) initWithProtocolType:0 servicePort:LOWORD(self->_port)];
      [v93 setServiceSpecificInfo:v94];
      [v56 setDatapathConfiguration:v93];
    }

    v95 = [objc_alloc(getWiFiAwarePublisherClass[0]()) initWithConfiguration:v56];
    wfaPublisher = self->_wfaPublisher;
    self->_wfaPublisher = v95;

    v103 = self->_wfaPublisher;
    if (v103)
    {
      [(WiFiAwarePublisher *)v103 setDelegate:self];
      [(WiFiAwarePublisher *)self->_wfaPublisher start];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }
    }

    else
    {
      v104 = NSErrorWithOSStatusF(4294960596, "Create WFAPublisher failed", v97, v98, v99, v100, v101, v102, v116);
      v105 = logger_4859();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        v114 = NSPrintF("%{error}", v106, v107, v108, v109, v110, v111, v112, v104);
        *buf = 138412290;
        v124 = v114;
        _os_log_error_impl(&dword_191EAF000, v105, OS_LOG_TYPE_ERROR, "### Activate failed: %@", buf, 0xCu);
      }

      if (completionCopy)
      {
        (completionCopy)[2](completionCopy, v104);
      }
    }

LABEL_75:

    v35 = 0;
    goto LABEL_76;
  }

  v35 = NSErrorWithOSStatusF(4294960591, "No service type", v24, v25, v26, v27, v28, v29, v116);
  v47 = logger_4859();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    v113 = NSPrintF("%{error}", v48, v49, v50, v51, v52, v53, v54, v35);
    *buf = 138412290;
    v124 = v113;
    _os_log_error_impl(&dword_191EAF000, v47, OS_LOG_TYPE_ERROR, "### Activate failed: %@", buf, 0xCu);
  }

  if (completionCopy)
  {
    (completionCopy)[2](completionCopy, v35);
  }

LABEL_76:
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CUNANPublisher_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)setTextInfo:(id)info
{
  infoCopy = info;
  textInfo = self->_textInfo;
  v7 = infoCopy;
  v8 = textInfo;
  v9 = v8;
  if (v8 == v7)
  {
  }

  else
  {
    if ((v7 != 0) != (v8 == 0))
    {
      v10 = [(NSDictionary *)v7 isEqual:v8];

      if (v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_textInfo, info);
    if (self->_wfaPublisher)
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __30__CUNANPublisher_setTextInfo___block_invoke;
      block[3] = &unk_1E73A4F68;
      block[4] = self;
      dispatch_async(dispatchQueue, block);
    }
  }

LABEL_9:
}

- (NSString)description
{
  serviceType = self->_serviceType;
  v11 = 0;
  NSAppendPrintF(&v11, "CUNANPublisher '%@'", v2, v3, v4, v5, v6, v7, serviceType);
  v8 = v11;

  return v8;
}

- (NSArray)dataSessions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_sessions;
  v4 = v3;
  if (v3)
  {
    allValues = [(NSMutableDictionary *)v3 allValues];
  }

  else
  {
    allValues = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(selfCopy);

  return allValues;
}

- (void)dealloc
{
  v3 = logger_4859();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_191EAF000, v3, OS_LOG_TYPE_DEBUG, "dealloc", buf, 2u);
  }

  mockID = self->_mockID;
  if (mockID)
  {
    CUNANMockRemovePublisher(mockID, self);
  }

  v5.receiver = self;
  v5.super_class = CUNANPublisher;
  [(CUNANPublisher *)&v5 dealloc];
}

- (CUNANPublisher)init
{
  v6.receiver = self;
  v6.super_class = CUNANPublisher;
  v2 = [(CUNANPublisher *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_dataPathEnabled = 1;
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v3->_dispatchQueue, CUMainQueue_sQueue);
    v4 = v3;
  }

  return v3;
}

@end