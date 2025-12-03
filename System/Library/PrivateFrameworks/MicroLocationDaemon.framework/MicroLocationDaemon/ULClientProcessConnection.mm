@interface ULClientProcessConnection
- (NSString)description;
- (ULClientProcessConnection)initWithXPCConnection:(id)connection delegate:(id)delegate serviceHandling:(id)handling legacyServiceHandling:(id)serviceHandling diagnosticsHandling:(id)diagnosticsHandling queue:(id)queue;
- (ULClientProcessConnectionDelegate)delegate;
- (void)addLabel:(id)label;
- (void)addLabel:(id)label betweenStartDate:(id)date andEndDate:(id)endDate;
- (void)createCustomLocationOfInterestAtCurrentLocationWithConfiguration:(id)configuration;
- (void)createServiceWithServiceType:(unint64_t)type locationTypes:(id)types reply:(id)reply;
- (void)dealloc;
- (void)deleteServiceWithIdentifier:(id)identifier reply:(id)reply;
- (void)disconnectWithRequestIdentifier:(id)identifier;
- (void)exportDatabaseWithReply:(id)reply;
- (void)getMicroLocationInternalVersionWithReply:(id)reply;
- (void)imageFeaturesDebugWithTask:(unint64_t)task additionalInformation:(id)information reply:(id)reply;
- (void)polarisDebugWithTask:(unint64_t)task reply:(id)reply;
- (void)purgeDatabaseWithReply:(id)reply;
- (void)queryServicesWithReply:(id)reply;
- (void)removeCustomLocationOfInterestWithIdentifier:(id)identifier;
- (void)requestAllModelsLearningWithRequestIdentifier:(id)identifier;
- (void)requestCurrentMicroLocationWithAdditionalInformation:(id)information reply:(id)reply;
- (void)requestMicroLocationRecordingScanWithAdditionalInformation:(id)information reply:(id)reply;
- (void)requestObservationWithRequestIdentifier:(id)identifier;
- (void)requestPredictionWithRequestIdentifier:(id)identifier;
- (void)runWithConfiguration:(id)configuration serviceIdentifier:(id)identifier legacyServiceIdentifier:(id)serviceIdentifier andRequestIdentifier:(id)requestIdentifier;
@end

@implementation ULClientProcessConnection

