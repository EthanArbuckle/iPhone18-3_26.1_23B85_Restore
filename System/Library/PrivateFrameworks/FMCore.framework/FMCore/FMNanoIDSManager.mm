@interface FMNanoIDSManager
- (BOOL)_checkMinVersionDeviceID:(id)d;
- (BOOL)cancelMessageWithId:(id)id;
- (FMNanoIDSManager)initWithServiceId:(id)id minimumVersion:(int64_t)version;
- (NSArray)devices;
- (id)_sendProtobuf:(id)protobuf priority:(int64_t)priority responseIdentifier:(id)identifier expectsResponse:(BOOL)response bypassingDuet:(BOOL)duet deviceID:(id)d;
- (void)sendMessageWithProtobuf:(id)protobuf inResponseToRequest:(id)request withPriority:(int64_t)priority timeout:(double)timeout bypassingDuet:(BOOL)duet deviceID:(id)d requestAcceptedHandler:(id)handler responseHandler:(id)self0;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)start;
@end

@implementation FMNanoIDSManager

- (FMNanoIDSManager)initWithServiceId:(id)id minimumVersion:(int64_t)version
{
  idCopy = id;
  v17.receiver = self;
  v17.super_class = FMNanoIDSManager;
  v8 = [(FMNanoIDSManager *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serviceId, id);
    if (version <= 4)
    {
      v9->_minVersion = dword_24A307508[version];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    outstandingRequests = v9->_outstandingRequests;
    v9->_outstandingRequests = dictionary;

    v12 = dispatch_queue_create("com.apple.icloud.fmcore.nano_ids_mod_queue", 0);
    outstandingRequestsModQueue = v9->_outstandingRequestsModQueue;
    v9->_outstandingRequestsModQueue = v12;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    registeredRequestHandlers = v9->_registeredRequestHandlers;
    v9->_registeredRequestHandlers = dictionary2;
  }

  return v9;
}

- (void)start
{
  service = [(FMNanoIDSManager *)self service];

  if (!service)
  {
    v4 = objc_alloc(MEMORY[0x277D18778]);
    serviceId = [(FMNanoIDSManager *)self serviceId];
    v6 = [v4 initWithService:serviceId];
    [(FMNanoIDSManager *)self setService:v6];

    service2 = [(FMNanoIDSManager *)self service];
    [service2 addDelegate:self queue:MEMORY[0x277D85CD0]];
  }
}

- (NSArray)devices
{
  service = [(FMNanoIDSManager *)self service];
  devices = [service devices];

  return devices;
}

- (void)sendMessageWithProtobuf:(id)protobuf inResponseToRequest:(id)request withPriority:(int64_t)priority timeout:(double)timeout bypassingDuet:(BOOL)duet deviceID:(id)d requestAcceptedHandler:(id)handler responseHandler:(id)self0
{
  protobufCopy = protobuf;
  requestCopy = request;
  dCopy = d;
  handlerCopy = handler;
  responseHandlerCopy = responseHandler;
  v22 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __147__FMNanoIDSManager_sendMessageWithProtobuf_inResponseToRequest_withPriority_timeout_bypassingDuet_deviceID_requestAcceptedHandler_responseHandler___block_invoke;
  block[3] = &unk_278FD9898;
  block[4] = self;
  v29 = dCopy;
  v33 = handlerCopy;
  priorityCopy = priority;
  v30 = protobufCopy;
  v31 = requestCopy;
  timeoutCopy = timeout;
  duetCopy = duet;
  v32 = responseHandlerCopy;
  v23 = handlerCopy;
  v24 = requestCopy;
  v25 = protobufCopy;
  v26 = responseHandlerCopy;
  v27 = dCopy;
  dispatch_async(v22, block);
}

void __147__FMNanoIDSManager_sendMessageWithProtobuf_inResponseToRequest_withPriority_timeout_bypassingDuet_deviceID_requestAcceptedHandler_responseHandler___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _checkMinVersionDeviceID:*(a1 + 40)])
  {
    v2 = *(a1 + 80);
    if (v2 > 2)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_24A307520[v2];
    }

    v9 = [*(a1 + 32) _sendMessageWithProtobuf:*(a1 + 48) inResponseToRequest:*(a1 + 56) withPriority:v3 timeout:*(a1 + 96) bypassingDuet:*(a1 + 40) deviceID:*(a1 + 64) responseHandler:*(a1 + 88)];
    v10 = *(a1 + 72);
    if (v10 && v9)
    {
      (*(v10 + 16))();
    }

    v11 = *MEMORY[0x277D85DE8];

    MEMORY[0x2821F96F8]();
  }

  else
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA470];
      v13[0] = @"Min Version check failed";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v7 = [v5 errorWithDomain:@"com.apple.icloud.FMCore" code:0 userInfo:v6];
      (*(v4 + 16))(v4, 0, 0, 0, v7);
    }

    v8 = *MEMORY[0x277D85DE8];
  }
}

