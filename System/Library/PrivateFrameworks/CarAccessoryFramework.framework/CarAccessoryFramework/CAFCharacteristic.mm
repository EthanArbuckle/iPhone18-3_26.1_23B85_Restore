@interface CAFCharacteristic
+ (CAFCharacteristic)characteristicWithService:(id)service config:(id)config;
+ (id)characteristicFormats;
+ (id)registeredCharacteristicClasses;
+ (void)load;
+ (void)registerCharacteristicClass:(Class)class;
- (BOOL)_lock_setError:(id)error;
- (BOOL)hasError;
- (BOOL)isCurrent;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInitializing;
- (BOOL)isInvalid;
- (BOOL)supportsDisable;
- (BOOL)supportsError;
- (BOOL)supportsNotifier;
- (BOOL)supportsRestricted;
- (BOOL)supportsStates;
- (CAFAccessory)accessory;
- (CAFCar)car;
- (CAFCharacteristic)initWithService:(id)service config:(id)config;
- (CAFService)service;
- (NSError)error;
- (NSString)baseFormat;
- (NSString)description;
- (NSString)format;
- (NSString)formattedValue;
- (NSString)fullDescription;
- (id)allInstanceIDs;
- (id)currentDescriptionForCache:(id)cache;
- (id)pluginID;
- (id)propertiesDescription;
- (id)readInstanceIDs;
- (id)registrationInstanceIDs;
- (id)value;
- (unint64_t)hash;
- (unint64_t)state;
- (void)_didUpdateFromGroupUpdate:(BOOL)update;
- (void)_readValueCompletionTransactionID:(unint64_t)d error:(id)error;
- (void)_updateStateIfNeeded;
- (void)dealloc;
- (void)groupInitializationRequested;
- (void)handleError:(id)error value:(id)value;
- (void)handleUpdateWithInstanceID:(id)d value:(id)value;
- (void)handleValueAndError:(id)error value:(id)value;
- (void)handleWrite:(id)write value:(id)value;
- (void)registerObserver:(id)observer;
- (void)setError:(id)error;
- (void)setValue:(id)value;
- (void)unregisterObserver:(id)observer;
- (void)updateValueRequiringRead:(BOOL)read;
@end

@implementation CAFCharacteristic

+ (void)load
{
  v2 = objc_opt_class();
  if (v2 != objc_opt_class())
  {
    v3 = objc_opt_class();

    [CAFCharacteristic registerCharacteristicClass:v3];
  }
}

