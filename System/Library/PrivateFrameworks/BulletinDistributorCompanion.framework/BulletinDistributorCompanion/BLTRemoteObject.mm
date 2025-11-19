@interface BLTRemoteObject
- (BLTRemoteObject)initWithServiceName:(id)a3 idsQueueName:(char *)a4 andClientQueue:(id)a5;
- (BOOL)_callSendCompletionHandlerWithSuccess:(BOOL)a3 identifier:(id)a4 error:(id)a5;
- (BOOL)_idsQueueCallSendCompletionHandlerWithSuccess:(BOOL)a3 identifier:(id)a4 error:(id)a5;
- (BOOL)_sequenceErrorDidHappenAndHandled:(int64_t)a3 service:(id)a4 incomingIdentifier:(id)a5;
- (NSString)description;
- (id)_wrapError:(id)a3 identifier:(id)a4;
- (unint64_t)connectionStatus;
- (void)_deviceConnectionStatusChanged:(id)a3;
- (void)_handleNewSessionState:(unint64_t)a3;
- (void)_queueHandleIDSProtobuf:(id)a3;
- (void)_queuePerformSend:(id)a3 responseToRequest:(id)a4 withTimeout:(id)a5 withDescription:(id)a6 shortDescription:(id)a7 onlyOneFor:(id)a8 allowCloudDelivery:(BOOL)a9 nonWaking:(BOOL)a10 didSend:(id)a11 andResponse:(id)a12;
- (void)_queueSendRequest:(id)a3;
- (void)_queueUpdateConnectionStatusWithResetDefaulteDevice:(BOOL)a3;
- (void)_removeAndHandleResponseHandler:(id)a3;
- (void)_sendAckInitialSequenceNumberForSession:(id)a3 withAssert:(BOOL)a4 sessionState:(unint64_t *)a5;
- (void)_setStandaloneTestModeEnabled:(BOOL)a3;
- (void)_storeProtobufAction:(SEL)a3 messageType:(unsigned __int16)a4 messageSendType:(int64_t)a5;
- (void)_updateConnectionStatusWithResetDefaulteDevice:(BOOL)a3;
- (void)dealloc;
- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)a3 maximumSendDelay:(unint64_t)a4 minimumResponseDelay:(unint64_t)a5 maximumResponseDelay:(unint64_t)a6;
- (void)handleAckInitialSequenceNumberRequest:(id)a3;
- (void)handleIDSProtobuf:(id)a3;
- (void)handleIncomingMessage:(id)a3;
- (void)sendFileURL:(id)a3 withTimeout:(id)a4 extraMetadata:(id)a5 responseHandlers:(id)a6 didSend:(id)a7 didQueue:(id)a8;
- (void)sendRequest:(id)a3;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 nearbyDevicesChanged:(id)a4;
@end

@implementation BLTRemoteObject

- (BLTRemoteObject)initWithServiceName:(id)a3 idsQueueName:(char *)a4 andClientQueue:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v47.receiver = self;
  v47.super_class = BLTRemoteObject;
  v10 = [(BLTRemoteObject *)&v47 init];
  v11 = v10;
  if (v10)
  {
    v10->_pairedDeviceReady = 1;
    v12 = [v8 copy];
    serviceName = v11->_serviceName;
    v11->_serviceName = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    idsSendIDToCompletionHandler = v11->_idsSendIDToCompletionHandler;
    v11->_idsSendIDToCompletionHandler = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    idsSendIDToResponseHandler = v11->_idsSendIDToResponseHandler;
    v11->_idsSendIDToResponseHandler = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    idsFileIDToResponseHandler = v11->_idsFileIDToResponseHandler;
    v11->_idsFileIDToResponseHandler = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_USER_INITIATED, 0);
    v22 = dispatch_queue_create(a4, v21);
    idsQueue = v11->_idsQueue;
    v11->_idsQueue = v22;

    if (!v9)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:a4];
      v25 = [v24 stringByAppendingString:@".client"];

      v26 = v25;
      v27 = [v25 UTF8String];
      v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create(v27, v28);
    }

    objc_storeStrong(&v11->_clientQueue, v9);
    v29 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    sequenceNumberSendLock = v11->_sequenceNumberSendLock;
    v11->_sequenceNumberSendLock = v29;

    v31 = [v8 stringByAppendingString:@".connectionstatusqueue"];
    v32 = v31;
    v33 = [v31 UTF8String];
    v34 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v35 = dispatch_queue_create(v33, v34);
    connectionStatusQueue = v11->_connectionStatusQueue;
    v11->_connectionStatusQueue = v35;

    v37 = [[BLTSimpleCache alloc] initWithCapacity:10];
    mruCacheOfSends = v11->_mruCacheOfSends;
    v11->_mruCacheOfSends = v37;

    v39 = [[BLTSimpleCache alloc] initWithCapacity:10];
    mruCacheOfReceives = v11->_mruCacheOfReceives;
    v11->_mruCacheOfReceives = v39;

    [(BLTRemoteObject *)v11 disableStandaloneTestMode];
    v41 = blt_ids_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = v8;
      _os_log_impl(&dword_241FB3000, v41, OS_LOG_TYPE_INFO, "Created IDS service %@", buf, 0xCu);
    }

    objc_initWeak(buf, v11);
    v42 = BLTWorkQueue();
    objc_copyWeak(&v46, buf);
    v11->_stateHandler = os_state_add_handler();

    [(BLTRemoteObject *)v11 _updateConnectionStatus];
    v43 = [MEMORY[0x277CCAB98] defaultCenter];
    [v43 addObserver:v11 selector:sel__deviceConnectionStatusChanged_ name:@"BLTIDSDeviceConnectionStatusChangedNotification" object:0];

    objc_destroyWeak(&v46);
    objc_destroyWeak(buf);
  }

  v44 = *MEMORY[0x277D85DE8];
  return v11;
}

