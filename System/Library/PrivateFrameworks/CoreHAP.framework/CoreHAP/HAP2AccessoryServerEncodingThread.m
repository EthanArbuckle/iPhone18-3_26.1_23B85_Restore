@interface HAP2AccessoryServerEncodingThread
+ (id)_parseShortFormUUID:(id)a3 error:(id *)a4;
- (HAP2AccessoryServerEncodingThread)initWithEncodingFeatures:(unint64_t)a3 accessoryDescription:(id)a4;
- (HAP2EncodedAttributeDatabaseResponseThread)_attributeDatabaseResponseFromBTLEResponse:(void *)a3 error:;
- (HAP2EncodedCharacteristicRequestThread)_pairingsRequestWithCharacteristic:(uint64_t)a3 bodyValue:(char)a4 threadRequestType:(uint64_t)a5 error:;
- (HAP2EncodedCharacteristicResponse)_prepareWriteResponseFromBTLEResponses:(HAP2EncodedCharacteristicResponse *)a1 error:(void *)a2;
- (HAP2EncodedCharacteristicResponse)_readResponseFromBTLEResponses:(HAP2EncodedCharacteristicResponse *)a1 error:(void *)a2;
- (HAP2EncodedListPairingsResponseThread)_listPairingsResponseFromBTLEResponse:(HAP2EncodedListPairingsResponseThread *)a1 request:(void *)a2 error:(void *)a3;
- (NSString)description;
- (id)_errorIfResponseInvalid:(void *)a1;
- (id)_extractAndValidateControlFieldWithData:(int)a3 expectedType:;
- (id)_extractResponseBodyFromBTLEResponse:(void *)a1 request:(void *)a2 error:(void *)a3;
- (id)_parseCharacteristicMetadata:(id)a3 error:(id *)a4;
- (id)_parseCharacteristicResponsesWithBodyData:(id)a3 request:(id)a4 error:(id *)a5;
- (id)_parseCharacteristics:(id)a3 error:(id *)a4;
- (id)_parseServiceList:(id)a3 error:(id *)a4;
- (id)_parseTopLevelAttributeDatabaseFromData:(id)a3 error:(id *)a4;
- (id)_valueResponseFromBTLEResponse:(void *)a1;
- (id)decodeBodyData:(id)a3 format:(unint64_t)a4 error:(id *)a5;
- (id)encodeBodyValue:(id)a3 format:(unint64_t)a4 error:(id *)a5;
- (id)eventsForData:(id)a3 error:(id *)a4;
- (id)executeWriteRequestForCharacteristics:(id)a3 error:(id *)a4;
- (id)groupingsForReadRequestsForCharacteristics:(id)a3;
- (id)groupingsForWriteRequestsForCharacteristics:(id)a3;
- (id)notificationRequestsForCharacteristics:(id)a3 type:(unint64_t)a4 error:(id *)a5;
- (id)prepareWriteRequestForCharacteristics:(id)a3 ttl:(double)a4 error:(id *)a5;
- (id)readRequestForCharacteristics:(id)a3 shouldEncrypt:(BOOL)a4 error:(id *)a5;
- (id)requestToAddPairing:(id)a3 characteristic:(id)a4 error:(id *)a5;
- (id)requestToListPairingsWithCharacteristic:(id)a3 error:(id *)a4;
- (id)requestToRemovePairing:(id)a3 characteristic:(id)a4 error:(id *)a5;
- (id)responseForRequest:(id)a3 bodyData:(id)a4 error:(id *)a5;
- (id)unpairedIdentifyRequestWithError:(id *)a3;
- (id)writeRequestForCharacteristics:(id)a3 shouldEncrypt:(BOOL)a4 error:(id *)a5;
@end

@implementation HAP2AccessoryServerEncodingThread

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = HAP2AccessoryServerEncodingThread;
  v4 = [(HAP2LoggingObject *)&v9 description];
  v5 = v4;
  if (self)
  {
    accessoryDescription = self->_accessoryDescription;
  }

  else
  {
    accessoryDescription = 0;
  }

  v7 = [v3 stringWithFormat:@"%@ [%@]", v4, accessoryDescription];

  return v7;
}

- (id)_parseTopLevelAttributeDatabaseFromData:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (([(HAP2AccessoryServerEncodingThread *)self encodingFeatures]& 2) != 0)
  {
    v18 = [HAP2TLVAccessorySignatureReadRequest parsedFromData:v6 error:a4];

    goto LABEL_16;
  }

  v7 = [HAP2TLVOldServiceList parsedFromData:v6 error:a4];

  if (v7)
  {
    v8 = [v7 serviceList];
    if (v8)
    {
      v9 = [HAPTLVUnsignedNumberValue alloc];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      v11 = [(HAPTLVNumberValueBase *)v9 initWithValue:v10];

      v12 = [HAP2TLVParamAccessorySignature alloc];
      v13 = [v7 serviceList];
      v14 = [(HAP2TLVParamAccessorySignature *)v12 initWithAccessoryID:v11 serviceList:v13];

      v15 = [HAP2TLVParamAccessoryList alloc];
      v22 = v14;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
      v17 = [(HAP2TLVParamAccessoryList *)v15 initWithAccessorySignatureList:v16];

      v18 = [[HAP2TLVAccessorySignatureReadRequest alloc] initWithAccessoryList:v17];
LABEL_14:

      goto LABEL_15;
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v19 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = self;
      v25 = 2112;
      v26 = v7;
      _os_log_error_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%@ Found no services: %@", buf, 0x16u);
      if (a4)
      {
        goto LABEL_11;
      }
    }

    else if (a4)
    {
LABEL_11:
      [MEMORY[0x277CCA9B8] hapErrorWithCode:7];
      *a4 = v18 = 0;
      goto LABEL_14;
    }

    v18 = 0;
    goto LABEL_14;
  }

  v18 = 0;
LABEL_15:

LABEL_16:
  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_parseServiceList:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v12 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      _os_log_error_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%@ Service list contains no services", &buf, 0xCu);
      if (a4)
      {
        goto LABEL_9;
      }
    }

    else if (a4)
    {
LABEL_9:
      [MEMORY[0x277CCA9B8] hapErrorWithCode:7];
      *a4 = v11 = 0;
      goto LABEL_12;
    }

    v11 = 0;
    goto LABEL_12;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2091;
  v21 = __Block_byref_object_dispose__2092;
  v22 = 0;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__HAP2AccessoryServerEncodingThread__parseServiceList_error___block_invoke;
  v15[3] = &unk_2786D33C0;
  v15[4] = self;
  p_buf = &buf;
  v9 = v8;
  v16 = v9;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];
  v10 = *(*(&buf + 1) + 40);
  if (v10)
  {
    v11 = 0;
    if (a4)
    {
      *a4 = v10;
    }
  }

  else
  {
    v11 = [v9 copy];
  }

  _Block_object_dispose(&buf, 8);
LABEL_12:

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

void __61__HAP2AccessoryServerEncodingThread__parseServiceList_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = objc_opt_class();
  v9 = [v6 serviceType];
  v10 = *(*(a1 + 48) + 8);
  obj = *(v10 + 40);
  v11 = [v8 _parseShortFormUUID:v9 error:&obj];
  objc_storeStrong((v10 + 40), obj);

  if (v11)
  {
    v12 = [v6 instanceID];
    v13 = [v12 value];

    if (!v13)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v31 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v42 = *(a1 + 32);
        *buf = 138412546;
        v50 = v42;
        v51 = 2112;
        v52 = v6;
        _os_log_error_impl(&dword_22AADC000, v31, OS_LOG_TYPE_ERROR, "%@ Service contains no instance id: %@", buf, 0x16u);
      }

      v32 = [MEMORY[0x277CCA9B8] hapErrorWithCode:7];
      v33 = *(*(a1 + 48) + 8);
      v34 = *(v33 + 40);
      *(v33 + 40) = v32;

      *a4 = 1;
      goto LABEL_33;
    }

    v14 = *(a1 + 32);
    v15 = [v6 characteristicList];
    v16 = [v15 characteristicSignatureList];
    v17 = *(*(a1 + 48) + 8);
    v47 = *(v17 + 40);
    v18 = [v14 _parseCharacteristics:v16 error:&v47];
    objc_storeStrong((v17 + 40), v47);

    if (!v18)
    {
      *a4 = 1;
LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    v45 = a4;
    v19 = [v6 properties];
    v20 = [v19 value];

    v21 = [MEMORY[0x277CBEB18] array];
    v22 = [v6 linkedServices];
    v23 = [v22 length];

    if (v23)
    {
      v24 = [v6 linkedServices];
      v25 = *(*(a1 + 48) + 8);
      v46 = *(v25 + 40);
      v26 = _parseLinkedServices(v24, v21, &v46);
      objc_storeStrong((v25 + 40), v46);

      if ((v26 & 1) == 0)
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v35 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          v43 = *(a1 + 32);
          *buf = 138412546;
          v50 = v43;
          v51 = 2112;
          v52 = v6;
          _os_log_error_impl(&dword_22AADC000, v35, OS_LOG_TYPE_ERROR, "%@ Service contained invalid linked services: %@", buf, 0x16u);
        }

        *v45 = 1;
        goto LABEL_31;
      }

      [v21 removeObject:v13];
    }

    v27 = [HAPService alloc];
    v28 = [v21 copy];
    v29 = [(HAPService *)v27 initWithType:v11 instanceID:v13 parsedCharacteristics:v18 serviceProperties:v20 & 7 linkedServices:v28];

    if (v29)
    {
      [*(a1 + 40) addObject:v29];
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v36 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v44 = *(a1 + 32);
        *buf = 138412546;
        v50 = v44;
        v51 = 2112;
        v52 = v6;
        _os_log_error_impl(&dword_22AADC000, v36, OS_LOG_TYPE_ERROR, "%@ Unable to parse service: %@", buf, 0x16u);
      }

      v37 = [MEMORY[0x277CCA9B8] hapErrorWithCode:7];
      v38 = *(*(a1 + 48) + 8);
      v39 = *(v38 + 40);
      *(v38 + 40) = v37;

      *v45 = 1;
    }

