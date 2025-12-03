@interface HAP2AccessoryServerPairingDriverPairSetupWorkItem
+ (id)pairSetupWithType:(unint64_t)type;
- (BOOL)pairSetupSession:(id)session didPairWithPeer:(id)peer error:(id *)error;
- (BOOL)pairSetupSession:(id)session didReceiveBackoffRequestWithTimeInterval:(double)interval;
- (HAP2AccessoryServerPairingDriverDelegate)delegate;
- (HAP2AccessoryServerPairingDriverPairSetupWorkItem)initWithPairSetupType:(unint64_t)type;
- (NSString)description;
- (id)pairSetupSession:(id)session didReceiveLocalPairingIdentityRequestWithError:(id *)error;
- (void)_pairingStoppedWithError:(id)error;
- (void)_resetPairingState;
- (void)cancelWithError:(id)error;
- (void)pairSetupSession:(id)session didReceiveProductData:(id)data;
- (void)pairSetupSession:(id)session didReceiveSetupCodeRequestWithCompletionHandler:(id)handler;
- (void)pairSetupSession:(id)session didReceiveSetupExchangeData:(id)data;
- (void)pairSetupSession:(id)session didStopWithError:(id)error;
- (void)pairSetupSessionDidReceiveInvalidSetupCode:(id)code;
- (void)pairSetupSessionDidStart:(id)start;
- (void)runForPairingDriver:(id)driver;
@end

@implementation HAP2AccessoryServerPairingDriverPairSetupWorkItem

- (HAP2AccessoryServerPairingDriverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)pairSetupSession:(id)session didReceiveBackoffRequestWithTimeInterval:(double)interval
{
  sessionCopy = session;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __111__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didReceiveBackoffRequestWithTimeInterval___block_invoke;
  v9[3] = &unk_2786D6FF0;
  objc_copyWeak(v10, &location);
  v10[1] = *&interval;
  [operationQueue addBlock:v9];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);

  return 0;
}

void __111__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didReceiveBackoffRequestWithTimeInterval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setBackoffInterval:*(a1 + 40)];
  [WeakRetained setInvalidSetupCode:1];
}

- (void)pairSetupSessionDidReceiveInvalidSetupCode:(id)code
{
  codeCopy = code;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __96__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSessionDidReceiveInvalidSetupCode___block_invoke;
  v6[3] = &unk_2786D6FC8;
  objc_copyWeak(&v7, &location);
  [operationQueue addBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __96__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSessionDidReceiveInvalidSetupCode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setBackoffInterval:0.0];
  [WeakRetained setInvalidSetupCode:1];
}

- (void)pairSetupSession:(id)session didReceiveSetupCodeRequestWithCompletionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __118__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didReceiveSetupCodeRequestWithCompletionHandler___block_invoke;
  v10[3] = &unk_2786D6FA0;
  objc_copyWeak(&v12, &location);
  v9 = handlerCopy;
  v11 = v9;
  [operationQueue addBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __118__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didReceiveSetupCodeRequestWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained pairingDriver];
  v4 = [v3 accessoryServer];
  if (v4)
  {
    v5 = [WeakRetained delegate];
    if (v5)
    {
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __118__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didReceiveSetupCodeRequestWithCompletionHandler___block_invoke_2;
      v12 = &unk_2786D6F78;
      v13 = WeakRetained;
      v14 = *(a1 + 32);
      v6 = MEMORY[0x231885210](&v9);
      if ([WeakRetained isInvalidSetupCode])
      {
        [WeakRetained backoffInterval];
        [v5 pairingDriver:v3 didRejectSetupCodeForAccessory:v4 backoffInterval:v6 completion:?];
      }

      else
      {
        [v5 pairingDriver:v3 doesRequireSetupCodeForAccessory:v4 completion:v6];
      }
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    (*(v7 + 16))(v7, 0, v8);
  }
}

void __118__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didReceiveSetupCodeRequestWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) cancelError];

  if (!v6)
  {
    [*(a1 + 32) setInvalidSetupCode:0];
    [*(a1 + 32) setBackoffInterval:0.0];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)pairSetupSession:(id)session didStopWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didStopWithError___block_invoke;
  v11[3] = &unk_2786D6F50;
  objc_copyWeak(&v14, &location);
  v9 = sessionCopy;
  v12 = v9;
  v10 = errorCopy;
  v13 = v10;
  [operationQueue addBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __87__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didStopWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained pairingSession];
  v3 = *(a1 + 32);

  if (v2 == v3)
  {
    [WeakRetained _pairingStoppedWithError:*(a1 + 40)];
  }
}

