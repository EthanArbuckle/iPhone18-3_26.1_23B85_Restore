@interface DEDIDSConnection
+ (id)archivedClasses;
+ (id)packPayload:(id)payload;
+ (id)unpackProtobuf:(id)protobuf;
- (BOOL)sendMessage:(int)message withData:(id)data forIDSDeviceIDs:(id)ds isResponse:(BOOL)response;
- (DEDClientProtocol)remoteSideDelegate;
- (DEDIDSConnection)initWithController:(id)controller;
- (void)discoverDevicesWithCompletion:(id)completion;
- (void)ids_didStartBugSessionWithInfo:(id)info forID:(id)d;
- (void)ids_startBugSessionWithIdentifier:(id)identifier configuration:(id)configuration caller:(id)caller target:(id)target;
- (void)incomingDeviceReceived:(id)received;
- (void)setDeviceCallback:(id)callback;
@end

@implementation DEDIDSConnection

+ (id)archivedClasses
{
  if (archivedClasses_onceToken_3 != -1)
  {
    +[DEDIDSConnection archivedClasses];
  }

  v3 = archivedClasses__classes_1;

  return v3;
}

void __35__DEDIDSConnection_archivedClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB58];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v11 = [v0 setWithObjects:{v1, v2, v3, objc_opt_class(), 0}];
  v4 = +[DEDDevice archivedClasses];
  [v11 unionSet:v4];

  v5 = +[DEDBugSessionConfiguration archivedClasses];
  [v11 unionSet:v5];

  v6 = +[DEDController archivedClasses];
  [v11 unionSet:v6];

  v7 = +[DEDIDSOutbound archivedClasses];
  [v11 unionSet:v7];

  v8 = +[DEDIDSInbound archivedClasses];
  [v11 unionSet:v8];

  v9 = [MEMORY[0x277CBEB98] setWithSet:v11];
  v10 = archivedClasses__classes_1;
  archivedClasses__classes_1 = v9;
}

+ (id)packPayload:(id)payload
{
  payloadCopy = payload;
  v10 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:payloadCopy requiringSecureCoding:1 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = +[DEDUtils sharedLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(DEDIDSConnection *)payloadCopy packPayload:v5, v6];
    }

    data = [MEMORY[0x277CBEA90] data];
  }

  else
  {
    data = v4;
  }

  v8 = data;

  return v8;
}

+ (id)unpackProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = protobufCopy;
  if (protobufCopy && ([protobufCopy data], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = MEMORY[0x277CCAAC8];
    archivedClasses = [self archivedClasses];
    data = [v5 data];
    v17 = 0;
    v10 = [v7 unarchivedObjectOfClasses:archivedClasses fromData:data error:&v17];
    v11 = v17;

    if (v11)
    {
      v12 = +[DEDUtils sharedLog];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(DEDIDSConnection *)v5 unpackProtobuf:v11, v12];
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
    }

    dictionary2 = dictionary;
  }

  else
  {
    v14 = +[DEDUtils sharedLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(DEDIDSConnection *)v5 unpackProtobuf:v14];
    }

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  }

  return dictionary2;
}

