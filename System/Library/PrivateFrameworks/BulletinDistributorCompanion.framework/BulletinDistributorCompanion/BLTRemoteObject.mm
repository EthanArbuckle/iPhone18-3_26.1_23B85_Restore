@interface BLTRemoteObject
- (BLTRemoteObject)initWithServiceName:(id)name idsQueueName:(char *)queueName andClientQueue:(id)queue;
- (BOOL)_callSendCompletionHandlerWithSuccess:(BOOL)success identifier:(id)identifier error:(id)error;
- (BOOL)_idsQueueCallSendCompletionHandlerWithSuccess:(BOOL)success identifier:(id)identifier error:(id)error;
- (BOOL)_sequenceErrorDidHappenAndHandled:(int64_t)handled service:(id)service incomingIdentifier:(id)identifier;
- (NSString)description;
- (id)_wrapError:(id)error identifier:(id)identifier;
- (unint64_t)connectionStatus;
- (void)_deviceConnectionStatusChanged:(id)changed;
- (void)_handleNewSessionState:(unint64_t)state;
- (void)_queueHandleIDSProtobuf:(id)protobuf;
- (void)_queuePerformSend:(id)send responseToRequest:(id)request withTimeout:(id)timeout withDescription:(id)description shortDescription:(id)shortDescription onlyOneFor:(id)for allowCloudDelivery:(BOOL)delivery nonWaking:(BOOL)self0 didSend:(id)self1 andResponse:(id)self2;
- (void)_queueSendRequest:(id)request;
- (void)_queueUpdateConnectionStatusWithResetDefaulteDevice:(BOOL)device;
- (void)_removeAndHandleResponseHandler:(id)handler;
- (void)_sendAckInitialSequenceNumberForSession:(id)session withAssert:(BOOL)assert sessionState:(unint64_t *)state;
- (void)_setStandaloneTestModeEnabled:(BOOL)enabled;
- (void)_storeProtobufAction:(SEL)action messageType:(unsigned __int16)type messageSendType:(int64_t)sendType;
- (void)_updateConnectionStatusWithResetDefaulteDevice:(BOOL)device;
- (void)dealloc;
- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)delay maximumSendDelay:(unint64_t)sendDelay minimumResponseDelay:(unint64_t)responseDelay maximumResponseDelay:(unint64_t)maximumResponseDelay;
- (void)handleAckInitialSequenceNumberRequest:(id)request;
- (void)handleIDSProtobuf:(id)protobuf;
- (void)handleIncomingMessage:(id)message;
- (void)sendFileURL:(id)l withTimeout:(id)timeout extraMetadata:(id)metadata responseHandlers:(id)handlers didSend:(id)send didQueue:(id)queue;
- (void)sendRequest:(id)request;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
@end

@implementation BLTRemoteObject

- (BLTRemoteObject)initWithServiceName:(id)name idsQueueName:(char *)queueName andClientQueue:(id)queue
{
  v50 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  queueCopy = queue;
  v47.receiver = self;
  v47.super_class = BLTRemoteObject;
  v10 = [(BLTRemoteObject *)&v47 init];
  v11 = v10;
  if (v10)
  {
    v10->_pairedDeviceReady = 1;
    v12 = [nameCopy copy];
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
    v22 = dispatch_queue_create(queueName, v21);
    idsQueue = v11->_idsQueue;
    v11->_idsQueue = v22;

    if (!queueCopy)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:queueName];
      v25 = [v24 stringByAppendingString:@".client"];

      v26 = v25;
      uTF8String = [v25 UTF8String];
      v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      queueCopy = dispatch_queue_create(uTF8String, v28);
    }

    objc_storeStrong(&v11->_clientQueue, queueCopy);
    v29 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    sequenceNumberSendLock = v11->_sequenceNumberSendLock;
    v11->_sequenceNumberSendLock = v29;

    v31 = [nameCopy stringByAppendingString:@".connectionstatusqueue"];
    v32 = v31;
    uTF8String2 = [v31 UTF8String];
    v34 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v35 = dispatch_queue_create(uTF8String2, v34);
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
      v49 = nameCopy;
      _os_log_impl(&dword_241FB3000, v41, OS_LOG_TYPE_INFO, "Created IDS service %@", buf, 0xCu);
    }

    objc_initWeak(buf, v11);
    v42 = BLTWorkQueue();
    objc_copyWeak(&v46, buf);
    v11->_stateHandler = os_state_add_handler();

    [(BLTRemoteObject *)v11 _updateConnectionStatus];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__deviceConnectionStatusChanged_ name:@"BLTIDSDeviceConnectionStatusChangedNotification" object:0];

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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(BLTAbstractIDSService *)self->_service removeDelegate:self];
  v4.receiver = self;
  v4.super_class = BLTRemoteObject;
  [(BLTRemoteObject *)&v4 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  mruCacheOfSends = [(BLTRemoteObject *)self mruCacheOfSends];
  v5 = [v3 appendObject:mruCacheOfSends withName:@"mruCacheOfSends" skipIfNil:0];

  mruCacheOfReceives = [(BLTRemoteObject *)self mruCacheOfReceives];
  v7 = [v3 appendObject:mruCacheOfReceives withName:@"mruCacheOfReceives" skipIfNil:0];

  v8 = [v3 appendObject:self->_serviceName withName:@"serviceName" skipIfNil:0];
  build = [v3 build];

  return build;
}

