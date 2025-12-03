@interface HAP2AccessoryServerControllerAttributeRequestOperation
+ (id)_characteristicsFromCachedCharacteristics:(id)characteristics;
+ (id)_parseCache:(id)cache;
- (void)_cleanUp;
- (void)_sendRequest;
- (void)main;
@end

@implementation HAP2AccessoryServerControllerAttributeRequestOperation

- (void)_sendRequest
{
  selfCopy = self;
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    self = self->_cache;
  }

  accessoryCache = [(HAP2AccessoryServerControllerAttributeRequestOperation *)self accessoryCache];

  if (!accessoryCache)
  {
    goto LABEL_14;
  }

  v4 = objc_opt_class();
  if (selfCopy)
  {
    cache = selfCopy->_cache;
  }

  else
  {
    cache = 0;
  }

  accessoryCache2 = [(HAP2AccessoryServerAccessoryCache *)cache accessoryCache];
  v7 = [v4 _parseCache:accessoryCache2];

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v8 = hap2Log_accessory;
  if (!v7)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = selfCopy;
      _os_log_error_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%@ Unable to deserialize the cache falling back to the accessory", buf, 0xCu);
    }

LABEL_14:
    v11.receiver = selfCopy;
    v11.super_class = HAP2AccessoryServerControllerAttributeRequestOperation;
    [(HAP2AccessoryServerControllerOperation *)&v11 _sendRequest];
    goto LABEL_15;
  }

  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = selfCopy;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%@ Attempting to use the accessory cache", buf, 0xCu);
  }

  v9 = [[HAP2EncodedAttributeDatabaseResponseCached alloc] initWithAttributeDatabase:v7];
  [(HAP2AccessoryServerControllerOperation *)selfCopy setResponse:v9];

  [(HAP2AccessoryServerControllerOperation *)selfCopy finish];
LABEL_15:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUp
{
  controller = [(HAP2AccessoryServerControllerOperation *)&self->super.super.super.super.isa controller];
  [(HAP2AccessoryServerController *)controller setReadingAttributeDatabase:?];

  v4.receiver = self;
  v4.super_class = HAP2AccessoryServerControllerAttributeRequestOperation;
  [(HAP2AccessoryServerControllerOperation *)&v4 _cleanUp];
}

- (void)main
{
  v27 = *MEMORY[0x277D85DE8];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v3 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_DEFAULT, "%@ Starting", &buf, 0xCu);
  }

  controller = [(HAP2AccessoryServerControllerOperation *)&self->super.super.super.super.isa controller];
  [(HAP2AccessoryServerController *)controller setReadingAttributeDatabase:?];

  controller2 = [(HAP2AccessoryServerControllerOperation *)&self->super.super.super.super.isa controller];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v18 = __62__HAP2AccessoryServerControllerAttributeRequestOperation_main__block_invoke;
  v19 = &unk_2786D4EC0;
  selfCopy = self;
  v6 = v17;
  if (controller2)
  {
    [controller2[11] assertCurrentQueue];
    v7 = controller2[9];
    if (v7)
    {
      metadataVersion = [v7 metadataVersion];

      if (metadataVersion)
      {
        v18(v6, controller2[9]);
        goto LABEL_22;
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = controller2;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%@ Invalidating accessory cache due to missing metadata version", &buf, 0xCu);
      }

      [controller2[9] invalidateAccessoryCache];
    }

    accessoryServer = [controller2 accessoryServer];
    browser = [accessoryServer browser];
    storage = [browser storage];

    if (storage)
    {
      controllerIdentifier = [objc_opt_class() controllerIdentifier];
      v14 = cacheFileIdentifierForAccessoryServer(controllerIdentifier, accessoryServer);

      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v22 = __68__HAP2AccessoryServerController_lookupAccessoryCacheWithCompletion___block_invoke;
      v23 = &unk_2786D5C70;
      v24 = controller2;
      v26 = v6;
      v25 = accessoryServer;
      [storage fetchCacheForIdentifier:v14 completion:&buf];
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v15 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = controller2;
        _os_log_error_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%@ Unable to get to the storage", &buf, 0xCu);
      }

      v18(v6, 0);
    }
  }

LABEL_22:

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __62__HAP2AccessoryServerControllerAttributeRequestOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_storeStrong((v3 + 376), a2);
    v5 = *(a1 + 32);
    v2 = vars8;
  }

  else
  {
    v5 = 0;
  }

  return [v5 _openTransport:0];
}

+ (id)_characteristicsFromCachedCharacteristics:(id)characteristics
{
  v3 = MEMORY[0x277CBEB18];
  characteristicsCopy = characteristics;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__HAP2AccessoryServerControllerAttributeRequestOperation__characteristicsFromCachedCharacteristics___block_invoke;
  v9[3] = &unk_2786D4F38;
  v10 = v5;
  v6 = v5;
  [characteristicsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __100__HAP2AccessoryServerControllerAttributeRequestOperation__characteristicsFromCachedCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HAPCharacteristic alloc];
  v5 = [v3 characteristicUUID];
  v6 = [v5 UUIDString];
  v7 = [v3 characteristicInstanceId];
  v8 = [v3 characteristicProperties];
  v9 = [v3 characteristicMetadata];

  LOBYTE(v11) = 1;
  v12 = [(HAPCharacteristic *)v4 initWithType:v6 instanceID:v7 value:0 stateNumber:0 properties:v8 eventNotificationsEnabled:0 implicitWriteWithResponse:v11 metadata:v9];

  v10 = [MEMORY[0x277CBEAA8] distantPast];
  [(HAPCharacteristic *)v12 setValueUpdatedTime:v10];

  [*(a1 + 32) addObject:v12];
}

+ (id)_parseCache:(id)cache
{
  v4 = MEMORY[0x277CBEB38];
  cacheCopy = cache;
  v6 = [v4 dictionaryWithCapacity:{objc_msgSend(cacheCopy, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __70__HAP2AccessoryServerControllerAttributeRequestOperation__parseCache___block_invoke;
  v13 = &unk_2786D4F10;
  v14 = v6;
  selfCopy = self;
  v7 = v6;
  [cacheCopy enumerateKeysAndObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __70__HAP2AccessoryServerControllerAttributeRequestOperation__parseCache___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 cachedServices];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __70__HAP2AccessoryServerControllerAttributeRequestOperation__parseCache___block_invoke_2;
  v14 = &unk_2786D4EE8;
  v8 = *(a1 + 40);
  v15 = v7;
  v16 = v8;
  v9 = v7;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:&v11];
  v10 = [v9 copy];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:v5];
}

void __70__HAP2AccessoryServerControllerAttributeRequestOperation__parseCache___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v4 cachedCharacteristics];
  v14 = [v3 _characteristicsFromCachedCharacteristics:v5];

  v6 = [HAPService alloc];
  v7 = [v4 serviceUUID];
  v8 = [v7 UUIDString];
  v9 = [v4 serviceInstanceId];
  v10 = [v4 serviceProperties];
  v11 = [v4 linkedServices];

  if (v11)
  {
    v12 = [(HAPService *)v6 initWithType:v8 instanceID:v9 parsedCharacteristics:v14 serviceProperties:v10 linkedServices:v11];
  }

  else
  {
    v13 = [MEMORY[0x277CBEA60] array];
    v12 = [(HAPService *)v6 initWithType:v8 instanceID:v9 parsedCharacteristics:v14 serviceProperties:v10 linkedServices:v13];
  }

  [*(a1 + 32) addObject:v12];
}

@end