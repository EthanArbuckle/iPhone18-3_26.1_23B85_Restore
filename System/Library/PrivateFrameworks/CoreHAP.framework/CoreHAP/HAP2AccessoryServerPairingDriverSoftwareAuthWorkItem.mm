@interface HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem
+ (id)doSoftwareAuth;
- (BOOL)_isProtocolInfoValid:(id)valid;
- (void)_handleAuthCompleteWithError:(id)error;
- (void)_sendSoftwareAuthMessageWithData:(id)data completion:(id)completion;
- (void)_softwareAuthFinished;
- (void)_startSoftwareAuth;
- (void)_validateAccessoryInfoWithCompletion:(id)completion;
- (void)authSession:(id)session authComplete:(id)complete;
- (void)authSession:(id)session authenticateUUID:(id)d token:(id)token;
- (void)authSession:(id)session confirmUUID:(id)d token:(id)token;
- (void)authSession:(id)session sendAuthExchangeData:(id)data;
- (void)authSession:(id)session validateUUID:(id)d token:(id)token;
- (void)cancelWithError:(id)error;
- (void)runForPairingDriver:(id)driver;
@end

@implementation HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem

+ (id)doSoftwareAuth
{
  v2 = objc_opt_new();

  return v2;
}

- (void)authSession:(id)session validateUUID:(id)d token:(id)token
{
  sessionCopy = session;
  dCopy = d;
  tokenCopy = token;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_validateUUID_token___block_invoke;
  v14[3] = &unk_2786D6F50;
  objc_copyWeak(&v17, &location);
  v12 = dCopy;
  v15 = v12;
  v13 = tokenCopy;
  v16 = v13;
  [operationQueue addBlock:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __87__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_validateUUID_token___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained cancelError];

  if (!v3)
  {
    v4 = [WeakRetained pairingDriver];
    v5 = [v4 delegate];
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = [WeakRetained authenticatedProtocolInfo];
      v9 = [v8 modelName];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __87__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_validateUUID_token___block_invoke_2;
      v11[3] = &unk_2786D6D90;
      objc_copyWeak(&v12, (a1 + 48));
      [v5 pairingDriver:v4 validateSoftwareAuthUUID:v6 token:v7 model:v9 completion:v11];

      objc_destroyWeak(&v12);
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      [WeakRetained cancelWithError:v10];
    }
  }
}

void __87__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_validateUUID_token___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained operationQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __87__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_validateUUID_token___block_invoke_3;
    v7[3] = &unk_2786D6EB0;
    objc_copyWeak(&v9, (a1 + 32));
    v8 = v3;
    [v6 addBlock:v7];

    objc_destroyWeak(&v9);
  }
}

void __87__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_validateUUID_token___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (*(a1 + 32))
  {
    [WeakRetained cancelWithError:?];
  }

  else
  {
    v3 = [WeakRetained authSession];
    [v3 continueAuthAfterValidation:1];
  }
}

- (void)authSession:(id)session sendAuthExchangeData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_sendAuthExchangeData___block_invoke;
  v10[3] = &unk_2786D6EB0;
  objc_copyWeak(&v12, &location);
  v9 = dataCopy;
  v11 = v9;
  [operationQueue addBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __89__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_sendAuthExchangeData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained cancelError];

  if (!v3)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __89__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_sendAuthExchangeData___block_invoke_2;
    v5[3] = &unk_2786D6DB8;
    objc_copyWeak(&v6, (a1 + 40));
    [WeakRetained _sendSoftwareAuthMessageWithData:v4 completion:v5];
    objc_destroyWeak(&v6);
  }
}

void __89__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_sendAuthExchangeData___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained cancelError];

    if (!v8)
    {
      if (v5)
      {
        [v7 cancelWithError:v5];
      }

      else
      {
        v9 = [v7 authSession];
        [v9 handleAuthExchangeData:v10 withHeader:v7[32]];
      }
    }
  }
}

