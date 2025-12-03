@interface HAPAccessoryServerBTLE
+ (id)hapUUIDFromBTLEUUID:(id)d;
- (BOOL)isCached;
- (BOOL)isPaired;
- (BOOL)updatePeripheralIdentifier:(id *)identifier isPairing:(BOOL)pairing;
- (BOOL)updateResumeSessionID:(unint64_t)d;
- (CBPeripheral)peripheral;
- (HAPAccessoryServerBTLE)initWithPeripheral:(id)peripheral name:(id)name pairingUsername:(id)username statusFlags:(id)flags stateNumber:(id)number stateChanged:(BOOL)changed connectReason:(unsigned __int8)reason configNumber:(id)self0 category:(id)self1 setupHash:(id)self2 connectionIdleTime:(unsigned __int8)self3 browser:(id)self4 keyStore:(id)self5 whbStableIdentifier:(id)self6;
- (HAPAccessoryServerBrowserBTLE)browser;
- (HAPBLEPeripheral)blePeripheral;
- (NSNumber)stateNumber;
- (NSString)shortDescription;
- (id)readAndResetHAPMetrics:(BOOL)metrics;
- (unsigned)connectReason;
- (void)configureCharacteristics:(id)characteristics queue:(id)queue withCompletionHandler:(id)handler;
- (void)generateBroadcastKey:(unsigned __int8)key queue:(id)queue withCompletionHandler:(id)handler;
- (void)handleConnectionWithPeripheral:(id)peripheral withError:(id)error;
- (void)handleDisconnectionWithError:(id)error completionHandler:(id)handler;
- (void)incrementHAPBTLEMetricsConnectionCount;
- (void)incrementHAPBTLEMetricsDiscoveryCount;
- (void)setConnectReason:(unsigned __int8)reason;
- (void)setStateNumber:(id)number;
- (void)updateConnectionIdleTime:(unsigned __int8)time;
@end

@implementation HAPAccessoryServerBTLE

- (HAPBLEPeripheral)blePeripheral
{
  WeakRetained = objc_loadWeakRetained(&self->_blePeripheral);

  return WeakRetained;
}

- (HAPAccessoryServerBrowserBTLE)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (CBPeripheral)peripheral
{
  WeakRetained = objc_loadWeakRetained(&self->_peripheral);

  return WeakRetained;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HAPAccessoryServerBTLE;
  shortDescription = [(HAPAccessoryServer *)&v8 shortDescription];
  stateNumber = [(HAPAccessoryServerBTLE *)self stateNumber];
  v6 = [v3 stringWithFormat:@"%@ (%@)", shortDescription, stateNumber];

  return v6;
}

- (BOOL)isCached
{
  blePeripheral = [(HAPAccessoryServerBTLE *)self blePeripheral];
  isCached = [blePeripheral isCached];

  return isCached;
}

- (BOOL)isPaired
{
  browser = [(HAPAccessoryServerBTLE *)self browser];
  identifier = [(HAPAccessoryServer *)self identifier];
  v5 = [browser isPaired:identifier];

  return v5;
}