- (ULClientProcessConnection)initWithXPCConnection:(id)connection delegate:(id)delegate serviceHandling:(id)handling legacyServiceHandling:(id)serviceHandling diagnosticsHandling:(id)diagnosticsHandling queue:(id)queue
{
  connectionCopy = connection;
  delegateCopy = delegate;
  handlingCopy = handling;
  serviceHandlingCopy = serviceHandling;
  diagnosticsHandlingCopy = diagnosticsHandling;
  queueCopy = queue;
  v34.receiver = self;
  v34.super_class = ULClientProcessConnection;
  v20 = [(ULClientProcessConnection *)&v34 init];
  if (v20)
  {
    if (![ULServerEntitlements allowConnection:connectionCopy])
    {
      v27 = 0;
      goto LABEL_6;
    }

    signingIdentity = [connectionCopy signingIdentity];
    [(ULClientProcessConnection *)v20 setSigningIdentity:signingIdentity];

    uUID = [MEMORY[0x277CCAD78] UUID];
    [(ULClientProcessConnection *)v20 setConnectionToken:uUID];

    responseInterface = [MEMORY[0x277D28820] responseInterface];
    [connectionCopy setRemoteObjectInterface:responseInterface];

    requestInterface = [MEMORY[0x277D28820] requestInterface];
    [connectionCopy setExportedInterface:requestInterface];

    v25 = [objc_alloc(MEMORY[0x277D28888]) initWithObject:v20];
    [connectionCopy setExportedObject:v25];

    objc_initWeak(&location, v20);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke;
    v31[3] = &unk_2798D4348;
    objc_copyWeak(&v32, &location);
    [connectionCopy setInterruptionHandler:v31];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_4;
    v29[3] = &unk_2798D4348;
    objc_copyWeak(&v30, &location);
    [connectionCopy setInvalidationHandler:v29];
    remoteObjectProxy = [connectionCopy remoteObjectProxy];
    [(ULClientProcessConnection *)v20 setRemoteObjectProxy:remoteObjectProxy];

    [(ULClientProcessConnection *)v20 setXpcConnection:connectionCopy];
    [(ULClientProcessConnection *)v20 setDelegate:delegateCopy];
    [(ULClientProcessConnection *)v20 setServiceHandling:handlingCopy];
    [(ULClientProcessConnection *)v20 setLegacyServiceHandling:serviceHandlingCopy];
    [(ULClientProcessConnection *)v20 setDiagnosticsHandling:diagnosticsHandlingCopy];
    [(ULClientProcessConnection *)v20 setQueue:queueCopy];
    [connectionCopy resume];
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  v27 = v20;
LABEL_6:

  return v27;
}

void __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [WeakRetained signingIdentity];
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted for: %@", &v6, 0xCu);
    }

    v4 = [WeakRetained delegate];
    [v4 clientConnectionSeveredConnection:WeakRetained];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [WeakRetained signingIdentity];
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated for: %@", &v6, 0xCu);
    }

    v4 = [WeakRetained delegate];
    [v4 clientConnectionSeveredConnection:WeakRetained];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  xpcConnection = [(ULClientProcessConnection *)self xpcConnection];
  [xpcConnection invalidate];

  v4.receiver = self;
  v4.super_class = ULClientProcessConnection;
  [(ULClientProcessConnection *)&v4 dealloc];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  signingIdentity = [(ULClientProcessConnection *)self signingIdentity];
  [v6 appendFormat:@", signingIdentity: %@", signingIdentity];

  connectionToken = [(ULClientProcessConnection *)self connectionToken];
  [v6 appendFormat:@", connectionToken: %@", connectionToken];

  [v6 appendString:@">"];

  return v6;
}

- (void)createServiceWithServiceType:(unint64_t)type locationTypes:(id)types reply:(id)reply
{
  typesCopy = types;
  replyCopy = reply;
  queue = [(ULClientProcessConnection *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__ULClientProcessConnection_createServiceWithServiceType_locationTypes_reply___block_invoke;
  v13[3] = &unk_2798D56D0;
  v14 = typesCopy;
  selfCopy = self;
  v16 = replyCopy;
  typeCopy = type;
  v11 = replyCopy;
  v12 = typesCopy;
  dispatch_async(queue, v13);
}

void __78__ULClientProcessConnection_createServiceWithServiceType_locationTypes_reply___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v4)
  {
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v21 + 1) + 8 * i) locationType];
        v7 = ULLocationTypeToString();
        [v2 addObject:v7];
      }

      v4 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v4);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    __78__ULClientProcessConnection_createServiceWithServiceType_locationTypes_reply___block_invoke_cold_1();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 56);
    v10 = ULServiceTypeToString();
    *buf = 138412546;
    v26 = v10;
    v27 = 2112;
    v28 = v2;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "Creating service for service type: %@, location types:%@", buf, 0x16u);
  }

  v11 = [*(a1 + 40) serviceHandling];
  v12 = *(a1 + 56);
  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) signingIdentity];
  v15 = [v11 createServiceWithServiceType:v12 locationTypes:v13 clientId:v14];

  v16 = *(a1 + 48);
  v17 = [v15 serviceDescriptor];
  v18 = [v17 serviceIdentifier];
  v19 = [v15 error];
  (*(v16 + 16))(v16, v18, v19);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)deleteServiceWithIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  queue = [(ULClientProcessConnection *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ULClientProcessConnection_deleteServiceWithIdentifier_reply___block_invoke;
  block[3] = &unk_2798D56F8;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = replyCopy;
  v9 = replyCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

void __63__ULClientProcessConnection_deleteServiceWithIdentifier_reply___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "Deleting service:%@", &v11, 0xCu);
  }

  v4 = [*(a1 + 40) serviceHandling];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) signingIdentity];
  v7 = [v4 deleteServiceWithIdentifier:v5 clientIdentifier:v6];

  v8 = *(a1 + 48);
  v9 = [v7 error];
  (*(v8 + 16))(v8, v9);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)queryServicesWithReply:(id)reply
{
  replyCopy = reply;
  queue = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__ULClientProcessConnection_queryServicesWithReply___block_invoke;
  v7[3] = &unk_2798D5720;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, v7);
}