- (void)authSession:(id)session confirmUUID:(id)d token:(id)token
{
  sessionCopy = session;
  dCopy = d;
  tokenCopy = token;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_confirmUUID_token___block_invoke;
  v14[3] = &unk_2786D6F50;
  objc_copyWeak(&v17, &location);
  v12 = dCopy;
  v15 = v12;
  v13 = tokenCopy;
  v16 = v13;
  [operationQueue addBlock:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __86__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_confirmUUID_token___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained cancelError];

  if (!v3)
  {
    v4 = [WeakRetained pairingDriver];
    v5 = [v4 delegate];
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __86__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_confirmUUID_token___block_invoke_2;
      v9[3] = &unk_2786D6D90;
      objc_copyWeak(&v10, (a1 + 48));
      [v5 pairingDriver:v4 confirmSoftwareAuthUUID:v6 token:v7 completion:v9];
      objc_destroyWeak(&v10);
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      [WeakRetained cancelWithError:v8];
    }
  }
}

void __86__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_confirmUUID_token___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      [WeakRetained cancelWithError:v3];
    }

    else
    {
      v6 = [WeakRetained operationQueue];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __86__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_confirmUUID_token___block_invoke_3;
      v7[3] = &unk_2786D6FC8;
      objc_copyWeak(&v8, (a1 + 32));
      [v6 addBlock:v7];

      objc_destroyWeak(&v8);
    }
  }
}

void __86__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_confirmUUID_token___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _softwareAuthFinished];
}

- (void)authSession:(id)session authenticateUUID:(id)d token:(id)token
{
  sessionCopy = session;
  dCopy = d;
  tokenCopy = token;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_authenticateUUID_token___block_invoke;
  v14[3] = &unk_2786D6F50;
  objc_copyWeak(&v17, &location);
  v12 = dCopy;
  v15 = v12;
  v13 = tokenCopy;
  v16 = v13;
  [operationQueue addBlock:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __91__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_authenticateUUID_token___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained cancelError];

  if (!v3)
  {
    v4 = [WeakRetained pairingDriver];
    v5 = [v4 delegate];
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __91__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_authenticateUUID_token___block_invoke_2;
      v9[3] = &unk_2786D6D68;
      objc_copyWeak(&v10, (a1 + 48));
      [v5 pairingDriver:v4 authenticateSoftwareAuthUUID:v6 token:v7 completion:v9];
      objc_destroyWeak(&v10);
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      [WeakRetained cancelWithError:v8];
    }
  }
}

void __91__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_authenticateUUID_token___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained authSession];
    [v5 sendTokenUpdateRequest:v6];
  }
}

- (void)authSession:(id)session authComplete:(id)complete
{
  sessionCopy = session;
  completeCopy = complete;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_authComplete___block_invoke;
  v10[3] = &unk_2786D6EB0;
  objc_copyWeak(&v12, &location);
  v9 = completeCopy;
  v11 = v9;
  [operationQueue addBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __81__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_authSession_authComplete___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAuthCompleteWithError:*(a1 + 32)];
}

- (void)_handleAuthCompleteWithError:(id)error
{
  errorCopy = error;
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  [operationQueue assertCurrentQueue];

  [(HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem *)self setAuthSession:0];
  pairingDriver = [(HAP2AccessoryServerPairingDriverWorkItem *)self pairingDriver];
  delegate = [pairingDriver delegate];
  v7 = delegate;
  if (delegate)
  {
    [delegate pairingDriver:pairingDriver didFinishAuthWithError:errorCopy];
  }
}

