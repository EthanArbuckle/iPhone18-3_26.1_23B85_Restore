@interface HAP2AccessoryServerSecureTransportThreadPaired
- (id)decryptData:(id)a3 type:(unint64_t)a4 error:(id *)a5;
- (id)securitySessionDidRequestAdditionalDerivedKeyTuples:(id)a3;
- (void)securitySession:(id)a3 didCloseWithError:(id)a4;
- (void)securitySessionDidOpen:(id)a3;
@end

@implementation HAP2AccessoryServerSecureTransportThreadPaired

- (void)securitySession:(id)a3 didCloseWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__HAP2AccessoryServerSecureTransportThreadPaired_securitySession_didCloseWithError___block_invoke;
  v12[3] = &unk_2786D7078;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = MEMORY[0x231885210](v12);
  v11 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [v11 addConcurrentBlock:v10];
}

id __84__HAP2AccessoryServerSecureTransportThreadPaired_securitySession_didCloseWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEventEncryption:0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5.receiver = *(a1 + 32);
  v5.super_class = HAP2AccessoryServerSecureTransportThreadPaired;
  return objc_msgSendSuper2(&v5, sel_securitySession_didCloseWithError_, v2, v3);
}

- (void)securitySessionDidOpen:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __73__HAP2AccessoryServerSecureTransportThreadPaired_securitySessionDidOpen___block_invoke;
  v11 = &unk_2786D7050;
  v12 = v4;
  v13 = self;
  v5 = v4;
  v6 = MEMORY[0x231885210](&v8);
  v7 = [(HAP2AccessoryServerTransportBase *)self operationQueue:v8];
  [v7 addConcurrentBlock:v6];
}

void __73__HAP2AccessoryServerSecureTransportThreadPaired_securitySessionDidOpen___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) additionalDerivedKeys];
  v3 = [v2 objectForKeyedSubscript:@"Event-Salt"];

  if (v3)
  {
    v4 = [HAPSecuritySessionEncryption alloc];
    v5 = [MEMORY[0x277CBEA90] data];
    v6 = [(HAPSecuritySessionEncryption *)v4 initWithInputKey:v3 outputKey:v5];
    [*(a1 + 40) setEventEncryption:v6];

    v7 = *(a1 + 32);
    v11.receiver = *(a1 + 40);
    v11.super_class = HAP2AccessoryServerSecureTransportThreadPaired;
    objc_msgSendSuper2(&v11, sel_securitySessionDidOpen_, v7);
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v8 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      *buf = 138412290;
      v13 = v10;
      _os_log_error_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%@ No event key was derived", buf, 0xCu);
    }

    [*(a1 + 32) close];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)securitySessionDidRequestAdditionalDerivedKeyTuples:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [HAPSecuritySessionDelegateAdditionalDerivedKeyTuple alloc];
  v4 = [@"Event-Salt" dataUsingEncoding:4];
  v5 = [@"Event-Read-Encryption-Key" dataUsingEncoding:4];
  v6 = [(HAPSecuritySessionDelegateAdditionalDerivedKeyTuple *)v3 initWithName:@"Event-Salt" saltData:v4 infoData:v5];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)decryptData:(id)a3 type:(unint64_t)a4 error:(id *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a4 != 1)
  {
    v19.receiver = self;
    v19.super_class = HAP2AccessoryServerSecureTransportThreadPaired;
    v11 = [(HAP2AccessoryServerSecureTransportBase *)&v19 decryptData:v8 type:a4 error:a5];
    goto LABEL_14;
  }

  v9 = [(HAP2AccessoryServerSecureTransportThreadPaired *)self eventEncryption];

  if (!v9)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v14 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = self;
      _os_log_error_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%@ No event key was derived", buf, 0xCu);
      if (a5)
      {
        goto LABEL_10;
      }
    }

    else if (a5)
    {
LABEL_10:
      [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      *a5 = v11 = 0;
      goto LABEL_14;
    }

    v11 = 0;
    goto LABEL_14;
  }

  v10 = [(HAP2AccessoryServerSecureTransportThreadPaired *)self eventEncryption];
  v18 = 0;
  v11 = [v10 decrypt:v8 additionalAuthenticatedData:0 error:&v18];
  v12 = v18;

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    [(HAP2AccessoryServerTransportBase *)self closeWithError:v12 completion:&__block_literal_global_25493];
    if (a5)
    {
      v15 = v12;
      *a5 = v12;
    }
  }

LABEL_14:
  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

void __73__HAP2AccessoryServerSecureTransportThreadPaired_decryptData_type_error___block_invoke()
{
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v0 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_22AADC000, v0, OS_LOG_TYPE_INFO, "Security session closed", v1, 2u);
  }
}

@end