- (void)_handleNewSessionState:(unint64_t)state
{
  if (state)
  {
    sequenceNumberManager = [(BLTRemoteObject *)self sequenceNumberManager];
    recvSessionIdentifier = [sequenceNumberManager recvSessionIdentifier];
    [(BLTRemoteObject *)self _sendAckInitialSequenceNumberForSession:recvSessionIdentifier sessionState:state];
  }
}

- (BOOL)_sequenceErrorDidHappenAndHandled:(int64_t)handled service:(id)service incomingIdentifier:(id)identifier
{
  handledCopy = handled;
  serviceCopy = service;
  identifierCopy = identifier;
  if ((handledCopy & 2) != 0)
  {
    v11 = blt_ids_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_241FB3000, v11, OS_LOG_TYPE_DEFAULT, "Detected a duplicate message!", v14, 2u);
    }

    goto LABEL_10;
  }

  if (handledCopy)
  {
    BLTAnalyticsLogOutOfOrderMessage();
    v12 = blt_ids_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BLTRemoteObject _sequenceErrorDidHappenAndHandled:serviceCopy service:identifierCopy incomingIdentifier:v12];
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

- (void)handleIDSProtobuf:(id)protobuf
{
  mruCacheOfReceives = self->_mruCacheOfReceives;
  protobufCopy = protobuf;
  context = [protobufCopy context];
  outgoingResponseIdentifier = [context outgoingResponseIdentifier];
  context2 = [protobufCopy context];
  incomingResponseIdentifier = [context2 incomingResponseIdentifier];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"messageType:%u", objc_msgSend(protobufCopy, "type")];
  v10 = [BLTRemoteRequestLogItem remoteRequestLogItemWithIDSTransmitIdentifier:outgoingResponseIdentifier IDSResponseIdentifier:incomingResponseIdentifier requestDescription:v9 sequenceNumber:0 sessionIdentifier:0 sessionState:0];
  [(BLTSimpleCache *)mruCacheOfReceives cacheObject:v10];

  [(BLTRemoteObject *)self _queueHandleIDSProtobuf:protobufCopy];
}