- (BOOL)_isProtocolInfoValid:(id)valid
{
  v47 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  [operationQueue assertCurrentQueue];

  pairingDriver = [(HAP2AccessoryServerPairingDriverWorkItem *)self pairingDriver];
  accessoryServer = [pairingDriver accessoryServer];

  if (accessoryServer)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v8 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      log = v8;
      deviceID = [accessoryServer deviceID];
      deviceIdentifier = [validCopy deviceIdentifier];
      category = [accessoryServer category];
      categoryIdentifier = [validCopy categoryIdentifier];
      protocolVersion = [accessoryServer protocolVersion];
      protocolVersion2 = [validCopy protocolVersion];
      pairingDriver2 = [(HAP2AccessoryServerPairingDriverWorkItem *)self pairingDriver];
      *buf = 138414338;
      selfCopy = self;
      v31 = 2112;
      v32 = deviceID;
      v33 = 2112;
      v34 = deviceIdentifier;
      v35 = 1024;
      v36 = category;
      v37 = 1024;
      v38 = categoryIdentifier;
      v39 = 2112;
      v40 = protocolVersion;
      v41 = 2112;
      v42 = protocolVersion2;
      v43 = 1024;
      featureFlags = [pairingDriver2 featureFlags];
      v45 = 1024;
      featureFlags2 = [validCopy featureFlags];
      _os_log_impl(&dword_22AADC000, log, OS_LOG_TYPE_INFO, "%@ Matching device ID: %@/%@ category: %d/%d protocol version: %@/%@ feature flags: %x/%x", buf, 0x4Cu);
    }

    deviceID2 = [accessoryServer deviceID];
    deviceIDString = [deviceID2 deviceIDString];
    deviceIdentifier2 = [validCopy deviceIdentifier];
    if ([deviceIDString isEqualToString:deviceIdentifier2] && (v18 = objc_msgSend(accessoryServer, "category"), v18 == objc_msgSend(validCopy, "categoryIdentifier")))
    {
      protocolVersion3 = [accessoryServer protocolVersion];
      majorVersion = [protocolVersion3 majorVersion];
      protocolVersion4 = [validCopy protocolVersion];
      if (majorVersion == [protocolVersion4 majorVersion])
      {
        pairingDriver3 = [(HAP2AccessoryServerPairingDriverWorkItem *)self pairingDriver];
        featureFlags3 = [pairingDriver3 featureFlags];
        v24 = featureFlags3 == [validCopy featureFlags];
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)_validateAccessoryInfoWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  [operationQueue assertCurrentQueue];

  v16 = 0;
  v6 = [HAPProtocolMessages constructInfoRequest:&unk_283EA9A88 outTID:&v16];
  if (v6)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v7 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%@ Attempting to validate accessory info", buf, 0xCu);
    }

    date = [MEMORY[0x277CBEAA8] date];
    objc_initWeak(buf, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __93__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem__validateAccessoryInfoWithCompletion___block_invoke;
    v11[3] = &unk_2786D6D40;
    objc_copyWeak(&v14, buf);
    v9 = date;
    v12 = v9;
    v13 = completionCopy;
    v15 = v16;
    [(HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem *)self _sendSoftwareAuthMessageWithData:v6 completion:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    (*(completionCopy + 2))(completionCopy, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __93__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem__validateAccessoryInfoWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    [v8 timeIntervalSinceDate:*(a1 + 32)];
    v10 = v9;

    v11 = [WeakRetained pairingActivity];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [v6 domain];

    [v6 code];
    v13 = [WeakRetained operationQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __93__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem__validateAccessoryInfoWithCompletion___block_invoke_2;
    v14[3] = &unk_2786D6D18;
    objc_copyWeak(&v18, (a1 + 48));
    v15 = v6;
    v17 = *(a1 + 40);
    v16 = v5;
    v19 = *(a1 + 56);
    [v13 addBlock:v14];

    objc_destroyWeak(&v18);
  }
}

void __93__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem__validateAccessoryInfoWithCompletion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained cancelError];
  if (v3 || (v3 = *(a1 + 32)) != 0)
  {
    v4 = v3;
    v5 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (!*(a1 + 40))
    {
      goto LABEL_6;
    }

    v7 = *(a1 + 64);
    if (WeakRetained)
    {
      v8 = WeakRetained[32];
    }

    v4 = [HAPProtocolMessages parseInfoResponse:"parseInfoResponse:expectedTID:withHeader:" expectedTID:? withHeader:?];
    if (![WeakRetained _isProtocolInfoValid:v4])
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = WeakRetained;
        _os_log_error_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%@ Accessory info didn't validate", &v12, 0xCu);
      }

      v10 = *(a1 + 48);
      v11 = [MEMORY[0x277CCA9B8] hapErrorWithCode:7];
      (*(v10 + 16))(v10, v11);

      goto LABEL_5;
    }

    [WeakRetained setAuthenticatedProtocolInfo:v4];
    v5 = *(*(a1 + 48) + 16);
  }

  v5();