void __125__FMNanoIDSManager__sendMessageWithProtobuf_inResponseToRequest_withPriority_timeout_bypassingDuet_deviceID_responseHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained cancelMessageWithId:*(a1 + 32)];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, 1, 0, 0);
  }
}

void __125__FMNanoIDSManager__sendMessageWithProtobuf_inResponseToRequest_withPriority_timeout_bypassingDuet_deviceID_responseHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) outstandingRequests];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (BOOL)cancelMessageWithId:(id)id
{
  v24 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = idCopy;
    _os_log_impl(&dword_24A2EE000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling message with ID %@", buf, 0xCu);
  }

  outstandingRequests = [(FMNanoIDSManager *)self outstandingRequests];
  v7 = [outstandingRequests objectForKeyedSubscript:idCopy];

  timer = [v7 timer];
  [timer cancel];

  v9 = LogCategory_Unspecified();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"YES";
    if (!v7)
    {
      v10 = @"NO";
    }

    *buf = 138412546;
    v21 = idCopy;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_24A2EE000, v9, OS_LOG_TYPE_DEFAULT, "Did find outstanding message to cancel with ID %@ : %@", buf, 0x16u);
  }

  service = [(FMNanoIDSManager *)self service];
  v19 = 0;
  [service cancelIdentifier:idCopy error:&v19];
  v12 = v19;

  outstandingRequestsModQueue = [(FMNanoIDSManager *)self outstandingRequestsModQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__FMNanoIDSManager_cancelMessageWithId___block_invoke;
  block[3] = &unk_278FD9690;
  block[4] = self;
  v18 = idCopy;
  v14 = idCopy;
  dispatch_sync(outstandingRequestsModQueue, block);

  v15 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

void __40__FMNanoIDSManager_cancelMessageWithId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) outstandingRequests];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  *&v38[5] = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  dCopy = d;
  contextCopy = context;
  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
  v14 = LogCategory_Unspecified();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v38[0] = [protobufCopy type];
    LOWORD(v38[1]) = 2112;
    *(&v38[1] + 2) = incomingResponseIdentifier;
    _os_log_impl(&dword_24A2EE000, v14, OS_LOG_TYPE_DEFAULT, "Received request of type %d with message ID %@", buf, 0x12u);
  }

  if (!incomingResponseIdentifier)
  {
    registeredRequestHandlers = [(FMNanoIDSManager *)self registeredRequestHandlers];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(protobufCopy, "type")}];
    v16 = [registeredRequestHandlers objectForKeyedSubscript:v22];

    if (v16)
    {
      v23 = dispatch_get_global_queue(21, 0);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __77__FMNanoIDSManager_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke_45;
      v30[3] = &unk_278FD9910;
      v34 = v16;
      v30[4] = self;
      v31 = protobufCopy;
      v32 = contextCopy;
      v33 = dCopy;
      dispatch_async(v23, v30);

      v24 = v34;
    }

    else
    {
      v24 = LogCategory_Unspecified();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        type = [protobufCopy type];
        *buf = 67109120;
        v38[0] = type;
        v25 = "No handler found for request of type %d. Ignoring the request...";
        v26 = v24;
        v27 = 8;
        goto LABEL_14;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  outstandingRequests = [(FMNanoIDSManager *)self outstandingRequests];
  v16 = [outstandingRequests objectForKeyedSubscript:incomingResponseIdentifier];

  if (!v16)
  {
    v24 = LogCategory_Unspecified();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v38 = incomingResponseIdentifier;
      v25 = "No outstanding request with message ID %@";
      v26 = v24;
      v27 = 12;
LABEL_14:
      _os_log_impl(&dword_24A2EE000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  timer = [v16 timer];
  [timer cancel];

  outstandingRequestsModQueue = [(FMNanoIDSManager *)self outstandingRequestsModQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__FMNanoIDSManager_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke;
  block[3] = &unk_278FD9690;
  block[4] = self;
  v36 = incomingResponseIdentifier;
  dispatch_sync(outstandingRequestsModQueue, block);

  responseHandler = [v16 responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [v16 responseHandler];
    (responseHandler2)[2](responseHandler2, protobufCopy, 0, dCopy, 0);
  }

LABEL_16:
  v29 = *MEMORY[0x277D85DE8];
}

void __77__FMNanoIDSManager_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) outstandingRequests];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void __77__FMNanoIDSManager_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke_45(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) outgoingResponseIdentifier];
  (*(v2 + 16))(v2, v3, v4, v5, *(a1 + 56));
}