- (void)_queueHandleIDSProtobuf:(id)protobuf
{
  v35 = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  dispatch_assert_queue_V2(self->_clientQueue);
  context = [protobufCopy context];
  incomingResponseIdentifier = [context incomingResponseIdentifier];

  v7 = blt_ids_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    context2 = [protobufCopy context];
    outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
    *buf = 138412546;
    *&buf[4] = outgoingResponseIdentifier;
    *&buf[12] = 2112;
    *&buf[14] = incomingResponseIdentifier;
    _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "Received message with IDS identifier: %@ and incoming response id: %@", buf, 0x16u);
  }

  isResponse = [protobufCopy isResponse];
  if (incomingResponseIdentifier)
  {
    v11 = isResponse;
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
    v13 = incomingResponseIdentifier;
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

  if ([protobufCopy isResponse])
  {
    v17 = 0x10000;
  }

  else
  {
    v17 = 0;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{v17 | objc_msgSend(protobufCopy, "type")}];
  v19 = [(NSMutableDictionary *)self->_idsRequestMessageTypeToSelector objectForKeyedSubscript:v18];
  v20 = v19;
  if (v19)
  {
    ([v19 method])(self, objc_msgSend(v19, "selector"), protobufCopy);
  }

  else
  {
    v21 = blt_ids_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      type = [protobufCopy type];
      *buf = 67109120;
      *&buf[4] = type;
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

- (void)handleIncomingMessage:(id)message
{
  messageCopy = message;
  v5 = [BLTPBProtobuf alloc];
  sequenceNumberManager = [(BLTRemoteObject *)self sequenceNumberManager];
  v7 = [(BLTPBProtobuf *)v5 initWithIDSProtobuf:messageCopy sequenceNumberManager:sequenceNumberManager];

  if (v7)
  {
    v25 = messageCopy;
    transportData = [messageCopy transportData];
    mruCacheOfReceives = self->_mruCacheOfReceives;
    context = [(BLTPBProtobuf *)v7 context];
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    context2 = [(BLTPBProtobuf *)v7 context];
    incomingResponseIdentifier = [context2 incomingResponseIdentifier];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"messageType:%u", -[BLTPBProtobuf type](v7, "type")];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(transportData, "sequenceNumber")}];
    v15 = sessionUUIDFromTransportData(transportData);
    v24 = transportData;
    v16 = +[BLTRemoteRequestLogItem remoteRequestLogItemWithIDSTransmitIdentifier:IDSResponseIdentifier:requestDescription:sequenceNumber:sessionIdentifier:sessionState:](BLTRemoteRequestLogItem, "remoteRequestLogItemWithIDSTransmitIdentifier:IDSResponseIdentifier:requestDescription:sequenceNumber:sessionIdentifier:sessionState:", outgoingResponseIdentifier, incomingResponseIdentifier, v13, v14, v15, [transportData sessionState]);
    [(BLTSimpleCache *)mruCacheOfReceives cacheObject:v16];

    [(BLTRemoteObject *)self _handleNewSessionState:[(BLTPBProtobuf *)v7 sessionState]];
    sequenceNumberError = [(BLTPBProtobuf *)v7 sequenceNumberError];
    context3 = [(BLTPBProtobuf *)v7 context];
    serviceIdentifier = [context3 serviceIdentifier];
    context4 = [(BLTPBProtobuf *)v7 context];
    outgoingResponseIdentifier2 = [context4 outgoingResponseIdentifier];
    LOBYTE(sequenceNumberError) = [(BLTRemoteObject *)self _sequenceErrorDidHappenAndHandled:sequenceNumberError service:serviceIdentifier incomingIdentifier:outgoingResponseIdentifier2];

    if ((sequenceNumberError & 1) == 0)
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

    messageCopy = v25;
  }
}

