@interface HAP2AccessoryServerSecureTransportPairVerify
- (HAP2AccessoryServerSecureTransportPairVerify)initWithTransport:(id)transport operationQueue:(id)queue;
- (HAPSecuritySession)securitySession;
- (id)securitySession:(id)session didReceiveLocalPairingIdentityRequestWithError:(id *)error;
- (id)securitySession:(id)session didReceiveRequestForPeerPairingIdentityWithIdentifier:(id)identifier error:(id *)error;
- (void)_closeWithError:(id)error;
- (void)_openTransport;
- (void)_secureTransport;
- (void)_sendSetupExchangeData:(id)data;
- (void)doCloseWithError:(id)error completion:(id)completion;
- (void)doOpenWithCompletion:(id)completion;
- (void)securitySession:(id)session didCloseWithError:(id)error;
- (void)securitySession:(id)session didReceiveSetupExchangeData:(id)data;
- (void)securitySessionDidOpen:(id)open;
- (void)setSecuritySession:(id)session;
@end

@implementation HAP2AccessoryServerSecureTransportPairVerify

- (void)_closeWithError:(id)error
{
  errorCopy = error;
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  securitySession = [(HAP2AccessoryServerSecureTransportPairVerify *)self securitySession];
  if (securitySession)
  {
    [(HAP2AccessoryServerSecureTransportPairVerify *)self setSecuritySession:0];
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v7 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "Secure Transport: Closing security session", buf, 2u);
    }

    [securitySession close];
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v8 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "Secure Transport: Closing transport", buf, 2u);
  }

  transport = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HAP2AccessoryServerSecureTransportPairVerify__closeWithError___block_invoke;
  v10[3] = &unk_2786D6CC8;
  v10[4] = self;
  [transport closeWithError:errorCopy completion:v10];
}

void __64__HAP2AccessoryServerSecureTransportPairVerify__closeWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HAP2AccessoryServerSecureTransportPairVerify__closeWithError___block_invoke_2;
  v13[3] = &unk_2786D7078;
  v8 = *(a1 + 32);
  v14 = v7;
  v15 = v8;
  v16 = v6;
  v9 = v6;
  v10 = v7;
  v11 = MEMORY[0x231885210](v13);
  v12 = [*(a1 + 32) operationQueue];
  [v12 addConcurrentBlock:v11];
}

void __64__HAP2AccessoryServerSecureTransportPairVerify__closeWithError___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v3 = hap2Log_accessory;
  if (v2)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_error_impl(&dword_22AADC000, v3, OS_LOG_TYPE_ERROR, "Secure Transport: Failed to close transport: %@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_INFO, "Secure Transport: Closed transport", &v7, 2u);
  }

  v5 = [*(a1 + 40) stateChangeCompletion];
  [*(a1 + 40) setStateChangeCompletion:0];
  if (v5)
  {
    v5[2](v5, 0, *(a1 + 48), *(a1 + 32));
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendSetupExchangeData:(id)data
{
  dataCopy = data;
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  transport = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v7 = [transport wellKnownEndpoint:3];

  transport2 = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v9 = [transport2 mimeTypeForWellKnownEndpoint:3];

  v10 = [[HAP2AccessoryServerTransportRequest alloc] initForWritingWithEndpoint:v7 data:dataCopy encrypted:0 mimeType:v9 dscpPriority:0];
  transport3 = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__HAP2AccessoryServerSecureTransportPairVerify__sendSetupExchangeData___block_invoke;
  v12[3] = &unk_2786D3968;
  v12[4] = self;
  [transport3 sendRequest:v10 completion:v12];
}

void __71__HAP2AccessoryServerSecureTransportPairVerify__sendSetupExchangeData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__HAP2AccessoryServerSecureTransportPairVerify__sendSetupExchangeData___block_invoke_2;
  v11[3] = &unk_2786D7078;
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = MEMORY[0x231885210](v11);
  v10 = [*(a1 + 32) operationQueue];
  [v10 addConcurrentBlock:v9];
}

void __71__HAP2AccessoryServerSecureTransportPairVerify__sendSetupExchangeData___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) securitySession];
  [v2 receivedSetupExchangeData:*(a1 + 40) error:*(a1 + 48)];
}