LABEL_31:
    goto LABEL_32;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v30 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    v41 = *(a1 + 32);
    *buf = 138412546;
    v50 = v41;
    v51 = 2112;
    v52 = v6;
    _os_log_error_impl(&dword_22AADC000, v30, OS_LOG_TYPE_ERROR, "%@ Service contains invalid or no type: %@", buf, 0x16u);
  }

  *a4 = 1;
LABEL_34:

  v40 = *MEMORY[0x277D85DE8];
}

- (id)_parseCharacteristics:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v12 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      _os_log_error_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%@ Characteristic list contains no characteristics", &buf, 0xCu);
      if (a4)
      {
        goto LABEL_9;
      }
    }

    else if (a4)
    {
LABEL_9:
      [MEMORY[0x277CCA9B8] hapErrorWithCode:7];
      *a4 = v11 = 0;
      goto LABEL_12;
    }

    v11 = 0;
    goto LABEL_12;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2091;
  v21 = __Block_byref_object_dispose__2092;
  v22 = 0;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HAP2AccessoryServerEncodingThread__parseCharacteristics_error___block_invoke;
  v15[3] = &unk_2786D3398;
  v15[4] = self;
  p_buf = &buf;
  v9 = v8;
  v16 = v9;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];
  v10 = *(*(&buf + 1) + 40);
  if (v10)
  {
    v11 = 0;
    if (a4)
    {
      *a4 = v10;
    }
  }

  else
  {
    v11 = [v9 copy];
  }

  _Block_object_dispose(&buf, 8);
LABEL_12:

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

void __65__HAP2AccessoryServerEncodingThread__parseCharacteristics_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = objc_opt_class();
  v9 = [v6 characteristicType];
  v10 = *(*(a1 + 48) + 8);
  obj = *(v10 + 40);
  v11 = [v8 _parseShortFormUUID:v9 error:&obj];
  objc_storeStrong((v10 + 40), obj);

  if (v11)
  {
    v12 = [v6 instanceID];
    v13 = [v12 value];

    if (v13)
    {
      v14 = [v6 characteristicProperties];

      if (v14)
      {
        v15 = [v6 characteristicProperties];
        v16 = [v15 value];

        v17 = *(a1 + 32);
        v50 = 0;
        v18 = [v17 _parseCharacteristicMetadata:v6 error:&v50];
        v19 = v50;
        if (v18)
        {
          if ((~v16 & 0x180) != 0)
          {
            v20 = v16 & 0x40 | (16 * ((v16 >> 2) & 3));
          }

          else
          {
            v20 = (v16 & 0x40 | (16 * ((v16 >> 2) & 3))) + 1;
          }

          v21 = v20 | (v16 >> 6) & 8 | (v16 >> 2) & 0x100;
          v22 = 2 * (v16 & 1);
          if ((v16 & 2) != 0)
          {
            v22 = (2 * (v16 & 1)) | 0x84;
          }

          v23 = v22 | (v16 >> 3) & 2;
          if ((v16 & 0x20) != 0)
          {
            LOWORD(v23) = v23 | 0x84;
          }

          LOBYTE(v49) = 1;
          v24 = [[HAPCharacteristic alloc] initWithType:v11 instanceID:v13 value:0 stateNumber:0 properties:(v21 | v23) eventNotificationsEnabled:0 implicitWriteWithResponse:v49 metadata:v18];
          if (v24)
          {
            v25 = [MEMORY[0x277CBEAA8] distantPast];
            [(HAPCharacteristic *)v24 setValueUpdatedTime:v25];

            [*(a1 + 40) addObject:v24];
          }

          else
          {
            if (hap2LogInitialize_onceToken != -1)
            {
              dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
            }

            v40 = hap2Log_accessory;
            if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
            {
              v48 = *(a1 + 32);
              *buf = 138412546;
              v53 = v48;
              v54 = 2112;
              v55 = v6;
              _os_log_error_impl(&dword_22AADC000, v40, OS_LOG_TYPE_ERROR, "%@ Unable to parse characteristic: %@", buf, 0x16u);
            }

            v41 = [MEMORY[0x277CCA9B8] hapErrorWithCode:7];
            v42 = *(*(a1 + 48) + 8);
            v43 = *(v42 + 40);
            *(v42 + 40) = v41;

            *a4 = 1;
          }
        }

        else
        {
          if (hap2LogInitialize_onceToken != -1)
          {
            dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
          }

          v36 = hap2Log_accessory;
          if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
          {
            v47 = *(a1 + 32);
            *buf = 138412546;
            v53 = v47;
            v54 = 2112;
            v55 = v6;
            _os_log_error_impl(&dword_22AADC000, v36, OS_LOG_TYPE_ERROR, "%@ Characteristic contains invalid metadata: %@", buf, 0x16u);
          }

          v37 = [MEMORY[0x277CCA9B8] hapErrorWithCode:7];
          v38 = *(*(a1 + 48) + 8);
          v39 = *(v38 + 40);
          *(v38 + 40) = v37;

          *a4 = 1;
        }

        goto LABEL_39;
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v30 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        v33 = [MEMORY[0x277CCA9B8] hapErrorWithCode:7];
        v34 = *(*(a1 + 48) + 8);
        v35 = *(v34 + 40);
        *(v34 + 40) = v33;

        *a4 = 1;
LABEL_39:

        goto LABEL_40;
      }

      v46 = *(a1 + 32);
      *buf = 138412546;
      v53 = v46;
      v54 = 2112;
      v55 = v6;
      v32 = "%@ Characteristic contains no properties: %@";
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v30 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v31 = *(a1 + 32);
      *buf = 138412546;
      v53 = v31;
      v54 = 2112;
      v55 = v6;
      v32 = "%@ Characteristic contains no instance id: %@";
    }

    _os_log_error_impl(&dword_22AADC000, v30, OS_LOG_TYPE_ERROR, v32, buf, 0x16u);
    goto LABEL_26;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v26 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    v45 = *(a1 + 32);
    *buf = 138412546;
    v53 = v45;
    v54 = 2112;
    v55 = v6;
    _os_log_error_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "%@ Characteristic contains invalid or no type: %@", buf, 0x16u);
  }

  v27 = [MEMORY[0x277CCA9B8] hapErrorWithCode:7];
  v28 = *(*(a1 + 48) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v27;

  *a4 = 1;
LABEL_40:

  v44 = *MEMORY[0x277D85DE8];
}

- (id)_parseCharacteristicMetadata:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 userDescription];
  v8 = [v6 bluetoothFormat];

  if (!v8)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v32 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v43 = self;
      v44 = 2112;
      v45 = v6;
      _os_log_error_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "%@ Characteristic contains no format: %@", buf, 0x16u);
      if (a4)
      {
        goto LABEL_22;
      }
    }

    else if (a4)
    {
LABEL_22:
      [MEMORY[0x277CCA9B8] hapErrorWithCode:7];
      *a4 = v11 = 0;
      goto LABEL_46;
    }

    v11 = 0;
    goto LABEL_46;
  }

  v40 = 0;
  v41 = 0;
  v9 = [v6 bluetoothFormat];
  v10 = _parseBTLEPresentationFormat(v9, &v40, a4);

  v11 = 0;
  if (v10)
  {
    v39 = 0;
    v11 = 0;
    if (_parseHAPCharacteristicFormat(v40, &v39, a4))
    {
      v38 = 0;
      v12 = _parseHAPCharacteristicUnit(v40, &v41, &v38);
      v13 = v38;
      if ((v12 & 1) == 0)
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v14 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v43 = self;
          v44 = 2112;
          v45 = v6;
          v46 = 2112;
          v47 = v13;
          _os_log_error_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%@ Characteristic %@ unit failed to parse with error: %@", buf, 0x20u);
        }

        v41 = 0;
      }

      v15 = objc_alloc_init(HAPMetadataConstraints);
      v16 = [v6 validRange];
      if (v16 && (v17 = v16, [v6 validRange], v18 = objc_claimAutoreleasedReturnValue(), v19 = _parseCharacteristicValidRange(v18, v39, v15, a4), v18, v17, !v19))
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v33 = hap2Log_accessory;
        if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }
      }

      else
      {
        v20 = [v6 stepValue];
        if (!v20 || (v21 = v20, [v6 stepValue], v22 = objc_claimAutoreleasedReturnValue(), v23 = _parseCharacteristicStepValue(v22, v39, v15, a4), v22, v21, v23))
        {
          v24 = [v6 validValuesRange];
          if (!v24 || (v25 = v24, [v6 validValuesRange], v26 = objc_claimAutoreleasedReturnValue(), valid = _parseCharacteristicValidValues(v26, v39, v15, a4), v26, v25, valid))
          {
            v28 = [HAPCharacteristicMetadata alloc];
            v29 = HAPCharacteristicFormatToString(v39);
            v30 = HAPCharacteristicUnitToString(v41);
            v11 = [(HAPCharacteristicMetadata *)v28 initWithConstraints:v15 description:v7 format:v29 units:v30];

            if (v11)
            {
              v31 = v11;
LABEL_44:

              goto LABEL_45;
            }

            if (hap2LogInitialize_onceToken != -1)
            {
              dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
            }

            v35 = hap2Log_accessory;
            if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v43 = self;
              v44 = 2112;
              v45 = v6;
              _os_log_error_impl(&dword_22AADC000, v35, OS_LOG_TYPE_ERROR, "%@ Characteristic %@ metadata failed to parse", buf, 0x16u);
              if (!a4)
              {
                goto LABEL_44;
              }
            }

            else if (!a4)
            {
              goto LABEL_44;
            }

            *a4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
            goto LABEL_44;
          }

          if (hap2LogInitialize_onceToken != -1)
          {
            dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
          }

          v33 = hap2Log_accessory;
          if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
          {
LABEL_36:
            v11 = 0;
LABEL_45:

            goto LABEL_46;
          }

          *buf = 138412546;
          v43 = self;
          v44 = 2112;
          v45 = v6;
          v34 = "%@ Characteristic %@ valid values range failed to parse";
LABEL_35:
          _os_log_error_impl(&dword_22AADC000, v33, OS_LOG_TYPE_ERROR, v34, buf, 0x16u);
          goto LABEL_36;
        }

        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v33 = hap2Log_accessory;
        if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }
      }

      *buf = 138412546;
      v43 = self;
      v44 = 2112;
      v45 = v6;
      v34 = "%@ Characteristic %@ valid range failed to parse";
      goto LABEL_35;
    }
  }