+ (void)registerCharacteristicClass:(Class)class
{
  v15 = *MEMORY[0x277D85DE8];
  if (registerCharacteristicClass__onceToken != -1)
  {
    +[CAFCharacteristic registerCharacteristicClass:];
  }

  v4 = _registeredCharacteristicClasses;
  objc_sync_enter(v4);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  characteristicFormats = [(objc_class *)class characteristicFormats];
  v6 = [characteristicFormats countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(characteristicFormats);
        }

        [_registeredCharacteristicClasses setObject:class forKeyedSubscript:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [characteristicFormats countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __49__CAFCharacteristic_registerCharacteristicClass___block_invoke()
{
  _registeredCharacteristicClasses = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)registeredCharacteristicClasses
{
  v2 = _registeredCharacteristicClasses;
  objc_sync_enter(v2);
  v3 = [_registeredCharacteristicClasses copy];
  objc_sync_exit(v2);

  return v3;
}

+ (CAFCharacteristic)characteristicWithService:(id)service config:(id)config
{
  configCopy = config;
  serviceCopy = service;
  v7 = [CAFCarConfiguration getType:configCopy];
  v8 = +[CAFCharacteristic registeredCharacteristicClasses];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (!v9)
  {
    v10 = [configCopy objectForKeyedSubscript:@"format"];
    v11 = NSStringFromCharacteristicMetadataFormat([v10 intValue]);

    if (!v11 || (+[CAFCharacteristic registeredCharacteristicClasses](CAFCharacteristic, "registeredCharacteristicClasses"), v12 = objc_claimAutoreleasedReturnValue(), v9 = [v12 objectForKeyedSubscript:v11], v12, v11, !v9))
    {
      v9 = objc_opt_class();
    }
  }

  v13 = [[v9 alloc] initWithService:serviceCopy config:configCopy];

  return v13;
}

- (CAFCharacteristic)initWithService:(id)service config:(id)config
{
  serviceCopy = service;
  configCopy = config;
  v58.receiver = self;
  v58.super_class = CAFCharacteristic;
  v8 = [(CAFCharacteristic *)&v58 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_52;
  }

  v8->_valueLock._os_unfair_lock_opaque = 0;
  objc_storeWeak(&v8->_service, serviceCopy);
  objc_opt_class();
  v10 = [configCopy objectForKeyedSubscript:@"iid"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  instanceID = v9->_instanceID;
  v9->_instanceID = v11;

  objc_opt_class();
  v13 = [configCopy objectForKeyedSubscript:@"iidError"];
  if (v13 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  errorInstanceID = v9->_errorInstanceID;
  v9->_errorInstanceID = v14;

  objc_opt_class();
  v16 = [configCopy objectForKeyedSubscript:@"iidDisabled"];
  if (v16 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  disabledInstanceID = v9->_disabledInstanceID;
  v9->_disabledInstanceID = v17;

  objc_opt_class();
  v19 = [configCopy objectForKeyedSubscript:@"iidNotifier"];
  if (v19 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  notifierInstanceID = v9->_notifierInstanceID;
  v9->_notifierInstanceID = v20;

  objc_opt_class();
  v22 = [configCopy objectForKeyedSubscript:@"iidRestricted"];
  if (v22 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  restrictedInstanceID = v9->_restrictedInstanceID;
  v9->_restrictedInstanceID = v23;

  if (!v9->_instanceID)
  {
    v37 = CAFCharacteristicLogging();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [CAFCharacteristic initWithService:serviceCopy config:?];
    }

    goto LABEL_31;
  }

  v25 = [CAFCarConfiguration getType:configCopy];
  characteristicType = v9->_characteristicType;
  v9->_characteristicType = v25;

  if (!v9->_characteristicType)
  {
    v37 = CAFCharacteristicLogging();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [CAFCharacteristic initWithService:serviceCopy config:&v9->_instanceID];
    }

LABEL_31:

    goto LABEL_32;
  }

  pluginID = [serviceCopy pluginID];
  v28 = [CAFCarConfiguration getUUID:pluginID instanceID:v9->_instanceID];
  uniqueIdentifier = v9->_uniqueIdentifier;
  v9->_uniqueIdentifier = v28;

  v30 = [CAFCharacteristicTypes characteristicNameForType:v9->_characteristicType];
  typeName = v9->_typeName;
  v9->_typeName = v30;

  v32 = [configCopy objectForKeyedSubscript:@"initialValue"];
  if (v32)
  {
    v9->_hasInitialValue = 1;
    null = [MEMORY[0x277CBEB68] null];
    v34 = [v32 isEqual:null];

    v35 = [CAFCharacteristicValue alloc];
    if (v34)
    {
      v36 = 0;
    }

    else
    {
      v36 = v32;
    }

    v39 = [(CAFCharacteristicValue *)v35 initWithValue:v36 error:0];
    characteristicValue = v9->_characteristicValue;
    v9->_characteristicValue = v39;
  }

  v41 = [[CAFCharacteristicMetadata alloc] initWithConfig:configCopy];
  metaData = v9->_metaData;
  v9->_metaData = v41;

  if (v9->_metaData)
  {
    v9->_writable = [CAFCarConfiguration getBoolean:configCopy key:@"writable"];
    v9->_isMutable = [CAFCarConfiguration getBoolean:configCopy key:@"mutable"];
    objc_opt_class();
    v43 = [configCopy objectForKeyedSubscript:@"priority"];
    if (v43 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    priority = v9->_priority;
    v9->_priority = v44;

    v9->_hasLargePayload = [CAFCarConfiguration getBoolean:configCopy key:@"largePayload"];
    v9->_supportsInvalid = [CAFCarConfiguration getBoolean:configCopy key:@"supportsInvalid"];
    v9->_isNotificationEnabled = 0;
    v46 = [(CAFCharacteristic *)v9 car];
    carManager = [v46 carManager];
    v9->_shouldInitialize = [carManager shouldInitializeCharacteristic:v9];

    v48 = objc_alloc(MEMORY[0x277CF89C0]);
    observerProtocol = [objc_opt_class() observerProtocol];
    v50 = [v48 initWithProtocol:observerProtocol];
    observers = v9->_observers;
    v9->_observers = v50;

    v52 = [[CAFCachedDescription alloc] initWithCacheable:v9];
    cachedDescription = v9->_cachedDescription;
    v9->_cachedDescription = v52;

    [(CAFCharacteristic *)v9 setCachedValueIfAvailableForGroupUpdate:0];
    if (v9->_shouldInitialize)
    {
      if (![(CAFCharacteristic *)v9 shouldDeferInitialization])
      {
LABEL_51:

LABEL_52:
        v38 = v9;
        goto LABEL_53;
      }

      v54 = CAFCharacteristicLogging();
      v55 = 2;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        [CAFCharacteristic initWithService:config:];
        v55 = 2;
      }
    }

    else
    {
      v54 = CAFCharacteristicLogging();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        [CAFCharacteristic initWithService:config:];
      }

      v55 = 1;
    }

    os_unfair_lock_lock(&v9->_valueLock);
    [(CAFCharacteristic *)v9 setLockState:v55];
    os_unfair_lock_unlock(&v9->_valueLock);
    [(CAFCharacteristic *)v9 _didUpdateFromGroupUpdate:0];
    goto LABEL_51;
  }

  v56 = CAFCharacteristicLogging();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    [CAFCharacteristic initWithService:serviceCopy config:&v9->_instanceID];
  }

LABEL_32:
  v38 = 0;
LABEL_53:

  return v38;
}

- (void)dealloc
{
  v3 = [(CAFCharacteristic *)self car];
  [v3 enableNotificationForCharacteristic:self enable:0 response:0];

  v4.receiver = self;
  v4.super_class = CAFCharacteristic;
  [(CAFCharacteristic *)&v4 dealloc];
}

- (unint64_t)hash
{
  uniqueIdentifier = [(CAFCharacteristic *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uniqueIdentifier = [(CAFCharacteristic *)equalCopy uniqueIdentifier];
      uniqueIdentifier2 = [(CAFCharacteristic *)self uniqueIdentifier];
      v7 = [uniqueIdentifier isEqual:uniqueIdentifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (CAFCar)car
{
  accessory = [(CAFCharacteristic *)self accessory];
  v3 = [accessory car];

  return v3;
}

- (CAFAccessory)accessory
{
  service = [(CAFCharacteristic *)self service];
  accessory = [service accessory];

  return accessory;
}

- (BOOL)isCurrent
{
  os_unfair_lock_lock(&self->_valueLock);
  IsCurrent = CAFCharacteristicStateIsCurrent([(CAFCharacteristic *)self lockState]);
  os_unfair_lock_unlock(&self->_valueLock);
  return IsCurrent;
}

- (BOOL)isInitializing
{
  if ([(CAFCharacteristic *)self initializationFinished])
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_valueLock);
  IsInitializing = CAFCharacteristicStateIsInitializing([(CAFCharacteristic *)self lockState]);
  if ((IsInitializing & 1) == 0)
  {
    [(CAFCharacteristic *)self setInitializationFinished:1];
  }

  os_unfair_lock_unlock(&self->_valueLock);
  return IsInitializing;
}

- (id)value
{
  os_unfair_lock_lock(&self->_valueLock);
  if ([(CAFCharacteristic *)self lockState]> 3)
  {
    [(CAFCharacteristic *)self pendingValue];
  }

  else
  {
    [(CAFCharacteristic *)self cachedValue];
  }
  v3 = ;
  os_unfair_lock_unlock(&self->_valueLock);

  return v3;
}

- (void)setValue:(id)value
{
  v27 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if ([(CAFCharacteristic *)self writable])
  {
    if ([(CAFCharacteristic *)self isDisabled])
    {
      v5 = CAFCharacteristicLogging();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [CAFCharacteristic setValue:];
      }

      goto LABEL_19;
    }

    isInitializing = [(CAFCharacteristic *)self isInitializing];
    v5 = CAFCharacteristicLogging();
    v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (isInitializing)
    {
      if (v8)
      {
        [CAFCharacteristic setValue:];
      }

      goto LABEL_19;
    }

    if (v8)
    {
      [CAFCharacteristic setValue:];
    }

    v9 = CARSignpostLogForCategory();
    if (self)
    {
      v10 = CARSignpostLogForCategory();
      v11 = os_signpost_id_make_with_pointer(v10, self);

      if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_18:

        os_unfair_lock_lock(&self->_valueLock);
        [(CAFCharacteristic *)self setLockState:5];
        v20 = 0;
        v5 = [(CAFCharacteristic *)self encodeValue:valueCopy error:&v20];
        v15 = v20;
        [(CAFCharacteristic *)self _lock_setError:v15];
        [(CAFCharacteristic *)self setPendingValue:valueCopy];
        [(CAFCharacteristic *)self setTransactionId:[(CAFCharacteristic *)self transactionId]+ 1];
        os_unfair_lock_unlock(&self->_valueLock);
        [(CAFCharacteristic *)self _didUpdateFromGroupUpdate:0];
        objc_initWeak(buf, self);
        v16 = [(CAFCharacteristic *)self car];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __30__CAFCharacteristic_setValue___block_invoke;
        v18[3] = &unk_27890F478;
        objc_copyWeak(&v19, buf);
        [v16 writeCharacteristic:self value:v5 response:v18];

        objc_destroyWeak(&v19);
        objc_destroyWeak(buf);

        goto LABEL_19;
      }
    }

    else
    {
      v11 = 0xEEEEB0B5B2B2EEEELL;
    }

    if (os_signpost_enabled(v9))
    {
      name = [(CAFCharacteristic *)self name];
      pluginID = [(CAFCharacteristic *)self pluginID];
      instanceID = [(CAFCharacteristic *)self instanceID];
      *buf = 138543874;
      v22 = name;
      v23 = 2114;
      v24 = pluginID;
      v25 = 2114;
      v26 = instanceID;
      _os_signpost_emit_with_name_impl(&dword_231618000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Set", "Characteristic: %{public}@ pluginID: %{public}@ instanceID: %{public}@", buf, 0x20u);
    }

    goto LABEL_18;
  }

  cAF_writeToReadonlyError = [MEMORY[0x277CCA9B8] CAF_writeToReadonlyError];
  [(CAFCharacteristic *)self setError:cAF_writeToReadonlyError];

  v5 = CAFCharacteristicLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CAFCharacteristic setValue:];
  }

LABEL_19:

  v17 = *MEMORY[0x277D85DE8];
}

void __30__CAFCharacteristic_setValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained instanceID];
  [WeakRetained handleWrite:v5 value:v3];

  v6 = CARSignpostLogForCategory();
  if (WeakRetained)
  {
    v7 = CARSignpostLogForCategory();
    v8 = os_signpost_id_make_with_pointer(v7, WeakRetained);

    if (v8 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0xEEEEB0B5B2B2EEEELL;
  }

  if (os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_231618000, v6, OS_SIGNPOST_INTERVAL_END, v8, "Set", &unk_231733279, v9, 2u);
  }

LABEL_7:
}

- (void)groupInitializationRequested
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_231618000, v0, v1, "%{public}@ groupInitializationRequested", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (NSString)formattedValue
{
  value = [(CAFCharacteristic *)self value];
  v3 = [value description];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"(null)";
  }

  v6 = v5;

  return &v5->isa;
}

- (BOOL)isInvalid
{
  cachedValue = [(CAFCharacteristic *)self cachedValue];
  v3 = cachedValue == 0;

  return v3;
}

- (BOOL)hasError
{
  error = [(CAFCharacteristic *)self error];
  v3 = error != 0;

  return v3;
}

- (NSError)error
{
  os_unfair_lock_lock(&self->_valueLock);
  v3 = [(NSError *)self->_error copy];
  os_unfair_lock_unlock(&self->_valueLock);

  return v3;
}

- (void)setError:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock(&self->_valueLock);
  v5 = [(CAFCharacteristic *)self _lock_setError:errorCopy];

  os_unfair_lock_unlock(&self->_valueLock);
  if (v5)
  {

    [(CAFCharacteristic *)self _didUpdateFromGroupUpdate:0];
  }
}