_DWORD *__67__BLTRemoteObject_initWithServiceName_idsQueueName_andClientQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [WeakRetained description];
  v5 = BLTStateDataWithTitleAndDescription(v3, v4);

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(BLTAbstractIDSService *)self->_service removeDelegate:self];
  v4.receiver = self;
  v4.super_class = BLTRemoteObject;
  [(BLTRemoteObject *)&v4 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(BLTRemoteObject *)self mruCacheOfSends];
  v5 = [v3 appendObject:v4 withName:@"mruCacheOfSends" skipIfNil:0];

  v6 = [(BLTRemoteObject *)self mruCacheOfReceives];
  v7 = [v3 appendObject:v6 withName:@"mruCacheOfReceives" skipIfNil:0];

  v8 = [v3 appendObject:self->_serviceName withName:@"serviceName" skipIfNil:0];
  v9 = [v3 build];

  return v9;
}

- (void)_handleNewSessionState:(unint64_t)a3
{
  if (a3)
  {
    v6 = [(BLTRemoteObject *)self sequenceNumberManager];
    v5 = [v6 recvSessionIdentifier];
    [(BLTRemoteObject *)self _sendAckInitialSequenceNumberForSession:v5 sessionState:a3];
  }
}

- (BOOL)_sequenceErrorDidHappenAndHandled:(int64_t)a3 service:(id)a4 incomingIdentifier:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if ((v6 & 2) != 0)
  {
    v11 = blt_ids_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_241FB3000, v11, OS_LOG_TYPE_DEFAULT, "Detected a duplicate message!", v14, 2u);
    }

    goto LABEL_10;
  }

  if (v6)
  {
    BLTAnalyticsLogOutOfOrderMessage();
    v12 = blt_ids_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BLTRemoteObject _sequenceErrorDidHappenAndHandled:v8 service:v9 incomingIdentifier:v12];
    }

    [(BLTRemoteObject *)self _sendAssertForSession];
LABEL_10:
    v10 = 1;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)handleIDSProtobuf:(id)a3
{
  mruCacheOfReceives = self->_mruCacheOfReceives;
  v11 = a3;
  v5 = [v11 context];
  v6 = [v5 outgoingResponseIdentifier];
  v7 = [v11 context];
  v8 = [v7 incomingResponseIdentifier];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"messageType:%u", objc_msgSend(v11, "type")];
  v10 = [BLTRemoteRequestLogItem remoteRequestLogItemWithIDSTransmitIdentifier:v6 IDSResponseIdentifier:v8 requestDescription:v9 sequenceNumber:0 sessionIdentifier:0 sessionState:0];
  [(BLTSimpleCache *)mruCacheOfReceives cacheObject:v10];

  [(BLTRemoteObject *)self _queueHandleIDSProtobuf:v11];
}

- (void)_queueHandleIDSProtobuf:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_clientQueue);
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = blt_ids_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 context];
    v9 = [v8 outgoingResponseIdentifier];
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "Received message with IDS identifier: %@ and incoming response id: %@", buf, 0x16u);
  }

  v10 = [v4 isResponse];
  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 == 1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v32 = __Block_byref_object_copy_;
    v33 = __Block_byref_object_dispose_;
    v34 = 0;
    idsQueue = self->_idsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__BLTRemoteObject__queueHandleIDSProtobuf___block_invoke;
    block[3] = &unk_278D313D8;
    v26 = buf;
    block[4] = self;
    v13 = v6;
    v25 = v13;
    dispatch_sync(idsQueue, block);
    if (*(*&buf[8] + 40))
    {
      if ([(BLTRemoteObject *)self _callSendCompletionHandlerWithSuccess:1 identifier:v13 error:0])
      {
        v14 = blt_ids_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&dword_241FB3000, v14, OS_LOG_TYPE_DEFAULT, "Response arrived before IDS delegate didSendWithSuccess.", v27, 2u);
        }
      }

      v15 = blt_ids_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 136315394;
        v28 = "[BLTRemoteObject _queueHandleIDSProtobuf:]";
        v29 = 2112;
        v30 = v13;
        _os_log_impl(&dword_241FB3000, v15, OS_LOG_TYPE_DEFAULT, "%s: matched response %@, executing block", v27, 0x16u);
      }

      (*(*(*&buf[8] + 40) + 16))();
      _Block_object_dispose(buf, 8);

      goto LABEL_27;
    }

    v16 = blt_ids_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 136315394;
      v28 = "[BLTRemoteObject _queueHandleIDSProtobuf:]";
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_241FB3000, v16, OS_LOG_TYPE_DEFAULT, "%s: no ack block found for response %@, ignoring", v27, 0x16u);
    }

    _Block_object_dispose(buf, 8);
  }

  if ([v4 isResponse])
  {
    v17 = 0x10000;
  }

  else
  {
    v17 = 0;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{v17 | objc_msgSend(v4, "type")}];
  v19 = [(NSMutableDictionary *)self->_idsRequestMessageTypeToSelector objectForKeyedSubscript:v18];
  v20 = v19;
  if (v19)
  {
    ([v19 method])(self, objc_msgSend(v19, "selector"), v4);
  }

  else
  {
    v21 = blt_ids_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v4 type];
      *buf = 67109120;
      *&buf[4] = v22;
      _os_log_impl(&dword_241FB3000, v21, OS_LOG_TYPE_DEFAULT, "No method registered for message with type: %d", buf, 8u);
    }
  }