- (void)_secureTransport
{
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  v4 = [[HAPSecuritySession alloc] initWithRole:0 resumeSessionID:0 delegate:self];
  [(HAP2AccessoryServerSecureTransportPairVerify *)self setSecuritySession:v4];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "Secure Transport: Opening security session", v6, 2u);
  }

  [(HAPSecuritySession *)v4 open];
}

- (void)_openTransport
{
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  transport = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__HAP2AccessoryServerSecureTransportPairVerify__openTransport__block_invoke;
  v5[3] = &unk_2786D6CC8;
  v5[4] = self;
  [transport openWithCompletion:v5];
}

void __62__HAP2AccessoryServerSecureTransportPairVerify__openTransport__block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __62__HAP2AccessoryServerSecureTransportPairVerify__openTransport__block_invoke_2;
  v17 = &unk_2786D3940;
  v9 = *(a1 + 32);
  v18 = v8;
  v19 = v9;
  v21 = a2;
  v20 = v7;
  v10 = v7;
  v11 = v8;
  v12 = MEMORY[0x231885210](&v14);
  v13 = [*(a1 + 32) operationQueue];
  [v13 addConcurrentBlock:v12];
}

void __62__HAP2AccessoryServerSecureTransportPairVerify__openTransport__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v2 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = 138412290;
      v16 = v14;
      _os_log_error_impl(&dword_22AADC000, v2, OS_LOG_TYPE_ERROR, "Secure Transport: Failed to open transport: %@", &v15, 0xCu);
    }

    v3 = [*(a1 + 40) stateChangeCompletion];
    [*(a1 + 40) setStateChangeCompletion:0];
    if (v3)
    {
      v3[2](v3, *(a1 + 56), *(a1 + 48), *(a1 + 32));
    }

    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (*(a1 + 48))
    {
      v5 = [HAP2AccessorySessionInfo alloc];
      v6 = [*(a1 + 48) numIPAddresses];
      v7 = [*(a1 + 48) numIPAddressesTried];
      v8 = [*(a1 + 48) numBonjourNames];
      v9 = [*(a1 + 48) ipAddress];
      v10 = [*(a1 + 48) serviceName];
      v11 = -[HAP2AccessorySessionInfo initWithNumIPs:numIPsTried:numBonjourNames:ipAddress:serviceName:resolveAttempted:](v5, "initWithNumIPs:numIPsTried:numBonjourNames:ipAddress:serviceName:resolveAttempted:", v6, v7, v8, v9, v10, [*(a1 + 48) resolveAttempted]);
      [*(a1 + 40) setSessionInfo:v11];
    }

    v12 = *(a1 + 40);
    v13 = *MEMORY[0x277D85DE8];

    [v12 _secureTransport];
  }
}

- (void)securitySession:(id)session didCloseWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didCloseWithError___block_invoke;
  v12[3] = &unk_2786D7078;
  v13 = sessionCopy;
  selfCopy = self;
  v15 = errorCopy;
  v8 = errorCopy;
  v9 = sessionCopy;
  v10 = MEMORY[0x231885210](v12);
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue addConcurrentBlock:v10];
}

void __82__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didCloseWithError___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = *(a1 + 48);
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v5 = hap2Log_accessory;
    if (v4)
    {
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 48);
        *buf = 138412290;
        v19 = v6;
        _os_log_error_impl(&dword_22AADC000, v5, OS_LOG_TYPE_ERROR, "Secure Transport: Security session closed with error: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "Secure Transport: Security session closed", buf, 2u);
    }

    [*(a1 + 40) setEncryptedSession:0];
    [*(a1 + 40) setSecuritySession:0];
    v7 = [*(a1 + 40) stateChangeCompletion];
    [*(a1 + 40) setStateChangeCompletion:0];
    if (v7)
    {
      v8 = *(a1 + 48);
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
      }

      v10 = v9;
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v11 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v10;
        _os_log_error_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "Secure Transport: Failed to open security session: %@", buf, 0xCu);
      }

      v12 = [*(a1 + 40) transport];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __82__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didCloseWithError___block_invoke_6;
      v15[3] = &unk_2786D3918;
      v15[4] = *(a1 + 40);
      v16 = v10;
      v17 = v7;
      v13 = v10;
      [v12 closeWithError:v13 completion:v15];
    }

    else
    {
      [*(a1 + 40) closeWithError:*(a1 + 48) completion:&__block_literal_global_5463];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __82__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didCloseWithError___block_invoke_6(id *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [a1[4] operationQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didCloseWithError___block_invoke_2;
  v9[3] = &unk_2786D5F70;
  v7 = a1[6];
  v13 = a2;
  v12 = v7;
  v10 = v5;
  v11 = a1[5];
  v8 = v5;
  [v6 addConcurrentBlock:v9];
}

void __82__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didCloseWithError___block_invoke_3()
{
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v0 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_22AADC000, v0, OS_LOG_TYPE_INFO, "Secure Transport: Finished force closing", v1, 2u);
  }
}