- (void)_sendAckInitialSequenceNumberForSession:(id)session withAssert:(BOOL)assert sessionState:(unint64_t *)state
{
  assertCopy = assert;
  v13[2] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v9 = objc_alloc_init(BLTPBAckInitialSequenceNumberRequest);
  if (sessionCopy)
  {
    v13[0] = 0;
    v13[1] = 0;
    [sessionCopy getUUIDBytes:v13];
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:16];
    [(BLTPBAckInitialSequenceNumberRequest *)v9 setSessionIdentifier:v10];
  }

  if (assertCopy)
  {
    [(BLTPBAckInitialSequenceNumberRequest *)v9 setAssert:1];
  }

  if (state)
  {
    [(BLTPBAckInitialSequenceNumberRequest *)v9 setSessionState:*state];
  }

  v11 = [BLTRemoteRequest remoteRequestWithProtobuf:v9 type:12];
  [(BLTRemoteObject *)self _queueSendRequest:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleAckInitialSequenceNumberRequest:(id)request
{
  requestCopy = request;
  v5 = [BLTPBAckInitialSequenceNumberRequest alloc];
  data = [requestCopy data];

  v15 = [(BLTPBAckInitialSequenceNumberRequest *)v5 initWithData:data];
  if (![(BLTPBAckInitialSequenceNumberRequest *)v15 hasSessionIdentifier])
  {
    sequenceNumberManager = [(BLTRemoteObject *)self sequenceNumberManager];
    [sequenceNumberManager setSessionState:0];
    goto LABEL_8;
  }

  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  sessionIdentifier = [(BLTPBAckInitialSequenceNumberRequest *)v15 sessionIdentifier];
  sequenceNumberManager = [v7 initWithUUIDBytes:{objc_msgSend(sessionIdentifier, "bytes")}];

  sequenceNumberManager2 = [(BLTRemoteObject *)self sequenceNumberManager];
  currentSessionIdentifier = [sequenceNumberManager2 currentSessionIdentifier];
  v12 = [sequenceNumberManager isEqual:currentSessionIdentifier];

  if (!v12)
  {
    v13 = 1;
    goto LABEL_7;
  }

  if ([(BLTPBAckInitialSequenceNumberRequest *)v15 sessionState]== 1)
  {
    v13 = 2;
LABEL_7:
    sequenceNumberManager3 = [(BLTRemoteObject *)self sequenceNumberManager];
    [sequenceNumberManager3 setSessionState:v13];

    goto LABEL_8;
  }

  if ([(BLTPBAckInitialSequenceNumberRequest *)v15 sessionState]== 2)
  {
    v13 = 0;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_storeProtobufAction:(SEL)action messageType:(unsigned __int16)type messageSendType:(int64_t)sendType
{
  typeCopy = type;
  v10 = objc_alloc_init(BLTPBSelectorItem);
  [(BLTPBSelectorItem *)v10 setSelector:action];
  [(BLTPBSelectorItem *)v10 setMethod:[(BLTRemoteObject *)self methodForSelector:action]];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:typeCopy | (sendType << 16)];
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

- (void)_updateConnectionStatusWithResetDefaulteDevice:(BOOL)device
{
  connectionStatusQueue = self->_connectionStatusQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__BLTRemoteObject__updateConnectionStatusWithResetDefaulteDevice___block_invoke;
  v4[3] = &unk_278D31450;
  v4[4] = self;
  deviceCopy = device;
  dispatch_async(connectionStatusQueue, v4);
}

- (void)_queueUpdateConnectionStatusWithResetDefaulteDevice:(BOOL)device
{
  v20 = *MEMORY[0x277D85DE8];
  if (device || (v4 = self->_defaultPairedDevice) == 0)
  {
    service = [(BLTRemoteObject *)self service];
    defaultPairedDevice = [service defaultPairedDevice];
    defaultPairedDevice = self->_defaultPairedDevice;
    self->_defaultPairedDevice = defaultPairedDevice;

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
    lastKnownConnectionStatus = [(BLTRemoteObject *)self lastKnownConnectionStatus];
    if (lastKnownConnectionStatus > 3)
    {
      v14 = "unknown";
    }

    else
    {
      v14 = off_278D31628[lastKnownConnectionStatus];
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

- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)delay maximumSendDelay:(unint64_t)sendDelay minimumResponseDelay:(unint64_t)responseDelay maximumResponseDelay:(unint64_t)maximumResponseDelay
{
  [(BLTRemoteObject *)self _setStandaloneTestModeEnabled:1];
  v11 = self->_service;
  [(BLTAbstractIDSService *)v11 setMinimumSendDelay:delay];
  [(BLTAbstractIDSService *)v11 setMaximumSendDelay:sendDelay];
  [(BLTAbstractIDSService *)v11 setMinimumResponseDelay:responseDelay];
  [(BLTAbstractIDSService *)v11 setMaximumResponseDelay:maximumResponseDelay];
}

- (void)_setStandaloneTestModeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
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
  if (enabledCopy)
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

- (void)sendRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_not_V2(self->_idsQueue);
  idsQueue = self->_idsQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__BLTRemoteObject_sendRequest___block_invoke;
  v7[3] = &unk_278D31400;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_sync(idsQueue, v7);
}

- (void)_queuePerformSend:(id)send responseToRequest:(id)request withTimeout:(id)timeout withDescription:(id)description shortDescription:(id)shortDescription onlyOneFor:(id)for allowCloudDelivery:(BOOL)delivery nonWaking:(BOOL)self0 didSend:(id)self1 andResponse:(id)self2
{
  v84 = *MEMORY[0x277D85DE8];
  sendCopy = send;
  requestCopy = request;
  timeoutCopy = timeout;
  descriptionCopy = description;
  shortDescriptionCopy = shortDescription;
  forCopy = for;
  didSendCopy = didSend;
  responseCopy = response;
  dispatch_assert_queue_V2(self->_idsQueue);
  v22 = "response";
  v62 = requestCopy;
  if (!requestCopy)
  {
    v22 = "request";
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (timeoutCopy)
  {
    v24 = *MEMORY[0x277D18828];
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v26 = [timeoutCopy compare:v25];

    if (v26 == 1)
    {
      v27 = blt_ids_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        [timeoutCopy doubleValue];
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
      v30 = timeoutCopy;
    }

    v32 = *MEMORY[0x277D18650];
    v57 = v30;
    [dictionary setObject:? forKeyedSubscript:?];
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185A0]];
    v31 = "remote timeout is ENFORCED";
  }

  else
  {
    v57 = 0;
    v31 = "";
  }

  if (forCopy)
  {
    [dictionary setObject:forCopy forKeyedSubscript:*MEMORY[0x277D18630]];
  }

  if (requestCopy)
  {
    context = [requestCopy context];
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    [dictionary setObject:outgoingResponseIdentifier forKeyedSubscript:*MEMORY[0x277D18610]];
  }

  v35 = [MEMORY[0x277CCABB0] numberWithBool:delivery];
  [dictionary setObject:v35 forKeyedSubscript:*MEMORY[0x277D18568]];

  if (waking)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18600]];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3020000000;
  v83 = 0;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __160__BLTRemoteObject__queuePerformSend_responseToRequest_withTimeout_withDescription_shortDescription_onlyOneFor_allowCloudDelivery_nonWaking_didSend_andResponse___block_invoke;
  v71[3] = &unk_278D314A0;
  v36 = responseCopy;
  v72 = v36;
  v73 = buf;
  v71[4] = self;
  v37 = MEMORY[0x245D067A0](v71);
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __160__BLTRemoteObject__queuePerformSend_responseToRequest_withTimeout_withDescription_shortDescription_onlyOneFor_allowCloudDelivery_nonWaking_didSend_andResponse___block_invoke_3;
  v67[3] = &unk_278D31518;
  v55 = didSendCopy;
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
  v39 = sendCopy[2](sendCopy, dictionary, &v66, &v65, &v64);
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
    v77 = descriptionCopy;
    v78 = 2112;
    v79 = v41;
    v80 = 2080;
    v81 = v31;
    _os_log_impl(&dword_241FB3000, v47, OS_LOG_TYPE_DEFAULT, "Sent IDS %s %@ got identifier: %@ %s", v74, 0x2Au);
  }

  mruCacheOfSends = self->_mruCacheOfSends;
  v49 = [dictionary objectForKeyedSubscript:*MEMORY[0x277D18610]];
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v42, "sequenceNumber")}];
  v51 = sessionUUIDFromTransportData(v42);
  v52 = +[BLTRemoteRequestLogItem remoteRequestLogItemWithIDSTransmitIdentifier:IDSResponseIdentifier:requestDescription:sequenceNumber:sessionIdentifier:sessionState:](BLTRemoteRequestLogItem, "remoteRequestLogItemWithIDSTransmitIdentifier:IDSResponseIdentifier:requestDescription:sequenceNumber:sessionIdentifier:sessionState:", v41, v49, descriptionCopy, v50, v51, [v42 sessionState]);
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