LABEL_27:
  v23 = *MEMORY[0x277D85DE8];
}

void __43__BLTRemoteObject__queueHandleIDSProtobuf___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(a1[6] + 8) + 40))
  {
    v5 = a1[5];
    v6 = *(a1[4] + 16);

    [v6 removeObjectForKey:v5];
  }
}

- (void)handleIncomingMessage:(id)a3
{
  v4 = a3;
  v5 = [BLTPBProtobuf alloc];
  v6 = [(BLTRemoteObject *)self sequenceNumberManager];
  v7 = [(BLTPBProtobuf *)v5 initWithIDSProtobuf:v4 sequenceNumberManager:v6];

  if (v7)
  {
    v25 = v4;
    v8 = [v4 transportData];
    mruCacheOfReceives = self->_mruCacheOfReceives;
    v9 = [(BLTPBProtobuf *)v7 context];
    v10 = [v9 outgoingResponseIdentifier];
    v11 = [(BLTPBProtobuf *)v7 context];
    v12 = [v11 incomingResponseIdentifier];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"messageType:%u", -[BLTPBProtobuf type](v7, "type")];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v8, "sequenceNumber")}];
    v15 = sessionUUIDFromTransportData(v8);
    v24 = v8;
    v16 = +[BLTRemoteRequestLogItem remoteRequestLogItemWithIDSTransmitIdentifier:IDSResponseIdentifier:requestDescription:sequenceNumber:sessionIdentifier:sessionState:](BLTRemoteRequestLogItem, "remoteRequestLogItemWithIDSTransmitIdentifier:IDSResponseIdentifier:requestDescription:sequenceNumber:sessionIdentifier:sessionState:", v10, v12, v13, v14, v15, [v8 sessionState]);
    [(BLTSimpleCache *)mruCacheOfReceives cacheObject:v16];

    [(BLTRemoteObject *)self _handleNewSessionState:[(BLTPBProtobuf *)v7 sessionState]];
    v17 = [(BLTPBProtobuf *)v7 sequenceNumberError];
    v18 = [(BLTPBProtobuf *)v7 context];
    v19 = [v18 serviceIdentifier];
    v20 = [(BLTPBProtobuf *)v7 context];
    v21 = [v20 outgoingResponseIdentifier];
    LOBYTE(v17) = [(BLTRemoteObject *)self _sequenceErrorDidHappenAndHandled:v17 service:v19 incomingIdentifier:v21];

    if ((v17 & 1) == 0)
    {
      clientQueue = self->_clientQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__BLTRemoteObject_handleIncomingMessage___block_invoke;
      block[3] = &unk_278D31400;
      block[4] = self;
      v27 = v7;
      dispatch_async(clientQueue, block);
    }

    v4 = v25;
  }
}

