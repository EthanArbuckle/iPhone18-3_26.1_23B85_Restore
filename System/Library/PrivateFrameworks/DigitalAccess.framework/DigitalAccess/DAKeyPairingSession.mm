@interface DAKeyPairingSession
- (DAKeyPairingSession)initWithCoder:(id)coder;
- (DAKeyPairingSession)initWithDelegate:(id)delegate;
- (id)getKeyPairingProxy:(void *)proxy;
- (id)preWarmForManufacturer:(id)manufacturer;
- (id)sendTrackingReceipt:(void *)receipt otherJSONData:(void *)data forKeyWithIdentifier:;
- (id)setTrackingReceipt:(id)receipt decryptedDeviceData:(id)data forKeyWithIdentifier:(id)identifier;
- (id)setTrackingReceipt:(id)receipt forKeyWithIdentifier:(id)identifier;
- (id)setTrackingReceipt:(id)receipt slotIdentifier:(id)identifier confidentialMailboxData:(id)data ephemeralPublicKey:(id)key forKeyWithIdentifier:(id)withIdentifier;
- (id)setTrackingReceipt:(id)receipt vehicleMobilizationData:(id)data forKeyWithIdentifier:(id)identifier;
- (id)startKeyPairingWithPassword:(id)password displayName:(id)name;
- (id)startKeyPairingWithPassword:(id)password displayName:(id)name transport:(int64_t)transport;
- (id)startKeyPairingWithPassword:(id)password displayName:(id)name transport:(int64_t)transport bindingAttestation:(id)attestation;
- (id)startProbing;
- (void)didEnd:(id)end;
- (void)encodeWithCoder:(id)coder;
- (void)endPointPrivacyDecryption:(id)decryption encryptedData:(id)data publicKey:(id)key callback:(id)callback;
- (void)handleFirstTransactionCompletionResult:(id)result;
- (void)handleKeyPairingCompletionResult:(id)result keyInformation:(id)information trackingRequest:(id)request;
- (void)handlePairingDidStart;
- (void)handlePreWarmCompletionResult:(id)result;
- (void)handleProbingCompletionWithBrandCode:(unint64_t)code error:(id)error;
@end

@implementation DAKeyPairingSession

- (DAKeyPairingSession)initWithDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = DAKeyPairingSession;
  return [(DASession *)&v4 initWithDelegate:delegate];
}