- (BOOL)_lock_setError:(id)error
{
  errorCopy = error;
  error = self->_error;
  p_error = &self->_error;
  v8 = BSEqualObjects();
  if ((v8 & 1) == 0)
  {
    objc_storeStrong(p_error, error);
  }

  return v8 ^ 1;
}

- (void)updateValueRequiringRead:(BOOL)read
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = CARSignpostLogForCategory();
  v6 = 0xEEEEB0B5B2B2EEEELL;
  v7 = 0xEEEEB0B5B2B2EEEELL;
  if (!self || (CARSignpostLogForCategory(), v8 = objc_claimAutoreleasedReturnValue(), v7 = os_signpost_id_make_with_pointer(v8, self), v8, v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL))
  {
    if (os_signpost_enabled(v5))
    {
      name = [(CAFCharacteristic *)self name];
      pluginID = [(CAFCharacteristic *)self pluginID];
      instanceID = [(CAFCharacteristic *)self instanceID];
      *buf = 138543874;
      v33 = name;
      v34 = 2114;
      v35 = pluginID;
      v36 = 2114;
      v37 = instanceID;
      _os_signpost_emit_with_name_impl(&dword_231618000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Get", "Characteristic: %{public}@ pluginID: %{public}@ instanceID: %{public}@", buf, 0x20u);
    }
  }

  os_unfair_lock_lock(&self->_valueLock);
  if (![(CAFCharacteristic *)self readable])
  {
    goto LABEL_9;
  }

  if (!read)
  {
    characteristicValue = [(CAFCharacteristic *)self characteristicValue];
    v13 = characteristicValue == 0;

    if (!v13)
    {
      characteristicValue2 = [(CAFCharacteristic *)self characteristicValue];
      value = [characteristicValue2 value];
      v31 = 0;
      v16 = [(CAFCharacteristic *)self decodeValue:value error:&v31];
      v17 = v31;

      [(CAFCharacteristic *)self _lock_setError:v17];
      [(CAFCharacteristic *)self setCachedValue:v16];
      [(CAFCharacteristic *)self setPendingValue:0];
      [(CAFCharacteristic *)self setLockState:3];

LABEL_9:
      os_unfair_lock_unlock(&self->_valueLock);
      [(CAFCharacteristic *)self _didUpdateFromGroupUpdate:0];
LABEL_12:
      v18 = CAFCharacteristicLogging();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [CAFCharacteristic updateValueRequiringRead:?];
      }

      v19 = CARSignpostLogForCategory();
      if (!self || (CARSignpostLogForCategory(), v20 = objc_claimAutoreleasedReturnValue(), v6 = os_signpost_id_make_with_pointer(v20, self), v20, v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL))
      {
        if (os_signpost_enabled(v19))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_231618000, v19, OS_SIGNPOST_INTERVAL_END, v6, "Get", "Bailed", buf, 2u);
        }
      }

      goto LABEL_19;
    }
  }

  if ([(CAFCharacteristic *)self lockState]== 4)
  {
    os_unfair_lock_unlock(&self->_valueLock);
    goto LABEL_12;
  }

  if ([(CAFCharacteristic *)self lockState]> 3)
  {
    [(CAFCharacteristic *)self setTransactionId:[(CAFCharacteristic *)self transactionId]+ 1];
    os_unfair_lock_unlock(&self->_valueLock);
  }

  else
  {
    characteristicValue3 = [(CAFCharacteristic *)self characteristicValue];
    value2 = [characteristicValue3 value];
    v30 = 0;
    v24 = [(CAFCharacteristic *)self decodeValue:value2 error:&v30];
    v25 = v30;
    [(CAFCharacteristic *)self setPendingValue:v24];

    [(CAFCharacteristic *)self _lock_setError:v25];
    [(CAFCharacteristic *)self setLockState:4];
    [(CAFCharacteristic *)self setTransactionId:[(CAFCharacteristic *)self transactionId]+ 1];
    os_unfair_lock_unlock(&self->_valueLock);
    [(CAFCharacteristic *)self _didUpdateFromGroupUpdate:0];
  }

  v26 = CAFCharacteristicLogging();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [CAFCharacteristic updateValueRequiringRead:?];
  }

  objc_initWeak(buf, self);
  v27 = [(CAFCharacteristic *)self car];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __46__CAFCharacteristic_updateValueRequiringRead___block_invoke;
  v28[3] = &unk_27890F478;
  objc_copyWeak(&v29, buf);
  [v27 readCharacteristic:self response:v28];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