- (void)_sendAckInitialSequenceNumberForSession:(id)a3 withAssert:(BOOL)a4 sessionState:(unint64_t *)a5
{
  v6 = a4;
  v13[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_alloc_init(BLTPBAckInitialSequenceNumberRequest);
  if (v8)
  {
    v13[0] = 0;
    v13[1] = 0;
    [v8 getUUIDBytes:v13];
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:16];
    [(BLTPBAckInitialSequenceNumberRequest *)v9 setSessionIdentifier:v10];
  }

  if (v6)
  {
    [(BLTPBAckInitialSequenceNumberRequest *)v9 setAssert:1];
  }

  if (a5)
  {
    [(BLTPBAckInitialSequenceNumberRequest *)v9 setSessionState:*a5];
  }

  v11 = [BLTRemoteRequest remoteRequestWithProtobuf:v9 type:12];
  [(BLTRemoteObject *)self _queueSendRequest:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleAckInitialSequenceNumberRequest:(id)a3
{
  v4 = a3;
  v5 = [BLTPBAckInitialSequenceNumberRequest alloc];
  v6 = [v4 data];

  v15 = [(BLTPBAckInitialSequenceNumberRequest *)v5 initWithData:v6];
  if (![(BLTPBAckInitialSequenceNumberRequest *)v15 hasSessionIdentifier])
  {
    v9 = [(BLTRemoteObject *)self sequenceNumberManager];
    [v9 setSessionState:0];
    goto LABEL_8;
  }

  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = [(BLTPBAckInitialSequenceNumberRequest *)v15 sessionIdentifier];
  v9 = [v7 initWithUUIDBytes:{objc_msgSend(v8, "bytes")}];

  v10 = [(BLTRemoteObject *)self sequenceNumberManager];
  v11 = [v10 currentSessionIdentifier];
  v12 = [v9 isEqual:v11];

  if (!v12)
  {
    v13 = 1;
    goto LABEL_7;
  }

  if ([(BLTPBAckInitialSequenceNumberRequest *)v15 sessionState]== 1)
  {
    v13 = 2;
LABEL_7:
    v14 = [(BLTRemoteObject *)self sequenceNumberManager];
    [v14 setSessionState:v13];

    goto LABEL_8;
  }

  if ([(BLTPBAckInitialSequenceNumberRequest *)v15 sessionState]== 2)
  {
    v13 = 0;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_storeProtobufAction:(SEL)a3 messageType:(unsigned __int16)a4 messageSendType:(int64_t)a5
{
  v6 = a4;
  v10 = objc_alloc_init(BLTPBSelectorItem);
  [(BLTPBSelectorItem *)v10 setSelector:a3];
  [(BLTPBSelectorItem *)v10 setMethod:[(BLTRemoteObject *)self methodForSelector:a3]];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v6 | (a5 << 16)];
  [(NSMutableDictionary *)self->_idsRequestMessageTypeToSelector setObject:v10 forKeyedSubscript:v9];
}

- (unint64_t)connectionStatus
{
  connectionStatusQueue = self->_connectionStatusQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__BLTRemoteObject_connectionStatus__block_invoke;
  block[3] = &unk_278D31428;
  block[4] = self;
  dispatch_sync(connectionStatusQueue, block);
  return [(BLTRemoteObject *)self lastKnownConnectionStatus];
}

- (void)_updateConnectionStatusWithResetDefaulteDevice:(BOOL)a3
{
  connectionStatusQueue = self->_connectionStatusQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__BLTRemoteObject__updateConnectionStatusWithResetDefaulteDevice___block_invoke;
  v4[3] = &unk_278D31450;
  v4[4] = self;
  v5 = a3;
  dispatch_async(connectionStatusQueue, v4);
}

- (void)_queueUpdateConnectionStatusWithResetDefaulteDevice:(BOOL)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3 || (v4 = self->_defaultPairedDevice) == 0)
  {
    v5 = [(BLTRemoteObject *)self service];
    v6 = [v5 defaultPairedDevice];
    defaultPairedDevice = self->_defaultPairedDevice;
    self->_defaultPairedDevice = v6;

    v8 = blt_ids_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = self->_defaultPairedDevice;
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_INFO, "Found default paired device %@", &v16, 0xCu);
    }

    v4 = self->_defaultPairedDevice;
  }

  if (([(BLTAbstractIDSDevice *)v4 isNearby]& 1) != 0)
  {
    v10 = 1;
  }

  else if (([(BLTAbstractIDSDevice *)self->_defaultPairedDevice isConnected]& 1) != 0)
  {
    v10 = 2;
  }

  else if ([(BLTAbstractIDSDevice *)self->_defaultPairedDevice isCloudReachable])
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  v11 = blt_ids_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = off_278D31628[v10];
    v13 = [(BLTRemoteObject *)self lastKnownConnectionStatus];
    if (v13 > 3)
    {
      v14 = "unknown";
    }

    else
    {
      v14 = off_278D31628[v13];
    }

    v16 = 136315394;
    v17 = v12;
    v18 = 2080;
    v19 = v14;
    _os_log_impl(&dword_241FB3000, v11, OS_LOG_TYPE_DEFAULT, "Default paired device connection status: %s last known status: %s", &v16, 0x16u);
  }

  if (v10 != [(BLTRemoteObject *)self lastKnownConnectionStatus])
  {
    [(BLTRemoteObject *)self setLastKnownConnectionStatus:v10];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)a3 maximumSendDelay:(unint64_t)a4 minimumResponseDelay:(unint64_t)a5 maximumResponseDelay:(unint64_t)a6
{
  [(BLTRemoteObject *)self _setStandaloneTestModeEnabled:1];
  v11 = self->_service;
  [(BLTAbstractIDSService *)v11 setMinimumSendDelay:a3];
  [(BLTAbstractIDSService *)v11 setMaximumSendDelay:a4];
  [(BLTAbstractIDSService *)v11 setMinimumResponseDelay:a5];
  [(BLTAbstractIDSService *)v11 setMaximumResponseDelay:a6];
}

- (void)_setStandaloneTestModeEnabled:(BOOL)a3
{
  v3 = a3;
  connectionStatusQueue = self->_connectionStatusQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BLTRemoteObject__setStandaloneTestModeEnabled___block_invoke;
  block[3] = &unk_278D31428;
  block[4] = self;
  dispatch_sync(connectionStatusQueue, block);
  service = self->_service;
  if (service)
  {
    [(BLTAbstractIDSService *)service removeDelegate:self];
  }

  serviceName = self->_serviceName;
  if (v3)
  {
    v8 = [(NSString *)serviceName stringByAppendingString:@".test"];
    v9 = off_278D30E68;
  }

  else
  {
    v8 = serviceName;
    v9 = off_278D30B18;
  }

  v10 = [objc_alloc(*v9) initWithService:v8];
  v11 = self->_service;
  self->_service = v10;

  v12 = [BLTPBProtobufSequenceNumberManager alloc];
  v13 = -[BLTPBProtobufSequenceNumberManager initWithServiceName:updateSequenceNumbersOnOutOfOrder:](v12, "initWithServiceName:updateSequenceNumbersOnOutOfOrder:", v8, [MEMORY[0x277D2BCC8] activePairedDeviceSupportsNotSendingTemporarySequenceNumbers] ^ 1);
  sequenceNumberManager = self->_sequenceNumberManager;
  self->_sequenceNumberManager = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  idsRequestMessageTypeToSelector = self->_idsRequestMessageTypeToSelector;
  self->_idsRequestMessageTypeToSelector = v15;

  [(BLTRemoteObject *)self setProtobufAction:sel_handleAckInitialSequenceNumberRequest_ forIncomingRequestsOfType:12];
  [(BLTRemoteObject *)self registerProtobufHandlers];
  [(BLTAbstractIDSService *)self->_service addDelegate:self queue:self->_idsQueue];
}

void __49__BLTRemoteObject__setStandaloneTestModeEnabled___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  *(v1 + 56) = 0;
}