- (id)_wrapError:(id)error identifier:(id)identifier
{
  errorCopy = error;
  if (error)
  {
    identifierCopy = identifier;
    v6 = errorCopy;
    userInfo = [v6 userInfo];
    v8 = [userInfo mutableCopy];

    [v8 setObject:identifierCopy forKeyedSubscript:@"BLTTransportSendIdentifier"];
    v9 = MEMORY[0x277CCA9B8];
    domain = [v6 domain];
    code = [v6 code];

    errorCopy = [v9 errorWithDomain:domain code:code userInfo:v8];
  }

  return errorCopy;
}

- (void)_queueSendRequest:(id)request
{
  requestCopy = request;
  context = objc_autoreleasePoolPush();
  protobuf = [requestCopy protobuf];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __37__BLTRemoteObject__queueSendRequest___block_invoke;
  v27[3] = &unk_278D31540;
  selfCopy = self;
  v27[4] = self;
  v6 = protobuf;
  v28 = v6;
  v7 = requestCopy;
  v29 = v7;
  responseToRequest = [v7 responseToRequest];
  timeout = [v7 timeout];
  requestDescription = [v7 requestDescription];
  v9 = requestDescription;
  if (!requestDescription)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    redact = [v6 redact];
    v22 = v12;
    v9 = [v10 stringWithFormat:@"%@: %@", v12, redact];
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  uniqueID = [v7 uniqueID];
  allowCloudDelivery = [v7 allowCloudDelivery];
  nonWaking = [v7 nonWaking];
  didSend = [v7 didSend];
  responseCompletion = [v7 responseCompletion];
  BYTE1(v20) = nonWaking;
  LOBYTE(v20) = allowCloudDelivery;
  [(BLTRemoteObject *)selfCopy _queuePerformSend:v27 responseToRequest:responseToRequest withTimeout:timeout withDescription:v9 shortDescription:v14 onlyOneFor:uniqueID allowCloudDelivery:v20 nonWaking:didSend didSend:responseCompletion andResponse:?];

  if (!requestDescription)
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

- (void)sendFileURL:(id)l withTimeout:(id)timeout extraMetadata:(id)metadata responseHandlers:(id)handlers didSend:(id)send didQueue:(id)queue
{
  lCopy = l;
  timeoutCopy = timeout;
  metadataCopy = metadata;
  handlersCopy = handlers;
  sendCopy = send;
  queueCopy = queue;
  idsQueue = self->_idsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__BLTRemoteObject_sendFileURL_withTimeout_extraMetadata_responseHandlers_didSend_didQueue___block_invoke;
  block[3] = &unk_278D31590;
  block[4] = self;
  v28 = metadataCopy;
  v29 = lCopy;
  v30 = handlersCopy;
  v31 = timeoutCopy;
  v32 = queueCopy;
  v33 = sendCopy;
  v21 = sendCopy;
  v22 = timeoutCopy;
  v23 = handlersCopy;
  v24 = queueCopy;
  v25 = lCopy;
  v26 = metadataCopy;
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

- (void)service:(id)service devicesChanged:(id)changed
{
  v5 = blt_ids_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "Devices changed!", v6, 2u);
  }

  [(BLTRemoteObject *)self _updateConnectionStatusWithResetDefaulteDevice:1];
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  v5 = blt_ids_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "Nearby devices changed!", v6, 2u);
  }

  [(BLTRemoteObject *)self _updateConnectionStatusWithResetDefaulteDevice:1];
}