LABEL_46:

  v36 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)eventsForData:(id)a3 error:(id *)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = 0;
  p_info = &OBJC_METACLASS___HAP2EncodedEnableNotificationResponse.info;
  *&v8 = 138412802;
  v38 = v8;
  v42 = v4;
  while (1)
  {
    if ([v4 length] <= v6)
    {
      v26 = v5;
      goto LABEL_50;
    }

    v9 = [v4 subdataWithRange:{v6, objc_msgSend(v4, "length") - v6}];
    v10 = [(HAP2AccessoryServerEncodingThread *)self _extractAndValidateControlFieldWithData:v9 expectedType:2];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    if ([v10 length] <= 3)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v34 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v50 = self;
        v51 = 2112;
        v52 = v11;
        _os_log_error_impl(&dword_22AADC000, v34, OS_LOG_TYPE_ERROR, "%@ Invalid event, not enough data for header: %@", buf, 0x16u);
      }

      v32 = a4;
      if (a4)
      {
        v33 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12];
        goto LABEL_47;
      }

      goto LABEL_49;
    }

    v46 = [v11 subdataWithRange:{0, 2}];
    v12 = *[v46 bytes];
    v13 = [v11 subdataWithRange:{2, 2}];
    v14 = *[v13 bytes];
    v15 = 0;
    if ([v11 length] >= (v14 + 4))
    {
      v15 = [v11 subdataWithRange:{4, v14}];
    }

    if (![v15 length])
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v21 = v46;
      v25 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v50 = self;
        v51 = 2112;
        v52 = v11;
        _os_log_error_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "%@ Invalid event, no data: %@", buf, 0x16u);
      }

      if (a4)
      {
        [MEMORY[0x277CCA9B8] hapErrorWithCode:12];
        v23 = 0;
        *a4 = v26 = 0;
      }

      else
      {
        v23 = 0;
        v26 = 0;
      }

      p_info = (&OBJC_METACLASS___HAP2EncodedEnableNotificationResponse + 32);
      goto LABEL_36;
    }

    v45 = v6;
    v48 = 0;
    v16 = [p_info + 496 extractSerializedRequestValueFromBodyData:v15 error:&v48];
    v17 = v48;
    v18 = v17;
    v44 = v16;
    if (!v16)
    {
      if (a4)
      {
        v27 = v17;
        v23 = 0;
        *a4 = v18;
      }

      else
      {
        v23 = 0;
      }

      v31 = v5;
      v5 = 0;
      v21 = v46;
      goto LABEL_35;
    }

    v47 = 0;
    v19 = [p_info + 496 extractNotificationContextFromBodyData:v15 error:&v47];
    v20 = v47;
    v18 = v20;
    v40 = v19;
    if (!v19 && v20)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v21 = v46;
      v22 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = v38;
        v50 = self;
        v51 = 2112;
        v52 = v15;
        v53 = 2112;
        v54 = v18;
        _os_log_error_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%@ Failed to extract notification context from data: %@ with error: %@", buf, 0x20u);
      }

      v23 = 0;
      v24 = v5;
LABEL_33:
      v5 = 0;
      goto LABEL_34;
    }

    v39 = v9;
    v28 = v19;
    v29 = [HAP2EncodedCharacteristicEvent alloc];
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v12];
    v24 = [(HAP2EncodedCharacteristicEvent *)v29 initWithInstanceID:v30 encodedValueData:v44 encodedContextData:v28];

    if (!v24)
    {
      v9 = v39;
      v21 = v46;
      if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      }

      v24 = 0;
      v23 = 0;
      goto LABEL_33;
    }

    [(HAP2EncodedCharacteristicEvent *)v5 addObject:v24];
    v45 += v14 + 5;
    v23 = 1;
    v9 = v39;
    v21 = v46;
LABEL_34:

    p_info = (&OBJC_METACLASS___HAP2EncodedEnableNotificationResponse + 32);
    v31 = v40;
LABEL_35:
    v26 = v5;

    v5 = v18;
    v6 = v45;
LABEL_36:

    v5 = v26;
    v4 = v42;
    if ((v23 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  v32 = a4;
  if (a4)
  {
    v33 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 marker:213];
    v11 = 0;
LABEL_47:
    *v32 = v33;
    goto LABEL_49;
  }

  v11 = 0;
LABEL_49:

  v26 = 0;
LABEL_50:
  v35 = [(HAP2EncodedCharacteristicEvent *)v26 copy];

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)_extractAndValidateControlFieldWithData:(int)a3 expectedType:
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v11 = 0;
    if (v5 && [v5 length])
    {
      [v6 getBytes:&v11 length:1];
      v7 = (v11 >> 1) & 7;
      if (v7 > 2)
      {
        v7 = 255;
      }

      if (v7 == a3)
      {
        a1 = [v6 subdataWithRange:{1, objc_msgSend(v6, "length") - 1}];
        goto LABEL_13;
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v8 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = a1;
        v14 = 1024;
        v15 = v11;
        _os_log_error_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%@ Invalid response, control field (%02x) is not a response", buf, 0x12u);
      }
    }

    a1 = 0;
  }

LABEL_13:

  v9 = *MEMORY[0x277D85DE8];

  return a1;
}

- (id)requestToListPairingsWithCharacteristic:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v14 = 0;
  v7 = [HAPPairingUtilities createListPairingsRequest:&v14];
  v8 = v14;
  if (v7)
  {
    v9 = [(HAP2AccessoryServerEncodingThread *)self _pairingsRequestWithCharacteristic:v6 bodyValue:v7 threadRequestType:14 error:a4];
    goto LABEL_10;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v10 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v8;
    _os_log_error_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%@ Couldn't serialize list pairing request: %@", buf, 0x16u);
    if (a4)
    {
      goto LABEL_7;
    }
  }

  else if (a4)
  {
LABEL_7:
    v11 = v8;
    v9 = 0;
    *a4 = v8;
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HAP2EncodedCharacteristicRequestThread)_pairingsRequestWithCharacteristic:(uint64_t)a3 bodyValue:(char)a4 threadRequestType:(uint64_t)a5 error:
{
  v5 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v6 = *&asc_22AC9DB68[8 * (a4 - 10)];
    v7 = [HAP2AccessoryServerEncodingThreadBTLERequest writeRequestForCharacteristic:a2 value:a3 authorizationData:0 contextData:0 options:3 error:a5];
    if (v7)
    {
      v8 = [HAP2EncodedCharacteristicRequestThread alloc];
      v12[0] = v7;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      v5 = [(HAP2EncodedCharacteristicRequestThread *)v8 initWithBTLERequests:v9 requestType:v6 enforcePDUBodyLength:([(HAP2EncodedCharacteristicRequestThread *)v5 encodingFeatures]>> 5) & 1];
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)requestToAddPairing:(id)a3 characteristic:(id)a4 error:(id *)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v16 = 0;
  v9 = [HAP2EncodingUtils addPairingRequestWithIdentity:a3 error:&v16];
  v10 = v16;
  if (v9)
  {
    v11 = [(HAP2AccessoryServerEncodingThread *)self _pairingsRequestWithCharacteristic:v8 bodyValue:v9 threadRequestType:13 error:a5];
    goto LABEL_10;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v12 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v18 = self;
    v19 = 2112;
    v20 = v10;
    _os_log_error_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%@ Couldn't serialize remove request TLVs: %@", buf, 0x16u);
    if (a5)
    {
      goto LABEL_7;
    }
  }

  else if (a5)
  {
LABEL_7:
    v13 = v10;
    v11 = 0;
    *a5 = v10;
    goto LABEL_10;
  }

  v11 = 0;
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)requestToRemovePairing:(id)a3 characteristic:(id)a4 error:(id *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [a3 identifier];
  v17 = 0;
  v10 = [HAP2EncodingUtils removePairingRequestWithIdentifier:v9 error:&v17];
  v11 = v17;

  if (v10)
  {
    v12 = [(HAP2AccessoryServerEncodingThread *)self _pairingsRequestWithCharacteristic:v8 bodyValue:v10 threadRequestType:10 error:a5];
    goto LABEL_10;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v13 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v19 = self;
    v20 = 2112;
    v21 = v11;
    _os_log_error_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%@ Couldn't serialize remove request TLVs: %@", buf, 0x16u);
    if (a5)
    {
      goto LABEL_7;
    }
  }

  else if (a5)
  {
LABEL_7:
    v14 = v11;
    v12 = 0;
    *a5 = v11;
    goto LABEL_10;
  }

  v12 = 0;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)unpairedIdentifyRequestWithError:(id *)a3
{
  v3 = [[HAP2EncodedEmptyRequestThread alloc] initWithRequestType:12];

  return v3;
}

