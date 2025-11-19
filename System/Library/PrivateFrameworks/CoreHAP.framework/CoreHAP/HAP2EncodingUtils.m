@interface HAP2EncodingUtils
+ (BOOL)parseAddOrRemovePairingRequestResponse:(id)a3 error:(id *)a4;
+ (id)addPairingRequestWithIdentity:(id)a3 error:(id *)a4;
+ (id)removePairingRequestWithIdentifier:(id)a3 error:(id *)a4;
@end

@implementation HAP2EncodingUtils

+ (BOOL)parseAddOrRemovePairingRequestResponse:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [HAP2TLVAddOrRemovePairingResponse parsedFromData:a3 error:?];
  v6 = v5;
  if (!v5)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v13 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      if (a4)
      {
        v14 = *a4;
      }

      else
      {
        v14 = 0;
      }

      v25 = 138412290;
      v26 = v14;
      _os_log_error_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "Pairing request response failed to parse: %@", &v25, 0xCu);
    }

    goto LABEL_27;
  }

  v7 = [v5 state];
  v8 = [v7 value];

  if (v8 != 2)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v15 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v17 = v15;
      v18 = [v6 state];
      v19 = HAP2TLVPairingStateAsString([v18 value]);
      v25 = 138412290;
      v26 = v19;
      _os_log_error_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "Pairing request response had invalid state: %@", &v25, 0xCu);

      if (!a4)
      {
        goto LABEL_27;
      }
    }

    else if (!a4)
    {
      goto LABEL_27;
    }

    v11 = MEMORY[0x277CCA9B8];
    v12 = 15;
    goto LABEL_19;
  }

  v9 = [v6 responseError];

  if (!v9)
  {
    v16 = 1;
    goto LABEL_28;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v10 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    v20 = v10;
    v21 = [v6 responseError];
    v22 = HAP2TLVErrorsAsString([v21 value]);
    v25 = 138412290;
    v26 = v22;
    _os_log_error_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "Pairing request response had an error: %@", &v25, 0xCu);

    if (a4)
    {
      goto LABEL_8;
    }

LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  if (!a4)
  {
    goto LABEL_27;
  }

LABEL_8:
  v11 = MEMORY[0x277CCA9B8];
  v12 = 16;
LABEL_19:
  [v11 hapErrorWithCode:v12];
  *a4 = v16 = 0;
LABEL_28:

  v23 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)addPairingRequestWithIdentity:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [[HAP2TLVPairingStateWrapper alloc] initWithValue:1];
  v7 = [[HAP2TLVPairingMethodWrapper alloc] initWithValue:3];
  v8 = [HAPTLVUnsignedNumberValue alloc];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "permissions")}];
  v10 = [(HAPTLVNumberValueBase *)v8 initWithValue:v9];

  v11 = [HAP2TLVAddPairingRequest alloc];
  v12 = [v5 identifier];
  v13 = [v5 publicKey];

  v14 = [v13 data];
  v15 = [(HAP2TLVAddPairingRequest *)v11 initWithState:v6 method:v7 identifier:v12 publicKey:v14 permissions:v10];

  v16 = [(HAP2TLVAddPairingRequest *)v15 serializeWithError:a4];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v19 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      if (a4)
      {
        v22 = *a4;
      }

      else
      {
        v22 = 0;
      }

      v23 = 138412290;
      v24 = v22;
      _os_log_error_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "Couldn't serialize request TLVs: %@", &v23, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)removePairingRequestWithIdentifier:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [[HAP2TLVPairingStateWrapper alloc] initWithValue:1];
  v7 = [[HAP2TLVPairingMethodWrapper alloc] initWithValue:4];
  v8 = [[HAP2TLVRemovePairingRequest alloc] initWithState:v6 method:v7 identifier:v5];

  v9 = [(HAP2TLVRemovePairingRequest *)v8 serializeWithError:a4];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v12 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      if (a4)
      {
        v15 = *a4;
      }

      else
      {
        v15 = 0;
      }

      v16 = 138412290;
      v17 = v15;
      _os_log_error_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "Couldn't serialize request TLVs: %@", &v16, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

@end