LABEL_19:
  v21 = *MEMORY[0x277D85DE8];
}

void __46__CAFCharacteristic_updateValueRequiringRead___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained instanceID];
  [WeakRetained handleRead:v5 value:v3];

  v6 = CARSignpostLogForCategory();
  if (WeakRetained)
  {
    v7 = CARSignpostLogForCategory();
    v8 = os_signpost_id_make_with_pointer(v7, WeakRetained);

    if (v8 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0xEEEEB0B5B2B2EEEELL;
  }

  if (os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_231618000, v6, OS_SIGNPOST_INTERVAL_END, v8, "Get", &unk_231733279, v9, 2u);
  }

LABEL_7:
}

- (void)_readValueCompletionTransactionID:(unint64_t)d error:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  os_unfair_lock_lock(&self->_valueLock);
  transactionId = [(CAFCharacteristic *)self transactionId];
  if (transactionId == d)
  {
    characteristicValue = [(CAFCharacteristic *)self characteristicValue];
    value = [characteristicValue value];
    v18 = 0;
    v10 = [(CAFCharacteristic *)self decodeValue:value error:&v18];
    v11 = v18;

    if (errorCopy)
    {
      v12 = errorCopy;
    }

    else
    {
      v12 = v11;
    }

    [(CAFCharacteristic *)self _lock_setError:v12];
    [(CAFCharacteristic *)self setCachedValue:v10];

    [(CAFCharacteristic *)self setPendingValue:0];
    [(CAFCharacteristic *)self setLockState:3];
    os_unfair_lock_unlock(&self->_valueLock);
    v15 = CAFCharacteristicLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      fullDescription = [(CAFCharacteristic *)self fullDescription];
      *buf = 138543874;
      v20 = fullDescription;
      v21 = 2114;
      dCopy = v10;
      v23 = 2114;
      v24 = errorCopy;
      _os_log_debug_impl(&dword_231618000, v15, OS_LOG_TYPE_DEBUG, "%{public}@ readValue completion: value=%{public}@ error=<%{public}@>", buf, 0x20u);
    }

    [(CAFCharacteristic *)self _didUpdateFromGroupUpdate:0];
  }

  else
  {
    v13 = transactionId;
    os_unfair_lock_unlock(&self->_valueLock);
    v10 = CAFCharacteristicLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      fullDescription2 = [(CAFCharacteristic *)self fullDescription];
      *buf = 138543874;
      v20 = fullDescription2;
      v21 = 2048;
      dCopy = d;
      v23 = 2048;
      v24 = v13;
      _os_log_debug_impl(&dword_231618000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ readValue completion: transactionID %lu != %lu", buf, 0x20u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (NSString)format
{
  v2 = objc_opt_class();

  return [v2 primaryCharacteristicFormat];
}

- (NSString)baseFormat
{
  metaData = [(CAFCharacteristic *)self metaData];
  formatString = [metaData formatString];

  return formatString;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CAFCharacteristic *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CAFCharacteristic *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (NSString)description
{
  cachedDescription = [(CAFCharacteristic *)self cachedDescription];
  v3 = [cachedDescription description];

  return v3;
}

- (unint64_t)state
{
  os_unfair_lock_lock(&self->_valueLock);
  lockState = [(CAFCharacteristic *)self lockState];
  os_unfair_lock_unlock(&self->_valueLock);
  return lockState;
}

- (void)_updateStateIfNeeded
{
  OUTLINED_FUNCTION_4_1();
  v10 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromCharacteristicState([v1 lastState]);
  v9 = NSStringFromCharacteristicState(v0);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_didUpdateFromGroupUpdate:(BOOL)update
{
  v5 = dispatch_get_global_queue(33, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__CAFCharacteristic__didUpdateFromGroupUpdate___block_invoke;
  v6[3] = &unk_27890F4A0;
  v6[4] = self;
  updateCopy = update;
  dispatch_async(v5, v6);
}

void __47__CAFCharacteristic__didUpdateFromGroupUpdate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateStateIfNeeded];
  v2 = [*(a1 + 32) service];
  [v2 _characteristicDidUpdate:*(a1 + 32) fromGroupUpdate:*(a1 + 40)];

  v3 = [*(a1 + 32) observers];
  [v3 characteristicDidUpdate:*(a1 + 32) fromGroupUpdate:*(a1 + 40)];
}

- (BOOL)supportsStates
{
  if ([(CAFCharacteristic *)self supportsInvalid]|| [(CAFCharacteristic *)self supportsError])
  {
    return 1;
  }

  return [(CAFCharacteristic *)self supportsDisable];
}

- (BOOL)supportsError
{
  errorInstanceID = [(CAFCharacteristic *)self errorInstanceID];
  v3 = errorInstanceID != 0;

  return v3;
}

- (BOOL)supportsDisable
{
  disabledInstanceID = [(CAFCharacteristic *)self disabledInstanceID];
  v3 = disabledInstanceID != 0;

  return v3;
}

- (BOOL)supportsRestricted
{
  restrictedInstanceID = [(CAFCharacteristic *)self restrictedInstanceID];
  v3 = restrictedInstanceID != 0;

  return v3;
}

- (BOOL)supportsNotifier
{
  notifierInstanceID = [(CAFCharacteristic *)self notifierInstanceID];
  v3 = notifierInstanceID != 0;

  return v3;
}

- (id)propertiesDescription
{
  v3 = &stru_284626CA8;
  if ([(CAFCharacteristic *)self notifies])
  {
    isNotificationEnabled = [(CAFCharacteristic *)self isNotificationEnabled];
    v5 = @"n";
    if (isNotificationEnabled)
    {
      v5 = @"N";
    }

    v3 = v5;
  }

  v6 = MEMORY[0x277CCACA8];
  if ([(CAFCharacteristic *)self readable])
  {
    v7 = @"R";
  }

  else
  {
    v7 = &stru_284626CA8;
  }

  if ([(CAFCharacteristic *)self writable])
  {
    v8 = @"W";
  }

  else
  {
    v8 = &stru_284626CA8;
  }

  if ([(CAFCharacteristic *)self isMutable])
  {
    v9 = @"M";
  }

  else
  {
    v9 = &stru_284626CA8;
  }

  if ([(CAFCharacteristic *)self hasInitialValue])
  {
    v10 = @"I";
  }

  else
  {
    v10 = &stru_284626CA8;
  }

  if ([(CAFCharacteristic *)self hasLargePayload])
  {
    v11 = @"L";
  }

  else
  {
    v11 = &stru_284626CA8;
  }

  if ([(CAFCharacteristic *)self hidden])
  {
    v12 = @"H";
  }

  else
  {
    v12 = &stru_284626CA8;
  }

  supportsStates = [(CAFCharacteristic *)self supportsStates];
  v14 = @"S";
  if (!supportsStates)
  {
    v14 = &stru_284626CA8;
  }

  v15 = [v6 stringWithFormat:@"(%@%@%@%@%@%@%@%@)", v7, v8, v3, v9, v10, v11, v12, v14];

  return v15;
}

- (id)allInstanceIDs
{
  v3 = objc_opt_new();
  instanceID = [(CAFCharacteristic *)self instanceID];
  [v3 addObject:instanceID];

  errorInstanceID = [(CAFCharacteristic *)self errorInstanceID];

  if (errorInstanceID)
  {
    errorInstanceID2 = [(CAFCharacteristic *)self errorInstanceID];
    [v3 addObject:errorInstanceID2];
  }

  disabledInstanceID = [(CAFCharacteristic *)self disabledInstanceID];

  if (disabledInstanceID)
  {
    disabledInstanceID2 = [(CAFCharacteristic *)self disabledInstanceID];
    [v3 addObject:disabledInstanceID2];
  }

  notifierInstanceID = [(CAFCharacteristic *)self notifierInstanceID];

  if (notifierInstanceID)
  {
    notifierInstanceID2 = [(CAFCharacteristic *)self notifierInstanceID];
    [v3 addObject:notifierInstanceID2];
  }

  restrictedInstanceID = [(CAFCharacteristic *)self restrictedInstanceID];

  if (restrictedInstanceID)
  {
    restrictedInstanceID2 = [(CAFCharacteristic *)self restrictedInstanceID];
    [v3 addObject:restrictedInstanceID2];
  }

  return v3;
}

- (id)readInstanceIDs
{
  v3 = objc_opt_new();
  instanceID = [(CAFCharacteristic *)self instanceID];
  [v3 addObject:instanceID];

  errorInstanceID = [(CAFCharacteristic *)self errorInstanceID];

  if (errorInstanceID)
  {
    errorInstanceID2 = [(CAFCharacteristic *)self errorInstanceID];
    [v3 addObject:errorInstanceID2];
  }

  disabledInstanceID = [(CAFCharacteristic *)self disabledInstanceID];

  if (disabledInstanceID)
  {
    disabledInstanceID2 = [(CAFCharacteristic *)self disabledInstanceID];
    [v3 addObject:disabledInstanceID2];
  }

  restrictedInstanceID = [(CAFCharacteristic *)self restrictedInstanceID];

  if (restrictedInstanceID)
  {
    restrictedInstanceID2 = [(CAFCharacteristic *)self restrictedInstanceID];
    [v3 addObject:restrictedInstanceID2];
  }

  return v3;
}

- (id)registrationInstanceIDs
{
  v3 = objc_opt_new();
  if ([(CAFCharacteristic *)self isMutable])
  {
    instanceID = [(CAFCharacteristic *)self instanceID];
    [v3 addObject:instanceID];
  }

  errorInstanceID = [(CAFCharacteristic *)self errorInstanceID];

  if (errorInstanceID)
  {
    errorInstanceID2 = [(CAFCharacteristic *)self errorInstanceID];
    [v3 addObject:errorInstanceID2];
  }

  disabledInstanceID = [(CAFCharacteristic *)self disabledInstanceID];

  if (disabledInstanceID)
  {
    disabledInstanceID2 = [(CAFCharacteristic *)self disabledInstanceID];
    [v3 addObject:disabledInstanceID2];
  }

  restrictedInstanceID = [(CAFCharacteristic *)self restrictedInstanceID];

  if (restrictedInstanceID)
  {
    restrictedInstanceID2 = [(CAFCharacteristic *)self restrictedInstanceID];
    [v3 addObject:restrictedInstanceID2];
  }

  return v3;
}

- (id)pluginID
{
  service = [(CAFCharacteristic *)self service];
  accessory = [service accessory];
  pluginID = [accessory pluginID];

  return pluginID;
}

+ (id)characteristicFormats
{
  v9[1] = *MEMORY[0x277D85DE8];
  primaryCharacteristicFormat = [self primaryCharacteristicFormat];
  v9[0] = primaryCharacteristicFormat;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  secondaryCharacteristicFormats = [self secondaryCharacteristicFormats];
  v6 = [v4 arrayByAddingObjectsFromArray:secondaryCharacteristicFormats];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)handleValueAndError:(id)error value:(id)value
{
  v46 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  valueCopy = value;
  instanceID = [(CAFCharacteristic *)self instanceID];
  v9 = [errorCopy isEqual:instanceID];

  if (!v9)
  {
    errorInstanceID = [(CAFCharacteristic *)self errorInstanceID];
    v13 = [errorCopy isEqual:errorInstanceID];

    if (v13)
    {
      objc_opt_class();
      value = [valueCopy value];
      if (value && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v15 = value;
      }

      else
      {
        v15 = 0;
      }

      v19 = CAFCharacteristicLogging();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        pluginID = [(CAFCharacteristic *)self pluginID];
        instanceID2 = [(CAFCharacteristic *)self instanceID];
        v38 = 138413058;
        v39 = pluginID;
        v40 = 2112;
        v41 = instanceID2;
        v42 = 2112;
        v43 = errorCopy;
        v44 = 2112;
        v45 = v15;
        _os_log_debug_impl(&dword_231618000, v19, OS_LOG_TYPE_DEBUG, "Handle error state update pluginID: %@ instanceID: %@ (%@) state value: %@", &v38, 0x2Au);
      }

      os_unfair_lock_lock(&self->_valueLock);
      [(CAFCharacteristic *)self setHasErrorState:[v15 BOOLValue]];
    }

    else
    {
      disabledInstanceID = [(CAFCharacteristic *)self disabledInstanceID];
      v17 = [errorCopy isEqual:disabledInstanceID];

      if (v17)
      {
        objc_opt_class();
        value2 = [valueCopy value];
        if (value2 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v15 = value2;
        }

        else
        {
          v15 = 0;
        }

        v23 = CAFCharacteristicLogging();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          pluginID2 = [(CAFCharacteristic *)self pluginID];
          instanceID3 = [(CAFCharacteristic *)self instanceID];
          v38 = 138413058;
          v39 = pluginID2;
          v40 = 2112;
          v41 = instanceID3;
          v42 = 2112;
          v43 = errorCopy;
          v44 = 2112;
          v45 = v15;
          _os_log_debug_impl(&dword_231618000, v23, OS_LOG_TYPE_DEBUG, "Handle disabled state update pluginID: %@ instanceID: %@ (%@) state value: %@", &v38, 0x2Au);
        }

        os_unfair_lock_lock(&self->_valueLock);
        [(CAFCharacteristic *)self setIsDisabled:[v15 BOOLValue]];
      }

      else
      {
        restrictedInstanceID = [(CAFCharacteristic *)self restrictedInstanceID];
        v21 = [errorCopy isEqual:restrictedInstanceID];

        if (!v21)
        {
          notifierInstanceID = [(CAFCharacteristic *)self notifierInstanceID];
          v25 = [errorCopy isEqual:notifierInstanceID];

          if (!v25)
          {
            goto LABEL_38;
          }

          v26 = CAFCharacteristicLogging();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [CAFCharacteristic handleValueAndError:value:];
          }

          if ([(CAFCharacteristic *)self shouldInitialize])
          {
            service = [(CAFCharacteristic *)self service];
            observers = [service observers];
            hasObservers = [observers hasObservers];

            if (hasObservers)
            {
              [(CAFCharacteristic *)self updateValueRequiringRead:1];
              goto LABEL_38;
            }

            v15 = CAFGeneralLogging();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              [CAFCharacteristic handleValueAndError:? value:?];
            }
          }

          else
          {
            v15 = CAFGeneralLogging();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              [CAFCharacteristic handleValueAndError:? value:?];
            }
          }

LABEL_37:

          goto LABEL_38;
        }

        objc_opt_class();
        value3 = [valueCopy value];
        if (value3 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v15 = value3;
        }

        else
        {
          v15 = 0;
        }

        v30 = CAFCharacteristicLogging();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          pluginID3 = [(CAFCharacteristic *)self pluginID];
          instanceID4 = [(CAFCharacteristic *)self instanceID];
          v38 = 138413058;
          v39 = pluginID3;
          v40 = 2112;
          v41 = instanceID4;
          v42 = 2112;
          v43 = errorCopy;
          v44 = 2112;
          v45 = v15;
          _os_log_debug_impl(&dword_231618000, v30, OS_LOG_TYPE_DEBUG, "Handle restricted state update pluginID: %@ instanceID: %@ (%@) state value: %@", &v38, 0x2Au);
        }

        os_unfair_lock_lock(&self->_valueLock);
        [(CAFCharacteristic *)self setIsRestricted:[v15 BOOLValue]];
      }
    }

    os_unfair_lock_unlock(&self->_valueLock);
    [(CAFCharacteristic *)self _didUpdateFromGroupUpdate:0];
    goto LABEL_37;
  }

  os_unfair_lock_lock(&self->_valueLock);
  [(CAFCharacteristic *)self setCharacteristicValue:valueCopy];
  os_unfair_lock_unlock(&self->_valueLock);
  if (valueCopy)
  {
    error = [valueCopy error];

    if (error)
    {
      error2 = [valueCopy error];
      [(CAFCharacteristic *)self setError:error2];
    }
  }

  [(CAFCharacteristic *)self setCachedValueIfAvailableForGroupUpdate:0];