- (void)sendRequest:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_idsQueue);
  idsQueue = self->_idsQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__BLTRemoteObject_sendRequest___block_invoke;
  v7[3] = &unk_278D31400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(idsQueue, v7);
}

- (void)_queuePerformSend:(id)a3 responseToRequest:(id)a4 withTimeout:(id)a5 withDescription:(id)a6 shortDescription:(id)a7 onlyOneFor:(id)a8 allowCloudDelivery:(BOOL)a9 nonWaking:(BOOL)a10 didSend:(id)a11 andResponse:(id)a12
{
  v84 = *MEMORY[0x277D85DE8];
  v59 = a3;
  v18 = a4;
  v19 = a5;
  v61 = a6;
  v58 = a7;
  v63 = a8;
  v20 = a11;
  v21 = a12;
  dispatch_assert_queue_V2(self->_idsQueue);
  v22 = "response";
  v62 = v18;
  if (!v18)
  {
    v22 = "request";
  }

  v23 = [MEMORY[0x277CBEB38] dictionary];
  if (v19)
  {
    v24 = *MEMORY[0x277D18828];
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v26 = [v19 compare:v25];

    if (v26 == 1)
    {
      v27 = blt_ids_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        [v19 doubleValue];
        *buf = 134218240;
        *&buf[4] = v28;
        *&buf[12] = 2048;
        *&buf[14] = v24;
        _os_log_impl(&dword_241FB3000, v27, OS_LOG_TYPE_INFO, "Timeout: %f is greater than IDS max: %f and will be clamped to max", buf, 0x16u);
      }

      v29 = [MEMORY[0x277CCABB0] numberWithDouble:v24];

      v30 = v29;
    }

    else
    {
      v30 = v19;
    }

    v32 = *MEMORY[0x277D18650];
    v57 = v30;
    [v23 setObject:? forKeyedSubscript:?];
    [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185A0]];
    v31 = "remote timeout is ENFORCED";
  }

  else
  {
    v57 = 0;
    v31 = "";
  }

  if (v63)
  {
    [v23 setObject:v63 forKeyedSubscript:*MEMORY[0x277D18630]];
  }

  if (v18)
  {
    v33 = [v18 context];
    v34 = [v33 outgoingResponseIdentifier];
    [v23 setObject:v34 forKeyedSubscript:*MEMORY[0x277D18610]];
  }

  v35 = [MEMORY[0x277CCABB0] numberWithBool:a9];
  [v23 setObject:v35 forKeyedSubscript:*MEMORY[0x277D18568]];

  if (a10)
  {
    [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18600]];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3020000000;
  v83 = 0;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __160__BLTRemoteObject__queuePerformSend_responseToRequest_withTimeout_withDescription_shortDescription_onlyOneFor_allowCloudDelivery_nonWaking_didSend_andResponse___block_invoke;
  v71[3] = &unk_278D314A0;
  v36 = v21;
  v72 = v36;
  v73 = buf;
  v71[4] = self;
  v37 = MEMORY[0x245D067A0](v71);
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __160__BLTRemoteObject__queuePerformSend_responseToRequest_withTimeout_withDescription_shortDescription_onlyOneFor_allowCloudDelivery_nonWaking_didSend_andResponse___block_invoke_3;
  v67[3] = &unk_278D31518;
  v55 = v20;
  v67[4] = self;
  v68 = v55;
  v56 = v36;
  v69 = v56;
  v38 = v37;
  v70 = v38;
  v60 = MEMORY[0x245D067A0](v67);
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v39 = v59[2](v59, v23, &v66, &v65, &v64);
  v40 = v66;
  v41 = v65;
  v42 = v64;
  if (v40)
  {
    v43 = 0;
  }

  else
  {
    v43 = v39;
  }

  if (v43)
  {
    v44 = MEMORY[0x245D067A0](v60);
    [(NSMutableDictionary *)self->_idsSendIDToCompletionHandler setObject:v44 forKeyedSubscript:v41];

    v45 = MEMORY[0x245D067A0](v38);
    [(NSMutableDictionary *)self->_idsSendIDToResponseHandler setObject:v45 forKeyedSubscript:v41];
  }

  else
  {
    _BLTLogIDSSendFail([(BLTRemoteObject *)self isPairedDeviceReady], v40, v41);
    if ([v40 code] == 27)
    {
      self->_full = 1;
    }

    v46 = [(BLTRemoteObject *)self _wrapError:v40 identifier:v41];
    (v60)[2](v60, v39, v46);

    (*(v38 + 2))(v38, 0);
  }

  v47 = blt_ids_log();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *v74 = 136315906;
    v75 = v54;
    v76 = 2112;
    v77 = v61;
    v78 = 2112;
    v79 = v41;
    v80 = 2080;
    v81 = v31;
    _os_log_impl(&dword_241FB3000, v47, OS_LOG_TYPE_DEFAULT, "Sent IDS %s %@ got identifier: %@ %s", v74, 0x2Au);
  }

  mruCacheOfSends = self->_mruCacheOfSends;
  v49 = [v23 objectForKeyedSubscript:*MEMORY[0x277D18610]];
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v42, "sequenceNumber")}];
  v51 = sessionUUIDFromTransportData(v42);
  v52 = +[BLTRemoteRequestLogItem remoteRequestLogItemWithIDSTransmitIdentifier:IDSResponseIdentifier:requestDescription:sequenceNumber:sessionIdentifier:sessionState:](BLTRemoteRequestLogItem, "remoteRequestLogItemWithIDSTransmitIdentifier:IDSResponseIdentifier:requestDescription:sequenceNumber:sessionIdentifier:sessionState:", v41, v49, v61, v50, v51, [v42 sessionState]);
  [(BLTSimpleCache *)mruCacheOfSends cacheObject:v52];

  _Block_object_dispose(buf, 8);
  v53 = *MEMORY[0x277D85DE8];
}