- (id)responseForRequest:(id)a3 bodyData:(id)a4 error:(id *)a5
{
  v89 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 type] == 12)
  {
    self = objc_alloc_init(HAP2EncodedEmptyResponseThread);
    goto LABEL_80;
  }

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    if (v11)
    {
      v12 = [(HAP2AccessoryServerEncodingThread *)self _parseCharacteristicResponsesWithBodyData:v9 request:v11 error:a5];
      if (!v12)
      {
        goto LABEL_78;
      }

      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v13 btleRequest];
    v15 = [[HAPBTLEResponse alloc] initWithRequest:v14];
    v74 = v8;
    if (self)
    {
      v16 = v9;
      v17 = [(HAP2AccessoryServerEncodingThread *)self _extractAndValidateControlFieldWithData:v9 expectedType:1];
      if (v17)
      {
        *buf = 0;
        v18 = [(HAPBTLEResponse *)v15 appendData:v17 error:buf];
        v19 = [v17 subdataWithRange:{v18, objc_msgSend(v17, "length") - v18}];
        v20 = 0;
      }

      else
      {
        v20 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
        v21 = v20;
        v19 = 0;
      }
    }

    else
    {
      v16 = v9;
      v20 = 0;
      v19 = 0;
    }

    v22 = v20;
    v23 = v22;
    if (v19)
    {
      if (![v19 length])
      {
        v81 = v15;
        v26 = 1;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
        goto LABEL_33;
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v24 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v28 = v24;
        v29 = [(HAPBTLEResponse *)v15 bodyLength];
        v30 = [v16 length];
        *buf = 138413058;
        *&buf[4] = self;
        v83 = 2048;
        v84 = v29;
        v85 = 2048;
        v86 = v30 - 1;
        v87 = 2112;
        v88 = v23;
        _os_log_error_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%@ Failed to parse response (read %lu bytes, expected %lu): %@", buf, 0x2Au);

        if (a5)
        {
          goto LABEL_27;
        }
      }

      else if (a5)
      {
LABEL_27:
        [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
        v25 = 0;
        *a5 = v26 = 0;
LABEL_33:

        if (!v26)
        {
          self = 0;
          v11 = 0;
          v8 = v74;
          v9 = v16;
          v12 = v25;
          goto LABEL_79;
        }

        v11 = 0;
        v8 = v74;
        v9 = v16;
        v12 = v25;
LABEL_35:
        v31 = [v8 type];
        if (v31 <= 8)
        {
          if (v31 <= 2)
          {
            if (v31)
            {
              if (v31 != 1)
              {
                if (v31 == 2)
                {
                  v32 = [HAP2AccessoryServerEncodingThread _readResponseFromBTLEResponses:v12 error:?];
LABEL_97:
                  self = v32;
                  goto LABEL_79;
                }

                goto LABEL_76;
              }

LABEL_61:
              v41 = v12;
              v72 = v41;
              if (self)
              {
                v42 = v41;
                v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v41, "count")}];
                v77 = 0u;
                v78 = 0u;
                v79 = 0u;
                v80 = 0u;
                v44 = v42;
                v45 = [v44 countByEnumeratingWithState:&v77 objects:buf count:16];
                if (v45)
                {
                  v46 = v45;
                  v47 = *v78;
                  do
                  {
                    for (i = 0; i != v46; ++i)
                    {
                      if (*v78 != v47)
                      {
                        objc_enumerationMutation(v44);
                      }

                      v49 = [(HAP2AccessoryServerEncodingThread *)self _valueResponseFromBTLEResponse:?];
                      [v43 addObject:v49];
                    }

                    v46 = [v44 countByEnumeratingWithState:&v77 objects:buf count:16];
                  }

                  while (v46);
                }

                v50 = [HAP2EncodedCharacteristicResponse alloc];
                v51 = [v43 copy];
                self = [(HAP2EncodedCharacteristicResponse *)v50 initWithCharacteristics:v51];
              }

              v12 = v72;

              goto LABEL_79;
            }

LABEL_48:
            if (a5)
            {
              v34 = MEMORY[0x277CCA9B8];
              v35 = 9;
LABEL_50:
              [v34 hapErrorWithCode:v35];
              *a5 = self = 0;
              goto LABEL_79;
            }

LABEL_78:
            self = 0;
            goto LABEL_79;
          }

          if ((v31 - 5) < 4)
          {
            goto LABEL_48;
          }

          if (v31 == 3)
          {
            v32 = [HAP2AccessoryServerEncodingThread _prepareWriteResponseFromBTLEResponses:v12 error:?];
            goto LABEL_97;
          }

          if (v31 == 4)
          {
            goto LABEL_61;
          }

LABEL_76:
          if (a5)
          {
            v34 = MEMORY[0x277CCA9B8];
            v35 = 1;
            goto LABEL_50;
          }

          goto LABEL_78;
        }

        if (v31 <= 11)
        {
          if ((v31 - 10) < 2)
          {
            v36 = v12;
            v73 = v11;
            v75 = v8;
            v70 = v9;
            v71 = v36;
            if (self)
            {
              v37 = v36;
              v76 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v36, "count")}];
              if (([(HAP2AccessoryServerEncodingThread *)self encodingFeatures]& 4) != 0)
              {
                v38 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v37, "count") >> 1}];
              }

              else
              {
                v38 = 0;
              }

              v79 = 0u;
              v80 = 0u;
              v77 = 0u;
              v78 = 0u;
              v55 = v37;
              v56 = [v55 countByEnumeratingWithState:&v77 objects:buf count:16];
              if (v56)
              {
                v57 = v56;
                v58 = *v78;
                do
                {
                  for (j = 0; j != v57; ++j)
                  {
                    if (*v78 != v58)
                    {
                      objc_enumerationMutation(v55);
                    }

                    v60 = *(*(&v77 + 1) + 8 * j);
                    v61 = [v60 request];
                    v62 = [v61 type];

                    if (v62 == 3)
                    {
                      v63 = [(HAP2AccessoryServerEncodingThread *)self _valueResponseFromBTLEResponse:v60];
                      [v38 addObject:v63];
                    }

                    else
                    {
                      v63 = [(HAP2AccessoryServerEncodingThread *)self _errorIfResponseInvalid:v60];
                      v64 = [v60 request];
                      v65 = [v64 characteristic];
                      v66 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v65 error:v63];

                      [v76 addObject:v66];
                    }
                  }

                  v57 = [v55 countByEnumeratingWithState:&v77 objects:buf count:16];
                }

                while (v57);
              }

              v67 = [HAP2EncodedEnableNotificationResponse alloc];
              v68 = [v76 copy];
              v69 = [v38 copy];
              self = [(HAP2EncodedEnableNotificationResponse *)v67 initWithNotificationResponses:v68 updatedValues:v69];
            }

            v12 = v71;

            v11 = v73;
            v8 = v75;
            v9 = v70;
            goto LABEL_79;
          }

          if (v31 == 9)
          {
            v52 = [v12 objectAtIndexedSubscript:0];
            self = [(HAP2AccessoryServerEncodingThread *)self _attributeDatabaseResponseFromBTLEResponse:v52 error:a5];

            goto LABEL_79;
          }

          goto LABEL_76;
        }

        if ((v31 - 13) < 2)
        {
          v39 = [v12 objectAtIndexedSubscript:0];
          if (self)
          {
            v40 = [HAP2AccessoryServerEncodingThread _extractResponseBodyFromBTLEResponse:v39 request:a5 error:?];
            if (v40 && [HAP2EncodingUtils parseAddOrRemovePairingRequestResponse:v40 error:a5])
            {
              self = [[HAP2EncodedResponseThread alloc] initWithBTLEResponse:v39];
            }

            else
            {
              self = 0;
            }
          }

          goto LABEL_79;
        }

        if (v31 == 12)
        {
          goto LABEL_48;
        }

        if (v31 != 15)
        {
          goto LABEL_76;
        }

        v33 = [v12 objectAtIndexedSubscript:0];
        self = [HAP2AccessoryServerEncodingThread _listPairingsResponseFromBTLEResponse:v33 request:a5 error:?];

LABEL_79:
        goto LABEL_80;
      }
    }

    else if (a5)
    {
      v27 = v22;
      v25 = 0;
      v26 = 0;
      *a5 = v23;
      goto LABEL_33;
    }

    v25 = 0;
    v26 = 0;
    goto LABEL_33;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
    *a5 = self = 0;
  }

  else
  {
    self = 0;
  }

LABEL_80:

  v53 = *MEMORY[0x277D85DE8];

  return self;
}

- (HAP2EncodedCharacteristicResponse)_readResponseFromBTLEResponses:(HAP2EncodedCharacteristicResponse *)a1 error:(void *)a2
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(HAP2AccessoryServerEncodingThread *)a1 _valueResponseFromBTLEResponse:?];
          [v5 addObject:{v11, v16}];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = [HAP2EncodedCharacteristicResponse alloc];
    v13 = [v5 copy];
    a1 = [(HAP2EncodedCharacteristicResponse *)v12 initWithCharacteristics:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return a1;
}

- (HAP2EncodedCharacteristicResponse)_prepareWriteResponseFromBTLEResponses:(HAP2EncodedCharacteristicResponse *)a1 error:(void *)a2
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = v3;
  if (a1)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count", v3)}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [v10 request];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v10 request];
          }

          else
          {
            v12 = 0;
          }

          v13 = v10;
          v14 = [v13 request];
          v15 = [v14 characteristic];

          v16 = [(HAP2AccessoryServerEncodingThread *)a1 _errorIfResponseInvalid:v13];

          if (v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }

          v18 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v15 error:v17];

          [v5 addObject:v18];
        }

        v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v7);
    }

    v19 = [HAP2EncodedCharacteristicResponse alloc];
    v20 = [v5 copy];
    a1 = [(HAP2EncodedCharacteristicResponse *)v19 initWithCharacteristics:v20];
  }

  v21 = *MEMORY[0x277D85DE8];

  return a1;
}