LABEL_38:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdateWithInstanceID:(id)d value:(id)value
{
  v18 = *MEMORY[0x277D85DE8];
  [(CAFCharacteristic *)self handleValueAndError:d value:value];
  v5 = CARSignpostLogForCategory();
  if (self)
  {
    v6 = CARSignpostLogForCategory();
    v7 = os_signpost_id_make_with_pointer(v6, self);

    if (v7 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0xEEEEB0B5B2B2EEEELL;
  }

  if (os_signpost_enabled(v5))
  {
    name = [(CAFCharacteristic *)self name];
    pluginID = [(CAFCharacteristic *)self pluginID];
    instanceID = [(CAFCharacteristic *)self instanceID];
    v12 = 138543874;
    v13 = name;
    v14 = 2114;
    v15 = pluginID;
    v16 = 2114;
    v17 = instanceID;
    _os_signpost_emit_with_name_impl(&dword_231618000, v5, OS_SIGNPOST_EVENT, v7, "Update", "Characteristic: %{public}@ pluginID: %{public}@ instanceID: %{public}@", &v12, 0x20u);
  }

LABEL_7:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleWrite:(id)write value:(id)value
{
  valueCopy = value;
  writeCopy = write;
  instanceID = [(CAFCharacteristic *)self instanceID];
  v9 = [writeCopy isEqual:instanceID];

  if (v9)
  {
    v10 = CAFCharacteristicLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(CAFCharacteristic *)self handleWrite:valueCopy value:v10];
    }

    if (valueCopy)
    {
      error = [valueCopy error];

      if (error)
      {
        error2 = [valueCopy error];
        [(CAFCharacteristic *)self setError:error2];
      }
    }
  }
}

