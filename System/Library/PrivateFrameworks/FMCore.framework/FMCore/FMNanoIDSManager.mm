@interface FMNanoIDSManager
- (BOOL)_checkMinVersionDeviceID:(id)a3;
- (BOOL)cancelMessageWithId:(id)a3;
- (FMNanoIDSManager)initWithServiceId:(id)a3 minimumVersion:(int64_t)a4;
- (NSArray)devices;
- (id)_sendProtobuf:(id)a3 priority:(int64_t)a4 responseIdentifier:(id)a5 expectsResponse:(BOOL)a6 bypassingDuet:(BOOL)a7 deviceID:(id)a8;
- (void)sendMessageWithProtobuf:(id)a3 inResponseToRequest:(id)a4 withPriority:(int64_t)a5 timeout:(double)a6 bypassingDuet:(BOOL)a7 deviceID:(id)a8 requestAcceptedHandler:(id)a9 responseHandler:(id)a10;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)start;
@end

@implementation FMNanoIDSManager

- (FMNanoIDSManager)initWithServiceId:(id)a3 minimumVersion:(int64_t)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = FMNanoIDSManager;
  v8 = [(FMNanoIDSManager *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serviceId, a3);
    if (a4 <= 4)
    {
      v9->_minVersion = dword_24A307508[a4];
    }

    v10 = [MEMORY[0x277CBEB38] dictionary];
    outstandingRequests = v9->_outstandingRequests;
    v9->_outstandingRequests = v10;

    v12 = dispatch_queue_create("com.apple.icloud.fmcore.nano_ids_mod_queue", 0);
    outstandingRequestsModQueue = v9->_outstandingRequestsModQueue;
    v9->_outstandingRequestsModQueue = v12;

    v14 = [MEMORY[0x277CBEB38] dictionary];
    registeredRequestHandlers = v9->_registeredRequestHandlers;
    v9->_registeredRequestHandlers = v14;
  }

  return v9;
}

- (void)start
{
  v3 = [(FMNanoIDSManager *)self service];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D18778]);
    v5 = [(FMNanoIDSManager *)self serviceId];
    v6 = [v4 initWithService:v5];
    [(FMNanoIDSManager *)self setService:v6];

    v7 = [(FMNanoIDSManager *)self service];
    [v7 addDelegate:self queue:MEMORY[0x277D85CD0]];
  }
}

- (NSArray)devices
{
  v2 = [(FMNanoIDSManager *)self service];
  v3 = [v2 devices];

  return v3;
}

- (void)sendMessageWithProtobuf:(id)a3 inResponseToRequest:(id)a4 withPriority:(int64_t)a5 timeout:(double)a6 bypassingDuet:(BOOL)a7 deviceID:(id)a8 requestAcceptedHandler:(id)a9 responseHandler:(id)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __147__FMNanoIDSManager_sendMessageWithProtobuf_inResponseToRequest_withPriority_timeout_bypassingDuet_deviceID_requestAcceptedHandler_responseHandler___block_invoke;
  block[3] = &unk_278FD9898;
  block[4] = self;
  v29 = v19;
  v33 = v20;
  v34 = a5;
  v30 = v17;
  v31 = v18;
  v35 = a6;
  v36 = a7;
  v32 = v21;
  v23 = v20;
  v24 = v18;
  v25 = v17;
  v26 = v21;
  v27 = v19;
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

