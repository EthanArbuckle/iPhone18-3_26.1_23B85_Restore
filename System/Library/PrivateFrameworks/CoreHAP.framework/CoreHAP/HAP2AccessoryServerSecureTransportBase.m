@interface HAP2AccessoryServerSecureTransportBase
+ (id)defaultEncryptedSession;
- (BOOL)mergeWithNewTransport:(id)a3;
- (HAP2AccessoryServerSecureTransportBase)initWithOperationQueue:(id)a3 delegateQueue:(id)a4 transport:(id)a5;
- (HAP2AccessoryServerSecureTransportBase)initWithOperationQueue:(id)a3 delegateQueue:(id)a4 transport:(id)a5 encryptedSession:(id)a6;
- (HAP2AccessoryServerSecureTransportDelegate)delegate;
- (HAPEncryptedSession)encryptedSession;
- (id)decryptData:(id)a3 type:(unint64_t)a4 error:(id *)a5;
- (id)encryptData:(id)a3 error:(id *)a4;
- (id)endpointForCharacteristic:(id)a3;
- (id)endpointForCharacteristics:(id)a3;
- (id)mimeTypeForCharacteristicRequests;
- (id)mimeTypeForWellKnownEndpoint:(unint64_t)a3;
- (id)wellKnownEndpoint:(unint64_t)a3;
- (unint64_t)protocolFeaturesForVersion:(id)a3;
- (void)_decryptResponse:(id)a3 request:(id)a4 completion:(id)a5;
- (void)_encryptRequest:(id)a3 completion:(id)a4;
- (void)_sendRequest:(id)a3 completion:(id)a4;
- (void)didChangeStateWithError:(id)a3;
- (void)doCloseWithError:(id)a3 completion:(id)a4;
- (void)doOpenWithCompletion:(id)a3;
- (void)doSendRequest:(id)a3 completion:(id)a4;
- (void)doUpdateMaxRequestTimeout:(double)a3;
- (void)setDelegate:(id)a3;
- (void)setEncryptedSession:(id)a3;
- (void)transport:(id)a3 didChangeState:(unint64_t)a4 error:(id)a5;
- (void)transport:(id)a3 didReceiveEvent:(id)a4;
@end

@implementation HAP2AccessoryServerSecureTransportBase

- (void)_decryptResponse:(id)a3 request:(id)a4 completion:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [v11 assertCurrentQueue];

  LODWORD(v11) = [v10 isEncrypted];
  if (!v11)
  {
    v12 = v8;
    v13 = 0;
    goto LABEL_9;
  }

  v16 = 0;
  v12 = [(HAP2AccessoryServerSecureTransportBase *)self decryptData:v8 type:0 error:&v16];
  v13 = v16;
  if (v12)
  {
LABEL_9:
    v9[2](v9, v12, 0);

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
    v18 = self;
    v19 = 2112;
    v20 = v13;
    _os_log_error_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%@ (SecureBase) Failed to decrypt response: %@", buf, 0x16u);
  }

  (v9)[2](v9, 0, v13);
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sendRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [v8 assertCurrentQueue];

  v9 = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HAP2AccessoryServerSecureTransportBase__sendRequest_completion___block_invoke;
  v12[3] = &unk_2786D5C70;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v10 = v6;
  v11 = v7;
  [v9 sendRequest:v10 completion:v12];
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

- (void)_encryptRequest:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [v8 assertCurrentQueue];

  LODWORD(v8) = [v6 isEncrypted];
  v9 = [v6 data];
  v10 = v9;
  if (!v8)
  {
    v12 = v9;
    goto LABEL_5;
  }

  v23 = 0;
  v11 = [(HAP2AccessoryServerSecureTransportBase *)self encryptData:v9 error:&v23];
  v12 = v23;

  if (v11)
  {

    v12 = v11;
LABEL_5:
    v13 = [v6 isForReading];
    v14 = [HAP2AccessoryServerTransportRequest alloc];
    v15 = [v6 endpoint];
    v16 = [v6 isEncrypted];
    v17 = [v6 mimeType];
    v18 = [v6 dscpPriority];
    if (v13)
    {
      v19 = [(HAP2AccessoryServerTransportRequest *)v14 initForReadingWithEndpoint:v15 data:v12 encrypted:v16 mimeType:v17 dscpPriority:v18];
    }

    else
    {
      v19 = [(HAP2AccessoryServerTransportRequest *)v14 initForWritingWithEndpoint:v15 data:v12 encrypted:v16 mimeType:v17 dscpPriority:v18];
    }

    v20 = v19;

    [(HAP2AccessoryServerSecureTransportBase *)self _sendRequest:v20 completion:v7];
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
    v25 = self;
    v26 = 2112;
    v27 = v12;
    _os_log_error_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%@ (SecureBase) Failed to encrypt request: %@", buf, 0x16u);
  }

  v7[2](v7, 0, v12);
LABEL_9:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)a3 didReceiveEvent:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v9 = [v7 isEqual:v8];

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
      v21 = self;
      _os_log_debug_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%@ (SecureBase) Received an event", buf, 0xCu);
    }

    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __68__HAP2AccessoryServerSecureTransportBase_transport_didReceiveEvent___block_invoke;
    v17 = &unk_2786D7050;
    v18 = self;
    v19 = v6;
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