- (id)preWarmForManufacturer:(id)manufacturer
{
  manufacturerCopy = manufacturer;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v5 = KmlLogger();
  [(DAKeyPairingSession *)v5 preWarmForManufacturer:manufacturerCopy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__DAKeyPairingSession_preWarmForManufacturer___block_invoke;
  v10[3] = &unk_278F6FB00;
  v10[4] = &v11;
  v6 = [(DAKeyPairingSession *)self getKeyPairingProxy:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__DAKeyPairingSession_preWarmForManufacturer___block_invoke_13;
  v9[3] = &unk_278F6FB00;
  v9[4] = &v11;
  [v6 preWarmForManufacturer:manufacturerCopy callback:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __46__DAKeyPairingSession_preWarmForManufacturer___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyPairingSession preWarmForManufacturer:]_block_invoke";
    v16 = 1024;
    v17 = 51;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __46__DAKeyPairingSession_preWarmForManufacturer___block_invoke_13(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "[DAKeyPairingSession preWarmForManufacturer:]_block_invoke";
    v10 = 1024;
    v11 = 54;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v8, 0x1Cu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x277D85DE8];
}

- (id)startKeyPairingWithPassword:(id)password displayName:(id)name transport:(int64_t)transport bindingAttestation:(id)attestation
{
  v41[1] = *MEMORY[0x277D85DE8];
  passwordCopy = password;
  nameCopy = name;
  attestationCopy = attestation;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  if (![passwordCopy length])
  {
    v16 = KmlLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[DAKeyPairingSession startKeyPairingWithPassword:displayName:transport:bindingAttestation:]";
      v36 = 1024;
      v37 = 69;
      _os_log_impl(&dword_248BF3000, v16, OS_LOG_TYPE_ERROR, "%s : %i : password is empty", buf, 0x12u);
    }

    v17 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(10)];
    v41[0] = v15;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v19 = [v17 errorWithDomain:@"DigitalAccessError" code:10 userInfo:v18];
    goto LABEL_12;
  }

  if (![nameCopy length])
  {
    v20 = KmlLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[DAKeyPairingSession startKeyPairingWithPassword:displayName:transport:bindingAttestation:]";
      v36 = 1024;
      v37 = 74;
      _os_log_impl(&dword_248BF3000, v20, OS_LOG_TYPE_ERROR, "%s : %i : displayName is empty", buf, 0x12u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(203)];
    v39 = v15;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v19 = [v21 errorWithDomain:@"DigitalAccessError" code:203 userInfo:v18];
LABEL_12:
    v22 = v29[5];
    v29[5] = v19;

    goto LABEL_13;
  }

  v13 = KmlLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = DAKeyTransportTypeAsString(transport);
    [DAKeyPairingSession startKeyPairingWithPassword:v14 displayName:nameCopy transport:buf bindingAttestation:v13];
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __92__DAKeyPairingSession_startKeyPairingWithPassword_displayName_transport_bindingAttestation___block_invoke;
  v27[3] = &unk_278F6FB00;
  v27[4] = &v28;
  v15 = [(DAKeyPairingSession *)self getKeyPairingProxy:v27];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __92__DAKeyPairingSession_startKeyPairingWithPassword_displayName_transport_bindingAttestation___block_invoke_14;
  v26[3] = &unk_278F6FB00;
  v26[4] = &v28;
  [v15 startKeyPairingWithPassword:passwordCopy keyName:nameCopy transport:transport bindingAttestation:attestationCopy callback:v26];
LABEL_13:

  v23 = v29[5];
  _Block_object_dispose(&v28, 8);

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

void __92__DAKeyPairingSession_startKeyPairingWithPassword_displayName_transport_bindingAttestation___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyPairingSession startKeyPairingWithPassword:displayName:transport:bindingAttestation:]_block_invoke";
    v16 = 1024;
    v17 = 82;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __92__DAKeyPairingSession_startKeyPairingWithPassword_displayName_transport_bindingAttestation___block_invoke_14(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[DAKeyPairingSession startKeyPairingWithPassword:displayName:transport:bindingAttestation:]_block_invoke";
    v11 = 1024;
    v12 = 89;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v9, 0x1Cu);
  }

  v5 = kmlErrorToDAError(v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)startKeyPairingWithPassword:(id)password displayName:(id)name transport:(int64_t)transport
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  passwordCopy = password;
  v10 = KmlLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[DAKeyPairingSession startKeyPairingWithPassword:displayName:transport:]";
    v18 = 1024;
    v19 = 100;
    _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_INFO, "%s : %i : This API is deprecated, use startKeyPairingWithPassword:displayName:transport:bindingAttestation: instead", &v16, 0x12u);
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  v12 = kmlUtilUUIDToData(uUID);
  v13 = [(DAKeyPairingSession *)self startKeyPairingWithPassword:passwordCopy displayName:nameCopy transport:transport bindingAttestation:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)startKeyPairingWithPassword:(id)password displayName:(id)name
{
  v16 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  passwordCopy = password;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[DAKeyPairingSession startKeyPairingWithPassword:displayName:]";
    v14 = 1024;
    v15 = 112;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : This API is deprecated, use startKeyPairingWithPassword:displayName:transport:bindingAttestation: instead", &v12, 0x12u);
  }

  v9 = [(DAKeyPairingSession *)self startKeyPairingWithPassword:passwordCopy displayName:nameCopy transport:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)startProbing
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__DAKeyPairingSession_startProbing__block_invoke;
  v6[3] = &unk_278F6FB00;
  v6[4] = &v7;
  v2 = [(DAKeyPairingSession *)self getKeyPairingProxy:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__DAKeyPairingSession_startProbing__block_invoke_16;
  v5[3] = &unk_278F6FB28;
  v5[4] = &v7;
  [v2 startProbingWithCallback:v5];

  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __35__DAKeyPairingSession_startProbing__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyPairingSession startProbing]_block_invoke";
    v16 = 1024;
    v17 = 120;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __35__DAKeyPairingSession_startProbing__block_invoke_16(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v15 = "[DAKeyPairingSession startProbing]_block_invoke";
    v16 = 1024;
    v17 = 123;
    v18 = 1024;
    v19 = a2;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %d", buf, 0x18u);
  }

  if ((a2 & 1) == 0)
  {
    v5 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(4), v12}];
    v13 = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [v5 errorWithDomain:@"DigitalAccessError" code:4 userInfo:v7];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)sendTrackingReceipt:(void *)receipt otherJSONData:(void *)data forKeyWithIdentifier:
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  receiptCopy = receipt;
  dataCopy = data;
  if (self)
  {
    kmlUtilLogLargeData(@"Tracking Receipt Data", receiptCopy);
    if (dataCopy)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = __Block_byref_object_copy_;
      v19 = __Block_byref_object_dispose_;
      v20 = 0;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __78__DAKeyPairingSession_sendTrackingReceipt_otherJSONData_forKeyWithIdentifier___block_invoke;
      v14[3] = &unk_278F6FB00;
      v14[4] = &v15;
      v10 = [self getRemoteProxy:v14];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __78__DAKeyPairingSession_sendTrackingReceipt_otherJSONData_forKeyWithIdentifier___block_invoke_21;
      v13[3] = &unk_278F6FB00;
      v13[4] = &v15;
      [v10 consumeTrackingReceipt:v7 otherJSONData:receiptCopy forKeyWithIdentifier:dataCopy callback:v13];

      self = v16[5];
      _Block_object_dispose(&v15, 8);
    }

    else
    {
      [DAKeyPairingSession sendTrackingReceipt:v22 otherJSONData:&v15 forKeyWithIdentifier:?];
      self = v15;
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return self;
}

