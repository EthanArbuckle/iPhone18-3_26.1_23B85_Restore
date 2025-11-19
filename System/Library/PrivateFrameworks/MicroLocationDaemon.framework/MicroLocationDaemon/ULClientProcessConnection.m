@interface ULClientProcessConnection
- (NSString)description;
- (ULClientProcessConnection)initWithXPCConnection:(id)a3 delegate:(id)a4 serviceHandling:(id)a5 legacyServiceHandling:(id)a6 diagnosticsHandling:(id)a7 queue:(id)a8;
- (ULClientProcessConnectionDelegate)delegate;
- (void)addLabel:(id)a3;
- (void)addLabel:(id)a3 betweenStartDate:(id)a4 andEndDate:(id)a5;
- (void)createCustomLocationOfInterestAtCurrentLocationWithConfiguration:(id)a3;
- (void)createServiceWithServiceType:(unint64_t)a3 locationTypes:(id)a4 reply:(id)a5;
- (void)dealloc;
- (void)deleteServiceWithIdentifier:(id)a3 reply:(id)a4;
- (void)disconnectWithRequestIdentifier:(id)a3;
- (void)exportDatabaseWithReply:(id)a3;
- (void)getMicroLocationInternalVersionWithReply:(id)a3;
- (void)imageFeaturesDebugWithTask:(unint64_t)a3 additionalInformation:(id)a4 reply:(id)a5;
- (void)polarisDebugWithTask:(unint64_t)a3 reply:(id)a4;
- (void)purgeDatabaseWithReply:(id)a3;
- (void)queryServicesWithReply:(id)a3;
- (void)removeCustomLocationOfInterestWithIdentifier:(id)a3;
- (void)requestAllModelsLearningWithRequestIdentifier:(id)a3;
- (void)requestCurrentMicroLocationWithAdditionalInformation:(id)a3 reply:(id)a4;
- (void)requestMicroLocationRecordingScanWithAdditionalInformation:(id)a3 reply:(id)a4;
- (void)requestObservationWithRequestIdentifier:(id)a3;
- (void)requestPredictionWithRequestIdentifier:(id)a3;
- (void)runWithConfiguration:(id)a3 serviceIdentifier:(id)a4 legacyServiceIdentifier:(id)a5 andRequestIdentifier:(id)a6;
@end

@implementation ULClientProcessConnection

- (ULClientProcessConnection)initWithXPCConnection:(id)a3 delegate:(id)a4 serviceHandling:(id)a5 legacyServiceHandling:(id)a6 diagnosticsHandling:(id)a7 queue:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = ULClientProcessConnection;
  v20 = [(ULClientProcessConnection *)&v34 init];
  if (v20)
  {
    if (![ULServerEntitlements allowConnection:v14])
    {
      v27 = 0;
      goto LABEL_6;
    }

    v21 = [v14 signingIdentity];
    [(ULClientProcessConnection *)v20 setSigningIdentity:v21];

    v22 = [MEMORY[0x277CCAD78] UUID];
    [(ULClientProcessConnection *)v20 setConnectionToken:v22];

    v23 = [MEMORY[0x277D28820] responseInterface];
    [v14 setRemoteObjectInterface:v23];

    v24 = [MEMORY[0x277D28820] requestInterface];
    [v14 setExportedInterface:v24];

    v25 = [objc_alloc(MEMORY[0x277D28888]) initWithObject:v20];
    [v14 setExportedObject:v25];

    objc_initWeak(&location, v20);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke;
    v31[3] = &unk_2798D4348;
    objc_copyWeak(&v32, &location);
    [v14 setInterruptionHandler:v31];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_4;
    v29[3] = &unk_2798D4348;
    objc_copyWeak(&v30, &location);
    [v14 setInvalidationHandler:v29];
    v26 = [v14 remoteObjectProxy];
    [(ULClientProcessConnection *)v20 setRemoteObjectProxy:v26];

    [(ULClientProcessConnection *)v20 setXpcConnection:v14];
    [(ULClientProcessConnection *)v20 setDelegate:v15];
    [(ULClientProcessConnection *)v20 setServiceHandling:v16];
    [(ULClientProcessConnection *)v20 setLegacyServiceHandling:v17];
    [(ULClientProcessConnection *)v20 setDiagnosticsHandling:v18];
    [(ULClientProcessConnection *)v20 setQueue:v19];
    [v14 resume];
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
  v3 = [(ULClientProcessConnection *)self xpcConnection];
  [v3 invalidate];

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

  v7 = [(ULClientProcessConnection *)self signingIdentity];
  [v6 appendFormat:@", signingIdentity: %@", v7];

  v8 = [(ULClientProcessConnection *)self connectionToken];
  [v6 appendFormat:@", connectionToken: %@", v8];

  [v6 appendString:@">"];

  return v6;
}

- (void)createServiceWithServiceType:(unint64_t)a3 locationTypes:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ULClientProcessConnection *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__ULClientProcessConnection_createServiceWithServiceType_locationTypes_reply___block_invoke;
  v13[3] = &unk_2798D56D0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
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

- (void)deleteServiceWithIdentifier:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ULClientProcessConnection *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ULClientProcessConnection_deleteServiceWithIdentifier_reply___block_invoke;
  block[3] = &unk_2798D56F8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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