- (DEDIDSConnection)initWithController:(id)controller
{
  v78[31] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v76.receiver = self;
  v76.super_class = DEDIDSConnection;
  v5 = [(DEDIDSConnection *)&v76 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.ded"];
    service = v5->_service;
    v5->_service = v6;

    v8 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.ded.watch"];
    localService = v5->_localService;
    v5->_localService = v8;

    if (!v5->_service)
    {
      [DEDIDSConnection initWithController:];
    }

    v72 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v10 = dispatch_queue_create("com.apple.diagnosticextensionsd.idsqueue.discovery", v72);
    discovery_queue = v5->_discovery_queue;
    v5->_discovery_queue = v10;

    v12 = dispatch_queue_create("com.apple.diagnosticextensionsd.idsqueue", 0);
    run_queue = v5->_run_queue;
    v5->_run_queue = v12;

    v73 = controllerCopy;
    v14 = [[DEDIDSInbound alloc] initWithConnection:v5 controller:controllerCopy];
    incomingDelegate = v5->_incomingDelegate;
    v5->_incomingDelegate = v14;

    v16 = v5->_run_queue;
    v17 = dispatch_get_global_queue(2, 0);
    dispatch_set_target_queue(v16, v17);

    service = [(DEDIDSConnection *)v5 service];
    [service setProtobufAction:sel_logMalformedMessage forIncomingRequestsOfType:0];

    service2 = [(DEDIDSConnection *)v5 service];
    [service2 setProtobufAction:sel_logMalformedMessage forIncomingResponsesOfType:0];

    localService = [(DEDIDSConnection *)v5 localService];
    [localService setProtobufAction:sel_logMalformedMessage forIncomingRequestsOfType:0];

    localService2 = [(DEDIDSConnection *)v5 localService];
    [localService2 setProtobufAction:sel_logMalformedMessage forIncomingResponsesOfType:0];

    v77[0] = &unk_285B89A78;
    v71 = NSStringFromSelector(sel_remote_device_query_request_service_account_fromID_context_);
    v78[0] = v71;
    v77[1] = &unk_285B89A90;
    v70 = NSStringFromSelector(sel_remote_list_DE_service_account_fromID_context_);
    v78[1] = v70;
    v77[2] = &unk_285B89AA8;
    v69 = NSStringFromSelector(sel_device_supports_diagnostic_extensions_service_account_fromID_context_);
    v78[2] = v69;
    v77[3] = &unk_285B89AC0;
    v68 = NSStringFromSelector(sel_start_diagnostic_with_identifier_service_account_fromID_context_);
    v78[3] = v68;
    v77[4] = &unk_285B89AD8;
    v67 = NSStringFromSelector(sel_finished_diagnostic_with_identifier_service_account_fromID_context_);
    v78[4] = v67;
    v77[5] = &unk_285B89AF0;
    v66 = NSStringFromSelector(sel_start_session_service_account_fromID_context_);
    v78[5] = v66;
    v77[6] = &unk_285B89B08;
    v65 = NSStringFromSelector(sel_did_start_session_service_account_fromID_context_);
    v78[6] = v65;
    v77[7] = &unk_285B89B20;
    v64 = NSStringFromSelector(sel_session_ping_service_account_fromID_context_);
    v78[7] = v64;
    v77[8] = &unk_285B89B38;
    v63 = NSStringFromSelector(sel_session_pong_service_account_fromID_context_);
    v78[8] = v63;
    v77[9] = &unk_285B89B50;
    v62 = NSStringFromSelector(sel_terminate_diagnostic_with_identifier_service_account_fromID_context_);
    v78[9] = v62;
    v77[10] = &unk_285B89B68;
    v61 = NSStringFromSelector(sel_get_session_status_service_account_fromID_context_);
    v78[10] = v61;
    v77[11] = &unk_285B89B80;
    v60 = NSStringFromSelector(sel_did_get_session_status_service_account_fromID_context_);
    v78[11] = v60;
    v77[12] = &unk_285B89B98;
    v59 = NSStringFromSelector(sel_adopt_files_service_account_fromID_context_);
    v78[12] = v59;
    v77[13] = &unk_285B89BB0;
    v58 = NSStringFromSelector(sel_did_adopt_files_service_account_fromID_context_);
    v78[13] = v58;
    v77[14] = &unk_285B89BC8;
    v57 = NSStringFromSelector(sel_upload_progress_service_account_fromID_context_);
    v78[14] = v57;
    v77[15] = &unk_285B89BE0;
    v56 = NSStringFromSelector(sel_commit_session_service_account_fromID_context_);
    v78[15] = v56;
    v77[16] = &unk_285B89BF8;
    v55 = NSStringFromSelector(sel_did_commit_session_service_account_fromID_context_);
    v78[16] = v55;
    v77[17] = &unk_285B89C10;
    v54 = NSStringFromSelector(sel_cancel_session_service_account_fromID_context_);
    v78[17] = v54;
    v77[18] = &unk_285B89C28;
    v53 = NSStringFromSelector(sel_did_cancel_session_service_account_fromID_context_);
    v78[18] = v53;
    v77[19] = &unk_285B89C40;
    v52 = NSStringFromSelector(sel_sync_session_status_service_account_fromID_context_);
    v78[19] = v52;
    v77[20] = &unk_285B89C58;
    v51 = NSStringFromSelector(sel_did_sync_session_status_service_account_fromID_context_);
    v78[20] = v51;
    v77[21] = &unk_285B89C70;
    v50 = NSStringFromSelector(sel_get_session_state_service_account_fromID_context_);
    v78[21] = v50;
    v77[22] = &unk_285B89C88;
    v49 = NSStringFromSelector(sel_did_get_session_state_service_account_fromID_context_);
    v78[22] = v49;
    v77[23] = &unk_285B89CA0;
    v22 = NSStringFromSelector(sel_schedule_notification_service_account_fromID_context_);
    v78[23] = v22;
    v77[24] = &unk_285B89CB8;
    v23 = NSStringFromSelector(sel_unschedule_notification_service_account_fromID_context_);
    v78[24] = v23;
    v77[25] = &unk_285B89CD0;
    v24 = NSStringFromSelector(sel_present_notification_on_passthrough_daemon_service_account_fromID_context_);
    v78[25] = v24;
    v77[26] = &unk_285B89CE8;
    v25 = NSStringFromSelector(sel_remove_notification_on_passthrough_daemon_service_account_fromID_context_);
    v78[26] = v25;
    v77[27] = &unk_285B89D00;
    v26 = NSStringFromSelector(sel_add_session_data_service_account_fromID_context_);
    v78[27] = v26;
    v77[28] = &unk_285B89D18;
    v27 = NSStringFromSelector(sel_load_extension_text_data_service_account_fromID_context_);
    v78[28] = v27;
    v77[29] = &unk_285B89D30;
    v28 = NSStringFromSelector(sel_compression_progress_service_account_fromID_context_);
    v78[29] = v28;
    v77[30] = &unk_285B89D48;
    v29 = NSStringFromSelector(sel_upload_finished_service_account_fromID_context_);
    v78[30] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:31];

    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __39__DEDIDSConnection_initWithController___block_invoke;
    v74[3] = &unk_278F662A0;
    v31 = v5;
    v75 = v31;
    [v30 enumerateKeysAndObjectsUsingBlock:v74];
    service3 = [(DEDIDSConnection *)v31 service];
    [service3 setProtobufAction:sel_did_present_notification_on_passthrough_daemon_service_account_fromID_context_ forIncomingResponsesOfType:28];

    service4 = [(DEDIDSConnection *)v31 service];
    [service4 setProtobufAction:sel_did_remove_notification_on_passthrough_daemon_service_account_fromID_context_ forIncomingResponsesOfType:29];

    service5 = [(DEDIDSConnection *)v31 service];
    [service5 setProtobufAction:sel_did_load_extension_text_data_service_account_fromID_context_ forIncomingResponsesOfType:31];

    service6 = [(DEDIDSConnection *)v31 service];
    [service6 setProtobufAction:sel_local_device_query_callback_service_account_fromID_context_ forIncomingResponsesOfType:1];

    localService3 = [(DEDIDSConnection *)v31 localService];
    [localService3 setProtobufAction:sel_local_device_query_callback_service_account_fromID_context_ forIncomingResponsesOfType:1];

    localService4 = [(DEDIDSConnection *)v31 localService];
    [localService4 setProtobufAction:sel_did_present_notification_on_passthrough_daemon_service_account_fromID_context_ forIncomingResponsesOfType:28];

    localService5 = [(DEDIDSConnection *)v31 localService];
    [localService5 setProtobufAction:sel_did_remove_notification_on_passthrough_daemon_service_account_fromID_context_ forIncomingResponsesOfType:29];

    localService6 = [(DEDIDSConnection *)v31 localService];
    [localService6 setProtobufAction:sel_did_load_extension_text_data_service_account_fromID_context_ forIncomingResponsesOfType:31];

    service7 = [(DEDIDSConnection *)v31 service];
    incomingDelegate = [(DEDIDSConnection *)v31 incomingDelegate];
    run_queue = [(DEDIDSConnection *)v31 run_queue];
    [service7 addDelegate:incomingDelegate queue:run_queue];

    localService7 = [(DEDIDSConnection *)v31 localService];
    incomingDelegate2 = [(DEDIDSConnection *)v31 incomingDelegate];
    run_queue2 = [(DEDIDSConnection *)v31 run_queue];
    [localService7 addDelegate:incomingDelegate2 queue:run_queue2];

    v46 = DEDIDSConnectionLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      [DEDIDSConnection initWithController:v46];
    }

    controllerCopy = v73;
  }

  v47 = *MEMORY[0x277D85DE8];
  return v5;
}