- (void)handleError:(id)error value:(id)value
{
  valueCopy = value;
  errorCopy = error;
  instanceID = [(CAFCharacteristic *)self instanceID];
  v9 = [errorCopy isEqual:instanceID];

  if (v9)
  {
    v10 = CAFCharacteristicLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CAFCharacteristic handleError:value:];
    }

    [(CAFCharacteristic *)self setError:valueCopy];
  }
}

- (NSString)fullDescription
{
  os_unfair_lock_lock(&self->_valueLock);
  lockState = [(CAFCharacteristic *)self lockState];
  transactionId = [(CAFCharacteristic *)self transactionId];
  v6 = 0x277CCA000uLL;
  v7 = MEMORY[0x277CCACA8];
  characteristicValue = [(CAFCharacteristic *)self characteristicValue];
  if (characteristicValue)
  {
    characteristicValue2 = [(CAFCharacteristic *)self characteristicValue];
    value = [characteristicValue2 value];
  }

  else
  {
    value = 0;
  }

  cachedValue = [(CAFCharacteristic *)self cachedValue];
  pendingValue = [(CAFCharacteristic *)self pendingValue];
  v12 = [v7 stringWithFormat:@"[V:%@ C:%@ P:%@]", value, cachedValue, pendingValue];

  if (characteristicValue)
  {
  }

  v13 = [(NSError *)self->_error copy];
  os_unfair_lock_unlock(&self->_valueLock);
  descriptionExtras = [(CAFCharacteristic *)self descriptionExtras];
  if ([descriptionExtras length])
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", descriptionExtras];
  }

  else
  {
    v15 = 0;
  }

  if ([(CAFCharacteristic *)self supportsStates])
  {
    v36 = MEMORY[0x277CCACA8];
    if ([(CAFCharacteristic *)self isInvalid])
    {
      v16 = @"I";
    }

    else
    {
      v16 = &stru_284626CA8;
    }

    v17 = transactionId;
    if ([(CAFCharacteristic *)self hasErrorState])
    {
      v18 = @"E";
    }

    else
    {
      v18 = &stru_284626CA8;
    }

    v19 = v12;
    v20 = lockState;
    if ([(CAFCharacteristic *)self isDisabled])
    {
      v21 = @"D";
    }

    else
    {
      v21 = &stru_284626CA8;
    }

    isRestricted = [(CAFCharacteristic *)self isRestricted];
    v23 = @"R";
    if (!isRestricted)
    {
      v23 = &stru_284626CA8;
    }

    v35 = v21;
    lockState = v20;
    v12 = v19;
    v34 = v18;
    transactionId = v17;
    v6 = 0x277CCA000;
    v24 = [v36 stringWithFormat:@" states=%@%@%@%@", v16, v34, v35, v23];
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v6 + 3240);
  v26 = [(CAFCharacteristic *)self description];
  v27 = NSStringFromCharacteristicState(lockState);
  v28 = v27;
  if (v24)
  {
    v29 = v24;
  }

  else
  {
    v29 = &stru_284626CA8;
  }

  v30 = @"NO";
  if (v13)
  {
    v30 = v13;
  }

  if (v15)
  {
    v31 = v15;
  }

  else
  {
    v31 = &stru_284626CA8;
  }

  v32 = [v25 stringWithFormat:@"%@(state=%@(%lu) values=%@%@ error=%@%@)", v26, v27, transactionId, v12, v29, v30, v31];

  return v32;
}