void __78__DAKeyPairingSession_sendTrackingReceipt_otherJSONData_forKeyWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyPairingSession sendTrackingReceipt:otherJSONData:forKeyWithIdentifier:]_block_invoke";
    v16 = 1024;
    v17 = 146;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __78__DAKeyPairingSession_sendTrackingReceipt_otherJSONData_forKeyWithIdentifier___block_invoke_21(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[DAKeyPairingSession sendTrackingReceipt:otherJSONData:forKeyWithIdentifier:]_block_invoke";
    v11 = 1024;
    v12 = 152;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v9, 0x1Cu);
  }

  v5 = kmlErrorToDAError(v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)setTrackingReceipt:(id)receipt forKeyWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  receiptCopy = receipt;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "[DAKeyPairingSession setTrackingReceipt:forKeyWithIdentifier:]";
    v15 = 1024;
    v16 = 166;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_ERROR, "%s : %i : Deprecated API, use setTrackingReceipt:decryptedDeviceData:forKeyWithIdentifier: instead", &v13, 0x12u);
  }

  v9 = KmlLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "[DAKeyPairingSession setTrackingReceipt:forKeyWithIdentifier:]";
    v15 = 1024;
    v16 = 167;
    v17 = 2112;
    v18 = identifierCopy;
    _os_log_impl(&dword_248BF3000, v9, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", &v13, 0x1Cu);
  }

  v10 = [(DAKeyPairingSession *)self sendTrackingReceipt:receiptCopy otherJSONData:0 forKeyWithIdentifier:identifierCopy];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)setTrackingReceipt:(id)receipt vehicleMobilizationData:(id)data forKeyWithIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataCopy = data;
  receiptCopy = receipt;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v17 = 136315394;
    v18 = "[DAKeyPairingSession setTrackingReceipt:vehicleMobilizationData:forKeyWithIdentifier:]";
    v19 = 1024;
    v20 = 177;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_ERROR, "%s : %i : Deprecated API, use setTrackingReceipt:decryptedDeviceData:forKeyWithIdentifier: instead", &v17, 0x12u);
  }

  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315650;
    v18 = "[DAKeyPairingSession setTrackingReceipt:vehicleMobilizationData:forKeyWithIdentifier:]";
    v19 = 1024;
    v20 = 178;
    v21 = 2112;
    v22 = identifierCopy;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", &v17, 0x1Cu);
  }

  v13 = [DAUtils decryptVehicleMobilizationData:dataCopy forKeyWithIdentifier:identifierCopy];

  v14 = [(DAKeyPairingSession *)self sendTrackingReceipt:receiptCopy otherJSONData:v13 forKeyWithIdentifier:identifierCopy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)setTrackingReceipt:(id)receipt slotIdentifier:(id)identifier confidentialMailboxData:(id)data ephemeralPublicKey:(id)key forKeyWithIdentifier:(id)withIdentifier
{
  v22 = *MEMORY[0x277D85DE8];
  withIdentifierCopy = withIdentifier;
  receiptCopy = receipt;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "[DAKeyPairingSession setTrackingReceipt:slotIdentifier:confidentialMailboxData:ephemeralPublicKey:forKeyWithIdentifier:]";
    v18 = 1024;
    v19 = 192;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_ERROR, "%s : %i : Deprecated API, use setTrackingReceipt:decryptedDeviceData:forKeyWithIdentifier: instead", &v16, 0x12u);
  }

  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315650;
    v17 = "[DAKeyPairingSession setTrackingReceipt:slotIdentifier:confidentialMailboxData:ephemeralPublicKey:forKeyWithIdentifier:]";
    v18 = 1024;
    v19 = 193;
    v20 = 2112;
    v21 = withIdentifierCopy;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", &v16, 0x1Cu);
  }

  v13 = [(DAKeyPairingSession *)self sendTrackingReceipt:receiptCopy otherJSONData:0 forKeyWithIdentifier:withIdentifierCopy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)endPointPrivacyDecryption:(id)decryption encryptedData:(id)data publicKey:(id)key callback:(id)callback
{
  v34[1] = *MEMORY[0x277D85DE8];
  decryptionCopy = decryption;
  dataCopy = data;
  keyCopy = key;
  callbackCopy = callback;
  v13 = KmlLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[DAKeyPairingSession endPointPrivacyDecryption:encryptedData:publicKey:callback:]";
    v29 = 1024;
    v30 = 204;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_INFO, "%s : %i : API Deprecated, please stop use", buf, 0x12u);
  }

  if (decryptionCopy && dataCopy && keyCopy)
  {
    v14 = kmlUtilDataForHexString(keyCopy);
    v15 = kmlUtilDataForHexString(dataCopy);
    v16 = SESEndPointPrivacyDecryption();
    v17 = 0;
    v18 = KmlLogger();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v17)
    {
      v26 = keyCopy;
      if (v19)
      {
        *buf = 136315650;
        v28 = "[DAKeyPairingSession endPointPrivacyDecryption:encryptedData:publicKey:callback:]";
        v29 = 1024;
        v30 = 219;
        v31 = 2112;
        v32 = v17;
        _os_log_impl(&dword_248BF3000, v18, OS_LOG_TYPE_INFO, "%s : %i : endPointPrivacyDecryption: return error: %@", buf, 0x1Cu);
      }

      v20 = MEMORY[0x277CCA9B8];
      userInfo = [v17 userInfo];
      v22 = [v20 errorWithDomain:@"DigitalAccessError" code:204 userInfo:userInfo];

      callbackCopy[2](callbackCopy, 0, v22);
      keyCopy = v26;
    }

    else
    {
      if (v19)
      {
        *buf = 136315650;
        v28 = "[DAKeyPairingSession endPointPrivacyDecryption:encryptedData:publicKey:callback:]";
        v29 = 1024;
        v30 = 216;
        v31 = 2112;
        v32 = v16;
        _os_log_impl(&dword_248BF3000, v18, OS_LOG_TYPE_INFO, "%s : %i : endPointPrivacyDecryption: got decrypted data: %@", buf, 0x1Cu);
      }

      (callbackCopy)[2](callbackCopy, v16, 0);
    }
  }

  else
  {
    v23 = KmlLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[DAKeyPairingSession endPointPrivacyDecryption:encryptedData:publicKey:callback:]";
      v29 = 1024;
      v30 = 206;
      _os_log_impl(&dword_248BF3000, v23, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v24 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v34[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v16 = [v24 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v15];
    callbackCopy[2](callbackCopy, 0, v16);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)setTrackingReceipt:(id)receipt decryptedDeviceData:(id)data forKeyWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataCopy = data;
  receiptCopy = receipt;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315650;
    v16 = "[DAKeyPairingSession setTrackingReceipt:decryptedDeviceData:forKeyWithIdentifier:]";
    v17 = 1024;
    v18 = 231;
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", &v15, 0x1Cu);
  }

  v12 = [(DAKeyPairingSession *)self sendTrackingReceipt:receiptCopy otherJSONData:dataCopy forKeyWithIdentifier:identifierCopy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)didEnd:(id)end
{
  v12 = *MEMORY[0x277D85DE8];
  endCopy = end;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v9 = "[DAKeyPairingSession didEnd:]";
    v10 = 1024;
    v11 = 246;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  v7.receiver = self;
  v7.super_class = DAKeyPairingSession;
  [(DASession *)&v7 didEnd:endCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleKeyPairingCompletionResult:(id)result keyInformation:(id)information trackingRequest:(id)request
{
  resultCopy = result;
  informationCopy = information;
  requestCopy = request;
  getDelegate = [(DASession *)self getDelegate];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__DAKeyPairingSession_handleKeyPairingCompletionResult_keyInformation_trackingRequest___block_invoke;
  v16[3] = &unk_278F6FB50;
  v17 = resultCopy;
  v18 = getDelegate;
  selfCopy = self;
  v20 = informationCopy;
  v21 = requestCopy;
  v12 = requestCopy;
  v13 = informationCopy;
  v14 = getDelegate;
  v15 = resultCopy;
  [(DASession *)self dispatchOnCallbackQueue:v16];
}

void __87__DAKeyPairingSession_handleKeyPairingCompletionResult_keyInformation_trackingRequest___block_invoke(uint64_t a1)
{
  v2 = kmlErrorToDAError(*(a1 + 32));
  [*(a1 + 40) keyPairingSession:*(a1 + 48) didFinishPairingWithKey:*(a1 + 56) trackingRequest:*(a1 + 64) error:v2];
}

- (void)handleFirstTransactionCompletionResult:(id)result
{
  resultCopy = result;
  getDelegate = [(DASession *)self getDelegate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__DAKeyPairingSession_handleFirstTransactionCompletionResult___block_invoke;
  v8[3] = &unk_278F6FB78;
  v9 = resultCopy;
  v10 = getDelegate;
  selfCopy = self;
  v6 = getDelegate;
  v7 = resultCopy;
  [(DASession *)self dispatchOnCallbackQueue:v8];
}

void __62__DAKeyPairingSession_handleFirstTransactionCompletionResult___block_invoke(uint64_t a1)
{
  v2 = kmlErrorToDAError(*(a1 + 32));
  [*(a1 + 40) didFinishFirstTransactionForSession:*(a1 + 48) error:v2];
}

- (void)handlePreWarmCompletionResult:(id)result
{
  resultCopy = result;
  getDelegate = [(DASession *)self getDelegate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__DAKeyPairingSession_handlePreWarmCompletionResult___block_invoke;
  v8[3] = &unk_278F6FBA0;
  v9 = resultCopy;
  v10 = getDelegate;
  v6 = getDelegate;
  v7 = resultCopy;
  [(DASession *)self dispatchOnCallbackQueue:v8];
}

void __53__DAKeyPairingSession_handlePreWarmCompletionResult___block_invoke(uint64_t a1)
{
  v2 = kmlErrorToDAError(*(a1 + 32));
  [*(a1 + 40) didFinishPreWarmWithResult:v2];
}

- (void)handleProbingCompletionWithBrandCode:(unint64_t)code error:(id)error
{
  errorCopy = error;
  getDelegate = [(DASession *)self getDelegate];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__DAKeyPairingSession_handleProbingCompletionWithBrandCode_error___block_invoke;
  v10[3] = &unk_278F6FBC8;
  v12 = errorCopy;
  codeCopy = code;
  v11 = getDelegate;
  v8 = errorCopy;
  v9 = getDelegate;
  [(DASession *)self dispatchOnCallbackQueue:v10];
}

void __66__DAKeyPairingSession_handleProbingCompletionWithBrandCode_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = kmlErrorToDAError(*(a1 + 40));
  [v1 didFinishProbingWithBrandCode:v2 error:v3];
}

- (void)handlePairingDidStart
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v10 = "[DAKeyPairingSession handlePairingDidStart]";
    v11 = 1024;
    v12 = 289;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  getDelegate = [(DASession *)self getDelegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__DAKeyPairingSession_handlePairingDidStart__block_invoke;
  v7[3] = &unk_278F6FBF0;
  v8 = getDelegate;
  v5 = getDelegate;
  [(DASession *)self dispatchOnCallbackQueue:v7];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __44__DAKeyPairingSession_handlePairingDidStart__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 didStartPairing];
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = DAKeyPairingSession;
  [(DASession *)&v3 encodeWithCoder:coder];
}

- (DAKeyPairingSession)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = DAKeyPairingSession;
  return [(DASession *)&v4 initWithCoder:coder];
}

- (id)getKeyPairingProxy:(void *)proxy
{
  if (proxy)
  {
    proxy = [proxy getRemoteProxy:a2];
    v2 = vars8;
  }

  return proxy;
}

- (void)preWarmForManufacturer:(NSObject *)a1 .cold.1(NSObject *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315650;
    v6 = "[DAKeyPairingSession preWarmForManufacturer:]";
    v7 = 1024;
    v8 = 49;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&dword_248BF3000, a1, OS_LOG_TYPE_DEBUG, "%s : %i : Manufacturer: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)startKeyPairingWithPassword:(void *)a1 displayName:(uint64_t)a2 transport:(uint8_t *)buf bindingAttestation:(os_log_t)log .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = "[DAKeyPairingSession startKeyPairingWithPassword:displayName:transport:bindingAttestation:]";
  *(buf + 6) = 1024;
  *(buf + 14) = 79;
  *(buf + 9) = 2112;
  *(buf + 20) = a1;
  *(buf + 14) = 2112;
  *(buf + 30) = a2;
  _os_log_impl(&dword_248BF3000, log, OS_LOG_TYPE_DEBUG, "%s : %i : Transport = %@, displayName: %@", buf, 0x26u);
}

- (void)sendTrackingReceipt:(void *)a1 otherJSONData:(void *)a2 forKeyWithIdentifier:(uint64_t *)a3 .cold.1(void *a1, void *a2, uint64_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = KmlLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    v12 = "[DAKeyPairingSession sendTrackingReceipt:otherJSONData:forKeyWithIdentifier:]";
    v13 = 1024;
    v14 = 140;
    _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", &v11, 0x12u);
  }

  v7 = MEMORY[0x277CCA9B8];
  *a1 = *MEMORY[0x277CCA450];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
  *a2 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:a2 forKeys:a1 count:1];
  *a3 = [v7 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v9];

  v10 = *MEMORY[0x277D85DE8];
}

@end