- (HAP2EncodedAttributeDatabaseResponseThread)_attributeDatabaseResponseFromBTLEResponse:(void *)a3 error:
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__2091;
    v33 = __Block_byref_object_dispose__2092;
    v34 = 0;
    v7 = [v5 body];
    v8 = (v30 + 5);
    obj = v30[5];
    v9 = [(HAP2EncodedAttributeDatabaseResponseThread *)a1 _parseTopLevelAttributeDatabaseFromData:v7 error:&obj];
    objc_storeStrong(v8, obj);

    if (v9)
    {
      v10 = [v9 accessoryList];
      if (v10)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v40 = __Block_byref_object_copy__2091;
        v41 = __Block_byref_object_dispose__2092;
        v11 = objc_alloc(MEMORY[0x277CBEB38]);
        v12 = [v10 accessorySignatureList];
        v42 = [v11 initWithCapacity:{objc_msgSend(v12, "count")}];

        v13 = [v10 accessorySignatureList];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __86__HAP2AccessoryServerEncodingThread__attributeDatabaseResponseFromBTLEResponse_error___block_invoke;
        v27[3] = &unk_2786D3438;
        v27[4] = a1;
        v27[5] = &v29;
        v27[6] = buf;
        [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v27];

        v14 = *(*&buf[8] + 40);
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
        v16 = [v14 objectForKey:v15];
        LODWORD(v14) = v16 == 0;

        if (v14)
        {
          if (hap2LogInitialize_onceToken != -1)
          {
            dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
          }

          v17 = hap2Log_accessory;
          if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
          {
            *v35 = 138412546;
            v36 = a1;
            v37 = 2112;
            v38 = v10;
            _os_log_error_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%@ Attribute database response doesn't contain primary accessory: %@", v35, 0x16u);
          }

          v18 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
          v19 = v30[5];
          v30[5] = v18;
        }

        v20 = v30[5];
        if (v20)
        {
          a1 = 0;
          if (a3)
          {
            *a3 = v20;
          }
        }

        else
        {
          v23 = [HAP2EncodedAttributeDatabaseResponseThread alloc];
          a1 = [(HAP2EncodedAttributeDatabaseResponseThread *)v23 initWithBTLEResponse:v6 attributeDatabase:*(*&buf[8] + 40)];
        }

        _Block_object_dispose(buf, 8);

        goto LABEL_25;
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v22 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = a1;
        *&buf[12] = 2112;
        *&buf[14] = v9;
        _os_log_error_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%@ Attribute database contains no accessory list: %@", buf, 0x16u);
        if (a3)
        {
          goto LABEL_22;
        }
      }

      else if (a3)
      {
LABEL_22:
        [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
        *a3 = a1 = 0;
LABEL_25:

        goto LABEL_26;
      }

      a1 = 0;
      goto LABEL_25;
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v21 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v26 = v30[5];
      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = v26;
      _os_log_error_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%@ Failed to parse attribute database: %@", buf, 0x16u);
      if (a3)
      {
        goto LABEL_17;
      }
    }

    else if (a3)
    {
LABEL_17:
      [MEMORY[0x277CCA9B8] hapErrorWithCode:7 description:@"Invalid Response." reason:@"Failed to parse attribute database." suggestion:0 underlyingError:v30[5]];
      *a3 = a1 = 0;
LABEL_26:

      _Block_object_dispose(&v29, 8);
      goto LABEL_27;
    }

    a1 = 0;
    goto LABEL_26;
  }

LABEL_27:

  v24 = *MEMORY[0x277D85DE8];

  return a1;
}

- (HAP2EncodedListPairingsResponseThread)_listPairingsResponseFromBTLEResponse:(HAP2EncodedListPairingsResponseThread *)a1 request:(void *)a2 error:(void *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v6 = [HAP2AccessoryServerEncodingThread _extractResponseBodyFromBTLEResponse:a1 request:v5 error:a3];
    if (!v6)
    {
      if (a3)
      {
        [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
        *a3 = a1 = 0;
      }

      else
      {
        a1 = 0;
      }

      goto LABEL_16;
    }

    v13 = 0;
    v7 = [HAPPairingUtilities parseListPairingsResponse:v6 error:&v13];
    v8 = v13;
    if (v7)
    {
      a1 = [[HAP2EncodedListPairingsResponseThread alloc] initWithBTLEResponse:v5 pairings:v7];
LABEL_15:

LABEL_16:
      goto LABEL_17;
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v9 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = a1;
      v16 = 2112;
      v17 = v8;
      _os_log_error_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%@ Unable to parse list pairings response: %@", buf, 0x16u);
      if (a3)
      {
        goto LABEL_11;
      }
    }

    else if (a3)
    {
LABEL_11:
      v10 = v8;
      a1 = 0;
      *a3 = v8;
      goto LABEL_15;
    }

    a1 = 0;
    goto LABEL_15;
  }

LABEL_17:

  v11 = *MEMORY[0x277D85DE8];

  return a1;
}

- (id)_extractResponseBodyFromBTLEResponse:(void *)a1 request:(void *)a2 error:(void *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [(HAP2AccessoryServerEncodingThread *)a1 _valueResponseFromBTLEResponse:v5];
  v7 = [v6 error];

  if (!v7)
  {
    v10 = [v5 request];
    v11 = [v10 characteristic];

    v12 = [v11 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v11 value];
    }

    else
    {
      v9 = 0;
    }

    [v11 setValue:0];
    if (v9)
    {
      v13 = v9;
LABEL_17:

      goto LABEL_20;
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v14 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      v20 = a1;
      _os_log_error_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%@ Invalid type for HAP2 request", &v19, 0xCu);
      if (!a3)
      {
        goto LABEL_17;
      }
    }

    else if (!a3)
    {
      goto LABEL_17;
    }

    *a3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
    goto LABEL_17;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v8 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    v15 = v8;
    v16 = [v6 error];
    v19 = 138412546;
    v20 = a1;
    v21 = 2112;
    v22 = v16;
    _os_log_error_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%@ Unable to parse pairing response: %@", &v19, 0x16u);

    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
LABEL_6:
    [v6 error];
    *a3 = v9 = 0;
    goto LABEL_20;
  }

  v9 = 0;
LABEL_20:

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_valueResponseFromBTLEResponse:(void *)a1
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 request];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 request];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 request];
  v7 = [v6 characteristic];

  v8 = [(HAP2AccessoryServerEncodingThread *)a1 _errorIfResponseInvalid:v3];
  if (v8)
  {
    [v7 setValue:0];
    [v7 setNotificationContext:0];
    v9 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v7 error:v8];
    goto LABEL_35;
  }

  v10 = [v3 body];

  v11 = [v5 type];
  if (!v10)
  {
    if (v11 == 3)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v23 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v34 = v23;
        v35 = [v7 type];
        v36 = [HAPCharacteristic hap2_shortTypeFromUUID:v35];
        v37 = [v7 instanceID];
        *buf = 138412802;
        v53 = a1;
        v54 = 2112;
        v55 = v36;
        v56 = 2112;
        v57 = v37;
        _os_log_error_impl(&dword_22AADC000, v34, OS_LOG_TYPE_ERROR, "%@ Read response for %@ [%@] does not contain a value", buf, 0x20u);
      }

      [v7 setValue:0];
      [v7 setNotificationContext:0];
      v13 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12];
      v9 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v7 error:v13];
      goto LABEL_34;
    }

    goto LABEL_23;
  }

  if (v11 != 3 && ([v5 writeOptions] & 2) == 0)
  {
LABEL_23:
    v13 = [v5 requestedValue];

    if (v13)
    {
      v24 = [v5 requestedValue];
      [v7 setValue:v24];

      [v7 setNotificationContext:0];
      v13 = 0;
    }

    v21 = 0;
    goto LABEL_26;
  }

  v12 = [v3 body];
  v51 = 0;
  v13 = [_HAPAccessoryServerBTLE200 extractSerializedRequestValueFromBodyData:v12 error:&v51];
  v14 = v51;

  if (!v13)
  {
    [v7 setValue:0];
    [v7 setNotificationContext:0];
    v9 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v7 error:v14];
    v13 = v14;
    goto LABEL_34;
  }

  v15 = [v5 characteristic];
  v16 = [v15 metadata];
  v17 = [v16 format];
  v18 = HAPCharacteristicFormatFromString(v17);

  if (!v18)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v25 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v40 = v25;
      v41 = [v7 type];
      v42 = [HAPCharacteristic hap2_shortTypeFromUUID:v41];
      v43 = [v7 instanceID];
      *buf = 138412802;
      v53 = a1;
      v54 = 2112;
      v55 = v42;
      v56 = 2112;
      v57 = v43;
      _os_log_error_impl(&dword_22AADC000, v40, OS_LOG_TYPE_ERROR, "%@ No format for characteristic %@ [%@]", buf, 0x20u);
    }

    [v7 setValue:0];
    [v7 setNotificationContext:0];
    v26 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12];
    v9 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v7 error:v26];

    goto LABEL_34;
  }

  v50 = 0;
  v19 = [a1 decodeBodyData:v13 format:v18 error:&v50];
  v20 = v50;
  if (v20)
  {
    v21 = v20;
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v22 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v46 = v22;
      v48 = [v7 type];
      v38 = [HAPCharacteristic hap2_shortTypeFromUUID:v48];
      v39 = [v7 instanceID];
      *buf = 138413058;
      v53 = a1;
      v54 = 2112;
      v55 = v38;
      v56 = 2112;
      v57 = v39;
      v58 = 2112;
      v59 = v21;
      _os_log_error_impl(&dword_22AADC000, v46, OS_LOG_TYPE_ERROR, "%@ Decoding value for characteristic %@ [%@] failed with error: %@", buf, 0x2Au);
    }

    [v7 setValue:0];
    [v7 setNotificationContext:0];
    v9 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v7 error:v21];

    goto LABEL_27;
  }

  [v7 setValue:v19];
  if ([v5 type] == 3 && (objc_msgSend(v7, "properties") & 0x100) != 0)
  {
    v29 = [v3 body];
    v49 = 0;
    v21 = [_HAPAccessoryServerBTLE200 extractNotificationContextFromBodyData:v29 error:&v49];
    v30 = v49;

    if (v21)
    {
      [v7 setNotificationContext:v21];
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v31 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        v47 = v30;
        log = v31;
        v45 = [v7 type];
        v32 = [HAPCharacteristic hap2_shortTypeFromUUID:v45];
        v33 = [v7 instanceID];
        *buf = 138413058;
        v53 = a1;
        v54 = 2112;
        v55 = v32;
        v56 = 2112;
        v57 = v33;
        v58 = 2112;
        v59 = v21;
        _os_log_impl(&dword_22AADC000, log, OS_LOG_TYPE_INFO, "%@ Response for characteristic %@ [%@] contains notification context %@", buf, 0x2Au);

        v30 = v47;
      }
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_26:
  v9 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v7 error:0];