- (void)transport:(id)a3 didChangeState:(unint64_t)a4 error:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v12 = hap2Log_accessory;
    if (v8)
    {
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412802;
        v15 = self;
        v16 = 2048;
        v17 = a4;
        v18 = 2112;
        v19 = v8;
        _os_log_error_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%@ (SecureBase) Transport state changed to %lu with error: %@", &v14, 0x20u);
      }

      if (a4 == 3 || !a4)
      {
        [(HAP2AccessoryServerTransportBase *)self didDisconnectWithError:v8];
      }
    }

    else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = self;
      v16 = 2048;
      v17 = a4;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%@ (SecureBase) Transport state changed to %lu", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)decryptData:(id)a3 type:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [v8 assertCurrentQueue];

  v9 = [(HAP2AccessoryServerSecureTransportBase *)self encryptedSession];
  v10 = [v9 decryptData:v7 additionalAuthenticatedData:0 error:a5];

  return v10;
}

- (id)encryptData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [v7 assertCurrentQueue];

  v8 = [(HAP2AccessoryServerSecureTransportBase *)self encryptedSession];
  v9 = [v8 encryptData:v6 additionalAuthenticatedData:0 error:a4];

  return v9;
}

- (void)doUpdateMaxRequestTimeout:(double)a3
{
  v5 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [v5 assertCurrentQueue];

  v6 = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  [v6 updateMaxRequestTimeout:a3];
}

- (void)doCloseWithError:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [v8 assertCurrentQueue];

  v9 = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__HAP2AccessoryServerSecureTransportBase_doCloseWithError_completion___block_invoke;
  v11[3] = &unk_2786D5D70;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 closeWithError:v7 completion:v11];
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

- (void)doSendRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [v7 assertCurrentQueue];

  [(HAP2AccessoryServerSecureTransportBase *)self _encryptRequest:v8 completion:v6];
}

- (void)doOpenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [v5 assertCurrentQueue];

  v6 = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HAP2AccessoryServerSecureTransportBase_doOpenWithCompletion___block_invoke;
  v8[3] = &unk_2786D5D70;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 openWithCompletion:v8];
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

- (void)didChangeStateWithError:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [v5 assertCurrentQueue];

  v6 = [(HAP2AccessoryServerSecureTransportBase *)self delegate];
  if (v6)
  {
    v7 = [(HAP2AccessoryServerTransportBase *)self state];
    v8 = [(HAP2AccessoryServerTransportBase *)self delegateQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__HAP2AccessoryServerSecureTransportBase_didChangeStateWithError___block_invoke;
    v9[3] = &unk_2786D6E88;
    v10 = v6;
    v11 = self;
    v13 = v7;
    v12 = v4;
    dispatch_async(v8, v9);
  }
}

- (BOOL)mergeWithNewTransport:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v6 = [v5 mergeWithNewTransport:v4];

  return v6;
}

- (id)mimeTypeForCharacteristicRequests
{
  v2 = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v3 = [v2 mimeTypeForCharacteristicRequests];

  return v3;
}

- (id)mimeTypeForWellKnownEndpoint:(unint64_t)a3
{
  v4 = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v5 = [v4 mimeTypeForWellKnownEndpoint:a3];

  return v5;
}

- (id)endpointForCharacteristics:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v6 = [v5 endpointForCharacteristics:v4];

  return v6;
}

- (id)endpointForCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v6 = [v5 endpointForCharacteristic:v4];

  return v6;
}

- (id)wellKnownEndpoint:(unint64_t)a3
{
  v4 = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v5 = [v4 wellKnownEndpoint:a3];

  return v5;
}

- (unint64_t)protocolFeaturesForVersion:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerSecureTransportBase *)self transport];
  v6 = [v5 protocolFeaturesForVersion:v4];

  return v6;
}

- (void)setEncryptedSession:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [objc_opt_class() defaultEncryptedSession];
  }

  v5 = [(HAP2AccessoryServerTransportBase *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HAP2AccessoryServerSecureTransportBase_setEncryptedSession___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

- (HAPEncryptedSession)encryptedSession
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10722;
  v11 = __Block_byref_object_dispose__10723;
  v12 = 0;
  v3 = [(HAP2AccessoryServerTransportBase *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HAP2AccessoryServerSecureTransportBase_encryptedSession__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerTransportBase *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HAP2AccessoryServerSecureTransportBase_setDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

- (HAP2AccessoryServerSecureTransportDelegate)delegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10722;
  v11 = __Block_byref_object_dispose__10723;
  v12 = 0;
  v3 = [(HAP2AccessoryServerTransportBase *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__HAP2AccessoryServerSecureTransportBase_delegate__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

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

- (HAP2AccessoryServerSecureTransportBase)initWithOperationQueue:(id)a3 delegateQueue:(id)a4 transport:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() defaultEncryptedSession];
  v12 = [(HAP2AccessoryServerSecureTransportBase *)self initWithOperationQueue:v10 delegateQueue:v9 transport:v8 encryptedSession:v11];

  return v12;
}

- (HAP2AccessoryServerSecureTransportBase)initWithOperationQueue:(id)a3 delegateQueue:(id)a4 transport:(id)a5 encryptedSession:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = HAP2AccessoryServerSecureTransportBase;
  v13 = [(HAP2AccessoryServerTransportBase *)&v16 initWithOperationQueue:a3 delegateQueue:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_transport, a5);
    objc_storeStrong(&v14->_encryptedSession, a6);
    [v11 setDelegate:v14];
  }

  return v14;
}

+ (id)defaultEncryptedSession
{
  v2 = objc_opt_new();

  return v2;
}

@end