- (void)pairSetupSessionDidStart:(id)start
{
  startCopy = start;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSessionDidStart___block_invoke;
  v7[3] = &unk_2786D6EB0;
  objc_copyWeak(&v9, &location);
  v6 = startCopy;
  v8 = v6;
  [operationQueue addBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __78__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSessionDidStart___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [WeakRetained pairingDriver];
    [v4 setPairingSession:v3];
  }
}

- (void)pairSetupSession:(id)session didReceiveProductData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didReceiveProductData___block_invoke;
  v10[3] = &unk_2786D6EB0;
  objc_copyWeak(&v12, &location);
  v9 = dataCopy;
  v11 = v9;
  [operationQueue addBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __92__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didReceiveProductData___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v3 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v10 = 138412546;
    v11 = WeakRetained;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_DEFAULT, "%@ Received product data: %@", &v10, 0x16u);
  }

  v5 = [WeakRetained pairingDriver];
  v6 = [v5 accessoryServer];
  if ([v6 conformsToProtocol:&unk_283EB5AA8])
  {
    v7 = [WeakRetained pairingDriver];
    v8 = [v7 accessoryServer];
  }

  else
  {
    v8 = 0;
  }

  [v8 setProductData:*(a1 + 32)];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)pairSetupSession:(id)session didReceiveSetupExchangeData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __98__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didReceiveSetupExchangeData___block_invoke;
  v10[3] = &unk_2786D6EB0;
  objc_copyWeak(&v12, &location);
  v9 = dataCopy;
  v11 = v9;
  [operationQueue addBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __98__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didReceiveSetupExchangeData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained transport];
  v4 = [v3 wellKnownEndpoint:2];

  v5 = [WeakRetained transport];
  v6 = [v5 mimeTypeForWellKnownEndpoint:2];

  v7 = [[HAP2AccessoryServerTransportRequest alloc] initForWritingWithEndpoint:v4 data:*(a1 + 32) encrypted:0 mimeType:v6 dscpPriority:0];
  v8 = HAPPairingStateFromData(*(a1 + 32));
  v9 = [WeakRetained transport];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didReceiveSetupExchangeData___block_invoke_2;
  v11[3] = &unk_2786D6F28;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v8;
  v12 = v10;
  [v9 sendRequest:v7 completion:v11];

  objc_destroyWeak(&v13);
}

void __98__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didReceiveSetupExchangeData___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained cancelError];

    if (!v8)
    {
      if (v5)
      {
        v9 = [v7 pairingActivity];
        [v5 domain];

        [v5 code];
      }

      v10 = [v7 pairingSession];
      [v10 receivedSetupExchangeData:v11 error:v5];
    }
  }
}

- (id)pairSetupSession:(id)session didReceiveLocalPairingIdentityRequestWithError:(id *)error
{
  sessionCopy = session;
  pairingDriver = [(HAP2AccessoryServerPairingDriverWorkItem *)self pairingDriver];
  delegate = [pairingDriver delegate];
  if (delegate)
  {
    v9 = dispatch_group_create();
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__25273;
    v27 = __Block_byref_object_dispose__25274;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__25273;
    v21 = __Block_byref_object_dispose__25274;
    v22 = 0;
    dispatch_group_enter(v9);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __117__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didReceiveLocalPairingIdentityRequestWithError___block_invoke;
    v13[3] = &unk_2786D6F00;
    v15 = &v23;
    v16 = &v17;
    v10 = v9;
    v14 = v10;
    [delegate pairingDriver:pairingDriver didRequestLocalPairingIdentityWithCompletion:v13];
    if (dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = 0;
    }

    else
    {
      if (error)
      {
        *error = v18[5];
      }

      v11 = v24[5];
    }

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] hapErrorWithCode:6];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __117__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didReceiveLocalPairingIdentityRequestWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)pairSetupSession:(id)session didPairWithPeer:(id)peer error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  peerCopy = peer;
  pairingDriver = [(HAP2AccessoryServerPairingDriverWorkItem *)self pairingDriver];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v10 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = peerCopy;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "Request to save pairing peer: %@", buf, 0xCu);
  }

  delegate = [pairingDriver delegate];
  accessoryServer = [pairingDriver accessoryServer];
  v13 = accessoryServer;
  if (!delegate || !accessoryServer)
  {
    if (error)
    {
      v21 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
LABEL_18:
      v20 = 0;
      *error = v21;
      goto LABEL_24;
    }

LABEL_19:
    v20 = 0;
    goto LABEL_24;
  }

  deviceID = [accessoryServer deviceID];
  deviceIDString = [deviceID deviceIDString];
  identifier = [peerCopy identifier];
  v17 = [deviceIDString isEqualToString:identifier];

  if ((v17 & 1) == 0)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v22 = hap2Log_default;
    if (os_log_type_enabled(hap2Log_default, OS_LOG_TYPE_ERROR))
    {
      v25 = v22;
      deviceID2 = [v13 deviceID];
      identifier2 = [peerCopy identifier];
      *buf = 138412546;
      *&buf[4] = deviceID2;
      *&buf[12] = 2112;
      *&buf[14] = identifier2;
      _os_log_error_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "The peer's identifier doesn't match any more %@ -> %@", buf, 0x16u);
    }

    if (error)
    {
      v21 = [MEMORY[0x277CCA9B8] hapErrorWithCode:7];
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v18 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = __Block_byref_object_copy__25273;
  v34 = __Block_byref_object_dispose__25274;
  v35 = 0;
  dispatch_group_enter(v18);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __92__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didPairWithPeer_error___block_invoke;
  v29[3] = &unk_2786D6ED8;
  v19 = v18;
  v30 = v19;
  v31 = buf;
  [delegate pairingDriver:pairingDriver didSaveRemotePairingIdentity:peerCopy completion:v29];
  if (dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL))
  {
    v20 = 0;
  }

  else
  {
    if (error)
    {
      *error = *(*&buf[8] + 40);
    }

    v20 = *(*&buf[8] + 40) == 0;
  }

  _Block_object_dispose(buf, 8);