LABEL_27:

LABEL_34:
LABEL_35:

  v27 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_errorIfResponseInvalid:(void *)a1
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 request];
  v5 = [v4 characteristic];

  if (([v3 isValid] & 1) == 0)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v11 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v15 = v11;
      v16 = [v5 type];
      v17 = [HAPCharacteristic hap2_shortTypeFromUUID:v16];
      v18 = [v5 instanceID];
      v27 = 138412802;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = a1;
      _os_log_error_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%@ Response for %@ [%@] is invalid", &v27, 0x20u);
    }

    v10 = MEMORY[0x277CCA9B8];
    v9 = 2;
    goto LABEL_13;
  }

  v6 = [v3 statusCode];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v7 = hap2Log_accessory;
  if (v6)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v19 = v7;
      v20 = [v5 type];
      v21 = [HAPCharacteristic hap2_shortTypeFromUUID:v20];
      v22 = [v5 instanceID];
      v27 = 138413058;
      v28 = a1;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      v33 = 1024;
      v34 = [v3 statusCode];
      _os_log_error_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%@ Response for characteristic: %@ [%@] contains a HAP status failure code: 0x%02x", &v27, 0x26u);
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = HAPErrorCodeFromHAPBLEStatusErrorCode([v3 statusCode]);
    v10 = v8;
LABEL_13:
    v12 = [v10 hapErrorWithCode:v9];
    goto LABEL_14;
  }

  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
  {
    v23 = v7;
    v24 = [v5 type];
    v25 = [HAPCharacteristic hap2_shortTypeFromUUID:v24];
    v26 = [v5 instanceID];
    v27 = 138412802;
    v28 = a1;
    v29 = 2112;
    v30 = v25;
    v31 = 2112;
    v32 = v26;
    _os_log_debug_impl(&dword_22AADC000, v23, OS_LOG_TYPE_DEBUG, "%@ Response for characteristic %@ [%@] contains a HAP status success code", &v27, 0x20u);
  }

  v12 = 0;
LABEL_14:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __86__HAP2AccessoryServerEncodingThread__attributeDatabaseResponseFromBTLEResponse_error___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 accessoryID];
  v8 = [v7 value];

  if (!v8)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v11 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v40 = a1[4];
      *buf = 138412546;
      *&buf[4] = v40;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_error_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%@ Accessory contains no accessory id: %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if (![v8 unsignedIntValue])
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v12 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v42 = a1[4];
      *buf = 138412290;
      *&buf[4] = v42;
      _os_log_error_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%@ Invalid accessory ID 0", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v9 = [*(*(a1[6] + 8) + 40) objectForKey:v8];

  if (!v9)
  {
    v17 = [v6 serviceList];
    v18 = [v17 serviceSignatureList];

    if (!v18)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v33 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v43 = a1[4];
        *buf = 138412546;
        *&buf[4] = v43;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_error_impl(&dword_22AADC000, v33, OS_LOG_TYPE_ERROR, "%@ Attribute database contains no service list for accessory: %@", buf, 0x16u);
      }

      v34 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
      v35 = *(a1[5] + 8);
      v36 = *(v35 + 40);
      *(v35 + 40) = v34;

      *a4 = 1;
      goto LABEL_50;
    }

    v19 = a1[4];
    v20 = *(a1[5] + 8);
    obj = *(v20 + 40);
    v21 = [v19 _parseServiceList:v18 error:&obj];
    objc_storeStrong((v20 + 40), obj);
    v48 = [v21 copy];

    if (!v48)
    {
      goto LABEL_44;
    }

    v22 = a1[4];
    v23 = *(a1[5] + 8);
    v24 = *(v23 + 40);
    location = (v23 + 40);
    v25 = v48;
    v26 = v25;
    if (!v22)
    {

      objc_storeStrong(location, v24);
      goto LABEL_44;
    }

    v27 = [MEMORY[0x277CBEB58] setWithCapacity:{5 * objc_msgSend(v25, "count")}];
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy__2091;
    v60 = __Block_byref_object_dispose__2092;
    v61 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x2020000000;
    v51 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __67__HAP2AccessoryServerEncodingThread__validateParsedServices_error___block_invoke;
    v67 = &unk_2786D3410;
    v69 = &v52;
    v70 = v50;
    v28 = v27;
    v68 = v28;
    v71 = &v56;
    [v26 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
    if (*(v53 + 24) == 1)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v29 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      *v62 = 138412290;
      v63 = v22;
      v30 = "%@ Invalid instanceID encountered";
      v31 = v29;
      v32 = 12;
    }

    else
    {
      if (!v57[5])
      {
        v39 = 1;
LABEL_38:

        _Block_object_dispose(v50, 8);
        _Block_object_dispose(&v52, 8);
        _Block_object_dispose(&v56, 8);

        objc_storeStrong(location, v24);
        if (v39)
        {
          [*(*(a1[6] + 8) + 40) setObject:v26 forKey:v8];
LABEL_49:

LABEL_50:
          goto LABEL_19;
        }

LABEL_44:
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v45 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          v46 = a1[4];
          *buf = 138412546;
          *&buf[4] = v46;
          *&buf[12] = 2112;
          *&buf[14] = v6;
          _os_log_error_impl(&dword_22AADC000, v45, OS_LOG_TYPE_ERROR, "%@ Attribute database contains invalid service list for accessory: %@", buf, 0x16u);
        }

        *a4 = 1;
        goto LABEL_49;
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v37 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
LABEL_37:
        v24 = [MEMORY[0x277CCA9B8] hapErrorWithCode:{7, v22, location}];
        v38 = v24;
        v39 = 0;
        goto LABEL_38;
      }

      v44 = v57[5];
      *v62 = 138412546;
      v63 = v22;
      v64 = 2112;
      v65 = v44;
      v30 = "%@ Multiple items with the same instanceID: %@";
      v31 = v37;
      v32 = 22;
    }

    _os_log_error_impl(&dword_22AADC000, v31, OS_LOG_TYPE_ERROR, v30, v62, v32);
    goto LABEL_37;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v10 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    v41 = a1[4];
    *buf = 138412546;
    *&buf[4] = v41;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_error_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%@ Attribute database contains duplicate accessory entries: %@", buf, 0x16u);
  }

LABEL_18:
  v13 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
  v14 = *(a1[5] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  *a4 = 1;
LABEL_19:

  v16 = *MEMORY[0x277D85DE8];
}

void __67__HAP2AccessoryServerEncodingThread__validateParsedServices_error___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 instanceID];
  v8 = [v7 unsignedIntegerValue];

  if (!v8)
  {
    *(*(a1[5] + 8) + 24) = 1;
    v14 = *(a1[6] + 8);
    goto LABEL_5;
  }

  v9 = a1[4];
  v10 = [v6 instanceID];
  LODWORD(v9) = [v9 containsObject:v10];

  if (v9)
  {
    v11 = [v6 instanceID];
    v12 = *(a1[7] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = *(a1[6] + 8);
LABEL_5:
    *(v14 + 24) = 1;
    *a4 = 1;
    goto LABEL_9;
  }

  v15 = a1[4];
  v16 = [v6 instanceID];
  [v15 addObject:v16];

  v17 = [v6 characteristics];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__HAP2AccessoryServerEncodingThread__validateParsedServices_error___block_invoke_2;
  v20[3] = &unk_2786D33E8;
  v22 = a1[6];
  v19 = *(a1 + 2);
  v18 = v19;
  v21 = v19;
  v23 = a1[7];
  [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v20];

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *a4 = 1;
  }

LABEL_9:
}

void __67__HAP2AccessoryServerEncodingThread__validateParsedServices_error___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v6 = [v16 instanceID];
  v7 = [v6 unsignedIntegerValue];

  if (!v7)
  {
    *(*(a1[5] + 8) + 24) = 1;
    v13 = *(a1[6] + 8);
    goto LABEL_5;
  }

  v8 = a1[4];
  v9 = [v16 instanceID];
  LODWORD(v8) = [v8 containsObject:v9];

  if (v8)
  {
    v10 = [v16 instanceID];
    v11 = *(a1[7] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = *(a1[6] + 8);
LABEL_5:
    *(v13 + 24) = 1;
    *a4 = 1;
    goto LABEL_7;
  }

  v14 = a1[4];
  v15 = [v16 instanceID];
  [v14 addObject:v15];

LABEL_7:
}