void __39__DEDIDSConnection_initWithController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 service];
  [v8 setProtobufAction:NSSelectorFromString(v6) forIncomingRequestsOfType:{objc_msgSend(v7, "unsignedShortValue")}];

  v11 = [*(a1 + 32) localService];
  v9 = NSSelectorFromString(v6);

  v10 = [v7 unsignedShortValue];
  [v11 setProtobufAction:v9 forIncomingRequestsOfType:v10];
}

- (void)setDeviceCallback:(id)callback
{
  v8 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v5 = DEDIDSConnectionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = callbackCopy == 0;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Setting device status callback. Nil? [%i]", v7, 8u);
  }

  [(DEDIDSConnection *)self setDeviceStatusCallback:callbackCopy];
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendMessage:(int)message withData:(id)data forIDSDeviceIDs:(id)ds isResponse:(BOOL)response
{
  responseCopy = response;
  v47 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dsCopy = ds;
  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
  selfCopy = self;
  localService = [(DEDIDSConnection *)self localService];
  devices = [localService devices];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = dsCopy;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    v35 = v10;
    v36 = v9;
    v33 = v12;
    do
    {
      v16 = 0;
      do
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v41 + 1) + 8 * v16);
        if ([v17 hasPrefix:@"device"] && !objc_msgSend(v10, "count"))
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v18 = devices;
          v19 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v38;
            while (2)
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v38 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v37 + 1) + 8 * i);
                v24 = IDSCopyIDForDevice();
                if ([v17 isEqualToString:v24])
                {
                  if ([v23 isActive] && objc_msgSend(v23, "isConnected"))
                  {
                    [v35 addObject:v24];
                    v9 = v36;
                  }

                  else
                  {
                    v9 = v36;
                    [v36 addObject:v17];
                  }

                  goto LABEL_25;
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
              v9 = v36;
              if (v20)
              {
                continue;
              }

              break;
            }
          }