- (void)_deviceConnectionStatusChanged:(id)changed
{
  v4 = blt_ids_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_DEFAULT, "Device connection status changed!", v5, 2u);
  }

  [(BLTRemoteObject *)self _updateConnectionStatus];
}

- (void)_removeAndHandleResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(NSMutableDictionary *)self->_idsSendIDToResponseHandler objectForKeyedSubscript:handlerCopy];
  if (v5)
  {
    [(NSMutableDictionary *)self->_idsSendIDToResponseHandler removeObjectForKey:handlerCopy];
    clientQueue = self->_clientQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__BLTRemoteObject__removeAndHandleResponseHandler___block_invoke;
    block[3] = &unk_278D314F0;
    v8 = v5;
    dispatch_async(clientQueue, block);
  }
}

- (BOOL)_idsQueueCallSendCompletionHandlerWithSuccess:(BOOL)success identifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v10 = [(NSMutableDictionary *)self->_idsSendIDToCompletionHandler objectForKeyedSubscript:identifierCopy];
  if (v10)
  {
    [(NSMutableDictionary *)self->_idsSendIDToCompletionHandler removeObjectForKey:identifierCopy];
    clientQueue = self->_clientQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__BLTRemoteObject__idsQueueCallSendCompletionHandlerWithSuccess_identifier_error___block_invoke;
    block[3] = &unk_278D315B8;
    successCopy = success;
    v16 = v10;
    block[4] = self;
    v14 = errorCopy;
    v15 = identifierCopy;
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

- (BOOL)_callSendCompletionHandlerWithSuccess:(BOOL)success identifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  idsQueue = self->_idsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__BLTRemoteObject__callSendCompletionHandlerWithSuccess_identifier_error___block_invoke;
  block[3] = &unk_278D315E0;
  successCopy = success;
  block[4] = self;
  v15 = identifierCopy;
  v16 = errorCopy;
  v17 = &v19;
  v11 = errorCopy;
  v12 = identifierCopy;
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

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v64 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  contextCopy = context;
  v15 = [BLTPBFileURLMetaData alloc];
  sequenceNumberManager = [(BLTRemoteObject *)self sequenceNumberManager];
  v17 = [(BLTPBFileURLMetaData *)v15 initWithMetadata:metadataCopy sequenceNumberManager:sequenceNumberManager];

  if (v17)
  {
    transportData = [(BLTPBFileURLMetaData *)v17 transportData];
    mruCacheOfReceives = self->_mruCacheOfReceives;
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
    lCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"incomingResource:%@", lCopy];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(transportData, "sequenceNumber")}];
    v23 = sessionUUIDFromTransportData(transportData);
    v24 = +[BLTRemoteRequestLogItem remoteRequestLogItemWithIDSTransmitIdentifier:IDSResponseIdentifier:requestDescription:sequenceNumber:sessionIdentifier:sessionState:](BLTRemoteRequestLogItem, "remoteRequestLogItemWithIDSTransmitIdentifier:IDSResponseIdentifier:requestDescription:sequenceNumber:sessionIdentifier:sessionState:", outgoingResponseIdentifier, incomingResponseIdentifier, lCopy, v22, v23, [transportData sessionState]);
    [(BLTSimpleCache *)mruCacheOfReceives cacheObject:v24];

    [(BLTRemoteObject *)self _handleNewSessionState:[(BLTPBFileURLMetaData *)v17 sessionState]];
    sequenceNumberError = [(BLTPBFileURLMetaData *)v17 sequenceNumberError];
    serviceIdentifier = [contextCopy serviceIdentifier];
    outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
    LOBYTE(sequenceNumberError) = [(BLTRemoteObject *)self _sequenceErrorDidHappenAndHandled:sequenceNumberError service:serviceIdentifier incomingIdentifier:outgoingResponseIdentifier2];

    if ((sequenceNumberError & 1) == 0)
    {
      v28 = blt_ids_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        outgoingResponseIdentifier3 = [contextCopy outgoingResponseIdentifier];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = outgoingResponseIdentifier3;
        _os_log_impl(&dword_241FB3000, v28, OS_LOG_TYPE_DEFAULT, "Received resource with IDS identifier: %@", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v60 = 0x3032000000;
      v61 = __Block_byref_object_copy__263;
      v62 = __Block_byref_object_dispose__264;
      v63 = 0;
      v30 = MEMORY[0x277CCACA8];
      serviceIdentifier2 = [contextCopy serviceIdentifier];
      outgoingResponseIdentifier4 = [contextCopy outgoingResponseIdentifier];
      v33 = [v30 stringWithFormat:@"%@:%@", serviceIdentifier2, outgoingResponseIdentifier4];
      v34 = BLTFileURLInPairingPath(v33);

      if (v34 && ([MEMORY[0x277CCAA00] defaultManager], v35 = objc_claimAutoreleasedReturnValue(), v36 = *(&buf + 1), obj = *(*(&buf + 1) + 40), v37 = objc_msgSend(v35, "copyItemAtURL:toURL:error:", lCopy, v34, &obj), objc_storeStrong((v36 + 40), obj), v35, (v37 & 1) != 0))
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
          v54 = lCopy;
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