- (id)_parseCharacteristicResponsesWithBodyData:(id)a3 request:(id)a4 error:(id *)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [a4 btleRequests];
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __93__HAP2AccessoryServerEncodingThread__parseCharacteristicResponsesWithBodyData_request_error___block_invoke;
  v45[3] = &unk_2786D34F0;
  v11 = v10;
  v46 = v11;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v45];
  v12 = v8;
  v42 = v9;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v41 = v12;
  v14 = v12;
  while (1)
  {
    if (![v14 length] || !objc_msgSend(v11, "count"))
    {
      if (![v14 length])
      {
        if ([v11 count])
        {
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __93__HAP2AccessoryServerEncodingThread__parseCharacteristicResponsesWithBodyData_request_error___block_invoke_55;
          v43[3] = &unk_2786D3370;
          v44 = v13;
          [v11 enumerateKeysAndObjectsUsingBlock:v43];
        }

        v35 = [v13 copy];
        goto LABEL_38;
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v31 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v32 = v31;
        v33 = [v14 length];
        *buf = 138412546;
        v48 = self;
        v49 = 1024;
        v50 = v33;
        _os_log_error_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "%@ Found %u extra bytes of incoming PDU data", buf, 0x12u);
      }

      goto LABEL_24;
    }

    v15 = [(HAP2AccessoryServerEncodingThread *)self _extractAndValidateControlFieldWithData:v14 expectedType:1];

    if (!v15)
    {
      if (!a5)
      {
        v14 = 0;
        goto LABEL_37;
      }

      v34 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
      v14 = 0;
LABEL_26:
      v35 = 0;
      *a5 = v34;
      goto LABEL_38;
    }

    v14 = v15;
    if (![v14 length])
    {

LABEL_24:
      if (!a5)
      {
        goto LABEL_37;
      }

      v34 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
      goto LABEL_26;
    }

    buf[0] = 0;
    [v14 getBytes:buf length:1];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:buf[0]];

    if (!v16)
    {
      goto LABEL_24;
    }

    v17 = [v11 objectForKeyedSubscript:v16];
    if (!v17)
    {
      break;
    }

    v18 = v17;
    [v11 removeObjectForKey:v16];
    v14 = v14;
    if (!self || (v19 = v14, ([(HAP2AccessoryServerEncodingThread *)self encodingFeatures]& 0x20) == 0))
    {
      v19 = v14;
      if (([v18 expectsResponseBody] & 1) == 0)
      {
        v19 = [v14 subdataWithRange:{0, 2}];
      }
    }

    v20 = [[HAPBTLEResponse alloc] initWithRequest:v18];
    v21 = [(HAPBTLEResponse *)v20 appendData:v19 error:a5];
    if (v21)
    {
      [v13 addObject:v20];
      v22 = [v14 subdataWithRange:{v21, objc_msgSend(v14, "length") - v21}];
      v23 = v14;
      v24 = v16;
      v25 = self;
      v26 = v11;
      v27 = a5;
      v28 = v13;
      v29 = v22;

      v30 = v29;
      v13 = v28;
      a5 = v27;
      v11 = v26;
      self = v25;
      v16 = v24;
      v14 = v30;
    }

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v36 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    v39 = v36;
    v40 = [v16 unsignedIntValue];
    *buf = 138412546;
    v48 = self;
    v49 = 1024;
    v50 = v40;
    _os_log_error_impl(&dword_22AADC000, v39, OS_LOG_TYPE_ERROR, "%@ Unable to match request to response (tid: %x)", buf, 0x12u);

    if (a5)
    {
LABEL_31:
      *a5 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
    }
  }

  else if (a5)
  {
    goto LABEL_31;
  }

LABEL_37:
  v35 = 0;
LABEL_38:

  v37 = *MEMORY[0x277D85DE8];

  return v35;
}

void __93__HAP2AccessoryServerEncodingThread__parseCharacteristicResponsesWithBodyData_request_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v6 = [v4 identifier];
  v5 = [v3 numberWithUnsignedChar:{objc_msgSend(v6, "unsignedCharValue")}];
  [v2 setObject:v4 forKeyedSubscript:v5];
}

void __93__HAP2AccessoryServerEncodingThread__parseCharacteristicResponsesWithBodyData_request_error___block_invoke_55(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[HAPBTLEResponse alloc] initWithRequest:v4];

  [*(a1 + 32) addObject:v5];
}

- (id)notificationRequestsForCharacteristics:(id)a3 type:(unint64_t)a4 error:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {
    v7 = 12;
    v8 = 11;
  }

  else if (a4)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v7 = 11;
    v8 = 10;
  }

  v9 = MEMORY[0x277CBEB58];
  v10 = a3;
  v11 = [v9 setWithCapacity:{2 * objc_msgSend(v10, "count")}];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __87__HAP2AccessoryServerEncodingThread_notificationRequestsForCharacteristics_type_error___block_invoke;
  v22[3] = &unk_2786D3348;
  v26 = v7;
  v22[4] = self;
  v23 = v11;
  v24 = v12;
  v25 = a4;
  v13 = v12;
  v14 = v11;
  [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v22];

  v15 = v13;
  if (self)
  {
    if (([(HAP2AccessoryServerEncodingThread *)self encodingFeatures]& 4) != 0)
    {
      v18 = [HAP2EncodedCharacteristicRequestThread alloc];
      v19 = [v15 copy];
      v17 = [(HAP2EncodedCharacteristicRequestThread *)v18 initWithBTLERequests:v19 requestType:v8 enforcePDUBodyLength:([(HAP2AccessoryServerEncodingThread *)self encodingFeatures]>> 5) & 1];

      v27[0] = v17;
      self = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    }

    else
    {
      v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v15, "count")}];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __77__HAP2AccessoryServerEncodingThread__hapRequestsForBTLERequests_requestType___block_invoke;
      v27[3] = &unk_2786D32D0;
      v29 = self;
      v30 = v8;
      v28 = v16;
      v17 = v16;
      [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v27];
      self = [(HAP2EncodedCharacteristicRequestThread *)v17 copy];
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return self;
}

void __87__HAP2AccessoryServerEncodingThread_notificationRequestsForCharacteristics_type_error___block_invoke(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = 0;
  do
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = ([v5 encodingFeatures] >> 5) & 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = [HAP2AccessoryServerEncodingThreadBTLERequest notificationRequestForCharacteristic:v26 threadRequestType:v4 enforcePDUBodyLength:v6];

    v8 = *(a1 + 40);
    v9 = MEMORY[0x277CCABB0];
    v10 = [v7 identifier];
    v11 = [v9 numberWithUnsignedChar:{objc_msgSend(v10, "unsignedCharValue")}];
    LOBYTE(v8) = [v8 containsObject:v11];

    v3 = v7;
  }

  while ((v8 & 1) != 0);
  [*(a1 + 48) addObject:v7];
  v12 = *(a1 + 40);
  v13 = MEMORY[0x277CCABB0];
  v14 = [v7 identifier];
  v15 = [v13 numberWithUnsignedChar:{objc_msgSend(v14, "unsignedCharValue")}];
  [v12 addObject:v15];

  if (!*(a1 + 56) && ([*(a1 + 32) encodingFeatures] & 4) != 0)
  {
    v16 = 0;
    do
    {
      v17 = v16;
      v16 = [HAP2AccessoryServerEncodingThreadBTLERequest readRequestForCharacteristic:v26];

      v18 = *(a1 + 40);
      v19 = MEMORY[0x277CCABB0];
      v20 = [v16 identifier];
      v21 = [v19 numberWithUnsignedChar:{objc_msgSend(v20, "unsignedCharValue")}];
      LOBYTE(v18) = [v18 containsObject:v21];
    }

    while ((v18 & 1) != 0);
    v22 = *(a1 + 40);
    v23 = MEMORY[0x277CCABB0];
    v24 = [v16 identifier];
    v25 = [v23 numberWithUnsignedChar:{objc_msgSend(v24, "unsignedCharValue")}];
    [v22 addObject:v25];

    [*(a1 + 48) addObject:v16];
  }
}

void __77__HAP2AccessoryServerEncodingThread__hapRequestsForBTLERequests_requestType___block_invoke(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = [HAP2EncodedCharacteristicRequestThread alloc];
  v12[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = a1[5];
  v8 = a1[6];
  if (v7)
  {
    v9 = ([v7 encodingFeatures] >> 5) & 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(HAP2EncodedCharacteristicRequestThread *)v5 initWithBTLERequests:v6 requestType:v8 enforcePDUBodyLength:v9];
  [v4 addObject:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)executeWriteRequestForCharacteristics:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2091;
  v25 = __Block_byref_object_dispose__2092;
  v26 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __81__HAP2AccessoryServerEncodingThread_executeWriteRequestForCharacteristics_error___block_invoke;
  v18 = &unk_2786D32F8;
  v20 = &v21;
  v8 = v7;
  v19 = v8;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:&v15];
  v9 = v22[5];
  if (v9)
  {
    v10 = 0;
    if (a4)
    {
      *a4 = v9;
    }
  }

  else
  {
    v11 = [HAP2EncodedCharacteristicRequestThread alloc];
    v12 = [v8 copy];
    if (self)
    {
      v13 = ([(HAP2AccessoryServerEncodingThread *)self encodingFeatures]>> 5) & 1;
    }

    else
    {
      v13 = 0;
    }

    v10 = [(HAP2EncodedCharacteristicRequestThread *)v11 initWithBTLERequests:v12 requestType:4 enforcePDUBodyLength:v13];
  }

  _Block_object_dispose(&v21, 8);

  return v10;
}

void __81__HAP2AccessoryServerEncodingThread_executeWriteRequestForCharacteristics_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 characteristic];
  v8 = [v6 value];

  v9 = *(*(a1 + 40) + 8);
  obj = *(v9 + 40);
  v10 = [HAP2AccessoryServerEncodingThreadBTLERequest executeWriteRequestForCharacteristic:v7 value:v8 options:5 error:&obj];
  objc_storeStrong((v9 + 40), obj);

  if (v10)
  {
    [*(a1 + 32) addObject:v10];
  }

  else
  {
    *a4 = 1;
  }
}

- (id)prepareWriteRequestForCharacteristics:(id)a3 ttl:(double)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2091;
  v26 = __Block_byref_object_dispose__2092;
  v27 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __85__HAP2AccessoryServerEncodingThread_prepareWriteRequestForCharacteristics_ttl_error___block_invoke;
  v19 = &unk_2786D32F8;
  v21 = &v22;
  v9 = v8;
  v20 = v9;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:&v16];
  v10 = v23[5];
  if (v10)
  {
    v11 = 0;
    if (a5)
    {
      *a5 = v10;
    }
  }

  else
  {
    v12 = [HAP2EncodedCharacteristicRequestThread alloc];
    v13 = [v9 copy];
    if (self)
    {
      v14 = ([(HAP2AccessoryServerEncodingThread *)self encodingFeatures]>> 5) & 1;
    }

    else
    {
      v14 = 0;
    }

    v11 = [(HAP2EncodedCharacteristicRequestThread *)v12 initWithBTLERequests:v13 requestType:3 enforcePDUBodyLength:v14];
  }

  _Block_object_dispose(&v22, 8);

  return v11;
}