void __160__BLTRemoteObject__queuePerformSend_responseToRequest_withTimeout_withDescription_shortDescription_onlyOneFor_allowCloudDelivery_nonWaking_didSend_andResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) && (atomic_fetch_or((*(*(a1 + 48) + 8) + 40), 1u) & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 104);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __160__BLTRemoteObject__queuePerformSend_responseToRequest_withTimeout_withDescription_shortDescription_onlyOneFor_allowCloudDelivery_nonWaking_didSend_andResponse___block_invoke_2;
    v5[3] = &unk_278D31478;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

void __160__BLTRemoteObject__queuePerformSend_responseToRequest_withTimeout_withDescription_shortDescription_onlyOneFor_allowCloudDelivery_nonWaking_didSend_andResponse___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 104);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __160__BLTRemoteObject__queuePerformSend_responseToRequest_withTimeout_withDescription_shortDescription_onlyOneFor_allowCloudDelivery_nonWaking_didSend_andResponse___block_invoke_4;
    block[3] = &unk_278D314C8;
    v14 = v6;
    v15 = a2;
    v13 = v5;
    dispatch_async(v7, block);
  }

  if (a2 && *(a1 + 48))
  {
    v8 = dispatch_time(0, 30000000000);
    v9 = *(*(a1 + 32) + 104);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __160__BLTRemoteObject__queuePerformSend_responseToRequest_withTimeout_withDescription_shortDescription_onlyOneFor_allowCloudDelivery_nonWaking_didSend_andResponse___block_invoke_5;
    v10[3] = &unk_278D314F0;
    v11 = *(a1 + 56);
    dispatch_after(v8, v9, v10);
  }
}

- (id)_wrapError:(id)a3 identifier:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v5 = a4;
    v6 = v4;
    v7 = [v6 userInfo];
    v8 = [v7 mutableCopy];

    [v8 setObject:v5 forKeyedSubscript:@"BLTTransportSendIdentifier"];
    v9 = MEMORY[0x277CCA9B8];
    v10 = [v6 domain];
    v11 = [v6 code];

    v4 = [v9 errorWithDomain:v10 code:v11 userInfo:v8];
  }

  return v4;
}

- (void)_queueSendRequest:(id)a3
{
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = [v4 protobuf];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __37__BLTRemoteObject__queueSendRequest___block_invoke;
  v27[3] = &unk_278D31540;
  v25 = self;
  v27[4] = self;
  v6 = v5;
  v28 = v6;
  v7 = v4;
  v29 = v7;
  v24 = [v7 responseToRequest];
  v23 = [v7 timeout];
  v8 = [v7 requestDescription];
  v9 = v8;
  if (!v8)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v21 = [v6 redact];
    v22 = v12;
    v9 = [v10 stringWithFormat:@"%@: %@", v12, v21];
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v7 uniqueID];
  v16 = [v7 allowCloudDelivery];
  v17 = [v7 nonWaking];
  v18 = [v7 didSend];
  v19 = [v7 responseCompletion];
  BYTE1(v20) = v17;
  LOBYTE(v20) = v16;
  [(BLTRemoteObject *)v25 _queuePerformSend:v27 responseToRequest:v24 withTimeout:v23 withDescription:v9 shortDescription:v14 onlyOneFor:v15 allowCloudDelivery:v20 nonWaking:v18 didSend:v19 andResponse:?];

  if (!v8)
  {
  }

  objc_autoreleasePoolPop(context);
}

uint64_t __37__BLTRemoteObject__queueSendRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = a2;
  [*(*(a1 + 32) + 72) lock];
  context = objc_autoreleasePoolPush();
  v7 = [BLTPBProtobuf alloc];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) type];
  v10 = [*(a1 + 48) responseToRequest];
  v11 = [*(a1 + 32) sequenceNumberManager];
  v12 = [(BLTPBProtobuf *)v7 initWithProtobuf:v8 type:v9 isResponse:v10 != 0 sequenceNumberManager:v11];

  v13 = [(IDSProtobuf *)v12 transportData];
  v14 = [*(a1 + 32) service];
  v15 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]];
  v29 = 0;
  v30 = 0;
  v16 = [v14 sendProtobuf:v12 toDestinations:v15 priority:300 options:v6 identifier:&v30 error:&v29];
  v17 = v30;
  v18 = v29;

  objc_autoreleasePoolPop(context);
  [*(*(a1 + 32) + 72) unlock];
  v19 = [*(a1 + 48) didQueue];

  if (v19)
  {
    v20 = [*(a1 + 48) didQueue];
    v20[2]();
  }

  if (a3)
  {
    v21 = v18;
    *a3 = v18;
  }

  if (a4)
  {
    v22 = v17;
    *a4 = v17;
  }

  if (a5)
  {
    v23 = v13;
    *a5 = v13;
  }

  return v16;
}

- (void)sendFileURL:(id)a3 withTimeout:(id)a4 extraMetadata:(id)a5 responseHandlers:(id)a6 didSend:(id)a7 didQueue:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  idsQueue = self->_idsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__BLTRemoteObject_sendFileURL_withTimeout_extraMetadata_responseHandlers_didSend_didQueue___block_invoke;
  block[3] = &unk_278D31590;
  block[4] = self;
  v28 = v16;
  v29 = v14;
  v30 = v17;
  v31 = v15;
  v32 = v19;
  v33 = v18;
  v21 = v18;
  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v14;
  v26 = v16;
  dispatch_sync(idsQueue, block);
}