LABEL_24:

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

void __92__HAP2AccessoryServerPairingDriverPairSetupWorkItem_pairSetupSession_didPairWithPeer_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_leave(*(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HAP2AccessoryServerPairingDriverPairSetupWorkItem;
  v4 = [(HAP2AccessoryServerPairingDriverWorkItem *)&v10 description];
  pairSetupType = [(HAP2AccessoryServerPairingDriverPairSetupWorkItem *)self pairSetupType];
  if (pairSetupType > 7)
  {
    v6 = &stru_283E79C60;
  }

  else
  {
    v6 = off_2786D52B0[pairSetupType];
  }

  v7 = v6;
  v8 = [v3 stringWithFormat:@"%@ (%@)", v4, v7];

  return v8;
}

- (void)_pairingStoppedWithError:(id)error
{
  errorCopy = error;
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  [operationQueue assertCurrentQueue];

  [(HAP2AccessoryServerPairingDriverPairSetupWorkItem *)self _resetPairingState];
  [(HAP2AccessoryServerPairingDriverWorkItem *)self finishWithError:errorCopy];
}

- (void)_resetPairingState
{
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  [operationQueue assertCurrentQueue];

  [(HAP2AccessoryServerPairingDriverPairSetupWorkItem *)self setPairingSession:0];
  [(HAP2AccessoryServerPairingDriverPairSetupWorkItem *)self setInvalidSetupCode:0];
  [(HAP2AccessoryServerPairingDriverPairSetupWorkItem *)self setBackoffInterval:0.0];

  [(HAP2AccessoryServerPairingDriverPairSetupWorkItem *)self setCancelError:0];
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HAP2AccessoryServerPairingDriverPairSetupWorkItem_cancelWithError___block_invoke;
  v7[3] = &unk_2786D6EB0;
  objc_copyWeak(&v9, &location);
  v6 = errorCopy;
  v8 = v6;
  [operationQueue addBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __69__HAP2AccessoryServerPairingDriverPairSetupWorkItem_cancelWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained maybePairingDriver];
  if (v2)
  {
    [WeakRetained setCancelError:*(a1 + 32)];
    v3 = [v2 pairingSession];
    v4 = v3;
    if (v3)
    {
      [v3 stop];
    }
  }
}

- (void)runForPairingDriver:(id)driver
{
  driverCopy = driver;
  delegate = [driverCopy delegate];
  objc_storeWeak(&self->_delegate, delegate);

  transport = [driverCopy transport];

  transport = self->_transport;
  self->_transport = transport;

  v8 = [[HAPSRPPairSetupSession alloc] initWithRole:0 pairSetupType:[(HAP2AccessoryServerPairingDriverPairSetupWorkItem *)self pairSetupType] delegate:self];
  pairingSession = self->_pairingSession;
  self->_pairingSession = v8;

  pairingActivity = [(HAP2AccessoryServerPairingDriverWorkItem *)self pairingActivity];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HAP2AccessoryServerPairingDriverPairSetupWorkItem pairSetupType](self, "pairSetupType")}];

  pairingSession = [(HAP2AccessoryServerPairingDriverPairSetupWorkItem *)self pairingSession];
  [pairingSession start];
}

- (HAP2AccessoryServerPairingDriverPairSetupWorkItem)initWithPairSetupType:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = HAP2AccessoryServerPairingDriverPairSetupWorkItem;
  v4 = [(HAP2AccessoryServerPairingDriverPairSetupWorkItem *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_pairSetupType = type;
    v6 = v4;
  }

  return v5;
}

+ (id)pairSetupWithType:(unint64_t)type
{
  v3 = [[self alloc] initWithPairSetupType:type];

  return v3;
}

@end