LABEL_25:

          v10 = v35;
          v12 = v33;
        }

        else
        {
          [v9 addObject:v17];
        }

        ++v16;
      }

      while (v16 != v14);
      v25 = [v12 countByEnumeratingWithState:&v41 objects:v46 count:16];
      v14 = v25;
    }

    while (v25);
  }

  v26 = [(DEDIDSConnection *)selfCopy sendMessage:message withData:dataCopy forIDSDeviceIDs:v9 localIDSDeviceIDs:v10 isResponse:responseCopy];
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)ids_startBugSessionWithIdentifier:(id)identifier configuration:(id)configuration caller:(id)caller target:(id)target
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = @"targetDevice";
  v21[1] = @"sessionID";
  v22[0] = target;
  v22[1] = identifier;
  v21[2] = @"config";
  v21[3] = @"callingDevice";
  v22[2] = configuration;
  v22[3] = caller;
  v10 = MEMORY[0x277CBEAC0];
  targetCopy = target;
  callerCopy = caller;
  configurationCopy = configuration;
  identifierCopy = identifier;
  v15 = [v10 dictionaryWithObjects:v22 forKeys:v21 count:4];
  v16 = [DEDIDSConnection packPayload:v15];
  v17 = MEMORY[0x277CBEB98];
  address = [targetCopy address];
  v19 = [v17 setWithObject:address];

  [(DEDIDSConnection *)self sendMessage:8 withData:v16 forIDSDeviceIDs:v19 isResponse:0];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)ids_didStartBugSessionWithInfo:(id)info forID:(id)d
{
  dCopy = d;
  v8 = [DEDIDSConnection packPayload:info];
  v7 = [MEMORY[0x277CBEB98] setWithObject:dCopy];

  [(DEDIDSConnection *)self sendMessage:9 withData:v8 forIDSDeviceIDs:v7 isResponse:0];
}