- (id)_sendProtobuf:(id)protobuf priority:(int64_t)priority responseIdentifier:(id)identifier expectsResponse:(BOOL)response bypassingDuet:(BOOL)duet deviceID:(id)d
{
  duetCopy = duet;
  responseCopy = response;
  v40 = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  identifierCopy = identifier;
  dCopy = d;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = dictionary;
  if (identifierCopy)
  {
    [dictionary setObject:identifierCopy forKeyedSubscript:*MEMORY[0x277D18610]];
  }

  if (responseCopy)
  {
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185B0]];
  }

  if (duetCopy)
  {
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18580]];
  }

  v19 = *MEMORY[0x277D187E8];
  if (dCopy)
  {
    v20 = dCopy;
  }

  else
  {
    v20 = *MEMORY[0x277D187E8];
  }

  v21 = [MEMORY[0x277CBEB98] setWithObject:v20];
  service = [(FMNanoIDSManager *)self service];
  v32 = 0;
  v33 = 0;
  v23 = [service sendProtobuf:protobufCopy toDestinations:v21 priority:priority options:v18 identifier:&v33 error:&v32];
  v24 = v33;
  v25 = v32;

  v26 = LogCategory_Unspecified();
  v27 = v26;
  if ((v23 & 1) != 0 || !v25)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      type = [protobufCopy type];
      *buf = 138412802;
      v35 = v21;
      v36 = 1024;
      v37 = type;
      v38 = 2112;
      v39 = v24;
      _os_log_impl(&dword_24A2EE000, v27, OS_LOG_TYPE_DEFAULT, "Sent message to %@ of type %d with id %@", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    type2 = [protobufCopy type];
    *buf = 138412802;
    v35 = v21;
    v36 = 1024;
    v37 = type2;
    v38 = 2112;
    v39 = v25;
    _os_log_error_impl(&dword_24A2EE000, v27, OS_LOG_TYPE_ERROR, "Error sending the message to %@ of type %d : %@", buf, 0x1Cu);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)_checkMinVersionDeviceID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  if (dCopy)
  {
    devices = [(FMNanoIDSManager *)self devices];
    v6 = LogCategory_Unspecified();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [FMNanoIDSManager _checkMinVersionDeviceID:v6];
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__FMNanoIDSManager__checkMinVersionDeviceID___block_invoke;
    v18[3] = &unk_278FD9938;
    v19 = dCopy;
    v20 = &v21;
    [devices enumerateObjectsUsingBlock:v18];
    v7 = v19;
  }

  else
  {
    devices = [MEMORY[0x277D2BCF8] sharedInstance];
    getActivePairedDevice = [devices getActivePairedDevice];
    v7 = v22[5];
    v22[5] = getActivePairedDevice;
  }

  if (v22[5])
  {
    v9 = NRWatchOSVersionForRemoteDevice();
    if (v9 >= [(FMNanoIDSManager *)self minVersion])
    {
      v15 = 1;
      goto LABEL_15;
    }

    v10 = LogCategory_Unspecified();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      minVersion = [(FMNanoIDSManager *)self minVersion];
      *buf = 67109376;
      v28 = v9;
      v29 = 1024;
      v30 = minVersion;
      v12 = "Paired device version %X is older the minuimum supported version %X";
      v13 = v10;
      v14 = 14;
LABEL_12:
      _os_log_impl(&dword_24A2EE000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }
  }

  else
  {
    v10 = LogCategory_Unspecified();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "No paired device version found";
      v13 = v10;
      v14 = 2;
      goto LABEL_12;
    }
  }

  v15 = 0;
LABEL_15:
  _Block_object_dispose(&v21, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void __45__FMNanoIDSManager__checkMinVersionDeviceID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = IDSCopyIDForDevice();
  v8 = LogCategory_Unspecified();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __45__FMNanoIDSManager__checkMinVersionDeviceID___block_invoke_cold_1(v7, a1, v8);
  }

  if ([v7 isEqualToString:*(a1 + 32)])
  {
    v9 = [MEMORY[0x277D2BCF8] sharedInstance];
    v10 = [v9 deviceForIDSDevice:v6];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }
}

void __45__FMNanoIDSManager__checkMinVersionDeviceID___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_24A2EE000, log, OS_LOG_TYPE_DEBUG, "Comparing %@ to %@ IDS identifiers", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end