void __52__ULClientProcessConnection_queryServicesWithReply___block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "Query services", v6, 2u);
  }

  v3 = [*(a1 + 32) serviceHandling];
  v4 = [*(a1 + 32) signingIdentity];
  v5 = [v3 queryServicesForClient:v4];

  (*(*(a1 + 40) + 16))();
}

- (void)requestCurrentMicroLocationWithAdditionalInformation:(id)information reply:(id)reply
{
  informationCopy = information;
  replyCopy = reply;
  queue = [(ULClientProcessConnection *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__ULClientProcessConnection_requestCurrentMicroLocationWithAdditionalInformation_reply___block_invoke;
  block[3] = &unk_2798D56F8;
  v12 = informationCopy;
  selfCopy = self;
  v14 = replyCopy;
  v9 = replyCopy;
  v10 = informationCopy;
  dispatch_async(queue, block);
}

uint64_t __88__ULClientProcessConnection_requestCurrentMicroLocationWithAdditionalInformation_reply___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "requestCurrentMicroLocationWithAdditionalInformation, localizationInformation: %@", &v9, 0xCu);
  }

  v4 = [*(a1 + 40) legacyServiceHandling];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) signingIdentity];
  [v4 requestCurrentMicroLocationWithAdditionalInformation:v5 clientId:v6];

  result = (*(*(a1 + 48) + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)requestMicroLocationRecordingScanWithAdditionalInformation:(id)information reply:(id)reply
{
  informationCopy = information;
  replyCopy = reply;
  queue = [(ULClientProcessConnection *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__ULClientProcessConnection_requestMicroLocationRecordingScanWithAdditionalInformation_reply___block_invoke;
  block[3] = &unk_2798D56F8;
  v12 = informationCopy;
  selfCopy = self;
  v14 = replyCopy;
  v9 = replyCopy;
  v10 = informationCopy;
  dispatch_async(queue, block);
}

uint64_t __94__ULClientProcessConnection_requestMicroLocationRecordingScanWithAdditionalInformation_reply___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "requestMicroLocationRecordingScanWithAdditionalInformation, recordingInformation: %@", &v9, 0xCu);
  }

  v4 = [*(a1 + 40) legacyServiceHandling];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) signingIdentity];
  [v4 requestMicroLocationRecordingScanWithAdditionalInformation:v5 clientId:v6];

  result = (*(*(a1 + 48) + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)getMicroLocationInternalVersionWithReply:(id)reply
{
  replyCopy = reply;
  queue = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__ULClientProcessConnection_getMicroLocationInternalVersionWithReply___block_invoke;
  v7[3] = &unk_2798D5720;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, v7);
}

void __70__ULClientProcessConnection_getMicroLocationInternalVersionWithReply___block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "getMicroLocationInternalVersionWithReply", v5, 2u);
  }

  v3 = [*(a1 + 32) legacyServiceHandling];
  v4 = [v3 getMicroLocationInternalVersion];

  (*(*(a1 + 40) + 16))();
}

- (void)disconnectWithRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__ULClientProcessConnection_disconnectWithRequestIdentifier___block_invoke;
  v7[3] = &unk_2798D44B0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