LABEL_5:

LABEL_6:
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendSoftwareAuthMessageWithData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  transport = [(HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem *)self transport];
  v13 = [transport wellKnownEndpoint:4];

  transport2 = [(HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem *)self transport];
  v10 = [transport2 mimeTypeForWellKnownEndpoint:4];

  v11 = [[HAP2AccessoryServerTransportRequest alloc] initForWritingWithEndpoint:v13 data:dataCopy encrypted:1 mimeType:v10 dscpPriority:0];
  transport3 = [(HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem *)self transport];
  [transport3 sendRequest:v11 completion:completionCopy];
}

- (void)_softwareAuthFinished
{
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  [operationQueue assertCurrentQueue];

  [(HAP2AccessoryServerPairingDriverWorkItem *)self finishWithError:0];
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_cancelWithError___block_invoke;
  v7[3] = &unk_2786D6EB0;
  objc_copyWeak(&v9, &location);
  v6 = errorCopy;
  v8 = v6;
  [operationQueue addBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __72__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_cancelWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained cancelError];

  if (!v2)
  {
    [WeakRetained setCancelError:*(a1 + 32)];
    v3 = [WeakRetained maybePairingDriver];
    if (v3)
    {
      [WeakRetained finishWithError:*(a1 + 32)];
    }
  }
}

- (void)_startSoftwareAuth
{
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  [operationQueue assertCurrentQueue];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem__startSoftwareAuth__block_invoke;
  v4[3] = &unk_2786D6CF0;
  v4[4] = self;
  [(HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem *)self _validateAccessoryInfoWithCompletion:v4];
}

void __74__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem__startSoftwareAuth__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) operationQueue];
  [v4 assertCurrentQueue];

  v5 = [*(a1 + 32) cancelError];

  if (!v5)
  {
    if (v3)
    {
      [*(a1 + 32) cancelWithError:v3];
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v6 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%@ Starting the software auth state machine", &v12, 0xCu);
      }

      v8 = [*(a1 + 32) authSession];
      v9 = v8;
      v10 = *(a1 + 32);
      if (v10)
      {
        LOBYTE(v10) = *(v10 + 32);
      }

      [v8 handleAuthExchangeData:0 withHeader:v10 & 1];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)runForPairingDriver:(id)driver
{
  driverCopy = driver;
  encoding = [driverCopy encoding];
  encoding = self->_encoding;
  self->_encoding = encoding;

  pairingSession = [driverCopy pairingSession];
  pairingSession = self->_pairingSession;
  self->_pairingSession = pairingSession;

  encoding2 = [driverCopy encoding];
  self->_sendPDUHeader = ([encoding2 encodingFeatures] & 8) != 0;

  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  [operationQueue assertCurrentQueue];

  pairingSession2 = [(HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem *)self pairingSession];
  [pairingSession2 generateSessionKeys];

  secureTransportFactory = [driverCopy secureTransportFactory];
  transport = [driverCopy transport];

  pairingSession3 = [(HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem *)self pairingSession];
  v15 = [secureTransportFactory createSecureTransportWithTransport:transport isPaired:0 encryptedSession:pairingSession3];
  transport = self->_transport;
  self->_transport = v15;

  authSession = [(HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem *)self authSession];

  if (authSession)
  {
    authSession2 = [(HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem *)self authSession];
    [(HAPAuthSession *)authSession2 resetSession];
  }

  else
  {
    authSession2 = [[HAPAuthSession alloc] initWithRole:0 instanceId:&unk_283EA9A88 delegate:self];
    [(HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem *)self setAuthSession:authSession2];
  }

  transport2 = [(HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem *)self transport];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_runForPairingDriver___block_invoke;
  v20[3] = &unk_2786D6CC8;
  v20[4] = self;
  [transport2 openWithCompletion:v20];
}

void __76__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_runForPairingDriver___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem_runForPairingDriver___block_invoke_2;
  v4[3] = &unk_2786D6CA0;
  v4[4] = *(a1 + 32);
  v2 = MEMORY[0x231885210](v4);
  v3 = [*(a1 + 32) operationQueue];
  [v3 addBlock:v2];
}

@end