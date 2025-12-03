@interface HAP2AccessoryServerSecureTransportBase
+ (id)defaultEncryptedSession;
- (BOOL)mergeWithNewTransport:(id)transport;
- (HAP2AccessoryServerSecureTransportBase)initWithOperationQueue:(id)queue delegateQueue:(id)delegateQueue transport:(id)transport;
- (HAP2AccessoryServerSecureTransportBase)initWithOperationQueue:(id)queue delegateQueue:(id)delegateQueue transport:(id)transport encryptedSession:(id)session;
- (HAP2AccessoryServerSecureTransportDelegate)delegate;
- (HAPEncryptedSession)encryptedSession;
- (id)decryptData:(id)data type:(unint64_t)type error:(id *)error;
- (id)encryptData:(id)data error:(id *)error;
- (id)endpointForCharacteristic:(id)characteristic;
- (id)endpointForCharacteristics:(id)characteristics;
- (id)mimeTypeForCharacteristicRequests;
- (id)mimeTypeForWellKnownEndpoint:(unint64_t)endpoint;
- (id)wellKnownEndpoint:(unint64_t)endpoint;
- (unint64_t)protocolFeaturesForVersion:(id)version;
- (void)_decryptResponse:(id)response request:(id)request completion:(id)completion;
- (void)_encryptRequest:(id)request completion:(id)completion;
- (void)_sendRequest:(id)request completion:(id)completion;
- (void)didChangeStateWithError:(id)error;
- (void)doCloseWithError:(id)error completion:(id)completion;
- (void)doOpenWithCompletion:(id)completion;
- (void)doSendRequest:(id)request completion:(id)completion;
- (void)doUpdateMaxRequestTimeout:(double)timeout;
- (void)setDelegate:(id)delegate;
- (void)setEncryptedSession:(id)session;
- (void)transport:(id)transport didChangeState:(unint64_t)state error:(id)error;
- (void)transport:(id)transport didReceiveEvent:(id)event;
@end

@implementation HAP2AccessoryServerSecureTransportBase

- (void)_decryptResponse:(id)response request:(id)request completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  completionCopy = completion;
  requestCopy = request;
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  LODWORD(operationQueue) = [requestCopy isEncrypted];
  if (!operationQueue)
  {
    v12 = responseCopy;
    v13 = 0;
    goto LABEL_9;
  }

  v16 = 0;
  v12 = [(HAP2AccessoryServerSecureTransportBase *)self decryptData:responseCopy type:0 error:&v16];
  v13 = v16;
  if (v12)
  {
LABEL_9:
    completionCopy[2](completionCopy, v12, 0);

    goto LABEL_10;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v14 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    selfCopy = self;
    v19 = 2112;
    v20 = v13;
    _os_log_error_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%@ (SecureBase) Failed to decrypt response: %@", buf, 0x16u);
  }

  (completionCopy)[2](completionCopy, 0, v13);
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sendRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  transport = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HAP2AccessoryServerSecureTransportBase__sendRequest_completion___block_invoke;
  v12[3] = &unk_2786D5C70;
  v13 = requestCopy;
  v14 = completionCopy;
  v12[4] = self;
  v10 = requestCopy;
  v11 = completionCopy;
  [transport sendRequest:v10 completion:v12];
}