- (BOOL)cancelMessageWithId:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&dword_24A2EE000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling message with ID %@", buf, 0xCu);
  }

  v6 = [(FMNanoIDSManager *)self outstandingRequests];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [v7 timer];
  [v8 cancel];

  v9 = LogCategory_Unspecified();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"YES";
    if (!v7)
    {
      v10 = @"NO";
    }

    *buf = 138412546;
    v21 = v4;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_24A2EE000, v9, OS_LOG_TYPE_DEFAULT, "Did find outstanding message to cancel with ID %@ : %@", buf, 0x16u);
  }

  v11 = [(FMNanoIDSManager *)self service];
  v19 = 0;
  [v11 cancelIdentifier:v4 error:&v19];
  v12 = v19;

  v13 = [(FMNanoIDSManager *)self outstandingRequestsModQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__FMNanoIDSManager_cancelMessageWithId___block_invoke;
  block[3] = &unk_278FD9690;
  block[4] = self;
  v18 = v4;
  v14 = v4;
  dispatch_sync(v13, block);

  v15 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

void __40__FMNanoIDSManager_cancelMessageWithId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) outstandingRequests];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  *&v38[5] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [v12 incomingResponseIdentifier];
  v14 = LogCategory_Unspecified();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v38[0] = [v10 type];
    LOWORD(v38[1]) = 2112;
    *(&v38[1] + 2) = v13;
    _os_log_impl(&dword_24A2EE000, v14, OS_LOG_TYPE_DEFAULT, "Received request of type %d with message ID %@", buf, 0x12u);
  }

  if (!v13)
  {
    v21 = [(FMNanoIDSManager *)self registeredRequestHandlers];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v10, "type")}];
    v16 = [v21 objectForKeyedSubscript:v22];

    if (v16)
    {
      v23 = dispatch_get_global_queue(21, 0);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __77__FMNanoIDSManager_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke_45;
      v30[3] = &unk_278FD9910;
      v34 = v16;
      v30[4] = self;
      v31 = v10;
      v32 = v12;
      v33 = v11;
      dispatch_async(v23, v30);

      v24 = v34;
    }

    else
    {
      v24 = LogCategory_Unspecified();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v10 type];
        *buf = 67109120;
        v38[0] = v28;
        v25 = "No handler found for request of type %d. Ignoring the request...";
        v26 = v24;
        v27 = 8;
        goto LABEL_14;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  v15 = [(FMNanoIDSManager *)self outstandingRequests];
  v16 = [v15 objectForKeyedSubscript:v13];

  if (!v16)
  {
    v24 = LogCategory_Unspecified();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v38 = v13;
      v25 = "No outstanding request with message ID %@";
      v26 = v24;
      v27 = 12;
LABEL_14:
      _os_log_impl(&dword_24A2EE000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v17 = [v16 timer];
  [v17 cancel];

  v18 = [(FMNanoIDSManager *)self outstandingRequestsModQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__FMNanoIDSManager_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke;
  block[3] = &unk_278FD9690;
  block[4] = self;
  v36 = v13;
  dispatch_sync(v18, block);

  v19 = [v16 responseHandler];

  if (v19)
  {
    v20 = [v16 responseHandler];
    (v20)[2](v20, v10, 0, v11, 0);
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

- (id)_sendProtobuf:(id)a3 priority:(int64_t)a4 responseIdentifier:(id)a5 expectsResponse:(BOOL)a6 bypassingDuet:(BOOL)a7 deviceID:(id)a8
{
  v9 = a7;
  v10 = a6;
  v40 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
  v16 = a8;
  v17 = [MEMORY[0x277CBEB38] dictionary];
  v18 = v17;
  if (v15)
  {
    [v17 setObject:v15 forKeyedSubscript:*MEMORY[0x277D18610]];
  }

  if (v10)
  {
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185B0]];
  }

  if (v9)
  {
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18580]];
  }

  v19 = *MEMORY[0x277D187E8];
  if (v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = *MEMORY[0x277D187E8];
  }

  v21 = [MEMORY[0x277CBEB98] setWithObject:v20];
  v22 = [(FMNanoIDSManager *)self service];
  v32 = 0;
  v33 = 0;
  v23 = [v22 sendProtobuf:v14 toDestinations:v21 priority:a4 options:v18 identifier:&v33 error:&v32];
  v24 = v33;
  v25 = v32;

  v26 = LogCategory_Unspecified();
  v27 = v26;
  if ((v23 & 1) != 0 || !v25)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v14 type];
      *buf = 138412802;
      v35 = v21;
      v36 = 1024;
      v37 = v29;
      v38 = 2112;
      v39 = v24;
      _os_log_impl(&dword_24A2EE000, v27, OS_LOG_TYPE_DEFAULT, "Sent message to %@ of type %d with id %@", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v28 = [v14 type];
    *buf = 138412802;
    v35 = v21;
    v36 = 1024;
    v37 = v28;
    v38 = 2112;
    v39 = v25;
    _os_log_error_impl(&dword_24A2EE000, v27, OS_LOG_TYPE_ERROR, "Error sending the message to %@ of type %d : %@", buf, 0x1Cu);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)_checkMinVersionDeviceID:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  if (v4)
  {
    v5 = [(FMNanoIDSManager *)self devices];
    v6 = LogCategory_Unspecified();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [FMNanoIDSManager _checkMinVersionDeviceID:v6];
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__FMNanoIDSManager__checkMinVersionDeviceID___block_invoke;
    v18[3] = &unk_278FD9938;
    v19 = v4;
    v20 = &v21;
    [v5 enumerateObjectsUsingBlock:v18];
    v7 = v19;
  }

  else
  {
    v5 = [MEMORY[0x277D2BCF8] sharedInstance];
    v8 = [v5 getActivePairedDevice];
    v7 = v22[5];
    v22[5] = v8;
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
      v11 = [(FMNanoIDSManager *)self minVersion];
      *buf = 67109376;
      v28 = v9;
      v29 = 1024;
      v30 = v11;
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