void __91__BLTRemoteObject_sendFileURL_withTimeout_extraMetadata_responseHandlers_didSend_didQueue___block_invoke(uint64_t a1)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__BLTRemoteObject_sendFileURL_withTimeout_extraMetadata_responseHandlers_didSend_didQueue___block_invoke_2;
  v11[3] = &unk_278D31568;
  v10 = *(a1 + 32);
  v2 = *(&v10 + 1);
  v3 = *(a1 + 48);
  v14 = *(a1 + 72);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v12 = v10;
  v13 = v5;
  v6 = *(a1 + 64);
  v7 = [*(a1 + 48) absoluteString];
  v8 = [*(a1 + 48) relativeString];
  LOWORD(v9) = 1;
  [v10 _queuePerformSend:v11 responseToRequest:0 withTimeout:v6 withDescription:v7 shortDescription:v8 onlyOneFor:0 allowCloudDelivery:v9 nonWaking:*(a1 + 80) didSend:0 andResponse:?];
}

uint64_t __91__BLTRemoteObject_sendFileURL_withTimeout_extraMetadata_responseHandlers_didSend_didQueue___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = a2;
  [*(*(a1 + 32) + 72) lock];
  v7 = objc_autoreleasePoolPush();
  v8 = [BLTPBFileURLMetaData alloc];
  v9 = [*(a1 + 32) sequenceNumberManager];
  v10 = [(BLTPBFileURLMetaData *)v8 initWithSequenceNumberManager:v9 extraMetadata:*(a1 + 40)];

  v11 = [(BLTPBFileURLMetaData *)v10 transportData];
  v12 = [*(a1 + 32) service];
  v13 = *(a1 + 48);
  v14 = [(BLTPBFileURLMetaData *)v10 metadata];
  v15 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]];
  v29 = 0;
  v30 = 0;
  v28 = v6;
  v16 = [v12 sendResourceAtURL:v13 metadata:v14 toDestinations:v15 priority:300 options:v6 identifier:&v30 error:&v29];
  v17 = v30;
  v18 = v29;

  objc_autoreleasePoolPop(v7);
  [*(*(a1 + 32) + 72) unlock];
  v19 = *(a1 + 64);
  if (v19)
  {
    (*(v19 + 16))();
  }

  if (a3)
  {
    v20 = v18;
    *a3 = v18;
  }

  if (a4)
  {
    v21 = v17;
    *a4 = v17;
  }

  if (a5)
  {
    v22 = v11;
    *a5 = v11;
  }

  if (v18)
  {
    v23 = 0;
  }

  else
  {
    v23 = v16;
  }

  if (v23 == 1 && *(a1 + 56))
  {
    [*(*(a1 + 32) + 16) addEntriesFromDictionary:?];
    [*(*(a1 + 32) + 24) setObject:*(a1 + 56) forKeyedSubscript:v17];
  }

  return v16;
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v5 = blt_ids_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "Devices changed!", v6, 2u);
  }

  [(BLTRemoteObject *)self _updateConnectionStatusWithResetDefaulteDevice:1];
}

- (void)service:(id)a3 nearbyDevicesChanged:(id)a4
{
  v5 = blt_ids_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "Nearby devices changed!", v6, 2u);
  }

  [(BLTRemoteObject *)self _updateConnectionStatusWithResetDefaulteDevice:1];
}

- (void)_deviceConnectionStatusChanged:(id)a3
{
  v4 = blt_ids_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_DEFAULT, "Device connection status changed!", v5, 2u);
  }

  [(BLTRemoteObject *)self _updateConnectionStatus];
}

- (void)_removeAndHandleResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_idsSendIDToResponseHandler objectForKeyedSubscript:v4];
  if (v5)
  {
    [(NSMutableDictionary *)self->_idsSendIDToResponseHandler removeObjectForKey:v4];
    clientQueue = self->_clientQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__BLTRemoteObject__removeAndHandleResponseHandler___block_invoke;
    block[3] = &unk_278D314F0;
    v8 = v5;
    dispatch_async(clientQueue, block);
  }
}

- (BOOL)_idsQueueCallSendCompletionHandlerWithSuccess:(BOOL)a3 identifier:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_idsSendIDToCompletionHandler objectForKeyedSubscript:v8];
  if (v10)
  {
    [(NSMutableDictionary *)self->_idsSendIDToCompletionHandler removeObjectForKey:v8];
    clientQueue = self->_clientQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__BLTRemoteObject__idsQueueCallSendCompletionHandlerWithSuccess_identifier_error___block_invoke;
    block[3] = &unk_278D315B8;
    v17 = a3;
    v16 = v10;
    block[4] = self;
    v14 = v9;
    v15 = v8;
    dispatch_async(clientQueue, block);
  }

  return v10 != 0;
}

void __82__BLTRemoteObject__idsQueueCallSendCompletionHandlerWithSuccess_identifier_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) _wrapError:*(a1 + 40) identifier:*(a1 + 48)];
  (*(v2 + 16))(v2, v1, v3);
}