void __61__ULClientProcessConnection_disconnectWithRequestIdentifier___block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "disconnect", v6, 2u);
  }

  [*(a1 + 32) setServiceIdentifier:0];
  v3 = [*(a1 + 32) serviceHandling];
  v4 = [*(a1 + 32) connectionToken];
  v5 = [*(a1 + 32) signingIdentity];
  [v3 disconnectWithConnectionToken:v4 clientIdentifier:v5 requestIdentifier:*(a1 + 40)];
}

- (void)runWithConfiguration:(id)configuration serviceIdentifier:(id)identifier legacyServiceIdentifier:(id)serviceIdentifier andRequestIdentifier:(id)requestIdentifier
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  serviceIdentifierCopy = serviceIdentifier;
  requestIdentifierCopy = requestIdentifier;
  queue = [(ULClientProcessConnection *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__ULClientProcessConnection_runWithConfiguration_serviceIdentifier_legacyServiceIdentifier_andRequestIdentifier___block_invoke;
  block[3] = &unk_2798D5748;
  v20 = configurationCopy;
  v21 = identifierCopy;
  v22 = serviceIdentifierCopy;
  selfCopy = self;
  v24 = requestIdentifierCopy;
  v15 = requestIdentifierCopy;
  v16 = serviceIdentifierCopy;
  v17 = identifierCopy;
  v18 = configurationCopy;
  dispatch_async(queue, block);
}

void __113__ULClientProcessConnection_runWithConfiguration_serviceIdentifier_legacyServiceIdentifier_andRequestIdentifier___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v13 = 138412802;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "runWithConfiguration: %@, serviceIdentifier:%@, legacyServiceIdentifier: %@", &v13, 0x20u);
  }

  [*(a1 + 56) setServiceIdentifier:*(a1 + 40)];
  v6 = [*(a1 + 56) serviceHandling];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 56) serviceIdentifier];
  v9 = *(a1 + 48);
  v10 = [*(a1 + 56) signingIdentity];
  v11 = [*(a1 + 56) connectionToken];
  [v6 runWithConfiguration:v7 serviceIdentifier:v8 legacyServiceIdentifier:v9 clientIdentifier:v10 connectionToken:v11 requestIdentifier:*(a1 + 64)];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addLabel:(id)label
{
  labelCopy = label;
  queue = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ULClientProcessConnection_addLabel___block_invoke;
  v7[3] = &unk_2798D44B0;
  v8 = labelCopy;
  selfCopy = self;
  v6 = labelCopy;
  dispatch_async(queue, v7);
}

void __38__ULClientProcessConnection_addLabel___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v4 = [*(a1 + 32) contextLayer];
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "addLabel with name: %@ contextLayer: %@", &v8, 0x16u);
  }

  v5 = [*(a1 + 40) serviceHandling];
  v6 = [*(a1 + 40) connectionToken];
  [v5 addLabelForConnectionToken:v6 label:*(a1 + 32)];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addLabel:(id)label betweenStartDate:(id)date andEndDate:(id)endDate
{
  labelCopy = label;
  dateCopy = date;
  endDateCopy = endDate;
  queue = [(ULClientProcessConnection *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__ULClientProcessConnection_addLabel_betweenStartDate_andEndDate___block_invoke;
  v15[3] = &unk_2798D5770;
  v16 = labelCopy;
  v17 = dateCopy;
  v18 = endDateCopy;
  selfCopy = self;
  v12 = endDateCopy;
  v13 = dateCopy;
  v14 = labelCopy;
  dispatch_async(queue, v15);
}

void __66__ULClientProcessConnection_addLabel_betweenStartDate_andEndDate___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 contextLayer];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v10 = 138413058;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "addLabel with name: %@ contextLayer: %@ between dates: %@ - %@", &v10, 0x2Au);
  }

  v7 = [*(a1 + 56) serviceHandling];
  v8 = [*(a1 + 56) connectionToken];
  [v7 addLabelForConnectionToken:v8 label:*(a1 + 32) betweenStartDate:*(a1 + 40) andEndDate:*(a1 + 48)];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)requestObservationWithRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__ULClientProcessConnection_requestObservationWithRequestIdentifier___block_invoke;
  v7[3] = &unk_2798D44B0;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