void __85__HAP2AccessoryServerEncodingThread_prepareWriteRequestForCharacteristics_ttl_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 characteristic];
  v8 = [v6 value];
  v9 = [v6 authorizationData];
  v10 = [v6 contextData];

  v11 = *(*(a1 + 40) + 8);
  obj = *(v11 + 40);
  v12 = [HAP2AccessoryServerEncodingThreadBTLERequest prepareWriteRequestForCharacteristic:v7 value:v8 authorizationData:v9 contextData:v10 options:5 error:&obj];
  objc_storeStrong((v11 + 40), obj);

  if (v12)
  {
    [*(a1 + 32) addObject:v12];
  }

  else
  {
    *a4 = 1;
  }
}

- (id)writeRequestForCharacteristics:(id)a3 shouldEncrypt:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  [(HAP2AccessoryServerEncodingThread *)self encodingFeatures];
  v9 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v8, "count")}];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2091;
  v31 = __Block_byref_object_dispose__2092;
  v32 = 0;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __88__HAP2AccessoryServerEncodingThread_writeRequestForCharacteristics_shouldEncrypt_error___block_invoke;
  v22 = &unk_2786D3320;
  v26 = a4;
  v25 = &v27;
  v11 = v9;
  v23 = v11;
  v12 = v10;
  v24 = v12;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:&v19];
  v13 = v28[5];
  if (v13)
  {
    v14 = 0;
    if (a5)
    {
      *a5 = v13;
    }
  }

  else
  {
    v15 = [HAP2EncodedCharacteristicRequestThread alloc];
    v16 = [v12 copy];
    if (self)
    {
      v17 = ([(HAP2AccessoryServerEncodingThread *)self encodingFeatures]>> 5) & 1;
    }

    else
    {
      v17 = 0;
    }

    v14 = [(HAP2EncodedCharacteristicRequestThread *)v15 initWithBTLERequests:v16 requestType:1 enforcePDUBodyLength:v17];
  }

  _Block_object_dispose(&v27, 8);

  return v14;
}

void __88__HAP2AccessoryServerEncodingThread_writeRequestForCharacteristics_shouldEncrypt_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  v6 = [v5 includeResponseValue];
  v7 = 0;
  v8 = 2;
  if (!v6)
  {
    v8 = 0;
  }

  v25 = v8;
  v9 = *(a1 + 56);
  while (1)
  {
    v10 = v7;
    v11 = [v5 characteristic];
    v12 = [v5 value];
    v13 = [v5 authorizationData];
    v14 = [v5 contextData];
    v15 = *(*(a1 + 48) + 8);
    obj = *(v15 + 40);
    v7 = [HAP2AccessoryServerEncodingThreadBTLERequest writeRequestForCharacteristic:v11 value:v12 authorizationData:v13 contextData:v14 options:v25 | v9 error:&obj];
    objc_storeStrong((v15 + 40), obj);

    if (!v7)
    {
      break;
    }

    v16 = *(a1 + 32);
    v17 = MEMORY[0x277CCABB0];
    v18 = [v7 identifier];
    v19 = [v17 numberWithUnsignedChar:{objc_msgSend(v18, "unsignedCharValue")}];
    LOBYTE(v16) = [v16 containsObject:v19];

    if ((v16 & 1) == 0)
    {
      v20 = *(a1 + 32);
      v21 = MEMORY[0x277CCABB0];
      v22 = [v7 identifier];
      v23 = [v21 numberWithUnsignedChar:{objc_msgSend(v22, "unsignedCharValue")}];
      [v20 addObject:v23];

      [*(a1 + 40) addObject:v7];
      goto LABEL_8;
    }
  }

  *a4 = 1;
LABEL_8:
}

- (id)groupingsForWriteRequestsForCharacteristics:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerEncodingThread *)self encodingFeatures];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v7 = v6;
  if ((v5 & 4) != 0)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__2091;
    v21 = __Block_byref_object_dispose__2092;
    v22 = [MEMORY[0x277CBEB18] array];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__HAP2AccessoryServerEncodingThread_groupingsForWriteRequestsForCharacteristics___block_invoke_52;
    v14[3] = &unk_2786D32F8;
    v16 = &v17;
    v11 = v7;
    v15 = v11;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v14];
    if ([v18[5] count])
    {
      v12 = [v18[5] copy];
      [v11 addObject:v12];
    }

    v9 = [v11 copy];

    _Block_object_dispose(&v17, 8);
    v10 = v22;
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __81__HAP2AccessoryServerEncodingThread_groupingsForWriteRequestsForCharacteristics___block_invoke;
    v23[3] = &unk_2786D5900;
    v24 = v6;
    v8 = v6;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v23];
    v9 = [v8 copy];
    v10 = v24;
  }

  return v9;
}

void __81__HAP2AccessoryServerEncodingThread_groupingsForWriteRequestsForCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v7 = a2;
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  [v2 addObject:{v5, v7, v8}];

  v6 = *MEMORY[0x277D85DE8];
}

void __81__HAP2AccessoryServerEncodingThread_groupingsForWriteRequestsForCharacteristics___block_invoke_52(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 timedWrite];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    if ([v5 count])
    {
      v6 = *(a1 + 32);
      v7 = [*(*(*(a1 + 40) + 8) + 40) copy];
      [v6 addObject:v7];

      v8 = [MEMORY[0x277CBEB18] array];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    v11 = *(a1 + 32);
    v14[0] = v3;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v11 addObject:v12];
  }

  else
  {
    [v5 addObject:v3];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)readRequestForCharacteristics:(id)a3 shouldEncrypt:(BOOL)a4 error:(id *)a5
{
  v6 = a3;
  [(HAP2AccessoryServerEncodingThread *)self encodingFeatures];
  v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __87__HAP2AccessoryServerEncodingThread_readRequestForCharacteristics_shouldEncrypt_error___block_invoke;
  v19 = &unk_2786D5928;
  v9 = v7;
  v20 = v9;
  v10 = v8;
  v21 = v10;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:&v16];

  v11 = [HAP2EncodedCharacteristicRequestThread alloc];
  v12 = [v10 copy];
  if (self)
  {
    v13 = ([(HAP2AccessoryServerEncodingThread *)self encodingFeatures]>> 5) & 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(HAP2EncodedCharacteristicRequestThread *)v11 initWithBTLERequests:v12 requestType:2 enforcePDUBodyLength:v13];

  return v14;
}

void __87__HAP2AccessoryServerEncodingThread_readRequestForCharacteristics_shouldEncrypt_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  do
  {
    v5 = v4;
    v14 = [HAP2AccessoryServerEncodingThreadBTLERequest readRequestForCharacteristic:a2];

    v6 = *(a1 + 32);
    v7 = MEMORY[0x277CCABB0];
    v8 = [v14 identifier];
    v9 = [v7 numberWithUnsignedChar:{objc_msgSend(v8, "unsignedCharValue")}];
    LOBYTE(v6) = [v6 containsObject:v9];

    v4 = v14;
  }

  while ((v6 & 1) != 0);
  v10 = *(a1 + 32);
  v11 = MEMORY[0x277CCABB0];
  v12 = [v14 identifier];
  v13 = [v11 numberWithUnsignedChar:{objc_msgSend(v12, "unsignedCharValue")}];
  [v10 addObject:v13];

  [*(a1 + 40) addObject:v14];
}

- (id)groupingsForReadRequestsForCharacteristics:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(HAP2AccessoryServerEncodingThread *)self encodingFeatures]& 4) != 0)
  {
    v12[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __80__HAP2AccessoryServerEncodingThread_groupingsForReadRequestsForCharacteristics___block_invoke;
    v10[3] = &unk_2786D60B0;
    v11 = v5;
    v6 = v5;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];
    v7 = [v6 copy];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __80__HAP2AccessoryServerEncodingThread_groupingsForReadRequestsForCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v7 = a2;
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  [v2 addObject:{v5, v7, v8}];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)decodeBodyData:(id)a3 format:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = +[HAPDataValueTransformer defaultDataValueTransformer];
  v9 = [v8 reverseTransformedValue:v7 format:a4 error:a5];

  if (v9 && ([v9 conformsToProtocol:&unk_283ECFA90] & 1) == 0)
  {

    if (a5)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:12];
      *a5 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)encodeBodyValue:(id)a3 format:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = +[HAPDataValueTransformer defaultDataValueTransformer];
  v9 = [v8 transformedValue:v7 format:a4 error:a5];

  return v9;
}

- (HAP2AccessoryServerEncodingThread)initWithEncodingFeatures:(unint64_t)a3 accessoryDescription:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HAP2AccessoryServerEncodingThread;
  v8 = [(HAP2AccessoryServerEncodingThread *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_encodingFeatures = a3;
    objc_storeStrong(&v8->_accessoryDescription, a4);
  }

  return v9;
}

+ (id)_parseShortFormUUID:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  if ([v5 length] == 16)
  {
    memset(buf, 0, sizeof(buf));
    [v6 getBytes:buf length:16];
    v7 = vrev64q_s8(*buf);
    v20 = vextq_s8(v7, v7, 8uLL);
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v20];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 UUIDString];
    }

    else if (a4)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:7];
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_24;
  }

  if ([v6 length] >= 5)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v11 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_error_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "Provided UUID has invalid length: %@", buf, 0xCu);
      if (a4)
      {
        goto LABEL_10;
      }

LABEL_23:
      v10 = 0;
      goto LABEL_24;
    }

LABEL_9:
    if (a4)
    {
LABEL_10:
      [MEMORY[0x277CCA9B8] hapErrorWithCode:7];
      *a4 = v10 = 0;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v12 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(v6, "length")}];
  v13 = [v6 bytes];
  v14 = [v6 length];
  if (v14)
  {
    v15 = v14;
    v16 = v13 - 1;
    do
    {
      if (v15 == [v6 length])
      {
        v17 = @"%X";
      }

      else
      {
        v17 = @"%02X";
      }

      [v12 appendFormat:v17, *(v16 + v15--)];
    }

    while (v15);
  }

  v10 = [v12 copy];

LABEL_24:
  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

@end