- (void)queryServicesWithReply:(id)a3
{
  v4 = a3;
  v5 = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__ULClientProcessConnection_queryServicesWithReply___block_invoke;
  v7[3] = &unk_2798D5720;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)requestCurrentMicroLocationWithAdditionalInformation:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ULClientProcessConnection *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__ULClientProcessConnection_requestCurrentMicroLocationWithAdditionalInformation_reply___block_invoke;
  block[3] = &unk_2798D56F8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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

- (void)requestMicroLocationRecordingScanWithAdditionalInformation:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ULClientProcessConnection *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__ULClientProcessConnection_requestMicroLocationRecordingScanWithAdditionalInformation_reply___block_invoke;
  block[3] = &unk_2798D56F8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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

- (void)getMicroLocationInternalVersionWithReply:(id)a3
{
  v4 = a3;
  v5 = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__ULClientProcessConnection_getMicroLocationInternalVersionWithReply___block_invoke;
  v7[3] = &unk_2798D5720;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)disconnectWithRequestIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__ULClientProcessConnection_disconnectWithRequestIdentifier___block_invoke;
  v7[3] = &unk_2798D44B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)runWithConfiguration:(id)a3 serviceIdentifier:(id)a4 legacyServiceIdentifier:(id)a5 andRequestIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ULClientProcessConnection *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__ULClientProcessConnection_runWithConfiguration_serviceIdentifier_legacyServiceIdentifier_andRequestIdentifier___block_invoke;
  block[3] = &unk_2798D5748;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = self;
  v24 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
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

- (void)addLabel:(id)a3
{
  v4 = a3;
  v5 = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ULClientProcessConnection_addLabel___block_invoke;
  v7[3] = &unk_2798D44B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)addLabel:(id)a3 betweenStartDate:(id)a4 andEndDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ULClientProcessConnection *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__ULClientProcessConnection_addLabel_betweenStartDate_andEndDate___block_invoke;
  v15[3] = &unk_2798D5770;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
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

- (void)requestObservationWithRequestIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__ULClientProcessConnection_requestObservationWithRequestIdentifier___block_invoke;
  v7[3] = &unk_2798D44B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)requestPredictionWithRequestIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__ULClientProcessConnection_requestPredictionWithRequestIdentifier___block_invoke;
  v7[3] = &unk_2798D44B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)createCustomLocationOfInterestAtCurrentLocationWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__ULClientProcessConnection_createCustomLocationOfInterestAtCurrentLocationWithConfiguration___block_invoke;
  v7[3] = &unk_2798D44B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)removeCustomLocationOfInterestWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__ULClientProcessConnection_removeCustomLocationOfInterestWithIdentifier___block_invoke;
  v7[3] = &unk_2798D44B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)requestAllModelsLearningWithRequestIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ULClientProcessConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__ULClientProcessConnection_requestAllModelsLearningWithRequestIdentifier___block_invoke;
  v7[3] = &unk_2798D44B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)imageFeaturesDebugWithTask:(unint64_t)a3 additionalInformation:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(ULClientProcessConnection *)self xpcConnection];
  v11 = [ULServerEntitlements allowPrivateDataAccess:v10];

  if (v11)
  {
    v12 = [(ULClientProcessConnection *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__ULClientProcessConnection_imageFeaturesDebugWithTask_additionalInformation_reply___block_invoke;
    block[3] = &unk_2798D56D0;
    block[4] = self;
    v20 = a3;
    v18 = v8;
    v19 = v9;
    dispatch_async(v12, block);
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"Image Features debug missing entitlements";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v15 = [v13 initWithDomain:@"ULClientProcessConnection" code:41 userInfo:v14];

    (*(v9 + 2))(v9, 0, v15);
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

- (void)polarisDebugWithTask:(unint64_t)a3 reply:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(ULClientProcessConnection *)self xpcConnection];
  v8 = [ULServerEntitlements allowPrivateDataAccess:v7];

  if (v8)
  {
    v9 = [(ULClientProcessConnection *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__ULClientProcessConnection_polarisDebugWithTask_reply___block_invoke;
    v14[3] = &unk_2798D5798;
    v16 = a3;
    v14[4] = self;
    v15 = v6;
    dispatch_async(v9, v14);
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"polaris debug missing entitlements";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v12 = [v10 initWithDomain:@"ULClientProcessConnection" code:41 userInfo:v11];

    (*(v6 + 2))(v6, v12);
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

- (void)exportDatabaseWithReply:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ULClientProcessConnection *)self xpcConnection];
  v6 = [ULServerEntitlements allowPrivateDataAccess:v5];

  if (v6)
  {
    v7 = [(ULClientProcessConnection *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__ULClientProcessConnection_exportDatabaseWithReply___block_invoke;
    block[3] = &unk_2798D5720;
    block[4] = self;
    v13 = v4;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"export database missing entitlements";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v8 initWithDomain:@"ULClientProcessConnection" code:41 userInfo:v9];

    (*(v4 + 2))(v4, 0, v10);
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

- (void)purgeDatabaseWithReply:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ULClientProcessConnection *)self xpcConnection];
  v6 = [ULServerEntitlements allowPrivateDataAccess:v5];

  if (v6)
  {
    v7 = [(ULClientProcessConnection *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__ULClientProcessConnection_purgeDatabaseWithReply___block_invoke;
    block[3] = &unk_2798D5720;
    block[4] = self;
    v13 = v4;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"purge database missing entitlements";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v8 initWithDomain:@"ULClientProcessConnection" code:41 userInfo:v9];

    (*(v4 + 2))(v4, v10);
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