- (void)securitySessionDidOpen:(id)open
{
  openCopy = open;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __71__HAP2AccessoryServerSecureTransportPairVerify_securitySessionDidOpen___block_invoke;
  v11 = &unk_2786D7050;
  selfCopy = self;
  v13 = openCopy;
  v5 = openCopy;
  v6 = MEMORY[0x231885210](&v8);
  v7 = [(HAP2AccessoryServerTransportBase *)self operationQueue:v8];
  [v7 addConcurrentBlock:v6];
}

void __71__HAP2AccessoryServerSecureTransportPairVerify_securitySessionDidOpen___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) stateChangeCompletion];
  [*(a1 + 32) setStateChangeCompletion:0];
  [*(a1 + 32) setEncryptedSession:*(a1 + 40)];
  if (v3)
  {
    v2 = [*(a1 + 32) sessionInfo];
    (*(v3 + 2))(v3, 0, v2, 0);
  }
}

- (void)securitySession:(id)session didReceiveSetupExchangeData:(id)data
{
  dataCopy = data;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __92__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didReceiveSetupExchangeData___block_invoke;
  v12 = &unk_2786D7050;
  selfCopy = self;
  v14 = dataCopy;
  v6 = dataCopy;
  v7 = MEMORY[0x231885210](&v9);
  v8 = [(HAP2AccessoryServerTransportBase *)self operationQueue:v9];
  [v8 addConcurrentBlock:v7];
}

- (id)securitySession:(id)session didReceiveRequestForPeerPairingIdentityWithIdentifier:(id)identifier error:(id *)error
{
  sessionCopy = session;
  identifierCopy = identifier;
  v10 = [[HAPDeviceID alloc] initWithDeviceIDString:identifierCopy];
  if (v10)
  {
    v11 = dispatch_group_create();
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__5467;
    v33 = __Block_byref_object_dispose__5468;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__5467;
    v27 = __Block_byref_object_dispose__5468;
    v28 = 0;
    dispatch_group_enter(v11);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __124__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didReceiveRequestForPeerPairingIdentityWithIdentifier_error___block_invoke;
    v18[3] = &unk_2786D50A0;
    v18[4] = self;
    v21 = &v23;
    v12 = v11;
    v19 = v12;
    v20 = v10;
    v22 = &v29;
    v13 = MEMORY[0x231885210](v18);
    operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
    [operationQueue addConcurrentBlock:v13];

    dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    v15 = v30[5];
    if (v15)
    {
      v16 = v15;
    }

    else if (error)
    {
      *error = v24[5];
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __124__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didReceiveRequestForPeerPairingIdentityWithIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = [*(a1 + 32) delegateQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __124__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didReceiveRequestForPeerPairingIdentityWithIdentifier_error___block_invoke_5;
    v10[3] = &unk_2786D38F0;
    v4 = v2;
    v5 = *(a1 + 32);
    v11 = v4;
    v12 = v5;
    v13 = *(a1 + 48);
    v15 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
    v14 = *(a1 + 40);
    dispatch_async(v3, v10);
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "Secure Transport: No delegate", buf, 2u);
    }

    v7 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    dispatch_group_leave(*(a1 + 40));
  }
}