void __69__ULClientProcessConnection_requestObservationWithRequestIdentifier___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "requestObservationWithRequestIdentifier:%@", &v8, 0xCu);
  }

  v4 = [*(a1 + 40) serviceHandling];
  v5 = [*(a1 + 40) connectionToken];
  v6 = [*(a1 + 40) signingIdentity];
  [v4 requestObservationForConnectionToken:v5 clientIdentifier:v6 requestIdentifier:*(a1 + 32)];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestPredictionWithRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__ULClientProcessConnection_requestPredictionWithRequestIdentifier___block_invoke;
  v7[3] = &unk_2798D44B0;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

void __68__ULClientProcessConnection_requestPredictionWithRequestIdentifier___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "requestPredictionWithRequestIdentifier:%@", &v8, 0xCu);
  }

  v4 = [*(a1 + 40) serviceHandling];
  v5 = [*(a1 + 40) connectionToken];
  v6 = [*(a1 + 40) signingIdentity];
  [v4 requestPredictionForConnectionToken:v5 clientIdentifier:v6 requestIdentifier:*(a1 + 32)];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)createCustomLocationOfInterestAtCurrentLocationWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__ULClientProcessConnection_createCustomLocationOfInterestAtCurrentLocationWithConfiguration___block_invoke;
  v7[3] = &unk_2798D44B0;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(queue, v7);
}

void __94__ULClientProcessConnection_createCustomLocationOfInterestAtCurrentLocationWithConfiguration___block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "createCustomLocationOfInterestAtCurrentLocationWithConfiguration", v5, 2u);
  }

  v3 = [*(a1 + 32) serviceHandling];
  v4 = [*(a1 + 32) connectionToken];
  [v3 createCustomLoiAtCurrentLocationForConnectionToken:v4 withConfiguration:*(a1 + 40)];
}

- (void)removeCustomLocationOfInterestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__ULClientProcessConnection_removeCustomLocationOfInterestWithIdentifier___block_invoke;
  v7[3] = &unk_2798D44B0;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