- (id)currentDescriptionForCache:(id)cache
{
  v30 = MEMORY[0x277CCACA8];
  v29 = objc_opt_class();
  name = [(CAFCharacteristic *)self name];
  pluginID = [(CAFCharacteristic *)self pluginID];
  instanceID = [(CAFCharacteristic *)self instanceID];
  errorInstanceID = [(CAFCharacteristic *)self errorInstanceID];
  v33 = errorInstanceID;
  if (errorInstanceID)
  {
    v5 = errorInstanceID;
  }

  else
  {
    v5 = @"-";
  }

  v26 = v5;
  disabledInstanceID = [(CAFCharacteristic *)self disabledInstanceID];
  v32 = disabledInstanceID;
  if (disabledInstanceID)
  {
    v7 = disabledInstanceID;
  }

  else
  {
    v7 = @"-";
  }

  v25 = v7;
  notifierInstanceID = [(CAFCharacteristic *)self notifierInstanceID];
  v31 = notifierInstanceID;
  if (notifierInstanceID)
  {
    v9 = notifierInstanceID;
  }

  else
  {
    v9 = @"-";
  }

  v24 = v9;
  restrictedInstanceID = [(CAFCharacteristic *)self restrictedInstanceID];
  v11 = restrictedInstanceID;
  if (restrictedInstanceID)
  {
    v12 = restrictedInstanceID;
  }

  else
  {
    v12 = @"-";
  }

  v23 = v12;
  characteristicType = [(CAFCharacteristic *)self characteristicType];
  accessory = [(CAFCharacteristic *)self accessory];
  accessory2 = [(CAFCharacteristic *)self accessory];
  instanceID2 = [accessory2 instanceID];
  service = [(CAFCharacteristic *)self service];
  service2 = [(CAFCharacteristic *)self service];
  instanceID3 = [service2 instanceID];
  propertiesDescription = [(CAFCharacteristic *)self propertiesDescription];
  v19 = [v30 stringWithFormat:@"<%@: %p %@ %@ %@ (%@|%@|%@|%@) type=%@ accessory=(%p)%@ service=(%p)%@ properties=%@>", v29, self, name, pluginID, instanceID, v26, v25, v24, v23, characteristicType, accessory, instanceID2, service, instanceID3, propertiesDescription];

  return v19;
}