- (void)discoverDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  discovery_queue = [(DEDIDSConnection *)self discovery_queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__DEDIDSConnection_discoverDevicesWithCompletion___block_invoke;
  v7[3] = &unk_278F65B20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(discovery_queue, v7);
}

void __50__DEDIDSConnection_discoverDevicesWithCompletion___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = DEDIDSConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "Sending device pings", buf, 2u);
  }

  v31 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
  v3 = [*(a1 + 32) service];

  if (v3)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = a1;
    v4 = [*(a1 + 32) service];
    v5 = [v4 devices];

    v6 = v5;
    v7 = [v5 countByEnumeratingWithState:&v32 objects:v42 count:16];
    v8 = v31;
    if (v7)
    {
      v9 = v7;
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          v13 = DEDAddressForIDSDevice();
          v14 = [DEDDevice deviceWithIDSDevice:v12 address:v13];
          v15 = DEDIDSConnectionLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v12 name];
            v17 = [v14 idsIdentifier];
            *buf = 138478339;
            v37 = v16;
            v38 = 2113;
            v39 = v13;
            v40 = 2114;
            v41 = v17;
            _os_log_impl(&dword_248AD7000, v15, OS_LOG_TYPE_DEFAULT, "Ping sent: device name: %{private}@ targetID: %{private}@ | [%{public}@]", buf, 0x20u);

            v8 = v31;
          }

          [v8 addObject:v14];
        }

        v9 = [v6 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v9);
    }

    v18 = v8;
    v19 = *(v30 + 32);
    v20 = [MEMORY[0x277CBEA90] data];
    v21 = MEMORY[0x277CBEB98];
    v22 = [*(v30 + 32) service];
    v23 = [v22 devices];
    v24 = [v21 setWithArray:v23];
    [v19 sendMessage:1 withData:v20 forDevices:v24 isResponse:0];

    v25 = *(v30 + 40);
    v26 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
    (*(v25 + 16))(v25, v26);
  }

  else
  {
    v27 = DEDIDSConnectionLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __50__DEDIDSConnection_discoverDevicesWithCompletion___block_invoke_cold_1();
    }

    v28 = *(a1 + 40);
    v26 = objc_opt_new();
    (*(v28 + 16))(v28, v26);
    v18 = v31;
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)incomingDeviceReceived:(id)received
{
  v15 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  v5 = DEDIDSConnectionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    publicLogDescription = [receivedCopy publicLogDescription];
    identifier = [receivedCopy identifier];
    v11 = 138543618;
    v12 = publicLogDescription;
    v13 = 2114;
    v14 = identifier;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "Got device ping for device [%{public}@] identifier: [%{public}@]", &v11, 0x16u);
  }

  deviceStatusCallback = [(DEDIDSConnection *)self deviceStatusCallback];

  if (deviceStatusCallback)
  {
    deviceStatusCallback2 = [(DEDIDSConnection *)self deviceStatusCallback];
    (*(deviceStatusCallback2 + 16))(deviceStatusCallback2, receivedCopy, 1);
  }

  else
  {
    deviceStatusCallback2 = DEDIDSConnectionLog();
    if (os_log_type_enabled(deviceStatusCallback2, OS_LOG_TYPE_ERROR))
    {
      [DEDIDSConnection incomingDeviceReceived:];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (DEDClientProtocol)remoteSideDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteSideDelegate);

  return WeakRetained;
}

+ (void)packPayload:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_248AD7000, log, OS_LOG_TYPE_ERROR, "error archiving payload [%{public}@] with error: [%{public}@]", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)unpackProtobuf:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 67109378;
  v6[1] = [a1 type];
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_248AD7000, a3, OS_LOG_TYPE_ERROR, "failed to unpack protobuf data [%hu] with error [%{public}@]", v6, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)unpackProtobuf:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = 67109120;
  v4[1] = [a1 type];
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "failed to unpack protobuf [%hu] with error: protobuf or protobuf data is nil ", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:withData:forIDSDeviceIDs:localIDSDeviceIDs:isResponse:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:withData:forIDSDeviceIDs:localIDSDeviceIDs:isResponse:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end