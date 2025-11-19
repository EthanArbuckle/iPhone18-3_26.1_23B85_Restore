@interface HAP2AccessoryServerControllerReadOperation
- (HAP2AccessoryServerControllerReadOperation)initWithName:(id)a3 controller:(id)a4 encoding:(id)a5 transport:(id)a6 readRequest:(id)a7 endpoint:(id)a8 mimeType:(id)a9 timeout:(double)a10 options:(unint64_t)a11 dscpPriority:(int64_t)a12;
- (id)_HAP2AutoUpdateCachedCountdownCharacteristic:(id)a3;
- (void)_cleanUp;
- (void)_sendRequest;
@end

@implementation HAP2AccessoryServerControllerReadOperation

- (void)_cleanUp
{
  if (self)
  {
    v3 = self->super._response;
    if (v3)
    {
      v4 = v3;
      v5 = [(NSIndexSet *)self->_cachedCharacteristicIndices count];

      if (v5)
      {
        v6 = self->super._response;
        if ([(HAP2EncodedResponse *)v6 conformsToProtocol:&unk_283EB4298])
        {
          v7 = self->super._response;
        }

        else
        {
          v7 = 0;
        }

        v8 = self->_readRequest;
        v9 = [(HAP2ControllerReadRequest *)v8 originalCharacteristics];

        v10 = [(HAP2EncodedResponse *)v7 characteristics];
        v11 = [v10 mutableCopy];

        cachedCharacteristicIndices = self->_cachedCharacteristicIndices;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __54__HAP2AccessoryServerControllerReadOperation__cleanUp__block_invoke;
        v19[3] = &unk_2786D3BE0;
        v19[4] = self;
        v20 = v9;
        v21 = v11;
        v13 = v11;
        v14 = v9;
        [(NSIndexSet *)cachedCharacteristicIndices enumerateIndexesUsingBlock:v19];
        v15 = [HAP2EncodedCharacteristicResponse alloc];
        v16 = [v13 copy];
        v17 = [(HAP2EncodedCharacteristicResponse *)v15 initWithCharacteristics:v16];
        [(HAP2AccessoryServerControllerOperation *)self setResponse:v17];
      }
    }

    objc_storeStrong(&self->super._request, self->_readRequest);
  }

  v18.receiver = self;
  v18.super_class = HAP2AccessoryServerControllerReadOperation;
  [(HAP2AccessoryServerControllerOperation *)&v18 _cleanUp];
}

void __54__HAP2AccessoryServerControllerReadOperation__cleanUp__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v6 = [v4 _HAP2AutoUpdateCachedCountdownCharacteristic:v5];
  v7 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v6 error:0];

  [*(a1 + 48) insertObject:v7 atIndex:a2];
}

- (id)_HAP2AutoUpdateCachedCountdownCharacteristic:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 type];
  if (([v5 isEqual:@"000000D4-0000-1000-8000-0026BB765291"] & 1) == 0)
  {

    goto LABEL_11;
  }

  v6 = [v4 value];
  v7 = [v6 unsignedIntValue];

  if (!v7)
  {
LABEL_11:
    v8 = v4;
    goto LABEL_12;
  }

  v8 = [v4 copy];
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [v8 valueUpdatedTime];
  [v9 timeIntervalSinceDate:v10];
  v12 = v11;

  if (v12)
  {
    v13 = [v8 value];
    v14 = [v13 unsignedIntegerValue];

    if (v14 > v12)
    {
      v15 = MEMORY[0x277CCABB0];
      v16 = [v8 value];
      v17 = [v15 numberWithInteger:{objc_msgSend(v16, "unsignedIntegerValue") - v12}];
      [v8 setValue:v17];

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v18 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        v20 = [v8 value];
        v23 = 138412546;
        v24 = self;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEFAULT, "%@ Auto updating countdown counter value to: %@", &v23, 0x16u);
      }
    }
  }