void __66__HAP2AccessoryServerSecureTransportBase__sendRequest_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v7 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[4];
      *buf = 138412546;
      v21 = v11;
      v22 = 2112;
      v23 = v6;
      _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%@ (SecureBase) Failed to send request: %@", buf, 0x16u);
    }

    (*(a1[6] + 2))();
  }

  else
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __66__HAP2AccessoryServerSecureTransportBase__sendRequest_completion___block_invoke_4;
    v15 = &unk_2786D66C8;
    v16 = a1[4];
    v19 = a1[6];
    v17 = v5;
    v18 = a1[5];
    v8 = MEMORY[0x231885210](&v12);
    v9 = [a1[4] operationQueue];
    [v9 addConcurrentBlock:v8];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __66__HAP2AccessoryServerSecureTransportBase__sendRequest_completion___block_invoke_4(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *MEMORY[0x277D85DE8];

    [v2 _decryptResponse:v3 request:v4 completion:v5];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v7 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEFAULT, "%@ (SecureBase) No longer open after sending request", &v11, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] hapErrorWithCode:19 description:@"Accessory server transport no longer open after sending request" reason:@"HAP2 Accessory server state != HAP2AccessoryServerTransportStateOpen during completion handler of sendRequest" suggestion:0 underlyingError:0 marker:103];
    (*(*(a1 + 56) + 16))();

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)_encryptRequest:(id)request completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  LODWORD(operationQueue) = [requestCopy isEncrypted];
  data = [requestCopy data];
  v10 = data;
  if (!operationQueue)
  {
    v12 = data;
    goto LABEL_5;
  }

  v23 = 0;
  v11 = [(HAP2AccessoryServerSecureTransportBase *)self encryptData:data error:&v23];
  v12 = v23;

  if (v11)
  {

    v12 = v11;
LABEL_5:
    isForReading = [requestCopy isForReading];
    v14 = [HAP2AccessoryServerTransportRequest alloc];
    endpoint = [requestCopy endpoint];
    isEncrypted = [requestCopy isEncrypted];
    mimeType = [requestCopy mimeType];
    dscpPriority = [requestCopy dscpPriority];
    if (isForReading)
    {
      v19 = [(HAP2AccessoryServerTransportRequest *)v14 initForReadingWithEndpoint:endpoint data:v12 encrypted:isEncrypted mimeType:mimeType dscpPriority:dscpPriority];
    }

    else
    {
      v19 = [(HAP2AccessoryServerTransportRequest *)v14 initForWritingWithEndpoint:endpoint data:v12 encrypted:isEncrypted mimeType:mimeType dscpPriority:dscpPriority];
    }

    v20 = v19;

    [(HAP2AccessoryServerSecureTransportBase *)self _sendRequest:v20 completion:completionCopy];
    goto LABEL_9;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v22 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    selfCopy = self;
    v26 = 2112;
    v27 = v12;
    _os_log_error_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%@ (SecureBase) Failed to encrypt request: %@", buf, 0x16u);
  }

  completionCopy[2](completionCopy, 0, v12);
LABEL_9:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)transport didReceiveEvent:(id)event
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  transportCopy = transport;
  transport = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v9 = [transportCopy isEqual:transport];

  if (v9)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v10 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_debug_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%@ (SecureBase) Received an event", buf, 0xCu);
    }

    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __68__HAP2AccessoryServerSecureTransportBase_transport_didReceiveEvent___block_invoke;
    v17 = &unk_2786D7050;
    selfCopy2 = self;
    v19 = eventCopy;
    v11 = MEMORY[0x231885210](&v14);
    v12 = [(HAP2AccessoryServerTransportBase *)self operationQueue:v14];
    [v12 addBlock:v11];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __68__HAP2AccessoryServerSecureTransportBase_transport_didReceiveEvent___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v21 = 0;
    v4 = [v2 decryptData:v3 type:1 error:&v21];
    v5 = v21;
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_accessory;
    if (v4)
    {
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 32);
        *buf = 138412290;
        v23 = v15;
        _os_log_debug_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%@ (SecureBase) Successfully decrypted event", buf, 0xCu);
      }

      v7 = [*(a1 + 32) delegate];
      if (v7)
      {
        v8 = [*(a1 + 32) delegateQueue];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __68__HAP2AccessoryServerSecureTransportBase_transport_didReceiveEvent___block_invoke_2;
        v17[3] = &unk_2786D7078;
        v9 = v7;
        v10 = *(a1 + 32);
        v18 = v9;
        v19 = v10;
        v20 = v4;
        dispatch_async(v8, v17);
      }
    }

    else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      *buf = 138412546;
      v23 = v16;
      v24 = 2112;
      v25 = v5;
      _os_log_error_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "%@ (SecureBase) Failed to decrypt event: %@", buf, 0x16u);
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v11 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = v11;
      *buf = 138412546;
      v23 = v12;
      v24 = 2048;
      v25 = [v12 state];
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%@ (SecureBase) Ignoring event while in the wrong state: %lu", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)transport didChangeState:(unint64_t)state error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  transportCopy = transport;
  transport = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v11 = [transportCopy isEqual:transport];

  if (v11)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v12 = hap2Log_accessory;
    if (errorCopy)
    {
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412802;
        selfCopy2 = self;
        v16 = 2048;
        stateCopy2 = state;
        v18 = 2112;
        v19 = errorCopy;
        _os_log_error_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%@ (SecureBase) Transport state changed to %lu with error: %@", &v14, 0x20u);
      }

      if (state == 3 || !state)
      {
        [(HAP2AccessoryServerTransportBase *)self didDisconnectWithError:errorCopy];
      }
    }

    else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      selfCopy2 = self;
      v16 = 2048;
      stateCopy2 = state;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%@ (SecureBase) Transport state changed to %lu", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)decryptData:(id)data type:(unint64_t)type error:(id *)error
{
  dataCopy = data;
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  encryptedSession = [(HAP2AccessoryServerSecureTransportBase *)self encryptedSession];
  v10 = [encryptedSession decryptData:dataCopy additionalAuthenticatedData:0 error:error];

  return v10;
}