void __124__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didReceiveRequestForPeerPairingIdentityWithIdentifier_error___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __124__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didReceiveRequestForPeerPairingIdentityWithIdentifier_error___block_invoke_2;
  v6[3] = &unk_2786D6F00;
  v8 = *(a1 + 72);
  v5 = *(a1 + 56);
  v4 = v5;
  v7 = v5;
  [v1 secureTransport:v2 needsRemotePairingIdentityForDeviceID:v3 completion:v6];
}

void __124__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didReceiveRequestForPeerPairingIdentityWithIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

- (id)securitySession:(id)session didReceiveLocalPairingIdentityRequestWithError:(id *)error
{
  sessionCopy = session;
  v7 = dispatch_group_create();
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__5467;
  v32 = __Block_byref_object_dispose__5468;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5467;
  v26 = __Block_byref_object_dispose__5468;
  v27 = 0;
  dispatch_group_enter(v7);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __111__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didReceiveLocalPairingIdentityRequestWithError___block_invoke;
  v17 = &unk_2786D4598;
  selfCopy = self;
  v20 = &v22;
  v8 = v7;
  v19 = v8;
  v21 = &v28;
  v9 = MEMORY[0x231885210](&v14);
  v10 = [(HAP2AccessoryServerTransportBase *)self operationQueue:v14];
  [v10 addConcurrentBlock:v9];

  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v29[5];
  if (v11)
  {
    v12 = v11;
  }

  else if (error)
  {
    *error = v23[5];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v11;
}

void __111__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didReceiveLocalPairingIdentityRequestWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __111__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didReceiveLocalPairingIdentityRequestWithError___block_invoke_1;
    block[3] = &unk_2786D50A0;
    v4 = v2;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v12 = v4;
    v13 = v5;
    v15 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    v14 = v6;
    dispatch_async(v3, block);
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v7 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "Secure Transport: No delegate", buf, 2u);
    }

    v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    dispatch_group_leave(*(a1 + 40));
  }
}

void __111__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didReceiveLocalPairingIdentityRequestWithError___block_invoke_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __111__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didReceiveLocalPairingIdentityRequestWithError___block_invoke_2;
  v5[3] = &unk_2786D6F00;
  v7 = *(a1 + 64);
  v4 = *(a1 + 48);
  v3 = v4;
  v6 = v4;
  [v1 secureTransport:v2 needsLocalPairingIdentityWithCompletion:v5];
}

void __111__HAP2AccessoryServerSecureTransportPairVerify_securitySession_didReceiveLocalPairingIdentityRequestWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

- (void)doCloseWithError:(id)error completion:(id)completion
{
  completionCopy = completion;
  errorCopy = error;
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  [(HAP2AccessoryServerSecureTransportPairVerify *)self setStateChangeCompletion:completionCopy];
  [(HAP2AccessoryServerSecureTransportPairVerify *)self _closeWithError:errorCopy];
}

- (void)doOpenWithCompletion:(id)completion
{
  completionCopy = completion;
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  [(HAP2AccessoryServerSecureTransportPairVerify *)self setStateChangeCompletion:completionCopy];

  [(HAP2AccessoryServerSecureTransportPairVerify *)self _openTransport];
}

- (void)setSecuritySession:(id)session
{
  sessionCopy = session;
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  securitySession = self->_securitySession;
  self->_securitySession = sessionCopy;
}

- (HAPSecuritySession)securitySession
{
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  securitySession = self->_securitySession;

  return securitySession;
}

- (HAP2AccessoryServerSecureTransportPairVerify)initWithTransport:(id)transport operationQueue:(id)queue
{
  transportCopy = transport;
  queueCopy = queue;
  v8 = HAPDispatchQueueName(self, @"delegateQueue");
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create(v8, v9);

  v14.receiver = self;
  v14.super_class = HAP2AccessoryServerSecureTransportPairVerify;
  v11 = [(HAP2AccessoryServerSecureTransportBase *)&v14 initWithOperationQueue:queueCopy delegateQueue:v10 transport:transportCopy];

  if (v11)
  {
    [transportCopy setDelegate:v11];
    sessionInfo = v11->_sessionInfo;
    v11->_sessionInfo = 0;
  }

  return v11;
}

@end