void __74__ULClientProcessConnection_removeCustomLocationOfInterestWithIdentifier___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "removeCustomLocationOfInterestWithIdentifier: %@", &v8, 0xCu);
  }

  v4 = [*(a1 + 40) serviceHandling];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) connectionToken];
  [v4 removeCustomLoiWithIdentifier:v5 forConnectionToken:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestAllModelsLearningWithRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__ULClientProcessConnection_requestAllModelsLearningWithRequestIdentifier___block_invoke;
  v7[3] = &unk_2798D44B0;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

void __75__ULClientProcessConnection_requestAllModelsLearningWithRequestIdentifier___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "requestAllModelsLearningWithRequestIdentifier: %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) diagnosticsHandling];
  v5 = [*(a1 + 40) connectionToken];
  [v4 requestModelLearningForConnectionToken:v5 requestIdentifier:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)imageFeaturesDebugWithTask:(unint64_t)task additionalInformation:(id)information reply:(id)reply
{
  v22[1] = *MEMORY[0x277D85DE8];
  informationCopy = information;
  replyCopy = reply;
  xpcConnection = [(ULClientProcessConnection *)self xpcConnection];
  v11 = [ULServerEntitlements allowPrivateDataAccess:xpcConnection];

  if (v11)
  {
    queue = [(ULClientProcessConnection *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__ULClientProcessConnection_imageFeaturesDebugWithTask_additionalInformation_reply___block_invoke;
    block[3] = &unk_2798D56D0;
    block[4] = self;
    taskCopy = task;
    v18 = informationCopy;
    v19 = replyCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"Image Features debug missing entitlements";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v15 = [v13 initWithDomain:@"ULClientProcessConnection" code:41 userInfo:v14];

    (*(replyCopy + 2))(replyCopy, 0, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __84__ULClientProcessConnection_imageFeaturesDebugWithTask_additionalInformation_reply___block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "imageFeaturesDebugWithTask", v5, 2u);
  }

  v3 = [*(a1 + 32) diagnosticsHandling];
  v4 = [v3 imageFeaturesDebugWithTask:*(a1 + 56) additionalInformation:*(a1 + 40)];

  (*(*(a1 + 48) + 16))();
}

- (void)polarisDebugWithTask:(unint64_t)task reply:(id)reply
{
  v18[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  xpcConnection = [(ULClientProcessConnection *)self xpcConnection];
  v8 = [ULServerEntitlements allowPrivateDataAccess:xpcConnection];

  if (v8)
  {
    queue = [(ULClientProcessConnection *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__ULClientProcessConnection_polarisDebugWithTask_reply___block_invoke;
    v14[3] = &unk_2798D5798;
    taskCopy = task;
    v14[4] = self;
    v15 = replyCopy;
    dispatch_async(queue, v14);
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"polaris debug missing entitlements";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v12 = [v10 initWithDomain:@"ULClientProcessConnection" code:41 userInfo:v11];

    (*(replyCopy + 2))(replyCopy, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __56__ULClientProcessConnection_polarisDebugWithTask_reply___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = ULPolarisManagerTaskToString();
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "polarisDebugWithTask: %@", &v8, 0xCu);
  }

  v5 = [*(a1 + 32) diagnosticsHandling];
  v6 = [v5 polarisDebugWithTask:*(a1 + 48)];

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)exportDatabaseWithReply:(id)reply
{
  v15[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  xpcConnection = [(ULClientProcessConnection *)self xpcConnection];
  v6 = [ULServerEntitlements allowPrivateDataAccess:xpcConnection];

  if (v6)
  {
    queue = [(ULClientProcessConnection *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__ULClientProcessConnection_exportDatabaseWithReply___block_invoke;
    block[3] = &unk_2798D5720;
    block[4] = self;
    v13 = replyCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"export database missing entitlements";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v8 initWithDomain:@"ULClientProcessConnection" code:41 userInfo:v9];

    (*(replyCopy + 2))(replyCopy, 0, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __53__ULClientProcessConnection_exportDatabaseWithReply___block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "exportDatabaseWithReply", v8, 2u);
  }

  v3 = [*(a1 + 32) diagnosticsHandling];
  v4 = [v3 exportDatabase];

  v5 = *(a1 + 40);
  v6 = [v4 exportedURLs];
  v7 = [v4 error];
  (*(v5 + 16))(v5, v6, v7);
}

- (void)purgeDatabaseWithReply:(id)reply
{
  v15[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  xpcConnection = [(ULClientProcessConnection *)self xpcConnection];
  v6 = [ULServerEntitlements allowPrivateDataAccess:xpcConnection];

  if (v6)
  {
    queue = [(ULClientProcessConnection *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__ULClientProcessConnection_purgeDatabaseWithReply___block_invoke;
    block[3] = &unk_2798D5720;
    block[4] = self;
    v13 = replyCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"purge database missing entitlements";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v8 initWithDomain:@"ULClientProcessConnection" code:41 userInfo:v9];

    (*(replyCopy + 2))(replyCopy, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __52__ULClientProcessConnection_purgeDatabaseWithReply___block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "purgeDatabaseWithReply", v5, 2u);
  }

  v3 = [*(a1 + 32) diagnosticsHandling];
  v4 = [v3 purgeDatabase];

  (*(*(a1 + 40) + 16))();
}

- (ULClientProcessConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end