- (void)generateBroadcastKey:(unsigned __int8)key queue:(id)queue withCompletionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = MEMORY[0x277CCACA8];
  v12 = NSStringFromSelector(a2);
  v13 = [v11 stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [v9 exceptionWithName:v10 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)configureCharacteristics:(id)characteristics queue:(id)queue withCompletionHandler:(id)handler
{
  characteristicsCopy = characteristics;
  queueCopy = queue;
  handlerCopy = handler;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)updateConnectionIdleTime:(unsigned __int8)time
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (BOOL)updatePeripheralIdentifier:(id *)identifier isPairing:(BOOL)pairing
{
  v42 = *MEMORY[0x277D85DE8];
  browser = [(HAPAccessoryServerBTLE *)self browser];
  identifier = [(HAPAccessoryServer *)self identifier];
  v9 = [browser isPaired:identifier];

  if ((v9 & 1) != 0 || pairing)
  {
    v36 = 0;
    v37 = 0;
    keyStore = [(HAPAccessoryServer *)self keyStore];
    identifier2 = [(HAPAccessoryServer *)self identifier];
    v35 = 0;
    v13 = [keyStore readPeripheralIdentifierForAccessoryIdentifier:identifier2 protocolVersion:0 resumeSessionID:&v36 error:&v35];
    v14 = v35;

    if (v36)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v39 = v18;
        v40 = 2048;
        v41 = v36;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@Initializing BLE Server with resumeSessionID: %llu", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      selfCopy->_resumeSessionID = v36;
    }

    keyStore2 = [(HAPAccessoryServer *)self keyStore];
    blePeripheral = [(HAPAccessoryServerBTLE *)self blePeripheral];
    uniqueBTIdentifier = [blePeripheral uniqueBTIdentifier];
    identifier3 = [(HAPAccessoryServer *)self identifier];
    v34 = 0;
    v10 = [keyStore2 updatePeripheralIdentifier:uniqueBTIdentifier forAccessoryIdentifier:identifier3 protocolVersion:-[HAPAccessoryServerBTLE hapBLEProtocolVersion](self previousVersion:"hapBLEProtocolVersion") resumeSessionID:&v37 error:{-[HAPAccessoryServerBTLE resumeSessionID](self, "resumeSessionID"), &v34}];
    v23 = v34;

    if (v10)
    {
      if (v37 == 1 && [(HAPAccessoryServerBTLE *)self hapBLEProtocolVersion]!= 1)
      {
        v24 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v39 = v27;
          _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Incompatible update BLE 1.0 -> BLE 2.x", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        [(HAPAccessoryServer *)selfCopy2 setIncompatibleUpdate:1];
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v39 = v31;
        v40 = 2112;
        v41 = v23;
        _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to update the peripheral identifier with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      if (identifier)
      {
        *identifier = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Failed to update peripheral" reason:@"Failed to store peripheral identifier to the keystore" suggestion:0 underlyingError:v23];
      }
    }
  }

  else if (identifier)
  {
    [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Failed to update peripheral." reason:@"The accessory is unpaired" suggestion:0 underlyingError:0 marker:214];
    *identifier = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)updateResumeSessionID:(unint64_t)d
{
  v29 = *MEMORY[0x277D85DE8];
  browser = [(HAPAccessoryServerBTLE *)self browser];
  identifier = [(HAPAccessoryServer *)self identifier];
  v7 = [browser isPaired:identifier];

  if (v7)
  {
    self->_resumeSessionID = d;
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v11;
      v27 = 2048;
      dCopy = d;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating resumeSessionID: %llu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    keyStore = [(HAPAccessoryServer *)selfCopy keyStore];
    blePeripheral = [(HAPAccessoryServerBTLE *)selfCopy blePeripheral];
    uniqueBTIdentifier = [blePeripheral uniqueBTIdentifier];
    identifier2 = [(HAPAccessoryServer *)selfCopy identifier];
    v24 = 0;
    v16 = [keyStore updatePeripheralIdentifier:uniqueBTIdentifier forAccessoryIdentifier:identifier2 protocolVersion:-[HAPAccessoryServerBTLE hapBLEProtocolVersion](selfCopy previousVersion:"hapBLEProtocolVersion") resumeSessionID:0 error:{d, &v24}];
    v17 = v24;

    if ((v16 & 1) == 0)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v21;
        v27 = 2114;
        dCopy = v17;
        _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to update the peripheral identifier with error: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)handleDisconnectionWithError:(id)error completionHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)handleConnectionWithPeripheral:(id)peripheral withError:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)setConnectReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  os_unfair_lock_lock_with_options();
  self->_connectReason = reasonCopy;
  if (reasonCopy)
  {
    ++self->_metricHAPBTLEConnectionPerReasonCount;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (unsigned)connectReason
{
  os_unfair_lock_lock_with_options();
  connectReason = self->_connectReason;
  os_unfair_lock_unlock(&self->super._lock);
  return connectReason;
}

- (void)setStateNumber:(id)number
{
  numberCopy = number;
  os_unfair_lock_lock_with_options();
  stateNumber = self->_stateNumber;
  if (HMFEqualObjects())
  {
    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    objc_storeStrong(&self->_stateNumber, number);
    os_unfair_lock_unlock(&self->super._lock);
    delegate = [(HAPAccessoryServer *)self delegate];
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    if (delegateQueue)
    {
      v9 = delegateQueue;
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        delegateQueue2 = [(HAPAccessoryServer *)self delegateQueue];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __41__HAPAccessoryServerBTLE_setStateNumber___block_invoke;
        v12[3] = &unk_2786D7050;
        v13 = delegate;
        selfCopy = self;
        dispatch_async(delegateQueue2, v12);
      }
    }
  }
}

- (NSNumber)stateNumber
{
  os_unfair_lock_lock_with_options();
  v3 = self->_stateNumber;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (HAPAccessoryServerBTLE)initWithPeripheral:(id)peripheral name:(id)name pairingUsername:(id)username statusFlags:(id)flags stateNumber:(id)number stateChanged:(BOOL)changed connectReason:(unsigned __int8)reason configNumber:(id)self0 category:(id)self1 setupHash:(id)self2 connectionIdleTime:(unsigned __int8)self3 browser:(id)self4 keyStore:(id)self5 whbStableIdentifier:(id)self6
{
  peripheralCopy = peripheral;
  nameCopy = name;
  usernameCopy = username;
  flagsCopy = flags;
  obj = number;
  numberCopy = number;
  configNumberCopy = configNumber;
  categoryCopy = category;
  hashCopy = hash;
  browserCopy = browser;
  identifierCopy = identifier;
  v41.receiver = self;
  v41.super_class = HAPAccessoryServerBTLE;
  v27 = [(HAPAccessoryServer *)&v41 initWithKeystore:store];
  v28 = v27;
  if (v27)
  {
    objc_storeWeak(&v27->_blePeripheral, peripheralCopy);
    cbPeripheral = [peripheralCopy cbPeripheral];
    objc_storeWeak(&v28->_peripheral, cbPeripheral);

    v30 = [nameCopy copy];
    name = v28->super._name;
    v28->super._name = v30;

    v32 = [usernameCopy copy];
    identifier = v28->super._identifier;
    v28->super._identifier = v32;

    objc_storeStrong(&v28->_stateNumber, obj);
    v28->_notifyingCharacteristicUpdated = 0;
    v28->_stateChanged = changed;
    v28->_connectReason = reason;
    v28->_connectionIdleTime = time;
    objc_storeWeak(&v28->_browser, browserCopy);
    objc_storeStrong(&v28->_whbStableIdentifier, identifier);
    [(HAPAccessoryServer *)v28 setSetupHash:hashCopy];
    -[HAPAccessoryServer setHasPairings:](v28, "setHasPairings:", ([flagsCopy unsignedCharValue] & 1) == 0);
    [(HAPAccessoryServer *)v28 setCategory:categoryCopy];
    -[HAPAccessoryServer setConfigNumber:](v28, "setConfigNumber:", [configNumberCopy unsignedIntegerValue]);
    [(HAPAccessoryServerBTLE *)v28 updatePeripheralIdentifier:0 isPairing:0];
  }

  return v28;
}

+ (id)hapUUIDFromBTLEUUID:(id)d
{
  dCopy = d;
  v4 = +[HAPMetadata getSharedInstance];
  uUIDString = [dCopy UUIDString];
  v6 = [v4 btleToServiceType:uUIDString];

  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = v7;
  if (v6)
  {
    v9 = [v7 initWithUUIDString:v6];
  }

  else
  {
    uUIDString2 = [dCopy UUIDString];
    v9 = [v8 initWithUUIDString:uUIDString2];
  }

  return v9;
}

- (id)readAndResetHAPMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  v12[3] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v11[0] = &unk_283EA9AA0;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_metricHAPBTLEDiscoveryCount];
  v12[0] = v5;
  v11[1] = &unk_283EA9AB8;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_metricHAPBTLEConnectionCount];
  v12[1] = v6;
  v11[2] = &unk_283EA9AD0;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_metricHAPBTLEConnectionPerReasonCount];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  if (metricsCopy)
  {
    self->_metricHAPBTLEDiscoveryCount = 0;
    self->_metricHAPBTLEConnectionCount = 0;
    self->_metricHAPBTLEConnectionPerReasonCount = 0;
  }

  os_unfair_lock_unlock(&self->super._lock);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)incrementHAPBTLEMetricsDiscoveryCount
{
  os_unfair_lock_lock_with_options();
  ++self->_metricHAPBTLEDiscoveryCount;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)incrementHAPBTLEMetricsConnectionCount
{
  os_unfair_lock_lock_with_options();
  ++self->_metricHAPBTLEConnectionCount;

  os_unfair_lock_unlock(&self->super._lock);
}

@end