- (BOOL)_callSendCompletionHandlerWithSuccess:(BOOL)a3 identifier:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  idsQueue = self->_idsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__BLTRemoteObject__callSendCompletionHandlerWithSuccess_identifier_error___block_invoke;
  block[3] = &unk_278D315E0;
  v18 = a3;
  block[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = &v19;
  v11 = v9;
  v12 = v8;
  dispatch_sync(idsQueue, block);
  LOBYTE(idsQueue) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return idsQueue;
}

uint64_t __74__BLTRemoteObject__callSendCompletionHandlerWithSuccess_identifier_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _idsQueueCallSendCompletionHandlerWithSuccess:*(a1 + 64) identifier:*(a1 + 40) error:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v64 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v43 = a4;
  v45 = a5;
  v46 = a6;
  v44 = a7;
  v14 = a8;
  v15 = [BLTPBFileURLMetaData alloc];
  v16 = [(BLTRemoteObject *)self sequenceNumberManager];
  v17 = [(BLTPBFileURLMetaData *)v15 initWithMetadata:v46 sequenceNumberManager:v16];

  if (v17)
  {
    v47 = [(BLTPBFileURLMetaData *)v17 transportData];
    mruCacheOfReceives = self->_mruCacheOfReceives;
    v19 = [v14 outgoingResponseIdentifier];
    v20 = [v14 incomingResponseIdentifier];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"incomingResource:%@", v45];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v47, "sequenceNumber")}];
    v23 = sessionUUIDFromTransportData(v47);
    v24 = +[BLTRemoteRequestLogItem remoteRequestLogItemWithIDSTransmitIdentifier:IDSResponseIdentifier:requestDescription:sequenceNumber:sessionIdentifier:sessionState:](BLTRemoteRequestLogItem, "remoteRequestLogItemWithIDSTransmitIdentifier:IDSResponseIdentifier:requestDescription:sequenceNumber:sessionIdentifier:sessionState:", v19, v20, v21, v22, v23, [v47 sessionState]);
    [(BLTSimpleCache *)mruCacheOfReceives cacheObject:v24];

    [(BLTRemoteObject *)self _handleNewSessionState:[(BLTPBFileURLMetaData *)v17 sessionState]];
    v25 = [(BLTPBFileURLMetaData *)v17 sequenceNumberError];
    v26 = [v14 serviceIdentifier];
    v27 = [v14 outgoingResponseIdentifier];
    LOBYTE(v25) = [(BLTRemoteObject *)self _sequenceErrorDidHappenAndHandled:v25 service:v26 incomingIdentifier:v27];

    if ((v25 & 1) == 0)
    {
      v28 = blt_ids_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v14 outgoingResponseIdentifier];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v29;
        _os_log_impl(&dword_241FB3000, v28, OS_LOG_TYPE_DEFAULT, "Received resource with IDS identifier: %@", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v60 = 0x3032000000;
      v61 = __Block_byref_object_copy__263;
      v62 = __Block_byref_object_dispose__264;
      v63 = 0;
      v30 = MEMORY[0x277CCACA8];
      v31 = [v14 serviceIdentifier];
      v32 = [v14 outgoingResponseIdentifier];
      v33 = [v30 stringWithFormat:@"%@:%@", v31, v32];
      v34 = BLTFileURLInPairingPath(v33);

      if (v34 && ([MEMORY[0x277CCAA00] defaultManager], v35 = objc_claimAutoreleasedReturnValue(), v36 = *(&buf + 1), obj = *(*(&buf + 1) + 40), v37 = objc_msgSend(v35, "copyItemAtURL:toURL:error:", v45, v34, &obj), objc_storeStrong((v36 + 40), obj), v35, (v37 & 1) != 0))
      {
        clientQueue = self->_clientQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __81__BLTRemoteObject_service_account_incomingResourceAtURL_metadata_fromID_context___block_invoke;
        block[3] = &unk_278D31608;
        block[4] = self;
        v49 = v34;
        v50 = v17;
        p_buf = &buf;
        dispatch_async(clientQueue, block);
      }

      else
      {
        v39 = blt_ids_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v41 = *(*(&buf + 1) + 40);
          *v53 = 138412802;
          v54 = v45;
          v55 = 2112;
          v56 = v34;
          v57 = 2112;
          v58 = v41;
          _os_log_error_impl(&dword_241FB3000, v39, OS_LOG_TYPE_ERROR, "Error creating link for incoming URL: %@ at %@ error: %@", v53, 0x20u);
        }
      }

      _Block_object_dispose(&buf, 8);
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __81__BLTRemoteObject_service_account_incomingResourceAtURL_metadata_fromID_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) extraMetadata];
  [v2 handleFileURL:v4 extraMetadata:v5];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = *v3;
  v9 = *(a1 + 56);
  v8 = a1 + 56;
  v10 = *(v9 + 8);
  obj = *(v10 + 40);
  LOBYTE(v5) = [v6 removeItemAtURL:v7 error:&obj];
  objc_storeStrong((v10 + 40), obj);

  if ((v5 & 1) == 0)
  {
    v11 = blt_ids_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __81__BLTRemoteObject_service_account_incomingResourceAtURL_metadata_fromID_context___block_invoke_cold_1(v3, v8, v11);
    }
  }
}

- (void)_sequenceErrorDidHappenAndHandled:(uint64_t)a1 service:(uint64_t)a2 incomingIdentifier:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0(&dword_241FB3000, a2, a3, "Out of order message received from IDS on %@ with identifer %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __81__BLTRemoteObject_service_account_incomingResourceAtURL_metadata_fromID_context___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = *(*(*a2 + 8) + 40);
  OUTLINED_FUNCTION_0(&dword_241FB3000, a2, a3, "Error removing %@ error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end