- (id)encryptData:(id)data error:(id *)error
{
  dataCopy = data;
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  encryptedSession = [(HAP2AccessoryServerSecureTransportBase *)self encryptedSession];
  v9 = [encryptedSession encryptData:dataCopy additionalAuthenticatedData:0 error:error];

  return v9;
}

- (void)doUpdateMaxRequestTimeout:(double)timeout
{
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  transport = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  [transport updateMaxRequestTimeout:timeout];
}

- (void)doCloseWithError:(id)error completion:(id)completion
{
  completionCopy = completion;
  errorCopy = error;
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  transport = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__HAP2AccessoryServerSecureTransportBase_doCloseWithError_completion___block_invoke;
  v11[3] = &unk_2786D5D70;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [transport closeWithError:errorCopy completion:v11];
}

void __70__HAP2AccessoryServerSecureTransportBase_doCloseWithError_completion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __70__HAP2AccessoryServerSecureTransportBase_doCloseWithError_completion___block_invoke_2;
  v17 = &unk_2786D5F70;
  v9 = *(a1 + 40);
  v19 = v8;
  v20 = v9;
  v21 = a2;
  v18 = v7;
  v10 = v8;
  v11 = v7;
  v12 = MEMORY[0x231885210](&v14);
  v13 = [*(a1 + 32) operationQueue];
  [v13 addConcurrentBlock:v12];
}

- (void)doSendRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  [(HAP2AccessoryServerSecureTransportBase *)self _encryptRequest:requestCopy completion:completionCopy];
}

- (void)doOpenWithCompletion:(id)completion
{
  completionCopy = completion;
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  transport = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HAP2AccessoryServerSecureTransportBase_doOpenWithCompletion___block_invoke;
  v8[3] = &unk_2786D5D70;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [transport openWithCompletion:v8];
}

void __63__HAP2AccessoryServerSecureTransportBase_doOpenWithCompletion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __63__HAP2AccessoryServerSecureTransportBase_doOpenWithCompletion___block_invoke_2;
  v17 = &unk_2786D5F70;
  v9 = *(a1 + 40);
  v19 = v8;
  v20 = v9;
  v21 = a2;
  v18 = v7;
  v10 = v8;
  v11 = v7;
  v12 = MEMORY[0x231885210](&v14);
  v13 = [*(a1 + 32) operationQueue];
  [v13 addConcurrentBlock:v12];
}