LABEL_12:
  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_sendRequest
{
  v39 = *MEMORY[0x277D85DE8];
  if (![(HAP2AsynchronousOperation *)self isCancelled])
  {
    if (self)
    {
      v3 = self->super._request;
      readRequest = self->_readRequest;

      if (v3 != readRequest)
      {
LABEL_26:
        v30.receiver = self;
        v30.super_class = HAP2AccessoryServerControllerReadOperation;
        [(HAP2AccessoryServerControllerOperation *)&v30 _sendRequest];
        goto LABEL_27;
      }

      v5 = self->_readRequest;
    }

    else
    {
      v5 = 0;
    }

    v6 = MEMORY[0x277CBEB18];
    v7 = v5;
    v8 = [(HAP2ControllerReadRequest *)v7 originalCharacteristics];
    v9 = [v6 arrayWithCapacity:{objc_msgSend(v8, "count")}];

    v10 = [MEMORY[0x277CCAB58] indexSet];
    if (self)
    {
      v11 = self->_readRequest;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = [(HAP2ControllerReadRequest *)v12 originalCharacteristics];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __58__HAP2AccessoryServerControllerReadOperation__sendRequest__block_invoke;
    v32[3] = &unk_2786D3BB0;
    v32[4] = self;
    v14 = v10;
    v33 = v14;
    v15 = v9;

    v34 = v15;
    [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v32];

    v16 = [v14 copy];
    if (self)
    {
      objc_storeStrong(&self->_cachedCharacteristicIndices, v16);
    }

    v17 = [v15 count];
    if (v17)
    {
      if (self)
      {
        encoding = self->super._encoding;
      }

      else
      {
        encoding = 0;
      }

      v19 = encoding;
      v20 = [v15 copy];
      v31 = 0;
      v21 = [(HAP2AccessoryServerEncoding *)v19 readRequestForCharacteristics:v20 shouldEncrypt:1 error:&v31];
      v22 = v31;

      if (v21)
      {
        v23 = self;
        v24 = v21;
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v28 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v36 = self;
          v37 = 2112;
          v38 = v22;
          _os_log_error_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%@ Unable to create request for characteristics: %@", buf, 0x16u);
        }

        [(HAP2AccessoryServerControllerOperation *)self finishWithError:v22];
        v23 = self;
        v24 = 0;
      }

      [(HAP2AccessoryServerControllerOperation *)v23 setRequest:v24];
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v25 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = self;
        _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%@ All characteristics were cached, not sending request", buf, 0xCu);
      }

      v26 = [HAP2EncodedCharacteristicResponse alloc];
      v27 = [(HAP2EncodedCharacteristicResponse *)v26 initWithCharacteristics:MEMORY[0x277CBEBF8]];
      [(HAP2AccessoryServerControllerOperation *)self setResponse:v27];

      [(HAP2AccessoryServerControllerOperation *)self finish];
    }

    if (v17)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v29 = *MEMORY[0x277D85DE8];
}

void __58__HAP2AccessoryServerControllerReadOperation__sendRequest__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (![v5 hap2_canUseCachedValue] || (v6 = *(a1 + 32)) != 0 && (*(v6 + 344) & 4) != 0)
  {
    [*(a1 + 48) addObject:v5];
  }

  else
  {
    [*(a1 + 40) addIndex:a3];
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v7 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v5 type];
      v11 = [HAPCharacteristic hap2_shortTypeFromUUID:v10];
      v12 = [v5 instanceID];
      v14 = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%@ Characteristic %@ [%@] is cached", &v14, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (HAP2AccessoryServerControllerReadOperation)initWithName:(id)a3 controller:(id)a4 encoding:(id)a5 transport:(id)a6 readRequest:(id)a7 endpoint:(id)a8 mimeType:(id)a9 timeout:(double)a10 options:(unint64_t)a11 dscpPriority:(int64_t)a12
{
  v20 = a7;
  v24.receiver = self;
  v24.super_class = HAP2AccessoryServerControllerReadOperation;
  v21 = [(HAP2AccessoryServerControllerOperation *)&v24 initWithName:a3 controller:a4 encoding:a5 transport:a6 request:v20 endpoint:a8 mimeType:a10 timeout:a9 options:a11 dscpPriority:a12];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_readRequest, a7);
  }

  return v22;
}

@end