- (CAFService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (void)initWithService:config:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_231618000, v0, v1, "%{public}@ shouldInitialize=NO", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:config:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_231618000, v0, v1, "%{public}@ shouldDefer=YES", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:(void *)a1 config:(uint64_t *)a2 .cold.3(void *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a1 pluginID];
  v4 = *a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_231618000, v5, v6, "Parsing characteristic config from pluginID: %@ instanceID: %@ failed for metaData", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:(void *)a1 config:(uint64_t *)a2 .cold.4(void *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a1 pluginID];
  v4 = *a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_231618000, v5, v6, "Parsing characteristic config from pluginID: %@ instanceID: %@ failed for characteristicType", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:(void *)a1 config:.cold.5(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a1 pluginID];
  v10 = [a1 instanceID];
  OUTLINED_FUNCTION_1(&dword_231618000, v3, v4, "Parsing characteristic config from pluginID: %@ service instanceID: %@ failed for instanceID", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setValue:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_231618000, v0, OS_LOG_TYPE_ERROR, "%{public}@ characteristic is not writable", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)setValue:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2114;
  v5 = v0;
  _os_log_debug_impl(&dword_231618000, v1, OS_LOG_TYPE_DEBUG, "%{public}@ setValue: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setValue:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_231618000, v0, v1, "%{public}@ unable to set value while initializing", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setValue:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_231618000, v0, OS_LOG_TYPE_ERROR, "%{public}@ characteristic is currently disabled", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)setCachedValueIfAvailableForGroupUpdate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_231618000, v0, v1, "%{public}@ no value to cache", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateValueRequiringRead:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateValueRequiringRead:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleValueAndError:value:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 pluginID];
  v3 = [v0 instanceID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleValueAndError:(void *)a1 value:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 service];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleValueAndError:(void *)a1 value:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 service];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleWrite:(NSObject *)a3 value:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = [a1 pluginID];
  v9 = [a1 instanceID];
  if (a2)
  {
    v3 = [a2 error];
    if (v3)
    {
      v12 = MEMORY[0x277CCACA8];
      v4 = [a2 error];
      v11 = [v12 stringWithFormat:@" error: %@", v4];
      v10 = 1;
    }

    else
    {
      v10 = 0;
      v11 = &stru_284626CA8;
    }
  }

  else
  {
    v10 = 0;
    v11 = &stru_284626CA8;
  }

  *buf = 138412802;
  v15 = v8;
  v16 = 2112;
  v17 = v9;
  v18 = 2112;
  v19 = v11;
  _os_log_debug_impl(&dword_231618000, a3, OS_LOG_TYPE_DEBUG, "Handle write pluginID: %@ instanceID: %@%@", buf, 0x20u);
  if (v10)
  {
  }

  if (a2)
  {
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleError:value:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 pluginID];
  v3 = [v0 instanceID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleRegistrationWithInstanceID:(void *)a1 registered:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 pluginID];
  v3 = [a1 instanceID];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

@end