- (void)didChangeStateWithError:(id)error
{
  errorCopy = error;
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  delegate = [(HAP2AccessoryServerSecureTransportBase *)self delegate];
  if (delegate)
  {
    state = [(HAP2AccessoryServerTransportBase *)self state];
    delegateQueue = [(HAP2AccessoryServerTransportBase *)self delegateQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__HAP2AccessoryServerSecureTransportBase_didChangeStateWithError___block_invoke;
    v9[3] = &unk_2786D6E88;
    v10 = delegate;
    selfCopy = self;
    v13 = state;
    v12 = errorCopy;
    dispatch_async(delegateQueue, v9);
  }
}

- (BOOL)mergeWithNewTransport:(id)transport
{
  transportCopy = transport;
  transport = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v6 = [transport mergeWithNewTransport:transportCopy];

  return v6;
}

- (id)mimeTypeForCharacteristicRequests
{
  transport = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  mimeTypeForCharacteristicRequests = [transport mimeTypeForCharacteristicRequests];

  return mimeTypeForCharacteristicRequests;
}

- (id)mimeTypeForWellKnownEndpoint:(unint64_t)endpoint
{
  transport = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v5 = [transport mimeTypeForWellKnownEndpoint:endpoint];

  return v5;
}

- (id)endpointForCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  transport = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v6 = [transport endpointForCharacteristics:characteristicsCopy];

  return v6;
}

- (id)endpointForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  transport = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v6 = [transport endpointForCharacteristic:characteristicCopy];

  return v6;
}

- (id)wellKnownEndpoint:(unint64_t)endpoint
{
  transport = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v5 = [transport wellKnownEndpoint:endpoint];

  return v5;
}

- (unint64_t)protocolFeaturesForVersion:(id)version
{
  versionCopy = version;
  transport = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v6 = [transport protocolFeaturesForVersion:versionCopy];

  return v6;
}

- (void)setEncryptedSession:(id)session
{
  sessionCopy = session;
  if (!sessionCopy)
  {
    sessionCopy = [objc_opt_class() defaultEncryptedSession];
  }

  propertyLock = [(HAP2AccessoryServerTransportBase *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HAP2AccessoryServerSecureTransportBase_setEncryptedSession___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  [propertyLock performWritingBlock:v7];
}

- (HAPEncryptedSession)encryptedSession
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10722;
  v11 = __Block_byref_object_dispose__10723;
  v12 = 0;
  propertyLock = [(HAP2AccessoryServerTransportBase *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HAP2AccessoryServerSecureTransportBase_encryptedSession__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [propertyLock performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  propertyLock = [(HAP2AccessoryServerTransportBase *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HAP2AccessoryServerSecureTransportBase_setDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  [propertyLock performWritingBlock:v7];
}

- (HAP2AccessoryServerSecureTransportDelegate)delegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10722;
  v11 = __Block_byref_object_dispose__10723;
  v12 = 0;
  propertyLock = [(HAP2AccessoryServerTransportBase *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__HAP2AccessoryServerSecureTransportBase_delegate__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [propertyLock performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __50__HAP2AccessoryServerSecureTransportBase_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (HAP2AccessoryServerSecureTransportBase)initWithOperationQueue:(id)queue delegateQueue:(id)delegateQueue transport:(id)transport
{
  transportCopy = transport;
  delegateQueueCopy = delegateQueue;
  queueCopy = queue;
  defaultEncryptedSession = [objc_opt_class() defaultEncryptedSession];
  v12 = [(HAP2AccessoryServerSecureTransportBase *)self initWithOperationQueue:queueCopy delegateQueue:delegateQueueCopy transport:transportCopy encryptedSession:defaultEncryptedSession];

  return v12;
}

- (HAP2AccessoryServerSecureTransportBase)initWithOperationQueue:(id)queue delegateQueue:(id)delegateQueue transport:(id)transport encryptedSession:(id)session
{
  transportCopy = transport;
  sessionCopy = session;
  v16.receiver = self;
  v16.super_class = HAP2AccessoryServerSecureTransportBase;
  v13 = [(HAP2AccessoryServerTransportBase *)&v16 initWithOperationQueue:queue delegateQueue:delegateQueue];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_transport, transport);
    objc_storeStrong(&v14->_encryptedSession, session);
    [transportCopy setDelegate:v14];
  }

  return v14;
}

+ (id)defaultEncryptedSession
{
  v2 = objc_opt_new();

  return v2;
}

@end